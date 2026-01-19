#include "def.h"
#include "string.h"
#include "xr16788.h"
#include "PA_Pro.h"
#include "user.h"
#include "GpProface.h"
#include "LED_DOWNLOAD.h"


LED_DATA_DOWNLOAD nLedDataLoad;


UCHAR nLED_200ms_Flag = 0;
UCHAR nLED_Time_Change = 200;
UCHAR nLED_Time_Cnt = 0;

UCHAR DISPLAY_UNIT_SDD[8] = {0x1A,0x2A,0x3A,0x4A,
							 0x1B,0x2B,0x3B,0x4B};

UCHAR DISPLAY_UNIT_FDD[2] = {0x1F,0x0F};

/************************* 외부 변수 ****************************/

extern XR16788_INIT_SHAPE Xr16788_1Ch;
extern XR16788_INIT_SHAPE Xr16788_2Ch;
extern XR16788_INIT_SHAPE Xr16788_3Ch;
extern XR16788_INIT_SHAPE Xr16788_4Ch;

extern SELF_TEST nSelf_Test;	//자기 진단 관련 구조체
extern SELETC_BUTTON nSelect_Button;
/******************************************************************
	LED_Init = 초기화 하는 함수
*******************************************************************/
void LED_Init()
{
	nLedDataLoad.nFDDSelt = 0;
	nLedDataLoad.nSDDSelt = 0;
	nLedDataLoad.nSFKindCode = 0;

	nLedDataLoad.nWaitSDR = 0;

	nLedDataLoad.nSelfTestFlag = 0;
	nLedDataLoad.nSDR_RxCnt = 0;

	nLedDataLoad.nErassFlag.nST_1 = 0;
	nLedDataLoad.nErassFlag.nST_2 = 0;
	nLedDataLoad.nErassFlag.nTXCnt = 0;	//Erass 블럭 전송 카운터
	nLedDataLoad.nErassFlag.nRepCnt = 0;
	nLedDataLoad.nErassFlag.nErassOk = FALSE;

	nLedDataLoad.nDataDownFlag = 0;
	nLedDataLoad.nDataRepetFlag = 0;
	nLedDataLoad.nDataRepetNum = 0;
	nLedDataLoad.nDataRepetCnt = 0;
	nLedDataLoad.nDataSDRFlag = 0;
	nLedDataLoad.nDataSize = 0;
	nLedDataLoad.nDataTxCnt = 0;
}
/******************************************************************
	LED_Main = MAIN 함수에서 처리 해야 될 함수.
*******************************************************************/
void LED_Main()
{
	if(nLED_200ms_Flag)
	{
		nLED_200ms_Flag = FALSE;

		if(WORD_L(Xr16788_3Ch.nTxOK))
		{
			if(nLedDataLoad.nSDDSelt || nLedDataLoad.nFDDSelt)
			{
				LED_WaitSDR();
			}
			 
			if(nLedDataLoad.nErassFlag.nST_1)
			{
				LED_ERASS();
			}
			else if(!nLedDataLoad.nErassFlag.nST_1 &&nLedDataLoad.nErassFlag.nST_2)
			{
				LED_ERASS_SDR();
			}
			else if(nLedDataLoad.nDataDownFlag)	// 데이타 전송.
			{
				LED_DataDownLoad_ST1();	// 전송 데이타 사이즈 확인.

				if(nLedDataLoad.nDataSize) // 데이타 전송.
				{
					LED_DataDownLoad_ST2(nLedDataLoad.nDataTxCnt);
					nLedDataLoad.nDataTxCnt++;
				}
			}
			else if(nLedDataLoad.nDataSDRFlag)
			{
				if(!nLedDataLoad.nDataRepetFlag)
				{
					LED_DataSDR();
				}
				else if(nLedDataLoad.nDataRepetFlag)
				{
					nLedDataLoad.nDataRepetFlag = FALSE;
					LED_DataDownLoad_ST2(nLedDataLoad.nDataRepetNum);
				}
			}
		}
	}
}
/******************************************************************
	LED_WaitSDR 다운로드 초기 준비
*******************************************************************/
void LED_WaitSDR()
{
	UCHAR sWastBuf[20];
	UCHAR sSelfTestBuf[11];

	if(nLedDataLoad.nWaitSDR)
	{
		nLedDataLoad.nWaitSDR--;

		Xr_TX_PROTOCOL(sWastBuf,nLedDataLoad.nSFKindCode,0x31,0x1F,0,0,0,0,0,10);

		xr16l788_Send(XR16L788_3CHL,sWastBuf,20);

		if(nLedDataLoad.nWaitSDR == 3)	// 다운로드 프로그램 9600 으로 변경한다.
		{
			nLED_Time_Cnt = 1;
			xr16l788_Init(XR16L788_3CHL,9600,XR16L788_DATA8,XR16L788_NONEPARITY,XR16L788_1STOPBIT);	
			Xr16788_3Ch.nBPS = 96;
		}

		if(!nLedDataLoad.nWaitSDR)
		{
			GP_DOWNLOAD_SDR();	//자기진단 결과 표출 초기화.
			nLED_Time_Change = 200;
			nLedDataLoad.nSelfTestFlag = 1;

			nLedDataLoad.nErassFlag.nTXCnt = 0;
		}
	}

	if(nLedDataLoad.nSelfTestFlag)
	{	
		if(nLedDataLoad.nFDDSelt)
		{
			DP_SelfTest(DISPLAY_UNIT_FDD,2);
		}
		else if(nLedDataLoad.nSDDSelt)
		{
			DP_SelfTest(DISPLAY_UNIT_SDD,8);
		}

		nSelect_Button.nScreenSetNum = 11;
	}
}

/******************************************************************
	LED_ERASS_SDR 삭제 명령 
*******************************************************************/
void LED_ERASS()
{
	UCHAR sSelf_Tx_Buf[25];
	UCHAR sErBlkBuf[5] = {0x3C,0x3D,0x3E,0x3F};

	nLED_Time_Change = 2500;


	if(nLedDataLoad.nErassFlag.nTXCnt>=4)
	{
		nLedDataLoad.nErassFlag.nTXCnt = 0;
		nSelf_Test.nSELF_TX_Cnt = 0;

		nLedDataLoad.nErassFlag.nST_1 = FALSE;
		nLedDataLoad.nErassFlag.nST_2 = TRUE;
		nSelect_Button.nScreenSetNum = 12;
	}
	else
	{
		Xr_TX_PROTOCOL(sSelf_Tx_Buf,nLedDataLoad.nSFKindCode,0x31,0x01,0,0,sErBlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%4],0,0,10);
		xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);
		nLedDataLoad.nErassFlag.nTXCnt++;
	}
}

UCHAR d_Sdr_A = 0;
UCHAR d_Sdr_B = 0;

void LED_ERASS_SDR()
{
	int i;
	UCHAR sSelf_Tx_Buf[25];
	UCHAR sSelf_RxData_Buf[25];
	UCHAR sErBlkBuf[5] = {0x3C,0x3D,0x3E,0x3F};
	UCHAR sErAddCnt = 0;
	
	memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_RXDATA_Buf,15);
	
	nLED_Time_Change = 300;

	for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(DISPLAY_UNIT);i++)
	{
		if(!WORD_L(sSelf_RxData_Buf[i]))
		{
			sErAddCnt = i;
			break;
		}
		else {nSelf_Test.nSELF_TX_Cnt++;}
	}

	if(nSelf_Test.nSELF_TX_Cnt >= DISPLAY_UNIT)
	{
		nSelf_Test.nSELF_TX_Cnt = 0;

		nLedDataLoad.nErassFlag.nST_1 = FALSE;
		nLedDataLoad.nErassFlag.nST_2 = FALSE;

		d_Sdr_B = nLedDataLoad.nSDR_RxCnt;
		
		//nLedDataLoad.nErassFlag.nTXCnt = (nLedDataLoad.nErassFlag.nTXCnt) - (nLedDataLoad.nErassFlag.nTXCnt%4);
		d_Sdr_A = nLedDataLoad.nErassFlag.nTXCnt;

		if(WORD_L(nLedDataLoad.nErassFlag.nTXCnt) >= WORD_L(nLedDataLoad.nSDR_RxCnt))	//모두 잘 지워 졌을때.
		{
			nLedDataLoad.nErassFlag.nRepCnt = 0;
			nLedDataLoad.nErassFlag.nErassOk = TRUE;
			gpLED_UPLOAD_DABUT;
			gpLED_UPLOAD_DABUT_SF_ON;
		}
		else	// 지우기 실패로 인해 다시 지운다. 5회 반복한다.
		{
			nLedDataLoad.nErassFlag.nRepCnt++;
			if(nLedDataLoad.nErassFlag.nRepCnt <5)
			{
				nLedDataLoad.nErassFlag.nST_1 = TRUE;
			}
			else
			{
				nLedDataLoad.nErassFlag.nRepCnt = 0;
			}
		}
		
		nLedDataLoad.nSDR_RxCnt = 0;
		nLedDataLoad.nErassFlag.nTXCnt = 0;
	}
	else
	{
		Xr_TX_PROTOCOL(sSelf_Tx_Buf,nSelf_Test.nSELF_ADDDATA_BUF[sErAddCnt],0x31,0x07,0,0x10,sErBlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%4],0,0,10);

		nLedDataLoad.nErassFlag.nTXCnt++;

		if(!(nLedDataLoad.nErassFlag.nTXCnt%4) && nLedDataLoad.nErassFlag.nTXCnt)//한 장치당 삭제 블럭 갯수 만큼 물어 본다.
		{
			nSelf_Test.nSELF_TX_Cnt++;
		}

		xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);
	}
}
/******************************************************************
	LED_DataDownLoad 데이타를 전송하는 부분
*******************************************************************/
void LED_DataDownLoad_ST1()
{
	if(!nLedDataLoad.nDataSize)
	{
		nLedDataLoad.nDataSize = Nvsram_IDC_UpLoad_Da();
	}
}
void LED_DataDownLoad_ST2(UCHAR nBlkNum)
{
	UCHAR sDataBuf[150];
	UCHAR sDataTextBuf[150];

	nLED_Time_Change = 200;

	memcpy(sDataBuf,&NVSRAM(nBlkNum*128),128);
	Xr_Tx_DownLoad_TEXT(sDataTextBuf,sDataBuf,nLedDataLoad.nSFKindCode,(nBlkNum+30720));

	xr16l788_Send(XR16L788_3CHL,sDataTextBuf,144);


	if((nBlkNum*128) >= nLedDataLoad.nDataSize)
	{
		nLedDataLoad.nDataDownFlag = FALSE;
		nLedDataLoad.nDataSDRFlag = TRUE;
		nLedDataLoad.nDataSize = 0;
		//nLedDataLoad.nDataTxCnt = 0;
	}
}

void LED_DataSDR()
{
	UCHAR i;
	UCHAR sSelf_RxData_Buf[25];
	UCHAR sSelf_Tx_Buf[25];
	UCHAR sPoinData;
	UCHAR sDataBlt1,sDataBlt2;

	sDataBlt1 = 30720;
	sDataBlt2 = (nLedDataLoad.nDataTxCnt-1) + 30720;

	memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_RXDATA_Buf,15);

	if(WORD_L(nLedDataLoad.nDataRepetCnt) > 5)
	{

		nSelf_Test.nSELF_RXDATA_Buf[nSelf_Test.nSELF_TX_Cnt] = 1;
		nSelf_Test.nSELF_TX_Cnt++;
		nLedDataLoad.nDataRepetCnt = 0;
	}

	for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(DISPLAY_UNIT);i++)
	{
		if(!WORD_L(sSelf_RxData_Buf[i]))
		{
			sPoinData = i;
			break;
		}
		else {nSelf_Test.nSELF_TX_Cnt++;}
	}

	if(nSelf_Test.nSELF_TX_Cnt >= DISPLAY_UNIT)
	{
		nLedDataLoad.nDataSDRFlag = FALSE;
		nLedDataLoad.nDataTxCnt = 0;
		nLedDataLoad.nDataRepetCnt = 0;
		nLedDataLoad.nDataRepetNum = 0;

		gpLED_UPLOAD_ERBUT_SF_ON;
		gpLED_UPLOAD_DABUT_SF_ON;
		gpROOTEN;

		Xr_TX_PROTOCOL(sSelf_Tx_Buf,nLedDataLoad.nSFKindCode,0x31,0x1a,0,0x00,0x00,sDataBlt1,sDataBlt2,10);

		xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);

		//xr16l788_Init(XR16L788_3CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR16L788_1STOPBIT);	
		//Xr16788_3Ch.nBPS = 192;
		
	}
	else
	{
		Xr_TX_PROTOCOL(sSelf_Tx_Buf,nSelf_Test.nSELF_ADDDATA_BUF[sPoinData],0x31,0x07,0,0x20,0x00,sDataBlt1,sDataBlt2,10);

		xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);
	}

	nLedDataLoad.nDataRepetCnt++;

}
/******************************************************************
	LED_Timer_1ms =1ms 타이머.
*******************************************************************/
void LED_Timer_1ms()
{
	nLED_Time_Cnt++;
	if(!(nLED_Time_Cnt%nLED_Time_Change)) 
	{
		nLED_Time_Cnt = 1;
		nLED_200ms_Flag = TRUE; 
	}

}


