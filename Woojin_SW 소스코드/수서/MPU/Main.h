/*******************************************************************/
/* MAIN HEADER                                                     */
/* -메인 프로그램과 관련된 정의는 여기서 기술한다.                 */
/*******************************************************************/
#ifndef _MAIN_H_
#define _MAIN_H_

#include "mmtype.h"
#include "ScpLib.h"
#include "interface.h"


/********************************************************************************************/
/* - 1.00 : 조합시험 준비                                    						*/

#define SYSTEM_TAG	"wTgis_SA0"			/* 16 BYTE 이하 */
#define SYSTEM_VER	1


/*********************************************************/
/*	마스터/허가 비트 플래그                              */
/*********************************************************/
#define MPB_MASTER		BIT07
#define MPB_PERMIT		BIT06

#define ISTC1(X)	(BYTE_H(X)%2)
#define ISTC2(X)	(!(BYTE_H(X)%2))

#define HS_ISODD(HS)	(HS&0x1F)	/* TC 판별 */

#define TRCARHO(X)	((X)&0xF0)	/* 호차번호 */
#define TRTYPE(X)	((X)&0x0F)	/* 차종 */

#define ISTRTYPE(X)	((X)&0x0F)	/* 차종 : 1,2,3 */

#define TRTYPE_TC		1			/* 단말 TC */
#define TRTYPE_T1		2
#define TRTYPE_T2		3
#define TRTYPE_M_		4			/* 사용하지 않음 */
#define TRTYPE_MD		5


/* BOARD ADDRESS 를 정의한다. */
/*********************************************************/
/*	보드 어드레스                                        */
/*********************************************************/
#define MIU2_BASE		0xF0000000			/* MIU2 Address */
#define IIU1_BASE		0xF0F10000			/* D100 Base */
#define IIU2_BASE		0xF0F20000			/* D100 Base */
#define IIU3_BASE		0xF0F30000			/* D100 Base */
#define IIU4_BASE		0xF0F40000			/* D100 Base */
#define IIU5_BASE		0xF0F50000			/* D100 Base */

#define MIU2_BARD_ID	0xF0FC0000			/* MIU3 BOARD ID [0xFD]] */

#define IIU_READ_ID(X)		((X)+0x0001)
#define IIU_READ_DATA(X)	*((USHORT*)((X)+0x0008)


#define MAX_TRAIN_SIZE	10		/* 편성의 차량수 */
#define MAX_FAULT_COUNT	30		/* 고장횟수 */
#define MAX_FCHECK_TIME	100		/* 고장검사 초기 휴유시간 */

#define MAX_LCOM_SIZE	600
#define MAX_LCOM_TC_CHANNEL		7
#define MAX_LCOM_CC_CHANNEL		4		/* 한개 CC당 채널 갯수 */

static BYTE m_chCcHexaID[MAX_TRAIN_SIZE] = {0x11,0x25,0x35,0x42,0x55,0x63,0x72,0x85,0x95,0x01};

static char m_szLSysNameTC[NAME_UCOM_CHANNELS][10]	= {"BRAKE","SIV","C/I","PMCF"};
                                       
                               /* 통신주기 [ms]    ,    500,  250, 1000,    -, */
static char m_szLSysNameCC[MAX_LCOM_CHANNEL][10] = {"BRAKE","SIV","C/I","PMCF"};
static int  m_bLSysFaultCount[MAX_LCOM_CHANNEL]  = {     30,   30,   30,    30};		/* 고장검지 카운터 */

/*********************************************************/
/*	주기 정의                                            */
/*********************************************************/
#define MAIN_TXCOMM_PERIOD		100	/* 메인통신 송신 주기 [100ms] */
#define MAIN_RXCOMM_PERIOD		50	/* 메인통신 수신 주기 [약 83.6ms] */

/* 메인통신 고장 정의 */
#define MAX_LIMIT_COUNT	100				/* 통신 고장 한계치*/
#define MAX_CCFAULT_COUNT	20				/* CC 통신 고장 횟수 */
#define MAX_TCFAULT_COUNT	20				/* TC 통신 고장 횟수 */

/* TC-LIU 통신고장 정의 */
#define MAX_LIU_FAULT_COUNT	5				/* 통신 고장 횟수 */
#define MAX_LIU_LIMIT_COUNT	100			/* 통신 고장 한계치*/


/* 하부통신 고장 정의 */
#define MAX_LSYS_FAULT_COUNT	30		/* 하부통신 고장 횟수 */
#define MAX_LSYS_LIMIT_COUNT	200		/* 하부통신 최대 카운터 */
#define MAX_USYS_FAULT_COUNT	30		/* 하부통신 고장 횟수 */
#define MAX_USYS_LIMIT_COUNT	200		/* 하부통신 최대 카운터 */

#define MC_VER_REQ			0x01	/* VERSION REQUEST	*/
#define MC_VER_DATA			0x02	/* VERSION DATA	*/
#define MC_MAJORFAULTDETECT	0x03	
#define	MC_SETMASTER		0x06	/* Main Comm Command... ( 1 ~ 63) */
#define MC_TIMESET			0x07
#define MC_MAXTRIGCLEAR		0x09	/* 장치 MAX-TRIGGER CLEAR를 요청 */
#define MC_SETWHEELDIA		0x0A	/* 차량 초기 설정정보 */
#define MC_SETTHISDIST		0x0B
#define MC_SETFORMNUMBER	0x0C
#define MC_SETPSSWEIGHT		0x0D
#define MC_SETTRAINSIZE		0x0E
#define MC_SETOPPEDIST		0x0F


#define LSYSID_NONE		0xFF
#define LSYSID_BRAKE	0x00
#define LSYSID_SIV		0x01
#define LSYSID_CI		0x02



#define MAX_MCOMMVAL	20

#define TDB_SIZE_SIV	15
#define TDB_SIZE_ECU	50

#define TDB_MAX_SIV		0x63		/* TRACE NUMBER 는 1 ~ 3 (3개) */
#define TDB_MAX_ECU		0x16		/* TRACE NUMBER 는 0 ~ 4 (5개) */

#define LSYSTRACE_START_TIME	300		/* 추적데이터를 받기 시작할 시간 */

/*********************************************************/
/*	중앙장치                                             */
/*********************************************************/

typedef struct
{
	USHORT nTC_ComFaultCnt;
	USHORT nLiu_ComFaultCnt;
	USHORT nCC_ComFaultCnt[MAX_TRAIN_SIZE];
	USHORT nMComTxByteSize;					/* 메인통신 TX 전송 크기 */
	USHORT nMComRxByteSize[MAX_TRAIN_SIZE];	/* 메인통신 RX BYTE 크기 */
}MCOM_MAX_TRIGGERTYPE;

typedef struct
{
	BYTE bThisSysFault		:1;	/* 자신의 중앙장치 통신고장 */
	BYTE bSysStarted		:1;	/* 시스템 메인통신개시 기동 */
	BYTE bSysRxUpdated		:1; /* MCOM RX UPDATED... */

	BYTE bTxMComCarNumSet	:1; /* 차량번호 설정을 메인통신으로 전송하는가? */
	BYTE bMComMaster		:1; /* 메인통신의 Master인가?  */
	BYTE bDiaCheckError		:1;	/* 다이아 체크 오류 */
	BYTE bDownloadComplete	:1;
    BYTE bDownloadStarted	:1;
	BYTE bOnAutoDownload	:1;	/* 현재 자동다운로드 진행중인가? */
	BYTE bAutoDownFail		:1;
	BYTE bOnTest			:1;

	BOOL bUSysMTxUpdate[MAX_UCOM_CHANNEL];
	
	USHORT wCiCutON;			/* CI-CUT 현시 */
	USHORT wCiCutOFF;			/* CI-CUT OFF 문자현시 */

	USHORT	wMComImpectNo;		/* 메인통신 충돌 카운터 */
	UINT	nMComAliveCounter;

	SYSTIMETYPE systime;		/* 메인통신기준시각[BCD]: 전송시 마다 1회씩 Update 한다. */

}SYSFLAGTYPE,*PSYSFLAGTYPE;

/*********************************************************/
/*	메인통신                                             */
/*********************************************************/

typedef struct
{
	USHORT wTxSize;
	USHORT wRxSize;
	UCHAR chRxData[50];
	UCHAR chTxData[50];
}TCCOMTYPE,*PTCCOMTYPE;




/* 메인통신 헤더 구조 */
typedef struct
{
	UCHAR chToAddr;
	UCHAR chFromAddr;
	UCHAR chDo[10][4];
	UCHAR chOpCodeOffset;
	UCHAR chDataBlock[1];
}MAINCOMTXHEADTYPE,*PMAINCOMTXHEADTYPE;



/* 단말통신 OPCODE[10] 에 대한 정보 */
typedef struct
{
	UCHAR chOpCode;
	UCHAR chUsComTxBlock[1];
}MAINCOMTXBODYTYPE,*PMAINCOMTXBODYTYPE;

typedef struct
{
	UCHAR chDi[16];
	UCHAR chAi[2];
	UCHAR chPi[2];
	UCHAR chOpCodeOffset;
}MAINCOMRXHEADTYPE,*PMAINCOMRXHEADTYPE;

typedef struct
{
	UCHAR chOpCode;
	UCHAR chUsComRxBlock[1];
}MAINCOMRXBODYTYPE,*PMAINCOMRXBODYTYPE;



/* 채널별 TX 통신 상태 정보 */
typedef struct
{
	UCHAR chSysCode;
	UCHAR chSubChannel;				/* 현재 채널과 동시에 보낼 채널 */
	UCHAR chCycle;
	UCHAR chEvent;

	UCHAR bOnTraceReq			:1;	/* TRACE 전송이 시작되었는가 ? */
	UCHAR						:1;	/* TDR 을 요청할 타임인가? TDR/SDR :교번요청방식 */
	UCHAR 						:1;
	UCHAR 						:1;
	UCHAR 						:1;
	UCHAR 						:1;
	UCHAR 						:1;
	UCHAR 						:1;

	UCHAR bEventMethod			:1;/* 현재포트가 Event 방식인가 ? */
	UCHAR bTxEventSend			:1;/* Event 방식의 경우 '1' 일 경우만 전송한다. */
	UCHAR bMasterClock			:1;/* 통신별 Master Clock 설정변경용 */
	UCHAR bTxSended				:1;
	UCHAR bSendData				:1;/* Tx를 전송 하라는 Application Message */
	UCHAR bEventRxOnCheck		:1;/* 현재 Event 방식중 Rx를 Checking 중이므로 Tx 송신 금지 */
	UCHAR 						:1;
	UCHAR 						:1;

	USHORT wApplyCarHo;
	USHORT wAppliedCarHo;		/* 전송한 차량의 BITID */

	UINT nSeqCnt;

}LCOMTXHEADTYPE,*PLCOMTXHEADTYPE;

typedef struct
{
	UCHAR chSpare;

	UCHAR			bComFault	:1;				/* 현재 채널 통신고장 */
	UCHAR			bComStarted	:1;
	UCHAR			bRxUpdated	:1;
	UCHAR						:1;	 
	UCHAR						:1;	
	UCHAR						:1; 
	UCHAR						:1;
	UCHAR						:1;

	UCHAR						:1;
	UCHAR						:1;
	UCHAR						:1;
	UCHAR						:1;
	UCHAR						:1;
	UCHAR						:1;
	UCHAR 						:1;
	UCHAR 						:1;

	UCHAR chRxCycle;							/* 송신후 받은 시간 */

	USHORT wComFaultCnt;							/* 통신고장이 발생한 횟수를 카운트 한다. (30회당 1 카운터 )   */

}LCOMRXHEADTYPE,*PLCOMRXHEADTYPE;

typedef struct
{
	UCHAR			nSize;							/* CC 각각으로 부터 받은 채널별 수신정보 크기 */
	UCHAR			chDataPack[MAX_LCOM_SIZE];			/* CC 각각으로부터 받은 채널별 수신정보*/
}LCOMBODYTYPE,*PLCOMBODYTYPE;

typedef struct
{
	BYTE chChannel;
	LCOMRXHEADTYPE Head;
	LCOMBODYTYPE Body;
}LSYSRXCOMTYPE,*PLSYSRXCOMTYPE;

typedef struct
{
	LCOMTXHEADTYPE Head;
	LCOMBODYTYPE Body;
}LSYSTXCOMTYPE,*PLSYSTXCOMTYPE;



/*********************************************************/
/*	단말장치(CC)                                         */
/*********************************************************/

typedef struct
{
	int nMaxDevNum;					/* 한개 채널당 장치 갯수 */

	UCHAR					:1;
	UCHAR					:1;
	UCHAR					:1;
	UCHAR					:1;
	UCHAR					:1;
	UCHAR					:1;
	UCHAR					:1;
	UCHAR					:1;
	
}CCOPTIONS,*PCCOPTIONS;

#define MAX_DEV_NUM		5


typedef struct
{
	/* 단말장치 디지털 데이터 */
	PLSYSTXCOMTYPE pLSysTx[MAX_LCOM_CHANNEL];
}CCTXTYPE,*PCCTXTYPE;



typedef struct	/* 단말장치 수신 구조(메인통신) */
{
	CCRXHEADTYPE Head;
	PLSYSRXCOMTYPE	pLSysRx[MAX_LCOM_CHANNEL];			/* TRACE 기록은 여기에 저장되지 않고 wRxTraceBlock 에 저장된다. */
} CCRXTYPE, *PCCRXTYPE;	

typedef struct
{
	UCHAR MOT		:1;	/* 구동모드 */
	UCHAR BRK		:1;	/* 제동모드 */

	UCHAR TCUT		:1;	/* 전구동차의 구동불능 */
	
}TCDERIVETYPE,*PTCDERIVETYPE; /* TC 파생신호 */

typedef struct
{
	UCHAR CUT		:1;
	UCHAR HSCB		:1;
	
	BYTE PDEM;			/* 가장가까운 구동차의 PWM RATE */
	BYTE BDEM;			/* 가장가가운 구동차의 B1,B2,B4의 노치값 */

	UINT IM;			/* 모타전류 */
	UINT PL;			/* 승객하중 */

	UINT nCMGR_Counter;	/* CMGR ON COUNTER */

}CCDERIVETYPE,*PCCDERIVETYPE; /* CC 파생신호 */

typedef struct
{
	CCTXTYPE TxInfo;
	CCRXTYPE RxInfo[MAX_TRAIN_SIZE];
	CCRXTYPE OldRxInfo[MAX_TRAIN_SIZE];	/* 단말측 이전 데이터 */
	CCDERIVETYPE xDerive[MAX_TRAIN_SIZE];				/* 단말측 파생신호 */
}CCINFOTYPE,*PCCINFOTYPE;



typedef struct
{
	UCHAR bTraceReq			:1;		/* 추적기록이 시작되었는가? */
	UCHAR bTraceOrder		:1;		/* 현재 추적기록을 요청할 순서인가? SDR/TDR 교번방식 */
	UCHAR					:1;		/* 추적기록 프로토콜 전송후 Check 시 초기화 */
	UCHAR bRxUpdated		:1;		/* 추적기록을 수신했는가 ? */
	UCHAR bTerminated		:1;		/* 편성을 모두 받았는가? */
	UCHAR					:1;
	UCHAR					:1;
	UCHAR bBlockRxStarted	:1;
	
	UCHAR chTxTraceNum;				/* TRACE 요청할 추적기록 번호 : 1,2,3,.... */ 

	USHORT wTxTraceBlock;			/* TRACE 요청할 1개당 CELL 블럭 번호 : 예) 2번추적기록의 3번 블럭 */
	USHORT wRxTraceBlock;

	USHORT wOldRxTraceBlock;
	USHORT wOldTxTraceNum;			

	UCHAR chTxReqCarHo;				/* TX로 전송할 차량호차 (1~6) : 추적기록 시작의 판단.*/
	UCHAR chRxReqFault;				/* TX를 전송하고나서 요구한 블럭을 수신하지 못한 카운터 */
	
	UCHAR nTraceClearCarHo;
	UCHAR nTraceClearCounter;

	USHORT wFinishedCar;			/* 다운로드를 진행 차량의 BIT-FIELD */
	USHORT wLoggerSel;
	USHORT wErrorNo;				/* 다운로드 오류 번호 : 1 - TIMEOUT , 2-로거갯수 없음 , 3 - 운전대 전환됨.*/

	/* VVVF TD 크기: 100 * 0x8c*/
	/* ECU  TD 크기: 22 + 22 BYTE * 40 개 = 902*/
	USHORT  wBlockSize;
	UCHAR *chRxTraceData;		/* SIV TEXT BLOCK[50] , CI TEXT BLOCK[52], BRAKE TEXT BLOCK[44] */

}TRACEFALG,*PTRACEFALG;



typedef struct
{
	USHORT wPowerTime;	/* 역행시간 0.1 sec/bit */
	UINT nPowerDist;	/* 역행거리 1 m/bit */
	USHORT wBrakeTime;	/* 제동시간 0.1 sec/bit */
	UINT nBrakeDist;	/* 제동거리 1 m/bit */
	UCHAR MaxAccel;		/* 최대가속도 0.1 km/h/bit */
	UCHAR MaxDecel;		/* 최대감속도 0.1 km/h/bit */
	
	UINT nStartDistance;	/* 1 m/bit */
	UINT nMotTotalDist;		/* 1 m/bit */

}MOMENTARYTYPE,*PMOMENTARYTYPETYPE; /* 2400 byte */

typedef struct
{
	UINT nStep;

	BYTE bTxTestStart	:1;
	BYTE bTxTestStop	:1;
	BYTE bTestComplete	:1;
	BYTE				:1;
	
	USHORT wRxUpdated;
	USHORT wRxReady[4];
	USHORT wOldRxReady[4];

	BYTE chRxSize[10];
	BYTE chRxTestData[10][30];

	UINT nRxReadyCounter;

	USHORT wTestNG;
	USHORT wTestOK;

	USHORT wApplyForm;
	USHORT wStartForm;
	
}SIVTESTMEMTYPE,*PSIVTESTMEMTYPE;

typedef struct	/* 중앙장치 구조 */
{
	BYTE chHexaID;		/* HEXA S/W */
	BYTE chMpuVer;
	SCMVERTYPE ScmVer;
	BYTE chScreenVer;
	BYTE chMiuCpldVer;

	SYSFLAGTYPE sFlag;


	SIVTESTMEMTYPE xSivTest;
	TCDERIVETYPE xDerive;
	MCOM_MAX_TRIGGERTYPE MaxTrig;

	/* 중앙측 디지털 데이터 */
	TCDITYPE tcDi; /* TC용 DI 4 BYTE */
	LSYSRXCOMTYPE USysRx[MAX_UCOM_CHANNEL];
	LSYSTXCOMTYPE USysTx[MAX_UCOM_CHANNEL];


	BYTE chRxAddress;	/* 메인통신 영역으로 부터 수신받은 ID */
	BYTE chRxAddressUpdateCnt;

	UINT nSpeed;			/* 현재 속도 [0.1 km/h/bit] */
	int nASpeed;			/* 가속도 0.1 km/h/s */
	UINT nForeverDist;		/* 총주행 거리 값 [m] */
	UINT nRunningDist;		/* 역간 주행거리 [m] */
	UINT nDailyDist;		/* 하루 주행거리 [m]*/
	UINT nDailyTime;		/* 하루 운행시간 [sec] */

	BYTE chCurStCode;
	BYTE chNxtStCode;

	USHORT wCurScrNo;		/* 현재 화면 번호 */
	USHORT nCarHo;			/* 현재 차호가 0호차인지 또는 9호차인지 ? */

	UCHAR nTC_ComFaultCnt;		/* 자신의 중앙장치 고장 카운터 */
	UCHAR nTC_ComFaultMaxCnt;

	PCCRXTYPE pCCInfo;		/* 중앙측에 달린 단말장치 포인터 */
	UCHAR bCC_ComFault[MAX_TRAIN_SIZE];	/* 단말장치의 TIS FAULT 이다.              */	
	BYTE bCC_ComStarted[MAX_TRAIN_SIZE];	/* 단말장치 초기화 성공 여부 */
	BYTE nCC_ComFaultCnt[MAX_TRAIN_SIZE];	/* 단말통신 오류 횟수 MAX_FAULT_COUNT 회당 1씩 증가 */
	UCHAR nCC_ComFaultMaxCnt[MAX_TRAIN_SIZE];

	

	int nNearCiCarHo;
	int nNearBcuCarHo;

	UINT	nSysFaultCnt;

	UINT	nOpCnt;
	UINT	nMComRxOpCnt;		/* 장치로부터 받은 카운터 */

	UINT	nMComTxMaxTime;
	UINT	nMComTxTime;
	UINT	nMComRxTime;
	UINT	nFCheckTime;


	TRACEFALG	logSiv;
	TRACEFALG	logBrake;

	
} TCTYPE, *PTCTYPE;

/*********************************************************/

/*********************************************************/
/*	외부변수                                             */
/*********************************************************/
extern TCTYPE m_TcThis;		/* 자차측 중앙 포인터 */
extern TCTYPE m_TcOppe;		/* 상대측 중앙 데이터 */
extern PTCTYPE m_pTcThis;		/* 중앙 자차측 포인터 */
extern PTCTYPE m_pTcOppe;		/* 중앙 자차측 포인터 */
extern PTCTYPE m_pTcHcr;		/* HCR이 투입된 측의 MCP 포인터 */
extern PTCTYPE m_pTcTcr;		/* HCR이 투입된 측의 MCP 포인터 */
extern PTCTYPE m_pTc[2];		/* TC 포인터 10H => [1] , 00H => [0] */
extern CCINFOTYPE m_CC_Info;
extern UINT m_nTrainSize;
extern UCHAR m_bTxMComCarNumSet;
extern BOOL m_bRcWriteEnable;

extern UINT m_nMComTxByteSize;					/* 메인통신 TX 전송 크기 */
extern UINT m_nMComTxByteMaxSize;
extern USHORT m_nMComRxByteSize[MAX_TRAIN_SIZE];	/* 메인통신 RX BYTE 크기 */
extern USHORT m_nMComRxByteMaxSize[MAX_TRAIN_SIZE];
extern MOMENTARYTYPE		m_xMoment;

/*********************************************************/
/*	함수 프로토타입                                      */
/*********************************************************/
/* Task Routine */
void tg_MainComm();		/* 메인통신 */
void tg_USysComm();
BOOL tg_TC_ReceiveDataProcess(LPBYTE chBuf);
void tg_DPRAM_Info_Read();

/* Normal Function */
void tg_Main();				/* TMS 기동 엔트리 포인트 */
void tg_ArgInit();				/* TMS 초기화 */
void tg_Close();			/* TMS 중지 */
void tg_GetLocalData();		/* 로컬 데이터 수집 */
void tg_SetLocalData();		/* 로컬 데이터 출력 */

void tg_BeginTxAccess();
void tg_EndTxAccess();
void tg_BeginRxAccess();
void tg_EndRxAccess();
void tg_BeginUsComAccess();
void tg_EndUsComAccess();

BYTE tg_GetTcThisHexaAddr();
void tg_MasterSendComm();
void tg_RtnMaster();
void tg_MasterChanger(UINT nDelayTick);
void tg_OnMasterChanged();
BYTE tg_GetCmdCodeValue();
void tg_OnSlaveChanged();
UINT tg_TrainSizeSearch();
UCHAR tg_GetInitialMaster();
void tg_TC_MasterChangeAlgorism(LPBYTE chRxBuf);

void tg_DrvRec();
void tg_DrvRecCell();
void tg_SetDrvNewHead();
void tg_FaultCheckLoop();
void tg_MotCacluProcess();
void tg_TrsRecQueued();
void tg_HisDistRec();
void tg_SpeedReckon();
void tg_USComTxLoop(int nChannel);
BOOL tg_CCRxCheckUpdate(int nCarHo,BYTE chChannel,PUSCOMRXTXTYPE pUsComRx);


#endif /* _MAIN_H_ */