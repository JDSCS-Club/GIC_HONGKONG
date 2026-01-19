#ifndef _Disk_H_
#define _Disk_H_

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
#define NVSRAM_VER_OFFST			0x1F7FE
#define NVSRAM_DIA_OFFST			0x1F804
#define NVSRAM_END_OFFST			0x1FCF0


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
//------------DISK 읽고,쓰기---------------------------------
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
}STATION_BUF;

typedef struct
{	
	STATION_BUF StaName[100];
}STATION_NAME,*PSTATION_NAME;

typedef struct
{	
	STATION_BUF StaName[100];
}STATION_NAME_ALL,*PSTATION_NAME_ALL;

///////////////////////////
//----------------문장 편집 데이타 
typedef struct
{
	DWORD nDis_Point;//거리
	UCHAR Type;		//IM/PR 타입
	UCHAR Number;	//문장번호
}DISPLAY_INDEX;
typedef struct
{	
	UCHAR nCnt;
	UCHAR nDoor;
	UCHAR nStart_Time_H;
	UCHAR nStart_Time_M;
	UCHAR nStart_Time_S;
	DISPLAY_INDEX nDisplay_str[MEMORY_RESIZE];
}DISPLAY_INDEX_NAME,*PDISPLAY_INDEX_NAME;
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
}NVSRAM_VARIABLE,*PNVSRAM_VARIABLE;

//--------------Heard 파일--------------//
typedef struct
{
	UCHAR nData_Type;	//Heard Code
	int : 32;
}DATA_TYPE, *PDATA_TYPE;

//--------------------------------------------------------//


//---------------------인천 신공항 2차 PISC 구조-----------------------------------//
typedef struct
{
	UCHAR nYy;
	UCHAR nMm;
	UCHAR nDd;
	UCHAR nhh;
	UCHAR nmm;
	UCHAR nss;
}DATE;
typedef struct
{
	UCHAR nDataHead_b[26]; //Woojin AREX Pics Editer - 
	UCHAR nSp1;
	UCHAR nEEE_b[4]; //EEEE - DD - YMDHMS
	UCHAR nSp2_b[3];
	UCHAR nDD_b[2]; //DD 
	UCHAR nSp3_b[3];
	DATE nDate; //날짜
	UCHAR nSp4_b[3];
}PISC_HEAD,*pPISC_HEAD;

typedef struct
{
	PISC_HEAD nHead_h;
	UCHAR nAdd1_St_Name_b[4]; //정차역명
	UCHAR nAdd2_St_Info_b[4]; //역간정보
	UCHAR nAdd3_Dest_Info_b[4]; //행선지 정보
	UCHAR nAdd4_Stop_Pt_I_b[4]; //정차 패턴Item
	UCHAR nAdd5_Stop_Pt_G_b[4]; //정차 패턴 그룹
	UCHAR nAdd6_Display_I_b[4]; //Display Item
	UCHAR nAdd7_Display_G_b[4]; //Display 그룹
	UCHAR nAdd8_Dia_I_b[4]; //DIA 그룹 Item
	UCHAR nAdd9_Dia_G_b[4]; //DIA 그룹
	UCHAR nAdd10_Text_Info_b[4]; //문안편집
}PISC_DATA_ADD,*pPISC_DATA_ADD;

typedef struct
{
	UCHAR nNum_b[2];
}HEADER,*pHEADER;
//--------------정차 역명------------------------
typedef struct
{
	UCHAR nCode_b[2];
	UCHAR nKorName_b[15];
	UCHAR nEngName_b[30];
}ST_NAME_B,*pST_NAME_B;

typedef struct
{
	HEADER nCnt;
	ST_NAME_B pBody[MEMORY_RESIZE];//동적 배열이 되지 않아 최대 100으로 설정 10_03_23
}ST_NAME,*pST_NAME;
//-------------------------------------------------
//--------행선지 정보----------------------------

typedef struct
{
	UCHAR nCode_b[2]; //카운터 및 코드값 입력 가능 순서(ex: 1.2.3.4~~)
	UCHAR nName_Index_b[2]; //정차 역명 순서 Index
	UCHAR nST_Name_b[15]; //별도 행선지 편집이 가능
}DEST_INFO_B,*pDEST_INFO_B;

typedef struct
{
	HEADER nCnt;
	DEST_INFO_B pBody[MEMORY_RESIZE]; //동적 배열이 되지 않아 최대 100으로 설정 10_03_23
}DEST_INFO,*pDEST_INFO;

//------------------------------------------------
//-----------DIA 그룹----------------------------
typedef struct
{
	UCHAR nCode_b[2]; //열차번호 그룹 ex)1000/2000
	UCHAR nType;//그룹 type
	UCHAR nAddress_b[4]; //DIA 그룹 Item Address
}DIA_GROUP_B,*pDIA_GROUP_B;

typedef struct
{
	HEADER nCnt;
	DIA_GROUP_B pBody[MEMORY_RESIZE]; //동적 배열이 되지 않아 최대 100으로 설정 10_03_23
}DIA_GROUP,*pDIA_GROUP;
//------------------------------------------------
//----------DIA GROUP ITEM------------------------
typedef struct
{
	UCHAR nCode_b[2]; // DIA CODE 열차 번호
	UCHAR nSt_Time_H;
	UCHAR nSt_Time_M;
	UCHAR nSt_Time_S;
	//UCHAR nSt_Time_b[3]; //출발시간
	UCHAR nStopPtG_Addres_b[4]; //정차 그룹 주소
	UCHAR nDispG_Addres_b[4];   //Display 그룹 주소
	UCHAR nDest_Index_b[2];  //행선지 Index
}DIA_G_ITEM_B,*pDIA_G_ITEM_B;

typedef struct
{
	HEADER nCnt;
	DIA_G_ITEM_B pBody[MEMORY_RESIZE];
}DIA_G_ITEM,*pDIA_G_ITEM;
//------------------------------------------------
//-------------Display GROUP----------------------
typedef struct
{
	UCHAR nSt_Cnt_b[2]; //정차 Item Index 정차역 카운터
	UCHAR nGuri_b[2];   //표출 거리
	UCHAR nItem_Index_b[2]; //Display Item Index 값
}DISPLAY_G_B,*pDISPLAY_G_B;

typedef struct
{
	HEADER nCnt;
	DISPLAY_G_B pBody[MEMORY_RESIZE];
}DISPLAY_GROUP,*pDISPLAY_GROUP;

//------------------------------------------------
//-----------Display Item-------------------------
typedef struct
{
	UCHAR nText_Kind_b[2];//문장 종류 IM/PR 종류
	UCHAR nText_Index[2]; //문장 Index 
}DISPLAY_ITEM_B,*pDISPLAY_ITEM_B;

typedef struct
{
	HEADER nCnt;
	DISPLAY_ITEM_B pBody[MEMORY_RESIZE];
}DISPLAY_ITEM,*pDISPLAY_ITEM;

//-------------------------------------------------
//---------------Display GROUP 더하기 ITEM--------
typedef struct
{
	UCHAR nSt_Cnt_b[2]; //정차 Item Index 정차역 카운터
	UCHAR nGuri_b[2];   //표출 거리
	DISPLAY_ITEM_B nItem_Index_Flag; //Display Item Index 값
}DISPLAY_G_I_B,*pDISPLAY_G_I_B;

typedef struct
{
	HEADER nCnt;
	DISPLAY_G_I_B pBody[500];
}DISPLAY_G_I_H,*pDISPLAY_G_I_H;
//-------------------------------------------------
//--------------Stop_Pt_G--------------------------
typedef struct
{
	UCHAR nSt_Index_b[2]; //시발역 Index
	UCHAR nEn_Index_b[2]; //종착역 Index
	UCHAR nSt_P_G_Cnt_b[2]; //정차 그룹 ITEM 개수
}STOP_PT_G_B_H,*pSTOP_PT_G_B_H;
typedef struct
{
	UCHAR nSt_P_Item_Index_b[2]; //정차 그룹 ITEM Index
}STOP_PT_G_B_B,*pSTOP_PT_G_B_B;

typedef struct
{
	STOP_PT_G_B_H nHeader;
	STOP_PT_G_B_B pBody[MEMORY_RESIZE];
}STOP_PT_G_B,*pSTOP_PT_G_B;

typedef struct
{
	HEADER nCnt;
	STOP_PT_G_B pBody[MEMORY_RESIZE];
}STOP_PT_GROUP,*pSTOP_PT_GROUP;

//--------------------------------------------------
//---------------Stop_Pt_Item-----------------------
typedef struct
{
	UCHAR nSt_Info_b[2]; //역간정보 Index
	UCHAR nDoor_Info; //출입문 정보
	UCHAR nSt_Time_b[3]; //출발시간
	UCHAR nStop_Time_b[3];//정차 시간
}STOP_PT_ITEM_B,*pSTOP_PT_ITEM_B;

typedef struct
{
	HEADER nCnt;
	STOP_PT_ITEM_B pBody[MEMORY_RESIZE];
}STOP_PT_ITEM,*pSTOP_PT_ITEM;

//---------------------------------------------------
//---------------ST_INFO-----------------------------
typedef struct
{
	UCHAR nSt_Index_b[2]; //출발역
	UCHAR nArr_Index_b[2];//도착역
	UCHAR nSt_Dist_b[2];  //역간거리 정보
}ST_INFO_B,*pST_INFO_B;

typedef struct
{
	HEADER nCnt;
	ST_INFO_B pBody[MEMORY_RESIZE];
}ST_INFO,*pST_INFO;

//-------------------정차 패턴 ITEM 더하기 역간 정보----
//---------------Stop_Pt_Item + ST_INFO--------------
typedef struct
{
	ST_INFO_B nSt_Info_flag; //역간정보 Index
	UCHAR nDoor_Info; //출입문 정보
	UCHAR nSt_Time_b[3]; //출발시간
	UCHAR nStop_Time_b[3];//정차 시간
}STOP_PT_INFO_ITEM_B,*pSTOP_PT_INFO_ITEM_B;

typedef struct
{
	HEADER nCnt;
	STOP_PT_INFO_ITEM_B pBody[MEMORY_RESIZE];
}STOP_PT_INFO_ITEM,*pSTOP_PT_INFO_ITEM;

//-----정차 패턴 그룹 더하기 정차 패턴 ITEM(역간 거리 정보)----
//--------------------------------------------------

typedef struct
{
	STOP_PT_G_B_H nHeader;
	STOP_PT_INFO_ITEM_B nSt_Pt_G_I_Flage[MEMORY_RESIZE];
}STOP_PT_G_I_HAP,*pSTOP_PT_G_I_HAP;

//----------------------------------------------------
//-------------IM_PR----------------------------------
//----------------------------IM--------------------// 

typedef struct
{
	UCHAR nImCheck;
	UCHAR nImNum;
	UCHAR nImText[298];
}IMTEXTBODY, *PIMTEXTBODY;

typedef struct
{
	//DATA_TYPE nHead; /* 삭제 필요*/
	IMTEXTBODY nBody[100];
}IMTEXT, *PIMTEXT;
//----------------------------PR----------------------------//

typedef struct
{
	UCHAR nPrCheck;
	UCHAR nPrNum;
	UCHAR nPrText[498];
}PRTEXTBODY, *PPRTEXTBODY;

typedef struct
{
	//DATA_TYPE nHead; /* 삭제 필요*/
	PRTEXTBODY nBody[60];
}PRTEXT, *PPRTEXT;

//--------------------------IM-PR 통합구조-----------------------------------
typedef struct
{
	UCHAR nBlockSize_b[4];
	IMTEXT nImBlock;
	PRTEXT nPrBlock;
}TEXT_BLOCK,*pTEXT_BLOCK;
/**************************************************************
	함수정의
***************************************************************/
typedef struct
{
	DWORD nSt_Pt_G_Address; //정차 패턴 그룹 주소
	DWORD nDisp_G_Address; //Display 그룹 주소.
}START_NV_ADDRESS;

void Delay_Disk(int nDelay);
int SanDisk_WaitReady();
int Sandisk_WaitDRQ();
void SanDisk_Info_Read();
int SanDisk_ABS_RD(DWORD nABSSector,UCHAR *pBuff);
int Sandisk_Init();
int FileEntry();
int FileCompare1();
int FileCompare2();
WORD GetUsedCluster(WORD nSize,UCHAR *pNextCluster);
int Seek_File();
int Seek_File_UNIT(UCHAR sKindUnit);
UCHAR Check_Header(WORD nOffset,UCHAR *pNextCluster,UCHAR *pData);
void Nvsram_Load();

UCHAR Nvsram_IDC_UpLoad_CK(UCHAR *pData,UCHAR sKIndCode);	//설정기 S/W 업로드 어부를 판단 한다.
UCHAR Nvsram_IDC_UpLoad_Da();	//설정기 S/W 데이타를 Nvsram에 로드 한다.

UCHAR NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info);
UCHAR NVSRAM_Find_IM(UCHAR nCnt,UCHAR *pData);
UCHAR NVSRAM_Find_PR(UCHAR nCnt,UCHAR *pData); 		// No째의 역명 읽기
WORD NVSRAM_Get_StopP(UCHAR *pData);
WORD NVSRAM_Rd_StationName(WORD nCnt,UCHAR *pData);// nCnt개의 역명을 버퍼에 저장한다.
WORD NVSRAM_Rd_StationName_Total() ;
UCHAR StationCode_Definite(UCHAR Now,UCHAR Next);
UCHAR NVSRAM_Find_RootAllNo(WORD nLen,UCHAR *pData);
WORD NVSRAM_Rd_StationName_Code(UCHAR Code,UCHAR *pData,UCHAR *pGpData);
UCHAR NVSRAM_Comp_StopP(WORD No,UCHAR *pData);
WORD NVSRAM_Comp_TrainNo(UCHAR sData); // No : 열차번호
UCHAR NVSRAM_Find_StationRoot(WORD ScreenNo,WORD nLen); 	// No 역명 읽기
UCHAR NVSRAM_Find_Schedule_Cnt(UCHAR *pData,UCHAR Display_Cnt,DWORD StartDistance,DWORD EndDistance);
void NVSRAM_MEMCPY(UCHAR *pAData,UCHAR *pBData,UCHAR nLen);

//2010 03 2차 업그레이드 작업 기능.
UCHAR Nvsram_EditerData(); //2010_03_16 프로그램 업그레이드
void DP_STOP_PT_INFO_ITEM_FUNCT(STOP_PT_INFO_ITEM *pData);//역간 정보와 정차 패턴을 하나로 관리 한다.
void DP_STOP_PT_INFO_G_FUNCT(STOP_PT_G_I_HAP *pData); // 정차 패턴 그룹 더하기 정차 패턴 ITEM;
void DP_DISP_G__HAP(DISPLAY_G_I_H *pData); //Display 그룹 더하기



#endif 