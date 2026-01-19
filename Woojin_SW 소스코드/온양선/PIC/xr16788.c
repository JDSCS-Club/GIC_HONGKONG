#include "def.h"
#include "PA_Pro.h"
#include "user.h"
#include "xr16788.h"

XR16788_INIT_SHAPE Xr16788_1Ch;
XR16788_INIT_SHAPE Xr16788_2Ch;
XR16788_INIT_SHAPE Xr16788_3Ch;
XR16788_INIT_SHAPE Xr16788_4Ch;

UCHAR m_ucXr16l788TxBuf1[XR16L788_BUF_MIN];
UCHAR m_ucXr16l788RxBuf1[XR16L788_BUF_MIN];
UCHAR m_ucXr16l788GetRxBuf1[XR16L788_BUF_MIN];
UCHAR m_ucXr16l788RxBuf1_BackUp[XR16L788_BUF_MIN];

UCHAR m_ucXr16l788TxBuf2[5];
UCHAR m_ucXr16l788RxBuf2[5];
UCHAR m_ucXr16l788GetRxBuf2[5];
UCHAR m_ucXr16l788RxBuf2_BackUp[5];

//UCHAR m_ucXr16l788TxBuf3[XR16L788_BUF_MAX];
UCHAR m_ucXr16l788RxBuf3[XR16L788_BUF_MIN];
UCHAR m_ucXr16l788GetRxBuf3[5];
//UCHAR m_ucXr16l788RxBuf3_BackUp[XR16L788_BUF_MAX];

//UCHAR m_ucXr16l788TxBuf4[XR16L788_BUF_MAX];
UCHAR m_ucXr16l788RxBuf4[XR16L788_BUF_MIN];
UCHAR m_ucXr16l788GetRxBuf4[5];
//UCHAR m_ucXr16l788RxBuf4_BackUp[XR16L788_BUF_MAX];

extern TCMS_IDC_INFO nTcmsIdcInfo;
extern PSS_TCMS_SD nPssTcmsTxData;
extern SELF_TEST nSelf_Test;	//자기 진단 관련 구조체
extern TRAN_STATION_INFO nTr_St_Info;

int DLY_Vlaue = 5;  //RX DLY 변수 <바보나무>

UCHAR m_nHexSw;


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


//**********************************************************************************
//	XR16L788 초기화 함수
// 
//**********************************************************************************
void xr16l788_Init(int nChl,int nBps,int nDataBit,int nParityBit,int nStopBit)
{
	PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;
	USHORT nBpsBuf = XR16L788_EXCLK/16/nBps;  //무슨 함수 외부클럭 함수인지? <바보나무> 
	pXr16Reg->xr16Reg[nChl].btLcr = 0x83; // Divisor Latch Bit Set : DLAB = 1
	pXr16Reg->xr16Reg[nChl].CREG2.btDlm = WORD_H(nBpsBuf);	// Ex MHz / 16 / bps
	pXr16Reg->xr16Reg[nChl].CREG1.btDll = WORD_L(nBpsBuf);
	pXr16Reg->xr16Reg[nChl].btLcr = (nDataBit&0x03) | (nParityBit&0x38) | (nStopBit&0x04); // Divisor Latch Bit Clear (Data:8bit, 1Stop, Even Parity)
	pXr16Reg->xr16Reg[nChl].CREG3.btFcr = 0x00;
	pXr16Reg->xr16Reg[nChl].CREG2.btIer = 3;	// RX,Line INT : enable, TXD : enable

	Xr16788_1Ch.nRxOK = FALSE;	// 옮바른 데이터가 수신되면 TRUE
	Xr16788_1Ch.nRxOK_Cnt = 0;
	Xr16788_1Ch.nRxRearPos = 1;		// RX의 버퍼의 위치
	Xr16788_1Ch.nRxFrontPos = 0;
	Xr16788_1Ch.nRxLen = 24;
	Xr16788_1Ch.nRxPos = 0;
	Xr16788_1Ch.nTxLen = 24;	
	Xr16788_1Ch.nTxPos = 0;
	Xr16788_1Ch.nTx_Rts_Off = 0;
	Xr16788_1Ch.nTxOK = TRUE;
	Xr16788_1Ch.nTxOK_Cnt = 0;
	Xr16788_1Ch.nRxDlyTm = 0;
	Xr16788_1Ch.nRxBuffer = m_ucXr16l788RxBuf1;
	Xr16788_1Ch.nGetRxBuf = m_ucXr16l788GetRxBuf1;
	Xr16788_1Ch.nRxBuf_BackUp = m_ucXr16l788RxBuf1_BackUp;
	Xr16788_1Ch.nTxBuffer = m_ucXr16l788TxBuf1;
	memset(Xr16788_1Ch.nRxBuffer,0,sizeof(m_ucXr16l788RxBuf1));
	memset(Xr16788_1Ch.nTxBuffer,0,sizeof(m_ucXr16l788TxBuf1));
	memset(Xr16788_1Ch.nRxBuf_BackUp,0,sizeof(m_ucXr16l788RxBuf1_BackUp));

	Xr16788_2Ch.nRxOK = FALSE;	// 옮바른 데이터가 수신되면 TRUE
	Xr16788_2Ch.nRxRearPos = 1;		// RX의 버퍼의 위치
	Xr16788_2Ch.nRxFrontPos = 0;
	Xr16788_2Ch.nRxLen = 20;
	Xr16788_2Ch.nRxPos = 0;
	Xr16788_2Ch.nTxLen = 0;	
	Xr16788_2Ch.nTxPos = 0;
	Xr16788_2Ch.nTx_Rts_Off = 0;
	Xr16788_2Ch.nTxOK = TRUE;
	Xr16788_2Ch.nRxDlyTm = 0;
	Xr16788_2Ch.nRxBuffer = m_ucXr16l788RxBuf2;
	Xr16788_2Ch.nGetRxBuf = m_ucXr16l788GetRxBuf2;
	Xr16788_2Ch.nRxBuf_BackUp = m_ucXr16l788RxBuf2_BackUp;
	Xr16788_2Ch.nTxBuffer = (UCHAR *)NVSRAM_Xr16788_debugBuf;//m_ucXr16l788TxBuf2;
	memset(Xr16788_2Ch.nRxBuffer,0,sizeof(m_ucXr16l788RxBuf2));
	memset(Xr16788_2Ch.nTxBuffer,0,sizeof(m_ucXr16l788TxBuf2));
	memset(Xr16788_2Ch.nRxBuf_BackUp,0,sizeof(m_ucXr16l788RxBuf2_BackUp));


	Xr16788_3Ch.nBPS = 192;
	Xr16788_3Ch.nRxOK = FALSE;	// 옮바른 데이터가 수신되면 TRUE
	Xr16788_3Ch.nRxRearPos = 1;		// RX의 버퍼의 위치
	Xr16788_3Ch.nRxFrontPos = 0;
	Xr16788_3Ch.nRxLen = 20;
	Xr16788_3Ch.nRxPos = 0;
	Xr16788_3Ch.nTxLen = 20;	
	Xr16788_3Ch.nTxPos = 0;
	Xr16788_3Ch.nTx_Rts_Off = 0;
	Xr16788_3Ch.nTxOK = TRUE;
	Xr16788_3Ch.nRxDlyTm = 0;
	Xr16788_3Ch.nRxBuffer = m_ucXr16l788RxBuf3;
	Xr16788_3Ch.nGetRxBuf = m_ucXr16l788GetRxBuf3;
	Xr16788_3Ch.nRxBuf_BackUp = (UCHAR *)NVSRAM_Xr16788_Buf1;//m_ucXr16l788RxBuf3_BackUp;
	Xr16788_3Ch.nTxBuffer =  (UCHAR *)NVSRAM_Xr16788_Buf2;//m_ucXr16l788TxBuf3;
	memset(Xr16788_3Ch.nRxBuffer,0,sizeof(m_ucXr16l788RxBuf3));
	memset(Xr16788_3Ch.nTxBuffer,0,512);
	memset(Xr16788_3Ch.nRxBuf_BackUp,0,512);


	Xr16788_4Ch.nRxOK = FALSE;	// 옮바른 데이터가 수신되면 TRUE
	Xr16788_4Ch.nRxRearPos = 1;		// RX의 버퍼의 위치
	Xr16788_4Ch.nRxFrontPos = 0;
	Xr16788_4Ch.nRxLen = 20;
	Xr16788_4Ch.nRxPos = 0;
	Xr16788_4Ch.nTxLen = 0;	
	Xr16788_4Ch.nTxPos = 0;
	Xr16788_4Ch.nTx_Rts_Off = 0;
	Xr16788_4Ch.nTxOK = TRUE;
	Xr16788_4Ch.nRxDlyTm = 0;
	Xr16788_4Ch.nRxBuffer = m_ucXr16l788RxBuf4;
	Xr16788_4Ch.nGetRxBuf = m_ucXr16l788GetRxBuf4;
	Xr16788_4Ch.nRxBuf_BackUp =  (UCHAR *)NVSRAM_Xr16788_Buf3;//m_ucXr16l788RxBuf4_BackUp;
	//Xr16788_4Ch.nRxBuf_BackUp =  m_ucXr16l788RxBuf4_BackUp;
	Xr16788_4Ch.nTxBuffer =  (UCHAR *)NVSRAM_Xr16788_Buf4;//m_ucXr16l788TxBuf4;
	memset(Xr16788_4Ch.nRxBuffer,0,sizeof(m_ucXr16l788RxBuf4));
	memset(Xr16788_4Ch.nTxBuffer,0,512);
	memset(Xr16788_4Ch.nRxBuf_BackUp,0,512);

	XR16L788_TXEN(XR16L788_1CHL);
	XR16L788_TXDIS(XR16L788_1CHL);

	XR16L788_TXEN(XR16L788_2CHL);
	XR16L788_TXDIS(XR16L788_2CHL);

	XR16L788_TXEN(XR16L788_3CHL);
	XR16L788_TXDIS(XR16L788_3CHL);

	XR16L788_TXEN(XR16L788_4CHL);
	XR16L788_TXDIS(XR16L788_4CHL);

}

//**********************************************************************************
//	XR16L788 RTS 제어 함수
// 
//**********************************************************************************
void xr16l788_Rts(int nChl,BOOL nHl)
{
	PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;
	UCHAR nBuf = pXr16Reg->xr16Reg[nChl].btMcr&0xfd;
	
	nBuf |= nHl == XR16L788_RTS_H ? 0x00 : 0x02;
	pXr16Reg->xr16Reg[nChl].btMcr = nBuf;
}

//**********************************************************************************
//	XR16L788 데이터  전송함수 
// 
//**********************************************************************************
void xr16l788_Send(int nChl,UCHAR *pBuf,int nLen)
{
	PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;
	
	switch(nChl)
	{
	case XR16L788_1CHL:	//TCMS 

		nLen = MIN(XR16L788_BUF_MIN,nLen);

		//XR16L788_TXEN(XR16L788_1CHL);
		memcpy(Xr16788_1Ch.nTxBuffer,pBuf,nLen);
		Xr16788_1Ch.nTxLen = nLen;
		Xr16788_1Ch.nTxPos = 1;
		pXr16Reg->xr16Reg[nChl].CREG1.btTxd = Xr16788_1Ch.nTxBuffer[0];
		Xr16788_1Ch.nTxOK = FALSE;
		
		break;
	case XR16L788_2CHL:	//LCD

		nLen = MIN(XR16L788_BUF_MAX,nLen);

		XR16L788_TXEN(XR16L788_2CHL);
		memcpy(Xr16788_2Ch.nTxBuffer,pBuf,nLen);
		Xr16788_2Ch.nTxLen = nLen;
		Xr16788_2Ch.nTxPos = 1;
		pXr16Reg->xr16Reg[nChl].CREG1.btTxd = Xr16788_2Ch.nTxBuffer[0];
		
		break;
		
	case XR16L788_3CHL:	//LED

		nLen = MIN(XR16L788_BUF_MAX,nLen);

		XR16L788_TXEN(XR16L788_3CHL);
		memcpy(Xr16788_3Ch.nTxBuffer,pBuf,nLen);
		Xr16788_3Ch.nTxLen = nLen;
		Xr16788_3Ch.nTxPos = 1;
		pXr16Reg->xr16Reg[nChl].CREG1.btTxd = Xr16788_3Ch.nTxBuffer[0];

		break;
	case XR16L788_4CHL:	//예비

		nLen = MIN(XR16L788_BUF_MAX,nLen);

		XR16L788_TXEN(XR16L788_4CHL);
		memcpy(Xr16788_4Ch.nTxBuffer,pBuf,nLen);
		Xr16788_4Ch.nTxLen = nLen;
		Xr16788_4Ch.nTxPos = 1;
		pXr16Reg->xr16Reg[nChl].CREG1.btTxd = Xr16788_4Ch.nTxBuffer[0];

		break;
	}
}

//**********************************************************************************
//	XR16L788의 RX버퍼에 리턴 함수
//**********************************************************************************
int xr16l788_GetRxBuffer(int nChl,UCHAR *pBuf,int nLimit)
{
	int i;
	UCHAR *pRr;
	UCHAR *pFr;	
	UCHAR *pRxBuf;
	int nBufPos;
	
	switch(nChl)
	{
	case XR16L788_1CHL:
		pRr = &Xr16788_1Ch.nRxRearPos;
		pFr = &Xr16788_1Ch.nRxFrontPos;
		pRxBuf = Xr16788_1Ch.nRxBuffer;

		break;
	case XR16L788_2CHL:
		pRr = &Xr16788_2Ch.nRxRearPos;
		pFr = &Xr16788_2Ch.nRxFrontPos;
		pRxBuf = Xr16788_2Ch.nRxBuffer;

		break;
	case XR16L788_3CHL:
		pRr = &Xr16788_3Ch.nRxRearPos;
		pFr = &Xr16788_3Ch.nRxFrontPos;
		pRxBuf = Xr16788_3Ch.nRxBuffer;

		break;
	case XR16L788_4CHL:

		pRr = &Xr16788_4Ch.nRxRearPos;
		pFr = &Xr16788_4Ch.nRxFrontPos;
		pRxBuf = Xr16788_4Ch.nRxBuffer;

		break;
	}	

	nBufPos = 0;
	while(1)
	{
		i = (*pFr+1)%XR16L788_BUF_MIN;
		if(i != *pRr) pBuf[nBufPos++] = pRxBuf[i]; else	break;
		if(nBufPos >= nLimit) break;	
		*pFr = i;			
	}
	
	return nBufPos;
}

//**********************************************************************************
//	XR16L788 인터럽트 함수
// 
//**********************************************************************************
UCHAR d_xr16788_Isr_Cnt = 0;
void xr16l788_Isr()
{
	int i;
	UCHAR nSt = 0;
	UCHAR nRxd = 0;
	PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;
	
	d_xr16788_Isr_Cnt++;

	// -- 1 Channel --
	nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_1CHL].CREG3.btIir);
	// TX
	if(nSt&0x02)
	{
		if(Xr16788_1Ch.nTxPos < Xr16788_1Ch.nTxLen)
		{
			pXr16Reg->xr16Reg[XR16L788_1CHL].CREG1.btTxd = WORD_L(Xr16788_1Ch.nTxBuffer[Xr16788_1Ch.nTxPos++]);
		}
		else			
		{
			Xr16788_1Ch.nTxPos = 0;
			Xr16788_1Ch.nTx_Rts_Off = DLY_Vlaue;

		}

	}
	// RX
	if(nSt&0x04)
	{

		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_1CHL].CREG1.btRxd);

		i = (Xr16788_1Ch.nRxRearPos+1)%XR16L788_BUF_MIN;
		if(Xr16788_1Ch.nRxFrontPos != i)
		{
			Xr16788_1Ch.nRxBuffer[Xr16788_1Ch.nRxRearPos] = nRxd;
			Xr16788_1Ch.nRxRearPos = (Xr16788_1Ch.nRxRearPos+1)%XR16L788_BUF_MIN;	
		}

	}

	// -- 2 Channel --
	nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_2CHL].CREG3.btIir);
	// TX
	if(nSt&0x02)
	{
		if(Xr16788_2Ch.nTxPos < Xr16788_2Ch.nTxLen)
		{
			pXr16Reg->xr16Reg[XR16L788_2CHL].CREG1.btTxd = WORD_L(Xr16788_2Ch.nTxBuffer[Xr16788_2Ch.nTxPos++]);
		}
		else			
		{
			Xr16788_2Ch.nTxPos = 0;
			Xr16788_2Ch.nTx_Rts_Off = DLY_Vlaue;
		}

	}
	// RX
	if(nSt&0x04)
	{

		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_2CHL].CREG1.btRxd);

		i = (Xr16788_2Ch.nRxRearPos+1)%XR16L788_BUF_MIN;
		if(Xr16788_2Ch.nRxFrontPos != i)
		{
			Xr16788_2Ch.nRxBuffer[Xr16788_2Ch.nRxRearPos] = nRxd;
			Xr16788_2Ch.nRxRearPos = (Xr16788_2Ch.nRxRearPos+1)%XR16L788_BUF_MIN;	
		}

	}


	// -- 3 Channel --
	nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_3CHL].CREG3.btIir);
	// TX
	if(nSt&0x02)
	{
		if(Xr16788_3Ch.nTxPos < Xr16788_3Ch.nTxLen)
		{
			pXr16Reg->xr16Reg[XR16L788_3CHL].CREG1.btTxd = WORD_L(Xr16788_3Ch.nTxBuffer[Xr16788_3Ch.nTxPos++]);
		}
		else			
		{
			Xr16788_3Ch.nTxPos = 0;
			Xr16788_3Ch.nTx_Rts_Off = DLY_Vlaue;
		}

	}
	// RX
	if(nSt&0x04)
	{

		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_3CHL].CREG1.btRxd);

		i = (Xr16788_3Ch.nRxRearPos+1)%XR16L788_BUF_MIN;
		if(Xr16788_3Ch.nRxFrontPos != i)
		{

			Xr16788_3Ch.nRxBuffer[Xr16788_3Ch.nRxRearPos] = nRxd;
			Xr16788_3Ch.nRxRearPos = (Xr16788_3Ch.nRxRearPos+1)%XR16L788_BUF_MIN;	
		}

	}
	
	
	// -- 4 Channel --
	nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_4CHL].CREG3.btIir);
	// TX
	if(nSt&0x02)
	{

		if(Xr16788_4Ch.nTxPos < Xr16788_4Ch.nTxLen)
		{
			pXr16Reg->xr16Reg[XR16L788_4CHL].CREG1.btTxd = WORD_L(Xr16788_4Ch.nTxBuffer[Xr16788_4Ch.nTxPos++]);
		}
		else			
		{
			Xr16788_4Ch.nTxPos = 0;
			Xr16788_4Ch.nTx_Rts_Off = DLY_Vlaue;
		}

	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_4CHL].CREG1.btRxd);

		i = (Xr16788_4Ch.nRxRearPos+1)%XR16L788_BUF_MIN;
		if(Xr16788_4Ch.nRxFrontPos != i)
		{
			Xr16788_4Ch.nRxBuffer[Xr16788_4Ch.nRxRearPos] = nRxd;
			Xr16788_4Ch.nRxRearPos = (Xr16788_4Ch.nRxRearPos+1)%XR16L788_BUF_MIN;	
		}

	}
}

//**********************************************************************************
//	XR16L788 메인 루프 함수
// 
//**********************************************************************************
void xr16l788_Loop()
{
}

/******************************************************************************
	### BCC Check [TEXT~ETX] ###

	Input	: *pDat->수신 데이터 / nLen->수신 데이터 길이
	Output	: BCCOK->TRUE[1] / BCCNG->FALSE[0]
******************************************************************************/
int IsBCCOK(UCHAR *pDat,UCHAR nLen)
{
	UCHAR nBCC[2];
	int i;

	nBCC[0] = nBCC[1] = 0x00;

	for(i=0;i<nLen;i++)
	{
		nBCC[(i&0x01)] ^= WORD_L(pDat[i]);
	}

	if(nBCC[0] != WORD_L(pDat[nLen]) || nBCC[1] != WORD_L(pDat[nLen+1]))
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

/****************************************************************************
   SCC_TX_PROTOCOL
   20바이트 고정으로 전송.
****************************************************************************/
UCHAR d_crcCnt = 0;

void Xr_TX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nCaNum,UCHAR nDownSt,UCHAR nErBlk,UCHAR nDataBlk1,UCHAR nDataBlk2, UCHAR nLen)
{
	WORD sCRC = 0;
	PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pTxData;
	
	pTx_Pro->nHead.nAA = 0xAA;

	if(WORD_L(nCode) == 0x1C || WORD_L(nCode) == 0x07) //호차 번호 표시기 데이타 변경 전송.
	{
		if(WORD_L(nCode) == 0x1C)
		{
			if(WORD_L(nTcmsIdcInfo.nIDCFlag))
			{
				if(WORD_L(nTcmsIdcInfo.nMc1Flag)) { pTx_Pro->nHead.nBB = 0xBC;}		 //중연된 다음 차량을 바꾼다.
				else if(WORD_L(nTcmsIdcInfo.nMc2Flag)) {pTx_Pro->nHead.nBB = 0xBB; } //자기 차량 차호를 바꾼다.
			}
			else
			{
				pTx_Pro->nHead.nBB = 0x00; // 기능이 동작 하지 않도록 하기 위해 00으로 전송.
			}
		}
		else if(WORD_L(nCode) == 0x07)
		{
			if(WORD_L(nTcmsIdcInfo.nIDCFlag))
			{
				if(!WORD_L(nSelf_Test.nSELF_ICR_CNT)) { pTx_Pro->nHead.nBB = 0xBB;}			 //자기 차량
				else if(WORD_L(nSelf_Test.nSELF_ICR_CNT) == 1) {pTx_Pro->nHead.nBB = 0xBC; } //중연된 차량 
			}
			else
			{
				pTx_Pro->nHead.nBB = 0xBB;
			}
		}

	}
	else {pTx_Pro->nHead.nBB = 0xBB;}

	pTx_Pro->nHead.nCC = 0xCC;
	pTx_Pro->nHead.nLen_H = WORD_H(nLen);
	pTx_Pro->nHead.nLen_L = WORD_L(nLen);
	pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);
	pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);
	
	pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);
	pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);
	pTx_Pro->nTest.nCode = WORD_L(nCode);
	
	pTx_Pro->nTest.nSp3 = WORD_L(nCaNum);
	pTx_Pro->nTest.nSp4 = WORD_L(nDownSt);
	pTx_Pro->nTest.nErBlk = WORD_L(nErBlk);
	pTx_Pro->nTest.nSp6 = WORD_H(nDataBlk1);
	pTx_Pro->nTest.nSp7 = WORD_L(nDataBlk1);
	pTx_Pro->nTest.nSp8 = WORD_H(nDataBlk2);
	pTx_Pro->nTest.nSp9 = WORD_L(nDataBlk2);

	pTx_Pro->Etx = 0x03;

	if(WORD_L(Xr16788_3Ch.nBPS) == 96)	//다운로드 중이면 CRC 검사를 한다.
	{
		d_crcCnt++;
		sCRC = cal_CRC16((nLen+5),&pTxData[3]);
		pTx_Pro->CRC_H = WORD_H(sCRC);
		pTx_Pro->CRC_L = WORD_L(sCRC);
	}
	else
	{
		MakeBcc(&pTxData[3],(nLen+5));
	}
}
/****************************************************************************
   SCC IM PR 문장 전송하는 부분.
****************************************************************************/
void Xr_TX_PIB_TEXT(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nLen,UCHAR *pText)
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

	pTx_Pro->nText.nTEXT[i++] = 0x03;

	MakeBcc(&pTxData[3],(nLen+5));

}
/****************************************************************************
  Xr_Tx_TCMS_TEXT
****************************************************************************/
void Xr_Tx_TCMS_TEXT(UCHAR *pTxData,UCHAR *pRxData)
{
	int i;
	TCMS_PSS pTcmsRxData = (SCC_TCMS *)pRxData;

	memset(pTxData,0x00,25);

	nPssTcmsTxData.nSTX = 0x02;
	nPssTcmsTxData.nST_Code = pTcmsRxData->nST_Code;
	nPssTcmsTxData.nStaCod = pTcmsRxData->nStaCod;
	nPssTcmsTxData.nNowCod = pTcmsRxData->nNowCod;
	nPssTcmsTxData.nNexCod = pTcmsRxData->nNexCod;
	nPssTcmsTxData.nDetCod = pTcmsRxData->nDetCod;

	nPssTcmsTxData.PID_Falt_1.n8Self_Info = nTr_St_Info.nSelf_Test_Flag;

	nPssTcmsTxData.nETX = 0x03;

	memcpy(pTxData,&nPssTcmsTxData,22);

	MakeBcc(&pTxData[1],21);

}
//**********************************************************************************
//	다운로드 전송 프로토콜 구성 부분.
//**********************************************************************************
void Xr_Tx_DownLoad_TEXT(UCHAR *pTxData,UCHAR *pDownData,UCHAR nUnitCod,UCHAR nReNum)
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
//**********************************************************************************
//	XR16L788 1ms 루프 함수
// 
//**********************************************************************************
void xr16l788_1msLoop()
{

	if(Xr16788_1Ch.nRxTimeOut) {Xr16788_1Ch.nRxTimeOut--;}
	if(Xr16788_2Ch.nRxTimeOut) {Xr16788_2Ch.nRxTimeOut--;}
	if(Xr16788_3Ch.nRxTimeOut) {Xr16788_3Ch.nRxTimeOut--;}
	if(Xr16788_4Ch.nRxTimeOut) {Xr16788_4Ch.nRxTimeOut--;}


	if(Xr16788_1Ch.nTx_Rts_Off) Xr16788_1Ch.nTx_Rts_Off--;
	if(Xr16788_1Ch.nTx_Rts_Off == 1) 
	{
		XR16L788_TXDIS(XR16L788_1CHL);
		Xr16788_1Ch.nTxOK = TRUE;

		Xr16788_1Ch.nTxOK_Cnt++;
	}

	if(Xr16788_2Ch.nTx_Rts_Off) Xr16788_2Ch.nTx_Rts_Off--;
	if(Xr16788_2Ch.nTx_Rts_Off == 1) 
	{
		XR16L788_TXDIS(XR16L788_2CHL);
		Xr16788_2Ch.nTxOK = TRUE;
	}

	if(Xr16788_3Ch.nTx_Rts_Off) Xr16788_3Ch.nTx_Rts_Off--;
	if(Xr16788_3Ch.nTx_Rts_Off == 1) 
	{
		XR16L788_TXDIS(XR16L788_3CHL);
		Xr16788_3Ch.nTxOK = TRUE;
	}

	if(Xr16788_4Ch.nTx_Rts_Off) Xr16788_4Ch.nTx_Rts_Off--;
	if(Xr16788_4Ch.nTx_Rts_Off == 1) 
	{
		XR16L788_TXDIS(XR16L788_4CHL);
		Xr16788_4Ch.nTxOK = TRUE;

	}
}

