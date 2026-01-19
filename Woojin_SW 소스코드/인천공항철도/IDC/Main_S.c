/**************************************************
         Header 정의 
/**************************************************/

#include "ALL_DEF.h"
#include "debug3x.h"
#include "85C30.h"
#include "Disk.h"


////////////////////////////////////////////////////

#define ROM_VER		17	//1.0
#define ETX		0x03
#define FDD		0xF5	// 정면
#define IDD		0xF1	// 차내
#define NDD		0xF7	// 열번
#define SDD		0xF6	// 측면
#define LDD		0xF9	// 노선
#define FSNDD		0xF8	// 정면,측면,열번 
#define ILDD		0xFA	// 정면,측면,열번 
#define TURNOFFTIME	5*180	// 180sec
#define SCC2B_CNT	2

////////////////////////////////////////////////////
void c_int01(void);
void c_int02(void);
void c_int03(void);
void c_int09(void);
void c_int10(void);
void RD_FROM_SETKEY();
void TrainNo_Check();

void SDR_Routine_Complete(BYTE *pSData);
void Find_StationInfoGp();
void Auto_Station_Cnt();
void Auto_Station_Cnt_00();

/*************************************************
	변수를 정의한다.
**************************************************/
unsigned int cint04 =0,cint09 =0,cint10 =0;
unsigned int glDebugCnt=0;

int glSAN300ms=0;					// San Disk Off time Delay Count
BYTE glXF0=0,glSAN=0,PreState =0; 	// San Disk 이전상태 (Active Low신호이기 때문에)
BYTE Mode_Flag =0;

/////////////////////////////////////////////////DI

int glPULSE100ms=0,glHCR200ms=0,glDOOR200ms=0,glTest10s=0,glSDR500ms=0;
int glPULSE_Cnt=0,glDistance=0,glChkDistance =0,PreDistance=0;		
int glIndexCnt=0,glIndex=0;

BYTE glSpotChangeEn=0;
BYTE PreDoor=0,PrePulse=0,glPULSE=0,glHCR=0,glDOOR=0;
BYTE IndexBuf[20];
BYTE glSourBuf[500]; 
BYTE glIDDBuf[530]; 
BYTE glIDDMBuf[530]; 				//2003-12-08 6:39오후
BYTE glIDDFBuf[530];
BYTE glGpBuf1[100];
BYTE glGpBuf[100];					// 쓰레기 값 버퍼 
BYTE glGpNow[50];
BYTE glGpNext[50];
BYTE glGpDest[50];

/************************************************/
/* 통신에 사용된 변수 							*/
/************************************************/
unsigned int cint01 =0,cint02 =0,cint03 =0;

BYTE glRxA1_Back[50];
BYTE glRxB1_Back[50];
BYTE glRxA2_Back[50];
BYTE glRxB2_Back[50];
BYTE glRxA3_Back[50];
BYTE glRxB3_Back[50];

BYTE glA1CRC_Err=0,glB1CRC_Err=0;
BYTE glA2CRC_Err=0,glB2CRC_Err=0;
BYTE glA3CRC_Err=0,glB3CRC_Err=0;

BYTE glRxA1_Flag=0,glTxA1_Flag=1;
BYTE glRxB1_Flag=0,glTxB1_Flag=1;
BYTE glRxA2_Flag=0,glTxA2_Flag=1;
BYTE glRxB2_Flag=0,glTxB2_Flag=1;
BYTE glRxA3_Flag=0,glTxA3_Flag=1;
BYTE glRxB3_Flag=0,glTxB3_Flag=1;
BYTE glB3_Flag=0;

BYTE glRxBufA1[50];
BYTE glTxBufA1[50]={0x60,0x02,0x13,0x30,0x02,};
BYTE glRxBufB1[50];
BYTE glTxBufB1[50];
BYTE glRxBufA2[50];
BYTE glTxBufA2[520];
BYTE glRxBufB2[50];
BYTE glTxBufB2[520];
BYTE glRxBufA3[50];
BYTE glRxBufB3[50];
BYTE glTxBufB3[50]={0xF2,0x08,};
BYTE glGpTxBuf[500];

unsigned int glRxPA1=0,glTxPA1=0,glRxA1_Cnt=0,glTxA1_Len=23;
unsigned int glRxPB1=0,glTxPB1=0,glRxB1_Cnt=0,glTxB1_Len=20;
unsigned int glRxPA2=0,glTxPA2=0,glRxA2_Cnt=0,glTxA2_Len=20;
unsigned int glRxPB2=0,glTxPB2=0,glRxB2_Cnt=0,glTxB2_Len=30;
unsigned int glRxPA3=0,glTxPA3=0,glRxA3_Cnt=0;
unsigned int glRxPB3=0,glTxPB3=0,glRxB3_Cnt=0,glTxB3_Len=30;

unsigned int glRxA1_Len =16,glCRC_A1,glRtnCRC_A1; // PIS (text(11)+addr(2)+Cont(1)+crc(2)
unsigned int glRxB1_Len =30,glCRC_B1,glRtnCRC_B1;
unsigned int glRxA2_Len =20,glCRC_A2,glRtnCRC_A2;
unsigned int glRxB2_Len =20,glCRC_B2,glRtnCRC_B2;
unsigned int glRxA3_Len =16,glCRC_A3,glRtnCRC_A3;
unsigned int glRxB3_Len =17,glCRC_B3,glRtnCRC_B3;

int glScc1a_cnt=0,glScc2a_offcnt=0,glScc2b_offcnt=0;
int glScc1a_offcnt =0; 
int glScc1a_Delaycnt=0;

BYTE glInternalFlag=0,glComNow=0,glComNext=0,glComDest=0;

/************************************************/
/*  GP에 사용된 변수 				*/
/************************************************/

int glRx_Pos=0,glTx_Pos=0,glTx_Len=0,glTx_Cnt=0; 

int glNowStation =0;
int glRootScreen_Cnt =0;
int glSelectScreen =0;
int glTestSpeed =0;
int glTestAuto5S_Cnt2=0;
int glTestAuto5S_Cnt=0;

BYTE glTestAutoDoor_Out=0,PreAutoDoor=0;
BYTE glDoorAutoClose=0,glDoorAutoClose_Out=0;
BYTE glDoorAuto_Flag=0;
BYTE glTestDoorOpen =0;
						

BYTE glStateNo=0;
BYTE glStateNo_Flag =0;
BYTE glTestInnerCar = 0;
BYTE glTestService =0;
BYTE glTestAutoDoor=0;
BYTE glTestRoot =0;
BYTE glManuComFlag = 0;
BYTE glFireFlag=0; //03-12-18 4:49오후
BYTE glManuSet=0;
BYTE glManuFlag=0;

BYTE glRx_Flag = 0;
BYTE glRootNo =0;
BYTE glSelectNo =0;
BYTE glSelectRootNo =0;
BYTE glTest=0,glTestCnt=0;
BYTE glStationP=0;
BYTE glSpotDis_Flag=0;
BYTE glRootDis_Flag=0;

BYTE glTx_Buf[500]; // GP TX Buffer
BYTE glRx_Buf[20];
BYTE ZeroBuf[100];


/************************************************/
/*  메모리 내용 찾기 				*/
/************************************************/
BYTE glErr_Code = 0;

unsigned int glInfo=0;
unsigned int glTextLen=0,glTextMLen=0,glTextFLen;	//2003-12-08 6:43오후

BYTE glTCMSCnt=0;
BYTE glStationList[60]; 	// 패턴에 들어갈 최대 역명의 갯수 
BYTE glNowBuf[45];
BYTE glDestBuf[45];
BYTE glNNextBuf[45];
BYTE glTCMSErr=0;
BYTE glTCMS_STATE=0;
BYTE PreTCMSState=0;
BYTE glState_Flag=0;
BYTE PreNow = 0;
BYTE PreNext =0;
BYTE glComDoor=0;
BYTE glComTrainNo=0;
BYTE glTrainBuf[5];
BYTE PreDest=0;
BYTE glRootP=0xff;

int glSpot500mS_Cnt=0;
int glRoot500mS_Cnt=0;
BYTE glSpotDis_Out=0,glRootDis_Out=0;

///////////////////////////////////////////////////////////////////////////

BYTE glComStart=0;
BYTE glSDR_Command=0;

BYTE PIS_Addr = 0x31;
BYTE glTestInnerCnt=0;
BYTE glLDDDistance=0;
BYTE glIDDPattern =0;
BYTE glLDDPattern=0;
BYTE glFSNDD_Flag=0;

BYTE glSDR_Buf[100];
BYTE glSDRComplete=0;
BYTE glSDR_Delay=0;
BYTE glSDR_Clr=0;
BYTE glIDDSDR=0;
BYTE glIDDPos=0;
BYTE glIDDAddr=0;
BYTE glFDDPos=0;
BYTE glFDDSDR=0;
BYTE glFDDAddr=0;
BYTE glIDDSDRCnt=0;
BYTE glFDDSDRCnt=0;
BYTE glCom_TxEn=0;
BYTE glSDR_OK=0;
BYTE glIDDProcess = 0;
BYTE glNextRaw =0;
BYTE PreTCMSErr=0;
BYTE glVer[10];
BYTE glSpotClose=0;
BYTE glTurnOff_Flag =0;			//2003-12-02 9:57오전
BYTE glTurnOff_Flag1=0;			//2003-12-04 1:28오후
BYTE glTurnOff_Flag_Cmp =0;			//2003-12-02 9:57오전
BYTE glRoot_Flag=0;
BYTE glInner_Flag=0;
BYTE glService_Flag=0;
BYTE glNo_Flag=0;				//2003-12-04 10:35오전
BYTE glNogp_Flag=0;				//2003-12-04 10:35오전
BYTE glRN_Flag=0;
BYTE glSdr_Flag =0;				//2003-12-05 8:00오후
BYTE glIDD_Flag=0,glFDD_Flag=0; //03-12-16 11:41오전
BYTE glChange_Flag=0; //03-12-16 11:47오전
BYTE glFIRE=0,PreFire=0; //03-12-18 5:00오후

int glTurnOff_Cnt=TURNOFFTIME;

/////////////////////////////////////////////////////// 인천 지하철 
BYTE CTIDDAddr_Buf[24]={	0x11,0x21,0x31,0x41,0x51,0x01,
               			0x12,0x22,0x32,0x42,0x52,0x02,
                     		0x13,0x23,0x33,0x43,0x53,0x03,
                     		0x14,0x24,0x34,0x44,0x54,0x04};
BYTE CTFDDAddr_Buf[28]={        0x15,0x25,0x35,0x45,0x55,0x05,
                     		0x16,0x26,0x36,0x46,0x56,0x06,
                     		0x17,0x27,0x37,0x47,0x57,0x07,
                     		0x18,0x28,0x38,0x48,0x58,0x08,
                     		0x1F,0x0F,0x1D,0x0D};
BYTE ETIDDAddr_Buf[12]={	0x11,0x21,0x31,0x41,0x51,0x01,
                     		0x12,0x22,0x32,0x42,0x52,0x02};
                     		
BYTE ETFDDAddr_Buf[16]={      	0x1A,0x2A,0x3A,0x4A,0x5A,0x0A,
		          	0x1B,0x2B,0x3B,0x4B,0x5B,0x0B,
                     		0x1F,0x0F,0x1D,0x0D};
                     		
/////////////////////////////////////////////////////// 대구 지하철 
BYTE DAEGUIDDAddr_Buf[12]={	0x11,0x21,0x31,0x41,0x51,0x01,
                     		0x12,0x22,0x32,0x42,0x52,0x02};
                     		
BYTE DAEGUFDDAddr_Buf[6]= {    	0x3A,0x3B,0x1F,0x0F,0x1D,0x0D};                        		



/******************************************************
/****************** 그외 함수 내용   ******************
/******************************************************
/*****************************************************/
/*	입력 검지후 시간 설정 확인 		     */	
/*	사용예 ) ONTD(III,&OOO,30,&cint10);	     */
/*      7.32uS/9.08uS  
/*	-> 중간에 인터럽트(8.0uS) 입력시 19.90uS
/*****************************************************/

void ONTD(BYTE IN,BYTE *OUT,BYTE MS,int *CLK )
{
	BYTE CE;
	
	if(!IN){*CLK = 0; *OUT = 0;}		
	CE = NOT(*OUT) && IN;	
	if(CE)
	{
		if(MS == *CLK) {*OUT = 1;}
		else *CLK = *CLK+1;
	}
}


/******************************************************
	Name  : Hex2ASCIIW(unsigned int nInput, BYTE *pOutput)
	Input : BCD 4digit Train No
	Output: pOutput (Buffer)
	Description:

	열차 번호를 얻기 위한 작업 (Ascii 코드로 인식)
	(0x1234 -> 0x31,0x32,0x33,0x34)
*******************************************************/

BYTE Hex2ASCIIW(unsigned int nInput, BYTE *pOutput)
{
	pOutput[0] = 0x30;
	pOutput[1] = ((nInput>>12)&0xf)%10 +0x30; 
	pOutput[2] = ((nInput>>8 )&0xf)%10 +0x30;
	pOutput[3] = ((nInput>>4 )&0xf)%10 +0x30;
	pOutput[4] = (nInput&0xf)%10 +0x30;
}

/********************************************************
	Name  :	Scroll_Station_Name
	Input : pSData(Source Data Buf)
	Output: pDData(Destination Data Buf)
*********************************************************/

unsigned int Scroll_Station_Name(BYTE *pSData,BYTE *pDData)
{
	int i=0,k,j=0;
	int Space_Flag =0;

	if(pSData[j]==0x20)
	{
		for(j=1;j<20;j++) if(pSData[j]!=0x20) break;
	}
	if(pSData[j]!=0x20)
	{
		for(k=j;k<20;k++)
		{
			if(!pSData[k]) break;
			else if(Space_Flag)
			{
				if(pSData[k]!=0x20) {pDData[i++]=pSData[k]; Space_Flag =0;}
			}	
			else if(pSData[k]==0x20)
			{
				pDData[i++]=pSData[k];
				Space_Flag =1;
			}
			else pDData[i++]=pSData[k];
		}	
	}		
	return i;	
}			

/********************************************************
	Name  :	Insert_SpecialCode
	Input : pSData(Source Data Buf)
	Output: pDData(Destination Data Buf)
	IM 표출문에 현재역 및 해당되는 역을 삽입한다. (수정본)

*********************************************************/

unsigned int Insert_SpecialCodeNew(BYTE *pSData,BYTE *pDData)
{
	int i,j,m=0,l=0;
	int nLen=0;
	int DestOffst=0;
	
	BYTE nTemp[20];
	BYTE Scroll_Left=0;	

//////////////////////////////////////////////////////////////////////////////////
	
	if(pSData[9]==01) Scroll_Left=1;					// Scroll Left
	
	for(i=0;i<14;i++) pDData[DestOffst++]= pSData[i];			// Header Update	
	for(i=14;i<500;i++)
	{
		if(pSData[i]== 0x40)						//(BYTE *)'@')
		{	
			if(!strncmp(&pSData[i+1],"[NextSta]",9))
			{
				if(Scroll_Left)
				{
					j=Scroll_Station_Name(glNNextBuf,nTemp);
					memcpy(&pDData[DestOffst],nTemp,j);i+=9; DestOffst+=j;
				}
				else 	
				{
					for(j=0;j<15;j++){if(!glNNextBuf[j]){m=1; break;}}
					if(m){memcpy(&pDData[DestOffst],glNNextBuf,j);i+=9; DestOffst+=j;}
				}	
			}	
			else if(!strncmp(&pSData[i+1],"[A)NextSta]",11))
			{
				if(Scroll_Left)
				{
					j=Scroll_Station_Name(&glNNextBuf[15],nTemp);
					memcpy(&pDData[DestOffst],nTemp,j);i+=11;DestOffst+=j;
				}
				else 
				{	for(j=0;j<30;j++){if(!glNNextBuf[15+j]){m=1; break;}}
					if(m){memcpy(&pDData[DestOffst],&glNNextBuf[15],j);i+=11;DestOffst+=j;}
				}	
			}	
			else if(!strncmp(&pSData[i+1],"[DestSta]",9))
			{
				if(Scroll_Left)
				{
					j=Scroll_Station_Name(glDestBuf,nTemp);
					memcpy(&pDData[DestOffst],nTemp,j);i+=9;DestOffst+=j;
				}
				else 
				{
					for(j=0;j<15;j++){if(!glDestBuf[j]){m=1; break;}}
					if(m){memcpy(&pDData[DestOffst],glDestBuf,j);i+=9;DestOffst+=j;}
				}			
			}	
			else if(!strncmp(&pSData[i+1],"[A)DestSta]",11))
			{
				if(Scroll_Left)
				{
					j=Scroll_Station_Name(&glDestBuf[15],nTemp);
					memcpy(&pDData[DestOffst],nTemp,j);i+=11;DestOffst+=j;
				}
				else
				{
					for(j=0;j<30;j++){if(!glDestBuf[15+j]){m=1; break;}}
					if(m){memcpy(&pDData[DestOffst],&glDestBuf[15],j);i+=11;DestOffst+=j;}
				}		
			}
			else if(!strncmp(&pSData[i+1],"[NowSta]",8))
			{
				if(Scroll_Left)
				{
					j=Scroll_Station_Name(glNowBuf,nTemp);
					memcpy(&pDData[DestOffst],nTemp,j);i+=8;DestOffst+=j;
				}
				else 
				{
					for(j=0;j<15;j++){if(!glNowBuf[j]){m=1; break;}}
					if(m){memcpy(&pDData[DestOffst],glNowBuf,j);i+=8;DestOffst+=j;}
				}			
			}	
			else if(!strncmp(&pSData[i+1],"[H)Arrow]",9))
			{
				if(glComDoor == 0x01) 	   {memcpy(&pDData[DestOffst],(BYTE *)"오른쪽",6);i+=9;DestOffst+=6;}
				else if(glComDoor == 0x02) {memcpy(&pDData[DestOffst],(BYTE *)"왼  쪽",6);i+=9;DestOffst+=6;}
			}	
			else if(!strncmp(&pSData[i+1],"[A)Arrow]",9))
			{
				if(glComDoor == 0x01) 	   {memcpy(&pDData[DestOffst],(BYTE *)"Right",5);i+=9;DestOffst+=5;}
				else if(glComDoor == 0x02) {memcpy(&pDData[DestOffst],(BYTE *)" Left",5);i+=9;DestOffst+=5;}
			}	
			else if(!strncmp(&pSData[i+1],"[Arrow]",7))
			{
				if(glComDoor == 0x01) 	   {memcpy(&pDData[DestOffst],(BYTE *)"@[R)Arrow]",10);i+=7;DestOffst+=10;}
				else if(glComDoor == 0x02) {memcpy(&pDData[DestOffst],(BYTE *)"@[L)Arrow]",10);i+=7;DestOffst+=10;}
			}	
			else pDData[DestOffst++] = pSData[i];
		} // if end 	
		else if(pSData[i]== 0x1B)						//(BYTE *)'1B')
		{
			pDData[DestOffst++]= pSData[i++];				
			pDData[DestOffst++]= pSData[i++];					
			pDData[DestOffst++]= pSData[i];				
		}
		else if(!pSData[i]) break;
		else pDData[DestOffst++]= pSData[i];				
	}	
	return DestOffst;
}

/********************************************************
	표출 스케쥴 확인 

	1) 거리 데이터에 따른 갯수를 찾는다. 
	2) 순차적으로 전송하며 플래그를 기록한다. 
	3) 문이 열림시 데이터 클리어 한다. 
*********************************************************/

void GpInsert(BYTE *pSData,BYTE *pDData,unsigned int nLen)
{
	int i,j,m=0;
	int DestOffst=0;
	
	for(i=0;i<32;i++) pDData[i] = 0x00;
	for(i=14;i<nLen;i++)
	{
		if(pSData[i]==0x1B) m=2;						//(BYTE *)''ESC')//수정 데이터
		else if(pSData[i]==0x40)						//(BYTE *)'@') //기존 데이터 
		{	
			if((pSData[i+1]==(BYTE)'R')||(pSData[i+1]==(BYTE)'G')||(pSData[i+1]==(BYTE)'U')) m=1;
			else if(!strncmp(&pSData[i+1],"[R)Arrow]",9))
			{
				memcpy(&pDData[DestOffst],(BYTE *)"오른쪽",6);DestOffst+=6; m=9;
			}	
			else if(!strncmp(&pSData[i+1],"[L)Arrow]",9))
			{
				memcpy(&pDData[DestOffst],(BYTE *)"왼쪽",4);DestOffst+=4; m=9;
			}	
			else if((pSData[i+1]==(BYTE)'B')||(pSData[i+1]==(BYTE)'L')||(pSData[i+1]==(BYTE)'P')) m=2;
			else if((pSData[i+1]==(BYTE)'Z')||(pSData[i+1]==(BYTE)'[')||(pSData[i+1]==(BYTE)'T')||(pSData[i+1]==(BYTE)'S')) m=3;
			
			else {m=0; pDData[DestOffst++]= pSData[i];}
		}	
		else if(pSData[i]==0x20) m=0;
		else {m=0; pDData[DestOffst++] = pSData[i];}
		i+=m;
	}	
}

/********************************************************
*********************************************************/

void Seek_IMPR()
{
	Find_StationInfoGp();						// 역정보 검색 
   	//glDisplayIndex_Cnt = Find_Display_Schedule(glComNow,glComNext,glInfo);	
	glDisplayIndex_Cnt = NVSRAM_Display_Schedule(glComNow,glComNext,glInfo);// 표출 문안의 갯수 
	
	glChkDistance = 0;
	glIndex = 0;							// 표출 Index 카운터 클리어 
	glIndexCnt = Find_Schedule_Cnt(IndexBuf,glDisplayIndex_Cnt,0,0);
	
	glComDoor = glDoorDir; 
}	

/*****************************************************/
/*	역정보 업데이트 (지점보정 확인버튼)	     */		     
/*****************************************************/

void Station_Update()
{
	glComNow = glStationList[glStationP];		 		//현재역 코드 Update
	glComNext = glStationList[glStationP+1];			//다음역 코드 Update
	
	memcpy(glNowBuf,TrainNumber[glStationP].KorName,15);   		 //현재역
	memcpy(glNNextBuf,TrainNumber[glStationP+1].KorName,15);	 //다음역
	memcpy(&glNowBuf[15],TrainNumber[glStationP].EngName,30);    //현재역
	memcpy(&glNNextBuf[15],TrainNumber[glStationP+1].EngName,30);//다음역

				   
	PreNow = glComNow;
	PreNext = glComNext;
			   
	Seek_IMPR();		   
	if(!glDOOR && !glTestService) 
	{
		glStateNo_Flag=1; glStateNo=1; glSpotClose=1;	

	 	NVSRAM_Find_IM(91,glSourBuf);
		glTextMLen = Insert_SpecialCodeNew(glSourBuf,glIDDMBuf)+3;	//2003-12-08 6:37오후
		glManuComFlag =1;
	}			   
}

/******************************************************
	열번을 확인하여 정차패턴을 구한다. 
*******************************************************/

void TrainNo_Check()
{
	int i;

	//glStopNo = Comp_TrainNo(glTrainBuf);				// 정차패턴얻기
	glStopNo = NVSRAM_Comp_TrainNo(glTrainBuf);			// 정차패턴얻기
	glStateNo =1;
	glDisplayIndex_Cnt=0;
	
	if(!glStopNo) 
	{
//		gpSETERR; 
		
		glComNow=0; glComNext=0; glComDest=0; glComStart=0; glRootP=0xff;
		
		memset(glDestBuf,0,45);
		memset(glNowBuf,0,45);
		memset(glNNextBuf,0,45);
		memset(glGpNow,0,45);
		memset(glGpNext,0,45);
		memset(glGpDest,0,45);
		glFSNDD_Flag=SCC2B_CNT;						//행선, 열번 	//2003-12-06 10:26오전
	}
	else 
	{
		//gpSETCLR; 
		//glMax_StationNo = Comp_StopPattern(glStopNo,glStationList); 
		//Rd_StationName(glMax_StationNo,glStationList);
		glMax_StationNo = NVSRAM_Comp_StopP(glStopNo,glStationList); 	
		NVSRAM_Rd_StationName(glMax_StationNo,glStationList);
				
		glStationP = 0;

		glComNow = glStationList[glStationP];
		glComNext = glStationList[glStationP+1];
		glComDest = glStationList[glMax_StationNo-1];			// 행선역 Update
		glComStart = glComNow;
		
		memcpy(glNowBuf,TrainNumber[glStationP].KorName,15);
		memcpy(glNNextBuf,TrainNumber[glStationP+1].KorName,15);
		memcpy(glDestBuf,TrainNumber[glMax_StationNo-1].KorName,15);
		
		memcpy(&glNowBuf[15],TrainNumber[glStationP].EngName,30);   	//현재역
		memcpy(&glNNextBuf[15],TrainNumber[glStationP+1].EngName,30);	//다음역
		memcpy(&glDestBuf[15],TrainNumber[glMax_StationNo-1].EngName,30);
		
		
		for(i=0;i<glTotalRoot;i++){glRootP = 0xff; if(glRootList[i]==glComDest){glRootP=i; break;}}
						
		Seek_IMPR();
	
		PreNow  = glComNow;
		PreNext = glComNext;
		PreDest = glComDest;
		
		glFSNDD_Flag=SCC2B_CNT;							// 행선, 열번 2003-12-06 10:30오전
	}
//	gp_WritingStr(0x96,6,glGpDest);						// 행선 표출
//	gpKEYEN;
	
	glNo_Flag =1;										//2003-12-04 10:07오전
	glNogp_Flag =1;
}

/********************************************************
	Name 	: SCC_A1_Tx()
	Purpose : TCMS(주) <-> PIS (종)
*********************************************************/
void SCC_A1_Tx()
{
	if(glTxA1_Flag)
	{
		SCC1A_RTS_ON;					
		SCC1_A_C = 0x01; SCC1_A_C = 0x12; // TX 인터럽트 가능 
		glScc1a_cnt = 8;//7; 03-12-22 6:09오후
	} 
} 

/********************************************************
	Name 	: SCC_A1_Rx()
	Purpose : TCMS(주) <-> PIS (종)
*********************************************************/

void SCC_A1_Rx()							// From TCMS
{
	BYTE nCmd; 
	if(glRxA1_Flag)
	{
		SCC1_A_C = 0x01;
		nCmd = SCC1_A_C & 0xc0;					// crc error read	

		if(nCmd == 0x80)
		{
			glScc1a_Delaycnt = 5;				//10mSec //03-12-22 5:50오후 (50m->5m로 수정)
			glTCMSCnt = 0; 
			glTCMSErr = 0;						//2003-12-04 12:35오후
			glA1CRC_Err=1;
		}
		else glA1CRC_Err=2;
		glRxA1_Flag=0;						// 2003-10-11			
	}
}

/********************************************************
	Name 	: SCC_A2_Tx()
	Purpose : PIS <-> IDD (차내표시기)
*********************************************************/

void SCC_A2_Tx()
{
	int i;
	BYTE Data=0,Data1=0;
	
	Data1= glIDDSDR && glIDD_Flag;
	Data = glRoot_Flag||glInner_Flag;	//2003-12-04 10:11오전
	Data|= glService_Flag;				//2003-12-04 10:11오전
	Data|= glTestService;				//2003-12-04 10:11오전
	Data|= Data1 ;						//2003-12-04 10:11오전

	if(glTxA2_Flag && !glIDDProcess && (glCom_TxEn || (glRxA1_Back[4]==0x30 && Data)) && (glInternalFlag||glIDDPattern||glStateNo||glIDDSDR||glManuComFlag||glFireFlag))
	{
		DINT;
		SCC2A_RTS_ON;					     		// RTS ON Command
		EINT;
		
		if(glStateNo)
		{	
			glTxA2_Len = 20;		     			// STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2)
			Tx_Header_Protocol(10,IDD,PIS_Addr,0x1A,glTxBufA2); 	//고정 
			Tx_Text_MODE2(&glTxBufA2[10]);	  	    		//차내 무표시 고정 
			
			memset(glGpBuf1,0x00,32);
			glStateNo=0;
		}
		else if(glIDDPattern)
		{	
			glTxA2_Len = 20;		     			// STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2)			
			if(glTestInnerCar)Tx_Header_Protocol(10,IDD,PIS_Addr,0x0B,glTxBufA2); // IDD 변경 가능 
			else Tx_Header_Protocol(10,IDD,PIS_Addr,0x1B,glTxBufA2);// IDD 변경 가능 
			Tx_Text_MODE6(&glTxBufA2[10]);			 	// 패턴 테스트 설정

			glIDDPattern =0;	
		}	
		else if(glInternalFlag)						//2003-12-08 1:23오후
		{
			glTxA2_Len = glTextLen + 10;		     		// STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2)
			Tx_Header_Protocol(glTextLen,IDD,PIS_Addr,0x0a,glTxBufA2); //차내 안내문 표출 
			for(i=0;i<glTextLen-3;i++) glTxBufA2[i+10] = glIDDBuf[i];	
			
			glInternalFlag =0;					// 차내 표시기 통신 가능 
			//glIndex++; 						// 표시 스케쥴 카운터 증가
			glIDDProcess = 1;					// tx 진행중
		}
		else if(glManuComFlag)						//2003-12-08 1:22오후
		{
			//glInternalFlag =0;						//2003-12-08 1:24오후
			
			glTextLen = glTextMLen;					//2003-12-08 8:05오후
			glTxA2_Len = glTextLen + 10;		    // STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2) //2003-12-08 6:41오후
			Tx_Header_Protocol(glTextLen,IDD,PIS_Addr,0x0a,glTxBufA2); //차내 안내문 표출 
			for(i=0;i<glTextLen-3;i++) glTxBufA2[i+10] = glIDDMBuf[i];	//2003-12-08 6:38오후
			
			glManuComFlag=0;			
		}	
		else if(glFireFlag)						//03-12-18 4:47오후 (화재발생시)
		{
			glTextLen = glTextFLen;					//2003-12-08 8:05오후
			glTxA2_Len = glTextLen + 10;		    // STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2) //2003-12-08 6:41오후
			Tx_Header_Protocol(glTextLen,IDD,PIS_Addr,0x0a,glTxBufA2); //차내 안내문 표출 
			for(i=0;i<glTextLen-3;i++) glTxBufA2[i+10] = glIDDFBuf[i];	//2003-12-08 6:38오후
			
			glFireFlag=0;			
		}			

		else if(glIDDSDR)						// 03-09-06 4:23오후 (대구설정기)
		{
			glTxA2_Len = 20;
			for(i=glIDDPos;i<12;i++) 
			{ 
				if(glSDR_Buf[i]) {glIDDPos=i; break;}
				else glIDDPos++;
			}	
			glIDDAddr = DAEGUIDDAddr_Buf[glIDDPos++];			

			if(glIDDPos >= 12) 
			{
				glIDDPos = 0; glIDDSDRCnt++;
				if(glIDDSDRCnt>=3) {glIDDSDR =0; glIDD_Flag=0;} //03-12-16 11:41오전
				if(!glIDDSDR && !glFDDSDR) 
				{
					
					glSDR_OK=1;
				}	
			}	
			Tx_Header_Protocol(10,glIDDAddr,PIS_Addr,0x07,glTxBufA2);// LDD 고정
			Tx_SDR_MODE(&glTxBufA2[10],glSDR_Command);		// SDR Text
		}

		glTxBufA2[glTxA2_Len-3] = 0x03;
		glCRC_A2 = cal_CRC16(glTxA2_Len-5,&glTxBufA2[3]);
		glTxBufA2[glTxA2_Len-2] = (glCRC_A2>>8)&0xff;
		glTxBufA2[glTxA2_Len-1] = glCRC_A2&0xff;	
		glTxA2_Flag =0; 			
		glTxPA2 = 1;
		SCC2_A_D = glTxBufA2[0] & 0xff;
		
		glRoot_Flag =0; glService_Flag=0; glInner_Flag =0;
	}	
	
	else if(!(glCom_TxEn||(glRxA1_Back[4]==0x30 && Data)))		// 03-09-15 11:33오전 (31h//33h//30h*service))
	{
		if(glInternalFlag){glInternalFlag =0; glIndex++;}		// 2003-12-09 9:21오전
		//glInternalFlag =0; 										// 2003-12-09 9:22오전
		glIDDPattern =0; glStateNo =0;
		glIDDSDR =0;glManuComFlag =0; glTxA2_Flag =1; 
		glIDD_Flag=0; //03-12-16 11:41오전
		glFireFlag=0; //03-12-18 4:48오후
		glRoot_Flag =0; glService_Flag=0; glInner_Flag =0;
	}
}

/********************************************************
	통신 채널 전송 및 수신 (SCCB2 채널)
*********************************************************/

void SCC_B2_Tx()
{
	int i;
	BYTE Data=0,Data1=0;
	
	Data1= glFDDSDR && glFDD_Flag;			//03-12-16 11:38오전
	
	Data = glRoot_Flag||glInner_Flag;		//2003-12-04 10:12오전
	Data|= glService_Flag;					//2003-12-04 10:12오전
	Data|= glTestService;					//2003-12-04 10:12오전
	Data|= glNo_Flag;						//2003-12-04 10:12오전
	Data|= glRN_Flag;						//2003-12-04 10:12오전
	Data|= Data1;							//2003-12-04 10:11오전
	glLDDDistance =0;						//2003-12-06 10:22오전

	if(glTxB2_Flag && (glCom_TxEn || (glRxA1_Back[4]==0x30 && Data)) && (glLDDPattern||glFSNDD_Flag||glFDDSDR||glLDDDistance))
	{
		DINT;
		SCC2B_RTS_ON;					
		EINT;
		
		glTxB2_Len = 10 + 10;						// STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2)

		if(glFSNDD_Flag)
		{
			Tx_Header_Protocol(10,FSNDD,PIS_Addr,0x1C,glTxBufB2); 	// FDD 변경 가능
			Tx_Text_MODE1(&glTxBufB2[10],glComDest,glComTrainNo);	// 행선, 열번 현시 데이터 
			
			if(glFSNDD_Flag) glFSNDD_Flag--; 	//2003-12-06 10:26오전
		}
		else if(glLDDPattern)
		{	
			if(glTestRoot)Tx_Header_Protocol(10,FSNDD,PIS_Addr,0x0B,glTxBufB2); // FDD 변경 가능
			else Tx_Header_Protocol(10,FSNDD,PIS_Addr,0x1B,glTxBufB2); // FDD 변경 가능

			Tx_Text_MODE6(&glTxBufB2[10]);			    	// 패턴 테스트 설정
			glLDDPattern =0;	
		}	
		else if(glLDDDistance)	
		{
			Tx_Header_Protocol(10,LDD,PIS_Addr,0x28,glTxBufB2); 	// LDD 고정
			Tx_Text_MODE8(&glTxBufB2[10],glComNow,glComNext,glComDest,glComStart,glDistance); // 거리 위치 데이터
			glLDDDistance=0;
		}	
		else if(glFDDSDR)						// 03-09-08 7:29오후
		{
			for(i=glFDDPos;i<6;i++) 
			{ 
				if(glSDR_Buf[i+12]) {glFDDPos=i; break;}
				else glFDDPos++;
			}
			glFDDAddr = DAEGUFDDAddr_Buf[glFDDPos++];			

			if(glFDDPos >= 6) 
			{
				glFDDPos = 0; glFDDSDRCnt++;
				if(glFDDSDRCnt>=3){glFDDSDR =0;glFDD_Flag=0;}//03-12-16 11:41오전
				if(!glIDDSDR && !glFDDSDR) 
				{
					
					glSDR_OK=1;
				}
			}	
		
			Tx_Header_Protocol(10,glFDDAddr,PIS_Addr,0x07,glTxBufB2);// LDD 고정
			Tx_SDR_MODE(&glTxBufB2[10],glSDR_Command);		   // SDR Text
		}
		
		glTxBufB2[glTxB2_Len-3] = ETX;	
		
		glCRC_B2 = cal_CRC16(glTxB2_Len-5,&glTxBufB2[3]);
		glTxBufB2[glTxB2_Len-2] = (glCRC_B2>>8)&0xff;
		glTxBufB2[glTxB2_Len-1] = glCRC_B2&0xff;			
	
		glTxPB2 = 1;
		glTxB2_Flag =0; 
		SCC2_B_D = glTxBufB2[0] & 0xff;
		
		glRoot_Flag =0; glService_Flag=0; glInner_Flag =0; glNo_Flag=0; glRN_Flag=0; //2003-12-04 10:27오전
	}
	
	else if(!(glCom_TxEn||(glRxA1_Back[4]==0x30 && Data)))		// 03-09-15 11:33오전 (31h//33h//30h*service))
	{
		glFSNDD_Flag=0; glLDDPattern =0; glLDDDistance=0; glFDDSDR =0;
		glTxB2_Flag =1; glFDD_Flag=0;//03-12-16 11:41오전
		
		glRoot_Flag =0; glService_Flag=0; glInner_Flag =0;glNo_Flag=0; glRN_Flag=0; //2003-12-04 10:27오전
	}	
} 

/********************************************************
	통신 채널 전송 및 수신 (SCC2 채널)
*********************************************************/

void SCC_A2_Rx()
{
	int i; 
	if(glRxA2_Flag)					
	{
		glRtnCRC_A2 = cal_CRC16(glRxA2_Len-5,&glRxBufA2[3]); 		// CRC Output
		
		if((glRxBufA2[glRxA2_Len-2]==(glRtnCRC_A2>>8))&&(glRxBufA2[glRxA2_Len-1]==(glRtnCRC_A2 & 0xff)))
		{
			memcpy(glRxA2_Back,glRxBufA2,glRxA2_Len);	

			for(i=0;i<12;i++) if(glRxA2_Back[8]==DAEGUIDDAddr_Buf[i]) break; // 03-09-06 4:24오후 (대구설정기)
			glSDR_Buf[i] = glRxA2_Back[11];	
		}
		glRxA2_Flag=0;			
	}
}

/********************************************************
	통신 채널 수신 (SCCB2 채널)
*********************************************************/

void SCC_B2_Rx()
{
	int i; 
	if(glRxB2_Flag)
	{
		glRtnCRC_B2 = cal_CRC16(glRxB2_Len-5,&glRxBufB2[3]); 	
		
		if((glRxBufB2[glRxB2_Len-2]==(glRtnCRC_B2>>8))&&(glRxBufB2[glRxB2_Len-1]==(glRtnCRC_B2 & 0xff)))
		{
			memcpy(glRxB2_Back,glRxBufB2,glRxB2_Len);
			
			for(i=0;i<6;i++) if(glRxB2_Back[8]==DAEGUFDDAddr_Buf[i]) break; //// 03-09-06 4:25오후 (대구설정기)
			glSDR_Buf[i+12] = glRxB2_Back[11];
		}
		glRxB2_Flag=0;			
	}
}

/************************************************************/
/*	Read Data From TCMS (From TCMS)
/************************************************************/

void Find_StationInfo()
{
	int Start=0,Mid=0,End=0;

	if(glComNext && glComNow && glComDest)		// 역코드가 '0'이 아닌 경우 
	{	
		if(PreTrainNo != glComTrainNo) Start=1; // 시발역 코드 		
		else Start = 0;
		if(glComNext == glComDest) End = 1;	// 종착역 코드 	
		else End =0;
	
		if(Start&&End) 		glInfo =4;	// 시발-종착
		else if(Start && !End) 	glInfo =1;	// 시발-중간
		else if(!Start && End) 	glInfo =3;	// 중간-종착
		else if(!Start && !End) glInfo =2;	// 중간-중간 
	}	
	else glInfo = 0;
}

void Find_StationInfoGp()
{
	int Start=0,Mid=0,End=0;

	if(glComNext && glComNow && glComDest)		// 역코드가 '0'이 아닌 경우 
	{	
		if(glComStart==glComNow) Start=1;       // 시발역 코드 		
		else Start = 0;
		if(glComNext==glComDest)End = 1;	// 종착역 코드 	
		else End =0;
	
		if(Start&&End) 		glInfo =4;	// 시발-종착
		else if(Start && !End) 	glInfo =1;	// 시발-중간
		else if(!Start && End) 	glInfo =3;	// 중간-종착
		else if(!Start && !End) glInfo =2;	// 중간-중간 
	}	
	else glInfo = 0;
}

/************************************************************/
/*	Read Data From TCMS (From TCMS)
/*      
/************************************************************/

void RD_FROM_SETKEY()									// TCMS로 부터 정확한 데이터 값을 수신한 경우 				
{
	int i;
	
	
	if(((glNextRaw != glRxA1_Back[6])||(PreTrainNo != glComTrainNo)) && (glRxA1_Back[5]!=glRxA1_Back[6]) && glDOOR)	// 현재역 != 다음역인경우 
	{

		glComNow  = MatchCode[glRxA1_Back[5]];			// 현재역 03-12-17 2:05오후 2003-12-23 5:35오후
		glComNext = MatchCode[glRxA1_Back[6]];			// 다음역 03-12-17 2:05오후 2003-12-23 5:35오후
//		glComDest = glRxA1_Back[7];						// 행선역 03-12-17 2:05오후	
		glComDoor = glRxA1_Back[8]&0x3;					// 출입문 방향 	
//		glComTrainNo =((glRxA1_Back[9]<<8)&0xff00)|glRxA1_Back[10];		// 열번 설정 
	
		Rd_StationName_CodeNew(glComNow,glNowBuf,glGpNow); 				// 현재역 이름 저장 (한글, 영문, GP )
		Rd_StationName_CodeNew(glComNext,glNNextBuf,glGpNext);			// 다음역 이름 저장 (한글, 영문, GP )
		Rd_StationName_CodeNew(glComDest,glDestBuf,glGpDest); 			// 행선역 이름 저장 (한글, 영문, GP )
		
		if(PreTrainNo != glComTrainNo)					// 열번이 바뀐경우 
		{		
			glComStart = glComNow; 						// 시발역 코드 인식 
			glMax_StationNo = NVSRAM_Get_StopP(glComStart,glComDest,glStationList);
			if(glMax_StationNo) NVSRAM_Rd_StationName(glMax_StationNo,glStationList);
		}
				
		if(glStopNo)
		{
			for(i=0;i<glMax_StationNo;i++) if(glStationList[i]==glComNow){glStationP=i; break;} //현재역의 포인터		 
		}
		else glStationP =0;	
		for(i=0;i<glTotalRoot;i++) {glRootP = 0xff; if(glRootList[i]==glComDest) {glRootP=i; break;}}						
		
		glFSNDD_Flag=SCC2B_CNT;								// 열번,행선 전송
		glSpotChangeEn=0;									// 자동역증가 가능 플래그 클리어 

		Find_StationInfo(); 								// 역정보 갱신 		 											     	
		glDisplayIndex_Cnt = NVSRAM_Display_Schedule(glComNow,glComNext,glInfo);// 표출 문안의 갯수 
		
		glIndex = 0;														// 표출 Index 카운터 클리어 
		glChkDistance = 0;
		glIndexCnt = Find_Schedule_Cnt(IndexBuf,glDisplayIndex_Cnt,0,0);
	}
	
	glNextRaw = glRxA1_Back[6];										// TCMS 입력받은 다음역 (이전값)
	
	if(glRxA1_Back[4]&0xff==0x30){}
	else {PreTrainNo = glComTrainNo;}
	
	PreNow = glComNow;
	PreNext = glComNext;
}

/********************************************************
	CPU의 초기화 함수
*********************************************************/
void DSP_Init(void)
{
	/* primary bus control reg. */
	STRB0_CTRL = 0x000f0468;	/* Bank=1M, Wait=1, SWW=3 wait by software */
	STRB1_CTRL = 0x000f0468;	/* Bank=1M, Wait=0, SWW=0 wait by software */
	IOSTRB_CTRL = 0x000000e8;	/* Wait=2, SWW=11 wait by software */

	/* timer0 init */
	TMR0_CTRL = 0x02C0;		// General in port : TCLK0 
	TMR0_PERD = 1474560;		// 58.9824 MHz/4/14745.6 = 1Hz
	
	/* timer1 init */
	TMR1_CTRL = 0x02C0;		// General in port : TCLK1
	TMR1_PERD = 14745;		// 10ms

	/* Interrupt vector set */
	INT0_VECT = OP_BR |(int)c_int01 ; /* SCC Interrupt 0 */
	INT1_VECT = OP_BR |(int)c_int02 ; /* SCC Interrupt 1 */
	INT2_VECT = OP_BR |(int)c_int03 ; /* SCC Interrupt 2 */
	TIMER0_INT_VECT	 = OP_BR |(int)c_int09 ; /* Timer 0 */	
	TIMER1_INT_VECT	 = OP_BR |(int)c_int10 ; /* Timer 0 */	

	EDGE_INT;			/* LEVEL INTERRUPT */	
	
	/* Timer 1:b9, Timer 0:b8, serial port int:b5, EINT3:b3, EINT2:b2 ,EINT1:b1, EINT0:b0 */
	asm("	OR	307h,IE");
	*(int *)0x110000 = 0; 		// Boot SW => 인터럽트를 본래의 기능으로..
}


/**********************************************************************************************
	Main program
***********************************************************************************************/

void main(void)
{
	int i;
	
	DINT; 								// global interrupt disable 
	DSP_Init() ;
	Debug3xInit(TMS320C32);	

	SCC_Initial();	
	
	EINT; 								// global interrupt enable
	
	/*******************************/ //전채 역명을 얻어 온다
	glTotalRoot = NVSRAM_Find_RootAllNo(ROOT_BODY_MAX,glRootList);
	NVSRAM_Rd_StationName_Total(); 
	/*******************************/
	while(1)
	{		
		glDebugCnt++;
		
		if(Mode_Flag==4)	{TrainNo_Check(); Mode_Flag = 0;}
		
		if(glDoorAuto_Flag)
		{
			glTestDoorOpen=1; 
			//gpDOOROPEN; 
			glDoorAutoClose =1; 
			Auto_Station_Cnt(); 
			glDoorAuto_Flag=0;
		}			
		
	}
}

/********************************************************
 [자동역 증가 시퀜스] 
 통신 불가상태에서의 출입문 열림/시험조건에서의 도어 열림
*********************************************************/

void Auto_Station_Cnt()
{
	if(glSpotChangeEn && (glTCMSErr || !glTCMS_STATE))	// Between 지점 통과 
	{
		if(glStationP < glMax_StationNo-1) glStationP++;// 역 포인터 증가 
		if(glStationP == glMax_StationNo-1)		// 최종 Update 
		{
			glComNow = 0; 
			memset(glNNextBuf,0,45);		//종차역 도착시
			memset(TrainNumber[glStationP+1].KorName,0x00,15);
			memset(TrainNumber[glStationP+1].EngName,0x00,30);
			
			if(glTestAutoDoor && glTestService)
			{	
				glTestSpeed=0; glDistance=0;
			   	
			   	glTestDoorOpen =1; 		
			   	glTestService=0; glTestAutoDoor=0;
			}   	
		}
		else 
		{
			glComNext = glStationList[glStationP+1];//다음역 코드 Update
			memcpy(glNNextBuf,TrainNumber[glStationP+1].KorName,15);
			memcpy(&glNNextBuf[15],TrainNumber[glStationP+1].EngName,30);
		}	
		glComNow = glStationList[glStationP];		//현재역 코드 Update
		memcpy(glNowBuf,TrainNumber[glStationP].KorName,15);
		memcpy(&glNowBuf[15],TrainNumber[glStationP].EngName,30);

		
		if((PreNow != glComNow)||(PreNext != glComNext)||(PreDest!= glComDest)||(PreTrainNo != glComTrainNo))
		{		
			Seek_IMPR();					
		}
		PreNow = glComNow;
		PreNext = glComNext;
		glSpotChangeEn=0;
	}
}

/********************************************************
 [자동역 증가 시퀜스] 
 통신 불가상태에서의 출입문 열림/시험조건에서의 도어 열림
*********************************************************/

void Auto_Station_Cnt_00()
{
	if(glSpotChangeEn)
	{
		if(glStationP < glMax_StationNo-1) glStationP++;// 역 포인터 증가 
		if(glStationP == glMax_StationNo-1)				// 최종 Update 
		{
			glComNow = 0; 
			memset(glNNextBuf,0,45);					//종차역 도착시
			memset(TrainNumber[glStationP+1].KorName,0x00,15);
			memset(TrainNumber[glStationP+1].EngName,0x00,30);
		}
		else 
		{
			glComNext = glStationList[glStationP+1];	//다음역 코드 Update
			memcpy(glNNextBuf,TrainNumber[glStationP+1].KorName,15);
			memcpy(&glNNextBuf[15],TrainNumber[glStationP+1].EngName,30);
		}	
		glComNow = glStationList[glStationP];			//현재역 코드 Update
		memcpy(glNowBuf,TrainNumber[glStationP].KorName,15);
		memcpy(&glNowBuf[15],TrainNumber[glStationP].EngName,30);

		
		if((PreNow != glComNow)||(PreNext != glComNext)||(PreDest!= glComDest)||(PreTrainNo != glComTrainNo))
		{		
			Seek_IMPR();					
		}
		PreNow = glComNow;
		PreNext = glComNext;
		glSpotChangeEn=0;
	}
}

/********************************************************
	도어 데이터 시퀜스 
*********************************************************/

void Door_Sequence()
{
//	ONTD(~DICE&0x2,&glDOOR,1,&glDOOR200ms);					// DOOR 입력의 채터링을 방지 200mS지연
 	if(PreDoor^glDOOR && glDOOR) 						// 출입문 열림 시점 
	{
		if(glSpotClose){glStateNo_Flag=0; glStateNo=0; glSpotClose=0;};	// 무표시 확인 03-09-08 8:24오후
		
		glDisplayIndex_Cnt=0;						// 출입문 열렸을 때 이전 데이터 클리어를 위한 무표시 전송 
		if(!glIDDSDR && !glFDDSDR) 					// 상태 확인이 아닌 경우(차내, 열번, 행선, 노선)
		{
			memset(glSDR_Buf,0x01,18);  				// 표시기 상태 데이터 클리어 03-09-08 3:59오후
			glIDDSDR=1;glFDDSDR=1;    				// 표시기 상태 데이터 Flag Set, Counter초기화 
			glIDDSDRCnt=0; glFDDSDRCnt=0;				// 표시기 상태 데이터 요청 카운터 클리어 
		}	
		
		glComNow = glComNext;	 //03-12-17 2:24오후
		Rd_StationName_CodeNew(glComNow,glNowBuf,glGpNow); //03-12-17 2:25오후
	}	
	if(PreDoor^glDOOR && !glDOOR) 						
	{		
		if(!glFIRE) glStateNo=1;  					// 출입문 닫힘 시점 03-09-08 8:20오후 03-12-18 5:22오후
		if(glStationP == glMax_StationNo-1 &&(glTCMSErr || !glTCMS_STATE))
		{
			glComNow = 0; glComStart =0; glComDest =0; glComNext=0;
			memset(glNNextBuf,0,45);				//종차역 도착시
			memset(glNowBuf,0,45);
			memset(glDestBuf,0,45);
		}
	}	
	if(glDOOR && !glTestService) Auto_Station_Cnt();			// 모의 주행시는 모의 주행의 출입문 열림지령에 의해서만 역증가 
	PreDoor = glDOOR;
}

/******************************************************** 
	거리데이터 시퀜스  // 최대 속도 에서의 거리 확인 (100mS)                               
*********************************************************/

void Distance_Sequence()		
{
	ONTD(~DI_STATUS_RD& 0x1,&glPULSE,1,&glPULSE100ms);			// 거리 입력의 채터링을 방지 100mS지연   	
	if((PrePulse^glPULSE)&& glPULSE) glPULSE_Cnt++;				// 상승 에지에서 카운터 증가 	                
	PrePulse = glPULSE;			                                                                                

	if(glDOOR) glPULSE_Cnt=0; 				

   	if((glTestService || glTestRoot || glTestInnerCar)&&(glPULSE_Cnt||(!glTCMSErr&&glTCMS_STATE)))
	{
		glDistance = glPULSE_Cnt *25; 					// 실제 운행 거리 
		glTestSpeed =0; 
		glTestInnerCar=0;glTestService=0;glTestRoot=0; glTestDoorOpen =1;
		glLDDPattern =1; glIDDPattern =1;				// 차내, 노선, 행선, 열번 패턴 테스트
		glSpotChangeEn=0;
		
		glIndex = 0;									// 표출 Index 카운터 클리어 
		glChkDistance = 0;
		PreDistance = 0;
		glIndexCnt = Find_Schedule_Cnt(IndexBuf,glDisplayIndex_Cnt,0,0);
	}
	else if(glTestService && !glPULSE_Cnt)					// 모의 주행시험중인때,실제 거리펄스가 없는 경우
	{
		if(!(cint09%10) && !glTestDoorOpen)glDistance += (int)((float)glTestSpeed *10.0 /36.0 +0.5);
		if(glTestDoorOpen) glDistance = 0;
	}
	else glDistance = glPULSE_Cnt *25; 					// 실제 운행 거리 	

	/////////////////////////////////////////////////////////////////////////  통신 스케쥴 전송 
	
	if((glIndexCnt==glIndex)&&(PreDistance != glDistance)&& glDistance)	// 통신 전송 마무리 및 데이터 거리 변화시
	{
		glIndexCnt = Find_Schedule_Cnt(IndexBuf,glDisplayIndex_Cnt,glChkDistance,glDistance);
		glChkDistance = glDistance;
		glIndex = 0;				
	}
	PreDistance = glDistance;					
}

/********************************************************
	Display_Check()
*********************************************************/

void Send_IDD_Check()
{
	int nTemp;
	
	if((glIndex < glIndexCnt) && !glIDDProcess)				// glIndex는 Tx 통신 루틴이 시작된 경우 
	{
		nTemp = IndexBuf[glIndex];
		
		if(DisplayIndex[nTemp].Type==3) {glSpotChangeEn=1; memset(glGpBuf1,0x00,32); glIndex++;}
		else if(DisplayIndex[nTemp].Type==1)
		{
			if(glStateNo_Flag)
			{
				glIndex++;							// 03-07-26 11:39오전
				memset(glGpBuf1,0x00,32);
			}	
			else 
			{
				//Find_NewIM(DisplayIndex[nTemp].Number,glSourBuf);
				NVSRAM_Find_IM(DisplayIndex[nTemp].Number,glSourBuf);
				glTextLen = Insert_SpecialCodeNew(glSourBuf,glIDDBuf)+3;	// Addr + PIS Addr + Code;(3)
				
				GpInsert(glIDDBuf,glGpBuf1,glTextLen-3); 
				glInternalFlag=1;	
			}	
		}		
		else if(DisplayIndex[nTemp].Type==4)
		{
			if(glStateNo_Flag)
			{
				glIndex++;								// 03-07-26 11:39오전
				memset(glGpBuf1,0x00,32);
			}	
			else 
			{
				//Find_NewPR(DisplayIndex[nTemp].Number,glSourBuf);
				NVSRAM_Find_PR(DisplayIndex[nTemp].Number,glSourBuf);
				
				glTextLen = Insert_SpecialCodeNew(glSourBuf,glIDDBuf)+3;
				GpInsert(glIDDBuf,glGpBuf1,glTextLen-3); 
			 	glInternalFlag=1;						// 03-07-26 11:39오전
			 }	
		}	
	}	
}

/********************************************************
	Name 	: DOOR_AUTO()
	Purpose : 출입문 자동개폐 - 시험 화면
*********************************************************/

void DOOR_AUTO()
{
	if(glTestAutoDoor && glTestService)
	{
		ONTD(glSpotChangeEn,&glTestAutoDoor_Out,10,&glTestAuto5S_Cnt);			// 100mS * 10 = 1Sec
		ONTD(glDoorAutoClose,&glDoorAutoClose_Out,15,&glTestAuto5S_Cnt2);		// 100mS * 15 = 1.5Sec
		
		if(!glSpotChangeEn && !glDistance) glDoorAutoClose =1;					// 2003-12-04 12:30오후
		else glDoorAutoClose =0;												// 2003-12-04 12:41오후
		if(glTestAutoDoor_Out^PreAutoDoor && glTestAutoDoor_Out && glSpotChangeEn) glDoorAuto_Flag =1;	
		
		if(glDoorAutoClose_Out) {glTestDoorOpen =0;glDoorAutoClose=0;}
		PreAutoDoor = glTestAutoDoor_Out;
	}
	else {glTestAuto5S_Cnt=0;glTestAuto5S_Cnt2=0;}
}

/********************************************************
	Timer0 100mS  시퀜스 
*********************************************************/

void c_int09()
{	
	cint09++;
	EINT;

 	////////////////////////////////////////////////////////////////////////// 100mS Routine

 	Distance_Sequence();
 	ONTD(glSpotDis_Flag,&glSpotDis_Out,2,&glSpot500mS_Cnt);
 	ONTD(glRootDis_Flag,&glRootDis_Out,2,&glRoot500mS_Cnt);
 	ONTD(glSDR_Delay,&glSDRComplete,5,&glSDR500ms);		// SDR -> gp 표출  2003-12-05 9:31오전
 	
 	
	SCC_A2_Rx();
	SCC_B2_Rx();
 		
 	////////////////////////////////////////////////////////////////////////// 200mS Routine
 	switch(cint09%2)
 	{
 		case 0x00:
			Door_Sequence();
			Send_IDD_Check(); 		
 			
			SCC_A2_Tx();						// 차내 표시기 
			SCC_B2_Tx();						// 열번, 행선 (event 발생 및 SDR(200mS))		
 			break;
 		case 0x01:
 			ONTD(glTestCnt,&glTest,50,&glTest10s);			// 시험버튼 확인 루틴 	
 			
 			if(glTurnOff_Cnt ==1) {glTurnOff_Flag =1;}//gpTURNOFF;} //2003-12-02 10:10오전시험을 위해 삭제 
 			if(glTurnOff_Cnt)glTurnOff_Cnt--;
 			break;
	}
	
	///////////////////////////////////////////////////////////////////////// 500mS Routine
 	
	
 	////////////////////////////////////////////////////////////////////////// 1S Routine
	switch(cint09%10)
	{
		case 0x02:
			glTCMSCnt++; 	
			if(glTCMSCnt >= 5)
			{
				glTCMSErr=1; glTCMSCnt=5; glTCMS_STATE=0;
				PreTCMSState = glTCMS_STATE;				// 2003-12-03 6:41오후
				if(glRxA1_Back[4]==0x31) glCom_TxEn =0;		// 2003-11-28 3:41오후 (pis1 에서 off된경우)	
			}
			else glTCMSErr = 0;	
			
			if((PreTCMSErr^glTCMSErr && !glTCMSErr)||glState_Flag) {glState_Flag =0; } //2003-12-03 수정
//			if((PreTCMSErr^glTCMSErr && !glTCMSErr)||glState_Flag) {glChange_Flag=1;glState_Flag =0;} //2003-12-16 9:38오전 
//			if(glChange_Flag && !glTurnOff_Flag) {gpSTATE; gpDisplay_No=4; glChange_Flag=0;} //2003-12-03 수정
			PreTCMSErr=glTCMSErr;
			break;
		case 0x00: glLDDDistance=1;					// 노선 거리 전송 Flag 
		case 0x05:
			DOOR_AUTO();						// 출입문 자동개폐
		default:
			break;	
	}
}

/********************************************************
	SCC1A : TCMS (HDLC9600BPS) 
*********************************************************/

void c_int01(void)
{	
	BYTE nCmdCode,i;
	cint01++;
	
	for(i=0;i<3;i++)
	{
		SCC1_A_C = 0x03;
		nCmdCode = SCC1_A_C & 0xff;
		
		if(!(nCmdCode & 0x36)) break;
		///////////////////////////////////////////////// FROM TCMS
		if(nCmdCode&0x20) // RR3 A채널 RX 일때..
		{
			glRxBufA1[glRxPA1++] = SCC1_A_D & 0xff; 
			
			switch(glRxPA1)
			{
				case 0x01: if(glRxBufA1[0]!=0x60) glRxPA1=0; break;
				case 0x02: if(glRxBufA1[1]!=0x02) glRxPA1=0; break;
				case 0x04: if(glRxBufA1[3]!=0x20) glRxPA1=0; break;
				default:
				   	if(glRxPA1>=glRxA1_Len) 
					{
						glRxA1_Flag =1; glRxPA1=0; glRxA1_Cnt++;
						memcpy(glRxA1_Back,glRxBufA1,glRxA1_Len);
						SCC_A1_Rx(); 
					} 
					break;
			}		
		} 
	
		///////////////////////////////////////////////// TO TCMS
		if(nCmdCode&0x10) // A채널 TX 일때..
		{	
			if(glTxPA1<glTxA1_Len)
			{
				SCC1_A_D = glTxBufA1[glTxPA1++]&0xff; 
				SCC1_A_C = 0x38;
			} 
			else 
			{
				SCC1_A_C = 0x01; SCC1_A_C = 0x10; 

				glTxPA1=0; SCC1_A_C = 0x28; 
				glTxA1_Flag=1; 
				glScc1a_offcnt =8; //03-12-22 6:10오후 7
			} 
		}
	}	
} 

/********************************************************
	SCC1A : 
*********************************************************/

void c_int02(void)
{
	unsigned int nTemp1,nTemp2,nTemp3,nTemp4;
	BYTE nCmdCode,i;
	cint02++;

	for(i=0;i<3;i++)
	{
		SCC2_A_C = 0x03;
		nCmdCode = SCC2_A_C & 0xff;	
	
		if(!(nCmdCode & 0x36)) break;
		///////////////////////////////////////////////// 
		if(nCmdCode&0x20) // RR3 A채널 RX 일때..
		{
			glRxBufA2[glRxPA2] = SCC2_A_D & 0xff;
		
			if(!glRxPA2)		{if(glRxBufA2[glRxPA2]==0xaa) glRxPA2++; else glRxPA2=0;}
			else if(glRxPA2==1)	{if(glRxBufA2[glRxPA2]==0xbb) glRxPA2++; else glRxPA2=0;}
			else if(glRxPA2==2)	{if(glRxBufA2[glRxPA2]==0xcc) glRxPA2++; else glRxPA2=0;}
			else if(glRxPA2==6)		
			{
				nTemp1 = glRxBufA2[4]|((glRxBufA2[3]<<8)&0xff00);
				nTemp2 = glRxBufA2[6]|((glRxBufA2[5]<<8)&0xff00);
				
				if(nTemp1&nTemp2) glRxPA2 = 0;
				else {glRxPA2++; glRxA2_Len = nTemp1+10;}
			}					
			else if(glRxPA2==9)	{if(glRxBufA2[glRxPA2]==0x08) glRxPA2++; else glRxPA2=0;} //03-09-15 11:06오전
			else if(glRxPA2>=(glRxA2_Len-1)){glRxA2_Flag =1; glRxPA2=0; glRxA2_Cnt++;} 
			else glRxPA2++; 
		} 
	
		///////////////////////////////////////////////// 
		if(nCmdCode&0x04) // RR3 B채널 RX 일때..
		{
			glRxBufB2[glRxPB2] = (SCC2_B_D & 0xff);
		
			if(!glRxPB2)		{if(glRxBufB2[glRxPB2]==0xaa) glRxPB2++; else glRxPB2=0;}
			else if(glRxPB2==1)	{if(glRxBufB2[glRxPB2]==0xbb) glRxPB2++; else glRxPB2=0;}
			else if(glRxPB2==2)	{if(glRxBufB2[glRxPB2]==0xcc) glRxPB2++; else glRxPB2=0;}
			else if(glRxPB2==6)		
			{
				nTemp3 = glRxBufB2[4]|((glRxBufB2[3]<<8)&0xff00);
				nTemp4 = glRxBufB2[6]|((glRxBufB2[5]<<8)&0xff00);
				
				if(nTemp3&nTemp4) glRxPB2 = 0;
				else {glRxPB2++; glRxB2_Len = nTemp3+10;}
			}					
			else if(glRxPB2==9)	{if(glRxBufB2[glRxPB2]==0x08) glRxPB2++; else glRxPB2=0;} //03-09-15 11:06오전		
			else if(glRxPB2>=(glRxB2_Len-1)){glRxB2_Flag =1; glRxPB2=0; glRxB2_Cnt++;} 
			else glRxPB2++; 
		} 
	
		///////////////////////////////////////////////// 
		if(nCmdCode&0x10) // A채널 TX 일때..
		{	
			if(glTxPA2<glTxA2_Len)
			{
				SCC2_A_D = glTxBufA2[glTxPA2++]&0xff;	
				SCC2_A_C = 0x38;
			}
			else 
			{
				SCC2_A_C = 0x28; 
				glTxPA2=0; glTxA2_Flag=1; 
				glScc2a_offcnt=4;
				if(glIDDProcess) {glIndex++; glIDDProcess =0;}
			} 		
		}
		
		///////////////////////////////////////////////// 
		if(nCmdCode&0x02) // B채널 TX 일때..
		{	
			if(glTxPB2<glTxB2_Len)
			{
				SCC2_B_D = glTxBufB2[glTxPB2++]&0xff;
				SCC2_B_C = 0x38;
			}
			else 
			{
				glTxPB2=0; glTxB2_Flag=1;
				SCC2_B_C = 0x28; 
				glScc2b_offcnt=4;
			} // 인터럽트 팬팅 클리어 
		}
	}
}

/********************************************************
	
*********************************************************/
void c_int03(void)
{
	
}

/********************************************************
	Timer1 1mS  시퀜스 
	RTS CONTROL 을 위한 시간 설정
*********************************************************/

void c_int10()
{	
	cint10++;

	//////////////////////////////////////////////////////////////// 동기 Rx -> Tx Delay // 대구 설정기 03-07-21 6:50오후
	if(glScc1a_Delaycnt==1) SCC_A1_Tx();	
	if(glScc1a_Delaycnt) glScc1a_Delaycnt--; 
	
	//////////////////////////////////////////////////////////////// 동기 RTS control (On)
	if(glScc1a_cnt == 7) {SCC1_A_C = 10; SCC1_A_C = 0xa0;} //03-12-22 6:10오후
	if(glScc1a_cnt == 1) 
	{
		glTxA1_Flag = 0;
		glTxPA1 = 1;
		SCC1_A_D = glTxBufA1[0] & 0xff;
	}
	if(glScc1a_cnt) glScc1a_cnt--; 
	
	//////////////////////////////////////////////////////////////// 동기 RTS control (Off)
	if(glScc1a_offcnt == 3) {SCC1_A_C = 10; SCC1_A_C = 0xa8;} //7 03-12-22 6:10오후
	if(glScc1a_offcnt == 1) {SCC1A_RTS_OFF;}	
	if(glScc1a_offcnt) glScc1a_offcnt--; 
	
	///////////////////////////////////////////////////////////////// 비동기 RTS control (Off)
	if(glScc2a_offcnt == 1) {SCC2A_RTS_OFF;}	
	if(glScc2a_offcnt) glScc2a_offcnt--; 

	///////////////////////////////////////////////////////////////// 비동기 RTS control (Off)
	if(glScc2b_offcnt == 1) {SCC2B_RTS_OFF;}	
	if(glScc2b_offcnt) glScc2b_offcnt--; 
}	





