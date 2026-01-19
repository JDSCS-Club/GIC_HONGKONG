
#ifndef _MMTYPE_C_
#define _MMTYPE_C_

#include <stdio.h>
#include <ioLib.h>
#include <semLib.h>
#include <stdlib.h>
#include <taskLib.h>
#include <sysLib.h>
#include <wdLib.h>
#include <stdarg.h>
#include <string.h>

#include "mmtype.h"

/*********************************************************************
 Useable Utility Functions
*********************************************************************/
static UINT m_nSSize=256;
BYTE *m_pAdr;

#define MAX_ESTIMATIED_STACK 100
UINT m_nEstimatTop=0;
ULONG m_ulEstimatedTick[MAX_ESTIMATIED_STACK];

UINT m_nNopMiliCnt=2000;
UINT m_nNopNanoCnt=2;
#define CONSOL_LINE	16
#define CONSOL_TEXT	500
static UCHAR m_szConsol[CONSOL_LINE][CONSOL_TEXT];
static UINT	m_nConLineTop=0;
static BOOL	m_nConLineUpdated=FALSE;
static int m_n232ID;

void DebugTraceUpdated()
{
	m_nConLineUpdated = TRUE;
}
BOOL mx_IsDebugTraceUpdated()
{
	return m_nConLineUpdated;
}

void mx_DebugTraceClear()
{
	memset(m_szConsol,0,sizeof(m_szConsol));
	m_nConLineTop=0;
	DebugTraceUpdated();
}

void mx_DebugTraceApplied()
{
	m_nConLineUpdated = FALSE;
}

UCHAR *mx_GetDebugTrace(UINT nIndex)
{
	UINT nFront = (m_nConLineTop+1)%CONSOL_LINE;
	if(nIndex<CONSOL_LINE)
	{
		nFront = (nFront+nIndex)%CONSOL_LINE;
		return m_szConsol[nFront];
	}
	else return NULL;
}

void mx_DebugTrace(char szFormat[],...)
{
	va_list pArgs;
	UINT nSize;
    va_start(pArgs, szFormat);

	m_nConLineTop = (m_nConLineTop+1)%CONSOL_LINE;
	vsprintf(m_szConsol[m_nConLineTop],szFormat,pArgs); /* <- GP */
	nSize = strlen(m_szConsol[m_nConLineTop]);
	if(nSize>CONSOL_TEXT) 
	{
		printf("VConsol Size Error => %d : %s \n",nSize,m_szConsol[m_nConLineTop]);
	}
	nSize = min(CONSOL_TEXT,nSize);
	m_szConsol[m_nConLineTop][nSize-1] = NULL;

	printf("%s\n",m_szConsol[m_nConLineTop]);
	/*vprintf(szFormat,pArgs);*/ /* <- RS232 : vprintf는 pArgs를 변화 시킴*/

	DebugTraceUpdated();
	va_end(pArgs);
}

void mx_NullTrace(char szFormat[],...)
{
}

void mx_ErrorTrace(char szFormat[],...)
{
	printf("%s Error: ",taskName(taskIdSelf()));
}

void mx_BeginEstimatedTime()
{
	if(m_nEstimatTop < MAX_ESTIMATIED_STACK)
	{
		m_ulEstimatedTick[m_nEstimatTop] = tickGet();
		m_nEstimatTop++;
	}
}

void mx_EndEstimatedTime(char szName[])
{
	char szNameTag[100];
	int nClkRate = sysClkRateGet();
	m_nEstimatTop--;
	if(m_nEstimatTop <MAX_ESTIMATIED_STACK)
	{
		m_ulEstimatedTick[m_nEstimatTop] = tickGet() - m_ulEstimatedTick[m_nEstimatTop];
		m_ulEstimatedTick[m_nEstimatTop] = m_ulEstimatedTick[m_nEstimatTop]/nClkRate;
		memset(szNameTag,0,sizeof(szNameTag));
		if(szName) strcpy(szNameTag,szName);

		TRACE("=> %s Eestimatied[%d] Time: %02d:%02d sec (%d sec)..\n",szNameTag,m_nEstimatTop,
			m_ulEstimatedTick[m_nEstimatTop]/60,m_ulEstimatedTick[m_nEstimatTop]%60,m_ulEstimatedTick[m_nEstimatTop]);
	}
}

/************** 화면용 콘솔 출력 후 RS-232 2th 포트 출력 *****************/

void mx_RS232_Init()
{
	m_n232ID = open("/tyCo/1",2,0);
	ioctl(m_n232ID,FIOFLUSH,0);
	ioctl(m_n232ID,0x100c,-1);
	if(ERROR == ioctl(m_n232ID,FIOBAUDRATE,9600)) TRACE("RS-232c Port Error");
	
}
void mx_SendTo_RS232(LPBYTE chBuff,int nSize)
{
	if(!m_n232ID) mx_RS232_Init();

	if(m_n232ID) write(m_n232ID,chBuff,nSize);
}

void mx_Tick2SysTime(PSYSTIMETYPE pSysTime,UINT nFromTick,UINT nToTick)
{
	int nClkRate = sysClkRateGet();
	UINT nEstimatedTick,nMiliSecond;
	
	if(nToTick >= nFromTick)
	{
		nEstimatedTick = nToTick - nFromTick;
		if(pSysTime)
		{
			memset(pSysTime,0,sizeof(SYSTIMETYPE));

			nMiliSecond = nEstimatedTick%nClkRate;
			nEstimatedTick /= nClkRate;

			pSysTime->second = nEstimatedTick%60;
			nEstimatedTick /= 60;

			pSysTime->minute = nEstimatedTick%60;
			nEstimatedTick /= 60;

			pSysTime->hour = nEstimatedTick%24;
			nEstimatedTick /= 24;

			pSysTime->day = nEstimatedTick;
		}
	}
}

void mx_DebugPrint(LPBYTE pBuffer,int nSize,char szName[])
{
	int i;
	printf("=> %s [%d]: ",szName ? szName : "DUMP" ,nSize);
	for(i=0;i<nSize;i++) printf("%02X ",pBuffer[i]);
	printf("\n");
}

/****************************************************************/
/* 비트 번호를 구한다.                                          */
/****************************************************************/
UINT mx_GetBitNo(UINT nBitField)
{
	int i;
	for(i=0;i<32;i++)
	{
		if(nBitField&(1<<i)) return i;
	}
	return 0;
}

/****************************************************************/
/* CRC16                                                        */
/****************************************************************/
USHORT mx_GetCRC16(int nFrom,int nTo,UCHAR *data)
{
	int i = 0;
	USHORT nCrc = 0;

	for(i=nFrom;i<nTo;i++)
		nCrc = (nCrc >> 8) ^ m_wCrcTbl[(nCrc^data[i]) & 0x00ff];

	return ((~nCrc) & 0xffff);
}

USHORT mx_GetCRC16IBM(int nFrom,int nTo,UCHAR *data)
{
	int i = 0;
	USHORT nCrc = 0;

	for(i=nFrom;i<nTo;i++)
		nCrc = (nCrc >> 8) ^ m_wCrcTbl_IBM[(nCrc^data[i]) & 0x00ff];

	nCrc = RVWORD(nCrc);

	return ((nCrc) & 0xffff);
}

/* CALCULATE OF CRC-CCITT */
USHORT mx_GetCCITT(UCHAR *pBuf,int nLen)
{
	int i;
	USHORT nCrc = 0x0000;
	for(i=0; i<nLen; i++) nCrc=DWORD_L((nCrc<<8)^m_wCcittTbl[WORD_L((nCrc>>8)^pBuf[i])]);
	return DWORD_L(~nCrc);
}

/****************************************************************/
/* BCC                                                          */
/****************************************************************/
USHORT mx_GetBCCValue(int nFrom,int nTo,UCHAR *pData)
{
	int i;
	BYTE chBcc[2] = {0,0};

	for(i=0;i<(nTo-nFrom);i++)
		chBcc[i%2] ^= pData[nFrom+i];

	return MK_WORD(chBcc[0],chBcc[1]);
}

/****************************************************************/
/* 체크섬                                                       */
/****************************************************************/
BYTE mx_GetCs(int nFrom, int nTo, UCHAR *Data)
{
	int i;
	BYTE nCs=0;

	for(i=nFrom;i<nTo;i++) nCs += Data[i];
	return 1+~nCs;
}


/****************************************************************/
/* HEXASTRING을 메모리에 복사합니다.                            */
/* 입력: szHexString = EX) "AA BB CC FF 01 "                    */
/* 출력: chMem                                                  */
/* 반환: 변환된 Hexa byte size                                  */
/****************************************************************/
int mx_HexaStrCopy(LPBYTE chMem,char szHexString[])
{
	int i,nTop=0,even,nSrcLen = strlen(szHexString);
	if(!chMem) return 0;

	chMem[0]=0;
	for(i=0,even=1;i<nSrcLen;i++)
	{
		if(szHexString[i] >= '0' && szHexString[i] <= '9')
		{
			if(chMem) chMem[nTop] |= (szHexString[i] - '0') << (even<<2);
			even = (even+1)%2;
			if(even) {++nTop; if(chMem) chMem[nTop] = 0;}
		}
		else if(szHexString[i] >= 'A' && szHexString[i] <= 'F')
		{
			if(chMem) chMem[nTop] |= (szHexString[i] + 10 - 'A') << (even<<2);
			even = (even+1)%2;
			if(even) {++nTop; if(chMem) chMem[nTop] = 0;}
		}
		else if(szHexString[i] >= 'a' && szHexString[i] <= 'f')
		{
			if(chMem) chMem[nTop] |= (szHexString[i] + 10 - 'a') << (even<<2);
			even = (even+1)%2;
			if(even) {++nTop; if(chMem) chMem[nTop] = 0;}
		}
	}

	
	
	return nTop;
}

/* 데이터 프레임(D1...Dn)중 02 뒤의 Additional Zero 체크한다.*/
/* - Additional Zero가 붙지 않았을 경우엔 02 뒤에 00을 추가한다. */
BYTE mx_CheckAditionalZero(LPBYTE pTxCtx, int len)
{
	int i, exlen=0;
	BYTE buf[256];

	memset(buf, 0, sizeof(buf));
	MemCpy(buf, pTxCtx, len);

	for(i=0; i<len; i++)
	{
		pTxCtx[exlen++] = buf[i];
		if(buf[i] == 0x02) pTxCtx[exlen++] = 0x00;
	}
	return exlen;	/* Additional Zero가 포함된 Len */
}

/************************************************************/
/* Escape Charactor Generation								*/
/* TX 용  - 전송전 변환 한다.								*/
/************************************************************/
int mx_TxEscCharTrans(LPBYTE pTxData,int nSize)
{
	int i,nTransSize=0,nToSize=0;
	UCHAR chDataPack[256];
	memset(chDataPack,0,256);

	for(i=0;i<nSize;i++)
	{
		if((pTxData[i]&0xF0) == 0xF0)
		{
			chDataPack[nToSize++] = 0xF0;
			chDataPack[nToSize++] = BYTE_L(pTxData[i]);
		}
		else chDataPack[nToSize++] = pTxData[i];
	}

	if(nToSize != nSize) memcpy(pTxData,chDataPack,nToSize);

	return nToSize;
}

/************************************************************/
/* Escape Charactor Generation								*/
/* RX 용													*/
/************************************************************/
int mx_RxEscCharTrans(LPBYTE pTransData,LPBYTE pRxData,int nSize)
{
	int i,nTransSize=0,nToSize=0;
	UCHAR chDataPack[256];
	memset(chDataPack,0,256);

	for(i=0;i<nSize;i++)
	{
		if(pRxData[i] == 0xF0 && !BYTE_H(pRxData[i+1]))
		{
			chDataPack[nToSize++] = MK_BYTE(BYTE_H(pRxData[i]),BYTE_L(pRxData[i+1]));
			i++;
		}
		else chDataPack[nToSize++] = pRxData[i];
	}

	memcpy(pTransData,chDataPack,nToSize);

	return nToSize;
}

/* BOOT PARAMETER를 체크 후 수정한다. */
/* PPC 860 기준으로 되어있다.         */
void mx_SetBootParam()
{
	sysNvRamSet(m_chBootParam,256,0);
}
BOOL mx_CheckModifyBootParm()
{
	UCHAR chBuf[256];
	sysNvRamGet(chBuf,256,0);
	if(chBuf[0] != m_chBootParam[0] || chBuf[1] != m_chBootParam[1] || chBuf[2] != m_chBootParam[2]) 
	{
		TRACE("***** Incorrect Boot Parameter **********\n");
		bootParamsShow(chBuf);
		TRACE("***** Boot Parameter force modified *****\n");
		bootParamsShow(m_chBootParam);
		TRACE("*****************************************\n");
		mx_SetBootParam();
		return FALSE;
	}
	return TRUE;
}

void mx_showBootParam()
{
	UCHAR chBuf[256];
	sysNvRamGet(chBuf,256,0);
	bootParamsShow(chBuf);
}

/****************************************************************/
/* BOOT PARAM 의 IP 주소를 아래 형식으로 바꾼다.				*/
/* NAME: WTGIS_차량번호(WTGIS_5016)로 바꾼다.					*/
/* IP: 192.9. 100 + 노선번호 . TC(0,100)  + 편성번호			*/
/* 차량번호 예)													*/
/*    5016 : 192.9.105. 16 : FFFF0000                           */
/*    5116 : 192.9.105.116 : FFFF0000							*/
/****************************************************************/
void mx_MakeTgisName(UCHAR *pTgisName)
{
	sprintf(pTgisName,"WTGIS_SA0_%04X",op_GetThisCarNumber());
}

void mx_MakeTgisIP(UCHAR *pTgisIP)
{
	USHORT wCarNumber = op_GetThisCarNumber();
	int nLineNo = (wCarNumber/1000) %10;			
	int nHeadNo = (wCarNumber/100)%10;
	int nFormNo = wCarNumber%100;

	sprintf(pTgisIP,"192.9.%d.%d:ffff0000",nLineNo,nFormNo + 100*(nHeadNo?1:0));
}

void mx_MakeApIP(UCHAR *pTgisIP)
{
	USHORT wCarNumber = op_GetThisCarNumber();
	int nLineNo = (wCarNumber/1000) %10;			
	int nHeadNo = (wCarNumber/100)%10;
	int nFormNo = wCarNumber%100;

	sprintf(pTgisIP,"192.9.%d.%d",nLineNo+100,nFormNo + 100*(nHeadNo?1:0));
}

/* 배열 6개의 맥어드레스를 만든다. */
void mx_MakeTgisMacAddress(UCHAR *pTgisMac)
{
	USHORT wCarNumber = op_GetThisCarNumber();
	int nLineNo = (wCarNumber/1000) %10;			
	int nHeadNo = (wCarNumber/100)%10;
	int nFormNo = wCarNumber%100;

	pTgisMac[0] = 0x00;
	pTgisMac[1] = 0x20;
	pTgisMac[2] = 0x74;
	pTgisMac[3] = 0x11;
	pTgisMac[4] = (UCHAR)nLineNo;
	pTgisMac[5] = (UCHAR)(nFormNo + 100*(nHeadNo?1:0));
}


BOOL mx_CheckTgisIP()
{
	UCHAR chBuf[256],chMacAddr[10];
	BOOT_PARAMS stBootPram;
	UCHAR szToEad[BOOT_TARGET_ADDR_LEN];

	/************* MAC CHECK ***************/
	memset(chBuf,0,sizeof(chBuf));
	mx_MakeTgisMacAddress(chBuf);
	sysGetWoojinMacAddr(chMacAddr);
	if(memcmp(chMacAddr+1,chBuf,6)) 
	{
		sysSetWoojinMacAddr(chBuf[0],chBuf[1],chBuf[2],chBuf[3],chBuf[4],chBuf[5]);
		sysMacAddrShow();
	}

	/************* IP CHECK ***************/
	memset(chBuf,0,sizeof(chBuf));
	sysNvRamGet(chBuf,256,0);
	bootStringToStruct(chBuf,&stBootPram);
	mx_MakeTgisIP(szToEad);
	if(strcmp(szToEad,stBootPram.ead))
	{
		memcpy(chBuf,m_chBootParam,sizeof(chBuf));
		bootStringToStruct(chBuf,&stBootPram);
		strcpy(stBootPram.ead,szToEad);
		mx_MakeTgisName(stBootPram.targetName);
		bootStructToString(chBuf,&stBootPram);
		sysNvRamSet(chBuf,256,0);
		bootParamsShow(chBuf);
	}

	if(chBuf[0] != m_chBootParam[0] || chBuf[1] != m_chBootParam[1] || chBuf[2] != m_chBootParam[2]) 
	{
		TRACE("***** Incorrect Boot Parameter **********\n");
		bootParamsShow(chBuf);
		TRACE("***** Boot Parameter force modified *****\n");
		bootParamsShow(m_chBootParam);
		TRACE("*****************************************\n");
		mx_SetBootParam();
		return FALSE;
	}
	return TRUE;
}



/********************************************************************
 ------------------------------------------------------------------
 디버그 유틸리티
 ------------------------------------------------------------------
********************************************************************/
/*********************************************************************
 - MILI , NANO COUNT SEARCH 
*********************************************************************/
UINT m_nSecCount;
BOOL m_bMiliEnd;
void mx_MSeraching()
{
	m_bMiliEnd = TRUE;
	for(m_nSecCount=0;m_bMiliEnd;m_nSecCount++);
	TRACE("MiliSec Counter = %d\n",m_nSecCount/1000);
}

void mx_FindNopMiliSec()
{
	UINT nMiliID;
	int nOldPriority;
	int nTaskID = taskIdSelf();

	taskPriorityGet(nTaskID,&nOldPriority);
	taskPrioritySet(nTaskID,100-1);
	taskSpawn("MiliTest",100,0,10000,(FUNCPTR)mx_MSeraching,0,0,0,0,0,0,0,0,0,0);
	taskDelay(1000);
	m_bMiliEnd = FALSE;
	m_nNopMiliCnt = m_nSecCount/1000;
	m_nNopNanoCnt = m_nSecCount/1000000;
	taskPrioritySet(nTaskID,nOldPriority);
}

void xdx(UINT nAddr,UINT nShowSize)
{
	int nCnt=0;
	BYTE *pTAdr;

	if(nShowSize) m_nSSize = nShowSize;
	if(nAddr) m_pAdr=(BYTE*)nAddr;
	pTAdr = m_pAdr+m_nSSize;
	
	while(m_pAdr<pTAdr)
	{
		if(!(nCnt%16))
		{
			if(nCnt) printf("\n");
			printf("%04x: ",(UINT)m_pAdr);
		}
		printf("%02x ",*(m_pAdr++));
		nCnt++;
	}
	printf("\n");
}

/****************************************************************/
/* - PC에서 프로그램을 다운로드 할 때 사용한다.                 */
/* ex) sp mx_RomAutoProgram("c:/z/wtcms_a0.bin")                    */
/****************************************************************/
void mx_RomAutoProgram(char filepath[])
{
	if(filepath)
	{
		gp_ScreenChangeAp(1720);
		gp_FirmWareButtonState(TRUE);
		gp_FirmwareDownload(filepath,FALSE);
		gp_FirmWareButtonState(FALSE);
	}
	else
	{
		printf("USE TO: mx_RomAutoProgram \"c:/z/wtcms_a0.bin\" ");
	}
}

/********************************************************************
 - MPU 플레쉬 메모리에 프로그램 업로드 
 - TCMS HOST COMPUTER의 VxWorks로 만들어진 파일을 MPU Flash Memory에 Write 한다.
 - filepath: "tcms:c:/z/TgisDev.bin" 과 같이 쓴다.
   mx_FlashSet("tcms:c:/z/TgisDev.bin")
********************************************************************/
void mx_FlashSet(char filepath[])
{
	RomAutoProgram(filepath);
}


 /**********************************************************************
  mx_FlashSet("tcms:c:/z/TgisDev.bin")
  mx_FirmWareDownload("tcms:c:/z/Scm2_a0.bin")
 **************************************************************************/

void mm_memcpy(void *pDest,void *pSrc,int nSize)
{
	if(nSize > 0x10000) printf(" mem huge size %p/%p : %d..\n",pDest,pSrc,nSize);
	memcpy(pDest,pSrc,nSize);
}


 
#endif /* _MMTYPE_C_ */