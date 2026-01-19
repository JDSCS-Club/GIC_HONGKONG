#include "def.h"
#include "main.h"
#include "saf82532.h"
#include "string.h"

//************************************************************************************
//	변수 정의
//************************************************************************************

SAF82532_SCC Saf82532_Ach;
SAF82532_SCC Saf82532_Bch;

UCHAR m_btSaf82532RxAchBuffer[SAB82532_BUFFER_SIZE];
UCHAR m_btSaf82532RxAchBackUp[SAB82532_BUFFER_SIZE];
UCHAR m_btSaf82532RxAchGetBuf[SAB82532_BUFFER_SIZE];

UCHAR m_btSaf82532RxBchBuffer[SAB82532_BUFFER_SIZE];
UCHAR m_btSaf82532RxBchBackUp[SAB82532_BUFFER_SIZE];
UCHAR m_btSaf82532RxBchGetBuf[SAB82532_BUFFER_SIZE];

//************************************************************************************
//	SAF82532 초기화(비동기통신)
//************************************************************************************
void saf82532_AsyncInit(int nChl,int nBps,int nDataBit,int nParity,int nStopBit,BOOL bIs485Chl)
{
	int i;
	UCHAR btTemp;
	PSAF82532ASYNCREG1CH pShReg = (SAF82532ASYNCREG1CH *)(SAB82532_BASE+nChl);
	
	pShReg->IPC = 0x01;	
	
	pShReg->MODE = SAF82532_ASYNC_MODE_RCVA;
	
	pShReg->CCR0 = SAF82532_ASYNC_CCR0_PWUP | SAF82532_ASYNC_CCR0_MCE | SAF82532_ASYNC_CCR0_NRZ | SAF82532_ASYNC_CCR0_ASYNC;
	pShReg->CCR1 = SAF82532_ASYNC_CCR1_ODS | SAF82532_ASYNC_CCR1_CM7 | SAF82532_ASYNC_CCR1_BCR; // RX,TX:BRG
	pShReg->CCR2 = SAF82532_ASYNC_CCR2_BDF | SAF82532_ASYNC_CCR2_SSEL;

	pShReg->RFC = 0x10;

	// BuadRate
	i = (SAF82532_INTOSCCLK_HZ/32/nBps) - 1;
	pShReg->CCR2 |= WORD_H(i)<<6;
	pShReg->VSTR_BGR = WORD_L(i);

	// Control Bit
	pShReg->DAFO = (nStopBit<<5) | (nParity<<3) | (nParity?0x04:0x00) | nDataBit;

	// Port
	pShReg->PCR = 0xFA; // Port Input : 0->OUT, 1->IN
	pShReg->PVR = 0x00; // Port Value
	
	//pShReg->PVR = 0xFA; // Port Value  NEW BOARD
	//pShReg->PCR = 0x50; // Port Input : 0->OUT, 1->IN  NEW BOARD

	pShReg->ISR0_IMR0 = ~(SAF82532_ASYNC_IMR0_RPF);
	//pShReg->ISR1_IMR1 = ~(SAF82532_ASYNC_IMR1_XPR);
	pShReg->ISR1_IMR1 = 0xFF;

	pShReg->STA_CMD = SAF82532_ASYNC_CMD_RRES | SAF82532_ASYNC_CMD_XRES;

	btTemp = pShReg->ISR0_IMR0;
	btTemp = pShReg->ISR1_IMR1;


	switch(nChl)
	{
	case SAB82532_ACH:
		
		Saf82532_Ach.nIs485 = bIs485Chl;
		Saf82532_Ach.nUsPer1Byte = (int)(((1.0/(float)nBps))*1000.*1000.*10.0);
		Saf82532_Ach.nGetRxBuf = m_btSaf82532RxAchGetBuf;
		Saf82532_Ach.nRxBackUp = m_btSaf82532RxAchBackUp;
		Saf82532_Ach.nRxBuffer = m_btSaf82532RxAchBuffer;
		Saf82532_Ach.nRxFront = 0;
		Saf82532_Ach.nRxOkFlag = 0;
		Saf82532_Ach.nRxPos = 0;
		Saf82532_Ach.nRxCnt = 0;
		Saf82532_Ach.nRxRear = 1;
		Saf82532_Ach.nTxDisable1msCnt = 0;
		Saf82532_Ach.nTxLedOnDly = 0;
		Saf82532_Ach.nTxCnt = 0;

		memset(Saf82532_Ach.nRxBackUp,0x00,sizeof(m_btSaf82532RxAchBackUp));
		memset(Saf82532_Ach.nRxBuffer,0x00,sizeof(m_btSaf82532RxAchBuffer));
		memset(Saf82532_Ach.nGetRxBuf,0x00,sizeof(m_btSaf82532RxAchGetBuf));

		break;
	case SAB82532_BCH:

		Saf82532_Bch.nIs485 = bIs485Chl;
		Saf82532_Bch.nUsPer1Byte = (int)(((1.0/(float)nBps))*1000.*1000.*10.0);
		Saf82532_Bch.nGetRxBuf = m_btSaf82532RxBchGetBuf;
		Saf82532_Bch.nRxBackUp = m_btSaf82532RxBchBackUp;
		Saf82532_Bch.nRxBuffer = m_btSaf82532RxBchBuffer;
		Saf82532_Bch.nRxFront = 0;
		Saf82532_Bch.nRxOkFlag = 0;
		Saf82532_Bch.nRxPos = 0;
		Saf82532_Bch.nRxCnt = 0;
		Saf82532_Bch.nRxRear = 1;
		Saf82532_Bch.nTxDisable1msCnt = 0;
		Saf82532_Bch.nTxLedOnDly = 0;
		Saf82532_Bch.nTxCnt = 0;

		memset(Saf82532_Bch.nRxBackUp,0x00,sizeof(m_btSaf82532RxBchBackUp));
		memset(Saf82532_Bch.nRxBuffer,0x00,sizeof(m_btSaf82532RxBchBuffer));
		memset(Saf82532_Bch.nGetRxBuf,0x00,sizeof(m_btSaf82532RxBchGetBuf));

		break;
	}
}

//************************************************************************************
//	SAF82532 전송
//************************************************************************************
void saf82532_Send(UCHAR btChl,UCHAR *pDat,int nTxLen)
{
	switch(btChl)
	{
	case SAB82532_ACH:
		saf82532_AsyncSend(SAB82532_ACH,pDat,nTxLen);
		break;

	case SAB82532_BCH:
		saf82532_AsyncSend(SAB82532_BCH,pDat,nTxLen);
		break;
	}
}

//************************************************************************************
//	SAF82532 비동기 전송
//************************************************************************************
void saf82532_AsyncSend(UCHAR btChl,UCHAR *pDat,int nTxLen)
{
	int i,j;
	PSAF82532ASYNCREG1CH pShReg = (SAF82532ASYNCREG1CH *)(SAB82532_BASE+btChl);

	switch(btChl)
	{
	case SAB82532_ACH:RS485_TX_ACHL_ENABLE;break;
	case SAB82532_BCH:RS485_TX_BCHL_ENABLE;break;
	}
	
	for(i=0;i<WORD_L(nTxLen/SAF82532_FIFO_SIZE);i++)
	{
		while(!(pShReg->STA_CMD & 0x40));
		memcpy(pShReg->XFIFO,pDat,SAF82532_FIFO_SIZE);
		pShReg->STA_CMD = SAF82532_ASYNC_CMD_XF; 
		pDat+=32;

	}

	if((nTxLen%SAF82532_FIFO_SIZE))
	{
		while(!(pShReg->STA_CMD & 0x40));
		memcpy(pShReg->XFIFO,pDat,nTxLen%SAF82532_FIFO_SIZE);
	}
	
	switch(btChl)
	{
	case SAB82532_ACH: if(Saf82532_Ach.nIs485) Saf82532_Ach.nTxDisable1msCnt = ((Saf82532_Ach.nUsPer1Byte * (nTxLen)) / 1000) + 10; break;
	case SAB82532_BCH: if(Saf82532_Bch.nIs485) Saf82532_Bch.nTxDisable1msCnt = ((Saf82532_Bch.nUsPer1Byte * (nTxLen)) / 1000) + 10; break;
	}

	pShReg->STA_CMD = SAF82532_ASYNC_CMD_XF | SAF82532_ASYNC_CMD_XME;

}

//*****************************************************************************
//	SCC2의 비동기 수신 함수
//*****************************************************************************
int Saf82532_GetAsyncRecv(int nChl,UCHAR *pBuf)
{
	int i;
	int *pRr;
	int *pFr;	
	UCHAR *pRxBuf;
	int nBufPos;
	
	switch(nChl)
	{
	case SAB82532_ACH:
		pRr = &Saf82532_Ach.nRxRear;
		pFr = &Saf82532_Ach.nRxFront;
		pRxBuf = Saf82532_Ach.nRxBuffer;
		break;
	case SAB82532_BCH:
		pRr = &Saf82532_Bch.nRxRear;
		pFr = &Saf82532_Bch.nRxFront;
		pRxBuf = Saf82532_Bch.nRxBuffer;
		break;
	}	

	nBufPos = 0;
	while(1)
	{
		i = (*pFr+1)%SAB82532_BUFFER_SIZE;
		if(i != *pRr) {pBuf[nBufPos++] = WORD_L(pRxBuf[i]); }
		else	break;			
		*pFr = i;
	}
	
	return nBufPos;
}

//*****************************************************************************
//	SCC2의 동기/비동기 수신 함수
//*****************************************************************************
int Saf82532_GetRecv(int nChl,UCHAR *pBuf)
{
	int i;		
	// A체널
	switch(nChl)
	{
	case SAB82532_ACH:
		return Saf82532_GetAsyncRecv(nChl,pBuf);
		break;

	// B체널
	case SAB82532_BCH:
		return Saf82532_GetAsyncRecv(nChl,pBuf);
		break;
	}
}


//************************************************************************************
//	SAF82532 ISR
//************************************************************************************
void saf82532_Isr()
{
	saf82532_AsyncIsrAch();
	saf82532_AsyncIsrBch(); 
}
//************************************************************************************
//	SAF82532 ASYNC용 ISR
//************************************************************************************
void saf82532_AsyncIsrAch()
{
	int i;
	UCHAR nIsrSt;
	UCHAR btDat;
	UCHAR btDatSt;
	PSAF82532ASYNCREG pShReg = (SAF82532ASYNCREG *)SAB82532_BASE;
	
	// A Channel, Recieve	
	nIsrSt = pShReg->ACHREG.ISR0_IMR0;
	
	if(nIsrSt & SAF82532_ASYNC_IMR0_RPF)
	{
		btDat = pShReg->ACHREG.XFIFO[0];
		DUMMY_ACCESS;
		btDatSt = pShReg->ACHREG.XFIFO[1];
		pShReg->ACHREG.STA_CMD = SAF82532_ASYNC_CMD_RMC;
		if(!(btDatSt&SAF82532_ASYNC_PARITYERR))
		{
			i = (Saf82532_Ach.nRxRear+1)%SAB82532_BUFFER_SIZE;
			if(Saf82532_Ach.nRxFront != i)
			{
					
				Saf82532_Ach.nRxBuffer[Saf82532_Ach.nRxRear] = btDat;
				Saf82532_Ach.nRxRear = i;
			}		
		}
	}
}

void saf82532_AsyncIsrBch()
{
	int i;
	UCHAR nIsrSt;
	UCHAR btDat;
	UCHAR btDatSt;
	
	PSAF82532ASYNCREG pShReg = (SAF82532ASYNCREG *)SAB82532_BASE;

	// B Channel, Recieve
	nIsrSt = pShReg->BCHREG.ISR0_IMR0;
	
	if(nIsrSt & SAF82532_ASYNC_IMR0_RPF)
	{
		btDat = pShReg->BCHREG.XFIFO[0];
		DUMMY_ACCESS;
		btDatSt = pShReg->BCHREG.XFIFO[1];
		pShReg->BCHREG.STA_CMD = SAF82532_ASYNC_CMD_RMC;

		if(!(btDatSt&SAF82532_ASYNC_PARITYERR))
		{
			i = (Saf82532_Bch.nRxRear+1)%SAB82532_BUFFER_SIZE;
			if(Saf82532_Bch.nRxFront != i)
			{	
				Saf82532_Bch.nRxBuffer[Saf82532_Bch.nRxRear] = btDat;
				Saf82532_Bch.nRxRear = i;					
			}
		}
	}
}


//************************************************************************************
//	SAF82532 1ms Loop
//************************************************************************************
void saf82532_1msLoop()
{	
	//if(Saf82532_Ach.nTxDisable1msCnt == 1) RS485_TX_ACHL_DISABLE;
	//if(Saf82532_Ach.nTxDisable1msCnt) Saf82532_Ach.nTxDisable1msCnt--;

	if(Saf82532_Bch.nTxDisable1msCnt == 1) RS485_TX_BCHL_DISABLE;
	if(Saf82532_Bch.nTxDisable1msCnt) Saf82532_Bch.nTxDisable1msCnt--;		
	
	if(Saf82532_Ach.nTxLedOnDly == 10) SCM_HDLC_TX1(1);
	if(Saf82532_Ach.nTxLedOnDly == 1) SCM_HDLC_TX1(0);
	if(Saf82532_Ach.nTxLedOnDly) Saf82532_Ach.nTxLedOnDly--;

	if(Saf82532_Bch.nTxLedOnDly == 10) SCM_HDLC_TX2(1);
	if(Saf82532_Bch.nTxLedOnDly == 1) SCM_HDLC_TX2(0);
	if(Saf82532_Bch.nTxLedOnDly) Saf82532_Bch.nTxLedOnDly--;
}