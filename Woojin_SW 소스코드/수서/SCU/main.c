////////////////////////////////////////////////////////////////////////////////////////////////
//	CPU-601
//	
//	1) 2008.11.28(Ver1.0.0) : 처음 프로그램 제작
//	2) 2008.11.29(Ver1.0.1) : DI입력을 받을때마다 1ms마다 버퍼에 저장하여 5ms마다 필터를 통과하도록 함
//	3) 2008.12.2(Ver1.0.2) : 
//     2012_04_23 기지 모드를 삭제 한다.
//
////////////////////////////////////////////////////////////////////////////////////////////////

#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#include <avr/pgmspace.h>
#include <math.h>
#include "main.h"
#include "def.h"
#include "Display.h"
#include "xr16l784.h"
#include "table.h"
#include "Cdma.h"

#define VERSION 102

#define WHEEL_TRIGGER_CNT 40
#define WHEEL_LASTTRIGGER_TIMER 60000
#define RESET_TIMER 500

#define DI_FILTER_MAX 5

//extern prog_uint32_t pdwRoundKey[32];

extern SCREEN_INF nScreenInf;
extern TEMP_CHANGE nTemp_Val;
extern TEMP_STAND nTemp_StVla;
extern CURRENT_CHANGE nCurrent; //2010_05_20

extern int m_nXr16l784TxPos1;
extern int m_nXr16l784TxPos3;
extern int m_nXr16l784TxPos4;
extern int m_nXr16l784TxPos5;


extern WORD m_Sped_Tc0;
extern WORD m_Sped_Tc9;
extern UCHAR m_NetBuf[5]; //메인통신 버퍼
extern UCHAR m_EmBarke_RE; //EM 상태를 기록 한다.

extern UCHAR m_ucXr16l784_1RxBackUp[XR16L784_BUF_RX+4];
extern UCHAR m_ucXr161784RxBackup[XR16L784_BUF_RX+4];
extern UCHAR m_ucXr16l784Rx5Backup[150];

extern CDMA_START pCdmaPro;

extern UCHAR nCdmaSendFlag;

extern UCHAR Cdma_Time_Flag;

//수신시 데이타와 데이타 시간 체크
UCHAR m_nRxByteGapDly_1Ch = 0;
UCHAR m_nRxByteGapDly_2Ch = 0;
UCHAR m_nRxByteGapDly_3Ch = 0;
UCHAR m_nRxByteGapDly_4Ch = 0;
UCHAR m_nRxByteGapDly_5Ch = 0;
UCHAR m_nRxByteGapDly_6Ch = 0;

//전송 Flag
UCHAR nTx_Data_Flag_1Ch = 0;
UCHAR nTx_Data_Flag_2Ch = 0;
UCHAR nTx_Data_Flag_3Ch = 0;
UCHAR nTx_Data_Flag_4Ch = 0;
UCHAR nTx_Data_Flag_5Ch = 0;
UCHAR nTx_Data_Flag_6Ch = 0;


//수신 flag
UCHAR nRx_Data_Flag_1Ch = 0;
UCHAR nRx_Data_Flag_2Ch = 0;
UCHAR nRx_Data_Flag_3Ch = 0;
UCHAR nRx_Data_Flag_4Ch = 0;
UCHAR nRx_Data_Flag_5Ch = 0;
UCHAR nRx_Data_Flag_6Ch = 0;

//수신 완료 카운터
UCHAR nRx_Cnt_1Ch = 0;
UCHAR nRx_Cnt_2Ch = 0;
UCHAR nRx_Cnt_3Ch = 0;
UCHAR nRx_Cnt_4Ch = 0;
UCHAR nRx_Cnt_5Ch = 0;
UCHAR nRx_Cnt_6Ch = 0;

//전송 완료 카운터
UCHAR nTx_Cnt_1Ch = 0;
UCHAR nTx_Cnt_2Ch = 0;
UCHAR nTx_Cnt_3Ch = 0;
UCHAR nTx_Cnt_4Ch = 0;
UCHAR nTx_Cnt_5Ch = 0;
UCHAR nTx_Cnt_6Ch = 0;

//수신 데이타 카운터
int nRxPos_1Ch = 0;
int nRxPos_2Ch = 0;
int nRxPos_3Ch = 0;
int nRxPos_4Ch = 0;
int nRxPos_5Ch = 0;
int nRxPos_6Ch = 0;

UCHAR nTxTestFlag = 0;
UCHAR nTxTestCh = 0;
UCHAR nTxCnt = 0;
UCHAR nTxBitTest = 0;
UCHAR nTxTimeSetFlag = 0;

UCHAR nTxMpuFlagCnt = 0; //mpu는 최소 기록 시간이 500ms 이기 때문에 2번에 한번 전송해서 부하를 줄인다.

UCHAR nCDMA_Operation_Flag = 0;  
UCHAR nCdma_Pro_Flag = 0; //전원 ON 후 40초후 cdma가 동작 하도록 한다.


UCHAR m_TimeTxBuf_Cnt = 0; //데이타 와 CDMA 시간 정보 교차 횟수
USHORT m_CarNum = 0;
UCHAR m_Cdma_Mpu_Time_SetFlag = 0;
UCHAR m_NoCdma_Mpu_Time_setFlag = 0; //CDMA모튤이 없는 곳에서 9백대 화면 시간 설정이 완료 되면 MPU시간을 설정 한다.

extern CDMA_TIME nCdma_time_Flag;
//**********************************************************************************
//	main() 함수
//**********************************************************************************
int main()
{

	// 
	MCUCR = 0x80;

	XMCRA = 0x0a;

	// Timer1
	TIMSK 	= 0x80;		//	-	-	ICIE1	-	OCIE1C	OCIE1B	OCIE1A	TOIE1
	OCR2	= 230;  	//	14745600 / 64 / 230 =  1000 Hz (1 ms)
	TCNT2 	= 0x00;		//
	TCCR2	= 0x03;		//
	TCCR1A  = 0x00;		//	COM1A1	COM1A0	COM1B1	COM1B0	COM1C1	COM1C0	WGM11	WGM10	:
	TCCR1B 	= 0x03;		//	ICNC1,  ICES1, - , WGM13, WGM12, CS12, CS11, CS10	:  CLK/64

	// PORT 설정
	RUN_LED(0);

	DDRF |= 0x02;

	DDRB |= 0xC0;

	DDRB |= 0x01|0x40; // Watchdog port

	DDRE |= 0xFF;

	DDRG |= 0x03; // Read & write

	DDRD |= 0x80;


	// 외부 인터럽트 설정
	EICRA |= 0x00; // Interrupt0 level edge (XL16L784)
	EIMSK |= 0x01; // Interrupt mask

	xr16l784_Init(XR16L784_1CHL,19200,XR16L784_DATA8,XR16L784_NONEPARITY,XR16L784_1STOPBIT);
	xr16l784_Init(XR16L784_2CHL,9600,XR16L784_DATA8,XR16L784_NONEPARITY,XR16L784_1STOPBIT);
	xr16l784_Init(XR16L784_3CHL,9600,XR16L784_DATA8,XR16L784_NONEPARITY,XR16L784_1STOPBIT);
	xr16l784_Init(XR16L784_4CHL,19200,XR16L784_DATA8,XR16L784_NONEPARITY,XR16L784_1STOPBIT);
	xr16l784_Init(XR16L784_5CHL,19200,XR16L784_DATA8,XR16L784_NONEPARITY,XR16L784_1STOPBIT);
	xr16l784_Init(XR16L784_6CHL,9600,XR16L784_DATA8,XR16L784_NONEPARITY,XR16L784_1STOPBIT);

	XR16L784_TXDIS(XR16L784_1CHL); //MPU 422
	XR16L784_TXDIS(XR16L784_2CHL); //MPU 232
	XR16L784_TXDIS(XR16L784_3CHL); //XPanel 422
	XR16L784_TXDIS(XR16L784_4CHL); //PLC 422
	XR16L784_TXDIS(XR16L784_5CHL); //strchar
	XR16L784_TXDIS(XR16L784_6CHL); //debug


	Display_Init();	//display 초기화

	Cdma_Init();

	Display_Start();

	ENABLE_INT;

	while(1)
	{
		Rx_DATA_Buff_1ch();
		//Rx_DATA_Buff_2ch();
		Rx_DATA_Buff_3ch();
		Rx_DATA_Buff_4ch();
		Rx_DATA_Buff_5ch();

		Display_Main();

		if(m_nRxByteGapDly_5Ch == 1)  //CDMA 데이타 수신 되었을 경우 실행
		{
			m_nRxByteGapDly_5Ch = 0;

			//pCdmaPro.nCdma_Ping_Flag = FALSE;
			nRxPos_5Ch = 0;
			CDMA_Revice_Data_Pro(); //수신 처리 부분
		}

		//현재 화면 정보를 받기 위하여 지속적으로 전송한다.
		if(nTx_Data_Flag_3Ch&& !m_nXr16l784TxPos1 && !m_nXr16l784TxPos3 && !m_nXr16l784TxPos4&& !m_nXr16l784TxPos5) //250ms 마다 실행 한다.
		{
			nTx_Data_Flag_3Ch = 0;

			if(nRx_Cnt_3Ch == 100)
			{
				nRx_Cnt_3Ch++;
				nCurrent.nCurFlag = 5;
			}

			//ModBus_Xpanel_MemoRead(0,12);	

			if(nTemp_Val.nTempFlag){
				nTemp_Val.nTempFlag--;
				ModBus_Xpanel_MemoRead(281,10);	
			}
			else if(nCurrent.nCurFlag){ //2010_05_20
				nCurrent.nCurFlag--;
				ModBus_Xpanel_MemoRead(323,6);	
			}
			else{
				ModBus_Xpanel_MemoRead(0,12);	
			}
		
		}

		//PLC SDR를 250ms 마다 전송한다.
		if(nTx_Data_Flag_4Ch && !m_nXr16l784TxPos1 && !m_nXr16l784TxPos3&& !m_nXr16l784TxPos5 && !m_nXr16l784TxPos4) //250ms 마다 실행 한다.
		{
			nTx_Data_Flag_4Ch = 0;

			m_TimeTxBuf_Cnt++;

			m_TimeTxBuf_Cnt = m_TimeTxBuf_Cnt % 255;

			
			if(!(m_TimeTxBuf_Cnt %10) && (WORD_L(nCdma_time_Flag.nFlag) == TRUE))
			{
				ModBus_Cdma_Time(); //메인 통신에 시간 정보를 설정 한다.
			}
			else
			{
				ModBus_PLC_MemoRead();
			}
			
		}

		if(nCDMA_Operation_Flag) //CDMA 전송 시작. //기능후 50초후 CDMA를 동작 한다. 
		{
			
			//if(nScreenInf.mkiGi_Mode) //기지모드 코드 //2012_04_23 일 항상 본선 모드로 수정.
			//{
			//	pCdmaPro.nSendFlag = 0;
			//	pCdmaPro.nSendStFlag = 0;
			//	pCdmaPro.nStepCntReCnt = 0;
			//	
			//}
			if(nCdma_Pro_Flag) // 100ms 마다 동작 한다.
			{
				nCdma_Pro_Flag = 0;

				if(!m_nXr16l784TxPos1 && !m_nXr16l784TxPos3&& !m_nXr16l784TxPos4)
				{
					if(!WORD_L(nScreenInf.nCarNum)) //2012_04_23 9호차는 CDMA를 처리 하지 않는다.
					{
						CDMA_Main(); //CDMA 처리 함수 
					}
				}
			}

		}

		//PLC로 정상 수신 하면 MPU로 전송한다. 
		if(nRx_Data_Flag_4Ch && !m_nXr16l784TxPos3 && !m_nXr16l784TxPos4 && !m_nXr16l784TxPos5)
		{
			nRx_Data_Flag_4Ch = 0;

			if(WORD_L(nCdma_time_Flag.nFlag) ||WORD_L(m_NoCdma_Mpu_Time_setFlag)) //CMDA 시간이 설정 되었다면,
			{
				if(m_Cdma_Mpu_Time_SetFlag) // CDMA시간과 화면 시간을 비교해서 상태 데이타를 가지고 있는 플레그
				{
					if(nScreenInf.nRecodeFlag ==1 && !nScreenInf.nRecodeCnt)
					{
						nScreenInf.nRecodeCnt = 1;
						MpuTime_RecodSet(3);
					}
					else if(nTxTimeSetFlag){ //통신 시작이 100회 이상이면 시간을 기록 한다.
						nTxTimeSetFlag = 0;
						MpuTime_RecodSet(2);
					}
					else{

						if((nTxMpuFlagCnt&0x01))
						{
							Tx_DATA_Buff_1ch();
						}
			
						nTxMpuFlagCnt++;
					}
				}
				else
				{
					Cdma_Time_Set_Flag();
				}
			}
		}

		
		WDIOUT;
	}

	return 0;
}

//**********************************************************************************
// Cdma_Time_Set_Flag CDMA 시간이 완료 된 후에 기록을 시작 한다.
// CDMA 시간과 화면 시간을 비교 한다.
//**********************************************************************************
void Cdma_Time_Set_Flag()
{
	if(WORD_L(nScreenInf.nDATE[1]) >= WORD_L(nCdma_time_Flag.nMM)) //월
	{
		if(WORD_L(nScreenInf.nDATE[2]) >= WORD_L(nCdma_time_Flag.nDD))//일
		{
			if(WORD_L(nScreenInf.nDATE[3]) >= WORD_L(nCdma_time_Flag.nhh)) //시간
			{
				if(WORD_L(nScreenInf.nDATE[4]) >= WORD_L(nCdma_time_Flag.nmm))//분
				{
					m_Cdma_Mpu_Time_SetFlag = 1;
				}
			}
		}
	}
}
//**********************************************************************************
//	CDMA_Time_Fun 
//  CDMA 모듈이 없는 차량 에서 메인 통신 정보를 이용하여 시간을 설정 하는 부분.
//**********************************************************************************

void CDMA_Time_Fun(UCHAR *pData)
{
	UCHAR sBuf[10];

	memcpy(&sBuf[0],&pData[0],10);

	if(WORD_L(nScreenInf.nCarNum)) // CDMA 가 없는 곳에서만 이 작업을 한다. 2012_04_23 9호차는 CDMA가 없기 때문에 항상 실행.
	{
		if(WORD_L(pData[2]) && WORD_L(pData[3]) && WORD_L(pData[4]) && WORD_L(pData[5]))//월 일 시 분 이 "0" 이 아니면....
		{
			//if((WORD_L(nCdma_time_Flag.nhh) != WORD_L(pData[4]))  || (WORD_L(nCdma_time_Flag.nmm) != WORD_L(pData[5])))
			//{ // 시간 -- 분  이 기준 값이랑 다르면 CDMA 시간을 이용 하여 다시 한번 설정 한다.
				if(WORD_L(sBuf[7]) == WORD_L(0x11))
				{
					nCdma_time_Flag.nYY = MAKE_WORD(sBuf[0],sBuf[1]);
					nCdma_time_Flag.nMM = WORD_L(sBuf[2]);
					nCdma_time_Flag.nDD = WORD_L(sBuf[3]);
					nCdma_time_Flag.nhh = WORD_L(sBuf[4]);
					nCdma_time_Flag.nmm = WORD_L(sBuf[5]);
					nCdma_time_Flag.nss = WORD_L(sBuf[6]);

					m_NoCdma_Mpu_Time_setFlag = TRUE;

					Display_Debug();
				}

			//}
		}
		else if(WORD_L(sBuf[7]) == WORD_L(0x44)) //시간 정보가 0 이고 상태 정보가 0x44면 CDMA 시간 정보가 설정기 않된 것이다. 그냥 기록을 시작 한다. 
		{
			m_NoCdma_Mpu_Time_setFlag = TRUE;
			m_Cdma_Mpu_Time_SetFlag = TRUE;
		}
	}
}
//**********************************************************************************
// Cmda 시간 정보를 메인 통신에 넣어 준다.
//**********************************************************************************
UCHAR m_CDMA_TimeBuf[10];
void ModBus_Cdma_Time()
{

	if(Cdma_Time_Flag >= CDMA_MAX_CNT) //일정 시간 동안 응답이 없으면 상태 정보를 0x44로 전송 한다. 시간 정보는 0으로 한다.
	{
		memset(m_CDMA_TimeBuf,0x00,10);
		m_CDMA_TimeBuf[7] = 0x44;
	}
	else
	{
		m_CDMA_TimeBuf[0] = (WORD_H(nCdma_time_Flag.nYY) == 0) ? m_CDMA_TimeBuf[0] : WORD_H(nCdma_time_Flag.nYY);
		m_CDMA_TimeBuf[1] = (WORD_L(nCdma_time_Flag.nYY) == 0) ? m_CDMA_TimeBuf[1] : WORD_L(nCdma_time_Flag.nYY);

		m_CDMA_TimeBuf[2] = (WORD_L(nCdma_time_Flag.nMM) == 0) ? m_CDMA_TimeBuf[2] : WORD_L(nCdma_time_Flag.nMM);
		m_CDMA_TimeBuf[3] = (WORD_L(nCdma_time_Flag.nDD) == 0) ? m_CDMA_TimeBuf[3] : WORD_L(nCdma_time_Flag.nDD);

		m_CDMA_TimeBuf[4] = (WORD_L(nCdma_time_Flag.nhh) == 0) ? m_CDMA_TimeBuf[4] : WORD_L(nCdma_time_Flag.nhh);
		m_CDMA_TimeBuf[5] = (WORD_L(nCdma_time_Flag.nmm) == 0) ? m_CDMA_TimeBuf[5] : WORD_L(nCdma_time_Flag.nmm);

		m_CDMA_TimeBuf[6] = (WORD_L(nCdma_time_Flag.nss) == 0) ? m_CDMA_TimeBuf[6] : WORD_L(nCdma_time_Flag.nss);
		m_CDMA_TimeBuf[7] = 0x11;
	}

	ModBusMulti_WORD(0x00,4216,4,m_CDMA_TimeBuf,XR16L784_4CHL);
}

//**********************************************************************************
//	시간 설정 기능
//**********************************************************************************
void MpuTime_RecodSet(UCHAR nCode)
{
	UCHAR sTxBuf[20];


	sTxBuf[0] = 0xAA;
	sTxBuf[1] = nCode;

	memcpy(&sTxBuf[2],nScreenInf.nDATE,6);

	CRC16(sTxBuf,8);

	xr16l784_RtsDelayStartSend(XR16L784_1CHL,sTxBuf,10,20);

}

//**********************************************************************************
//	ModBusMulti_Bit
//  
//**********************************************************************************
void ModBusMulti_Bit(UCHAR sStaCode,int sStartAdd,int sCnt,UCHAR *sData,UCHAR sScuCh)
{
	UCHAR sTxBuf[300];
	int sTxCnt = 0;
	UCHAR sDataCnt = 0;
	int i;

	sDataCnt = (sCnt/8);

	sTxBuf[sTxCnt++] = sStaCode; //국번 

	sTxBuf[sTxCnt++] = 0x0F; //functin

	sTxBuf[sTxCnt++] = WORD_H(sStartAdd); //시작 주소
	sTxBuf[sTxCnt++] = WORD_L(sStartAdd);

	sTxBuf[sTxCnt++] = WORD_H(sCnt);	//적용 bit 갯수
	sTxBuf[sTxCnt++] = WORD_L(sCnt);	//적용 bit 갯수

	sTxBuf[sTxCnt++] = sDataCnt;	//DATA 길이 

	for(i=0;i<sDataCnt;i++)
	{
		sTxBuf[sTxCnt++] = sData[i];
	}

	CRC16(sTxBuf,sTxCnt++);

	sTxCnt++;

	xr16l784_RtsDelayStartSend(sScuCh,sTxBuf,sTxCnt,20);
	
}
//**********************************************************************************
//	ModBusMulti_WORD
//  
//**********************************************************************************
void ModBusMulti_WORD(UCHAR sStaCode,int sStartAdd,int sCnt,UCHAR *sData,UCHAR sScuCh)
{
	UCHAR sTxBuf[300];
	UCHAR sTxCnt = 0;
	int sDataCnt = 0;
	int i;

	sDataCnt = sCnt*2;

	sTxBuf[sTxCnt++] = sStaCode; //국번 

	sTxBuf[sTxCnt++] = 0x10; //functin

	sTxBuf[sTxCnt++] = WORD_H(sStartAdd); //시작 주소
	sTxBuf[sTxCnt++] = WORD_L(sStartAdd);

	sTxBuf[sTxCnt++] = WORD_H(sCnt);	//적용  갯수
	sTxBuf[sTxCnt++] = WORD_L(sCnt);	//적용  갯수

	sTxBuf[sTxCnt++] = sDataCnt;	//DATA 길이 

	for(i=0;i<sDataCnt;i++)
	{
		sTxBuf[sTxCnt++] = sData[i];
	}

	CRC16(sTxBuf,sTxCnt++);

	sTxCnt++;

	xr16l784_RtsDelayStartSend(sScuCh,sTxBuf,sTxCnt,10);
	
}

//**********************************************************************************
//	PLC 메모리 데이타를 읽는다.
//  요청 : 142 WORD
//**********************************************************************************
void ModBus_PLC_MemoRead()
{
	UCHAR sTxBuf[10];

	sTxBuf[0] = 0x00; //국번

	sTxBuf[1] = 0x03; //function code

	sTxBuf[2] = 0x0C; //Modbus 시작 주소 4073 번지 
	sTxBuf[3] = 0x00;

	sTxBuf[4] = 0x00; //148 BYTE 요청 
	sTxBuf[5] = 0x99; //2011_03_17 수정 0x90

	//sTxBuf[4] = 0x00; //148 BYTE 요청 
	//sTxBuf[5] = 0x9E; //2012_04_23 수정 310

	CRC16(sTxBuf,6);
	xr16l784_RtsDelayStartSend(XR16L784_4CHL,sTxBuf,8,20);
	
}

//**********************************************************************************
//	 ModBus_Xpanel_MemoRead
//  요청 : 142 WORD
//**********************************************************************************
void ModBus_Xpanel_MemoRead(WORD Addres,WORD RedCnt)
{
	UCHAR sTxBuf[10];

	sTxBuf[0] = 0x00; //국번

	sTxBuf[1] = 0x03; //function code

	sTxBuf[2] = WORD_H(Addres); //시작 주소
	sTxBuf[3] = WORD_L(Addres);

	sTxBuf[4] = WORD_H(RedCnt);//읽어올 데이타 수.
	sTxBuf[5] = WORD_L(RedCnt);

	CRC16(sTxBuf,6);
	xr16l784_RtsDelayStartSend(XR16L784_3CHL,sTxBuf,8,20);
	
}

//**********************************************************************************
//	Tx_DATA_Buff_1ch
//  PLC로 부터 받은 DATA를 MPU 로 전송한다.
//**********************************************************************************
WORD m_TC0_Speed_Data = 0;
WORD m_TC9_Speed_Data = 0;

void Tx_DATA_Buff_1ch()
{
	UCHAR sRxData[300];
	UCHAR sNetBuf[5];

	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)&sRxData[4];
	//NVSRAM_R(XR16L784_8CHL,3,288,&sRxData[4]);
	NVSRAM_R(XR16L784_8CHL,3,296,&sRxData[4]);


	if(nScreenInf.nCarNum){
		 memcpy(sNetBuf,pTisMemo->nNetSta_9,2); sNetBuf[0] = sNetBuf[0]|0x02;}
	else{memcpy(sNetBuf,pTisMemo->nNetSta_0,2); sNetBuf[1] = sNetBuf[1]|0x01;}

	sRxData[0] = 0xAA;
	sRxData[1] = 0x01;
	sRxData[2] = m_ucXr161784RxBackup[21]; //차량 번호 
	sRxData[3] = m_ucXr161784RxBackup[22]; //차량 번호

	m_CarNum = MAKE_WORD(m_ucXr161784RxBackup[21],m_ucXr161784RxBackup[22]);


	memcpy(pTisMemo->nNetSta_0,sNetBuf,2);
	
	memset(&pTisMemo->nTC_0.nHs02B.nData.nTcHS02B[0],0x00,8);
	memset(&pTisMemo->nTC_9.nHs02B.nData.nTcHS02B[0],0x00,8);

	pTisMemo->nTC_0.nHs02B.nData.nWord.nSpeed[0] = WORD_H(m_Sped_Tc0);
	pTisMemo->nTC_0.nHs02B.nData.nWord.nSpeed[1] = WORD_L(m_Sped_Tc0);
	pTisMemo->nTC_9.nHs02B.nData.nWord.nSpeed[0] = WORD_H(m_Sped_Tc9);
	pTisMemo->nTC_9.nHs02B.nData.nWord.nSpeed[1] = WORD_L(m_Sped_Tc9);

	CRC16(sRxData,290);
	xr16l784_RtsDelayStartSend(XR16L784_1CHL,sRxData,292,20);
}
//**********************************************************************************
//	Rx_DATA_Buff_1ch MPU
//**********************************************************************************
void Rx_DATA_Buff_1ch()
{
	int i;
	int nRxLen;
	UCHAR btBuf[16];

	nRxLen = xr16l784_GetRxBuffer1Ch(btBuf,sizeof(btBuf));
	if(nRxLen)
	{
		if(!m_nRxByteGapDly_1Ch) nRxPos_1Ch = 0;
		m_nRxByteGapDly_1Ch = 10;

		if((nRxPos_1Ch + nRxLen) >= 30) nRxPos_1Ch = 0;
		else
		{
			
			for(i=0;i<nRxLen;i++)
			{
				m_ucXr16l784_1RxBackUp[nRxPos_1Ch] = btBuf[i];
				nRxPos_1Ch++;
				switch(nRxPos_1Ch)
				{
				case 1:
					if(m_ucXr16l784_1RxBackUp[0] != 0xAA) { nRxPos_1Ch = 0; }
					break;
				default:
					if(nRxPos_1Ch>=10)
					{
						
						if(m_ucXr16l784_1RxBackUp[1] && !m_ucXr16l784_1RxBackUp[2] )
						{
							if(nRx_Cnt_3Ch > 100) //화면 장치 까지 ON 상태에서 시간을 설정한다.
							{
								nTxTimeSetFlag = 1;
							}
						}

						if(m_ucXr16l784_1RxBackUp[3] == 1) //운행 기록 정보 리턴
						{
							if(m_ucXr16l784_1RxBackUp[4]==1) //
							{
								nScreenInf.nRecodeOKNG = 1; //기록 성공
							}else{
								nScreenInf.nRecodeOKNG = 2; //기록 실패
							}
						}

						nRx_Data_Flag_1Ch = TRUE;
						nRx_Cnt_1Ch++;
						nRxPos_1Ch = 0;
					}
					break;
				}
			}
		}
	}
}

//**********************************************************************************
//	Rx_DATA_Buff_2ch 현재 사용 하지 않음
//**********************************************************************************
void Rx_DATA_Buff_2ch()
{
	int nRxLen;
	UCHAR btBuf[16];

	nRxLen = xr16l784_GetRxBuffer2Ch(btBuf,sizeof(btBuf));
	if(nRxLen)
	{
		if(!m_nRxByteGapDly_2Ch) nRxPos_2Ch = 0;
		m_nRxByteGapDly_2Ch = 10;

		if((nRxPos_2Ch + nRxLen) >= 320) nRxPos_2Ch = 0;
		else
		{
			NVSRAM_W(XR16L784_2CHL,nRxPos_2Ch,nRxLen,btBuf);

			nRxPos_2Ch += nRxLen;
			if(nRxPos_2Ch >= 289)
			{
				//if(btRxBuf[0] == 0x02 && btRxBuf[11] == ETX)
				//{
				//	if(IsBCCOK(&btRxBuf[1],11))
				//	{
						nRx_Data_Flag_2Ch = TRUE;

						nRx_Cnt_2Ch++;
				//	}
				//}
				nRxPos_2Ch = 0;
			}
		}
	}
}

//**********************************************************************************
//	Rx_DATA_Buff_3ch 
// ModBus_Xpanel_MemoRead 화면 상태 번호를 읽어 온다.
//**********************************************************************************
void Rx_DATA_Buff_3ch()
{
	int i;
	USHORT sWheel = 0;
	int nRxLen;
	UCHAR btBuf[16];
	WORD *pTemp;
	WORD *pCur;
	pTemp = (WORD *)&nTemp_StVla.nT_0;
	pCur =  (WORD *)&nCurrent.nCar_1;
	nRxLen = xr16l784_GetRxBuffer3Ch(btBuf,sizeof(btBuf));
	if(nRxLen)
	{
		if(!m_nRxByteGapDly_3Ch) nRxPos_3Ch = 0;
		m_nRxByteGapDly_3Ch = 10;

		if((nRxPos_3Ch + nRxLen) >= 32) nRxPos_3Ch = 0;
		else
		{
			for(i=0;i<nRxLen;i++)
			{
				m_ucXr161784RxBackup[nRxPos_3Ch] = btBuf[i];
				nRxPos_3Ch++;

				switch(nRxPos_3Ch)
				{
				case 1:
					if(m_ucXr161784RxBackup[0] != 0x00) { nRxPos_3Ch = 0; }
					break;
				case 2:
					if(m_ucXr161784RxBackup[1] != 0x03) { nRxPos_3Ch = 0; }
					break;
				default:
					
					if(nTemp_Val.nTempFlag) //온도 설정 값 중이면
					{
						if(nRxPos_3Ch >= 23)
						{
							for(i=0;i<10;i++)
							{
								pTemp[i] = MAKE_WORD(m_ucXr161784RxBackup[(i*2)+3],m_ucXr161784RxBackup[(i*2)+4]);
							}

							nRx_Data_Flag_3Ch = TRUE;
							nRxPos_3Ch = 0;

						}
					}// 2010_05_20
					else if(nCurrent.nCurFlag){

						if(nRxPos_3Ch >= 15){

							for(i=0;i<6;i++){
								pCur[i] = MAKE_WORD(m_ucXr161784RxBackup[(i*2)+3],m_ucXr161784RxBackup[(i*2)+4]);
							}

							nRx_Data_Flag_3Ch = TRUE;
							nRxPos_3Ch = 0;

							nRx_Cnt_3Ch++;
						}
					}
					else if(nRxPos_3Ch >= 27)
					{
						NVSRAM_W(XR16L784_3CHL,0,nRxPos_3Ch,m_ucXr161784RxBackup);
			
						nScreenInf.nDirverScreen = m_ucXr161784RxBackup[4];
						nScreenInf.nDI_Screen = m_ucXr161784RxBackup[6];
						nScreenInf.nDATE[0] = m_ucXr161784RxBackup[8];//년
						nScreenInf.nDATE[1] = m_ucXr161784RxBackup[10];//월
						nScreenInf.nDATE[2] = m_ucXr161784RxBackup[12];//일
						nScreenInf.nDATE[3] = m_ucXr161784RxBackup[14];//시
						nScreenInf.nDATE[4] = m_ucXr161784RxBackup[16];//분
						nScreenInf.nDATE[5] = m_ucXr161784RxBackup[18];//초

						nScreenInf.nDiaNum = MAKE_WORD(m_ucXr161784RxBackup[19],m_ucXr161784RxBackup[20]);
						nScreenInf.nCarNum = (MAKE_WORD(m_ucXr161784RxBackup[21],m_ucXr161784RxBackup[22])/100)%10;

						sWheel = MAKE_WORD(m_ucXr161784RxBackup[23],m_ucXr161784RxBackup[24]);
						nScreenInf.nWheel = (sWheel < 700) ? 700 : ((sWheel > 1000) ? 1000 : sWheel);

						nScreenInf.nMesgNum = MAKE_WORD(m_ucXr161784RxBackup[25],m_ucXr161784RxBackup[26]);

						if(nScreenInf.nMesgNum == 100){ //기지 본선 모드 선택 ----> 기지 모드
							//nScreenInf.mkiGi_Mode = 1; 2012_04_23 기지 모드를 삭제 한다.
						}
						else if(nScreenInf.nMesgNum == 101){ //기진 본선 모드 선택 ---> 본선 모드
							//nScreenInf.mkiGi_Mode = 0;  2012_04_23 기지 모드를 삭제 한다.
						}
						else if(nScreenInf.nMesgNum == 200){//온도 OFF SET 설정 값.
							nTemp_Val.nTempFlag = 5;
						}
						else if(nScreenInf.nMesgNum ==220){ //전류 OFF SET 설정 값. 2010_05_20
							nCurrent.nCurFlag = 5;
						}

						if(nScreenInf.nMesgNum >= 100){nScreenInf.nMesgNum = 0; } //

						if(nScreenInf.nMesgNum && (WORD_L(pCdmaPro.nFlatCode) != WORD_L(nScreenInf.nMesgNum)))
						{
							pCdmaPro.nFlatCode = nScreenInf.nMesgNum;
							
						}

						nRx_Data_Flag_3Ch = TRUE;
						nRx_Cnt_3Ch++;

						nRxPos_3Ch = 0;
					}
					break;
				}
			}
		}
	}
}

//**********************************************************************************
//	Tx_DATA_Buff_4ch 
//  
//**********************************************************************************
void Tx_DATA_Buff_4ch()
{
	
}
//**********************************************************************************
//	Rx_DATA_Buff_4ch 
//  PLC DATA 읽기 (288  + 5 BYTE) 
//**********************************************************************************
//UCHAR d_Rx_4ChBuf[300];
UCHAR nSlaveCdmaBuf[10];
void Rx_DATA_Buff_4ch()
{
	int nRxLen;
	UCHAR btBuf[16];
	UCHAR sRxData[320];
	UCHAR sCrc_H = 0;
	UCHAR sCrc_L = 0;

	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)&sRxData[3];
	//PTIS_MEMORY pTisMemo = (TIS_MEMORY *)&d_Rx_4ChBuf[7]; //디버깅
	//PTIS_MEMORY pTisMemo = (TIS_MEMORY *)&sRxData[7]; //디버깅

	nRxLen = xr16l784_GetRxBuffer4Ch(btBuf,sizeof(btBuf));
	if(nRxLen)
	{
		if(!m_nRxByteGapDly_4Ch) nRxPos_4Ch = 0;
		m_nRxByteGapDly_4Ch = 10;

		if((nRxPos_4Ch + nRxLen) >= 340) nRxPos_4Ch = 0;
		else
		{

			NVSRAM_W(XR16L784_4CHL,nRxPos_4Ch,nRxLen,btBuf);

			nRxPos_4Ch += nRxLen;
			//if(nRxPos_4Ch >= 293)
			//if(nRxPos_4Ch >= 301)
			if(nRxPos_4Ch >= 311)
			{
				NVSRAM_R(XR16L784_4CHL,0x00,nRxPos_4Ch,sRxData);

				if(sRxData[0] == 0x00 && sRxData[1] == 0x03)
				{
					//sCrc_H = sRxData[291];
					//sCrc_L = sRxData[292];
					////sCrc_H = sRxData[299];
					////sCrc_L = sRxData[300];
					sCrc_H = sRxData[309];
					sCrc_L = sRxData[310];

					//CRC16(sRxData,291);
					////CRC16(sRxData,299);
					CRC16(sRxData,309);

					//if((sCrc_H == sRxData[291]) && (sCrc_L == sRxData[292]))
					////if((sCrc_H == sRxData[299]) && (sCrc_L == sRxData[300]))
					if((sCrc_H == sRxData[309]) && (sCrc_L == sRxData[310]))
					{
						
						if((!pTisMemo->nTC_0.nXd16W1.nData.nBit.nEm_Brake)||(!pTisMemo->nTC_9.nXd16W1.nData.nBit.nEm_Brake))
						{
							pCdmaPro.nEmFlae = 0; //비상이면 고장으로 잡지 않는다.
						}
						else
						{
							pCdmaPro.nEmFlae = 1;
						}
						

						pCdmaPro.nEmFlae = 1;

						if(nCDMA_Operation_Flag) //Booting -> Operating After 40Second.
						{
							if(!m_NoCdma_Mpu_Time_setFlag) //9백태 시간 설정이 않 되었다면.
							{
								//memcpy(nSlaveCdmaBuf,&pTisMemo->nCdmaTimeBuf,8); //2011_08_22일 수정
								memcpy(&nSlaveCdmaBuf[0],&pTisMemo->nCdmaTimeBuf[0],8);   //2011_08_22일 수정
								CDMA_Time_Fun(nSlaveCdmaBuf);
							}
						}


						if((pCdmaPro.nSendFlag) &&(pCdmaPro.nSendFlag != pCdmaPro.nSendFlagRe))
						{
							NVSRAM_W(CDMA_SAVE_CHL,0x00,nRxPos_4Ch,sRxData);
						}

						pCdmaPro.nSendFlagRe = pCdmaPro.nSendFlag;

						NVSRAM_W(XR16L784_8CHL,0x00,nRxPos_4Ch,sRxData);

					
						nRx_Data_Flag_4Ch = TRUE;

						nRx_Cnt_4Ch++;
						
					}
				}


				/*
				if(sRxData[0] == 0xAA && sRxData[1] == 0x09)
				{
						
					if((!pTisMemo->nTC_0.nXd16W1.nData.nBit.nEm_Brake)||(!pTisMemo->nTC_9.nXd16W1.nData.nBit.nEm_Brake))
					{
						pCdmaPro.nEmFlae = 0; //비상이면 고장으로 잡지 않는다.
					}
					else
					{
						pCdmaPro.nEmFlae = 1;
					}

					if((pCdmaPro.nSendFlag) &&(pCdmaPro.nSendFlag != pCdmaPro.nSendFlagRe))
					{
						NVSRAM_W(CDMA_SAVE_CHL,0x00,nRxPos_4Ch,&sRxData[4]);
					}
					pCdmaPro.nSendFlagRe = pCdmaPro.nSendFlag;

					nRx_Data_Flag_4Ch = TRUE;

					nRx_Cnt_4Ch++;

					NVSRAM_W(XR16L784_8CHL,0x00,nRxPos_4Ch,&sRxData[4]);
						
				}
				*/
				nRxPos_4Ch = 0;
			}
		}
	}
}

//**********************************************************************************
//	Rx_DATA_Buff_5ch 
//  문자 전송 장치
//**********************************************************************************
void Rx_DATA_Buff_5ch()
{
	int nRxLen;
	int i;
	UCHAR btBuf[100];

	nRxLen = xr16l784_GetRxBuffer5Ch(btBuf,sizeof(btBuf));

	if(nRxLen)
	{
		if(!m_nRxByteGapDly_5Ch){nRxPos_5Ch = 0;}
		m_nRxByteGapDly_5Ch = 10;

		if((nRxPos_5Ch + nRxLen) >= 150) nRxPos_5Ch = 0;
		else
		{

			//NVSRAM_W(XR16L784_5CHL,nRxPos_5Ch,nRxLen,btBuf);

			for(i=0;i<nRxLen;i++)
			{
				m_ucXr16l784Rx5Backup[nRxPos_5Ch] = btBuf[i];

				nRxPos_5Ch++;
				
				switch(nRxPos_5Ch)
				{
				case 1:
					if(WORD_L(m_ucXr16l784Rx5Backup[0]) < 0x20) { nRxPos_5Ch = 0; }
					break;
				default:
					break;
				}

			}
			
		}
	}
}

/**********************************************************
	BCC 체크를 만든다. BCC를 만들어 pDat에 저장한다.
***********************************************************/
void MakeBcc(UCHAR *pDat,int nLen)
{
    int i;
    
    pDat[nLen] = pDat[nLen+1] = 0x00;
    
    for(i=0;i<nLen;i++)	{pDat[nLen + (i&0x01)] ^= pDat[i];}
}


/******************************************************************************
	### BCC Check [TEXT~ETX] ###

	Input	: *pDat->수신 데이터 / nLen->수신 데이터 길이
	Output	: BCCOK->TRUE[1] / BCCNG->FALSE[0]
******************************************************************************/
int IsBCCOK(UCHAR *pDat,int nLen)
{
    UCHAR nBCC[2];
    int i;
    
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
	### CRC16 ###

	Input	: 전송 프로토콜 
	Output	: 길이
******************************************************************************/

int CRC16 ( BYTE *nData, WORD wLength)
{

	BYTE nTemp;
	WORD wCRCWord = 0xFFFF;

   while (wLength--)
   {
      nTemp = *nData++ ^ wCRCWord;
      wCRCWord >>= 8;
      wCRCWord ^= pgm_read_word(&wCRCTable[nTemp]);
   }

	*nData++ = WORD_L(wCRCWord);
	*nData++ = WORD_H(wCRCWord);

   return wCRCWord;

}
//***********************************************************************************
//	Unsigned short형을 string으로 바꾼다.
//	return : OK : TRUE, NG : FALSE
//***********************************************************************************
void Ushort2Str(USHORT nDat,char *pBuf)
{
	int i;
	char chBuf[8];

	chBuf[6] = 0;
	chBuf[5] = nDat%10+'0';
	chBuf[4] = nDat/10%10+'0';
	chBuf[3] = nDat/100%10+'0';
	chBuf[2] = nDat/1000%10+'0';
	chBuf[1] = nDat/10000%10+'0';
	chBuf[0] = nDat/100000%10+'0';

	for(i=0;i<5;i++) if(chBuf[i] != '0') break;
	strcpy(pBuf,&chBuf[i]);
}

//***********************************************************************************
//	 512kbyte / 64 블럭(0 ~ 63블럭)  = 8kbyte(8192)
//	NVSRAM
//***********************************************************************************
//************NVSRAM_R**********************************
//******************************************************
int NVSRAM_R(UCHAR sBlkCnt,int sPont,int sCnt,UCHAR *sData)
{
	int i;
	int sBlkCntPos = 0;
	UCHAR sBlkPos = 0;

	sBlkPos = sBlkCnt%64;
	sBlkCntPos = sPont%8192;

	NVSRAM_ADD = sBlkCnt;

	for(i=0; i< sCnt; i++)
	{
		sData[i] = NVSRAM(sBlkCntPos+i);
	}

	return NVSRAM(sBlkPos);
}
//************NVSRAM_W**********************************
//******************************************************
void NVSRAM_W(UCHAR sBlkCnt,int sPont,int sCnt,UCHAR *Data)
{
	int i;
	int sBlkCntPos = 0;
	UCHAR sBlkPos = 0;

	sBlkPos = sBlkCnt%64;
	sBlkCntPos = sPont%8192;

	NVSRAM_ADD = sBlkPos;

	for(i=0; i< sCnt; i++)
	{
		NVSRAM(sBlkCntPos+i) = Data[i];
	}
}

//**********************************************************************************
// Timer Interrupt
//**********************************************************************************
ISR(SIG_OUTPUT_COMPARE2)
{
	static USHORT nDlyCnt=1;

	TCNT2 = 0x00;

	xr16l784_1msLoop();
	Display_Time();
	CDMA_TIMER();

	if(!((nDlyCnt+150) % 300)) {nTx_Data_Flag_3Ch = 1; }
	if(!(nDlyCnt % 300)) {nTx_Data_Flag_4Ch = 1; }

	if(!nCDMA_Operation_Flag)
	{
		if(nDlyCnt>50000){nCDMA_Operation_Flag = TRUE; }
	}

	if(nDlyCnt%100){ nCdma_Pro_Flag = 1;}

	RUN_LED(nDlyCnt&0x20);

	if(m_nRxByteGapDly_1Ch) m_nRxByteGapDly_1Ch--;
	if(m_nRxByteGapDly_2Ch) m_nRxByteGapDly_2Ch--;
	if(m_nRxByteGapDly_3Ch) m_nRxByteGapDly_3Ch--;
	if(m_nRxByteGapDly_4Ch) m_nRxByteGapDly_4Ch--;
	if(m_nRxByteGapDly_5Ch) m_nRxByteGapDly_5Ch--;
	if(m_nRxByteGapDly_6Ch) m_nRxByteGapDly_6Ch--;

	nDlyCnt++;	
}

//************************************************************************************
//	Interrupt0
//************************************************************************************
ISR(SIG_INTERRUPT0)
{
	xr16l784_Isr();
}

/******************************** SeedRound ********************************/
// Round function F and adding output of F to L.
// L0, L1 : left input values at each round
// R0, R1 : right input values at each round
// K : round keys at each round
//  pgm_read_dword_near
/***************************************************************************/
void SeedRound(DWORD *L0, DWORD *L1,DWORD R0,DWORD R1,DWORD *K) 
{      
		DWORD T0, T1;					// Temporary variable
    T0 = R0 ^ K[0];                              
    T1 = R1 ^ K[1];                              
    T1 ^= T0;                                      
    T1 =pgm_read_dword_near(&SS0[GetB0(T1)]) ^ pgm_read_dword_near(&SS1[GetB1(T1)]) ^         
        pgm_read_dword_near(&SS2[GetB2(T1)]) ^ pgm_read_dword_near(&SS3[GetB3(T1)]);          
    T0 += T1;                                      
    T0 = pgm_read_dword_near(&SS0[GetB0(T0)]) ^ pgm_read_dword_near(&SS1[GetB1(T0)]) ^         
         pgm_read_dword_near(&SS2[GetB2(T0)]) ^ pgm_read_dword_near(&SS3[GetB3(T0)]);          
    T1 += T0;                                      
    T1 = pgm_read_dword_near(&SS0[GetB0(T1)]) ^ pgm_read_dword_near(&SS1[GetB1(T1)]) ^         
         pgm_read_dword_near(&SS2[GetB2(T1)]) ^ pgm_read_dword_near(&SS3[GetB3(T1)]);          
    T0 += T1;                                      
    *L0 ^= T0; *L1 ^= T1;                                  
}
/********************************* Encryption *********************************/
void SeedEncrypt (
		UCHAR *pData, 				// [in,out]	data to be encrypted
		DWORD *pRoundKey)			// [in]			round keys for encryption
{
	DWORD L0, L1, R0, R1;		// Iuput/output values at each rounds
	//DWORD T0, T1;				// Temporary variables for round function F
	DWORD *K = pRoundKey;		// Pointer of round keys

    L0 = ((DWORD *)pData)[0];
    L1 = ((DWORD *)pData)[1];
	R0 = ((DWORD *)pData)[2];
    R1 = ((DWORD *)pData)[3];
    
    L0 = EndianChange(L0);
    L1 = EndianChange(L1);
    R0 = EndianChange(R0);
    R1 = EndianChange(R1);

	SeedRound(&L0, &L1, R0, R1,K+ 0);    // Round 1
    SeedRound(&R0, &R1, L0, L1,K+ 2); 	// Round 2
    SeedRound(&L0, &L1, R0, R1,K+ 4); 	// Round 3
    SeedRound(&R0, &R1, L0, L1,K+ 6); 	// Round 4
    SeedRound(&L0, &L1, R0, R1,K+ 8); 	// Round 5
    SeedRound(&R0, &R1, L0, L1,K+10); 	// Round 6
    SeedRound(&L0, &L1, R0, R1,K+12); 	// Round 7
    SeedRound(&R0, &R1, L0, L1,K+14); 	// Round 8
    SeedRound(&L0, &L1, R0, R1,K+16); 	// Round 9
    SeedRound(&R0, &R1, L0, L1,K+18); 	// Round 10
    SeedRound(&L0, &L1, R0, R1,K+20); 	// Round 11
    SeedRound(&R0, &R1, L0, L1,K+22); 	// Round 12
    SeedRound(&L0, &L1, R0, R1,K+24); 	// Round 13
    SeedRound(&R0, &R1, L0, L1,K+26); 	// Round 14
    SeedRound(&L0, &L1, R0, R1,K+28); 	// Round 15
    SeedRound(&R0, &R1, L0, L1,K+30); 	// Round 16

    L0 = EndianChange(L0);
    L1 = EndianChange(L1);
    R0 = EndianChange(R0);
    R1 = EndianChange(R1);

    ((DWORD *)pData)[0] = R0;
    ((DWORD *)pData)[1] = R1;
    ((DWORD *)pData)[2] = L0;
    ((DWORD *)pData)[3] = L1;
}

/********************************* Decryption *********************************/
void SeedDecrypt (
		UCHAR *pData, 				// [in,out]	data to be decrypted
		DWORD *pRoundKey)			// [in]			round keys for decryption
{
	DWORD L0, L1, R0, R1;		// Iuput/output values at each rounds
	//DWORD T0, T1;				// Temporary variables for round function F
	DWORD *K = pRoundKey;		// Pointer of round keys

    L0 = ((DWORD *)pData)[0];
    L1 = ((DWORD *)pData)[1];
    R0 = ((DWORD *)pData)[2];
    R1 = ((DWORD *)pData)[3];

    L0 = EndianChange(L0);
    L1 = EndianChange(L1);
    R0 = EndianChange(R0);
    R1 = EndianChange(R1);

	SeedRound(&L0, &L1, R0, R1, K+30); 	// Round 1
    SeedRound(&R0, &R1, L0, L1, K+28); 	// Round 2 
    SeedRound(&L0, &L1, R0, R1, K+26); 	// Round 3 
    SeedRound(&R0, &R1, L0, L1, K+24); 	// Round 4 
    SeedRound(&L0, &L1, R0, R1, K+22); 	// Round 5 
    SeedRound(&R0, &R1, L0, L1, K+20); 	// Round 6 
    SeedRound(&L0, &L1, R0, R1, K+18); 	// Round 7 
    SeedRound(&R0, &R1, L0, L1, K+16); 	// Round 8 
    SeedRound(&L0, &L1, R0, R1, K+14); 	// Round 9 
    SeedRound(&R0, &R1, L0, L1, K+12); 	// Round 10
    SeedRound(&L0, &L1, R0, R1, K+10); 	// Round 11
    SeedRound(&R0, &R1, L0, L1, K+ 8); 	// Round 12
    SeedRound(&L0, &L1, R0, R1, K+ 6); 	// Round 13
    SeedRound(&R0, &R1, L0, L1, K+ 4); 	// Round 14
    SeedRound(&L0, &L1, R0, R1, K+ 2); 	// Round 15
    SeedRound(&R0, &R1, L0, L1, K+ 0);    // Round 16

    L0 = EndianChange(L0);
    L1 = EndianChange(L1);
    R0 = EndianChange(R0);
    R1 = EndianChange(R1);

    ((DWORD *)pData)[0] = R0;
    ((DWORD *)pData)[1] = R1;
    ((DWORD *)pData)[2] = L0;
    ((DWORD *)pData)[3] = L1;
}
/************************** Macros for Key schedule ***************************/
void RoundKeyUpdate0(DWORD *K,DWORD A,DWORD B,DWORD C,DWORD D,DWORD KC) 
{	
		DWORD T0, T1;					// Temporary variable
    T0 = A + C - KC;                            
    T1 = B + KC - D;                            
    K[0] = pgm_read_dword_near(&SS0[GetB0(T0)]) ^ pgm_read_dword_near(&SS1[GetB1(T0)]) ^ 
		   pgm_read_dword_near(&SS2[GetB2(T0)]) ^ pgm_read_dword_near(&SS3[GetB3(T0)]);
    K[1] = pgm_read_dword_near(&SS0[GetB0(T1)]) ^ pgm_read_dword_near(&SS1[GetB1(T1)]) ^ 
		   pgm_read_dword_near(&SS2[GetB2(T1)]) ^ pgm_read_dword_near(&SS3[GetB3(T1)]);
    T0 = A;                                     
    A = (A>>8) ^ (B<<24);                       
    B = (B>>8) ^ (T0<<24);                      
}

void RoundKeyUpdate1(DWORD *K,DWORD A,DWORD B,DWORD C,DWORD D,DWORD KC) 
{	
	DWORD T0, T1;					// Temporary variable
    T0 = A + C - KC;                            
    T1 = B + KC - D;                            
    K[0] = pgm_read_dword_near(&SS0[GetB0(T0)]) ^ pgm_read_dword_near(&SS1[GetB1(T0)]) ^ 
		   pgm_read_dword_near(&SS2[GetB2(T0)]) ^ pgm_read_dword_near(&SS3[GetB3(T0)]);
    K[1] = pgm_read_dword_near(&SS0[GetB0(T1)]) ^ pgm_read_dword_near(&SS1[GetB1(T1)]) ^ 
		   pgm_read_dword_near(&SS2[GetB2(T1)]) ^ pgm_read_dword_near(&SS3[GetB3(T1)]);
    T0 = C;                                     
    C = (C<<8) ^ (D>>24);                       
    D = (D<<8) ^ (T0>>24);                      
}

/******************************** Key Schedule ********************************/
void SeedRoundKey(
		DWORD *pRoundKey,			// [out]	round keys for encryption or decryption
		UCHAR *pUserKey)			// [in]		secret user key
{
	DWORD A, B, C, D;				// Iuput/output values at each rounds
	DWORD T0, T1;					// Temporary variable
	DWORD *K = pRoundKey;			// Pointer of round keys

	A = ((DWORD *)pUserKey)[0];
	B = ((DWORD *)pUserKey)[1];
	C = ((DWORD *)pUserKey)[2];
	D = ((DWORD *)pUserKey)[3];
	 
	A = EndianChange(A);
	B = EndianChange(B);
	C = EndianChange(C);
	D = EndianChange(D);

	RoundKeyUpdate0(K+ 0, A, B, C, D, 0x9e3779b9);	// K_1,0 and K_1,1
    RoundKeyUpdate1(K+ 2, A, B, C, D, 0x3c6ef373);	// K_2,0 and K_2,1
    RoundKeyUpdate0(K+ 4, A, B, C, D, 0x78dde6e6);	// K_3,0 and K_3,1
    RoundKeyUpdate1(K+ 6, A, B, C, D, 0xf1bbcdcc);	// K_4,0 and K_4,1
    RoundKeyUpdate0(K+ 8, A, B, C, D, 0xe3779b99);	// K_5,0 and K_5,1
    RoundKeyUpdate1(K+10, A, B, C, D, 0xc6ef3733);	// K_6,0 and K_6,1
    RoundKeyUpdate0(K+12, A, B, C, D, 0x8dde6e67);	// K_7,0 and K_7,1
    RoundKeyUpdate1(K+14, A, B, C, D, 0x1bbcdccf);	// K_8,0 and K_8,1
    RoundKeyUpdate0(K+16, A, B, C, D, 0x3779b99e);	// K_9,0 and K_9,1
    RoundKeyUpdate1(K+18, A, B, C, D, 0x6ef3733c);	// K_10,0 and K_10,1
    RoundKeyUpdate0(K+20, A, B, C, D, 0xdde6e678);	// K_11,0 and K_11,1
    RoundKeyUpdate1(K+22, A, B, C, D, 0xbbcdccf1);	// K_12,0 and K_12,1
    RoundKeyUpdate0(K+24, A, B, C, D, 0x779b99e3);	// K_13,0 and K_13,1
    RoundKeyUpdate1(K+26, A, B, C, D, 0xef3733c6);	// K_14,0 and K_14,1
    RoundKeyUpdate0(K+28, A, B, C, D, 0xde6e678d);	// K_15,0 and K_15,1

    T0 = A + C - 0xbcdccf1b;
    T1 = B + 0xbcdccf1b - D;

    K[30] = pgm_read_dword_near(&SS0[GetB0(T0)]) ^ pgm_read_dword_near(&SS1[GetB1(T0)]) ^ 
		    pgm_read_dword_near(&SS2[GetB2(T0)]) ^ pgm_read_dword_near(&SS3[GetB3(T0)]);
    K[31] = pgm_read_dword_near(&SS0[GetB0(T1)]) ^ pgm_read_dword_near(&SS1[GetB1(T1)]) ^ 
		    pgm_read_dword_near(&SS2[GetB2(T1)]) ^ pgm_read_dword_near(&SS3[GetB3(T1)]);

  
}


void SeedMakeData(UCHAR *pInData,UCHAR nCnt)
{
	int i=0;
	UCHAR pdwRoundKey[130];

	NVSRAM_R(ROUNDKEY,0,130,pdwRoundKey);

	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey); i++;
	SeedEncrypt(&pInData[i*16],(DWORD *)pdwRoundKey);

}
