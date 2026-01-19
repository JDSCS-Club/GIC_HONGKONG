/**************************************************
/*	TMS320C3X C Program			  				  */
/**************************************************/
//1) ¿⁄µøø™ ¡ı∞°Ω√ √÷¡æø™ø°º≠¿« ø™∏Ì ¿Á»Æ¿Œ « ø‰ 03-07-21 4:12ø¿»ƒ
//2) π´«•Ω√¿Œ ∞ÊøÏ «•√‚ µ•¿Ã≈Õ ≈¨∏ÆæÓ 03-07-21 10:19ø¿»ƒ
//3) π´«•Ω√ µ•¿Ã≈Õ ºˆ¡§ 
//4) 03-09-06)¥Î±∏ √÷¡æ «¡∑Œ±◊∑• ºˆ¡§ 
//5) 03-09-15)º≥¡§±‚ «¡∑Œ±◊∑• ºˆ¡§ <- ¥Ÿ∏• º≥¡§±‚∑Œ ∫Œ≈Õ µ•¿Ã≈Õ ¿‘∑¬Ω√  
//6) 03-09-25)«¡∑Œ±◊∑• ±Ê¿Ã √¯¡§ 
//7) 2003-10-11) 2003-10-28) ≈ÎΩ≈ ∫“¥… ø°∑Øø° ¥Î«— ºˆ¡§
//8) SAN disk data -> NVSRAM Load Test 2003-11-01 3:00ø¿»ƒ
//9) SAN disk data -> NVSRAM Load Test øœ∑· 2003-11-04
//10) PIS '31h' ∏µÂø°º≠ ≈ÎΩ≈¿Ã ∫“¥…¿∏∑Œ µ» ∞ÊøÏ  glCom_TxEn =0 (¬˜≥ª,ø≠π¯ ¬˜¥‹)2003-11-28
//11) »≠∏Èº“∞≈µ… ∂ß ≈ÎΩ≈ ¿¸º€ ∫“«„ - 2003-12-02 (OK)
//12) ø™µµ¬¯ø°º≠ «ˆ¿Áø™∏Ì¿Ã ¿ﬂ∏¯ «•±‚µ«¥¬ πÆ¡¶ «ÿ∞·  2003-12-02 
//13) ¿Ø»øƒ⁄µÂ¿Œ ∞ÊøÏ Ω√«Ë»≠∏È ø°º≠ ªÛ≈¬ »≠∏È¿∏∑Œ ∫Ø»Ø 2003-12-03 
//14) ¿⁄±‚¡¯¥‹, ø≠¬˜π¯»£, «‡º±ø™ «•√‚ π◊ ºˆµø º≥¡§¿∏∑Œ ºˆ«‡«“ ∞ÊøÏ 2003-12-04 (øœ∑·)
//15) 30h ¿Œ∞ÊøÏ «ˆ¿Áø™ π◊ ¥Ÿ¿Ωø™ ƒ⁄µÂ update πÆ¡¶ «ÿ∞· 2003-12-04 11:59ø¿¿¸
//16) ¿⁄±‚¡¯¥‹ «•√‚ ø¿∑˘ 2003-12-05 8:28ø¿¿¸ (ºˆ¡§øœ∑·)
//17) ≥Îº± ¿¸º€ µ•¿Ã≈Õ¥¬ ≈¨∏ÆæÓ 2003-12-05 9:04ø¿»ƒ 2003-12-06 10:23ø¿¿¸
//18) ø≠π¯/«‡º± ¿¸º€¿∫ ∫Ø»≠Ω√ 2»∏ ø¨º” ¿¸º€ 2003-12-06 10:42ø¿¿¸
//19) ¬˜≥ª ¿¸º€ µ•¿Ã≈Õ¿« ºˆµø ¿¸º€ π◊ µ•¿Ã≈Õ ¿¸º€¿« º¯º≠∏¶ ±≥√º 2003-12-08 1:27ø¿»ƒ 
//20) ¬˜≥ª ¿¸º€ µ•¿Ã≈Õ¿« ºˆµø ¿¸º€ πˆ∆€ µ∂∏≥ 2003-12-08 6:43ø¿»ƒ
//21) 2003-12-09 9:22ø¿¿¸
//22) 2003-12-16 9:44ø¿¿¸ »≠∏È º“∞≈Ω√ ¿Ø»øƒ⁄µÂ πﬁ¿ª∂ß ∏µÁ »≠∏Èø°º≠¿« ¿¸»Ø¿Ã ∞°¥… 
//23) 03-12-16 11:41ø¿¿¸ ¿⁄±‚¡¯¥‹∫Œ ºˆ¡§
//24) code 201 ∫Œ≈Õ∑Œ ºˆ¡§ 03-12-17 2:04ø¿»ƒ
//25) √ ±‚ ¿¸ø¯ ≈ı¿‘Ω√ Rom version π◊ ªÛ≈¬ µ•¿Ã≈Õ ¿¸º€ 03-12-17 4:28ø¿»ƒ
//26) »≠¿Á πﬂª˝ ∞À¡ˆΩ√ πÆæ» «•√‚ 03-12-18 5:01ø¿»ƒ
//27) ∑Œ≈€ ¡∂«’Ω√«Ë ø‰√ªΩ√ ºˆ¡§ 03-12-19 4:12ø¿»ƒ øÏ¡¯ªÍ¿¸ø°º≠.
//28) ∑Œ≈€ ¡∂«’Ω√«Ë ∑Œ≈€ø°º≠ ºˆ¡§ 03-12-22 3:44ø¿»ƒ (ø™ƒ⁄µÂ ¡ﬂ∫ππÆ¡¶ ¿Á»Æ¿Œ) RTS 50m -> 5m
//29) ø™ƒ⁄µÂ 4∞≥æø ¡∂«’ 2003-12-23 4:10ø¿»ƒ
//30) ºˆµø¡∂¿€¿∏∑Œ ø≠π¯¿Ã º≥¡§µ«¥¬ ∞ÊøÏ ≈ÎΩ≈¿Ã 30H∑Œ ¡§ªÛ¿˚¿∏∑Œ ¿‘∑¬µ«¥¬ ∞ÊøÏ µ•¿Ã≈Õ √Êµπ 2004-03-26 2:42ø¿»ƒ

/**************************************************
         Header ¡§¿« 
/**************************************************/

#include "ALL_DEF.h"
#include "debug3x.h"
#include "Disk.h"
#include "85C30.h"
#include "GpProface.H"

////////////////////////////////////////////////////

#define ROM_VER		16	//1.0
#define ETX		0x03
#define FDD		0xF5	// ¡§∏È
#define IDD		0xF1	// ¬˜≥ª
#define NDD		0xF7	// ø≠π¯
#define SDD		0xF6	// √¯∏È
#define LDD		0xF9	// ≥Îº±
#define FSNDD		0xF8	// ¡§∏È,√¯∏È,ø≠π¯ 
#define ILDD		0xFA	// ¡§∏È,√¯∏È,ø≠π¯ 
#define TURNOFFTIME	5*180	// 180sec
#define SCC2B_CNT	2

////////////////////////////////////////////////////
void c_int01(void);
void c_int02(void);
void c_int03(void);
void c_int09(void);
void c_int10(void);
void RD_FROM_TCMS();
void TrainNo_Check();

void SDR_Routine_Complete(BYTE *pSData);
void Find_StationInfoGp();
void Auto_Station_Cnt();
void Auto_Station_Cnt_00();

/*************************************************
	∫Øºˆ∏¶ ¡§¿««—¥Ÿ.
**************************************************/
unsigned int cint04 =0,cint09 =0,cint10 =0;
unsigned int glDebugCnt=0;

int glSAN300ms=0;					// San Disk Off time Delay Count
BYTE glXF0=0,glSAN=0,PreState =0; 	// San Disk ¿Ã¿¸ªÛ≈¬ (Active LowΩ≈»£¿Ã±‚ ∂ßπÆø°)
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
BYTE glIDDMBuf[530]; 				//2003-12-08 6:39ø¿»ƒ
BYTE glIDDFBuf[530];
BYTE glGpBuf1[100];
BYTE glGpBuf[100];					// æ≤∑π±‚ ∞™ πˆ∆€ 
BYTE glGpNow[50];
BYTE glGpNext[50];
BYTE glGpDest[50];

/************************************************/
/* ≈ÎΩ≈ø° ªÁøÎµ» ∫Øºˆ 							*/
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
/*  GPø° ªÁøÎµ» ∫Øºˆ 				*/
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
BYTE gl6RScreen =0;							//03-09-06)e¥Î±∏ √÷¡æ «¡∑Œ±◊∑• ºˆ¡§ 
BYTE glSelfTestScreen=0,gpDisplay_No=0;		//03-09-06)e¥Î±∏ √÷¡æ «¡∑Œ±◊∑• ºˆ¡§ 
BYTE glStateNo=0;
BYTE glStateNo_Flag =0;
BYTE glTestInnerCar = 0;
BYTE glTestService =0;
BYTE glTestAutoDoor=0;
BYTE glTestRoot =0;
BYTE glManuComFlag = 0;
BYTE glFireFlag=0; //03-12-18 4:49ø¿»ƒ
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
/*  ∏ﬁ∏∏Æ ≥ªøÎ √£±‚ 				*/
/************************************************/
BYTE glErr_Code = 0;

unsigned int glInfo=0;
unsigned int glTextLen=0,glTextMLen=0,glTextFLen;	//2003-12-08 6:43ø¿»ƒ

BYTE glTCMSCnt=0;
BYTE glStationList[60]; 	// ∆–≈œø° µÈæÓ∞• √÷¥Î ø™∏Ì¿« ∞πºˆ 
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
BYTE glTurnOff_Flag =0;			//2003-12-02 9:57ø¿¿¸
BYTE glTurnOff_Flag1=0;			//2003-12-04 1:28ø¿»ƒ
BYTE glTurnOff_Flag_Cmp =0;			//2003-12-02 9:57ø¿¿¸
BYTE glRoot_Flag=0;
BYTE glInner_Flag=0;
BYTE glService_Flag=0;
BYTE glNo_Flag=0;				//2003-12-04 10:35ø¿¿¸
BYTE glNogp_Flag=0;				//2003-12-04 10:35ø¿¿¸
BYTE glRN_Flag=0;
BYTE glSdr_Flag =0;				//2003-12-05 8:00ø¿»ƒ
BYTE glIDD_Flag=0,glFDD_Flag=0; //03-12-16 11:41ø¿¿¸
BYTE glChange_Flag=0; //03-12-16 11:47ø¿¿¸
BYTE glFIRE=0,PreFire=0; //03-12-18 5:00ø¿»ƒ

int glTurnOff_Cnt=TURNOFFTIME;

/////////////////////////////////////////////////////// ¿Œ√µ ¡ˆ«œ√∂ 
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
                     		
/////////////////////////////////////////////////////// ¥Î±∏ ¡ˆ«œ√∂ 
BYTE DAEGUIDDAddr_Buf[12]={	0x11,0x21,0x31,0x41,0x51,0x01,
                     		0x12,0x22,0x32,0x42,0x52,0x02};
                     		
BYTE DAEGUFDDAddr_Buf[6]= {    	0x3A,0x3B,0x1F,0x0F,0x1D,0x0D};                        		

void TCMSSD_Format(SD *Type,BYTE *pDData);

/******************************************************
/****************** ±◊ø‹ «‘ºˆ ≥ªøÎ   ******************
/******************************************************
/*****************************************************/
/*	¿‘∑¬ ∞À¡ˆ»ƒ Ω√∞£ º≥¡§ »Æ¿Œ 		     */	
/*	ªÁøÎøπ ) ONTD(III,&OOO,30,&cint10);	     */
/*      7.32uS/9.08uS  
/*	-> ¡ﬂ∞£ø° ¿Œ≈Õ∑¥∆Æ(8.0uS) ¿‘∑¬Ω√ 19.90uS
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
	Name 	: GpDataChange(BYTE *pDData,BYTE *pSData)
	Purpose : ¬˜≥ª ¿¸º€ø™∏Ì -> GP «•√‚ ø™∏Ì¿∏∑Œ ¿¸»Ø 
*******************************************************/

void GpDataChange(BYTE *pDData,BYTE *pSData)
{
	int i,j=0;
	for(i=0;i<15;i++) if(pSData[i]!=0x20) pDData[j++]=pSData[i];	
}

/******************************************************
	Name  : Hex2ASCIIW(unsigned int nInput, BYTE *pOutput)
	Input : BCD 4digit Train No
	Output: pOutput (Buffer)
	Description:

	ø≠¬˜ π¯»£∏¶ æÚ±‚ ¿ß«— ¿€æ˜ (Ascii ƒ⁄µÂ∑Œ ¿ŒΩƒ)
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
	IM «•√‚πÆø° «ˆ¿Áø™ π◊ «ÿ¥Áµ«¥¬ ø™¿ª ª¿‘«—¥Ÿ. (ºˆ¡§∫ª)

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
				if(glComDoor == 0x01) 	   {memcpy(&pDData[DestOffst],(BYTE *)"ø¿∏•¬ ",6);i+=9;DestOffst+=6;}
				else if(glComDoor == 0x02) {memcpy(&pDData[DestOffst],(BYTE *)"øﬁ  ¬ ",6);i+=9;DestOffst+=6;}
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
	«•√‚ Ω∫ƒ…¡Ï »Æ¿Œ 

	1) ∞≈∏Æ µ•¿Ã≈Õø° µ˚∏• ∞πºˆ∏¶ √£¥¬¥Ÿ. 
	2) º¯¬˜¿˚¿∏∑Œ ¿¸º€«œ∏Á «√∑°±◊∏¶ ±‚∑œ«—¥Ÿ. 
	3) πÆ¿Ã ø≠∏≤Ω√ µ•¿Ã≈Õ ≈¨∏ÆæÓ «—¥Ÿ. 
*********************************************************/

void GpInsert(BYTE *pSData,BYTE *pDData,unsigned int nLen)
{
	int i,j,m=0;
	int DestOffst=0;
	
	for(i=0;i<32;i++) pDData[i] = 0x00;
	for(i=14;i<nLen;i++)
	{
		if(pSData[i]==0x1B) m=2;						//(BYTE *)''ESC')//ºˆ¡§ µ•¿Ã≈Õ
		else if(pSData[i]==0x40)						//(BYTE *)'@') //±‚¡∏ µ•¿Ã≈Õ 
		{	
			if((pSData[i+1]==(BYTE)'R')||(pSData[i+1]==(BYTE)'G')||(pSData[i+1]==(BYTE)'U')) m=1;
			else if(!strncmp(&pSData[i+1],"[R)Arrow]",9))
			{
				memcpy(&pDData[DestOffst],(BYTE *)"ø¿∏•¬ ",6);DestOffst+=6; m=9;
			}	
			else if(!strncmp(&pSData[i+1],"[L)Arrow]",9))
			{
				memcpy(&pDData[DestOffst],(BYTE *)"øﬁ¬ ",4);DestOffst+=4; m=9;
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
	Find_StationInfoGp();						// ø™¡§∫∏ ∞Àªˆ 
   	//glDisplayIndex_Cnt = Find_Display_Schedule(glComNow,glComNext,glInfo);	
	glDisplayIndex_Cnt = NVSRAM_Display_Schedule(glComNow,glComNext,glInfo);// «•√‚ πÆæ»¿« ∞πºˆ 
	
	glChkDistance = 0;
	glIndex = 0;							// «•√‚ Index ƒ´øÓ≈Õ ≈¨∏ÆæÓ 
	glIndexCnt = Find_Schedule_Cnt(IndexBuf,glDisplayIndex_Cnt,0,0);
	
	glComDoor = glDoorDir; 
}	

/*****************************************************/
/*	ø™¡§∫∏ æ˜µ•¿Ã∆Æ (¡ˆ¡°∫∏¡§ »Æ¿Œπˆ∆∞)	     */		     
/*****************************************************/

void Station_Update()
{
	glComNow = glStationList[glStationP];		 		//«ˆ¿Áø™ ƒ⁄µÂ Update
	glComNext = glStationList[glStationP+1];			//¥Ÿ¿Ωø™ ƒ⁄µÂ Update
	
	memcpy(glNowBuf,TrainNumber[glStationP].KorName,15);   		 //«ˆ¿Áø™
	memcpy(glNNextBuf,TrainNumber[glStationP+1].KorName,15);	 //¥Ÿ¿Ωø™
	memcpy(&glNowBuf[15],TrainNumber[glStationP].EngName,30);    //«ˆ¿Áø™
	memcpy(&glNNextBuf[15],TrainNumber[glStationP+1].EngName,30);//¥Ÿ¿Ωø™

	GpDataChange(glGpNow,glNowBuf);					//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ
	GpDataChange(glGpNext,glNNextBuf);				//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ 				
						   
	PreNow = glComNow;
	PreNext = glComNext;
			   
	Seek_IMPR();		   
	if(!glDOOR && !glTestService) 
	{
		glStateNo_Flag=1; glStateNo=1; glSpotClose=1;	

	 	NVSRAM_Find_IM(91,glSourBuf);
		glTextMLen = Insert_SpecialCodeNew(glSourBuf,glIDDMBuf)+3;	//2003-12-08 6:37ø¿»ƒ
		glManuComFlag =1;
	}			   
}

/*****************************************************/
/*	GP ¿‘∑¬ Ω≈»£ »Æ¿Œ 			     				 */
/*****************************************************/

void Gp_Receive()
{
	int i;
	BYTE pDData[36];//2003-12-05 8:19ø¿¿¸
	BYTE nTemp;
	
	///////////////////////////////////////////////////////////////////////////////// GP º≥¡§ø° ¿««— ø≠π¯¿‘∑¬
	if(glRx_Buf[1] == 0x41)
	{
		glComTrainNo =(((glRx_Buf[2]<<8)&0xff00)|glRx_Buf[3]);
		Hex2ASCIIW(glComTrainNo,glTrainBuf);					// BCD to ASCII (5 byte)
		PreTrainNo = glComTrainNo;
		Mode_Flag =4;
	}			
	///////////////////////////////////////////////////////////////////////////////// GP º≥¡§ø° ¿««— ø≠π¯¿‘∑¬

	else if(glRx_Buf[1] == 0x49)
	{
		// »≠∏È¿¸»Ø≈∞ (gpDisplay_No : 1~ 8)
		// 0x32(∏ﬁ¥∫),0x3D(¿⁄±‚¡¯¥‹),0x34(ø≠π¯º≥¡§),0x33(ªÛ≈¬),0x3C(ºˆµøº≥¡§),0x37(Ω√«Ë),0x36(¡ˆ¡°∫∏¡§),0x38(«‡º±º≥¡§),,
		glTurnOff_Cnt=TURNOFFTIME;
		glTurnOff_Flag =0;						// 2003-12-02 10:09ø¿¿¸
		glTurnOff_Flag_Cmp =0;					//2003-12-02 9:57ø¿¿¸
		
		switch(glRx_Buf[3])  
		{	
			/////////////////////////////////////////////////////////////////ø≠π¯º≥¡§ »≠∏È ¿˝»Ø (OK)

			case 0x4D: gpKEYINIT;					
				   break;						// Key Pad 				
			case 0x50: gpKEYCLR;gpRDNUMBER;	gpKEYDIS; gpTRNOSEEK; 	
				   break;						// »Æ¿Œπˆ∆∞ ¿‘∑¬Ω√ («‡º±, ø≠π¯ ¿¸º€ «√∑°±◊) 
			case 0x34: gpTRAINNUMBER;gpKEYACTIVE;gpKEYCLR;gpDisplay_No=3;	// ø≠π¯º≥¡§ »≠∏È 
				   gpKEYEN; 	
				   break;		
				   
			//////////////////////////////////////////////////////////////////∏ﬁ¥∫ »≠∏È ¿˝»Ø (OK)
			
			case 0x32: gpMENU; gpDisplay_No =1;		break; 		//∏ﬁ¥∫ »≠∏È ¿¸»Ø
			
			//////////////////////////////////////////////////////////////////¿⁄±‚¡¯¥‹ »≠∏È ¿˝»Ø (OK)
			
			case 0x3D: gpSELFTEST; gpSELFTESTINIT; gpDisplay_No=2;		//¿⁄±‚¡¯¥‹ »≠∏Èø‰√ª
				   gpSETCLR; glSDR_Delay=1;	glSdr_Flag =1;
				   
				   /*
				   for(i=0;i<18;i++) {pDData[i*2]= 0x08; pDData[i*2+1]= 0x07;} // ∞¯πÈ «•√‚ (2055) 2003-12-05 8:18ø¿¿¸	
				   gp_WritingStr(220,52,pDData);						// ªÛ≈¬ µ•¿Ã≈Õ «•√‚ 2003-12-05 8:18ø¿¿¸
					*/
				   if(glSelfTestScreen){gp6RBLACK; gp6SELFITEM; gp6RTRAIN;} 
				   else {gp8RBLACK; gp8SELFITEM; gp8RTRAIN;}
				   break;		
				   
			case 0x62: gp6RBLK; gpSELKTOKBLK; gl6RScreen=1;	break;		//6R ¬˜∑Æ
			case 0x63: gp8RBLK; gpSELKTOKBLK; gl6RScreen=0;	break;		//8R ¬˜∑Æ
			case 0x57: gpSELFTESTINIT;									// »Æ¿Œ πˆ∆∞ ¥©∏ß  
				   glSelfTestScreen = gl6RScreen;
   			   	   
   			   	   glSdr_Flag =1; glIDD_Flag=1; glFDD_Flag=1;   		// 2003-12-05 8:00ø¿»ƒ 03-12-16 11:34ø¿¿¸
   			   	   /*
   			   	   for(i=0;i<18;i++) {pDData[i*2]= 0x08; pDData[i*2+1]= 0x07;} // ∞¯πÈ «•√‚ (2055)	2003-12-05 8:19ø¿¿¸
				   gp_WritingStr(220,52,pDData);						// ªÛ≈¬ µ•¿Ã≈Õ «•√‚ 
   			   	   */
   			   	   if(glSelfTestScreen){gp6RBLACK; gp6SELFITEM; gp6RTRAIN;} 
				   else {gp8RBLACK; gp8SELFITEM; gp8RTRAIN;}	
				   
				   if(!glIDDSDR && !glFDDSDR) 
				   {
				   	memset(glSDR_Buf,0x01,18);  						// «•Ω√±‚ ªÛ≈¬ µ•¿Ã≈Õ ≈¨∏ÆæÓ 03-09-08 3:56ø¿»ƒ
					glIDDSDR=1;glFDDSDR=1;    							// «•Ω√±‚ ªÛ≈¬ µ•¿Ã≈Õ Flag Set, Counter√ ±‚»≠ 
					glIDDSDRCnt=0; glFDDSDRCnt=0;						// «•Ω√±‚ ªÛ≈¬ µ•¿Ã≈Õ ø‰√ª ƒ´øÓ≈Õ ≈¨∏ÆæÓ 
				   }
				   break;	
			
			//////////////////////////////////////////////////////////////////ªÛ≈¬ »≠∏È ¿˝»Ø (OK)
			
			case 0x33: gpSTATE;  gpDisplay_No=4; 		break;		// ªÛ≈¬ »≠∏È «•√‚ («ˆ¿Áø™, ø™¡§∫∏µÓ¿∫ int09)ø°º≠
			case 0x4B: glStateNo_Flag = NOT(glStateNo_Flag);
				   if(glStateNo_Flag){glStateNo=1;} break;		// π´«•Ω√ º±≈√ 
			
			////////////////////////////////////////////////////////////////// ºˆµø »≠∏È ¿˝»Ø (OK)
			
			case 0x3C: gpMANU; gpMANUINIT; gpMANUNOBLK; gpDisplay_No=5;  	// ºˆµø »≠∏È ¿¸»Ø 
				   //gpNOWSTATION; 
				   //gp_WritingStr(0x82,6,glGpNow);
				   gpAFTERSTATION; 
				   gp_WritingStr(0x82,6,glGpNext);
				   break;						
			
			case 0x4E: //gpNOWSTATION; 
				   gpAFTERSTATION; 	
				   gpNOWBLK; gpMANUOKBLK;glManuFlag = 1; //µµ¬¯ æ»≥ª 	03-09-06	
				   //gp_WritingStr(0x82,6,glGpNow);	 // ¿Ãπ¯ø™ «•√‚
				   gp_WritingStr(0x82,6,glGpNext);	 // ¿Ãπ¯ø™ «•√‚
				   gp_WritingStr(0x12C,6,(BYTE *)"¿Ãπ¯ø™ æ»≥ª");
				   break;						
				   				
			case 0x56: gpMANUINIT; gpMANUNOBLK; glManuSet = glManuFlag;     //»Æ¿Œ 

				   if(glManuSet==1) NVSRAM_Find_IM(91,glSourBuf);//Find_NewIM(91,glSourBuf);
				   glTextMLen = Insert_SpecialCodeNew(glSourBuf,glIDDMBuf)+3;//2003-12-08 6:38ø¿»ƒ
				   glManuSet=0;
				   glManuComFlag =1;
				   glStateNo_Flag=1; glStateNo=1; glSpotClose=1;	// π´«•Ω√ »Æ¿Œ 03-09-08 8:24ø¿»ƒ
				   break; 
			
			//////////////////////////////////////////////////////////////////Ω√«Ë »≠∏È ¿˝»Ø (OK)
			
			case 0x37: glTestCnt++; 		   		break;			// Ω√«Ë»≠∏È ø‰√ª 
			case 0x60: glTestDoorOpen =1; gpDOOROPEN; 			
				   Auto_Station_Cnt();								// ¿⁄µøø™ ¡ı∞° 
				   break;											// DoorOpen
			case 0x61: glTestDoorOpen =0; gpDOORCLOSE;	break;		// DoorClose
			case 0x5A: glTestInnerCar = NOT(glTestInnerCar); glInner_Flag=1;// ¬˜≥ª∆–≈œΩ√«Ë	
				   glIDDPattern = 1;
				   break;		
			case 0x5B: glTestService = NOT(glTestService); glService_Flag=1;// ∏¿«¡÷«‡Ω√«Ë 
				   if(!glTestService)
				   {
				   	glTestSpeed=0; glDistance=0;
				   	gpDISTANCE(glDistance);gpSPEED(glTestSpeed);
				   	glTestDoorOpen =1; gpDOOROPEN; 			
				   }	
			 	   break;		
			case 0x5C: glTestAutoDoor = NOT(glTestAutoDoor);		// ¿⁄µø √‚¿‘πÆ ∞≥∆Û
				   break;		
			case 0x5D: glTestRoot = NOT(glTestRoot); glRoot_Flag=1;	// «‡º±«•Ω√±‚Ω√«Ë
				   glLDDPattern =1;
				   break;		
			case 0x5E: glTestSpeed+= 10;	 				// º”µµ +
				   if(glTestSpeed >= 200) glTestSpeed = 200;
				   gpSPEED(glTestSpeed);
			    	   break;						
			case 0x5F: glTestSpeed-= 10;	 				// º”µµ -
				   if(glTestSpeed <= 0 ) glTestSpeed = 0;
				   gpSPEED(glTestSpeed);
				   break;						

			//////////////////////////////////////////////////////////////////¡ˆ¡°∫∏¡§ ∏ﬁ¥∫ ¿˝»Ø (OK)
			
			case 0x36: 
				   if(!glDOOR) {gpSPOT2;}
				   else {gpSPOT;}
				   gpSPOTINIT; gpSPOTEN; gpDisplay_No=7;		//¡ˆ¡°∫∏¡§ »≠∏È¿¸»Ø	
				   glNowStation = glStationP;				//¡¯«‡¡ﬂ¿Œ ø™¿˙¿Â 
				   
				   if(!glStopNo)
				   {gp_WritingStr(170,6,ZeroBuf);gp_WritingStr(180,6,ZeroBuf);gp_WritingStr(160,6,ZeroBuf);}
				   else 
				   {gp_SpotPreStation(glNowStation); gp_SpotNowStation(glNowStation); gp_SpotAftStation(glNowStation);}
				   break;						
				   
			//////////////////////////////////////////////////////////////////¡¯«‡πÊ«‚
			
			case 0x46: gpSPOTDIS; glSpotDis_Flag=1;	
				   if(glStopNo)
				   {
					   glNowStation++;	
				
					   if((glNowStation+1) >= glMax_StationNo)
					   {
					   	glNowStation = glMax_StationNo-1;
					   	gp_WritingStr(170,6,ZeroBuf);		// ¥Ÿ¿Ωø™«•√‚ 
					   }	
					   else gp_SpotAftStation(glNowStation);
					   gp_SpotPreStation(glNowStation); gp_SpotNowStation(glNowStation);
				   }
				   break;
			
			//////////////////////////////////////////////////////////////////π›¥ÎπÊ«‚
			
			case 0x47: gpSPOTDIS; glSpotDis_Flag=1;				
				   if(glStopNo)
				   {	
				   	glNowStation--;
				   	if(glNowStation<0) glNowStation=0;
				   	gp_SpotPreStation(glNowStation); gp_SpotNowStation(glNowStation); gp_SpotAftStation(glNowStation);
				   }	
				   break;
				   
			/////////////////////////////////////////////////////////////////// »Æ¿Œ 
							   
			case 0x53: gpSPOTINIT; 		  									//»Æ¿ŒΩ√ «ˆ¿Áø™ ∆˜¿Œ≈Õ æ˜µ•¿Ã∆Æ
				   if(glStopNo){glStationP = glNowStation; Station_Update();}
				   break;						   

			///////////////////////////////////////////////////////////////////// «‡º±º≥¡§ »≠∏ÈΩ√¿€ (OK)
				
			case 0x64: gpROOT1BLK;  gpROOTACTIVE; glRootNo =1;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§1 (T Tag º≥¡§)
			case 0x65: gpROOT2BLK;	gpROOTACTIVE; glRootNo =2;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§2 (T Tag º≥¡§)
			case 0x66: gpROOT3BLK;	gpROOTACTIVE; glRootNo =3;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§3 (T Tag º≥¡§)
			case 0x67: gpROOT4BLK;	gpROOTACTIVE; glRootNo =4;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§4 (T Tag º≥¡§)
			case 0x68: gpROOT5BLK;	gpROOTACTIVE; glRootNo =5;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§5 (T Tag º≥¡§)
			case 0x69: gpROOT6BLK;	gpROOTACTIVE; glRootNo =6;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§6 (T Tag º≥¡§)
			case 0x6a: gpROOT7BLK;	gpROOTACTIVE; glRootNo =7;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§7 (T Tag º≥¡§)
			case 0x6b: gpROOT8BLK;	gpROOTACTIVE; glRootNo =8;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§8 (T Tag º≥¡§)
			case 0x6c: gpROOT9BLK;	gpROOTACTIVE; glRootNo =9;  gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§9 (T Tag º≥¡§)
			case 0x6d: gpROOT10BLK;	gpROOTACTIVE; glRootNo =10; gpROOTDIS; glRootDis_Flag=1; break;	// «‡º±º≥¡§10(T Tag º≥¡§)
			
			////////////////////////////////////////////////////////////////////////// »Æ¿Œ πˆ∆∞
			
			case 0x51: gpROOTNOBLK; gpROOTINIT; glRN_Flag=1; 			// »Æ¿Œ πˆ∆∞ ¿‘∑¬Ω√ («‡º±,ø≠π¯¿¸º€«√∑°±◊) 2003-12-04 10:02ø¿¿¸
				   nTemp = glRootScreen_Cnt*10 + glRootNo-1;		  	// «‡º± ∆˜¿Œ≈Õ æ˜µ•¿Ã∆Æ
				   
				   if(nTemp <= glTotalRoot-1) 
	   			   {
	   			   	glFSNDD_Flag=SCC2B_CNT;//2003-12-06 10:26ø¿¿¸
	   			   			   	
	   			   	glRootP = nTemp;
	   			   	glSelectScreen = glRootScreen_Cnt;			 // º±≈√ Ω∫≈©∏∞ 
	   			    gp_WritingWord(0x3D,(0x01<<(glRootP%10))); 	 // º±≈√µ» µ•¿Ã≈Õ ∞À¡§ªˆ¿∏∑Œ ∞Ì¡§ 
	   			   
	   			   	glComDest= glRootList[glRootP];			  	 // º±≈√µ» «‡º±ø™ƒ⁄µÂ∏¶ Update «—¥Ÿ. 
		   		   	//Rd_StationName_Code(glRootList[glRootP],glDestBuf,glGpDest); // º±≈√µ» «‡º±ø™∏Ì¿ª Update «—¥Ÿ. 
		   		   	NVSRAM_Rd_StationName_Code(glRootList[glRootP],glDestBuf,glGpDest);
		   		   	PreDest = glComDest;
				   }	
				   break;
			
			//////////////////////////////////////////////////////////////////// «‡º±»≠∏È ø‰√ª
			
			case 0x38: gpROOT;gpROOTINIT; gpROOTEN; gpROOTNOBLK; gpDisplay_No=8; 
				   
				   if(glRootP == 0xff) glSelectScreen =0;
				   else glSelectScreen = glRootP/10;
				   
				   //Find_StationRoot(glSelectScreen,10);			
				   NVSRAM_Find_StationRoot(glSelectScreen,10);			
				   for(i=0;i<10;i++) gp_WritingStr(340+i*10,6,RootList[i].KorName);			   
				   
				   if(glRootP != 0xff) gp_WritingWord(0x3D,(0x01<<(glRootP%10)));
				   else gpROOTWHITE;
				   
				   glRootScreen_Cnt = glSelectScreen;
  			  	   break; 					  
  			  	   
			////////////////////////////////////////////////////////////////// ¥Ÿ¿Ω»≠∏È    				
			  			  	   
  			case 0x6F: gpROOTINIT; gpROOTDIS; glRootDis_Flag=1;	  	
		   
				   glRootScreen_Cnt++; 					
				   if(glRootScreen_Cnt>=(glTotalRoot-1)/10) glRootScreen_Cnt=(glTotalRoot-1)/10;
									   
				   //Find_StationRoot(glRootScreen_Cnt,10);		
				   NVSRAM_Find_StationRoot(glRootScreen_Cnt,10);	
				   for(i=0;i<10;i++) gp_WritingStr(340+i*10,6,RootList[i].KorName);			   
				   
				   if(glSelectScreen != glRootScreen_Cnt){gpROOTWHITE; gpROOTNOBLK;}
				   else if(glRootP != 0xff && glSelectScreen ==glRootScreen_Cnt) gp_WritingWord(0x3D,(0x01<<(glRootP%10)));
  			  	   break; 					  	
  				
			////////////////////////////////////////////////////////////////// ¿¸»≠∏È 				
			
			case 0x6E: gpROOTINIT; gpROOTDIS; glRootDis_Flag=1;	  	
				   
				   glRootScreen_Cnt--; 					
				   if(glRootScreen_Cnt<=0) glRootScreen_Cnt=0;
									   
				   //Find_StationRoot(glRootScreen_Cnt,10);		
				   NVSRAM_Find_StationRoot(glRootScreen_Cnt,10);
				   for(i=0;i<10;i++) gp_WritingStr(340+i*10,6,RootList[i].KorName);
				  
				   if(glSelectScreen != glRootScreen_Cnt){gpROOTWHITE; gpROOTNOBLK;} 			   
				   else if(glRootP != 0xff && glSelectScreen ==glRootScreen_Cnt) gp_WritingWord(0x3D,(0x01<<(glRootP%10)));
  			  	   break; 
  			  	   
			///////////////////////////////////////////////////////////////////// «‡º±º≥¡§ »≠∏È≥° 
			case 0x39: glTurnOff_Cnt =0; glTurnOff_Flag =1; break;// gpTURNOFF; break;
			case 0xff: gpSTATE; gpDisplay_No=4; break; //03-12-16 11:45ø¿¿¸	   	
			default:break;
		} //switch end
	} // else end
	
	glRx_Flag = 0;
} 

//////////////////////////////////////////////////////////////////
void GP_MANU_STATE()
{
	if(glRx_Buf[1] == 0x49)
	{
		glTurnOff_Cnt=TURNOFFTIME;
		glTurnOff_Flag =0;						// 2003-12-02 10:09ø¿¿¸
		glTurnOff_Flag_Cmp =0;					//2003-12-02 9:57ø¿¿¸
		
		switch(glRx_Buf[3])  
		{	
			//////////////////////////////////////////////////////////////////ªÛ≈¬ »≠∏È ¿˝»Ø (OK)
			
			case 0x33: gpSTATE;  gpDisplay_No=4; 		break;				// ªÛ≈¬ »≠∏È «•√‚ («ˆ¿Áø™, ø™¡§∫∏µÓ¿∫ int09)ø°º≠
			case 0x4B: glStateNo_Flag = NOT(glStateNo_Flag);
				   if(glStateNo_Flag){glStateNo=1;} break;					// π´«•Ω√ º±≈√ 
			
			case 0x3C: gpMANU; gpMANUINIT; gpMANUNOBLK; gpDisplay_No=5;  	// ºˆµø »≠∏È ¿¸»Ø 
				   //gpNOWSTATION; 
				   gpAFTERSTATION; 
				   gp_WritingStr(0x82,6,glGpNext);
				   break;						
			
			case 0x4E: //gpNOWSTATION; 
				   gpAFTERSTATION; 
				   gpNOWBLK; gpMANUOKBLK;glManuFlag = 1; //µµ¬¯ æ»≥ª 	03-09-06	
				   //gp_WritingStr(0x82,6,glGpNow);// ¿Ãπ¯ø™ «•√‚
				   gp_WritingStr(0x82,6,glGpNext);// ¿Ãπ¯ø™ «•√‚
				   gp_WritingStr(0x12C,6,(BYTE *)"¿Ãπ¯ø™ æ»≥ª");
				   break;						
				   				
			case 0x56: gpMANUINIT; gpMANUNOBLK; glManuSet = glManuFlag;     //»Æ¿Œ 
				   if(glManuSet==1) NVSRAM_Find_IM(91,glSourBuf);//Find_NewIM(91,glSourBuf);
				   glTextMLen = Insert_SpecialCodeNew(glSourBuf,glIDDMBuf)+3; //2003-12-08 6:38ø¿»ƒ
				   glManuSet=0;
				   glManuComFlag =1;
				   
				   glStateNo_Flag=1; glStateNo=1; glSpotClose=1;			// π´«•Ω√ »Æ¿Œ 03-09-08 8:24ø¿»ƒ
				   break; 
			case 0x39: glTurnOff_Flag =1; glTurnOff_Cnt =0; break;//gpTURNOFF; break; //2003-12-04 1:18ø¿»ƒ
			case 0xff: gpSTATE; gpDisplay_No=4; break; //03-12-16 11:45ø¿¿¸	   
			default:break;	   
		}	
		glRx_Flag = 0;
	}	
}		

/******************************************************
	San Disk ≈ı¿‘Ω√ »Æ¿Œ ∑Á∆æ (¡ﬂ∞£)
	º“ø‰Ω√∞£ : 62.6mS
*******************************************************/

void SanDisk_Process()
{
	if(!(FDD_STATUS_RD&0x03)) 					// San Disk ¿‘∑¬ »Æ¿Œ 
	{
		Sandisk_Init();

		if(Seek_File() && glTotalClusterCnt)	// Match File »Æ¿Œ 
		{
			glErr_Code = 0x00;
			//glTotalRoot = Find_RootAllNo(ROOT_BODY_MAX,glRootList);
			//Rd_StationName_Total();			// 03-08-06 8:15ø¿»ƒ
			Nvsram_Load();
			
			glTotalRoot = NVSRAM_Find_RootAllNo(ROOT_BODY_MAX,glRootList);
			NVSRAM_Rd_StationName_Total(); 
			gpCARDOK;
		}					
		else glErr_Code = 0x02;
	}
	else 
	{
		glTotalRoot = NVSRAM_Find_RootAllNo(ROOT_BODY_MAX,glRootList);
		NVSRAM_Rd_StationName_Total(); 
		
		gpCARDERR; glErr_Code = 0x01;
	}
}

/******************************************************
	San Disk Initialize 
	¡¶æÓ ¿¸ø¯ ≈ı¿‘Ω√ »Æ¿Œ ∑Á∆æ 
*******************************************************/

void Para_Initial()
{
	PreState = ~FDD_STATUS_RD&0x03;				// San Disk √ ±‚»≠ ªÛ≈¬ (πÈæ˜) 

	DO_CLK =1;									// DO output ¡¢¡° ON
	memset(ZeroBuf,0,100);

	gpDisplay_No=4;
	gpSTATE; gpTESTCLR;							// Gp ªÛ≈¬»≠∏È «•√‚
 	gp_WritingStr(0x82,6,ZeroBuf); 				// ¿Ãπ¯ø™ «•√‚ (π´«•Ω√)
 	gpSETCLR; gpSTATENOCLR;						// º≥¡§ø°∑Ø/π´«•Ω√ ≈¨∏ÆæÓ 
 	gpTURNOFFINIT; 								// GP »≠∏È √ ±‚»≠ ¿€æ˜ 
	
	memset(glNowBuf,0,45);
	memset(glNNextBuf,0,45);
	memset(glDestBuf,0,45);
	memset(&glTxBufA1[5],0,18);					// ªÛ≈¬ µ•¿Ã≈Õ ¿–±‚ ¿¸ø°¥¬ '0'¿∏∑Œ √ ±‚∞™ º≥¡§
	glTxBufA1[21] = ROM_VER; 
	
	GpDataChange(glGpNow,glNowBuf);				// GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ
	GpDataChange(glGpNext,glNNextBuf);			// GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ
	GpDataChange(glGpDest,glDestBuf);			// GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ

	memset(glSDR_Buf,0x01,18); 					// 03-09-08 3:57ø¿»ƒ
	glTestDoorOpen =1; 							// ¿¸ø¯ √ ±‚ ≈ı¿‘Ω√ µµæÓ ø≠∏≤¿∏∑Œ º≥¡§ 
	glIDDSDR = 1; glFDDSDR=1; glIDDSDRCnt=0; glFDDSDRCnt=0; // «•Ω√±‚ ªÛ≈¬ µ•¿Ã≈Õ ø‰√ª
	
	memcpy(glRxA1_Back,0,glRxA1_Len); 			// ¿Ø»øƒ⁄µÂ «•√‚ 2003-12-02 8:52ø¿»ƒ
	
	LINE_OFF =1;
}

/******************************************************
	ø≠π¯¿ª »Æ¿Œ«œø© ¡§¬˜∆–≈œ¿ª ±∏«—¥Ÿ. 
*******************************************************/

void TrainNo_Check()
{
	int i;

	//glStopNo = Comp_TrainNo(glTrainBuf);				// ¡§¬˜∆–≈œæÚ±‚
	glStopNo = NVSRAM_Comp_TrainNo(glTrainBuf);			// ¡§¬˜∆–≈œæÚ±‚
	glStateNo =1;
	glDisplayIndex_Cnt=0;
	
	if(!glStopNo) 
	{
		gpSETERR; 
		
		glComNow=0; glComNext=0; glComDest=0; glComStart=0; glRootP=0xff;
		
		memset(glDestBuf,0,45);
		memset(glNowBuf,0,45);
		memset(glNNextBuf,0,45);
		memset(glGpNow,0,45);
		memset(glGpNext,0,45);
		memset(glGpDest,0,45);
		glFSNDD_Flag=SCC2B_CNT;						//«‡º±, ø≠π¯ 	//2003-12-06 10:26ø¿¿¸
	}
	else 
	{
		gpSETCLR; 
		//glMax_StationNo = Comp_StopPattern(glStopNo,glStationList); 
		//Rd_StationName(glMax_StationNo,glStationList);
		glMax_StationNo = NVSRAM_Comp_StopP(glStopNo,glStationList); 	
		NVSRAM_Rd_StationName(glMax_StationNo,glStationList);
				
		glStationP = 0;

		glComNow = glStationList[glStationP];
		glComNext = glStationList[glStationP+1];
		glComDest = glStationList[glMax_StationNo-1];			// «‡º±ø™ Update
		glComStart = glComNow;
		
		memcpy(glNowBuf,TrainNumber[glStationP].KorName,15);
		memcpy(glNNextBuf,TrainNumber[glStationP+1].KorName,15);
		memcpy(glDestBuf,TrainNumber[glMax_StationNo-1].KorName,15);
		
		memcpy(&glNowBuf[15],TrainNumber[glStationP].EngName,30);   	//«ˆ¿Áø™
		memcpy(&glNNextBuf[15],TrainNumber[glStationP+1].EngName,30);	//¥Ÿ¿Ωø™
		memcpy(&glDestBuf[15],TrainNumber[glMax_StationNo-1].EngName,30);
		
		GpDataChange(glGpNow,glNowBuf);					//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ
		GpDataChange(glGpNext,glNNextBuf);				//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ
		GpDataChange(glGpDest,glDestBuf);				//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ
		
		for(i=0;i<glTotalRoot;i++){glRootP = 0xff; if(glRootList[i]==glComDest){glRootP=i; break;}}
						
		Seek_IMPR();
	
		PreNow  = glComNow;
		PreNext = glComNext;
		PreDest = glComDest;
		
		glFSNDD_Flag=SCC2B_CNT;							// «‡º±, ø≠π¯ 2003-12-06 10:30ø¿¿¸
	}
	gp_WritingStr(0x96,6,glGpDest);						// «‡º± «•√‚
	gpKEYEN;
	
	glNo_Flag =1;										//2003-12-04 10:07ø¿¿¸
	glNogp_Flag =1;
}

/********************************************************
	Name 	: SCC_A1_Tx()
	Purpose : TCMS(¡÷) <-> PIS (¡æ)
*********************************************************/
void SCC_A1_Tx()
{
	if(glTxA1_Flag)
	{
		SCC1A_RTS_ON;					
		SCC1_A_C = 0x01; SCC1_A_C = 0x12; // TX ¿Œ≈Õ∑¥∆Æ ∞°¥… 
		glScc1a_cnt = 8;//7; 03-12-22 6:09ø¿»ƒ
	} 
} 

/********************************************************
	Name 	: SCC_A1_Rx()
	Purpose : TCMS(¡÷) <-> PIS (¡æ)
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
			glScc1a_Delaycnt = 5;				//10mSec //03-12-22 5:50ø¿»ƒ (50m->5m∑Œ ºˆ¡§)
			glTCMSCnt = 0; 
			glTCMSErr = 0;						//2003-12-04 12:35ø¿»ƒ
			glA1CRC_Err=1;
		}
		else glA1CRC_Err=2;
		glRxA1_Flag=0;						// 2003-10-11			
	}
}

/********************************************************
	Name 	: SCC_A2_Tx()
	Purpose : PIS <-> IDD (¬˜≥ª«•Ω√±‚)
*********************************************************/

void SCC_A2_Tx()
{
	int i;
	BYTE Data=0,Data1=0;
	
	Data1= glIDDSDR && glIDD_Flag;
	Data = glRoot_Flag||glInner_Flag;	//2003-12-04 10:11ø¿¿¸
	Data|= glService_Flag;				//2003-12-04 10:11ø¿¿¸
	Data|= glTestService;				//2003-12-04 10:11ø¿¿¸
	Data|= Data1 ;						//2003-12-04 10:11ø¿¿¸

	if(glTxA2_Flag && !glIDDProcess && (glCom_TxEn || (glRxA1_Back[4]==0x30 && Data)) && (glInternalFlag||glIDDPattern||glStateNo||glIDDSDR||glManuComFlag||glFireFlag))
	{
		DINT;
		SCC2A_RTS_ON;					     		// RTS ON Command
		EINT;
		
		if(glStateNo)
		{	
			glTxA2_Len = 20;		     			// STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2)
			Tx_Header_Protocol(10,IDD,PIS_Addr,0x1A,glTxBufA2); 	//∞Ì¡§ 
			Tx_Text_MODE2(&glTxBufA2[10]);	  	    		//¬˜≥ª π´«•Ω√ ∞Ì¡§ 
			
			memset(glGpBuf1,0x00,32);
			glStateNo=0;
		}
		else if(glIDDPattern)
		{	
			glTxA2_Len = 20;		     			// STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2)			
			if(glTestInnerCar)Tx_Header_Protocol(10,IDD,PIS_Addr,0x0B,glTxBufA2); // IDD ∫Ø∞Ê ∞°¥… 
			else Tx_Header_Protocol(10,IDD,PIS_Addr,0x1B,glTxBufA2);// IDD ∫Ø∞Ê ∞°¥… 
			Tx_Text_MODE6(&glTxBufA2[10]);			 	// ∆–≈œ ≈◊Ω∫∆Æ º≥¡§

			glIDDPattern =0;	
		}	
		else if(glInternalFlag)						//2003-12-08 1:23ø¿»ƒ
		{
			glTxA2_Len = glTextLen + 10;		     		// STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2)
			Tx_Header_Protocol(glTextLen,IDD,PIS_Addr,0x0a,glTxBufA2); //¬˜≥ª æ»≥ªπÆ «•√‚ 
			for(i=0;i<glTextLen-3;i++) glTxBufA2[i+10] = glIDDBuf[i];	
			
			glInternalFlag =0;					// ¬˜≥ª «•Ω√±‚ ≈ÎΩ≈ ∞°¥… 
			//glIndex++; 						// «•Ω√ Ω∫ƒ…¡Ï ƒ´øÓ≈Õ ¡ı∞°
			glIDDProcess = 1;					// tx ¡¯«‡¡ﬂ
		}
		else if(glManuComFlag)						//2003-12-08 1:22ø¿»ƒ
		{
			//glInternalFlag =0;						//2003-12-08 1:24ø¿»ƒ
			
			glTextLen = glTextMLen;					//2003-12-08 8:05ø¿»ƒ
			glTxA2_Len = glTextLen + 10;		    // STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2) //2003-12-08 6:41ø¿»ƒ
			Tx_Header_Protocol(glTextLen,IDD,PIS_Addr,0x0a,glTxBufA2); //¬˜≥ª æ»≥ªπÆ «•√‚ 
			for(i=0;i<glTextLen-3;i++) glTxBufA2[i+10] = glIDDMBuf[i];	//2003-12-08 6:38ø¿»ƒ
			
			glManuComFlag=0;			
		}	
		else if(glFireFlag)						//03-12-18 4:47ø¿»ƒ (»≠¿Áπﬂª˝Ω√)
		{
			glTextLen = glTextFLen;					//2003-12-08 8:05ø¿»ƒ
			glTxA2_Len = glTextLen + 10;		    // STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2) //2003-12-08 6:41ø¿»ƒ
			Tx_Header_Protocol(glTextLen,IDD,PIS_Addr,0x0a,glTxBufA2); //¬˜≥ª æ»≥ªπÆ «•√‚ 
			for(i=0;i<glTextLen-3;i++) glTxBufA2[i+10] = glIDDFBuf[i];	//2003-12-08 6:38ø¿»ƒ
			
			glFireFlag=0;			
		}			

		else if(glIDDSDR)						// 03-09-06 4:23ø¿»ƒ (¥Î±∏º≥¡§±‚)
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
				if(glIDDSDRCnt>=3) {glIDDSDR =0; glIDD_Flag=0;} //03-12-16 11:41ø¿¿¸
				if(!glIDDSDR && !glFDDSDR) 
				{
					TCMSSD_Format(TCMSSD,&glTxBufA1[3]);//03-12-17 3:58ø¿»ƒ
					glSDR_OK=1;
				}	
			}	
			Tx_Header_Protocol(10,glIDDAddr,PIS_Addr,0x07,glTxBufA2);// LDD ∞Ì¡§
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
	
	else if(!(glCom_TxEn||(glRxA1_Back[4]==0x30 && Data)))		// 03-09-15 11:33ø¿¿¸ (31h//33h//30h*service))
	{
		if(glInternalFlag){glInternalFlag =0; glIndex++;}		// 2003-12-09 9:21ø¿¿¸
		//glInternalFlag =0; 										// 2003-12-09 9:22ø¿¿¸
		glIDDPattern =0; glStateNo =0;
		glIDDSDR =0;glManuComFlag =0; glTxA2_Flag =1; 
		glIDD_Flag=0; //03-12-16 11:41ø¿¿¸
		glFireFlag=0; //03-12-18 4:48ø¿»ƒ
		glRoot_Flag =0; glService_Flag=0; glInner_Flag =0;
	}
}

/********************************************************
	≈ÎΩ≈ √§≥Œ ¿¸º€ π◊ ºˆΩ≈ (SCCB2 √§≥Œ)
*********************************************************/

void SCC_B2_Tx()
{
	int i;
	BYTE Data=0,Data1=0;
	
	Data1= glFDDSDR && glFDD_Flag;			//03-12-16 11:38ø¿¿¸
	
	Data = glRoot_Flag||glInner_Flag;		//2003-12-04 10:12ø¿¿¸
	Data|= glService_Flag;					//2003-12-04 10:12ø¿¿¸
	Data|= glTestService;					//2003-12-04 10:12ø¿¿¸
	Data|= glNo_Flag;						//2003-12-04 10:12ø¿¿¸
	Data|= glRN_Flag;						//2003-12-04 10:12ø¿¿¸
	Data|= Data1;							//2003-12-04 10:11ø¿¿¸
	glLDDDistance =0;						//2003-12-06 10:22ø¿¿¸

	if(glTxB2_Flag && (glCom_TxEn || (glRxA1_Back[4]==0x30 && Data)) && (glLDDPattern||glFSNDD_Flag||glFDDSDR||glLDDDistance))
	{
		DINT;
		SCC2B_RTS_ON;					
		EINT;
		
		glTxB2_Len = 10 + 10;						// STX(3) + Len(2) + ~Len(2) + Text(10) + etx(1) + BCC(2)

		if(glFSNDD_Flag)
		{
			Tx_Header_Protocol(10,FSNDD,PIS_Addr,0x1C,glTxBufB2); 	// FDD ∫Ø∞Ê ∞°¥…
			Tx_Text_MODE1(&glTxBufB2[10],glComDest,glComTrainNo);	// «‡º±, ø≠π¯ «ˆΩ√ µ•¿Ã≈Õ 
			
			if(glFSNDD_Flag) glFSNDD_Flag--; 	//2003-12-06 10:26ø¿¿¸
		}
		else if(glLDDPattern)
		{	
			if(glTestRoot)Tx_Header_Protocol(10,FSNDD,PIS_Addr,0x0B,glTxBufB2); // FDD ∫Ø∞Ê ∞°¥…
			else Tx_Header_Protocol(10,FSNDD,PIS_Addr,0x1B,glTxBufB2); // FDD ∫Ø∞Ê ∞°¥…

			Tx_Text_MODE6(&glTxBufB2[10]);			    	// ∆–≈œ ≈◊Ω∫∆Æ º≥¡§
			glLDDPattern =0;	
		}	
		else if(glLDDDistance)	
		{
			Tx_Header_Protocol(10,LDD,PIS_Addr,0x28,glTxBufB2); 	// LDD ∞Ì¡§
			Tx_Text_MODE8(&glTxBufB2[10],glComNow,glComNext,glComDest,glComStart,glDistance); // ∞≈∏Æ ¿ßƒ° µ•¿Ã≈Õ
			glLDDDistance=0;
		}	
		else if(glFDDSDR)						// 03-09-08 7:29ø¿»ƒ
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
				if(glFDDSDRCnt>=3){glFDDSDR =0;glFDD_Flag=0;}//03-12-16 11:41ø¿¿¸
				if(!glIDDSDR && !glFDDSDR) 
				{
					TCMSSD_Format(TCMSSD,&glTxBufA1[3]);//03-12-17 3:58ø¿»ƒ
					glSDR_OK=1;
				}
			}	
		
			Tx_Header_Protocol(10,glFDDAddr,PIS_Addr,0x07,glTxBufB2);// LDD ∞Ì¡§
			Tx_SDR_MODE(&glTxBufB2[10],glSDR_Command);		   // SDR Text
		}
		
		glTxBufB2[glTxB2_Len-3] = ETX;	
		
		glCRC_B2 = cal_CRC16(glTxB2_Len-5,&glTxBufB2[3]);
		glTxBufB2[glTxB2_Len-2] = (glCRC_B2>>8)&0xff;
		glTxBufB2[glTxB2_Len-1] = glCRC_B2&0xff;			
	
		glTxPB2 = 1;
		glTxB2_Flag =0; 
		SCC2_B_D = glTxBufB2[0] & 0xff;
		
		glRoot_Flag =0; glService_Flag=0; glInner_Flag =0; glNo_Flag=0; glRN_Flag=0; //2003-12-04 10:27ø¿¿¸
	}
	
	else if(!(glCom_TxEn||(glRxA1_Back[4]==0x30 && Data)))		// 03-09-15 11:33ø¿¿¸ (31h//33h//30h*service))
	{
		glFSNDD_Flag=0; glLDDPattern =0; glLDDDistance=0; glFDDSDR =0;
		glTxB2_Flag =1; glFDD_Flag=0;//03-12-16 11:41ø¿¿¸
		
		glRoot_Flag =0; glService_Flag=0; glInner_Flag =0;glNo_Flag=0; glRN_Flag=0; //2003-12-04 10:27ø¿¿¸
	}	
} 

/********************************************************
	≈ÎΩ≈ √§≥Œ ¿¸º€ π◊ ºˆΩ≈ (SCC2 √§≥Œ)
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

			for(i=0;i<12;i++) if(glRxA2_Back[8]==DAEGUIDDAddr_Buf[i]) break; // 03-09-06 4:24ø¿»ƒ (¥Î±∏º≥¡§±‚)
			glSDR_Buf[i] = glRxA2_Back[11];	
		}
		glRxA2_Flag=0;			
	}
}

/********************************************************
	≈ÎΩ≈ √§≥Œ ºˆΩ≈ (SCCB2 √§≥Œ)
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
			
			for(i=0;i<6;i++) if(glRxB2_Back[8]==DAEGUFDDAddr_Buf[i]) break; //// 03-09-06 4:25ø¿»ƒ (¥Î±∏º≥¡§±‚)
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

	if(glComNext && glComNow && glComDest)		// ø™ƒ⁄µÂ∞° '0'¿Ã æ∆¥— ∞ÊøÏ 
	{	
		if(PreTrainNo != glComTrainNo) Start=1; // Ω√πﬂø™ ƒ⁄µÂ 		
		else Start = 0;
		if(glComNext == glComDest) End = 1;	// ¡æ¬¯ø™ ƒ⁄µÂ 	
		else End =0;
	
		if(Start&&End) 		glInfo =4;	// Ω√πﬂ-¡æ¬¯
		else if(Start && !End) 	glInfo =1;	// Ω√πﬂ-¡ﬂ∞£
		else if(!Start && End) 	glInfo =3;	// ¡ﬂ∞£-¡æ¬¯
		else if(!Start && !End) glInfo =2;	// ¡ﬂ∞£-¡ﬂ∞£ 
	}	
	else glInfo = 0;
}

void Find_StationInfoGp()
{
	int Start=0,Mid=0,End=0;

	if(glComNext && glComNow && glComDest)		// ø™ƒ⁄µÂ∞° '0'¿Ã æ∆¥— ∞ÊøÏ 
	{	
		if(glComStart==glComNow) Start=1;       // Ω√πﬂø™ ƒ⁄µÂ 		
		else Start = 0;
		if(glComNext==glComDest)End = 1;	// ¡æ¬¯ø™ ƒ⁄µÂ 	
		else End =0;
	
		if(Start&&End) 		glInfo =4;	// Ω√πﬂ-¡æ¬¯
		else if(Start && !End) 	glInfo =1;	// Ω√πﬂ-¡ﬂ∞£
		else if(!Start && End) 	glInfo =3;	// ¡ﬂ∞£-¡æ¬¯
		else if(!Start && !End) glInfo =2;	// ¡ﬂ∞£-¡ﬂ∞£ 
	}	
	else glInfo = 0;
}

/************************************************************/
/************************************************************/
/************************************************************/
/************************************************************/
BYTE Code_Change(BYTE Code) //03-12-22 4:49ø¿»ƒ
{
	BYTE Change_Code =0;
	
	if(Code==0x92 || Code==0x91 || Code==0x10 || Code==0x11) Change_Code = 9; //πÆæÁ
	else if(Code==0x98 || Code==0x97 || Code==0x16 || Code==0x17) Change_Code = 12;//¥ŸªÁ
	else if(Code==0x9c || Code==0x9b || Code==0x1a || Code==0x1b) Change_Code = 14;//¥ÎΩ«
	else if(Code==0x9e || Code==0x9d || Code==0x1c || Code==0x1d) Change_Code = 15;//∞≠√¢
	else if(Code==0xa0 || Code==0x9f || Code==0x1e || Code==0x1f) Change_Code = 16;//∞Ë∏Ì¥Î
	else if(Code==0xa2 || Code==0xa1 || Code==0x20 || Code==0x21) Change_Code = 17;//º∫º≠∞¯¥‹
	else if(Code==0xa6 || Code==0xa5 || Code==0x24 || Code==0x25) Change_Code = 19;//¿Ã∞Ó
	else if(Code==0xa8 || Code==0xa7 || Code==0x26 || Code==0x27) Change_Code = 20;//øÎªÍ
	else if(Code==0xaa || Code==0xa9 || Code==0x28 || Code==0x29) Change_Code = 21;//¡◊¿¸	
	else if(Code==0xac || Code==0xab || Code==0x2a || Code==0x2b) Change_Code = 22;//∞®ªÍ
	else if(Code==0xae || Code==0xad || Code==0x2c || Code==0x2d) Change_Code = 23;//µŒ∑˘
	else if(Code==0xb0 || Code==0xaf || Code==0x2e || Code==0x2f) Change_Code = 24;//≥ª¥Á
	else if(Code==0xb2 || Code==0xb1 || Code==0x30 || Code==0x31) Change_Code = 25;//π›∞Ì∞≥
	else if(Code==0xb4 || Code==0xb3 || Code==0x32 || Code==0x33) Change_Code = 26;//º≠πÆΩ√¿Â
	else if(Code==0xb6 || Code==0xb5 || Code==0x34 || Code==0x35) Change_Code = 27;//π›ø¯¥Á
	else if(Code==0xb8 || Code==0xb7 || Code==0x36 || Code==0x37) Change_Code = 28;//ªÔ¥ˆ
	else if(Code==0xba || Code==0xb9 || Code==0x38 || Code==0x39) Change_Code = 29;//ºˆº∫
	else if(Code==0xbc || Code==0xbb || Code==0x3a || Code==0x3b) Change_Code = 30;//π¸æÓ
	else if(Code==0xbe || Code==0xbd || Code==0x3c || Code==0x3d) Change_Code = 31;//º∫º≠±∏√ª
	else if(Code==0xc0 || Code==0xbf || Code==0x3e || Code==0x3f) Change_Code = 32;//∏∏√Ã
	else if(Code==0xc4 || Code==0xc3 || Code==0x42 || Code==0x43) Change_Code = 34;//¥„∆º
	else if(Code==0xc6 || Code==0xc5 || Code==0x44 || Code==0x45) Change_Code = 35;//ø¨»£
	else if(Code==0xc8 || Code==0xc7 || Code==0x46 || Code==0x47) Change_Code = 36;//¥Î∞¯ø¯
	else if(Code==0xca || Code==0xc9 || Code==0x48 || Code==0x49) Change_Code = 37;//∞ÌªÍ
	else if(Code==0xcc || Code==0xcb || Code==0x4a || Code==0x4b) Change_Code = 38;//Ω≈∏≈
	else if(Code==0xce || Code==0xcd || Code==0x4c || Code==0x4d) Change_Code = 39;//ªÁø˘

	return Change_Code&0xff;	
}

/************************************************************/
/*	Read Data From TCMS (From TCMS)
/*      0x60,0x02/0x13/0x20/0x30~0x34/«ˆ¿Áø™/¥Ÿ¿Ωø™/¡æ¬¯ø™/√‚¿‘πÆ/ø≠π¯(2)/00+00+00/CRC/ 
/************************************************************/
BYTE jang=0;
void RD_FROM_TCMS()									// TCMS∑Œ ∫Œ≈Õ ¡§»Æ«— µ•¿Ã≈Õ ∞™¿ª ºˆΩ≈«— ∞ÊøÏ 				
{
	int i;
	
	//*********7ø˘ 5¿œ π´»øƒ⁄µÂ ºˆΩ≈ «œø¥¿ª ∞ÊøÏ ºˆ¡æ ¡∂¿€ ∞°¥… «œ∞‘ «“∞Õ************
	if(StationCode_Definite(&glRxA1_Back[5],&glRxA1_Back[6])&0xff!=0x02) {jang++;}
	if(jang>=0x05) {glRxA1_Back[4]==0x30;jang=0;}
	//****************************************************************
	//////////////////////////////////////////////////////////////////////////////////
	if((glRxA1_Back[4]==0x31)||(glRxA1_Back[4]==0x33)) glCom_TxEn =1;		// PIS Tx enable (¿¸º€∞°¥…)
	else glCom_TxEn =0;								// PIS Tx enable (¿¸º€∫“∞°)
	
	if((glRxA1_Back[4]>=0x31) && (glRxA1_Back[4]<=0x34)) glTCMS_STATE =1;		// µ•¿Ã≈Õ ¿Ø»ø
	else glTCMS_STATE =0;								// µ•¿Ã≈Õ π´»ø 
	//////////////////////////////////////////////////////////////////////////////////
	if((PreTCMSState ^ glTCMS_STATE) && glTCMS_STATE) glState_Flag =1;
	PreTCMSState = glTCMS_STATE;

	if((glRxA1_Back[4]&0xff)==0x30){}					//2004-03-26 2:42ø¿»ƒ
	else {glComTrainNo =((glRxA1_Back[9]<<8)&0xff00)|glRxA1_Back[10];}	//03-12-18 2:11ø¿»ƒ

	if((glRxA1_Back[7]==0)||(glRxA1_Back[7]>ROOT_BODY_MAX)) glComDest=0;//03-12-19 4:15ø¿»ƒ
	else glComDest = glRootList[glRxA1_Back[7]-1];		//03-12-18 2:11ø¿»ƒ 03-12-19 4:14ø¿»ƒ

	/*if(glRxA1_Back[4]&0xff!=0x30)						//2004-03-26 2:42ø¿»ƒ
	{
		glComTrainNo =((glRxA1_Back[9]<<8)&0xff00)|glRxA1_Back[10];	//03-12-18 2:11ø¿»ƒ
		if((glRxA1_Back[7]==0)||(glRxA1_Back[7]>ROOT_BODY_MAX)) glComDest=0;//03-12-19 4:15ø¿»ƒ
		else glComDest = glRootList[glRxA1_Back[7]-1];		//03-12-18 2:11ø¿»ƒ 03-12-19 4:14ø¿»ƒ
	}*/	
	
	
	
	if(((glNextRaw != glRxA1_Back[6])||(PreTrainNo != glComTrainNo)) && (glRxA1_Back[5]!=glRxA1_Back[6]) && glDOOR)	// «ˆ¿Áø™ != ¥Ÿ¿Ωø™¿Œ∞ÊøÏ 
	{
		glComNow  = MatchCode[glRxA1_Back[5]];			// «ˆ¿Áø™ 03-12-17 2:05ø¿»ƒ 2003-12-23 5:35ø¿»ƒ
		glComNext = MatchCode[glRxA1_Back[6]];			// ¥Ÿ¿Ωø™ 03-12-17 2:05ø¿»ƒ 2003-12-23 5:35ø¿»ƒ
//		glComDest = glRxA1_Back[7];						// «‡º±ø™ 03-12-17 2:05ø¿»ƒ	
		glComDoor = glRxA1_Back[8]&0x3;					// √‚¿‘πÆ πÊ«‚ 	
//		glComTrainNo =((glRxA1_Back[9]<<8)&0xff00)|glRxA1_Back[10];		// ø≠π¯ º≥¡§ 
	
		Rd_StationName_CodeNew(glComNow,glNowBuf,glGpNow); 				// «ˆ¿Áø™ ¿Ã∏ß ¿˙¿Â («—±€, øµπÆ, GP )
		Rd_StationName_CodeNew(glComNext,glNNextBuf,glGpNext);			// ¥Ÿ¿Ωø™ ¿Ã∏ß ¿˙¿Â («—±€, øµπÆ, GP )
		Rd_StationName_CodeNew(glComDest,glDestBuf,glGpDest); 			// «‡º±ø™ ¿Ã∏ß ¿˙¿Â («—±€, øµπÆ, GP )
		
		if(PreTrainNo != glComTrainNo)					// ø≠π¯¿Ã πŸ≤Ô∞ÊøÏ 
		{		
			glComStart = glComNow; 						// Ω√πﬂø™ ƒ⁄µÂ ¿ŒΩƒ 
			glMax_StationNo = NVSRAM_Get_StopP(glComStart,glComDest,glStationList);
			if(glMax_StationNo) NVSRAM_Rd_StationName(glMax_StationNo,glStationList);
		}
				
		if(glStopNo)
		{
			for(i=0;i<glMax_StationNo;i++) if(glStationList[i]==glComNow){glStationP=i; break;} //«ˆ¿Áø™¿« ∆˜¿Œ≈Õ		 
		}
		else glStationP =0;	
		for(i=0;i<glTotalRoot;i++) {glRootP = 0xff; if(glRootList[i]==glComDest) {glRootP=i; break;}}						
		
		glFSNDD_Flag=SCC2B_CNT;								// ø≠π¯,«‡º± ¿¸º€
		glSpotChangeEn=0;									// ¿⁄µøø™¡ı∞° ∞°¥… «√∑°±◊ ≈¨∏ÆæÓ 

		Find_StationInfo(); 								// ø™¡§∫∏ ∞ªΩ≈ 		 											     	
		glDisplayIndex_Cnt = NVSRAM_Display_Schedule(glComNow,glComNext,glInfo);// «•√‚ πÆæ»¿« ∞πºˆ 
		
		glIndex = 0;														// «•√‚ Index ƒ´øÓ≈Õ ≈¨∏ÆæÓ 
		glChkDistance = 0;
		glIndexCnt = Find_Schedule_Cnt(IndexBuf,glDisplayIndex_Cnt,0,0);
	}
	
	else if((glRxA1_Back[5]==glRxA1_Back[6])&& glRxA1_Back[5] && glRxA1_Back[6] && glDOOR) // √‚¿‘πÆ ø≠∏Æ∞Ì ƒ⁄µÂ∞° ¿‘∑¬µ«¡ˆ æ ¿∫∞ÊøÏ
	{
		//glComNow = glComNext;	 //03-12-17 2:24ø¿»ƒ
		//Rd_StationName_CodeNew(glComNow,glNowBuf,glGpNow); 			// «ˆ¿Áø™ ¿Ã∏ß ¿˙¿Â («—±€, øµπÆ, GP )03-12-17 2:24ø¿»ƒ
	}
	
	else if(!glRxA1_Back[5] && !glRxA1_Back[6] && glDOOR && (glRxA1_Back[4]!=0x30)) // √‚¿‘πÆ ø≠∏Æ∞Ì ƒ⁄µÂ∞° 00¿Œ∞ÊøÏ 2003-12-02 11:31ø¿¿¸2003-12-04 11:59ø¿¿¸
	{
			glComNow =0;
			glComNext =0;
			
			Rd_StationName_CodeNew(glComNow,glNowBuf,glGpNow); 		// «ˆ¿Áø™ ¿Ã∏ß ¿˙¿Â («—±€, øµπÆ, GP )
			Rd_StationName_CodeNew(glComNext,glNNextBuf,glGpNext); 	// «ˆ¿Áø™ ¿Ã∏ß ¿˙¿Â («—±€, øµπÆ, GP )
	}	
	
	glNextRaw = glRxA1_Back[6];										// TCMS ¿‘∑¬πﬁ¿∫ ¥Ÿ¿Ωø™ (¿Ã¿¸∞™)
	
	if(glRxA1_Back[4]&0xff==0x30){}
	else {PreTrainNo = glComTrainNo;}
	
	//PreTrainNo = glComTrainNo;
	PreNow = glComNow;
	PreNext = glComNext;
}

/********************************************************
	CPU¿« √ ±‚»≠ «‘ºˆ
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
	*(int *)0x110000 = 0; 		// Boot SW => ¿Œ≈Õ∑¥∆Æ∏¶ ∫ª∑°¿« ±‚¥…¿∏∑Œ..
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
	Para_Initial();
	SanDisk_Process();						// Ω√∞£¿Ã ∏π¿Ã ∞…∏Æπ«∑Œ EINT¿Ã»ƒø° »∞º∫»≠

	EINT; 								// global interrupt enable
	
	while(1)
	{		
		glDebugCnt++;
		
		if(Mode_Flag==1)		{SanDisk_Process(); Mode_Flag = 0;}
		else if(Mode_Flag==4)	{TrainNo_Check(); Mode_Flag = 0;}
		
		if(glRx_Flag && (glTCMSErr ||!glTCMS_STATE)) Gp_Receive();
		else if(glRx_Flag && !glTCMSErr && glTCMS_STATE) GP_MANU_STATE();
		
		if(glDoorAuto_Flag)
		{
			glTestDoorOpen=1; gpDOOROPEN; 
			glDoorAutoClose =1; 
			Auto_Station_Cnt(); 
			glDoorAuto_Flag=0;
		}			
		if(glA1CRC_Err==1) {RD_FROM_TCMS(); glA1CRC_Err=0;}
	}
}

	
/********************************************************
 [¿⁄µøø™ ¡ı∞° Ω√≥êΩ∫] 
 ≈ÎΩ≈ ∫“∞°ªÛ≈¬ø°º≠¿« √‚¿‘πÆ ø≠∏≤/Ω√«Ë¡∂∞«ø°º≠¿« µµæÓ ø≠∏≤
*********************************************************/

void Auto_Station_Cnt()
{
	if(glSpotChangeEn && (glTCMSErr || !glTCMS_STATE))	// Between ¡ˆ¡° ≈Î∞˙ 
	{
		if(glStationP < glMax_StationNo-1) glStationP++;// ø™ ∆˜¿Œ≈Õ ¡ı∞° 
		if(glStationP == glMax_StationNo-1)		// √÷¡æ Update 
		{
			glComNow = 0; 
			memset(glNNextBuf,0,45);		//¡æ¬˜ø™ µµ¬¯Ω√
			memset(TrainNumber[glStationP+1].KorName,0x00,15);
			memset(TrainNumber[glStationP+1].EngName,0x00,30);
			
			if(glTestAutoDoor && glTestService)
			{	
				glTestSpeed=0; glDistance=0;
			   	gpDISTANCE(glDistance);gpSPEED(glTestSpeed);
			   	glTestDoorOpen =1; gpDOOROPEN; 		
			   	glTestService=0; glTestAutoDoor=0;
			}   	
		}
		else 
		{
			glComNext = glStationList[glStationP+1];//¥Ÿ¿Ωø™ ƒ⁄µÂ Update
			memcpy(glNNextBuf,TrainNumber[glStationP+1].KorName,15);
			memcpy(&glNNextBuf[15],TrainNumber[glStationP+1].EngName,30);
		}	
		glComNow = glStationList[glStationP];		//«ˆ¿Áø™ ƒ⁄µÂ Update
		memcpy(glNowBuf,TrainNumber[glStationP].KorName,15);
		memcpy(&glNowBuf[15],TrainNumber[glStationP].EngName,30);

		GpDataChange(glGpNow,glNowBuf);			//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ
		GpDataChange(glGpNext,glNNextBuf);		//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ 

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
 [¿⁄µøø™ ¡ı∞° Ω√≥êΩ∫] 
 ≈ÎΩ≈ ∫“∞°ªÛ≈¬ø°º≠¿« √‚¿‘πÆ ø≠∏≤/Ω√«Ë¡∂∞«ø°º≠¿« µµæÓ ø≠∏≤
*********************************************************/

void Auto_Station_Cnt_00()
{
	if(glSpotChangeEn)
	{
		if(glStationP < glMax_StationNo-1) glStationP++;// ø™ ∆˜¿Œ≈Õ ¡ı∞° 
		if(glStationP == glMax_StationNo-1)				// √÷¡æ Update 
		{
			glComNow = 0; 
			memset(glNNextBuf,0,45);					//¡æ¬˜ø™ µµ¬¯Ω√
			memset(TrainNumber[glStationP+1].KorName,0x00,15);
			memset(TrainNumber[glStationP+1].EngName,0x00,30);
		}
		else 
		{
			glComNext = glStationList[glStationP+1];	//¥Ÿ¿Ωø™ ƒ⁄µÂ Update
			memcpy(glNNextBuf,TrainNumber[glStationP+1].KorName,15);
			memcpy(&glNNextBuf[15],TrainNumber[glStationP+1].EngName,30);
		}	
		glComNow = glStationList[glStationP];			//«ˆ¿Áø™ ƒ⁄µÂ Update
		memcpy(glNowBuf,TrainNumber[glStationP].KorName,15);
		memcpy(&glNowBuf[15],TrainNumber[glStationP].EngName,30);

		GpDataChange(glGpNow,glNowBuf);					//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ
		GpDataChange(glGpNext,glNNextBuf);				//GP «ˆΩ√∏¶ ¿ß«— µ•¿Ã≈Õ 

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
	µµæÓ µ•¿Ã≈Õ Ω√≥êΩ∫ 
*********************************************************/

void Door_Sequence()
{
	ONTD(~DICE&0x2,&glDOOR,1,&glDOOR200ms);					// DOOR ¿‘∑¬¿« √§≈Õ∏µ¿ª πÊ¡ˆ 200mS¡ˆø¨
 	if(PreDoor^glDOOR && glDOOR) 						// √‚¿‘πÆ ø≠∏≤ Ω√¡° 
	{
		if(glSpotClose){glStateNo_Flag=0; glStateNo=0; glSpotClose=0;};	// π´«•Ω√ »Æ¿Œ 03-09-08 8:24ø¿»ƒ
		
		glDisplayIndex_Cnt=0;						// √‚¿‘πÆ ø≠∑»¿ª ∂ß ¿Ã¿¸ µ•¿Ã≈Õ ≈¨∏ÆæÓ∏¶ ¿ß«— π´«•Ω√ ¿¸º€ 
		if(!glIDDSDR && !glFDDSDR) 					// ªÛ≈¬ »Æ¿Œ¿Ã æ∆¥— ∞ÊøÏ(¬˜≥ª, ø≠π¯, «‡º±, ≥Îº±)
		{
			memset(glSDR_Buf,0x01,18);  				// «•Ω√±‚ ªÛ≈¬ µ•¿Ã≈Õ ≈¨∏ÆæÓ 03-09-08 3:59ø¿»ƒ
			glIDDSDR=1;glFDDSDR=1;    				// «•Ω√±‚ ªÛ≈¬ µ•¿Ã≈Õ Flag Set, Counter√ ±‚»≠ 
			glIDDSDRCnt=0; glFDDSDRCnt=0;				// «•Ω√±‚ ªÛ≈¬ µ•¿Ã≈Õ ø‰√ª ƒ´øÓ≈Õ ≈¨∏ÆæÓ 
		}	
		
		glComNow = glComNext;	 //03-12-17 2:24ø¿»ƒ
		Rd_StationName_CodeNew(glComNow,glNowBuf,glGpNow); //03-12-17 2:25ø¿»ƒ
	}	
	if(PreDoor^glDOOR && !glDOOR) 						
	{		
		if(!glFIRE) glStateNo=1;  					// √‚¿‘πÆ ¥›»˚ Ω√¡° 03-09-08 8:20ø¿»ƒ 03-12-18 5:22ø¿»ƒ
		if(glStationP == glMax_StationNo-1 &&(glTCMSErr || !glTCMS_STATE))
		{
			glComNow = 0; glComStart =0; glComDest =0; glComNext=0;
			memset(glNNextBuf,0,45);				//¡æ¬˜ø™ µµ¬¯Ω√
			memset(glNowBuf,0,45);
			memset(glDestBuf,0,45);
		}
	}	
	if(glDOOR && !glTestService) Auto_Station_Cnt();			// ∏¿« ¡÷«‡Ω√¥¬ ∏¿« ¡÷«‡¿« √‚¿‘πÆ ø≠∏≤¡ˆ∑…ø° ¿««ÿº≠∏∏ ø™¡ı∞° 
	PreDoor = glDOOR;
}

/********************************************************
	»≠¿Á πﬂª˝ Ω√≥êΩ∫ 
*********************************************************/

void Fire_Sequence() //03-12-18 4:59ø¿»ƒ
{
	glFIRE = ~DICE&0x01;
	
	if(PreFire^glFIRE && glFIRE)	// »≠¿Á ¿‘∑¬ Ω≈»£ ¿‘∑¬
	{
		glStateNo_Flag=1; glStateNo=1;

		NVSRAM_Find_IM(92,glSourBuf);
		glTextFLen = Insert_SpecialCodeNew(glSourBuf,glIDDFBuf)+3;	//2003-12-08 6:37ø¿»ƒ
		glFireFlag =1;	
	}	
	else if(PreFire^glFIRE && !glFIRE)	{glStateNo_Flag=0;glStateNo=1;}

	PreFire= glFIRE;
}
/******************************************************** 
	∞≈∏Æµ•¿Ã≈Õ Ω√≥êΩ∫  // √÷¥Î º”µµ ø°º≠¿« ∞≈∏Æ »Æ¿Œ (100mS)                               
*********************************************************/

void Distance_Sequence()		
{
	ONTD(~DI_STATUS_RD& 0x1,&glPULSE,1,&glPULSE100ms);			// ∞≈∏Æ ¿‘∑¬¿« √§≈Õ∏µ¿ª πÊ¡ˆ 100mS¡ˆø¨   	
	if((PrePulse^glPULSE)&& glPULSE) glPULSE_Cnt++;				// ªÛΩ¬ ø°¡ˆø°º≠ ƒ´øÓ≈Õ ¡ı∞° 	                
	PrePulse = glPULSE;			                                                                                

	if(glDOOR) glPULSE_Cnt=0; 				

   	if((glTestService || glTestRoot || glTestInnerCar)&&(glPULSE_Cnt||(!glTCMSErr&&glTCMS_STATE)))
	{
		glDistance = glPULSE_Cnt *25; 					// Ω«¡¶ øÓ«‡ ∞≈∏Æ 
		glTestSpeed =0; gpDISTANCE(glDistance);gpSPEED(glTestSpeed);
		glTestInnerCar=0;glTestService=0;glTestRoot=0; glTestDoorOpen =1; gpTESTCLR; 
		glLDDPattern =1; glIDDPattern =1;				// ¬˜≥ª, ≥Îº±, «‡º±, ø≠π¯ ∆–≈œ ≈◊Ω∫∆Æ
		glSpotChangeEn=0;
		
		glIndex = 0;									// «•√‚ Index ƒ´øÓ≈Õ ≈¨∏ÆæÓ 
		glChkDistance = 0;
		PreDistance = 0;
		glIndexCnt = Find_Schedule_Cnt(IndexBuf,glDisplayIndex_Cnt,0,0);
	}
	else if(glTestService && !glPULSE_Cnt)					// ∏¿« ¡÷«‡Ω√«Ë¡ﬂ¿Œ∂ß,Ω«¡¶ ∞≈∏Æ∆ﬁΩ∫∞° æ¯¥¬ ∞ÊøÏ
	{
		if(!(cint09%10) && !glTestDoorOpen)glDistance += (int)((float)glTestSpeed *10.0 /36.0 +0.5);
		if(glTestDoorOpen) glDistance = 0;
	}
	else glDistance = glPULSE_Cnt *25; 					// Ω«¡¶ øÓ«‡ ∞≈∏Æ 	

	/////////////////////////////////////////////////////////////////////////  ≈ÎΩ≈ Ω∫ƒ…¡Ï ¿¸º€ 
	
	if((glIndexCnt==glIndex)&&(PreDistance != glDistance)&& glDistance)	// ≈ÎΩ≈ ¿¸º€ ∏∂π´∏Æ π◊ µ•¿Ã≈Õ ∞≈∏Æ ∫Ø»≠Ω√
	{
		glIndexCnt = Find_Schedule_Cnt(IndexBuf,glDisplayIndex_Cnt,glChkDistance,glDistance);
		glChkDistance = glDistance;
		glIndex = 0;				
	}
	PreDistance = glDistance;					
}

/******************************************************** 
	SanDisk Input Check Routine 
	No Connection 	: 0x03 (FDD_STATUS_RD&0x03)
	Connection 	: 0x00 (FDD_STATUS_RD&0x03)
*********************************************************/

void Sandisk_Input_Check()
{
	//ONTD(~FDD_STATUS_RD&0x03,&glSAN,2,&glSAN300ms);
	glSAN = ~FDD_STATUS_RD&0x03;

	if((glSAN^PreState)&&glSAN) Mode_Flag = 1;				// Low Edge Detect  (ƒ´µÂ ¿‘∑¬Ω√-√ ±‚¥¬ ¡¶ø‹)
	else if((glSAN^PreState)&&!glSAN) 
	{
		gpCARDERR; 
	   	glSectorStartOffset = 0;					// Sector √ ±‚»≠ (π›µÂΩ√ « ø‰)
	   	glErr_Code = 1;
	}
	PreState = glSAN;
}

/********************************************************
	Display_Check()
*********************************************************/

void Send_IDD_Check()
{
	int nTemp;
	
	if((glIndex < glIndexCnt) && !glIDDProcess)				// glIndex¥¬ Tx ≈ÎΩ≈ ∑Á∆æ¿Ã Ω√¿€µ» ∞ÊøÏ 
	{
		nTemp = IndexBuf[glIndex];
		
		if(DisplayIndex[nTemp].Type==3) {glSpotChangeEn=1; memset(glGpBuf1,0x00,32); glIndex++;}
		else if(DisplayIndex[nTemp].Type==1)
		{
			if(glStateNo_Flag)
			{
				glIndex++;							// 03-07-26 11:39ø¿¿¸
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
				glIndex++;								// 03-07-26 11:39ø¿¿¸
				memset(glGpBuf1,0x00,32);
			}	
			else 
			{
				//Find_NewPR(DisplayIndex[nTemp].Number,glSourBuf);
				NVSRAM_Find_PR(DisplayIndex[nTemp].Number,glSourBuf);
				
				glTextLen = Insert_SpecialCodeNew(glSourBuf,glIDDBuf)+3;
				GpInsert(glIDDBuf,glGpBuf1,glTextLen-3); 
			 	glInternalFlag=1;						// 03-07-26 11:39ø¿¿¸
			 }	
		}	
	}	
}

/********************************************************
	Send_GP_Check()
*********************************************************/
void Send_GP_Check()
{
	int nTemp,i;
	BYTE pDData[50];
	
	if(glTxA3_Flag)			 						
	{
		switch(gpDisplay_No)
		{
			case 0x01:											// ∏ﬁ¥∫»≠∏È 
				if((glTestCnt>=5)&& glTestCnt && NOT(glTest)) 
				{
					gpTEST; gpDisplay_No=6; glTestCnt=0;
				   	gpDISTANCE(0);gpSPEED(0);
				}
				else if(glTest)glTestCnt =0; 
				glSDR_Delay=0;glSdr_Flag =0; glSDR500ms =0; 	// 2003-12-05 8:15ø¿»ƒ (∏ﬁ¥∫πˆ∆∞ √Î±ﬁΩ√ √ ±‚»≠) 
				break;

			case 0x02:											// ¿⁄±‚¡¯¥‹ »≠∏ÈΩ√
				if(glIDDSDR || glFDDSDR) gpSDRCHK;
				else if(glSDRComplete) {SDR_Routine_Complete(glSDR_Buf);glSDR_Delay=0;}	
				//else if(glSDR_OK) {SDR_Routine_Complete(glSDR_Buf);glSDR_OK=0; gpSETCLR;}	//2003-12-16 9:54ø¿¿¸
				else if(glSDR_OK) {gpSETCLR; glSDR_OK=0; glSDR_Delay=1; glSdr_Flag =1;}	//2003-12-16 9:54ø¿¿¸
				break;
			
			case 0x03:											//2003-12-04 10:35ø¿¿¸
				if(glNogp_Flag && glStopNo) {gpSETCLR; glNogp_Flag=0;}
				else if(glNogp_Flag && !glStopNo) {gpSETERR; glNogp_Flag=0;}
				break;
			
			case 0x05:	// ºˆµøº≥¡§ 
				gp_WritingStr(0x82,6,glGpNext);					// ¥Ÿ¿Ωø™ «•±‚ 
				gp_WritingWord(0x64,glComTrainNo);				// ø≠π¯ «•±‚ 	
				gp_WritingStr(0x96,6,glGpDest);					// «‡º± «•√‚
				break;
				
			case 0x06:											// Ω√«Ëπˆ∆∞ »≠∏ÈΩ√ 							
				gpDISTANCE(glDistance); gpSPEED(glTestSpeed);
				if(glTestDoorOpen) gpDOOROPEN;					// ø≠∏≤πÆ «•Ω√ 
				else gpDOORCLOSE;								// ¥›»˚πÆ «•Ω√ 
									
				if(glSpotChangeEn) gpSTATIONBLK;				// ø™¡ı∞° «ˆΩ√
				else gpSTATIONCLR;								// ø™¡ı∞° º“∞≈ 
	
				nTemp = glTestInnerCar|((glTestService<<1)&0x02)|((glTestRoot<<2)&0x04)|((glTestAutoDoor<<3)&0x08) ;	
				gp_WritingWord(0x41,nTemp);						// Ω√«Ë º≥¡§πˆ∆∞ (GP¿¸ø¯¿Á∫Œ∆√Ω√)
				break;			
			
			case 0x07:											// ¡ˆ¡°∫∏¡§ »≠∏ÈΩ√
				if(glSpotDis_Out) {gpSPOTEN; glSpotDis_Flag=0; glSpotDis_Out=0;glSpot500mS_Cnt=0;}
				break;
			case 0x08:											// «‡º±º≥¡§ »≠∏ÈΩ√
				if(glRootDis_Out) {gpROOTEN; glRootDis_Flag=0; glRootDis_Out=0;glRoot500mS_Cnt=0;}
				break;		
			
			case 0x04: 											// ªÛ≈¬»≠∏È
				if(glTCMSErr) gpCOMERR;
				else gpCOMCLR;
				if(glStateNo_Flag) gpSTATENOSET;
				else gpSTATENOCLR;
				if(glErr_Code) gpCARDERR; 
				else gpCARDOK;
				
				gp_WritingWord(0x64,glComTrainNo);				// ø≠π¯ «•±‚ 	
				gp_WritingStr(0x96,6,glGpDest);					// «‡º± «•√‚
				
				memset(glVer,0x20,10);

				glVer[0] = ((glRxA1_Back[4]>>4)&0xf)%10+0x30; 
				glVer[1] = (glRxA1_Back[4]&0xf)%10+0x30;
				glVer[2] = ((ROM_VER /100)+0x30);
				glVer[3] = (ROM_VER %100)/10+0x30; 
				glVer[4] = '.'; 
				glVer[5] = (ROM_VER %100)%10+0x30; 
				
				//nTemp = Check_HeaderÃ(EDIT_VER_OFFST);
				nTemp = NVSRAM(NVSRAM_EDIT_VER_OFFST)&0xff;

				glVer[6] = ((nTemp /100)+0x30);
				glVer[7] = (nTemp %100)/10+0x30;
				glVer[8] = '.'; 
				glVer[9] = (nTemp %100)%10+0x30;
				gp_WritingStr(0xc8,5,glVer);					// ¡¶æÓƒ⁄µÂ/Rom Ver/Edit Ver/03-09-15 4:47ø¿»ƒ
				
				if(!glIndex)gp_WritingStr(0x12C,1,ZeroBuf);
				else gp_WritingStr(0x12C,16,glGpBuf1);			// IM,PR«•√‚πÆæ» 03-06-14 11:12ø¿¿¸

				if(!glDOOR && glDistance >= 50)					// 2003-12-04 12:56ø¿»ƒ
				{
					gpAFTERSTATION; 
					Rd_StationName_CodeNew(glComNext,glNNextBuf,glGpNext); // 2003-12-02 12:50ø¿»ƒ
					gp_WritingStr(0x82,6,glGpNext);				// ¥Ÿ¿Ωø™ «•√‚
				}
				else 
				{
					gpNOWSTATION;
					Rd_StationName_CodeNew(glComNow,glNowBuf,glGpNow); //2003-12-02 12:50ø¿»ƒ
					gp_WritingStr(0x82,6,glGpNow);				// ¿Ãπ¯ø™ «•√‚	
				}	
				Distance_Display(glDistance);
				
				if(glDOOR) gpSTATEOPEN;
				else gpSTATECLOSE;	
			default: 	
				break;
		} // switch end	
	} // tx flag end

	if(glTxA3_Flag)	
	{
		
		if(glSdr_Flag)				//2003-12-05 7:58ø¿»ƒ
		{
			for(i=0;i<18;i++) {pDData[i*2]= 0x08; pDData[i*2+1]= 0x07;} // ∞¯πÈ «•√‚ (2055) 2003-12-05 8:18ø¿¿¸	
		   gp_WritingStr(220,52,pDData);								// ªÛ≈¬ µ•¿Ã≈Õ «•√‚ 2003-12-05 8:18ø¿¿¸
		   glSdr_Flag =0; glSDR500ms =0;
		}	   						// 2003-12-05 7:58ø¿»ƒ
		
		if(glTurnOff_Flag) {gpTURNOFF;glTurnOff_Flag1=1;}
		if(!glTurnOff_Flag_Cmp) glTx_Cnt = glTxA3_Len;			// data size∞° 0¿œ∂ß¥¬ ∫∏≥ª¡ˆ æ ¥¬¥Ÿ.
		else 													// 2003-12-02 10:08ø¿¿¸
		{
			memset(glGpTxBuf,0x00,glTxA3_Len);					// πˆ∆€ ø≈±‚±‚ 
			glTxA3_Len =0;
			glTx_Cnt =0;
		}
		
		if(glTx_Cnt)											// 2003-12-02 9:59ø¿¿¸
		{
			memcpy(glGpTxBuf,glTxBufA3,glTxA3_Len);				// πˆ∆€ ø≈±‚±‚ 
			SCC3_A_D = glGpTxBuf[0] & 0xff; glTxPA3 = 1; glTxA3_Flag= 0; glTxA3_Len =0;
		}
	}
}

/********************************************************
	Name 	: DOOR_AUTO()
	Purpose : √‚¿‘πÆ ¿⁄µø∞≥∆Û - Ω√«Ë »≠∏È
*********************************************************/

void DOOR_AUTO()
{
	if(glTestAutoDoor && glTestService)
	{
		ONTD(glSpotChangeEn,&glTestAutoDoor_Out,10,&glTestAuto5S_Cnt);			// 100mS * 10 = 1Sec
		ONTD(glDoorAutoClose,&glDoorAutoClose_Out,15,&glTestAuto5S_Cnt2);		// 100mS * 15 = 1.5Sec
		
		if(!glSpotChangeEn && !glDistance) glDoorAutoClose =1;					// 2003-12-04 12:30ø¿»ƒ
		else glDoorAutoClose =0;												// 2003-12-04 12:41ø¿»ƒ
		if(glTestAutoDoor_Out^PreAutoDoor && glTestAutoDoor_Out && glSpotChangeEn) glDoorAuto_Flag =1;	
		
		if(glDoorAutoClose_Out) {glTestDoorOpen =0;glDoorAutoClose=0;gpDOORCLOSE;}
		PreAutoDoor = glTestAutoDoor_Out;
	}
	else {glTestAuto5S_Cnt=0;glTestAuto5S_Cnt2=0;}
}

/********************************************************
	Timer0 100mS  Ω√≥êΩ∫ 
*********************************************************/

void c_int09()
{	
	cint09++;
	EINT;

 	////////////////////////////////////////////////////////////////////////// 100mS Routine

 	Distance_Sequence();
 	ONTD(glSpotDis_Flag,&glSpotDis_Out,2,&glSpot500mS_Cnt);
 	ONTD(glRootDis_Flag,&glRootDis_Out,2,&glRoot500mS_Cnt);
 	ONTD(glSDR_Delay,&glSDRComplete,5,&glSDR500ms);		// SDR -> gp «•√‚  2003-12-05 9:31ø¿¿¸
 	Fire_Sequence();//03-12-18 5:01ø¿»ƒ
 	
	SCC_A2_Rx();
	SCC_B2_Rx();
 		
 	////////////////////////////////////////////////////////////////////////// 200mS Routine
 	switch(cint09%2)
 	{
 		case 0x00:
			Door_Sequence();
			Send_IDD_Check(); 		
 			
			SCC_A2_Tx();						// ¬˜≥ª «•Ω√±‚ 
			SCC_B2_Tx();						// ø≠π¯, «‡º± (event πﬂª˝ π◊ SDR(200mS))		
 			break;
 		case 0x01:
 			ONTD(glTestCnt,&glTest,50,&glTest10s);			// Ω√«Ëπˆ∆∞ »Æ¿Œ ∑Á∆æ 	
 			
 			if(glTurnOff_Cnt ==1) {glTurnOff_Flag =1;}//gpTURNOFF;} //2003-12-02 10:10ø¿¿¸Ω√«Ë¿ª ¿ß«ÿ ªË¡¶ 
 			if(glTurnOff_Cnt)glTurnOff_Cnt--;
 			break;
	}
	
	///////////////////////////////////////////////////////////////////////// 500mS Routine
 	switch(cint09%5)
 	{
 		case 0x00:
 			Sandisk_Input_Check();
 			break;
 		case 0x01:
 			//ONTD(glSDR_Delay,&glSDRComplete,1,&glSDR500ms);		// SDR -> gp «•√‚ 
			break;
 		case 0x03:
			//if(glSDR_OK)TCMSSD_Format(TCMSSD,&glTxBufA1[3]);		//03-12-17 3:58ø¿»ƒ
			Send_GP_Check();
 			break;	
 		default:break;	
	}
	
 	////////////////////////////////////////////////////////////////////////// 1S Routine
	switch(cint09%10)
	{
		case 0x02:
			glTCMSCnt++; 	
			if(glTCMSCnt >= 5)
			{
				glTCMSErr=1; glTCMSCnt=5; glTCMS_STATE=0;
				PreTCMSState = glTCMS_STATE;				// 2003-12-03 6:41ø¿»ƒ
				if(glRxA1_Back[4]==0x31) glCom_TxEn =0;		// 2003-11-28 3:41ø¿»ƒ (pis1 ø°º≠ offµ»∞ÊøÏ)	
			}
			else glTCMSErr = 0;	
			
			if((PreTCMSErr^glTCMSErr && !glTCMSErr)||glState_Flag) {gpSTATE; glState_Flag =0; gpDisplay_No=4;} //2003-12-03 ºˆ¡§
//			if((PreTCMSErr^glTCMSErr && !glTCMSErr)||glState_Flag) {glChange_Flag=1;glState_Flag =0;} //2003-12-16 9:38ø¿¿¸ 
//			if(glChange_Flag && !glTurnOff_Flag) {gpSTATE; gpDisplay_No=4; glChange_Flag=0;} //2003-12-03 ºˆ¡§
			PreTCMSErr=glTCMSErr;
			break;
		case 0x00: glLDDDistance=1;					// ≥Îº± ∞≈∏Æ ¿¸º€ Flag 
		case 0x05:
			DOOR_AUTO();						// √‚¿‘πÆ ¿⁄µø∞≥∆Û
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
		if(nCmdCode&0x20) // RR3 A√§≥Œ RX ¿œ∂ß..
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
		if(nCmdCode&0x10) // A√§≥Œ TX ¿œ∂ß..
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
				glScc1a_offcnt =8; //03-12-22 6:10ø¿»ƒ 7
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
		if(nCmdCode&0x20) // RR3 A√§≥Œ RX ¿œ∂ß..
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
			else if(glRxPA2==9)	{if(glRxBufA2[glRxPA2]==0x08) glRxPA2++; else glRxPA2=0;} //03-09-15 11:06ø¿¿¸
			else if(glRxPA2>=(glRxA2_Len-1)){glRxA2_Flag =1; glRxPA2=0; glRxA2_Cnt++;} 
			else glRxPA2++; 
		} 
	
		///////////////////////////////////////////////// 
		if(nCmdCode&0x04) // RR3 B√§≥Œ RX ¿œ∂ß..
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
			else if(glRxPB2==9)	{if(glRxBufB2[glRxPB2]==0x08) glRxPB2++; else glRxPB2=0;} //03-09-15 11:06ø¿¿¸		
			else if(glRxPB2>=(glRxB2_Len-1)){glRxB2_Flag =1; glRxPB2=0; glRxB2_Cnt++;} 
			else glRxPB2++; 
		} 
	
		///////////////////////////////////////////////// 
		if(nCmdCode&0x10) // A√§≥Œ TX ¿œ∂ß..
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
		if(nCmdCode&0x02) // B√§≥Œ TX ¿œ∂ß..
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
			} // ¿Œ≈Õ∑¥∆Æ ∆“∆√ ≈¨∏ÆæÓ 
		}
	}
}

/********************************************************
	SCC3A : GP »≠∏È ¿¸º€ (19200bps)
	SCC3B : RS232 Monitor(19200bps)
*********************************************************/
void c_int03(void)
{
	BYTE nCmdCode,i;
	cint03++;
	
	for(i=0;i<3;i++)
	{
		SCC3_A_C = 0x03;
		nCmdCode = SCC3_A_C & 0xff;	
	
		if(!(nCmdCode & 0x36)) break;
		///////////////////////////////////////////////// 
		if(nCmdCode&0x20) // RR3 A√§≥Œ RX ¿œ∂ß..
		{
			glRx_Buf[glRx_Pos] = SCC3_A_D & 0xff;
			if(glRx_Pos==0){if(glRx_Buf[0]==0x1B) glRx_Pos++; else glRx_Pos=0;} // 0 bit
			else if(glRx_Pos==3) {glRx_Pos=0; glRx_Flag=1;}
			else glRx_Pos++;		
		} 
	
		///////////////////////////////////////////////// 
		if(nCmdCode&0x04) // RR3 B√§≥Œ RX ¿œ∂ß..
		{
			glRxBufB3[glRxPB3] = (SCC3_B_D & 0xff);
		
			if(!glRxPB3)			{if(glRxBufB3[glRxPB3]==0x60) glRxPB3++; else glRxPB3=0;}
			else if(glRxPB3==1)		{if(glRxBufB3[glRxPB3]==0x02) glRxPB3++; else glRxPB3=0;}
			else if(glRxPB3>=(glRxB3_Len-1)){glRxB3_Flag =1; glRxPB3=0; glRxB3_Cnt++;} 
			else glRxPB3++; 
		} 
	
		///////////////////////////////////////////////// 
		if(nCmdCode&0x10) // A√§≥Œ TX ¿œ∂ß..
		{	
			if(glTxPA3 < glTx_Cnt) 
			{
				SCC3_A_D = glGpTxBuf[glTxPA3++]&0xff; 
				SCC3_A_C = 0x38;
			}
			else 
			{
				glTxPA3 = 0; glTxA3_Flag =1; 
				glTx_Cnt = 0; SCC3_A_C = 0x28;
				
				if(glTurnOff_Flag1) {glTurnOff_Flag=0; glTurnOff_Flag1 =0; glTurnOff_Flag_Cmp =1;}
			}
		}
		
		///////////////////////////////////////////////// 
		if(nCmdCode&0x02) // B√§≥Œ TX ¿œ∂ß..
		{	
			if(glTxPB3<glTxB3_Len)
			{
				SCC3_B_D = glTxBufB3[glTxPB3++]&0xff;
				SCC3_B_C = 0x38;
			}
			else 
			{
				glTxPB3=0; glTxB3_Flag=1; 
				SCC3_B_C = 0x28; 
			}
		}
	}	
}

/********************************************************
	Timer1 1mS  Ω√≥êΩ∫ 
	RTS CONTROL ¿ª ¿ß«— Ω√∞£ º≥¡§
*********************************************************/

void c_int10()
{	
	cint10++;

	//////////////////////////////////////////////////////////////// µø±‚ Rx -> Tx Delay // ¥Î±∏ º≥¡§±‚ 03-07-21 6:50ø¿»ƒ
	if(glScc1a_Delaycnt==1) SCC_A1_Tx();	
	if(glScc1a_Delaycnt) glScc1a_Delaycnt--; 
	
	//////////////////////////////////////////////////////////////// µø±‚ RTS control (On)
	if(glScc1a_cnt == 7) {SCC1_A_C = 10; SCC1_A_C = 0xa0;} //03-12-22 6:10ø¿»ƒ
	if(glScc1a_cnt == 1) 
	{
		glTxA1_Flag = 0;
		glTxPA1 = 1;
		SCC1_A_D = glTxBufA1[0] & 0xff;
	}
	if(glScc1a_cnt) glScc1a_cnt--; 
	
	//////////////////////////////////////////////////////////////// µø±‚ RTS control (Off)
	if(glScc1a_offcnt == 3) {SCC1_A_C = 10; SCC1_A_C = 0xa8;} //7 03-12-22 6:10ø¿»ƒ
	if(glScc1a_offcnt == 1) {SCC1A_RTS_OFF;}	
	if(glScc1a_offcnt) glScc1a_offcnt--; 
	
	///////////////////////////////////////////////////////////////// ∫Òµø±‚ RTS control (Off)
	if(glScc2a_offcnt == 1) {SCC2A_RTS_OFF;}	
	if(glScc2a_offcnt) glScc2a_offcnt--; 

	///////////////////////////////////////////////////////////////// ∫Òµø±‚ RTS control (Off)
	if(glScc2b_offcnt == 1) {SCC2B_RTS_OFF;}	
	if(glScc2b_offcnt) glScc2b_offcnt--; 
}	

/////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////

void SDR_Routine_Complete(BYTE *pSData)					// GPøÕ ¿Á»Æ¿Œ «“ ∞Õ 
{
	int i;
	BYTE pDData[120];

	for(i=0;i<18;i++) 									//¥Î±∏ ¡ˆ«œ√∂ 
	{
		if(pSData[i]) {pDData[i*2]= 0x08; pDData[i*2+1]= 0x06;} // X «•√‚ (2054)
		else {pDData[i*2]= 0x08; pDData[i*2+1]= 0x05;}		// O «•√‚ (2053)	
	}
	
	gp_WritingStr(220,18,pDData);					// Address ∏¶ º¯¬˜¿˚¿∏∑Œ ¿‚æ∆º≠ «•√‚ «“ ∞Õ 
}

/////////////////////////////////////////////////////////////////////////

void SD_Format_Change(BYTE *pDData)
{
	int i;

	for(i=1;i<18;i++) TCMSSD[i].DR.BYTE = 0x00;
	
	TCMSSD[1].DR.BIT.B0 =  0; 			// IDC (¡¶æÓ±‚ ∞Ì¿Â)
	TCMSSD[1].DR.BIT.B1 =  1; 			// LED =1, LCD =0;
	TCMSSD[1].DR.BIT.B2 =  0;			// LED =0; LCD =1;

	TCMSSD[2].DR.BIT.B7 = pDData[14];	// TC1 - ¡§∏È
	TCMSSD[2].DR.BIT.B6 = pDData[16];	// TC1 - ø≠π¯
	TCMSSD[6].DR.BIT.B0 = pDData[12];	// T1 - «‡º±√¯∏È 1
	TCMSSD[6].DR.BIT.B1 = pDData[13];	// T1 - «‡º±√¯∏È 2
	TCMSSD[9].DR.BIT.B7 = pDData[15];	// TC2 - ¡§∏È
	TCMSSD[9].DR.BIT.B6 = pDData[17];	// TC2 - ø≠π¯
		
	TCMSSD[10].DR.BIT.B0= pDData[0];
	TCMSSD[10].DR.BIT.B1= pDData[6];
	TCMSSD[11].DR.BIT.B0= pDData[1];
	TCMSSD[11].DR.BIT.B1= pDData[7];	
	TCMSSD[14].DR.BIT.B0= pDData[2];
	TCMSSD[14].DR.BIT.B1= pDData[8];
	TCMSSD[15].DR.BIT.B0= pDData[3];
	TCMSSD[15].DR.BIT.B1= pDData[9];
	TCMSSD[16].DR.BIT.B0= pDData[4];
	TCMSSD[16].DR.BIT.B1= pDData[10];
	TCMSSD[17].DR.BIT.B0= pDData[5];
	TCMSSD[17].DR.BIT.B1= pDData[11];				
}

void TCMSSD_Format(SD *Type,BYTE *pDData)		
{
	int i;
	
	SD_Format_Change(glSDR_Buf);

	pDData[0] = 0x30;
	for(i=1;i<18;i++) pDData[i] = Type[i].DR.BYTE;
	pDData[18]= ROM_VER; 		//rom Ver
	pDData[19]= 0x00; 			//spare
}	


