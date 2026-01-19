#include "mmtype.h"

#ifndef _GDMS_H_
#define _GDMS_H_

#define MPUMEM_BASE		0xf1000000 

#define MEM2_BASE		MIU2_BASE
/********************************************************************/
/* MCPU NV-SRAM 2M BYTE 사용 영역                                   */

#define DIA_BASE_ADDRESS	(MPUMEM_BASE+0x20000)	/* 0xf1020000 ~ 0xf1070000*/
#define REC_DIA_SIZE			0x50000		/* DIA 의 크기 */
#define	MEMFLAG_BASE	(MEM2_BASE+0xEF3000)
#define MAX_MEMFLAG_SIZE	0xD000			/* 52 kbyte */
#define DIRECT_MEMBASE	(MPUMEM_BASE + 0x10000)
#define MAX_DIRECT_MEMSIZE	0xD000



#define	REC_ADDR(X)	(MEM2_BASE+(X))

#define DEFAULT_WHEELDIA	860					/* 기본 휠 다이아 */
#define ISWHEELRANGE(X)		ISRANGE(X,780,860)	/* 휠 다이아 범위인가? */

typedef struct
{
} USEDARG,*PUSEDARG;   /* SIZE 가 0x200000 을 넘으면 안된다.*/


typedef struct
{
	UINT  nDistID1;
	UINT  nDistID2;

	USHORT wRandDataCrc;
	BYTE chRandData[10];

	BYTE					:1;
	BYTE  					:1;
	BYTE  					:1;
	BYTE  					:1;
	BYTE  bHisLoadOverwrite	:1;
	BYTE  bHisDistOverwrite	:1;
	BYTE  bPieTraceOverwrite:1;
	BYTE  bSivTraceOverwrite:1;

	BYTE  bEcuTraceOverwrite:1;
	BYTE  bRcTrsOverwrite	:1;	
	BYTE					:1;
	BYTE					:1;
	BYTE					:1;
	BYTE					:1;
	BYTE					:1;
	BYTE 					:1;

	USHORT wPassengerWeight;	/* 승객 체중 kg/bit */
	USHORT wFormNumber;			/* 편성번호 [BIN] Ex) 421 */
	USHORT wCarWheelDia[10];	/* 각 차량의 차륜경 [mm] [BIN] */
	
	UINT  nTrainSize;

	UINT	nForeverDist;		/* 총 주행거리 [m]*/
	UINT	nStPosRunDist;		/* 출입문 열릴때 초기화 되는 주행거리 */
	UINT    nForeverTime;		/* 총 주행시간 [sec] */

	UINT	nSpare;

	UINT nRcDrvHeadFront;	/* 운전데이타의 Header Start Pos	*/
	UINT nRcDrvBodyFront;	/* 운전데이타의 Header 에 기록된 Body Start Pos */
	UINT nRcDrvHeadRear;	/* 운전데이타의 현재 기록 위치		*/
	UINT nRcDrvBodyRear;	/* 운전데이타의 현재 기록 Body 위치 */

	UINT nRcTrsPos;			/* 열차상태의 의 기록 할 위치를 가리킨다. */

	UINT	nFaultListRear;				/* FAULT LIST REAR */
	UINT	nFaultListFront;

	UINT	nAutoDrvDownPos;				/* 마지막으로 다운로드한 위치				*/
	UINT	nAutoDownFailCnt;				/* 자동 다운로드 실패한 갯수                */
	UINT	nAutoDownFileNumber;			/* 자동 다운로드 파일번호	(0~99)			*/
	UINT    nAutoDownSysTimeCnt;			/* 마지막으로 다운로드한 날짜 (초카운터)	*/
	UINT	nAutoDownLastError;				/* 마지막으로 다운로드를 실패한 원인        */

	UINT	nAutoTrsDownFileNumber;

	UINT	nPieTraceBodyPos;
	UINT	nSivTraceBodyPos;
	UINT	nEcuTraceBodyPos;

	UINT	nHisLoadBodyPos;
	UINT	nHisDistBodyPos;


	UINT	nGenerPowerKwh[10];/* 소비전력량[kwh] : 호차별 소비전력량 */
	USHORT	nGenerPowerKws[10];	/* 소비전력량[0.1 kws]Master 측에서만 소비 VVVF[3], 회생 VVVF[3] 로 계산한다. */
	UINT	nRegenPowerKwh[10];/* 소비전력량[kwh] : 호차별 소비전력량 */
	USHORT	nRegenPowerKws[10];	/* 소비전력량[0.1 kws]Master 측에서만 소비 VVVF[3], 회생 VVVF[3] 로 계산한다. */

	USHORT  wDiaCRC;
	UINT nDiaFileSize;	/* 설치한 DIA의 파일 크기 */



	SYSTIMETYPE DataClearTime[4];
	SYSTIMETYPE DrvRecDownLastTime;			/* 수동으로 운전기록을 다운로드한 최종 시각 */
	SYSTIMETYPE LoggerDownLastTime;			/* 로거기록을 다운로드한 최종 시각 */

	UINT nHisLastDrvTime;
	UINT nHisLastDrvDist;
	
}DIRECTMEMTYPE,*PDIRECTMEMTYPE;


extern PDIRECTMEMTYPE m_pDirectMem;



typedef struct
{
	UCHAR chBlockType;
	UCHAR chSpare;						/* 추적기록시 장치의 고장코드 삽입용 */

	SYSTIMETYPE xDate;
}GM_HEAD_TYPE,*PGM_HEAD_TYPE;	/* 8 BYTE */

typedef struct
{
	UCHAR Data_Type;
	UCHAR chFlag;

	SYSTIMETYPE sTime;

	UINT dwData_Count;
	
	UCHAR  chWriteCarHo;
	UCHAR  chTgisVer;
	USHORT wCarNumber;		/* 기록차량번호 */

	UCHAR szSysTagName[16];
}FILEHEADTYPE,*PFILEHEADTYPE;	/* 32 BYTE */

#define REC_AUTO_DRIVENO			1		/* 자동다운로드는 '1'번 드라이브에 한다. */
#define REC_MENUAL_DRIVENO			0		/* 수동다운로드는 '0'번 드라이브에 한다. */

/********************************************************************/
/*  OFFSET 0x0000000 ~ 0xF00000   (15 M byte)						*/
/* 운전기록		: 0x000000 ~ 0x900000 (0x900000:83D600)				*/
/* 고장기록		: 0x900000 ~ 0x94F000 (0x4F000:0x4E200)				*/
/* 로거기록		: 0x94F000 ~ 0x975200 (0x26200:0x26200)				*/
/* StatucTrace	: 0xA00000 ~ 0xC00000 (0x200000:0x1F7F34)			*/
/* 주행거리기록	: 0xC00000 ~ 0xC04D00 (0x4D00:0x4CFE)				*/
/* 승객하중기록	: 0xC04D00 ~ 0xC19100 (0x14400:0x14370)				*/
/* spare        : 0xC19100 ~ 0xF00000 (0xD000:0xD000)				*/
/********************************************************************/
/*  운행기록에 대한 자료 (운전기록)                                 */
/********************************************************************/
/* 카드에 파일 자동덤프 : KEY OFF 후 10초 후에 덤프한다.				*/
/* 카드 덤프는 기록이 최소 두시간 이상이 지난 경우로 한다.				*/
/* 파일번호 "000"은 현재 가지고 있는 모든 운행기록을 재덤프한 기록이다. */
/* D + 차량번호3자리 + "파일번호4자리".DRV                              */
/* 파일번호 0000은 수동 다운로드 파일, 0001 ~ 0100 은 자동 다운로드파일 */

/*  #define REC_DRV_FILENAME	"DXXX_000.DRV"  */

/* 파일형식 :  "B:/REC_DRV/5011/20090812/D121123-121123.DRV" */


#define REC_AUTO_INTERVAL		(2*60*60)	/* 자동 다운로드 카운터 */
#define REC_AUTO_STARTCNT		200			/* 200 : 기동후 20초 후에 다운로드를 시작한다. (100ms 기준) */
#define REC_AUTO_MAXFILENO		1000			/* 파일을 1000 개까지 생성한다. */
#define REC_AUTO_SIZEMIN		21600		/* 기록가능한 최소한도 기록 샘플 갯수 : 6시간: 6*3600 = 21600*/

#define REC_AUTO_TRS_MAX_FILE	100
#define REC_AUTO_TRS_STARTCNT	1200		/* 1200 : 기동후 120초 후에 다운로드를 시작한다. (100ms 기준) */

/******************************************************************/
#define REC_DRV_SAVEOFFSET	0x000400

#define REC_DRV_DATATYPE	10
#define REC_DRV_HEADOFFSET	0x000000	/* SRAM OFFSET */
#define REC_DRV_BODYOFFSET	0x001000	/* 60*30 = 1800[0xE10]*/
#define REC_DRV_HEADSIZE	60			
#define REC_DRV_BODYSIZE	 86400		/* 24 시간 : 100 *	86400 [sec] =  8640000 byte =  8.24 M */ 

#define REC_DRV_BODYPERHEAD	14400		/* 4 * 60 *60 : 4시간이 넘으면 Header를 새로 갱신 */

#define REC_DRV_HEADWRITESIZE	24		/* 카드에 기록할 BYTE 크기 */

typedef struct DRVHEADTYPETAG
{
	UCHAR Data_Type;		/* 10 */
	UCHAR chSpare1;
	USHORT wSpare1;			/* 열차번호 */
	USHORT Car_Number;		/* 차량번호 */
	USHORT wData_Count;

	SYSTIMETYPE sTime;		/* 운전기록 시작시간 */

	UCHAR spare[10];			
	/*-------------- Upper Flag : Non Recode -----------------*/
	USHORT wBodyField_H; /* 저장 절대시작위치 RecBodyFront Position */
	USHORT wBodyField_L;

	UCHAR bAutoDownCheck	:1;	/* 자동 다운로드가 되었는지 CHECK */
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;

	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	UCHAR 				:1;
	
}DRVHEADTYPE,*PDRVHEADTYPE;

typedef struct
{
	SYSTIMETYPE stime;

	UCHAR chSpeed;
	UCHAR chPNotch;
	UCHAR chBNotch;
	UCHAR chCurStCode;		/* 가상역코드 */
	USHORT wDistance;
}DRVRECRSDTYPE,*PDRVRECRSDTYPE; /* RSD 12 BYTE */

typedef struct
{
	UCHAR tcDi[4];
}DRVRECTCTYPE;

typedef struct
{
	UCHAR ccDi[6];
	UCHAR chMI;				/* 모터전류 */
	UCHAR chBcp;			/* 제동압력 */
}DRVRECCCTYPE;

typedef struct
{
	DRVRECRSDTYPE RSD;		

	DRVRECTCTYPE tcType[2];
	DRVRECCCTYPE ccType[10];

}DRVBODYTYPE,*PDRVBODYTYPE;		/* RSD[12] + TC[4*2] + CC[8*10]= 12+8+80 = 100 byte */


/******************************************************************
  고장기록에 대한 자료 (Fault recode)
******************************************************************/
/* 고장 + 추적 용량 합계: 0x4F000 + 0x26200 = 0x75200 [0x75200]    : 사용용량 [확보용량]*/
#define REC_FLT_FILENAME	"F902_000.FLT"
#define REC_FLT_DATATYPE	40

#define REC_FTL_DOWNSIZE	0x75200						/* 추적기록,StatusTrace을 포함하여 기록한다. */

#define GM_MAX_FAULTLIST	10000						/* 10000 * 32 BYTE = 320000 (0x4E200) */ 
#define REC_FLT_BODYOFFSET	0x900000					/* 0xE00000 ~ 0xE4F000 */
#define REC_FTL_MEMSIZE		0x4F000



typedef struct
{
	USHORT wFltIndex;			/* 고장리스트 순서: 고장 배열 순서 */
	USHORT wFltCode;			/* 고장코드: 현시용 고장코드 */
	SYSTIMETYPE sTime;			/* 발생 시각 (6 byte)*/
	SYSTIMETYPE eTime;			/* 소멸 시각 (6 byte)*/
	USHORT wTrainNum;			/* 열차번호 */
	USHORT  wDistance;			/* 역간거리 [m]*/
	USHORT wMenIndex;			/* 참조멘트 인덱스(5000+a) */
	UCHAR  chSpare[1];
	UCHAR  chStCode;			/* 역코드 */
	UCHAR  chSpeed;				/* 현재 속도 */
	UCHAR  chPNotch;			/* 역행 PWM RATE */
	UCHAR  chBNotch;			/* 제동 노치 */
	UCHAR  chCarHo;				/* 차량호차 0 ~ 5 */
	UINT  nTraceLink;
}GM_FAULTLIST,*PGM_FAULTLIST; /* SIZE : 32 */

/******************************************************************
  추적 기록  (Trace Recode Format: Logger)
******************************************************************/

#define REC_TRACE_ADDRESS		0x94F000
#define REC_TRACE_DATATYPE		60

#define REC_TRACE_MEMSIZE		0xB1000		/*0x26200*/		/* 사용메모리 영역의 크기 SIV+BRAKE+spare = (0x26200)*/	

typedef struct
{
	GM_HEAD_TYPE BlockHead;
	USHORT	wTrainNum;
	UCHAR chSpeed;
	UCHAR chLSysID;
	USHORT	wDistance;
	UCHAR	chPNotchRate;
	UCHAR	chBNotch;
	UCHAR	chCarHo;				/* 발생 호차번호  */
	UCHAR	chStCode;
	UCHAR	chLSysFCode;		/* 개별장치별 고장코드 */
	UCHAR	chBcp;				/* TC 차의 제동압력 */
}GMTRACE_HEAD_TYPE,*PGMTRACE_HEAD_TYPE; /* 20 BYTE */

/****************************************************************************/
/* ECU 추적기록은 고장발생	(장치당5개)	최대편성시: 5 X 10	= 50			*/
/* 영역크기 : 0x23A00 [0x23A00]												*/
/* 다운로드 완성시간 : 17초              									*/
/* 위치 : 0x1E3E100															*/
#define REC_TRACE_ECU_HEADOFFSET	(REC_TRACE_ADDRESS+0x0000)	
#define REC_TRACE_ECU_BODYSIZE		50										/* 추적기록 적재 갯수 : 장치당 5개 */
#define REC_TRACE_ECU_SAMSIZE		1150									/* ECU 추적기록 1개의 크기. Sample Size = 50 * 17 ea = 1150*/
#define REC_TRACE_ECU_BLOCKTYPE		0x61
#define REC_TRACE_ECU_FULLSIZE		0xE500									/* ECU TD 영역크기 (20 + 1150)x50 = 58500 [0xE484] =>  [0xE500] */
#define REC_TRACE_ECU_LOCHEADSIZE	6										/* ECU LOGGER 의 개별 HEAD 크기 */

/****************************************************************************/
/* SIV 추적기록은 고장발생	(장치당3개)	최대편성시: 3 X 3	= 9			*/
/* 영역크기 : 0xEB50 [0xEC00]												*/
/* 다운로드 완성시간 : 17초              									*/
/* 위치 : 0x1E61B00															*/
#define REC_TRACE_SIV_HEADOFFSET	(REC_TRACE_ECU_HEADOFFSET+REC_TRACE_ECU_FULLSIZE)	
#define REC_TRACE_SIV_BODYSIZE		9											/* 추적기록 적재 갯수 : 장치당 3개 */
#define REC_TRACE_SIV_SAMSIZE		10815										/* SIV 추적기록 1개의 크기. Sample Size = 15 * 721 ea = 10815 */
#define REC_TRACE_SIV_BLOCKTYPE		0x62
#define REC_TRACE_SIV_FULLSIZE		0x17D00										/* SIV TD 영역크기 (20 + 10815)x9 = 97515 [0x17CEB] => [0x17D00] */
#define REC_TRACE_SIV_LOCHEADSIZE	6										/* ECU LOGGER 의 개별 HEAD 크기 */

/*********************** 현재 없음                ***************************/
/* CI 추적기록은 고장발생	(장치당8개)	최대편성시: 8x2 X 4	= 64			*/
/* 영역크기 : 0x3E100 [0x3E100]												*/
/* 다운로드 완성시간 : 40초 ~ 60초											*/
/* 기록구성 : TRHEAD[20] + VVVFHEAD[6] + SAMPLE[50 x 283]                  */
#define REC_TRACE_PIE_HEADOFFSET		(REC_TRACE_SIV_HEADOFFSET+REC_TRACE_SIV_FULLSIZE)		/* total size: (20 + 14300) * 30 = 429600(0x68E20) */
#define REC_TRACE_PIE_BODYSIZE		64										/* 추적기록 적재 갯수 : 장치당 8개 */
#define REC_TRACE_PIE_SAMSIZE		3952									/* CI 추적기록 1개의 크기. Sample Size = 52 * 76 = 3952 */
#define REC_TRACE_PIE_BLOCKTYPE		0x61									
#define REC_TRACE_PIE_FULLSIZE		0x3E100									/* CI TD 영역 크기 (20 + 3952)x64 = 254208 [0x3E100]*/
#define REC_TRACE_PIE_LOCHEADSIZE	6										/* CI LOGGER 의 개별 HEAD 크기 */

/******************************************************************
  단말의 STATUS TRACE 기록에 대한 자료 (STatus Trace)
  기록시간 등에 대한 정보는 열차상태 기록과 동일 하다.            
******************************************************************/
#define REC_STT_DATATYPE	30

#define REC_TRS_MAXBLOCK	10			/* 상태데이타는 2개 까지 기록한다. */
#define REC_TRS_TRIGGERTIME	99			/* 검지시점 이후 499Sample 후 저장한다. */
#define REC_TRS_QMAXSAMPLE	600			/* 500 + 1 + 99 : 100ms 간격*/

#define REC_STT_HEADOFFSET	0xA00000	/* {HEAD(18) + BODY(344 x 600) = 206418 } x 10 = 2064180 [0x1F7F34]*/
#define REC_STT_MEMSIZE		0x200000		/* 사용메모리 영역의 크기 (0x1F7F34)*/	

typedef struct TRSHEADTYPETAG
{
	UCHAR Data_Type;			/* 20 */

	UCHAR chFlag;

	UCHAR date[3];				/* 년월일 [BCD] */
	UCHAR time[3];				/* 시분초 [BCD] */

	USHORT wSpare1;		/* 열차번호 */
	UCHAR car_id;				/* 0 - 9 */
	UCHAR station_code;
	USHORT fault_index;			/* 고장 인덱스 */
	USHORT distance;
	USHORT wCarNumber;
}TRSHEADTYPE,*PTRSHEADTYPE;		/* HEADER - 18 BYTE */


typedef struct STTBODYTYPETAG
{
	UCHAR speed;				/* km/h */
	UCHAR chPNotch;		/* (0 - 8) : N:0 , B1 - B7,EB:8 */
	UCHAR chBNotch;
	UCHAR chSpare;

	UCHAR tc_signal[2][4];		/* 68 byte POS: 4 byte*/
	UCHAR cc_signal[10][6];

	UCHAR siv_sd[3][14];		/* 42 byte */
	UCHAR ci_sd[5][20];			/* 100 byte */
	UCHAR brake_sd[10][13];		/* 130 byte */
	
}STTBODYTYPE,*PSTTBODYTYPE;  /* 4 + 68 + 272 BYTE = 344 */

typedef struct STTTYPETAG
{
	TRSHEADTYPE Head;
	STTBODYTYPE Body[REC_TRS_QMAXSAMPLE];
}STTTYPE,*PSTTTYPE;

#define REC_STT_SAMSIZE		(sizeof(TRSHEADTYPE) + (sizeof(STTBODYTYPE) * REC_TRS_QMAXSAMPLE))
#define REC_STT_FILESIZE	(REC_TRS_MAXBLOCK*REC_STT_SAMSIZE+512)

/********************************************************************/
/*  주행거리 기록에 대한 자료 (ACumulated Distance)					*/
/*  1) 주행거리 기록												*/
/*  2) 추진장치 소비전력량 , 회생전력량 기록						*/


#define REC_DIST_DATATYPE	90
#define REC_DIST_HEADOFFSET	0xC00000				/* total size: 365 * 54 = 19710 byte(0x4CFE) */
#define REC_DIST_MEMSIZE		0x4D00
/* 에너지 데이터 및 거리 기록 - 기동시 1 sample*/
#define REC_DIST_BODYSIZE	365

typedef struct
{
	SYSTIMETYPE datetime;
	UINT nCiGenerPowerKwh[5];		/* C/I 소비전력 : 최대 5개 C/I	*/
	UINT nCiRegenPowerKwh[5];		/* C/I 회생전력 : 최대 5개 C/I	*/
	USHORT wDailyDist;			/* 일일 주행거리 */
	UINT	nAccumulateDist;	/* 누적주행거리  */
	USHORT wDailyDrvTime;		/* 일일 운행시간 */
	UINT	nAccumulateTime;	/* 누적 주행시간 */
}GMHIS_DIST_TYPE,*PGMHIS_DIST_TYPE;			/* 에너지기록 size : 54 byte - 365 개 = 19710 = (0x4CFE) */

/********************************************************************/
/*  승객 하중기록 에 대한 자료										*/
/********************************************************************/

#define REC_LOAD_DATATYPE	80
#define REC_LOAD_HEADOFFSET	0xC04D00		/* total size: 4600 * 18 = 82800 (0x14370)*/
#define REC_LOAD_MEMSIZE		0x14400
/* 승객부하기록 - 출입문 닫고 3초 후 */

#define REC_LOAD_BODYSIZE	4600

#define BUFFER_DIST_ADDRESS	(REC_LOAD_HEADOFFSET + REC_LOAD_BODYSIZE)

typedef struct
{
	SYSTIMETYPE datetime;

	BYTE chCurStCode;
	BYTE chNxtStCode;
	BYTE   chLDP[10];			/* 10 량의 승객하중 하중 : 차량별로 공식을 적용 해야함.*/
}GMHIS_LOAD_TYPE,*PGMHIS_LOAD_TYPE;       /* 승객하중기록 size: 18 byte - 4600 개 = 82800 */


void gm_LoadArgu();
void gm_ResetDist();
void gm_ResetArgu();
void gm_CheckArgu();
void gm_GetSystemTime(PSYSTIMETYPE pSysTime);
void gm_SetSystemTime(PSYSTIMETYPE pSysTime);
UINT gm_RtcToSysTime(DATE_TIME_PTR pTime);
BOOL gm_SysTimeToRtc(DATE_TIME_PTR pTime,UINT nSysTime);
UINT gm_GetTotalFaultListNumber(UINT nListPos);
PGM_FAULTLIST gm_GetTotalFaultList(UINT nIndex);
PDRVHEADTYPE gw_GetDrvHeader(UINT nPos);
PDRVBODYTYPE gw_GetDrvBody(UINT nPos);
void gw_ResetDrvRc();
void gw_ResetFaultList();
void gw_ResetTraceList();
void gw_ResetTrs();
void gw_ResetDistRec();
void gw_ResetLoadRec();
void gw_ResetEnergyRec();



#endif /* _GDMS_H_ */		