/*******************************************************
	표시기 프로그램
	2003.5
	작성 : Yeon jun sang
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

#include "LDM.h"

/***********************************************************
	#define
************************************************************/
#define RELAY_ON (*(int *)0x818000) = 1
#define RELAY_OFF (*(int *)0x818000) = 0

#define RS485_ON RELAY_ON
#define RS485_OFF RELAY_OFF

#define HEXA_SW ((~(*(BYTE *)0x814000))&0xff)

#define BOOT_TO_INT (*(int *)0x810000) = 0

/***********************************************************

	변수 정의
	
************************************************************/

BYTE gHexaSw;

extern BYTE gRxBuffer[512];			// 데이터 수신 버퍼 [기본길이 16+spare 16]
extern BYTE gRxPos;			// 데이터 수신 위치 [초기값->0]
extern int gRxComplete;	// 수신 정상 Flag [수신비정상->0, 수신정상->1]

extern BYTE gRxExcCode[512];			// 수신 실행 코드
extern BYTE gRxStTemp;			// 수신받은 역코드를 계산
extern int DATA_LEN;


unsigned int STR_BIT=0;		//역이 시작하는 위치
unsigned int END_BIT=0;		//역이 끝나는 위치
int GO_BIT= 0;		//이동 거리를 말한다.
unsigned int glDebugCnt=0;
unsigned int ComP=0;		//비교 함수...지나온 역과 앞으로 갈역을 RED LED 와 GREEN LED로 구분...
int REV_DATA=0;

int BACK_BIT = TRUE;		//행선역 도착하였을 경우 반대 방향으로 이동시.
int ChangBit = TRUE;	//깜박이는 LED 표현
int ChangBit2= TRUE;
int PAT=FALSE;

int COUNT=FALSE;
int HI_SEND=FALSE;
int LOW_SEND=FALSE;
int num_TX=0;

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

void ADDRESS();
void PATTREN();
void DATA_LED();
void RTS(void);
BYTE SEND_DATA(void);

int IsBCCOK(BYTE *pDat,int nLen);
int cal_CRC16(int no,BYTE *dat);

/***********************************************************

	메인 프로그램
	
************************************************************/

void main(void)
{
	int i,j;
	
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
	
	//RS485_TX_ENABLE;
	//SCC2_SendTo("12312312",5,SCC_A_CHANNEL);
	GO_BIT = 0;
	while(1)
	{
		//if(SCC1_Init_AChl.TxEndFlag) RS485_TX_DISABLE;
		ComP=0;
		if(gRxComplete)		//통신이 이루어 질경우만 발생
		{
			gRxComplete= FALSE;
			
			if(gRxExcCode[9]==0x28)
			{
				if(gRxExcCode[14]<gRxExcCode[13])	
				{
					BACK_BIT=FALSE;	//<-
					PAT=FALSE;
					STR_BIT=(((gRxExcCode[14]-0x1)*3)+0x0d);
					END_BIT=(((gRxExcCode[13]-0x1)*3)+0x0d);	
					//if(GO_BIT<=STR_BIT||GO_BIT>=END_BIT)	GO_BIT=(STR_BIT-1);	
				}
				else
				{	
					BACK_BIT=TRUE;	//->
					PAT=FALSE;
					END_BIT=(((gRxExcCode[14]&0xfe)*3)+0x0d);
					STR_BIT=(((gRxExcCode[13]&0xfe)*3)+0x0d);
					//if(GO_BIT>=END_BIT||GO_BIT<=STR_BIT)	GO_BIT=(END_BIT+1);
				}
				if(STR_BIT>=17)END_BIT+=6;
				if(STR_BIT>=41)END_BIT+=6;
				if(END_BIT>=17)END_BIT+=6;
				if(END_BIT>=41)END_BIT+=6;
				ADDRESS();
				
			}
			else if(gRxExcCode[9]==0x0b)	PAT=TRUE;
			else if(gRxExcCode[9]==0x1b)	PAT=FALSE;
			else if(gRxExcCode[9]==0x07)
			{	
				COUNT=TRUE;
				SEND_DATA();
				
			}
		}
		
		if(num_TX==6)
		{
			COUNT=FALSE;
			num_TX=0;
			
			if(SCC1_Init_AChl.TxEndFlag)	LOW_SEND=TRUE;
			else	HI_SEND=TRUE;
			
			RTS();
		}
		
		if((gRxExcCode[9])==(0x28))	DATA_LED();
		if((gRxExcCode[9])!=(0x28))	PATTREN();
		
		glDebugCnt++;
	}
	
}

/**********************************************************

				주소 계산 
				
***********************************************************/
void ADDRESS(void)
{
	if(COM_DAT(gRxExcCode[15],gRxExcCode[16])<REV_DATA)
	{
		
		//if(GO_BIT>=END_BIT)
		//{ 
			//BACK_BIT=!BACK_BIT;
		//	GO_BIT=END_BIT+1;
		//}
		if(BACK_BIT)
		{
			
			//if(GO_BIT==50||GO_BIT==26) GO_BIT-=6;		//50,26일 경우는 ->일 경우 -6으로 모듈사이의 6자리를 건너 뛴다.
			
			//if(GO_BIT==(STR_BIT+1)) 					//->이로 끝나는 위치 까지 이동하였을 경우 <- 방향으로 진행
			//{
				//BACK_BIT=!BACK_BIT;			//BACK는 이동 방향을 결정.
			//	GO_BIT=(STR_BIT+2);
			//}
			//else
				//GO_BIT-=3;
		}
		else 
		{
			
			//if(GO_BIT==15||GO_BIT==39) GO_BIT+=6;	//<- 방향으로 이동시 15,39 일경우 모듈사이의 +6 을 이동
			//GO_BIT+=3;
			
		}	
	}
	REV_DATA=COM_DAT(gRxExcCode[15],gRxExcCode[16]);
	
}

/***********************************************************

		PATTREN TEST

************************************************************/
void PATTREN(void)
{
	int i,j;
	if(PAT)
	{
		for(j=0;j<4;j++)
		{	
			
			for(i=0;i<66;i++)	LDM_DATA=j;
			LdmLatchClk(0);
			
			for(i=0;i<0xfffff;i++);
		}	
	}
	else	
	{
		for(i=0;i<66;i++) 	LDM_DATA=0;
		LdmLatchClk(0);
	}
	//if(BACK_BIT==FALSE)	GO_BIT=(STR_BIT-1);	
	//if(BACK_BIT==TRUE)	GO_BIT=(END_BIT+1);
}

/**********************************************************

		DATA_LED SOURCE
		
***********************************************************/
void DATA_LED(void)
{
	int i;
	
	if(ComP>=END_BIT||ComP==0) ComP=(STR_BIT);
	  
		for(i=0;i<66;i++)
		{
			
			//if(i==(Compare%66)) 			//내가 원하는 비트를 점등
				if(i>=STR_BIT&&i<=END_BIT) 			// A 지점에서 B 지점 까지 점등
				{
					if(i==ComP)				//역명 LED와 방향 LED를 구분 한다.
					{
						if(BACK_BIT==FALSE)				//STR_BIT 현재 까지 진행한 방향 지시 LED 위치
						{
							/*if(ComP<=GO_BIT)	// 반대 방향으로 진행시 지금 까지 진행된 위치 전까지 RED LED 점등
								LDM_DATA = 2;
							else if(COM_DAT(gRxExcCode[15],gRxExcCode[16])>=70&&ChangBit==FALSE&&i==(GO_BIT+1))
								if(ChangBit2) 
									LDM_DATA = 1;
								else
									LDM_DATA = 0;	
							else
								LDM_DATA = 1; */
								
						}
				 		else
				 		{
				 			/*if(ComP>=GO_BIT)	//순 방향일 경우 지금 까지 진행된 곳까지는 RED LED, 앞으로 갈곳은 GREEN LED 점등 
								LDM_DATA = 2;
							else if(COM_DAT(gRxExcCode[15],gRxExcCode[16])>=70&&ChangBit==FALSE&&i==(GO_BIT-1))
								if(ChangBit2) 
									LDM_DATA = 1;
								else
									LDM_DATA = 0;
							else
								LDM_DATA = 1; */
				 		}
				 		
				 		ComP+=3;				//역명을 표현 하기 위해서 3씩 증가.
				 		
				 	}
				 	/*else if(i==GO_BIT)				//방향 표시 LED 위치와 같으면...
				 	{
				 		if(ChangBit)				//깜빡임을 표현 하기 위해서 
				 			LDM_DATA = 3;			//참일 경우 YELLOW LED 를 점등
				 		else 
				 			LDM_DATA = 0;
				 	} */
				 	else
				 	{
				 		LDM_DATA=0;
				 	}
				}
				else	LDM_DATA=0;
					
			
		}
			
			LdmLatchClk(0);
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
		SCC2_SendTo((BYTE *)gRxExcCode,20,SCC_A_CHANNEL);
	}
	
	if(LOW_SEND)
	{
		LOW_SEND=FALSE;
		RS485_TX_DISABLE;
		SCC1_Init_AChl.TxEndFlag=FALSE;
	}
}

/***************************************************************************
					SEND_DATA
***************************************************************************/

BYTE SEND_DATA(void)
{
	
	BYTE SEND_CRC;
	BYTE CHANGE;
	
	CHANGE=gRxExcCode[7];
	gRxExcCode[7]=gRxExcCode[8];
	gRxExcCode[8]=CHANGE;
	gRxExcCode[9]=0x08;
	SEND_CRC=cal_CRC16(15,(BYTE *)&gRxExcCode[3]);
	gRxExcCode[18]=(SEND_CRC)>>8;
	gRxExcCode[19]=(SEND_CRC)&0x00ff;
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
	TMR0_PERD = 14745*100;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms

	/* timer1 init */
	TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
	TMR1_PERD = 14745*100;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms

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

	Timer0 - Interrupt Routine (100ms)
	RTS control 부분!!!
************************************************************/
void c_int09(void)		// Timer 0
{
	
	if(SCC1_Init_AChl.TxEndFlag) 	COUNT=TRUE;
	if(COUNT)num_TX++;
	
}

/***********************************************************

	Timer1 - Interrupt Routine
	다음역 이동 LED 깜박이는 부분...
************************************************************/
void c_int10(void)		// Timer 1
{
	if(COM_DAT(gRxExcCode[15],gRxExcCode[16])<=70) 
		ChangBit=!ChangBit;
	else
		ChangBit=FALSE;
		
	//정지역 LED 깜박이는 부분
	if(COM_DAT(gRxExcCode[15],gRxExcCode[16])>=70) 
		ChangBit2=!ChangBit2;
	else
		ChangBit2=FALSE; 
}
