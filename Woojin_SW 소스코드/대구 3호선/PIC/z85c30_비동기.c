#include "All_def.h"
#include "z85c30.h"
#include "DataPro.h"

extern TRAN_STATION_INFO nTr_St_Info;

SCC_INIT_SHAPE SCC1_INIT_A;
SCC_INIT_SHAPE SCC1_INIT_B;

SCC_INIT_SHAPE SCC2_INIT_A;
SCC_INIT_SHAPE SCC2_INIT_B;

SCC_INIT_SHAPE SCC3_INIT_A;
SCC_INIT_SHAPE SCC3_INIT_B;

UCHAR m_Scc1RXBuff_Ach[SCC_BUFF_SIZE];
UCHAR m_Scc1RXBuff_Ach_Back[SCC_BUFF_SIZE];
UCHAR m_Scc1TXBuff_Ach[SCC_BUFF_SIZE];

UCHAR m_Scc1RXBuff_Bch[SCC_BUFF_SIZE];
UCHAR m_Scc1RXBuff_Bch_Back[SCC_BUFF_SIZE];
UCHAR m_Scc1TXBuff_Bch[SCC_BUFF_SIZE];

UCHAR m_Scc2RXBuff_Ach[SCC_BUFF_SIZE];
UCHAR m_Scc2RXBuff_Ach_Back[SCC_BUFF_SIZE];
UCHAR m_Scc2TXBuff_Ach[SCC_BUFF_SIZE];

UCHAR m_Scc2RXBuff_Bch[SCC_BUFF_SIZE];
UCHAR m_Scc2RXBuff_Bch_Back[SCC_BUFF_SIZE];
UCHAR m_Scc2TXBuff_Bch[SCC_BUFF_SIZE];

UCHAR m_Scc3RXBuff_Ach[SCC_BUFF_SIZE];
UCHAR m_Scc3RXBuff_Ach_Back[SCC_BUFF_SIZE];
UCHAR m_Scc3TXBuff_Ach[SCC_BUFF_SIZE];

UCHAR m_Scc3RXBuff_Bch[SCC_BUFF_SIZE];
UCHAR m_Scc3RXBuff_Bch_Back[SCC_BUFF_SIZE];
UCHAR m_Scc3TXBuff_Bch[SCC_BUFF_SIZE];

//SCC1-------------------------------
UCHAR m_nSendTo1LenAch = 0;
UCHAR m_nDelaySend1BuffAch[SCC_BUFF_SIZE];
UCHAR m_nSendTo1DlyTmAch =0;

UCHAR m_nSendTo1LenBch = 0;
UCHAR m_nDelaySend1BuffBch[SCC_BUFF_SIZE];
UCHAR m_nSendTo1DlyTmBch =0;
//SCC2-------------------------------
UCHAR m_nSendTo2LenAch = 0;
UCHAR m_nDelaySend2BuffAch[SCC_BUFF_SIZE];
UCHAR m_nSendTo2DlyTmAch =0;

UCHAR m_nSendTo2LenBch = 0;
UCHAR m_nDelaySend2BuffBch[SCC_BUFF_SIZE];
UCHAR m_nSendTo2DlyTmBch =0;
//SCC3-------------------------------
UCHAR m_nSendTo3LenAch = 0;
UCHAR m_nDelaySend3BuffAch[SCC_BUFF_SIZE];
UCHAR m_nSendTo3DlyTmAch =0;

UCHAR m_nSendTo3LenBch = 0;
UCHAR m_nDelaySend3BuffBch[SCC_BUFF_SIZE];
UCHAR m_nSendTo3DlyTmBch =0;


UCHAR m_SCCPISTXBuff_Ach[50] ={0x60,0x02,0x13,0x30,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};

extern SELF_TEST nSelf_Test;	//자기 진단 관련 구조체


/******************************************************************
	CRC table
*******************************************************************/
WORD CRC_Table[] = {
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


/******************************************************************
	SCC 정의
*******************************************************************/
UCHAR SCC_INIT_ASYNC_9600bps[][2]=
{
	{ 9,0xC0},	/* CH A INITIALIZE */       
	{ 4,0x44},	/* NO PARITY, 1 STOP, x16MODE */
//	{ 4,0x84},	/* NO PARITY, 1 STOP, x32MODE */
	{ 3,0xC0},	/* RX 8 BIT/CHAR, NO AUTO ENABLE */      
	{ 5,0x60},	/* TX 8 BIT/CHAR */
	{ 6,0x00},	/* ABORT SDLC */
	{ 7,0x00},	/* ABORT SDLC */
	{10,0x00},	/* ABORT SDLC */
	{11,0x56},	/* SET TO PCLK SOURCE */
			// 8MHz, 9600bps, 
//	{12,0x18},	/* LOW UCHAR B/R ( 8.000Mhz ) */
//	{13,0x00},	/* HIGH  " SET 9600 BAUD */	
	

	{12,0x32},	/* LOW UCHAR B/R ( 16.000Mhz ) */  // 9600 x16 = 153,600bps
//	{12,0x18},	/* LOW UCHAR B/R ( 16.000Mhz ) */  // 9600 x32 = 307,200bps

	{13,0x00},	/* HIGH  " SET 9600 BAUD */
	{14,0x03},	/* BRG SOURCE = PCLK, ENABLE BRG */
	{15,0x00},	/* EXT INT DISABLE */
	{ 3,0xC1},	/* RX ENABLE */
	{ 5,0x6a},	/* TX ENABLE DTR OFF,RTS ON */
//	{ 5,0x68},	/* TX ENABLE DTR OFF,RTS LOW *///강제적으로 LOW 로 삽입 
	{ 9,0x0a},	/* MIE SET,NON VECTOR */
	{ 1,0x12},	/* RX INT ENABLE,TX INT DISABLE */
	{ 0xff,0xff}	/* End of SCC Init Table */
};


UCHAR SCC_INIT_ASYNC_NONEPARITY_19200BPS[][2]=
{
	{ 9,0xC0},		// CH A,B INITIALIZE        
	{ 4,0x44},		// x16MODE,B23:1'Stop(01),1.5'Stop(10),2'Stop(11),B1:Even(1)Odd(0),B0:ParityEnable 
	{ 3,0xC0},		// RX 8 BIT/CHAR, NO AUTO ENABLE       
	{ 5,0x60},		// TX 8 BIT/CHAR 
	{ 6,0x00},		// ABORT SDLC 
	{ 7,0x00},		// ABORT SDLC 
	{10,0x00},		// ABORT SDLC 
	{11,0x56},		// SET TO PCLK SOURCE 

	// 16MHz, 4800bps, 102(66H)
	// 16MHz, 9600bps,  50(32H)
	// 16MHz, 19200bps, 24(18H)
	// 16MHz, 38400bps, 11( BH)
	{12,0x18},		// LOW UCHAR B/R ( 16.000Mhz ) 
	{13,0x00},		// HIGH  " SET 9600 BAUD 	
	
	{14,0x03},		// BRG SOURCE = PCLK, ENABLE BRG 
	{15,0x00},		// EXT INT DISABLE 
	{ 3,0xC1},		// RX ENABLE 
	{ 5,0x6a},		// TX ENABLE DTR OFF,RTS ON 
	{ 9,0x0a},		// MIE SET,NON VECTOR 
	{ 1,0x12},		// RX,TX INT ENAIBLE 
	{0xff,0xff}		// SCC 데이터의 끝
};

/******************************************************************
	SCC 정의
*******************************************************************/
UCHAR SCC_INIT_HDLC_PLL_9600BPS[][2]=
{
	{9,0xC0}, 	// Reset A,B
	{4,0x20},	// SDLC Mode
	{3,0xc0},	// Character Length -8bir/character
	{5,0x60},	// Character Length -8bit/character
	{6,0x60},	// 국번

	{7,0x7e},	// preamble signal
	
//	{10,0xa0},	// NRZI //FM(0x60)
	{10,0xa8},	// NRZI //FM(0x60) // IDLE 조건 
	{11,0x77},	// Receive Clock  = BR Generator Output (0X77)
			// 16MHz , 9600bps, 831(33FH)
			// 16MHz , 57600bps, 136(88H)
			// 16MHz , 76800bps, 102(66H)
			// 16MHz , 100,000bps, 78(4EH)
			// 16MHz , 125,000bps, 62(3EH)
			// 16MHz , 153,600bps, 50(32H)
			// 16MHz , 200,000bps, 38(26H)
			// 16MHz , 307,200bps, 24(18H) // 9600 x 32 = 307,200
			// 16MHz , 1000,000bps, 6(6H)
			// 16MHz , 2000,000bps, 2(2H)
//	{12,0x3F},	// BuadRate Low
//	{13,0x03},	// BuadRate High	
	{12,0x3F},	// BuadRate Low
	{13,0x03},	// BuadRate High	
	
	{14,0xe3},	// 0xc3 : FM , 0xe3 : NRZI ??
	{14,0xa3},	// 0x83 : BR , 0xa3 : RTxC ??
//	{14,0x27},	// 0x23 : Enter Search Mode ??
	{14,0x23},	// Enter Search Mode
	
	{15,0x01},	// WR7' : enable
//	{7,0x27},	//{7,0x25}, //0x27 auto reset, auto rts enable
	{7,0x23},	//{7,0x25}, //0x27 auto reset, auto rts disable
	
	{15,0x40},	//
	{3,0xcd},	// Rx 8 Bits/Charactor, Adress no Search Mode(SDLC))
	{5,0x69},	// Tx 8 Bits/Charactor, Tx Enable, Tx CRC Enable, RTS = High (0x69)
	{9,0x0a},	// MIE(Master Interrupt Enable), NV(No Vector))
	{1,0x12},	// Recieve TxBuffer by DMA(0xe0) // interrupt (0x12)
	{0xff,0xff}	// SCC 데이터의 끝
};

/*******************************************************
	Z8530의 초기화를 한다.
********************************************************/
void SCC_Initial()
{
	int i;

	SCC1_A_C = 9;
	SCC1_A_C = 0x40;
	SCC1_B_C = 9;
	SCC1_B_C = 0x80;

	SCC2_A_C = 9;
	SCC2_A_C = 0x40;
	SCC2_B_C = 9;
	SCC2_B_C = 0x80;


	// SCC1_A 체널 초기화
	for(i = 1;;i++)
	{
		/*
		if(SCC_INIT_HDLC_PLL_9600BPS[i][0] == 0xff) break;
		SCC1_A_C = SCC_INIT_HDLC_PLL_9600BPS[i][0];
		SCC1_A_C = SCC_INIT_HDLC_PLL_9600BPS[i][1];	
		*/

		
		if(SCC_INIT_ASYNC_9600bps[i][0] == 0xff) break;
		SCC1_A_C = SCC_INIT_ASYNC_9600bps[i][0];
		SCC1_A_C = SCC_INIT_ASYNC_9600bps[i][1];	
		
	}

	// SCC1_B 체널 초기화
	for(i = 1;;i++)
	{
		if(SCC_INIT_ASYNC_9600bps[i][0] == 0xff) break;
		SCC1_B_C = SCC_INIT_ASYNC_9600bps[i][0];
		SCC1_B_C = SCC_INIT_ASYNC_9600bps[i][1];	
	} 
	
	// SCC2_A_B 체널 초기화
	for(i = 1;;i++)
	{
		if(SCC_INIT_ASYNC_9600bps[i][0] == 0xff) break;
		SCC2_A_C = SCC_INIT_ASYNC_9600bps[i][0];
		SCC2_A_C = SCC_INIT_ASYNC_9600bps[i][1];	

		SCC2_B_C = SCC_INIT_ASYNC_9600bps[i][0];
		SCC2_B_C = SCC_INIT_ASYNC_9600bps[i][1];

	}

	// SCC3_A_B 체널 초기화
	for(i =1;;i++)
	{
		if(SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][0] == 0xff) break;
		SCC3_A_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][0];
		SCC3_A_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][1];

		SCC3_B_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][0];
		SCC3_B_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][1];
	}
	
	SCC1_INIT_A.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE
	SCC1_INIT_A.RxOKCnt = 0;
	SCC1_INIT_A.RxPos = 0; // RX의 버퍼의 위치
	SCC1_INIT_A.RxLen = 21;//(21에서 열차 번호 때문에 2BYTE길어 진다.	//RX 길이
	SCC1_INIT_A.TxLen = 17;	//
	SCC1_INIT_A.TxOK = TRUE;
	SCC1_INIT_A.RxDlyTm = 0;
	SCC1_INIT_A.RxBuffer = m_Scc1RXBuff_Ach;
	SCC1_INIT_A.TxBuffer = m_Scc1TXBuff_Ach;
	memset(SCC1_INIT_A.RxBuffer,0,sizeof(m_Scc1RXBuff_Ach));
	memset(SCC1_INIT_A.TxBuffer,0,sizeof(m_Scc1TXBuff_Ach));

	SCC1_INIT_B.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE
	SCC1_INIT_B.RxOKCnt = 0;
	SCC1_INIT_B.RxPos = 0; // RX의 버퍼의 위치
	SCC1_INIT_B.RxLen = 0;	//RX 길이
	SCC1_INIT_B.TxLen = 0;
	SCC1_INIT_B.TxOK = TRUE;
	SCC1_INIT_B.RxDlyTm = 0;
	SCC1_INIT_B.RxBuffer = m_Scc1RXBuff_Bch;
	SCC1_INIT_B.TxBuffer = m_Scc1TXBuff_Bch;
	memset(SCC1_INIT_B.RxBuffer,0,sizeof(m_Scc1RXBuff_Bch));
	memset(SCC1_INIT_B.TxBuffer,0,sizeof(m_Scc1TXBuff_Bch));
////////////////////////////

	SCC2_INIT_A.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE
	SCC2_INIT_A.RxOKCnt = 0;
	SCC2_INIT_A.RxPos = 0; // RX의 버퍼의 위치
	SCC2_INIT_A.RxLen = 20; //RX 길이
	SCC2_INIT_A.TxPos = 0;
	SCC2_INIT_A.TxLen = 0;
	SCC2_INIT_A.TxOK = TRUE;
	SCC2_INIT_A.RxDlyTm = 0;
	SCC2_INIT_A.RxBuffer = m_Scc2RXBuff_Ach;
	SCC2_INIT_A.TxBuffer = m_Scc2TXBuff_Ach;
	memset(SCC2_INIT_A.RxBuffer,0,sizeof(m_Scc2RXBuff_Ach));
	memset(SCC2_INIT_A.TxBuffer,0,sizeof(m_Scc2TXBuff_Ach));

	SCC2_INIT_B.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE
	SCC2_INIT_B.RxOKCnt = 0;
	SCC2_INIT_B.RxPos = 0; // RX의 버퍼의 위치
	SCC2_INIT_B.RxLen = 20;	//RX 길이
	SCC2_INIT_B.TxPos = 0;
	SCC2_INIT_B.TxLen = 0;
	SCC2_INIT_B.TxOK = TRUE;
	SCC2_INIT_B.RxDlyTm = 0;
	SCC2_INIT_B.RxBuffer = m_Scc2RXBuff_Bch;
	SCC2_INIT_B.TxBuffer = m_Scc2TXBuff_Bch;
	memset(SCC2_INIT_B.RxBuffer,0,sizeof(m_Scc2RXBuff_Bch));
	memset(SCC2_INIT_B.TxBuffer,0,sizeof(m_Scc2TXBuff_Bch));
////////////////////////////
	SCC3_INIT_A.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE
	SCC3_INIT_A.RxOKCnt = 0;
	SCC3_INIT_A.RxPos = 0; // RX의 버퍼의 위치
	SCC3_INIT_A.RxLen = 4; //RX 길이
	SCC3_INIT_A.TxPos = 0;
	SCC3_INIT_A.TxLen = 0;
	SCC3_INIT_A.TxOK = TRUE;
	SCC3_INIT_A.RxDlyTm = 0;
	SCC3_INIT_A.RxBuffer = m_Scc3RXBuff_Ach;
	SCC3_INIT_A.TxBuffer = m_Scc3TXBuff_Ach;
	memset(SCC3_INIT_A.RxBuffer,0,sizeof(m_Scc3RXBuff_Ach));
	memset(SCC3_INIT_A.TxBuffer,0,sizeof(m_Scc3TXBuff_Ach));

	SCC3_INIT_B.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE
	SCC3_INIT_B.RxOKCnt = 0;
	SCC3_INIT_B.RxPos = 0; // RX의 버퍼의 위치
	SCC3_INIT_B.RxLen = 4;	//RX 길이
	SCC3_INIT_B.TxPos = 0;
	SCC3_INIT_B.TxLen = 0;
	SCC3_INIT_B.TxOK = TRUE;
	SCC3_INIT_B.RxDlyTm = 0;
	SCC3_INIT_B.RxBuffer = m_Scc3RXBuff_Bch;
	SCC3_INIT_B.TxBuffer = m_Scc3TXBuff_Bch;
	memset(SCC3_INIT_B.RxBuffer,0,sizeof(m_Scc3RXBuff_Bch));
	memset(SCC3_INIT_B.TxBuffer,0,sizeof(m_Scc3TXBuff_Bch));

	SCC1A_RTS_ON;
	SCC1A_RTS_OFF;
	SCC1B_RTS_ON;
	SCC1B_RTS_OFF;

	SCC2A_RTS_ON;
	SCC2A_RTS_OFF;
	SCC2B_RTS_ON;
	SCC2B_RTS_OFF;

	SCC3A_RTS_ON;
	SCC3A_RTS_OFF;
	SCC3B_RTS_ON;
	SCC3B_RTS_OFF;


}

/*******************************************************
	Z8520 1번의 A/B 체널을 이용하여 데이터를 전송한다.
********************************************************/

void SCC1_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)
{
	switch(nChannel)
	{
		case SCC_A_CHANNEL:
			SCC1_INIT_A.TxOK = FALSE;
			SCC1_INIT_A.TxPos = 1;
			SCC1_INIT_A.TxLen = nLen;
			memcpy(SCC1_INIT_A.TxBuffer,pData,nLen);
			SCC1_A_D = SCC1_INIT_A.TxBuffer[0];
			break;
		case SCC_B_CHANNEL:	
			SCC1_INIT_B.TxOK = FALSE;
			SCC1_INIT_B.TxPos = 1;
			SCC1_INIT_B.TxLen = nLen;
			memcpy(SCC1_INIT_B.TxBuffer,pData,nLen);
			SCC1_B_D = SCC1_INIT_B.TxBuffer[0];
			break;
	}
}

void Delay_SCC1_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDlyTm)
{
	switch(nChannel)
	{
	case SCC_A_CHANNEL:
			SCC1A_RTS_ON;	
			//SCC_85C30A_CMD1_WR(0x01,0x12);// TX 인터럽트 가능 //동기-비동기
			//SCC_85C30A_CMD1_WR(10,0xA0); //동기-비동기
			memcpy(m_nDelaySend1BuffAch,pData,nLen);
			m_nSendTo1LenAch = nLen;
			m_nSendTo1DlyTmAch = nDlyTm;
			break;
	case SCC_B_CHANNEL:
			SCC1B_RTS_ON;	
			//SCC_85C30B_CMD1_WR(0x01,0x12);// TX 인터럽트 가능  //동기-비동기
			memcpy(m_nDelaySend1BuffBch,pData,nLen);
			m_nSendTo1LenBch = nLen;
			m_nSendTo1DlyTmBch = nDlyTm;
			break;

	}
}
/*******************************************************
	Z8520 2번의 A/B 체널을 이용하여 데이터를 전송한다.
********************************************************/

void SCC2_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)
{
	switch(nChannel)
	{
		case SCC_A_CHANNEL:
			SCC2A_RTS_ON;	
			SCC2_INIT_A.TxOK = FALSE;
			SCC2_INIT_A.TxPos = 1;
			SCC2_INIT_A.TxLen = nLen;
			memcpy(SCC2_INIT_A.TxBuffer,pData,nLen);
			SCC2_A_D = SCC2_INIT_A.TxBuffer[0];
			break;
		case SCC_B_CHANNEL:	
			SCC2B_RTS_ON;
			SCC2_INIT_B.TxOK = FALSE;
			SCC2_INIT_B.TxPos = 1;
			SCC2_INIT_B.TxLen = nLen;
			memcpy(SCC2_INIT_B.TxBuffer,pData,nLen);
			SCC2_B_D = SCC2_INIT_B.TxBuffer[0];
			break;
	}
}

void Delay_SCC2_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDlyTm)
{
	switch(nChannel)
	{
	case SCC_A_CHANNEL:
			
			if(nSelf_Test.nSELF_ICR_SELECT)
			{
				memcpy(m_nDelaySend2BuffAch,pData,nLen);
				m_nSendTo2LenAch = nLen;
				m_nSendTo2DlyTmAch = nDlyTm;
			}else
			{
				memcpy(m_nDelaySend2BuffBch,pData,nLen);
				m_nSendTo2LenBch = nLen;
				m_nSendTo2DlyTmBch = nDlyTm;
			}

			break;
	case SCC_B_CHANNEL:
			
			if(nSelf_Test.nSELF_ICR_SELECT)
			{
			
				memcpy(m_nDelaySend2BuffBch,pData,nLen);
				m_nSendTo2LenBch = nLen;
				m_nSendTo2DlyTmBch = nDlyTm;
			}
			else
			{
				memcpy(m_nDelaySend2BuffAch,pData,nLen);
				m_nSendTo2LenAch = nLen;
				m_nSendTo2DlyTmAch = nDlyTm;

			}

			break;
	}
}

/*******************************************************
	Z8520 3번의 A/B 체널을 이용하여 데이터를 전송한다.
********************************************************/

void SCC3_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)
{
	switch(nChannel)
	{
		case SCC_A_CHANNEL:
			SCC3_INIT_A.TxOK = FALSE;
			SCC3_INIT_A.TxPos = 1;
			SCC3_INIT_A.TxLen = nLen;
			memcpy(SCC3_INIT_A.TxBuffer,pData,nLen);
			SCC3_A_D = SCC3_INIT_A.TxBuffer[0];
			break;
		case SCC_B_CHANNEL:	
			SCC3_INIT_B.TxOK = FALSE;
			SCC3_INIT_B.TxPos = 1;
			SCC3_INIT_B.TxLen = nLen;
			memcpy(SCC3_INIT_B.TxBuffer,pData,nLen);
			SCC3_B_D = SCC3_INIT_B.TxBuffer[0];
			break;
	}
}

void Delay_SCC3_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDlyTm)
{
	switch(nChannel)
	{
	case SCC_A_CHANNEL:
			//SCC3A_RTS_ON;	
			memcpy(m_nDelaySend3BuffAch,pData,nLen);
			m_nSendTo3LenAch = nLen;
			m_nSendTo3DlyTmAch = nDlyTm;
			break;
	case SCC_B_CHANNEL:
			//SCC3B_RTS_ON;
			memcpy(m_nDelaySend3BuffBch,pData,nLen);
			m_nSendTo3LenBch = nLen;
			m_nSendTo3DlyTmBch = nDlyTm;
			break;

	}
}
/*******************************************************
	cal_CRC16
********************************************************/
WORD cal_CRC16(int no,unsigned char *dat)
{
	WORD CRC = 0;
	int i;

	for(i=0;i<no;i++)
	  CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];

	return ((~CRC) & 0x0000ffff);
}

/******************************************************************************
	### BCC Check [TEXT~ETX] ###

	Input	: *pDat->수신 데이터 / nLen->수신 데이터 길이
	Output	: BCCOK->TRUE[1] / BCCNG->FALSE[0]
******************************************************************************/
UCHAR IsBCCOK(UCHAR *pDat,int nLen)
{
	UCHAR nBCC[2];
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
void MakeBcc(UCHAR *pDat,int nLen)
{
	int i;
	
	pDat[nLen] = pDat[nLen+1] = 0x00;

	for(i=0;i<nLen;i++)	pDat[nLen + (i&0x01)] ^= pDat[i];
}

/****************************************************************************
   SCC1_A : ELMS
   SCC1_B : ------
****************************************************************************/
int d_TX_SCC1_Ach=0;
int d_RX_SCC1_Ach=0;
void SCC1_AB()
{
	UCHAR nCmdCode,i;
	UCHAR nData;
	UCHAR nFrmChkA;
	
	for(i=0;i<3;i++)
	{
		SCC_85C30A_CMD1_RD(0x03,nCmdCode);

		if(!(nCmdCode & 0x36)) break;
		///////////////////////////////////////////////// FROM TCMS
		if(nCmdCode&0x20) // RR3 A채널 RX 일때..
		{

			if(!SCC1_INIT_A.RxTimeOut){SCC1_INIT_A.RxPos = 0; }
			SCC1_INIT_A.RxTimeOut = RX_TIME_OUT;

			nData = WORD_L(SCC1_A_D);
			SCC1_INIT_A.RxBuffer[SCC1_INIT_A.RxPos++] = nData;   
			
			//SCC_85C30A_CMD1_RD(0x01,nFrmChkA); //동기-비동기

			switch(SCC1_INIT_A.RxPos)
			{
				case 0x01: if(SCC1_INIT_A.RxBuffer[0]!=0x60) SCC1_INIT_A.RxPos=0; break;
				case 0x02: if(SCC1_INIT_A.RxBuffer[1]!=0x02) SCC1_INIT_A.RxPos=0; break;
				case 0x04: if(SCC1_INIT_A.RxBuffer[3]!=0x20) SCC1_INIT_A.RxPos=0; break;
				default:
					if(SCC1_INIT_A.RxPos >= SCC1_INIT_A.RxLen) 
					{
						//nFrmChkA &= 0xc0;	// 비교하기전에 마스킹 한다.//동기-비동기
						//if(nFrmChkA == 0x80)//동기-비동기
						//{//동기-비동기
						//	if(nFrmChkA != 0x40)//동기-비동기
						//	{
								memcpy(m_Scc1RXBuff_Ach_Back,SCC1_INIT_A.RxBuffer,SCC1_INIT_A.RxLen);
								SCC1_INIT_A.RxOK = TRUE;
								SCC1_INIT_A.RxOKCnt++;
								SCC1_INIT_A.RxDlyTm = 50;

								nTr_St_Info.nTcmsRxNGCnt = 0;//TCMS NG 카운터.

								d_RX_SCC1_Ach++;
						//	}//동기-비동기
						//}		//동기-비동기
						SCC1_INIT_A.RxPos = 0;
					} 
					break;
			}		
		} 
	
		///////////////////////////////////////////////// TO TCMS
		if(nCmdCode&0x10) // A채널 TX 일때..
		{	
			if(SCC1_INIT_A.TxPos<SCC1_INIT_A.TxLen)
			{
				SCC1_A_D = WORD_L(SCC1_INIT_A.TxBuffer[SCC1_INIT_A.TxPos++]);
				SCC1_A_C = 0x38;
			} 
			else 
			{
				SCC1_INIT_A.TxOK = TRUE;
				SCC1_INIT_A.TxPos = 0;
				SCC1_INIT_A.TX_RTS_OFF_TIME = 5;

				//SCC1_A_C = 0x01; SCC1_A_C = 0x10; //동기-비동기
				SCC1_A_C = 0x28; 
				d_TX_SCC1_Ach++;
			} 
			
		}

		///////////////////////////////////////////////// TO TCMS
		if(nCmdCode&0x02) // A채널 TX 일때..
		{	
			if(SCC1_INIT_B.TxPos<SCC1_INIT_B.TxLen)
			{
				SCC1_B_D = WORD_L(SCC1_INIT_B.TxBuffer[SCC1_INIT_B.TxPos++]);
				SCC1_B_C = 0x38;
			} 
			else 
			{
				SCC1_INIT_B.TxOK = TRUE;
				SCC1_INIT_B.TxPos = 0;
				SCC1_INIT_B.TX_RTS_OFF_TIME = 5;

				SCC1_B_C = 0x01; SCC1_B_C = 0x10; 
				SCC1_B_C = 0x28; 
				
			} 
		}
	}	
}

/****************************************************************************
   SCC2_A : 차내 ,정면, 측면
   SCC2_B : 자기 진단 채널
****************************************************************************/
UCHAR d_TX_Debug = 0;
UCHAR d_2_A_Rx_Cnt = 0;
void SCC2_AB()
{
	WORD nTemp1,nTemp2,nTemp3,nTemp4;
	UCHAR nCmdCode,i;
	UCHAR nData;
	for(i=0;i<3;i++)
	{
		SCC_85C30A_CMD2_RD(0x03,nCmdCode);

		if(!(nCmdCode & 0x36)) break;
		///////////////////////////////////////////////// 
		if(nCmdCode&0x20) // RR3 A채널 RX 일때..
		{

			if(!SCC2_INIT_A.RxTimeOut){SCC2_INIT_A.RxPos = 0; }
			SCC2_INIT_A.RxTimeOut = RX_TIME_OUT;

			nData = WORD_L(SCC2_A_D);
			SCC2_INIT_A.RxBuffer[SCC2_INIT_A.RxPos++] = nData;

			switch(SCC2_INIT_A.RxPos)
			{
			case 0x01 : if(WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAA ||	// 설정기 Pass 카운터
						   WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAB ||
						   WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAC ||
						   WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAD ||
						   WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAE){ } 
						else SCC2_INIT_A.RxPos = 0; break;
			case 0x02 : if(WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBB ||	//설정기 그룹 명령어
						   WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBC || 
						   WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBE){ } 
						else SCC2_INIT_A.RxPos = 0; break;
			case 0x03 : if(WORD_L(SCC2_INIT_A.RxBuffer[2]) != 0xCC) SCC2_INIT_A.RxPos = 0; break;
			case 0x07 :
				nTemp1 = MAKE_WORD(SCC2_INIT_A.RxBuffer[3],SCC2_INIT_A.RxBuffer[4]);
				nTemp2 = MAKE_WORD(SCC2_INIT_A.RxBuffer[5],SCC2_INIT_A.RxBuffer[6]);
				if(nTemp1&nTemp2 ) {SCC2_INIT_A.RxPos = 0;}
				else {SCC2_INIT_A.RxLen = nTemp1 + 10;}
				break;
			default :
				if(DWORD_L(SCC2_INIT_A.RxPos) >=DWORD_L(SCC2_INIT_A.RxLen))
				{
					memcpy(m_Scc2RXBuff_Ach_Back,SCC2_INIT_A.RxBuffer,SCC2_INIT_A.RxLen);
					SCC2_INIT_A.RxOK = TRUE;
					SCC2_INIT_A.RxPos = 0;
					
				}
				break;

			}
		} 
	
		///////////////////////////////////////////////// 
		if(nCmdCode&0x04) // RR3 B채널 RX 일때..
		{
			nData = WORD_L(SCC2_B_D);
			SCC2_INIT_B.RxBuffer[SCC2_INIT_B.RxPos++] = nData;
			switch(SCC2_INIT_B.RxPos)
			{
			case 0x01 : if(WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAA ||	// 설정기 Pass 카운터
						   WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAB ||
						   WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAC ||
						   WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAD ||
						   WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAE){ } 
						else SCC2_INIT_B.RxPos = 0; break;
			case 0x02 : if(WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBB ||	//설정기 그룹 명령어
						   WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBC || 
						   WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBE){ } 
						else SCC2_INIT_B.RxPos = 0; break;
			case 0x03 : if(WORD_L(SCC2_INIT_B.RxBuffer[2]) != 0xCC) SCC2_INIT_B.RxPos = 0; break;
			case 0x07 :
				nTemp3 = MAKE_WORD(SCC2_INIT_B.RxBuffer[3],SCC2_INIT_B.RxBuffer[4]);
				nTemp4 = MAKE_WORD(SCC2_INIT_B.RxBuffer[5],SCC2_INIT_B.RxBuffer[6]);
				if(nTemp3&nTemp4 ) {SCC2_INIT_B.RxPos = 0;}
				else {SCC2_INIT_B.RxLen = nTemp3 + 10;}
				break;
			default :
				if(DWORD_L(SCC2_INIT_B.RxPos) >=DWORD_L(SCC2_INIT_B.RxLen))
				{
					memcpy(m_Scc2RXBuff_Bch_Back,SCC2_INIT_B.RxBuffer,SCC2_INIT_B.RxLen);
					SCC2_INIT_B.RxOK = TRUE;
					SCC2_INIT_B.RxPos = 0;
				}
				break;
			}
		} 
		///////////////////////////////////////////////// 
		if(nCmdCode&0x10) // A채널 TX 일때..
		{	
			if(DWORD_L(SCC2_INIT_A.TxPos) < DWORD_L(SCC2_INIT_A.TxLen))
			{
				SCC2_A_D = WORD_L(SCC2_INIT_A.TxBuffer[SCC2_INIT_A.TxPos++]);
			}
			else 
			{
				SCC2_INIT_A.TxPos = 0;
				SCC2_INIT_A.TX_RTS_OFF_TIME = 5;
				SCC2_A_C = 0x28; 
			}

			SCC2_A_C = 0x38;
		}
		///////////////////////////////////////////////// 
		if(nCmdCode&0x02) // B채널 TX 일때..
		{	
			if(DWORD_L(SCC2_INIT_B.TxPos)<DWORD_L(SCC2_INIT_B.TxLen))
			{
				SCC2_B_D = WORD_L(SCC2_INIT_B.TxBuffer[SCC2_INIT_B.TxPos++]); 
			}
			else 
			{
				SCC2_INIT_B.TxPos = 0;
				SCC2_INIT_B.TX_RTS_OFF_TIME = 5;
				SCC2_B_C = 0x28; 

			} // 인터럽트 팬팅 클리어 
			SCC2_B_C = 0x38;
		}
	}
}

/****************************************************************************
   SCC3_A : GP 232
   SCC3_B : 232 예비
****************************************************************************/
void SCC3_AB()
{
	WORD nTemp1,nTemp2,nTemp3,nTemp4;
	UCHAR nCmdCode,i;
	UCHAR nData;
	for(i=0;i<3;i++)
	{
		SCC_85C30A_CMD3_RD(0x03,nCmdCode);

		if(!(nCmdCode & 0x36)) break;
		///////////////////////////////////////////////// 
		if(nCmdCode&0x20) // RR3 A채널 RX 일때..
		{
			nData = WORD_L(SCC3_A_D);
			SCC3_INIT_A.RxBuffer[SCC3_INIT_A.RxPos++] = nData;
			switch(SCC3_INIT_A.RxPos)
			{
			case 0x01 : if(WORD_L(SCC3_INIT_A.RxBuffer[0]) != 0x1B) SCC3_INIT_A.RxPos = 0; break;
			default :
				if(DWORD_L(SCC3_INIT_A.RxPos) >=DWORD_L(SCC3_INIT_A.RxLen))
				{
					memcpy(m_Scc3RXBuff_Ach_Back,SCC3_INIT_A.RxBuffer,SCC3_INIT_A.RxLen);
					SCC3_INIT_A.RxOK = TRUE;
					SCC3_INIT_A.RxPos = 0;
				}
				break;

			}
		} 
	
		///////////////////////////////////////////////// 
		if(nCmdCode&0x04) // RR3 B채널 RX 일때..
		{
			nData = WORD_L(SCC3_B_D);
			SCC3_INIT_B.RxBuffer[SCC3_INIT_B.RxPos++] = nData;
			switch(SCC3_INIT_B.RxPos)
			{
			case 0x01 : if(WORD_L(SCC3_INIT_B.RxBuffer[0]) != 0x1B) SCC3_INIT_B.RxPos = 0; break;
			//case 0x02 : if(WORD_L(SCC3_INIT_B.RxBuffer[1]) != 0x49) SCC3_INIT_B.RxPos = 0; break;
			default :
				if(DWORD_L(SCC3_INIT_B.RxPos) >=DWORD_L(SCC3_INIT_B.RxLen))
				{
					SCC3_INIT_B.RxOK = TRUE;
					SCC3_INIT_B.RxPos = 0;
				}
				break;

			}
		} 
		///////////////////////////////////////////////// 
		if(nCmdCode&0x10) // A채널 TX 일때..
		{
			
			if(DWORD_L(SCC3_INIT_A.TxPos) < DWORD_L(SCC3_INIT_A.TxLen))
			{
				SCC3_A_D = WORD_L(SCC3_INIT_A.TxBuffer[SCC3_INIT_A.TxPos++]);
			}
			else 
			{
				SCC3_INIT_A.TxOK = TRUE;
				SCC3_INIT_A.TxPos = 0;
				SCC3_INIT_A.TX_RTS_OFF_TIME = 5;
				SCC3_A_C = 0x28; 

				//d_TX_Debug = 1;
			}

			SCC3_A_C = 0x38;
		
		}
		///////////////////////////////////////////////// 
		if(nCmdCode&0x02) // B채널 TX 일때..
		{	
			if(DWORD_L(SCC3_INIT_B.TxPos)<DWORD_L(SCC3_INIT_B.TxLen))
			{
				SCC3_B_D = WORD_L(SCC3_INIT_B.TxBuffer[SCC3_INIT_B.TxPos++]); 
			}
			else 
			{
				SCC3_INIT_B.TxOK = TRUE;
				SCC3_INIT_B.TxPos = 0;
				SCC3_INIT_B.TX_RTS_OFF_TIME = 5;
				SCC3_B_C = 0x28; 

			} // 인터럽트 팬팅 클리어 
			SCC3_B_C = 0x38;
		}
	}
}

/****************************************************************************
   SCC_TX_PROTOCOL
   20바이트 고정으로 전송.
****************************************************************************/

void SCC_TX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nDeStCode,UCHAR nDownSt,UCHAR nErBlk,UCHAR nDataBlk1,UCHAR nDataBlk2,UCHAR nLen)
{
	WORD sCRC = 0;

	PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pTxData;
	
	pTx_Pro->nHead.nAA = 0xAA;
	pTx_Pro->nHead.nBB = 0xBB;
	pTx_Pro->nHead.nCC = 0xCC;
	pTx_Pro->nHead.nLen_H = WORD_H(nLen);
	pTx_Pro->nHead.nLen_L = WORD_L(nLen);
	pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);
	pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);
	
	pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);
	pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);
	pTx_Pro->nTest.nCode = WORD_L(nCode);
	
	pTx_Pro->nTest.nSp3 = 0x00;
	pTx_Pro->nTest.nSp4 = WORD_L(nDownSt);														//노선 - 현재역
	pTx_Pro->nTest.nErBlk = WORD_L(nErBlk);														//노선 - 다음역
	pTx_Pro->nTest.nDeStCode = ((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)==0xF5)) ? WORD_L(nDeStCode) : WORD_H(nDataBlk1);	//노선 - 행선역
	pTx_Pro->nTest.nSp7 = 	((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)==0xF7)) ? WORD_H(nDownSt) : WORD_L(nDataBlk1);		//노선 - 시발역 //열번
	pTx_Pro->nTest.nSp8 = 	((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)==0xF7)) ? WORD_L(nDownSt) : WORD_H(nDataBlk2);		//노선 - 거리   //열번
	pTx_Pro->nTest.nSp9 = 	WORD_L(nDataBlk2);													//노선 - 거리

	pTx_Pro->Etx = 0x03;

	sCRC = cal_CRC16((nLen+5),&pTxData[3]);

	pTx_Pro->CRC_H = WORD_H(sCRC);
	pTx_Pro->CRC_L = WORD_L(sCRC);
}
/****************************************************************************
   SCC_RNDTX_PROTOCOL
   20바이트 고정으로 전송.
****************************************************************************/
void SCC_RNDTX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nNowSt,UCHAR nNextSt,UCHAR nDeSt,UCHAR nStartSt,UCHAR nDist,UCHAR nLen)
{
	WORD sCRC = 0;

	PSCC_RNDTX_DATA pTx_Pro = (SCC_RNDTX_DATA *) pTxData;
	
	pTx_Pro->nHead.nAA = 0xAA;
	pTx_Pro->nHead.nBB = 0xBB;
	pTx_Pro->nHead.nCC = 0xCC;
	pTx_Pro->nHead.nLen_H = WORD_H(nLen);
	pTx_Pro->nHead.nLen_L = WORD_L(nLen);
	pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);
	pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);
	
	pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);
	pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);
	pTx_Pro->nTest.nCode = WORD_L(nCode);
	
	pTx_Pro->nTest.nSp3 = 0x00;
	pTx_Pro->nTest.nNow = WORD_L(nNowSt);		//노선 - 현재역
	pTx_Pro->nTest.nNext = WORD_L(nNextSt);		//노선 - 다음역
	pTx_Pro->nTest.nDeSt = WORD_L(nDeSt)  ;		//노선 - 행선역
	pTx_Pro->nTest.nStartSt = WORD_L(nStartSt);	//노선 - 시발역
	pTx_Pro->nTest.nDist_H = WORD_H(nDist) ;	//노선 - 거리
	pTx_Pro->nTest.nDist_L = WORD_L(nDist);		//노선 - 거리

	pTx_Pro->Etx = 0x03;

	sCRC = cal_CRC16((nLen+5),&pTxData[3]);

	pTx_Pro->CRC_H = WORD_H(sCRC);
	pTx_Pro->CRC_L = WORD_L(sCRC);
}

/****************************************************************************
   SCC_TX_PROTOCOL
   20바이트 고정으로 전송.
****************************************************************************/
void SCC_TX_PROTOCOL_SELFTEST(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nDeStCode,UCHAR nLen)
{
	WORD sCRC = 0;

	PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pTxData;
	
	pTx_Pro->nHead.nAA = 0xAA;
	pTx_Pro->nHead.nBB = 0xBB;
	pTx_Pro->nHead.nCC = 0xCC;
	pTx_Pro->nHead.nLen_H = WORD_H(nLen);
	pTx_Pro->nHead.nLen_L = WORD_L(nLen);
	pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);
	pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);
	
	pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);
	pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);
	pTx_Pro->nTest.nCode = WORD_L(nCode);
	
	pTx_Pro->nTest.nSp3 = 0x00;
	pTx_Pro->nTest.nSp4 = 0x00;
	pTx_Pro->nTest.nErBlk = 0x00;
	pTx_Pro->nTest.nDeStCode = WORD_L(nDeStCode);
	pTx_Pro->nTest.nSp7 = 0x00;
	pTx_Pro->nTest.nSp8 = 0x00;
	pTx_Pro->nTest.nSp9 = 0x00;

	pTx_Pro->Etx = 0x03;

	sCRC = cal_CRC16((nLen+5),&pTxData[3]);

	pTx_Pro->CRC_H = WORD_H(sCRC);
	pTx_Pro->CRC_L = WORD_L(sCRC);
}
/****************************************************************************
   SCC IM PR 문장 전송하는 부분.
****************************************************************************/
void SCC_TX_PIB_TEXT(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nLen,UCHAR *pText)
{
	WORD sCRC = 0;
	int i;
	PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pTxData;
	
	pTx_Pro->nHead.nAA = 0xAA;
	pTx_Pro->nHead.nBB = 0xBB;
	pTx_Pro->nHead.nCC = 0xCC;
	pTx_Pro->nHead.nLen_H = WORD_H(nLen);
	pTx_Pro->nHead.nLen_L = WORD_L(nLen);
	pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);
	pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);
	
	pTx_Pro->nText.nToAdd =WORD_L(nTo_Add);
	pTx_Pro->nText.nFromAdd = WORD_L(nFrom_Add);
	pTx_Pro->nText.nCode = WORD_L(nCode);
	
	for(i=0;i<(nLen-3);i++)
	{
		pTx_Pro->nText.nTEXT[i] = WORD_L(pText[i]); 
	}

	//pTx_Pro->Etx = 0x03;
	pTx_Pro->nText.nTEXT[i++] = 0x03;

	sCRC = cal_CRC16((nLen+5),&pTxData[3]);

	//pTx_Pro->CRC_H = WORD_H(sCRC);
	//pTx_Pro->CRC_L = WORD_L(sCRC);
	pTx_Pro->nText.nTEXT[i++] =  WORD_H(sCRC);
	pTx_Pro->nText.nTEXT[i++] =  WORD_L(sCRC);

}
/**********************************************************
	ADDRESS 설정 프로토콜
***********************************************************/
void SCC_TX_ADDSET_TEXT(UCHAR *pTxData, UCHAR nCarNum)
{

	pTxData[0] = 0xBB;
	pTxData[1] = 0x0A;

	pTxData[2] = MAKE_BYTE(nCarNum,0x0F);
	pTxData[3] = MAKE_BYTE(nCarNum,0x0A);
	pTxData[4] = MAKE_BYTE(nCarNum,0x0B);
	pTxData[5] = MAKE_BYTE(nCarNum,0x01);
	pTxData[6] = MAKE_BYTE(nCarNum,0x02);
	pTxData[7] = 0x00;
	pTxData[8] = 0x00;
	pTxData[9] = 0x00;
	pTxData[10] = 0x00;
	pTxData[11] = 0x00;

	pTxData[12] = 0x03;

	MakeBcc(&pTxData[1],12);
}
//**********************************************************************************
//	다운로드 전송 프로토콜 구성 부분.
//**********************************************************************************
void SCC_Tx_DownLoad_TEXT(UCHAR *pTxData,UCHAR *pDownData,UCHAR nUnitCod,UCHAR nReNum)
{
	WORD sCRC = 0;

	pTxData[0] = 0xAA;
	pTxData[1] = 0xBB;
	pTxData[2] = 0xCC;
	pTxData[3] = 0x00;
	pTxData[4] = 0x86;
	pTxData[5] = 0xFF;
	pTxData[6] = 0x79;
	pTxData[7] = WORD_L(nUnitCod);	//장치 코드
	pTxData[8] = 0x31;
	pTxData[9] = 0x13;	//다운로드 코드 지령.
	pTxData[10] = 0x00;
	pTxData[11] = WORD_H(nReNum);
	pTxData[12] = WORD_L(nReNum);
	
	memcpy(&pTxData[13],pDownData,128);

	sCRC = cal_CRC16(139,&pTxData[3]);

	pTxData[141] = 0x03;

	pTxData[142] = WORD_H(sCRC);
	pTxData[143] = WORD_L(sCRC);

}
/****************************************************************************
   SCC 1ms Timer
****************************************************************************/
UCHAR d_Scc1_B_TxCnt = 0;
UCHAR d_Scc2_A_TxCnt = 0;
UCHAR d_Scc2_B_TxCnt = 0;

UCHAR nTimeScc_Cnt = 0;
void Scc1msTime()
{

	nTimeScc_Cnt++;

	if(SCC2_INIT_A.RxTimeOut) {SCC2_INIT_A.RxTimeOut--;}
	if(SCC1_INIT_A.RxTimeOut) {SCC1_INIT_A.RxTimeOut--;}
	
	
	if(SCC1_INIT_A.RxDlyTm) {SCC1_INIT_A.RxDlyTm--;}
	if(SCC1_INIT_A.RxDlyTm == 1) 
	{
		Delay_SCC1_SendTo(m_SCCPISTXBuff_Ach,SCC1_INIT_A.TxLen,SCC_A_CHANNEL,5);
	}
	
    //모니터용 디버깅 부분.
	if(d_TX_Debug)
	{
		d_TX_Debug = 0;
		//nDebugFlag = SCC2_INIT_A.RxOK;
		Delay_SCC3_SendTo(m_Scc3TXBuff_Ach,SCC3_INIT_A.TxLen,SCC_B_CHANNEL,2);
	}
	
	/******************************************
	통신 1채널.   A채널 HDLC 동기 통신 EIMS 통신
    *******************************************/
	//////////////////////////////////////////////////////////////// 동기 RTS control (Off)
	if(m_nSendTo1DlyTmAch==1) SCC1_SendTo(m_nDelaySend1BuffAch,m_nSendTo1LenAch,SCC_A_CHANNEL);
	if(m_nSendTo1DlyTmAch) m_nSendTo1DlyTmAch--;

	//if(SCC1_INIT_A.TX_RTS_OFF_TIME == 3) {SCC_85C30A_CMD1_WR(10,0xa8);} //7 03-12-22 6:10오후 //동기-비동기
	if(SCC1_INIT_A.TX_RTS_OFF_TIME == 1) {SCC1A_RTS_OFF;}	
	if(SCC1_INIT_A.TX_RTS_OFF_TIME) SCC1_INIT_A.TX_RTS_OFF_TIME--; 

	/******************************************
	통신 1채널.   B채널 비동기 9600  ADDRESS Seting
    *******************************************/

	if(m_nSendTo1DlyTmBch==1) SCC1_SendTo(m_nDelaySend1BuffBch,m_nSendTo1LenBch,SCC_B_CHANNEL);
	if(m_nSendTo1DlyTmBch) m_nSendTo1DlyTmBch--;

	if(SCC1_INIT_B.TX_RTS_OFF_TIME){SCC1_INIT_B.TX_RTS_OFF_TIME--;}
	if(SCC1_INIT_B.TX_RTS_OFF_TIME == 1)
	{
		SCC1_INIT_B.TxOK = TRUE;
		SCC1B_RTS_OFF;

		d_Scc1_B_TxCnt++;
	}

	/******************************************
	통신 2채널. 
    *******************************************/
	if(m_nSendTo2DlyTmAch==1) SCC2_SendTo(m_nDelaySend2BuffAch,m_nSendTo2LenAch,SCC_A_CHANNEL);
	if(m_nSendTo2DlyTmAch) m_nSendTo2DlyTmAch--;
	if(SCC2_INIT_A.TX_RTS_OFF_TIME){SCC2_INIT_A.TX_RTS_OFF_TIME--;}
	if(SCC2_INIT_A.TX_RTS_OFF_TIME == 1)
	{
		SCC2_INIT_A.TxOK = TRUE;
		SCC2A_RTS_OFF;
		d_Scc2_A_TxCnt++;

		//nTr_St_Info.nSendIddTxFlag = TRUE;
	}

	if(m_nSendTo2DlyTmBch==1) SCC2_SendTo(m_nDelaySend2BuffBch,m_nSendTo2LenBch,SCC_B_CHANNEL);
	if(m_nSendTo2DlyTmBch) m_nSendTo2DlyTmBch--;
	if(SCC2_INIT_B.TX_RTS_OFF_TIME){SCC2_INIT_B.TX_RTS_OFF_TIME--;}
	if(SCC2_INIT_B.TX_RTS_OFF_TIME == 1)
	{
		SCC2_INIT_B.TxOK = TRUE;
		SCC2B_RTS_OFF;
		d_Scc2_B_TxCnt++;
	}

	/******************************************
	통신 3채널. GP 통신 // 모니터링
    *******************************************/
	if(m_nSendTo3DlyTmAch==1) SCC3_SendTo(m_nDelaySend3BuffAch,m_nSendTo3LenAch,SCC_A_CHANNEL);
	if(m_nSendTo3DlyTmAch) m_nSendTo3DlyTmAch--;

	if(m_nSendTo3DlyTmBch==1) SCC3_SendTo(m_nDelaySend3BuffBch,m_nSendTo3LenBch,SCC_B_CHANNEL);
	if(m_nSendTo3DlyTmBch) m_nSendTo3DlyTmBch--;

}

/****************************************************************************
  Scc100msTime
****************************************************************************/
UCHAR nTimeScc_100Cnt = 0;
void Scc100msTime()
{
	nTimeScc_100Cnt++;
	if(!(nTimeScc_100Cnt%15)) {nTr_St_Info.nTcmsRxNGCnt++; } //1초
}

