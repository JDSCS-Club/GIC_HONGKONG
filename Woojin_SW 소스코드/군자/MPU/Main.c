/*******************************************************************/
/* main.c                                                          */
/*******************************************************************/
#include <vxworks.h>
#include <sigLib.h>
#include <ioLib.h>
#include <wdLib.h>
#include <stdLib.h>
#include <semLib.h>
#include <stdarg.h>
#include <string.h>

#include "mmtype.h"
#include "Main.h"
#include "ds1647.h"
#include "Gdms.h"
#include "Gp.h"
#include "operation.h"
#include "ScpLib.h"


#define	MAX_CMD_LIST	10

/*********************************************************/
/* Task ID                                               */
/*********************************************************/
LOCAL int m_nMainCommTaskId ;	/* 메인통신 Task */
LOCAL int m_nDPRAM_ReadTaskId ;	/* SCM의 DPRAM에서 데이터를 가져온다 */
LOCAL int m_nFaultCheckTaskId ;  /* 고장을 Check 한다. */
LOCAL int m_nUSysCommTaskId;		/* 중앙 하부장치 Task */
LOCAL int m_nRecordTaskId ; /* 기록을 한다. */
LOCAL int m_nAutoDrvRecTaskID ;
LOCAL int m_nAutoDownSuperviserTaskID ;
LOCAL int m_nAutoTrsRecTaskID ;
LOCAL int m_nHisDistTaskId;
LOCAL int m_nDPManagerTaskId;
LOCAL int m_nHisDistCellTaskId;


static BYTE m_chMComTxDirect = SCM_TX_SEND2;

/*********************************************************/
/*	차량 데이터                                          */
/*********************************************************/
TCTYPE m_TcThis;		/* 자차측 중앙 포인터 */
TCTYPE m_TcOppe;		/* 상대측 중앙 데이터 */
TCTYPE m_OldTcThis;		/* 이전 자차측 중앙 데이터 */
TCTYPE m_OldTcOppe;		/* 이전 상대측 중앙 데이터 */
PTCTYPE m_pTcThis;		/* 자차측 중앙 포인터 */
PTCTYPE m_pTcOppe;		/* 상대측 중앙 포인터 */
PTCTYPE m_pTc[2];		/* TC 포인터 10H => [1] , 00H => [0] */
PTCTYPE m_pTcHcr;		/* HCR이 투입된 측의 TC 포인터 */
PTCTYPE m_pTcTcr;		/* TCR이 투입된 측의 TC 포인터 */

MOMENTARYTYPE		m_xMoment;

BOOL m_bOldOppeSysFault;

CCINFOTYPE m_CC_Info;

/*********************************************************/
/*	마스터/슬레이브 전환 변수                            */
/*********************************************************/
BYTE m_bMP;					/* 마스터 및 허가 */
int m_nSlavePermitCnt;		/* 슬레이브의 마스터 요청 카운트 다운 */
BYTE m_nMsTmOutID;			/* 마스타의 복귀 카운터 */
UINT m_nSysFaultCnt;		/* SYSTEM FAULT COUNT */

/*********************************************************/
/*	일반 데이터                                          */
/*********************************************************/
int m_nMainLoopCnt;		/* Main Loop 카운터 */
UINT m_nMComTxOpCnt;	/* MainTxOpCnt... */
UINT m_nMComRxOpCnt;	
BYTE m_chMComRxBuf[SCM_RXBYTES];
BYTE m_chOldMComRxBuf[SCM_RXBYTES];
BOOL m_bMainComTxOverflow;
BOOL m_bAutoDownBrake = FALSE;

UINT m_nCCRxFault[MAX_TRAIN_SIZE];
UINT m_nTCRxFault;
USHORT m_nSysFaultNo;
UINT m_nCComRxOpCnt;


UINT m_nTrainSize = 0;		/* 메인통신으로 검색된 열차 편성수 */

SEM_ID m_semMainComTxID;	
SEM_ID m_semMainComRxID;
SEM_ID m_semUsComID;
SEM_ID m_semValByMCom;

UCHAR m_bTxMComTimeSet;		/* 시간설정을 메인통신으로 전송하는가? */
UCHAR m_bTxMComCarNumSet;	/* 차량번호 설정을 메인통신으로 전송하는가? */

UINT m_MCommValStack[MAX_MCOMMVAL];
UINT m_nMCommFront;
UINT m_nMCommRear;

UINT m_nMComTxByteSize;					/* 메인통신 TX 전송 크기 */
UINT m_nMComTxByteMaxSize;
USHORT m_nMComRxByteSize[MAX_TRAIN_SIZE];	/* 메인통신 RX BYTE 크기 */
USHORT m_nMComRxByteMaxSize[MAX_TRAIN_SIZE];

BOOL  m_bRecNewHead;
BOOL m_bRcWriteEnable;			/* 카드의 기록 여부 판단한다. */
TRSHEADTYPE m_TrsHead;



void tg_SetLocalData()
{
	/* AIU1 DO출력 데이터 */
}



/*********************************************************/
/*	메인통신 초기화                                      */
/*********************************************************/
void tg_MainCommInitialize()
{
	int i;
	/* 1) MASTER / SLAVE 를 결정한다.*/
	m_bMP = tg_GetInitialMaster();
	if(m_bMP) 
	{
		TRACE("Master Boot...\n");
		/*tg_OnMasterChanged();*/
	}
	else 
	{
		TRACE("Slave Boot...\n");
		/*tg_OnSlaveChanged();*/
	}

	/* 2) 10 회정도 선 전송한다. */
	for(i=0;i<30;i++)
	{
		tg_MasterSendComm(TRUE);
		taskDelay(MAIN_TXCOMM_PERIOD); /* 100ms */
	}

	/* 3) 수신한 통신을 검사한다. */

	/* 4) 수신한 데이터로 차량 편성을 구성한다. */
	m_nTrainSize = MIN(m_pDirectMem->nTrainSize,MAX_TRAIN_SIZE); /*tg_TrainSizeSearch();*/

	m_TcThis.nCarHo = HS_ISODD(m_TcThis.chHexaID) ? 0 : (MAX_TRAIN_SIZE-1);
	m_TcOppe.nCarHo = HS_ISODD(m_TcThis.chHexaID) ? (MAX_TRAIN_SIZE-1) : 0;

	m_TcThis.pCCInfo =  &m_CC_Info.RxInfo[m_TcThis.nCarHo];
	m_TcOppe.pCCInfo =  &m_CC_Info.RxInfo[m_TcOppe.nCarHo];

	
	m_TcThis.pCCInfo->Head.chHexaID[0] = MK_BYTE(BYTE_H(m_TcThis.chHexaID),TRTYPE_TC);
	m_TcOppe.pCCInfo->Head.chHexaID[0] = MK_BYTE(BYTE_H(m_TcOppe.chHexaID),TRTYPE_TC);
	m_TcThis.bCC_ComStarted[m_TcThis.nCarHo] = TRUE;
	m_TcThis.bCC_ComStarted[m_TcOppe.nCarHo] = TRUE;

	m_TcThis.pCCInfo->Head.Version[0].chTag = m_TcThis.ScmVer.chTag;
	m_TcThis.pCCInfo->Head.Version[0].chVerNum = m_TcThis.ScmVer.chVerNum;
}

/*********************************************************/
/*	TMS 기동                                             */
/*********************************************************/
void tg_Main()
{
	if(m_nMainCommTaskId) 
	{
		TRACE("tg_Main is running. aleady !!\n");
		return;
	}
	else
	{
		kernelTimeSlice(1);
		sysIntDisable();
		sysClkRateSet(1000); /* 1 tick 를 1/1000 초로 한다. */
		timeStart();

		tg_ArgInit();

		gp_PortOpen();

		tg_MainCommInitialize(); /* 최종 차량편성 구성 확인 */

		mx_CheckTgisIP();
		
		m_nMainCommTaskId = taskSpawn("uMCommTx",150,0,20000,tg_MainComm,0,0,0,0,0,0,0,0,0,0);
		m_nUSysCommTaskId = taskSpawn("uUsysCom",150,0,10000,tg_USysComm,0,0,0,0,0,0,0,0,0,0);

		/* 몇번 통신을 하여 데이터를 가지고 있을때 까지 기다린다. */
		taskDelay(2000);

		gp_Init(FALSE);

		wl_Init();

		
		m_nRecordTaskId = taskSpawn("xDrvRec",150,0,20000,tg_DrvRec,0,0,0,0,0,0,0,0,0,0);
		m_nDPRAM_ReadTaskId = taskSpawn("uMComRx",150,0,10000,tg_DPRAM_Info_Read,0,0,0,0,0,0,0,0,0,0);
		m_nFaultCheckTaskId = taskSpawn("xFaultCheck",170,0,10000,tg_FaultCheckLoop,0,0,0,0,0,0,0,0,0,0);
		m_nHisDistTaskId = taskSpawn("xHisRec",180,0,10000,tg_HisDistRec,0,0,0,0,0,0,0,0,0,0);
		m_nDPManagerTaskId = taskSpawn("xDPManage",150,0,10000,tg_SpeedReckon,0,0,0,0,0,0,0,0,0,0);
	}
}


/*********************************************************/
/*	초기화 루틴                                          */
/*********************************************************/
void tg_ArgInit()
{
	int nCarHo,nChannel,i;
	USHORT wTemp;

	gm_ArgInit();

	m_nMainLoopCnt = 0;
	m_nMComTxOpCnt = 0;

	m_nTrainSize = MAX_TRAIN_SIZE;

	m_semMainComTxID = semBCreate(SEM_Q_FIFO,SEM_FULL);
	m_semMainComRxID = semBCreate(SEM_Q_FIFO,SEM_FULL);
	m_semUsComID = semBCreate(SEM_Q_FIFO,SEM_FULL);
	m_semValByMCom = semBCreate(SEM_Q_FIFO,SEM_FULL);
	
	gm_CheckArgu();
	memset(&m_TcThis, 0, sizeof(TCTYPE));
	memset(&m_TcOppe, 0, sizeof(TCTYPE));

	m_TcThis.nForeverDist = m_pDirectMem->nForeverDist;

	m_pTcThis = &m_TcThis;
	m_pTcOppe = &m_TcOppe;
	memset(m_chMComRxBuf,0,sizeof(m_chMComRxBuf));

	m_TcThis.chHexaID = sm_GetHexaID(0);
	m_TcOppe.chHexaID = HS_ISODD(m_TcThis.chHexaID) ? 0x00 : 0x10;
	m_TcThis.nCarHo = HS_ISODD(m_TcThis.chHexaID) ? 0 : (MAX_TRAIN_SIZE-1);
	m_TcOppe.nCarHo = HS_ISODD(m_TcThis.chHexaID) ? (MAX_TRAIN_SIZE-1) : 0;

	m_TcThis.chMpuVer = SYSTEM_VER;

	/* 각 TC측의 CC의 데이터를 TC의 내부로 포함시킨다. */
	m_TcThis.pCCInfo =  &m_CC_Info.RxInfo[m_TcThis.nCarHo];
	m_TcOppe.pCCInfo =  &m_CC_Info.RxInfo[m_TcOppe.nCarHo];

	

	/* TC는 단말이 없으므로 ID를 직접 할당한다. */
	m_TcThis.pCCInfo->Head.chHexaID[0] = MK_BYTE(BYTE_H(m_TcThis.chHexaID),TRTYPE_TC);
	m_TcOppe.pCCInfo->Head.chHexaID[0] = MK_BYTE(BYTE_H(m_TcThis.chHexaID),TRTYPE_TC);
	wTemp = sm_GetTagVersion(0);
	m_TcThis.ScmVer.chTag = WORD_H(wTemp);
	m_TcThis.ScmVer.chVerNum = WORD_L(wTemp);

	m_TcThis.nForeverDist = m_pDirectMem->nForeverDist;

	m_pTc[1]  =  HS_ISODD(m_TcThis.chHexaID) ? &m_TcThis : &m_TcOppe;
	m_pTc[0] = !HS_ISODD(m_TcThis.chHexaID) ? &m_TcThis : &m_TcOppe;
	m_pTcHcr = m_pTcThis;
	m_pTcTcr = m_pTcOppe;

	m_bTxMComCarNumSet = FALSE;
	m_nTCRxFault = 0;
	memset(m_nCCRxFault,0,sizeof(m_nCCRxFault));
	m_nSysFaultNo = 0;

	

	memset(&m_CC_Info,0,sizeof(m_CC_Info));

	for(nChannel=0;nChannel<MAX_UCOM_CHANNEL;nChannel++)
	{
		m_TcThis.USysTx[nChannel].Head.chSysCode = nChannel; /* 시스템 코드와 채널 번호는 일치한다. */
		m_TcThis.USysTx[nChannel].Body.nSize=0;
	}

	for(nChannel=0;nChannel<MAX_LCOM_CHANNEL;nChannel++)
	{
		m_CC_Info.TxInfo.pLSysTx[nChannel] = malloc(sizeof(LSYSTXCOMTYPE));
		memset(m_CC_Info.TxInfo.pLSysTx[nChannel],0,sizeof(LSYSTXCOMTYPE));
		
		for(nCarHo=0;nCarHo<MAX_TRAIN_SIZE;nCarHo++)
		{
			m_CC_Info.RxInfo[nCarHo].pLSysRx[nChannel] = malloc(sizeof(LSYSRXCOMTYPE));
			memset(m_CC_Info.RxInfo[nCarHo].pLSysRx[nChannel],0,sizeof(LSYSRXCOMTYPE));
		}
		m_CC_Info.TxInfo.pLSysTx[nChannel]->Head.chSysCode = nChannel; /* 시스템 코드와 채널 번호는 일치한다.*/
	}

	m_TcThis.sFlag.wMComImpectNo = 0;
	m_nCComRxOpCnt = 0;

	m_nMCommFront = m_nMCommRear = 0;
	memset(m_MCommValStack,0,sizeof(m_MCommValStack));

	m_TcThis.logSiv.wBlockSize = TDB_SIZE_SIV*(TDB_MAX_SIV+2);
	m_TcThis.logSiv.chRxTraceData = malloc(m_TcThis.logSiv.wBlockSize);
	memset(m_TcThis.logSiv.chRxTraceData,0,m_TcThis.logSiv.wBlockSize);

	m_TcThis.logBrake.wBlockSize = TDB_SIZE_ECU*(TDB_MAX_ECU+2);
	m_TcThis.logBrake.chRxTraceData = malloc(m_TcThis.logBrake.wBlockSize);
	memset(m_TcThis.logBrake.chRxTraceData,0,m_TcThis.logBrake.wBlockSize);

	m_bRecNewHead = 0;
	m_bRcWriteEnable = TRUE;
	m_bOldOppeSysFault = 0;

	m_nMComTxByteSize = 0;
	m_nMComTxByteMaxSize = 0;
	memset(m_nMComRxByteSize,0,sizeof(m_nMComRxByteSize));
	memset(m_nMComRxByteMaxSize,0,sizeof(m_nMComRxByteMaxSize));
	memset(&m_xMoment,0,sizeof(m_xMoment));


	
}

void tg_TxMComTimeSet()
{
	m_bTxMComTimeSet = TRUE;
}

void tg_TxMComCarNumSet(UCHAR bSet)
{
	m_bTxMComCarNumSet = bSet;
}

/*********************************************************/
/*	TMS 중지                                             */
/*********************************************************/
void tg_close()
{
	int nChannel,i,nCarHo;
	if(m_nMainCommTaskId)
	{
		

		if(taskIdVerify(m_nMainCommTaskId) == OK) taskDelete(m_nMainCommTaskId);
		if(taskIdVerify(m_nDPRAM_ReadTaskId) == OK) taskDelete(m_nDPRAM_ReadTaskId);
		if(taskIdVerify(m_nUSysCommTaskId) == OK) taskDelete(m_nUSysCommTaskId);
		if(taskIdVerify(m_nRecordTaskId) == OK) taskDelete(m_nRecordTaskId);
		if(taskIdVerify(m_nFaultCheckTaskId) == OK) taskDelete(m_nFaultCheckTaskId);
		if(taskIdVerify(m_nHisDistTaskId) == OK) taskDelete(m_nHisDistTaskId);
		if(taskIdVerify(m_nDPManagerTaskId) == OK) taskDelete(m_nDPManagerTaskId);
		

		semDelete(m_semMainComTxID);
		semDelete(m_semMainComRxID);
		semDelete(m_semUsComID);

		for(nChannel=0;nChannel<MAX_LCOM_CHANNEL;nChannel++)
		{
			for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)
			{
				if(m_CC_Info.RxInfo[nCarHo].pLSysRx[nChannel]) 
				{
					free(m_CC_Info.RxInfo[nCarHo].pLSysRx[nChannel]);
					m_CC_Info.RxInfo[nCarHo].pLSysRx[nChannel] = NULL;
				}
			}
		}

		if(m_TcThis.logSiv.chRxTraceData) 
		{
			free(m_TcThis.logSiv.chRxTraceData);
			m_TcThis.logSiv.chRxTraceData = NULL;
		}

		if(m_TcThis.logBrake.chRxTraceData) 
		{
			free(m_TcThis.logBrake.chRxTraceData);
			m_TcThis.logBrake.chRxTraceData = NULL;
		}

		m_nMainCommTaskId = 0;
		m_nDPRAM_ReadTaskId = 0;

		gp_Close();
	}
	else
	{
		TRACE("be closed alredy !!\n");
	}
}

void tg_SetChgValByMComm(int nSetV)
{
	if((m_nMCommFront+1)%MAX_MCOMMVAL != m_nMCommRear)
	{
		semTake(m_semValByMCom,WAIT_FOREVER);
		m_MCommValStack[m_nMCommFront] = nSetV;
		m_nMCommFront = (m_nMCommFront+1)%MAX_MCOMMVAL;
		semGive(m_semValByMCom);
	}
}

void tg_SetChgValByMCommSub(int nSetV,int nDelayTick)
{
	taskDelay(nDelayTick);
	tg_SetChgValByMComm(nSetV);
}

void tg_SetChgValByMCommDelay(int nSetV,int nDelayTick)
{
	taskSpawn("xSetChgVal",150,0,10000,tg_SetChgValByMCommSub,nSetV,nDelayTick,0,0,0,0,0,0,0,0);
}

int tg_GetChgValByMComm()
{
	int nRet;
	if(m_nMCommRear == m_nMCommFront) return 0;
	nRet = m_MCommValStack[m_nMCommRear];
	m_nMCommRear = (m_nMCommRear+1)%MAX_MCOMMVAL;
	return nRet;
}


/*********************************************************/
/*	Master인지를 체크                                    */
/*********************************************************/
BOOL tg_IsMaster()
{
	return (m_bMP&MPB_MASTER);
}

int tg_GetMasterCarHo()
{
	return tg_IsMaster() ? m_TcThis.nCarHo : m_TcOppe.nCarHo;
}

int tg_GetHcrCarHo()
{
	if( ((PCCDITYPE)m_TcThis.pCCInfo->Head.ccDi)->HCR ) m_TcThis.nCarHo;
	else if( ((PCCDITYPE)m_TcOppe.pCCInfo->Head.ccDi)->HCR ) m_TcOppe.nCarHo;
	else tg_GetMasterCarHo();
}

/*********************************************************/
/*	Master 요청 신호                                     */
/*********************************************************/
void tg_SetMaster()
{

	if(!(m_bMP&(MPB_MASTER|MPB_PERMIT)))
	{
		m_bMP = MPB_PERMIT;
		m_nSlavePermitCnt = 10;
		TRACE("Master Request Send...\n");
	}

}

/*********************************************************/
/*	Slave 요청 신호                                      */
/*	- 상대편에 Master를 취하라고 보낸다.                 */
/*********************************************************/
void tg_SetSlave()
{
	if(m_bMP&MPB_MASTER) 
	{
		TRACE("=> Slave Request Send...\n");
		tg_SetChgValByMComm(MC_SETMASTER);
	}
}



void tg_ChangeTrainSize()
{
	int wCurScreenNo = m_TcThis.wCurScrNo;
	/* 화면 블록킹 */
	gp_ScreenChangeAp(SCRNO_CHANGEFORM);
	m_nTrainSize = m_pDirectMem->nTrainSize;
	taskDelay(2000);
	gp_ScreenChangeAp(wCurScreenNo);
}

void tg_MaxTriggerClear()
{
	memset(m_TcThis.nCC_ComFaultMaxCnt,0,sizeof(m_TcThis.nCC_ComFaultMaxCnt));
	m_TcThis.nTC_ComFaultMaxCnt = 0;
	m_TcOppe.nTC_ComFaultMaxCnt = 0;

	m_nMComTxByteMaxSize = 0;
	memset(m_nMComRxByteMaxSize,0,sizeof(m_nMComRxByteMaxSize));
}

void tg_TrsFaultTigger(USHORT wFltIndex,USHORT wCarHo)
{
	DATE_TIME_TYPE sTime;
	timeGet(&sTime);

	m_TrsHead.Data_Type = REC_STT_DATATYPE;

	m_TrsHead.date[0] = sTime.year;
	m_TrsHead.date[1] = sTime.month;
	m_TrsHead.date[2] = sTime.day;
	m_TrsHead.time[0] = sTime.hour;
	m_TrsHead.time[1] = sTime.minute;
	m_TrsHead.time[2] = sTime.second;
	m_TrsHead.wSpare1 = 0;
	m_TrsHead.car_id = wCarHo;

	m_TrsHead.station_code = op_GetCurStCode();
	m_TrsHead.fault_index = wFltIndex;
	m_TrsHead.distance = op_GetDistance();
	m_TrsHead.wCarNumber = op_GetCarNumber(m_TcThis.nCarHo);
	
	tg_SetChgValByMComm(MC_MAJORFAULTDETECT); 
}

/* 동작코드 처리 루프                         */
/* tg_RxMainCmdEvent() 와 내용이 같아야 한다. */
/* chMcData[20] 를 주의 하여야 한다.          */
USHORT tg_TxMainCmdEvent(LPBYTE chMcData)
{
	int i=0;
	UINT nValue;
	USHORT wValue;
	USHORT wMcCode = tg_GetChgValByMComm();
	switch(wMcCode)
	{
	case MC_VER_REQ:
		break;
	case MC_VER_DATA:
		i=0;
		chMcData[i++] = m_TcThis.chMpuVer;
		chMcData[i++] = m_TcThis.chScreenVer;
		chMcData[i++] = m_TcThis.chMiuCpldVer;
		i += gm_memcpy(chMcData+i,&m_TcThis.ScmVer,sizeof(m_TcThis.ScmVer));

		break;
	case MC_SETMASTER:
		break;
	case MC_TIMESET:
		gm_GetSystemTime((PSYSTIMETYPE)chMcData);
		gm_ShowSystemTime(chMcData,"TX TIME:");
		break;
	case MC_MAXTRIGCLEAR:
		tg_MaxTriggerClear();
		break;
	case MC_SETWHEELDIA:
		gm_memcpy(chMcData,m_pDirectMem->wCarWheelDia,sizeof(m_pDirectMem->wCarWheelDia));
		break;
	case MC_SETTHISDIST:
		nValue = m_TcThis.nForeverDist;
		chMcData[ 0] = DWORD_HH(nValue);
		chMcData[ 1] = DWORD_HL(nValue);
		chMcData[ 2] = DWORD_LH(nValue);
		chMcData[ 3] = DWORD_LL(nValue);
		break;
	case MC_SETOPPEDIST:
		nValue = m_TcOppe.nForeverDist;
		chMcData[ 0] = DWORD_HH(nValue);
		chMcData[ 1] = DWORD_HL(nValue);
		chMcData[ 2] = DWORD_LH(nValue);
		chMcData[ 3] = DWORD_LL(nValue);
		break;
	case MC_SETFORMNUMBER:
		wValue = m_pDirectMem->wFormNumber;
		chMcData[ 0] = WORD_H(wValue);
		chMcData[ 1] = WORD_L(wValue);
		mx_CheckTgisIP();
		break;
	case MC_SETPSSWEIGHT:
		wValue = m_pDirectMem->wPassengerWeight;
		chMcData[ 0] = WORD_H(wValue);
		chMcData[ 1] = WORD_L(wValue);
		break;
	case MC_SETTRAINSIZE:
		chMcData[ 0] = (BYTE)m_pDirectMem->nTrainSize;
		if(m_nTrainSize != m_pDirectMem->nTrainSize) tg_ChangeTrainSize();
		mx_CheckTgisIP();
		break;
	case MC_MAJORFAULTDETECT:
		memcpy(chMcData,&m_TrsHead,sizeof(TRSHEADTYPE));
		gw_TriggerTrs(&m_TrsHead);
		break;
	}

	return wMcCode;
}

/* 동작코드 처리 루프   chMcData[30]          */
/* 중앙장치 3곳 모두 수신되어진다.            */
/* tg_TxMainCmdEvent() 와 내용이 같아야 한다. */
void tg_RxMainCmdEvent(USHORT wMcCode,BYTE chMcData[])
{
	USHORT wTemp;
	BYTE chTemp;
	BOOL bRxLeftTrain,bRxMixedCoupled;
	int i;


	if(wMcCode) TRACE("MC_CODE[%d] Received...\n",wMcCode);
	switch(wMcCode)
	{
	case MC_VER_REQ:
		tg_SetChgValByMComm(MC_VER_DATA);
		break;
	case MC_VER_DATA:
		i=0;
		m_TcOppe.chMpuVer = chMcData[i++];
		m_TcOppe.chScreenVer = chMcData[i++];
		m_TcOppe.chMiuCpldVer = chMcData[i++];
		i += gm_memcpy(&m_TcOppe.ScmVer,chMcData+i,sizeof(m_TcThis.ScmVer));
		m_TcOppe.pCCInfo->Head.Version[0].chTag = m_TcOppe.ScmVer.chTag;
		m_TcOppe.pCCInfo->Head.Version[0].chVerNum = m_TcOppe.ScmVer.chVerNum;
		break;
	case MC_SETMASTER:
		tg_SetMaster();
		break;
	case MC_TIMESET:
		gm_SetSystemTime((PSYSTIMETYPE)chMcData);
		gm_ShowSystemTime(chMcData,"RX TIME:");
		break;
	case MC_MAXTRIGCLEAR:
		tg_MaxTriggerClear();
		break;
	case MC_SETWHEELDIA:
		gm_memcpy(m_pDirectMem->wCarWheelDia,chMcData,sizeof(m_pDirectMem->wCarWheelDia));
		break;
	case MC_SETTHISDIST:
		m_TcOppe.nForeverDist = MAKE_DWORD(chMcData[ 0],chMcData[ 1],chMcData[ 2],chMcData[ 3]);
		break;
	case MC_SETOPPEDIST:
		m_TcThis.nForeverDist = MAKE_DWORD(chMcData[ 0],chMcData[ 1],chMcData[ 2],chMcData[ 3]);
		m_pDirectMem->nForeverDist = m_TcThis.nForeverDist;
		break;
	case MC_SETFORMNUMBER:
		m_pDirectMem->wFormNumber		= MAKE_WORD(chMcData[0],chMcData[1]);
		mx_CheckTgisIP();
		break;
	case MC_SETPSSWEIGHT:
		m_pDirectMem->wPassengerWeight	= MAKE_WORD(chMcData[0],chMcData[1]);
		break;
	case MC_SETTRAINSIZE:
		m_pDirectMem->nTrainSize = chMcData[ 0];
		if(m_nTrainSize != m_pDirectMem->nTrainSize) tg_ChangeTrainSize();
		mx_CheckTgisIP();
		break;
	case MC_MAJORFAULTDETECT:
		/*
		memcpy(&m_TrsHead,chMcData,sizeof(TRSHEADTYPE));
		gw_TriggerTrs(&m_TrsHead);
		*/
		break;
	}
}

/*********************************************************************************************/
/* 중앙장치 수신용 정보                                                                      */
/* - tg_SetTCTxCMemoy() 와 형식이 같아야 한다.                                               */
/*********************************************************************************************/
BYTE tg_GetTCRxCMemoy(PTCTYPE pTcType,LPBYTE pBuf)
{
	BYTE nRxSize = 0;
	PMAINCOMHEAD pRxTcHead;
	PMAINCOMTCBODY pRxTcBody;
	PLSYSRXCOMTYPE pUSysRxType;
	BYTE chBuffer[600];
	PUSCOMRXTXTYPE pUsComRx = (PUSCOMRXTXTYPE)chBuffer;
	PLSYSRXCOMTYPE	pLSysRx;
	int nChannel,i;
	BYTE chRxChannel;

	pRxTcHead = (PMAINCOMHEAD)pBuf;
	/**************************************** TC HEAD ****************************************/
	nRxSize += sizeof(MAINCOMHEAD);
	/**************************************** TC BODY ****************************************/
	switch(pRxTcHead->ICode)
	{
	case 1: /* 상시 통신용 */
		pRxTcBody = (PMAINCOMTCBODY)&pBuf[nRxSize];
		memcpy(&m_TcOppe.tcDi,pRxTcBody->tcDi,sizeof(pRxTcBody->tcDi));
		memcpy(&m_TcOppe.pCCInfo->Head.ccDi,pRxTcBody->ccDi,sizeof(pRxTcBody->ccDi));

		m_TcOppe.sFlag.bDownloadStarted = pRxTcBody->bDownloadStarted;
		m_TcOppe.sFlag.bAutoDownFail = pRxTcBody->bAutoDownFail;
		
		for(nChannel=0;nChannel<MAX_UCOM_CHANNEL;nChannel++)
		{
			m_TcOppe.USysRx[nChannel].Head.bComFault = (pRxTcBody->wTcUComFault & (1<<nChannel) ) ? TRUE : FALSE;
			m_TcOppe.USysRx[nChannel].Head.bComStarted = (pRxTcBody->wTcUComStarted & (1<<nChannel)) ? TRUE : FALSE;
			m_TcOppe.USysRx[nChannel].Head.wComFaultCnt = pRxTcBody->wComFaultCnt[nChannel];
			
			m_TcOppe.pCCInfo->pLSysRx[nChannel]->Head.bComFault = m_TcOppe.USysRx[nChannel].Head.bComFault;
			/*m_TcOppe.pCCInfo->pLSysRx[nChannel]->Head.bComStarted = m_TcOppe.USysRx[nChannel].Head.bComStarted;*/
			m_TcOppe.pCCInfo->pLSysRx[nChannel]->Head.wComFaultCnt = m_TcOppe.USysRx[nChannel].Head.wComFaultCnt;
		}
		tg_RxMainCmdEvent(pRxTcBody->wMainCmdCode,pRxTcBody->chMainCmdData);

		nRxSize += sizeof(MAINCOMTCBODY);

		/* 하부장치 통신용 채널데이터 */
		pUSysRxType = (PLSYSRXCOMTYPE)pRxTcBody->pLSysBlock;

		for(i=0;i<MAX_UCOM_CHANNEL;i++)
		{
			if(pUSysRxType->chChannel == 0xFF) break;
			chRxChannel = pUSysRxType->chChannel;
			memcpy(&m_TcOppe.USysRx[chRxChannel].Head,&pUSysRxType->Head,sizeof(LCOMRXHEADTYPE));
			m_TcOppe.USysRx[chRxChannel].Body.nSize = pUSysRxType->Body.nSize;
			memcpy(m_TcOppe.USysRx[chRxChannel].Body.chDataPack,pUSysRxType->Body.chDataPack,pUSysRxType->Body.nSize);
			nRxSize += sizeof(LCOMRXHEADTYPE) + (sizeof(pUSysRxType->Body.nSize)+pUSysRxType->Body.nSize);
			
			pUSysRxType = (PLSYSRXCOMTYPE)(pUSysRxType->Body.chDataPack + pUSysRxType->Body.nSize);

			/* CC 인자에 복사하여 넣는다. */
			memcpy(pUsComRx->chDataBlock,m_TcOppe.USysRx[chRxChannel].Body.chDataPack,m_TcOppe.USysRx[chRxChannel].Body.nSize);
			pUsComRx->Head.chLen = m_TcOppe.USysRx[chRxChannel].Body.nSize;
			pUsComRx->Head.chChannel = chRxChannel+1;
			pUsComRx->Head.chCycle = 0;
			pUsComRx->Head.chEvent = 1;
			pUsComRx->Head.chSubChannel = LSYSID_NONE;

			tg_CCRxCheckUpdate(m_TcOppe.nCarHo,chRxChannel,pUsComRx);

			/*
			memcpy(&m_TcOppe.pCCInfo->pLSysRx[chRxChannel]->Head,&m_TcOppe.USysRx[chRxChannel].Head,sizeof(LCOMRXHEADTYPE));
			m_TcOppe.pCCInfo->pLSysRx[chRxChannel]->Body.nSize = m_TcOppe.USysRx[chRxChannel].Body.nSize;
			memcpy(m_TcOppe.pCCInfo->pLSysRx[chRxChannel]->Body.chDataPack,m_TcOppe.USysRx[chRxChannel].Body.chDataPack,m_TcOppe.USysRx[chRxChannel].Body.nSize);
			*/

		}

		break;
	case 2:
		break;
	case 198:	/* 데이터 전송 대기 모드 진입 (Middle TC 에서는 다운로드 하지 않는다.)*/

		tg_BeginRxAccess();
		
		sm_FirmwareMComRx_DataMode();
		
		tg_EndRxAccess();

		break;
	case 199:	/* 데니터 정송 대기 모드 종료 */
	case 200:	/* 다운로드용 */
	case 201:
	case 202:
	case 203:
		break;
	default:
		break;
	}


	
	return 0;
}



void tg_PushLSysTraceData(BYTE nLSysID,PTRACEFALG pLogFlag,LPBYTE chTraceBlock,int nBlockSize,BYTE chMaxBlockNo)
{
	BOOL bPushData = FALSE;
	UINT nOffset;
	if((pLogFlag->wOldRxTraceBlock != pLogFlag->wRxTraceBlock))
	{
		pLogFlag->wOldRxTraceBlock = pLogFlag->wRxTraceBlock;
		if(pLogFlag->wRxTraceBlock == 0xFF) bPushData = TRUE;
		else
		{
			nOffset = (pLogFlag->wRxTraceBlock * nBlockSize);
			if(nOffset < (UINT)pLogFlag->wBlockSize)
			{
				if(!pLogFlag->wRxTraceBlock)  pLogFlag->bBlockRxStarted = TRUE;

				if(pLogFlag->bBlockRxStarted)
				{
					memcpy(pLogFlag->chRxTraceData + nOffset,chTraceBlock,nBlockSize);
					TRACE("=> %s[%d] TRACE DATA Logging....%d/%d.  \n",m_szLSysNameCC[nLSysID],pLogFlag->chTxReqCarHo,pLogFlag->wRxTraceBlock,chMaxBlockNo);
					if(pLogFlag->wRxTraceBlock == chMaxBlockNo) bPushData = TRUE;
				}
			}
			else
			{
				TRACE("=> %s[%d] OVERBLOCK %d/%d....\n",m_szLSysNameCC[nLSysID],pLogFlag->chTxReqCarHo,pLogFlag->wRxTraceBlock,chMaxBlockNo);
			}
		}

		if(bPushData && pLogFlag->bBlockRxStarted)
		{
			
			if(tg_IsMaster()) 
			{
				TRACE("=> %s[%d] TRACE DATA PUSHING....\n",m_szLSysNameCC[nLSysID],pLogFlag->chTxReqCarHo);
				gw_PushTraceBody(nLSysID,pLogFlag->chTxReqCarHo,pLogFlag->chRxTraceData);
			}
			pLogFlag->bBlockRxStarted = FALSE;

		}
	}

	pLogFlag->bRxUpdated = TRUE;

}

/* 추적기록일 경우 추적기록를 빼서 저장하고 TRUE를 리턴한다. */
/* Master 측의 요구와 상관없이 무조건 쌓아 놓는다. 하지만 Slave 측은 저장하지 않는다. */
BOOL tg_GetLSysLoggerData(int nCarHo,BYTE chChannel,PUSCOMRXTXTYPE pUsComRx)
{
	int nRxSize = pUsComRx->Head.chLen;
	PSIVTDTYPE pSivTD;
	PBRAKETDTYPE pBrakeTD;

	switch(chChannel)
	{
	case LSYSID_SIV:
		pSivTD = (PSIVTDTYPE)pUsComRx->chDataBlock;
		if(pSivTD->chDataType == 0x21)
		{
			if(tg_IsMaster())
			{
				if(m_TcThis.logSiv.chTxReqCarHo != (BYTE)nCarHo) TRACE("=> Trace Req. CarHo is not...\n");
			}
			else m_TcThis.logSiv.chTxReqCarHo = (BYTE)nCarHo;

			m_TcThis.logSiv.wRxTraceBlock = MK_WORD(pSivTD->chBlock_H,pSivTD->chBlock_L);
			tg_PushLSysTraceData(chChannel,&m_TcThis.logSiv,pSivTD->chDataBlock,TDB_SIZE_SIV,TDB_MAX_SIV);
			return TRUE;
		}
		else if(pSivTD->chDataType == 0x22 || pSivTD->chDataType == 0x23 || pSivTD->chDataType == 0x24) /* TEST PROTOCOL */
		{
			m_TcThis.xSivTest.chRxSize[nCarHo] = pUsComRx->Head.chLen;
			memcpy(m_TcThis.xSivTest.chRxTestData[nCarHo],pUsComRx->chDataBlock,pUsComRx->Head.chLen);
			m_TcThis.xSivTest.wRxUpdated |= (1<<nCarHo);
		}
		
		break;
	case LSYSID_BRAKE:
		pBrakeTD = (PBRAKETDTYPE)pUsComRx->chDataBlock;
		if(pBrakeTD->chDataType == 0x21)
		{
			if(tg_IsMaster())
			{
				if(m_TcThis.logBrake.chTxReqCarHo != (BYTE)nCarHo) TRACE("=> Trace Req. CarHo is not...\n");
			}
			else m_TcThis.logBrake.chTxReqCarHo = (BYTE)nCarHo;

			m_TcThis.logBrake.wRxTraceBlock = pBrakeTD->chBlockNo;
			tg_PushLSysTraceData(chChannel,&m_TcThis.logBrake,pBrakeTD->chDataBlock,TDB_SIZE_ECU,TDB_MAX_ECU);
			return TRUE;
		}
		break;
	}
	return FALSE;
}

void tg_BeginFirmwareDownload()
{
	int i;
	
	m_TcThis.sFlag.bDownloadStarted = TRUE;

	tg_BeginRxAccess();
	tg_BeginTxAccess();
	
	tg_BeginUsComAccess();

	for(i=0;i<5;i++)
	{
		taskDelay(100);
		sm_FirmwareSpComActive_DataMode(TRUE);
		sm_FirmwareMComActive_DataMode(TRUE);
		
	}
	taskDelay(100);
}

void tg_EndFirmwareDownload()
{
	int i;
	for(i=0;i<5;i++)
	{
		taskDelay(100);
		sm_FirmwareMComActive_DataMode(FALSE);
		sm_FirmwareSpComActive_DataMode(FALSE);
	}
	taskDelay(100);

	tg_EndUsComAccess();
	
	tg_EndTxAccess();
	tg_EndRxAccess();

	m_TcThis.sFlag.bDownloadStarted = FALSE;
}
/*********************************************************************************************/
/* 중앙장치 전송용 정보                                                                      */
/* - tg_GetTCRxCMemoy() 와 형식이 같아야 한다.                                               */
/*********************************************************************************************/
BYTE tg_SetTCTxCMemoy(LPBYTE pBuf)
{
	BYTE nTxSize = 0;
	PMAINCOMHEAD pTxTcHead;
	PMAINCOMTCBODY pTxTcBody;
	PLSYSRXCOMTYPE pUSysRxType;
	int nChannel;
	BYTE chTxChannel;

	pTxTcHead = (PMAINCOMHEAD)pBuf;

	gm_GetSystemTime(&m_TcThis.sFlag.systime);
	

	/**************************************** TC HEAD ****************************************/
	/* MASTER/SLAVE 정보코드 */
	pTxTcHead->bMaster = (m_bMP&MPB_MASTER) ? TRUE : FALSE;
	pTxTcHead->bPermit = (m_bMP&MPB_PERMIT) ? TRUE : FALSE;
	if(pTxTcHead->bPermit) TRACE("Permit Request..\n");

	m_TcThis.sFlag.bMComMaster = (m_bMP&MPB_MASTER) ? TRUE : FALSE;

	/* 자차 시간정보 */
	memcpy(&pTxTcHead->systime,&m_TcThis.sFlag.systime,sizeof(SYSTIMETYPE));

	/* FLAG 정보 */
	if(!m_nMComTxOpCnt && !tg_IsMaster()) pTxTcHead->bSlaveStarted = TRUE;
	pTxTcHead->bSetCarNum = m_TcThis.sFlag.bTxMComCarNumSet;
	
	pTxTcHead->ICode = 1;	/* 중앙장치 정보코드 */
	pTxTcHead->nCmdCode = 0;

	if(ISRANGE(m_TcOppe.sFlag.nMComAliveCounter,30,35)) pTxTcHead->ICode = 2;	

	nTxSize += sizeof(MAINCOMHEAD);
	
	/**************************************** TC BODY ****************************************/
	switch(pTxTcHead->ICode)
	{
	case 1: /* 상시 통신용 */
		pTxTcBody = (PMAINCOMTCBODY)&pBuf[nTxSize];

		memcpy(pTxTcBody->tcDi,&m_TcThis.tcDi,sizeof(pTxTcBody->tcDi));
		memcpy(pTxTcBody->ccDi,&m_TcThis.pCCInfo->Head.ccDi,sizeof(pTxTcBody->ccDi));

		pTxTcBody->bDownloadStarted = m_TcThis.sFlag.bDownloadStarted;
		pTxTcBody->bAutoDownFail = m_TcThis.sFlag.bAutoDownFail;

		for(nChannel=0;nChannel<MAX_UCOM_CHANNEL;nChannel++)
		{
			pTxTcBody->wTcUComFault = m_TcThis.USysRx[nChannel].Head.bComFault ? (1<<nChannel) : 0;
			pTxTcBody->wTcUComStarted = m_TcThis.USysRx[nChannel].Head.bComStarted ? (1<<nChannel) : 0;
			pTxTcBody->wComFaultCnt[nChannel] = m_TcThis.USysRx[nChannel].Head.wComFaultCnt;
		}

		pTxTcBody->wMainCmdCode = tg_TxMainCmdEvent(pTxTcBody->chMainCmdData);

		nTxSize += sizeof(MAINCOMTCBODY);

		/* 하부장치 통신용 채널데이터 */
		pUSysRxType = (PLSYSRXCOMTYPE)pTxTcBody->pLSysBlock;

		for(nChannel=0;nChannel<MAX_UCOM_CHANNEL;nChannel++)
		{
			if(m_TcThis.sFlag.bUSysMTxUpdate[nChannel])
			{
				chTxChannel = nChannel;
				pUSysRxType->chChannel = nChannel;
				memcpy(&pUSysRxType->Head,&m_TcThis.USysRx[chTxChannel].Head,sizeof(LCOMRXHEADTYPE));
				memcpy(pUSysRxType->Body.chDataPack,m_TcThis.USysRx[chTxChannel].Body.chDataPack,m_TcThis.USysRx[chTxChannel].Body.nSize);
				pUSysRxType->Body.nSize = m_TcThis.USysRx[chTxChannel].Body.nSize;
				nTxSize += sizeof(LCOMRXHEADTYPE) + (sizeof(pUSysRxType->Body.nSize)+pUSysRxType->Body.nSize);
				pUSysRxType = (PLSYSRXCOMTYPE)(pUSysRxType->Body.chDataPack + pUSysRxType->Body.nSize);

				m_TcThis.sFlag.bUSysMTxUpdate[nChannel]=FALSE;
			}
		}
		pUSysRxType->chChannel = 0xFF;
		nTxSize += 1;
		
		break;
	case 2: /* 초기 설정 용 */

		break;
	case 3:	/* 설정정보용 메모리 */
		break;
	case 200:	/* 다운로드용 */
	case 201:
	case 202:
	case 203:
		break;
	default:
		break;
	}
	return nTxSize;

}

/************************************************************/
/* 반대편 TC에서 CC로 전송한 데이터 내용					*/
/* tg_SetCCTxCMemoy()의 내용과 일치하여야 한다.				*/
/* 통신채널에 대하여 Slave의 경우 반대측 내용의 Update 한다.*/
/************************************************************/
int tg_GetMComCcData(LPBYTE pBuf)
{
	static UINT nCCRxCounter;
	PMCOMCCTXBODYTYPE pTxCcInfo = (PMCOMCCTXBODYTYPE)pBuf;
	PUSCOMRXTXTYPE	pUsComTx;
	PLSYSTXCOMTYPE  pLSysTx;
	BYTE chChannel;
	int nRxSize=0,nCarHo,i;

	if(tg_IsMaster()) return;

	if(pTxCcInfo->chOpCode == 10)
	{
		/* CC에 대한 출력을 처리한다. */
	}

	nRxSize += sizeof(MCOMCCTXBODYTYPE);

	pUsComTx = (PUSCOMRXTXTYPE)pTxCcInfo->chUsComTxBlock;

	while(!pUsComTx->Head.chChannel || pUsComTx->Head.chChannel != 0xFF)
	{
		if(pUsComTx->Head.chLen)
		{
			
			if( pUsComTx->Head.wApplyCarHo & (1<<m_TcThis.nCarHo) )
			{
				if(pUsComTx->Head.chChannel < MAX_UCOM_CHANNEL)
				{
					chChannel = pUsComTx->Head.chChannel-1;
					m_TcThis.USysTx[chChannel].Body.nSize = pUsComTx->Head.chLen;
					memcpy(m_TcThis.USysTx[chChannel].Body.chDataPack,pUsComTx->chDataBlock,pUsComTx->Head.chLen);

					m_TcThis.USysTx[chChannel].Head.bTxSended = TRUE;
					m_TcThis.USysTx[chChannel].Head.bSendData = TRUE;

					tg_USComTxLoop(chChannel);

				}
			}
		}

		nRxSize += sizeof(USCOMRXTXHEADTYPE);

		pUsComTx = (PUSCOMRXTXTYPE)(pUsComTx->chDataBlock+pUsComTx->Head.chLen);
	}

	nCCRxCounter++;

	return 0;
}

BOOL tg_UpdateCCxLSysProtocol(PUSCOMRXTXTYPE pUsComTx,BYTE chChannel,USHORT wMaskApplyCarHo)
{
	PLSYSTXCOMTYPE pLSysTx = m_CC_Info.TxInfo.pLSysTx[chChannel];	
	if(pLSysTx->Body.nSize)
	{
		if(pLSysTx->Head.bSendData)
		{
			pUsComTx->Head.chLen = 0;
			pUsComTx->Head.chEvent = 1;
			pUsComTx->Head.chCycle = 0;
			pUsComTx->Head.wApplyCarHo = pLSysTx->Head.wApplyCarHo&(~wMaskApplyCarHo);
			pLSysTx->Head.wAppliedCarHo |= pUsComTx->Head.wApplyCarHo;
			
			pUsComTx->Head.chLen = pLSysTx->Body.nSize;
			memcpy(pUsComTx->chDataBlock,pLSysTx->Body.chDataPack,pUsComTx->Head.chLen);
			
			pUsComTx->Head.chChannel = chChannel+1;
			pUsComTx->Head.chSubChannel = (pLSysTx->Head.chSubChannel==LSYSID_NONE ? LSYSID_NONE : pLSysTx->Head.chSubChannel+1);
			
			pLSysTx->Head.bTxSended = TRUE;
			
			pLSysTx->Head.nSeqCnt++;
			
			pLSysTx->Head.bSendData = FALSE;

			return TRUE;
		}
	}

	return FALSE;
}

/**********************************************************/
/* 각 차량에 송신데이터를 보낸다.                         */
/* 수신은 tg_GetCCRxCMemory()로 받는다.                   */
/**********************************************************/
int tg_SetCCTxCMemoy(LPBYTE pBuf)
{
	PMCOMCCTXBODYTYPE pTxCcInfo = (PMCOMCCTXBODYTYPE)pBuf;
	PUSCOMRXTXTYPE	pUsComTx;
	
	BYTE chChannel;
	int nTxSize=0,nCarHo,i;
	USHORT wTdrApplyCarHo=0;
	
	pTxCcInfo->chOpCode = 10;


	nTxSize += sizeof(MCOMCCTXBODYTYPE);


	pUsComTx = (PUSCOMRXTXTYPE)pTxCcInfo->chUsComTxBlock;


	pUsComTx->Head.chChannel = LSYSID_NONE;
	pUsComTx->Head.chSubChannel = LSYSID_NONE;

	nTxSize += sizeof(USCOMRXTXHEADTYPE);

	/* 프로토콜 전송전 편성 전체장치의 추적기록에 대한 FLAG 들을 CHECK 한다. */
	op_LoggerCheckLSysFlags();

	op_InitialLSysProtocol();

	/* 하부장치의 통신 내용을 보낸다. */
	for(chChannel=0;chChannel<MAX_LCOM_CHANNEL;chChannel++)
	{
		wTdrApplyCarHo = 0;
		/* TDR DATA 전송 */
		if(!m_TcThis.sFlag.bOnTest)
		{
			wTdrApplyCarHo = op_LoggerMakeLSysProtocol(chChannel);
			op_CheckUSysProtocol(chChannel);
			
			if(wTdrApplyCarHo)
			{
				if(tg_UpdateCCxLSysProtocol(pUsComTx,chChannel,0))
				{
					nTxSize += sizeof(USCOMRXTXHEADTYPE);
					nTxSize += pUsComTx->Head.chLen;
					
					pUsComTx = (PUSCOMRXTXTYPE)(pUsComTx->chDataBlock+pUsComTx->Head.chLen);
				}
			}
		}
		/* SDR DATA 전송 */
		op_MakeLSysProtocol(chChannel);
		op_CheckUSysProtocol(chChannel);
		
		if(tg_UpdateCCxLSysProtocol(pUsComTx,chChannel,wTdrApplyCarHo))
		{
			nTxSize += sizeof(USCOMRXTXHEADTYPE);
			nTxSize += pUsComTx->Head.chLen;

			pUsComTx = (PUSCOMRXTXTYPE)(pUsComTx->chDataBlock+pUsComTx->Head.chLen);
		}
		
	}
	pUsComTx->Head.chChannel = 0xFF;

	return nTxSize;

}

UINT tg_GetMainCommTxCounter()
{
	return m_nMComTxOpCnt;
}

BYTE tg_GetMComTxDirect()
{
	return m_chMComTxDirect;
}

void tg_SetMComTxDirect(BYTE chDirect)
{
	if(chDirect <= SCM_TX_SEND2) m_chMComTxDirect = chDirect;
}
/*********************************************************/
/*	[TC1일때 수행]                                       */
/*	마스터 인 TGIS의 메인통신 내용을 기술한다.           */
/*********************************************************/
void tg_MasterSendComm(BOOL bInit)
{
	static UINT nTotalTick;
	int nTxSize,i;
	UINT nTcInfoSize,nCcInfoSize;
	BOOL bIsMaster;
	BYTE chMComTxBuf[SCM_RXBYTES+512];
	PMCOMPTLHEAD pMComHead;
	static PTCTYPE m_pOldTcMaster;

	tg_BeginTxAccess();
	
	
	/* 상대방 TC에서 입력된 데이터를 가져와 처리 */
	if(!bInit) 
	{
		memcpy(m_chOldMComRxBuf,m_chMComRxBuf,SCM_RXBYTES);
		tg_TC_ReceiveDataProcess(m_chMComRxBuf);

		tg_TC_MasterChangeAlgorism(m_chMComRxBuf);
	}

	if(m_nMComTxOpCnt == 100)
	{
		if(tg_IsMaster()) /* 10 초후에 초기화 */
		{
			tg_SetChgValByMComm(MC_TIMESET);
			tg_SetChgValByMComm(MC_MAXTRIGCLEAR);
			tg_SetChgValByMComm(MC_VER_DATA);
			tg_SetChgValByMComm(MC_VER_REQ);

		}
	}

	memset(chMComTxBuf,0,sizeof(chMComTxBuf));
	nTxSize = 0;
	bIsMaster = (m_bMP&MPB_MASTER) ? TRUE : FALSE;
	pMComHead = (PMCOMPTLHEAD)chMComTxBuf;

	pMComHead->nAddress1 = bIsMaster ? 0xFF : sm_GetOppeHexaID();				/* Dest Address */
	pMComHead->nAddress2 = sm_GetHexaID(0);										/* Source Address */
	pMComHead->bResReq = bIsMaster ? TRUE : FALSE;								/* Response Request */

	nTxSize += sizeof(MCOMPTLHEAD);

	nTcInfoSize = tg_SetTCTxCMemoy(&chMComTxBuf[nTxSize]);
	pMComHead->nOpCodeOffset = nTcInfoSize;	/* OpCodeOffset */
	nTxSize += nTcInfoSize;

	nCcInfoSize = tg_SetCCTxCMemoy(&chMComTxBuf[nTxSize]);
	nTxSize += nCcInfoSize;

	if(sm_McTxDataLoad(chMComTxBuf))
	{
		if(bIsMaster) sm_McTxSend(m_chMComTxDirect,0);
		else 
		{
			sm_McTxSend(SCM_TX_UPDATED,3);
		}

		if(nTxSize > (SCM_RXBYTES-4))
		{
			printf("ERROR : MCOM TX BUFFER OVERFLOW ...%d\n",nTxSize);
		}
		else if(nTxSize > m_nMComTxByteMaxSize)
		{
			printf("MCom MaxByte Updated = %d ...\n",nTxSize);
		}

		m_nMComTxByteMaxSize = MAX(m_nMComTxByteMaxSize,nTxSize);
		m_nMComTxByteSize = nTxSize;

		if(m_nMComTxOpCnt == 300)
		{
			printf("MCom TxMemSize[%d/%d] %d %% Used..: TC[%d] , CC[%d] ...\n",nTxSize,(SCM_RXBYTES-4),nTxSize*100/(SCM_RXBYTES-4),nTcInfoSize,nCcInfoSize);
		}

		
	}


	m_TcThis.nMComTxTime = tickGet() - nTotalTick;
	if(m_nMComTxOpCnt > 20) m_TcThis.nMComTxMaxTime = MAX(m_TcThis.nMComTxMaxTime,m_TcThis.nMComTxTime);
	nTotalTick = tickGet();

	m_nMComTxOpCnt++;
	tg_EndTxAccess();

}


void tg_TC_MasterChangeAlgorism(LPBYTE chRxBuf)
{
	PMAINCOMTCINFO pRxTcInfo = (PMAINCOMTCINFO)chRxBuf;
	PMAINCOMTCINFO pOldRxMCom = (PMAINCOMTCINFO)m_chOldMComRxBuf;

	if(m_TcOppe.nSysFaultCnt)
	{
		if(m_bMP != MPB_MASTER)
		{
			if(ISTC1(m_TcThis.chHexaID) || m_TcOppe.nSysFaultCnt<10)
			{
				TRACE("SysFault => Master Changed\n");
				m_bMP = MPB_MASTER;
				pRxTcInfo->tcHead.bMaster = FALSE;
				tg_OnMasterChanged();
			}
		}
	}
	else if(m_bMP&MPB_MASTER)
	{
		if(m_TcOppe.sFlag.bSysRxUpdated)
		{
			if(m_bMP&MPB_PERMIT)
			{
				m_bMP = 0x00;
				TRACE("Slaved....\n");
				tg_OnSlaveChanged();
				if(m_nMsTmOutID && taskIdVerify(m_nMsTmOutID) == OK)
				{
					if(OK==taskDelete(m_nMsTmOutID))
						m_nMsTmOutID = taskSpawn("RtnMaster",150,0,10000,tg_RtnMaster,0,0,0,0,0,0,0,0,0,0);
				}
			}
			else
			{
				if(!pRxTcInfo->tcHead.bMaster)
				{
					if(pRxTcInfo->tcHead.bPermit) 
					{
						m_bMP = MPB_MASTER|MPB_PERMIT;
						TRACE("Permitted...\n");
					}
				}
				else if(!pRxTcInfo->tcHead.bPermit)
				{
					if(ISTC2(m_TcThis.chHexaID)) m_bMP = 0x00;
					
					if(!m_bMP) 
					{
						tg_OnSlaveChanged();
					}
					else tg_OnMasterChanged();
					
					ERRPRINT("Master Impected[%02X]=>%s Changed..\n",m_TcThis.chHexaID,m_bMP ? "Master" : "Slave");
					m_TcThis.sFlag.wMComImpectNo++;
					
					taskSpawn("MasterChanger",150,0,10000,tg_MasterChanger,1000,0,0,0,0,0,0,0,0,0);
				}
			}
		}
	}
	else if(m_bMP&MPB_PERMIT)
	{
		if(pRxTcInfo->tcHead.bPermit) 
		{
			tg_OnMasterChanged();
			m_bMP = MPB_MASTER;
			m_nSlavePermitCnt = 0;
			TRACE("Permitted => Master...\n");
			taskDelay(100);
		}
		else if(m_nSlavePermitCnt==1)
		{
			m_bMP = 0x00;
			m_nSlavePermitCnt=0;
			TRACE("Master Requeset => TimeOut..\n");
		}
		else if(m_nSlavePermitCnt) m_nSlavePermitCnt--;
		
	}
}

BOOL tg_IsOppeDownloadStarted()
{
	if(m_TcOppe.sFlag.bDownloadStarted) return TRUE;
	return FALSE;
}
	
BOOL tg_TC_ReceiveDataProcess(LPBYTE chBuf)
{
	int i;
	DATE_TIME_TYPE sTime;
	BOOL bRxReadyTc;
	int nRxSize;
	BYTE nTcInfoSize,nCcInfoSize;
	PMCOMPTLHEAD pMComHead;
	BOOL bRet = FALSE;
	BOOL bOppeSysFault = m_TcOppe.sFlag.bThisSysFault;
	SYSFLAGTYPE OldsFlag;

	BYTE chHexaID = sm_GetOppeHexaID();
	bRxReadyTc =  sm_bRxReadyRemoteTC(chHexaID);

	if(bRxReadyTc) 
	{
		if(sm_McRxDataLoadRemoteTC(chHexaID,(USHORT*)chBuf))
		{
			if(sm_McRxDataCrcCheck(chBuf))
			{
				nRxSize = 0;
				pMComHead = (PMCOMPTLHEAD)chBuf;
				
				pMComHead->nAddress1; /* To Address */
				pMComHead->nAddress2; /* From Address */
				pMComHead->bResReq; /* Response Flag */
				nTcInfoSize = pMComHead->nOpCodeOffset; /* OP CODE OFFSET */
				nRxSize += sizeof(MCOMPTLHEAD);
				
				if(nTcInfoSize)
				{
					m_TcOppe.chRxAddress = pMComHead->nAddress2;
					m_TcOppe.chRxAddressUpdateCnt++;
					tg_GetTCRxCMemoy(&m_TcOppe,&chBuf[nRxSize]);
					nRxSize += nTcInfoSize;
				}
				tg_GetMComCcData(&chBuf[nRxSize]);
				
				m_TcOppe.sFlag.bThisSysFault = FALSE;
				m_TcOppe.nTC_ComFaultCnt = 0;

				
				m_TcOppe.nMComRxOpCnt++;

				bRet = TRUE;

			}
			else
			{
				TRACE("=> MCOM OPPE-RX CRC CHECK ERROR !!!\n");
				bRxReadyTc = FALSE;
			}
			
		}
		else 
		{
			TRACE("=> MCOM OPPE-RX DPRAM BCC CHECK ERROR !!!\n");
			bRxReadyTc = FALSE;
		}
	}

	m_TcOppe.sFlag.bSysRxUpdated = bRxReadyTc ? TRUE : FALSE;

	if(!tg_IsOppeDownloadStarted())
	{
		if(!bRxReadyTc)
		{
			if(m_TcOppe.nTC_ComFaultCnt < MAX_LIMIT_COUNT) 
			{
				m_TcOppe.nTC_ComFaultCnt++;
				m_TcOppe.nTC_ComFaultMaxCnt = MAX(m_TcOppe.nTC_ComFaultMaxCnt,m_TcOppe.nTC_ComFaultCnt);
			}
			if(m_TcOppe.nTC_ComFaultCnt > MAX_FAULT_COUNT) 
			{
				m_TcOppe.sFlag.bThisSysFault = TRUE;

				m_TcOppe.sFlag.nMComAliveCounter=0;
			}
			else 
			{
				m_TcOppe.sFlag.bThisSysFault = FALSE;
			}
			
			
		}
		else m_TcOppe.sFlag.nMComAliveCounter++;
		
		if(m_TcOppe.sFlag.bThisSysFault) 
		{
			if(!bOppeSysFault && !(m_TcOppe.nSysFaultCnt)) 
			{
				TRACE("Oppe System Fault Detected...\n");
			}
			m_TcOppe.nSysFaultCnt++;
		}
		else 
		{
			if(bOppeSysFault) 
			{
				TRACE("System Fault was Restored...[%d]\n",m_TcOppe.nSysFaultCnt);
				tg_SetChgValByMComm(MC_VER_REQ);
			}
			m_TcOppe.nSysFaultCnt=0;
		}
	}
	

	return bRet;
}



/*********************************************************/
/*	메인통신 -Task Routine                               */
/*********************************************************/
UINT m_nMainComTaskTick;
void tg_MainComm()
{
	ULONG nRunTaskTick; /* Task 작업에 걸리는 시간 */
	/* 5) Slave로 동작하면 Master 측에 Slave 요구 데이타를 받는다. */

	while(1)
	{
		nRunTaskTick = tickGet();

		/******************* 작업내용 시작 *************************/
		tg_GetLocalData();
		tg_MasterSendComm(FALSE);
		
		op_Run();
		tg_SetLocalData();

		tg_TrsRecQueued();

		m_nMainComTaskTick = nRunTaskTick = tickGet() - nRunTaskTick;
		m_bTxMComTimeSet = FALSE;

		/******************* 작업내용 종료 *************************/

		taskDelay(MAIN_TXCOMM_PERIOD);	/* 100ms */
	}
}

/*********************************************************/
/*	nDelayTick 후 HCR을 체크하여 Master를 요청           */
/*********************************************************/
void tg_MasterChanger(UINT nDelayTick)
{
	if(!nDelayTick) taskDelay(nDelayTick);
	/*if(m_TcThis.Do.HCR)*/ tg_SetMaster();
}

/*********************************************************/
/*	Master 체인지 이벤트                                 */
/*********************************************************/
void tg_OnMasterChanged()
{
	gp_ScreenOn();
	TRACE("=> Master Changed Event : Screen ON ");
}

/*********************************************************/
/*	Slave 체인지 이벤트                                  */
/*********************************************************/
void tg_OnSlaveChanged()
{
	gp_ScreenOff();
}

/*********************************************************/
/* Master를 내어주고 받지 않으면 500ms로 3회 체크후      */
/* 다시 Master로 복귀                                    */
/*********************************************************/
void tg_RtnMaster()
{
	int i;
	BYTE chBuf[SCM_RXBYTES+50];
	USHORT *pwBuf = (USHORT*)chBuf;
	PMAINCOMTCINFO pRxMCom = (PMAINCOMTCINFO)&chBuf;	/* 메인통신 구조 */

	for(i=0;i<3;i++)
	{
		TRACE("=> [%02X]Master Force Returnning..!!\n",m_bMP);
		taskDelay(500);
		if(sm_bMcRxReadyTC()) 
		{
			sm_McRxDataLoadTC(pwBuf);
			if(pRxMCom->tcHead.bMaster)
			{
				m_nMsTmOutID = 0;
				return;
			}
			else m_bMP = MPB_MASTER|MPB_PERMIT;
		}
	}
	m_bMP = MPB_MASTER;
	tg_OnMasterChanged();
	m_nMsTmOutID =0;
}


BYTE tg_GetCCHexaAddr(int nCarHo)
{
	BYTE chBuf[SCM_RXBYTES+50];
	PMAINCOMCCRXINFO pCcRxInfo = (PMAINCOMCCRXINFO)chBuf;
	if(sm_bMcRxReadyCC(nCarHo))
	{
		if(sm_McRxDataLoadCC(nCarHo,(USHORT*)chBuf))
		{
			if(sm_McRxDataCrcCheck(chBuf))
			{
				return pCcRxInfo->Body.Head.chHexaID[0];
			}
			else ERRPRINT("=> CC[%d] CRC ERROR...\n",nCarHo);
		}
		else 
		{
			ERRPRINT("=> CC[%d] DPRAM-BCC ERROR...\n",nCarHo);
			
		}
	}
	else ERRPRINT("=> CC[%d] Not RxReady...\n",nCarHo);

	return 0xFF;
}

/*********************************************************/
/* 로컬통신 -Task Routine                                */
/*********************************************************/


/*********************************************************/
/* 차량의 갯수를 검색한다.                               */
/*********************************************************/
UINT tg_TrainSizeSearch()
{
	int nCarHo;
	BYTE chHexa;

	for(nCarHo=0;nCarHo<MAX_TRAIN_SIZE;nCarHo++)
	{
		chHexa = m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0];
		if(ISRANGE(TRTYPE(chHexa),1,5)) m_TcThis.bCC_ComStarted[nCarHo] = TRUE;
		else TRACE("Error: CarHo[%d] HEXA SW incorrect => %02X...\n",nCarHo,chHexa);

		if(!TRCARHO(chHexa) && TRTYPE(chHexa))
		{
			nCarHo++;
			break;
		}
	}
	return nCarHo;
}

void tg_showMemory(char szName[],BYTE *pBuf,int nSize)
{
	int i;
	printf("%s : ",szName ? szName : "RXTC");
	for(i=0;i<nSize;i++) printf("%02X ",pBuf[i]);
	printf("\n");
}

/*********************************************************/
/* Master 권한을 초기화한다.                             */
/*********************************************************/
UCHAR tg_GetInitialMaster()
{
	int i;
	BYTE chBuf[SCM_RXBYTES+50];
	USHORT *pwBuf = (USHORT*)chBuf;
	PMAINCOMTCINFO pRxMCom = (PMAINCOMTCINFO)&chBuf[2];	/* 메인통신 구조 */

	if(sm_bMcRxReadyTC()) 
	{
		sm_McRxDataLoadTC(pwBuf);
		sm_McTxSend(SCM_TX_UPDATED,3);
	}

	taskDelay(500);
	if(!BYTE_H(HS_ISODD(m_TcThis.chHexaID))) taskDelay(1000); /* SLAVE IS 1SEC. DELAY.!!!*/
	if(!sm_bMcRxReadyTC()) return MPB_MASTER;
	sm_McRxDataLoadTC(pwBuf);
	
	return 0;
	/*return !pRxMCom->tcHead.bMaster ? MPB_MASTER : 0;*/
}

/*********************************************************/
/* 로컬데이터 수집                                       */
/*********************************************************/
void tg_GetLocalData()
{
	int i;
	int j;
	UCHAR chBuf[50];
	USHORT *pwBuf = (USHORT*)chBuf;
	USHORT *pVmeMem,*pSrcMem = (USHORT*)&m_pTcThis->tcDi;

	
	/* IIU 1-3데이터 : CC용 */
	pSrcMem = (USHORT*)m_pTcThis->pCCInfo->Head.ccDi;
	pwBuf[0] = IIU_READ_DATA(IIU1_BASE));
	pwBuf[1] = IIU_READ_DATA(IIU2_BASE));
	pwBuf[2] = IIU_READ_DATA(IIU3_BASE));

	pSrcMem[0] = RVWORD(pwBuf[0]);
	pSrcMem[1] = RVWORD(pwBuf[1]);
	pSrcMem[2] = RVWORD(pwBuf[2]);

	/* IIU 4,5데이터 */
	pSrcMem = (USHORT*)&m_pTcThis->tcDi;
	pwBuf[0] = IIU_READ_DATA(IIU4_BASE));
	pwBuf[1] = IIU_READ_DATA(IIU5_BASE));

	pSrcMem[0] =RVWORD(pwBuf[0]);
	pSrcMem[1] =RVWORD(pwBuf[1]);
	
}

/**********************************************************/
/* 로컬데이터 설정                                        */
/**********************************************************/


/**********************************************************/
/* HCR 이벤트                                             */
/**********************************************************/
void tg_HcrEvent()
{
	TRACE("=> HCR Event....\n");
	tg_SetMaster();
	m_bRecNewHead = TRUE;

	/* 가상 역코드 초기화 */
	m_TcThis.chCurStCode = m_TcThis.chNxtStCode = (m_TcThis.nCarHo) ? BIT07 : 0;

}

/**********************************************************/
/* TCR 이벤트                                             */
/**********************************************************/
void tg_TcrEvent()
{
	TRACE("=> TCR Event....\n");
	m_bRecNewHead = TRUE;
}

int tg_GetLSysProtocolSize(BYTE chChannel,BYTE chDataBlock[],BYTE chRxSize)
{
	int chPtlSize = 0;
	switch(chChannel)
	{
		/* 동기 채널 */
	case LSYSID_BRAKE:
		if(chDataBlock[1] == 0x20) chPtlSize = sizeof(BRAKESDTYPE);
		else if(chDataBlock[1] == 0x21) chPtlSize = sizeof(BRAKETDTYPE);
		break;
	case LSYSID_CI:
		if(chDataBlock[2] == 0x20) chPtlSize = sizeof(CISDTYPE);
		else if(chDataBlock[2] == 0x21) chPtlSize = sizeof(CISHDTYPE);
		else if(chDataBlock[2] == 0x22) chPtlSize = sizeof(CISHDTYPE);
		break;
	case LSYSID_SIV:
		if(chDataBlock[1] == 0x20) chPtlSize = sizeof(SIVSDTYPE);
		else if(chDataBlock[1] == 0x21) chPtlSize = sizeof(SIVTDTYPE);
		else if(chDataBlock[1] == 0x22) chPtlSize = sizeof(SIVTPTYPE);
		else if(chDataBlock[1] == 0x23) chPtlSize = sizeof(SIVTSTYPE);
		else if(chDataBlock[1] == 0x24) chPtlSize = sizeof(SIVTRTYPE);
		break;
	}
	
	return chPtlSize;
}

void tg_LSysDataDump(int nCarHo,int nLSysID)
{
	mx_DebugPrint(m_CC_Info.RxInfo[nCarHo].pLSysRx[nLSysID]->Body.chDataPack,
		m_CC_Info.RxInfo[nCarHo].pLSysRx[nLSysID]->Body.nSize,m_szLSysNameCC[nLSysID]);
}

/**********************************************************/
/* 응용측의 프로토콜 상태가 정상인지 체크한다.            */
/* CC 하부장치를 프로토콜 점검                            */
/**********************************************************/
int tg_CheckLSysProtocol(int nCarHo,BYTE chChannel,BYTE chDataBlock[],BYTE chRxSize)
{
	int i,nPtlSize,nTransSize;
	USHORT wBcc,wRxBcc,wCrc,wRxCrc;
	BYTE chTransData[256];
	BYTE chEtx;
	BOOL bErrMessage = TRUE;

	switch(chChannel)
	{
	case LSYSID_BRAKE:
	case LSYSID_SIV:
		/* 비동기에 한하여 검사한다. */
		if(chDataBlock[0] == 0x02)
		{
			nPtlSize = tg_GetLSysProtocolSize(chChannel,chDataBlock,chRxSize);
			if(nPtlSize > 3)
			{
				if((BYTE)nPtlSize != chRxSize)
				{
					if(chChannel == LSYSID_SIV && nPtlSize+1 == chRxSize && chDataBlock[chRxSize-1] == 0x15) chRxSize = nPtlSize;
					else
					{
						if(bErrMessage) 
						{
							TRACE("CC[%d] %s LSys.CH[%d] SIZE[%d != RX:%d] Error..!!!\n",nCarHo,m_szLSysNameCC[chChannel],chChannel+1,nPtlSize,chRxSize);
						}
					}
				}
				/* ETX CHECK */
				chEtx = chDataBlock[nPtlSize-3];
				if(chEtx != 0x03) 
				{
					if(bErrMessage) TRACE("CC[%d] %s LSys.CH[%d] ETX[%02X] Check Error..!!!\n",nCarHo,m_szLSysNameCC[chChannel],chChannel+1,chEtx);
					return 2;
				}
				
				wBcc = mx_GetBCCValue(1,nPtlSize-2,chDataBlock);
				
				wRxBcc = MK_WORD(chDataBlock[nPtlSize-2],chDataBlock[nPtlSize-1]);
				if(wBcc != wRxBcc) 
				{
					if(bErrMessage) TRACE("CC[%d] %s LSys.CH[%d] BCC[%04X != RX:%04X] Check Error..!!!\n",nCarHo,m_szLSysNameCC[chChannel],chChannel+1,wBcc,wRxBcc);
					return 3;
				}
				
				return 0;
			}
		}
		break;
	case LSYSID_CI:
		memset(chTransData,0,sizeof(chTransData));
		nTransSize = mx_RxEscCharTrans(chTransData,chDataBlock,chRxSize);
		if(chDataBlock[0] == 0xF2)
		{
			nPtlSize = tg_GetLSysProtocolSize(chChannel,chDataBlock,chRxSize);
			if(nPtlSize > 3)
			{
				if((BYTE)nPtlSize != nTransSize)
				{
					if(bErrMessage) 
					{
						TRACE("CC[%d] %s LSys.CH[%d] SIZE[%d != RX:%d] Error..!!!\n",nCarHo,m_szLSysNameCC[chChannel],chChannel+1,nPtlSize,nTransSize);
					}
				}
				/* TER CHECK */
				chEtx = chTransData[nPtlSize-1];
				if(chEtx != 0xF6) 
				{
					if(bErrMessage) TRACE("CC[%d] %s LSys.CH[%d] TER[%02X] %dth Check Error..!!!\n",nCarHo,m_szLSysNameCC[chChannel],chChannel+1,chEtx,nPtlSize-1);
					return 2;
				}
				
				wCrc = mx_GetCRC16IBM(1,nPtlSize-3,chTransData);
				
				wRxCrc = MK_WORD(chTransData[nPtlSize-3],chTransData[nPtlSize-2]);
				if(wCrc != wRxCrc) 
				{
					
					if(bErrMessage) TRACE("CC[%d] %s LSys.CH[%d] CRC[%04X != RX:%04X] Check Error..!!!\n",nCarHo,m_szLSysNameCC[chChannel],chChannel+1,wCrc,wRxCrc);
					return 3;
				}
				
				return 0;
			}
		}
		break;
	}

	return 1;
}

BOOL tg_CCRxCheckUpdate(int nCarHo,BYTE chChannel,PUSCOMRXTXTYPE pUsComRx)
{
	PLSYSRXCOMTYPE	pLSysRx;
	int nCheckResult;

	if(!op_IsExistLSys(nCarHo,chChannel)) return FALSE;

	nCheckResult = tg_CheckLSysProtocol(nCarHo,chChannel,pUsComRx->chDataBlock,pUsComRx->Head.chLen);
	
	if(!nCheckResult)
	{
		pLSysRx = m_CC_Info.RxInfo[nCarHo].pLSysRx[chChannel];
		
		if(!tg_GetLSysLoggerData(nCarHo,chChannel,pUsComRx))
		{
			pLSysRx->Body.nSize = (UINT)pUsComRx->Head.chLen;
			memcpy(pLSysRx->Body.chDataPack,pUsComRx->chDataBlock,pUsComRx->Head.chLen);
		}
		
		/* CI는 Esc Char. Filter */
		if(chChannel == LSYSID_CI)
		{
			pLSysRx->Body.nSize = mx_RxEscCharTrans(pLSysRx->Body.chDataPack,pLSysRx->Body.chDataPack,pLSysRx->Body.nSize);
		}
		
		if(!pLSysRx->Head.bComStarted)
		{
			pLSysRx->Head.bComStarted = TRUE;
			TRACE("CC[%d] %s LSys.CH[%d] Started...%d\n",nCarHo,m_szLSysNameCC[chChannel],chChannel+1,pUsComRx->Head.chLen);
		}
		pLSysRx->Head.bRxUpdated = TRUE;
		pLSysRx->Head.chRxCycle = pUsComRx->Head.chCycle;

		return TRUE;
		
	}
	else 
	{
		TRACE("CC[%d] %s LSys.CH[%d] Rx Check Error [%d]..!!!\n",nCarHo,m_szLSysNameCC[chChannel],chChannel+1,nCheckResult);
		mx_DebugPrint(pUsComRx->chDataBlock,pUsComRx->Head.chLen,"RXMEM");
		return FALSE;
	}
}

/**********************************************************/
/* 각 차량의 수신 데이터를 가져온다.                      */
/**********************************************************/
BOOL tg_GetCCRxCMemory()
{
	int i,nCarHo,nRxSize,nPack;
	BYTE chBuf[SCM_RXBYTES+512];

	PMCOMPTLHEAD pCCRxHead;
	PMCOMCCRXBODYTYPE pCCRxBody;
	PUSCOMRXTXTYPE	pUsComRx;
	BYTE chChannel;
	BOOL bRxSuccess;
	BOOL bRet = FALSE;

	memset(chBuf,0,sizeof(chBuf));

	for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)
	{
		/* TC와 CC에 해당하는 차량은 TC 정보로 부터 받는다. */
		if(m_TcThis.nCarHo == nCarHo || m_TcOppe.nCarHo == nCarHo) continue;

		bRxSuccess = FALSE;
		if(sm_bMcRxReadyCC(nCarHo))
		{
			if(sm_McRxDataLoadCC(nCarHo,(USHORT*)chBuf))
			{
				if(sm_McRxDataCrcCheck(chBuf))
				{
					bRet |= TRUE;
					nRxSize = 0;

					pCCRxHead = (PMCOMPTLHEAD)chBuf;
					/* 1) Protocol Header 부분은 건너 뛴다.*/
					nRxSize += sizeof(MCOMPTLHEAD) + pCCRxHead->nOpCodeOffset;
					pCCRxBody = (PMCOMCCRXBODYTYPE)&chBuf[nRxSize];

					switch(pCCRxBody->chOpCode)
					{
					case 10:
						MemCpy(&m_CC_Info.RxInfo[nCarHo].Head,&pCCRxBody->Head,sizeof(CCRXHEADTYPE));

						nRxSize += sizeof(CCRXHEADTYPE);
						/* 하부장치 통신 정보 */
						pUsComRx = (PUSCOMRXTXTYPE)pCCRxBody->chDataPack;
						/**/
						for(nPack=0;nPack<MAX_LCOM_CHANNEL;nPack++)
						{
							if(!pUsComRx->Head.chChannel || pUsComRx->Head.chChannel == 0xFF) break;
							nRxSize += sizeof(USCOMRXTXHEADTYPE);
							if(pUsComRx->Head.chLen)
							{
								nRxSize += pUsComRx->Head.chLen;
								if(pUsComRx->Head.chChannel && pUsComRx->Head.chChannel <= MAX_LCOM_CHANNEL)
								{
									if(pUsComRx->Head.chLen < MAX_LCOM_SIZE)
									{
										chChannel = (pUsComRx->Head.chChannel-1);
										
										tg_CCRxCheckUpdate(nCarHo,chChannel,pUsComRx);
									}
									else ERRPRINT("=> CC[%d] LSysRx-CH[%d]-RxSize[%d] Buffer overflower.!!!\n",nCarHo,pUsComRx->Head.chChannel,pUsComRx->Head.chLen);
								}
								else ERRPRINT("=> CC[%d] LSysRx-CH[%d] Out of Channel Number.!!!\n",nCarHo,pUsComRx->Head.chChannel);
							}
							else ERRPRINT("=> CC[%d] LSysRx-CH[%d] Size Zero.!!!\n",nCarHo,pUsComRx->Head.chChannel);
							pUsComRx = (PUSCOMRXTXTYPE)(pUsComRx->chDataBlock+pUsComRx->Head.chLen);
						}
						
						break;
					}

					

					if(!m_TcThis.bCC_ComStarted[nCarHo]) 
					{
						m_TcThis.bCC_ComStarted[nCarHo] = TRUE;
						TRACE("=> CC[%d] HEX(%02X) Started ...\n",nCarHo,m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0]);
					}

					m_TcThis.nCC_ComFaultCnt[nCarHo] = 0;
					if(m_TcThis.bCC_ComFault[nCarHo]) 
					{
						m_TcThis.bCC_ComFault[nCarHo]=FALSE;
						TRACE("=> CC[%d] Main Comm OK Restored ...\n",nCarHo);
						
					}
					bRxSuccess = TRUE;

					m_nMComRxByteMaxSize[nCarHo] = MAX(m_nMComRxByteMaxSize[nCarHo],nRxSize);
					m_nMComRxByteSize[nCarHo] = nRxSize;
				}
				else ERRPRINT("=> CC[%d] CRC ERROR...%d\n",nCarHo,m_TcThis.nCC_ComFaultCnt[nCarHo]);
			}
			else ERRPRINT("=> CC[%d] DPRAM-BCC ERROR...%d\n",nCarHo,m_TcThis.nCC_ComFaultCnt[nCarHo]);
		}

		if(!m_TcOppe.sFlag.bDownloadStarted)
		{
			if(!bRxSuccess)
			{
				if(m_TcThis.nCC_ComFaultCnt[nCarHo] < MAX_LIMIT_COUNT ) 
				{
					m_TcThis.nCC_ComFaultCnt[nCarHo]++;
					m_TcThis.nCC_ComFaultMaxCnt[nCarHo] = MAX(m_TcThis.nCC_ComFaultMaxCnt[nCarHo],m_TcThis.nCC_ComFaultCnt[nCarHo]);
				}
				if(m_TcThis.nCC_ComFaultCnt[nCarHo] > MAX_FAULT_COUNT) 
				{
					if(!m_TcThis.bCC_ComFault[nCarHo])
					{
						TRACE("=> CC[%d] Main Comm NG...%d\n",nCarHo,m_TcThis.bCC_ComFault[nCarHo]);
						m_TcThis.bCC_ComFault[nCarHo]=TRUE;
					}
				}
			}
		}
	}
	return bRet;
}


/**********************************************************/
/* 각 차량의 하부장치로의 통신고장을 검지한다.            */
/**********************************************************/
void tg_CheckCCLSysComFault()
{
	int nCarHo;
	BYTE chChannel;
	PLSYSRXCOMTYPE	pLSysRx;
	PLSYSTXCOMTYPE  pLSysTx;

	
	for(chChannel=0;chChannel<MAX_LCOM_CHANNEL;chChannel++)
	{
		pLSysTx = m_CC_Info.TxInfo.pLSysTx[chChannel];
		for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)				
		{
			if(m_TcThis.nCarHo == nCarHo || m_TcOppe.nCarHo == nCarHo) continue;
			pLSysRx = m_CC_Info.RxInfo[nCarHo].pLSysRx[chChannel];
			
			if(pLSysTx->Head.wAppliedCarHo&(1<<nCarHo))
			{
				if(pLSysTx->Head.bTxSended)
				{
					if(!pLSysRx->Head.bRxUpdated)
					{
						if(pLSysRx->Head.wComFaultCnt > m_bLSysFaultCount[chChannel])
						{
							if(!pLSysRx->Head.bComFault)
							{
								pLSysRx->Head.bComFault = TRUE;
								TRACE("=> CC[%d] LSys.CH[%d] %s NG...\n",nCarHo,chChannel+1,m_szLSysNameCC[chChannel]);
							}
							
						}
						
						if(pLSysRx->Head.wComFaultCnt < MAX_LSYS_LIMIT_COUNT) pLSysRx->Head.wComFaultCnt++;
					}
					else
					{
						pLSysRx->Head.wComFaultCnt = 0;
						if(pLSysRx->Head.bComFault)
						{
							pLSysRx->Head.bComFault = FALSE;
							TRACE("=> CC[%d] LSys.CH[%d] %s Restored...\n",nCarHo,chChannel+1,m_szLSysNameCC[chChannel]);
						}
						
					}
					
					pLSysRx->Head.bRxUpdated = FALSE;
				}
			}
		}
		pLSysTx->Head.bTxSended = FALSE;
	}
}



void tg_CheckCCHexaIDCheck()
{
	int nCarHo;
	for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)
	{
		if(m_TcThis.bCC_ComStarted[nCarHo])
		{
			if(m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0] != m_chCcHexaID[nCarHo])
			{
				TRACE("=> CarHo[%d] CC SCM-%dth HexaID[%02X/%02X] Incorrect setting...\n",nCarHo,1,m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0],m_chCcHexaID[nCarHo]);
			}
		}
	}
}

void tg_ShowTgisID()
{
	int nCarHo;
	for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)
	{
		TRACE("=> CarHo[%d] HexaID[%02X/%02X]...\n",nCarHo,m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0]);
	}
}

/**********************************************************/
/* SCM의 DPRAM에서 데이터를 읽어옴 - Task Routine         */
/* - 자신의 TC 정보를 읽어온다.                           */
/* - CC 들의 정보를 읽어 처리한다.  (0,9 제외)            */
/**********************************************************/
void tg_DPRAM_Info_Read()
{
	static UINT nRunTaskTick; /* Task 작업에 걸리는 시간 */

	while(1)
	{
		tg_BeginRxAccess(); 

		/* DPRAM 에서 TC 자기 자신의 정보를 읽어온다. */
		memcpy(m_CC_Info.OldRxInfo,m_CC_Info.RxInfo,sizeof(m_CC_Info.RxInfo));

		/* DPRAM에서 CC의 내용을 가져온다. */
		tg_GetCCRxCMemory();
		tg_CheckCCLSysComFault();

		op_CCRxDervieProcess();

		if(m_nCComRxOpCnt == 200) tg_CheckCCHexaIDCheck();

		m_nCComRxOpCnt++;
		tg_EndRxAccess();

		m_TcThis.nMComRxTime = tickGet() - nRunTaskTick; /* 걸린 시간을 측정한다. */
		nRunTaskTick = tickGet();
		taskDelay(MAIN_RXCOMM_PERIOD); /* 약 100ms */
	}
}


void tg_BeginTxAccess()
{
	semTake(m_semMainComTxID,WAIT_FOREVER);
}

void tg_EndTxAccess()
{
	semGive(m_semMainComTxID);
}

void tg_BeginRxAccess()
{
	semTake(m_semMainComRxID,WAIT_FOREVER);
}

void tg_EndRxAccess()
{
	semGive(m_semMainComRxID);
}


void tg_BeginUsComAccess()
{
	semTake(m_semUsComID,WAIT_FOREVER);
}

void tg_EndUsComAccess()
{
	semGive(m_semUsComID);
}

/**********************************************************/
/* 시간을 스트링으로 만든다.                              */
/**********************************************************/
void tg_Time2String(DATE_TIME_TYPE Time,char *cbBuf)
{
	cbBuf[0] = '2';
	cbBuf[1] = '0';
	cbBuf[2] = HEXA2BIN(Time.year)/10+'0';
	cbBuf[3] = (HEXA2BIN(Time.year)%10)+'0';
	cbBuf[4] = '/';
	cbBuf[5] = HEXA2BIN(Time.month)/10+'0';
	cbBuf[6] = (HEXA2BIN(Time.month)%10)+'0';
	cbBuf[7] = '/';
	cbBuf[8] = HEXA2BIN(Time.day)/10+'0';
	cbBuf[9] = (HEXA2BIN(Time.day)%10)+'0';
	cbBuf[10] = ' ';
	cbBuf[11] = HEXA2BIN(Time.hour)/10+'0';
	cbBuf[12] = (HEXA2BIN(Time.hour)%10)+'0';
	cbBuf[13] = ':';
	cbBuf[14] = HEXA2BIN(Time.minute)/10+'0';
	cbBuf[15] = (HEXA2BIN(Time.minute)%10)+'0';
	cbBuf[16] = ':';
	cbBuf[17] = HEXA2BIN(Time.second)/10+'0';
	cbBuf[18] = (HEXA2BIN(Time.second)%10)+'0';
	cbBuf[19] = NULL;
}

/**********************************************************/
/* 한개의 문자를 헥사 코드로 만든다.                      */
/**********************************************************/
UCHAR tg_OneChar2HEX(char Ch)
{
	if((UCHAR)Ch >= 'a' && (UCHAR)Ch <= 'f') return Ch - 'a' + 10;
	else
		if((UCHAR)Ch >= 'A' && (UCHAR)Ch <= 'F') return Ch - 'A' + 10;
		else
			if((UCHAR)Ch >= '0' && (UCHAR)Ch <= '9') return Ch - '0';
			else return 0;
}

/**********************************************************/
/* 두개의 문자를 헥사 코드로 만든다.                      */
/**********************************************************/
UCHAR tg_TwoChar2HEX(char Ch1,char Ch2)
{
	return ((UCHAR)tg_OneChar2HEX(Ch1)&0xf)<<4 | ((UCHAR)tg_OneChar2HEX(Ch2)&0xf);
}

void tg_USComTxLoop(int nChannel)
{
	int i;
	BOOL bTxSend = FALSE;

	/************************************************/
	/* tg_SetCCTxCMemoy()에서 호출하여 구성한다.	*/
	/* op_MakeUSysProtocol();						*/
	/************************************************/

	if(nChannel < MAX_UCOM_CHANNEL)
	{
		/* 전송조건을 확인 */
		if(m_TcThis.USysTx[nChannel].Body.nSize)
		{
			if(m_TcThis.USysTx[nChannel].Head.bSendData) bTxSend = TRUE;
		}
		
		/* 전송한다. */
		if(bTxSend)
		{
			if(nChannel == 0)
			{
				if(sm_SpTxDataLoadSend(SPCODE_LIU_HUGECOM,m_TcThis.USysTx[nChannel].Body.chDataPack,m_TcThis.USysTx[nChannel].Body.nSize))
				{
					m_TcThis.USysTx[nChannel].Head.bTxSended = TRUE;
					m_TcThis.USysTx[nChannel].Head.nSeqCnt++;
				}
				else printf("=> %s USys-CH[%d]Tx DataLoad Failure !!!\n",m_szLSysNameTC[nChannel],nChannel+1);
			}
			else 
			{
				if(sm_UsTxDataLoad(nChannel,m_TcThis.USysTx[nChannel].Body.chDataPack,m_TcThis.USysTx[nChannel].Body.nSize))
				{
					sm_UsTxSend(nChannel);
					
					m_TcThis.USysTx[nChannel].Head.bTxSended = TRUE;
					m_TcThis.USysTx[nChannel].Head.nSeqCnt++;
					
				}
				else printf("=> %s USys-CH[%d]Tx DataLoad Failure !!!\n",m_szLSysNameTC[nChannel],nChannel+1);
			}
		}
	}
}




BOOL tg_USComRxLoop(BYTE chChannel)
{
	int i;
	int nRxSize=0;
	USHORT wSpRxCode;
	BOOL bComFault = FALSE,bRxReady;
	BYTE chBuffer[600];
	PUSCOMRXTXTYPE pUsComRx = (PUSCOMRXTXTYPE)chBuffer;
	PLSYSRXCOMTYPE	pLSysRx;

	
	if(chChannel < MAX_UCOM_CHANNEL)
	{
		/*if(m_TcThis.USysTx[chChannel].Head.bTxSended)*/
		{
			if(chChannel == 0)
			{
				wSpRxCode = sm_bSpRxReady();
				bRxReady = (wSpRxCode == SPCODE_LIU_HUGECOM) ? TRUE : FALSE;

				if(bRxReady)
				{
					nRxSize = sm_SpRxDataLoad(m_TcThis.USysRx[chChannel].Body.chDataPack);
				}
			}
			else
			{
				bRxReady = sm_bUsRxReady(chChannel);
				if(bRxReady)
				{
					nRxSize = sm_UsRxDataLoad(chChannel,m_TcThis.USysRx[chChannel].Body.chDataPack);
				}
			}

			if(bRxReady)
			{
				if(nRxSize<0) 
				{
					m_TcThis.USysRx[chChannel].Body.nSize = 0;
					m_TcThis.USysRx[chChannel].Head.wComFaultCnt++;
					printf("=> %s System[%d] SCM Memory BCC Check Error !!!\n",m_szLSysNameTC[chChannel],chChannel);
				}
				else if(nRxSize)
				{
					m_TcThis.USysRx[chChannel].Body.nSize = nRxSize;
					m_TcThis.USysRx[chChannel].Head.wComFaultCnt = 0;
					m_TcThis.USysRx[chChannel].Head.bRxUpdated = TRUE;

					memcpy(pUsComRx->chDataBlock,m_TcThis.USysRx[chChannel].Body.chDataPack,nRxSize);
					pUsComRx->Head.chLen = nRxSize;
					pUsComRx->Head.chChannel = chChannel+1;
					pUsComRx->Head.chCycle = 0;
					pUsComRx->Head.chEvent = 1;
					pUsComRx->Head.chSubChannel = LSYSID_NONE;
					pUsComRx->Head.wApplyCarHo = (1<<m_TcThis.nCarHo);

					if(tg_CCRxCheckUpdate(m_TcThis.nCarHo,chChannel,pUsComRx)) m_TcThis.sFlag.bUSysMTxUpdate[chChannel]=TRUE;

				}
				else
				{
					bRxReady = FALSE;
					m_TcThis.USysRx[chChannel].Body.nSize = 0;
				}
			}

			if(!bRxReady)
			{
				if(m_TcThis.USysRx[chChannel].Head.wComFaultCnt<MAX_USYS_LIMIT_COUNT) 
				{
					m_TcThis.USysRx[chChannel].Head.wComFaultCnt++;
				}
			}

			m_TcThis.USysTx[chChannel].Head.bTxSended = FALSE;

			bComFault = (m_TcThis.USysRx[chChannel].Head.wComFaultCnt >= MAX_USYS_FAULT_COUNT);
			if(!m_TcThis.USysRx[chChannel].Head.bComFault && bComFault)
			{
				printf("=> %s Sys USys-CH[%d] NG .... !!!\n",m_szLSysNameTC[chChannel],chChannel+1);
			}

			m_TcThis.USysRx[chChannel].Head.bComFault = bComFault ? TRUE : FALSE;

			m_TcThis.pCCInfo->pLSysRx[chChannel]->Head.bComFault = bComFault ? TRUE : FALSE;
			m_TcThis.pCCInfo->pLSysRx[chChannel]->Head.wComFaultCnt = m_TcThis.USysRx[chChannel].Head.wComFaultCnt;
			

		}
	}
}



/*********************************************************/
/* 중앙장치용 로컬통신 -Task Routine                     */
/*********************************************************/
void tg_USysComm()
{
	int nChannel;
	BOOL bRxUpdated;
	

	while(1)
	{
		tg_BeginUsComAccess();
		for(nChannel=0;nChannel<MAX_UCOM_CHANNEL;nChannel++) 
		{
			bRxUpdated |= tg_USComRxLoop(nChannel);

			
			if(tg_IsMaster()) tg_USComTxLoop(nChannel);
		}
		tg_EndUsComAccess();

		bRxUpdated = FALSE;

		taskDelay(100);

	}
}

void tg_MotMemoryReset()
{
	memset(&m_xMoment,0,sizeof(m_xMoment));
	m_xMoment.nStartDistance = m_TcThis.nForeverDist;
}

/* 주기적으로 주행거리,주행 시간,전력 소비량을 계산하여 Update 한다. */
void tg_SpeedReckon()
{
	UINT nOldSpeed,nNewSpeed;
	UINT nOldDist,nNewDist,nDeltaDist;
	int nDeltaPower;
	static int nRemainGPower[10],nRemainRPower[10];
	int nCarHo;
	UINT nLoopCounter=0;

	nOldSpeed = op_GetSpeed();
	nOldDist = nNewDist = m_TcThis.nForeverDist;

	tg_MotMemoryReset();

	while(1)
	{
		/*if(!(nLoopCounter%10))*/
		{
			/* 가속도 계산 */
			nNewSpeed = m_TcThis.nSpeed;			/* 0.1 km/h/bit */
			m_TcThis.nASpeed = (nNewSpeed - nOldSpeed);
			
			
			if(m_TcThis.nASpeed > 0) m_xMoment.MaxAccel = MAX(m_TcThis.nASpeed,m_xMoment.MaxAccel);
			else if(m_TcThis.nASpeed < 0) m_xMoment.MaxDecel = MIN(m_TcThis.nASpeed,m_xMoment.MaxDecel);
			
			nOldSpeed = nNewSpeed;
		}

		nNewDist = m_TcThis.nForeverDist;
		nDeltaDist = nNewDist - nOldDist;

		if(((PCCDITYPE)m_TcThis.pCCInfo->Head.ccDi)->_P)
		{
			m_xMoment.wPowerTime += 1;
			m_xMoment.nPowerDist += nDeltaDist;
		}
		else if(((PCCDITYPE)m_TcThis.pCCInfo->Head.ccDi)->E2)
		{
			m_xMoment.wBrakeTime += 1;
			m_xMoment.nBrakeDist += nDeltaDist;
		}

		m_xMoment.nMotTotalDist += nDeltaDist;

		nOldDist = nNewDist;

		

		if(tg_IsMaster())
		{
			/* 1) 주행적산거리 계산 : op_DistancePrecess()에서 계산*/
			
			/* 2) 주행시간 계산 */
			if(op_IsHcrOn())
			{
				m_pDirectMem->nForeverTime++;
				m_TcThis.nDailyTime++;

			}
			
			/* 3) 소비전력 계산 */
			for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)
			{
				if(ISTRTYPE(m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0]) == TRTYPE_MD)
				{
					
					nDeltaPower = op_GetPowerEnergy(nCarHo);
					if(nDeltaPower > 0) /* C/I 소비전력 */
					{
						/* 1 kws */
						m_pDirectMem->nGenerPowerKws[nCarHo] += (nRemainGPower[nCarHo] + nDeltaPower)/1000 ; /* kws/bit */
						nRemainGPower[nCarHo] = (nRemainGPower[nCarHo]+nDeltaPower)%1000;

						/* 1 kws => 1kwh (x/3600)*/
						if(m_pDirectMem->nGenerPowerKws[nCarHo] >= 3600)
						{
							m_pDirectMem->nGenerPowerKwh[nCarHo] += (m_pDirectMem->nGenerPowerKws[nCarHo])/3600;
							m_pDirectMem->nGenerPowerKws[nCarHo] %= 3600;
						}
					}
					else if(nDeltaPower < 0) /* C/I 회생전력 */
					{
						nDeltaPower *= -1;

						/* 1 kws */
						m_pDirectMem->nRegenPowerKws[nCarHo] += (nRemainRPower[nCarHo] + nDeltaPower)/1000 ; /* kws/bit */
						nRemainRPower[nCarHo] = (nRemainRPower[nCarHo]+nDeltaPower)%1000;

						/* 1 kws => 1kwh (x/3600)*/
						if(m_pDirectMem->nRegenPowerKws[nCarHo] >= 3600)
						{
							m_pDirectMem->nRegenPowerKwh[nCarHo] += (m_pDirectMem->nRegenPowerKws[nCarHo])/3600;
							m_pDirectMem->nRegenPowerKws[nCarHo] %= 3600;
						}
					}
				}
			}
			

		}

		nLoopCounter++;
		taskDelay(1000);
	}
}



/**********************************************************/
/* 고장리스트를 체크한다.                                 */
/**********************************************************/
void tg_FaultCheckLoop()
{
	ULONG nStartTick,nRunTick,nDelayTick;
	while(1)
	{
		nStartTick = tickGet();

		if(!m_TcThis.sFlag.bDownloadStarted && !m_TcOppe.sFlag.bDownloadStarted) op_AllFaultCheck();

		nRunTick = tickGet() - nStartTick;
		m_TcThis.nFCheckTime = nRunTick;
		if(nRunTick < 100) nDelayTick = 100-nRunTick;
		else nDelayTick = 0;
		taskDelay(nDelayTick);
	}
}

/* 열차상태 기록 100ms 마다 기록 하여 D 트리거 시점에서 전후 30초로 기록한다. */
void tg_TrsRecQueued()
{
	int nCarHo,nSivIndex,nCiIndex,nBrakeIndex;
	STTBODYTYPE SttBody;
	int nLSysID;

	LPBYTE pRxText;

	memset(&SttBody,0,sizeof(SttBody));

	SttBody.speed = op_GetSpeed();
	SttBody.chPNotch = op_GetPowerNotchRate();
	SttBody.chBNotch = op_GetBrakeNotch();
	SttBody.chSpare = 0;

	memcpy(&SttBody.tc_signal[0],&m_pTc[1]->tcDi,4);
	memcpy(&SttBody.tc_signal[1],&m_pTc[0]->tcDi,4);

	nSivIndex = nCiIndex = nBrakeIndex = 0;
	for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)
	{
		memcpy(&SttBody.cc_signal[nCarHo][0],m_CC_Info.RxInfo[nCarHo].Head.ccDi,10);

		nLSysID = LSYSID_SIV;
		if(op_IsExistLSys(nCarHo,nLSysID))
		{
			if( ((PSIVSDTYPE)m_CC_Info.RxInfo[nCarHo].pLSysRx[nLSysID]->Body.chDataPack)->chDataType == 0x20 )
			{
				pRxText = m_CC_Info.RxInfo[nCarHo].pLSysRx[nLSysID]->Body.chDataPack;
				memcpy(&SttBody.siv_sd[nSivIndex][0],&pRxText[2 ],4);
				memcpy(&SttBody.siv_sd[nSivIndex][4],&pRxText[2+10],10);
			}
			nSivIndex++;
		}

		nLSysID = LSYSID_CI;
		if(op_IsExistLSys(nCarHo,nLSysID))
		{
			if( ((PCISDTYPE)m_CC_Info.RxInfo[nCarHo].pLSysRx[nLSysID]->Body.chDataPack)->chDataType == 0x20 )
			{
				pRxText = m_CC_Info.RxInfo[nCarHo].pLSysRx[nLSysID]->Body.chDataPack;
				memcpy(&SttBody.ci_sd[nCiIndex][0],&pRxText[ 3],20);
			}

			nCiIndex++;
		}

		nLSysID = LSYSID_BRAKE;
		if(op_IsExistLSys(nCarHo,nLSysID))
		{
			if( ((PBRAKESDTYPE)m_CC_Info.RxInfo[nCarHo].pLSysRx[nLSysID]->Body.chDataPack)->chDataType == 0x20 )
			{
				pRxText = m_CC_Info.RxInfo[nCarHo].pLSysRx[nLSysID]->Body.chDataPack;
				memcpy(&SttBody.brake_sd[nBrakeIndex][0],&pRxText[ 2],13);
			}

			nBrakeIndex++;
		}


	}

	gw_QueuedTrsBody(&SttBody);
}

void tg_SetDrvNewHead()
{
	m_bRecNewHead = TRUE;
}

void tg_DrvRecCell()
{
	DRVBODYTYPE DrvBody;
	int nCarHo;

	if(op_IsHcrSelected())
	{
		memset(&DrvBody,0,sizeof(DrvBody));

		gm_GetSystemTime(&DrvBody.RSD.stime);

		DrvBody.RSD.chSpeed = (BYTE)op_GetSpeed();
		DrvBody.RSD.chPNotch = op_GetPowerNotchRate();
		DrvBody.RSD.chBNotch = op_GetBrakeNotch();
		DrvBody.RSD.chCurStCode = m_TcThis.chCurStCode;
		DrvBody.RSD.wDistance = op_GetDistance();

		memcpy(DrvBody.tcType[0].tcDi,&m_pTc[1]->tcDi,4);
		memcpy(DrvBody.tcType[1].tcDi,&m_pTc[0]->tcDi,4);

		for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)
		{
			memcpy(DrvBody.ccType[nCarHo].ccDi,m_CC_Info.RxInfo[nCarHo].Head.ccDi,6);
			DrvBody.ccType[nCarHo].chBcp = op_GetBcpValue(nCarHo);
			if(ISTRTYPE(m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0]) == TRTYPE_MD) 
			{
				DrvBody.ccType[nCarHo].chMI = ((PCISDTYPE)m_CC_Info.RxInfo[nCarHo].pLSysRx[LSYSID_CI]->Body.chDataPack)->IL;
			}
		}
		
		
		if(m_bRecNewHead) 
		{
			TRACE("DRIVE RECODER => NEW RECODER ADD...\n");
			gw_DrvRcAddHead();
		}
		gw_PushDrvBody(&DrvBody);
		
		
		
		m_bRecNewHead = FALSE;
	}
	else 
	{
		tg_SetDrvNewHead();
	}



}



void tg_DrvRec()
{
	UINT nDrvRecDelayCounter=0;
	ULONG nStartTick,nRunTick,nDelayTick;
	
	taskDelay(3000);

	if(op_IsHcrSelected()) tg_SetDrvNewHead();

	while(1)
	{
		nStartTick = tickGet();

		if(m_nMComTxOpCnt > 10)
		{
			if(m_bRcWriteEnable)
			{
				tg_DrvRecCell();
			}
		}
		
		nRunTick = tickGet() - nStartTick;
		if(nRunTick < 1000) nDelayTick = 1000-nRunTick;
		else nDelayTick = 0;
		
		taskDelay(nDelayTick);
	}
}


void tg_HisDistRecCell()
{
	int nCiIndex;
	BOOL bSaving;
	GMHIS_DIST_TYPE HisDist;
	int nCarHo;
	DATE_TIME_TYPE sTime;
	

	if(gm_IsMemoryEnable())
	{
		memset(&HisDist,0,sizeof(HisDist));
		timeGet(&sTime);

		bSaving = !gm_IsHisDistBufferingTime(&sTime);
		if(bSaving)
		{
			gw_PushHisDistBody();
			m_TcThis.nDailyTime = 0;
		}

		gm_GetSystemTime(&HisDist.datetime);
		nCiIndex = 0;
		for(nCarHo=0;nCarHo<m_nTrainSize;nCarHo++)
		{
			if(ISTRTYPE(m_CC_Info.RxInfo[nCarHo].Head.chHexaID[0]) == TRTYPE_MD)
			{
				if(nCiIndex < 5)
				{
					HisDist.nCiGenerPowerKwh[nCiIndex++] = m_pDirectMem->nGenerPowerKwh[nCarHo];
					HisDist.nCiRegenPowerKwh[nCiIndex++] = m_pDirectMem->nRegenPowerKws[3];
				}

				nCiIndex++;
			}
		}
		
	
		HisDist.nAccumulateDist = m_pDirectMem->nForeverDist;
		HisDist.nAccumulateTime = m_pDirectMem->nForeverTime;

		HisDist.wDailyDist = m_TcThis.nDailyDist;
		HisDist.wDailyDrvTime = m_TcThis.nDailyTime;

		gw_HisDistBuffering(&HisDist);
		
	}

	m_nHisDistCellTaskId = 0;
	
}


void tg_HisDistRec()
{
	int nRecCnt=0;
	
	taskDelay(3000);
	
	while(1)
	{
		if(m_nMComTxOpCnt > 10)
		{
			if(!m_nHisDistCellTaskId)
			{
				m_nHisDistCellTaskId = taskSpawn("xHisDistCe",150,0,10000,tg_HisDistRecCell,0,0,0,0,0,0,0,0,0,0);
			}
			
		}
		nRecCnt++;
		taskDelay(10000);
	}
}


void tg_SetAutoDownBrake()
{
	m_bAutoDownBrake = TRUE;
}

void tg_AutoDownloadEnd(UINT bErrCode)
{
	DATE_TIME_TYPE sTime;

	if(0xFFFF != bErrCode)
	{
		m_pDirectMem->nAutoDownLastError = bErrCode;
		if(bErrCode)
		{
			m_pDirectMem->nAutoDownFailCnt++;
			m_TcThis.sFlag.bAutoDownFail = TRUE;
		}
		else
		{
			m_TcThis.sFlag.bAutoDownFail = FALSE;
		}

		timeGet(&sTime);
		m_pDirectMem->nAutoDownSysTimeCnt = gm_RtcToSysTime(&sTime);
	}
	m_TcThis.sFlag.bOnAutoDownload = FALSE;
	mx_EndEstimatedTime(NULL);
	m_nAutoDrvRecTaskID = 0;
}


void tg_AutoDownSuperviser()
{
	BOOL bDetect;
	taskDelay(1000);

	while(1)
	{
		if(m_nAutoDrvRecTaskID)
		{
			bDetect = pc_CardDetect(REC_AUTO_DRIVENO);
			if(!bDetect)
			{
				taskDelay(100);
				if(taskIdVerify(m_nAutoDrvRecTaskID) == OK)
				{
					taskSuspend(m_nAutoDrvRecTaskID);
					taskDelete(m_nAutoDrvRecTaskID);
					tg_AutoDownloadEnd(6);
					TRACE("=> AUTU DOWN: TASK FORCE DELETE \n");
				}
			}
		}
		else break;
		taskDelay(500);
	}
	m_nAutoDownSuperviserTaskID = 0;
}



void op_AutoDownTrsCell(int nRcTrsPos)
{
	BOOL bSuc,bBrake=FALSE;
	BOOL bDetect;
	USHORT nPercent,nOldPercent=0;
	int i,j,nTemp,nFd;
	char chBuf[1024],szFileName[20],szPathName[256];
	UINT nFileSize;
	int nFileNumber;
	LPBYTE pSam = (LPBYTE)REC_ADDR(REC_STT_HEADOFFSET);

	bDetect = pc_CardDetect(REC_AUTO_DRIVENO);
	nFileNumber = (m_pDirectMem->nAutoTrsDownFileNumber%REC_AUTO_TRS_MAX_FILE) + 1;
	
	
	
	TRACE("=> AUTO TRS DOWNLOAD[%03d] EVENT....\n",nFileNumber);
	/* 0) 카드가 있는지 검사하고 초기화 한다. */
	if(!bDetect) 
	{
		TRACE("=> AUTO TRS DOWN: Card Not Found !!!\n");
		return;
	}
	
	if(m_TcThis.sFlag.bOnAutoDownload)
	{
		TRACE("=> AUTO TRS DOWN: Drive Download !!!\n");
		return;
	}
	
	
	/* 1) 자동 다운로드 할 화일의 크기를 설정한다. */
	nFileSize = REC_STT_SAMSIZE + 512;
	
	mx_BeginEstimatedTime();
	
	bSuc = pc_CardInit(0,REC_AUTO_DRIVENO);
	if(!bSuc)
	{
		TRACE("=> AUTO TRS DOWN: Card Initialize Failure !!!\n");
		return;
	}
	
	/* 2) 디스크 공간을 확보한다. */
	strcpy(szPathName,"B:/AUTO_STT");
	if(!pc_IsExistFolder(szPathName,REC_AUTO_DRIVENO))
	{
		if(!pc_FolderCreate(szPathName,REC_AUTO_DRIVENO))
		{
			TRACE("=> AUTO TRS DOWN: NOT CREATE FOLDER !!!\n");
			return ;
		}
	}

	/* 3) 다운로드할 파일이 있으면 자동 삭제한다. */
	gm_GetTrsFileName(szFileName,nFileNumber);
	sprintf(szPathName,"B:/AUTO_STT/%s",szFileName);

	if(pc_IsExistFile(szPathName))
	{
		bSuc = pc_FileDel(szPathName);
		if(!bSuc) 
		{
			TRACE("=> AUTO TRS DOWN: FILE [%s] can not delete !!!\n",szPathName);
			return ;
		}
	}
	
	/* 3.0) 다운로드할 파일을 오픈한다. */
	nFd = pc_FileOpen(szPathName,0x201,nFileSize+512);	
	if(nFd == -1) 
	{
		TRACE("=> File [%s] can not create !!!\n",szPathName);
		return;
	}

	/* 3.1) Status Trace 기록 FileHeader 생성 */
	memset(chBuf,0,sizeof(chBuf));
	gm_MakeFileHeader(chBuf,REC_STT_DATATYPE,1,0);
	nTemp = pc_xFileWrite(nFd,chBuf,512);
	bSuc = (nTemp != 512) ? FALSE : TRUE ;
	if(bSuc == FALSE) 
	{ 
		TRACE("=> AUTO TRS DOWN: Header Write Error !!! \n");
		pc_FileClose(nFd);
		pc_FileDel(szPathName);
		return;
	}
	
	memset(chBuf,0,sizeof(chBuf));
	for(i=0;i<nFileSize/512;i++)
	{
		gm_memcpy(&pSam[i*512],chBuf,512);

		nTemp = pc_vFileWrite(nFd,chBuf,512);
		if(nTemp != 512)
		{
			bSuc = ERROR;
			break;
		}
		nPercent = i*100/(nFileSize/512);
		if(nOldPercent != nPercent) 
		{
			TRACE("AUTO TRS DOWN: %d %% ...\n",nPercent);
			nOldPercent = nPercent;
		}
	}

	if(bSuc != ERROR && (nFileSize%512))
	{
		gm_memcpy(pSam+i*512,chBuf,512);

		nTemp = pc_vFileWrite(nFd,chBuf,nFileSize%512);
		if(nTemp != nFileSize%512)
		{
			bSuc = ERROR;
		}
	}

	if(bSuc == ERROR) { pc_FileClose(nFd);return;}
	
	m_pDirectMem->nAutoTrsDownFileNumber = (m_pDirectMem->nAutoTrsDownFileNumber+1)%REC_AUTO_TRS_MAX_FILE;
	TRACE("=> AUTO TRS DOWN: Download[%d] Complete ... \n",nFileSize);

	m_nAutoTrsRecTaskID = 0;
}

void op_AutoDownloadTrsTrigger(int nAutoTrsDownPos)
{
	if(m_nAutoTrsRecTaskID)
	{
		if(m_TcThis.nOpCnt > REC_AUTO_TRS_STARTCNT)
		{
			m_nAutoTrsRecTaskID = taskSpawn("uAutoTrs",160,0,10000,op_AutoDownTrsCell,nAutoTrsDownPos,0,0,0,0,0,0,0,0,0);
		}
	}
}

void tg_AutoDownloadCell(BOOL bForce)
{
	BOOL bSuc,bBrake=FALSE;
	BOOL bDetect;
	USHORT nPercent,nOldPercent=0;
	USHORT wField;
	int i,j,nTemp,nFd,nIndex,nHeadPos,nFieldStart,nTotalWSize=0;
	char chHeadBuf[1024],chBodyBuf[1024],szFileName[20],szPathName[256];
	UINT nWSize=0,nFileSize,nRecHeads,nRecBodys,nRemainKByte;
	int nFileNumber,nMaxHeadNumber = gw_GetDrvRecHeadNumber(),nWriteHeadCounter;
	PDRVHEADTYPE pVmeHead = (PDRVHEADTYPE)REC_ADDR(REC_DRV_HEADOFFSET);
	PDRVBODYTYPE pVmeBody = (PDRVBODYTYPE)REC_ADDR(REC_DRV_BODYOFFSET);
	SYSTIMETYPE sTime,eTime;

	nHeadPos = m_pDirectMem->nAutoDrvDownPos;
	bDetect = pc_CardDetect(REC_AUTO_DRIVENO);
	nFileNumber = (m_pDirectMem->nAutoDownFileNumber%REC_AUTO_MAXFILENO) + 1;
	
	TRACE("=> AUTO DOWNLOAD[%03d] EVENT....\n",nFileNumber);
	/* 0) 카드가 있는지 검사하고 초기화 한다. */
	if(!bDetect) 
	{
		TRACE("=> AUTO DOWN: Card Not Found !!!\n");
		m_nAutoDrvRecTaskID = 0;
		return;
	}
	
	
	/* 1) 자동 다운로드 할 화일의 크기를 설정한다. */
	memset(&sTime,0,sizeof(sTime));
	memset(&eTime,0,sizeof(eTime));
	nRecHeads = gw_GetDrvAutoDownReadyHeads(&sTime,&eTime);
	nRecBodys = gw_GetDrvAutoDownReadySamples();
	if(nRecBodys < REC_AUTO_SIZEMIN && !bForce)
	{
		TRACE("=> AUTO DOWN: CANCEL [LIMITED SAMPLES(%d/%d)]\n",nRecBodys,REC_AUTO_SIZEMIN);
		tg_AutoDownloadEnd(0xFFFF);
		return;
	}
	
	nFileSize = (nRecHeads*REC_DRV_HEADWRITESIZE) + (nRecBodys * sizeof(DRVBODYTYPE));
	
	
	
	m_TcThis.sFlag.bOnAutoDownload = TRUE;
	mx_BeginEstimatedTime();
	
	bSuc = pc_CardInit(0,REC_AUTO_DRIVENO);
	if(!bSuc)
	{
		TRACE("=> AUTO DOWN: Card Initialize Failure !!!\n");
		tg_AutoDownloadEnd(1);
		return;
	}
	
	/* 2) 디스크 공간을 확보한다. */
	/* 2009년 1월부터 폴더를 어제까지 검색하여  폴더를 통채로 삭제한다. */

	nRemainKByte = pc_GetDiskFreeKByte(REC_AUTO_DRIVENO);

	if(nRemainKByte < (nFileSize+512)/1024) 
	{
		TRACE("=> AUTO DOWN: Not enough space [%d byte/%d kbyte] !!!\n",(nFileSize+512),nRemainKByte);
		tg_AutoDownloadEnd(2);
		return ;
	}
	strcpy(szPathName,"B:/AUTO_DRV");
	if(!pc_IsExistFolder(szPathName,REC_AUTO_DRIVENO))
	{
		if(!pc_FolderCreate(szPathName,REC_AUTO_DRIVENO))
		{
			tg_AutoDownloadEnd(2);
			return ;
		}
	}

	/* 3) 다운로드할 파일이 있으면 자동 삭제한다. */
	gm_GetAutoDrvFileName(szFileName,m_pDirectMem->nAutoDownFileNumber);
	sprintf(szPathName,"B:/AUTO_DRV/%s",szFileName);

	if(pc_IsExistFile(szPathName))
	{
		bSuc = pc_FileDel(szPathName);
		if(!bSuc) 
		{
			TRACE("=> AUTO DOWN: FILE [%s] can not delete !!!\n",szPathName);
			tg_AutoDownloadEnd(3);
			return ;
		}
	}
	
	/* 3.0) 다운로드할 파일을 오픈한다. */
	nFd = pc_FileOpen(szPathName,0x201,nFileSize+512);	
	if(nFd == -1) 
	{
		TRACE("=> File [%s] can not create !!!\n",szPathName);
		tg_AutoDownloadEnd(5);
		return;
	}

	/* 3.1) 운전기록 FileHeader 생성 */
	memset(chHeadBuf,0,sizeof(chHeadBuf));
	gm_MakeFileHeader(chHeadBuf,REC_DRV_DATATYPE,0,0);
	nTemp = pc_xFileWrite(nFd,chHeadBuf,512);
	bSuc = (nTemp != 512) ? FALSE : TRUE ;
	if(bSuc == FALSE) 
	{ 
		TRACE("=> AUTO DOWN: Header Write Error !!! \n");
		pc_FileClose(nFd);
		pc_FileDel(szPathName);
		tg_AutoDownloadEnd(4);
		return;
	}
	
	/* 3.2) 운전기록 Sampling 작성 */
	nOldPercent = 0;
	nWriteHeadCounter = 0;
	bSuc = OK;
	for(nIndex=0;nIndex<nMaxHeadNumber;nIndex++)
	{
		memset(chHeadBuf,0,sizeof(chHeadBuf));
		nHeadPos = gw_GetDrvRecPosByIndex(nIndex);

		if(pVmeHead[nHeadPos].Data_Type == REC_DRV_DATATYPE)
		{
			if(!pVmeHead[nHeadPos].bAutoDownCheck)
			{
				nFieldStart = MK_DWORD(pVmeHead[nHeadPos].wBodyField_H,pVmeHead[nHeadPos].wBodyField_L);
				printf("Drv[%d] - %d:(%d)...\n",nHeadPos,nFieldStart,pVmeHead[nHeadPos].wData_Count);
				
				if(pVmeHead[nHeadPos].wData_Count)
				{
					nWSize = pc_xFileWrite(nFd,&pVmeHead[nHeadPos],REC_DRV_HEADWRITESIZE);
					if(nWSize != REC_DRV_HEADWRITESIZE)
					{
						bSuc = ERROR;
						break;
					}
					nTotalWSize += nWSize;
					
					
					for(wField=0;wField<pVmeHead[nHeadPos].wData_Count;wField++)
					{
						nWSize = pc_xFileWrite(nFd,&pVmeBody[(nFieldStart+wField)%REC_DRV_BODYSIZE],sizeof(DRVBODYTYPE));
						if(nWSize != sizeof(DRVBODYTYPE))
						{
							bSuc = ERROR;
							TRACE("=> AUTO DOWN: Body Write[%d] Error !!! \n",nTemp);
							m_pDirectMem->nAutoDownLastError = 4;
							m_pDirectMem->nAutoDownFailCnt++;
							break;
						}
						nTotalWSize += nWSize;
						
						nPercent = nTotalWSize*100/nFileSize;
						if(nOldPercent != nPercent) 
						{
							gp_WritingWord(6891,nPercent);
							nOldPercent = nPercent;
						}
						
						if(m_bAutoDownBrake) 
						{
							TRACE("=> AUTO DOWN: BRAKED....\n");
							pc_FileClose(nFd);
							pc_FileDel(szPathName);
							tg_AutoDownloadEnd(0xFFFF);
							return;
						}
						
						
					}
		
					if(bSuc != ERROR)
					{
						nWriteHeadCounter++;
						pVmeHead[nHeadPos].bAutoDownCheck = TRUE;
					}
				}
			}
		}

		if(bSuc == ERROR) break;
	}

	if(bSuc != ERROR)
	{
		/* 운전기록 Header 재생성 */
		pc_xFileSeek(nFd,0,SEEK_SET);
		memset(chHeadBuf,0,sizeof(chHeadBuf));
		gm_MakeFileHeader(chHeadBuf,REC_DRV_DATATYPE,nWriteHeadCounter,0);
		nTemp = pc_xFileWrite(nFd,chHeadBuf,512);
		bSuc = (nTemp != 512) ? FALSE : TRUE ;
		if(bSuc == FALSE) 
		{ 
			TRACE("=> AUTO DOWN: Header Write Error !!! \n");
			pc_FileClose(nFd);
			pc_FileDel(szPathName);
			tg_AutoDownloadEnd(4);
			return;
		}

		pc_FileClose(nFd);
	}
	else
	{
		pc_FileClose(nFd);
		pc_FileDel(szPathName);
		m_TcThis.sFlag.bAutoDownFail = TRUE;
	}
	
	m_pDirectMem->nAutoDrvDownPos = nHeadPos;
	m_pDirectMem->nAutoDownFileNumber = (m_pDirectMem->nAutoDownFileNumber+1)%REC_AUTO_MAXFILENO;
	TRACE("=> AUTO DOWN: Download[%d] Complete ...[%d] \n",nFileSize,nWriteHeadCounter);
	tg_AutoDownloadEnd(0);
}

/* 자동 다운로드 */
void tg_AutoDrvRecEvent()
{
	m_nAutoDrvRecTaskID = taskSpawn("xAutoRec",180,0,10000,tg_AutoDownloadCell,0,0,0,0,0,0,0,0,0,0);
	m_nAutoDownSuperviserTaskID = taskSpawn("xASuperV",179,0,10000,tg_AutoDownSuperviser,0,0,0,0,0,0,0,0,0,0);
}


