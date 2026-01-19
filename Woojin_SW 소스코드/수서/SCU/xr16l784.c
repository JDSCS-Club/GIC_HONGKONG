#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include "def.h"
#include "xr16l784.h"
#include "main.h"

UCHAR m_ucXr16l784TxBuf1[XR16L784_BUF_MAX+4];
UCHAR m_ucXr16l784RxBuf1[XR16L784_BUF_RX+4];
UCHAR m_ucXr16l784_1RxBackUp[XR16L784_BUF_RX+4];
int m_nXr16l784TxLen1 = 0;
int m_nXr16l784TxPos1 = 0;
int m_nXr16l784RxLen1 = 0;
int m_nXr16l784RxRear1 = 1;
int m_nXr16l784RxFront1 = 0;
int m_nXr16l784TxEnableDly1 = 0;
int m_nXr16l784TxStartEnableDly1 = 0;

UCHAR m_ucXr16l784TxBuf2[XR16L784_BUF_NOR+4];
UCHAR m_ucXr16l784RxBuf2[XR16L784_BUF_RX+4];
int m_nXr16l784TxLen2 = 0;
int m_nXr16l784TxPos2 = 0;
int m_nXr16l784RxLen2 = 0;
int m_nXr16l784RxRear2 = 1;
int m_nXr16l784RxFront2 = 0;
int m_nXr16l784TxEnableDly2 = 0;
int m_nXr16l784TxStartEnableDly2 = 0;

UCHAR m_ucXr16l784TxBuf3[XR16L784_BUF_MAX+4];
UCHAR m_ucXr16l784RxBuf3[XR16L784_BUF_RX+4];
UCHAR m_ucXr161784RxBackup[XR16L784_BUF_RX+4];
int m_nXr16l784TxLen3 = 0;
int m_nXr16l784TxPos3 = 0;
int m_nXr16l784RxLen3 = 0;
int m_nXr16l784RxRear3 = 1;
int m_nXr16l784RxFront3 = 0;
int m_nXr16l784TxEnableDly3 = 0;
int m_nXr16l784TxStartEnableDly3 = 0;

UCHAR m_ucXr16l784TxBuf4[XR16L784_BUF_NOR+4];
UCHAR m_ucXr16l784RxBuf4[XR16L784_BUF_RX+4];
int m_nXr16l784TxLen4 = 0;
int m_nXr16l784TxPos4 = 0;
int m_nXr16l784RxLen4 = 0;
int m_nXr16l784RxRear4 = 1;
int m_nXr16l784RxFront4 = 0;
int m_nXr16l784TxEnableDly4 = 0;
int m_nXr16l784TxStartEnableDly4 = 0;

UCHAR m_ucXr16l784TxBuf5[CDMA_BUF_MAX+4];
UCHAR m_ucXr16l784RxBuf5[XR16L784_BUF_RX+4];
UCHAR m_ucXr16l784Rx5Backup[150];
int m_nXr16l784TxLen5 = 0;
int m_nXr16l784TxPos5 = 0;
int m_nXr16l784RxLen5 = 0;
int m_nXr16l784RxRear5 = 1;
int m_nXr16l784RxFront5 = 0;
int m_nXr16l784TxEnableDly5 = 0;
int m_nXr16l784TxStartEnableDly5 = 0;

UCHAR m_ucXr16l784TxBuf6[XR16L784_BUF_NOR+4];
UCHAR m_ucXr16l784RxBuf6[XR16L784_BUF_RX+4];
int m_nXr16l784TxLen6 = 0;
int m_nXr16l784TxPos6 = 0;
int m_nXr16l784RxLen6 = 0;
int m_nXr16l784RxRear6 = 1;
int m_nXr16l784RxFront6 = 0;
int m_nXr16l784TxEnableDly6 = 0;
int m_nXr16l784TxStartEnableDly6 = 0;

PXR16L784BDY pXr16Reg = (XR16L784BDY *)XR16L784_BASE;


//**********************************************************************************
//	XR16L784 Ï¥àÍ∏∞???®Ïàò
// 
//**********************************************************************************
void xr16l784_Init(int nChl,DWORD nBps,int nDataBit,int nParityBit,int nStopBit)
{
	DWORD nBpsBuf = (XR16L784_EXCLK/16)/nBps;
	
	pXr16Reg->xr16Reg[nChl].btLcr = 0x83; // Divisor Latch Bit Set : DLAB = 1
	pXr16Reg->xr16Reg[nChl].CREG2.btDlm = WORD_H(nBpsBuf);	// Ex MHz / 16 / bps
	pXr16Reg->xr16Reg[nChl].CREG1.btDll = WORD_L(nBpsBuf);
	pXr16Reg->xr16Reg[nChl].btLcr = (nDataBit&0x03) | (nParityBit&0x38) | (nStopBit&0x04); // Divisor Latch Bit Clear (Data:8bit, 1Stop, Even Parity)
	pXr16Reg->xr16Reg[nChl].CREG3.btFcr = 0x0;
	pXr16Reg->xr16Reg[nChl].CREG2.btIer = 3;	// RX,Line INT : enable, TXD : enable
	
	memset(m_ucXr16l784Rx5Backup,0x00,150);

}

//**********************************************************************************
//	XR16L784 RTS ?úÏñ¥ ?®Ïàò
// 
//**********************************************************************************
void xr16l784_Rts(int nChl,BOOL nHl)
{
	UCHAR nBuf = 0x00;

	nBuf = pXr16Reg->xr16Reg[nChl].btMcr&0xfd;
	DUMMY_ACCESS;
	
	nBuf |= nHl == XR16L784_RTS_H ? 0x00 : 0x02;
	pXr16Reg->xr16Reg[nChl].btMcr = nBuf;
	DUMMY_ACCESS;
}

//**********************************************************************************
//	XR16L784 ?∞Ïù¥???ÑÏÜ° ?®Ïàò
// 
//**********************************************************************************
void xr16l784_RtsDelayStartSend(int nChl,UCHAR *pBuf,int nLen,int nTxStartEnableDly)
{
	switch(nChl)
	{
	case XR16L784_1CHL:
		m_nXr16l784TxPos1 = 0;
		m_nXr16l784TxLen1 = nLen;
		memcpy(m_ucXr16l784TxBuf1,pBuf,nLen);
		m_nXr16l784TxStartEnableDly1 = nTxStartEnableDly;
		//XR16L784_TXEN(XR16L784_1CHL);
		break;
	case XR16L784_2CHL:
		m_nXr16l784TxPos2 = 0;
		m_nXr16l784TxLen2 = nLen;
		memcpy(m_ucXr16l784TxBuf2,pBuf,nLen);
		m_nXr16l784TxStartEnableDly2 = nTxStartEnableDly;
		//XR16L784_TXEN(XR16L784_2CHL);
		break;
	case XR16L784_3CHL:
		m_nXr16l784TxPos3 = 0;
		m_nXr16l784TxLen3 = nLen;
		memcpy(m_ucXr16l784TxBuf3,pBuf,nLen);
		m_nXr16l784TxStartEnableDly3 = nTxStartEnableDly;
		//XR16L784_TXEN(XR16L784_3CHL);
		break;
	case XR16L784_4CHL:
		m_nXr16l784TxPos4 = 0;
		m_nXr16l784TxLen4 = nLen;
		memcpy(m_ucXr16l784TxBuf4,pBuf,nLen);
		m_nXr16l784TxStartEnableDly4 = nTxStartEnableDly;
		//XR16L784_TXEN(XR16L784_4CHL);
		break;
	case XR16L784_5CHL:
		m_nXr16l784TxPos5 = 0;
		m_nXr16l784TxLen5 = nLen;
		memcpy(m_ucXr16l784TxBuf5,pBuf,nLen);
		m_nXr16l784TxStartEnableDly5 = nTxStartEnableDly;
		//XR16L784_TXEN(XR16L784_5CHL);
		break;
	case XR16L784_6CHL:
		m_nXr16l784TxPos6 = 0;
		m_nXr16l784TxLen6 = nLen;
		memcpy(m_ucXr16l784TxBuf6,pBuf,nLen);
		m_nXr16l784TxStartEnableDly6 = nTxStartEnableDly;
		//XR16L784_TXEN(XR16L784_6CHL);
		break;
	}
}

//**********************************************************************************
//	XR16L784 ?∞Ïù¥???ÑÏÜ° ?®Ïàò
// 
//**********************************************************************************
void xr16l784_Send(int nChl,int nLen)
{
	
	
	switch(nChl)
	{
	case XR16L784_1CHL:
		nLen = MIN(XR16L784_BUF_MAX,nLen);
		if(!m_nXr16l784TxPos1)
		{
			m_nXr16l784TxLen1 = nLen;
			m_nXr16l784TxPos1 = 1;
			pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf1[0];
			DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxLen1 += nLen;
		}
		break;
	case XR16L784_2CHL:
		nLen = MIN(XR16L784_BUF_MAX,nLen);
		if(!m_nXr16l784TxPos2)
		{
			m_nXr16l784TxLen2 = nLen;
			m_nXr16l784TxPos2 = 1;
			pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf2[0];
			DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxLen2 += nLen;
		}
		break;
	case XR16L784_3CHL:
		nLen = MIN(XR16L784_BUF_MAX,nLen);
		if(!m_nXr16l784TxPos3)
		{
			m_nXr16l784TxLen3 = nLen;
			m_nXr16l784TxPos3 = 1;
			pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf3[0];
			DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxLen3 += nLen;
		}
		break;
	case XR16L784_4CHL:
		nLen = MIN(XR16L784_BUF_MAX,nLen);
		if(!m_nXr16l784TxPos4)
		{
			m_nXr16l784TxLen4 = nLen;
			m_nXr16l784TxPos4 = 1;
			pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf4[0];
			DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxLen4 += nLen;
		}
		break;
	case XR16L784_5CHL:

		nLen = MIN(CDMA_BUF_MAX,nLen);
		if(!m_nXr16l784TxPos5)
		{
			m_nXr16l784TxLen5 = nLen;
			m_nXr16l784TxPos5 = 1;
			pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf5[0];
			DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxLen5 += nLen;
		}
		break;
	case XR16L784_6CHL:
		nLen = MIN(XR16L784_BUF_MAX,nLen);
		if(!m_nXr16l784TxPos6)
		{
			m_nXr16l784TxLen6 = nLen;
			m_nXr16l784TxPos6 = 1;
			pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf6[0];
			DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxLen6 += nLen;
		}
		break;
	}

}

//**********************************************************************************
//	XR16L784??RXÎ≤ÑÌçº??Î¶¨ÌÑ¥ ?®Ïàò
//	1) nChl : √º≥Œ
//	2) pRxBuf : ºˆΩ≈πﬁ¿ª πˆ∆€
//	3) nRxLen : ºˆΩ≈πˆ∆€ ≈©±‚
//**********************************************************************************
int xr16l784_GetRxBuffer(int nChl,UCHAR *pBuf,int nRxBuffLen)
{
	int i;
	int *pRr = NULL;
	int *pFr = NULL;
	UCHAR *pRxBuf = NULL;
	int nBufPos;
	
	switch(nChl)
	{
	case XR16L784_1CHL:
		pRr = &m_nXr16l784RxRear1;
		pFr = &m_nXr16l784RxFront1;
		pRxBuf = m_ucXr16l784RxBuf1;
		break;
	case XR16L784_2CHL:
		pRr = &m_nXr16l784RxRear2;
		pFr = &m_nXr16l784RxFront2;
		pRxBuf = m_ucXr16l784RxBuf2;
		break;
	case XR16L784_3CHL:
		pRr = &m_nXr16l784RxRear3;
		pFr = &m_nXr16l784RxFront3;
		pRxBuf = m_ucXr16l784RxBuf3;
		break;
	case XR16L784_4CHL:
		pRr = &m_nXr16l784RxRear4;
		pFr = &m_nXr16l784RxFront4;
		pRxBuf = m_ucXr16l784RxBuf4;
		break;
	case XR16L784_5CHL:
		pRr = &m_nXr16l784RxRear5;
		pFr = &m_nXr16l784RxFront5;
		pRxBuf = m_ucXr16l784RxBuf5;
		break;
	case XR16L784_6CHL:
		pRr = &m_nXr16l784RxRear6;
		pFr = &m_nXr16l784RxFront6;
		pRxBuf = m_ucXr16l784RxBuf6;
		break;
	default:
		return 0;
	}	

	nBufPos = 0;
	while(1)
	{
		i = (*pFr+1)%XR16L784_BUF_RX;
		if(i != *pRr) {pBuf[nBufPos++] = pRxBuf[i]; if(nBufPos >= nRxBuffLen) break;} else break;
		*pFr = i;
	}
	return nBufPos;
}

int xr16l784_GetRxBuffer1Ch(UCHAR *pBuf,int nRxBuffLen)
{
	int i;
	int nBufPos;

	nBufPos = 0;
	while(1)
	{
		i = (m_nXr16l784RxFront1+1)%XR16L784_BUF_RX;
		if(i != m_nXr16l784RxRear1) {pBuf[nBufPos++] = m_ucXr16l784RxBuf1[i]; if(nBufPos >= nRxBuffLen) break;} else break;
		m_nXr16l784RxFront1 = i;
	}
	return nBufPos;
}

int xr16l784_GetRxBuffer2Ch(UCHAR *pBuf,int nRxBuffLen)
{
	int i;
	int nBufPos;

	nBufPos = 0;
	while(1)
	{
		i = (m_nXr16l784RxFront2+1)%XR16L784_BUF_RX;
		if(i != m_nXr16l784RxRear2) {pBuf[nBufPos++] = m_ucXr16l784RxBuf2[i]; if(nBufPos >= nRxBuffLen) break;} else break;
		m_nXr16l784RxFront2 = i;
	}
	return nBufPos;
}

int xr16l784_GetRxBuffer3Ch(UCHAR *pBuf,int nRxBuffLen)
{
	int i;
	int nBufPos;

	nBufPos = 0;
	while(1)
	{
		i = (m_nXr16l784RxFront3+1)%XR16L784_BUF_RX;
		if(i != m_nXr16l784RxRear3) {pBuf[nBufPos++] = m_ucXr16l784RxBuf3[i]; if(nBufPos >= nRxBuffLen) break;} else break;
		m_nXr16l784RxFront3 = i;
	}
	return nBufPos;
}

int xr16l784_GetRxBuffer4Ch(UCHAR *pBuf,int nRxBuffLen)
{
	int i;
	int nBufPos;

	nBufPos = 0;
	while(1)
	{
		i = (m_nXr16l784RxFront4+1)%XR16L784_BUF_RX;
		if(i != m_nXr16l784RxRear4) {pBuf[nBufPos++] = m_ucXr16l784RxBuf4[i]; if(nBufPos >= nRxBuffLen) break;} else break;
		m_nXr16l784RxFront4 = i;
	}
	return nBufPos;
}


int xr16l784_GetRxBuffer5Ch(UCHAR *pBuf,int nRxBuffLen)
{
	int i;
	int nBufPos;

	nBufPos = 0;
	while(1)
	{
		i = (m_nXr16l784RxFront5+1)%XR16L784_BUF_RX;
		if(i != m_nXr16l784RxRear5) {pBuf[nBufPos++] = m_ucXr16l784RxBuf5[i]; if(nBufPos >= nRxBuffLen) break;} else break;
		m_nXr16l784RxFront5 = i;
	}
	return nBufPos;
}

int xr16l784_GetRxBuffer6Ch(UCHAR *pBuf,int nRxBuffLen)
{
	int i;
	int nBufPos;

	nBufPos = 0;
	while(1)
	{
		i = (m_nXr16l784RxFront6+1)%XR16L784_BUF_RX;
		if(i != m_nXr16l784RxRear6) {pBuf[nBufPos++] = m_ucXr16l784RxBuf6[i]; if(nBufPos >= nRxBuffLen) break;} else break;
		m_nXr16l784RxFront6 = i;
	}
	return nBufPos;
}



//**********************************************************************************
//	XR16L784 ?∏ÌÑ∞?ΩÌä∏ ?®Ïàò
// 
//**********************************************************************************
void xr16l784_Isr()
{
	int i;
	UCHAR nSt = 0;
	UCHAR nRxd = 0;
	
	// -- 1 Channel --
	nSt = pXr16Reg->xr16Reg[XR16L784_1CHL].CREG3.btIir;
	DUMMY_ACCESS;
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l784TxPos1 < m_nXr16l784TxLen1)
		{
			pXr16Reg->xr16Reg[XR16L784_1CHL].CREG1.btTxd = m_ucXr16l784TxBuf1[m_nXr16l784TxPos1++ % XR16L784_BUF_MAX];DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxEnableDly1 = XR16L784_TXENABLEDLYCNT;
			m_nXr16l784TxPos1 = 0;
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_1CHL].CREG1.btRxd);DUMMY_ACCESS;
		i = (m_nXr16l784RxRear1+1)%XR16L784_BUF_RX;
		if(m_nXr16l784RxFront1 != i)
		{
			m_ucXr16l784RxBuf1[m_nXr16l784RxRear1] = nRxd;
			m_nXr16l784RxRear1 = (m_nXr16l784RxRear1+1)%XR16L784_BUF_RX;	
		}
	}

	// -- 2 Channel --
	nSt = pXr16Reg->xr16Reg[XR16L784_2CHL].CREG3.btIir;DUMMY_ACCESS;
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l784TxPos2 < m_nXr16l784TxLen2)
		{
			pXr16Reg->xr16Reg[XR16L784_2CHL].CREG1.btTxd = m_ucXr16l784TxBuf2[m_nXr16l784TxPos2++ % XR16L784_BUF_NOR];DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxEnableDly2 = XR16L784_TXENABLEDLYCNT;
			m_nXr16l784TxPos2 = 0;
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_2CHL].CREG1.btRxd);DUMMY_ACCESS;
		i = (m_nXr16l784RxRear2+1)%XR16L784_BUF_RX;
		if(m_nXr16l784RxFront2 != i)
		{
			m_ucXr16l784RxBuf2[m_nXr16l784RxRear2] = nRxd;
			m_nXr16l784RxRear2 = (m_nXr16l784RxRear2+1)%XR16L784_BUF_RX;	
		}
	}

	// -- 3 Channel --
	nSt = pXr16Reg->xr16Reg[XR16L784_3CHL].CREG3.btIir;DUMMY_ACCESS;
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l784TxPos3 < m_nXr16l784TxLen3)
		{
			pXr16Reg->xr16Reg[XR16L784_3CHL].CREG1.btTxd = m_ucXr16l784TxBuf3[m_nXr16l784TxPos3++ % XR16L784_BUF_MAX];DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxEnableDly3 = XR16L784_TXENABLEDLYCNT;
			m_nXr16l784TxPos3 = 0;
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_3CHL].CREG1.btRxd);DUMMY_ACCESS;
		i = (m_nXr16l784RxRear3+1)%XR16L784_BUF_RX;
		if(m_nXr16l784RxFront3 != i)
		{
			m_ucXr16l784RxBuf3[m_nXr16l784RxRear3] = nRxd;
			m_nXr16l784RxRear3 = (m_nXr16l784RxRear3+1)%XR16L784_BUF_RX;	
		}
	}

	// -- 4 Channel --
	nSt = pXr16Reg->xr16Reg[XR16L784_4CHL].CREG3.btIir;DUMMY_ACCESS;
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l784TxPos4 < m_nXr16l784TxLen4)
		{
			pXr16Reg->xr16Reg[XR16L784_4CHL].CREG1.btTxd = m_ucXr16l784TxBuf4[m_nXr16l784TxPos4++ % XR16L784_BUF_NOR];DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxEnableDly4 = XR16L784_TXENABLEDLYCNT;
			m_nXr16l784TxPos4 = 0;
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_4CHL].CREG1.btRxd);DUMMY_ACCESS;
		i = (m_nXr16l784RxRear4+1)%XR16L784_BUF_RX;
		if(m_nXr16l784RxFront4 != i)
		{
			m_ucXr16l784RxBuf4[m_nXr16l784RxRear4] = nRxd;
			m_nXr16l784RxRear4 = (m_nXr16l784RxRear4+1)%XR16L784_BUF_RX;	
		}
	}

		// -- 5 Channel --
	nSt = pXr16Reg->xr16Reg[XR16L784_5CHL].CREG3.btIir;DUMMY_ACCESS;
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l784TxPos5 < m_nXr16l784TxLen5)
		{
			pXr16Reg->xr16Reg[XR16L784_5CHL].CREG1.btTxd = m_ucXr16l784TxBuf5[m_nXr16l784TxPos5++ % CDMA_BUF_MAX];DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxEnableDly5 = XR16L784_TXENABLEDLYCNT;
			m_nXr16l784TxPos5 = 0;
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_5CHL].CREG1.btRxd);DUMMY_ACCESS;
		i = (m_nXr16l784RxRear5+1)%XR16L784_BUF_RX;
		if(m_nXr16l784RxFront5 != i)
		{
			m_ucXr16l784RxBuf5[m_nXr16l784RxRear5] = nRxd;
			m_nXr16l784RxRear5 = (m_nXr16l784RxRear5+1)%XR16L784_BUF_RX;	
		}
	}

		// -- 6 Channel --
	nSt = pXr16Reg->xr16Reg[XR16L784_6CHL].CREG3.btIir;DUMMY_ACCESS;
	// TX
	if(nSt&0x02)
	{
		if(m_nXr16l784TxPos6 < m_nXr16l784TxLen6)
		{
			pXr16Reg->xr16Reg[XR16L784_6CHL].CREG1.btTxd = m_ucXr16l784TxBuf6[m_nXr16l784TxPos6++ % XR16L784_BUF_NOR];DUMMY_ACCESS;
		}
		else
		{
			m_nXr16l784TxEnableDly6 = XR16L784_TXENABLEDLYCNT;
			m_nXr16l784TxPos6 = 0;
		}
	}
	// RX
	if(nSt&0x04)
	{
		nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_6CHL].CREG1.btRxd);DUMMY_ACCESS;
		i = (m_nXr16l784RxRear6+1)%XR16L784_BUF_RX;
		if(m_nXr16l784RxFront6 != i)
		{
			m_ucXr16l784RxBuf6[m_nXr16l784RxRear6] = nRxd;
			m_nXr16l784RxRear6 = (m_nXr16l784RxRear6+1)%XR16L784_BUF_RX;	
		}
	}
}

//**********************************************************************************
//	XR16L784 Î©îÏù∏ Î£®ÌîÑ ?®Ïàò
// 
//**********************************************************************************
void xr16l784_Loop()
{
}

//**********************************************************************************
//	XR16L784 1ms Î£®ÌîÑ ?®Ïàò
// 
//**********************************************************************************
void xr16l784_1msLoop()
{
	// Send TX delay enable 
	if(m_nXr16l784TxStartEnableDly1 == 1) xr16l784_Send(XR16L784_1CHL,m_nXr16l784TxLen1);
	if(m_nXr16l784TxStartEnableDly1) m_nXr16l784TxStartEnableDly1--;
	if(m_nXr16l784TxStartEnableDly2 == 1) xr16l784_Send(XR16L784_2CHL,m_nXr16l784TxLen2);
	if(m_nXr16l784TxStartEnableDly2) m_nXr16l784TxStartEnableDly2--;
	if(m_nXr16l784TxStartEnableDly3 == 1) xr16l784_Send(XR16L784_3CHL,m_nXr16l784TxLen3);
	if(m_nXr16l784TxStartEnableDly3) m_nXr16l784TxStartEnableDly3--;
	if(m_nXr16l784TxStartEnableDly4 == 1) xr16l784_Send(XR16L784_4CHL,m_nXr16l784TxLen4);
	if(m_nXr16l784TxStartEnableDly4) m_nXr16l784TxStartEnableDly4--;

	if(m_nXr16l784TxStartEnableDly5 == 1) xr16l784_Send(XR16L784_5CHL,m_nXr16l784TxLen5);
	if(m_nXr16l784TxStartEnableDly5) m_nXr16l784TxStartEnableDly5--;
	if(m_nXr16l784TxStartEnableDly6 == 1) xr16l784_Send(XR16L784_6CHL,m_nXr16l784TxLen6);
	if(m_nXr16l784TxStartEnableDly6) m_nXr16l784TxStartEnableDly6--;

	// TX Delay Disable
	if(m_nXr16l784TxEnableDly1 == 1) XR16L784_TXDIS(XR16L784_1CHL);
	if(m_nXr16l784TxEnableDly1) m_nXr16l784TxEnableDly1--;
	if(m_nXr16l784TxEnableDly2 == 1) XR16L784_TXDIS(XR16L784_2CHL);
	if(m_nXr16l784TxEnableDly2) m_nXr16l784TxEnableDly2--;
	if(m_nXr16l784TxEnableDly3 == 1) XR16L784_TXDIS(XR16L784_3CHL);
	if(m_nXr16l784TxEnableDly3) m_nXr16l784TxEnableDly3--;
	if(m_nXr16l784TxEnableDly4 == 1) XR16L784_TXDIS(XR16L784_4CHL);
	if(m_nXr16l784TxEnableDly4) m_nXr16l784TxEnableDly4--;

	if(m_nXr16l784TxEnableDly5 == 1) XR16L784_TXDIS(XR16L784_5CHL);
	if(m_nXr16l784TxEnableDly5) m_nXr16l784TxEnableDly5--;
	if(m_nXr16l784TxEnableDly6 == 1) XR16L784_TXDIS(XR16L784_6CHL);
	if(m_nXr16l784TxEnableDly6) m_nXr16l784TxEnableDly6--;
}

