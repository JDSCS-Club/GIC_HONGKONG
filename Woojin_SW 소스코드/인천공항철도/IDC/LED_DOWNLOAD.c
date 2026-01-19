
#include "string.h"
#include "stdio.h"
#include "stdarg.h"
#include "All_def.h"
#include "z85c30.h"
#include "DataPro.h"
#include "GpProface.h"
#include "LED_DOWNLOAD.h"

LED_DATA_DOWNLOAD nLedDataLoad;


UCHAR nLED_200ms_Flag = 0;
UCHAR nLED_Time_Change = 200;
UCHAR nLED_Time_Cnt = 0;

UCHAR DISPLAY_UNIT_IDD[30] = {0x11,0x21,0x31,0x41,0x71,0x01,
							  0x12,0x22,0x32,0x42,0x72,0x02,
							  0x13,0x23,0x33,0x43,0x73,0x03,
							  0x14,0x24,0x34,0x44,0x74,0x04};

UCHAR DISPLAY_UNIT_RND[30] = {0x15,0x25,0x35,0x45,0x75,0x05,
							  0x16,0x26,0x36,0x46,0x76,0x06,
							  0x17,0x27,0x37,0x47,0x77,0x07,
							  0x18,0x28,0x38,0x48,0x78,0x08};


UCHAR DISPLAY_UNIT_FDD[5]  = {0x1F,0x0F};

UCHAR DISPLAY_UNIT_TND[5]  = {0x1D,0x0D};

/************************* 외부 변수 ****************************/

extern SCC_INIT_SHAPE SCC2_INIT_A;
extern SCC_INIT_SHAPE SCC2_INIT_B;

extern SCC_INIT_SHAPE SCC3_INIT_A;
extern SCC_INIT_SHAPE SCC3_INIT_B;


extern SELF_TEST nSelf_Test;	//자기 진단 관련 구조체
extern SELETC_BUTTON nSelect_Button;
/******************************************************************
	LED_Init = 초기화 하는 함수
*******************************************************************/

//SCC_TX_PROTOCOL(sClean_Tx_Buf,0xF6,0x31,0x1A,0,10);
//Delay_SCC2_SendTo(sClean_Tx_Buf,20,SCC_A_CHANNEL,5);

void LED_Init()
{
	nLedDataLoad.nRNDSelt = 0;
	nLedDataLoad.nFDDSelt = 0;
	nLedDataLoad.nIDDSelt = 0;
	nLedDataLoad.nTNDSelt = 0;
	nLedDataLoad.nFDD_DATA_Selt = 0;
	nLedDataLoad.nSFKindCode = 0;

	nLedDataLoad.nSWScreenSelt = 0;
	nLedDataLoad.nDATAScreenSelt = 0;

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

		if(WORD_L(SCC2_INIT_A.TxOK))
		{
			if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDSelt || nLedDataLoad.nTNDSelt )
			{
				LED_WaitSDR();
			}
			 
			if(nLedDataLoad.nErassFlag.nST_1)
			{
				LED_ERASS();
			}
			else if(!nLedDataLoad.nErassFlag.nST_1 &&nLedDataLoad.nErassFlag.nST_2)
			{
				LED_ERASS_SDR(nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);
			}
			else if(nLedDataLoad.nDataDownFlag)	// 데이타 전송.
			{
				LED_DataDownLoad_ST1();	// 전송 데이타 사이즈 확인.

				if(nLedDataLoad.nDataSize) // 데이타 전송.
				{
					LED_DataDownLoad_ST2(nLedDataLoad.nDataTxCnt);
					nLedDataLoad.nDataTxCnt++;
				}

				nSelect_Button.nScreenSetNum = 13;
			}
			else if(nLedDataLoad.nDataSDRFlag) // 데이타 전송 확인.
			{
				if(!nLedDataLoad.nDataRepetFlag)
				{
					LED_DataSDR(nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);
				}
				else if(nLedDataLoad.nDataRepetFlag)	//재전송.
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
	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;

	UCHAR sWastBuf[20];
	UCHAR sSelfTestBuf[11];

	szBuf[0] = 0;

	if(nLedDataLoad.nWaitSDR)
	{
		nLedDataLoad.nWaitSDR--;

		SCC_TX_PROTOCOL(sWastBuf,nLedDataLoad.nSFKindCode,0x31,0x1F,0,0,0,0,0,10);

		if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt ) //다운로드 기능중 차내 빼고는 "B"채널로 보낸다.
		{
			Delay_SCC2_SendTo(sWastBuf,20,SCC_B_CHANNEL,5);
		}
		else {
			Delay_SCC2_SendTo(sWastBuf,20,SCC_A_CHANNEL,5);
		}


		sprintf(szBuf2,"$Wait SDR Cnt-->[%d]",nLedDataLoad.nWaitSDR);strcat(szBuf,szBuf2);sdebugFlag = TRUE;

		if(!nLedDataLoad.nWaitSDR)
		{
			GP_DOWNLOAD_SDR();	//자기진단 결과 표출 초기화.
			nLED_Time_Change = 250;
			nLedDataLoad.nSelfTestFlag = 1;

			nLedDataLoad.nErassFlag.nTXCnt = 0;
		}
	}

	if(nLedDataLoad.nSelfTestFlag)
	{	
		
		if(WORD_L(nLedDataLoad.nFDDSelt))
		{
			DP_SelfTest(DISPLAY_UNIT_FDD,nSelf_Test.nSELF_DownLoad_RxBuf,DISPLAY_FDD_UNIT_CNT);
			memcpy(nSelf_Test.nSELF_DownLoad_AddBuf,DISPLAY_UNIT_FDD,DISPLAY_FDD_UNIT_CNT);
			nSelf_Test.nSELF_DownLoad_UnitCnt = DISPLAY_FDD_UNIT_CNT;

			sprintf(szBuf2,"$FDD Self Test");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
		}
		else if(WORD_L(nLedDataLoad.nRNDSelt))
		{
			DP_SelfTest(DISPLAY_UNIT_RND,nSelf_Test.nSELF_DownLoad_RxBuf,DISPLAY_RND_UNIT_CNT);
			memcpy(nSelf_Test.nSELF_DownLoad_AddBuf,DISPLAY_UNIT_RND,DISPLAY_RND_UNIT_CNT);
			nSelf_Test.nSELF_DownLoad_UnitCnt = DISPLAY_RND_UNIT_CNT;

			sprintf(szBuf2,"$RND Self Test");strcat(szBuf,szBuf2);sdebugFlag = TRUE;

		}
		else if(WORD_L(nLedDataLoad.nIDDSelt))
		{
			DP_SelfTest(DISPLAY_UNIT_IDD,nSelf_Test.nSELF_DownLoad_RxBuf,DISPLAY_IDD_UNIT_CNT);
			memcpy(nSelf_Test.nSELF_DownLoad_AddBuf,DISPLAY_UNIT_IDD,DISPLAY_IDD_UNIT_CNT);
			nSelf_Test.nSELF_DownLoad_UnitCnt = DISPLAY_IDD_UNIT_CNT;

			sprintf(szBuf2,"$IDD Self Test");strcat(szBuf,szBuf2);sdebugFlag = TRUE;

		}
		else if(WORD_L(nLedDataLoad.nTNDSelt))
		{
			DP_SelfTest(DISPLAY_UNIT_TND,nSelf_Test.nSELF_DownLoad_RxBuf,DISPLAY_TND_UNIT_CNT);
			memcpy(nSelf_Test.nSELF_DownLoad_AddBuf,DISPLAY_UNIT_TND,DISPLAY_TND_UNIT_CNT);
			nSelf_Test.nSELF_DownLoad_UnitCnt = DISPLAY_TND_UNIT_CNT;

			sprintf(szBuf2,"$TND Self Test");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
		}

		nSelect_Button.nScreenSetNum = 11;
	}

	//디버깅
	if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }
}

/******************************************************************
	LED_ERASS_SDR 삭제 명령 
*******************************************************************/
void LED_ERASS()
{
	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;

	UCHAR sSelf_Tx_Buf[25];
	UCHAR sErBlkBuf[5] = {0x3C,0x3D,0x3E,0x3F};
	UCHAR sErDataBlk[5] = {0x00,0x01,0x02,0x03};
	UCHAR sErBlkPoint = 4; //삭제 한 블럭 갯수.

	nLED_Time_Change = 2500;

	szBuf[0] = 0;

	if(nLedDataLoad.nFDD_DATA_Selt)	//데이타 다운로드 기능일 경우 블럭 번호가 바뀐다.
	{
		memcpy(sErBlkBuf,sErDataBlk,5);
	}

	if(nLedDataLoad.nIDDSelt)
	{
		sErBlkBuf[0] = 0x3F;
		sErBlkBuf[1] = 0x3F;
		sErBlkPoint = 1;
	}

	if(nLedDataLoad.nErassFlag.nTXCnt>=sErBlkPoint)
	{
		nLedDataLoad.nErassFlag.nTXCnt = 0;
		nSelf_Test.nSELF_TX_Cnt = 0;

		nLedDataLoad.nErassFlag.nST_1 = FALSE;
		nLedDataLoad.nErassFlag.nST_2 = TRUE;
		nSelect_Button.nScreenSetNum = 12;

		sprintf(szBuf2,"$ERASS Finish");strcat(szBuf,szBuf2);sdebugFlag = TRUE;

	}
	else
	{
		SCC_TX_PROTOCOL(sSelf_Tx_Buf,nLedDataLoad.nSFKindCode,0x31,0x01,0,0,sErBlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%sErBlkPoint],0,0,10);

		if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt ) //다운로드 기능중 차내 빼고는 "B"채널로 보낸다.
		{
			Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);
		}
		else {
			Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_A_CHANNEL,5);
		}

		sprintf(szBuf2,"$ERASS -- Blk[%02X]H",sErBlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%sErBlkPoint]);strcat(szBuf,szBuf2);sdebugFlag = TRUE;

		nLedDataLoad.nErassFlag.nTXCnt++;

	}

	//디버깅
	if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }
}

UCHAR d_Sdr_A = 0;
UCHAR d_Sdr_B = 0;
UCHAR d_Sdr_C = 0;

void LED_ERASS_SDR(UCHAR *pDataBuf,UCHAR sUnitCnt)
{

	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;

	int i;
	UCHAR sSelf_Tx_Buf[25];
	UCHAR sSelf_RxData_Buf[25];
	UCHAR sErBlkBuf[5] = {0x3C,0x3D,0x3E,0x3F};
	UCHAR sErDataBlk[5] = {0x00,0x01,0x02,0x03};
	UCHAR sErAddCnt = 0;
	UCHAR sErBlkPoint = 4; //삭제 한 블럭 갯수.

	szBuf[0] = 0;

	if(nLedDataLoad.nFDD_DATA_Selt)	//데이타 다운로드 기능일 경우 블럭 번호가 바뀐다.
	{
		memcpy(sErBlkBuf,sErDataBlk,5);
	}
	
	if(nLedDataLoad.nIDDSelt)
	{
		sErBlkBuf[0] = 0x3F;
		sErBlkBuf[1] = 0x3F;
		sErBlkPoint = 1;
	}

	memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);
	
	nLED_Time_Change = 200;


	for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(sUnitCnt);i++)
	{
		if(!WORD_L(sSelf_RxData_Buf[i]))
		{
			sErAddCnt = i;
			break;
		}
		else {nSelf_Test.nSELF_TX_Cnt++;}
	}

	if(nSelf_Test.nSELF_TX_Cnt >= sUnitCnt)
	{
		nSelf_Test.nSELF_TX_Cnt = 0;

		nLedDataLoad.nErassFlag.nST_1 = FALSE;
		nLedDataLoad.nErassFlag.nST_2 = FALSE;

		d_Sdr_C = sErBlkPoint;

		d_Sdr_B = nLedDataLoad.nSDR_RxCnt;
		
		//nLedDataLoad.nErassFlag.nTXCnt = (nLedDataLoad.nErassFlag.nTXCnt) - (nLedDataLoad.nErassFlag.nTXCnt%sErBlkPoint);
		d_Sdr_A = nLedDataLoad.nErassFlag.nTXCnt;

		if(WORD_L(nLedDataLoad.nErassFlag.nTXCnt) == WORD_L(nLedDataLoad.nSDR_RxCnt))	//모두 잘 지워 졌을때.
		{
			nLedDataLoad.nErassFlag.nRepCnt = 0;
			nLedDataLoad.nErassFlag.nErassOk = TRUE;

			gpLED_UPLOAD_DABUT;
			gpLED_UPLOAD_DABUT_SF_ON;

			gpLED_UPLOAD_BUTOFF;

			sprintf(szBuf2,"$ERASS SDR OK");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
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

			sprintf(szBuf2,"$ERASS SDR REP-Cnt[%d]",nLedDataLoad.nErassFlag.nRepCnt);strcat(szBuf,szBuf2);sdebugFlag = TRUE;
		}
		
		nLedDataLoad.nSDR_RxCnt = 0;
		nLedDataLoad.nErassFlag.nTXCnt = 0;
	}
	else
	{
		SCC_TX_PROTOCOL(sSelf_Tx_Buf,pDataBuf[sErAddCnt],0x31,0x07,0,0x10,sErBlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%sErBlkPoint],0,0,10);

		nLedDataLoad.nErassFlag.nTXCnt++;

		if(!(nLedDataLoad.nErassFlag.nTXCnt%sErBlkPoint) && nLedDataLoad.nErassFlag.nTXCnt)//한 장치당 삭제 블럭 갯수 만큼 물어 본다.
		{
			nSelf_Test.nSELF_TX_Cnt++;
		}

		if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt ) //다운로드 기능중 차내 빼고는 "B"채널로 보낸다.
		{
			Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);
		}
		else {
			Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_A_CHANNEL,5);
		}

		sprintf(szBuf2,"$ERASS SDR ADD[%02X]H..Blk[%02X]H",pDataBuf[sErAddCnt],sErBlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%sErBlkPoint]);
		strcat(szBuf,szBuf2);sdebugFlag = TRUE;
	}

	//디버깅
	if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }
}
/******************************************************************
	LED_DataDownLoad 데이타를 전송하는 부분
*******************************************************************/
void LED_DataDownLoad_ST1()
{
	if(!nLedDataLoad.nDataSize)
	{
		nLedDataLoad.nDataSize = Nvsram_IDC_UpLoad_Da();

		nLED_Time_Change = 500;
	}
}
void LED_DataDownLoad_ST2(UCHAR nBlkNum)
{
	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;

	UCHAR sDataBuf[150];
	UCHAR sDataTextBuf[150];
	UCHAR sErBlkPoint = 30720; //삭제 한 블럭 갯수.
	UCHAR sReDataPoint = 0; // 데이타 전송일 경우 100번재 부터 시작 한다.

	szBuf[0] = 0;

	if(nLedDataLoad.nFDD_DATA_Selt)	//데이타 다운로드 기능일 경우 블럭 번호가 바뀐다.
	{
		sErBlkPoint = 0;
		sReDataPoint = 100;
	}

	if(nLedDataLoad.nIDDSelt)
	{
		sErBlkPoint = 32256;
		sReDataPoint = 0;
	}

	memcpy(sDataBuf,&NVSRAM((nBlkNum*128)+sReDataPoint),128);

	SCC_Tx_DownLoad_TEXT(sDataTextBuf,sDataBuf,nLedDataLoad.nSFKindCode,(nBlkNum+sErBlkPoint));

	if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt ) //다운로드 기능중 차내 빼고는 "B"채널로 보낸다.
	{
		Delay_SCC2_SendTo(sDataTextBuf,144,SCC_B_CHANNEL,5);
	}
	else {
		Delay_SCC2_SendTo(sDataTextBuf,144,SCC_A_CHANNEL,5);
	}

	sprintf(szBuf2,"$DATA DownLoad Send ErBlk[%d]--DaPoint[%d]--Cnt[%d]",sErBlkPoint,sReDataPoint,nBlkNum);strcat(szBuf,szBuf2);sdebugFlag = TRUE;

	if(DWORD_MASKING(nBlkNum*128) >= DWORD_MASKING(nLedDataLoad.nDataSize))
	{
		nLedDataLoad.nDataDownFlag = FALSE;
		nLedDataLoad.nDataSDRFlag = TRUE;
		nLedDataLoad.nDataSize = 0;
		//nLedDataLoad.nDataTxCnt = 0;
		sprintf(szBuf2,"$DATA DownLoad Send Finish");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
	}

	//디버깅
	if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }
}

void LED_DataSDR(UCHAR *pDataBuf,UCHAR sUnitCnt)
{
	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;

	UCHAR i;
	UCHAR sSelf_RxData_Buf[25];
	UCHAR sSelf_Tx_Buf[25];
	UCHAR sPoinData;
	UCHAR sDataBlt1,sDataBlt2;
	UCHAR sErBlkPoint = 30720; //삭제 한 블럭 갯수.

	nLED_Time_Change = 200;

	szBuf[0] = 0;

	if(nLedDataLoad.nFDD_DATA_Selt)	//데이타 다운로드 기능일 경우 블럭 번호가 바뀐다.
	{
		sErBlkPoint = 0;
	}

	if(nLedDataLoad.nIDDSelt)
	{
		sErBlkPoint = 32256;
	}

	sDataBlt1 = sErBlkPoint;
	sDataBlt2 = (nLedDataLoad.nDataTxCnt-1) + sErBlkPoint;

	memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);

	if(WORD_L(nLedDataLoad.nDataRepetCnt) > 5)	//5회 이상 이면 NG처리하고 다음으로 넘어 간다.
	{
		nSelf_Test.nSELF_DownLoad_RxBuf[nSelf_Test.nSELF_TX_Cnt] = 1;
		nSelf_Test.nSELF_TX_Cnt++;
		nLedDataLoad.nDataRepetCnt = 0;
	}

	for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(sUnitCnt);i++)
	{
		if(!WORD_L(sSelf_RxData_Buf[i]))
		{
			sPoinData = i;
			break;
		}
		else {nSelf_Test.nSELF_TX_Cnt++;}
	}

	if(nSelf_Test.nSELF_TX_Cnt >= sUnitCnt)
	{
		nLedDataLoad.nDataSDRFlag = FALSE;
		nLedDataLoad.nDataTxCnt = 0;
		nLedDataLoad.nDataRepetCnt = 0;
		nLedDataLoad.nDataRepetNum = 0;

		gpLED_UPLOAD_DABUTOFF;

		//gpLED_UPLOAD_ERBUT_SF_ON;
		//gpLED_UPLOAD_DABUT_SF_ON;
		gpROOTEN;

		SCC_TX_PROTOCOL(sSelf_Tx_Buf,nLedDataLoad.nSFKindCode,0x31,0x0B,0,0x00,0x00,0,0,10);

		if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt ) //다운로드 기능중 차내 빼고는 "B"채널로 보낸다.
		{
			Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);
		}
		else {
			Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_A_CHANNEL,5);
		}

		sprintf(szBuf2,"$DATA DownLoad SDR Finish");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
	}
	else
	{

		SCC_TX_PROTOCOL(sSelf_Tx_Buf,pDataBuf[sPoinData],0x31,0x07,0,0x20,0x00,sDataBlt1,sDataBlt2,10);

		if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt ) //다운로드 기능중 차내 빼고는 "B"채널로 보낸다.
		{
			Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);
		}
		else {
			Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_A_CHANNEL,5);
		}

		sprintf(szBuf2,"$DATA DownLoad SDR...ADD[%02X]H..Blk[%d]..Blk[%d]",pDataBuf[sPoinData],sDataBlt1,sDataBlt2);strcat(szBuf,szBuf2);sdebugFlag = TRUE;
		
	}

	nLedDataLoad.nDataRepetCnt++;

	//디버깅
	if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }

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


