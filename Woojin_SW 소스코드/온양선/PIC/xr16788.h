#ifndef _XR16L788_H_
#define _XR16L788_H_

#define XR16L788_BASE 0x900000


/******************************************************************
	함수의 정의
*******************************************************************/
typedef struct {
	union{
		unsigned int BYTE;
		struct 
		{                                          
	       	unsigned int B0:1;    	        /*    Bit 0     */
			unsigned int B1:1;           	/*    Bit 1     */
			unsigned int B2:1;           	/*    Bit 2     */
			unsigned int B3:1;           	/*    Bit 3     */
	        unsigned int B4:1;           	/*    Bit 4     */
	        unsigned int B5:1;           	/*    Bit 5     */
	        unsigned int B6:1;           	/*    Bit 6     */
	        unsigned int B7:1;           	/*    Bit 7     */
		} BIT;
	} DR;	
}TMS_SEND_DATA,*PTMS_SEND_DATA;

/***********************************************************************************************************
					TCMS_RX 프로토콜			JYJ
***********************************************************************************************************/

typedef struct
{
	union
	{
		UCHAR btRxd;
		UCHAR btTxd;
		UCHAR btDll;
	} CREG1;
	
	union
	{
		UCHAR btDlm;
		UCHAR btIer;
	} CREG2;
	
	union
	{	
		UCHAR btIir;
		UCHAR btFcr;
	} CREG3;

	UCHAR btLcr;	
	UCHAR btMcr;	
	UCHAR btLsr;
	UCHAR btMsr_U;
	UCHAR btScr;	
	
	UCHAR btSp[8];
} XR16L788ST,*PXR16L788ST;

typedef struct
{
	XR16L788ST xr16Reg[8];
} XR16L788BDY, *PXR16L788BDY;


/******************************************************************
	TX_RX 프로토콜
*******************************************************************/
typedef struct
{
	UCHAR nTxPos;
	UCHAR nTxLen;
	UCHAR nTxOK;
	UCHAR nTxOK_Cnt;
	UCHAR nTx_Rts_Off;
	UCHAR *nTxBuffer;
	UCHAR nTxTimeOut;
	UCHAR nRxOK;
	UCHAR nRxOK_Cnt;
	UCHAR nRxRearPos;
	UCHAR nRxFrontPos;
	UCHAR nRxPos;
	UCHAR nRxDlyTm;
	UCHAR nRxLen;
	UCHAR *nRxBuffer;
	UCHAR *nGetRxBuf;
	UCHAR *nRxBuf_BackUp;
	UCHAR nRxTimeOut;
	UCHAR nBPS;
} XR16788_INIT_SHAPE,*pXR16788_INIT_SHAPE;

/*****************************************************************
*****************************************************************/


// DateBit
#define XR16L788_DATA5 0
#define XR16L788_DATA6 1
#define XR16L788_DATA7 2
#define XR16L788_DATA8 3

// ParityBit
#define XR16L788_NONEPARITY 0x00
#define XR16L788_EVENPARITY 0x18
#define XR16L788_ODDPARITY 0x08

// StopBit
#define XR16L788_1STOPBIT 0x00
#define XR16L788_2STOPBIT 0x04

// 채널 위치
#define XR16L788_1CHL 0
#define XR16L788_2CHL 1
#define XR16L788_3CHL 2
#define XR16L788_4CHL 3
#define XR16L788_5CHL 4
#define XR16L788_6CHL 5
#define XR16L788_7CHL 6
#define XR16L788_8CHL 7

// 외부 클럭 Hz단위
#define XR16L788_EXCLK 14745600 

// RTS High,Low
#define XR16L788_RTS_L 0
#define XR16L788_RTS_H 1

#define XR16L788_BUF_MAX 520 // 버퍼 최대 크기 <바보나무>
#define XR16L788_BUF_MIN 25

#define XR16L788_TXEN(x) xr16l788_Rts(x,XR16L788_RTS_H)
#define XR16L788_TXDIS(x) xr16l788_Rts(x,XR16L788_RTS_L)

int IsBCCOK(UCHAR *pDat,UCHAR nLen);
void MakeBcc(BYTE *pDat,int nLen);
void xr16l788_Init(int nChl,int nBps,int nDataBit,int nParityBit,int nStopBit);
void xr16l788_Isr();
void xr16l788_Rts(int nChl,BOOL nHl);
int xr16l788_GetRxBuffer(int nChl,UCHAR *pBuf,int nLimit);
void xr16l788_Loop();
void xr16l788_Send(int nChl,UCHAR *pBuf,int nLen);
void xr16l788_1msLoop();
void Xr_TX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nCaNum,UCHAR nDownSt,UCHAR nErBlk,UCHAR nDataBlk1,UCHAR nDataBlk2, UCHAR nLen);
void Xr_TX_PIB_TEXT(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nLen,UCHAR *pText);
WORD cal_CRC16(int no,unsigned char *dat);

void Xr_Tx_TCMS_TEXT(UCHAR *pTxData,UCHAR *pRxData);
void Xr_Tx_DownLoad_TEXT(UCHAR *pTxData,UCHAR *pDownData,UCHAR nUnitCod,UCHAR nReNum);


#endif
