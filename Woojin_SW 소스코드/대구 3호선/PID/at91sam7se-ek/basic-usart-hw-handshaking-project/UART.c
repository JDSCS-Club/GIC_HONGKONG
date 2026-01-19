
#include <stdio.h>
#include "UART.h"
#include "main.h"
#include <usart/usart.h>


#define SCC_RX_TIMEOUT_MAX 10


static unsigned int CRC_Table[] = {
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

//통신 수신 부분.


UCHAR SCC_RxBuf[ASYNC_SCC_BUFFER_SIZE];
UCHAR SCC_RxBuf_BackUP[ASYNC_SCC_BUFFER_SIZE];

UCHAR SCC_TxBuf[ASYNC_SCC_BUFFER_SIZE];
UCHAR SCC_TxBuf_BackUP[ASYNC_SCC_BUFFER_SIZE];

SCC_INIT_SHAPE SCC1_Init_AChl; // 85C30의 송수신 버퍼 및 플래그

void SCC_Init()
{

	SCC1_Init_AChl.RxOK = 0;
	SCC1_Init_AChl.RxOKDataLen = 0;
	SCC1_Init_AChl.RxPos = 0;
	SCC1_Init_AChl.RxTimeOut = 0;
	SCC1_Init_AChl.RxDownloadStart = FALSE;

	SCC1_Init_AChl.TxEndFlag = 0;
	SCC1_Init_AChl.TxLen = 0;
	SCC1_Init_AChl.TxPos = 0;

	SCC1_Init_AChl.pTxBuffer = SCC_TxBuf;
	SCC1_Init_AChl.pTxBufferBackup = SCC_TxBuf_BackUP;

	SCC1_Init_AChl.pRxBuffer = SCC_RxBuf;
	SCC1_Init_AChl.pRxBufferBackup = SCC_RxBuf_BackUP;

	memset(SCC1_Init_AChl.pTxBuffer,0x00,sizeof(SCC_TxBuf));
	memset(SCC1_Init_AChl.pTxBufferBackup,0x00,sizeof(SCC_TxBuf_BackUP));
	memset(SCC1_Init_AChl.pRxBuffer,0x00,sizeof(SCC_RxBuf));
	memset(SCC1_Init_AChl.pRxBufferBackup,0x00,sizeof(SCC_RxBuf_BackUP));


}

/******************************************************************************
	### BCC Check [TEXT~ETX] ###

	Input	: *pDat->수신 데이터 / nLen->수신 데이터 길이
	Output	: BCCOK->TRUE[1] / BCCNG->FALSE[0]
******************************************************************************/
unsigned int IsBCCOK(UCHAR *pDat,UINT nLen)
{
	UCHAR nBCC[2];
	UINT i;

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

/******************************************************************************
	### CRC Check [LENGTH~ETX] ###
	*dat : 넘겨 받은 DATA
	on	: 길이를 return
******************************************************************************/

unsigned int cal_CRC16(UINT no,UCHAR *dat)
{
	
	UINT i;
        UINT CRC = 0;

	for(i=0;i < no;i++)
        {
	  CRC = (CRC >> 8)&0xFFFF ^ CRC_Table[(CRC^dat[i])&0xFF];
        }

	return ((~CRC) & 0xffff);
}

/********************************************************
	SCC1의 송수신 인터럽트 루틴
*********************************************************/

void SCC_ISR(UCHAR pData)
{
	UINT sCrc = 0;
	UINT sCrc_Ch = 0;
	UINT sCom_Data = 0;
	UINT sData_Len = 0;

    if(SCC1_Init_AChl.RxTimeOut == 0) SCC1_Init_AChl.RxPos = 0;	//Delay 50ms시간동안 수신되지 않으면  gRxPos=0
    SCC1_Init_AChl.RxTimeOut = SCC_RX_TIMEOUT_MAX; 
    
    SCC1_Init_AChl.pRxBuffer[SCC1_Init_AChl.RxPos++] = WORD_L(pData);
    
    switch(SCC1_Init_AChl.RxPos)
    {
      // 데이터 프레임 중 STX의 3바이트가 "aabbcc"인지 확인
      case 1:
        if(SCC1_Init_AChl.pRxBuffer[0]!=0xaa) SCC1_Init_AChl.RxPos = 0;
        break;
      case 2:
        if(SCC1_Init_AChl.pRxBuffer[1]!=0xbb) SCC1_Init_AChl.RxPos = 0;
        break;
      case 3:
        if(SCC1_Init_AChl.pRxBuffer[2]!=0xcc) SCC1_Init_AChl.RxPos = 0;
        break;
      case 7:
        sCom_Data = COM_DAT_HAP(SCC1_Init_AChl.pRxBuffer[3],SCC1_Init_AChl.pRxBuffer[4],SCC1_Init_AChl.pRxBuffer[5],SCC1_Init_AChl.pRxBuffer[6])&0xffff;
        if(sCom_Data !=0xffff ) SCC1_Init_AChl.RxPos=0;
        break;
      case 8:

        if(SCC1_Init_AChl.RxDownloadStart){ }
        else if(!(SCC1_Init_AChl.pRxBuffer[7]== 0xf1||SCC1_Init_AChl.pRxBuffer[7]== ADD_CHECK())) SCC1_Init_AChl.RxPos = 0;
        break;
      default:
        sData_Len=COM_DAT((SCC1_Init_AChl.pRxBuffer[3]&0xff),(SCC1_Init_AChl.pRxBuffer[4]&0xff));	
        if(SCC1_Init_AChl.RxPos >=(sData_Len+10))
        {
          sCrc = COM_DAT(SCC1_Init_AChl.pRxBuffer[(sData_Len+8)],SCC1_Init_AChl.pRxBuffer[(sData_Len+9)]);
          
          sCrc_Ch = cal_CRC16((sData_Len+5),(UCHAR *)&SCC1_Init_AChl.pRxBuffer[3]);
          
          if( sCrc_Ch == sCrc)		// BCC 체크가 OK일때
          {			
            SCC1_Init_AChl.RxPos = 0;			// 데이터 수신 위치를 초기화
	    SCC1_Init_AChl.RxOKDataLen = sData_Len-3; // CMD Code 를 빼고 실제 문자 데이타 부분
            memcpy(SCC1_Init_AChl.pRxBufferBackup,SCC1_Init_AChl.pRxBuffer,(sData_Len+10));	
	    SCC1_Init_AChl.RxOK = TRUE;
            
          }
          else 
          {
            SCC1_Init_AChl.RxPos = 0;
            
          }
        }
        break;
    }

}


/********************************************************
	SCC1의 송수신 인터럽트 루틴
*********************************************************/
UCHAR SCC_RX_OK_CHECK(void)
{
  return SCC1_Init_AChl.RxOK;
}


/********************************************************
	SCC_ISR_Timer 
*********************************************************/
void SCC_ISR_Timer(void)
{
  if(SCC1_Init_AChl.RxTimeOut) SCC1_Init_AChl.RxTimeOut--;


  if(SCC1_Init_AChl.TxDelTime) SCC1_Init_AChl.TxDelTime--;
  if(SCC1_Init_AChl.TxDelTime ==1) 
  {
	  SCC1_Init_AChl.TxDelTime = 0;
	  USART_WriteBuffer(AT91C_BASE_US0,(UCHAR *)SCC1_Init_AChl.pTxBuffer,20);
  }
  
}




