/*******************************************************
표시기 프로그램
2003.5
작성 : Yeon jun sang ,Jang Duk Su
수정 : 12월 8일 -  무표시 이벤트 발생시 메모리 삭제 를 줄였다.
-  FONT_POSITION() 함수 활성화시 메모리 삭제 부분 (250*48*8=96000)
-  링 버퍼 시작 위치 수정 #define RING_BUFF 0x10ffff -> 0x104E20
-  패턴 초기화 
12월16일 -  문장의 끝나는 시점을 찾지 못하고 무한 루프에 빠지는 현상 으로 추론 
(DCC_CONTROL=문장을 명확히 하다)
12월17일 -  무한 루프 원인 발견
-Timer_Count[2~3]값을 DCC.DELAY /DCC.STOP 값으로  초기화를 잘못 하였다. 
12월24일 -  FONT_POSITION() 함수에서 DCC/ESC 값을 넘겨줄때 념겨주는 값을 확인하는 부분 삽입
2004년 01월05일 -  Font Receive Count를 SDR 코드를 TEXT(3)에 삽입	  	  
4월  9일 -  NORMAL 한페이지 이상 될경우 길이 계산 착오
5월 25일 -  경전철 표시기 설계!!!
********************************************************/

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

#define BOOT_TO_INT (*(int *)0x810000) = 0

#define WDI_CS ((*(int *)0x828000) = 0)

#define HEX_SW_NUM 0x34560		//HEX_SW_NUM는 이미지 ADDRES를 가르키고이 있다.
#define DOT_VIDEO 0x100000		// 화면에 담을 메모리 번지(데이터)
#define SCREEN_VIDEO 0x103010      // LED 표출 이미지를 하기전 스크린 이미지 구성 부분 3000번지
#define RING_BUFF 0x11942f 		//링 버퍼 시작 위치 20000 번지 (160*16=2560)
#define DOT_VIDEO_DATA 0x11ffff  	//FONT이미지  시작 위치 10000번지(550*10=5500)
#define DOT_VIDEO_LO_DATA 0x14ffff //FONT이미지 LO 시작 위치
#define BLINK 0x30000 			//BLINK JUMP ADDRESS
#define RING_BUFF_SIZE 0x32;	//RING_BUFF COUNT MAX(50)값

#define INT_TO_BOOT ((*(int *)0x82c000)=0) //Int를 Boot Mode바꿈

#define MODULE_8_256	0x500 //0x800	//8*256  (1280)    8*160    0x500 
#define MODULE_16_256	0xC00 //0x1000	//16*256 (2560)    16*160   0xA00 192*16 0xc00
#define MODULE_32_256	0x1400//0x2000	//32*256 (5120)    32*160   0x1400 
#define MODULE_40_256 	0x1900//0x2800	//40*256 (6400)    40*160   0x1900
#define MODULE_48_256	0x1E00//0x3000	//48*256 (7680)    48*160   0x1E00

#define FONT_24_256		0xF00 //0x1800	//24*256  (3840)   24*160   0xF00
#define FONT_48_256		0x1E00//0x3000	//24*256*2(7680)   24*160*2 0x1E00
#define FONT_72_256		0x2D00//0x4800	//24*256*3(11520)  24*160*3 0x2D00

#define MEMORY_DATA_CNT 5120
#define MEMORY_BLK_1KB 32 // Erass 블럭이 16KB 는 메모리 카운터 32와 같다.

UCHAR ME_B_FRONT = 0;
UCHAR WR_TIME_Flag_1sec = 0;
UCHAR WR_Flag = 0;
/***********************************************************
변수 정의
************************************************************/
int gTextBitLength;			// 문자열의 길이에 대한 비트 수 [영문자 8*1, 한글 8*  2]

extern BYTE gRxBuffer[600];			// 데이터 수신 버퍼 [기본길이 16+spare 16]
extern BYTE gRxPos;			// 데이터 수신 위치 [초기값->0]
extern int gRxComplete;	// 수신 정상 Flag [수신비정상->0, 수신정상->1]

extern BYTE gRxExcCode[512];			// 수신 실행 코드
extern int DATA_LEN;

BYTE gHexaSw=0x00;
BYTE gHexaSw_ICR=0x00;

BYTE nBuff[1024];

void c_int01(void); //
void c_int02(void); // SCC Interrupt
void c_int03(void); //
void c_int04(void); // UART Interrupt
void c_int06(void); // Serial Interrupt
void c_int09(void); // Timer 0
void c_int10(void); // Timer 1
void c_int12(void);

void DSP_INIT(void); // DSP의 초기화

int IsBCCOK(BYTE *pDat,int nLen);
void MakeBcc(BYTE *pDat,int nLen);
int cal_CRC16(int no,BYTE *dat);
void PATTREN(void);
void RTS(void);
void HEX_SWITCH(UCHAR nAddData);
void FONT_POSITION(BYTE *Posi);	        //이미지를 만들어 주는 부분
void Imag_Screen(BYTE *Imag);		//16폰트 이미지 만들기
void Imag_Screen_door(BYTE *Imag);	//화살표 이미지 만들기
void Imag_Screen_8(BYTE *Imag);	        //영숫자 이미지 만들기
void DOT_VIDEO_PIRNT(void);		//Scroll Normal 이미지 만들기
void UP_DOT_VIDEO_PIRNT(void);	        //Scroll UP 이미지 만들기
void LEFT_DOT_VIDEO_PIRNT(void);	//Scroll Left 이미지 만들기
void STATIC_LEFT_VIDEO_PRINT(void);     //앞부분의 한화면 싸이즈 만큼은 NORMAL로 표출하고  나머지는 LEFT한다.
void PUSH(BYTE *push);		//링 버퍼 삽입 함수
void POP(void);			//링 버퍼 OUT 함수
void PATTREN_MOVE_VALUE(void);
void DCC_CONTROL(void);
void NORMAL_DCC_COUNT(void);
void STOP_DCC_COUNT(void);
void BASIC_VALUE(void);
void JUMPDOWLOAD(void);            //준상 선배 프로그램으노 Jump
void START_CHAK_DATA(void);        //내 프로그램이 구동하기전에 비디오 메모리 값이 맞는지 확인
void VER_PRINT(void);              //버전 정보를 표출하는 곳
void SCREEN_PRINT(void);           //스크린 메모리에 만들어진 이미지를 비디오 메모리에 표출하는 부분

void SEND_DATA(void);
void IMAG_POINT_VALUE(int Img,BYTE nPoint);

void MEMORY_WR(UCHAR *pRxBuf,UCHAR nLen);
void MEMORY_WR_POP();
/******************************
SDR 관련 변수
******************************/
int COUNT=FALSE;
int TX_DA_ENA_COUNT=FALSE;
int HI_SEND=FALSE;
int LOW_SEND=FALSE;
int NUM_TX=0;
int NUM_TX_DATA=0;

int glTest =0;
/******************************
패턴 TEST 변수
******************************/
int nIsPattern=FALSE;
int gOneSec = FALSE;
int num=0x00;	//패턴 TEST 변수
int numm=0x00;	//패턴 TEST 변수
int hnum=0x00;	//패턴 TEST 변수
int hnumm=0x00;	//패턴 TEST 변수
int CH=1;		//패턴 TEST 변수
int CHH=0;	//패턴 TEST 변수
int PAT_COLOR=0;		//패턴 TEST 변수
int Hex_Pri_T_F=1;     //PATTREN  이벤트를 발생 시킨다. T=TRUE , F=FLASE
int Pattren_inter_time=0;   // 패턴 TEST 할 경우 표출 시간
int Hex_Pri_Tim=0;  //패턴 TEST 할경우 HEX_SWICH 값을 print 하는 시간

/******************************
통신 DELAY 시간 COUNT 
******************************/
extern int gSccRxTimeout;

/*********************************
*  보내는 DATA 구성              *
**********************************/
BYTE SEND_DATA_BUFF[25];	//TX 값을 구성하는 변수
BYTE send_glDebugCnt=0x00;	//프로그램의 카운트를 넘겨 받는 변수

/**********************
* 이미지 구성 관련 변수
***********************/
int Dot_Video=0;		//Dot_Video 확인
int Up_Dot_Video=0;		//UP_Dot_Video 확인
int Left_Dot_Video=0;	        //Left_Dot_Video 확인
int STATIC_Left_Dot_Video=0;

typedef struct{
	int Move_Point;	//전체 이동 COUNT
	int Move_Size;		//문장 길이(한 Page)
	int All_Move_Size;  //전체 문장 길이 (반복회수를 곱한다)
	int Blink_Count;	//블링크 카운트
	int Video_T_F;		//Print할 이미지가 있는지 확인	
	int Print_Clear;	//화면을 지운다.
	int NorMal_Page_Count;	//NorMal시 한화면 카운트
	int NorMal_Count;	//NorMal 반복회수
	int Page_Point;	//해당 Page 이동 COUNT
	int Page_Up_Point;	//UP스크롤시 해당 Page Count
	int String_Count;	//실제 문자 수				Org_count
	int Font_Pr_P;		//지금까지 읽은 DATA 길이
	int Font_24_T_F;	//24폰트가 있는지 확인
	int Font_24_T;		//문장 않에 24폰트가 한번이라도 나왔는지 확인
}PRINT;
PRINT SCAN={0,0,0,0,0,0,0,0,0,0,0,0,0,0};

int Blink_Timer_Count=70;
/*****************
RING_BUFF 변수
*******************/
int FRONT=0x00;			//RING_BUFF 입력 카운트
int B_FRONT=0x00;			//RING_BUFF 출력 카운트
BYTE REMEMBER_RING[50];	//RING_BUFF 입력시 입력 DATA의 길이를 가지도 있다.
BYTE RING_DATA[1024];

/*  이미지 스크린 재구성 부분*/
int gScnIdx = 32;
int gScnPos[32]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0};




/******************************
DCC_COUNT
******************************/
int stop_time=0;  //화면 정지 시간이 있을 경우 TRUE 를 넘겨 준다.
int DCC_T_C=0;  //이미지를 표출한 시간부터 1ms 마다 Count
int BLINK_DCC_T_C=0;

typedef struct {
	BYTE SCC_CODE;
	BYTE SCC_KIND;
	BYTE LEN_HI;
	BYTE LEN_LOW;
	BYTE TXT;
	BYTE SIZE;
	BYTE COUNT;
	BYTE LINE_POSI;
	BYTE INTERVERL ;
	BYTE STATE;
	BYTE DELAY;
	BYTE STOP;
	BYTE SP_A;
	BYTE SP_B;
}FONT_VALUE;
FONT_VALUE DCC={0x01,0x01,0x00,0x00,0x01,192,0,6,16,0,4,10,0,0};

typedef struct{
	BYTE COLOR;
	BYTE SHAPE;
	BYTE SIZE;
	BYTE TEMPER;
	BYTE POSI_REM;
} FONT_VALUE_CHANGE;
FONT_VALUE_CHANGE ESC={0x02,0x01,0x01,0x00,0x00};
/***********************************************************
함수 정의
************************************************************/

unsigned int glDebugCnt = 0;
unsigned int RECEIVECnt = 0;

static int jang_duk_su=FALSE;
static int jang_duk=FALSE;

BYTE m_btLdmClearBuf[200];
UCHAR nDataWritCnt = 0;
//unsigned int num = 16;

/***********************************************************
메인 프로그램
************************************************************/
BYTE font_Len=0;     //실제적인 DATA 길이 정보를 가지도 있는 부분

int CHACK_DATA=0;   //DATA가 있는지 여부를 확인

int STRT_DA_CHK=0;  //비디오 메모리에서 읽어온 DATA가 정상 적인 DATA인지 확인

/***** 채내 =1; 노선 =2; 열번 =3;정.행 =4;측_행=5  *******/
char *gpVersion = "5Ver15"; // 버젼
void main(void)
{
	int i,j;

	DINT; // 전역 인어텁트 불가능
	DSP_INIT() ;
	WDI_CS;
	SCC_8530_Initial(); // 통신 칩 초기화
	Debug3xInit(TMS320C32);
	BOOT_TO_INT;
	gHexaSw = HEXA_SW;
	gHexaSw_ICR = HEXA_SW;
	WDI_CS;

	i = gpVersion[0];	//컴파일시 버전 정보 표시  ->함수 선언시 위줄에 쓸것

	EINT; // 전역 인어텁트 가능

	RS485_ON; // RS485가능하게 하는 Relay 기동
	RS485_TX_DISABLE;

	memset(gRxExcCode,0x00,100);

	nIsPattern = FALSE;


	WDI_CS;

	//memset(DOT_VIDEO,0x0000,0xC350);

	BASIC_VALUE();
	memset(m_btLdmClearBuf,0x00,200);

	//START_CHAK_DATA();

	HEX_SWITCH(gHexaSw_ICR);   //읽은 DATA가 정상적이지 않다면 스위치 값을 표출.
	while(1)
	{
		if(gRxComplete)
		{
			font_Len=(DATA_LEN==0) ? 0 : (DATA_LEN-0x03);
			gRxComplete= FALSE;

			if((gRxExcCode[9]&0xff)==0x1f)
			{
				CHACK_DATA=0;
				BASIC_VALUE();
				JUMPDOWLOAD();
			}
			else if((gRxExcCode[9]&0xff)==0x0A)
			{
				CHACK_DATA=1;
				nIsPattern = FALSE;
				memcpy(&nBuff[0],0x00,1024);
				memcpy(&nBuff[0],&gRxExcCode[0],font_Len+13);

				//MEMORY_WR((UCHAR *)gRxExcCode);

				PUSH(nBuff);
				HEX_SWITCH(gHexaSw_ICR);
				RECEIVECnt++;
				WR_Flag = 1;

			}
			else if((gRxExcCode[9]&0xff)==0x1A)
			{
				CHACK_DATA=0;
				BASIC_VALUE();

				nIsPattern = FALSE;
			}
			else if((gRxExcCode[9]&0xff)==0x0b)
			{
				CHACK_DATA=0;
				BASIC_VALUE();
				Pattren_inter_time=0;	//패턴 초기화
				Hex_Pri_Tim=0;  		//패턴 초기화
				nIsPattern = TRUE;
				num=(-1),numm=(-16),hnum=DCC.SIZE+16,hnumm=DCC.SIZE,CH=1,CHH=0;

			}
			else if((gRxExcCode[9]&0xff)==0x1b)
			{
				CHACK_DATA=0;
				nIsPattern = FALSE;
				BASIC_VALUE();
				HEX_SWITCH(gHexaSw_ICR);
				//VER_PRINT();

			}
			else if((gRxExcCode[9]&0xff)==0x07) //SDR
			{
				COUNT=TRUE;
				SEND_DATA();
			}
			else if((gRxExcCode[9]&0xff)==0x1C) //호차 번호 변경.
			{
				gHexaSw_ICR = (((gHexaSw>>4)&0x0F) + (WORD_L(gRxExcCode[10])&0x0F));
				gHexaSw_ICR = (gHexaSw_ICR<<4)&0xF0 |  (gHexaSw&0x0F);
				HEX_SWITCH(gHexaSw_ICR);
			}

		}

		if(NUM_TX>=15)
		{
			COUNT=FALSE;
			NUM_TX=0;

			if(SCC1_Init_AChl.TxEndFlag)	LOW_SEND=TRUE;
			else	HI_SEND=TRUE;

			RTS();
		}

		if(NUM_TX_DATA>=5)
		{ 
			TX_DA_ENA_COUNT=FALSE; 
			NUM_TX_DATA=0;
			SCC2_SendTo((BYTE *)SEND_DATA_BUFF,20,SCC_A_CHANNEL);
		}

		if(gOneSec==TRUE)
		{
			PATTREN_MOVE_VALUE();
			if(Hex_Pri_T_F==1) PATTREN();
		}

		/*
		if(WR_TIME_Flag_1sec && WR_Flag)	//메모리 쓰기 기능 
		{
			WR_TIME_Flag_1sec = 0;
			if(ME_B_FRONT != FRONT)
			{
				MEMORY_WR_POP();
			}
		}
		*/


		if(CHACK_DATA==1)
		{
			if(SCAN.Print_Clear==1)	memset(DOT_VIDEO,0x00,MODULE_48_256), memset(SCREEN_VIDEO,0x00,MODULE_48_256),SCAN.Print_Clear=0;
			if((B_FRONT!=FRONT)&&(SCAN.Video_T_F==0)) POP();

			if(SCAN.Video_T_F==1) 
			{

				if(Dot_Video==1)        			{DOT_VIDEO_PIRNT();			SCREEN_PRINT();}
				else if(Left_Dot_Video==1)   		{LEFT_DOT_VIDEO_PIRNT();		SCREEN_PRINT();}
				else if(Up_Dot_Video==1)     		{UP_DOT_VIDEO_PIRNT();  		SCREEN_PRINT();}
				else if(STATIC_Left_Dot_Video==1)	{STATIC_LEFT_VIDEO_PRINT();	SCREEN_PRINT();}

			}
		}

		//잔상을 제거 하기위하여 스캔을 다리 하였을경우 페턴 TEST 할 경우 잔상이 생겨 경우에 따라 달리한다.
		if(nIsPattern)	//모듈의 특성상 스켄 방법을 다리 하여야 한다.
		{
			gScnIdx = Hex_Pri_T_F == 1 && CHH != 2 ? 16 : 32; 
		}
		else
			gScnIdx = 32;
	}
}
/**********************************************************
MEMORY_WR	//메모리 읽고 쓰기
***********************************************************/
void MEMORY_WR(UCHAR *pRxBuf,UCHAR nLen)
{
	int i;
	if(nDataWritCnt < MEMORY_DATA_CNT)
	{
		FlashPageWrite((WORD)nDataWritCnt,(BYTE*)pRxBuf);
		nDataWritCnt++;
	}
	else
	{
		nDataWritCnt = 0;
		for(i = 0; i<(MEMORY_DATA_CNT/MEMORY_BLK_1KB);i++)
		{
			FlashErase(i);
		}
	}
}
/**********************************************************
JUMPDOWLOAD	//준상 선배 프로그램으로 점프한다.
***********************************************************/
void JUMPDOWLOAD(void)
{
	INT_TO_BOOT;
	asm(" BR 000000H"); //0x000000 번지로 점프
}

/**********************************************************
START_CHAK_DATA
***********************************************************/
UCHAR d_ErCnt = 0;
UCHAR M_ReadCnt = 0;
void START_CHAK_DATA(void)
{
	int i=0;
	BYTE sDataBuf[600];
	BYTE sMReadCnt = 0;
	BYTE sB_Front = 0;

	for(i=0;i<MEMORY_DATA_CNT;i++)
	{
		FlashPageRead((M_ReadCnt++),sDataBuf);
		if(sDataBuf[0] == 0xAA)
		{
			memcpy(gRxBuffer,sDataBuf,600);
			DATA_LEN=COM_DAT(gRxBuffer[3],gRxBuffer[4]);
			font_Len=(DATA_LEN==0) ? 0 : (DATA_LEN-0x03);
			nDataWritCnt = M_ReadCnt;

			if(IsBCCOK(&gRxBuffer[3],(DATA_LEN+5)))
			{
				sMReadCnt++;
				memcpy(&nBuff[0],0x00,1024);
				memcpy(&nBuff[0],&gRxBuffer[0],(font_Len+13));
				PUSH(nBuff);

				if(sMReadCnt>= 2)
				{
					sB_Front=(B_FRONT+2)%RING_BUFF_SIZE;

					if(WORD_L(sB_Front)!= WORD_L(FRONT))
					{
						B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;
					}
				}
			}
		}
		else
		{
			if(nDataWritCnt)
			{
				CHACK_DATA=1;
				STRT_DA_CHK=1;
			}
			else
			{
				for(i = 0; i<(MEMORY_DATA_CNT/MEMORY_BLK_1KB);i++)
				{
					FlashErase(i);
					d_ErCnt++;
				}

			}	

			break;	
		}
	}
}

/**********************************************************
DATA_FONT_POSITION
***********************************************************/

BYTE Font_Data[1024];	     //Font 이미지 DATA 저장
BYTE nBB[1024];		     //이미지 저장

BYTE LINE_BUFF[3000];      //문장안에 24가 있으면 1 로 표현 (기록한다)

BYTE Arrow_R[10]="@[R)Arrow]";
BYTE Arrow_L[10]="@[L)Arrow]";
BYTE Compari_Arrow_R[10];
BYTE Compari_Arrow_L[10];
BYTE ITEM[6]="@[ITEM";
BYTE Compari_ITEM[6];

void FONT_POSITION(BYTE *Posi)
{
	int i,j,k,Font_DATA_Cont=0;
	int Jump=0;		     //폰트 주소
	int now_font_Len=0;        //BUFF 에서 넘겨 받은 DATA의 길이정보를 가지도 있다.
	int L_BUFF=0;           //한 화면(160)문장안에 24폰트가 있는지 확인

	int ITEM_val[4];
	int ITEM_DATA=0;
	BYTE *pMem;
	BYTE *DpMem;
	BYTE *nOR = (BYTE *)NORFLASH_ADDR;

	memset(&SCAN,0x00,14);//구조체 초기화

	//memset(DOT_VIDEO,0x00,MODULE_16_256);

	memset(DOT_VIDEO_DATA,0x00,0x186A0);
	memset(DOT_VIDEO_LO_DATA,0x00,0x186A0);

	memset(&Font_Data[0],0x00,1024);
	memset(&nBB[0],0x00,1024);
	memset(&LINE_BUFF[0],0x00,3000);

	now_font_Len=REMEMBER_RING[B_FRONT];

	HEX_SWITCH(gHexaSw_ICR);


	for(i=14;i<=now_font_Len; )		//문자 DATA 길이를 구한다.
	{
		if((Posi[i]&0xff)==0x1b){i+=3;}
		else {SCAN.String_Count++;i++;}
	}
	SCAN.String_Count=((SCAN.String_Count)/2)+1;

	DpMem=(BYTE*)&DCC;//DCC 설정
	for(i=0;i<14;i++){DpMem[i]=(Posi[i]&0xff);}


	//DCC.SIZE=(DCC.SIZE)*8;	// 항상 160 이어야 하무로 160으로 고정
	DCC.SIZE = 192;
	DCC.STATE=((DCC.STATE)>0x03) ? 0x00 : (DCC.STATE); 
	DCC.DELAY=((DCC.DELAY)==0x00) ? 0x05 :((DCC.DELAY)*5);  //speed  Scroll시 속도를 표시
	DCC.STOP=((DCC.STOP)==0x00) ? 0x00 : (DCC.STOP)*100;  //stop 정지시간

	pMem=(BYTE*)&ESC;			//ESC 설정
	pMem[3]=0x00;

	if(DCC.STATE==0x02||DCC.STATE==0x00){L_BUFF=(L_BUFF==0) ? DCC.SIZE: L_BUFF;}
	else if(DCC.STATE==0x01)			 {L_BUFF=(L_BUFF==0) ? (DCC.SIZE/2) : L_BUFF;}

	for(Font_DATA_Cont=14;Font_DATA_Cont<now_font_Len; )
	{
		if(DCC.STATE==0x03){L_BUFF= ((L_BUFF>=(DCC.SIZE/2))&&(L_BUFF<DCC.SIZE)) ? (L_BUFF+(DCC.SIZE/2)) : L_BUFF;}

		if(WORD_L(Posi[Font_DATA_Cont])==0x1b)
		{
			Font_DATA_Cont++;
			if((Posi[Font_DATA_Cont]&0xff)==0x01) {Font_DATA_Cont++; pMem[0]=((Posi[Font_DATA_Cont++]&0xff)>0x03) ? 0x02 : (Posi[(Font_DATA_Cont-0x01)]&0xff);}     //color
			else if((Posi[Font_DATA_Cont]&0xff)==0x02) {Font_DATA_Cont++; pMem[1]=((Posi[Font_DATA_Cont++]&0xff)==0x01) ? 1048576 : 0;}   //글자체
			else if((Posi[Font_DATA_Cont]&0xff)==0x03) {Font_DATA_Cont++; pMem[2]=((Posi[Font_DATA_Cont++]&0xff)==0x01) ? 0 : 307200;}    //size
			else if((Posi[Font_DATA_Cont]&0xff)==0x04) {Font_DATA_Cont++; pMem[3]=((Posi[Font_DATA_Cont++]&0xff)>0x03) ? 0x00 : (Posi[(Font_DATA_Cont-0x1)]&0xff);}   //글자 속성
		}
		else if(WORD_L(Posi[Font_DATA_Cont]) >=0x20 && WORD_L(Posi[Font_DATA_Cont])<0xa1)	// 16 영숫자
		{

			SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;

			memcpy(&Compari_Arrow_R[0],&Posi[Font_DATA_Cont],10);
			memcpy(&Compari_Arrow_L[0],&Posi[Font_DATA_Cont],10);
			memcpy(&Compari_ITEM[0], &Posi[Font_DATA_Cont],6);

			if((((strncmp(&Compari_Arrow_R[0],&Arrow_R[0],10))&0xff)==0x00)||(((strncmp(&Compari_Arrow_L[0],&Arrow_L[0],10))&0xff)==0x00))
			{ 	//화살표
				if(SCAN.Font_24_T_F==0)
				{

					if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
					{
						Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (270848+ESC.SHAPE) : (270720+ESC.SHAPE);//바뀜 0x52 오른쪽
					}
					else
					{
						Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (270720+ESC.SHAPE) : (270848+ESC.SHAPE);	
					}
					for(j=0;j<128;j++) nBB[j]=nOR[Jump+j];
					for(j=0;j<32;j++)  LINE_BUFF[L_BUFF++]=0;
				}
				else
				{
					if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
					{
						Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (609408+ESC.SHAPE)+ESC.SIZE : (609120+ESC.SHAPE)+ESC.SIZE;//반대로
					}
					else
					{
						Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (609120+ESC.SHAPE)+ESC.SIZE : (609408+ESC.SHAPE)+ESC.SIZE;
					}
					for(j=0;j<288;j++) nBB[j]=nOR[Jump+j];
					for(j=0;j<48;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
				}

				Imag_Screen_door(nBB);
				SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 64 : 96 ;
				Font_DATA_Cont+=10;
			}
			else if(((strncmp(&Compari_ITEM[0],&ITEM[0],6))==0x00)&&(Posi[Font_DATA_Cont+10]==0x5d))
			{	//ITEM
				for(k=0;k<4;k++)
				{
					if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x30)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x3A))   ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x30);
					else if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x41)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x47))  ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x37);
					else ITEM_val[k]=0x00;
				}

				ITEM_DATA=ITEM_HAP(ITEM_val[0],ITEM_val[1],ITEM_val[2],ITEM_val[3]);

				if(SCAN.Font_24_T_F==0)
				{
					Jump=(ITEM_DATA*32) + (270720+ESC.SHAPE);
					for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
					for(j=0;j<8;j++)  LINE_BUFF[L_BUFF++]=0;
				}
				else
				{
					Jump=(ITEM_DATA*72) + (609120+ESC.SHAPE)+ESC.SIZE;
					for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
					for(j=0;j<12;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
				}

				Imag_Screen(nBB);
				SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
				Font_DATA_Cont+=11;
			}
			else
			{     //영숫자

				if(SCAN.Font_24_T_F==0)
				{
					Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*16)+ESC.SHAPE;
					for(j=0;j<16;j++) nBB[j]=nOR[Jump+j];
					for(j=0;j<4;j++)  LINE_BUFF[L_BUFF++]=0;

				}
				else
				{
					Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*48)+ESC.SHAPE+ESC.SIZE;
					for(j=0;j<48;j++) nBB[j]=nOR[Jump+j];
					for(j=0;j<6;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;;

				}
				Imag_Screen_8(nBB);
				SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 8 : 12 ;
				Font_DATA_Cont++;
			}

		}
		else if((Posi[Font_DATA_Cont]&0xff)>=0xa1)
		{
			SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;

			if(SCAN.Font_24_T_F==0)		//16폰트
			{
				if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)      Jump=((Posi[Font_DATA_Cont++]&0xff)-0xa1)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+3008+ESC.SIZE+ESC.SHAPE;
				else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca) Jump=((Posi[Font_DATA_Cont++]&0xff)-0xb0)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+39104+ESC.SIZE+ESC.SHAPE;
				else if((Posi[Font_DATA_Cont]&0xff)>=0xca) 									 Jump=((Posi[Font_DATA_Cont++]&0xff)-0xca)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+114304+ESC.SIZE+ESC.SHAPE;

				for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
				for(j=0;j<8;j++)  LINE_BUFF[L_BUFF++]=0;
				Imag_Screen(nBB);
				SCAN.Font_Pr_P+=16;

			}
			else				//24폰트
			{
				if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)      Jump=((Posi[Font_DATA_Cont++]&0xff)-0xa1)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+6768+ESC.SIZE+ESC.SHAPE;
				else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca) Jump=((Posi[Font_DATA_Cont++]&0xff)-0xb0)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+87984+ESC.SIZE+ESC.SHAPE;
				else if((Posi[Font_DATA_Cont]&0xff)>=0xca) 		       Jump=((Posi[Font_DATA_Cont++]&0xff)-0xca)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+257184+ESC.SIZE+ESC.SHAPE;

				for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
				for(j=0;j<12;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
				Imag_Screen(nBB);
				SCAN.Font_Pr_P+=24;
			}

		}
		else Font_DATA_Cont++;

		if((SCAN.Font_24_T_F)==1)  SCAN.Font_24_T=TRUE;

	}

	SCAN.Video_T_F=1;

	if(DCC.STATE==0x01) memset(SCREEN_VIDEO,0x00,MODULE_48_256);//LEFT 시 화면을 지운다.

	if(DCC.STATE==0x00){DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=1;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;}
	else if(DCC.STATE==0x01) 
	{
		SCAN.Move_Size=SCAN.Font_Pr_P+DCC.SIZE;
		SCAN.All_Move_Size=SCAN.Move_Size*(DCC.COUNT);

		LEFT_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=1;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;
	}
	else if(DCC.STATE==0x02)	
	{
		SCAN.Move_Size=(((SCAN.Font_Pr_P/DCC.SIZE)+3)*16);
		SCAN.All_Move_Size=(DCC.COUNT);
		UP_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=1;STATIC_Left_Dot_Video=0;
	}
	else if(DCC.STATE==0x03)	
	{
		SCAN.Move_Size=SCAN.Font_Pr_P;
		SCAN.All_Move_Size= SCAN.Move_Size*(DCC.COUNT); 
		STATIC_LEFT_VIDEO_PRINT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=1;
	}


}
/**********************************************************
이미지 공통 변수
***********************************************************/
int UP_DATA_LEN=0;
int LEF_Font_posi=0;
int STATIC_LEF_Posi=0;
int UP_Font_posi=0;
int Font_Save_posi=0;	//0x100000 기록 위치를 Count

void IMAG_POINT_VALUE(int Img,BYTE nPoint)
{
	BYTE sData = 0;

	sData = SCAN.Font_Pr_P;//WORD_L(nPoint);

	UP_DATA_LEN=(sData%DCC.SIZE);
	LEF_Font_posi=(((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24)))+sData;
	STATIC_LEF_Posi=(SCAN.Font_Pr_P < DCC.SIZE) ? (((Img)*DCC.SIZE)+(Img*(SCAN.String_Count*24+DCC.SIZE))+sData) : (((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24+DCC.SIZE))+sData) ;
	//UP_Font_posi=((Img*DCC.SIZE)+UP_DATA_LEN+7680)+(((SCAN.Font_Pr_P)/DCC.SIZE)*3840);
	//UP_Font_posi=((Img*DCC.SIZE)+UP_DATA_LEN+FONT_48_256);//+(((SCAN.Font_Pr_P)/DCC.SIZE)*FONT_24_256);

	UP_Font_posi=((Img*DCC.SIZE)+UP_DATA_LEN+FONT_48_256)+(((sData)/DCC.SIZE)*FONT_24_256);

	//Font_Save_posi = UP_Font_posi;

	Font_Save_posi=(DCC.STATE==0x01) ? (LEF_Font_posi) :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
}
/**********************************************************
Imag_ Screen_16
DOT_VIDEO_DATA = Font 이미지 시작 위치
5120 = 160*32 : DATA를 33번줄부터 쓰기 위하여
2560 = 160*16 : DATA를 메머리에 쓸때 화면 Size만큼 쓰기 위하여
3840 = 160*24 : DATA를 24폰트로 무조건 사용한다.(455자 까지 사용가능)
***********************************************************/

void Imag_Screen(BYTE *Imag)
{
	int i,j;
	int Font_16_24=0;
	int Lint_sort=0;
	BYTE sSize = 0;
	BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff

	Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	Font_16_24=(24-Font_16_24);

	//sSize = (SCAN.Font_24_T_F==0) ? 0 : 64 ;

	//sSize = 48;


	for(i=Font_16_24;i<24;i++)
	{
		IMAG_POINT_VALUE(i,sSize);
		if(SCAN.Font_24_T_F==0)
		{
			for(j=7;j>=0;j--)
				pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0x00);
			for(j=7;j>=0;j--)
				pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
		}
		else
		{
			for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
		}

		if(ESC.TEMPER != 0x01&&ESC.TEMPER != 0x03 )	//BLINK 기능 01=이면 찍지를 않는다.
		{
			Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;

			if(SCAN.Font_24_T_F==0)
			{
				for(j=7;j>=0;j--)
					L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0x00);
				for(j=7;j>=0;j--)
					L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			}
			else
			{
				for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
				for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
				for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			}

		}
		Lint_sort++;
	}
}
/**********************************************************
Imag_ Screen_door ->
***********************************************************/

void Imag_Screen_door(BYTE *Imag)
{
	int i,j,k;
	int Font_16_24=0;
	int Lint_sort=0;
	BYTE sSize = 0;
	BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff

	Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	Font_16_24=(24-Font_16_24);

	//sSize = (SCAN.Font_24_T_F==0) ? 0 : 64 ;

		//sSize = 48;


	for(i=Font_16_24;i<24;i++)
	{
		IMAG_POINT_VALUE(i,sSize);

		if(SCAN.Font_24_T_F==0)
		{
			for(k=0;k<4;k++)
			{
				for(j=7;j>=0;j--)
					pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+(k*32)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
				for(j=7;j>=0;j--)
					pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1+(k*32))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			}
		}
		else
		{
			for(k=0;k<4;k++)
			{
				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)+(k*72)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			}

		}

		if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
		{
			Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
			if(SCAN.Font_24_T_F==0)
			{
				for(k=0;k<4;k++)
				{
					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+(k*32)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1+(k*32))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
				}
			}
			else
			{
				for(k=0;k<4;k++)
				{
					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)+(k*72)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
				}

			}

		}
		Lint_sort++;
	}
}

/**********************************************************
Imag_Screen_8
***********************************************************/

void Imag_Screen_8(BYTE *Imag)
{
	int i,j;
	int Font_16_24=0;
	int Lint_sort=0;
	BYTE sSize = 0;
	BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff

	Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	Font_16_24=(24-Font_16_24);

	//sSize = (SCAN.Font_24_T_F==0) ? 0 : 64 ;

		//sSize = 48;

	for(i=Font_16_24;i<24;i++)
	{
		IMAG_POINT_VALUE(i,sSize);

		if(SCAN.Font_24_T_F==0)
		{
			for(j=7;j>=0;j--)    pVd[Font_Save_posi++]=(((Imag[Lint_sort]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
		}
		else {
			for(j=7;j>=0;j--)	 pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			for(j=7;j>=4;j--)	 pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+1]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
		}

		if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
		{
			Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
			if(SCAN.Font_24_T_F==0)
			{
				for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[Lint_sort]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			}
			else 
			{
				for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
				for(j=7;j>=4;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+1]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			}

		}
		Lint_sort++;
	}
}

/**********************************************************
DOT_VIDEO_PIRNT (NORMAL)
***********************************************************/

void DOT_VIDEO_PIRNT(void)
{
	int i,j,k;
	int sFont_Save_posi=0;
	signed int U_pso=0,U_pso_Vel=0;
	int blink_video_normal=0;
	int F_24_Chack=0;

	BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	BYTE *pVd = (BYTE *)SCREEN_VIDEO;

	Dot_Video=0;
	// blink_video_normal=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	blink_video_normal=((SCAN.Blink_Count%12)<7) ? 0x00 : 0 ;
	U_pso=(DCC.LINE_POSI-0x01);

	//memset(SCREEN_VIDEO,0x00,MODULE_48_256);

	for(i=23;i>0;i--)
	{
		sFont_Save_posi=(((i)*DCC.SIZE)+blink_video_normal+FONT_48_256+(SCAN.NorMal_Page_Count*FONT_72_256));
		U_pso_Vel=U_pso*DCC.SIZE;
		//if(U_pso > 0x00)	for(j=0;j<DCC.SIZE;j++)   pVd[U_pso_Vel+j]=pVd_D[Font_Save_posi+j]&0xff;
		if(U_pso > 0x00) memcpy(&pVd[U_pso_Vel],&pVd_D[sFont_Save_posi],DCC.SIZE);
		if(i>7)
		{
			memcpy(&pVd[U_pso_Vel+MODULE_16_256],&pVd_D[sFont_Save_posi+FONT_24_256],DCC.SIZE);
		}

		if(i<=15&&i>7&&SCAN.Font_24_T==TRUE)
		{
			F_24_Chack=((DCC.SIZE*3)+(SCAN.NorMal_Page_Count*(DCC.SIZE*3))); //480=DCC.SIZE*3
			for(j=0;j<DCC.SIZE;j++)
			{
				if((LINE_BUFF[(F_24_Chack/2)+(j/2)]==0x01)||((LINE_BUFF[(F_24_Chack/2)+(j/2)]==0x02)&&((SCAN.Blink_Count%12)<7)))
				{
					sFont_Save_posi=(((i-8)*DCC.SIZE)+blink_video_normal+FONT_48_256+(SCAN.NorMal_Page_Count*FONT_72_256));
					for(k=0;k<2;k++)
					{
						if((j+k)<DCC.SIZE)   pVd[(U_pso_Vel+(DCC.SIZE*8))+j+k]=pVd_D[sFont_Save_posi+j+k+(DCC.SIZE*24)];
					}
				}
				j++;
			}
		}

		U_pso--;

	}

}

/**********************************************************
UP_DOT_VIDEO_PIRNT
***********************************************************/
void UP_DOT_VIDEO_PIRNT(void)
{
	int Font_Save_posi=0;
	int i,j,k,m,n;
	int blink_video_up=0;
	int jump_16=0;
	int jump_16_value=0;
	int jump_count=0;   //Jump 해야할 시작 값
	int jump_24=0;      //16폰트와 16폰트 사이의 Jump 값을 계산
	int print_24=0;     //24 폰트와 24폰트 사이의 Jump 값을 계산
	int F_24_Chack=0;   //24폰트 체크 버퍼의 값을 읽기 취한 위치 계산
	int UP_sam_increase=0;

	BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	BYTE *pVd = (BYTE *)SCREEN_VIDEO;

	Up_Dot_Video=0;

	UP_sam_increase=(SCAN.Move_Point*DCC.SIZE);//%(SCAN.Move_Size);

	blink_video_up=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	jump_count=(SCAN.Move_Point%16);
	jump_16=(16-jump_count);
	jump_24=(UP_sam_increase/MODULE_16_256)*MODULE_8_256+MODULE_8_256;
	print_24=(UP_sam_increase/MODULE_16_256)*FONT_24_256;      //24문자 jump 계산
	F_24_Chack=((UP_sam_increase/MODULE_16_256)*(DCC.SIZE/2));

	for(i=0;i<16;i++)
	{
		if(i>=jump_16) jump_16_value=MODULE_8_256;
		Font_Save_posi=((i*DCC.SIZE)+UP_sam_increase+blink_video_up+jump_16_value+jump_24);
		memcpy(&pVd[(i*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
		memcpy(&pVd[(i*DCC.SIZE)+MODULE_16_256],&pVd_D[Font_Save_posi+FONT_24_256],DCC.SIZE);
	}

	if(SCAN.Font_24_T==TRUE)
	{
		for(i=0;i<8;i++)
		{
			for(j=0;j<(DCC.SIZE/2);j++)
			{
				if((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)]==0x02)&&((SCAN.Blink_Count%12)<7)))
				{
					Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_24_256);
					for(m=0;m<2;m++)
					{
						pVd[(i*DCC.SIZE)+(MODULE_8_256-(jump_count*DCC.SIZE))+(j*2)+m]=pVd_D[Font_Save_posi+(j*2)+m];
					}
				}

			}
			for(j=0;j<(DCC.SIZE/2);j++)
			{
				if((LINE_BUFF[(F_24_Chack)+(j)+DCC.SIZE]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+DCC.SIZE]==0x02)&&((SCAN.Blink_Count%12)<7)))
				{
					Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_48_256);
					for(m=0;m<2;m++)
					{
						pVd[(i*DCC.SIZE)+(FONT_24_256-(jump_count*DCC.SIZE))+(j*2)+m]=pVd_D[Font_Save_posi+(j*2)+m];
					}
				}

			}
			for(j=0;j<(DCC.SIZE/2);j++)
			{
				if((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)+DCC.SIZE]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)+DCC.SIZE]==0x02)&&((SCAN.Blink_Count%12)<7)))
				{
					Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_72_256);
					for(m=0;m<2;m++)
					{
						pVd[(i*DCC.SIZE)+(MODULE_40_256-(jump_count*DCC.SIZE))+(j*2)+m]=pVd_D[Font_Save_posi+(j*2)+m];
					}
				}
			}
		}

	}
}

/**********************************************************
LEFT_DOT_VIDEO_PIRNT
***********************************************************/

void LEFT_DOT_VIDEO_PIRNT(void)
{
	int i=0,j=0,k=0;
	int Font_Save_posi=0;
	int move_data=0;   //이동 포인트 지정
	int blink_video_left=0;  //7:3 으로 찍을경우 2번째 DATA ADDRESS를 가르킨다.
	int U_pso=0; //U_pso=상단 LED 위치를 가르킨다. D_pso=하단 LED 위치를 가르킨다.
	int U_pso_Vel=0; //상단 DATA 시작 위치를, 하단 DATA 시작 위치를 가르킨다.

	BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	BYTE *pVd = (BYTE *)SCREEN_VIDEO;

	Left_Dot_Video=0; //  main loop 상에서 갑이 변호 할결우만 표출 하기 위하여 거짓으로 만들어 준다.

	U_pso=(DCC.LINE_POSI-0x01);
	move_data=SCAN.Move_Point%SCAN.Move_Size;
	blink_video_left=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;


	for(i=23;i>0;i--)
	{
		if(U_pso < 0) break;
		Font_Save_posi=((i*DCC.SIZE)+i*(SCAN.String_Count*24)+blink_video_left+move_data);

		U_pso_Vel=U_pso*DCC.SIZE;
		memcpy(&pVd[U_pso_Vel],&pVd_D[Font_Save_posi],DCC.SIZE);
		U_pso--;
	}
}

/**********************************************************
STATIC_LEFT_VIDEO_PRINT
***********************************************************/

void STATIC_LEFT_VIDEO_PRINT(void)
{
	int i,k,j;
	int HAP;
	int Font_Save_posi=0;
	int blink_video_sta_lef=0;
	int static_sam_left_value=0;

	BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	BYTE *pVd = (BYTE *)SCREEN_VIDEO;

	STATIC_Left_Dot_Video=0;

	memset(SCREEN_VIDEO,0x00,MODULE_48_256);
	static_sam_left_value=SCAN.Move_Point%SCAN.Move_Size;
	blink_video_sta_lef=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;

	HAP=blink_video_sta_lef+static_sam_left_value;

	for(i=8;i<24;i++)
	{
		Font_Save_posi=(((i)*DCC.SIZE)+i*(SCAN.String_Count*24+DCC.SIZE)+blink_video_sta_lef);
		memcpy(&pVd[((i-8)*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
	}
	if(SCAN.Font_Pr_P > DCC.SIZE)
	{
		for(i=23;i>7;i--)
		{
			Font_Save_posi=(((i+1)*DCC.SIZE)+i*(SCAN.String_Count*24+DCC.SIZE)+HAP);
			memcpy(&pVd[((i-8)*DCC.SIZE)+MODULE_16_256],&pVd_D[Font_Save_posi],DCC.SIZE);
			if((i<=15)&&(SCAN.Font_24_T==TRUE))
			{
				Font_Save_posi=(((i-7)*(DCC.SIZE))+(i-8)*((SCAN.String_Count)*24+DCC.SIZE)+HAP);
				for(j=0;j<DCC.SIZE;j++)
				{
					if((LINE_BUFF[(((static_sam_left_value+j)/2)+(DCC.SIZE/2))]!=0x00))
					{
						if(((LINE_BUFF[(((static_sam_left_value+j)/2)+(DCC.SIZE/2))]==0x02)&&((SCAN.Blink_Count%12)>7))){ }
						else {pVd[(i*(DCC.SIZE))+j]=pVd_D[Font_Save_posi+j];}
					}
				}
			}
		}
	}
}
/**********************************************************
SCREEN_PRINT
***********************************************************/

void SCREEN_PRINT(void)
{
	BYTE *pVd_D = (BYTE *)SCREEN_VIDEO;
	BYTE *pVd = (BYTE *)DOT_VIDEO;
	int STATR_POSI=0;
	int i,j;
	int Dcc=0;	

	for(i=0;i<16;i++)
	{
		Dcc=(i*DCC.SIZE);
		for(j=0;j<(DCC.SIZE-48);j++)
		{
			//pVd[(j*48)+48+(STATR_POSI++)]=pVd_D[j+(Dcc)]&0x03|((pVd_D[(j+MODULE_16_256)+(Dcc)])<<2)&0x0c;
			pVd[(i*DCC.SIZE)+48+j]=pVd_D[j+(Dcc)]&0x03|((pVd_D[(j+MODULE_16_256)+(Dcc)])<<2)&0x0c;
		}
	} 
}
/**********************************************************
DATA_PUSH
***********************************************************/
void PUSH(BYTE *push)
{

	BYTE *PU_DATA=(BYTE *)RING_BUFF;
	int ring_data=0;
	int i;
	FRONT=(FRONT+1)%RING_BUFF_SIZE;
	if(B_FRONT!= FRONT)
	{
		REMEMBER_RING[FRONT]=font_Len;
		ring_data=FRONT*550;
		//for(i=0;i<font_Len;i++)	(PU_DATA[ring_data+i])=(push[i]&0xff);
		memcpy(&PU_DATA[ring_data],&push[0],(font_Len+13));	//8월 23일 수정

	}
	else
	{
		REMEMBER_RING[FRONT]=font_Len;
		ring_data=FRONT*550;
		memset(&PU_DATA[ring_data],0x00,550);

		B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;
		//for(i=0;i<font_Len;i++)	(PU_DATA[ring_data+i])=(push[i]&0xff);
		memcpy(&PU_DATA[ring_data],&push[0],(font_Len+13));	//8월 23일 수정
	}
}

/**********************************************************
DATA_POP
***********************************************************/

void POP(void)
{
	BYTE *PO_DATA=(BYTE *)RING_BUFF;
	int pop_data=0;
	int ring_pop_d=0;
	int i;
	if(B_FRONT!= FRONT)
	{
		B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;

		pop_data=REMEMBER_RING[B_FRONT];
		ring_pop_d=(B_FRONT*550)+10;
		memset(&RING_DATA[0],0x00,550);
		for(i=0;i<pop_data;i++)	RING_DATA[i]=(PO_DATA[ring_pop_d+i]&0xff);
		FONT_POSITION(RING_DATA);
	}
}

void MEMORY_WR_POP()
{
	BYTE *PO_DATA=(BYTE *)RING_BUFF;
	int pop_data=0;
	int ring_pop_d=0;
	int i;
	if(ME_B_FRONT!= FRONT)
	{
		ME_B_FRONT=(ME_B_FRONT+1)%RING_BUFF_SIZE;

		pop_data=REMEMBER_RING[ME_B_FRONT];
		ring_pop_d=ME_B_FRONT*550;
		pop_data = pop_data+13;
		memset(&RING_DATA[0],0x00,550);
		for(i=0;i<pop_data;i++)	RING_DATA[i]=(PO_DATA[ring_pop_d+i]&0xff);

		MEMORY_WR((UCHAR *)RING_DATA,(DATA_LEN+10));

		//FONT_POSITION(RING_DATA);
	}
}

/**********************************************************
BASIC_VALUE	//값을 초기화 한다.
***********************************************************/
void BASIC_VALUE(void)
{
	B_FRONT=0x00,FRONT=0x00,ME_B_FRONT = 0;
	SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//,SCAN.Print_Clear=1;
	Dot_Video=0,Left_Dot_Video=0,Up_Dot_Video=0,STATIC_Left_Dot_Video=0;

	memset(DOT_VIDEO,0x00,(DCC.SIZE*70));
	memset(SCREEN_VIDEO,0x00,(DCC.SIZE*16));
	memset(RING_BUFF,0x00,(550*50));
	memset(REMEMBER_RING,0x00,50);
}

/***********************************************************
DSP를 초기화 한다.
************************************************************/
DWORD nDMAInitBit = 0x04000400 | 0x302;
void DSP_INIT(void)
{
	int temp;

	/* primary bus control reg. */
	STRB0_CTRL = 0x000f0408;	/* Bank=1M, Wait=1, SWW=3 wait by software */
	STRB1_CTRL = 0x000f0468;	/* Bank=1M, Wait=0, SWW=0 wait by software */

	IOSTRB_CTRL = 0x00000088;	/* Wait=2, SWW=11 wait by software */

	/* timer0 init */
	TMR0_CTRL = 0x02C2 ;		/* General Out port : TCLK0 */
	TMR0_PERD = 14745/5;		// 58.9824 MHz/4/1475 = 1000Hz = 1ms

	/* timer1 init */
	TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
	TMR1_PERD = 14745;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms

	INT1_VECT		 = OP_BR | (int)c_int02 ; 	// SCC Interrupt
	TIMER0_INT_VECT	 = OP_BR | (int)c_int09 ; 	// Timer 0
	TIMER1_INT_VECT	 = OP_BR | (int)c_int10 ; 	// Timer 1

	DINT0_VECT		 = OP_BR | (int)c_int12; // DMA0 interrupt

	EDGE_INT;			/* EDGE INTERRUPT */

	/* Timer 1:b9, Timer 0:b8, serial port int:b5, EINT3:b3, EINT2:b2 ,EINT1:b1, EINT0:b0 */
	asm("	OR	0100h,IE");		// Timer 0
	asm("	OR	0200h,IE"); 	// Timer 1
	asm("	OR	0002h,IE"); 	// Int1(UART)

	asm("	OR	0400h,IE"); 	// DMA Interrupt 0

	asm(" LDI @_nDMAInitBit, IE ");	
}

/******************************************************************************
### BCC Check [TEXT~ETX] ###

Input	: *pDat->수신 데이터 / nLen->수신 데이터 길이
Output	: BCCOK->TRUE[1] / BCCNG->FALSE[0]
******************************************************************************/
int IsBCCOK(BYTE *pDat,int nLen)
{
	BYTE nBCC[2];
	int i;

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

/**********************************************************
BCC 체크를 만든다. BCC를 만들어 pDat에 저장한다.
***********************************************************/
void MakeBcc(BYTE *pDat,int nLen)
{
	int i;

	pDat[nLen] = pDat[nLen+1] = 0x00;

	for(i=0;i<nLen;i++)	pDat[nLen + (i&0x01)] ^= pDat[i];
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

/***************************************************************************
SEND_DATA
***************************************************************************/

void SEND_DATA(void)
{
	int i;
	BYTE SEND_CRC;
	for(i=0;i<25;i++)	SEND_DATA_BUFF[i]=(gRxExcCode[i]&0xff);

	send_glDebugCnt=(glDebugCnt&0xffffffff);
	SEND_DATA_BUFF[7]=(gRxExcCode[8]&0xff);
	SEND_DATA_BUFF[8]=(gHexaSw&0xff);
	SEND_DATA_BUFF[9]=0x08;
	SEND_DATA_BUFF[10]=WORD_L(gHexaSw_ICR);	//ID
	SEND_DATA_BUFF[11]=0x00;	
	SEND_DATA_BUFF[12]=(RECEIVECnt&0xff);
	SEND_DATA_BUFF[13]=((send_glDebugCnt&0xff000000)>>24);
	SEND_DATA_BUFF[14]=((send_glDebugCnt&0x00ff0000)>>16);
	SEND_DATA_BUFF[15]=((send_glDebugCnt&0x0000ff00)>>8);
	SEND_DATA_BUFF[16]=(send_glDebugCnt&0x000000ff);

	MakeBcc(&SEND_DATA_BUFF[3],15);

	//SEND_CRC=cal_CRC16(15,(BYTE *)&SEND_DATA_BUFF[3]);
	//SEND_DATA_BUFF[18]=(SEND_CRC)>>8;
	//SEND_DATA_BUFF[19]=(SEND_CRC)&0x00ff;
}


/************************************************************
RTS
**************************************************************/
void RTS(void)
{
	if(HI_SEND)
	{
		TX_DA_ENA_COUNT=TRUE;
		HI_SEND=FALSE;
		RS485_TX_ENABLE;
	}

	if(LOW_SEND)
	{
		LOW_SEND=FALSE;
		RS485_TX_DISABLE;
		SCC1_Init_AChl.TxEndFlag=FALSE;
	}
}

/**********************************************************
HEX_SWITCH
***********************************************************/

void HEX_SWITCH(UCHAR nAddData)
{
	BYTE SW_BUF_1[32];
	BYTE SW_BUF_2[32];
	BYTE *SW_BUF;
	BYTE *pVd = (BYTE *)DOT_VIDEO;
	BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	BYTE nStBuf1[32];
	BYTE nStBuf2[32];
	BYTE sStText[5]={"호차"};

	BYTE sStCnt = 0;
	BYTE sAddPoint = 0;

	int SW_START=0;
	int SW_RCV;
	int i,sw_num=0,j;

	for(i=0;i<2;i++)
	{
		SW_RCV= (i==0) ? (WORD_L(nAddData)>>4) : (WORD_L(nAddData)&0x0f);
		SW_RCV+=(SW_RCV<0x0a) ? (0x30) : (0x41-0x0a);
		SW_START=(SW_RCV-0x21)*32+(3008*3);
		SW_BUF = (i==0) ? SW_BUF_1 : SW_BUF_2;

		for(j=0;j<32;j++) SW_BUF[j]=nOR[SW_START+j];
	}

	//////////패턴 TEST 할때 전체 주소를 표출 한다./////////////
	if(nIsPattern)
	{
		for(i=0;i<16;i++)
		{
			sw_num=((i)*DCC.SIZE)+80;

			for(j=7;j>0;j--) pVd[sw_num++]=(((SW_BUF_1[i*2])>>j)&0x01)==0x01 ? 0x02 : 0x00;
			for(j=7;j>0;j--) pVd[sw_num++]=(((SW_BUF_1[i*2+1])>>j)&0x01)==0x01 ? 0x02 : 0x00;
		}

		for(i=0;i<16;i++)
		{
			sw_num=((i)*DCC.SIZE)+96;

			for(j=7;j>0;j--) pVd[sw_num++]=(((SW_BUF_2[i*2])>>j)&0x01)==0x01 ? 0x02 : 0x00;
			for(j=7;j>0;j--) pVd[sw_num++]=(((SW_BUF_2[i*2+1])>>j)&0x01)==0x01 ? 0x02 : 0x00;
		}
	}



	//////////호차 글자 위치 계산/////////////
	for(i=0;i<2;i++)
	{
		if((sStText[sStCnt]&0xff)>=0xa1&&(sStText[sStCnt]&0xff)<0xb0)      sAddPoint=((sStText[sStCnt++]&0xff)-0xa1)*3008+((sStText[sStCnt++]&0xff)-0xa1)*32+3008;
		else if((sStText[sStCnt]&0xff)>=0xb0&&(sStText[sStCnt]&0xff)<0xca) sAddPoint=((sStText[sStCnt++]&0xff)-0xb0)*3008+((sStText[sStCnt++]&0xff)-0xa1)*32+39104;
		else if((sStText[sStCnt]&0xff)>=0xca) 								sAddPoint=((sStText[sStCnt++]&0xff)-0xca)*3008+((sStText[sStCnt++]&0xff)-0xa1)*32+114304;

		SW_BUF = (i==0) ? nStBuf1 : nStBuf2;

		for(j=0;j<32;j++) SW_BUF[j]=nOR[sAddPoint+j];
	}


	//////////호차 글자 표출/////////////
	for(i=0;i<16;i++)
	{
		sw_num=((i)*DCC.SIZE)+32;

		for(j=7;j>0;j--) pVd[sw_num++]=(((nStBuf1[i*2])>>j)&0x01)==0x01 ? 0x02 : 0x00;
		for(j=7;j>0;j--) pVd[sw_num++]=(((nStBuf1[i*2+1])>>j)&0x01)==0x01 ? 0x02 : 0x00;
	}

	for(i=0;i<16;i++)
	{
		sw_num=((i)*DCC.SIZE)+32;

		for(j=7;j>0;j--) pVd[sw_num++]|=(((nStBuf2[i*2])>>j)&0x01)==0x01 ? ((0x02<<2)&0x0c) : ((0x00<<2)&0x03);
		for(j=7;j>0;j--) pVd[sw_num++]|=(((nStBuf2[i*2+1])>>j)&0x01)==0x01 ? ((0x02<<2)&0x0c) : ((0x00<<2)&0x03);
	}

	//////////호차 숫자 표출/////////////
	for(i=0;i<16;i++)
	{
		if(i<8)
		{

			sw_num=((i*2)*DCC.SIZE)+9;
			for(j=7;j>0;j--)	
			{
				pVd[sw_num++]=(((SW_BUF_1[i*2])>>j)&0x01)==0x01 ? 0x03 : 0x00;

			}
			for(j=7;j>0;j--)	
			{
				pVd[sw_num++]=(((SW_BUF_1[i*2+1])>>j)&0x01)==0x01 ? 0x03 : 0x00;
			}

			sw_num=((i*2+1)*DCC.SIZE)+9;
			for(j=7;j>0;j--)	
			{
				pVd[sw_num++]=(((SW_BUF_1[i*2])>>j)&0x01)==0x01 ? 0x03 : 0x00;

			}
			for(j=7;j>0;j--)	
			{
				pVd[sw_num++]=(((SW_BUF_1[i*2+1])>>j)&0x01)==0x01 ? 0x03 : 0x00;

			}
		}
		else
		{		
			sw_num=(((i-8)*2)*DCC.SIZE)+9;
			for(j=7;j>0;j--)	
			{
				pVd[sw_num++]|= (((SW_BUF_1[i*2])>>j)&0x01)==0x01 ? ((0x03<<2)&0x0c) : ((0x00<<2)&0x03);
			}
			for(j=7;j>0;j--)	
			{
				pVd[sw_num++]|= (((SW_BUF_1[i*2+1])>>j)&0x01)==0x01 ? ((0x03<<2)&0x0c) : ((0x00<<2)&0x03);
			}

			sw_num=(((i-8)*2+1)*DCC.SIZE)+9;
			for(j=7;j>0;j--)	
			{
				pVd[sw_num++]|= (((SW_BUF_1[i*2])>>j)&0x01)==0x01 ? ((0x03<<2)&0x0c) : ((0x00<<2)&0x03);
			}
			for(j=7;j>0;j--)	
			{
				pVd[sw_num++]|= (((SW_BUF_1[i*2+1])>>j)&0x01)==0x01 ? ((0x03<<2)&0x0c) : ((0x00<<2)&0x03);
			}
		}
	}
}

/**********************************************************
VER_PRINT
***********************************************************/

void VER_PRINT()
{
	int i,j,k,pos;
	BYTE Ver[10]="Ver 1.0";
	BYTE Ver_Data[120];
	BYTE *pVd = (BYTE *)DOT_VIDEO;
	BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	for(i=0;i<7;i++)
	{
		for(j=0;j<16;j++)	Ver_Data[(i*16)+j]=nOR[(((Ver[i]&0xff)-0x20)*16)+j];
	}

	for(i=0;i<16;i++)
	{
		pos=(i*DCC.SIZE);
		for(j=0;j<7;j++)
		{
			for(k=7;k>0;k--) pVd[pos++]=(Ver_Data[(i)+(j*16)]>>k)&0x01==0x01 ? 0x02 : 0x00;
		}
	}
}

/**********************************************************
PATTERN TEST
***********************************************************/

void PATTREN(void)
{
	int i,j;
	BYTE *pVd = (BYTE *)DOT_VIDEO;
	for(i=0;i<16;i++)
	{
		for(j=0;j<DCC.SIZE;j++)
		{
			if(j>=numm&&j<=num)
			{
				pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
				pVd[j+(i*DCC.SIZE)]|=(PAT_COLOR<<2);
			}
			else if(j>=hnumm&&j<hnum)
			{
				pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
				pVd[j+(i*DCC.SIZE)]|=(PAT_COLOR<<2);
			}
			else 	pVd[j+(i*DCC.SIZE)]=0x00;
		}
	}

}

/***********************************************************
PATTREN_VALUE
************************************************************/

void PATTREN_MOVE_VALUE(void)
{
	gOneSec = FALSE;
	if(nIsPattern)
	{
		if(num>80||numm<(-16))
		{

			CHH=(CH%3);
			CH++;
		}

		if(CHH==0)
		{
			Hex_Pri_T_F=1;
			PAT_COLOR=0x01;
			hnum-=16;
			hnumm-=16;
			num+=16;
			numm+=16;
		}
		else if(CHH==1)
		{
			Hex_Pri_T_F=1;
			PAT_COLOR=0x02;
			hnum+=16;
			hnumm+=16;
			num-=16;
			numm-=16;

		}
		else if(CHH==2)
		{
			Hex_Pri_T_F=0;
			numm=0;
			Hex_Pri_Tim++;
			if(Hex_Pri_Tim>=2) CHH=(CH%3),Hex_Pri_Tim=0,numm=(-32);
			if(numm<(-16)) memset(0x100000,0,MODULE_48_256);
			HEX_SWITCH(gHexaSw_ICR);
		}

	}
}

/***********************************************************
DCC_CONTROL
************************************************************/

void DCC_CONTROL(void)
{
	if(DCC.STATE==0x01)  //LEFT
	{
		SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
		if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=(SCAN.All_Move_Size)))||(((DCC.COUNT)==0x00)&&(SCAN.Move_Size==(SCAN.Page_Point+1))))
		{
			if(DCC.COUNT==0x00)
			{
				if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
				else SCAN.Move_Point++;
			}
			else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
		}
		else if(!(SCAN.Page_Point%DCC.SIZE))
		{
			if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
			else  SCAN.Move_Point++;
		}
		else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
		Left_Dot_Video=1;
	}
	else if(DCC.STATE==0x02) //UP
	{
		if((SCAN.Move_Point)>=(SCAN.Move_Size))
		{
			SCAN.Page_Up_Point++;

			if(DCC.COUNT==0x00)
			{
				if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
				else SCAN.Move_Point=0;
			}
			else if(DCC.COUNT!=0x00)
			{
				if(SCAN.Page_Up_Point>=SCAN.All_Move_Size) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;
				else  SCAN.Move_Point=0;
			}
		}
		else if(!(SCAN.Move_Point%16))
		{
			if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
			else SCAN.Move_Point++;
		}
		else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
		Up_Dot_Video=1;
	}
	else if(DCC.STATE==0x03)//STATIC
	{
		SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
		if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=SCAN.All_Move_Size))||(((DCC.COUNT)==0x00)&&((SCAN.Page_Point+1)==SCAN.Move_Size)))
		{
			if(DCC.COUNT==0x00)
			{
				if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
				else SCAN.Move_Point++;
			}
			else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0,SCAN.Print_Clear=1;
		}
		else if(!(SCAN.Page_Point%DCC.SIZE))
		{
			if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
			else  SCAN.Move_Point ++;
		}
		else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
		STATIC_Left_Dot_Video=1;
	}

}
/***********************************************************
NORMAL_DCC
************************************************************/
void NORMAL_DCC_COUNT(void)
{	

	if(!(DCC_T_C%DCC.STOP)||(DCC.STOP)==0x00)
	{
		if((DCC.STOP)==0x00&&B_FRONT!=FRONT)
		{
			SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;
		}
		else if(((SCAN.NorMal_Page_Count*2+2) < (SCAN.Font_Pr_P/DCC.SIZE)+1)&&(DCC.STOP!=0x00))	//4월 9일 수정 (길이 계산 착오)
		{

			SCAN.NorMal_Page_Count++;
		}
		else if(((SCAN.NorMal_Page_Count*2+2)>(SCAN.Font_Pr_P/DCC.SIZE)+1)&&(DCC.STOP!=0x00)&&(((DCC.COUNT-1)>SCAN.NorMal_Count)||DCC.COUNT==0x00))
		{
			SCAN.Print_Clear=1;
			if(DCC.COUNT==0x00&&B_FRONT!=FRONT)
			{
				SCAN.Video_T_F=0;DCC_T_C=0;SCAN.Blink_Count=0;BLINK_DCC_T_C=0;
			}
			else {SCAN.NorMal_Page_Count=0;SCAN.NorMal_Count++;}
		}
		else if(DCC.STOP==0x00)
		{
			SCAN.NorMal_Page_Count=0;
		}
		else{SCAN.Video_T_F=0;SCAN.Print_Clear=1;DCC_T_C=0;SCAN.Blink_Count=0;BLINK_DCC_T_C=0;}
	}
	Dot_Video=1;
}

/***********************************************************
STOP_DCC_COUNT
************************************************************/
void STOP_DCC_COUNT(void)
{
	if(DCC.STATE==0x01)SCAN.Move_Point++,Left_Dot_Video=1;
	else if(DCC.STATE==0x02) SCAN.Move_Point++,Up_Dot_Video=1;
	else if(DCC.STATE==0x03)SCAN.Move_Point++,STATIC_Left_Dot_Video=1;
	stop_time=0x00,DCC_T_C=0x00;
}

/***********************************************************
INT1 - Interrupt Routine
************************************************************/
void c_int02(void) // SCC Interrupt
{
	SCC_ISR();
}

/***********************************************************
Timer0 - Interrupt Routine (1ms)
************************************************************/

void c_int09(void)		// Timer 0
{
	/*
	static int iLineOffset = 1;

	DMA0_SRC = (0x100000 +(gScnPos[(iLineOffset)%gScnIdx])*(DCC.SIZE));	//DMA 시작 주소
	DMA0_DST = LDM_DATA_ADDR;															//DMA 도착 번지
	DMA0_CNT = DCC.SIZE;																	//DMA 전송 길이	
	DMA0_GCR = 0x3c13; // source 증가, destination 정지, 최우선 순위		//레지스트값 설정

	LdmLatchClk(0);

	LDM_ADDR(gScnPos[iLineOffset%gScnIdx]);

	iLineOffset++;
	*/

	static int iLineOffset = 0;
	static int nDlyCnt = 0;

	switch(nDlyCnt++%2)
	{
	case 0:
		LDM_ADDR(iLineOffset);		
		DMA0_SRC = (0x100000 + (((iLineOffset)%16)*DCC.SIZE));
		DMA0_DST = LDM_DATA_ADDR;
		DMA0_CNT = DCC.SIZE;
		DMA0_GCR = 0x3c13; // source 증가, destination 정지, 최우선 순위
		break;

	case 1:
		LDM_ADDR(iLineOffset);		
		DMA0_SRC = *(int *)&m_btLdmClearBuf;
		DMA0_DST = LDM_DATA_ADDR;
		DMA0_CNT = DCC.SIZE;
		DMA0_GCR = 0x3c13; // source 증가, destination 정지, 최우선 순위
		iLineOffset++;
		break;	
	}	
}

/***********************************************************
DMA0 Interrupt - Interrupt Routine
************************************************************/
void c_int12(void)
{
	LdmLatchClk(1);
}


/***********************************************************
Timer1 - Interrupt Routine
************************************************************/

void c_int10(void)		// Timer 1
{
	if(SCAN.Video_T_F==1)
	{
		DCC_T_C++;
		BLINK_DCC_T_C++;
		if(!(BLINK_DCC_T_C%Blink_Timer_Count)) SCAN.Blink_Count++;

		if((DCC.STATE)!=0x00)
		{
			if((stop_time&0xff)==0x00)
			{
				if(!(DCC_T_C%(DCC.DELAY&0xff))||(DCC.DELAY)==0x00) //스크롤 속도
				{
					DCC_CONTROL();
				}
			}
			else if((stop_time&0xff)==0x01)
			{
				if(!(DCC_T_C%DCC.STOP))
				{
					STOP_DCC_COUNT();
				}
				if((SCAN.Blink_Count%12)<7)
				{
					if(DCC.STATE==0x01)Left_Dot_Video=1;
					else if(DCC.STATE==0x03)STATIC_Left_Dot_Video=1;
				}
				if(DCC.STATE==0x02)Up_Dot_Video=1;
			}
		}
		else
		{
			NORMAL_DCC_COUNT();
		}
	}

	if(nIsPattern==TRUE)
	{
		if(!(Pattren_inter_time%500))
		{
			gOneSec = TRUE;
			Pattren_inter_time=0;
		}
		Pattren_inter_time++;
	}
	if(SCC1_Init_AChl.TxEndFlag) 	COUNT=TRUE;
	if(COUNT)NUM_TX++;
	if(TX_DA_ENA_COUNT) NUM_TX_DATA++;
	if(gSccRxTimeout) gSccRxTimeout--;	//통신상에서Delay 시간을 체크

	if(glDebugCnt%1000){WR_TIME_Flag_1sec = 1;}


	WDI_CS;
	glDebugCnt++;	//상태 DATA 를 요청하였을 겨우 지금 까지의 Count를 같이 전송
}
