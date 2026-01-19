#ifndef _BR_Disk_H_
#define _BR_Disk_H_

/////////////////////////////////////////////////
//	SAN Disk Paramater 
//////////////////////////////////////////////// 
#define STOP_PATTERN_MAX	250
#define DISPLAY_BODY_OFFST	0x02
#define DISPLAY_BODY_MAX	600
#define IM_BODY_OFFST		0x02


//메모리 저장 위치
#define NVSRAM_SERVICE_DIA_OFFST 0//1F57A+650	//6+12*50 - 1개의 운행다이아만을 기록한다.

#define NVSRAM_DEST_OFFST		0x08000//A34C+650		//2+(33*80개) = 2642	//행선 코드
#define NVSRAM_STOPP_OFFST		0x10000//11FA+650		//2+(484*250개)=121002	//정차패턴
#define NVSRAM_DISP_OFFST		0x40000//A3EE+650 		//2+(87*600) = 52202	//표시장치
#define NVSRAM_IM_OFFST			0x50000//10B10+650		//2+(300*100)=30002		//IM 문장 Table
#define NVSRAM_PR_OFFST			0x60000//18042+650		//2+(500*60) = 30002	//PR 문장 Table

#define STATION_OFFST	0x400000
#define DEST_OFFST		0x408000
#define STOPP_OFFST		0x410000
#define DISP_OFFST		0x440000
#define IM_OFFST		0x450000
#define PR_OFFST		0x460000

// 지상 장치 저장 메모리

#define Memory_1(nIndex) 	(*(BYTE *)(0x300000+nIndex))	// 128Kbyte
#define Memory_2(nIndex) 	(*(BYTE *)(STATION_OFFST+(nIndex)))	// 512Kbyte


#define NVSRAM_EDIT_VER_OFFST	0x1F7FE//1F574+650
 
#define NVSRAM_END_OFFST		0x1FCF0//1FA66+650		//2003-12-23 4:14오후

	
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


/**************************************************************
	함수정의
***************************************************************/

typedef struct
{	
	BYTE StationCode;
	BYTE KorName[30];
	BYTE EngName[30];
}STATION_NAME;
STATION_NAME TrainNumber[61]; 		

typedef struct
{	
	int Distanc;
	BYTE Type;
	BYTE Number;
}DISPLAY_INDEX_NAME;
DISPLAY_INDEX_NAME DisplayIndex[20];

/************************************************************/
//열차 역명 코드
typedef struct
{
	BYTE nData_Type;	//Heard Code
	int : 32;
}DATA_TYPE, *PDATA_TYPE;

typedef struct
{
	BYTE nStationCode;	//역코드
	BYTE nStation_EngName[30];
	BYTE nStation_BrzName[30];
}STATIONNAMEBODY, *PSTATIONNAMEBODY;

typedef struct
{
	DATA_TYPE nHead;
	STATIONNAMEBODY nBody[100];
}STATIONNAME, *PSTATIONNAME;

//정차 패턴 
typedef struct
{
	BYTE nStationCode;
	BYTE nRunTime[3];
	BYTE nStopTime[3];
	BYTE nDoorRL;
}STOPPATTERN_INDEX, *PSTOPPATTERN_INDEX;

typedef struct
{
	BYTE nStopPatNum;		//정차 패턴 번호
	BYTE nDeparture_Code;	//출발역 코드
	BYTE nArrive_Code;		//도착역 코드
	BYTE nStation_Count;		//정차 패턴 총 역 겟수
	STOPPATTERN_INDEX nStopPatIndex[60];
}STOPPATTERN_BODY, *PSTOPPATTERN_BODY;

typedef struct
{
	DATA_TYPE nHead;
	STOPPATTERN_BODY nBody[250];
}STOPPATTERN, *PSTOPPATTERN;

//행선 코드
typedef struct
{
	BYTE nDest_Code;	//순서 코드 Count 
	BYTE nStation_Code;	//종착역 코드가 들어 간다.
	BYTE nStation_Name[30];
	int : 32;
}DESTBODY, *PDESTBODY;

typedef struct
{
	DATA_TYPE nHead;
	DESTBODY nBody[80];
}DESTCODE,*PDESTCODE;


//표시장치
typedef struct
{
	BYTE nDisPoint[2];
	BYTE nTable_Type;	//IM/PR 구분 문장
	BYTE nTable_Num;	//문장번호
}DISPTEXT, *PDISPTEXT;

typedef struct
{
	BYTE nDis_Tim_Num[2];
	BYTE nStopPatNum;		//
	BYTE nCurrStation_Code;	//현재역
	BYTE nNextStation_Code;	//다음역
	int : 32;
	int : 32;
	DISPTEXT nText[20];
}DISPBODY, *PDISPBODY;

typedef struct
{
	DATA_TYPE nHead;
	DISPBODY nBody[600];
}DISP, *PDISP;

//IM 
typedef struct
{
	BYTE nImNum;
	BYTE nImText[299];
}IMTEXTBODY, *PIMTEXTBODY;

typedef struct
{
	DATA_TYPE nHead;
	IMTEXTBODY nBody[100];
}IMTEXT, *PIMTEXT;

//PR
typedef struct
{
	BYTE nPrNum;
	BYTE nPrText[499];
}PRTEXTBODY, *PPRTEXTBODY;


typedef struct
{
	DATA_TYPE nHead;
	PRTEXTBODY nBody[60];
}PRTEXT, *PPRTEXT;
/***********************************************************************************/


BYTE glRootList[80];		//종착역 코드를 가지고 있는 배열
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

/******************************************************
	Name :	 NVSRAM_Comp_StopP
	Input:   No(정차패턴)
	Output:  pData Buf(역    명), StationNo(역의 갯수)

	Description : 
		정차패턴을 통해 역코드를 검색한다. 
		pData Buffer Data 는 최대 60개
		정차 패턴 넘버의 기록 수 (최대 300 개)
*******************************************************/
BYTE B_DoorR_L_R[100];
BYTE B_StopPat_Code[100];
int d_StopCount[250];
unsigned int NVSRAM_Comp_StopP(unsigned int No,BYTE *pData)
{
	int i,l,j=0,Data,Data1;
	BYTE StationNo = 0;

	PSTOPPATTERN pStopPat = (STOPPATTERN *)STOPP_OFFST;
	memset(pData,0x00,60);

	if(WORD_L(pStopPat->nHead.nData_Type) == 0x3C)
	{
		for(l=0;l<STOP_PATTERN_MAX;l++)
		{
			if(WORD_L( No) == WORD_L(pStopPat->nBody[l].nStopPatNum))
			{
				
				StationNo = WORD_L(pStopPat->nBody[l].nStation_Count);
				for(i=0;i < StationNo ; i++)
				{
					pData[i] = WORD_L(pStopPat->nBody[l].nStopPatIndex[i].nStationCode);
					B_StopPat_Code[i]= WORD_L(pStopPat->nBody[l].nStopPatIndex[i].nStationCode);
					B_DoorR_L_R[i] =   WORD_L(pStopPat->nBody[l].nStopPatIndex[i].nDoorRL);
				}
				break;

			}
			
		}
	}
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
	int i,j,nTrani_Cont=0;
	PSTATIONNAME pStationName = (STATIONNAME *)STATION_OFFST;
	
	if(WORD_L(pStationName->nHead.nData_Type)== 0x50)
	{
		for(i=0;i<100;i++)
		{
			for(j=0;j<100;j++)
			{
				if(WORD_L(pStationName->nBody[j].nStationCode) == WORD_L(pData[nTrani_Cont]))
				{
					memcpy(TrainNumber[nTrani_Cont].KorName,pStationName->nBody[j].nStation_EngName,30);
					memcpy(TrainNumber[nTrani_Cont].EngName,pStationName->nBody[j].nStation_BrzName,30);
					nTrani_Cont++;
					break;		
				}
			}
		}
	}
	
}

/////////////////////////////////////////////////////////
//	Name 	: NVSRAM_Display_Schedule(BYTE Now, BYTE Next, BYTE Info)
//	Purpose : 
/////////////////////////////////////////////////////////

BYTE NVSRAM_Display_Schedule(BYTE Now, BYTE Next)
{
	BYTE nDispPoint;
	BYTE nTotalDispCont=0;
	int i,j;

	PDISP pDispData = ( DISP *)DISP_OFFST;

	if(WORD_L(pDispData->nHead.nData_Type) == 0x64)
	{
		for(i=0;i<DISPLAY_BODY_MAX;i++)
		{
			if(WORD_L(pDispData->nBody[i].nCurrStation_Code) == Now && WORD_L(pDispData->nBody[i].nNextStation_Code))
			{
				for(j=0;j<20;j++)
				{
					nDispPoint =MAKE_WORD(WORD_L(pDispData->nBody[i].nText[j].nDisPoint[1]),WORD_L(pDispData->nBody[i].nText[j].nDisPoint[0]));
					if(nDispPoint) 
					{
						DisplayIndex[j].Type   = WORD_L(pDispData->nBody[i].nText[j].nTable_Type);
						DisplayIndex[j].Number = WORD_L(pDispData->nBody[i].nText[j].nTable_Num); 

					}
					else break;
				}
				break;
			}
		}

	}

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

	PIMTEXT pImText = (IMTEXT *)IM_OFFST;

	if(WORD_L(pImText->nHead.nData_Type) == 0x6E)
	{
		if(WORD_L(pImText->nBody[nCnt].nImNum) == nCnt)
		{
			memcpy(pData,pImText->nBody[nCnt].nImText,299);
		}
	}
	return 1;
}

/********************************************************
	Name  :	 	Find_PR
	Input :  	nCnt(PR 번호)
	Output:  	pData(PR 문장)
	Description : 	PR 표출문을 찾는다. (499BYTE)
*********************************************************/	
	
BYTE NVSRAM_Find_PR(unsigned int nCnt,BYTE *pData) 		// No째의 역명 읽기 
{
	
	PPRTEXT pPrtext = (PRTEXT *)PR_OFFST; 
	
	if(WORD_L(pPrtext->nHead.nData_Type) == 0x78)
	{
		if(WORD_L(pPrtext->nBody[nCnt].nPrNum) == nCnt)
		{
			memcpy(pData,pPrtext->nBody[nCnt].nPrText,499);
		}
	}
	return 1;
}
/************************************************************/
//	Name	: NVSRAM_Find_RootAllNo 
//	Purpose : Flash Memory -> Sram Loading
/************************************************************/
BYTE NVSRAM_Find_RootAllNo(unsigned int nLen,BYTE *pData)
{
	int i=0;

	PDESTCODE pDestCode = (DESTCODE *)DEST_OFFST;

	if(WORD_L(pDestCode->nHead.nData_Type) == 0x46)
	{
		for(i=0;i<nLen;i++)
		{
			if(WORD_L(pDestCode->nBody[i].nStation_Code))
			{
				pData[i] = WORD_L(pDestCode->nBody[i].nStation_Code);
			}
			else break;
		}
	}
	return i;
}

#endif 