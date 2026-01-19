#ifndef _LED_DOWNLOAD_h_
#define _LED_DOWNLOAD_h_

typedef struct
{
	UCHAR nST_1;
	UCHAR nST_2;
	UCHAR nTXCnt;
	UCHAR nRepCnt;	//반복 횟수를 채크 한다.
	UCHAR nErassOk;
}DOWN_STEP;

typedef struct
{
	UCHAR nRNDSelt;			//측면 다운로드 선택.
	UCHAR nFDDSelt;			//정면 다운로드 선택.
	UCHAR nIDDSelt;			//차내 다운로드 선택.
	UCHAR nTNDSelt;			//열번 다운로드 선택.
	UCHAR nFDD_DATA_Selt;	//정면 데이타 다운로드 선택.
	UCHAR nSFKindCode;
	UCHAR nWaitSDR;			//준비 프로토콜 전송.	 
	UCHAR nSelfTestFlag;	//상태 체크 한다.
	UCHAR nSDR_RxCnt;
	DOWN_STEP nErassFlag;		//메모리 지우는 Flag
	UCHAR nDataDownFlag;	//데이타 다운로드 Flag
	UCHAR nDataRepetFlag;	//재 전송이 있는지 확인
	UCHAR nDataRepetNum;	//다시 보낼 블럭
	UCHAR nDataRepetCnt;	//반복 횟수를 카운터.
	UCHAR nDataSDRFlag;
	UCHAR nDataSize;		//전송 사이즈.
	UCHAR nDataTxCnt;		//전송 카운터.
	UCHAR nSWScreenSelt;	//SW 다운로드 화면
	UCHAR nDATAScreenSelt;	//데이타 다운로드 화면
}LED_DATA_DOWNLOAD;


void LED_Init();
void LED_Main();
void LED_Timer_1ms();
void LED_WaitSDR();
void LED_ERASS();
void LED_ERASS_SDR(UCHAR *pDataBuf,UCHAR sUnitCnt);
void LED_DataDownLoad_ST1();
void LED_DataDownLoad_ST2(UCHAR nBlkNum);
void LED_DataSDR(UCHAR *pDataBuf,UCHAR sUnitCnt);


#endif
