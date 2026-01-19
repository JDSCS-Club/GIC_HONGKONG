#include "def.h"

#ifndef _XR16L784_H_
#define _XR16L784_H_

#define XR16L784_BASE 0xE000

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
} XR16L784ST,*PXR16L784ST;

typedef struct
{
	XR16L784ST xr16Reg[8];
} XR16L784BDY, *PXR16L784BDY;

// DateBit
#define XR16L784_DATA5 0
#define XR16L784_DATA6 1
#define XR16L784_DATA7 2
#define XR16L784_DATA8 3

// ParityBit
#define XR16L784_NONEPARITY 0x00
#define XR16L784_EVENPARITY 0x18
#define XR16L784_ODDPARITY 0x08

// StopBit
#define XR16L784_1STOPBIT 0x00
#define XR16L784_2STOPBIT 0x04

// 채널 위치
#define XR16L784_1CHL 0
#define XR16L784_2CHL 1
#define XR16L784_3CHL 2
#define XR16L784_4CHL 3

#define XR16L784_5CHL 4
#define XR16L784_6CHL 5
#define XR16L784_7CHL 6
#define XR16L784_8CHL 7

#define CDMA_SAVE_CHL 8 //PLC 데이타 따로 저장
#define CDMA_SEND_CHL 9 //전송하기위해 가공한 데이타 

#define ROUNDKEY 15

#define TEMP_VAL_DATA 20

// 외부 클럭 Hz단위
#define XR16L784_EXCLK 14745600 

// RTS High,Low
#define XR16L784_TXENABLEDLYCNT 3 // ms단위

#define XR16L784_RTS_L 0
#define XR16L784_RTS_H 1
#define CDMA_BUF_MAX 400
#define XR16L784_BUF_MAX 300 // 버퍼 최대 크기
#define XR16L784_BUF_NOR 50

#define XR16L784_BUF_TX 128 
#define XR16L784_BUF_RX 32

#define XR16L784_TXDIS(x) xr16l784_Rts(x,XR16L784_RTS_L)
#define XR16L784_TXEN(x) xr16l784_Rts(x,XR16L784_RTS_H)

void xr16l784_Init(int nChl,DWORD nBps,int nDataBit,int nParityBit,int nStopBit);
void xr16l784_Isr();
void xr16l784_Rts(int nChl,BOOL nHl);
int xr16l784_GetRxBuffer(int nChl,UCHAR *pBuf,int nRxBuffLen);

int xr16l784_GetRxBuffer1Ch(UCHAR *pBuf,int nRxBuffLen);
int xr16l784_GetRxBuffer2Ch(UCHAR *pBuf,int nRxBuffLen);
int xr16l784_GetRxBuffer3Ch(UCHAR *pBuf,int nRxBuffLen);
int xr16l784_GetRxBuffer4Ch(UCHAR *pBuf,int nRxBuffLen);

int xr16l784_GetRxBuffer5Ch(UCHAR *pBuf,int nRxBuffLen);
int xr16l784_GetRxBuffer6Ch(UCHAR *pBuf,int nRxBuffLen);
int xr16l784_GetRxBuffer7Ch(UCHAR *pBuf,int nRxBuffLen);
int xr16l784_GetRxBuffer8Ch(UCHAR *pBuf,int nRxBuffLen);

void xr16l784_Loop();
void xr16l784_Send(int nChl,int nLen);
void xr16l784_RtsDelayStartSend(int nChl,UCHAR *pBuf,int nLen,int nTxStartEnableDly);
void xr16l784_1msLoop();

#endif
