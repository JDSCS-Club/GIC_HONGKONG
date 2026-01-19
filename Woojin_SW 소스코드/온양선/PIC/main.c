//*****************************************************************************************
//	ONYANG32-A0 소스
//	Program By : 바보나무
//	
//	주의사항 : 건들면 주거~!
//	
//	버젼
//	1) Ver 0.01:2008/03/04 -> 처음시작
//	수정사함: 1. 지금 현 문서가 통신 까지 체크 한 사항(08년 3월 11일)
//	첨부사항: 1.  펄스 입력 까지 수정
//            2. 기본적인 속도 및 거리계산  및 속도계산(3월 17일)
//            3. 기본 셋팅 및 보드 체크 완료 기능 구현 시작(3월 18일)
//			  		4. A1보드 통신 체크(05.5.29)
//            5. GP 화면 HEX -> BCC
//            6. 열번설정, 자기진단, 긴급안내, 스피커 볼륨, 모의시험 화면 추가(080619) A1.6   
//            7. RS422 A, B 채널 main  문에 작성     
//			  8. TCMS 통신프로토콜 작성   
// 2012_03_12 : PA가 통신 응답을 20회 이상 하지 않을 경우 Backup 접점 DO 를 1로 한다.
// 2012_11_09 : 용량 변경. 
// 12_12_14 : 일 정면 표시기 표출 이상 수정. Ver 5.7로 수정.
// 2013_04_23 거리 값을 10m 단위로 변경.
//*****************************************************************************************

#include "def.h"
#include "debug3x.h"
#include "xr16788.h"
#include "PA_Pro.h"
#include "user.h"
#include "Disk.h"
#include "saf82532.h"
#include "GpProface.h"
#include "LED_DOWNLOAD.h"
#include "main.h"

extern SAF82532_SCC Saf82532_Ach;
extern SAF82532_SCC Saf82532_Bch;

extern XR16788_INIT_SHAPE Xr16788_1Ch;
extern XR16788_INIT_SHAPE Xr16788_2Ch;
extern XR16788_INIT_SHAPE Xr16788_3Ch;
extern XR16788_INIT_SHAPE Xr16788_4Ch;

extern LED_DATA_DOWNLOAD nLedDataLoad;

extern TRAN_STATION_INFO nTr_St_Info;
extern SELF_TEST nSelf_Test;	//자기 진단 관련 구조체
extern TMS_SEND_DATA TCMSSD[20];
extern UCHAR m_PA_SelfTest_Buf[30];

//*****************************************************************************************
//	변수 정의
//*****************************************************************************************
int m_nMnCommRtxLedDelayCnt = 0;
UCHAR m_nLedBuf = 0xff;
int m_nDebugCnt = 0;

BOOL m_nTimer1ms = FALSE;
BOOL m_nTimer1ms_GPRx = FALSE;

BOOL c_int01_Flag = FALSE;
UCHAR c_int02_Cnt = 0;

//**************************************************************************************
//	메인 함수
//**************************************************************************************

void main(void)
{
	int i;
	int nLen;
	

	DINT;
	WDI_ACT;
	DspInit();
	Debug3xInit(TMS320C33);

	
	GpProface_Init();
	DP_DataPro_Init();
	
	DP_SanDisk_Check();
	
	LED_Init();
 	
	saf82532_AsyncInit(SAB82532_ACH,SAF82532_19200BPS,SAF82532_ASYNC_DATABIT8,SAF82532_ASYNC_NONEPARITY,SAF82532_ASYNC_1STOPBIT,TRUE);	
	saf82532_AsyncInit(SAB82532_BCH,SAF82532_19200BPS,SAF82532_ASYNC_DATABIT8,SAF82532_ASYNC_NONEPARITY,SAF82532_ASYNC_1STOPBIT,TRUE);	

	EINT;
	
 	xr16l788_Init(XR16L788_1CHL,19200,XR16L788_DATA8,XR16L788_NONEPARITY,XR16L788_1STOPBIT);	
 	xr16l788_Init(XR16L788_2CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR16L788_1STOPBIT);
	xr16l788_Init(XR16L788_3CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR16L788_1STOPBIT);	
	xr16l788_Init(XR16L788_4CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR16L788_1STOPBIT);	
	
	while(1)
	{
		m_nDebugCnt++;

		
		if(m_nTimer1ms_GPRx)
		{
			m_nTimer1ms_GPRx = FALSE;
			if(c_int01_Flag)
			{
				c_int01_Flag = FALSE;
				Saf82532_GetRecv_ACH();
				Saf82532_GetRecv_BCH();
			}
		}

		if(m_nTimer1ms)
		{
			m_nTimer1ms = FALSE;

			if(WORD_L(nLedDataLoad.nSDDSelt) || WORD_L(nLedDataLoad.nFDDSelt))
			{
				Xr1677_RX_Pro_C();
			}
			else
			{
				Xr1677_RX_Pro_A();
				Xr1677_RX_Pro_B();
				Xr1677_RX_Pro_C();
				Xr1677_RX_Pro_D();
			}
		}

		Xr1677_Rx_Pro();
		Xr1677_Tx_Pro();
		
		Gp_Pro_Main();
		DP_DataPro_Main();
		LED_Main();

		Pa_MainPro();
		
		/*
		if(!XR16L788_INT_ST)
		{
			xr16l788_Isr();
		}
		*/

		WDI_ACT;

	}
}

/*******************************************************************************************
      GP_ 통신 RX_처리
********************************************************************************************/
/********************************************************************************************
	     MPU설정
*********************************************************************************************/
void DspInit(void)
{
	PRIMBUSREG = 0x10e8;
	EN_CACHE; 

	// Timer 0
	TMR0_CTRL = 0x0282;	// Internal CLK(H1/2),Pulse mode, Outport
	TMR0_PERD = 25000;  // 100,000,000MHz / 4 / 25000(x) = 1000Hz(1000us)
	TMR0_CTRL |=0x0040; //start timer

	INT0_VECT	= OP_BR | (int)c_int01; // Ext Int 0	
	INT1_VECT	= OP_BR | (int)c_int02; // Ext Int 1	
	TINT0_VECT	= OP_BR | (int)c_int10; // Timer 0	
	
	EI_INT0;
	EI_INT1;
	EI_TINT0;
	
	BOOT2INT;

	DO0 = 0;
	
	*(int *)0x100000 = 0;	// Boot SW => 인터럽트를 본래의 기능으로..BOOT2INT=0;
}


//*****************************************************************************************
//	거리를 계산한다.
//*****************************************************************************************
int nReDist = 0;
int nMoveDist = 0;

int DIST()
{
	int sDistCnt = 0;
	float sNowDist = 0;
		
	nMoveDist = DWORD_L(PI_ST);

	if(DWORD_L(nReDist) > DWORD_L(nMoveDist))	//CPLD 오버 클럭 발생시 문재점 해결.
	{
		sDistCnt = (0xffff - nReDist) + nMoveDist;
	}
	else
	{
		sDistCnt = nMoveDist - nReDist;
	}

	  sNowDist = ((3.141592*860)/90 * sDistCnt);
	//sNowDist = ((3.14*0.8*sDistCnt)/90);

	nReDist = nMoveDist;

	return (int)sNowDist;	//m로 거리 값을 리턴한다.

}
//*****************************************************************************************
//	ASC를 DEC로 바꾼다.
//*****************************************************************************************
int ConvAsc2Dec(char nCh)
{
	int nBuf = 0;	
	if(nCh >= '0' && nCh <= '9') nBuf = nCh-'0';		
	return nBuf;
}

//*****************************************************************************************
//	HEX를 ASC로 바꾼다.
//*****************************************************************************************
char ConvHex2Asc(int btCh)
{
	char chBuf = '0';
	if(btCh >= 0 && btCh <= 9) chBuf = btCh+'0';
	else if(btCh >= 10 && btCh <= 15) chBuf = (btCh-10)+'A';
	return chBuf;
}

//*****************************************************************************************
//	A채널 통신 (PA -> 통합 제어 장치)
//*****************************************************************************************
void Saf82532_GetRecv_ACH()
{	
	int i;
    int nLen;
	UCHAR sRXDataBuf[50];
	UCHAR sRxOKBuf[30];
    
	if(nLen = Saf82532_GetRecv(SAB82532_ACH,(UCHAR *)sRXDataBuf)) //만약 788에 RX데이타가 들어 온다면, 
	{	
		Saf82532_Ach.nRxPos = Saf82532_Ach.nRxPos%25;
		for(i=0;i<nLen;i++) 
		{

			Saf82532_Ach.nGetRxBuf[Saf82532_Ach.nRxPos++] = sRXDataBuf[i];

			switch(Saf82532_Ach.nRxPos)
			{
			case 1:
				if(WORD_L(Saf82532_Ach.nGetRxBuf[0]) != STX) {Saf82532_Ach.nRxPos = 0;}
				break;
			case 2:
				if(WORD_L(Saf82532_Ach.nGetRxBuf[1]) != 0x40) {Saf82532_Ach.nRxPos = 0;}
				break;
			case 3:
				if(WORD_L(Saf82532_Ach.nGetRxBuf[2]) == 0x50 || WORD_L(Saf82532_Ach.nGetRxBuf[2]) == 0x53) {}
				else {Saf82532_Ach.nRxPos = 0;}
				break;
			case 4:
				if(WORD_L(Saf82532_Ach.nGetRxBuf[3]) != 0x20) {Saf82532_Ach.nRxPos = 0;}
				break;

			default :
				if(Saf82532_Ach.nRxPos >= 21)
				{
					Saf82532_Ach.nRxPos = 0;
					memcpy(sRxOKBuf,Saf82532_Ach.nGetRxBuf,21);
					if(IsBCCOK(&sRxOKBuf[1],18))
					{
						memcpy(Saf82532_Ach.nRxBackUp,sRxOKBuf,21);	
						Pa_RxData_Pro(Saf82532_Ach.nRxBackUp);
						Saf82532_Ach.nRxBackUp[21] = (Saf82532_Ach.nRxCnt%255);

						Saf82532_Ach.nRxOkFlag = TRUE;
						Saf82532_Ach.nRxCnt++;
					}
				}
			}
		}			
	}
}

//*****************************************************************************************
//	GP 화면 통신하는 부분
//*****************************************************************************************
void Saf82532_GetRecv_BCH()
{
	int i;
    int nLen;

	UCHAR sRXDataBuf[30];

	if(nLen = Saf82532_GetRecv(SAB82532_BCH,sRXDataBuf)) //만약 788에 RX데이타가 들어 온다면, 
	{			
		Saf82532_Bch.nRxPos = Saf82532_Bch.nRxPos%25;
		for(i=0;i<nLen;i++) 
		{

			Saf82532_Bch.nGetRxBuf[Saf82532_Bch.nRxPos++] = sRXDataBuf[i];

			switch(Saf82532_Bch.nRxPos)
			{
			case 1:
				if(WORD_L(Saf82532_Bch.nGetRxBuf[0]) !=  ESC) {Saf82532_Bch.nRxPos = 0;}
				break;
			case 2:
				if(WORD_L(Saf82532_Bch.nGetRxBuf[1]) == 0x41 || WORD_L(Saf82532_Bch.nGetRxBuf[1]) == 0x49 ) {}
				else {Saf82532_Bch.nRxPos = 0;}
				break;
			default :
				if(Saf82532_Bch.nRxPos >= 4)
				{
					Saf82532_Bch.nRxPos = 0;
					memcpy(Saf82532_Bch.nRxBackUp,Saf82532_Bch.nGetRxBuf,10);
					gp_Receive(Saf82532_Bch.nRxBackUp);
					
				}
				break;
			}
		}			
	}
}

//*****************************************************************************************
//	Xr1677_Rx_Pro
//*****************************************************************************************
void Xr1677_Rx_Pro()
{
	if(Xr16788_1Ch.nRxOK)
	{
		Xr16788_1Ch.nRxOK = FALSE;
		DP_Xr1677_RX_DATA_Pro_A(Xr16788_1Ch.nRxBuf_BackUp);
	}

	if(Xr16788_2Ch.nRxOK)
	{
		Xr16788_2Ch.nRxOK = FALSE;
		DP_Xr1677_RX_DATA_Pro_B(Xr16788_2Ch.nRxBuf_BackUp,Xr16788_2Ch.nRxLen);
	}

	if(Xr16788_3Ch.nRxOK)
	{
		Xr16788_3Ch.nRxOK = FALSE;
		DP_Xr1677_RX_DATA_Pro_C(Xr16788_3Ch.nRxBuf_BackUp,Xr16788_3Ch.nRxLen);

	}

	if(Xr16788_4Ch.nRxOK)
	{
		Xr16788_4Ch.nRxOK = FALSE;
		DP_Xr1677_RX_DATA_Pro_D(Xr16788_4Ch.nRxBuf_BackUp,Xr16788_4Ch.nRxLen);
	}

}

//*****************************************************************************************
//	Xr1677_Tx_Pro
//*****************************************************************************************
void Xr1677_Tx_Pro()
{
	UCHAR sData[25];
	if(Xr16788_1Ch.nTxTimeOut == 0x05)
	{
		Xr16788_1Ch.nTxTimeOut = 4;
		XR16L788_TXEN(XR16L788_1CHL);
	}

	if(Xr16788_1Ch.nTxTimeOut == 0x01)
	{
		Xr16788_1Ch.nTxTimeOut = 0;

		Xr_Tx_TCMS_TEXT(sData,Xr16788_1Ch.nRxBuf_BackUp);
		xr16l788_Send(XR16L788_1CHL,sData,Xr16788_1Ch.nTxLen);
	}
}

//*****************************************************************************************
//	xr16l788 1채널 RX  : FROM TCMS
//*****************************************************************************************
UCHAR d_TCMS_RX_CNT = 0;
void Xr1677_RX_Pro_A()
{
	int nTranNum=0;
	int i;
	int nLen;
	UCHAR sRxBuf[25];
   
	if(nLen = xr16l788_GetRxBuffer(XR16L788_1CHL,sRxBuf,XR16L788_BUF_MIN))
	{
		

		d_TCMS_RX_CNT++;
		for(i=0;i<nLen;i++) 
		{	
			if(!Xr16788_1Ch.nRxTimeOut) {Xr16788_1Ch.nRxPos = 0; }

			Xr16788_1Ch.nRxTimeOut = 10;

			Xr16788_1Ch.nGetRxBuf[Xr16788_1Ch.nRxPos++] = sRxBuf[i];

			switch(Xr16788_1Ch.nRxPos)
			{
			case 0x01 : 
				if(WORD_L(Xr16788_1Ch.nGetRxBuf[0]) != STX) {Xr16788_1Ch.nRxPos = 0;}
				break;
			case 0x02 :
				if(WORD_L(Xr16788_1Ch.nGetRxBuf[1]) == 0x20 || WORD_L(Xr16788_1Ch.nGetRxBuf[1]) == 0x21) { }
				else {Xr16788_1Ch.nRxPos = 0;}
				break;
			default :
				if(WORD_L(Xr16788_1Ch.nRxPos) >= WORD_L(Xr16788_1Ch.nRxLen))
				{
					Xr16788_1Ch.nRxPos = 0;
					if(IsBCCOK(&Xr16788_1Ch.nGetRxBuf[1],21))
					{
						Xr16788_1Ch.nRxOK = TRUE;
						
						Xr16788_1Ch.nTxTimeOut = 30;

						nTr_St_Info.nTcmsRxNGCnt = 0;
						Xr16788_1Ch.nRxOK_Cnt++;

						
						memcpy(Xr16788_1Ch.nRxBuf_BackUp,Xr16788_1Ch.nGetRxBuf,Xr16788_1Ch.nRxLen);
					}
				}
				break;
			}
		}
	}
}
//*****************************************************************************************
//	xr16l788 2채널 RX  : FROM --
//*****************************************************************************************
void Xr1677_RX_Pro_B()
{
	int nTranNum=0;
	int i;
	int nLen;
	UCHAR sRxBuf[25];
   
	if(nLen = xr16l788_GetRxBuffer(XR16L788_2CHL,sRxBuf,XR16L788_BUF_MIN))
	{
		for(i=0;i<nLen;i++) 
		{
			if(!Xr16788_2Ch.nRxTimeOut) {Xr16788_2Ch.nRxPos = 0; }

			Xr16788_2Ch.nRxTimeOut = 10;

			Xr16788_2Ch.nRxBuf_BackUp[Xr16788_2Ch.nRxPos++] = sRxBuf[i];

			switch(Xr16788_2Ch.nRxPos)
			{
			case 1 : 
				if(WORD_L(Xr16788_2Ch.nRxBuf_BackUp[0]) != 0xAA) {Xr16788_2Ch.nRxPos = 0;}
				break;
			case 2 :
				if(WORD_L(Xr16788_2Ch.nRxBuf_BackUp[1]) != 0xBB) {Xr16788_2Ch.nRxPos = 0;}
				break;
			case 3 :
				if(WORD_L(Xr16788_2Ch.nRxBuf_BackUp[2]) != 0xCC) {Xr16788_2Ch.nRxPos = 0;}
				break;

			default :
				if(Xr16788_2Ch.nRxPos>= Xr16788_2Ch.nRxLen)
				{
					Xr16788_2Ch.nRxPos = 0;
					Xr16788_2Ch.nRxOK = TRUE;
					//memcpy(Xr16788_2Ch.nRxBuf_BackUp,Xr16788_2Ch.nGetRxBuf,Xr16788_2Ch.nRxLen);
					
				}
				break;
			}
			
		}
	}
}
//*****************************************************************************************
//	xr16l788 3채널 RX  : FROM LED-LCD 
//*****************************************************************************************
void Xr1677_RX_Pro_C()
{
	int nTranNum=0;
	int i;
	int nLen;
	UCHAR sRxBuf[25];
	WORD nTemp1,nTemp2;

	if(nLen = xr16l788_GetRxBuffer(XR16L788_3CHL,sRxBuf,XR16L788_BUF_MIN))
	{
		for(i=0;i<nLen;i++) 
		{	
			if(!Xr16788_3Ch.nRxTimeOut) {Xr16788_3Ch.nRxPos = 0; }

			Xr16788_3Ch.nRxTimeOut = 10;

			Xr16788_3Ch.nRxBuf_BackUp[Xr16788_3Ch.nRxPos++] = sRxBuf[i];

			switch(Xr16788_3Ch.nRxPos)
			{
			case 1 : 
				if(WORD_L(Xr16788_3Ch.nRxBuf_BackUp[0]) == 0xAA || WORD_L(Xr16788_3Ch.nRxBuf_BackUp[0]) == 0xAB) {}
				else {Xr16788_3Ch.nRxPos = 0;}
				break;
			case 2 :
				if(WORD_L(Xr16788_3Ch.nRxBuf_BackUp[1]) == 0xBB || WORD_L(Xr16788_3Ch.nRxBuf_BackUp[1]) == 0xBC) {}
				else {Xr16788_3Ch.nRxPos = 0;}
				break;
			case 3 :
				if(WORD_L(Xr16788_3Ch.nRxBuf_BackUp[2]) != 0xCC) {Xr16788_3Ch.nRxPos = 0;}
				break;
			case 0x07 :
				nTemp1 = MAKE_WORD(Xr16788_3Ch.nRxBuf_BackUp[3],Xr16788_3Ch.nRxBuf_BackUp[4]);
				nTemp2 = MAKE_WORD(Xr16788_3Ch.nRxBuf_BackUp[5],Xr16788_3Ch.nRxBuf_BackUp[6]);
				if(nTemp1&nTemp2 ) {Xr16788_3Ch.nRxPos = 0;}
				else {Xr16788_3Ch.nRxLen = nTemp1 + 10;}
				break;
			default :
				if(Xr16788_3Ch.nRxPos>= Xr16788_3Ch.nRxLen)
				{
					
					Xr16788_3Ch.nRxOK = TRUE;
					//memcpy(Xr16788_3Ch.nRxBuf_BackUp,Xr16788_3Ch.nGetRxBuf,Xr16788_3Ch.nRxLen);
				}
			}
		}
	}
}
//*****************************************************************************************
//	xr16l788 4채널 RX  : FROM 중연
//*****************************************************************************************
UCHAR d_4ch_RX_Cnt = 0;
void Xr1677_RX_Pro_D()
{
	int nTranNum=0;
	int i;
	int nLen;
	UCHAR sRxBuf[25];
	WORD nTemp1,nTemp2;

	if(nLen = xr16l788_GetRxBuffer(XR16L788_4CHL,sRxBuf,XR16L788_BUF_MIN))
	{
		for(i=0;i<nLen;i++) 
		{		
			if(!Xr16788_4Ch.nRxTimeOut) {Xr16788_4Ch.nRxPos = 0; }

			Xr16788_4Ch.nRxTimeOut = 10;

			Xr16788_4Ch.nRxBuf_BackUp[Xr16788_4Ch.nRxPos++] = WORD_L(sRxBuf[i]);

			switch(Xr16788_4Ch.nRxPos)
			{
			case 1 : 
				if(WORD_L(Xr16788_4Ch.nRxBuf_BackUp[0]) == 0xAA || WORD_L(Xr16788_4Ch.nRxBuf_BackUp[0]) == 0xAB) {}
				else {Xr16788_4Ch.nRxPos = 0;} 
				break;
			case 2 :
				if(WORD_L(Xr16788_4Ch.nRxBuf_BackUp[1]) == 0xBB || WORD_L(Xr16788_4Ch.nRxBuf_BackUp[1]) == 0xBC) {}
				else {Xr16788_4Ch.nRxPos = 0;}
				break;
			case 3 :
				if(WORD_L(Xr16788_4Ch.nRxBuf_BackUp[2]) != 0xCC) {Xr16788_4Ch.nRxPos = 0;}
				break;
			case 0x07 :
				nTemp1 = MAKE_WORD(Xr16788_4Ch.nRxBuf_BackUp[3],Xr16788_4Ch.nRxBuf_BackUp[4]);
				nTemp2 = MAKE_WORD(Xr16788_4Ch.nRxBuf_BackUp[5],Xr16788_4Ch.nRxBuf_BackUp[6]);
				if(nTemp1&nTemp2 ) {Xr16788_4Ch.nRxPos = 0;}
				else {Xr16788_4Ch.nRxLen = nTemp1 + 10;}
				break;

			default :
				if(Xr16788_4Ch.nRxPos>= Xr16788_4Ch.nRxLen)
				{
					Xr16788_4Ch.nRxOK = TRUE;

					d_4ch_RX_Cnt++;
					//memcpy(Xr16788_4Ch.nRxBuf_BackUp,Xr16788_4Ch.nGetRxBuf,Xr16788_4Ch.nRxLen);
				}
			}
		}
	}
}

//***************************************************************
//	user_DebugPrint
//****************************************************************

void user_DebugPrint(char *pTxBuf)
{
	xr16l788_Send(XR16L788_2CHL,(UCHAR *)pTxBuf,strlen(pTxBuf));
}
//*****************************************************************************************
//	지연
//*****************************************************************************************
int Delay(int nCnt)
{
	while(nCnt--) WDI_ACT;	
}

//*****************************************************************************************
//	Interrupt 0
//*****************************************************************************************

void c_int01()
{
	saf82532_Isr();
	c_int01_Flag = TRUE;
}

//*****************************************************************************************
//	Interrupt 1
//*****************************************************************************************

void c_int02()
{
	xr16l788_Isr();
	c_int02_Cnt++;
}

//*****************************************************************************************
//	Timer0(1ms)
//*****************************************************************************************

void c_int10(void)
{

	static UINT nDlyCnt = 1;

	if(Xr16788_1Ch.nTxTimeOut) {Xr16788_1Ch.nTxTimeOut--;}

	Xr1677_Tx_Pro();

	m_nTimer1ms = TRUE;	
	m_nTimer1ms_GPRx = TRUE;

	GP_1msTime();
	DP_Timer_1ms_DataPro();
	LED_Timer_1ms();

	xr16l788_1msLoop();  
	saf82532_1msLoop();	 
	Pa_Time1ms();
	nDlyCnt++;

}
