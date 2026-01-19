#ifndef _i85C30_H_
#define _i85C30_H_

/**********************************************************************************
	define
***********************************************************************************/
#define SCC_A_CHANNEL 0
#define SCC_B_CHANNEL 1

#define SCC_8530A_CONTROL1_ADDR		0x81c002
#define SCC_8530A_DATA1_ADDR		0x81c003

#define SCC_8530B_CONTROL1_ADDR		0x81c000
#define SCC_8530B_DATA1_ADDR		0x81c001


#define SCC_8530A_CONTROL1		(*(BYTE *)(SCC_8530A_CONTROL1_ADDR))
#define SCC_8530A_DATA1			(*(BYTE *)(SCC_8530A_DATA1_ADDR))

#define SCC_8530B_CONTROL1		(*(BYTE *)(SCC_8530B_CONTROL1_ADDR))
#define SCC_8530B_DATA1			(*(BYTE *)(SCC_8530B_DATA1_ADDR))

#define SCC_85C30A_CMD1_WR(CTRL,DAT) {SCC_8530A_CONTROL1 = CTRL; SCC_8530A_CONTROL1 = DAT;}
#define SCC_85C30B_CMD1_WR(CTRL,DAT) {SCC_8530B_CONTROL1 = CTRL; SCC_8530B_CONTROL1 = DAT;}

#define SCC_85C30A_CMD1_RD(CTRL,DAT) {SCC_8530A_CONTROL1 = CTRL; DAT = SCC_8530A_CONTROL1;}
#define SCC_85C30B_CMD1_RD(CTRL,DAT) {SCC_8530B_CONTROL1 = CTRL; DAT = SCC_8530B_CONTROL1;}

#define ASYNC_SCC_BUFFER_SIZE 512

#define HEXA_SW ((~(*(BYTE *)0x814000))&0xff)

#define RTS_ON SCC_85C30A_CMD1_WR(5,0x6a); // RTS -> Low
#define RTS_OFF SCC_85C30A_CMD1_WR(5,0x68); // RTS -> High
#define RS485_TX_ENABLE RTS_ON
#define RS485_TX_DISABLE RTS_OFF

#define COM_DAT(A,B) (BYTE)(((A<<8)&0xff00)|((B)&0x00ff))
#define COM_DAT_HAP(AA,AB,BB,BA) (BYTE)((COM_DAT(AA,AB))|(COM_DAT(BB,BA)))

#define SCC_RX_TIMEOUT_MAX 50

typedef struct
{
	int TxPos;
	int TxLen;
	int TxEndFlag;
	unsigned char TxBuffer[ASYNC_SCC_BUFFER_SIZE];
	int RxOK;
	int RxPos;
	unsigned char RxBuffer[ASYNC_SCC_BUFFER_SIZE];
} SCC_INIT_SHAPE;

void SCC_8530_Initial(); // SCC의 초기화

//void SCC2_SendTo(char *pData,int nLen,int nChannel);
void SCC2_SendTo(BYTE *pData,int nLen,int nChannel);
void SCC3_SendTo(char *pData,int nLen,int nChannel);


#endif