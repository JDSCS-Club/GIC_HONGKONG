#ifndef _WIRELESS_C_
#define _WIRELESS_C_

#include <vxWorks.h>

#include "Wireless.h"
#include "udpLib.h"
#include "ds1647.h"
#include "Gdms.h"
#include "Main.h"



#define SEND_SIZE	1000
#define MAX_CARD_BUF	0x600000

UCHAR m_chRxBuffer[2000];
UCHAR m_chTxBuffer[2000];
LOCAL int m_nWlRxTaskID;
LOCAL int m_nDistGetTaskID;
UCHAR m_bDistGetSuc;
USHORT m_wLastKind;

UCHAR *m_pTxDataMem;
int	m_nTxDataMemSize;
int	m_nTxDataNumber;
USHORT m_wLastField;	/* 하위 워드: FieldNo , 상위 워드: Data_Type - (0) Drvie ,(1) Spr */

LOCAL UINT m_bWLRxRcvTick;

BOOL wl_IsConnectStarted()
{
	return m_bWLRxRcvTick ? TRUE : FALSE;
}


BOOL wl_IsConnected()
{
	UINT nTick = tickGet();

	if(!m_bWLRxRcvTick) return FALSE;
	return ((nTick-m_bWLRxRcvTick) < 5000) ? TRUE : FALSE;
}

/***********************************************************/
/* 운행기록에 해당하는 번호를 바꾸는 기능을 하는 함수      */
/* TOTD 의 블럭번호를 TGIS 기록번호로 바꾼다.              */
/* TOTD(1) : 최신기록						               */
/***********************************************************/
int wl_TotdBlkNo2DrvBlkNo(USHORT wFieldNo)
{
	USHORT wTgisBlkNo;
	

	if(wFieldNo == 0) 
	{
		if(op_IsHcrSelected()) wTgisBlkNo = m_pDirectMem->nRcDrvHeadFront;
		else return -1;
	}
	else
	{
		if(op_IsHcrSelected()) wTgisBlkNo = (m_pDirectMem->nRcDrvHeadFront+REC_DRV_HEADSIZE-1)%REC_DRV_HEADSIZE;
		else wTgisBlkNo = m_pDirectMem->nRcDrvHeadFront;
		
		wTgisBlkNo = (wTgisBlkNo + REC_DRV_HEADSIZE - m_pDirectMem->nRcDrvHeadRear)%REC_DRV_HEADSIZE;
		wTgisBlkNo = (REC_DRV_HEADSIZE + wTgisBlkNo - (wFieldNo-1))%REC_DRV_HEADSIZE;
	}
	return wTgisBlkNo;
}

/***********************************************************/
/* 종류: 0x01 IDOL                                         */
/***********************************************************/
USHORT wl_ReqIdol()
{
	USHORT wSize = 0;
	USHORT wSpeed = op_GetSpeed();
	USHORT wCarNumber;
	UCHAR chTemp;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x01; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	m_chTxBuffer[wSize++] = WORD_L(wSpeed) ; /* SPEED_L */
	m_chTxBuffer[wSize++] = WORD_H(wSpeed) ; /* SPEED_H */

	chTemp = 0;
	chTemp |= (op_IsHcrOn() ? BIT00 : 0);
	chTemp |= (op_IsTcrOn() ? BIT01 : 0);

	m_chTxBuffer[wSize++] =  chTemp;
	m_chTxBuffer[wSize++] = 0x00;		/* 열차번호 문자 */
	m_chTxBuffer[wSize++] = 0x00;
	m_chTxBuffer[wSize++] = 0x00; /* 열차번호 하위 */
	m_chTxBuffer[wSize++] = 0x00; /* 열차번호 상위 */
	m_chTxBuffer[wSize++] = 0x00 ; /* 열차상태기록 (0 ~ 10) */
	m_chTxBuffer[wSize++] = gw_GetTrsMaxBlock() ; /* Status Trace 기록 (0 ~ 2) (Memory 기록)*/

	chTemp = 0;
	chTemp |= 0;
	chTemp |= 0;
	chTemp |= 0;
	chTemp |= 0;
	chTemp |= m_pDirectMem->nPieTraceBodyPos ? BIT04 : 0;
	chTemp |= m_pDirectMem->nSivTraceBodyPos ? BIT05 : 0;
	chTemp |= m_pDirectMem->nEcuTraceBodyPos ? BIT06 : 0;
	chTemp |= 0;

	m_chTxBuffer[wSize++] = chTemp; /* 시험,TRACE 의 기록 유무 */

	chTemp = 0;
	chTemp |= 0;
	chTemp |= (m_pDirectMem->nHisLoadBodyPos || m_pDirectMem->nHisDistBodyPos) ? BIT01 : 0;
	chTemp |= 0;
	chTemp |= 0;
	chTemp |= 0;

	m_chTxBuffer[wSize++] = chTemp; /* 고속기록,적산기록 의 기록 유무 */

	m_chTxBuffer[wSize++] = 0x00; /* C/I TRACE 호차별 기록 있음 정보 (1~ 8호차) */
	m_chTxBuffer[wSize++] = 0x00; /* C/I TRACE 호차별 기록 있음 정보 (9~16호차) */
	m_chTxBuffer[wSize++] = 0x00; /* SIV TRACE 호차별 기록 있음 정보 (1~ 8호차) */
	m_chTxBuffer[wSize++] = 0x00; /* SIV TRACE 호차별 기록 있음 정보 (9~16호차) */
	m_chTxBuffer[wSize++] = 0x00; /* ECU TRACE 호차별 기록 있음 정보 (1~ 8호차) */
	m_chTxBuffer[wSize++] = 0x00; /* ECU TRACE 호차별 기록 있음 정보 (9~16호차) */

	wCarNumber = op_GetCarNumber(m_TcThis.nCarHo);
	wCarNumber = WBIN2BCD(wCarNumber);
	m_chTxBuffer[wSize++] = WORD_L(wCarNumber); /* TC1 or TC2 의 차량번호 HIGH */
	m_chTxBuffer[wSize++] = WORD_H(wCarNumber); /* TC1 or TC2 의 차량번호 LOW */

	m_chTxBuffer[wSize++] = 0x00; 
	m_chTxBuffer[wSize++] = 0x00; 

	wCarNumber = op_GetCarNumber(m_TcOppe.nCarHo);
	wCarNumber = WBIN2BCD(wCarNumber);
	m_chTxBuffer[wSize++] = WORD_L(wCarNumber); /* 반대편성의 차량번호 */
	m_chTxBuffer[wSize++] = WORD_H(wCarNumber); /* 반대편성의 차량번호 */ 

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */
	
	return wSize;
}

/***********************************************************/
/* 종류: 0x02 편성번호요구                                 */
/***********************************************************/
USHORT wl_ReqFormation()
{
	int nCarHo;
	USHORT wSize = 0;
	USHORT wSpeed = op_GetSpeed();

	USHORT wCarNum;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x02; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	m_chTxBuffer[wSize++] = m_nTrainSize; /* 차량수 */

	for(nCarHo=0;nCarHo<10;nCarHo++)  /* 차량번호 */
	{
		if(nCarHo<m_nTrainSize)
		{
			wCarNum = op_GetCarNumber(nCarHo);
			m_chTxBuffer[wSize++] = WORD_L(wCarNum);
			m_chTxBuffer[wSize++] = WORD_H(wCarNum);
		}
		else 
		{
			m_chTxBuffer[wSize++] = 0;
			m_chTxBuffer[wSize++] = 0;
		}
	}
	for(nCarHo=0;nCarHo<10;nCarHo++) /* 차종 */
	{
		if(nCarHo<m_nTrainSize)
		{
			m_chTxBuffer[wSize++] = (nCarHo<m_nTrainSize) ? ISTRTYPE(m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0]) : 0;
		}
		else 
		{
			m_chTxBuffer[wSize++] = 0;
		}
	}
	for(nCarHo=0;nCarHo<10;nCarHo++)  /* 노선번호 */
	{
		if(nCarHo<m_nTrainSize)
		{
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0;
		}
		else 
		{
			m_chTxBuffer[wSize++] = 0;
			m_chTxBuffer[wSize++] = 0;
		}
	}

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */
	return wSize;
}

/***********************************************************/
/* 종류: 0x04 Memory Clear 요구                            */
/***********************************************************/
USHORT wl_MemoryClear(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int i,j;
	UINT nSize;
	UCHAR chClear;
	USHORT wApplied = 0;


	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x04; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	/* DATAS */
	if(wFieldNo & BIT04) 
	{
		m_pDirectMem->bPieTraceOverwrite = FALSE;
		m_pDirectMem->nPieTraceBodyPos = 0;

		wApplied |= BIT04;
	}
	if(wFieldNo & BIT05) 
	{
		m_pDirectMem->bSivTraceOverwrite = FALSE;
		m_pDirectMem->nSivTraceBodyPos = 0;
		wApplied |= BIT05;
	}
	if(wFieldNo & BIT06) 
	{
		m_pDirectMem->bEcuTraceOverwrite = FALSE;
		m_pDirectMem->nEcuTraceBodyPos = 0;
		wApplied |= BIT06;
	}


	m_chTxBuffer[wSize++] = WORD_L(wApplied);
	m_chTxBuffer[wSize++] = WORD_H(wApplied);


	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;
}

/***********************************************************/
/* 종류: 0x05 운행기록 메뉴 요구                           */
/***********************************************************/
USHORT wl_DriveMenu()
{
	USHORT wFieldNo;
	int nRecNo;
	USHORT wSize = 0,wRecodes=0;
	PDRVHEADTYPE pDrvHead;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x05; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	m_chTxBuffer[wSize++] = 0x00; /* 기록수_H */
	m_chTxBuffer[wSize++] = 0x00; /* 기록수_H */

	for(wFieldNo=1;wFieldNo<=REC_DRV_HEADSIZE;wFieldNo++) 
	{
		nRecNo = wl_TotdBlkNo2DrvBlkNo(wFieldNo);
		if(nRecNo >=0) pDrvHead = gw_GetDrvHeader(nRecNo);
		else pDrvHead = NULL;

		if(pDrvHead && wFieldNo < REC_DRV_HEADSIZE)
		{
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = pDrvHead->sTime.year;
			m_chTxBuffer[wSize++] = pDrvHead->sTime.month;
			m_chTxBuffer[wSize++] = pDrvHead->sTime.day;
			m_chTxBuffer[wSize++] = pDrvHead->sTime.hour;
			m_chTxBuffer[wSize++] = pDrvHead->sTime.minute;
			m_chTxBuffer[wSize++] = pDrvHead->sTime.second;

			wRecodes++;
		}
		else
		{
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
			m_chTxBuffer[wSize++] = 0x00;
		}
	}


	m_chTxBuffer[6] = WORD_L(wRecodes); /* 기록수_H */
	m_chTxBuffer[7] = WORD_H(wRecodes); /* 기록수_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */
	return wSize;

}

/***********************************************************/
/* 종류: 0x07 속도기록 메뉴 요구                           */
/* 데이타는 420개지만 최근기록 60개만 준다.                */
/***********************************************************/
USHORT wl_SpeedMenu()
{
	USHORT wSize = 0,wRecodes=0;


	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x07; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	m_chTxBuffer[wSize++] = 0x00; /* 기록수_H */
	m_chTxBuffer[wSize++] = 0x00; /* 기록수_H */

	m_chTxBuffer[6] = WORD_L(wRecodes); /* 기록수_H */
	m_chTxBuffer[7] = WORD_H(wRecodes); /* 기록수_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x11 열차상태요구                                 */
/***********************************************************/
USHORT wl_TrsRecode(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int i;
	UINT nSize,nSamSize;
	UCHAR *pDataBuffer;
	LPBYTE pMemAddress;

	m_chTxBuffer[wSize++] = 0x00;		/* LEN_L */
	m_chTxBuffer[wSize++] = 0x00;		/* LEN_H */
	m_chTxBuffer[wSize++] = 0x11;		/* KIND_L */
	m_chTxBuffer[wSize++] = 0x00;		/* KIND_H */
	m_chTxBuffer[wSize++] = 0x00;		/* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00;		/* BLOCKNO_H */

	/* DATAS */
	wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x21 STATUS TRACE 요구                             */
/***********************************************************/
USHORT wl_SttRecode(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int i;
	UINT nSize,nSamSize;
	UCHAR *pDataBuffer;
	LPBYTE pMemAddress;

	m_chTxBuffer[wSize++] = 0x00;		/* LEN_L */
	m_chTxBuffer[wSize++] = 0x00;		/* LEN_H */
	m_chTxBuffer[wSize++] = 0x21;		/* KIND_L */
	m_chTxBuffer[wSize++] = 0x00;		/* KIND_H */
	m_chTxBuffer[wSize++] = 0x00;		/* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00;		/* BLOCKNO_H */

	/* DATAS */
	if(wFieldNo && (wFieldNo-1) < gw_GetTrsMaxBlock())
	{
		nSamSize = REC_STT_SAMSIZE;
		pDataBuffer = (LPBYTE)malloc(nSamSize+1000);

		pMemAddress = (LPBYTE)REC_ADDR(REC_STT_HEADOFFSET);
		pMemAddress += ((wFieldNo-1)*nSamSize);

		gm_memcpy(pDataBuffer,pMemAddress,nSamSize);

		nSize = nSamSize;
		if(nSize <= (wBlock) * SEND_SIZE) wBlock = 0xFFFF;
		else if(nSize <= (wBlock+1) * SEND_SIZE)
		{
			for(i=0;i<(nSize%SEND_SIZE);i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
			wBlock = 0xFFFF;
		}
		else
		{
			for(i=0;i<SEND_SIZE;i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
		}

		free(pDataBuffer);
	}
	else wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x30 Door Test 기록요구                           */
/* - 수집한 Test 기록 를 wFieldNo대로 전송한다.            */
/***********************************************************/
USHORT wl_DoorTest()
{
	USHORT wSize=0;
	UINT nSize;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x30; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	/* DATAS */
	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;
}

/***********************************************************/
/* 종류: 0x31 Brake Test 기록요구                           */
/* - 수집한 Test 기록 를 wFieldNo대로 전송한다.            */
/***********************************************************/
USHORT wl_BrakeTest()
{
	USHORT wSize=0;
	UINT nSize;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x31; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	/* DATAS */
	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x32 Brake Test 기록요구                           */
/* - 수집한 Test 기록 를 wFieldNo대로 전송한다.            */
/***********************************************************/
USHORT wl_SivTest()
{
	USHORT wSize=0;
	UINT nSize;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x32; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	/* DATAS */
	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x33 C/I Test 기록요구                            */
/* - 수집한 Test 기록 를 wFieldNo대로 전송한다.            */
/***********************************************************/
USHORT wl_CITest()
{
	USHORT wSize=0;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x33; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0xFF; /* BLOCKNO_H */

	/* DATAS */
	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x3D PDT 시험기록 요구                            */
/***********************************************************/
USHORT wl_PdtTestRecord(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int nRecNo,i;
	UINT nBodyPos,nSize;
	UCHAR *pDataBuffer;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x3D; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	wBlock = 0xFFFF;
	
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x3E 일상 시험기록 요구                            */
/***********************************************************/
USHORT wl_DtrTestRecord(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int nRecNo,i;
	UINT nBodyPos,nSize;
	UCHAR *pDataBuffer;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x3E; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	wBlock = 0xFFFF;
	
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x3F 일상 시험기록 요구                            */
/***********************************************************/
USHORT wl_MtrTestRecord(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int nRecNo,i;
	UINT nBodyPos,nSize;
	UCHAR *pDataBuffer;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x3F; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	wBlock = 0xFFFF;
	
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}
/***********************************************************/
/* 종류: 0x40 C/I Logger 기록요구                          */
/* - 수집한 Logger를 wFieldNo대로 전송한다.                */
/***********************************************************/
USHORT wl_CILogger(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int i;
	UINT nSize,nSamSize;
	UCHAR *pDataBuffer;
	LPBYTE pMemAddress;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x40; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */

	if(wFieldNo && wFieldNo <= m_pDirectMem->nPieTraceBodyPos)
	{
		nSamSize = REC_TRACE_PIE_SAMSIZE + sizeof(GMTRACE_HEAD_TYPE);
		pDataBuffer = (LPBYTE)malloc(nSamSize);

		pMemAddress = (LPBYTE)REC_ADDR(REC_TRACE_PIE_HEADOFFSET);
		pMemAddress += ((wFieldNo-1)*nSamSize);

		gm_memcpy(pDataBuffer,pMemAddress,nSamSize);

		nSize = nSamSize;
		if(nSize <= (wBlock) * SEND_SIZE) wBlock = 0xFFFF;
		else if(nSize <= (wBlock+1) * SEND_SIZE)
		{
			for(i=0;i<(nSize%SEND_SIZE);i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
			wBlock = 0xFFFF;
		}
		else
		{
			for(i=0;i<SEND_SIZE;i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
		}

		if(pDataBuffer) free(pDataBuffer);
	}
	else wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x42 SIV Logger 기록요구                          */
/* - 수집한 Logger를 wFieldNo대로 전송한다.                */
/***********************************************************/
USHORT wl_SivLogger(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int i;
	UINT nSize,nSamSize;
	UCHAR *pDataBuffer;
	LPBYTE pMemAddress;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x42; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */

	if(wFieldNo && wFieldNo <= m_pDirectMem->nSivTraceBodyPos)
	{
		nSamSize = REC_TRACE_SIV_SAMSIZE + sizeof(GMTRACE_HEAD_TYPE);
		pDataBuffer = (LPBYTE)malloc(nSamSize);

		pMemAddress = (LPBYTE)REC_ADDR(REC_TRACE_SIV_HEADOFFSET);
		pMemAddress += ((wFieldNo-1)*nSamSize);

		gm_memcpy(pDataBuffer,pMemAddress,nSamSize);

		nSize = nSamSize;
		if(nSize <= (wBlock) * SEND_SIZE) wBlock = 0xFFFF;
		else if(nSize <= (wBlock+1) * SEND_SIZE)
		{
			for(i=0;i<(nSize%SEND_SIZE);i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
			wBlock = 0xFFFF;
		}
		else
		{
			for(i=0;i<SEND_SIZE;i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
		}

		if(pDataBuffer) free(pDataBuffer);
	}
	else wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}



/***********************************************************/
/* 종류: 0x44 BRAKE Logger 기록요구                        */
/* - 수집한 Logger를 wFieldNo대로 전송한다.                */
/* - Brake는 Size가 1804 보다작으므로 항상 FFFF를 전송     */
/***********************************************************/
USHORT wl_BrakeLogger(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int i;
	UINT nSize,nSamSize;
	UCHAR *pDataBuffer;
	LPBYTE pMemAddress;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x44; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */

	if(wFieldNo && wFieldNo <= m_pDirectMem->nEcuTraceBodyPos)
	{
		nSamSize = REC_TRACE_ECU_SAMSIZE + sizeof(GMTRACE_HEAD_TYPE);
		pDataBuffer = (LPBYTE)malloc(nSamSize);

		pMemAddress = (LPBYTE)REC_ADDR(REC_TRACE_ECU_HEADOFFSET);
		pMemAddress += ((wFieldNo-1)*nSamSize);

		gm_memcpy(pDataBuffer,pMemAddress,nSamSize);

		nSize = nSamSize;
		if(nSize <= (wBlock) * SEND_SIZE) wBlock = 0xFFFF;
		else if(nSize <= (wBlock+1) * SEND_SIZE)
		{
			for(i=0;i<(nSize%SEND_SIZE);i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
			wBlock = 0xFFFF;
		}
		else
		{
			for(i=0;i<SEND_SIZE;i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
		}
	}
	else wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x46 DCU Logger 기록요구                          */
/* - 수집한 Logger를 wFieldNo대로 전송한다.                */
/* - DCU는 Size가 1000보다작으므로 항상 FFFF를 전송        */
/***********************************************************/
USHORT wl_DcuLogger(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x46; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x50 운행기록요구                                 */
/***********************************************************/
USHORT wl_DriveRecode(USHORT wBlock,USHORT wFieldNo,BYTE bNewCreate)
{
	USHORT wSize=0;
	int nRecNo,i;
	UINT nBodyPos,nSize;
	UCHAR *pDataBuffer;
	DRVHEADTYPE *pDrvHead;
	DRVBODYTYPE *pDrvBody;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x50; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	nRecNo = wl_TotdBlkNo2DrvBlkNo(wFieldNo);

	if(nRecNo >=0)
	{
		pDrvHead = gw_GetDrvHeader(nRecNo);
		if(pDrvHead)
		{
			nBodyPos = MK_DWORD(pDrvHead->wBodyField_H,pDrvHead->wBodyField_L);
			nSize = pDrvHead->wData_Count;

			if(bNewCreate)
			{
				mx_BeginEstimatedTime();
				m_nTxDataMemSize = nSize*sizeof(DRVBODYTYPE) + REC_DRV_HEADWRITESIZE;
				if(m_pTxDataMem) free(m_pTxDataMem);
				pDataBuffer = m_pTxDataMem = (UCHAR*)malloc(m_nTxDataMemSize);

				MemCpy(pDataBuffer,pDrvHead,REC_DRV_HEADWRITESIZE);
				pDataBuffer += REC_DRV_HEADWRITESIZE;

				for(i=0;i<nSize;i++)
				{
					pDrvBody = gw_GetDrvBody((nBodyPos+i)%REC_DRV_BODYSIZE);
					MemCpy(pDataBuffer,pDrvBody,sizeof(DRVBODYTYPE));
					pDataBuffer += sizeof(DRVBODYTYPE);
				}
				mx_EndEstimatedTime(NULL);
				printf("=> [%d]New UDP Drv-Memory Size[%d],Block[%d] Create !!!\n",wFieldNo,
					m_nTxDataMemSize,m_nTxDataMemSize/SEND_SIZE+((m_nTxDataMemSize%SEND_SIZE)?1:0));
			}
			

			if(m_nTxDataMemSize <= (wBlock) * SEND_SIZE) wBlock = 0xFFFF;
			else if(m_nTxDataMemSize <= (wBlock+1) * SEND_SIZE)
			{
				for(i=0;i<(m_nTxDataMemSize%SEND_SIZE);i++) m_chTxBuffer[wSize++] = m_pTxDataMem[wBlock*SEND_SIZE+i];
				wBlock = 0xFFFF;
			}
			else
			{
				for(i=0;i<SEND_SIZE;i++) m_chTxBuffer[wSize++] = m_pTxDataMem[wBlock*SEND_SIZE+i];
			}

		}
		else wBlock = 0xFFFF;
	}
	else wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x51 속도기록요구                                 */
/***********************************************************/
USHORT wl_SpeedRecode(USHORT wBlock,USHORT wFieldNo,BYTE bNewCreate)
{
	USHORT wSize=0;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x51; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x52 고장기록 요구                                */
/* 32BYTE BLOCK을 32개씩 전송한다.                         */
/* wBlock = 28800/30 = 960                                 */
/***********************************************************/
USHORT wl_FltRecode(USHORT wBlock,USHORT wFieldNo)
{
	USHORT wSize=0;
	int nRecNo,i,nLoadedFaultNo;
	UINT nBodyPos,nSize;
	UCHAR *pDataBuffer;
	GM_FAULTLIST GmFaultList[31];

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x52; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	if(wFieldNo && wFieldNo <= gm_GetTotalFaultMaxNumber())
	{
		memset(GmFaultList,0,sizeof(GmFaultList));
		nLoadedFaultNo = gm_GetTotalFaultListLoad_N((wFieldNo-1)*30,GmFaultList,30);

		if(nLoadedFaultNo)
		{
			pDataBuffer = (UCHAR*)GmFaultList;
			nSize = sizeof(GM_FAULTLIST)*nLoadedFaultNo;
			
			if(nSize <= (wBlock) * SEND_SIZE) wBlock = 0xFFFF;
			else if(nSize <= (wBlock+1) * SEND_SIZE)
			{
				for(i=0;i<(nSize%SEND_SIZE);i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
				wBlock = 0xFFFF;
			}
			else
			{
				for(i=0;i<SEND_SIZE;i++) m_chTxBuffer[wSize++] = pDataBuffer[wBlock*SEND_SIZE+i];
			}
		}
		wBlock = 0xFFFF;
	}
	else wBlock = 0xFFFF;
	
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x60 고속기록요구                                 */
/***********************************************************/
USHORT wl_HspRecode(USHORT wBlock,BYTE bNewCreate)
{
	USHORT wSize=0;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x60; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	wBlock = 0xFFFF;
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

/***********************************************************/
/* 종류: 0x61 적산거리 요구                                */
/***********************************************************/
USHORT wl_DistRecode(USHORT wBlock,BYTE bNewCreate)
{
	USHORT wSize=0;
	int nRecNo,i;
	UINT nBodyPos,nSize;
	UCHAR *pDataBuffer;
	LPBYTE pMemAddress;

	m_chTxBuffer[wSize++] = 0x00; /* LEN_L */
	m_chTxBuffer[wSize++] = 0x00; /* LEN_H */
	m_chTxBuffer[wSize++] = 0x61; /* KIND_L */
	m_chTxBuffer[wSize++] = 0x00; /* KIND_H */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_L */
	m_chTxBuffer[wSize++] = 0x00; /* BLOCKNO_H */

	/* DATAS */
	if(bNewCreate)
	{
		m_nTxDataMemSize = REC_DIST_MEMSIZE+REC_LOAD_MEMSIZE;
		m_pTxDataMem = (LPBYTE)REC_ADDR(REC_STT_HEADOFFSET);

		printf("=> New UDP Dist-Memory Size[%d],Block[%d] Create !!!\n",
			m_nTxDataMemSize,m_nTxDataMemSize/SEND_SIZE+((m_nTxDataMemSize%SEND_SIZE)?1:0));
	}
	
	
	if(m_nTxDataMemSize <= (wBlock) * SEND_SIZE) wBlock = 0xFFFF;
	else if(m_nTxDataMemSize <= (wBlock+1) * SEND_SIZE)
	{
		for(i=0;i<(m_nTxDataMemSize%SEND_SIZE);i++) m_chTxBuffer[wSize++] = m_pTxDataMem[wBlock*SEND_SIZE+i];
		wBlock = 0xFFFF;
	}
	else
	{
		for(i=0;i<SEND_SIZE;i++) m_chTxBuffer[wSize++] = m_pTxDataMem[wBlock*SEND_SIZE+i];
	}
	
		
	m_chTxBuffer[4] = WORD_L(wBlock); /* BLOCKNO_L */
	m_chTxBuffer[5] = WORD_H(wBlock); /* BLOCKNO_H */

	m_chTxBuffer[0] = WORD_L(wSize); /* LEN_L */
	m_chTxBuffer[1] = WORD_H(wSize); /* LEN_H */

	return wSize;

}

USHORT wl_ReqData(UCHAR chDecode,LPBYTE pText)
{
	BYTE chTemp;
	int nCarHo=0;
	USHORT wSize = 0;

	switch(chDecode)
	{
	case 0x00:
		break;
	case 0x01:
		break;
	case 0x02:
		break;
	}
	
	
	return wSize;
}


void wl_RequestTotd(USHORT wKind,USHORT wBlock,UCHAR chField[])
{

	int i;
	USHORT wTxLen=0,wFieldNo = MK_WORD(chField[1],chField[0]);
	BYTE bNewCreate = (!wBlock && (m_wLastField != wFieldNo || m_wLastKind != wKind)) ? TRUE : FALSE;

	if(m_TcThis.sFlag.bDownloadStarted)  return;	/* 다운로드 중일 경우에는 응답하지 않는다. */

	switch(wKind)
	{
	case 0x01: wTxLen = wl_ReqIdol();break;											/* IDOL 요구 */
	case 0x02: wTxLen = wl_ReqFormation();break;									/* 편성구성요구 (차량번호) */
	case 0x03: break;/* TRACE 수집요구 */
	case 0x04: wTxLen = wl_MemoryClear(wBlock,wFieldNo); break;						/* 수집 Memory Clear */
	case 0x05: wTxLen = wl_DriveMenu(); break;										/* 운행기록 메뉴 */
	case 0x07: wTxLen = wl_SpeedMenu(); break;										/* 속도기록 메뉴 */
	case 0x11: wTxLen = wl_TrsRecode(wBlock,wFieldNo); break;						/* 열차상태기록 1 요구 */
	case 0x21: wTxLen = wl_SttRecode(wBlock,wFieldNo); break;						/* Status 기록 1 요구 */
	case 0x30: wTxLen = wl_DoorTest(); break;										/* DOOR TEST 기록요구 */
	case 0x31: wTxLen = wl_BrakeTest(); break;										/* BRAKE TEST 기록요구 */
	case 0x32: wTxLen = wl_SivTest(); break;										/* SIV TEST 기록요구 */
	case 0x33: wTxLen = wl_CITest(); break;											/* CI TEST 기록요구 */
	case 0x3D: wTxLen = wl_PdtTestRecord(wBlock,wFieldNo); break;					/* PDT TEST 기록요구 */
	case 0x3E: wTxLen = wl_DtrTestRecord(wBlock,wFieldNo); break;					/* DTR TEST 기록요구 */
	case 0x3F: wTxLen = wl_MtrTestRecord(wBlock,wFieldNo); break;					/* DTR TEST 기록요구 */

	case 0x40: wTxLen = wl_CILogger(wBlock,wFieldNo);break;							/* LOGGER C/I TRACE */
	case 0x42: wTxLen = wl_SivLogger(wBlock,wFieldNo);break;						/* LOGGER SIV TRACE */
	case 0x44: wTxLen = wl_BrakeLogger(wBlock,wFieldNo);break;						/* LOGGER ECU TRACE */
	case 0x46: wTxLen = wl_DcuLogger(wBlock,wFieldNo);break;						/* LOGGER ECU TRACE */
	case 0x50: wTxLen = wl_DriveRecode(wBlock,wFieldNo,bNewCreate); break;			/* 운행기록요구 */
	case 0x51: wTxLen = wl_SpeedRecode(wBlock,wFieldNo,bNewCreate); break;			/* 속도기록 요구 */
	case 0x52: wTxLen = wl_FltRecode(wBlock,wFieldNo); break;						/* 고장기록요구 */
	case 0x60: wTxLen = wl_HspRecode(wBlock,bNewCreate);break;						/* 고속감시기록 */
	case 0x61: wTxLen = wl_DistRecode(wBlock,bNewCreate); break;					/* 적산기록 */

	}
	m_wLastKind = wKind;
	m_wLastField = wFieldNo;

	if(wTxLen) 
	{
		so_UdpTx(m_chTxBuffer,wTxLen);
	}
}


/* WIRELESS -> TGIS : LEN[2] + KIND[2] + BLOCK_NO[2] + KINDTYPE[4] */
void wl_RxProtocolCheck(UCHAR chPtl[],int nSize)
{
	UINT i,nAddress;
	USHORT wLen = MK_WORD(chPtl[1],chPtl[0]);
	USHORT wKind = MK_WORD(chPtl[3],chPtl[2]);
	USHORT wBlock = MK_WORD(chPtl[5],chPtl[4]);

	wl_RequestTotd(wKind,wBlock,chPtl+6);

}

void wl_UdpRxLoop()
{
	int i,nRxSize,nError;
	while(1)
	{
		nRxSize = so_UdpRx(m_chRxBuffer);
		if(nRxSize>0)
		{
			m_bWLRxRcvTick = tickGet();
			wl_RxProtocolCheck(m_chRxBuffer,nRxSize);
		}
	}
}

void wl_Init()
{
	so_Init();
	memset(m_chTxBuffer,0,sizeof(m_chTxBuffer));
	memset(m_chRxBuffer,0,sizeof(m_chRxBuffer));
	m_pTxDataMem = NULL;
	m_wLastField = 0xFFFF;
	m_nTxDataMemSize = 0;
	m_nTxDataNumber = -1;
	m_nDistGetTaskID = 0;
	m_bDistGetSuc = FALSE;
	m_wLastKind = 0;
	
	m_nWlRxTaskID = taskSpawn("wl_UdpRx",170,0,10000,wl_UdpRxLoop,0,0,0,0,0,0,0,0,0,0);
}
void wl_close()
{
	so_close();
	if(m_pTxDataMem) free(m_pTxDataMem);

	if(taskIdVerify(m_nWlRxTaskID) == OK) taskDelete(m_nWlRxTaskID);
	
}

#endif /* _WIRELESS_C_ */