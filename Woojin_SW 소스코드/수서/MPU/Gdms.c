#ifndef _GDMS_C_
#define _GDMS_C_

#include <vxWorks.h>
#include <ioLib.h>
#include <semLib.h>

#include "string.h"
#include "mmtype.h"
#include "ds1647.h"
#include "Gdms.h"
#include "Gp.h"
#include "Operation.h"

PDIRECTMEMTYPE m_pDirectMem = (PDIRECTMEMTYPE)DIRECT_MEMBASE;


UINT		m_nTrsQTop=0;
TRSHEADTYPE m_nTrsFCodeHeader;
PSTTBODYTYPE m_pSttQueue=NULL;

static UINT		m_nTrsFCodeTimeout;
LOCAL UINT m_nTrsSavingTaskID;

void gm_ArgInit()
{
	m_pSttQueue = (PSTTBODYTYPE)malloc(sizeof(STTBODYTYPE) * REC_TRS_QMAXSAMPLE);
}

void gm_Close()
{

	free(m_pSttQueue);
	m_pSttQueue = NULL;
}

/*********************************************************/
/* 다이아를 업데이트 한다..                                      */
/*********************************************************/
UCHAR *gm_GetDiaAddress()
{
	return (UCHAR *)DIA_BASE_ADDRESS;
}

UINT gm_DiaMemoryUpdate(LPBYTE pDataBuf,UINT nDataSize)
{
	int i,nRet;
	UCHAR *pMem = (UCHAR *)gm_GetDiaAddress();
	for(i=0;i<MIN(nDataSize,REC_DIA_SIZE);i++) pMem[i] = pDataBuf[i];

	m_pDirectMem->nDiaFileSize = nDataSize;
	TRACE("=> MemDia %d Size Write...\n",nDataSize);

	/* CRC - PUT FUNCTION */
	gm_ResetDia_CRC();

	return nDataSize;
}

UINT gm_GetDiaFileSize()
{
	return MIN(m_pDirectMem->nDiaFileSize,REC_DIA_SIZE);
}


BOOL gm_IsMemoryEnable()
{
	return TRUE;
}
/*********************************************************/
/*	구조체로 설정된 TGIS 정보를 읽어 온다.               */
/*********************************************************/


/**************************************************************************/
/*	누적 거리 RESET                                                       */
/**************************************************************************/
void gm_ResetDist()
{
	m_pDirectMem->nForeverDist = 0;
	m_pDirectMem->nStPosRunDist = 0;

	m_TcThis.nForeverDist = 0;
}

/**************************************************************************/
/*	본차 누적리를 설정                                                    */
/**************************************************************************/
void gm_SetForeverDist(UINT nDist) 
{
	m_pDirectMem->nForeverDist = nDist;
	m_TcThis.nForeverDist = m_pDirectMem->nForeverDist;
}


void gm_RandDataCreate()
{
	int i,nRandSize = sizeof(m_pDirectMem->chRandData);
	for(i=0;i<nRandSize;i++)
	{
		m_pDirectMem->chRandData[i] = rand()%0xffff;
	}

	m_pDirectMem->wRandDataCrc = mx_GetCRC16(0,nRandSize,m_pDirectMem->chRandData);

}

BOOL gm_CheckRandData()
{
	int i,nRandSize = sizeof(m_pDirectMem->chRandData);
	USHORT wRandDataCrc = mx_GetCRC16(0,nRandSize,m_pDirectMem->chRandData);

	return (m_pDirectMem->wRandDataCrc == wRandDataCrc) ? TRUE : FALSE;
}

void gm_ResetArgu()
{
	int i;
	UINT nDistID1,nDistID2;
	BYTE chRandData;
	USHORT wCarWheelDia[10] = {179, 180, 178, 177, 178, 180, 179, 178, 179, 180};

	nDistID1 = rand()%0xffff + 0x10;
	nDistID2 = m_pDirectMem->nDistID1+1;

	m_pDirectMem->nDistID1 = nDistID1;
	m_pDirectMem->nDistID2 = m_pDirectMem->nDistID1+1;

	if(nDistID1 != m_pDirectMem->nDistID1) printf("Error : Direct Memory Writing Error !!!\n");

	gm_RandDataCreate();

	gm_ResetDist();
	gw_ResetDrvRc();
	gw_ResetFaultList();
	gw_ResetTraceList();
	gw_ResetTrs();
	gw_ResetDistRec();
	gw_ResetLoadRec();
	gw_ResetEnergyRec();

	m_pDirectMem->nTrainSize = MAX_TRAIN_SIZE;

	gm_memcpy(m_pDirectMem->wCarWheelDia,wCarWheelDia,sizeof(wCarWheelDia));
	


}

/*********************************************************/
/*	Load 후에 차량의 ID가 설정이 되어 있지 않은 경우에   */
/*	ID 초기화 , 차량 주행거리 초기화 등을 수행 한다.     */
/*********************************************************/
void gm_CheckArgu()
{
	int i,nTemp;

	if(sizeof(DIRECTMEMTYPE) > MAX_DIRECT_MEMSIZE)
	{
		printf(" => ERROR : DIRECT MEMORY SIZE OVERFLOWER !!!!\n");
	}

	if(m_pDirectMem->nDistID1+1 != m_pDirectMem->nDistID2 || m_pDirectMem->nDistID1-0x10 > 0xffff || !gm_CheckRandData()) gm_ResetArgu();

	if(m_pDirectMem->nTrainSize != 10 && m_pDirectMem->nTrainSize != 8 && m_pDirectMem->nTrainSize != 6) m_pDirectMem->nTrainSize = MAX_TRAIN_SIZE;

}

/*********************************************************/
/* 시간을 설정한다.                                      */
/*********************************************************/

/*********************************************************/
/* 시간을 설정한다.                                      */
/*********************************************************/
void gm_timeSetArray(UCHAR *pDate)
{
	UCHAR buf[30];
	DATE_TIME_TYPE sTime;
	sprintf(buf,"%02X%02X%02X%02X%02X%02X",pDate[1],pDate[2],pDate[0],pDate[3],pDate[4],pDate[5]);
	timeSet(buf);
	TRACE("=> TIME SET : %s ",buf);
}

void gm_timeSet(PSYSTIMETYPE pTime)
{
	UCHAR buf[30];
	sprintf(buf,"%02X%02X%02X%02X%02X%02X",pTime->month,pTime->day,pTime->year,pTime->hour,pTime->minute,pTime->second);
	timeSet(buf);
}


int gm_memcpy(void *pMem1,void *pMem2,int nSize)
{
	int i;
	UCHAR *pMem11 = (UCHAR *)pMem1;
	UCHAR *pMem22 = (UCHAR *)pMem2;
	for(i=0;i<nSize;i++) pMem11[i]=pMem22[i];
	return nSize;
}

int gm_memset(void *pMem1,UCHAR chValue,int nSize)
{
	int i;
	UCHAR *pMemX = (UCHAR*)pMem1;
	for(i=0;i<nSize;i++) pMemX[i]=chValue;
	return nSize;
}

int gm_strcat(char szSrc[],char szDest[])
{
	int i,nSize = strlen(szDest);
	gm_memcpy(szSrc,szDest,nSize);
	return nSize;
}


/* 전체 Dia CRC */
BOOL gm_CheckDia_CRC()
{
	UCHAR *pVme = (UCHAR *)gm_GetDiaAddress();
	USHORT wCRC;
	wCRC = mx_GetCCITT(pVme,REC_DIA_SIZE);
	if(wCRC != m_pDirectMem->wDiaCRC) return FALSE;
	return TRUE;
}


BOOL gm_ResetDia_CRC()
{
	UCHAR *pVme = (UCHAR *)gm_GetDiaAddress();
	m_pDirectMem->wDiaCRC = mx_GetCCITT(pVme,REC_DIA_SIZE);
	return TRUE;
}

void gm_ShowSystemTime(PSYSTIMETYPE pSysTime,char szName[])
{
	if(szName) printf("=> %s",szName);
	printf("%02X/%02X/%02X %02X:%02X:%02X...\n",
		pSysTime->year,	pSysTime->month,pSysTime->day,pSysTime->hour,pSysTime->minute,pSysTime->second);	
}

void gm_GetSystemTime(PSYSTIMETYPE pSysTime)
{
	DATE_TIME_TYPE sTime;
	timeGet(&sTime);
	
	pSysTime->year		= sTime.year;
	pSysTime->month		= sTime.month;
	pSysTime->day		= sTime.day;
	pSysTime->hour		= sTime.hour;
	pSysTime->minute	= sTime.minute;
	pSysTime->second	= sTime.second;
}

void gm_SetSystemTime(PSYSTIMETYPE pSysTime)
{
	gm_timeSet(pSysTime);
}

/*********************************************************************/
/* RTC 의 년월일시분초를 4BYTE SYSTEM TIME으로 환산합니다.           */
/* 출력: 시간을 입력하면 기준년 이후로 초를 계산하여 리턴            */
/* 입력: pTime : 년월일 시분초[BCD]                               */
/*	nSysBase :  1970 입력 (1970년 기준일 경우)                       */
/*********************************************************************/
UINT gm_RtcToSysTime(DATE_TIME_PTR pTime)
{
	int days[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }; 
	int nTemp;
	unsigned int nDays,nTotalSecond;
	int nBaseYear = 1970;
	int nYear = BCD2BIN(pTime->year) + 2000;

	if(!BCD2BIN(pTime->month) || !BCD2BIN(pTime->day)) return 0;
	
	nTotalSecond = 0;
	for(nTemp = nBaseYear; nTemp < nYear ;nTemp++)
	{
		nDays = 365;
		if((!(nTemp % 4) && (nTemp % 100)) || !(nTemp % 400)) nDays += 1;
		nTotalSecond += nDays*24*60*60;
	}

	nDays = 0;
	for(nTemp=0;nTemp<(BCD2BIN(pTime->month)-1);nTemp++) nDays += days[nTemp];
	nTotalSecond += nDays*24*60*60;

	nTotalSecond += (BCD2BIN(pTime->day)-1)*24*60*60;

	nTotalSecond += BCD2BIN(pTime->hour)*60*60;

	nTotalSecond += BCD2BIN(pTime->minute)*60;

	nTotalSecond += BCD2BIN(pTime->second);

	return nTotalSecond;

}

/*********************************************************************/
/* 환산된 4BYTE SYSTEM TIME을 RTC 의 년월일시분초로 복원합니다.      */
/* 출력(pTime): 얻어올 시간 포인터   년월일 시분초[BCD]				 */
/* 입력: nSysTime : 4바이트 SYSTEM TIME                              */
/*	nSysBase :  1970 입력 (1970년 기준일 경우)                       */
/*********************************************************************/
BOOL gm_SysTimeToRtc(DATE_TIME_PTR pTime,UINT nSysTime)
{
	BOOL bSec;
	int days[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }; 
	int nTemp;
	unsigned int nDays,nTotalSecond = nSysTime,nFrontSec,nRearSec;
	int nBaseYear = 1970;

	bSec = FALSE;
	nRearSec = nFrontSec = 0;
	for(nTemp = nBaseYear; nTemp < 2099 ;nTemp++)
	{
		nDays = 365;
		if((!(nTemp % 4) && (nTemp % 100)) || !(nTemp % 400)) nDays += 1;
		nRearSec = nFrontSec;
		nFrontSec += nDays*24*60*60;
		if(ISRANGE_LOW(nTotalSecond,nRearSec,nFrontSec))
		{
			pTime->year = BIN2BCD(nTemp%100);
			nTotalSecond -= nRearSec;
			bSec = TRUE;
			break;
		}
	}

	if(!bSec) return FALSE;

	bSec = FALSE;
	nDays = 0;
	nRearSec = nFrontSec = 0;
	for(nTemp=0;nTemp<11;nTemp++) 
	{
		nDays += days[nTemp];
		nRearSec = nFrontSec;
		nFrontSec = nDays*24*60*60;
		if(ISRANGE_LOW(nTotalSecond,nRearSec,nFrontSec))
		{
			pTime->month = BIN2BCD(nTemp+1);
			nTotalSecond -= nRearSec;
			bSec = TRUE;
			break;
		}
	}

	if(!bSec) return FALSE;

	nTemp = nTotalSecond/(24*60*60);
	pTime->day = BIN2BCD(nTemp+1);
	nTotalSecond %= (24*60*60);

	nTemp = nTotalSecond/(60*60);
	pTime->hour = BIN2BCD(nTemp);
	nTotalSecond %= (60*60);

	nTemp = nTotalSecond/60;
	pTime->minute = BIN2BCD(nTemp);
	nTotalSecond %= 60;

	pTime->second = BIN2BCD(nTotalSecond);
	
	return TRUE;
}


void gm_MakeHeader(BYTE chBlockType,PGM_HEAD_TYPE pBlockHead)
{
	DATE_TIME_TYPE sTime;

	timeGet(&sTime);
	pBlockHead->chBlockType = chBlockType;
	pBlockHead->chSpare = 0;

	pBlockHead->xDate.year = sTime.year;
	pBlockHead->xDate.month = sTime.month;
	pBlockHead->xDate.day = sTime.day;
	pBlockHead->xDate.hour = sTime.hour;
	pBlockHead->xDate.minute = sTime.minute;
	pBlockHead->xDate.second = sTime.second;

}

/******************************************************************************/
/* 운전기록                                                                   */
/******************************************************************************/


BOOL gw_IsDrvOverwrite()
{
	return (m_pDirectMem->nRcDrvHeadRear == (m_pDirectMem->nRcDrvHeadFront+1)%REC_DRV_HEADSIZE) ? TRUE : FALSE;
}
void gm_MakeFileHeader(LPBYTE pHeadBuffer,BYTE chDataType,UINT nDataPos,BYTE chFlags)
{
	PFILEHEADTYPE pHead = (PFILEHEADTYPE)pHeadBuffer;

	pHead->Data_Type = chDataType;
	pHead->chFlag = chFlags;
	pHead->dwData_Count = nDataPos;
	
	gm_GetSystemTime(&pHead->sTime);

	pHead->chWriteCarHo = m_TcThis.nCarHo;
	pHead->wCarNumber = op_GetCarNumber(m_TcThis.nCarHo);
	pHead->chTgisVer = SYSTEM_VER;

	strcpy(pHead->szSysTagName,SYSTEM_TAG);

}


void gw_ResetDrvRc()
{
	m_pDirectMem->nRcDrvBodyFront = 0;
	m_pDirectMem->nRcDrvHeadFront = 0;
	m_pDirectMem->nRcDrvBodyRear = 0;
	m_pDirectMem->nRcDrvHeadRear = 0;
	gm_GetSystemTime(&m_pDirectMem->DataClearTime[0]);
}

UINT gw_GetDrvRecHeadNumber()
{
	UINT nHeadNumber = (m_pDirectMem->nRcDrvHeadFront + REC_DRV_HEADSIZE - m_pDirectMem->nRcDrvHeadRear)%REC_DRV_HEADSIZE;
	return nHeadNumber;
}

UINT gw_GetDrvRecFullSize(UINT nMaxHeadNumber)
{
	PDRVHEADTYPE pHead = (PDRVHEADTYPE)REC_ADDR(REC_DRV_HEADOFFSET);
	int nIndex,nHeadPos;
	UINT nTotalByte=0;

	for(nIndex=0;nIndex<nMaxHeadNumber;nIndex++)
	{
		nHeadPos = (m_pDirectMem->nRcDrvHeadRear + nIndex)%REC_DRV_HEADSIZE;

		if(pHead[nHeadPos].Data_Type == REC_DRV_DATATYPE)
		{
			if(pHead[nHeadPos].wData_Count <= REC_DRV_BODYPERHEAD)
			{
				nTotalByte += REC_DRV_HEADWRITESIZE;
				nTotalByte += pHead[nHeadPos].wData_Count * sizeof(DRVBODYTYPE);
			}
		}

	}

	return nTotalByte;
}

/* 자동 다운로드 하지 않은 기록의 총 카운터가 얼마인가? */
UINT gw_GetDrvAutoDownReadyHeads(PSYSTIMETYPE pSTime,PSYSTIMETYPE pETime)
{
	PDRVHEADTYPE pHead = (PDRVHEADTYPE)REC_ADDR(REC_DRV_HEADOFFSET);
	int nIndex,nHeadPos,nFirstHead=-1,nLastHead=-1;
	UINT nTotalHeads=0;
	UINT nMaxHeadNumber = gw_GetDrvRecHeadNumber();

	for(nIndex=0;nIndex<nMaxHeadNumber;nIndex++)
	{
		nHeadPos = (m_pDirectMem->nRcDrvHeadRear + nIndex)%REC_DRV_HEADSIZE;

		if(pHead[nHeadPos].Data_Type == REC_DRV_DATATYPE)
		{
			if(!pHead[nHeadPos].bAutoDownCheck)
			{
				nTotalHeads ++;
				if(nFirstHead == -1) nFirstHead = nHeadPos;
				nLastHead = nHeadPos;
			}
		}

	}

	if(pSTime && nFirstHead != -1) gm_memcpy(pSTime,&pHead[nFirstHead].sTime,sizeof(SYSTIMETYPE));
	if(pETime && nLastHead  != -1) gm_memcpy(pETime,&pHead[nLastHead].sTime,sizeof(SYSTIMETYPE));

	return nTotalHeads;
}

/* 자동 다운로드 하지 않은 기록의 총 카운터가 얼마인가? */
UINT gw_GetDrvAutoDownReadySamples()
{
	PDRVHEADTYPE pHead = (PDRVHEADTYPE)REC_ADDR(REC_DRV_HEADOFFSET);
	int nIndex,nHeadPos;
	UINT nTotalSamples=0;
	UINT nMaxHeadNumber = gw_GetDrvRecHeadNumber();

	printf("DownReadySamples[%d] = \n",nMaxHeadNumber);
	for(nIndex=0;nIndex<nMaxHeadNumber;nIndex++)
	{
		nHeadPos = (m_pDirectMem->nRcDrvHeadRear + nIndex)%REC_DRV_HEADSIZE;

		if(pHead[nHeadPos].Data_Type == REC_DRV_DATATYPE)
		{
			if(!pHead[nHeadPos].bAutoDownCheck)
			{
				if(pHead[nHeadPos].wData_Count <= REC_DRV_BODYPERHEAD)
				{
					nTotalSamples += pHead[nHeadPos].wData_Count;
					printf("[%d] %d = %d\n",nHeadPos,pHead[nHeadPos].wData_Count,nTotalSamples);
				}
			}
		}

	}

	return nTotalSamples;
}

int gw_GetDrvRecPosByIndex(int nIndex)
{

	return (m_pDirectMem->nRcDrvHeadRear + nIndex)%REC_DRV_HEADSIZE;
}

BOOL gw_IsExistDrvHeader(UINT nPos)
{
	PDRVHEADTYPE pHead = (PDRVHEADTYPE)REC_ADDR(REC_DRV_HEADOFFSET);
	int nIndex = ((m_pDirectMem->nRcDrvHeadFront+REC_DRV_HEADSIZE)-m_pDirectMem->nRcDrvHeadRear)%REC_DRV_HEADSIZE;
	if(nIndex == nPos) 
	{
		if(pHead[m_pDirectMem->nRcDrvHeadRear].Data_Type == REC_DRV_DATATYPE) return TRUE;
		else FALSE;
	}
	else return (nIndex < nPos) ? FALSE : TRUE ;
}

PDRVHEADTYPE gw_GetDrvHeader(UINT nPos)
{
	PDRVHEADTYPE pHead = (PDRVHEADTYPE)REC_ADDR(REC_DRV_HEADOFFSET);
	if(gw_IsExistDrvHeader(nPos))
		return &pHead[(nPos+m_pDirectMem->nRcDrvHeadRear)%REC_DRV_HEADSIZE];
	else return NULL;
}

PDRVBODYTYPE gw_GetDrvBody(UINT nPos)
{
	PDRVBODYTYPE pVmeBody = (PDRVBODYTYPE)REC_ADDR(REC_DRV_BODYOFFSET);
	return &pVmeBody[nPos];
}

void gw_DrvRcAddHead()
{
	PDRVHEADTYPE pHead = (PDRVHEADTYPE)REC_ADDR(REC_DRV_HEADOFFSET);
	SYSTIMETYPE sTime;
	int i;
	USHORT wCnt;

	if(m_pDirectMem->nRcDrvHeadFront>REC_DRV_HEADSIZE || m_pDirectMem->nRcDrvHeadRear>REC_DRV_HEADSIZE 
		|| m_pDirectMem->nRcDrvBodyFront>REC_DRV_BODYSIZE || m_pDirectMem->nRcDrvBodyRear>REC_DRV_BODYSIZE) 
	{
		TRACE("ERR DRV REC-QUEUE VAL ERROR = [%d][%d][%d][%d] => RESET",m_pDirectMem->nRcDrvBodyFront,m_pDirectMem->nRcDrvHeadFront,m_pDirectMem->nRcDrvBodyRear,m_pDirectMem->nRcDrvHeadRear);
		gw_ResetDrvRc();
	}

	wCnt = pHead[m_pDirectMem->nRcDrvHeadFront].wData_Count;
	
	if(wCnt)
	{
		if(m_pDirectMem->nRcDrvHeadRear == (m_pDirectMem->nRcDrvHeadFront+1)%REC_DRV_HEADSIZE)
		{
			ERRPRINT("Drive Recoder head memory overwrite !!! \n");
			wCnt = pHead[m_pDirectMem->nRcDrvHeadFront].wData_Count;
			m_pDirectMem->nRcDrvBodyRear = (m_pDirectMem->nRcDrvBodyRear+wCnt)%REC_DRV_BODYSIZE;
			m_pDirectMem->nRcDrvHeadRear = (m_pDirectMem->nRcDrvHeadRear+1)%REC_DRV_HEADSIZE; 
		}

		m_pDirectMem->nRcDrvHeadFront = (m_pDirectMem->nRcDrvHeadFront+1)%REC_DRV_HEADSIZE;
		TRACE("Bodies[%d] => New DrvHead[%d] Add =>  \n",wCnt,m_pDirectMem->nRcDrvHeadFront);
	}
	


	pHead[m_pDirectMem->nRcDrvHeadFront].Data_Type = REC_DRV_DATATYPE;
	pHead[m_pDirectMem->nRcDrvHeadFront].wData_Count = 0;

	gm_GetSystemTime(&pHead[m_pDirectMem->nRcDrvHeadFront].sTime);

	pHead[m_pDirectMem->nRcDrvHeadFront].chSpare1 = 0;
	pHead[m_pDirectMem->nRcDrvHeadFront].wSpare1 = 0;
	pHead[m_pDirectMem->nRcDrvHeadFront].Car_Number = op_GetCarNumber(m_TcThis.nCarHo);
	pHead[m_pDirectMem->nRcDrvHeadFront].wBodyField_H = DWORD_H(m_pDirectMem->nRcDrvBodyFront);
	pHead[m_pDirectMem->nRcDrvHeadFront].wBodyField_L = DWORD_L(m_pDirectMem->nRcDrvBodyFront);
	pHead[m_pDirectMem->nRcDrvHeadFront].bAutoDownCheck = FALSE;

}

BOOL gw_PushDrvBody(PDRVBODYTYPE pBody)
{
	UINT i;
	DRVHEADTYPE DrvHead;
	PDRVHEADTYPE pVmeHead = (PDRVHEADTYPE)REC_ADDR(REC_DRV_HEADOFFSET);
	PDRVBODYTYPE pVmeBody = (PDRVBODYTYPE)REC_ADDR(REC_DRV_BODYOFFSET);
	USHORT wCnt;


	/* Head Queue or Body Queue is overflower => Memory Reset */
	if(    m_pDirectMem->nRcDrvHeadFront>REC_DRV_HEADSIZE || m_pDirectMem->nRcDrvHeadRear>REC_DRV_HEADSIZE 
		|| m_pDirectMem->nRcDrvBodyFront>REC_DRV_BODYSIZE || m_pDirectMem->nRcDrvBodyRear>REC_DRV_BODYSIZE) 
	{
		TRACE("DRIVE RECODER : QUEUE VAL ERROR = [%d][%d][%d][%d] => RESET",m_pDirectMem->nRcDrvBodyFront,m_pDirectMem->nRcDrvHeadFront,m_pDirectMem->nRcDrvBodyRear,m_pDirectMem->nRcDrvHeadRear);
		gw_ResetDrvRc();
	}

	wCnt = pVmeHead[m_pDirectMem->nRcDrvHeadFront].wData_Count;

	
	/* 4시간 분에 마다 Header 를 추가한다. */
	if(wCnt+1 >REC_DRV_BODYPERHEAD || pVmeHead[m_pDirectMem->nRcDrvHeadFront].Data_Type != REC_DRV_DATATYPE)
	{
		TRACE("DRIVE RECODER => BODYSIZE LIMITED ADD HEADER.%d,[%02X]..\n",wCnt,pVmeHead[m_pDirectMem->nRcDrvHeadFront].Data_Type);
		gw_DrvRcAddHead();

		wCnt = pVmeHead[m_pDirectMem->nRcDrvHeadFront].wData_Count;
	}

	if(m_pDirectMem->nRcDrvBodyRear == (m_pDirectMem->nRcDrvBodyFront+1)%REC_DRV_BODYSIZE)
	{
		wCnt = pVmeHead[m_pDirectMem->nRcDrvHeadRear].wData_Count;
		if(m_pDirectMem->nRcDrvHeadFront == m_pDirectMem->nRcDrvHeadRear)
		{
			ERRPRINT("Drive Recoder Head memory Leak...Error[Head=>one,Body full] (%d)!!! \n",m_pDirectMem->nRcDrvHeadFront);
		}
		else
		{
			TRACE("DRIVE RECODER => OVER FLOWER : OVERWRITE...\n");

			pVmeHead[m_pDirectMem->nRcDrvHeadRear].Data_Type = 0x00;
			pVmeHead[m_pDirectMem->nRcDrvHeadRear].wData_Count = 0;

			m_pDirectMem->nRcDrvBodyRear = (m_pDirectMem->nRcDrvBodyRear+wCnt)%REC_DRV_BODYSIZE;
			m_pDirectMem->nRcDrvHeadRear = (m_pDirectMem->nRcDrvHeadRear+1)%REC_DRV_HEADSIZE;
			
			gw_PushDrvBody(pBody);
		}
		return;
	}
	else
	{
		gm_memcpy(&pVmeBody[m_pDirectMem->nRcDrvBodyFront],pBody,sizeof(DRVBODYTYPE));

		if(pVmeHead[m_pDirectMem->nRcDrvHeadFront].Data_Type != REC_DRV_DATATYPE)
		{
			TRACE("DRIVE RECODER => INVALIDE HEADTYPE[%02X]...%d..\n",pVmeHead[m_pDirectMem->nRcDrvHeadFront].Data_Type,
				m_pDirectMem->nRcDrvHeadFront);
			wCnt = 0;
			pVmeHead[m_pDirectMem->nRcDrvHeadFront].wData_Count = 0x00;
			gw_DrvRcAddHead();
		}
		wCnt++;
		pVmeHead[m_pDirectMem->nRcDrvHeadFront].wData_Count = wCnt;

		m_pDirectMem->nRcDrvBodyFront = (m_pDirectMem->nRcDrvBodyFront+1)%REC_DRV_BODYSIZE;
	}
}

/**************************************************************
 운전데이타 기록분을 보여줍니다.
 *************************************************************/
void gm_showDrv()
{
	UINT nHRear,nIndex,nCnt;
	PDRVHEADTYPE pVmeHead = (PDRVHEADTYPE)REC_DRV_HEADOFFSET;
	DRVHEADTYPE DrvHead;

	printf("Queued : H[%05X,%05X] B[%05X,%05X]\n",
		m_pDirectMem->nRcDrvHeadFront,m_pDirectMem->nRcDrvHeadRear,
		m_pDirectMem->nRcDrvBodyFront,m_pDirectMem->nRcDrvBodyRear);

	
	for(nHRear=m_pDirectMem->nRcDrvHeadRear,nIndex=0;
		nHRear!=m_pDirectMem->nRcDrvHeadFront;
		nHRear = (nHRear+1)%REC_DRV_HEADSIZE)
	{
			gm_memcpy(&DrvHead,&pVmeHead[nHRear],sizeof(DrvHead));

			nCnt = DrvHead.wData_Count;
			

			printf("H[%d]-(%d): BodyNum = %d \n",nIndex++,nHRear,nCnt);
		
	}

	gm_memcpy(&DrvHead,&pVmeHead[m_pDirectMem->nRcDrvHeadFront],sizeof(DrvHead));
	nCnt = DrvHead.wData_Count;
	
	printf("End[%d] : H[%d]-(%d): BodyNum = %d \n",DrvHead.Data_Type,nIndex++,nHRear,nCnt);

}

/******************************************************************************/
/* 고장기록                                                                   */
/******************************************************************************/
void gw_ResetFaultList()
{
	m_pDirectMem->nFaultListFront = m_pDirectMem->nFaultListRear = 0;
	gm_GetSystemTime(&m_pDirectMem->DataClearTime[3]);
}


UINT gm_GetTotalFaultListNumber(UINT nListPos)
{
	return (GM_MAX_FAULTLIST + nListPos - m_pDirectMem->nFaultListRear)%GM_MAX_FAULTLIST;
}

UINT gm_GetTotalFaultMaxNumber()
{
	return gm_GetTotalFaultListNumber(m_pDirectMem->nFaultListFront);
}

UINT gm_GetFaultMaxByCarHo(int nCarHo)
{
	PGM_FAULTLIST pGmFaultList = (PGM_FAULTLIST)REC_ADDR(REC_FLT_BODYOFFSET);
	int nRear = m_pDirectMem->nFaultListRear;
	int nFront = m_pDirectMem->nFaultListFront;
	UINT nFaults=0;

	for(;nRear!=nFront;nRear = (nRear+1)%GM_MAX_FAULTLIST)
	{
		if(pGmFaultList[nRear].chCarHo == nCarHo) nFaults++;
	}
	return nFaults;
}

PGM_FAULTLIST gm_GetTotalFaultList(UINT nIndex)
{
	PGM_FAULTLIST pGmFaultList = (PGM_FAULTLIST)REC_ADDR(REC_FLT_BODYOFFSET);
	UINT nPos = (m_pDirectMem->nFaultListRear+nIndex)%GM_MAX_FAULTLIST;

	if(gm_GetTotalFaultMaxNumber() <= nIndex) return NULL;

	return pGmFaultList+nPos;
}


PGM_FAULTLIST gm_FindFaultListIndex(USHORT wFltIndex,BYTE chCarHo,int dwGmFront)
{
	PGM_FAULTLIST pGmFaultList = (PGM_FAULTLIST)REC_ADDR(REC_FLT_BODYOFFSET);
	UINT nFaultTop = gm_GetTotalFaultMaxNumber();
	if(nFaultTop)
	{
		if(gm_GetTotalFaultListNumber(dwGmFront) < nFaultTop)
		{
			if(pGmFaultList[dwGmFront].wFltCode == m_FaultSummery[wFltIndex].wFltCode && pGmFaultList[dwGmFront].chCarHo == chCarHo) return &pGmFaultList[dwGmFront];
		}
	}
	return NULL;
}


UINT gm_GetFaultListFront()
{
	return m_pDirectMem->nFaultListFront;
}

UINT gm_GetFaultListRear()
{
	return m_pDirectMem->nFaultListRear;
}

BOOL gm_IsFaultListOverwrite()
{
	return (m_pDirectMem->nFaultListFront+1 )%GM_MAX_FAULTLIST == m_pDirectMem->nFaultListRear ? TRUE : FALSE;
}

void gm_SavingFaultList(USHORT wFltIndex,BOOL bFault,USHORT wCarHo,DATE_TIME_TYPE *pTime,USHORT wMenIndex,int dwGmFront)
{
	int nFaultListIndex;
	PGM_FAULTLIST pGmFaultList;


	if(bFault)
	{
		pGmFaultList = (PGM_FAULTLIST)REC_ADDR(REC_FLT_BODYOFFSET);
		if(m_pDirectMem->nFaultListFront>GM_MAX_FAULTLIST) gw_ResetFaultList();

		/* 발생시에 고장기록을 저장한다. */
		pGmFaultList[m_pDirectMem->nFaultListFront].wFltIndex	 = wFltIndex;
		pGmFaultList[m_pDirectMem->nFaultListFront].wFltCode	 = m_FaultSummery[wFltIndex].wFltCode;
		pGmFaultList[m_pDirectMem->nFaultListFront].sTime.year	 = pTime->year;
		pGmFaultList[m_pDirectMem->nFaultListFront].sTime.month	 = pTime->month;
		pGmFaultList[m_pDirectMem->nFaultListFront].sTime.day	 = pTime->day;
		pGmFaultList[m_pDirectMem->nFaultListFront].sTime.hour	 = pTime->hour;
		pGmFaultList[m_pDirectMem->nFaultListFront].sTime.minute = pTime->minute;
		pGmFaultList[m_pDirectMem->nFaultListFront].sTime.second = pTime->second;
		pGmFaultList[m_pDirectMem->nFaultListFront].eTime.year	 = 0x00;
		pGmFaultList[m_pDirectMem->nFaultListFront].eTime.month	 = 0x00;
		pGmFaultList[m_pDirectMem->nFaultListFront].eTime.day	 = 0x00;
		pGmFaultList[m_pDirectMem->nFaultListFront].eTime.hour	 = 0x00;
		pGmFaultList[m_pDirectMem->nFaultListFront].eTime.minute = 0x00;
		pGmFaultList[m_pDirectMem->nFaultListFront].eTime.second = 0x00;
		pGmFaultList[m_pDirectMem->nFaultListFront].wTrainNum	 = 0;
		pGmFaultList[m_pDirectMem->nFaultListFront].wDistance	 = op_GetDistance();
		pGmFaultList[m_pDirectMem->nFaultListFront].wMenIndex	 = wMenIndex;
		pGmFaultList[m_pDirectMem->nFaultListFront].chSpare[0]	 = 0x00;
		pGmFaultList[m_pDirectMem->nFaultListFront].chStCode	 = 0;
		pGmFaultList[m_pDirectMem->nFaultListFront].chSpeed		 = op_GetSpeed();
		pGmFaultList[m_pDirectMem->nFaultListFront].chPNotch	 = op_GetPowerNotchRate();
		pGmFaultList[m_pDirectMem->nFaultListFront].chBNotch	 = op_GetBrakeNotch();
		pGmFaultList[m_pDirectMem->nFaultListFront].chCarHo		 = wCarHo;
		pGmFaultList[m_pDirectMem->nFaultListFront].nTraceLink   = 0x00000000;

		
		if((m_pDirectMem->nFaultListFront+1 )%GM_MAX_FAULTLIST == m_pDirectMem->nFaultListRear)
		{
			m_pDirectMem->nFaultListRear = (m_pDirectMem->nFaultListRear+1)%GM_MAX_FAULTLIST;
		}
		m_pDirectMem->nFaultListFront = (m_pDirectMem->nFaultListFront+1)%GM_MAX_FAULTLIST;
	}
	else
	{
		/* 소거시에는 해당고장을 찾아 소거 시간만을 기록한다. */
		if(dwGmFront >= 0 )
		{
			pGmFaultList = gm_FindFaultListIndex(wFltIndex,wCarHo,dwGmFront);
			if(pGmFaultList != NULL)
			{
				pGmFaultList->eTime.year	 = pTime->year;
				pGmFaultList->eTime.month	 = pTime->month;
				pGmFaultList->eTime.day		 = pTime->day;
				pGmFaultList->eTime.hour	 = pTime->hour;
				pGmFaultList->eTime.minute   = pTime->minute;
				pGmFaultList->eTime.second   = pTime->second;
			}
			else TRACE("=> FAULTLIST[%d-%d] ERASE TIME NOT FOUND...\n",wFltIndex,dwGmFront);
		}
		else TRACE("=> INVALIDE FAULTLIST POS[%d] ....\n",dwGmFront);

		
	}
}


/************************************************************/
/* nIndex Position 부터 N 개씩 LOAD 한다.					*/
/* 고장리스트를 N개씩 LOAD 한다.                            */
/* Load한 갯수만큼 리턴한다.								*/
/************************************************************/
int gm_GetTotalFaultListLoad_N(UINT nIndex,PGM_FAULTLIST pLoadMem,int nRecentOrderNumber)
{
	PGM_FAULTLIST pGmFaultList = (PGM_FAULTLIST)REC_ADDR(REC_FLT_BODYOFFSET);
	UINT nPos,i;
	int nLoadedNumber=0;

	if(gm_GetTotalFaultMaxNumber() <= nIndex) return 0;

	if(nRecentOrderNumber)
	{
		for(i=0;i<nRecentOrderNumber;i++)
		{
			if(gm_GetTotalFaultMaxNumber() <= (nIndex+i)) break;
			nPos = (m_pDirectMem->nFaultListRear+nIndex+i)%GM_MAX_FAULTLIST;
			gm_memcpy(&pLoadMem[i],pGmFaultList+nPos,sizeof(GM_FAULTLIST));
			nLoadedNumber++;
		}

	}

	return nLoadedNumber;
}

/******************************************************************************/
/* 추적기록                                                                   */
/******************************************************************************/

void gw_ResetTraceList()
{
	m_pDirectMem->nPieTraceBodyPos = 0;
	m_pDirectMem->nSivTraceBodyPos = 0;
	m_pDirectMem->nEcuTraceBodyPos = 0;
	m_pDirectMem->bPieTraceOverwrite = FALSE;
	m_pDirectMem->bSivTraceOverwrite = FALSE;
	m_pDirectMem->bEcuTraceOverwrite = FALSE;
}

void gm_MakeTraceHeader(BYTE chBockType,int nCarHo,PGMTRACE_HEAD_TYPE pHead)
{
	gm_MakeHeader(chBockType,&pHead->BlockHead);
	pHead->chSpeed = op_GetSpeed();
	pHead->chLSysID = 0;
	pHead->chPNotchRate = op_GetPowerNotchRate();
	pHead->chBNotch = op_GetBrakeNotch();
	pHead->wDistance = op_GetDistance();
	pHead->chCarHo = (BYTE) nCarHo;
	pHead->chBcp = op_GetBcpValue(m_TcThis.nCarHo);
}


void gw_GetLoggerFileName(BYTE chType,LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'L';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = chType;
	szFileName[10] = 'T';
	szFileName[11] = 'R';
	szFileName[12] = NULL;
}

void gw_GetMiuDumpFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'I';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'D';
	szFileName[10] = 'M';
	szFileName[11] = 'P';
	szFileName[12] = NULL;
}

void gw_GetMpuDumpFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'P';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'D';
	szFileName[10] = 'M';
	szFileName[11] = 'P';
	szFileName[12] = NULL;
}


/* MIU 메모리에 있는 것을 카드에 덤프한다. */
int gw_LoggerFileWrite(BYTE chType,LPBYTE pMemAddress,int nSize,BYTE chFlag,int nBodyPos)
{
	int i,nFd,nRemainByte;
	char *pBuf,szFileName[20];
	BOOL bSuc;

	pc_CardInit(0,REC_MENUAL_DRIVENO);

	gw_GetLoggerFileName(chType,szFileName,0);

	if(pc_IsExistFile(szFileName))
	{
		bSuc = pc_FileDel(szFileName);
		if(!bSuc) 
		{
			TRACE("=> FILE [%s] can not delete !!!\n",szFileName);
			return 2;
		}
	}

	nRemainByte = pc_GetDiskFree();
	if(nRemainByte < nSize) return 7;
	nFd = pc_FileOpen(szFileName,0x201,nSize+512);	
	if(nFd == -1) 
	{
		TRACE("=> File [%s] can not create !!!\n",szFileName);
		return 2;
	}

	pBuf = (LPBYTE) malloc(1024+512);
	memset(pBuf,0,1024+512);

	gm_MakeFileHeader(pBuf,REC_TRACE_DATATYPE,nBodyPos,chFlag);
	pc_vFileWrite(nFd,pBuf,512);

	
	for(i=0;i<(nSize/1024);i++)
	{
		gm_memcpy(pBuf,pMemAddress+i*1024,1024);
		pc_vFileWrite(nFd,pBuf,1024);
	}
	if(nSize%1024)
	{
		memset(pBuf,0,1024+512);
		gm_memcpy(pBuf,pMemAddress+i*1024,nSize%1024);
		pc_vFileWrite(nFd,pBuf,nSize%1024);
	}

	pc_FileClose(nFd);

	free(pBuf);

	return nSize;
}

int gw_MakeSivTraceFile()
{
	int nRet;
	int nSamSize = REC_TRACE_SIV_SAMSIZE + sizeof(GMTRACE_HEAD_TYPE);
	int nTraceNo = m_pDirectMem->bSivTraceOverwrite ? REC_TRACE_SIV_BODYSIZE : m_pDirectMem->nSivTraceBodyPos ;
	BYTE chFlag = m_pDirectMem->bSivTraceOverwrite ? BIT01 : 0;

	TRACE("=> SIV LOGGER(%d) Saved...%d byte.\n",nTraceNo,nTraceNo*nSamSize);
	nRet = gw_LoggerFileWrite('S',(LPBYTE)REC_ADDR(REC_TRACE_SIV_HEADOFFSET),nTraceNo*nSamSize,chFlag,m_pDirectMem->nSivTraceBodyPos);
	return nRet;
}

void gw_MakeCiTraceFile()
{
	int nSamSize = REC_TRACE_PIE_SAMSIZE + sizeof(GMTRACE_HEAD_TYPE);
	int nTraceNo = m_pDirectMem->bPieTraceOverwrite ? REC_TRACE_PIE_BODYSIZE : m_pDirectMem->nPieTraceBodyPos ;
	BYTE chFlag = m_pDirectMem->bPieTraceOverwrite ? BIT01 : 0;

	TRACE("=> CI LOGGER(%d) Saved...%d byte.\n",nTraceNo,nTraceNo*nSamSize);
	gw_LoggerFileWrite('C',(LPBYTE)REC_ADDR(REC_TRACE_PIE_HEADOFFSET),nTraceNo*nSamSize,chFlag,m_pDirectMem->nPieTraceBodyPos);
	
}

void gw_MakeBrakeTraceFile()
{
	int nSamSize = REC_TRACE_ECU_SAMSIZE + sizeof(GMTRACE_HEAD_TYPE);
	int nTraceNo = m_pDirectMem->bEcuTraceOverwrite ? REC_TRACE_ECU_BODYSIZE : m_pDirectMem->nEcuTraceBodyPos ;
	BYTE chFlag = m_pDirectMem->bEcuTraceOverwrite ? BIT01 : 0;

	TRACE("=> BRAKE LOGGER(%d) Saved...%d byte.\n",nTraceNo,nTraceNo*nSamSize);
	gw_LoggerFileWrite('B',(LPBYTE)REC_ADDR(REC_TRACE_ECU_HEADOFFSET),nTraceNo*nSamSize,chFlag,m_pDirectMem->nEcuTraceBodyPos);

	
}

void gw_PushTraceBody(BYTE nLSysID,int nCarHo,LPBYTE chBuffer)
{
	LPBYTE pMemAddress;
	int nSamSize;
	GMTRACE_HEAD_TYPE BlockHead,*pBlockHead;
	BYTE chLSysFCode;

	memset(&BlockHead,0,sizeof(BlockHead));

	switch(nLSysID)
	{
	case LSYSID_BRAKE:
		chLSysFCode = chBuffer[0];			/* 제동장치 개별고장코드 */
		if(!chLSysFCode) TRACE("=> nCarHo[%d] ECU TRACE Fault Code is Zero...\n",nCarHo);

		pMemAddress = (LPBYTE)REC_ADDR(REC_TRACE_ECU_HEADOFFSET);
		nSamSize = REC_TRACE_ECU_SAMSIZE + sizeof(GMTRACE_HEAD_TYPE);
		m_pDirectMem->nEcuTraceBodyPos = m_pDirectMem->nEcuTraceBodyPos%REC_TRACE_ECU_BODYSIZE;
		
		gm_MakeTraceHeader(REC_TRACE_ECU_BLOCKTYPE,nCarHo,&BlockHead);
		
		BlockHead.BlockHead.xDate.year = chBuffer[1];
		BlockHead.BlockHead.xDate.month = chBuffer[2];
		BlockHead.BlockHead.xDate.day = chBuffer[3];
		BlockHead.BlockHead.xDate.hour = chBuffer[4];
		BlockHead.BlockHead.xDate.minute = chBuffer[5];
		BlockHead.BlockHead.xDate.second = 0x00;
		BlockHead.chLSysID = nLSysID;			/* 개별장치 ID */
		BlockHead.chLSysFCode = chLSysFCode;
		
		pMemAddress += (m_pDirectMem->nEcuTraceBodyPos*nSamSize);
		
		gm_memcpy(pMemAddress,&BlockHead,sizeof(GMTRACE_HEAD_TYPE));
		pMemAddress += sizeof(GMTRACE_HEAD_TYPE);
		gm_memcpy(pMemAddress,chBuffer,REC_TRACE_ECU_SAMSIZE);
		
		TRACE("=> nCarHo[%d] ECU TRACE[%d] Updated...\n",nCarHo,m_pDirectMem->nEcuTraceBodyPos);

		if((m_pDirectMem->nEcuTraceBodyPos+1)%REC_TRACE_ECU_BODYSIZE == 0) m_pDirectMem->bEcuTraceOverwrite = TRUE;
		m_pDirectMem->nEcuTraceBodyPos = (m_pDirectMem->nEcuTraceBodyPos+1)%REC_TRACE_ECU_BODYSIZE;

		
		
		break;
	case LSYSID_SIV:
		chLSysFCode = chBuffer[0];			/* SIV 개별고장코드 */
		if(!chLSysFCode) TRACE("=> nCarHo[%d] SIV TRACE Fault Code is Zero...\n",nCarHo);

		pMemAddress = (LPBYTE)REC_ADDR(REC_TRACE_SIV_HEADOFFSET);
		nSamSize = REC_TRACE_SIV_SAMSIZE + sizeof(GMTRACE_HEAD_TYPE);
		m_pDirectMem->nSivTraceBodyPos = m_pDirectMem->nSivTraceBodyPos%REC_TRACE_SIV_BODYSIZE;
		gm_MakeTraceHeader(REC_TRACE_SIV_BLOCKTYPE,nCarHo,&BlockHead);
		BlockHead.BlockHead.xDate.year = (chBuffer[1]);
		BlockHead.BlockHead.xDate.month = (chBuffer[2]);
		BlockHead.BlockHead.xDate.day = (chBuffer[3]);
		BlockHead.BlockHead.xDate.hour = (chBuffer[4]);
		BlockHead.BlockHead.xDate.minute = (chBuffer[5]);
		BlockHead.BlockHead.xDate.second = 0x00;
		BlockHead.chLSysID = nLSysID;		/* 개별장치 ID */
		BlockHead.chLSysFCode = chLSysFCode;

		
		pMemAddress += (m_pDirectMem->nSivTraceBodyPos*nSamSize);
		
		gm_memcpy(pMemAddress,&BlockHead,sizeof(GMTRACE_HEAD_TYPE));
		pMemAddress += sizeof(GMTRACE_HEAD_TYPE);
		gm_memcpy(pMemAddress,chBuffer,REC_TRACE_SIV_SAMSIZE);
		
		TRACE("=> nCarHo[%d] SIV TRACE[%d] Updated...\n",nCarHo,m_pDirectMem->nSivTraceBodyPos);


		if((m_pDirectMem->nSivTraceBodyPos+1)%REC_TRACE_SIV_BODYSIZE == 0) m_pDirectMem->bSivTraceOverwrite = TRUE;
		m_pDirectMem->nSivTraceBodyPos = (m_pDirectMem->nSivTraceBodyPos+1)%REC_TRACE_SIV_BODYSIZE;

		break;
	case LSYSID_CI:
		break;
	}
}




void gm_GetDrvFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'D';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'D';
	szFileName[10] = 'R';
	szFileName[11] = 'V';
	szFileName[12] = NULL;
}

USHORT gm_GetCarNumber(int nCarHo)
{
	USHORT wCarNumber=0;
	wCarNumber += ((m_pDirectMem->wFormNumber/100)%10) * 1000;
	wCarNumber += m_TcThis.nCarHo*100;
	wCarNumber += m_pDirectMem->wFormNumber%100;
	return wCarNumber;
}

void gm_GetAutoDrvFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'A';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'D';
	szFileName[10] = 'R';
	szFileName[11] = 'V';
	szFileName[12] = NULL;
}

void gm_GetTrsFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'F';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'T';
	szFileName[10] = 'R';
	szFileName[11] = 'S';
	szFileName[12] = NULL;
}

void gm_GetSttFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'F';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'S';
	szFileName[10] = 'T';
	szFileName[11] = 'T';
	szFileName[12] = NULL;
}

void gm_GetFltFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'F';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'F';
	szFileName[10] = 'L';
	szFileName[11] = 'T';
	szFileName[12] = NULL;
}



void gm_GetDistFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'H';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'D';
	szFileName[10] = 'I';
	szFileName[11] = 'S';
	szFileName[12] = NULL;
}

void gm_GetLoadFileName(LPBYTE szFileName,int nDataNumber)
{
	szFileName[ 0] = 'H';
	szFileName[ 1] = '0' + (sm_GetHexaID(0) ? 1 : 2 );
	szFileName[ 2] = '0' + ((m_pDirectMem->wFormNumber/10)%10);
	szFileName[ 3] = '0' + (m_pDirectMem->wFormNumber%10);
	szFileName[ 4] = '-';
	szFileName[ 5] = '0' + (nDataNumber/100)%10;
	szFileName[ 6] = '0' + (nDataNumber/10)%10;
	szFileName[ 7] = '0' + (nDataNumber)%10;
	szFileName[ 8] = '.';
	szFileName[ 9] = 'L';
	szFileName[10] = 'O';
	szFileName[11] = 'D';
	szFileName[12] = NULL;
}

/******************************************************************************/
/* 열차상태기록                                                               */
/******************************************************************************/
UINT gw_GetTrsMaxBlock()
{
	return (m_pDirectMem->bRcTrsOverwrite) ? REC_TRS_MAXBLOCK : m_pDirectMem->nRcTrsPos;
}


void gw_ResetTrs()
{

	m_pDirectMem->nRcTrsPos = 0;
	m_pDirectMem->bRcTrsOverwrite = 0;
}

BOOL gw_TriggerTrs(PTRSHEADTYPE pHead)
{
	if(!m_nTrsFCodeTimeout)
	{
		MemCpy(&m_nTrsFCodeHeader,pHead,sizeof(TRSHEADTYPE));
		m_nTrsFCodeTimeout = REC_TRS_TRIGGERTIME;
		TRACE("=> TRS/STT FAULT TRIGGER...%d.\n",pHead->fault_index);
		return TRUE;
	}
	return FALSE;
}

UINT gw_GetTrsTimeCounter()
{
	return m_nTrsFCodeTimeout;
}

void gw_PushTrsBody()
{
	UINT i,nBodys,nQTop;
	UCHAR *pSttVme = (UCHAR *)REC_ADDR(REC_STT_HEADOFFSET);
	UCHAR *pHeadMem = (UCHAR*)&m_nTrsFCodeHeader;

	m_pDirectMem->nRcTrsPos %= REC_TRS_MAXBLOCK;
	pSttVme += (m_pDirectMem->nRcTrsPos*REC_STT_SAMSIZE);
	

	m_nTrsFCodeHeader.Data_Type = REC_STT_DATATYPE;
	gm_memcpy(pSttVme,pHeadMem,sizeof(TRSHEADTYPE));
	pSttVme += sizeof(TRSHEADTYPE);

	
	nQTop = m_nTrsQTop;
	for(nBodys=0;nBodys<REC_TRS_QMAXSAMPLE;nBodys++,nQTop = (nQTop+1)%REC_TRS_QMAXSAMPLE)
	{
		gm_memcpy(pSttVme,(UCHAR*)&m_pSttQueue[nQTop],sizeof(STTBODYTYPE));
		pSttVme += sizeof(STTBODYTYPE);
	}
	
	/*op_AutoDownloadTrsTrigger(m_pDirectMem->nRcTrsPos);*/

	m_pDirectMem->nRcTrsPos = (m_pDirectMem->nRcTrsPos+1)%REC_TRS_MAXBLOCK;
	if(!m_pDirectMem->nRcTrsPos) m_pDirectMem->bRcTrsOverwrite = TRUE;

	TRACE("=>TRS/STT[%d] Fault Save Complete.. \n",m_pDirectMem->nRcTrsPos);
	m_nTrsSavingTaskID = 0;	

	
	

}

void gw_QueuedTrsBody(PSTTBODYTYPE pSttBody)
{
	int i;
	MemCpy(&m_pSttQueue[m_nTrsQTop],pSttBody,sizeof(STTBODYTYPE));
	m_nTrsQTop = (m_nTrsQTop+1)%REC_TRS_QMAXSAMPLE;

	if(m_nTrsFCodeTimeout == 1)
	{
		if(!m_nTrsSavingTaskID)
		{
			m_nTrsSavingTaskID = taskSpawn("uPushTrsB",160,0,10000,gw_PushTrsBody,0,0,0,0,0,0,0,0,0,0);
		}
		else
		{
			TRACE("=>TRS/STT[%d] Fault Save Bypassed.. \n",m_pDirectMem->nRcTrsPos);
		}
	}
	if(m_nTrsFCodeTimeout) m_nTrsFCodeTimeout--;
}


/******************************************************************************/
/* 주행거리기록                                                               */
/******************************************************************************/
void gw_ResetDistRec()
{
	m_pDirectMem->nHisDistBodyPos = 0;
	m_pDirectMem->bHisDistOverwrite = 0;
	gm_GetSystemTime(&m_pDirectMem->DataClearTime[1]);
}

BOOL gw_HisDistMemWrite(UINT nWritePos,LPBYTE pSamBody,int nSize)
{
	PGMHIS_DIST_TYPE pBody = (PGMHIS_DIST_TYPE)REC_ADDR(REC_LOAD_HEADOFFSET);

	gm_memcpy(&pBody[nWritePos],pSamBody,nSize);

	return TRUE;
}

BOOL gw_PushHisDistBody()
{
	BOOL bCDE;
	PGMHIS_DIST_TYPE pBody = (PGMHIS_DIST_TYPE)REC_ADDR(REC_DIST_HEADOFFSET);

	m_pDirectMem->nHisDistBodyPos %= REC_DIST_BODYSIZE;

	bCDE = gw_HisDistMemWrite(m_pDirectMem->nHisDistBodyPos,(UCHAR*)pBody,sizeof(GMHIS_DIST_TYPE));

	if((m_pDirectMem->nHisDistBodyPos+1)%REC_DIST_BODYSIZE == 0) m_pDirectMem->bHisDistOverwrite = TRUE;

	m_pDirectMem->nHisDistBodyPos = (m_pDirectMem->nHisDistBodyPos+1)%REC_DIST_BODYSIZE;

	m_pDirectMem->nHisLastDrvTime = pBody->nAccumulateTime;
	m_pDirectMem->nHisLastDrvDist = pBody->nAccumulateDist;

	return bCDE;
}

BOOL gw_HisDistBuffering(PGMHIS_DIST_TYPE pBuffer)
{
	PGMHIS_DIST_TYPE pBody = (PGMHIS_DIST_TYPE)REC_ADDR(BUFFER_DIST_ADDRESS);
	gm_memcpy(pBody,pBuffer,sizeof(GMHIS_DIST_TYPE));
	return TRUE;
}

BOOL gm_IsHisDistBufferingTime(PSYSTIMETYPE pTime)
{
	BOOL bBuffering = TRUE;
	PGMHIS_DIST_TYPE pBody = (PGMHIS_DIST_TYPE)REC_ADDR(BUFFER_DIST_ADDRESS);
	if(!pBody->datetime.month || !pBody->datetime.day) bBuffering = TRUE;
	else 
	{
		bBuffering = (pTime->year == pBody->datetime.year && pTime->month == pBody->datetime.month && pTime->day == pBody->datetime.day) ? TRUE : FALSE;
	}
	return bBuffering;
}



/******************************************************************************/
/* 승객하중기록                                                               */
/******************************************************************************/
void gw_ResetLoadRec()
{
	m_pDirectMem->nHisLoadBodyPos = 0;
	m_pDirectMem->bHisLoadOverwrite = 0;
	gm_GetSystemTime(&m_pDirectMem->DataClearTime[2]);
}

void gw_ResetEnergyRec()
{
	gm_memset(m_pDirectMem->nGenerPowerKwh,0,sizeof(m_pDirectMem->nGenerPowerKwh));
	gm_memset(m_pDirectMem->nGenerPowerKws,0,sizeof(m_pDirectMem->nGenerPowerKws));
	gm_memset(m_pDirectMem->nRegenPowerKwh,0,sizeof(m_pDirectMem->nRegenPowerKwh));
	gm_memset(m_pDirectMem->nRegenPowerKws,0,sizeof(m_pDirectMem->nRegenPowerKws));
}

BOOL gw_HisLoadMemWrite(UINT nWritePos,LPBYTE pSamBody,int nSize)
{
	PGMHIS_LOAD_TYPE pBody = (PGMHIS_LOAD_TYPE)REC_ADDR(REC_LOAD_HEADOFFSET);

	gm_memcpy(&pBody[nWritePos],pSamBody,nSize);

	return TRUE;
}


BOOL gw_PushHisLoadBody(PGMHIS_LOAD_TYPE pBody)
{
	BOOL bCDE;

	m_pDirectMem->nHisLoadBodyPos %= REC_LOAD_BODYSIZE;

	bCDE = gw_HisLoadMemWrite(m_pDirectMem->nHisLoadBodyPos,(UCHAR*)pBody,sizeof(GMHIS_LOAD_TYPE));

	if((m_pDirectMem->nHisLoadBodyPos+1)%REC_LOAD_BODYSIZE == 0) m_pDirectMem->bHisLoadOverwrite = TRUE;

	m_pDirectMem->nHisLoadBodyPos = (m_pDirectMem->nHisLoadBodyPos+1)%REC_LOAD_BODYSIZE;

	return bCDE;
}

#endif /* _GDMS_C_ */