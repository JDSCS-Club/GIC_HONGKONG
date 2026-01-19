#include "def.h"

#ifndef _CDMA_H_
#define _CDMA_H_

typedef struct
{
	UCHAR nEmFlae;
	UCHAR nFlatCode; //고장 발행 코드
	UCHAR nStSetFlag; //문자를 바로 수신 할 수 있도록 한다.
	UCHAR nStDelCnt; //문자가 같은 문자가 3번 수신 되므로 확인 카운터
	UCHAR nStDelFlag; //수신된 문자 지운다. 전원 ON시 한번만 실행
	UCHAR nStStRequest; //잘못된 문자 일경우 제 요청한다.
	UCHAR nStStReCnt; //제 요청 카운터
	UCHAR nSendStFlag; //SMS문자 수신 플레그
	UCHAR nSendFlag;//고장 발생에 따른 전송 진행
	UCHAR nSendFlagRe;//고장 상태를 기억한다.
	UCHAR nStFlag; //전송 Flag
	UCHAR nStepCnt;//스텝 단계
	UCHAR nStepCntRe; //이상 스텝을 기억한다.
	UCHAR nStepCntReCnt; //이상 스텝 카운터 기억한다.
    UCHAR nSteptotlCnt; //이상동작 전체 스텝 카운터
	UCHAR nStLen;  //전송 문자 길이
	UCHAR nTxCnt; //고장 데이터 전송한 횟수.
	UCHAR CDMA_ST_Buf[40];
}CDMA_START,*PCDMA_START;

typedef struct
{
	UCHAR nFlag;
	USHORT nYY;
	UCHAR nMM;
	UCHAR nDD;
	UCHAR nhh;
	UCHAR nmm;
	UCHAR nss;

}CDMA_TIME,*PCDMA_TIME;


void Cdma_Init();
void CDMA_Main();
void CDMA_Revice_Data_Pro();
void CDMA_SEND(UCHAR *pInData,UCHAR *pOutData,UCHAR Len,UCHAR sFlag);
void CDMA_SEND_Data_Make(UCHAR *pInData,UCHAR sFlag);
void CDMA_AnData(UCHAR *pBackUp,UCHAR *pSouData,UCHAR Cnt,UCHAR nBcBrake,UCHAR nTemp);
void CDMA_ST_CHECK(UCHAR *pInData,UCHAR *pOutData);
void CDMA_AnDataSL(UCHAR *pBackUp,UCHAR *pSouData);
void CDMA_TIMER();



#endif
