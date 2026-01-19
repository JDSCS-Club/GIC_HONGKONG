/*******************************************************
	표시기 프로그램 최종 수정
	2003.12.4
	내용 : flash 메모리 확인 기능 강화,
	작성 : Yeon jun sang,jang duk su
	1)2005년 04월 18일
				0xB20000 :	D0 -> LED RED   (1=OFF/0=ON)
								D1 -> LED GREEN (1=OFF/0=ON)
								D4 -> LED SW    (1=OFF/0=ON)
				0xB30000 :  SW 입력 값을 받는다.입력 받으면 0 으로 된다.
	2)
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

#define INT_TO_BOOT ((*(int *)0x82c000)=0) //Int를 Boot Mode바꿈

#define WDI_CS ((*(int *)0x828000) = 0)		// 프로그램이 돌고 있다는 정보를 Tms32에 전달한다.

#define BOOT_TO_INT (*(int *)0x810000) = 0

#define DOT_VIDEO 0x100000			// 화면에 담을 메모리 번지(데이터)

#define FONT_ADDRES 0x610	//font가 저장 되어 있는 주소

#define NOR_F_B_E_A 0x50000   //NorFlash Memory 프로토콜 저장 시작 위치

/***********************************************************
	변수 정의
************************************************************/

extern BYTE gRxBuffer[600];			// 데이터 수신 버퍼 [기본길이 16+spare 16]
extern BYTE gRxPos;			          // 데이터 수신 위치 [초기값->0]
extern int gRxComplete;             	// 수신 정상 Flag [수신비정상->0, 수신정상->1]
extern BYTE gRxExcCode[512];			// 수신 실행 코드

extern int DATA_LEN;                    //수신한 DATA 길이

BYTE gHexaSw=0x00;

/*********************
	SDR
*********************/
int HI_SEND=FALSE;
int LOW_SEND=FALSE;
int COUNT=FALSE;                       //SDR 참 거짓을 표현
int num_TX=0;                          //SDR 카운트 변수
int NUM_TX_DATA=0;
int TX_DA_ENA_COUNT=FALSE;

/*********************************
*  보내는 DATA 구성              *
**********************************/
BYTE SEND_DATA_BUFF[25];	//TX 값을 구성하는 변수
BYTE send_glDebugCnt=0x00;	//프로그램의 카운트를 넘겨 받는 변수

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

int IsBCCOK(BYTE *pDat,int nLen);
int cal_CRC16(int no,BYTE *dat);
void ImageMake(BYTE *pDat);
void PATTREN(void);
void RTS(void);
void HEX_SWITCH(void);
void IMAGE_DATA(void);
void BIT_OPE(void);
void PATTREN_MOVE_VALUE(void);

void JUMPDOWLOAD(void);
void START_CHAK_DATA(void);

void SEND_DATA(void);

void ONTD(BYTE IN,BYTE *OUT,BYTE MS,int *CLK );
void CHECK_TEST();
void NORFLASH_MEMORY();

/***********************************************************
	변수 프로그램
************************************************************/
unsigned int glDebugCnt = 0;
unsigned int RECEIVECnt = 0;
int gOneSec = FALSE;


/*********************
	패턴 변수
*********************/
int num=15;	//패턴 TEST 변수
int numm=0;	//패턴 TEST 변수
int hnum=64;	//패턴 TEST 변수
int hnumm=48;	//패턴 TEST 변수
int CH=1;		//패턴 TEST 변수
int CHH=0;	//패턴 TEST 변수
int PAT_COLOR=0;		//패턴 TEST 변수

//unsigned int num = 16;

/***********************************************************
	메인 프로그램
************************************************************/

BYTE nBuff[2048];
BYTE NOR_VAL[25];       // Nor Flash Memory 에 입력 받은 DATA를 Write 한다.
BYTE NUM_HI=0xaa;       //열변의 상의 2자리를 가지고 있다.
BYTE NUM_LOW=0xaa;      // 열변의 하의 2자리를 가진다.

int nIsPattern=FALSE;   //0x0b를 전송 받았을겨우 TRUE 로 전환하여 패턴 TEST를 실행 시킨다.
//int Re_Pint=0;

int Nor_T_F=0;         //새로운 DATA를 입력 받았을 경우 TRUE 를 표현.
int Nor_Cou=1;         // Write 할때 까지 Delay 700 ms Count 한다. Nor_T_F=FALSE
int Nor_Sav_C=0;       //현재 까지 기록 되어 있는 프로토콜의 개수를 COUNT 한다.
int Nor_Jump=0;        //=Nor_Sav_C*20  가장 나중에 기록되 프로토콜의 위치를 가르킨다.

int Hex_Pri_T_F=1;     //PATTREN  이벤트를 발생 시킨다. T=TRUE , F=FLASE

/***** 채내 =1; 노선 =2; 열번 =3;정.행 =4; 측_행=5*******/
char *gpVersion = "3Ver10"; // 버젼

void main(void)
{
	int i,j;
	BYTE *nOR = (BYTE *)NORFLASH_ADDR;	//start시 NorFlash정보를 읽기 위해 필요

	i = gpVersion[0];	//컴파일시 버전 정보 표시  ->함수 선언시 위줄에 쓸것

	DINT; // 전역 인어텁트 불가능
	DSP_INIT() ;
	WDI_CS;
	SCC_8530_Initial(); // 통신 칩 초기화
	Debug3xInit(TMS320C32);
	BOOT_TO_INT;
	gHexaSw = HEXA_SW;

	WDI_CS;

	EINT; // 전역 인어텁트 가능

	RS485_ON; // RS485가능하게 하는 Relay 기동
	RS485_TX_DISABLE;

   memset(0x100000,0x0000,64*16);
	memset(&gRxExcCode[0],0x00,40);
		
	NORFLASH_MEMORY();
	START_CHAK_DATA();	//준상선배가 DATA를 넘겨 줄주 있으므로 확인한다.(비디오 메모리에 넘겨 준다.)

	WDI_CS;

	while(1)
	{
		if(gRxComplete)
		{
			gRxComplete = FALSE;

			if((gRxExcCode[9]&0xff)==0x1c)
			{
				nIsPattern = FALSE;

				if(NUM_HI!=gRxExcCode[14]&0xff||NUM_LOW!=gRxExcCode[15]&0xff)
				{

					if((HI_NIBBLE(gRxExcCode[14]&0xff)<0x0a)&&(LO_NIBBLE(gRxExcCode[14]&0xff)<0x0a))
					{

						if((HI_NIBBLE(gRxExcCode[15]&0xff)<0x0a)&&(LO_NIBBLE(gRxExcCode[15]&0xff)<0x0a))
						{
							NUM_HI=gRxExcCode[14];
							NUM_LOW=gRxExcCode[15];

							IMAGE_DATA();

						memcpy(&NOR_VAL[0],&gRxExcCode[0],20);	//Flash memory 기억 부분
						if(Nor_Sav_C>=3270) Nor_T_F=NorFlashBlockErase(0x05),Nor_Sav_C=0;
						else Nor_T_F=1;
						
						RECEIVECnt++;
						}
					}
				}
				

			}
			else if((gRxExcCode[9]&0xff)==0x0b)
			{
				memset(0x100000,0,64*16);
				nIsPattern = TRUE;
				num=(-1),numm=(-16),hnum=80,hnumm=64,CH=1,CHH=0;

			}
			else if((gRxExcCode[9]&0xff)==0x1b)
			{
				nIsPattern = FALSE;

				memset(0x100000,0,64*16);
				HEX_SWITCH();

			}
			else if((gRxExcCode[9]&0xff)==0x07)
			{
				COUNT=TRUE;
				SEND_DATA();
			}
			else if((gRxExcCode[9]&0xff)==0x1f)
			{
				JUMPDOWLOAD();
			}
		}

		if(!(Nor_Cou%800))
		{
			Nor_T_F=0;
			Nor_Cou=1;
			Nor_Jump=(NOR_F_B_E_A+(Nor_Sav_C*20));
			for(i=0;i<=19;i++) NorFlashWrite((Nor_Jump+i),(NOR_VAL[i]&0xff));
			Nor_Sav_C++;
		}

		if(num_TX>=15)	//SDR
		{
			COUNT=FALSE;
			num_TX=0;

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

		
	}

}

/**********************************************************
		JUMPDOWLOAD (준상 선배 프로그램 으로 JUMP)
    aa bb cc 00 0a ff f5 f7 31 1f 00 00 ~ ~ 03 [CRC]
***********************************************************/
void JUMPDOWLOAD()
{
	INT_TO_BOOT;
	asm(" BR 000000H"); //0x000000 번지로 점프
}

/**********************************************************
		NORFLASH_MEMORY
***********************************************************/
void NORFLASH_MEMORY()
{
	int i=0;
	BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	if((nOR[NOR_F_B_E_A]&0xff)==0xff||(nOR[NOR_F_B_E_A]&0xff)!=0xAA) NorFlashBlockErase(0x05);	//flash 메모리기록이 처음이면 지운다.
	else
	{
		do
		{
			Nor_Jump=(NOR_F_B_E_A+(Nor_Sav_C*20));
			for(i=0;i<=20;i++) gRxExcCode[i]=nOR[(Nor_Jump+i)];
			Nor_Sav_C++;
		}while((gRxExcCode[20]&0xff)!=0xff);
	}
}
/**********************************************************
		START_CHAK_DATA
(준상 선배 프로그램에서 DATA를 수신하면 비디오 메모리 (0X100000) DATA를
쓰고 내 프로그램으로 JUMP 한다. 내 프로그램은 시작하면서 비디오 메모리를 읽고 시작한다.
***********************************************************/

void START_CHAK_DATA()
{

	int DATA_Pos=0,i=0;
	BYTE CHK_CRC=0;
	BYTE *p_CHK=(BYTE *)DOT_VIDEO;

	for (DATA_Pos=0;DATA_Pos<30;DATA_Pos++)
	{

		switch(DATA_Pos)
		{
			case 1:
				if((gRxExcCode[0]&0xff)!=0xaa) DATA_Pos = 30;

				break;
			case 2:
				if((gRxExcCode[1]&0xff)!=0xbb) DATA_Pos = 30;

				break;
			case 3:
				if(gRxExcCode[2]&0xff!=0xcc) DATA_Pos = 30;

				break;
			case 7:
				if((COM_DAT_HAP((gRxExcCode[3]&0xff),(gRxExcCode[4]&0xff),(gRxExcCode[5]&0xff),(gRxExcCode[6]&0xff))&0xffff)!=0xffff) DATA_Pos=30;

				break;
			case 8:
				if(!(gRxExcCode[7]&0xff==0xf7||gRxExcCode[7]&0xff==0xf8||gRxExcCode[7]&0xff==gHexaSw)) gRxPos = 0;

				break;
			default:
				DATA_LEN=COM_DAT(gRxExcCode[3],gRxExcCode[4]);
				if(DATA_Pos >=(DATA_LEN+10))
				{

					CHK_CRC=COM_DAT(gRxExcCode[(DATA_LEN+8)],gRxExcCode[(DATA_LEN+9)]);
					if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxExcCode[3]))==CHK_CRC)		// BCC 체크가 OK일때
					{
						DATA_Pos = 30;			// 데이터 수신 위치를 초기화
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
		HEX_SWITCH BIT OPERATION(연산)
          SWITCH 값이 바뀌었을경우 사용 한다.(BYTE 역으로 계산)
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

	CHANG_HEX_A=(HEXA_SW&0x0f);
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
		HEX_SWITCH
***********************************************************/
void HEX_SWITCH(void)
{

	BYTE SW_BUF_1[16];
	BYTE SW_BUF_2[16];
	BYTE *SW_BUF;
	BYTE *pVd = (BYTE *)DOT_VIDEO;
	BYTE *nOR = (BYTE *)NORFLASH_ADDR;

	int SW_START=0;
	int SW_RCV;
	int i,sw_num=0,j;

	for(i=0;i<2;i++)
	{
		SW_RCV= (i==0) ? (gHexaSw>>4) : (gHexaSw&0x0f);
		SW_RCV+=(SW_RCV<0x0a) ? (0x30) : (0x41-0x0a);
		SW_START=(SW_RCV-0x20)*16;
		SW_BUF = (i==0) ? SW_BUF_1 : SW_BUF_2;
		for(j=0;j<16;j++) SW_BUF[j]=nOR[SW_START+j];
	}

	for(i=0;i<16;i++)
	{
		if(i<8)
		{
			sw_num=((i+8)*64)+24;
			for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_1[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
			sw_num+=2;
			for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_2[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
		}
		else
		{
			sw_num=((i-8)*64)+24;
			for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_1[i])>>j)&0x01)==0x01 ? (0x03<<2) : (0x00<<2);
			sw_num+=2;
			for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_2[i])>>j)&0x01)==0x01 ? (0x03<<2) : (0x00<<2);
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
			for(j=0;j<64;j++)
			{
				if(j>=numm&&j<=num)
				{
					pVd[j+(i*64)]=PAT_COLOR;
					pVd[j+(i*64)]|=(PAT_COLOR<<2);
				}
				else if(j>=hnumm&&j<hnum)
				{
					pVd[j+(i*64)]=PAT_COLOR;
					pVd[j+(i*64)]|=(PAT_COLOR<<2);
				}
				else
				{
					pVd[j+(i*64)]=0x00;
					pVd[j+(i*64)]|=0x00;
				}
			}

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
	TMR0_PERD = 14745/2;		// 58.9824 MHz/4/1475 = 1000Hz = 1ms

	/* timer1 init */
	TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
	TMR1_PERD = 14745;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms

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

/*****************************************************/
/*	입력 검지후 시간 설정 확인 		     */	
/*	사용예 ) ONTD(III,&OOO,30,&cint10);	     */
/*      7.32uS/9.08uS  
/*	-> 중간에 인터럽트(8.0uS) 입력시 19.90uS
//   IN : 입력 변수 OUT : 출력 값을 받을 변수  MS : 시간   CLK : 카운트 변수
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
/***********************************************************
	CHECK_TEST
************************************************************/
int Check_CLK=0;	
BYTE Check_OUT=0;
BYTE Check_NOUT=0;

int Check_Blink=1;
int GREEN_Flag=0;
int GREEN_RED_FLAG_Time=0;
void CHECK_TEST()
{
	ONTD(!(SW_INPUT&0x0F),&Check_OUT,2,&Check_CLK);
	
	if(Check_NOUT^Check_OUT&&Check_OUT)
	{
		
		LED_RED_GREEN(0x01);
		GREEN_Flag=TRUE;
		
			memset(0x100000,0,64*16);
			nIsPattern = TRUE;
			num=(-1),numm=(-16),hnum=80,hnumm=64,CH=1,CHH=0;

	}
	Check_NOUT=Check_OUT;
	
}
/***********************************************************
	GREEN_RED_FLAG
************************************************************/
void GREEN_RED_FLAG()
{
	
	int ST_PO=0,i;
	BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	
	if(GREEN_Flag)
	{
		Check_Blink=Check_Blink^0x01;
		
		if(Check_Blink) { LED_RED_GREEN(0x01);}
		else { LED_RED_GREEN(0x02);}
		
		GREEN_RED_FLAG_Time++;
	}
	
	if(GREEN_RED_FLAG_Time>50)
	{
		GREEN_RED_FLAG_Time=0;
		GREEN_Flag=0;
		LED_RED_GREEN(0x11);
		
		nIsPattern = FALSE;
		memset(0x100000,0,64*16);
		IMAGE_DATA();
	}
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
	SEND_DATA_BUFF[10]=0x00;	//ID
	SEND_DATA_BUFF[11]=0x00;	
	SEND_DATA_BUFF[12]=(RECEIVECnt&0xff);
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
              수신 DATA 를 받고 3ms 후 RTS를 ENABLE 한다.
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
          IMAGE_DATA
  열번 번호에 맞는 DATA를 READ 한다.
***********************************************************/
void IMAGE_DATA(void)
{
     int i=0,j=0;
     BYTE *nOR = (BYTE *)NORFLASH_ADDR;

     for(i=0;i<512;i++) nBuff[i]=nOR[(((NUM_HI&0xf0)>>4)*512)+FONT_ADDRES+i];
     for(i=0;i<512;i++) nBuff[512+i]=nOR[(((NUM_HI&0x0f))*512)+FONT_ADDRES+i];
     for(i=0;i<512;i++)	nBuff[1024+i]=nOR[(((NUM_LOW&0xf0)>>4)*512)+FONT_ADDRES+i];
     for(i=0;i<512;i++)	nBuff[1536+i]=nOR[(((NUM_LOW&0x0f))*512)+FONT_ADDRES+i];

     ImageMake(nBuff);
}

/**********************************************************************
	그래픽 이미지 생성
	*pDat		: 페이지0의 데이터
***********************************************************************/
//extern unsigned char pagezero[180*16];				// Logo.h에 위치
//ImageMake() 함수 변수
BYTE FULL_DATA_1[512];  //열번 1번째를 기억 하는 버퍼
BYTE FULL_DATA_2[512];  // 2번째 열번
BYTE FULL_DATA_3[512];  // 3번째 열번
BYTE FULL_DATA_4[512];  // 4번째 열번
BYTE FULL_DATA_ALL[512];  // 각 번호의 상위 2 BYTE 씩 저장

void ImageMake(BYTE *pDat)
{
	int i=0,j=0,k=0;
	int FULL_ALL=0;
	int ALL=0;
	int nBitPos=0;		//pVd(메모리) 값을 증가
	BYTE *pVd = (BYTE *)DOT_VIDEO;

	memcpy(FULL_DATA_1,(BYTE *)&pDat[0],512);
	memcpy(FULL_DATA_2,(BYTE *)&pDat[512],512);
	memcpy(FULL_DATA_3,(BYTE *)&pDat[1024],512);
	memcpy(FULL_DATA_4,(BYTE *)&pDat[1536],512);

	for(j=0;j<32;j++)
	{
		for(k=ALL;k<(ALL+4);k++)FULL_DATA_ALL[(FULL_ALL)++]=FULL_DATA_1[k];
		for(k=ALL;k<(ALL+4);k++)FULL_DATA_ALL[(FULL_ALL)++]=FULL_DATA_2[k];
		for(k=ALL;k<(ALL+4);k++)FULL_DATA_ALL[(FULL_ALL)++]=FULL_DATA_3[k];
		for(k=ALL;k<(ALL+4);k++)FULL_DATA_ALL[(FULL_ALL)++]=FULL_DATA_4[k];
		ALL+=16;
	}

	for(j=0;j<256;j++)
	{
		pVd[nBitPos++] = BitGet(FULL_DATA_ALL[j],4) | (BitGet(FULL_DATA_ALL[j],0)<<1);
		pVd[nBitPos++] = BitGet(FULL_DATA_ALL[j],5) | (BitGet(FULL_DATA_ALL[j],1)<<1);
		pVd[nBitPos++] = BitGet(FULL_DATA_ALL[j],6) | (BitGet(FULL_DATA_ALL[j],2)<<1);
		pVd[nBitPos++] = BitGet(FULL_DATA_ALL[j],7) | (BitGet(FULL_DATA_ALL[j],3)<<1);
	}

	nBitPos=0;

	for(j=256;j<512;j++)
	{
		pVd[nBitPos++] |= (BitGet(FULL_DATA_ALL[j],4) | (BitGet(FULL_DATA_ALL[j],0)<<1))<<2;
		pVd[nBitPos++] |= (BitGet(FULL_DATA_ALL[j],5) | (BitGet(FULL_DATA_ALL[j],1)<<1))<<2;
		pVd[nBitPos++] |= (BitGet(FULL_DATA_ALL[j],6) | (BitGet(FULL_DATA_ALL[j],2)<<1))<<2;
		pVd[nBitPos++] |= (BitGet(FULL_DATA_ALL[j],7) | (BitGet(FULL_DATA_ALL[j],3)<<1))<<2;
	}
}

/***********************************************************
	PATTREN_MOVE_VALUE
************************************************************/
// PATTREN() 함수 변수
int Pattren_inter_time=0;   // 패턴 TEST 할 경우 표출 시간
int Hex_Pri_Tim=0;  //패턴 TEST 할경우 HEX_SWICH 값을 print 하는 시간
void PATTREN_MOVE_VALUE(void)
{
	gOneSec = FALSE;
	if(nIsPattern)
	{

		if(num>32||numm<(-16))
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
			if(numm<(-16)) memset(0x100000,0,128*16);
			HEX_SWITCH();

		}

	}
}

/***********************************************************
	INT1 - Interrupt Routine
************************************************************/
void c_int02(void) // SCC Interrupt
{
	SCC_ISR();
}

/***********************************************************
	Timer0 - Interrupt Routine (500 us)
************************************************************/
void c_int09(void)		// Timer 0
{
	static int iLineOffset = 1;

	LdmLatchClk(0);
	LdmLatchClk(1);

	LDM_ADDR(iLineOffset);

 	DMA0_SRC = (0x100000 + (((iLineOffset+1)%16)*64));
	DMA0_DST = LDM_DATA_ADDR;
	DMA0_CNT = 64;
	DMA0_GCR = 0x3c13; // source 증가, destination 정지, 최우선 순위

	iLineOffset = (iLineOffset + 1) % 16;
}

/***********************************************************
	Timer1 - Interrupt Routine (1ms 마다 이벤트 발생)
************************************************************/

void c_int10(void)		// Timer 1
{
	if(Nor_T_F==1) Nor_Cou++;
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
	if(COUNT)	num_TX++;
	if(TX_DA_ENA_COUNT) NUM_TX_DATA++;
	if(gSccRxTimeout) gSccRxTimeout--;	//통신상에서Delay 시간을 체크
	WDI_CS;
	glDebugCnt++;
	
	if(!(glDebugCnt%100)){CHECK_TEST();}
	if(!(glDebugCnt%150)){GREEN_RED_FLAG();}
	
}
