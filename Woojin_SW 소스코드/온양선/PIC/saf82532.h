#ifndef _SAF82532_H_
#define _SAF82532_H_

#define SAB82532_BASE 0xA00000

#define SAB82532_ACH 0x00
#define SAB82532_BCH 0x40

#define SAF82532_INTOSCCLK_HZ 10000000 // 10MHz

//
#define SAF82532_FIFO_SIZE 32
#define SAB82532_BUFFER_SIZE 25


// ASYNC통신일때 레지스터
typedef struct
{
	UCHAR XFIFO[SAF82532_FIFO_SIZE];
	UCHAR STA_CMD;		// [0x20]
	int : 32;			// [0x21]
	UCHAR MODE;			// [0x22]
	UCHAR TIMR;			// [0x23]
	UCHAR XON;			// [0x24]
	UCHAR XOFF;			// [0x25]
	UCHAR TCR;			// [0x26]
	UCHAR DAFO;			// [0x27]
	UCHAR RFC;			// [0x28]
	int : 32;			// [0x29]
	UCHAR RBCL_XBCL;	// [0x2A]
	UCHAR RBCH_XBCH;	// [0x2B]
	UCHAR CCR0;			// [0x2C]
	UCHAR CCR1;			// [0x2D]
	UCHAR CCR2;			// [0x2E]
	UCHAR CCR3;			// [0x2F]
	UCHAR TSAX;			// [0x30]
	UCHAR TSAR;			// [0x31]
	UCHAR XCCR;			// [0x32]
	UCHAR RCCR;			// [0x33]
	UCHAR VSTR_BGR;		// [0x34]
	UCHAR TIC;			// [0x35]
	UCHAR MXN;			// [0x36]
	UCHAR MXF;			// [0x37]
	UCHAR GIS_IVA;		// [0x38]
	UCHAR IPC;			// [0x39]
	UCHAR ISR0_IMR0;	// [0x3A]
	UCHAR ISR1_IMR1;	// [0x3B]
	UCHAR PVR;			// [0x3C]
	UCHAR PIS_PIM;		// [0x3D]
	UCHAR PCR;			// [0x3E]
	UCHAR CCR4; 		// [0x3F]
} SAF82532ASYNCREG1CH, *PSAF82532ASYNCREG1CH;

typedef struct
{
	SAF82532ASYNCREG1CH ACHREG;
	SAF82532ASYNCREG1CH BCHREG;
} SAF82532ASYNCREG, *PSAF82532ASYNCREG;


// [ASYNC]-MODE
#define SAF82532_ASYNC_MODE_RCVA		0x08 // Receive Active

// [ASYNC]-CMD
#define SAF82532_ASYNC_CMD_RMC		0x80
#define SAF82532_ASYNC_CMD_RRES		0x40
#define SAF82532_ASYNC_CMD_RFRD		0x20
#define SAF82532_ASYNC_CMD_STI		0x10
#define SAF82532_ASYNC_CMD_XF		0x08
#define SAF82532_ASYNC_CMD_XME		0x02
#define SAF82532_ASYNC_CMD_XRES		0x01

// [ASYNC]-CCR0
#define SAF82532_ASYNC_CCR0_PWDN	0x00
#define SAF82532_ASYNC_CCR0_PWUP	0x80
#define SAF82532_ASYNC_CCR0_MCE		0x40
#define SAF82532_ASYNC_CCR0_NRZ		0x00
#define SAF82532_ASYNC_CCR0_NRZI	0x08
#define SAF82532_ASYNC_CCR0_FM0		0x10
#define SAF82532_ASYNC_CCR0_FM1		0x14
#define SAF82532_ASYNC_CCR0_MANCST	0x18
#define SAF82532_ASYNC_CCR0_HDLC	0x00
#define SAF82532_ASYNC_CCR0_SDLCLP	0x01
#define SAF82532_ASYNC_CCR0_BISYNC	0x02
#define SAF82532_ASYNC_CCR0_ASYNC	0x03

// [ASYNC]-CCR1
#define SAF82532_ASYNC_CCR1_ODS 	0x10
#define SAF82532_ASYNC_CCR1_BCR 	0x08 // Bit Clock Rate
#define SAF82532_ASYNC_CCR1_CM0 	0x00
#define SAF82532_ASYNC_CCR1_CM1 	0x01
#define SAF82532_ASYNC_CCR1_CM2 	0x02
#define SAF82532_ASYNC_CCR1_CM3 	0x03
#define SAF82532_ASYNC_CCR1_CM4 	0x04
#define SAF82532_ASYNC_CCR1_CM5 	0x05
#define SAF82532_ASYNC_CCR1_CM6 	0x06
#define SAF82532_ASYNC_CCR1_CM7 	0x07

// [ASYNC]-CCR2 
#define SAF82532_ASYNC_CCR2_BDF    	0x20 // Baud Rate Division Factor    
#define SAF82532_ASYNC_CCR2_SSEL   	0x10 // Clock Source Select          
#define SAF82532_ASYNC_CCR2_TOE    	0x08 // Transmit Clock Output Enable 

// [ASYNC]-CCR3 
#define SAF82532_ASYNC_CCR3_PSD		0x00 // DPLL Phase shift disable

// [ASYNC]-IMR0
#define SAF82532_ASYNC_IMR0_TCD		0x80 // Termination Character Detected
#define SAF82532_ASYNC_IMR0_RPF		0x01 // Receive Pool Full

// [ASYNC]-IMR1
#define SAF82532_ASYNC_IMR1_XPR 	0x01 // Transmit Pool
#define SAF82532_ASYNC_IMR1_XOFF 	0x10 // XOFF Character Detected
#define SAF82532_ASYNC_IMR1_ALLS 	0x20 // All Send

// [ASYNC]-DAFO
#define SAF82532_ASYNC_1STOPBIT		0x00 // 1StopBit
#define SAF82532_ASYNC_2STOPBIT		0x01 // 2StopBit

#define SAF82532_ASYNC_NONEPARITY	0x00 // None Parity
#define SAF82532_ASYNC_ODDPARITY	0x01 // Odd Parity
#define SAF82532_ASYNC_EVENPARITY	0x02 // Even Parity

#define SAF82532_ASYNC_DATABIT8		0x00 // DataBit 8
#define SAF82532_ASYNC_DATABIT7		0x01 // DataBit 7
#define SAF82532_ASYNC_DATABIT6		0x02 // DataBit 6
#define SAF82532_ASYNC_DATABIT5		0x03 // DataBit 5

// [ASYNC]-BPS
#define SAF82532_9600BPS		9600
#define SAF82532_19200BPS		19200
#define SAF82532_38400BPS		38400
#define SAF82532_57600BPS		57600

// [ASYNC]-수신시 ERROR
#define SAF82532_ASYNC_PARITYERR	0x80 // Parity Error
#define SAF82532_ASYNC_FRAMEERR		0x40 // 프레임 Error

/***********************************************************************************
	saf82532 통신 구조체 정리
************************************************************************************/
typedef struct
{
	int nRxOkFlag;
	int nRxRear;
	int nRxFront;
	int nRxPos;
	int nRxCnt;
	UCHAR *nRxBuffer;
	UCHAR *nGetRxBuf;
	UCHAR *nRxBackUp;
	BOOL nIs485;			// [ASYNC]	사용하는 채널인지 확인 한다.
	int nUsPer1Byte; // 한 바이트 마다 us [ASYNC]
	int nTxDisable1msCnt; // [ASYNC]
	int nTxLedOnDly;
	int nTxCnt;
}SAF82532_SCC;

/***********************************************************************************
	Function Prototype
************************************************************************************/
void saf82532_AsyncInit(int nChl,int nBps,int nDataBit,int nParity,int nStopBit,BOOL bIs485Chl);
void saf82532_Send(UCHAR btChl,UCHAR *pDat,int nTxLen);
void saf82532_AsyncSend(UCHAR btChl,UCHAR *pDat,int nTxLen);
int Saf82532_GetAsyncRecv(int nChl,UCHAR *pBuf);
int Saf82532_GetRecv(int nChl,UCHAR *pBuf);
void saf82532_Isr();
void saf82532_AsyncIsrAch();
void saf82532_AsyncIsrBch();
void saf82532_1msLoop();

#endif