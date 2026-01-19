
#ifndef UART_H 
#define UART_H

#include <stdio.h>
#include "main.h"

#define SCC_A_CHANNEL 0
#define SCC_B_CHANNEL 1

#define COM_DAT(A,B) (UINT)(((A<<8)&0xff00)|((B)&0x00ff))
#define COM_DAT_HAP(AA,AB,BB,BA) (UINT)((COM_DAT(AA,AB))^(COM_DAT(BB,BA)))
#define ASC_DAT(A,B) (UCHAR)((A<<4)&0xf0|(B)&0x0f)
#define ITEM_HAP(A,B,C,D) (UCHAR)((((ASC_DAT(A,B)<<8))&0xFF00)|(ASC_DAT(C,D)&0x00ff))
#define ASYNC_SCC_BUFFER_SIZE 512

typedef struct
{
	int TxPos;
	int TxLen;
	int TxEndFlag;
	int TxDelTime;
	UCHAR *pTxBuffer;
	UCHAR *pTxBufferBackup;
	int RxOK;
	int RxPos;
	int RxOKDataLen;
	int RxTimeOut;
	UCHAR RxDownloadStart;
	UCHAR *pRxBuffer;
	UCHAR *pRxBufferBackup;

} SCC_INIT_SHAPE;



extern void SCC_Init(void);
extern unsigned int IsBCCOK(UCHAR *pDat,UINT nLen);
extern unsigned int cal_CRC16(UINT no,UCHAR *dat);
extern void SCC_ISR(UCHAR pData);
extern void SCC_ISR_Timer(void);
extern UCHAR SCC_RX_OK_CHECK(void);
#endif