
#include "user.h"
#include "def.h"
#include "xr16788.h"

UCHAR m_ucXr16l788TxBuf1[XR16L788_BUF_MAX];
UCHAR m_ucXr16l788RxBuf1[XR16L788_BUF_MAX];
int m_nXr16l788TxLen1 = 0;
int m_nXr16l788TxPos1 = 0;
int m_nXr16l788TxEnDlyTimer1 = 0;
int m_nXr16l788RxRear1 = 1;
int m_nXr16l788RxFront1 = 0;

UCHAR m_ucXr16l788TxBuf2[XR16L788_BUF_MAX];
UCHAR m_ucXr16l788RxBuf2[XR16L788_BUF_MAX];
int m_nXr16l788TxLen2 = 0;
int m_nXr16l788TxPos2 = 0;
int m_nXr16l788TxEnDlyTimer2 = 0;
int m_nXr16l788RxRear2 = 1;
int m_nXr16l788RxFront2 = 0;

UCHAR m_ucXr16l788TxBuf3[XR16L788_BUF_MAX];
UCHAR m_ucXr16l788RxBuf3[XR16L788_BUF_MAX];
int m_nXr16l788TxLen3 = 0;
int m_nXr16l788TxPos3 = 0;
int m_nXr16l788TxEnDlyTimer3 = 0;
int m_nXr16l788RxRear3 = 1;
int m_nXr16l788RxFront3 = 0;

UCHAR m_ucXr16l788TxBuf4[XR16L788_BUF_MAX];
UCHAR m_ucXr16l788RxBuf4[XR16L788_BUF_MAX];
int m_nXr16l788TxLen4 = 0;
int m_nXr16l788TxPos4 = 0;
int m_nXr16l788TxEnDlyTimer4 = 0;
int m_nXr16l788RxRear4 = 1;
int m_nXr16l788RxFront4 = 0;
int DLY_Vlaue = 5;  //RX DLY 변수 <바보나무>

UCHAR m_nHexSw;

BYTE Text[30];

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
	nLen = MIN(XR16L788_BUF_MAX,nLen);
	
	switch(nChl)
	{
	case XR16L788_1CHL:
		XR16L788_TXEN(XR16L788_1CHL);
		memcpy(m_ucXr16l788TxBuf1,pBuf,nLen);
		m_nXr16l788TxLen1 = nLen;
		m_nXr16l788TxPos1 = 1;
		pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l788TxBuf1[0];
		break;
	case XR16L788_2CHL:
		XR16L788_TXEN(XR16L788_2CHL);
		memcpy(m_ucXr16l788TxBuf2,pBuf,nLen);
		m_nXr16l788TxLen2 = nLen;
		m_nXr16l788TxPos2 = 1;
		pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l788TxBuf2[0];
		break;
		
		case XR16L788_3CHL:
		XR16L788_TXEN(XR16L788_3CHL);
		memcpy(m_ucXr16l788TxBuf3,pBuf,nLen);
		m_nXr16l788TxLen3 = nLen;
		m_nXr16l788TxPos3 = 1;
		pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l788TxBuf3[0];
		break;
		/*
	case XR16L788_3CHL:
		XR16L788_TXEN(XR16L788_3CHL);
		if(!m_nXr16l788TxPos3)
		{
			memcpy(m_ucXr16l788TxBuf3,pBuf,nLen);
			m_nXr16l788TxLen3 = nLen;
			m_nXr16l788TxPos3 = 1;
			pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l788TxBuf3[0];
		}
		else
		{
			memcpy(&m_ucXr16l788TxBuf3[m_nXr16l788TxLen3],pBuf,nLen);
			m_nXr16l788TxLen3 += nLen;
		}
		break;
		*/
	case XR16L788_4CHL:
		XR16L788_TXEN(XR16L788_4CHL);
		memcpy(m_ucXr16l788TxBuf4,pBuf,nLen);
		m_nXr16l788TxLen4 = nLen;
		m_nXr16l788TxPos4 = 1;
		pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l788TxBuf4[0];
		break;
	}
}

//**********************************************************************************
//	XR16L788의 RX버퍼에 리턴 함수
//**********************************************************************************
int xr16l788_GetRxBuffer(int nChl,UCHAR *pBuf,int nLimit)
{
	int i;
	int *pRr;
	int *pFr;	
	UCHAR *pRxBuf;
	int nBufPos;
	
	switch(nChl)
	{
	case XR16L788_1CHL:
		pRr = &m_nXr16l788RxRear1;
		pFr = &m_nXr16l788RxFront1;
		pRxBuf = m_ucXr16l788RxBuf1;
		break;
	case XR16L788_2CHL:
		pRr = &m_nXr16l788RxRear2;
		pFr = &m_nXr16l788RxFront2;
		pRxBuf = m_ucXr16l788RxBuf2;
		break;
	case XR16L788_3CHL:
		pRr = &m_nXr16l788RxRear3;
		pFr = &m_nXr16l788RxFront3;
		pRxBuf = m_ucXr16l788RxBuf3;
		break;
	case XR16L788_4CHL:
		pRr = &m_nXr16l788RxRear4;
		pFr = &m_nXr16l788RxFront4;
		pRxBuf = m_ucXr16l788RxBuf4;
		break;
	}	

	nBufPos = 0;
	while(1)
	{
		i = (*pFr+1)%XR16L788_BUF_MAX;
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
void xr16l788_Isr()
{
	int i;
	UCHAR nSt = 0;
	UCHAR nRxd = 0;
	PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;
	
	// -- 1 Channel --
	nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_1CHL].CREG3.btIir);
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l788TxPos1 < m_nXr16l788TxLen1)
		{
			pXr16Reg->xr16Reg[XR16L788_1CHL].CREG1.btTxd = WORD_L(m_ucXr16l788TxBuf1[m_nXr16l788TxPos1++]);
		}
		else			
		{
			m_nXr16l788TxPos1 = 0;
			m_nXr16l788TxEnDlyTimer1 = DLY_Vlaue;
			//	user_SubUartTxDisableDelayCtrl(XR16L788_1CHL);
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_1CHL].CREG1.btRxd);

		i = (m_nXr16l788RxRear1+1)%XR16L788_BUF_MAX;
		if(m_nXr16l788RxFront1 != i)
		{
			m_ucXr16l788RxBuf1[m_nXr16l788RxRear1] = nRxd;
			m_nXr16l788RxRear1 = (m_nXr16l788RxRear1+1)%XR16L788_BUF_MAX;	
		}
	}


	// -- 2 Channel --
	nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_2CHL].CREG3.btIir);
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l788TxPos2 < m_nXr16l788TxLen2)
		{
			pXr16Reg->xr16Reg[XR16L788_2CHL].CREG1.btTxd = m_ucXr16l788TxBuf2[m_nXr16l788TxPos2++];
		}
		else
		{
			m_nXr16l788TxPos2 = 0;
			m_nXr16l788TxEnDlyTimer2 = DLY_Vlaue;
			//	user_SubUartTxDisableDelayCtrl(XR16L788_2CHL);
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_2CHL].CREG1.btRxd);

		i = (m_nXr16l788RxRear2+1)%XR16L788_BUF_MAX;
		if(m_nXr16l788RxFront2 != i)
		{
			m_ucXr16l788RxBuf2[m_nXr16l788RxRear2] = nRxd;
			m_nXr16l788RxRear2 = (m_nXr16l788RxRear2+1)%XR16L788_BUF_MAX;	
		}
	}


	// -- 3 Channel --
	nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_3CHL].CREG3.btIir);
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l788TxPos3 < m_nXr16l788TxLen3)
		{
			pXr16Reg->xr16Reg[XR16L788_3CHL].CREG1.btTxd = m_ucXr16l788TxBuf3[m_nXr16l788TxPos3++];
		}
		else
		{
			m_nXr16l788TxPos3 = 0;
			m_nXr16l788TxEnDlyTimer3 = DLY_Vlaue;
			//XR16L788_TXDIS(XR16L788_3CHL);
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_3CHL].CREG1.btRxd);

		i = (m_nXr16l788RxRear3+1)%XR16L788_BUF_MAX;
		if(m_nXr16l788RxFront3 != i)
		{
			m_ucXr16l788RxBuf3[m_nXr16l788RxRear3] = nRxd;
			m_nXr16l788RxRear3 = (m_nXr16l788RxRear3+1)%XR16L788_BUF_MAX;	
		}
	}
	
	
	// -- 4 Channel --
	nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_4CHL].CREG3.btIir);
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l788TxPos4 < m_nXr16l788TxLen4)
		{
			pXr16Reg->xr16Reg[XR16L788_4CHL].CREG1.btTxd = m_ucXr16l788TxBuf4[m_nXr16l788TxPos4++];
		}
		else
		{
			m_nXr16l788TxPos4 = 0;
			m_nXr16l788TxEnDlyTimer4 = DLY_Vlaue;
			//XR16L788_TXDIS(XR16L788_3CHL);
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_4CHL].CREG1.btRxd);

		i = (m_nXr16l788RxRear4+1)%XR16L788_BUF_MAX;
		if(m_nXr16l788RxFront4 != i)
		{
			m_ucXr16l788RxBuf4[m_nXr16l788RxRear4] = nRxd;
			m_nXr16l788RxRear4 = (m_nXr16l788RxRear4+1)%XR16L788_BUF_MAX;	
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
BYTE IsBCCOK(BYTE *pDat,int nLen)
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


//**********************************************************************************
//	TCMS TX_DATA
// 
//**********************************************************************************

void TCMS_TX_DATA_FUNC()
{
	memset(Text,0x00,22);
	Text[0] =0x02;
	Text[1] =0x20;
	Text[2] = 0x44;
	Text[3] =  0x44;//nFIR_ST;
	Text[4] =  0x44;//nNOW_ST;
	Text[5] =  0x00;//nNEXT_ST;
	Text[6] =  0x00;//nDEST_ST;
	Text[7] = 0x00;
	Text[8] = 0x00;
	Text[9] = 0x00;
	Text[10] = 0x00;
	Text[11] = 0x00;
	Text[12] = 0x00;
	Text[13] = 0x00;
	Text[14] = 0x00;
	Text[15] = 0x00;
	Text[16] = 0x00;
	Text[17] = 0x00;
	Text[18] = 0x00;
	Text[19] = 0x00;
	Text[20] = 0x00;
	Text[21] = 0x00;
	
}

//**********************************************************************************
//	XR16L788 1ms 루프 함수
// 
//**********************************************************************************
void xr16l788_1msLoop()
{
	if(m_nXr16l788TxEnDlyTimer1) m_nXr16l788TxEnDlyTimer1--;
	if(m_nXr16l788TxEnDlyTimer1 == 1) XR16L788_TXDIS(XR16L788_1CHL);
	if(m_nXr16l788TxEnDlyTimer2) m_nXr16l788TxEnDlyTimer2--;
	if(m_nXr16l788TxEnDlyTimer2 == 1) XR16L788_TXDIS(XR16L788_2CHL);
	if(m_nXr16l788TxEnDlyTimer3) m_nXr16l788TxEnDlyTimer3--;
	if(m_nXr16l788TxEnDlyTimer3 == 1) XR16L788_TXDIS(XR16L788_3CHL);
	if(m_nXr16l788TxEnDlyTimer4) m_nXr16l788TxEnDlyTimer4--;
	if(m_nXr16l788TxEnDlyTimer4 == 1) XR16L788_TXDIS(XR16L788_4CHL);
}

