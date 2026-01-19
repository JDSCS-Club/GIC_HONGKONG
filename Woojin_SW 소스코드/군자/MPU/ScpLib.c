/*******************************************************************/
/* Serial Communication Process Library source file                */
/*******************************************************************/
#ifndef _SCPLIB_C_
#define _SCPLIB_C_

#include "ScpLib.h"
#include "mmtype.h"

UCHAR m_MComTxBuffer[514];
static int m_nDownModeTaskId;
USHORT  m_wTxDownStep;
USHORT  m_wTxDownResult;
USHORT  m_wTxDownTotalResult;
USHORT  m_wTxDownExit;
USHORT  m_wTxDownRecode;
USHORT  m_wTxDownMaxRecode;

static BYTE m_chDownDirect = SCM_TX_SEND2;			/* 다운로드 할 방향 */
static UINT	m_nDownBufferSize;
static LPBYTE m_pchDownBufferMem;

/* 중련에 관한 사항... */
static BOOL m_bMixedCoupled;
static BOOL m_bMctMiddleTC;
static BOOL m_bMctLeftTrain;

static BOOL m_bFwPartDownMode;

void sm_SetMiddleTC(BOOL bSet)
{
	m_bMctMiddleTC = bSet;
}

void sm_SetLeftTrain(BOOL bSet)
{
	m_bMctLeftTrain = bSet;
}

void sm_SetMixedCoupledUpdate()
{
	USHORT *pwVmeMem[2] = {(USHORT*)SCM2A_HEXA,(USHORT*)SCM2B_HEXA};
	pwVmeMem[0][3] = (m_bMctMiddleTC ? 1 : 0);
}

void sm_SetMixedCouple(BOOL bSet)
{
	m_bMixedCoupled = bSet;

	sm_SetMixedCoupledUpdate();
}

BOOL sm_IsMiddleTC()
{
	return m_bMctMiddleTC;
}



BOOL sm_IsLeftTrain()
{
	return m_bMctLeftTrain;
}



BOOL sm_IsMixedCoupled()
{
	return m_bMixedCoupled ? TRUE : FALSE;
}

void sm_SetMComDirect(BYTE chDirect)
{
	m_chDownDirect = chDirect;
}

/*********************************************************/
/*	자차측 중앙의 어드레스 취득                          */
/*********************************************************/
BYTE sm_GetHexaID(int nScmIndex)
{
	USHORT *pwVmeMem[2] = {(USHORT*)SCM2A_HEXA,(USHORT*)SCM2B_HEXA};
	USHORT wTemp=0xffff;
	if(nScmIndex < 2) 
	{
		wTemp = pwVmeMem[nScmIndex][0];

		/*if(!nScmIndex && wTemp != 0xff) wTemp = MK_BYTE((BYTE_H(wTemp)+1)%10,BYTE_L(wTemp));*/
	}

	return WORD_L(wTemp);
}

USHORT sm_GetTagVersion(int nScmIndex)
{
	USHORT *pwVmeMem[2] = {(USHORT*)SCM2A_HEXA,(USHORT*)SCM2B_HEXA};
	USHORT wTemp;
	BYTE chTage,chVersion;

	if(nScmIndex < 2) 
	{
		wTemp = pwVmeMem[nScmIndex][1];
		chTage = WORD_L(wTemp);
		wTemp = pwVmeMem[nScmIndex][2];
		chVersion = WORD_L(wTemp);
		
		return MK_WORD(chTage,chVersion);
	}
	return 0x2000;
}

/*********************************************************/
/*	자차측 중앙의 어드레스 로 반대측 계산                */
/* MainComm Target Address 용                            */
/*********************************************************/
BYTE sm_GetOppeHexaID()
{
	USHORT *pwVmeMem = (USHORT*)SCM2A_HEXA;
	USHORT wTemp = pwVmeMem[0];
	BYTE chHexID = WORD_L(wTemp);

	if(BYTE_H(chHexID)&1) return 0x00;
	else return 0x10;
}

BYTE sm_GetMidHexaID(int nIndex)
{
	if(nIndex == 0) return 0x80;
	else return 0x90;
}

/* nIndex : 0 -> 0x80 , 0xA0 , 0x00 , 0x20 */
/* nIndex : 1 -> 0x90 , 0xB0 , 0x10 , 0x30 */
BOOL sm_GetMidTcHexaID(BYTE chHexaID)
{
	BYTE chHexaID_H = BYTE_H(chHexaID);
	if(chHexaID_H%2) return 1;
	else return 0;
}

/* LIU1 과 LIU2 중 LIU  */
BOOL sm_IsLiuMaster(BYTE chHexaID)
{
	chHexaID &= (~0x80); /* MID-TC를 */
	return (chHexaID&0xEF) ? FALSE : TRUE;
}

/* 편성의 맨 앞차량것인지 확인 */
BOOL sm_IsFirstTc(BYTE chHexaID)
{
	return ((chHexaID>>4)%2) ? TRUE : FALSE;
}

USHORT sm_SpRxDataBccCheck(LPBYTE chRxBuf,int nRxSize)
{
	int nCount = 0;
	BYTE chStx,chEtx;
	USHORT wRxBcc,wBcc,wLength;

	chStx = chRxBuf[nCount++];
	if(chStx != 0x02) 
	{
		TRACE("=> LIU RX STX[%02X] ERROR !!!\n",chStx);
		return 0;
	}
	wLength = MK_WORD(chRxBuf[nCount+0],chRxBuf[nCount+1]); nCount+=2;
	if(nRxSize < (int)(wLength + 6)) 
	{
		TRACE("=> LIU RX SIZE[%d] ERROR !!!\n",wLength);
		return 0;
	}
	chEtx = chRxBuf[nCount + wLength];
	if(chEtx != 0x03) 
	{
		TRACE("=> LIU RX ETX[%02X] ERROR !!!\n",chEtx);
		return 0;
	}
	wRxBcc = MK_WORD(chRxBuf[nCount + wLength+1],chRxBuf[nCount + wLength+2]);
	wBcc = mx_GetBCCValue(1,wLength+4,chRxBuf);

	if(wRxBcc != wBcc) 
	{
		TRACE("=> LIU RX BCC[%04X != %04X] ERROR !!!\n",wRxBcc,wBcc);
		
		return 0;
	}
	return wLength;
}

/********************************************************************************************************************/
/* SCM MCOM LIBRARY	(메인통신용)																					*/
/********************************************************************************************************************/

/*********************************************************/
/* 메인통신의 RX 데이터의 응용층 CRC를 검사한다.          */
/*********************************************************/
BOOL sm_McRxDataCrcCheck(UCHAR *pBuf)
{
	USHORT wCrc,wRxCrc;
	wCrc = mx_GetCRC16(0,510,pBuf);

	wRxCrc = MK_WORD(pBuf[510],pBuf[511]);

	return (wRxCrc == wCrc) ? TRUE : FALSE;
}

/*********************************************************/
/* 메인통신의 RX 데이터의 응용층 CRC를 검사한다.          */
/*********************************************************/
void sm_McTxDataPutCrc(UCHAR *pBuf)
{
	USHORT wCrc;
	wCrc = mx_GetCRC16(0,510,pBuf);
	pBuf[510] = WORD_H(wCrc);
	pBuf[511] = WORD_L(wCrc);
	pBuf[512] = 0; /* PASS NUMBER */
	pBuf[513] = 0; /* PASS NUMBER */
}

/*********************************************************/
/* 메인통신의 TX 데이터를 구성하여 DPRAM에 저장한다.     */
/*********************************************************/
BOOL sm_McTxDataLoad(UCHAR *pBuf)
{
	UINT j,dwCnt=0;
	PMCOM_REGTYPE pScmTxReg = (PMCOM_REGTYPE)SCM_MCOM_TXSENDREG;
	USHORT *pTxBuf = (USHORT*)pBuf;
	USHORT wBcc;
	

	while(pScmTxReg[0].wRxTxFlag)
	{
		taskDelay(1);
		if(dwCnt++>1000) 
		{
			if(!(dwCnt%1000))ERRPRINT("Error: TxReady Holding...[%04X]\n",pScmTxReg[0].wRxTxFlag);
			return FALSE;
		}
	}

	/* pBuf[0] : 목적지 주소 */
	/* pBuf[1] : 출발지 주소 */
	/* pBuf[2] : 데이터 영역 [508]*/

	sm_McTxDataPutCrc(pBuf);

	wBcc = mx_GetBCCValue(0,SCM_MCOM_DBLOCK_WSIZE*2,pBuf);

	pScmTxReg[0].wBcc = wBcc;

	for(j=0;j<SCM_MCOM_DBLOCK_WSIZE;j++) pScmTxReg[0].wDataBlock[j] = pTxBuf[j];

	return TRUE;
}

/*********************************************************/
/* 메인통신의 TX 플래그를 설정한다.                      */
/* xTxFlag : 1위측(BIT00) , 2위측(BIT01) , Update(BIT03) */
/* wResCnt : 응답 카운터 횟수                            */
/*********************************************************/
UCHAR sm_McTxSend(USHORT wTxFlag,USHORT wResCnt)
{
	PMCOM_REGTYPE pScmTxReg = (PMCOM_REGTYPE)SCM_MCOM_TXSENDREG;
	static USHORT bDirect;
	UCHAR chHexaID = sm_GetHexaID(0);

	pScmTxReg[0].wResponsCnt = wResCnt;

	if(!wTxFlag) 
	{
		bDirect = (bDirect+1)%2;
		pScmTxReg[0].wRxTxFlag = bDirect ? SCM_TX_SEND2 : SCM_TX_SEND1;
	}
	else
	{
		if(!(chHexaID&0x1F)) 
		{
			if(wTxFlag == SCM_TX_SEND1) wTxFlag = SCM_TX_SEND2;
			else if(wTxFlag == SCM_TX_SEND2) wTxFlag = SCM_TX_SEND1;
		}
		pScmTxReg[0].wRxTxFlag = wTxFlag;
	}
	

	return TRUE;
}


/*********************************************************/
/* DPRAM의 TC Slave 수신영역 데이터를 가져온다.          */
/* DPRAM용 CRC가 깨진경우 FALSE를 리턴한다.              */
/* pwBuf 는 word 타입으로 SCM_MCOM_DBLOCK_WSIZE 이상버퍼 */
/*********************************************************/
BOOL sm_McRxDataLoadTC(USHORT *pwBuf)
{
	int i;
	USHORT wBcc,wRxBcc;
	PMCOM_REGTYPE pScmTxReg = (PMCOM_REGTYPE)SCM_MCOM_TXSENDREG;
	for(i=0;i<SCM_MCOM_DBLOCK_WSIZE;i++) pwBuf[i] = pScmTxReg[1].wDataBlock[i];

	wBcc = mx_GetBCCValue(0,SCM_MCOM_DBLOCK_WSIZE*2,(UCHAR*)pwBuf);
	wRxBcc = pScmTxReg[1].wBcc;
	pScmTxReg[1].wRxTxFlag = 0;

	if(wBcc != wRxBcc) return FALSE;
	return TRUE;
}

BOOL sm_McRxDataLoadMidTC(UINT nIndex,USHORT *pwBuf)
{
	int nIcrTcIndex = 8+nIndex; 
	return sm_McRxDataLoadCC(nIcrTcIndex,pwBuf);
}

BOOL sm_McRxDataLoadRemoteTC(BYTE chHexaID,USHORT *pwBuf)
{
	if(sm_GetOppeHexaID(0) == chHexaID) return sm_McRxDataLoadTC(pwBuf);
	else if(sm_GetMidHexaID(0) == chHexaID) return sm_McRxDataLoadMidTC(0,pwBuf);
	else if(sm_GetMidHexaID(1) == chHexaID) return  sm_McRxDataLoadMidTC(1,pwBuf);
	else return FALSE;
}



/*********************************************************/
/* DPRAM의 CC의 데이터를 가져온다.                       */
/* CRC가 깨진경우 FALSE를 리턴한다.                      */
/* pwBuf 는 word 타입으로 SCM_MCOM_DBLOCK_WSIZE 이상버퍼 */
/*********************************************************/
BOOL sm_McRxDataLoadCC(int nCarHo,USHORT *pwBuf)
{
	int i;
	USHORT wBcc,wRxBcc;
	PMCOM_REGTYPE pScmTxReg = (PMCOM_REGTYPE)SCM_MCOM_TXSENDREG;

	for(i=0;i<SCM_MCOM_DBLOCK_WSIZE;i++) pwBuf[i] = pScmTxReg[2+nCarHo].wDataBlock[i];
	

	wBcc = mx_GetBCCValue(0,SCM_MCOM_DBLOCK_WSIZE*2,(UCHAR*)pwBuf);
	wRxBcc = pScmTxReg[2+nCarHo].wBcc;
	pScmTxReg[2+nCarHo].wRxTxFlag = 0;

	if(wBcc != wRxBcc) return FALSE;
	return TRUE;
}

/*********************************************************/
/* 각 CC의 수신 플래그를 리턴한다.                       */
/*********************************************************/
BOOL sm_bMcRxReadyCC(int nCarHo)
{
	PMCOM_REGTYPE pScmTxReg = (PMCOM_REGTYPE)SCM_MCOM_TXSENDREG;
	return pScmTxReg[2+nCarHo].wRxTxFlag;
}

void sm_McRxReadyClearCC(int nCarHo)
{
	PMCOM_REGTYPE pScmTxReg = (PMCOM_REGTYPE)SCM_MCOM_TXSENDREG;
	pScmTxReg[2+nCarHo].wRxTxFlag = 0;
}

/*********************************************************/
/* TC의 수신 플래그를 리턴한다.                          */
/*********************************************************/
BOOL sm_bMcRxReadyTC()
{
	PMCOM_REGTYPE pScmTxReg = (PMCOM_REGTYPE)SCM_MCOM_TXSENDREG;
	return pScmTxReg[1].wRxTxFlag;
}

void sm_McRxReadyClearTC()
{
	PMCOM_REGTYPE pScmTxReg = (PMCOM_REGTYPE)SCM_MCOM_TXSENDREG;
	pScmTxReg[1].wRxTxFlag = 0x0000;
}

BOOL sm_bRxReadyMidTC(UINT nIndex)
{
	int nIcrTcIndex = 8+nIndex; 
	return sm_bMcRxReadyCC(nIcrTcIndex);
}


BOOL sm_bRxReadyRemoteTC(BYTE chHexaID)
{
	if(sm_GetOppeHexaID(0) == chHexaID) return sm_bMcRxReadyTC();
	else if(sm_GetMidHexaID(0) == chHexaID) return sm_bRxReadyMidTC(0);
	else if(sm_GetMidHexaID(1) == chHexaID) return sm_bRxReadyMidTC(1);
	return FALSE;
}

void sm_McRxReadyClearMidTC(UINT nIndex)
{
	int nIcrTcIndex = 8+nIndex;
	sm_McRxReadyClearCC(nIcrTcIndex);
}

void sm_McRxReadyClearRemoteTC(BYTE chHexaID)
{
	if(sm_GetOppeHexaID() == chHexaID) sm_McRxReadyClearTC();
	else if(sm_GetMidHexaID(0) == chHexaID) sm_McRxReadyClearMidTC(0);
	else if(sm_GetMidHexaID(1) == chHexaID) sm_McRxReadyClearMidTC(1);
}


/********************************************************************************************************************/
/* SCM USCOM LIBRARY	(로컬통신용)																				*/
/* 채널번호(8개) : SCM2B (0~5) SCM2A(6)																				*/
/********************************************************************************************************************/
/*********************************************************/
/* 로컬통신의 TX 데이터를 구성하여 DPRAM에 저장한다.     */
/* 채널번호로 전송한다.                                  */
/*********************************************************/
PUSCOM_REGTYPE sm_GetUsChannelAddress(int nChannel)
{
	PUSCOM_REGTYPE pScmTxReg = (nChannel < MAX_UCOM_CHANNEL ) ? (PUSCOM_REGTYPE)UCOM_TXSENDREG : NULL;

	if(!nChannel) return NULL;
	else return &pScmTxReg[nChannel-1];
}


BOOL sm_UsTxDataLoad(int nChannel,UCHAR *pBuf,USHORT wByteSize)
{
	UINT j,dwCnt=0;
	PUSCOM_REGTYPE pScmTxReg = sm_GetUsChannelAddress(nChannel);
	USHORT *pTxBuf = (USHORT*)pBuf;
	USHORT wBcc,wTemp;
	

	if(pScmTxReg)
	{
		wTemp = pScmTxReg->TxReg.wRxTxFlag;
		while(wTemp)
		{
			taskDelay(1);
			if(dwCnt++>1000) 
			{
				if(!(dwCnt%1000))printf("USCOM[%d] Error: TxReady Holding...[%04X]\n",nChannel,wTemp);
				return FALSE;
			}
			wTemp = pScmTxReg->TxReg.wRxTxFlag;
		}
		

		wBcc = mx_GetBCCValue(0,wByteSize,pBuf);
		
		pScmTxReg->TxReg.wBcc = wBcc;
		
		for(j=0;j<(wByteSize/2)+(wByteSize%2);j++) pScmTxReg->TxReg.wDataBlock[j] = pTxBuf[j];

		pScmTxReg->TxReg.wLen = wByteSize;
		pScmTxReg->TxReg.bfEvent = MK_WORD(1,0); /* USCOM_EVENT */

		return TRUE;
	}
	else
	{
		printf("USCOM[%d] Error : Invalide Channel !!!\n",nChannel);
	}
	
	return FALSE;
}

/*********************************************************/
/* 로컬통신의 TX 플래그를 설정한다.                      */
/*                                                       */
/*********************************************************/
UCHAR sm_UsTxSendRaw(USHORT wSpCode,int nChannel)
{
	PUSCOM_REGTYPE pScmTxReg = sm_GetUsChannelAddress(nChannel);

	if(pScmTxReg)
	{
		pScmTxReg->TxReg.wRxTxFlag = wSpCode;
		return TRUE;
	}
	else FALSE;
}

UCHAR sm_UsTxSend(int nChannel)
{
	return sm_UsTxSendRaw(0x0001,nChannel);
}



/**********************************************************/
/* DPRAM의 로컬통신 RX 데이터를 가져온다.                 */
/* pwBuf 는 word 타입으로 SCM_USCOM_DBLOCK_WSIZE 이상버퍼 */
/* BCC가 깨진경우 -1을 리턴한다.                          */
/* 성공하면 수신받은 길이를 리턴한다.                     */
/**********************************************************/
int sm_UsRxDataLoad(int nChannel,USHORT *pwBuf)
{
	int i;
	USHORT wByteSize;
	USHORT wBcc,wRxBcc;
	PUSCOM_REGTYPE pScmTxReg = sm_GetUsChannelAddress(nChannel);

	if(pScmTxReg)
	{
		wByteSize = pScmTxReg->RxReg.wLen;
		

		for(i=0;i<(wByteSize/2)+(wByteSize%2);i++) pwBuf[i] = pScmTxReg->RxReg.wDataBlock[i];
		wRxBcc = pScmTxReg->RxReg.wBcc;
		pScmTxReg->RxReg.wRxTxFlag = 0;
		
		
		wBcc = mx_GetBCCValue(0,wByteSize,(UCHAR*)pwBuf);
		
		if(wBcc != wRxBcc) return -1;
		return (int)wByteSize;
	}
	else return 0;
}




/*********************************************************/
/* 각 로컬통신의 수신 플래그를 리턴한다.                 */
/*********************************************************/
BOOL sm_bUsRxReadyRaw(int nChannel)
{
	PUSCOM_REGTYPE pScmTxReg = sm_GetUsChannelAddress(nChannel);

	if(pScmTxReg)
	{
		return pScmTxReg->RxReg.wRxTxFlag;
	}
	return 0x0000;
}

BOOL sm_bUsRxReady(int nChannel)
{
	return sm_bUsRxReadyRaw(nChannel);
}

void sm_UsRxReadyClear(int nChannel)
{
	PUSCOM_REGTYPE pScmTxReg = sm_GetUsChannelAddress(nChannel);

	if(pScmTxReg)
	{
		pScmTxReg->RxReg.wRxTxFlag = 0x0000;
	}
}

/*********************************************************/
/* 각 로컬통신의 송신후 수신받은  타이미을 리턴한다.     */
/*********************************************************/
USHORT sm_GetUsRxTime(int nChannel)
{
	PUSCOM_REGTYPE pScmTxReg = sm_GetUsChannelAddress(nChannel);

	if(pScmTxReg)
	{
		return WORD_L(pScmTxReg->RxReg.bfEvent);
	}
	return 0;
}

USHORT sm_GetUsRxSize(int nChannel)
{
	PUSCOM_REGTYPE pScmTxReg = sm_GetUsChannelAddress(nChannel);

	if(pScmTxReg)
	{
		return (USHORT)pScmTxReg->RxReg.wLen;
	}
	return 0;
}

BOOL m_bTestBrake=TRUE;
void sm_UsTest(int nChannel)
{
	BYTE chBuf[1024];
	int i;

	kernelTimeSlice(1);
	sysIntDisable();
	sysClkRateSet(1000); /* 1 tick 를 1/1000 초로 한다. */

	for(i=0;i<10;i++) chBuf[i] = i;

	m_bTestBrake = TRUE;
	taskDelay(1000);
	m_bTestBrake = FALSE;
	while(1)
	{
		sm_UsTxDataLoad(nChannel,chBuf,10);
		sm_UsTxSend(nChannel);
		taskDelay(500);
		if(m_bTestBrake) break;
	}

}

/*********************************************************/
/* 특수목적통신의 TX 데이터를 구성하여 DPRAM에 저장한다. */
/* 채널번호로 전송한다.                                  */
/*********************************************************/
BOOL sm_SpTxDataLoad(UCHAR *pBuf,USHORT wByteSize)
{
	UINT j,dwCnt=0;
	PLIUCOM_REGTYPE pScmTxReg = (PLIUCOM_REGTYPE)SCM2A_ICOM_TXSENDREG;
	USHORT *pTxBuf = (USHORT*)pBuf;
	USHORT wBcc,wTemp;
	

	wTemp = pScmTxReg->TxReg.wRxTxFlag;
	while(wTemp)
	{
		taskDelay(1);
		if(dwCnt++>1000) 
		{
			if(!(dwCnt%1000))printf("USCOM Error: TxReady Holding...[%04X]\n",wTemp);
			return FALSE;
		}
		wTemp = pScmTxReg->TxReg.wRxTxFlag;
	}
	
	/* Semaphore Take */
	
	wBcc = mx_GetBCCValue(0,wByteSize,pBuf);
	
	pScmTxReg->TxReg.wBcc = wBcc;
	
	for(j=0;j<(wByteSize/2)+(wByteSize%2);j++) pScmTxReg->TxReg.wDataBlock[j] = pTxBuf[j];
	
	pScmTxReg->TxReg.wLen = wByteSize;
	pScmTxReg->TxReg.bfEvent = MK_WORD(1,0); /* USCOM_EVENT */

	/* Semaphore Give */
	
	return TRUE;
}

/*********************************************************/
/* 특수 목적채널의 TX 플래그를 설정한다.                 */
/* wRxTxFlag :   (1) : SCM2A 메인통신용 CHANNEL-3 TX     */ 
/*             (200) : SCM FirmWare Download 용          */
/*             (300) : Backup-TC 송수신용                */
/*********************************************************/
void sm_SpTxSend(USHORT wSpCode) /* 485 Tx Send */
{
	PLIUCOM_REGTYPE pScmTxReg = (PLIUCOM_REGTYPE)SCM2A_ICOM_TXSENDREG;

	pScmTxReg->TxReg.wRxTxFlag = wSpCode;
}


BOOL sm_SpTxDataLoadSend(USHORT wSpCode,UCHAR *pBuf,USHORT wByteSize)
{
	if(sm_SpTxDataLoad(pBuf,wByteSize))
	{
		sm_SpTxSend(wSpCode);
		return TRUE;
	}
	return FALSE;
}

/**********************************************************/
/* DPRAM의 특수목적통신 RX 데이터를 가져온다.                 */
/* pwBuf 는 word 타입으로 SCM_USCOM_DBLOCK_WSIZE 이상버퍼 */
/* BCC가 깨진경우 -1을 리턴한다.                          */
/* 성공하면 수신받은 길이를 리턴한다.                     */
/**********************************************************/
int sm_SpRxDataLoad(USHORT *pwBuf)
{
	int i;
	USHORT wByteSize;
	USHORT wBcc,wRxBcc;
	PLIUCOM_REGTYPE pScmTxReg = (PLIUCOM_REGTYPE)SCM2A_ICOM_TXSENDREG;
	
	wByteSize = pScmTxReg->RxReg.wLen;
	
	for(i=0;i<(wByteSize/2)+(wByteSize%2);i++) pwBuf[i] = pScmTxReg->RxReg.wDataBlock[i];
	wRxBcc = pScmTxReg->RxReg.wBcc;
	pScmTxReg->RxReg.wRxTxFlag = 0;
	
	
	wBcc = mx_GetBCCValue(0,wByteSize,(UCHAR*)pwBuf);
	
	if(wBcc != wRxBcc) return -1;
	return (int)wByteSize;
	
}


/*********************************************************/
/* 각 특수목적통신의 수신 플래그를 리턴한다.             */
/*********************************************************/
USHORT sm_bSpRxReady()
{
	PLIUCOM_REGTYPE pScmTxReg = (PLIUCOM_REGTYPE)SCM2A_ICOM_TXSENDREG;

	if(pScmTxReg)
	{
		return pScmTxReg->RxReg.wRxTxFlag;
	}
}

void sm_SpRxReadyClear()
{
	PLIUCOM_REGTYPE pScmTxReg = (PLIUCOM_REGTYPE)SCM2A_ICOM_TXSENDREG;

	pScmTxReg->RxReg.wRxTxFlag = 0x0000;
}

/*********************************************************/
/* 다운로드용 데이터를 구성하여 DPRAM에 저장한다.        */
/* nIndex - SCM1(0),SCM2(1)                              */
/*********************************************************/
BOOL sm_FwTxDataLoad(int nIndex,UCHAR *pBuf,USHORT wByteSize)
{
	if(nIndex == 0) return sm_SpTxDataLoad(pBuf,wByteSize);
	else if(nIndex == 1) return sm_UsTxDataLoad(0,pBuf,wByteSize);
	return FALSE;
}


void sm_FwTxSend(int nIndex,USHORT wSpCode) /* 485 Tx Send */
{
	if(nIndex == 0) sm_SpTxSend(wSpCode);
	else if(nIndex == 1) sm_UsTxSendRaw(wSpCode,0);
}

USHORT sm_bFwRxReady(int nIndex)
{
	if(nIndex == 0) return sm_bSpRxReady();
	else if(nIndex == 1) return sm_bUsRxReadyRaw(0);
	return 0;
}

void sm_FwRxReadyClear(int nIndex)
{
	if(nIndex == 0) return sm_SpRxReadyClear();
	else if(nIndex == 1) return sm_UsRxReadyClear(0);
}

int sm_FwRxDataLoad(int nIndex,USHORT *pwBuf)
{
	if(nIndex == 0) return sm_SpRxDataLoad(pwBuf);	
	else if(nIndex == 1) return sm_UsRxDataLoad(0,pwBuf);
	return 0;
}

/************************************************************************************************/
/*                   Firmware Download Functions                                                */
/************************************************************************************************/
/* 단말장치 SCM을 없거나 Error있는 경우 1개만이라도 다운로드 하는가? */
void sm_FirmwareFullDownMode(BOOL bFullDownLoad)
{
	m_bFwPartDownMode = bFullDownLoad;
}


/* MPU860 DOWNLOAD */
/* Return : Success(1), Fail(0) */
BOOL sm_DownloadByMem_mpu860_This(LPBYTE pDataBuf,UINT nDataSize)
{
	int nRet;
	gp_FirmwareBeginWait(5000,"Wait for  Writing...");
	nRet = RomAutoProgram2_Mem(0,pDataBuf,nDataSize);
	return (nRet == OK) ? TRUE : FALSE;
	
}

BOOL sm_DownloadByMem_mpuDia_This(LPBYTE pZipBuf,UINT nZipSize)
{
	LPBYTE pDataBuf = NULL;
	UINT nDataSize = 0;

	gp_FirmwareBeginWait(5000,"Wait for Data Writing...");
	pDataBuf = (LPBYTE)zx_uncompress_mem2mem(pZipBuf,nZipSize,&nDataSize);
	TRACE("=> [%p]Dia Uncompress %d -> %d Size...\n",pZipBuf,nZipSize,nDataSize);

	gm_DiaMemoryUpdate(pDataBuf,nDataSize);

	taskDelay(3000);
	
	return TRUE;
}

/* FIRMWARE VIRSION CHEECK              */
/* Return 0x00 - Error						*/
/*        0x10 - wmpu860	(TICC-MCPU)		*/
BYTE mx_wMpu860CheckMem(LPBYTE pDataBuf,int nDataSize)
{
	BYTE nRet = FW_TYPE_NONE;
	
	if(!strncmp((char *)(pDataBuf+0x121),"WMPU860",7)) nRet=FW_TYPE_MCPU;

	return nRet;
}

BYTE mx_wScm2CheckMem(LPBYTE pDataBuf,int nDataSize)
{
	UCHAR chVersion[3][50];
	int i,nVerList,nList;
	USHORT wRet=FW_TYPE_NONE;
	BOOL bCheckPoint=FALSE;
	char szFirmTag[10] = "WLTSCM2";
	char szCheckName[] = "Firmware:";

	printf("Checking Scm2[%d] Version...\n",nDataSize);

	nList = nVerList = 0;
	for(i=0;i<nDataSize;i+=4)
	{
		if(!(nVerList < 3))
		{
			break;
		}

		if(!pDataBuf[i+1] && !pDataBuf[i+2] && !pDataBuf[i+3])
		{
			if(pDataBuf[i])
			{
				chVersion[nVerList][nList] = pDataBuf[i];
				if(!nVerList) 
				{
					if(strncmp(szCheckName,chVersion[nVerList],min(strlen(szCheckName),nList+1))) nList = 0;
					else nList++;
				}
				else nList++;
				
			}
			else
			{
				chVersion[nVerList][nList] = NULL;
				nList=0;
				if(bCheckPoint || !strncmp(chVersion[nVerList],szCheckName,strlen(szCheckName)))
				{
					if(nVerList == 0 && !wRet)
					{
						if(!strncmp(chVersion[0]+strlen(szCheckName),szFirmTag,strlen(szFirmTag))) wRet = FW_TYPE_SCM2;
					}
					nVerList++;	
					bCheckPoint = TRUE;
				}
			}
		}
	}

	if(wRet) 
	{
		TRACE("=> %s\n=> %s\n=> %s\n",chVersion[0],chVersion[1],chVersion[2]);
	}

	return wRet;
}

BYTE mx_wMpuDiaCheckMem(LPBYTE pDataBuf,int nDataSize)
{
	BYTE nRet = FW_TYPE_NONE;
	
	if(!strncmp((char *)(pDataBuf),"WOOJIN",7)) nRet=FW_TYPE_DIA;

	return nRet;
}

/* FIRMWARE VIRSION CHEECK	*****************/
/* Return 0x00 - Error						*/
/*        0x01 - cpu363	(TIRT-MCPU)			*/
/*        0x02 - WCOF11,12 (TICC-COM)		*/
/*        0x10 - wmpu860	(TICC-MCPU)		*/
USHORT sm_FirmwareCheckMem(LPBYTE pDataBuf,int nDataSize,int nType)
{
	USHORT wRet=FW_TYPE_NONE;


	if((nType == FW_TYPE_MCPU) || (nType == FW_TYPE_NONE))
	{
		wRet = mx_wMpu860CheckMem(pDataBuf,nDataSize);
		if(wRet) return wRet;
	}
	
	if((nType == FW_TYPE_SCM2) || (nType == FW_TYPE_NONE))
	{
		wRet = mx_wScm2CheckMem(pDataBuf,nDataSize);
		if(wRet) return wRet;
	}

	if((nType == FW_TYPE_DIA) || (nType == FW_TYPE_NONE)) 
	{
		wRet = mx_wMpuDiaCheckMem(pDataBuf,nDataSize);
		if(wRet) return wRet;
	}

	
	return wRet;
}

UINT sm_DataMemoryCompress(LPBYTE *ppDataBuf,UINT nDataSize)
{
	UINT nZipSize=0;
	LPBYTE pDumyBuf;
	LPBYTE pZipBuf;

	gp_FirmwareBeginWait(5000,"Wait for Compressing...");
	pDumyBuf = (LPBYTE)zx_compress_mem2mem(*ppDataBuf,nDataSize,&nZipSize);
	
	pZipBuf = (LPBYTE)malloc(nZipSize);
	memcpy(pZipBuf,pDumyBuf,nZipSize);
	/*dx_ZipMemDel();*/
	
	free(*ppDataBuf);

	(*ppDataBuf) = pZipBuf;
	
	TRACE("=> [%p]Dia Compress %d -> %d Size...\n",*ppDataBuf,nDataSize,nZipSize);
	return nZipSize;
}


UINT sm_GetFileReadMemory(char filename[],LPBYTE *ppDataBuf,BOOL bAtCard)
{
	UINT nReadSize=0,nDataSize=0;
	int fd;
	if(bAtCard)
	{
		if(!pc_CardDetect(0)) return 0;
		if(!pc_IsExistFile(filename)) return 0;

		fd = pc_FileOpen(filename,0,0);
		if(fd == -1) 
		{
			TRACE("=> Can Not Card-File[%s] Open !!!\n",filename);
			return 0;
		}
		nDataSize = pc_FileSize(fd);

		*ppDataBuf = (LPBYTE)malloc(nDataSize+512);
		if(!*ppDataBuf)
		{
			TRACE("=> Unable to memory allocation for %d byte size !!!\n",nDataSize+400);
			pc_FileClose(fd);
			return 0;
		}
		nReadSize = pc_xFileRead(fd,*ppDataBuf,nDataSize);
		pc_FileClose(fd);
		if(nReadSize != nDataSize)
		{
			TRACE("=> ReadSize[%d] Error !!! DataSize=(%d) !!!..\n",nReadSize,nDataSize);
			return 0;
		}
	}
	else
	{
		fd = open(filename,0,0);
		if(fd == ERROR) 
		{
			TRACE("=> Can not Host-file[%s] open !!!\n",filename);
			return 0;
		}
		nDataSize = lseek(fd,0,2);
		lseek(fd,0,0);

		*ppDataBuf = (LPBYTE)malloc(nDataSize+400);
		if(!*ppDataBuf)
		{
			TRACE("=> Unable to memory allocation for %d byte size !!!\n",nDataSize+400);
			close(fd);
			return 0;
		}
		nReadSize = read(fd,*ppDataBuf,nDataSize);
		close(fd);
		if(nReadSize != nDataSize)
		{
			TRACE("=> ReadSize[%d] Error !!! DataSize=(%d) !!!..\n",nReadSize,nDataSize);
			return 0;
		}
		
	}

	return nReadSize;
}


UINT sm_FirmwareCheck(char filename[],BOOL IsAtCard)
{
	UINT nRet=0;
	LPBYTE pDataBuf;
	UINT nDataSize;

	if(filename)
	{
		nDataSize = sm_GetFileReadMemory(filename,&pDataBuf,IsAtCard);
		if(nDataSize)
		{
			nRet = sm_FirmwareCheckMem(pDataBuf,nDataSize,0);
			
			free(pDataBuf);
		}
		
	}
	
	return nRet;
}


/* 반대측 다운로드 대기 루틴이다. */
void sm_FirmwareMCom_DataReadyMode(BYTE chHexaID,BOOL bActive)
{
	int nTxSize,nTcInfoSize,nMTime;
	BYTE chMComTxBuf[SCM_TXBYTES];
	PMCOMPTLHEAD pMComTxHead;
	PMAINCOMHEAD pTxTcHead;

	memset(chMComTxBuf,0,sizeof(chMComTxBuf));
	nTxSize = 0;
	pMComTxHead = (PMCOMPTLHEAD)chMComTxBuf;

	/***************** HEADER 구성  *******************************************/
	pMComTxHead->nAddress1 = chHexaID;
	pMComTxHead->nAddress2 = sm_GetHexaID(0);					/* Source Address */
	pMComTxHead->bResReq = TRUE;								/* Response Request */
	nTxSize += sizeof(MCOMPTLHEAD);

	nTcInfoSize = 0;
	pTxTcHead = (PMAINCOMHEAD)&chMComTxBuf[nTxSize];
	/************************** TC 전송내용 구성 ***************************/
	/*********** HEAD INFO ***********/
	pTxTcHead->bMaster = TRUE;
	pTxTcHead->bPermit = FALSE;

	nTxSize += sizeof(MAINCOMHEAD);
	/*********** ICODE INFO ***********/
	pTxTcHead->ICode = bActive ? 198 : 199; /* READY CODE */
	
	nTcInfoSize = nTxSize-sizeof(MCOMPTLHEAD);
	pMComTxHead->nOpCodeOffset = nTcInfoSize;	/* OpCodeOffset */

	sm_McTxDataLoad(chMComTxBuf);
	sm_McTxSend(m_chDownDirect,0);
}

void sm_FirmwareMComActive_DataMode(BOOL bActive)
{
	sm_FirmwareMCom_DataReadyMode(sm_GetOppeHexaID(),bActive);

	if(sm_IsMixedCoupled())
	{
		sm_FirmwareMCom_DataReadyMode(sm_GetMidHexaID(0),bActive);
		sm_FirmwareMCom_DataReadyMode(sm_GetMidHexaID(1),bActive);
	}
}



int sm_MakeFirmwareSpComTxHead(LPBYTE chTxBuf,BYTE chOpCode,USHORT wTxRecode,USHORT wTxMaxRecode)
{
	USHORT wTxSize = 0;
	chTxBuf[wTxSize++] = 0x02; /* STX */
	chTxBuf[wTxSize++] = 0x00; /* LENTH_H */
	chTxBuf[wTxSize++] = 0x00; /* LENTH_L */

	/************ TEXT TX PROTOCOL *****************/
	chTxBuf[wTxSize++] = chOpCode;

	chTxBuf[wTxSize++] = WORD_H(wTxRecode);
	chTxBuf[wTxSize++] = WORD_L(wTxRecode);
	chTxBuf[wTxSize++] = WORD_H(wTxMaxRecode);
	chTxBuf[wTxSize++] = WORD_L(wTxMaxRecode);
	
	return wTxSize;
}


int sm_MakeFirmwareSpComTxFoot(LPBYTE chTxBuf,USHORT wTxSize)
{
	USHORT wTxBcc;
	/***********************************************/
	chTxBuf[wTxSize++] = 0x03;
	chTxBuf[1] = WORD_H(wTxSize-4); /* LENTH_H */
	chTxBuf[2] = WORD_L(wTxSize-4); /* LENTH_L */
	wTxBcc = mx_GetBCCValue(1,wTxSize,chTxBuf);
	chTxBuf[wTxSize++] = WORD_H(wTxBcc);
	chTxBuf[wTxSize++] = WORD_L(wTxBcc);

	return wTxSize;

}


int sm_MakeFirmwareMComTxHead(LPBYTE chMComTxBuf,BYTE ICode,BYTE chToAddress,BOOL bMaster,USHORT wTxRecode,USHORT wTxMaxRecode)
{
	int nTxSize=0;
	PMCOMPTLHEAD pMComTxHead;
	PMAINCOMHEAD pTxTcHead;

	pMComTxHead = (PMCOMPTLHEAD)chMComTxBuf;
	/***************** HEADER 구성  *******************************************/
	pMComTxHead->nAddress1 = chToAddress;
	pMComTxHead->nAddress2 = sm_GetHexaID(0);					/* Source Address */
	pMComTxHead->bResReq = bMaster ? TRUE : FALSE;				/* Response Request */
	pMComTxHead->nOpCodeOffset = 0xFF;			/* OpCodeOffset */
	nTxSize += sizeof(MCOMPTLHEAD);

	pTxTcHead = (PMAINCOMHEAD)&chMComTxBuf[nTxSize];
	/************************** TC 전송내용 구성 ***************************/
	/*********** HEAD INFO ***********/
	pTxTcHead->bMaster = bMaster ? TRUE : FALSE;
	pTxTcHead->bPermit = FALSE;
	pTxTcHead->ICode = ICode;

	nTxSize += sizeof(MAINCOMHEAD);
	
	chMComTxBuf[nTxSize++] = WORD_H(4); /* DATA LENGTH_H*/
	chMComTxBuf[nTxSize++] = WORD_L(4); /* DATA LENGTH_H*/
	chMComTxBuf[nTxSize++] = WORD_H(wTxRecode); /* MAX_RECODE_H*/
	chMComTxBuf[nTxSize++] = WORD_L(wTxRecode); /* MAX_RECODE_H*/
	chMComTxBuf[nTxSize++] = WORD_H(wTxMaxRecode); /* MAX_RECODE_H*/
	chMComTxBuf[nTxSize++] = WORD_L(wTxMaxRecode); /* MAX_RECODE_H*/

	return nTxSize;
}






void sm_FirmwarSpComRx_DataMode()
{
	BYTE chSpTxBuf[SCM_RXBYTES];
	BYTE chSpRxBuf[SCM_RXBYTES];
	USHORT *wSpRxBuf = (USHORT *)chSpRxBuf;
	USHORT wSpRxReady,wRxLength,wRxCrc,wTxCrc,wTemp;
	UINT nRxDataSize;
	USHORT wRxRecode,wRxMaxRecode;
	BYTE chOpCode=0,chOldOpCode=0;
	BOOL bExit = FALSE;
	int nRxSize,nTxSize,nBufferSize;
	USHORT wRxSize,wRxDataType = FW_TYPE_NONE;

	TRACE("=> SPCOM RX DATA MODE STARTED....\n");

	while(!bExit)
	{
		wSpRxReady = sm_bSpRxReady();

		if(wSpRxReady == SPCODE_LIU_HUGECOM)
		{
			memset(chSpRxBuf,0,sizeof(chSpRxBuf));
			nRxSize = (USHORT)sm_SpRxDataLoad((USHORT*)chSpRxBuf);
			wRxLength = sm_SpRxDataBccCheck(chSpRxBuf,nRxSize);
			if(wRxLength)
			{
				nRxSize = 3;
				chOpCode = chSpRxBuf[nRxSize++];
				wRxSize = 0;
				wSpRxBuf = (USHORT*)&chSpRxBuf[nRxSize];

				wRxRecode = wSpRxBuf[wRxSize++];
				wRxMaxRecode = wSpRxBuf[wRxSize++];
				switch(chOpCode)
				{
				case 198:
					break;
				case 199:
					if(m_nDownBufferSize)
					{
						if(m_pchDownBufferMem) free(m_pchDownBufferMem);
						m_nDownBufferSize = 0;
					}
					bExit = TRUE;	
					break;
				case 200:
					TRACE("=> LIU RX STEP-1 STARTED...\n");
					if(wRxMaxRecode)
					{
						nBufferSize = (wRxMaxRecode+1)*DOWN_MAX_BYTESIZE;
						if(m_nDownBufferSize != nBufferSize)
						{
							if(m_pchDownBufferMem && m_nDownBufferSize) free(m_pchDownBufferMem);
							m_pchDownBufferMem = (LPBYTE)malloc(nBufferSize);
							if(m_pchDownBufferMem) m_nDownBufferSize = nBufferSize;
							else TRACE("=> FIRMWARE DOWNLOAD BUFFER[%d] ALLOCATION FAILURE !!!!!...\n",nBufferSize);
						}
					}

					memset(chSpTxBuf,0,sizeof(chSpTxBuf));
					nTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,chOpCode,wRxRecode,wRxMaxRecode);
					nTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,nTxSize);
					sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,nTxSize);
					break;
				case 201:
					if(wRxRecode < (m_nDownBufferSize/DOWN_MAX_BYTESIZE))
					{
						memcpy(m_pchDownBufferMem+wRxRecode*DOWN_MAX_BYTESIZE,&wSpRxBuf[wRxSize],DOWN_MAX_BYTESIZE);
						TRACE("=> LIU RX STEP-2 (download) : %d/%d... !!!\n",wRxRecode,wRxMaxRecode);
					}
					else TRACE("=> DATA RECORD[%d/%d] OUT OF RANGE !!!\n",wRxRecode,(m_nDownBufferSize/DOWN_MAX_BYTESIZE));

					memset(chSpTxBuf,0,sizeof(chSpTxBuf));
					nTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,chOpCode,wRxRecode,wRxMaxRecode);
					nTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,nTxSize);
					sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,nTxSize);
					break;
				case 202:
					TRACE("=> LIU RX STEP-3 STARTED...\n");
					wRxCrc = wSpRxBuf[wRxSize++];
					nRxDataSize = 0;
					nRxDataSize |= wSpRxBuf[wRxSize++]; nRxDataSize = nRxDataSize<<16;
					nRxDataSize |= wSpRxBuf[wRxSize++];
					wSpRxBuf[wRxSize++]; /* FLAG */
					wRxDataType = wSpRxBuf[wRxSize++];

					wTxCrc = mx_GetCRC16(0,wRxMaxRecode*DOWN_MAX_BYTESIZE,m_pchDownBufferMem);
					if(!m_nDownModeTaskId)
					{
						wTemp = (wTxCrc == wRxCrc) ? TRUE : FALSE;
						if(wTemp)
						{
							printf("=> Rx & Write File Size = %08X[%d]...\n",nRxDataSize,nRxDataSize);
							m_nDownModeTaskId = taskSpawn("uDownload",150,0,20000,sm_DownloadByMem_TC,sm_GetHexaID(0),m_pchDownBufferMem,nRxDataSize,wRxDataType,0,0,0,0,0,0);
						}
						else
						{
							TRACE("=> LIU RX STEP-3 : CRC ERROR [%04X/%04X]...!!!\n",wTxCrc,wRxCrc);
						}
					}
					else
					{
						wTemp = TRUE;
					}

					memset(chSpTxBuf,0,sizeof(chSpTxBuf));
					nTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,chOpCode,wRxRecode,wRxMaxRecode);
					chSpTxBuf[nTxSize++] = WORD_H(wTemp);
					chSpTxBuf[nTxSize++] = WORD_L(wTemp);
					nTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,nTxSize);
					sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,nTxSize);
					break;
				case 203:
					if(chOldOpCode != chOpCode) TRACE("=> LIU RX STEP-4 STARTED...\n");
					m_wTxDownExit = m_nDownModeTaskId ? FALSE : TRUE;

					memset(chSpTxBuf,0,sizeof(chSpTxBuf));
					nTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,chOpCode,wRxRecode,wRxMaxRecode);
					chSpTxBuf[nTxSize++] = WORD_H(m_wTxDownStep);
					chSpTxBuf[nTxSize++] = WORD_L(m_wTxDownStep);
					chSpTxBuf[nTxSize++] = WORD_H(m_wTxDownResult);
					chSpTxBuf[nTxSize++] = WORD_L(m_wTxDownResult);
					chSpTxBuf[nTxSize++] = WORD_H(m_wTxDownTotalResult);
					chSpTxBuf[nTxSize++] = WORD_L(m_wTxDownTotalResult);
					chSpTxBuf[nTxSize++] = WORD_H(m_wTxDownExit);
					chSpTxBuf[nTxSize++] = WORD_L(m_wTxDownExit);
					nTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,nTxSize);
					sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,nTxSize);

					break;
				default:
					bExit = TRUE;
					break;
				}

				chOldOpCode = chOpCode;
			}
		}
		else if(ISRANGE(wSpRxReady,200,210))
		{
		}
		else if(wSpRxReady)
		{
			bExit = TRUE;
			TRACE("=> [DOWNLOAD BRAKE]LIU RX SPCODE[%d] IS NOT DOWNLOAD CODE !!!!...\n",wSpRxReady);
		}

		taskDelay(10);
	}

	if(m_nDownModeTaskId) 
	{
		TRACE("=> Download Running Task Force Deleted...\n");
		taskDelete(m_nDownModeTaskId);
		m_nDownModeTaskId = 0;
	}

	TRACE("=> SPCOM RX DATA MODE END....[%d]\n",chOpCode);
}
void sm_FirmwareSpComActive_DataMode(BOOL bActive)
{
	USHORT wTxSize;
	BYTE chSpTxBuf[SCM_TXBYTES];
	memset(chSpTxBuf,0,sizeof(chSpTxBuf));
	wTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,(bActive ? 198 : 199),0,0);
	wTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,wTxSize);
	sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,wTxSize);
}


void sm_FirmwareMComRx_DataMode()
{
	BYTE chMComTxBuf[SCM_RXBYTES];
	BYTE chMComRxBuf[SCM_RXBYTES];
	USHORT *wMComRxBuf;
	USHORT wRxSize;
	BOOL bRxReady,bExit = FALSE;
	int i,nTxSize,nRxSize,nBufferSize;
	USHORT wRxLen,wRxRecode,wRxMaxRecode,wRxCrc,wTxCrc,wTemp,wRxDataType=FW_TYPE_NONE;
	UINT nRxDataSize;
	PMCOMPTLHEAD pMComRxHead;
	PMAINCOMHEAD pRxTcHead=NULL;
	BYTE nOldICode=0;
	BOOL bNoLiu2 = TRUE;


	BYTE chHexaID = sm_GetOppeHexaID();
	if(sm_IsMiddleTC()) chHexaID = sm_GetMidHexaID(0);

	/* SCM 자동 응답을 허용하고, 정지 시킨다. */
	sm_McTxSend(SCM_TX_UPDATED,0);
	gp_FirmwareBlockScreenEvent(TRUE);

	
	TRACE("=> MCOM RX DATA MODE STARTED....\n");
	for(i=0;i<3;i++)
	{
		taskDelay(100);
		sm_FirmwareSpComActive_DataMode(TRUE);
	}

	m_wTxDownStep = 0;
	m_wTxDownExit = 0;
	m_wTxDownResult = 0;
	m_wTxDownTotalResult = 0;

	while(!bExit)
	{
		bRxReady = sm_bRxReadyRemoteTC(chHexaID);
		if(bRxReady)
		{
			memset(chMComRxBuf,0,sizeof(chMComRxBuf));
			if(sm_McRxDataLoadRemoteTC(chHexaID,(USHORT*)chMComRxBuf))
			{
				if(sm_McRxDataCrcCheck(chMComRxBuf))
				{
					nRxSize = 0;
					pMComRxHead = (PMCOMPTLHEAD)chMComRxBuf;
					nRxSize += sizeof(MCOMPTLHEAD);
					pRxTcHead = (PMAINCOMHEAD)&chMComRxBuf[nRxSize];
					nRxSize += sizeof(MAINCOMHEAD);

					wMComRxBuf = (USHORT*)&chMComRxBuf[nRxSize];wRxSize=0;

					wRxLen = wMComRxBuf[wRxSize++];
					wRxRecode = wMComRxBuf[wRxSize++];
					wRxMaxRecode = wMComRxBuf[wRxSize++];
					
					switch(pRxTcHead->ICode)
					{
					case 198:	/* 진입명령 */
						/*gp_FirmwareBlockScreenEvent(TRUE);*/
						break;
					case 199:   /* 진입 종료명령 */
						if(m_nDownBufferSize)
						{
							if(m_pchDownBufferMem) free(m_pchDownBufferMem);
							m_nDownBufferSize = 0;
						}
						bExit = TRUE;	
						break;
					case 200:	/* NET RX STEP-1 : DOWNLOAD READY */
						TRACE("=> NET RX STEP-1 STARTED...\n");
						if(wRxMaxRecode)
						{
							nBufferSize = (wRxMaxRecode+1)*DOWN_MAX_BYTESIZE;
							if(m_nDownBufferSize != nBufferSize)
							{
								if(m_pchDownBufferMem && m_nDownBufferSize) free(m_pchDownBufferMem);
								m_pchDownBufferMem = (LPBYTE)malloc(nBufferSize);
								if(m_pchDownBufferMem) m_nDownBufferSize = nBufferSize;
								else TRACE("=> FIRMWARE DOWNLOAD BUFFER[%d] ALLOCATION FAILURE !!!!!...\n",nBufferSize);
							}
						}
						
						memset(chMComTxBuf,0,sizeof(chMComTxBuf));
						nTxSize = sm_MakeFirmwareMComTxHead(chMComTxBuf,pRxTcHead->ICode,sm_GetOppeHexaID(),FALSE,wRxRecode,wRxMaxRecode);
						sm_McTxDataLoad(chMComTxBuf);
						sm_McTxSend(m_chDownDirect,0);
						taskDelay(10);
						sm_McTxSend(SCM_TX_UPDATED,0);
						break;
					case 201:	/* NET RX STEP-2 : DATA SEND */
						if(wRxRecode < (m_nDownBufferSize/DOWN_MAX_BYTESIZE))
						{
							memcpy(m_pchDownBufferMem+wRxRecode*DOWN_MAX_BYTESIZE,&wMComRxBuf[wRxSize],DOWN_MAX_BYTESIZE);
							TRACE("=> NET RX STEP-2 (download) : %d/%d... !!!\n",wRxRecode,wRxMaxRecode);
						}
						else TRACE("=> DATA RECORD[%d/%d] OUT OF RANGE !!!\n",wRxRecode,(m_nDownBufferSize/DOWN_MAX_BYTESIZE));
						
						memset(chMComTxBuf,0,sizeof(chMComTxBuf));
						nTxSize = sm_MakeFirmwareMComTxHead(chMComTxBuf,pRxTcHead->ICode,sm_GetOppeHexaID(),FALSE,wRxRecode,wRxMaxRecode);
						sm_McTxDataLoad(chMComTxBuf);
						sm_McTxSend(m_chDownDirect,0);
						taskDelay(10);
						sm_McTxSend(SCM_TX_UPDATED,0);
						break;
					case 202:	/* NET RX STEP-3 : DATA CRC CHECK & RUN */
						TRACE("=> NET RX STEP-3 STARTED...\n");
						wRxCrc = wMComRxBuf[wRxSize++];
						nRxDataSize = 0;
						nRxDataSize |= wMComRxBuf[wRxSize++]; nRxDataSize = nRxDataSize<<16;
						nRxDataSize |= wMComRxBuf[wRxSize++];
						bNoLiu2 = wMComRxBuf[wRxSize++];
						wRxDataType = wMComRxBuf[wRxSize++];

						wTxCrc = mx_GetCRC16(0,wRxMaxRecode*DOWN_MAX_BYTESIZE,m_pchDownBufferMem);
						if(!m_nDownModeTaskId)
						{
							wTemp = (wTxCrc == wRxCrc) ? TRUE : FALSE;
							if(wTemp)
							{
								m_nDownModeTaskId = taskSpawn("uDownload",150,0,20000,sm_DownloadByMem_TC,sm_GetHexaID(0),m_pchDownBufferMem,nRxDataSize,wRxDataType,bNoLiu2,0,0,0,0,0);
							}
							else
							{
								TRACE("=> NEXT RX STEP-3 : CRC ERROR [%04X/%04X]...!!!\n",wTxCrc,wRxCrc);
							}
						}
						else
						{
							wTemp = TRUE;
						}
						memset(chMComTxBuf,0,sizeof(chMComTxBuf));
						nTxSize = sm_MakeFirmwareMComTxHead(chMComTxBuf,pRxTcHead->ICode,sm_GetOppeHexaID(),FALSE,wRxRecode,wRxMaxRecode);
						chMComTxBuf[nTxSize++] = WORD_H(wTemp);
						chMComTxBuf[nTxSize++] = WORD_L(wTemp);
						sm_McTxDataLoad(chMComTxBuf);
						sm_McTxSend(m_chDownDirect,0);
						taskDelay(10);
						sm_McTxSend(SCM_TX_UPDATED,0);
						break;
					case 203:	/* NET RX STEP-4 : STATUS REQUEST */
						if(nOldICode != pRxTcHead->ICode) TRACE("=> NET RX STEP-4 STARTED...\n");

						m_wTxDownExit = m_nDownModeTaskId ? FALSE : TRUE;
						memset(chMComTxBuf,0,sizeof(chMComTxBuf));
						nTxSize = sm_MakeFirmwareMComTxHead(chMComTxBuf,pRxTcHead->ICode,sm_GetOppeHexaID(),FALSE,m_wTxDownRecode,m_wTxDownMaxRecode);
						chMComTxBuf[nTxSize++] = WORD_H(m_wTxDownStep);
						chMComTxBuf[nTxSize++] = WORD_L(m_wTxDownStep);
						chMComTxBuf[nTxSize++] = WORD_H(m_wTxDownResult);
						chMComTxBuf[nTxSize++] = WORD_L(m_wTxDownResult);
						chMComTxBuf[nTxSize++] = WORD_H(m_wTxDownTotalResult);
						chMComTxBuf[nTxSize++] = WORD_L(m_wTxDownTotalResult);
						chMComTxBuf[nTxSize++] = WORD_H(m_wTxDownExit);
						chMComTxBuf[nTxSize++] = WORD_L(m_wTxDownExit);
						
						
						sm_McTxDataLoad(chMComTxBuf);
						sm_McTxSend(m_chDownDirect,0);
						taskDelay(10);
						sm_McTxSend(SCM_TX_UPDATED,0);

						break;
					default:
						bExit = TRUE;	
						break;
					}

					nOldICode = pRxTcHead->ICode;
				}
			}
		}

		taskDelay(10);
	}

	if(m_nDownModeTaskId) 
	{
		TRACE("=> Download Running Task Force Deleted...\n");
		taskDelete(m_nDownModeTaskId);
		m_nDownModeTaskId = 0;
	}

	for(i=0;i<3;i++)
	{
		taskDelay(100);
		sm_FirmwareSpComActive_DataMode(FALSE);
	}

	TRACE("=> MCOM RX DATA MODE MODE END....[%d]\n",pRxTcHead->ICode);
	gp_FirmwareBlockScreenEvent(FALSE);
}

/*********************************************************************/
/* LIU2와 통신하여 데이터를 넘겨준다. 그리고 응답을 기다린다.        */
/* 리턴값은 TC-LIU2(BIT10,BIT11) 로 응답한다.                        */
/*********************************************************************/
USHORT sm_FirmwareDownload_TcLiuMem(LPBYTE pFirmMem,int nSize,USHORT wDataType)
{
	USHORT wRet = 0;
	USHORT wTxRecode,wTxMaxRecode = nSize/DOWN_MAX_BYTESIZE + ((nSize%DOWN_MAX_BYTESIZE) ? 1 : 0 );
	USHORT wRxRecode,wRxMaxRecode,wRxLength;
	USHORT wTxSize,wSpRxReady;
	int i,nErrorNo,nMTime,nRxSize;
	BYTE chSpTxBuf[SCM_TXBYTES];
	BYTE chSpRxBuf[SCM_RXBYTES];
	USHORT *wSpRxBuf,wRxSize;
	BOOL bSuccess,bExit;
	BYTE chOpCode,chRxOpCode;
	USHORT wCrc,wTemp;
	USHORT wRxDownStep,wRxDownResult,wRxDownTotalResult,wRxOldDownStep,wRxOldDownResult,wRxDownExit;

	mx_BeginEstimatedTime();

	wRxOldDownStep = 0;
	wRxDownTotalResult = 0;

	wCrc = mx_GetCRC16(0,wTxMaxRecode*DOWN_MAX_BYTESIZE,pFirmMem);

	/* 1) INNER TX STEP-1: Firmware Memory Allocation Ready... */
	chOpCode = 200;
	m_wTxDownStep = 11;
	for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
	{
		bSuccess = FALSE;
		sm_SpRxReadyClear();
		
		memset(chSpTxBuf,0,sizeof(chSpTxBuf));
		wTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,chOpCode,0,wTxMaxRecode);
		wTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,wTxSize);
		sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,wTxSize);
		
		taskDelay(1000);
		
		wSpRxReady = sm_bSpRxReady();
		if(wSpRxReady == SPCODE_LIU_HUGECOM)
		{
			memset(chSpRxBuf,0,sizeof(chSpRxBuf));
			nRxSize = (USHORT)sm_SpRxDataLoad((USHORT*)chSpRxBuf);
			if(nRxSize)
			{
				wRxLength = sm_SpRxDataBccCheck(chSpRxBuf,nRxSize);
				if(wRxLength)
				{
					nRxSize = 3;
					chRxOpCode = chSpRxBuf[nRxSize++];
					if(chRxOpCode == chOpCode)
					{
						wSpRxBuf = (USHORT*)&chSpRxBuf[nRxSize];wRxSize=0;
						wRxRecode = wSpRxBuf[wRxSize++];
						wRxMaxRecode = wSpRxBuf[wRxSize++];
						if(wRxMaxRecode == wTxMaxRecode)
						{
							bSuccess = TRUE;
							break;
						}
						else
						{
							TRACE("=> TC-LIU: INNER Step 1 (ready): difference MaxRecode[%d]!!!...\n",wRxMaxRecode);
						}
					}
					else TRACE("=> TC-LIU: INNER Step 1 (ready): Invalide OpCode[%d]!!!...\n",chOpCode);
				}
				else TRACE("=> TC-LIU: INNER Step 1 (ready): Rx DATA Error [%d]!!!...\n",nErrorNo+1);
			}
			else TRACE("=> TC-LIU: INNER Step 1 (ready): Rx Size Zero [%d]!!!...\n",nErrorNo+1);
		}
		else TRACE("=> TC-LIU: INNER Step 1 (ready): retry[%d]!!!...\n",nErrorNo+1);
	}

	/* 2) INNER TX STEP-2 : DATA SEND */
	if(bSuccess)
	{
		chOpCode = 201;
		m_wTxDownStep = 12;
		for(wTxRecode=0;wTxRecode<wTxMaxRecode;wTxRecode++)
		{
			for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
			{
				bSuccess = FALSE;
				sm_SpRxReadyClear();
				
				memset(chSpTxBuf,0,sizeof(chSpTxBuf));
				wTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,chOpCode,wTxRecode,wTxMaxRecode);
				memcpy(&chSpTxBuf[wTxSize],pFirmMem+DOWN_MAX_BYTESIZE*wTxRecode,DOWN_MAX_BYTESIZE);
				wTxSize += DOWN_MAX_BYTESIZE;
				wTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,wTxSize);
				sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,wTxSize);
				
				taskDelay(100);

				for(i=0;i<1000;i++)
				{
					taskDelay(1);
					wSpRxReady = sm_bSpRxReady();
					if(wSpRxReady) break;
				}

				if(wSpRxReady == SPCODE_LIU_HUGECOM)
				{
					memset(chSpRxBuf,0,sizeof(chSpRxBuf));
					nRxSize = (USHORT)sm_SpRxDataLoad((USHORT*)chSpRxBuf);
					if(nRxSize)
					{
						wRxLength = sm_SpRxDataBccCheck(chSpRxBuf,nRxSize);
						if(wRxLength)
						{
							nRxSize = 3;
							chRxOpCode = chSpRxBuf[nRxSize++];
							if(chRxOpCode == chOpCode)
							{
								wSpRxBuf = (USHORT*)&chSpRxBuf[nRxSize]; wRxSize = 0;
								wRxRecode = wSpRxBuf[wRxSize++];
								wRxMaxRecode = wSpRxBuf[wRxSize++];
								
								if(wRxRecode == wTxRecode)
								{
									gp_FirmwareDownloadRecode(wTxRecode,wTxMaxRecode,"INNER");
									TRACE("=> TC-LIU: INNER TX STEP-2 (download) : %d/%d... !!!\n",wTxRecode,wTxMaxRecode);
									m_wTxDownRecode = wTxRecode;
									m_wTxDownMaxRecode = wTxMaxRecode;
									bSuccess = TRUE;
									break;
								}
								else
								{
									TRACE("=> TC-LIU: INNER Step 2 (download): difference wRecode[%d]!!!...\n",wRxRecode);
								}
							}
							else TRACE("=> TC-LIU: INNER Step 2 (download): Invalide OpCode[%d]!!!...\n",chRxOpCode);
						}
						else TRACE("=> TC-LIU: INNER Step 2 (download): Rx DATA Error [%d]!!!...\n",nErrorNo+1);
					}
					else TRACE("=> TC-LIU: INNER Step 2 (download): RxLoading Error [%d]!!!...\n",nErrorNo+1);
				}
				
				if(!bSuccess)
				{
					if(nErrorNo < DOWN_MAX_ERROR)
					{
						TRACE("=> TC-LIU: INNER Step 2 (download) : %d/%d retry[%d]... !!!\n",wTxRecode,wTxMaxRecode,nErrorNo);
						continue;
					}
					else break;
				}
				else break;
			}

			if(!bSuccess) 
			{
				TRACE("=> TC-LIU: INNER Step 2 (download) : Break !!!\n");
				break;
			}
		}
	}

	/* 3) INNER STEP-3 : BOARD DOWN LOAD START (CRC) */
	if(bSuccess)
	{
		chOpCode = 202;
		m_wTxDownStep = 13;
		for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
		{
			bSuccess = FALSE;
			sm_SpRxReadyClear();
			
			memset(chSpTxBuf,0,sizeof(chSpTxBuf));
			wTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,chOpCode,0,wTxMaxRecode);
			chSpTxBuf[wTxSize++] = WORD_H(wCrc);
			chSpTxBuf[wTxSize++] = WORD_L(wCrc);
			chSpTxBuf[wTxSize++] = DWORD_HH(nSize);
			chSpTxBuf[wTxSize++] = DWORD_HL(nSize);
			chSpTxBuf[wTxSize++] = DWORD_LH(nSize);
			chSpTxBuf[wTxSize++] = DWORD_LL(nSize);
			chSpTxBuf[wTxSize++] = 0;	/* LIU2 FLAG */
			chSpTxBuf[wTxSize++] = 0;	/* LIU2 FLAG */
			chSpTxBuf[wTxSize++] = WORD_H(wDataType);
			chSpTxBuf[wTxSize++] = WORD_L(wDataType);

			printf("=> Tx & Write File Size = %08X[%d]...\n",nSize,nSize);
			wTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,wTxSize);
			sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,wTxSize);

			for(i=0;i<1000;i++)
			{
				taskDelay(1);
				wSpRxReady = sm_bSpRxReady();
			}

			if(wSpRxReady == SPCODE_LIU_HUGECOM)
			{
				memset(chSpRxBuf,0,sizeof(chSpRxBuf));
				nRxSize = (USHORT)sm_SpRxDataLoad((USHORT*)chSpRxBuf);
				if(nRxSize)
				{
					wRxLength = sm_SpRxDataBccCheck(chSpRxBuf,nRxSize);
					if(wRxLength)
					{
						nRxSize = 3;
						chRxOpCode = chSpRxBuf[nRxSize++];
						if(chRxOpCode == chOpCode)
						{
							wSpRxBuf = (USHORT*)&chSpRxBuf[nRxSize]; wRxSize=0;
							wRxRecode = wSpRxBuf[wRxSize++];
							wRxMaxRecode = wSpRxBuf[wRxSize++];
							wTemp = wSpRxBuf[wRxSize++];
							if(wTemp == 0x0001)
							{
								bSuccess = TRUE;
								TRACE("=> TC-LIU: INNER TX STEP-3 CRC & RUN OK !!!...[%d]\n",MIN(wRxMaxRecode * 50,20000));
								m_wTxDownRecode = wRxRecode;
								m_wTxDownMaxRecode = wRxMaxRecode;

								if(wDataType == FW_TYPE_SCM2) taskDelay(MIN(wRxMaxRecode * 50,20000));
								else if(wDataType == FW_TYPE_MCPU) gp_FirmwareBeginWait(2000,"Wait for  Writing...");
								else if(wDataType == FW_TYPE_DIA) gp_FirmwareBeginWait(2000,"Wait for Data Writing...");
							}
							else
							{
								TRACE("=> TC-LIU: INNER Step 3 (write): Data-Crc Error, Stopped !!!...\n");
							}
							break;
						}
						else TRACE("=> TC-LIU: INNER Step 3 (write): Invalide ICode[%d]!!!...\n",chRxOpCode);
					}
					else TRACE("=> TC-LIU: INNER Step 3 (write): Rx DATA Error [%d]!!!...\n",nErrorNo+1);
				}
				else TRACE("=> TC-LIU: INNER Step 3 (write): RxLoading Error [%d]!!!...\n",nErrorNo+1);
			}
			else TRACE("=> TC-LIU: INNER Step 3 (write): retry[%d]!!!...\n",nErrorNo+1);
		}
	}

	/* 4) INNER STEP-4 : STATUS REQUEST */

	if(bSuccess)
	{
		bExit = FALSE;
		chOpCode = 203;
		m_wTxDownStep = 14;
		for(nMTime=0;nMTime<1000;nMTime++) /* 100 초동안 응답이 없으면 NG 를 표시한다. */
		{
			bSuccess = FALSE;
			sm_SpRxReadyClear();
			
			memset(chSpTxBuf,0,sizeof(chSpTxBuf));
			wTxSize = sm_MakeFirmwareSpComTxHead(chSpTxBuf,chOpCode,0,wTxMaxRecode);
			wTxSize = sm_MakeFirmwareSpComTxFoot(chSpTxBuf,wTxSize);
			sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,chSpTxBuf,wTxSize);

			for(i=0;i<1000;i++)
			{
				taskDelay(1);
				wSpRxReady = sm_bSpRxReady();
			}
			if(wSpRxReady == SPCODE_LIU_HUGECOM)
			{
				memset(chSpRxBuf,0,sizeof(chSpRxBuf));
				nRxSize = (USHORT)sm_SpRxDataLoad((USHORT*)chSpRxBuf);
				if(nRxSize)
				{
					wRxLength = sm_SpRxDataBccCheck(chSpRxBuf,nRxSize);
					if(wRxLength)
					{
						nRxSize = 3;
						chRxOpCode = chSpRxBuf[nRxSize++];
						if(chRxOpCode == chOpCode)
						{
							wSpRxBuf = (USHORT*)&chSpRxBuf[nRxSize];wRxSize=0;
							wRxRecode = wSpRxBuf[wRxSize++];
							wRxMaxRecode = wSpRxBuf[wRxSize++];
							
							wRxDownStep = wSpRxBuf[wRxSize++];
							wRxDownResult = wSpRxBuf[wRxSize++];
							wRxDownTotalResult = wSpRxBuf[wRxSize++];
							wRxDownExit = wSpRxBuf[wRxSize++];
							
							switch(wRxDownStep)
							{
							case 1:
								if(wRxOldDownStep != wRxDownStep)  gp_FirmwareMessage(0,"Memory Erasing...");
								if(wRxDownResult) gp_FirmwareMessage(0,"Memory Erase OK !!");
								break;
							case 2:
								if(wRxOldDownStep != wRxDownStep) gp_FirmwareBeginWait(3000,"Wait for Recording...");
								break;
							case 3:
								if(wRxOldDownStep != wRxDownStep) 
								{
									gp_FirmwareBeginWait(500,"Wait for  Writing...");
								}
								if(wRxDownResult) gp_FirmwareEndWait();
								break;
							case 4:
								if(wRxOldDownStep != wRxDownStep) 
								{
									gp_FirmwareEndWait();
								}
								break;
							}
							
							wRet |= (wRxDownTotalResult<<2);
							
							bExit = wRxDownExit ? TRUE : FALSE;
							wRxOldDownStep = wRxDownStep;
						}
						else TRACE("=> TC-LIU2: INNER Step 4 (verify): Invalide OpCode[%d]!!!...\n",chOpCode);
					}
					else TRACE("=> TC-LIU2: INNER Step 4 (verify): Rx DATA Error [%d]!!!...\n",nErrorNo+1);
				}
				else TRACE("=> TC-LIU2: INNER Step 4 (verify): RxLoading Error [%d]!!!...\n",nErrorNo+1);
			}

			if(bExit) break;
		}

		if(!bExit)
		{
			TRACE("=> TC-LIU2: INNER Step 4 (verify) : Timeout Sequence Stopping...\n");
		}
	}

	/***********************************************************************/
	TRACE("=> TC-LIU2: INNER FIRMWARE DOWNLOAD END [%04X]....\n",wRet);

	mx_EndEstimatedTime(NULL);

	return wRet;
}

/*********************************************************************/
/* 반대측과 통신하을 하여 데이터를 넘겨준다. 그리고 응답을 기다린다. */
/* CC로는 전송하지 않는다.											 */
/* 리턴값은 TC-LIU1(BIT08,BIT09) , TC-LIU2(BIT10,BIT11) 로 응답한다. */
/*********************************************************************/
USHORT sm_FirmwareDownload_Scm_RemoteTcMem(BYTE chToAddress,LPBYTE pFirmMem,int nSize,USHORT wDataType,BOOL bNoLiu2)
{
	USHORT wRet = 0;
	USHORT wTxRecode,wTxMaxRecode = nSize/DOWN_MAX_BYTESIZE + ((nSize%DOWN_MAX_BYTESIZE) ? 1 : 0 );
	USHORT wRxRecode,wRxMaxRecode,wRxLen;
	int nTxSize,nTxHeadSize,i,nTcInfoSize,nErrorNo,nMTime;
	int nRxSize;
	BYTE chMComTxBuf[SCM_TXBYTES];
	BYTE chMComRxBuf[SCM_RXBYTES];
	USHORT *wMComRxBuf,wRxSize;
	BOOL bSuccess,bRxReady,bRxLoaded,bExit;
	PMCOMPTLHEAD pMComTxHead,pMComRxHead;
	PMAINCOMHEAD pTxTcHead,pRxTcHead;
	BYTE chSpCode;
	USHORT wCrc,wTemp;
	USHORT wRxDownStep,wRxDownResult,wRxDownTotalResult,wRxOldDownStep=0,wRxOldDownResult,wRxDownExit;

	wRxDownTotalResult = 0;

	wCrc = mx_GetCRC16(0,wTxMaxRecode*DOWN_MAX_BYTESIZE,pFirmMem);

	/* 1) NET TX STEP-1: Firmware Memory Allocation Ready... */
	chSpCode = 200;
	for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
	{
		bSuccess = FALSE;
		sm_McRxReadyClearRemoteTC(chToAddress);
		
		nTxSize = sm_MakeFirmwareMComTxHead(chMComTxBuf,chSpCode,chToAddress,TRUE,0,wTxMaxRecode);
		
		sm_McTxDataLoad(chMComTxBuf);
		sm_McTxSend(m_chDownDirect,0);
		
		taskDelay(1000);
		
		bRxReady = sm_bRxReadyRemoteTC(chToAddress);
		if(bRxReady)
		{
			memset(chMComRxBuf,0,sizeof(chMComRxBuf));
			bRxLoaded = sm_McRxDataLoadRemoteTC(chToAddress,(USHORT*)chMComRxBuf);
			if(bRxLoaded)
			{
				if(sm_McRxDataCrcCheck(chMComRxBuf))
				{
					nRxSize = 0;
					pMComRxHead = (PMCOMPTLHEAD)chMComRxBuf;
					if(pMComRxHead->nAddress2 == chToAddress)
					{
						nRxSize += sizeof(MCOMPTLHEAD);
						pRxTcHead = (PMAINCOMHEAD)&chMComRxBuf[nRxSize];
						if(pRxTcHead->ICode == chSpCode)
						{
							nRxSize += sizeof(MAINCOMHEAD);
							
							wMComRxBuf = (USHORT*)&chMComRxBuf[nRxSize];wRxSize = 0;
							wRxLen = wMComRxBuf[wRxSize++];
							wRxRecode = wMComRxBuf[wRxSize++];
							wRxMaxRecode = wMComRxBuf[wRxSize++];
							if(wRxMaxRecode == wTxMaxRecode)
							{
								bSuccess = TRUE;
								break;
							}
							else
							{
								TRACE("=> RemoteTc[%02X]:Net Step 1 (ready): difference MaxRecode[%d]!!!...\n",chToAddress,wRxMaxRecode);
							}
						}
						else TRACE("=> RemoteTc[%02X]:Net Step 1 (ready): Invalide ICode[%d]!!!...\n",chToAddress,pRxTcHead->ICode);
					}
					else TRACE("=> RemoteTc[%02X]:Net Step 1 (ready): Invalide TC Address[%02X]!!!...\n",chToAddress,pMComRxHead->nAddress2);
				}
				else TRACE("=> RemoteTc[%02X]:Net Step 1 (ready): Rx Crc Error [%d]!!!...\n",chToAddress,nErrorNo+1);
			}
			else TRACE("=> RemoteTc[%02X]:Net Step 1 (ready): RxLoading Error [%d]!!!...\n",chToAddress,nErrorNo+1);
		}
		else TRACE("=> RemoteTc[%02X]:Net Step 1 (ready): retry[%d]!!!...\n",chToAddress,nErrorNo+1);
	}

	/* 2) NET TX STEP-2 : DATA SEND */
	if(bSuccess)
	{
		chSpCode = 201;
		for(wTxRecode=0;wTxRecode<wTxMaxRecode;wTxRecode++)
		{
			for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
			{
				bSuccess = FALSE;
				sm_McRxReadyClearRemoteTC(chToAddress);
				bRxReady = FALSE;

				nTxSize = sm_MakeFirmwareMComTxHead(chMComTxBuf,chSpCode,chToAddress,TRUE,wTxRecode,wTxMaxRecode);
				memcpy(&chMComTxBuf[nTxSize],pFirmMem+DOWN_MAX_BYTESIZE*wTxRecode,DOWN_MAX_BYTESIZE);
				nTxSize += DOWN_MAX_BYTESIZE;
				sm_McTxDataLoad(chMComTxBuf);
				sm_McTxSend(m_chDownDirect,0);
				
				for(i=0;i<1000;i++)
				{
					taskDelay(1);
					bRxReady = sm_bRxReadyRemoteTC(chToAddress);
					if(bRxReady) break;
				}

				bRxReady = sm_bRxReadyRemoteTC(chToAddress);
				if(bRxReady)
				{
					memset(chMComRxBuf,0,sizeof(chMComRxBuf));
					bRxLoaded = sm_McRxDataLoadRemoteTC(chToAddress,(USHORT*)chMComRxBuf);
					if(bRxLoaded)
					{
						if(sm_McRxDataCrcCheck(chMComRxBuf))
						{
							nRxSize = 0;
							pMComRxHead = (PMCOMPTLHEAD)chMComRxBuf;
							if(pMComRxHead->nAddress2 == chToAddress)
							{
								nRxSize += sizeof(MCOMPTLHEAD);
								pRxTcHead = (PMAINCOMHEAD)&chMComRxBuf[nRxSize];
								if(pRxTcHead->ICode == chSpCode)
								{
									nRxSize += sizeof(MAINCOMHEAD);
									wMComRxBuf = (USHORT*)&chMComRxBuf[nRxSize];wRxSize = 0;
									wRxLen = wMComRxBuf[wRxSize++];
									wRxRecode = wMComRxBuf[wRxSize++];
									wRxMaxRecode = wMComRxBuf[wRxSize++];
									if(wRxRecode == wTxRecode)
									{
										gp_FirmwareDownloadRecode(wTxRecode,wTxMaxRecode,"NET");
										TRACE("=> NET TX STEP-2 (download) : %d/%d... !!!\n",wTxRecode,wTxMaxRecode);
										bSuccess = TRUE;
										break;
									}
									else
									{
										TRACE("=> RemoteTc[%02X]:Net Step 2 (download): difference wRecode[%d]!!!...\n",chToAddress,wRxRecode);
									}
								}
								else TRACE("=> RemoteTc[%02X]:Net Step 2 (download): Invalide ICode[%d]!!!...\n",chToAddress,pRxTcHead->ICode);
							}
							else TRACE("=> RemoteTc[%02X]:Net Step 2 (download): Invalide TC Address[%02X]!!!...\n",chToAddress,pMComRxHead->nAddress2);
						}
						else TRACE("=> RemoteTc[%02X]:Net Step 2 (download): Rx Crc Error [%d]!!!...\n",chToAddress,nErrorNo+1);
					}
					else TRACE("=> RemoteTc[%02X]:Net Step 2 (download): RxLoading Error [%d]!!!...\n",chToAddress,nErrorNo+1);
				}
				
				if(!bSuccess)
				{
					if(nErrorNo < DOWN_MAX_ERROR)
					{
						TRACE("=>RemoteTc[%02X]:Net Step 2 (download) : %d/%d retry[%d]... !!!\n",chToAddress,wTxRecode,wTxMaxRecode,nErrorNo);
						continue;
					}
					else break;
				}
				else break;
			}

			if(!bSuccess) 
			{
				TRACE("=> RemoteTc[%02X]:Net Step 2 (download) : Break !!!\n",chToAddress);
				break;
			}
		}
	}

	/* 3) NET STEP-3 : BOARD DOWN LOAD START (CRC) */
	if(bSuccess)
	{
		chSpCode = 202;
		for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
		{
			bSuccess = FALSE;
			sm_McRxReadyClearRemoteTC(chToAddress);
			
			nTxSize = sm_MakeFirmwareMComTxHead(chMComTxBuf,chSpCode,chToAddress,TRUE,0,wTxMaxRecode);
			chMComTxBuf[nTxSize++] = WORD_H(wCrc);
			chMComTxBuf[nTxSize++] = WORD_L(wCrc);
			chMComTxBuf[nTxSize++] = DWORD_HH(nSize);
			chMComTxBuf[nTxSize++] = DWORD_HL(nSize);
			chMComTxBuf[nTxSize++] = DWORD_LH(nSize);
			chMComTxBuf[nTxSize++] = DWORD_LL(nSize);
			chMComTxBuf[nTxSize++] = WORD_H(bNoLiu2);
			chMComTxBuf[nTxSize++] = WORD_L(bNoLiu2);
			chMComTxBuf[nTxSize++] = WORD_H(wDataType);
			chMComTxBuf[nTxSize++] = WORD_L(wDataType);

			sm_McTxDataLoad(chMComTxBuf);
			sm_McTxSend(m_chDownDirect,0);

			for(i=0;i<1000;i++)
			{
				taskDelay(1);
				bRxReady = sm_bRxReadyRemoteTC(chToAddress);
			}

			if(bRxReady)
			{
				memset(chMComRxBuf,0,sizeof(chMComRxBuf));
				bRxLoaded = sm_McRxDataLoadRemoteTC(chToAddress,(USHORT*)chMComRxBuf);
				if(bRxLoaded)
				{
					if(sm_McRxDataCrcCheck(chMComRxBuf))
					{
						nRxSize = 0;
						pMComRxHead = (PMCOMPTLHEAD)chMComRxBuf;
						if(pMComRxHead->nAddress2 == chToAddress)
						{
							nRxSize += sizeof(MCOMPTLHEAD);
							pRxTcHead = (PMAINCOMHEAD)&chMComRxBuf[nRxSize];
							if(pRxTcHead->ICode == chSpCode)
							{
								nRxSize += sizeof(MAINCOMHEAD);
								wMComRxBuf = (USHORT*)&chMComRxBuf[nRxSize];wRxSize = 0;
								wRxLen = wMComRxBuf[wRxSize++];
								wRxRecode = wMComRxBuf[wRxSize++];
								wRxMaxRecode = wMComRxBuf[wRxSize++];
								wTemp = wMComRxBuf[wRxSize++];
								if(wTemp == 0x0001)
								{
									bSuccess = TRUE;
									TRACE("=> NET TX STEP-3 CRC & RUN OK !!!...\n");
									gp_FirmwareBeginWait(2000,"Wait for  Writing...");
								}
								else
								{
									TRACE("=> RemoteTc[%02X]:Net Step 3 (write): Data-Crc Error, Stopped !!!...\n",chToAddress);
								}
								break;
							}
							else TRACE("=> RemoteTc[%02X]:Net Step 3 (write): Invalide ICode[%d]!!!...\n",chToAddress,pRxTcHead->ICode);
						}
						else TRACE("=> RemoteTc[%02X]:Net Step 3 (write): Invalide TC Address[%02X]!!!...\n",chToAddress,pMComRxHead->nAddress2);
					}
					else TRACE("=> RemoteTc[%02X]:Net Step 3 (write): Rx Crc Error [%d]!!!...\n",chToAddress,nErrorNo+1);
				}
				else TRACE("=> RemoteTc[%02X]:Net Step 3 (write): RxLoading Error [%d]!!!...\n",chToAddress,nErrorNo+1);
			}
			else TRACE("=> RemoteTc[%02X]:Net Step 3 (write): retry[%d]!!!...\n",chToAddress,nErrorNo+1);
		}
	}

	/* 4) NET STEP-4 : STATUS REQUEST */

	if(bSuccess)
	{
		bExit = FALSE;
		chSpCode = 203;
		for(nMTime=0;nMTime<1000;nMTime++) /* 100 초동안 응답이 없으면 NG 를 표시한다. */
		{
			bSuccess = FALSE;
			sm_McRxReadyClearRemoteTC(chToAddress);

			nTxSize = sm_MakeFirmwareMComTxHead(chMComTxBuf,chSpCode,chToAddress,TRUE,0,wTxMaxRecode);
			sm_McTxDataLoad(chMComTxBuf);
			sm_McTxSend(m_chDownDirect,0);
			
			for(i=0;i<1000;i++)
			{
				taskDelay(1);
				bRxReady = sm_bRxReadyRemoteTC(chToAddress);
			}
			if(bRxReady)
			{
				memset(chMComRxBuf,0,sizeof(chMComRxBuf));
				bRxLoaded = sm_McRxDataLoadRemoteTC(chToAddress,(USHORT*)chMComRxBuf);
				if(bRxLoaded)
				{
					if(sm_McRxDataCrcCheck(chMComRxBuf))
					{
						nRxSize = 0;
						pMComRxHead = (PMCOMPTLHEAD)chMComRxBuf;
						if(pMComRxHead->nAddress2 == chToAddress)
						{
							nRxSize += sizeof(MCOMPTLHEAD);
							pRxTcHead = (PMAINCOMHEAD)&chMComRxBuf[nRxSize];
							if(pRxTcHead->ICode == chSpCode)
							{
								nRxSize += sizeof(MAINCOMHEAD);
								wMComRxBuf = (USHORT*)&chMComRxBuf[nRxSize];wRxSize = 0;
								wRxLen = wMComRxBuf[wRxSize++];
								wRxRecode = wMComRxBuf[wRxSize++];
								wRxMaxRecode = wMComRxBuf[wRxSize++];

								wRxDownStep = wMComRxBuf[wRxSize++];			/* STEP NUMBER */
								wRxDownResult = wMComRxBuf[wRxSize++];			/* STEP RESULT */
								wRxDownTotalResult = wMComRxBuf[wRxSize++];	/* STEP RESULT */
								wRxDownExit = wMComRxBuf[wRxSize++];			/* STEP RESULT */

								switch(wRxDownStep)
								{
								case 1:
									if(wRxOldDownStep != wRxDownStep)  gp_FirmwareMessage(0,"Memory Erasing...");
									if(wRxDownResult) gp_FirmwareMessage(0,"Memory Erase OK !!");
									break;
								case 2:
									if(wRxOldDownStep != wRxDownStep) gp_FirmwareBeginWait(3000,"Wait for Recording...");
									break;
								case 3:
									if(wRxOldDownStep != wRxDownStep) 
									{
										if(wDataType == FW_TYPE_SCM2) gp_FirmwareBeginWait(500,"Wait for  Writing...");
										else if(wDataType == FW_TYPE_MCPU) gp_FirmwareBeginWait(2000,"Wait for  Writing...");
										else if(wDataType == FW_TYPE_DIA) gp_FirmwareBeginWait(2000,"Wait for Data Writing...");
										
									}
									if(wRxDownResult) gp_FirmwareEndWait();
									break;
								case 4:
									if(wRxOldDownStep != wRxDownStep) 
									{
										gp_FirmwareEndWait();
									}
									break;
								case 11: /* LIU INNER STEP */
									if(wRxOldDownStep != wRxDownStep)  gp_FirmwareMessage(0,"Memory Erasing...");
									break;
								case 12:
									gp_FirmwareDownloadRecode(wRxRecode,wRxMaxRecode,"INNER");
									break;
								case 13:
									if(wRxOldDownStep != wRxDownStep) 
									{
										gp_FirmwareDownloadRecode(wRxRecode,wRxMaxRecode,"INNER");
										gp_FirmwareBeginWait(2000,"Wait for  Writing...");
									}
									break;
								case 14:
									break;
								}

								wRet |= wRxDownTotalResult;

								bExit = wRxDownExit ? TRUE : FALSE;
								wRxOldDownStep = wRxDownStep;
							}
							else TRACE("=> RemoteTc[%02X]:Net Step 4 (verify): Invalide ICode[%d]!!!...\n",chToAddress,pRxTcHead->ICode);
						}
						else TRACE("=> RemoteTc[%02X]:Net Step 4 (verify): Invalide TC Address[%02X]!!!...\n",chToAddress,pMComRxHead->nAddress2);
					}
					else TRACE("=> RemoteTc[%02X]:Net Step 4 (verify): Rx Crc Error [%d]!!!...\n",chToAddress,nErrorNo+1);
				}
				else TRACE("=> RemoteTc[%02X]:Net Step 4 (verify): RxLoading Error [%d]!!!...\n",chToAddress,nErrorNo+1);
			}

			if(bExit) break;
		}

		if(!bExit)
		{
			TRACE("=> RemoteTc[%02X]:Net Step 4 (verify) : Timeout Sequence Stopping...\n",chToAddress);
		}
	}

	/***********************************************************************/

	return wRet;
}

BOOL sm_FirmwareDownload_Mpu_TcThisMem(LPBYTE pFirmMem,int nSize)
{
	/* Mpu RomAuto Program */
	return sm_DownloadByMem_mpu860_This(pFirmMem,nSize);
}

BOOL sm_FirmwareDownload_Mpu_TcThisDiaMem(LPBYTE pZipBuf,int nZipSize)
{
	return sm_DownloadByMem_mpuDia_This(pZipBuf,nZipSize);
}

BOOL sm_FirmwareDownload_Scm_TcThisMem(int nBoardNo,LPBYTE pFirmMem,int nSize)
{
	UCHAR pTxBuf[SCM_USCOM_DBLOCK_WSIZE],pRxBuf[SCM_USCOM_DBLOCK_WSIZE];
	USHORT wTxRecode,wTxMaxRecode = nSize/DOWN_MAX_BYTESIZE + ((nSize%DOWN_MAX_BYTESIZE) ? 1 : 0 );
	USHORT wRxRecode,wRxMaxRecode,wResult;
	USHORT wTemp;
	int i,idx,nErrorNo,nTemp;
	BOOL bRxReady,bSuccess=FALSE;
	USHORT wSpCode;

	bSuccess = FALSE;
	m_wTxDownMaxRecode = wTxMaxRecode;
	/* 1) STEP-1: Fireware Memory Eraseing... */
	wSpCode = 200;
	memset(pTxBuf,0,sizeof(pTxBuf));
	m_wTxDownStep = 1;
	m_wTxDownResult = FALSE;
	gp_FirmwareMessage(0,"Memory Erasing...");
	for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
	{
		sm_FwRxReadyClear(nBoardNo);
		bRxReady = FALSE;
		memset(pTxBuf,0,sizeof(pTxBuf));
		sm_FwTxDataLoad(nBoardNo,pTxBuf,0);
		sm_FwTxSend(nBoardNo,wSpCode);
		
		taskDelay(2000);
		
		bRxReady = sm_bFwRxReady(nBoardNo);
		if(bRxReady) 
		{
			memset(pRxBuf,0,sizeof(pRxBuf));
			if(sm_FwRxDataLoad(nBoardNo,(USHORT*)pRxBuf) > 0)
			{
				wRxRecode = MK_WORD(pRxBuf[0],pRxBuf[1]);
				wRxMaxRecode = MK_WORD(pRxBuf[2],pRxBuf[3]);
				wResult = MK_WORD(pRxBuf[4],pRxBuf[5]);
				if(wResult == 0x0001)
				{
					TRACE("=> Step 1 (Erase): complete...\n");
					gp_FirmwareMessage(0,"Memory Erase OK !!");
					bSuccess = TRUE;
					m_wTxDownResult = TRUE;
					break;
				}
				else TRACE("=> Step 1 (Erase): erase failure !!!...0x%04X\n",wResult);
			}
			else TRACE("=> Step 1 (Erase): Invalide OpCode[%d] !!!...\n",bRxReady);
		}
		else
		{
			TRACE("=> Step 1 (erase) : retry[%d]... !!!\n",nErrorNo+1);
		}
	}
	
	/* 2) STEP-2 : DATA SEND */
	if(bSuccess)
	{
		m_wTxDownStep = 2;
		m_wTxDownResult = FALSE;
		taskDelay(200);
		
		wSpCode = 201;
		nErrorNo = 0;
		for(wTxRecode=0;wTxRecode<wTxMaxRecode;wTxRecode++)
		{
			for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
			{
				bSuccess = FALSE;
				
				sm_FwRxReadyClear(nBoardNo);
				bRxReady = FALSE;
				memset(pTxBuf,0,sizeof(pTxBuf));
				pTxBuf[0] = WORD_H(wTxRecode);
				pTxBuf[1] = WORD_L(wTxRecode);
				pTxBuf[2] = WORD_H(wTxMaxRecode);
				pTxBuf[3] = WORD_L(wTxMaxRecode);
				memcpy(pTxBuf+4,pFirmMem+DOWN_MAX_BYTESIZE*wTxRecode,DOWN_MAX_BYTESIZE);
				sm_FwTxDataLoad(nBoardNo,pTxBuf,DOWN_MAX_BYTESIZE+4);
				sm_FwTxSend(nBoardNo,wSpCode);
				
				for(i=0;i<1000;i++)
				{
					taskDelay(1);
					bRxReady = sm_bFwRxReady(nBoardNo);
					if(bRxReady) break;
				}
				
				if(bRxReady)
				{
					nTemp = sm_FwRxDataLoad(nBoardNo,(USHORT*)pRxBuf);
					if(nTemp > 0)
					{
						wRxRecode = MK_WORD(pRxBuf[0],pRxBuf[1]);
						wRxMaxRecode = MK_WORD(pRxBuf[2],pRxBuf[3]);
						wResult = MK_WORD(pRxBuf[4],pRxBuf[5]);
						if(wRxRecode == wTxRecode && wTxMaxRecode == wRxMaxRecode)
						{	
							if(wResult == 0x0001)
							{
								TRACE("=> Step 2 (download) : %d/%d... !!!\n",wTxRecode,wTxMaxRecode);
								m_wTxDownRecode = wTxRecode;
								gp_FirmwareDownloadRecode(wTxRecode,wTxMaxRecode,"LOC");
								bSuccess = TRUE;
								m_wTxDownResult = TRUE;
							}
							else TRACE("=> Step 2 (download) : Recode NG ... !!!\n");
						}
						else 
						{
							TRACE("=> Step 2 (download) : Recode Error(%04X,%04X != %04X,%04X) ... !!!\n",wRxRecode,wTxRecode,wTxMaxRecode,wRxMaxRecode);
						}
					}
					else TRACE("=> Step 2 (download) : Data Load Error ... !!!\n");
				}
				else TRACE("=> Step 2 (download) : Not Ready... !!!\n");
				
				if(!bSuccess)
				{
					if(nErrorNo < DOWN_MAX_ERROR)
					{
						TRACE("=> Step 2 (download) : %d/%d retry[%d]... !!!\n",wTxRecode,wTxMaxRecode,nErrorNo);
						continue;
					}
					else 
					{
						
						break;
					}
				}
				else break;
			}
			

			if(!bSuccess) 
			{
				TRACE("=> Step 2 (download) : Break !!!\n");
				break;
			}
		}
	}
	
	/* 3) STEP-3 : FLASH WRITE */
	if(bSuccess)
	{
		m_wTxDownStep = 3;
		m_wTxDownResult = FALSE;
		wSpCode = 202;
		gp_FirmwareBeginWait(2000,"Wait for  Writing...");
		for(nErrorNo = 0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
		{
			bSuccess = FALSE;
			
			sm_FwRxReadyClear(nBoardNo);
			bRxReady = FALSE;
			memset(pTxBuf,0,sizeof(pTxBuf));
			sm_FwTxDataLoad(nBoardNo,pTxBuf,0);
			sm_FwTxSend(nBoardNo,wSpCode);
			
			for(i=0;i<40;i++)
			{
				taskDelay(100);
				bRxReady = sm_bFwRxReady(nBoardNo);
				if(bRxReady) break;
			}
			
			if(bRxReady)
			{
				if(sm_FwRxDataLoad(nBoardNo,(USHORT*)pRxBuf)>0)
				{
					wRxRecode = MK_WORD(pRxBuf[0],pRxBuf[1]);
					wRxMaxRecode = MK_WORD(pRxBuf[2],pRxBuf[3]);
					wResult = MK_WORD(pRxBuf[4],pRxBuf[5]);
					if(wResult == 0x0001)
					{	
						TRACE("=> Step 3 (write) : complete... !!!\n");
						bSuccess = TRUE;
						m_wTxDownResult = TRUE;
					}
					else TRACE("=> Step 3 (write) : failure... !!!\n");
				}
				else TRACE("=> Step 3 (write) : Data Load Error ... !!!\n");
			}
			
			if(!bSuccess)
			{
				TRACE("=> Step 3 (write) : retry[%d]... !!!\n",nErrorNo+1);
			}
			else break;
		}
		gp_FirmwareEndWait();
	}
	
	/* 4) STEP-4 : FLASH Verify */
	if(bSuccess)
	{
		m_wTxDownStep = 4;
		m_wTxDownResult = FALSE;
		wSpCode = 203;
		for(nErrorNo = 0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
		{
			bSuccess = FALSE;
			sm_FwRxReadyClear(nBoardNo);
			bRxReady = FALSE;
			sm_FwTxDataLoad(nBoardNo,pTxBuf,0);
			sm_FwTxSend(nBoardNo,wSpCode);
			
			for(i=0;i<200;i++)
			{
				taskDelay(10);
				bRxReady = sm_bFwRxReady(nBoardNo);
				if(bRxReady) break;
			}
			
			if(bRxReady)
			{
				
				if(sm_FwRxDataLoad(nBoardNo,(USHORT*)pRxBuf)>0)
				{	
					wRxRecode = MK_WORD(pRxBuf[0],pRxBuf[1]);
					wRxMaxRecode = MK_WORD(pRxBuf[2],pRxBuf[3]);
					wResult = MK_WORD(pRxBuf[4],pRxBuf[5]);
					TRACE("=> Step 4 (verify) : => %s... !!!\n",wResult ? "OK":"NG");
					if(wResult) bSuccess = TRUE;
					m_wTxDownResult = bSuccess;
					break;
				}
				else TRACE("=> Step 4 (verify) : Data Load Error ... !!!\n");
			}
			
			if(!bSuccess)
			{
				TRACE("=> Step 4 (verify) : retry[%d]... !!!\n",nErrorNo+1);
			}
			else break;
		}
	}
	TRACE("=> Firmware download end...\n");

	return bSuccess;
}



/********************************************************************************************************/
/*  MPU 및 SCM의 다운로드에 사용하는 Function 이다..													*/
/********************************************************************************************************/
USHORT sm_DownloadByMem_Mpu_TcSub(BYTE chTcHexaID,LPBYTE pDataBuf,UINT nDataSize,BOOL bNoLiu2)
{
	BOOL bSuccess;
	USHORT wRet,wForm;
	int nMiddleNo;

	if(sm_GetHexaID(0) == chTcHexaID)
	{
		wForm = wRet = 0;
		/* 자차측의 보드 */
		TRACE("=> TcThis Liu1-Mpu Firmware download started...%d\n",nDataSize);
		bSuccess = sm_FirmwareDownload_Mpu_TcThisMem(pDataBuf,nDataSize);
		if(bSuccess) wRet |= BIT12;
		wForm |= BIT12;

		if(!bNoLiu2)
		{
			/* LIU1 이라면 LIU2를 다운로드 한다. */
			if(sm_IsLiuMaster(sm_GetHexaID(0)))
			{
				TRACE("=> TcThis Liu2-Mpu Firmware download started...%d\n",nDataSize);
				bSuccess = sm_FirmwareDownload_TcLiuMem(pDataBuf,nDataSize,FW_TYPE_MCPU);
				if(bSuccess) wRet |= BIT13;
				wForm |= BIT13;
			}
		}
		TRACE("=> This Mpu Download End %s[%04X] ... \n ",(wForm==wRet)?"OK":"NG",wRet);
	}
	else
	{
		wRet = sm_FirmwareDownload_Scm_RemoteTcMem(chTcHexaID,pDataBuf,nDataSize,FW_TYPE_MCPU,bNoLiu2);

		TRACE("=> RemoteTC[%02X] Mpu Download End [%04X] ...\n ",chTcHexaID,wRet);
	}
	

	return wRet;
}

USHORT sm_DownloadByMem_Dia_TcSub(BYTE chTcHexaID,LPBYTE pZipDataBuf,UINT nZipSize,BOOL bNoLiu2)
{
	BOOL bSuccess;
	USHORT wRet,wForm;
	int nMiddleNo;

	if(sm_GetHexaID(0) == chTcHexaID)
	{
		wForm = wRet = 0;
		/* 자차측의 보드 */
		TRACE("=> TcThis Liu1-Mpu DIA download started...%d\n",nZipSize);
		bSuccess = sm_FirmwareDownload_Mpu_TcThisDiaMem(pZipDataBuf,nZipSize);
		if(bSuccess) wRet |= BIT12;
		wForm |= BIT12;

		if(!bNoLiu2)
		{
			/* LIU1 이라면 LIU2를 다운로드 한다. */
			if(sm_IsLiuMaster(sm_GetHexaID(0)))
			{
				TRACE("=> TcThis Liu2-Mpu DIA download started...%d\n",nZipSize);
				bSuccess = sm_FirmwareDownload_TcLiuMem(pZipDataBuf,nZipSize,FW_TYPE_DIA);
				if(bSuccess) wRet |= BIT13;
				wForm |= BIT13;
			}
		}
		TRACE("=> This Mpu DIA Download End %s[%04X] ... \n ",(wForm==wRet)?"OK":"NG",wRet);
	}
	else
	{
		wRet = sm_FirmwareDownload_Scm_RemoteTcMem(chTcHexaID,pZipDataBuf,nZipSize,FW_TYPE_DIA,bNoLiu2);

		TRACE("=> RemoteTC[%02X] Mpu DIA Download End [%04X] ...\n ",chTcHexaID,wRet);
	}
	

	return wRet;
}

USHORT sm_DownloadByMem_Mpu_TC(BYTE chTcHexaID,LPBYTE pDataBuf,UINT nDataSize,BOOL bNoLiu2)
{
	m_wTxDownTotalResult = 0;
	m_wTxDownTotalResult = sm_DownloadByMem_Mpu_TcSub(chTcHexaID,pDataBuf,nDataSize,bNoLiu2);
	taskDelay(3000); /* 반대편에 전송할 시간을 기다린다. */
	m_nDownModeTaskId = 0;
	return m_wTxDownTotalResult;
}

USHORT sm_DownloadByMem_Dia_TC(BYTE chTcHexaID,LPBYTE pDataBuf,UINT nDataSize,BOOL bNoLiu2)
{
	m_wTxDownTotalResult = 0;
	m_wTxDownTotalResult = sm_DownloadByMem_Dia_TcSub(chTcHexaID,pDataBuf,nDataSize,bNoLiu2);
	taskDelay(3000); /* 반대편에 전송할 시간을 기다린다. */
	m_nDownModeTaskId = 0;
	return m_wTxDownTotalResult;
}


/* Return : 각 비트별로 TIRT에 다운로드를 완료한 ID를 의미한다. */
USHORT sm_DownloadByMem_Scm_TcSub(BYTE chTcHexaID,LPBYTE pDataBuf,UINT nDataSize)
{
	int i,nBoardNo;
	BOOL bSuccess;
	USHORT wForm,wRet;

	if(sm_GetHexaID(0) == chTcHexaID)
	{
		wForm = wRet = 0;
		/* 자차측의 보드 */
		for(nBoardNo=0;nBoardNo<FIRM_TCSCM2_NUM;nBoardNo++)
		{
			bSuccess = sm_FirmwareDownload_Scm_TcThisMem(nBoardNo,pDataBuf,nDataSize);
			if(bSuccess) wRet |= (BIT08<<nBoardNo);
			wForm |= (BIT08<<nBoardNo);
		}

		if(sm_IsLiuMaster(sm_GetHexaID(0)))
		{
			wRet |= sm_FirmwareDownload_TcLiuMem(pDataBuf,nDataSize,FW_TYPE_SCM2);
			for(nBoardNo=0;nBoardNo<FIRM_TCSCM2_NUM;nBoardNo++)  wForm |= (BIT10<<nBoardNo);
		}
		TRACE("=> This SCM2 Download End %s[%04X] ... \n ",(wForm==wRet)?"OK":"NG",wRet);
	}
	else 
	{
		wRet = sm_FirmwareDownload_Scm_RemoteTcMem(chTcHexaID,pDataBuf,nDataSize,FW_TYPE_SCM2,0);

		wForm = 0;
		for(nBoardNo=0;nBoardNo<FIRM_TCSCM2_NUM;nBoardNo++) wForm |= (BIT08<<nBoardNo);
		TRACE("=> RemoteTC[%02X] SCM2 Download End [%04X] ...\n ",chTcHexaID,wRet);
	}
	

	return wRet;
}

USHORT sm_DownloadByMem_Scm_TC(BYTE chTcHexaID,LPBYTE pDataBuf,UINT nDataSize)
{
	m_wTxDownTotalResult = 0;
	m_wTxDownTotalResult = sm_DownloadByMem_Scm_TcSub(chTcHexaID,pDataBuf,nDataSize);
	taskDelay(3000); /* 반대편에 전송할 시간을 기다린다. */
	m_nDownModeTaskId = 0;
	return m_wTxDownTotalResult;
}

USHORT sm_DownloadByMem_TcForm(USHORT wDataType,BOOL bNoLiu2)
{
	int i;
	USHORT wRet=0;
	if(wDataType == FW_TYPE_MCPU) 
	{
		wRet = BIT12;
		if(!bNoLiu2) wRet |= BIT13;
	}
	else if(wDataType == FW_TYPE_DIA) 
	{
		wRet = BIT12;
		if(!bNoLiu2) wRet |= BIT13;
	}
	else if(wDataType == FW_TYPE_SCM2)
	{
		for(i=0;i<FIRM_TCSCM2_NUM;i++) 
		{
			wRet |= BIT08<<i;
			wRet |= BIT10<<i;
		}
	}

	return wRet;
}

USHORT sm_DownloadByMem_Scm_CcForm()
{
	int i;
	USHORT wRet=0;

	for(i=0;i<FIRM_CCSCM2_NUM;i++) 
	{
		wRet |= BIT00<<i;
	}
	return wRet;
}



USHORT sm_DownloadByMem_TC(BYTE chTcHexaID,LPBYTE pDataBuf,UINT nDataSize,USHORT wDataType,BOOL bNoLiu2)
{
	USHORT wTemp;

	switch(wDataType)
	{
	case FW_TYPE_MCPU:
		return sm_DownloadByMem_Mpu_TC(chTcHexaID,pDataBuf,nDataSize,bNoLiu2);
		break;
	case FW_TYPE_DIA:
		return sm_DownloadByMem_Dia_TC(chTcHexaID,pDataBuf,nDataSize,bNoLiu2);
		break;
	case FW_TYPE_SCM2:
		return sm_DownloadByMem_Scm_TC(chTcHexaID,pDataBuf,nDataSize);
		break;
	case FW_TYPE_NONE:
		wTemp = sm_FirmwareCheckMem(pDataBuf,nDataSize,wDataType);
		if(wTemp != FW_TYPE_NONE) 
			return sm_DownloadByMem_TC(chTcHexaID,pDataBuf,nDataSize,wTemp,bNoLiu2);
		break;
	}

	return 0x0000;
}

USHORT sm_FirmwareDownload_CcMem(BYTE chToAddress,LPBYTE pFirmMem,int nSize)
{
	int nCarHo = BYTE_H(chToAddress)-1;
	BOOL bSuccess,bRxReady,bPartDownMode=FALSE;
	USHORT wResult,wForm,wRet = 0,wSpCode,wEraseForm=0;
	int nTxSize,nTxHeadSize,i,nTcInfoSize;
	USHORT wTxRecode,wTxMaxRecode = nSize/DOWN_MAX_BYTESIZE + ((nSize%DOWN_MAX_BYTESIZE) ? 1 : 0 );
	USHORT wRxRecode,wRxMaxRecode;
	int nRxSize,nErrorNo;
	USHORT wRxLen,wTemp;
	BYTE chMComTxBuf[SCM_TXBYTES];
	BYTE chMComRxBuf[SCM_RXBYTES];
	USHORT *wDataPack,wRxSize;
	PMCOMPTLHEAD pCCRxHead,pMComHead;
	PMCOMCCRXBODYTYPE pCCRxBody;
	USHORT wCrc;

	if(!BYTE_H(chToAddress)) return FALSE;

	wCrc = mx_GetCRC16(0,wTxMaxRecode*DOWN_MAX_BYTESIZE,pFirmMem);


	memset(chMComTxBuf,0,sizeof(chMComTxBuf));
	nTxSize = 0;
	pMComHead = (PMCOMPTLHEAD)chMComTxBuf;

	/***************** HEADER 구성  *******************************************/
	pMComHead->nAddress1 = chToAddress;
	pMComHead->nAddress2 = sm_GetHexaID(0);					/* Source Address */
	pMComHead->bResReq = TRUE;								/* Response Request */
	nTxSize += sizeof(MCOMPTLHEAD);

	nTcInfoSize = 0;
	pMComHead->nOpCodeOffset = nTcInfoSize;	/* OpCodeOffset */
	nTxSize += nTcInfoSize;

	nTxHeadSize = nTxSize;

	/* 1) STEP-1: Firmware Memory Eraseing... */
	wSpCode=200;
	gp_FirmwareMessage(0,"Memory Erasing...");
	for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
	{
		bSuccess = FALSE;
		nTxSize = nTxHeadSize;
		sm_McRxReadyClearCC(nCarHo);

		/* DOWNLOAD TX PROTOCOL (200) */
		chMComTxBuf[nTxSize++] =(BYTE)wSpCode;
		chMComTxBuf[nTxSize++] = 0; /* LENTH */
		chMComTxBuf[nTxSize++] = 0;
		chMComTxBuf[nTxSize++] = 0;

		sm_McTxDataLoad(chMComTxBuf);
		sm_McTxSend(m_chDownDirect,0);

		taskDelay(2000);

		bRxReady = sm_bMcRxReadyCC(nCarHo);
		if(bRxReady)
		{
			memset(chMComRxBuf,0,sizeof(chMComRxBuf));
			if(sm_McRxDataLoadCC(nCarHo,(USHORT*)chMComRxBuf))
			{
				if(sm_McRxDataCrcCheck(chMComRxBuf))
				{
					nRxSize = 0;
					pCCRxHead = (PMCOMPTLHEAD)chMComRxBuf;
					nRxSize += sizeof(MCOMPTLHEAD) + pCCRxHead->nOpCodeOffset;
					pCCRxBody = (PMCOMCCRXBODYTYPE)&chMComRxBuf[nRxSize];
					
					if(pCCRxBody->Head.chHexaID[0] == chToAddress)
					{
						if(pCCRxBody->chOpCode == wSpCode)
						{
							
							wForm = wResult = 0;
							wDataPack = (USHORT*)pCCRxBody->chDataPack;wRxSize=0;
							wRxLen = wDataPack[wRxSize++];
							wDataPack[wRxSize++];
							wDataPack[wRxSize++];
							for(i=0;i<FIRM_CCSCM2_NUM;i++)
							{
								wTemp = wDataPack[wRxSize++];
								wResult |= (wTemp==0x0001) ? (1<<i) : 0;
								wForm |= (1<<i);
							}

							if(m_bFwPartDownMode && nErrorNo==(DOWN_MAX_ERROR-1) && wResult) 
							{
								wEraseForm = wResult;
								bPartDownMode = TRUE;
							}

							if(wForm == wResult || bPartDownMode)
							{
								TRACE("=>CarHo[%d]: Step 1 (Erase): complete...\n",nCarHo);
								gp_FirmwareMessage(0,"Memory Erase OK !!");
								bSuccess = TRUE;
								break;
							}
							else 
							{
								TRACE("=>CarHo[%d]: Steop 1 (Erase): erase failure [%04X]!!!...%04X %04X %04X \n",nCarHo,wTemp,
									MK_WORD(pCCRxBody->chDataPack[6],pCCRxBody->chDataPack[7]),MK_WORD(pCCRxBody->chDataPack[8],pCCRxBody->chDataPack[9]),MK_WORD(pCCRxBody->chDataPack[10],pCCRxBody->chDataPack[11]));
							}
						}
						else TRACE("=>CarHo[%d]:  Step 1 (Erase): Invalide OpCode[%d] !!!...\n",nCarHo,pCCRxBody->chOpCode);

					}
					else TRACE("=>CarHo[%d]: Step 1 (erase) : Invalide CC Address[%02X]... !!!\n",nCarHo,pCCRxBody->Head.chHexaID[0]);
				}
				else TRACE("=>CarHo[%d]: Step 1 (erase) : Rx Crc Error[%d]... !!!\n",nCarHo,nErrorNo+1);
			}
			else TRACE("=>CarHo[%d]: Step 1 (erase) : RxLoading Error[%d]... !!!\n",nCarHo,nErrorNo+1);
		}
		else TRACE("=>CarHo[%d]: Step 1 (erase) : retry[%d]... !!!\n",nCarHo,nErrorNo+1);
	}

	/* 2) STEP-2 : DATA SEND */
	if(bSuccess)
	{
		wSpCode = 201;
		
		for(wTxRecode=0;wTxRecode<wTxMaxRecode;wTxRecode++)
		{
			for(nErrorNo=0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
			{
				bSuccess = FALSE;
				nTxSize = nTxHeadSize;
				sm_McRxReadyClearCC(nCarHo);
				bRxReady = FALSE;
				/***************** OPCODE 를 적용한 Format *********************************/
				chMComTxBuf[nTxSize++] = (BYTE)wSpCode;
				chMComTxBuf[nTxSize++] = WORD_H(DOWN_MAX_BYTESIZE+4);
				chMComTxBuf[nTxSize++] = WORD_L(DOWN_MAX_BYTESIZE+4);
				chMComTxBuf[nTxSize++] = WORD_H(wTxRecode);
				chMComTxBuf[nTxSize++] = WORD_L(wTxRecode);
				chMComTxBuf[nTxSize++] = WORD_H(wTxMaxRecode);
				chMComTxBuf[nTxSize++] = WORD_L(wTxMaxRecode);
				memcpy(&chMComTxBuf[nTxSize],pFirmMem+DOWN_MAX_BYTESIZE*wTxRecode,DOWN_MAX_BYTESIZE);
				nTxSize += DOWN_MAX_BYTESIZE;

				sm_McTxDataLoad(chMComTxBuf);
				sm_McTxSend(m_chDownDirect,0);
				
				for(i=0;i<1000;i++)
				{
					taskDelay(1);
					bRxReady = sm_bMcRxReadyCC(nCarHo);
					if(bRxReady) break;
				}
				if(bRxReady)
				{
					memset(chMComRxBuf,0,sizeof(chMComRxBuf));
					if(sm_McRxDataLoadCC(nCarHo,(USHORT*)chMComRxBuf))
					{
						if(sm_McRxDataCrcCheck(chMComRxBuf))
						{
							nRxSize = 0;
							pCCRxHead = (PMCOMPTLHEAD)chMComRxBuf;
							nRxSize += sizeof(MCOMPTLHEAD) + pCCRxHead->nOpCodeOffset;
							pCCRxBody = (PMCOMCCRXBODYTYPE)&chMComRxBuf[nRxSize];
							
							if(pCCRxBody->Head.chHexaID[0] == chToAddress)
							{
								if(pCCRxBody->chOpCode == wSpCode)
								{
									nRxSize = 0;
									wDataPack = (USHORT*)pCCRxBody->chDataPack; wRxSize=0;
									wRxLen = wDataPack[wRxSize++];
									wRxRecode = wDataPack[wRxSize++];
									wRxMaxRecode = wDataPack[wRxSize++];
									
									wForm = wResult = 0;
									for(i=0;i<FIRM_CCSCM2_NUM;i++)
									{
										wTemp = wDataPack[wRxSize++];
										wResult |= (wTemp==0x0001) ? (1<<i) : 0;
										wForm |= (1<<i);
									}

									if((wForm == wResult) || (bPartDownMode && (wResult==wEraseForm)))
									{
										TRACE("=>CarHo[%d]: Step 2 (download) : %d/%d... !!!\n",nCarHo,wTxRecode,wTxMaxRecode);
										gp_FirmwareDownloadRecode(wTxRecode,wTxMaxRecode,"LOC");
										bSuccess = TRUE;
									}
									else 
									{
										TRACE("=>CarHo[%d]: Step 2 (download): record download failure !!!...%04X %04X %04X \n",nCarHo,
											MK_WORD(pCCRxBody->chDataPack[6],pCCRxBody->chDataPack[7]),MK_WORD(pCCRxBody->chDataPack[8],pCCRxBody->chDataPack[9]),MK_WORD(pCCRxBody->chDataPack[10],pCCRxBody->chDataPack[11]));
									}
								}
								else TRACE("=>CarHo[%d]: Step 2 (download): Invalide OpCode[%d] !!!...\n",nCarHo,pCCRxBody->chOpCode);
								
							}
							else TRACE("=>CarHo[%d]: Step 2 (download): Invalide CC Address[%02X]... !!!\n",nCarHo,pCCRxBody->Head.chHexaID[0]);
						}
						else TRACE("=>CarHo[%d]: Step 2 (download): Rx Crc Error[%d]... !!!\n",nCarHo,nErrorNo+1);
					}
					else TRACE("=>CarHo[%d]: Step 2 (download): RxLoading Error[%d]... !!!\n",nCarHo,nErrorNo+1);
				}

				if(!bSuccess)
				{
					if(nErrorNo < DOWN_MAX_ERROR)
					{
						TRACE("=>CarHo[%d]: Step 2 (download) : %d/%d retry[%d]... !!!\n",nCarHo,wTxRecode,wTxMaxRecode,nErrorNo);
						continue;
					}
					else break;
				}
				else break;
			}

			if(!bSuccess) 
			{
				TRACE("=>CarHo[%d]: Step 2 (download) : Break !!!\n",nCarHo);
				break;
			}
		}
	}

	/* 3) STEP-3 : FLASH WRITE (CRC) */
	if(bSuccess)
	{
		wSpCode = 202;
		gp_FirmwareBeginWait(2000,"Wait for  Writing...");
		for(nErrorNo = 0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
		{
			bSuccess = FALSE;
			nTxSize = nTxHeadSize;
			sm_McRxReadyClearCC(nCarHo);
			bRxReady = FALSE;
			chMComTxBuf[nTxSize++] = (BYTE)wSpCode;
			chMComTxBuf[nTxSize++] = WORD_H(6);
			chMComTxBuf[nTxSize++] = WORD_L(6);
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = WORD_H(wCrc);
			chMComTxBuf[nTxSize++] = WORD_L(wCrc);
			sm_McTxDataLoad(chMComTxBuf);
			sm_McTxSend(m_chDownDirect,0);

			for(i=0;i<400;i++)
			{
				taskDelay(10);
				bRxReady = sm_bMcRxReadyCC(nCarHo);
				if(bRxReady) break;
			}

			if(bRxReady)
			{
				memset(chMComRxBuf,0,sizeof(chMComRxBuf));
				if(sm_McRxDataLoadCC(nCarHo,(USHORT*)chMComRxBuf))
				{
					if(sm_McRxDataCrcCheck(chMComRxBuf))
					{
						nRxSize = 0;
						pCCRxHead = (PMCOMPTLHEAD)chMComRxBuf;
						nRxSize += sizeof(MCOMPTLHEAD) + pCCRxHead->nOpCodeOffset;
						pCCRxBody = (PMCOMCCRXBODYTYPE)&chMComRxBuf[nRxSize];
						
						if(pCCRxBody->Head.chHexaID[0] == chToAddress)
						{
							if(pCCRxBody->chOpCode == wSpCode)
							{
								nRxSize = 0;
								wForm = wResult = 0;
								wDataPack = (USHORT*)pCCRxBody->chDataPack; wRxSize = 0;
								wRxLen = wDataPack[wRxSize++];
								wDataPack[wRxSize++]; /* SPARE */
								wDataPack[wRxSize++]; /* SPARE */
								for(i=0;i<FIRM_CCSCM2_NUM;i++)
								{
									wTemp = wDataPack[wRxSize++];
									wResult |= (wTemp==0x0001) ? (1<<i) : 0;
									wForm |= (1<<i);
								}
								if((wForm == wResult)  || (bPartDownMode && (wResult==wEraseForm)))
								{
									TRACE("=>CarHo[%d]: Step 3 (write) : complete... \n",nCarHo);
									bSuccess = TRUE;
								}
								else 
								{
									TRACE("=>CarHo[%d]: Step 3 (write) : failure(crc)... !!!\n...%04X %04X %04X \n",nCarHo,
										MK_WORD(pCCRxBody->chDataPack[6],pCCRxBody->chDataPack[7]),MK_WORD(pCCRxBody->chDataPack[8],pCCRxBody->chDataPack[9]),MK_WORD(pCCRxBody->chDataPack[10],pCCRxBody->chDataPack[11]));
								}
							}
							else TRACE("=>CarHo[%d]: Step 3 (write): Invalide OpCode[%d] !!!...\n",nCarHo,pCCRxBody->chOpCode);
							
						}
						else TRACE("=>CarHo[%d]: Step 3 (write): Invalide CC Address[%02X]... !!!\n",nCarHo,pCCRxBody->Head.chHexaID[0]);
					}
					else TRACE("=>CarHo[%d]: Step 3 (write): Rx Crc Error[%d]... !!!\n",nCarHo,nErrorNo+1);
				}
				else TRACE("=>CarHo[%d]: Step 3 (write): RxLoading Error[%d]... !!!\n",nCarHo,nErrorNo+1);
			}

			if(!bSuccess)
			{
				TRACE("=>CarHo[%d]: Step 3 (write) : retry[%d]... !!!\n",nCarHo,nErrorNo+1);
			}
			else break;
		}
		gp_FirmwareEndWait();
	}

	/* 4) STEP-4 : FLASH Verify */

	if(bSuccess)
	{
		wSpCode = 203;
		for(nErrorNo = 0;nErrorNo<DOWN_MAX_ERROR;nErrorNo++)
		{
			bSuccess = FALSE;
			nTxSize = nTxHeadSize;
			sm_McRxReadyClearCC(nCarHo);
			bRxReady = FALSE;
			chMComTxBuf[nTxSize++] = (BYTE)wSpCode;
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = 0;
			chMComTxBuf[nTxSize++] = 0;
			sm_McTxDataLoad(chMComTxBuf);
			sm_McTxSend(m_chDownDirect,0);

			for(i=0;i<100;i++)
			{
				taskDelay(10);
				bRxReady = sm_bMcRxReadyCC(nCarHo);
				if(bRxReady) break;
			}

			if(bRxReady)
			{
				memset(chMComRxBuf,0,sizeof(chMComRxBuf));
				if(sm_McRxDataLoadCC(nCarHo,(USHORT*)chMComRxBuf))
				{
					if(sm_McRxDataCrcCheck(chMComRxBuf))
					{
						nRxSize = 0;
						pCCRxHead = (PMCOMPTLHEAD)chMComRxBuf;
						nRxSize += sizeof(MCOMPTLHEAD) + pCCRxHead->nOpCodeOffset;
						pCCRxBody = (PMCOMCCRXBODYTYPE)&chMComRxBuf[nRxSize];
						
						if(pCCRxBody->Head.chHexaID[0] == chToAddress)
						{
							if(pCCRxBody->chOpCode == wSpCode)
							{
								nRxSize = 0;
								wForm = wResult = 0;
								wDataPack = (USHORT*)pCCRxBody->chDataPack; wRxSize = 0;
								wRxLen = wDataPack[wRxSize++];
								wDataPack[wRxSize++]; /* SPARE */
								wDataPack[wRxSize++]; /* SPARE */
								for(i=0;i<FIRM_CCSCM2_NUM;i++)
								{
									wTemp = wDataPack[wRxSize++];
									wResult |= (wTemp==0x0001) ? (1<<i) : 0;
									wForm |= (1<<i);
								}
								wRet = wResult;

								bSuccess = ((wResult == wForm)  || (bPartDownMode && (wResult==wEraseForm))) ? TRUE : FALSE;
								TRACE("=>CarHo[%d]: Step 4 (verify) : => %s... !!!\n",nCarHo,bSuccess ? "OK":"NG");
								if(!bSuccess)
								{
									TRACE("=>CarHo[%d]: Step 4 (verify) : failure... !!!\n...%04X %04X %04X \n",nCarHo,
										MK_WORD(pCCRxBody->chDataPack[6],pCCRxBody->chDataPack[7]),MK_WORD(pCCRxBody->chDataPack[8],pCCRxBody->chDataPack[9]),MK_WORD(pCCRxBody->chDataPack[10],pCCRxBody->chDataPack[11]));
								}
							}
							else TRACE("=>CarHo[%d]: Step 4 (verify): Invalide OpCode[%d] !!!...\n",nCarHo,pCCRxBody->chOpCode);
						}
						else TRACE("=>CarHo[%d]: Step 4 (verify): Invalide CC Address[%02X]... !!!\n",nCarHo,pCCRxBody->Head.chHexaID[0]);
					}
					else TRACE("=>CarHo[%d]: Step 4 (verify): Rx Crc Error[%d]... !!!\n",nCarHo,nErrorNo+1);
				}
				else TRACE("=>CarHo[%d]: Step 4 (verify): RxLoading Error[%d]... !!!\n",nCarHo,nErrorNo+1);
			}

			if(!bSuccess)
			{
				TRACE("=>CarHo[%d]: Step 4 (verify) : retry[%d]... !!!\n",nCarHo,nErrorNo+1);
			}
			else break;
		}
	}

	TRACE("=>CarHo[%d]: Firmware download end...[%d]\n",nCarHo,bSuccess);

	return wRet;
}


USHORT sm_DownloadByMem_Scm_CC(BYTE chHexID,LPBYTE pDataBuf,UINT nDataSize)
{
	USHORT wRet;

	wRet = sm_FirmwareDownload_CcMem(chHexID,pDataBuf,nDataSize);
	return wRet;
}


#endif /* _SCPLIB_C_ */