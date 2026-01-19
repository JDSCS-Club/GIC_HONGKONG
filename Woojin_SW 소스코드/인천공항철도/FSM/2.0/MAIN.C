/*******************************************************
	표시기 프로그램
	2003.5
	작성 : Yeon jun sang
********************************************************/
//   노선 LED Color 0=황색/1=Green/2=red/3=무색/
//  
/******************************************************************
	CRC table
*******************************************************************/
unsigned int CRC_Table[] = {
 0x0000,  0x365e,  0x6cbc,  0x5ae2,  0xd978,  0xef26,  0xb5c4,	0x839a,
 0xff89,  0xc9d7,  0x9335,  0xa56b,  0x26f1,  0x10af,  0x4a4d,	0x7c13,
 0xb26b,  0x8435,  0xded7,  0xe889,  0x6b13,  0x5d4d,  0x07af,	0x31f1,
 0x4de2,  0x7bbc,  0x215e,  0x1700,  0x949a,  0xa2c4,  0xf826,	0xce78,
 0x29af,  0x1ff1,  0x4513,  0x734d,  0xf0d7,  0xc689,  0x9c6b,	0xaa35,
 0xd626,  0xe078,  0xba9a,  0x8cc4,  0x0f5e,  0x3900,  0x63e2,	0x55bc,
 0x9bc4,  0xad9a,  0xf778,  0xc126,  0x42bc,  0x74e2,  0x2e00,	0x185e,
 0x644d,  0x5213,  0x08f1,  0x3eaf,  0xbd35,  0x8b6b,  0xd189,	0xe7d7,
 0x535e,  0x6500,  0x3fe2,  0x09bc,  0x8a26,  0xbc78,  0xe69a,	0xd0c4,
 0xacd7,  0x9a89,  0xc06b,  0xf635,  0x75af,  0x43f1,  0x1913,	0x2f4d,
 0xe135,  0xd76b,  0x8d89,  0xbbd7,  0x384d,  0x0e13,  0x54f1,	0x62af,
 0x1ebc,  0x28e2,  0x7200,  0x445e,  0xc7c4,  0xf19a,  0xab78,	0x9d26,
 0x7af1,  0x4caf,  0x164d,  0x2013,  0xa389,  0x95d7,  0xcf35,	0xf96b,
 0x8578,  0xb326,  0xe9c4,  0xdf9a,  0x5c00,  0x6a5e,  0x30bc,	0x06e2,
 0xc89a,  0xfec4,  0xa426,  0x9278,  0x11e2,  0x27bc,  0x7d5e,	0x4b00,
 0x3713,  0x014d,  0x5baf,  0x6df1,  0xee6b,  0xd835,  0x82d7,	0xb489,
 0xa6bc,  0x90e2,  0xca00,  0xfc5e,  0x7fc4,  0x499a,  0x1378,	0x2526,
 0x5935,  0x6f6b,  0x3589,  0x03d7,  0x804d,  0xb613,  0xecf1,	0xdaaf,
 0x14d7,  0x2289,  0x786b,  0x4e35,  0xcdaf,  0xfbf1,  0xa113,	0x974d,
 0xeb5e,  0xdd00,  0x87e2,  0xb1bc,  0x3226,  0x0478,  0x5e9a,	0x68c4,
 0x8f13,  0xb94d,  0xe3af,  0xd5f1,  0x566b,  0x6035,  0x3ad7,	0x0c89,
 0x709a,  0x46c4,  0x1c26,  0x2a78,  0xa9e2,  0x9fbc,  0xc55e,	0xf300,
 0x3d78,  0x0b26,  0x51c4,  0x679a,  0xe400,  0xd25e,  0x88bc,	0xbee2,
 0xc2f1,  0xf4af,  0xae4d,  0x9813,  0x1b89,  0x2dd7,  0x7735,	0x416b,
 0xf5e2,  0xc3bc,  0x995e,  0xaf00,  0x2c9a,  0x1ac4,  0x4026,	0x7678,
 0x0a6b,  0x3c35,  0x66d7,  0x5089,  0xd313,  0xe54d,  0xbfaf,	0x89f1,
 0x4789,  0x71d7,  0x2b35,  0x1d6b,  0x9ef1,  0xa8af,  0xf24d,	0xc413,
 0xb800,  0x8e5e,  0xd4bc,  0xe2e2,  0x6178,  0x5726,  0x0dc4,	0x3b9a,
 0xdc4d,  0xea13,  0xb0f1,  0x86af,  0x0535,  0x336b,  0x6989,	0x5fd7,
 0x23c4,  0x159a,  0x4f78,  0x7926,  0xfabc,  0xcce2,  0x9600,	0xa05e,
 0x6e26,  0x5878,  0x029a,  0x34c4,  0xb75e,  0x8100,  0xdbe2,	0xedbc,
 0x91af,  0xa7f1,  0xfd13,  0xcb4d,  0x48d7,  0x7e89,  0x246b,	0x1235
};


//#define DOWNLOAD

//typedef unsigned char BYTE;
typedef unsigned char UCHAR;
//typedef unsigned int WORD;
typedef unsigned int USHORT;

#include "ALL_DEF.h"
#include "debug3x.h"

#include "i85c30.h"
#include "i85c30.c"

#include "NandFlash.h"
#include "NorFlash.h"

#include "LDM.h"

/***********************************************************
	#define
************************************************************/
#define RELAY_ON (*(int *)0x818000) = 1
#define RELAY_OFF (*(int *)0x818000) = 0

#define RS485_ON RELAY_ON
#define RS485_OFF RELAY_OFF

//#define HEXA_SW ((~(*(BYTE *)0x814000))&0xff)

#define NOR_F_B_E_A 0x50000
#define DOT_VIDEO 0x100000			// 화면에 담을 메모리 번지(데이터)

#define BOOT_TO_INT (*(int *)0x810000) = 0

#define INT_TO_BOOT ((*(int *)0x82c000)=0) //Int를 Boot Mode바꿈

#define WDI_CS ((*(int *)0x828000) = 0)		// 프로그램이 돌고 있다는 정보를 Tms32에 전달한다.

/***********************************************************

	변수 정의
	
************************************************************/

BYTE gHexaSw;

extern BYTE gRxBuffer[512];	// 데이터 수신 버퍼 [기본길이 16+spare 16]
extern BYTE gRxPos;			// 데이터 수신 위치 [초기값->0]
extern int gRxComplete;		// 수신 정상 Flag [수신비정상->0, 수신정상->1]

extern BYTE gRxExcCode[512];	// 수신 실행 코드
extern BYTE gRxStTemp;		// 수신받은 역코드를 계산
extern int DATA_LEN;


int STR_BIT=0;		//역이 시작하는 위치
int END_BIT=0;		//역이 끝나는 위치
int NOW_BIT=0;				//다음역 정보를 가르킨다.
int OPEN_SAT=0;			//현재 도착 역
unsigned int glDebugCnt=0;
unsigned int ComP=0;		//비교 함수...지나온 역과 앞으로 갈역을 RED LED 와 GREEN LED로 구분...

int BACK_BIT = TRUE;		//행선역 도착하였을 경우 반대 방향으로 이동시.
int ChangBit = FALSE;		//깜박이는 LED 표현 이동 방향
int ChangBit2= FALSE;		//정지역 LED
int PAT=FALSE;				//패턴 TEST
BYTE SAVE_NOW=0;			//역 정보를 기억. 다음역으로 생신 되었을 경우 LED깜빡인다.
int STOP_STA=FALSE;			//역에서 다음역 정보로 갱신 될경우 이동 LED 와 정지 LED 구분.
int STOP_MOVE=FALSE;

int COUNT=FALSE;			//SDR 정보 응답시 delay 를 count 한다.
int HI_SEND=FALSE;			//RTS를 상의로 올린다.
int LOW_SEND=FALSE;			//RTS를 하의로 떨어 틀린다.
int num_TX=0;				//delay count

int LINE_DATA_1=0;

int LED_DATA_CHACK=1;
/***********************************************************

	함수 정의
	
************************************************************/

void c_int01(void); //
void c_int02(void); // SCC Interrupt
void c_int03(void); //
void c_int04(void); // UART Interrupt
void c_int06(void); // Serial Interrupt
void c_int09(void); // Timer 0
void c_int10(void); // Timer 1

void DSP_INIT(void); // DSP의 초기화

void PATTREN();
void DATA_LED();
void RTS(void);
void ADDRESS_JUMP(void);
void STATION_DB(void);
void NOW_VLAUE_COMPARISON(void);
void SEND_DATA(void);
void JUMPDOWLOAD(void);
void START_CHAK_DATA(void);
void AUTO_LINE_PRINT(void);

int IsBCCOK(BYTE *pDat,int nLen);
int cal_CRC16(int no,BYTE *dat);

/***********************************************************

	메인 프로그램
	
************************************************************/
BYTE ROAD=0x00;	//거리 값을 기억	
BYTE STATION_LIST[11]={44,45,46,47,48,49,50,51,52,53,54};//역 코드를 입력한다.

int Nor_T_F=0;
int Nor_Cou=1;
int Nor_Sav_C=0;
int Nor_Jump=0;
BYTE NOR_VAL[30];

BYTE Rem_Str=0x00;
BYTE Rem_End=0x00;
BYTE Rem_Now=0x00; 
BYTE Rem_Open=0x00;

/***** 채내 =1; 노선 =2; 열번 =3;정.행 =4; 측_행=5 *******/
char *gpVersion = "2Ver10"; // 버젼

void main(void)
{
	int i,j;
	
	BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	
	WDI_CS;
	DINT; // 전역 인어텁트 불가능
	DSP_INIT() ;
	SCC_8530_Initial(); // 통신 칩 초기화
	Debug3xInit(TMS320C32);
	LdmInit();
	BOOT_TO_INT;
	gHexaSw = HEXA_SW;
	EINT; // 전역 인어텁트 가능

	RS485_ON; // RS485가능하게 하는 Relay 기동
	RS485_TX_DISABLE;
	SAVE_NOW = (gRxExcCode[14]>gRxExcCode[13]) ? gRxExcCode[14] : gRxExcCode[13]; 
	if((nOR[NOR_F_B_E_A]&0xff)==0xff) NorFlashBlockErase(0x05);
	else
	{
		do
		{
			Nor_Jump=(NOR_F_B_E_A+(Nor_Sav_C*20));
			for(i=0;i<=20;i++) gRxExcCode[i]=nOR[(Nor_Jump+i)];
			Nor_Sav_C++;
		}while((gRxExcCode[20]&0xff)!=0xff);
	}
	
	START_CHAK_DATA();
	
	gRxComplete=TRUE;
	
	WDI_CS;
	while(1)
	{
		//BIT_OPE();
		ComP=0;
		if(gRxComplete)		//통신이 이루어 질경우만 발생
		{
			
			ROAD=COM_DAT(gRxExcCode[15],gRxExcCode[16]);		//거리 값을 기억
			gRxComplete= FALSE;
			if((gRxExcCode[9]&0xff)==0x28)
			{
				
				if(gRxExcCode[14]<gRxExcCode[13])	
				{
					
					BACK_BIT=FALSE; //<-
				  	STATION_DB();
					END_BIT=((END_BIT*3)+0x0d);
					STR_BIT=((STR_BIT*3)+0x0d);
					NOW_BIT=((NOW_BIT*3)+0x0d)-(0x01);
					OPEN_SAT=((OPEN_SAT*3)+0x0d);
					
					ADDRESS_JUMP();
					
				}
				else
				{	
					
					BACK_BIT=TRUE;	//->
					STATION_DB();
					END_BIT=((END_BIT*3)+0x0d);
					STR_BIT=((STR_BIT*3)+0x0d);
					NOW_BIT=((NOW_BIT*3)+0x0d)+(0x01);
					OPEN_SAT=((OPEN_SAT*3)+0x0d);
					
					ADDRESS_JUMP();
				}
				
				if((Rem_Now!= NOW_BIT)||(Rem_Open!=OPEN_SAT)||(Rem_Str!=STR_BIT)||(Rem_End!=END_BIT)) 
				{
					Rem_Now=NOW_BIT;
					Rem_Open=OPEN_SAT;
					Rem_Str=STR_BIT;
					Rem_End=END_BIT;
					memcpy(&NOR_VAL[0],&gRxExcCode[0],20);
					if(Nor_Sav_C>=3270) Nor_T_F=NorFlashBlockErase(0x05),Nor_Sav_C=0;
					else Nor_T_F=1;
					
				}
				LED_DATA_CHACK=1;
				
			}
			else if((gRxExcCode[9]&0xff)==0x0b)	PAT=TRUE,LED_DATA_CHACK=0;
			else if((gRxExcCode[9]&0xff)==0x1b)	PAT=FALSE,LED_DATA_CHACK=1;
			else if((gRxExcCode[9]&0xff)==0x07)	//상태 DATA 응답 
			{	
				COUNT=TRUE;
				SEND_DATA();
				
			}
			else if((gRxExcCode[9]&0xff)==0x1f)
			{
				JUMPDOWLOAD();
			}
			
			NOW_VLAUE_COMPARISON();
			
		}
		
		if((!(Nor_Cou%800))&&Nor_T_F==TRUE)	// NorFlash Memory Write
		{

			Nor_T_F=0;
			Nor_Cou=1;
			Nor_Jump=(NOR_F_B_E_A+(Nor_Sav_C*20));
			for(i=0;i<=19;i++) NorFlashWrite((Nor_Jump+i),(NOR_VAL[i]&0xff));
			Nor_Sav_C++;
		}
		
		if(num_TX>=0x03)
		{
			COUNT=FALSE;
			num_TX=0;
			
			if(SCC1_Init_AChl.TxEndFlag)	LOW_SEND=TRUE;
			else	HI_SEND=TRUE;
			
			RTS();
		}
	}
	
}

/**********************************************************
		JUMPDOWLOAD
***********************************************************/
void JUMPDOWLOAD()
{
	INT_TO_BOOT;
	asm(" BR 000000H"); //0x000000 번지로 점프
}

/**********************************************************
		START_CHAK_DATA
***********************************************************/

void START_CHAK_DATA()
{

	int DATA_Pos=0,i=0;
	BYTE CHK_CRC=0;
	BYTE *p_CHK=(BYTE *)DOT_VIDEO;

	for(i=0;i<30;i++) gRxBuffer[i]=(p_CHK[i]&0xff);
	//memcpy(gRxBuffer,DOT_VIDEO,600);

	for (DATA_Pos=0;DATA_Pos<30;DATA_Pos++)
	{

		switch(DATA_Pos)
		{
			// 데이터 프레임 중 STX의 3바이트가 "aabbcc"인지 확인
			case 1:
				if((gRxBuffer[0]&0xff)!=0xaa) DATA_Pos = 30;

				break;
			case 2:
				if((gRxBuffer[1]&0xff)!=0xbb) DATA_Pos = 30;

				break;
			case 3:
				if(gRxBuffer[2]&0xff!=0xcc) DATA_Pos = 30;

				break;
			// end of STX Check
			case 7:
				if((COM_DAT_HAP((gRxBuffer[3]&0xff),(gRxBuffer[4]&0xff),(gRxBuffer[5]&0xff),(gRxBuffer[6]&0xff))&0xffff)!=0xffff) DATA_Pos=30;

				break;
			case 8:
				if(!(gRxBuffer[7]&0xff==0xf5||gRxBuffer[7]&0xff==0xf8||gRxBuffer[7]&0xff==gHexaSw)) gRxPos = 0;

				break;
			default:
				DATA_LEN=COM_DAT(gRxBuffer[3],gRxBuffer[4]);
				if(DATA_Pos >=(DATA_LEN+10))
				{

					CHK_CRC=COM_DAT(gRxBuffer[(DATA_LEN+8)],gRxBuffer[(DATA_LEN+9)]);
					if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxBuffer[3]))==CHK_CRC)		// BCC 체크가 OK일때
					{
						DATA_Pos = 30;			// 데이터 수신 위치를 초기화
						memcpy(gRxExcCode,gRxBuffer,(DATA_LEN+10));
						gRxComplete = TRUE;
						

					}
					else DATA_Pos = 30;
				}
				break;
		}
	}
	memset(gRxBuffer,0x00,600);

}

/***********************************************************
		NOW_VLAUE_COMPARISON(비교)   
************************************************************/

void NOW_VLAUE_COMPARISON(void)
{
	if(ROAD!=0x00) SAVE_NOW=OPEN_SAT;
	if(SAVE_NOW!=OPEN_SAT)//||(SAVE_NOW)==(STR_BIT)||(SAVE_NOW)==(END_BIT))
	{
		ChangBit=FALSE;
		STOP_STA=TRUE;	//정지역 LED 깜박이는 부분
		STOP_MOVE=FALSE;
		
	}
	else
	{
		ChangBit2=FALSE;
		STOP_MOVE=TRUE;	//이동 LED  깜박이는 부분
		STOP_STA=FALSE;
		
	}	
	
	/*
		if(((OPEN_SAT)==(END_BIT)||(OPEN_SAT)==(STR_BIT))&&ROAD==0)
		{
			ChangBit=FALSE;
			STOP_MOVE=FALSE;
			STOP_STA=TRUE;	//정지역 LED 깜박이는 부분
		}
	*/
	
}
/***********************************************************
		STATION_DB   
************************************************************/
void STATION_DB(void)
{
	int i;
	for(i=0;i<11;i++) 
	{
		if(BACK_BIT==FALSE)
		{
			if((STATION_LIST[i]&0xff)==(gRxExcCode[14]&0xff)) STR_BIT=(BYTE)i;
			if((STATION_LIST[i]&0xff)==(gRxExcCode[13]&0xff)) END_BIT=(BYTE)i;
		}
		else
		{
			if((STATION_LIST[i]&0xff)==(gRxExcCode[14]&0xff)) END_BIT=(BYTE)i;
			if((STATION_LIST[i]&0xff)==(gRxExcCode[13]&0xff)) STR_BIT=(BYTE)i;
		}
		
		if((STATION_LIST[i]&0xff)==(gRxExcCode[12]&0xff)) NOW_BIT=(BYTE)i;
		if((STATION_LIST[i]&0xff)==(gRxExcCode[11]&0xff)) OPEN_SAT=(BYTE)i;
	}
}


/***********************************************************
		HEX_SWITCH BIT OPERATION(연산)   
************************************************************/

void BIT_OPE(void)
{
	int i;
	BYTE CHANG_HEX_1[4];
	BYTE CHANG_HEX_2[4];
	BYTE CHANG_HEX_A=0x00;
	BYTE CHANG_HEX_B=0x00;
	BYTE HI=0x00;
	BYTE LO=0x00;
	
	CHANG_HEX_A=((HEXA_SW)&0x0f);
	CHANG_HEX_B=((HEXA_SW>>4)&0x0f);
	for(i=0;i<4;i++) 
	{	
		CHANG_HEX_1[i]=0x01&(CHANG_HEX_A>>(3-i));
		CHANG_HEX_2[i]=0x01&(CHANG_HEX_B>>(3-i));
	}
	for(i=0;i<4;i++)
	{
		HI=(HI<<1)|(CHANG_HEX_1[(3-i)]);
		LO=(LO<<1)|(CHANG_HEX_2[(3-i)]);
	}
	gHexaSw= (LO<<4)|((HI)&0x0f);
}

/**********************************************************
				ARRERS_증가 계산!!!! 
***********************************************************/
void ADDRESS_JUMP(void)
{
	if(STR_BIT>=17)STR_BIT+=6;
	if(STR_BIT>=41)STR_BIT+=6;
	
	if(END_BIT>=17)END_BIT+=6;
	if(END_BIT>=41)END_BIT+=6;
	
	if(NOW_BIT>17)NOW_BIT+=6;
	if(NOW_BIT>41)NOW_BIT+=6;	
	
	if(OPEN_SAT>17)OPEN_SAT+=6;
	if(OPEN_SAT>41)OPEN_SAT+=6;
	
}

/***********************************************************

		PATTREN TEST
//1~48(49~64,71)  //+1//   73~112  //+3//  121~168(169~184,192)
//65~70                   113~117           185~191

A[]={65,66,67,68,69,70,113,114,115,116,117,185,186,187,188,189,190,191}
B[]={1,2,9,10,17,18,25,26,33,34,41,42,73,74,81,82,97,98,105,106,121,122,129,130,137,138,145,146,153,154,
     161,162}
************************************************************/
int num=0;
int jang=0;
int Station_cnt=0;
BYTE Line_Buff[200];
BYTE Station_All[20]={65,66,67,68,69,70,113,114,115,116,117,185,186,187,188,189,190,191};

BYTE Station_Led[40]={1,2,9,10,17,18,25,26,33,34,41,42,73,74,81,82,97,98,105,106,121,122,129,130,
                      137,138,145,146,153,154,161,162};
                      
BYTE Station[20]={65,66,67,68,69,70,113,114,115,116,117,185,186,187,188,189,190,191};
int BB=0,EE=0;
void PATTREN(void)
{
	
	int i,j,k,AA=0,CC=0,DD=0;
	num++;
	BB=0;EE=0;
	
	memset(Line_Buff,0x03,200);
	
	//jang=(num%4);
	/*if(PAT)
	{
		for(j=0;j<4;j++)
		{	
			for(i=0;i<200;i++)	LDM_DATA=jang;
			LdmLatchClk(0);
			
			//for(i=0;i<0xffff;i++);
		}	
	}
	else	
	{
		for(i=0;i<200;i++) 	LDM_DATA=0;
		LdmLatchClk(0);
	}*/
	
	
   if(PAT)
   {
   	//BB=(jang-1)/8; 
   	jang=(num%193);
   	
   	if(jang>=49&&jang<=70)        {num=73;}
   	else if(jang>=113&&jang<=117) {num=121;}
   	else if(jang>=169){num=0;Station_cnt=0;}
   	
   	jang=(num%193);
   	
   	DD=(jang%8);
   	if(jang>=1&&jang<=48&&(DD==1))         {Station_cnt++;}
   	else if(jang>=73&&jang<=112&&(DD==1))  {Station_cnt++;}	
   	else if(jang>=121&&jang<=168&&(DD==1)) {Station_cnt++;}
   	
   	BB=Station[Station_cnt];
   	
   	for(i=192;i>0;i--)
   	{
   		
   		CC=(i%8);
   		   		
   		if(i>=49&&i<=64)              {Line_Buff[i]=3;}
   		else if(i>=169&&i<=184)       {Line_Buff[i]=3;}
   		else if(i>=1&&i<=48)
   		{
   			if(CC==1||CC==2) 	{Line_Buff[i]=3;}
   			else if(jang<=i) 	{Line_Buff[i]=1;}
   			else if(jang>i)  	{Line_Buff[i]=2;}
   		}
   		else if(i>=73&&i<=112)
   		{
   			if(CC==1||CC==2)  {Line_Buff[i]=3;}	
   			else if(jang<=i)	{Line_Buff[i]=1;}
   			else if(jang>i)	{Line_Buff[i]=2;}
   		}
   		else if(i>=121&&i<=168)
   		{
   			if(CC==1||CC==2) 	{Line_Buff[i]=3;}
   			else if(jang<=i)	{Line_Buff[i]=1;}
   			else if(jang>i)	{Line_Buff[i]=2;}
   		}	
   		else 
   		{
   			for(j=0;j<18;j++)
   			{
   				if(j<=Station_cnt)
   				{
   					k=Station[j];
   					Line_Buff[k]=0;
   				}
   				else
   				{
   					k=Station[j];
   					Line_Buff[k]=3;
   				}
   			}
   		}
   		
   	}
   	
   	for(i=192;i>0;i--) { LDM_DATA=Line_Buff[i];}
   	
   	LdmLatchClk(0);	
   }
}

/**********************************************************

		DATA_LED SOURCE
		
***********************************************************/

void DATA_LED(void)
{
	int i;
	
	//if(ROAD!=0) LINE_DATA_1=NOW_BIT;
	//NOW_BIT= (ROAD==0) ? LINE_DATA_1 : NOW_BIT;
	
	if(ComP>=END_BIT||ComP==0) ComP=(STR_BIT);	//ComP 값이 입력 되어 지는곳.
	  
		for(i=0;i<200;i++)
		{
				if(i>=STR_BIT&&i<=END_BIT) 			// A 지점에서 B 지점 까지 점등
				{
					if(i==ComP)				//역명 LED와 방향 LED를 구분 한다.
					{
						if(BACK_BIT==FALSE)				//STR_BIT 현재 까지 진행한 방향 지시 LED 위치
						{
							if(ComP<OPEN_SAT)	LDM_DATA = 1; // <-
							if(ComP==OPEN_SAT)	
							{
								if(ChangBit2) LDM_DATA = 2;
								else	         LDM_DATA = 1;	
							}
							if(ComP>OPEN_SAT)	LDM_DATA = 2;
							/*
							if(((NOW_BIT)==(END_BIT)||(NOW_BIT)==(STR_BIT))&&ROAD==0)
							{
								if(ChangBit2) LDM_DATA = 2;
								else	         LDM_DATA = 1;
							}
							*/
							
						}
				 		else
				 		{
							if(ComP>OPEN_SAT)	LDM_DATA = 1; // ->
							if(ComP==OPEN_SAT)	
							{
								if(ChangBit2) LDM_DATA = 2;
								else	         LDM_DATA = 1;	
							}
							if(ComP<OPEN_SAT)	LDM_DATA = 2;
						}
				 		
				 		ComP+=3;				//역명을 표현 하기 위해서 3씩 증가.
				 		
				 	}
				 	else if(i==NOW_BIT)	//방향 표시 LED 위치와 같으면...
				 	{
				 		if(ChangBit)				//깜빡임을 표현 하기 위해서 
				 			LDM_DATA = 3;			//참일 경우 YELLOW LED 를 점등
				 		else 
				 			LDM_DATA = 0;
				 	}
				 	else
				 	{
				 		LDM_DATA=0;
				 	}
				 	
				}
				else	LDM_DATA=0;
		}
		LdmLatchClk(0);
			
}

/***************************************************************************
					SEND_DATA (상태 DATA응답을 하기위하여 프로토콜 변경)
***************************************************************************/
BYTE SEND_DATA_BUFF[25];
BYTE send_glDebugCnt=0x00;
void SEND_DATA(void)
{
	int i;
	BYTE SEND_CRC;
	BYTE CHANGE;
	for(i=0;i<25;i++)	SEND_DATA_BUFF[i]=(gRxExcCode[i]&0xff);
	
	send_glDebugCnt=(glDebugCnt&0xffffffff);
	CHANGE=(gRxExcCode[7]&0xff);
	SEND_DATA_BUFF[7]=(gRxExcCode[8]&0xff);
	SEND_DATA_BUFF[8]=CHANGE;
	SEND_DATA_BUFF[9]=0x08;
	
	SEND_DATA_BUFF[13]=((send_glDebugCnt&0xff000000)>>24);
	SEND_DATA_BUFF[14]=((send_glDebugCnt&0x00ff0000)>>16);
	SEND_DATA_BUFF[15]=((send_glDebugCnt&0x0000ff00)>>8);
	SEND_DATA_BUFF[16]=(send_glDebugCnt&0x000000ff);
	SEND_CRC=cal_CRC16(15,(BYTE *)&SEND_DATA_BUFF[3]);
	SEND_DATA_BUFF[18]=(SEND_CRC)>>8;
	SEND_DATA_BUFF[19]=(SEND_CRC)&0x00ff;
}
	
/************************************************************
				RTS
**************************************************************/

void RTS(void)
{
	if(HI_SEND)
	{		
		HI_SEND=FALSE;
		RS485_TX_ENABLE;
		SCC2_SendTo((BYTE *)SEND_DATA_BUFF,20,SCC_A_CHANNEL);
	}
	
	if(LOW_SEND)
	{
		LOW_SEND=FALSE;
		RS485_TX_DISABLE;
		SCC1_Init_AChl.TxEndFlag=FALSE;
	}
}		
/***********************************************************

	DSP를 초기화 한다.
	
************************************************************/
void DSP_INIT(void)
{
	int temp;

	/* primary bus control reg. */
	STRB0_CTRL = 0x000f0408;	/* Bank=1M, Wait=1, SWW=3 wait by software */
	STRB1_CTRL = 0x000f0448;	/* Bank=1M, Wait=0, SWW=0 wait by software */

	IOSTRB_CTRL = 0x00000088;	/* Wait=2, SWW=11 wait by software */

	/* timer0 init */
	TMR0_CTRL = 0x02C2 ;		/* General Out port : TCLK0 */
	TMR0_PERD = 14745;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms

	/* timer1 init */
	TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
	TMR1_PERD = 14745*250;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms

	INT1_VECT		 = OP_BR | (int)c_int02 ; 	// SCC Interrupt
	TIMER0_INT_VECT	 = OP_BR | (int)c_int09 ; 	// Timer 0
	TIMER1_INT_VECT	 = OP_BR | (int)c_int10 ; 	// Timer 1

	EDGE_INT;			/* EDGE INTERRUPT */

	/* Timer 1:b9, Timer 0:b8, serial port int:b5, EINT3:b3, EINT2:b2 ,EINT1:b1, EINT0:b0 */
	asm("	OR	0100h,IE");		// Timer 0
	asm("	OR	0200h,IE"); 	// Timer 1
	asm("	OR	0002h,IE"); 	// Int1(UART)
}

/******************************************************************************
	### BCC Check [TEXT~ETX] ###

	Input	: *pDat->수신 데이터 / nLen->수신 데이터 길이
	Output	: BCCOK->TRUE[1] / BCCNG->FALSE[0]
******************************************************************************/
int IsBCCOK(BYTE *pDat,int nLen)
{
	int i;
	BYTE nBCC[2];

	nBCC[0] = nBCC[1] = 0x00;

	for(i=0;i<nLen;i++)
	{
		nBCC[(i&0x01)] ^= pDat[i];
	}

	if(nBCC[0] != pDat[nLen] || nBCC[1] != pDat[nLen+1])
	{
		return FALSE;
	}
	else
	{
		return TRUE;
	}
}

/******************************************************************************
	### CRC Check [LENGTH~ETX] ###
	*dat : 넘겨 받은 DATA 
	on	: 길이를 return
******************************************************************************/
int cal_CRC16(int no,BYTE *dat)
{
	unsigned int CRC = 0;
	int i;

	for(i=0;i<no;i++)
	  CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];

	return ((~CRC) & 0x0000ffff);
}

/***********************************************************
 		자동 운행 함수
***********************************************************/
int Distance=0; //거리
int STATION=0;
int Direction=FALSE; //방향
int STATION_VALUE=0;
void AUTO_LINE_PRINT(void)
{
	Distance++;
	if(!(Distance%10))
	{
		Distance=0;
		STATION_VALUE=5000;
	}
	else {STATION_VALUE=0;}
	
	if(STATION==0x0a) Direction=TRUE;
	else if (STATION==0x00) Direction=FALSE;
	
	if(Distance==0)
	{
		STATION = (Direction==FALSE) ? (STATION+1) : (STATION-1);
		
		if(Direction==TRUE)
		{
			gRxExcCode[11]=STATION_LIST[STATION];
			gRxExcCode[12]=STATION_LIST[STATION-1];
			gRxExcCode[13]=STATION_LIST[0];
			gRxExcCode[14]=STATION_LIST[10];
			
		}
		else
		{
			gRxExcCode[11]=STATION_LIST[STATION];
			gRxExcCode[12]=STATION_LIST[STATION+1];
			gRxExcCode[13]=STATION_LIST[10];
			gRxExcCode[14]=STATION_LIST[0];
		}
				
	}
	gRxExcCode[15]=0x00;
	gRxExcCode[16]=(Distance*10);
	
	gRxComplete=TRUE;
	
}

/***********************************************************

	INT1 - Interrupt Routine
	
************************************************************/
void c_int02(void) // SCC Interrupt
{
#ifndef DOWNLOAD
	SCC_ISR();
#else
	SCC_DownloadISR();
#endif
}
/***********************************************************

	Timer0 - Interrupt Routine (1ms)
	RTS control 부분!!!
************************************************************/
void c_int09(void)		// Timer 0
{
	if(Nor_T_F==1) Nor_Cou++;	//NorFlash Memory 카운터 변수
	
	if(SCC1_Init_AChl.TxEndFlag) 	COUNT=TRUE;
	if(COUNT)num_TX++;
	if(gSccRxTimeout) gSccRxTimeout--;	//통신상에서Delay 시간을 체크
	WDI_CS;
	glDebugCnt++;
	
	if(!(glDebugCnt%(1000+STATION_VALUE)))
	{
		//AUTO_LINE_PRINT();
	}
		
}

/***********************************************************
	Timer1 - Interrupt Routine (250ms)
	다음역 이동 LED 깜박이는 부분...
************************************************************/
int time=0;
void c_int10(void)		// Timer 1
{
	time++;
	if(LED_DATA_CHACK==1)
	{
		//DATA_LED();
		//정지역 LED 깜박이는 부분
		if(STOP_STA==TRUE) ChangBit2=!ChangBit2;
		//else	ChangBit2=FALSE; 
		
		//이동 LED 깜박이는 부분
		if(STOP_MOVE==TRUE)	ChangBit=!ChangBit;
		//else	ChangBit=FALSE;
	}
	//if(!(time%5)) 
	
	if(PAT==1&&!(time%2)) PATTREN();
	
}
