#include <stdio.h>
#include "Download.h"
#include "LED_Display.h"
#include "main.h"
#include "UART.h"
#include <board.h>
#include <usart/usart.h>
#include <memories/norflash/NorFlashCFI.h>
#include <memories/norflash/NorFlashApi.h>

#define VERSION 0x10 // 버젼

#define SCC_DOWNLOAD_CODE 0x13 // 다운로드 하기
#define SCC_ERASE_CODE 0x01 // Flash 메모리 지우기
#define SCC_DOWNLOAD_START_CODE 0x1F // 다운로드를 시작한다.
#define SCC_STATUS_REQ 0x07 // 상태요구
#define SCC_STATUS_RLY 0x08 // 상태요구응답

#define TX_ENABLE_TIME 20 // 데이터를 전송하기전에 지연시간
#define TX_DISABLE_TIME 5 // 데이터를 전송후 지연시간

#define IDD 0xF1 // 차내
#define FDD 0xF5 // 정면
#define SDD 0xF6 // 측면
#define TN  0xF7 // 열번
#define LDD 0xF9 // 노선
#define HDD 0xF4 // 호차

#define IS_IDD_NO(x) (x >= 1 && x <= 4)
#define IS_FDD_NO(x) (x == 0x0F)
#define IS_SDD_NO(x) (x == 0x0A || x == 0x0B)
#define IS_TN_NO(x) (x == 0x0D)
#define IS_LDD_NO(x) (x >= 5 && x <= 8)
#define IS_HDD_NO(x) (x == 0x09 || x == 0x0E)

#define MEMORY_ERASE_OK 0x10 // 메모리 ERASE OK
#define MEMORY_ERASE_NG 0x11 // 메모리 ERASE NG

#define OK 0 // OK
#define NG 1 // NG

#define MEM_RECORD_SIZE 128 // 다운로드시 한 레코드 크기

#define FIRMWARE_EXECUTION_TIME 10000 // 2000ms

#define SCREEN_CENTER_POS ((SCREEN_WIDTH_MAX / 2)-16)

int mBlackChick[100]; // 삭제 블럭 사이즈 리턴.
int mBlockSize = 0;


DWORD gVerName[16]=
{
	0x00000000,
	0x00040004,
	0x20843F84,
	0x2084043C,
	0x20840A04,
	0x20841104,
	0x3F841104,
	0x20BC20BC,
	0x20842084,
	0x20840004,
	0x20840000,
	0x20842000,
	0x20842000,
	0x3F842000,
	0x00043FFC,
	0x00000000
};

UCHAR gDigitName[16*16]=
{
	0x00,0x00,0x7C,0x62,0x63,0x73,0x7B,0x7B,0x6F,0x67,0x67,0x63,0x23,0x1F,0x00,0x00,
	0x00,0x00,0x18,0x3C,0x6C,0x0C,0x0C,0x0C,0x0C,0x0C,0x0C,0x0C,0x0C,0x0C,0x00,0x00,
	0x00,0x00,0x7C,0x62,0x63,0x63,0x67,0x0E,0x1C,0x38,0x70,0x60,0x60,0x7F,0x00,0x00,
	0x00,0x00,0x7C,0x62,0x63,0x03,0x03,0x1E,0x03,0x03,0x63,0x63,0x23,0x1F,0x00,0x00,
	0x00,0x00,0x18,0x3C,0x66,0x66,0x66,0x66,0x66,0x66,0x66,0x7F,0x06,0x06,0x00,0x00,
	0x00,0x00,0x7E,0x60,0x60,0x60,0x60,0x7F,0x03,0x03,0x63,0x63,0x23,0x1F,0x00,0x00,
	0x00,0x00,0x7C,0x62,0x63,0x60,0x60,0x7F,0x63,0x63,0x63,0x63,0x23,0x1F,0x00,0x00,
	0x00,0x00,0x7C,0x02,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x00,0x00,
	0x00,0x00,0x7C,0x62,0x63,0x63,0x63,0x3E,0x63,0x63,0x63,0x63,0x23,0x1F,0x00,0x00,
	0x00,0x00,0x7C,0x62,0x63,0x63,0x63,0x63,0x7F,0x03,0x03,0x63,0x23,0x1F,0x00,0x00,
	0x00,0x00,0x7C,0x66,0x63,0x63,0x63,0x63,0x7F,0x63,0x63,0x63,0x63,0x63,0x00,0x00,
	0x00,0x00,0x78,0x6C,0x6C,0x6C,0x6C,0x7F,0x63,0x63,0x63,0x63,0x63,0x7F,0x00,0x00,
	0x00,0x00,0x7C,0x66,0x63,0x61,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x7F,0x00,0x00,
	0x00,0x00,0x78,0x6C,0x66,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x7F,0x00,0x00,
	0x00,0x00,0x7C,0x60,0x60,0x60,0x60,0x7E,0x60,0x60,0x60,0x60,0x60,0x7F,0x00,0x00,
	0x00,0x00,0x7C,0x60,0x60,0x60,0x60,0x7E,0x60,0x60,0x60,0x60,0x60,0x60,0x00,0x00
};


extern SCC_INIT_SHAPE SCC1_Init_AChl; // 85C30의 송수신 버퍼 및 플래그
extern struct NorFlash norFlash;

extern int mScanVidioFlag;
/***********************************************************************
	변수 정의
************************************************************************/
//int glDebugCnt = 0;

typedef struct
{
	int nComm;
	int nErase;
	int nDownload;
} STATUS_FLAG;

int gTxEnableTimerCnt = 0; // 전송하기전 몇 ms는 기다림
int gTxDisableTimerCnt = 0; // 전송후 몇 ms 기다리고 RTS닫음

int gVersionPrintFlag = FALSE;

int SCREEN_WIDTH_MAX = 128; // 가로 쩜의 갯수

int gFirmWareExeTime = 0;
int gFirmWareExeFlag = TRUE;

UINT gERASE_OkFlag = 0;



void Download_Init(void)
{

}
/***********************************************************************
	메인 프로그램
************************************************************************/

void Download_main(void)
{
	int i,j,blockSize,pageSize;
	UINT nLen;
	UINT nCrc;
	int nOkPtcCnt;
	int nOkPtcOldCnt;
	UCHAR pText[200];
	UCHAR *pNorFlshAddr = (UCHAR *)(BOARD_NORFLASH_ADDR);
	UCHAR *pNorFlshProgAddr = (UCHAR *)(BOARD_NORFLASH_ADDR + 0x3C0000);
	UCHAR *pVideoMem = (UCHAR *)DOT_VIDEO_DATA;

	UINT nFlshWrAddr;
        
        /*
	ScreenWidth();
        VersionImagePut();

	//memset(&pVideoMem[0],NG,512*1024); // Erase&Program 상태 NG 초기화
	
	
	//nOkPtcCnt = nOkPtcOldCnt = 0;
	
	//gFirmWareExeTime = 0; // 2초 안에 다운로드 시작 프로토콜이 안들어오면 표시기 Firmware 수행
	//gFirmWareExeFlag = TRUE;


	// 처음엔 버젼을 출력하지않는다.
	//gVersionPrintFlag = FALSE;
	// 다운로드 준비이면 화면에 버젼을 출력한다.
	//VersionImagePut();

	//while(SCC1_Init_AChl.RxDownloadStart)
	//{

		/*
		if((gFirmWareExeTime >= FIRMWARE_EXECUTION_TIME) && (gFirmWareExeFlag == TRUE))
		{
			
			if((WORD_L(pNorFlshProgAddr[0]) != 0xFF)) // 프로그램 영역이 전부 지워졌다면 수행하지 않는다.
			{
				// Video Memory에 전송되어진 데이터를 0x00를 쓴다.
				memset(DOT_VIDEO,0x00,0x1000);
                                SCC1_Init_AChl.RxDownloadStart = FALSE;
	
			}			
		}

        */
		// 전부 수신되었다면..
		if(SCC1_Init_AChl.RxOK == TRUE)
		{
                        TC_Stop(AT91C_BASE_TC1);
                        
			SCC1_Init_AChl.RxOK = FALSE;			
			
			//pText = &SCC1_Init_AChl.pRxBufferBackup[7]; 
                        
                        memcpy(pText,&SCC1_Init_AChl.pRxBufferBackup[7],SCC1_Init_AChl.RxOKDataLen+3);
				
			// 통신을 받을때마다 LED를 하나씩 켠다.
                        /*
			switch(pText[2])
			{
			case SCC_DOWNLOAD_START_CODE:
			case SCC_ERASE_CODE:
			case SCC_DOWNLOAD_CODE:				
				if(IsDisplayAddressOk(pText[0]) == FALSE) break; // 원하는 표시기 종류가 아니면 리턴

				PixelPut(SCREEN_CENTER_POS + nOkPtcOldCnt%32,nOkPtcOldCnt/32 + 16,0);
				nOkPtcOldCnt = nOkPtcCnt;
					
				PixelPut(SCREEN_CENTER_POS + nOkPtcCnt%32,nOkPtcCnt/32 + 16,3);
				nOkPtcCnt = (nOkPtcCnt + 1) % (32*16);
				break;
					
			case SCC_STATUS_REQ:
				if((UCHAR )ADD_CHECK() != pText[0]) break;// 나의 상태를 요구하는것인지 체크
				
				PixelPut(SCREEN_CENTER_POS + nOkPtcOldCnt%32,nOkPtcOldCnt/32 + 16,0);
				nOkPtcOldCnt = nOkPtcCnt;
					
				PixelPut(SCREEN_CENTER_POS + nOkPtcCnt%32,nOkPtcCnt/32 + 16,3);
				nOkPtcCnt = (nOkPtcCnt + 1) % (32*16);
				break;
			}
                        */
				
							
			// Text의 위치를 가르킨다.				
			switch(pText[2])
			{
			// 다운로드 시작.
			case SCC_DOWNLOAD_START_CODE:
                          

				if(IsDisplayAddressOk(pText[0]) == FALSE) break; // 원하는 표시기 종류가 아니면 리턴

                                mBlockSize =0; // 

				nOkPtcCnt = nOkPtcOldCnt = 0;
				PixelPut(SCREEN_CENTER_POS + nOkPtcOldCnt%32,nOkPtcOldCnt/32 + 16,0);

				gFirmWareExeFlag = FALSE; // 2초후 자동으로 수행하지 못하도록 한다.
					
				VersionImagePut();
				gVersionPrintFlag = IsPrintOfVersion();
				break;
					
			// 특정 메모리를 지움.
			case SCC_ERASE_CODE:
				if(IsDisplayAddressOk(pText[0]) == FALSE) break; // 원하는 표시기 종류가 아니면 리턴
				
                                blockSize =  NorFlash_GetDeviceBlockSize(&(norFlash.norFlashInfo), (UINT)WORD_L(pText[5])); // 현재 블럭 사이즈를 리턴한다.
                                
                                pageSize = NorFlash_GetDeviceNumOfBlocks(&(norFlash.norFlashInfo)); // 전체 블럭 사이즈를 지정
                                
                                
                                for(i=0;i<(65536/blockSize);i++)
                                {
                                        NORFLASH_EraseSector(&norFlash, NorFlash_GetDeviceSectorAddress(&(norFlash.norFlashInfo),mBlockSize));
                                        mBlackChick[mBlockSize] = blockSize;
                                        mBlockSize++;
                                }

				// 메모리를 소거했으므로 소거된 부분의 다운로드 플래그는 NG시킨다.
				for(i=0;i<(pText[5]*64*1024)/MEM_RECORD_SIZE;i++)
				{
					pVideoMem[(pText[5]*64*1024)/MEM_RECORD_SIZE + i] = NG;
				}

				gFirmWareExeFlag = FALSE; // 2초후 자동으로 수행하지 못하도록 한다.

				gVersionPrintFlag = IsPrintOfVersion();
                                
				break;
				
			// 데이터를 다운로드.
			case SCC_DOWNLOAD_CODE:	
				if(IsDisplayAddressOk(pText[0]) == FALSE) break; // 원하는 표시기 종류가 아니면 리턴

				nFlshWrAddr = MAKE_WORD(pText[4],pText[5]);
	
                                
				// 전부 지워졌는지 검사한다.				
				for(i=0;i<MEM_RECORD_SIZE;i++)
				{
					if(WORD_L(pNorFlshAddr[(nFlshWrAddr*MEM_RECORD_SIZE) + i]) != 0xFF) break;
				}
					
				if(i != MEM_RECORD_SIZE)
				{
					// 지워지지 않았다면 잘 써졌있는지 검사한다.
					for(i=0;i<MEM_RECORD_SIZE;i++)
					{
						if(WORD_L(pNorFlshAddr[(nFlshWrAddr*MEM_RECORD_SIZE) + i]) != WORD_L(pText[6 + i])) break;
					}
						
					// 다운로드가 정상적으로 되었다면 비디오 메모리에 0으로쓰고 아니면 1을 쓴다.
					pVideoMem[nFlshWrAddr] = (i == MEM_RECORD_SIZE) ? OK : NG;
						
					break;
				}
					
				

				NORFLASH_WriteData(&norFlash, (nFlshWrAddr*MEM_RECORD_SIZE), &pText[6], MEM_RECORD_SIZE);
					
                                
				// 잘 써졌는지 검사한다.
				for(i=0;i<MEM_RECORD_SIZE;i++)
				{
					if(WORD_L(pNorFlshAddr[(nFlshWrAddr*MEM_RECORD_SIZE) + i]) != WORD_L(pText[6 + i])) break;
				}
				
				// 다운로드가 정상적으로 되었다면 비디오 메모리에 0으로쓰고 아니면 1을 쓴다.
				pVideoMem[nFlshWrAddr] = (i == MEM_RECORD_SIZE) ?  OK : NG;					

				gFirmWareExeFlag = FALSE; // 2초후 자동으로 수행하지 못하도록 한다.
                                
                              
				gVersionPrintFlag = IsPrintOfVersion();
				break;				
		
			// 상태를 요구.
			case SCC_STATUS_REQ:
				if((UCHAR)ADD_CHECK() != pText[0]) break; // 나의 상태를 요구하는것인지 체크

				SendStatusReq(pText);
				gFirmWareExeFlag = FALSE; // 2초후 자동으로 수행하지 못하도록 한다.						
				gVersionPrintFlag = IsPrintOfVersion();
				break;
				
			// 상태 응답 프로토콜을 무시한다.
			case SCC_STATUS_RLY:
				break;
				
			// 아무런 해당사항이 없는 프로토콜이면 본 프로그램을 수행
			default:
					
				break;
			}
			
		}

		//glDebugCnt++;
	//}	
}

/***********************************************************************
	화면의 중앙을 계산한다.
************************************************************************/
void ScreenWidth()
{
	if(IS_IDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) SCREEN_WIDTH_MAX = 224; // 차내표시기
	else
	if(IS_FDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) SCREEN_WIDTH_MAX = 96; // 정면 표시기
	else
	if(IS_SDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) SCREEN_WIDTH_MAX = 96; // 측면 표시기
	else
	if(IS_TN_NO(BYTE_L((UCHAR)ADD_CHECK()))) SCREEN_WIDTH_MAX = 64; // 열차번호
	else
	if(IS_LDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) SCREEN_WIDTH_MAX = 0; // 노선
	else
	if(IS_HDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) SCREEN_WIDTH_MAX = 16; // 호차 표시기
	else
		SCREEN_WIDTH_MAX = 0;
}

/***********************************************************************
	차내표시기(0x1F), 정면표시기(0xF5), 측면표시기(0xF6)
	열차번호표시기(0xF7), 노선표시기(0xF9)
************************************************************************/
int IsDisplayAddressOk(UCHAR nToAddr)
{
	switch(nToAddr)
	{
	case IDD:if(IS_IDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) return TRUE;break;	
	case FDD:if(IS_FDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) return TRUE;break;	
	case SDD:if(IS_SDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) return TRUE;break;	
	case TN:if(IS_TN_NO(BYTE_L((UCHAR)ADD_CHECK()))) return TRUE;break;	
	case LDD:if(IS_LDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) return TRUE;break;	
	case HDD:if(IS_HDD_NO(BYTE_L((UCHAR)ADD_CHECK()))) return TRUE;break;	
	default:
		return FALSE;
	}

	return FALSE;
}

/***********************************************************************
	화면에 출력할 수 있는 표시기인지 리턴한다.
************************************************************************/
int IsPrintOfVersion()
{
	if(LO_NIBBLE((UCHAR)ADD_CHECK()) < 5 || LO_NIBBLE((UCHAR)ADD_CHECK()) > 8) return TRUE; else return FALSE;
}

/***********************************************************************
	상태를 리턴한다.
************************************************************************/
void SendStatusReq(UCHAR *pRevPtcTextBuff)
{
	int i,blockSize;
	int nTemp;
	UCHAR nPtcBuff[20];
	UINT nLen;
	UINT nCrc;
	UCHAR *pNorFlshAddr = (UCHAR *)(BOARD_NORFLASH_ADDR);
	UCHAR *pVideoMem = (UCHAR *)DOT_VIDEO_DATA;
	UCHAR sMeroTestBuf[1024];
	
	nLen = 10;
	
	nPtcBuff[0] = 0xAA;
	nPtcBuff[1] = 0xBB;
	nPtcBuff[2] = 0xCC;
	
	nPtcBuff[3] = WORD_H(nLen);
	nPtcBuff[4] = WORD_L(nLen);
	
	nPtcBuff[5] = ~WORD_H(nLen);
	nPtcBuff[6] = ~WORD_L(nLen);
	
	nPtcBuff[7] = pRevPtcTextBuff[1];	
	nPtcBuff[8] = pRevPtcTextBuff[0];
	
	nPtcBuff[9] = SCC_STATUS_RLY; // Code
	
	nPtcBuff[10] = 0x01; // Downloader Reply Code
	
	nPtcBuff[12] = 0x00;
	nPtcBuff[13] = 0x00;

	switch(pRevPtcTextBuff[4]&0xff)
	{
	default:	
		return;
	
	// 통신 상태 OK,NG
	case 0x00:
		nPtcBuff[11] = 0x00;
		break;
				
	// 메모리 Erase OK,NG
	case 0x10:		
		nTemp = pRevPtcTextBuff[5]*0x10000;
		// 블럭이 지워졌는지 검사


		for(i=0;i<0x10000;i++)
                {
		  if(WORD_L(pNorFlshAddr[nTemp + i]) != 0xFF) break;	
                }
		
		nPtcBuff[11] = (i == 0x10000 ? MEMORY_ERASE_OK : MEMORY_ERASE_NG);
                
                
		break;

	// Data Download OK,NG
	case 0x20:
		for(i=MAKE_WORD(pRevPtcTextBuff[6],pRevPtcTextBuff[7]);i<=MAKE_WORD(pRevPtcTextBuff[8],pRevPtcTextBuff[9]);i++)
		{
			// 쓰여지지 않은 메모리라면 현 루프를 중지한다.
			if(WORD_L(pVideoMem[i]) == NG) break;
		}

		if(i > MAKE_WORD(pRevPtcTextBuff[8],pRevPtcTextBuff[9]))
		{
			nPtcBuff[11] = 0x20; // OK

			nPtcBuff[12] = 0x00;
			nPtcBuff[13] = 0x00;
		}
		else
		{		
			nPtcBuff[11] = 0x21; // NG

			nPtcBuff[12] = WORD_H(i);
			nPtcBuff[13] = WORD_L(i);
		}
		
		break;
	}	
	
	nPtcBuff[14] = 0x00; // TEXT(7)
	nPtcBuff[15] = VERSION; // TEXT(8) - 다운로더 번호
	nPtcBuff[16] = 11;//GetFirmWareVersion(); // TEXT(9) - 표시기 Firmware Version(0x10 ~ 0x90)
	
	nPtcBuff[17] = 0x03; // ETX
	
	
        nCrc = cal_CRC16(nLen+5,(UCHAR *)&nPtcBuff[3]);

	nPtcBuff[18] = WORD_H(nCrc); // CRC
	nPtcBuff[19] = WORD_L(nCrc); // CRC


	memcpy(SCC1_Init_AChl.pTxBuffer,nPtcBuff,20);

	SCC1_Init_AChl.TxDelTime = 10;

}

/************************************************************************
	Firmware 버젼 얻기
*************************************************************************/
UCHAR GetFirmWareVersion()
{
  /*
	int i;
	int nPos;	
	DWORD nDat;
	DWORD nReadBlkSize;
	UCHAR *pAddr = (UCHAR *)(NORFLASH_ADDR + 0x3C0000);
	UCHAR nBuff[2];

	if(WORD_L(pAddr[0]) == 0xFF || WORD_L(pAddr[1]) == 0xFF || WORD_L(pAddr[2]) == 0xFF || WORD_L(pAddr[3]) == 0xFF)
	 return 0xFF;
	
	nPos = 4;

	for(;;)
	{
		WDI_CS;
		
		// Block Size
		nDat = MAKE_DWORD(pAddr[nPos*4+3],pAddr[nPos*4+2],pAddr[nPos*4+1],pAddr[nPos*4+0]);
		nReadBlkSize = nDat;
		if(nReadBlkSize == 0x00000000)
		{
			nPos-=3;			
			nBuff[0] = nDat = MAKE_DWORD(pAddr[nPos*4+3],pAddr[nPos*4+2],pAddr[nPos*4+1],pAddr[nPos*4+0]);
			nPos++;			
			nBuff[1] = nDat = MAKE_DWORD(pAddr[nPos*4+3],pAddr[nPos*4+2],pAddr[nPos*4+1],pAddr[nPos*4+0]);
			
			return TwoChar2HEX(WORD_L(nBuff[0]),WORD_L(nBuff[1])); // 블럭 크기가 0이면 종료한다.
		}
		else
		if(nReadBlkSize >= 0x00040000 || nPos >= 0x00040000) // 256KB이상이면 프로그램이 잘못 다운로드 된것으로 보고 중지
		{
			return 0xFF;
		}
			
		nPos++;
		
		// Destination Address
		nPos++;

		// Destination Strobe
		nPos++;

		// Data
		nPos += nReadBlkSize;
	}
  */
}

/************************************************************************
	한개의 문자를 헥사 코드로 만든다.
*************************************************************************/
UCHAR OneChar2HEX(char Ch)
{
	if((UCHAR)Ch >= 'a' && (UCHAR)Ch <= 'f') return Ch - 'a' + 10;
	else
		if((UCHAR)Ch >= 'A' && (UCHAR)Ch <= 'F') return Ch - 'A' + 10;
		else
			if((UCHAR)Ch >= '0' && (UCHAR)Ch <= '9') return Ch - '0';
			else return 0;
}

/************************************************************************
	두개의 문자를 헥사 코드로 만든다.
*************************************************************************/
UCHAR TwoChar2HEX(char Ch1,char Ch2)
{
	return ((UCHAR)OneChar2HEX(Ch1)&0xf)<<4 | ((UCHAR)OneChar2HEX(Ch2)&0xf);
}

/************************************************************************
	LENGTH~ETX CRC16
*************************************************************************
WORD CalCrc16(UCHAR *pDat,int nNo)
{
	WORD CRC = 0;
	int i;

	for(i=0; i<nNo; i++)
		CRC = (CRC >> 8) ^ gCRC_Table[(CRC^pDat[i])&0x00ff];

	return ((~CRC) & 0x0000ffff);
}


/************************************************************************
	LDM Address Setting
*************************************************************************/
void LdmLatchClk(int Line)
{	
	switch(Line)
	{	
	case 0:
		LDM_CTRL(0x0a);
		LDM_CTRL(0x0b);
		LDM_CTRL(0x09);
		LDM_CTRL(0x0b);
		LDM_CTRL(0x0a);
		break;
	case 1:
		LDM_CTRL(0x0a);
		LDM_CTRL(0x0e);
		LDM_CTRL(0x06);
		LDM_CTRL(0x0e);
		LDM_CTRL(0x0a);
		break;
	}
}

/************************************************************************
	한개의 쩜을 찍는다.
*************************************************************************/
void PixelPut(int x,int y,UCHAR nClr)
{
	int i;
	UCHAR *pAddr = (UCHAR *)AT91C_EBI_SDRAM;	

	i = x+(y*SCREEN_WIDTH_MAX);
	
	if(i < (SCREEN_WIDTH_MAX*16))
	{
		pAddr[i] = nClr;
	}
	else
	{
		i %= (SCREEN_WIDTH_MAX*16);
		
		pAddr[i] &= 0xF3;
		pAddr[i] |= (nClr<<2)&0x0C;
	}
	
}

/************************************************************************
	한개의 숫자를 출력한다.
*************************************************************************/
void TextOut(int x,int y,UCHAR nChar,UCHAR nfClr,UCHAR nbClr)
{
	int i,j;
	UCHAR *pAddr = (UCHAR *)AT91C_EBI_SDRAM;	
	UCHAR *pNorFlshAddr = (UCHAR *)(BOARD_NORFLASH_ADDR);
	
	
	nChar = nChar >= 10 ? (nChar-10)+0x21 : nChar + 0x10;
	
	for(j=0;j<16;j++)	
	{
		for(i=0;i<8;i++)
		{			
			PixelPut(x+i,y+j,BitTest(pNorFlshAddr[j+nChar*16],7-i) ? nfClr : nbClr);

			//PixelPut(x+i,y+j,BitTest(gDigitName[j+LO_NIBBLE(nChar)*16],7-i) ? nfClr : nbClr);
		}
	}
}

/************************************************************************
	이미지를 출력한다.
*************************************************************************/
void VersionImagePut()
{
	UCHAR i;
	UCHAR *pAddr = (UCHAR *)AT91C_EBI_SDRAM;	

	memset(AT91C_EBI_SDRAM,0,(SCREEN_WIDTH_MAX * 32)); // 0으로 Clear

	// 다운로더 버젼번호
	TextOut(SCREEN_CENTER_POS + 0,0,HI_NIBBLE(VERSION),1,0);
	TextOut(SCREEN_CENTER_POS + 8,0,LO_NIBBLE(VERSION),1,0);
			
	// 표시기 폼웨어 버젼번호
	i = 11;//GetFirmWareVersion();
	TextOut(SCREEN_CENTER_POS + 16,0,HI_NIBBLE(i),2,0);
	TextOut(SCREEN_CENTER_POS + 24,0,LO_NIBBLE(i),2,0);
}

/************************************************************************
	Timer0 - Interrupt Routine [1ms]
*************************************************************************/
void Down_int09(void) // Timer 0
{
	static DWORD nBlk = 0;
	
	if(gTxEnableTimerCnt) gTxEnableTimerCnt--;
     
	//if(gTxDisableTimerCnt == 1) RS485_TX_DISABLE;
	if(gTxDisableTimerCnt) gTxDisableTimerCnt--;
        

	gFirmWareExeTime++;

}

