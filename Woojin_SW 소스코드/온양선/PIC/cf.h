#ifndef _CF_H_
#define _CF_H_


#define RD_REG      0x20
#define WR_REG      0x30
#define ERASE_REG	0xc0
#define INFO_REG	0xEC

/////////////////////////////////////////////////
//	SAN Disk Paramater 
/////////////////////////////////////////////////

#define DOS_PTYPE_FAT12		1
#define	DOS_PTYPE_FAT16		2

/////////////////////////////////////////////////
/////////////////////////////////////////////////
#define DISK_DIA_OFFST				0x00000
#define DISK_STATION_NAME_OFFST		0x80000
#define DISK_STOP_PAT_OFFST			0x90000
#define DISK_DEST_CODE_OFFST		0xC0000
#define DISK_DISPLAY_DATA_OFFST		0xE0000
#define DISK_IM_TEXT_OFFST			0xF0000
#define DISK_PR_TEXT_OFFST			0x100000
#define DISK_VER_OFFST				0x110005

#define NVSRAM_STATION_NAME_OFFST	0x0000
#define NVSRAM_STOP_PAT_OFFST		0x1484//11FA+650
#define NVSRAM_DEST_CODE_OFFST		0xA5D6//A34C+650	
#define NVSRAM_DISPLAY_DATA_OFFST	0xA678//A3EE+650
#define NVSRAM_IM_TEXT_OFFST		0x10D9A//10B10+650
#define NVSRAM_PR_TEXT_OFFST		0x182CC//18042+650
#define NVSRAM_VER_OFFST			0x1F7FE//1F574+650
#define NVSRAM_DIA_OFFST			0x1F804//1F57A+650
#define NVSRAM_END_OFFST			0x1FCF0//1FA66+650

#define ADD_NVSRAM_STATION_NAME 0xC00000
#define ADD_NVSRAM_STOP_PAT		0xC01484
#define ADD_NVSRAM_DEST_CODE	0xC0A5D6
#define ADD_NVSRAM_DISPLAY_DATA	0xC0A678
#define ADD_NVSRAM_IM_TEXT		0xC10D9A
#define ADD_NVSRAM_PR_TEXT		0xC182CC
#define ADD_NVSRAM_VER			0xC1F7FE
#define ADD_NVSRAM_DIA			0xC1F804
#define ADD_NVSRAM_END			0xC1FCFO


#define SIZE_DIA				1260
#define SIZE_STATION_NAME		4602
#define SIZE_STOP_PAT			145202
#define SIZE_DEST_CODE			1442
#define SIZE_DISPLAY_DATA		26402
#define SIZE_IM_TEXT			30002
#define SIZE_PR_TEXT			30002
#define SIZE_VER				6


#define MAX_DIA				10
#define MAX_STATION_NAME	100
#define MAX_STOP_PAT		300
#define MAX_DEST_CODE		80
#define MAX_DISPLAY_DATA	300
#define MAX_IM_TEXT			100
#define MAX_PR_TEXT			60

/////////////////////////////////////////////////
/////////////////////////////////////////////////

#define CF_BASE 0xB00000

#define DATA_REG    (*(UCHAR *)(CF_BASE))
#define ERR_REG     (*(UCHAR *)(CF_BASE+1))
#define FEATURE_REG (*(UCHAR *)(CF_BASE+1))
#define SEC_CNT_REG (*(UCHAR *)(CF_BASE+2))
#define SEC_NUM_REG (*(UCHAR *)(CF_BASE+3))
#define CYL_LOW_REG (*(UCHAR *)(CF_BASE+4))
#define CYL_HI_REG  (*(UCHAR *)(CF_BASE+5))
#define DRV_HD_REG  (*(UCHAR *)(CF_BASE+6))
#define STATUS_REG  (*(UCHAR *)(CF_BASE+7))
#define COMMAND_REG (*(UCHAR *)(CF_BASE+7))

#define FDD_STATUS_RD (*(UCHAR *)(0xB00000))


/////////////////////////////////////////////////
#define	DOS_BOOT_JMP		0x00	/* 8086 jump instruction     (3 bytes)*/
#define	DOS_BOOT_SYS_ID		0x03	/* system ID string          (8 bytes)*/
#define	DOS_BOOT_BYTES_PER_SEC	0x0b	/* bytes per sector          (2 bytes)*/
#define	DOS_BOOT_SEC_PER_CLUST	0x0d	/* sectors per cluster       (1 byte) */
#define	DOS_BOOT_NRESRVD_SECS	0x0e	/* # of reserved sectors     (2 bytes)*/
#define	DOS_BOOT_NFATS		0x10	/* # of FAT copies           (1 byte) */
#define	DOS_BOOT_MAX_ROOT_ENTS	0x11	/* max # of root dir entries (2 bytes)*/
#define	DOS_BOOT_NSECTORS	0x13	/* total # of sectors on vol (2 bytes)*/
#define	DOS_BOOT_MEDIA_BYTE	0x15	/* media format ID byte      (1 byte) */
#define	DOS_BOOT_SEC_PER_FAT	0x16	/* # of sectors per FAT copy (2 bytes)*/
#define	DOS_BOOT_SEC_PER_TRACK	0x18	/* # of sectors per track    (2 bytes)*/
#define	DOS_BOOT_NHEADS		0x1a	/* # of heads (surfaces)     (2 bytes)*/
#define	DOS_BOOT_NHIDDEN_SECS	0x1c	/* # of hidden sectors       (4 bytes)*/
#define	DOS_BOOT_LONG_NSECTORS	0x20	/* total # of sectors on vol (4 bytes)*/
#define DOS_BOOT_DRIVE_NUM	0x24	/* physical drive number     (1 byte) */
#define DOS_BOOT_SIG_REC	0x26	/* boot signature record     (1 byte) */
#define DOS_BOOT_VOL_ID		0x27	/* binary volume ID number   (4 bytes)*/
#define DOS_BOOT_VOL_LABEL	0x2b	/* volume label string      (11 bytes)*/
#define	DOS_BOOT_PART_TBL	0x1be	/* first disk partition tbl (16 bytes)*/
#define DOS_BOOT_FAT_LABEL	0x36	/* fat label */

#define DOS_EXT_BOOT_SIG	0x29	/* value written to boot signature */
#define WBE(x) ((WORD)(((x>>8)&0x00ff)|((x<<8)&0xff00)))  /* WORD BIG ENDIAN */

/************ Disk Structure ************/
#define DOS_BOOT_SEC	0
#define DOS_FAT1_SEC	1
#define DOS_FAT2_SEC	m_nFat2Offset
#define	DOS_ROOT_SEC	m_nRootOffset
#define DOS_DATA_SEC	m_nDataOffset
#define NULL		0
#define RD_REG      	0x20
#define WR_REG      	0x30
#define ERASE_REG	0xc0
#define INFO_REG	0xEC

/**************************************************************
	구조체 정리

***************************************************************/
typedef struct
{
	UCHAR FileName[8];
	UCHAR ExtName[3];
	WORD StartCluster;
	WORD FileSize;
}OPEN_FILE;
/////////////////
typedef struct
{	
	UCHAR StationCode;
	UCHAR EngName[15];
	UCHAR IranName[30];
}STATION_NAME;

typedef struct
{	
	UCHAR StationCode;
	UCHAR EngName[15];
	UCHAR IranName[30];
}STATION_NAME_ALL;

///////////////////////////
typedef struct
{
	DWORD nDis_Point;//거리
	UCHAR Type;		//IM/PR 타입
	UCHAR Number;	//문장번호
}DISPLAY_INDEX;
typedef struct
{	
	UCHAR nDoor;
	DISPLAY_INDEX nDisplay_str[20];
}DISPLAY_INDEX_NAME;
////////////////////////////////////
typedef struct	//행선 설정 화면에서 GP 출력화면에 맞는 역명을 읽어 온다.
{
	UCHAR nStationCode;	//행선 설정화면 관련 역코드를 가진다.
	UCHAR nStationName[15];	//화면 표출 역이름을 가진다.
}DEST_SET_SCREEN;

typedef struct
{
	UCHAR nScreenNum;	//행선 설정 화면 
	UCHAR nDestSetNum;	//행선 설정 화면에서 선택된 역명.
	UCHAR nDestSetNumRe;
	UCHAR nStop_Patten_Num;
	UCHAR nTrainClass_Num;
	UCHAR nMatchCode[256];  //외부 입력 역코드 4개를 가지수 있도록 한다.
	UCHAR nDestCodeList[80];//전체 행선 코드 80개를 가지고 있는다.
	DEST_SET_SCREEN nDestScreen[10];	//행선 역명 이름을 가지고 있다.
}NVSRAM_VARIABLE;

//--------------Heard 파일--------------//
typedef struct
{
	UCHAR nData_Type;	//Heard Code
	int : 32;
}DATA_TYPE, *PDATA_TYPE;
//------------------------------------------//
//--------------운행다이아Heard 파일 --------------//
typedef struct
{
	UCHAR nData_Type;
	UCHAR nDia_Num[2];
	UCHAR nDia_Type;
	//UCHAR nTrain_Num_Cnt[2];
	UCHAR nTrain_Num_Cnt;	// 2바이트 에서 한 바이트로 변경.	이란
}DIA_HEARD, *PDIA_HEARD;

typedef struct
{
	UCHAR nTrain_Num[6];
	UCHAR nStop_Pat_Num;
	UCHAR nSta_Tim[3];
	UCHAR nTrain_Class;
	UCHAR nDestination_Code;
}DIA_BODY, *PDIA_BODY;

typedef struct
{
	DIA_HEARD nHead;
	DIA_BODY nBody[10];
}DIA_HE_BOD_LIST;

typedef struct
{
	DIA_HE_BOD_LIST nDiaList[10];
	
}DIA_LIST, *PDIA_LIST;


//--------------열차 역명 코드--------------//
typedef struct
{
	UCHAR nStationCode;	//역코드
	UCHAR nStation_EngName[15];
	UCHAR nStation_IranName[30];
	UCHAR nRxStationCode[4];
}STATIONNAMEBODY, *PSTATIONNAMEBODY;

typedef struct
{
	DATA_TYPE nHead;
	STATIONNAMEBODY nBody[100];
}STATIONNAME, *PSTATIONNAME;
//------------------------------------------//
//--------------정차 패턴 --------------//
typedef struct
{
	UCHAR nStationCode;
	//UCHAR nRunTime[3];
	//UCHAR nStopTime[3];
	//UCHAR nTranClass;
	UCHAR nSp;	//이란 
}STOPPATTERN_INDEX, *PSTOPPATTERN_INDEX;

typedef struct
{
	UCHAR nStopPatNum;		//정차 패턴 번호
	UCHAR nDeparture_Code;	//출발역 코드
	UCHAR nArrive_Code;		//도착역 코드
	UCHAR nStation_Count;	//정차 패턴 총 역 겟수
	UCHAR nDest_Code;		//정차 패턴에서 행선역	//이란
	UCHAR nTranClass;		//정차 패턴 호선		//이란
	STOPPATTERN_INDEX nStopPatIndex[60];
}STOPPATTERN_BODY, *PSTOPPATTERN_BODY;

typedef struct
{
	DATA_TYPE nHead;
	STOPPATTERN_BODY nBody[300];
}STOPPATTERN, *PSTOPPATTERN;
//--------------------------------------------------------//
//-------------행선 코드---------------------------//
typedef struct
{
	UCHAR nCount_Code;	//순서 코드 Count 
	UCHAR nStation_Code;	//종착역 코드가 들어 간다.
	//UCHAR nStation_Name[15];
	//int : 32;
}DESTBODY, *PDESTBODY;

typedef struct
{
	DATA_TYPE nHead;
	DESTBODY nBody[80];
}DESTCODE,*PDESTCODE;

//----------------------------------------------------//
//------------- 역간시간, 거리------------------------//
//사용하지 않는다.
//--------------------------------------------------------//
//--------------표시장치--------------//
typedef struct
{
	UCHAR nDisPoint[4];
	UCHAR nTable_Type;	//IM/PR 구분 문장
	UCHAR nTable_Num;	//문장번호
}DISPTEXT, *PDISPTEXT;

typedef struct
{
	UCHAR nDis_Tim_Num;   	//
	UCHAR nCurrStation_Code;	//현재역
	UCHAR nNextStation_Code;	//다음역
	UCHAR nTrain_Class;		//호선 종료
	UCHAR nBetween_Code;		//시발-중간-종착 코드
	UCHAR nDistan_Code;		//역간거리 코드
	UCHAR nDoor_RL;			//문방향 코드
	int : 32;
	DISPTEXT nText[20];
}DISPBODY, *PDISPBODY;

typedef struct
{
	DATA_TYPE nHead;
	DISPBODY nBody[300];
}DISP, *PDISP;
//--------------------------------------------------------//
//----------------------------IM----------------------------// 
typedef struct
{
	UCHAR nImCheck;
	UCHAR nImNum;
	UCHAR nImText[298];
}IMTEXTBODY, *PIMTEXTBODY;

typedef struct
{
	DATA_TYPE nHead;
	IMTEXTBODY nBody[100];
}IMTEXT, *PIMTEXT;
//--------------------------------------------------------//
//----------------------------PR----------------------------//
typedef struct
{
	UCHAR nPrCheck;
	UCHAR nPrNum;
	UCHAR nPrText[498];
}PRTEXTBODY, *PPRTEXTBODY;

typedef struct
{
	DATA_TYPE nHead;
	PRTEXTBODY nBody[60];
}PRTEXT, *PPRTEXT;
//--------------------------------------------------------//


/**************************************************************
	함수정의
***************************************************************/

int SanDisk_WaitReady();
int Sandisk_WaitDRQ();
void SanDisk_Info_Read();
int SanDisk_ABS_RD(DWORD nABSSector,UCHAR *pBuff);
int Sandisk_Init();
int FileEntry();
int FileCompare1();
int FileCompare2();
int SDD_SWFind();
int FDD_SWFind();

WORD GetUsedCluster(WORD nSize,UCHAR *pNextCluster);
int Seek_File();
int Seek_File_UNIT(UCHAR sKindUnit);
UCHAR Check_Header(WORD nOffset,UCHAR *pNextCluster,UCHAR *pData);

UCHAR Nvsram_IDC_UpLoad_CK(UCHAR *pData,UCHAR sKIndCode);	//설정기 S/W 업로드 어부를 판단 한다.
UCHAR Nvsram_IDC_UpLoad_Da();	//설정기 S/W 데이타를 Nvsram에 로드 한다.

void Nvsram_Load();
UCHAR NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info);
UCHAR NVSRAM_Find_IM(UCHAR nCnt,UCHAR *pData);
UCHAR NVSRAM_Find_PR(UCHAR nCnt,UCHAR *pData); 		// No째의 역명 읽기
WORD NVSRAM_Get_StopP(WORD Now,WORD Dest,UCHAR *pData);
WORD NVSRAM_Rd_StationName(WORD nCnt,UCHAR *pData);// nCnt개의 역명을 버퍼에 저장한다.
WORD NVSRAM_Rd_StationName_Total(STATION_NAME_ALL *pStationNameAll);
UCHAR StationCode_Definite(UCHAR Now,UCHAR Next);
UCHAR NVSRAM_Find_RootAllNo(WORD nLen,UCHAR *pData);
WORD NVSRAM_Rd_StationName_Code(UCHAR Code,UCHAR *pData,UCHAR *pGpData);
UCHAR NVSRAM_Comp_StopP(WORD No,UCHAR *pData);
WORD NVSRAM_Comp_TrainNo(UCHAR *pData); // No : 열차번호
UCHAR NVSRAM_Find_StationRoot(WORD ScreenNo,WORD nLen); 	// No 역명 읽기
UCHAR NVSRAM_Find_Schedule_Cnt(UCHAR *pData,UCHAR Display_Cnt,DWORD StartDistance,DWORD EndDistance);
void NVSRAM_MEMCPY(UCHAR *pAData,UCHAR *pBData,UCHAR nLen);


#endif

