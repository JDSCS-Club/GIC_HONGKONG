#ifndef _Disk_H_
#define _Disk_H_

/////////////////////////////////////////////////
//	SAN Disk Paramater 
/////////////////////////////////////////////////

#define DOS_PTYPE_FAT12		1
#define	DOS_PTYPE_FAT16		2
#define STATION_NAME_OFFST	0x80000
#define STATION_ROOT_OFFST	0xC0000
#define STOP_PATTERN_OFFST 	0x90000
#define SERVICE_DIA_OFFST 	0x00000
#define DISPLAY_DATA_OFFST 	0xe0000
#define IM_DATA_OFFST		0xf0000
#define PR_DATA_OFFST		0x100000
#define EDIT_VER_OFFST		0x110005

#define DIA_BODY_OFFST 		0x06
#define STOP_BODY_OFFST 	0x02
#define STATION_NAME_BODY_OFFST 0x02
#define STATION_ROOT_BODY_OFFST 0x02
#define DISPLAY_BODY_OFFST	0x02
#define IM_BODY_OFFST		0x02
#define PR_BODY_OFFST		0x02

#define STOP_PATTERN_MAX	300
#define STATION_NAME_MAX	100
#define SERVICE_DIA_MAX		10	//800
#define DISPLAY_BODY_MAX	300
#define IM_DATA_MAX			100
#define ROOT_BODY_MAX		40	//03-12-19 4:08오후

/////////////////////////////////////////////////
/*
//#define NVSRAM_STATION_OFFST	0
#define NVSRAM_STOPP_OFFST	0x11FA		//4600+2;
#define NVSRAM_DEST_OFFST	0xA34C		//2+300*(4+60*2)
#define NVSRAM_DISP_OFFST	0xA3EE 		//80*2+2
#define NVSRAM_IM_OFFST		0x10B10		//300*(4*20+8)+2
#define NVSRAM_PR_OFFST		0x18042		//100*300+2
#define NVSRAM_EDIT_VER_OFFST	0x1F574
#define NVSRAM_SERVICE_DIA_OFFST 0x1F57A		//6+12*50 - 1개의 운행다이아만을 기록한다. 
//#define NVSRAM_END_OFFST	0x1FA66				//2003-12-23 4:14오후
#define NVSRAM_STATION_OFFST	0x1FA66			//
#define NVSRAM_END_OFFST	0x1FA66+105*50+2	//2003-12-23 4:14오후
*/

#define NVSRAM_STATION_OFFST	0				//2003-12-24 11:32오전
#define NVSRAM_STOPP_OFFST		0x1484//11FA+650		//4600+2;-> 105*50+2
#define NVSRAM_DEST_OFFST		0xA5D6//A34C+650		//2+300*(4+60*2)
#define NVSRAM_DISP_OFFST		0xA678//A3EE+650 		//80*2+2
#define NVSRAM_IM_OFFST			0x10D9A//10B10+650		//300*(4*20+8)+2
#define NVSRAM_PR_OFFST			0x182CC//18042+650		//100*300+2
#define NVSRAM_EDIT_VER_OFFST	0x1F7FE//1F574+650
#define NVSRAM_SERVICE_DIA_OFFST 0x1F804//1F57A+650	//6+12*50 - 1개의 운행다이아만을 기록한다. 
#define NVSRAM_END_OFFST		0x1FCF0//1FA66+650		//2003-12-23 4:14오후

/////////////////////////////////////////////////

#define DATA_REG    (*(BYTE *)(0x820000))
#define ERR_REG     (*(BYTE *)(0x820001))
#define FEATURE_REG (*(BYTE *)(0x820001))
#define SEC_CNT_REG (*(BYTE *)(0x820002))
#define SEC_NUM_REG (*(BYTE *)(0x820003))
#define CYL_LOW_REG (*(BYTE *)(0x820004))
#define CYL_HI_REG  (*(BYTE *)(0x820005))
#define DRV_HD_REG  (*(BYTE *)(0x820006))
#define STATUS_REG  (*(BYTE *)(0x820007))
#define COMMAND_REG (*(BYTE *)(0x820007))
#define FDD_STATUS_RD (*(BYTE *)(0x130000))

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
#define WBE(x) ((unsigned int)(((x>>8)&0x00ff)|((x<<8)&0xff00)))  /* WORD BIG ENDIAN */

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

/////////////////////////////////////////////////
unsigned int m_nFat; 		
unsigned int m_nFat2Offset;	
unsigned int m_nRootOffset;
unsigned int m_nDataOffset;
unsigned int m_nSecPerClust;
unsigned int m_wTotalSec;
unsigned int m_szVolume[12];
unsigned int m_VolumeID[4];

BYTE glCardInfoBuff[256]={0,0,};
unsigned int glHeader = 0;
unsigned int glSectPerTrack = 0;
unsigned int glDiskFail = 0;
int glSectorStartOffset = 0;

/************************************************************************************/

BYTE NowRdBuff[512];			// 현재 섹터에 포함된 데이터의 값
BYTE glDoorDir=0;			// 지상편집기의 표출문안에 명기된 출입문 열림방향

unsigned int NextCluster[3000];		// 용량 재확인 2000*4*512 = 4096Kbyte
unsigned int glStartCluster=0;
unsigned int glTotalClusterCnt=0;
unsigned int glDataOffset =0;
unsigned int glSecCnt =0;
unsigned int glOffset =0;
unsigned int glDisplayIndex_Cnt=0;
unsigned int glMax_StationNo = 0;
unsigned int glTRAINNO =0;
unsigned int PreTrainNo = 0;
unsigned int glStopNo =0 ;
unsigned int glTrainClass=0;
unsigned int glTotalRoot=0;
unsigned int glRootTotalScreen =0;
unsigned int PreSector = 0;
unsigned int NowSector = 0;

/************************************************************************************
	현재 이 프로그램은 산 디스크 64MB용량을 포멧한다.
	64MB 포멧전용.	
	
	Offset : 0x0b(11) = Sector당 바이트 수	
	Offset : 0x0d(13) = 클러스터당 Sector 수 (4개)
	Offset : 0x11(17),0x12(18) = 루트 디렉토리의 화일수(32바이트)
	Offset : 0x16(22) = FAT당 섹터수 => 0x7b(123);
*************************************************************************************/
BYTE glFormatHeader[512]=
{
	0xeb, 0x3e, 0x90, 0x2a, 0x73, 0x65, 0x36, 0x5c, 0x49, 0x48, 0x43, 0x0 , 0x2 , 0x4 , 0x1 , 0x0 , 
	0x2 , 0x0 , 0x2 , 0x0 , 0x0 , 0xf8, 0x7b, 0x0 , 0x20, 0x0 , 0x8 , 0x0 , 0x20, 0x0 , 0x0 , 0x0 , 
	0xe0, 0xe9, 0x1 , 0x0 , 0x80, 0x0 , 0x29, 0x5b, 0x34, 0xdc, 0x1a, 0x4e, 0x4f, 0x20, 0x4e, 0x41, 
	0x4d, 0x45, 0x20, 0x20, 0x20, 0x20, 0x46, 0x41, 0x54, 0x31, 0x36, 0x20, 0x20, 0x20, 0xf1, 0x7d, 
	0xfa, 0x33, 0xc9, 0x8e, 0xd1, 0xbc, 0xfc, 0x7b, 0x16, 0x7 , 0xbd, 0x78, 0x0 , 0xc5, 0x76, 0x0 , 
	0x1e, 0x56, 0x16, 0x55, 0xbf, 0x22, 0x5 , 0x89, 0x7e, 0x0 , 0x89, 0x4e, 0x2 , 0xb1, 0xb , 0xfc, 
	0xf3, 0xa4, 0x6 , 0x1f, 0xbd, 0x0 , 0x7c, 0xc6, 0x45, 0xfe, 0xf , 0x8b, 0x46, 0x18, 0x88, 0x45, 
	0xf9, 0xfb, 0x38, 0x66, 0x24, 0x7c, 0x4 , 0xcd, 0x13, 0x72, 0x3c, 0x8a, 0x46, 0x10, 0x98, 0xf7, 
	0x66, 0x16, 0x3 , 0x46, 0x1c, 0x13, 0x56, 0x1e, 0x3 , 0x46, 0xe , 0x13, 0xd1, 0x50, 0x52, 0x89, 
	0x46, 0xfc, 0x89, 0x56, 0xfe, 0xb8, 0x20, 0x0 , 0x8b, 0x76, 0x11, 0xf7, 0xe6, 0x8b, 0x5e, 0xb , 
	0x3 , 0xc3, 0x48, 0xf7, 0xf3, 0x1 , 0x46, 0xfc, 0x11, 0x4e, 0xfe, 0x5a, 0x58, 0xbb, 0x0 , 0x7 , 
	0x8b, 0xfb, 0xb1, 0x1 , 0xe8, 0x94, 0x0 , 0x72, 0x47, 0x38, 0x2d, 0x74, 0x19, 0xb1, 0xb , 0x56, 
	0x8b, 0x76, 0x3e, 0xf3, 0xa6, 0x5e, 0x74, 0x4a, 0x4e, 0x74, 0xb , 0x3 , 0xf9, 0x83, 0xc7, 0x15, 
	0x3b, 0xfb, 0x72, 0xe5, 0xeb, 0xd7, 0x2b, 0xc9, 0xb8, 0xd8, 0x7d, 0x87, 0x46, 0x3e, 0x3c, 0xd8, 
	0x75, 0x99, 0xbe, 0x80, 0x7d, 0xac, 0x98, 0x3 , 0xf0, 0xac, 0x84, 0xc0, 0x74, 0x17, 0x3c, 0xff, 
	0x74, 0x9 , 0xb4, 0xe , 0xbb, 0x7 , 0x0 , 0xcd, 0x10, 0xeb, 0xee, 0xbe, 0x83, 0x7d, 0xeb, 0xe5, 
	0xbe, 0x81, 0x7d, 0xeb, 0xe0, 0x33, 0xc0, 0xcd, 0x16, 0x5e, 0x1f, 0x8f, 0x4 , 0x8f, 0x44, 0x2 , 
	0xcd, 0x19, 0xbe, 0x82, 0x7d, 0x8b, 0x7d, 0xf , 0x83, 0xff, 0x2 , 0x72, 0xc8, 0x8b, 0xc7, 0x48, 
	0x48, 0x8a, 0x4e, 0xd , 0xf7, 0xe1, 0x3 , 0x46, 0xfc, 0x13, 0x56, 0xfe, 0xbb, 0x0 , 0x7 , 0x53, 
	0xb1, 0x4 , 0xe8, 0x16, 0x0 , 0x5b, 0x72, 0xc8, 0x81, 0x3f, 0x4d, 0x5a, 0x75, 0xa7, 0x81, 0xbf, 
	0x0 , 0x2 , 0x42, 0x4a, 0x75, 0x9f, 0xea, 0x0 , 0x2 , 0x70, 0x0 , 0x50, 0x52, 0x51, 0x91, 0x92, 
	0x33, 0xd2, 0xf7, 0x76, 0x18, 0x91, 0xf7, 0x76, 0x18, 0x42, 0x87, 0xca, 0xf7, 0x76, 0x1a, 0x8a, 
	0xf2, 0x8a, 0x56, 0x24, 0x8a, 0xe8, 0xd0, 0xcc, 0xd0, 0xcc, 0xa , 0xcc, 0xb8, 0x1 , 0x2 , 0xcd, 
	0x13, 0x59, 0x5a, 0x58, 0x72, 0x9 , 0x40, 0x75, 0x1 , 0x42, 0x3 , 0x5e, 0xb , 0xe2, 0xcc, 0xc3, 
	0x3 , 0x18, 0x1 , 0x27, 0xd , 0xa , 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x73, 0x79, 
	0x73, 0x74, 0x65, 0x6d, 0x20, 0x64, 0x69, 0x73, 0x6b, 0xff, 0xd , 0xa , 0x44, 0x69, 0x73, 0x6b, 
	0x20, 0x49, 0x2f, 0x4f, 0x20, 0x65, 0x72, 0x72, 0x6f, 0x72, 0xff, 0xd , 0xa , 0x52, 0x65, 0x70, 
	0x6c, 0x61, 0x63, 0x65, 0x20, 0x74, 0x68, 0x65, 0x20, 0x64, 0x69, 0x73, 0x6b, 0x2c, 0x20, 0x61, 
	0x6e, 0x64, 0x20, 0x74, 0x68, 0x65, 0x6e, 0x20, 0x70, 0x72, 0x65, 0x73, 0x73, 0x20, 0x61, 0x6e, 
	0x79, 0x20, 0x6b, 0x65, 0x79, 0xd , 0xa , 0x0 , 0x49, 0x4f, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 
	0x53, 0x59, 0x53, 0x4d, 0x53, 0x44, 0x4f, 0x53, 0x20, 0x20, 0x20, 0x53, 0x59, 0x53, 0x80, 0x1 , 
	0x0 , 0x57, 0x49, 0x4e, 0x42, 0x4f, 0x4f, 0x54, 0x20, 0x53, 0x59, 0x53, 0x0 , 0x0 , 0x55, 0xaa
};


/**************************************************************
	함수정의
***************************************************************/

typedef struct
	{
		BYTE FileName[8];
		BYTE ExtName[3];
		unsigned int StartCluster;
		unsigned int FileSize;
		
	}OPEN_FILE;
OPEN_FILE FileList[100];

typedef struct
	{	
		BYTE StationCode;
		BYTE KorName[15];
		BYTE EngName[30];
	}STATION_NAME;
STATION_NAME TrainNumber[61]; 		

typedef struct
	{	
		BYTE StationCode;
		BYTE KorName[15];
	}ROOT_NAME;
ROOT_NAME RootList[10];	   

typedef struct
	{	
		BYTE StationCode;
		BYTE StationName[45];
	}STATION_NAMEALL;
STATION_NAMEALL StationList[100];	    	

typedef struct
	{	
		int Distance;
		BYTE Type;
		BYTE Number;
	}DISPLAY_INDEX_NAME;

DISPLAY_INDEX_NAME DisplayIndex[20];

BYTE glRootList[80];
BYTE MatchCode[256];	     	//2003-12-23 4:24오후
/**************************************************************
	함수정의
***************************************************************/

int Sandisk_Init();
int SanDisk_ABS_RD(DWORD nABSSector,BYTE *pBuff);
int SanDisk_ABS_WR(DWORD nABSSector,BYTE *pBuff);
int SanDisk_ABS_Erase(DWORD nABSSector);
int SanDisk_WaitReady();
int Sandisk_WaitDRQ();
void SanDisk_Format();
void SanDisk_Info_Read();
void Delay(int nDelay);
int FileEntry();

/**************************************************************
	지연시킨다.
***************************************************************/
void Delay(int nDelay)
{
	int i;
	for(i=0;i<nDelay;i++);
}

/**************************************************************
	디스크 READY. (LBA)
***************************************************************/

int SanDisk_WaitReady()
{
	unsigned char a,b;
	int j =1;

	a = STATUS_REG;
	b = a & 0xf0;

	while(a==0x01) // 이전 명령 에러인 경우,
	{
		if(FDD_STATUS_RD&0x03){j=0; break;}	// active low
		a = STATUS_REG;
	}

	while(b!=0x50) // Flash Memory 의 Ready가 1로 Set 될때까지..
	{
		if(FDD_STATUS_RD&0x03){j=0; break;}
		a = STATUS_REG;
		b = a & 0xf0;
	}
	return j;
}


/**************************************************************
	디스크 Wait. (LBA)
***************************************************************/

int Sandisk_WaitDRQ()
{
	unsigned char a,b;
	int j;

	a = STATUS_REG;
	b = a & 0xf8;

	while(a==0x01)
	{
		if(FDD_STATUS_RD&0x03){j=0; break;}
		a = STATUS_REG;
	}

	while(b!=0x58) // Data Request 셋될때까지..
	{
		if(FDD_STATUS_RD&0x03){j=0; break;}
		a = STATUS_REG;
		b = a&0xf8;
	}
	return j;
}

/**************************************************************
	원하는 섹터를 0으로 채운다.
***************************************************************/
int SanDisk_ABS_Erase(DWORD nABSSector)
{
	SanDisk_WaitReady();
	
	SEC_CNT_REG	= 0x01;				// access할 섹터의 수 1인경우 (512바이트씩 Access)
	SEC_NUM_REG	= nABSSector & 0xff;
	CYL_LOW_REG	= nABSSector >> 8;
	CYL_HI_REG	= nABSSector >> 16;
	DRV_HD_REG	= 0xe0 | ((nABSSector >> 24)&0xf);

	Sandisk_WaitDRQ();
	COMMAND_REG	= ERASE_REG;
	return 1;
}

/**************************************************************
	디스크의 정보 값을 읽어 온다.
	데이터 정보 확인 //                    03-04-15 2:01오후
***************************************************************/

void SanDisk_Info_Read()
{
	WORD i;	

	COMMAND_REG= INFO_REG;	

	Sandisk_WaitDRQ();
	for(i=0;i<256;i++) glCardInfoBuff[i] = DATA_REG & 0xff;

	glHeader = (glCardInfoBuff[0]&0xff)|((glCardInfoBuff[1]<<8)& 0xff00);
	glSectPerTrack = (glCardInfoBuff[12]&0xff)|((glCardInfoBuff[13]<<8)& 0xff00);
}

/**************************************************************
	디스크로부터 데이터를 읽는다. (LBA)
***************************************************************/
int SanDisk_ABS_RD(DWORD nABSSector,BYTE *pBuff)
{
	WORD i;
	int nTemp;
	
	SanDisk_WaitReady();

	nABSSector += glSectorStartOffset;
	
	SEC_CNT_REG	= 0x01;
	SEC_NUM_REG	= nABSSector & 0xff;
	CYL_LOW_REG	= nABSSector >> 8;
	CYL_HI_REG	= nABSSector >> 16;
	DRV_HD_REG	= 0xe0 | ((nABSSector >> 24)&0xf);
	COMMAND_REG	= RD_REG;
	
	Sandisk_WaitDRQ();
	for (i=0;i<512;i++) pBuff[i] = DATA_REG&0xff;
}

/**************************************************************
	디스크에 데이터를 쓴다. (LBA)
***************************************************************/
int SanDisk_ABS_WR(DWORD nABSSector,BYTE *pBuff)
{
	WORD i;

	SanDisk_WaitReady();
	
	SEC_CNT_REG	= 0x01;
	SEC_NUM_REG	= nABSSector & 0xff;
	CYL_LOW_REG	= nABSSector >> 8;
	CYL_HI_REG	= nABSSector >> 16;
	DRV_HD_REG	= 0xe0 | ((nABSSector >> 24)&0xf);
	COMMAND_REG	= WR_REG;
	
	Sandisk_WaitDRQ();
	
	for (i=0;i<512;i++) DATA_REG = pBuff[i];
}

/**************************************************************
	64MB를 포멧한다.
***************************************************************/
void SanDisk_Format()
{
	int i;
	int nSectorPerFAT;
	int nRootFileCnt;
	int nRootDirOffset;
	
	BYTE nBufff1[512];
	BYTE nBufff2[512];
	
	nRootFileCnt = (glFormatHeader[18]<<8) | glFormatHeader[17];
	nSectorPerFAT = glFormatHeader[22]; // FAT당 섹터수를 얻어옴
	
	for(i=0;i<512;i++) nBufff1[i] = nBufff2[i] = 0;

	nBufff1[0] = 0xf8;
	nBufff1[1] = 0xff;
	nBufff1[2] = 0xff;
	nBufff1[3] = 0xff;

	// FAT 영역 구성
	SanDisk_ABS_WR(glSectorStartOffset+0,glFormatHeader);
	
	SanDisk_ABS_WR(glSectorStartOffset+1,nBufff1);
	for(i=glSectorStartOffset+2;i<(glSectorStartOffset+2+nSectorPerFAT)-1;i++) SanDisk_ABS_WR(i,nBufff2);

	SanDisk_ABS_WR(glSectorStartOffset+nSectorPerFAT+1,nBufff1);
	for(i=glSectorStartOffset+nSectorPerFAT+2;i<(glSectorStartOffset+2+nSectorPerFAT*2)-1;i++) SanDisk_ABS_WR(i,nBufff2);

	// 화일 이름 영역 CLEAR
	nRootDirOffset = (glSectorStartOffset+2+nSectorPerFAT*2)-1;
	for(i=nRootDirOffset;i<nRootDirOffset+((nRootFileCnt*32)/512);i++) SanDisk_ABS_WR(i,nBufff2);
}


/**********************************************************************************
	화일 이름을 쓰고 64MB전영역을 FAT구성을 한다.
***********************************************************************************/
char SAVE_FILE_NAME[]="_SanDataBIN";
void FileComposer()
{
	int i;
	WORD j;
	WORD k;
	int nRootDirOffset;
	int nSectorPerFAT;
	BYTE nBufff[512];
	
	nBufff[0]  = SAVE_FILE_NAME[0];
	nBufff[1]  = SAVE_FILE_NAME[1];
	nBufff[2]  = SAVE_FILE_NAME[2];
	nBufff[3]  = SAVE_FILE_NAME[3];
	nBufff[4]  = SAVE_FILE_NAME[4];
	nBufff[5]  = SAVE_FILE_NAME[5];
	nBufff[6]  = SAVE_FILE_NAME[6];
	nBufff[7]  = SAVE_FILE_NAME[7];

	nBufff[8]  = SAVE_FILE_NAME[8]; //확장자
	nBufff[9]  = SAVE_FILE_NAME[9];
	nBufff[10] = SAVE_FILE_NAME[10];

	nBufff[11] = 0x20; //속성
	

	nBufff[12] = 0x00; //여비
	nBufff[13] = 0x00;
	nBufff[14] = 0x00;
	nBufff[15] = 0x00;
	nBufff[16] = 0x00;
	nBufff[17] = 0x00;
	nBufff[18] = 0x00;
	nBufff[19] = 0x00;
	nBufff[20] = 0x00;
	nBufff[21] = 0x00;

	nBufff[22] = 0x89; //시간 : 09:04
	nBufff[23] = 0x48;
	nBufff[24] = 0xA4; //날짜 : 01:05:04
	nBufff[25] = 0x2A;
	
	//시작 클러스터 계산, 처음 클러스터는 0x0002 이다.
	nBufff[26] = 0x02; //시작 클러스터
	nBufff[27] = 0x00;

	nBufff[28] = 0x00; //크기 -- 62914560(바이트)
	nBufff[29] = 0x00;
	nBufff[30] = 0xc0;
	nBufff[31] = 0x03;
	
	// 나머지 0
	for(i=32;i<512;i++) nBufff[i] = 0x00;

	nSectorPerFAT = glFormatHeader[22]; // FAT당 섹터수를 얻어옴
	nRootDirOffset = (glSectorStartOffset+2+nSectorPerFAT*2)-1;
	SanDisk_ABS_WR(nRootDirOffset,nBufff);
	
	
	/***********************************
		FAT 영역 구성 및 저장
	************************************/

	// 나머지는 FFH 로 체운다
	
	nBufff[0] = 0xf8;
	nBufff[1] = 0xff;
	nBufff[2] = 0xff;
	nBufff[3] = 0xff;	
	
	k = 4;
	j = 0x0003;
	
	
	/*************************************************************************
		62914560Byte 는 122880개의 섹터와 30720 개의 클러스터가 필요함
		처음 클러스터는 정보값
		다음 부터 저장
	*************************************************************************/
	for(i=0;i<30720;i++)
	{
		nBufff[(k++)%512] = (BYTE)(j & 0xff);
		nBufff[(k++)%512] = (BYTE)(j >> 8);
		j++;
		
		if((k % 512) == 0)
		{
			SanDisk_ABS_WR(glSectorStartOffset + 1 + (k/512) - 1,nBufff);	// write FAT 1
			SanDisk_ABS_WR(glSectorStartOffset + nSectorPerFAT + 1 + (k/512) - 1,nBufff);	// write FAT 2
		}		
	}	

	nBufff[(k++)%512] = 0xff;
	nBufff[(k++)%512] = 0xff;
	
	for(i=(k++)%512;i<512;i++) nBufff[i] = 0x00;

	SanDisk_ABS_WR(glSectorStartOffset + 1 + (k/512),nBufff);	// write FAT 1
	SanDisk_ABS_WR(glSectorStartOffset + nSectorPerFAT + (k/512),nBufff);	// write FAT 2
}

/**************************************************************
	Name	: Sandisk_Init()
	Purpose : Boot Sector로 부터 디스트 정보를 읽어온다.
	Date	: 2003-10-30
***************************************************************/
int Sandisk_Init()
{	
	BYTE nBuff[512];
	BYTE nTemp;
	
	SanDisk_Info_Read(); 			
	SanDisk_ABS_RD(0,nBuff);		
	
	if(nBuff[0] == 0xeb)
	{
		glSectorStartOffset = 0;
		glDiskFail = 0;
	}	
	else 
	{
		SanDisk_ABS_RD(glSectPerTrack,nBuff);	
	
		if(nBuff[0] == 0xeb) 
		{
			glSectorStartOffset = glSectPerTrack;
			glDiskFail = 0;
		}	
		else glDiskFail = 1;
	} // if end 
	
	if(!glDiskFail)
	{
		m_nFat2Offset = (nBuff[DOS_BOOT_NFATS]==1)? DOS_FAT1_SEC : DOS_FAT1_SEC+((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|nBuff[DOS_BOOT_SEC_PER_FAT]);
		m_nRootOffset = m_nFat2Offset + ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|nBuff[DOS_BOOT_SEC_PER_FAT]);
		m_nDataOffset = m_nRootOffset  + ((nBuff[DOS_BOOT_MAX_ROOT_ENTS+1]<<8)|nBuff[DOS_BOOT_MAX_ROOT_ENTS])/16; /* 16 EntryPerSector */;
		m_nSecPerClust= nBuff[DOS_BOOT_SEC_PER_CLUST];
		m_wTotalSec   = *(unsigned int*)(&nBuff[DOS_BOOT_NSECTORS]);
		m_wTotalSec   = ((m_wTotalSec<<8)&0xff00)|((m_wTotalSec>>8)&0x00ff); 
		memcpy(m_VolumeID,&nBuff[DOS_BOOT_VOL_ID],4);
		memcpy(m_szVolume,&nBuff[DOS_BOOT_VOL_LABEL],11);
		m_szVolume[11] = 0;
	
		if(!strncmp(&nBuff[DOS_BOOT_FAT_LABEL],"FAT12   ",8))m_nFat = 1;
		else if(!strncmp(&nBuff[DOS_BOOT_FAT_LABEL],"FAT16   ",8))m_nFat = 2;
		else m_nFat=0;
	} // if end 
}

/**************************************************************
	Name	: FileEntry()
	Purpose : Root Sector의 전영역에서 저장된 화일을 읽는다.
		: 최대 100개 저장 가능하다. 
	Date	: 2003-10-30
***************************************************************/

int FileEntry()
{
	BYTE nBuff[512];
	int i,k,j=0,m =0;

	for(k=0;k<(m_nDataOffset-m_nRootOffset);k++)
	{
		if(m) break;
		SanDisk_ABS_RD(m_nRootOffset+k,nBuff);

		for(i=0;i<16;i++) // 512byte 내용 검색 
		{
			if(nBuff[i*32]==NULL) {m=1; break;}
		
			if((nBuff[i*32]==0xE5)||!(nBuff[i*32+26]||nBuff[i*32+27])); 			//지운파일, 클러스터 0
			else if(!(nBuff[i*32+28]||nBuff[i*32+29]||nBuff[i*32+30]||nBuff[i*32+31])); 	// recycled 파일 
			else 
			{
				memcpy(FileList[j].FileName,&nBuff[i*32],8);
				memcpy(FileList[j].ExtName,&nBuff[i*32+8],3);
				FileList[j].StartCluster = (nBuff[i*32+27]<<8)|nBuff[i*32+26];
				FileList[j].FileSize = (nBuff[i*32+31]<<24)|(nBuff[i*32+30]<<16)|(nBuff[i*32+29]<<8)|nBuff[i*32+28];

				j++;
			} // else end
		} // for end 	
	}
	return j;
} 

/**************************************************************
	Name	: FileCompare()
	Purpose : Root Sector의 저장된 화일에서 "PATTERN .BIN"
		: 파일을 찾는다. 
	Date	: 2003-10-30
***************************************************************/

int FileCompare()
{
	int i,j=-1;
	
	for(i=0;i<FileEntry();i++)
	{
		if(!strncmp(FileList[i].FileName,(BYTE *)"PATTERN ",8) && !strncmp(FileList[i].ExtName,(BYTE *)"BIN",3)){j=i;break;}
	}
	return j;
}	

/*******************************************************
	Name 	: GetUsedCluster(unsigned int nSize)
	Output  : NextCluster(Address),Cluster total count
	Description:
	"Pattern.bin" 화일에서 사용된 클러스터를 넘겨준다.
********************************************************/

unsigned int GetUsedCluster(unsigned int nSize) 
{
	int i,k;
	int PreRDSector = 0;
	int FATOffset;
	int nTemp;
	BYTE nBuff[0x600];
	
	switch(m_nFat)
	{
		case DOS_PTYPE_FAT12:

			FATOffset = glStartCluster/1024 +1; 		// FAT sector Offset
			NextCluster[0] = glStartCluster;
						
			for(i=1;i<nSize/512/m_nSecPerClust+1;i++)  	// 클러스터의 옵셋과 결과 값이 다른경우 에러처리 필요
			{
				if(PreRDSector != FATOffset)
				{				
					SanDisk_ABS_RD(FATOffset,nBuff);
					SanDisk_ABS_RD(FATOffset+1,nBuff+0x200);
					SanDisk_ABS_RD(FATOffset+2,nBuff+0x400);
				}
				PreRDSector= FATOffset;			// 이전 FAT 섹터 읽기 백업		

				k = ((NextCluster[i-1]%1024)*3)/2;	// 클러스터 시작 어드레스 (하위)
				NextCluster[i] = ((nBuff[k+1]<<8)&0xff00)|nBuff[k];
				
				if(NextCluster[i-1]%2) NextCluster[i] >>= 4;
				NextCluster[i] &= 0xfff;		

				if(NextCluster[i]>= 0xff8) break; 
				FATOffset = NextCluster[i]/1024 +1;
			}		
			break;
			
		case DOS_PTYPE_FAT16:
			
			FATOffset = glStartCluster/256 +1;		// "+1" Boot Sector를 의미한다.
			NextCluster[0] = glStartCluster;
	
			for(i=1;i<nSize/512/m_nSecPerClust +1;i++) 
			{
				if(PreRDSector != FATOffset) SanDisk_ABS_RD(FATOffset,nBuff);
				PreRDSector= FATOffset;			// 이전 FAT 섹터 읽기 백업		
		
				NextCluster[i] = nBuff[(NextCluster[i-1]%256)*2+1]<<8|nBuff[(NextCluster[i-1]%256)*2];
				if((NextCluster[i]&0xffff) >= 0xfff8) break; 

				FATOffset = NextCluster[i]/256 +1; 	// "1" Boot Sector를 의미한다.
	
			}// FAT의 Cluster Read Complete!	
			break;
	}
	
//	nTemp = (nSize/512/m_nSecPerClust)+1;
//	if(nTemp!=i) i=0;  // 파일이 디스크 공간이 부족한때 저장할때 DOS상에서의 에러가 발생됨	
	return i;
}

/*******************************************************
	Name 	: Seek_File
	
	Output  : glTotal_File (저장된 화일 읽기)
		  glStartCluster (매치 화일의 시작 클러스터)
		  glSecCnt (매치 화일의 총 섹터 수)
		  glTotalClusterCnt (매치 화일의 총 클러스터수) 
		  
	Description: 산디스크에서 매치 화일을 찾는다.
********************************************************/

int Seek_File()
{
	int j=0;
	int nTemp;
	
	nTemp = FileCompare();
	
	if(nTemp!=-1) 
	{
		glStartCluster = FileList[nTemp].StartCluster;
		glSecCnt = FileList[nTemp].FileSize/512 ;
		glTotalClusterCnt = GetUsedCluster(FileList[nTemp].FileSize);
		j=1;
	}	
	return j;
}

/******************************************************
/****************** 메모리 내용 찾기 ******************
/******************************************************

/******************************************************
	Name 	: Check_Header(unsigned int nOffset)
	Output  : nOffset메모리의 내용 (BYTE)
	Description: 메모리의 내용을 읽는다. 	
*******************************************************/

BYTE Check_Header(unsigned int nOffset)
{
	int SectorOffset;
	
	SectorOffset = nOffset/512;   				
	NowSector = m_nDataOffset+(NextCluster[SectorOffset/m_nSecPerClust]-2)*m_nSecPerClust;
	NowSector+= SectorOffset%m_nSecPerClust;

	if(PreSector!=NowSector) SanDisk_ABS_RD(NowSector,NowRdBuff);
	PreSector = NowSector;

	return NowRdBuff[nOffset%512];
}
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////


/******************************************************
	Name :	Rd_StationName // 0x20 삭제
	Input:  Maximum Station Count (최대넣을 수 있는 갯수),pData(역코드)
	Output: TrainNumber[i].KorName
		TrainNumber[i].EngName
	Description : 
	 	역명을 실시간으로 검색하여 얻어낸다.
	        Header와 일치하지 않는경우 루틴을 벗어난다.	 
*******************************************************/

unsigned int Rd_StationName(unsigned int nCnt,BYTE *pData) 	// nCnt개의 역명을 버퍼에 저장한다.
{
	BYTE nTemp[50];
	BYTE pDData[50];
	int i,k,l,m,j=0;
	int Local;
	unsigned int Offset = STATION_NAME_OFFST;
	
	if(Check_Header(Offset)!=0x50);				// Header = 0x50
	else
	{
		Offset += STATION_NAME_BODY_OFFST;		// Data Offset
		
		for(i=0;i<nCnt;i++)
		{
		 	Local = Offset+(pData[i]-1)*46;		// Station Code Offset
		
			if(pData[i]!= Check_Header(Local));
			else 
			{
				for(k=1;k<46;k++) nTemp[k] = Check_Header(Local+k);
			
				memcpy(TrainNumber[i].KorName,&nTemp[1],15);
				memcpy(TrainNumber[i].EngName,&nTemp[16],30);

				j=1;
			} 
		}
	} 
	return j;
}

/*////////////////////////////////////////////////////////
	Name :	Rd_StationName_Code// 0x20 삭제

	Input:   Station Code 
	Output:  pData Buf
		 
	Description : 역코드를 입력하여 이름을 검색한다.
	         통신으로 입력받은 값을 사용하여 역이름을 검색한다.
	         (회송, 시운전, 구로기지는 없슴)
/////////////////////////////////////////////////////////*/

unsigned int Rd_StationName_Code(BYTE Code,BYTE *pData,BYTE *pDData) 
{
	BYTE nTemp[50];
	int i,k,l,j=0;
	int Local;
	unsigned int Offset = STATION_NAME_OFFST;
	
	for(i=0;i<45;i++) pData[i]=0x00;
	
	if(Check_Header(Offset)!=0x50);			// Header = 0x50
	else
	{
		Offset += STATION_NAME_BODY_OFFST;	// Data Offset
	 	Local = Offset+(Code-1)*46;		// Station Code Offset
		
		if(Code!= Check_Header(Local));
		else 
		{
			for(k=1;k<46;k++) pData[k-1] = Check_Header(Local+k);

			i=0;
			for(k= 0;k<15;k++) if(pData[k]!=0x20) pDData[i++]=pData[k];
			i=15;
			for(k=15;k<45;k++) if(pData[k]!=0x20) pDData[i++]=pData[k];
		} 
	} 
	return j;
}

/******************************************************
	Name :	Rd_StationName_Total
*******************************************************/

unsigned int Rd_StationName_Total() 
{
	BYTE nTemp[50];
	int k;
	unsigned int Code=0;
	unsigned int Local;
	unsigned int Offset = STATION_NAME_OFFST;

	if(Check_Header(Offset)!=0x50);				// Header = 0x50
	else
	{
		Offset += STATION_NAME_BODY_OFFST;		// Data Offset

		for(Code=1;Code<101;Code++)
		{ 
		 	Local = Offset+(Code-1)*46;		// Station Code Offset
			if(Code!= Check_Header(Local)); 	// {Code--;break;}
			else 
			{
				for(k=0;k<46;k++) nTemp[k] = Check_Header(Local+k);
				
				StationList[Code-1].StationCode = nTemp[0];
				memcpy(StationList[Code-1].StationName,&nTemp[1],45);
			}
		}	 
	} 
	return Code;
}

/******************************************************
	Name :	Comp_TrainNo

	Input:   Station Code 
	Output:  pData Buf(열차번호), StopPatternNo(정차패턴)
		 
	Description : 
	Dia를 통해 열차 번호를 검색하고 정차패턴을 리턴한다.
*******************************************************/
	
unsigned int Comp_TrainNo(BYTE *pData) // No : 열차번호
{
	BYTE nTemp[20];
	WORD StopPatternNo =0;
	int i,k,l,m=0;
	int Train_Cnt;

	unsigned int Offset = SERVICE_DIA_OFFST;

	for(l=0;l<SERVICE_DIA_MAX;l++)  			// 최대 다이아 검색 
	{
		if(m) break;
		
		if(Check_Header(Offset)!=0x32) break;		// Header = 0x32
		else
		{
			Train_Cnt = Check_Header(Offset+4)|((Check_Header(Offset+5)<<8)&0xff00);
			Offset += DIA_BODY_OFFST;		// Data Offset
		
			for(i=0;i<Train_Cnt;i++)
			{
				for(k=0;k<12;k++) nTemp[k] = Check_Header(Offset+k);
	
				if(!strncmp(nTemp,pData,5))
				{
					StopPatternNo =(int)nTemp[6]; 
					glStopNo = (int)nTemp[6];
					glTrainClass = (int)nTemp[10];
					m=1;
					break;
				}
				else Offset+= 12;
			}
		} 
	} // for end
	return StopPatternNo;
} 

/******************************************************
   	Name :	 Get_StopPattern
	Input:   Now,Dest Station Code 
	Output:  pData Buf(역    명), StationNo(역의 갯수)
		 glStopNo (정차패턴)
	Description : 
      	입력된 현재역 다음역데이터를 통해 정차패턴을 얻는다.
*******************************************************/

unsigned int Get_StopPattern(unsigned int Now,unsigned int Dest,BYTE *pData)
{
	int i,l,j=0;
	BYTE FIELD_OFFST=4;
	BYTE Cnt;
	BYTE StationNo = 0;
	
	unsigned int Offset = STOP_PATTERN_OFFST;
	
	if(Check_Header(Offset)!=0x3C);					// Header = 0x3C
	else
	{
		Offset += STOP_BODY_OFFST;				// Data Offset

		for(l=0;l<STOP_PATTERN_MAX;l++) 			// Body 읽기 시작 루틴
		{
			Cnt = Check_Header(Offset+3);
			
			if((Now != Check_Header(Offset+1))||(Dest != Check_Header(Offset+2))) 
				Offset+= Cnt*8 +FIELD_OFFST;  		// break가 되어서는 안됨.
		 	else
		 	{	
		 		glStopNo = Check_Header(Offset);	// 정차패턴 얻어냄 
				
				Offset += FIELD_OFFST;
				StationNo = Cnt;

				for(i=0;i<StationNo;i++)
				{
					pData[i] = Check_Header(Offset); 
					Offset+= 8;
				} // for end 
			} // else end 
		} // for end 	
	
	} // else end 
	return StationNo;
}

/******************************************************
	Name :	 Comp_StopPattern
	Input:   No(정차패턴)
	Output:  pData Buf(역    명), StationNo(역의 갯수)

	Description : 
		정차패턴을 통해 역코드를 검색한다. 
		pData Buffer Data 는 최대 60개
		정차 패턴 넘버의 기록 수 (최대 300 개)
*******************************************************/

unsigned int Comp_StopPattern(unsigned int No,BYTE *pData)
{
	int i,l,j=0;
	BYTE FIELD_OFFST=4;
	BYTE Cnt;
	BYTE StationNo = 0;
	
	unsigned int Offset = STOP_PATTERN_OFFST;
	
	if(Check_Header(Offset)!=0x3C);			// Header = 0x3C
	else
	{
		Offset += STOP_BODY_OFFST;		// Data Offset

		for(l=0;l<STOP_PATTERN_MAX;l++) 	// Body 읽기 시작 루틴
		{
			Cnt = Check_Header(Offset+3);
			
			if(No != Check_Header(Offset)) Offset+= Cnt*8 +FIELD_OFFST;  // break가 되어서는 안됨.
		 	else
		 	{	
				Offset += FIELD_OFFST;
				StationNo = Cnt;
				
				for(i=0;i<StationNo;i++)
				{
					pData[i] = Check_Header(Offset); 
					Offset+= 8;
				} // for end 
			} // else end 
		} // for end 	
	
	} // else end 
	return StationNo;
}

BYTE Find_StationRoot(unsigned int ScreenNo,unsigned int nLen) 	// No 역명 읽기 
{
	BYTE nTemp[20];
	int i,k,l,j=0;
	int Local;
	unsigned int Offset = STATION_ROOT_OFFST;		// 행선 코드 옵셋
	
	if(Check_Header(Offset)!=0x46);				// Header = 0x46
	else
	{
		Offset += STATION_ROOT_BODY_OFFST;		// Data Offset
		
		for(i=ScreenNo*10;i<ScreenNo*10+nLen;i++)	// i = 1이상일것 
		{
		 	Local = Offset+i*18;			// Station Code Offset
			if(!Check_Header(Local)) break;
			else
			{
				for(k=1;k<17;k++) nTemp[k] = Check_Header(Local+k);
				
				RootList[i-ScreenNo*10].StationCode = nTemp[1];
				memcpy(RootList[i-ScreenNo*10].KorName,&nTemp[2],15);
			}				
		} // for end 
		
		if(i!=ScreenNo*10+nLen) 
		for(i;i<ScreenNo*10+nLen;i++) memset(RootList[i-ScreenNo*10].KorName,0,15);
		
		j=1;
	} // else end 
	return j;
}	

/******************************************************
   	Name :	 Find_Display_Schedule
	Input:   Now,Next,Info (현재역,다음역,역정보)
	Output:  DisplayIndex[l].Distance
		 DisplayIndex[l].Type
		 DisplayIndex[l].Number
		 
		 스케쥴 최대갯수 
	Description :
 		표시기에 표출할 데이터를 검색하여 얻어낸다. 
*******************************************************/

BYTE Find_Display_Schedule(BYTE Now, BYTE Next, BYTE Info)
{
	BYTE nTemp[20];
	int i,k,l,j=0,m=0;
	int Local;
	unsigned int Offset = DISPLAY_DATA_OFFST;			// 행선 코드 옵셋
	
	if(Check_Header(Offset)!=0x64);					// Header = 0x64
	else
	{
		Offset += 2;						// Data Offset
		Offset += 1;						// Current Station Offset
		
		for(i=0;i<DISPLAY_BODY_MAX;i++)				
		{
			if(m) break;
			
		 	Local = Offset+(i)*88;				// Station Code Offset
			for(k=0;k<6;k++) nTemp[k] = Check_Header(Local+k); // Now,Next,Class,Info
			
			if(nTemp[0]==Now && nTemp[1]==Next && nTemp[3]==Info)// && nTemp[2] == glTrainClass)
			{	
				if((nTemp[5]== 0x10)||(nTemp[5]== 0x20)) 	glDoorDir = 0x01;	// 03-05-12 11:22오전
				else if((nTemp[5]== 0x11)||(nTemp[5]== 0x21)) 	glDoorDir = 0x02;	// 03-05-12 11:22오전
				else glDoorDir = 0;			 			//03-05-12 11:45오전
				
				Local += 7;
				
				for(l=0;l<20;l++) 			// 20개가 꽉차있는 경우에 대한 대책 필요  
				{					// Structure 부터 검색	
					for(k=0;k<4;k++) nTemp[k] = Check_Header(Local+k+ l*4); 
					if(!nTemp[2]){m=1; break;}      // Type이 없는 경우 
				
					DisplayIndex[l].Distance = ((nTemp[1]<<8)&0xff00)|nTemp[0];
					DisplayIndex[l].Type =   nTemp[2];
					DisplayIndex[l].Number = nTemp[3];
				
				} // body 20개 항목 
				j = l;
			}				
		} // for end 
	} // else end 
	return j;
}

/********************************************************
	Name  :	 	Find_IM
	Input :  	nCnt(IM 번호)
	Output:  	pData(IM 문장)
	Description : 	IM 표출문을 찾는다. (299BYTE)
*********************************************************/

BYTE Find_NewIM(unsigned int nCnt,BYTE *pData) 		// No째의 역명 읽기 
{
	BYTE nTemp[300];
	int i,k,l,j=0;
	int Local;
	unsigned int Offset = IM_DATA_OFFST;
	
	if(Check_Header(Offset)!=0x6E);			// Header = 0x6E
	else
	{
		Offset += IM_BODY_OFFST;		// Data Offset
		Local = Offset+(nCnt-1)*300;		// Station Code Offset
		
		if(nCnt != Check_Header(Local+1));
		else 
		{
			for(k=0;k<300;k++) pData[k] = Check_Header(Local+k);
			j=1;
		} 
	} 
	return j;
}

/********************************************************
	Name  :	 	Find_PR
	Input :  	nCnt(PR 번호)
	Output:  	pData(PR 문장)
	Description : 	PR 표출문을 찾는다. (499BYTE)
*********************************************************/	
	
BYTE Find_NewPR(unsigned int nCnt,BYTE *pData) 		// No째의 역명 읽기 
{
	BYTE nTemp[500];
	int i,k,l,j=0;
	int Local;
	unsigned int Offset = PR_DATA_OFFST;
	
	if(Check_Header(Offset)!=0x78);			// Header = 0x78
	else
	{
		Offset += PR_BODY_OFFST;		// Data Offset
		Local = Offset+(nCnt-1)*500;		// Station Code Offset
		
		if(nCnt != Check_Header(Local+1));
		else 
		{
			for(k=0;k<500;k++) pData[k] = Check_Header(Local+k);
			j=1;
		} 
	} 
	return j;
}

/************************************************************/
//	GP 화면에 현시를 위한 목적 
/************************************************************/

BYTE Find_RootAllNo(unsigned int nLen,BYTE *pData)
{
	int i,j=0,m=0;
	int Local;
	unsigned int Offset = STATION_ROOT_OFFST;		// 행선 코드 옵셋
	
	if(Check_Header(Offset)!=0x46);				// Header = 0x46
	else
	{
		Offset += STATION_ROOT_BODY_OFFST;		// Data Offset
		Offset += 1;					// 역코드 옵셋
		
		for(i=0;i<nLen;i++)		
		{
		 	Local = Offset+i*18;			// Station Code Offset
		 	pData[i]=Check_Header(Local);
		 	
			if(!pData[i]) break;
		} // for end 
		j = i;
	} // else end 
	return j;
}

/********************************************************
	표출 스케쥴 확인 

	1) 거리 데이터에 따른 갯수를 찾는다. 
	2) 순차적으로 전송하며 플래그를 기록한다. 
	3) 문이 열림시 데이터 클리어 한다. 
*********************************************************/

BYTE Find_Schedule_Cnt(BYTE *pData,BYTE Display_Cnt,WORD StartDistance,WORD EndDistance)
{
	BYTE i;
	BYTE nCnt=0;
	
	for(i=0;i<Display_Cnt;i++)
	{	
		if((DisplayIndex[i].Type==1)||(DisplayIndex[i].Type==4)||(DisplayIndex[i].Type==3))
		{
			if(!EndDistance && !DisplayIndex[i].Distance) pData[nCnt++] = i;	
			else if((StartDistance < DisplayIndex[i].Distance)&&(DisplayIndex[i].Distance <= EndDistance)) pData[nCnt++] = i;
		}	
	}
	return nCnt;
}

/////////////////////////////////////////////////////////
//	Name 	: Nvsram_Load()
//	Purpose : San Disk -> Nvsram (Station Name Load)
/////////////////////////////////////////////////////////

void Nvsram_Load()
{
	int i,j,k;
	int Offset1,Offset2;
	BYTE Cnt;
	
	for(i=0;i<NVSRAM_END_OFFST;i++) NVSRAM(i) = 0x00;// Memory Clear
	if(Check_Header(STATION_NAME_OFFST)==80) 	// Station Name Load
	{
//		for(i=0;i<4602;i++) NVSRAM(NVSRAM_STATION_OFFST+i)= Check_Header(STATION_NAME_OFFST+i); 2003-12-23 4:13오후
		for(i=0;i<50*105+2;i++) NVSRAM(NVSRAM_STATION_OFFST+i)= Check_Header(STATION_NAME_OFFST+i); //2003-12-23 4:13오후
	}	
	if(Check_Header(STOP_PATTERN_OFFST)==60)	// Stop Pattern Load
	{
		for(i=0;i<2;i++) NVSRAM(NVSRAM_STOPP_OFFST+i)= Check_Header(STOP_PATTERN_OFFST+i);	
		
		Offset1 = NVSRAM_STOPP_OFFST+2; 	// Nvsram Offset 
		Offset2 = STOP_PATTERN_OFFST+2;		// SanDisk Offset

		for(i=0;i<STOP_PATTERN_MAX;i++) 			
		{
			Cnt = Check_Header(Offset2+3);	// Station Count Offset 
			
			for(j=0;j<4;j++) NVSRAM(Offset1++)= Check_Header(Offset2++);	
			for(j=0;j<Cnt;j++)
			{
				NVSRAM(Offset1++) = Check_Header(Offset2+j*8+0);
				NVSRAM(Offset1++) = Check_Header(Offset2+j*8+7);
			}	
			Offset2+= Cnt*8;  	
		}		
	}
	if(Check_Header(STATION_ROOT_OFFST)==70)	// Dest Code Load
	{
		for(i=0;i<2;i++) NVSRAM(NVSRAM_DEST_OFFST+i)= Check_Header(STATION_ROOT_OFFST+i);	
		
		Offset1 = NVSRAM_DEST_OFFST+2; 		// Nvsram Offset 
		Offset2 = STATION_ROOT_OFFST+2;		// SanDisk Offset
	
		for(i=0;i<80;i++)
		{
			NVSRAM(Offset1+i*2+0) = Check_Header(Offset2+i*18+0);
			NVSRAM(Offset1+i*2+1) = Check_Header(Offset2+i*18+1);
		}	
	}
	if(Check_Header(DISPLAY_DATA_OFFST)==100) 	// Display Data Load
	{
		for(i=0;i<300*88+2;i++) NVSRAM(NVSRAM_DISP_OFFST+i)= Check_Header(DISPLAY_DATA_OFFST+i);
	}		
	if(Check_Header(IM_DATA_OFFST)==110) 		// IM Data Load
	{
		for(i=0;i<100*300+2;i++) NVSRAM(NVSRAM_IM_OFFST+i)= Check_Header(IM_DATA_OFFST+i);
	}			
	if(Check_Header(PR_DATA_OFFST)==120) 		// PR Data Load
	{
		for(i=0;i<60*500+2;i++) NVSRAM(NVSRAM_PR_OFFST+i)= Check_Header(PR_DATA_OFFST+i);
	}
	for(i=0;i<6;i++) NVSRAM(NVSRAM_EDIT_VER_OFFST+i) = Check_Header(EDIT_VER_OFFST+i);

	if(Check_Header(SERVICE_DIA_OFFST)==50) 	// Dia Data 
	{
		for(i=0;i<126*10;i++) NVSRAM(NVSRAM_SERVICE_DIA_OFFST+i)= Check_Header(SERVICE_DIA_OFFST+i);
	}
}

/////////////////////////////////////////////////////////
//	Name 	: NVSRAM_Display_Schedule(BYTE Now, BYTE Next, BYTE Info)
//	Purpose : 
/////////////////////////////////////////////////////////

BYTE NVSRAM_Display_Schedule(BYTE Now, BYTE Next, BYTE Info)
{
	BYTE nTemp[20];
	int i,k,l,j=0,m=0;
	int Local,Data;
	unsigned int Offset = NVSRAM_DISP_OFFST;			// 행선 코드 옵셋
	
	Data = NVSRAM(Offset)&0xff;
	if(Data!=0x64);							// Header = 0x64
	else
	{
		Offset += DISPLAY_BODY_OFFST;				// Data Offset
		Offset += 1;						// Current Station Offset
		
		for(i=0;i<DISPLAY_BODY_MAX;i++)				
		{
		 	Local = Offset+(i)*88;				// Station Code Offset
			for(k=0;k<6;k++) nTemp[k] = NVSRAM(Local+k)&0xff; // Now,Next,Class,Info
			
			if(nTemp[0]==Now && nTemp[1]==Next && nTemp[3]==Info)// && nTemp[2] == glTrainClass)
			{	
				if((nTemp[5]== 0x10)||(nTemp[5]== 0x20)) 	glDoorDir = 0x01;	// 03-05-12 11:22오전
				else if((nTemp[5]== 0x11)||(nTemp[5]== 0x21)) 	glDoorDir = 0x02;	// 03-05-12 11:22오전
				else glDoorDir = 0;			 //03-05-12 11:45오전
				
				Local += 7;
				
				for(l=0;l<20;l++) 			// 20개가 꽉차있는 경우에 대한 대책 필요  
				{					// Structure 부터 검색	
					for(k=0;k<4;k++) nTemp[k] = NVSRAM(Local+k+ l*4)&0xff; 
					if(!nTemp[2]){m=1; break;}      // Type이 없는 경우 
				
					DisplayIndex[l].Distance = ((nTemp[1]<<8)&0xff00)|nTemp[0];
					DisplayIndex[l].Type =   nTemp[2];
					DisplayIndex[l].Number = nTemp[3];
				
				} // body 20개 항목 
				j = l;
			}				
			if(m) break;
		} // for end 
	} // else end 
	return j;
}

/********************************************************
	Name  :	 	NVSRAM_Find_IM
	Input :  	nCnt(IM 번호)
	Output:  	pData(IM 문장)
	Description : 	IM 표출문을 찾는다. (299BYTE)
*********************************************************/

BYTE NVSRAM_Find_IM(unsigned int nCnt,BYTE *pData) 	
{
	BYTE nTemp[300];
	int i,k,l,j=0;
	int Local,Data,Data1;
	unsigned int Offset = NVSRAM_IM_OFFST;
	
	Data = NVSRAM(Offset)&0xff;
	if(Data!=0x6E);					// Header = 0x6E
	else
	{
		Offset += IM_BODY_OFFST;		// Data Offset
		Local = Offset+(nCnt-1)*300;		// Station Code Offset
		
		Data1 = NVSRAM(Local+1)&0xff;
		if(nCnt != Data1 );
		else 
		{
			for(k=0;k<300;k++) pData[k] = NVSRAM(Local+k)&0xff;
			j=1;
		} 
	} 
	return j;
}

/********************************************************
	Name  :	 	Find_PR
	Input :  	nCnt(PR 번호)
	Output:  	pData(PR 문장)
	Description : 	PR 표출문을 찾는다. (499BYTE)
*********************************************************/	
	
BYTE NVSRAM_Find_PR(unsigned int nCnt,BYTE *pData) 		// No째의 역명 읽기 
{
	BYTE nTemp[500];
	int i,k,l,j=0;
	int Local,Data,Data1;
	unsigned int Offset = NVSRAM_PR_OFFST;
	
	Data = NVSRAM(Offset)&0xff;
	if(Data!=0x78);			// Header = 0x78
	else
	{
		Offset += PR_BODY_OFFST;		// Data Offset
		Local = Offset+(nCnt-1)*500;		// Station Code Offset
		
		Data1 = NVSRAM(Local+1)&0xff;
		if(nCnt != Data1);
		else 
		{
			for(k=0;k<500;k++) pData[k] = NVSRAM(Local+k)&0xff;
			j=1;
		} 
	} 
	return j;
}

/******************************************************
   	Name :	 NVSRAM_Get_StopP
	Input:   Now,Dest Station Code 
	Output:  pData Buf(역    명), StationNo(역의 갯수)
		 glStopNo (정차패턴)
	Description : 
      	입력된 현재역 다음역데이터를 통해 정차패턴을 얻는다.
*******************************************************/

unsigned int NVSRAM_Get_StopP(unsigned int Now,unsigned int Dest,BYTE *pData)
{
	int i,l,j=0;
	BYTE FIELD_OFFST=4;
	BYTE Cnt;
	BYTE StationNo = 0;
	int Data1,Data2,Data;
	
	unsigned int Offset = NVSRAM_STOPP_OFFST;
	
	Data = NVSRAM(Offset)&0xff;
	if(Data!=0x3C);							// Header = 0x3C
	else
	{
		Offset += STOP_BODY_OFFST;				// Data Offset

		for(l=0;l<STOP_PATTERN_MAX;l++) 			// Body 읽기 시작 루틴
		{
			Data1=NVSRAM(Offset+1)&0xff;
			Data2=NVSRAM(Offset+2)&0xff;
			Cnt = NVSRAM(Offset+3)&0xff;
			
			if((Now!= Data1)||(Dest!= Data2)) Offset+= Cnt*2 +FIELD_OFFST;  		
		 	else
		 	{	
		 		glStopNo = NVSRAM(Offset)&0xff;		// 정차패턴 얻어냄 
				
				Offset += FIELD_OFFST;
				StationNo = Cnt;

				for(i=0;i<StationNo;i++) 
				{	
					pData[i] = NVSRAM(Offset)&0xff;	 
					Offset+= 2;
				} // for end 
			} // else end 
		} // for end 	
	} // else end 
	return StationNo;
}

/******************************************************
	Name :	NVSRAM_Rd_StationName 
	Input:  Maximum Station Count (최대넣을 수 있는 갯수),pData(역코드)
	Output: TrainNumber[i].KorName
		TrainNumber[i].EngName
	Description : 
	 	역명을 실시간으로 검색하여 얻어낸다.
	        Header와 일치하지 않는경우 루틴을 벗어난다.	 
*******************************************************/

unsigned int NVSRAM_Rd_StationName(unsigned int nCnt,BYTE *pData)// nCnt개의 역명을 버퍼에 저장한다.
{
	int i,j;

	for(i=0;i<nCnt;i++)
	{
		if(StationList[pData[i]-1].StationCode == pData[i]) 
		{
			memcpy(TrainNumber[i].KorName,StationList[pData[i]-1].StationName,15);
			memcpy(TrainNumber[i].EngName,&StationList[pData[i]-1].StationName[16],30);
		}	
		else 
		{
			memset(TrainNumber[i].KorName,0,15);
			memset(TrainNumber[i].EngName,0,30);
		}	
	}
}

/******************************************************
	Name 	: NVSRAM_Rd_StationName_Total //2003-12-23 4:16오후
	Purpose : 전체 역명을 얻어낸다. 
*******************************************************/
/*
unsigned int NVSRAM_Rd_StationName_Total() 
{
	int nTemp,Code,k;
	unsigned int Local,Data;
	unsigned int Offset = NVSRAM_STATION_OFFST;

	Data = NVSRAM(Offset)&0xff;
	if(Data!=0x50);							// Header = 0x50
	else
	{
		Offset += STATION_NAME_BODY_OFFST;	// Data Offset

		for(Code=1;Code<101;Code++)
		{ 
		 	Local = Offset+(Code-1)*46;		// Station Code Offset //2003-12-23 4:40오후 (46)
	 		nTemp = NVSRAM(Local)&0xff;

			if(Code!=nTemp); 
			else 
			{
				StationList[Code-1].StationCode = nTemp;
				for(k=1;k<46;k++)StationList[Code-1].StationName[k-1] = NVSRAM(Local+k)&0xff;
			}
		}	 
	} 
	return Code;
}
*/
/******************************************************
	Name 	: NVSRAM_Rd_StationName_Total //2003-12-23 4:16오후
	Purpose : 전체 역명을 얻어낸다. 
*******************************************************/

unsigned int NVSRAM_Rd_StationName_Total() 
{
	int nTemp,Code,k,i;
	unsigned int Local,Data;
	unsigned int Offset = NVSRAM_STATION_OFFST;

	for(i=0;i<=0xff;i++) MatchCode[i] = 0x00;// 코드 Clear
	
	Data = NVSRAM(Offset)&0xff;
	if(Data!=0x50);							// Header=0x50
	else
	{
		Offset += STATION_NAME_BODY_OFFST;	// Data Offset

		for(Code=1;Code<101;Code++)
		{ 
		 	Local = Offset+(Code-1)*50;		// Station Code Offset //2003-12-23 4:40오후 (46)
	 		nTemp = NVSRAM(Local)&0xff;

			if((Code!=nTemp)||!nTemp) break; 
			else 
			{
				for(i=0;i<4;i++)
				{
					Data = NVSRAM(Local+46+i)&0xff; 	
					MatchCode[Data] = nTemp;		
				}	
					
				StationList[Code-1].StationCode = nTemp;
				for(k=1;k<46;k++)StationList[Code-1].StationName[k-1] = NVSRAM(Local+k)&0xff;
			}
		}	 
	} 
	return Code;
}

/************************************************************/
//	Name	: NVSRAM_Find_RootAllNo 
//	Purpose : Flash Memory -> Sram Loading
/************************************************************/

BYTE NVSRAM_Find_RootAllNo(unsigned int nLen,BYTE *pData)
{
	int i,j=0,m=0;
	int Local,Data;
	unsigned int Offset = NVSRAM_DEST_OFFST;		// 행선 코드 옵셋
	
	Data = NVSRAM(Offset)&0xff;
	if(Data!=0x46);						// Header = 0x46
	else
	{
		Offset += STATION_ROOT_BODY_OFFST;		// Data Offset
		Offset += 1;					// 역코드 옵셋
		
		for(i=0;i<nLen;i++)		
		{
		 	Local = Offset+i*2;			// Station Code Offset
		 	pData[i]=NVSRAM(Local)&0xff;
		 	
			//if(!pData[i]) break; //03-12-19 4:09오후
		} // for end 
		j = i;
	} // else end 
	return j;
}

/*////////////////////////////////////////////////////////

	Name :	Rd_StationName_Code
	Input:   Station Code 
	Output:  pData (차내표시기로 전송할 데이터)
		 pDData(Gp 화면으로 전송할 데이터)		 
	Description : 
	         통신으로 입력받은 역코드를 사용하여 역이름을 검색
/////////////////////////////////////////////////////////*/

unsigned int Rd_StationName_CodeNew(BYTE Code,BYTE *pData,BYTE *pGpData) 
{
	int i=0,k;
	
	memset(pData,0,45);							// 차내 버퍼 영역 초기화 
	memset(pGpData,0,45);							// Gp 버터 영역 초기화 

	if(Code && (Code == StationList[Code-1].StationCode))		// 2003-12-02 11:50오전
	{
		memcpy(pData,StationList[Code-1].StationName,45);		// 영문, 한글이름 저장 

		for(k=0;k<15;k++)  if(pData[k]!=0x20)pGpData[i++]=pData[k];
		i=15;
		for(k=15;k<45;k++) if(pData[k]!=0x20)pGpData[i++]=pData[k];
	} 
}

/******************************************************
	Name :	 NVSRAM_Comp_StopP
	Input:   No(정차패턴)
	Output:  pData Buf(역    명), StationNo(역의 갯수)

	Description : 
		정차패턴을 통해 역코드를 검색한다. 
		pData Buffer Data 는 최대 60개
		정차 패턴 넘버의 기록 수 (최대 300 개)
*******************************************************/

unsigned int NVSRAM_Comp_StopP(unsigned int No,BYTE *pData)
{
	int i,l,j=0,Data,Data1;
	BYTE FIELD_OFFST=4;
	BYTE Cnt;
	BYTE StationNo = 0;
	
	unsigned int Offset = NVSRAM_STOPP_OFFST;
	
	Data = NVSRAM(Offset)&0xff;
	if(Data!=0x3C);					// Header = 0x3C
	else
	{
		Offset += STOP_BODY_OFFST;		// Data Offset

		for(l=0;l<STOP_PATTERN_MAX;l++) 	// Body 읽기 시작 루틴
		{
			Cnt = NVSRAM(Offset+3)&0xff;
			
			Data1 = NVSRAM(Offset)&0xff;
			if(No != Data1) Offset+= Cnt*2 +FIELD_OFFST;  // break가 되어서는 안됨.
		 	else
		 	{	
				Offset += FIELD_OFFST;
				StationNo = Cnt;
				
				for(i=0;i<StationNo;i++)
				{
					pData[i] = NVSRAM(Offset)&0xff; 
					Offset+= 2;
				} // for end 
			} // else end 
		} // for end 	
	
	} // else end 
	return StationNo;
}

/*////////////////////////////////////////////////////////
	Name :	NVSRAMRd_StationName_Code// 0x20 삭제

	Input:   Station Code 
	Output:  pData Buf
		 
	Description : 역코드를 입력하여 이름을 검색한다.
	         통신으로 입력받은 값을 사용하여 역이름을 검색한다.
	         (회송, 시운전, 구로기지는 없슴)
/////////////////////////////////////////////////////////*/

void NVSRAM_Rd_StationName_Code(BYTE Code,BYTE *pData,BYTE *pDData) 
{
	int i=0,k;

	memset(pData,0,45);
	
	if(Code== StationList[Code-1].StationCode)
	{
		memcpy(pData,StationList[Code-1].StationName,45);

		for(k= 0;k<15;k++) if(pData[k]!=0x20) pDData[i++]=pData[k];
		i=15;
		for(k=15;k<45;k++) if(pData[k]!=0x20) pDData[i++]=pData[k];
	} 
}

/******************************************************
	Name :	NVSRAM_Comp_TrainNo

	Input:   Station Code 
	Output:  pData Buf(열차번호), StopPatternNo(정차패턴)
		 
	Description : 
	Dia를 통해 열차 번호를 검색하고 정차패턴을 리턴한다.
*******************************************************/
	
unsigned int NVSRAM_Comp_TrainNo(BYTE *pData) // No : 열차번호
{
	BYTE nTemp[20];
	WORD StopPatternNo =0;
	int i,k,l,m=0;
	int Train_Cnt,Data,Data1,Data2;

	unsigned int Offset = NVSRAM_SERVICE_DIA_OFFST;

	for(l=0;l<SERVICE_DIA_MAX;l++)  			// 최대 다이아 검색 
	{
		if(m) break;
		
		Data = NVSRAM(Offset)&0xff;
		if(Data!=0x32);
		else
		{
			Data1 = NVSRAM(Offset+4)&0xff;
			Data2 = NVSRAM(Offset+5)&0xff;
			
			Train_Cnt = Data1|((Data2<<8)&0xff00);
			Offset += DIA_BODY_OFFST;		// Data Offset
		
			for(i=0;i<Train_Cnt;i++)
			{
				for(k=0;k<5;k++) nTemp[k] = NVSRAM(Offset+k)&0xff;
	
				if(!strncmp(nTemp,pData,5))
				{
					StopPatternNo =NVSRAM(Offset+6)&0xff; 
					glTrainClass = NVSRAM(Offset+10)&0xff;
					m=1;
					break;
				}
				else Offset+= 12;
			}
		} 
	}	
	return StopPatternNo;
} 

/*////////////////////////////////////////////////////////
	Name :	NVSRAM_Find_StationRoot
	Description :  //03-12-19 5:59오후
/////////////////////////////////////////////////////////*/
/*
BYTE NVSRAM_Find_StationRoot(unsigned int ScreenNo,unsigned int nLen) 	// No 역명 읽기 
{
	BYTE nTemp[20];
	int i,k,l,j=0;
	int Data;
	
	for(i=ScreenNo*10;i<ScreenNo*10+nLen;i++)			// i = 1이상일것 
	{
		if(glTotalRoot>i) 
		{
			Data = glRootList[i];
			RootList[i-ScreenNo*10].StationCode = Data;
			
			if(Data== StationList[Data-1].StationCode)
			{
				l=0;
				memcpy(nTemp,StationList[Data-1].StationName,15);
				for(k=0;k<15;k++) if(nTemp[k]!=0x20) RootList[i-ScreenNo*10].KorName[l++]=nTemp[k];
			}
		}	
		else 
		{
			Data=0;
			RootList[i-ScreenNo*10].StationCode = Data;
			memset(RootList[i-ScreenNo*10].KorName,0,15);
		}	
	}
}	
*/
BYTE NVSRAM_Find_StationRoot(unsigned int ScreenNo,unsigned int nLen) 	// No 역명 읽기 
{
	BYTE nTemp[20];
	int i,k,l,j=0;
	int Data;
	
	for(i=ScreenNo*10;i<ScreenNo*10+nLen;i++)			// i = 1이상일것 
	{
		Data = glRootList[i];
		RootList[i-ScreenNo*10].StationCode = Data;
			
		if(Data== StationList[Data-1].StationCode)
		{
			l=0;
			memcpy(nTemp,StationList[Data-1].StationName,15);
			for(k=0;k<15;k++) if(nTemp[k]!=0x20) RootList[i-ScreenNo*10].KorName[l++]=nTemp[k];
		}
		else 
		{
			Data=0;
			RootList[i-ScreenNo*10].StationCode = Data;
			memset(RootList[i-ScreenNo*10].KorName,0,15);
		}	
	}
}	

#endif