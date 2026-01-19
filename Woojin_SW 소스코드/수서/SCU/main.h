#include <avr/pgmspace.h>
#include "def.h"
#include "xr16l784.h"
#include "Display.h"
#include "CDMA.h"

#ifndef _MAIN_H_
#define _MAIN_H_

//#define COM_TGIS_CHL		XR16L784_1CHL
//#define COM_REPEATER_CHL	XR16L784_2CHL
//#define COM_AMP_CHL		XR16L784_3CHL

#define TRUE 1
#define FALSE 0

#define STX 0x02
#define ETX 0x03

#define LCD_REPEAT_ERR_MAX 5
#define LCD_AMP_ERR_MAX 5

#define NVSRAM_ADD *(char *)0xA000
#define NVSRAM_DATA *(char *)0x6000

#define NVSRAM(nIndex) (*(char *)(0x6000 + nIndex))

#define DUMMY_ACCESS //(*(char *)0xe000)//(*(char *)0xe000 = *(char *)0xf000)

#define ENABLE_INT asm("sei")
#define DISABLE_INT asm("cli")

#define UART_BUF_MAX 384

#define WDIOUT {PORTB &= 0xFE; PORTB |= (~PORTB&0x01);}

#define RUN_LED(x) {if((x)) PORTF &= 0xFD; else PORTF |= 0x02;}
//#define ERR_LED(x) {if((x)) PORTF &= 0xFD; else PORTF |= 0x02;}

//#define LINK1_LED(x) {if((x)) PORTB &= 0xBF; else PORTB |= 0x40;}
//#define LINK2_LED(x) {if((x)) PORTB &= 0x7F; else PORTB |= 0x80;}

//#define LINK1_OUT(x) {if((x)) PORTE &= 0xFB; else PORTE |= 0x04;}
//#define LINK2_OUT(x) {if((x)) PORTE &= 0xF7; else PORTE |= 0x08;}

/**************************** Constant Definitions ****************************/

#define NoRounds         16						// the number of rounds
#define NoRoundKeys      (NoRounds*2)			// the number of round-keys
#define SeedBlockSize    16    					// block length in bytes
#define SeedBlockLen     128   					// block length in bits

#define ROTL(x, n)     (((x) << (n)) | ((x) >> (32-(n))))		// left rotation
#define ROTR(x, n)     (((x) >> (n)) | ((x) << (32-(n))))		// right rotation

#define EndianChange(dwS) (((ROTL((dwS),  8) & (prog_uint32_t)0x00ff00ff))|((ROTL((dwS), 24) & (prog_uint32_t)0xff00ff00)))

#define GetB0(A)  ((BYTE)((A)    )& 0x0ff)
#define GetB1(A)  ((BYTE)((A)>> 8)& 0x0ff)
#define GetB2(A)  ((BYTE)((A)>>16)& 0x0ff)
#define GetB3(A)  ((BYTE)((A)>>24)& 0x0ff)

#define CDMA_MAX_CNT 50

/*************************** Function Declarations ****************************/
/* encryption function */
// [in,out]	data to be encrypted
// [in]			round keys for encryption
void SeedEncrypt(UCHAR *pbData, DWORD *pdwRoundKey);
/* decryption function */
// [in,out]	data to be decrypted
// [in]			round keys for decryption
void SeedDecrypt(UCHAR *pbData, DWORD *pdwRoundKey);
/* key scheduling function */
// [out]		round keys for encryption or decryption
// [in]			secret user key 
void SeedRoundKey(DWORD *pdwRoundKey, UCHAR *pbUserKey);
void SeedRound(DWORD *L0, DWORD *L1,DWORD R0,DWORD R1,DWORD *K);

void RoundKeyUpdate0(DWORD *K,DWORD A,DWORD B,DWORD C,DWORD D,DWORD KC);
void RoundKeyUpdate1(DWORD *K,DWORD A,DWORD B,DWORD C,DWORD D,DWORD KC);

void SeedMakeData(UCHAR *pInData,UCHAR nCnt);




int main();

void Tx_DATA_Buff_1ch();
void Tx_DATA_Buff_2ch();
void Tx_DATA_Buff_3ch();
void Tx_DATA_Buff_4ch();


void Rx_DATA_Buff_1ch();
void Rx_DATA_Buff_2ch();
void Rx_DATA_Buff_3ch();
void Rx_DATA_Buff_4ch();
void Rx_DATA_Buff_5ch();


void ModBus_PLC_MemoRead();	//PLC DATA ø‰√ª

int NVSRAM_R(UCHAR sBlkCnt,int sPont,int sCnt,UCHAR *sData);
void NVSRAM_W(UCHAR sBlkCnt,int sPont,int sCnt,UCHAR *Data);

void Ushort2Str(USHORT nDat,char *pBuf);

void MakeBcc(UCHAR *pDat,int nLen);
int IsBCCOK(UCHAR *pDat,int nLen);

int CRC16 ( BYTE *nData, WORD wLength);
void ModBusMulti_Bit(UCHAR sStaCode,int sStartAdd,int sCnt,UCHAR *sData,UCHAR sScuCh);
void ModBusMulti_WORD(UCHAR sStaCode,int sStartAdd,int sCnt,UCHAR *sData,UCHAR sScuCh);
void ModBus_Xpanel_MemoRead(WORD Addres,WORD RedCnt);
void MpuTime_RecodSet(UCHAR nCode);

void ModBus_Cdma_Time();
void CDMA_Time_Fun(UCHAR *pData);
void Cdma_Time_Set_Flag();




#endif
