#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <math.h>
#include "def.h"
#include "xr16l784.h"
#include "display.h"
#include "main.h"


FAULTLIST nPault;

extern CDMA_START pCdmaPro; //문자 전송

extern UCHAR nRx_Data_Flag_3Ch;

extern int m_nXr16l784TxPos1;
extern int m_nXr16l784TxPos3;
extern int m_nXr16l784TxPos5;

extern int nRxPos_4Ch;

extern CDMA_TIME nCdma_time_Flag;
extern UCHAR m_NoCdma_Mpu_Time_setFlag;

extern UCHAR Cdma_Time_Flag;

SCREEN_INF nScreenInf;
XPANEL_DI_ADD nXpaDI_Add;
TEMP_CHANGE nTemp_Val;
TEMP_STAND nTemp_StVla;
CURRENT_CHANGE nCurrent; //2010_05_20

USHORT Dis_Time_Cnt = 0; 
UCHAR m_Speed1SecFlag = 0;
UCHAR m_Brake_Step = 0;
WORD m_SpeedValue = 0;

WORD m_Sped_Remember = 0;
WORD m_Sped_Tc0 = 0;
WORD m_Sped_Tc9 = 0;
WORD m_Sped_Tc0_Re = 0;
WORD m_Sped_Tc9_Re = 0;

UCHAR m_RecodePerCent = 0;

UCHAR m_EmBarke_RE = 0; //EM 상태를 기록 한다.

UCHAR m_Temp_Conver = 19; //온도 환산 값


void Display_Init()
{
	
	nXpaDI_Add.nTC_0.nBit = 238;
	nXpaDI_Add.nTC_0.nWord = 74; 

	nXpaDI_Add.nM1_1.nBit = 323;
	nXpaDI_Add.nM1_1.nWord = 91;

	nXpaDI_Add.nM2_2.nBit = 398;
	nXpaDI_Add.nM2_2.nWord = 108;

	nXpaDI_Add.nM1_3.nBit = 472;
	nXpaDI_Add.nM1_3.nWord = 125;

	nXpaDI_Add.nM2_4.nBit = 546;
	nXpaDI_Add.nM2_4.nWord = 142;

	nXpaDI_Add.nT_5.nBit = 620;
	nXpaDI_Add.nT_5.nWord = 159;

	nXpaDI_Add.nT_6.nBit = 662;
	nXpaDI_Add.nT_6.nWord = 168;

	nXpaDI_Add.nM1_7.nBit = 704;
	nXpaDI_Add.nM1_7.nWord = 177;

	nXpaDI_Add.nM2_8.nBit = 778;
	nXpaDI_Add.nM2_8.nWord = 194;

	nXpaDI_Add.nTC_9.nBit = 852;
	nXpaDI_Add.nTC_9.nWord = 207;

	//memset(&nPault.n14Fa.nFaultRE,0x00,27);
	memset(&nPault,0x00,sizeof(nPault));

	memset(&nScreenInf,0x00,sizeof(nScreenInf));

	nScreenInf.mkiGi_Mode = 0;
	nScreenInf.nDirverScreen = 1;

	memset(&nTemp_Val,0x00,sizeof(nTemp_Val));
	memset(&nCurrent,0x00,sizeof(nCurrent));

	memset(&nTemp_StVla,0x00,sizeof(nTemp_StVla));
	

	nScreenInf.nWheel = 860;

}

void Display_Start()
{
	int i;
	WORD *sTempVal;
	UCHAR sDataBuf[50];

	NVSRAM_R(TEMP_VAL_DATA,0,40,sDataBuf);

	sTempVal = (WORD *)&nTemp_Val.nT_0;
	for(i=0;i<20;i++)
	{
		sTempVal[i] = MAKE_WORD(sDataBuf[(i*2)],sDataBuf[(i*2)+1]);
	}

}
//**********************************************************************************
// Display_Main
//**********************************************************************************
void Display_Main()
{

	if(nRx_Data_Flag_3Ch && !m_nXr16l784TxPos1 && !m_nXr16l784TxPos3 && !m_nXr16l784TxPos5)
	{
		nRx_Data_Flag_3Ch = 0;
		Dispaly_TX_Data();
	}

	if(m_Speed1SecFlag)
	{
		m_Speed1SecFlag = 0;
		Display_Speed();
	}
}

//**********************************************************************************
// Dispaly_TX_Data
//**********************************************************************************

void Dispaly_TX_Data()
{
	static UCHAR sDebug_Cnt = 1;

	switch(nScreenInf.nDirverScreen)
	{
	case 1://운전1
		Display_Driver1_Data();

		break;
	case 2://운전2
		Display_Driver1_Data();
		break;
	case 3://운전3
		Display_Driver1_Data();
		break;
	case 4://검수
		if(nTemp_Val.nTempFlag){ //온도 OFF SET 설정 화면 적용 동안은 표출 화면 5번 동안
			Display_Driver1_Data();
		}
		else if(nCurrent.nCurFlag){ //2010_05_20
			Display_Common();
			//Display_Driver1_Data();
		}
		else{
			Display_DI_DATA_Pro();
		}
		break;
	case 5://고장목록
		Display_Common();
		break;
	case 6://고장처치
		Display_Common();
		break;
	case 7:
	case 20:
	case 22:
		Display_Common();
		if(nScreenInf.nDI_Screen == 20 && !nScreenInf.nRecodeFlag && !nScreenInf.nRecodeCnt) //기록 화면에서는 한번만 실행된다.
		{
			nScreenInf.nRecodeFlag = 1;
			nScreenInf.nRecodeOKNG = 0;
			m_RecodePerCent = 0;
		}
		break;
	case 23:
		if(sDebug_Cnt%2){Display_Common();}
		else{Display_Debug();}

		sDebug_Cnt++;

		break;
	}

	if(nScreenInf.nDirverScreen != 7){
		nScreenInf.nRecodeFlag = 0;
		nScreenInf.nRecodeCnt = 0;
	}

}

//**********************************************************************************
// DATA debug Display
//**********************************************************************************
void Display_Debug()
{
	int sTxCnt = 0;
	UCHAR sDataBuf[310];
	UCHAR sTxProBuf[50];
	//UCHAR sTxBuf[40];

	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)sDataBuf;

	NVSRAM_R(XR16L784_8CHL,3,306,sDataBuf);

	sTxProBuf[sTxCnt++] = WORD_H(m_NoCdma_Mpu_Time_setFlag); //상태 플레그
	sTxProBuf[sTxCnt++] = WORD_L(m_NoCdma_Mpu_Time_setFlag); //상태 플레그

	sTxProBuf[sTxCnt++] = WORD_H(nCdma_time_Flag.nYY); //년
	sTxProBuf[sTxCnt++] = WORD_L(nCdma_time_Flag.nYY); //년

	sTxProBuf[sTxCnt++] = WORD_H(nCdma_time_Flag.nMM); //월
	sTxProBuf[sTxCnt++] = WORD_L(nCdma_time_Flag.nMM); //월

	sTxProBuf[sTxCnt++] = WORD_H(nCdma_time_Flag.nDD); //일
	sTxProBuf[sTxCnt++] = WORD_L(nCdma_time_Flag.nDD); //일

	sTxProBuf[sTxCnt++] = WORD_H(nCdma_time_Flag.nhh); //시
	sTxProBuf[sTxCnt++] = WORD_L(nCdma_time_Flag.nhh); //시

	sTxProBuf[sTxCnt++] = WORD_H(nCdma_time_Flag.nmm); //분
	sTxProBuf[sTxCnt++] = WORD_L(nCdma_time_Flag.nmm); //분

	sTxProBuf[sTxCnt++] = WORD_H(nCdma_time_Flag.nss); //초
	sTxProBuf[sTxCnt++] = WORD_L(nCdma_time_Flag.nss); //초


	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[0]); //1CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[0]); //1CAR

	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[1]); //2CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[1]); //2CAR

	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[2]); //3CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[2]); //3CAR

	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[3]); //4CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[3]); //4CAR

	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[4]); //5CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[4]); //5CAR

	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[5]); //6CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[5]); //6CAR

	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[6]); //7CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[6]); //7CAR

	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[7]); //8CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[7]); //8CAR

	sTxProBuf[sTxCnt++] = WORD_H(pTisMemo->nNetCnt[8]); //9CAR
	sTxProBuf[sTxCnt++] = WORD_L(pTisMemo->nNetCnt[8]); //9CAR

	sTxProBuf[sTxCnt++] = WORD_H(pCdmaPro.nStepCnt);
	sTxProBuf[sTxCnt++] = WORD_L(pCdmaPro.nStepCnt);

	sTxProBuf[sTxCnt++] = WORD_H(nCdma_time_Flag.nFlag);
	sTxProBuf[sTxCnt++] = WORD_L(nCdma_time_Flag.nFlag);

	sTxProBuf[sTxCnt++] = WORD_H(pCdmaPro.nTxCnt);
	sTxProBuf[sTxCnt++] = WORD_L(pCdmaPro.nTxCnt);

	sTxProBuf[sTxCnt++] = WORD_H(Cdma_Time_Flag);
	sTxProBuf[sTxCnt++] = WORD_L(Cdma_Time_Flag);


	/*for(i = 0; i < sTxCnt;i++)
	{
		sTxBuf[(i*2)] = WORD_H(sTxProBuf[i]);
		sTxBuf[(i*2)+1] =WORD_L(sTxProBuf[i]);
	}*/

	ModBusMulti_WORD(0x00,335,sTxCnt/2,(UCHAR *)sTxProBuf,XR16L784_3CHL);

}

//**********************************************************************************
// Display_Driver1_Data
//**********************************************************************************
UCHAR nDisplay_Change_Cnt = 0;
UCHAR nBvHandSTChaek = 0; //bv핸드를 감시 하고 있다가 전후로 고장을 현지 하지 않는다.
USHORT nBvHandSTChaekTime = 5000;

void Display_Driver1_Data()
{
	int i;
	UCHAR sTempBuf[40];
	UCHAR sDataBufCnt = 0;
	USHORT sTempData = 0;
	USHORT sTempData2 = 0;
	USHORT sTempDataBuf[20];
	UCHAR sDataBuf[300];
	WORD *sTempStVal;
	WORD *sTempVal;

	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)sDataBuf;
	PTCCAR_MEMORY sTcDiList;
	BIT_DATAPRo sDataBit[150];

	NVSRAM_R(XR16L784_8CHL,3,286,sDataBuf);

	memset(&sDataBit[0].nData.nBYTE,0x00,150);

	nDisplay_Change_Cnt++;

	nDisplay_Change_Cnt = nDisplay_Change_Cnt%3;

	if(pTisMemo->nTC_0.nXd16W1.nData.nBit.nBV_HANDLE)
	{
		sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;
	}
	else if(pTisMemo->nTC_9.nXd16W1.nData.nBit.nBV_HANDLE)
	{
		sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;
	}
	else
	{
		if(nScreenInf.nCarNum){
			 sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
		else{sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	}


	if(nDisplay_Change_Cnt == 1)
	{
		if(sTcDiList->nXd16W3.nData.nBit.nRV_F || sTcDiList->nXd16W3.nData.nBit.nRV_R || sTcDiList->nXd16W3.nData.nBit.nZVR)
		{
			if((nScreenInf.nB0_7_Time_Cnt > 3) && sTcDiList->nXd16W1.nData.nBit.nEm_Brake ) //비상이 아닐때 와 EM 해제 후 3초 까지 지연한다.
			{
				Display_Fault();
			}
		}
	}
	else if(nDisplay_Change_Cnt == 2)
	{

		sDataBufCnt = Display_Common_Data_Pro(sDataBit,0);

		//출입문 상태를 표출
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nTC_0.nXd16A1.nData.nTc16A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nM1_1.nXd16A1.nData.nM116A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nM2_2.nXd16A1.nData.nM216A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nM1_3.nXd16A1.nData.nM116A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nM2_4.nXd16A1.nData.nM216A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nT_5.nXd16A1.nData.nT16A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nT_6.nXd16A1.nData.nT16A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nM1_7.nXd16A1.nData.nM116A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nM2_8.nXd16A1.nData.nM216A1[1];
		sDataBufCnt++;
		sDataBit[sDataBufCnt].nData.nBYTE = pTisMemo->nTC_9.nXd16A1.nData.nTc16A1[1];
		sDataBufCnt++;

		sDataBit[sDataBufCnt].nData.nBit.nBit5 = pTisMemo->nM1_1.nXd16W1.nData.nBit.nASK ? 0 : 1;	//SIV 상태 1호
		sDataBit[sDataBufCnt].nData.nBit.nBit6 = pTisMemo->nM1_3.nXd16W1.nData.nBit.nASK ? 0 : 1;	//SIV 상태 3호
		sDataBit[sDataBufCnt].nData.nBit.nBit7 = pTisMemo->nM1_7.nXd16W1.nData.nBit.nASK ? 0 : 1;	//SIV 상태 7호
		sDataBit[sDataBufCnt].nData.nBit.nBit8 = pTisMemo->nM1_3.nXd16W1.nData.nBit.nESK ? 1 : 0;	//SIV 연장 급전 1-3
		sDataBufCnt++;

		sDataBit[sDataBufCnt].nData.nBit.nBit1 = pTisMemo->nM1_7.nXd16W1.nData.nBit.nESK ? 1 : 0;	//SIV 연장 급전 3-7
		sDataBit[sDataBufCnt].nData.nBit.nBit2 = pTisMemo->nM2_2.nXd16W1.nData.nBit.nCMK ? 1 : 0;	//CM 2
		sDataBit[sDataBufCnt].nData.nBit.nBit3 = pTisMemo->nM2_4.nXd16W1.nData.nBit.nCMK ? 1 : 0;	//CM 4
		sDataBit[sDataBufCnt].nData.nBit.nBit4 = pTisMemo->nM2_8.nXd16W1.nData.nBit.nCMK ? 1 : 0;	//CM 8
		sDataBufCnt++;

		sDataBit[sDataBufCnt].nData.nBit.nBit1 = pTisMemo->nTC_0.nXd16W2.nData.nBit.nTCN ? 1 : 0;//TCN 0		 //////// 운전 모드 3
		sDataBit[sDataBufCnt].nData.nBit.nBit2 = pTisMemo->nTC_9.nXd16W2.nData.nBit.nTCN ? 1 : 0;//TCN 9                    
		sDataBit[sDataBufCnt].nData.nBit.nBit3 = pTisMemo->nTC_0.nXd16W2.nData.nBit.nBVN ? 1 : 0;//BVN 0                    
		sDataBit[sDataBufCnt].nData.nBit.nBit4 = pTisMemo->nTC_9.nXd16W2.nData.nBit.nBVN ? 1 : 0;//BVN 9                    ↓
		sDataBit[sDataBufCnt].nData.nBit.nBit5 = pTisMemo->nM1_1.nXd16A2.nData.nBit.nMOTOR_PROVED ? 0 : 1;//Moter p 1
		sDataBit[sDataBufCnt].nData.nBit.nBit6 = pTisMemo->nM2_2.nXd16A2.nData.nBit.nMOTOR_PROVED ? 0 : 1;//Moter p 2
		sDataBit[sDataBufCnt].nData.nBit.nBit7 = pTisMemo->nM1_3.nXd16A2.nData.nBit.nMOTOR_PROVED ? 0 : 1;//Moter p 3
		sDataBit[sDataBufCnt].nData.nBit.nBit8 = pTisMemo->nM2_4.nXd16A2.nData.nBit.nMOTOR_PROVED ? 0 : 1;//Moter p 4
		sDataBufCnt++;

		sDataBit[sDataBufCnt].nData.nBit.nBit1 = pTisMemo->nM1_7.nXd16A2.nData.nBit.nMOTOR_PROVED ? 0 : 1;//Moter p 7
		sDataBit[sDataBufCnt].nData.nBit.nBit2 = pTisMemo->nM2_8.nXd16A2.nData.nBit.nMOTOR_PROVED ? 0 : 1;//Moter p 8
		sDataBit[sDataBufCnt].nData.nBit.nBit3 = pTisMemo->nTC_0.nXd16W2.nData.nBit.nDSDR ? 1 : 0;//DSDR 0
		sDataBit[sDataBufCnt].nData.nBit.nBit4 = pTisMemo->nTC_9.nXd16W2.nData.nBit.nDSDR ? 1 : 0;//DSDR 9
		sDataBit[sDataBufCnt].nData.nBit.nBit5 = pTisMemo->nM1_1.nXd16W1.nData.nBit.nBCRX ? 1 : 0;//BCRX 1
		sDataBit[sDataBufCnt].nData.nBit.nBit6 = pTisMemo->nM1_3.nXd16W1.nData.nBit.nBCRX ? 1 : 0;//BCRX 3
		sDataBit[sDataBufCnt].nData.nBit.nBit7 = pTisMemo->nM1_7.nXd16W1.nData.nBit.nBCRX ? 1 : 0;//BCRX 7
		sDataBit[sDataBufCnt].nData.nBit.nBit8 = pTisMemo->nTC_0.nXd16W2.nData.nBit.nBSK ? 1 : 0;//BSK 0
		sDataBufCnt++;

		sDataBit[sDataBufCnt].nData.nBit.nBit1 = pTisMemo->nTC_9.nXd16W2.nData.nBit.nBSK ? 1 : 0;//BSK 9
		sDataBit[sDataBufCnt].nData.nBit.nBit2 = pTisMemo->nM1_1.nXd16W1.nData.nBit.nLK ? 1 : 0;//LK 1
		sDataBit[sDataBufCnt].nData.nBit.nBit3 = pTisMemo->nM2_2.nXd16W1.nData.nBit.nLK ? 1 : 0;//LK 2
		sDataBit[sDataBufCnt].nData.nBit.nBit4 = pTisMemo->nM1_3.nXd16W1.nData.nBit.nLK ? 1 : 0;//LK 3
		sDataBit[sDataBufCnt].nData.nBit.nBit5 = pTisMemo->nM2_4.nXd16W1.nData.nBit.nLK ? 1 : 0;//LK 4
		sDataBit[sDataBufCnt].nData.nBit.nBit6 = pTisMemo->nM1_7.nXd16W1.nData.nBit.nLK ? 1 : 0;//LK 7
		sDataBit[sDataBufCnt].nData.nBit.nBit7 = pTisMemo->nM2_8.nXd16W1.nData.nBit.nLK ? 1 : 0;//LK 8
		sDataBit[sDataBufCnt].nData.nBit.nBit8 = pTisMemo->nM1_1.nXd16A2.nData.nBit.nBRAKE_PROVED ? 0 : 1;//Break p 1
		sDataBufCnt++;

		sDataBit[sDataBufCnt].nData.nBit.nBit1 = pTisMemo->nM2_2.nXd16A2.nData.nBit.nBRAKE_PROVED ? 0 : 1;//Break p 2
		sDataBit[sDataBufCnt].nData.nBit.nBit2 = pTisMemo->nM1_3.nXd16A2.nData.nBit.nBRAKE_PROVED ? 0 : 1;//Break p 3
		sDataBit[sDataBufCnt].nData.nBit.nBit3 = pTisMemo->nM2_4.nXd16A2.nData.nBit.nBRAKE_PROVED ? 0 : 1;//Break p 4
		sDataBit[sDataBufCnt].nData.nBit.nBit4 = pTisMemo->nM1_7.nXd16A2.nData.nBit.nBRAKE_PROVED ? 0 : 1;//Break p 7                 ↑
		sDataBit[sDataBufCnt].nData.nBit.nBit5 = pTisMemo->nM2_8.nXd16A2.nData.nBit.nBRAKE_PROVED ? 0 : 1;//Break p 8	//////// 운전 모드 3
		sDataBit[sDataBufCnt].nData.nBit.nBit6 = pTisMemo->nM2_2.nXd16A2.nData.nBit.nLB ? 0 : 1;//LB 2		//////// 운전 모드 2
		sDataBit[sDataBufCnt].nData.nBit.nBit7 = pTisMemo->nM2_4.nXd16A2.nData.nBit.nLB ? 0 : 1;//LB 4                       ↓
		sDataBit[sDataBufCnt].nData.nBit.nBit8 = pTisMemo->nM2_8.nXd16A2.nData.nBit.nLB ? 0 : 1;//LB 8
		sDataBufCnt++;

		sDataBit[sDataBufCnt].nData.nBit.nBit1 = pTisMemo->nM1_1.nXd16W1.nData.nBit.nVCOR_VCOS ? 0 : 1;//고장차 개방 1
		sDataBit[sDataBufCnt].nData.nBit.nBit2 = pTisMemo->nM2_2.nXd16W1.nData.nBit.nVCOR_VCOS ? 0 : 1;//고장차 개방 2
		sDataBit[sDataBufCnt].nData.nBit.nBit3 = pTisMemo->nM1_3.nXd16W1.nData.nBit.nVCOR_VCOS ? 0 : 1;//고장차 개방 3
		sDataBit[sDataBufCnt].nData.nBit.nBit4 = pTisMemo->nM2_4.nXd16W1.nData.nBit.nVCOR_VCOS ? 0 : 1;//고장차 개방 4
		sDataBit[sDataBufCnt].nData.nBit.nBit5 = pTisMemo->nM1_7.nXd16W1.nData.nBit.nVCOR_VCOS ? 0 : 1;//고장차 개방 7
		sDataBit[sDataBufCnt].nData.nBit.nBit6 = pTisMemo->nM2_8.nXd16W1.nData.nBit.nVCOR_VCOS ? 0 : 1;//고장차 개방 8
		sDataBit[sDataBufCnt].nData.nBit.nBit7 = 0;//Unit 개방 1
		sDataBit[sDataBufCnt].nData.nBit.nBit8 = pTisMemo->nM2_2.nXd16W1.nData.nBit.nUCOR_UCOS ? 0 : 1;//Unit 개방 2
		sDataBufCnt++;

		sDataBit[sDataBufCnt].nData.nBit.nBit1 = 0;//Unit 개방 3
		sDataBit[sDataBufCnt].nData.nBit.nBit2 = pTisMemo->nM2_4.nXd16W1.nData.nBit.nUCOR_UCOS ? 0 : 1;//Unit 개방 4
		sDataBit[sDataBufCnt].nData.nBit.nBit3 = 0;//Unit 개방 7                                                                 ↑
		sDataBit[sDataBufCnt].nData.nBit.nBit4 = pTisMemo->nM2_8.nXd16W1.nData.nBit.nUCOR_UCOS ? 0 : 1;//Unit 개방 8		//////// 운전 모드 2
		sDataBit[sDataBufCnt].nData.nBit.nBit5 = pTisMemo->nTC_0.nXd16W1.nData.nBit.nVehicle_Fsil ? 0 : 1;// FSIL 
		sDataBit[sDataBufCnt].nData.nBit.nBit6 = pTisMemo->nM1_1.nXd16W1.nData.nBit.nVEHICLE_FSIL ? 0 : 1;// FSIL 
		sDataBit[sDataBufCnt].nData.nBit.nBit7 = pTisMemo->nM2_2.nXd16W1.nData.nBit.nVEHICLE_FSIL ? 0 : 1;// FSIL 
		sDataBit[sDataBufCnt].nData.nBit.nBit8 = pTisMemo->nM1_3.nXd16W1.nData.nBit.nVEHICLE_FSIL ? 0 : 1;// FSIL 
		sDataBufCnt++;


		sDataBit[sDataBufCnt].nData.nBit.nBit1 = pTisMemo->nM2_4.nXd16W1.nData.nBit.nVEHICLE_FSIL ? 0 : 1;// FSIL 
		sDataBit[sDataBufCnt].nData.nBit.nBit2 = pTisMemo->nT_5.nXd16W1.nData.nBit.nVEHICLE_FSIL ? 0 : 1;// FSIL 
		sDataBit[sDataBufCnt].nData.nBit.nBit3 = pTisMemo->nT_6.nXd16W1.nData.nBit.nVEHICLE_FSIL ? 0 : 1;// FSIL 
		sDataBit[sDataBufCnt].nData.nBit.nBit4 = pTisMemo->nM1_7.nXd16W1.nData.nBit.nVEHICLE_FSIL ? 0 : 1;// FSIL 
		sDataBit[sDataBufCnt].nData.nBit.nBit5 = pTisMemo->nM2_8.nXd16W1.nData.nBit.nVEHICLE_FSIL ? 0 : 1;// FSIL 
		sDataBit[sDataBufCnt].nData.nBit.nBit6 = pTisMemo->nTC_9.nXd16W1.nData.nBit.nVehicle_Fsil ? 0 : 1;// FSIL 

		
		sDataBufCnt++;

		ModBusMulti_Bit(0x00,0,(8*sDataBufCnt),(UCHAR *)sDataBit,XR16L784_3CHL);
		
	}
	else
	{
		sDataBufCnt = Display_Common_Data_ProAn(sDataBit,0);
			
		//TC 0 온도
		sTempDataBuf[0] = MAKE_WORD( pTisMemo->nTC_0.nAd04W1.nData.nWord.nTEMP1[0],pTisMemo->nTC_0.nAd04W1.nData.nWord.nTEMP1[1]);
		sTempDataBuf[1] = MAKE_WORD( pTisMemo->nTC_0.nAd04W1.nData.nWord.nTEMP2[0],pTisMemo->nTC_0.nAd04W1.nData.nWord.nTEMP2[1]);
		
		// M1_1
		sTempDataBuf[2] = MAKE_WORD( pTisMemo->nM1_1.nAd04W2.nData.nWord.nTEMP1[0],pTisMemo->nM1_1.nAd04W2.nData.nWord.nTEMP1[1]);
		sTempDataBuf[3] = MAKE_WORD( pTisMemo->nM1_1.nAd04W2.nData.nWord.nTEMP2[0],pTisMemo->nM1_1.nAd04W2.nData.nWord.nTEMP2[1]);
		
		//M2_2
		sTempDataBuf[4] = MAKE_WORD( pTisMemo->nM2_2.nAd04W2.nData.nWord.nTEMP1[0],pTisMemo->nM2_2.nAd04W2.nData.nWord.nTEMP1[1]);
		sTempDataBuf[5] = MAKE_WORD( pTisMemo->nM2_2.nAd04W2.nData.nWord.nTEMP2[0],pTisMemo->nM2_2.nAd04W2.nData.nWord.nTEMP2[1]);
		
		// M1_3
		sTempDataBuf[6] = MAKE_WORD( pTisMemo->nM1_3.nAd04W2.nData.nWord.nTEMP1[0],pTisMemo->nM1_3.nAd04W2.nData.nWord.nTEMP1[1]);
		sTempDataBuf[7] = MAKE_WORD( pTisMemo->nM1_3.nAd04W2.nData.nWord.nTEMP2[0],pTisMemo->nM1_3.nAd04W2.nData.nWord.nTEMP2[1]);
		
		//M2_4
		sTempDataBuf[8] = MAKE_WORD( pTisMemo->nM2_4.nAd04W2.nData.nWord.nTEMP1[0],pTisMemo->nM2_4.nAd04W2.nData.nWord.nTEMP1[1]);
		sTempDataBuf[9] = MAKE_WORD( pTisMemo->nM2_4.nAd04W2.nData.nWord.nTEMP2[0],pTisMemo->nM2_4.nAd04W2.nData.nWord.nTEMP2[1]);
		
		//T 5 Car
		sTempDataBuf[10] = MAKE_WORD( pTisMemo->nT_5.nAd04W1.nData.nWord.nTEMP1[0],pTisMemo->nT_5.nAd04W1.nData.nWord.nTEMP1[1]);
		sTempDataBuf[11] = MAKE_WORD( pTisMemo->nT_5.nAd04W1.nData.nWord.nTEMP2[0],pTisMemo->nT_5.nAd04W1.nData.nWord.nTEMP2[1]);
		
		//T 6 Car
		sTempDataBuf[12] = MAKE_WORD( pTisMemo->nT_6.nAd04W1.nData.nWord.nTEMP1[0],pTisMemo->nT_6.nAd04W1.nData.nWord.nTEMP1[1]);
		sTempDataBuf[13] = MAKE_WORD( pTisMemo->nT_6.nAd04W1.nData.nWord.nTEMP2[0],pTisMemo->nT_6.nAd04W1.nData.nWord.nTEMP2[1]);
		
		// M1_7
		sTempDataBuf[14] = MAKE_WORD( pTisMemo->nM1_7.nAd04W2.nData.nWord.nTEMP1[0],pTisMemo->nM1_7.nAd04W2.nData.nWord.nTEMP1[1]);
		sTempDataBuf[15] = MAKE_WORD( pTisMemo->nM1_7.nAd04W2.nData.nWord.nTEMP2[0],pTisMemo->nM1_7.nAd04W2.nData.nWord.nTEMP2[1]);
		
		//M2_8
		sTempDataBuf[16] = MAKE_WORD( pTisMemo->nM2_8.nAd04W2.nData.nWord.nTEMP1[0],pTisMemo->nM2_8.nAd04W2.nData.nWord.nTEMP1[1]);
		sTempDataBuf[17] = MAKE_WORD( pTisMemo->nM2_8.nAd04W2.nData.nWord.nTEMP2[0],pTisMemo->nM2_8.nAd04W2.nData.nWord.nTEMP2[1]);
		
		//TC 9
		sTempDataBuf[18] = MAKE_WORD( pTisMemo->nTC_9.nAd04W1.nData.nWord.nTEMP1[0],pTisMemo->nTC_9.nAd04W1.nData.nWord.nTEMP1[1]);
		sTempDataBuf[19] = MAKE_WORD( pTisMemo->nTC_9.nAd04W1.nData.nWord.nTEMP2[0],pTisMemo->nTC_9.nAd04W1.nData.nWord.nTEMP2[1]);

		
		sTempStVal =(WORD *)&nTemp_StVla;
		sTempVal = (WORD *)&nTemp_Val.nT_0;

		for(i = 0; i < 20;i++)
		{

			/*
			if((sTempDataBuf[i]) >= 5025)
			{
				sTempData = ((sTempDataBuf[i])-5025);
				sTempData = (sTempData)/19;

			}
			else
			{
				sTempData = (5025-(sTempDataBuf[i]));
				sTempData = (sTempData)/19;
				sTempData = 65535 - sTempData;
			}

			if(nTemp_Val.nTempFlag){ //온도 OFF_SET 중이면 실행
				sTempVal[i] = (sTempData >= sTempStVal[(i/2)]) ? (65535 - (sTempData - (sTempStVal[(i/2)]))+1) : (sTempStVal[(i/2)]-sTempData);
					
				sTempBuf[(i*2)] = WORD_H(sTempVal[i]);
				sTempBuf[(i*2)+1] =WORD_L(sTempVal[i]);
			}

			sTempData = sTempVal[i] + sTempData;
			*/

			sTempData = (int )Display_Tem_Vel(sTempDataBuf[i]);

			if(nTemp_Val.nTempFlag){ //온도 OFF_SET 중이면 실행
				sTempVal[i] = (sTempData >= sTempStVal[(i/2)]) ? (65535 - (sTempData - (sTempStVal[(i/2)]))+1) : (sTempStVal[(i/2)]-sTempData);
					
				sTempBuf[(i*2)] = WORD_H(sTempVal[i]);
				sTempBuf[(i*2)+1] =WORD_L(sTempVal[i]);
			}

			
			/////////////////////////////////////////////////////////////////
			//sTempData = (int )Display_Tem_Vel(sTempDataBuf[i]);

			if(sTempData < 0)
			{
				sTempData = 65535 + (sTempData);
			}
			else
			{
				sTempData = (sTempData >= 50) ? 50 : (sTempVal[i] + sTempData); //추가
			}
			

			sDataBit[sDataBufCnt].nData.nBYTE = WORD_H(sTempData);
			sDataBufCnt++;
			sDataBit[sDataBufCnt].nData.nBYTE = WORD_L(sTempData);
			sDataBufCnt++;
		}

		if(nTemp_Val.nTempFlag){NVSRAM_W(TEMP_VAL_DATA,0x00,40,sTempBuf); }//온도 OFF_SET 중이면 실행
				
        //제동압. 0
		sTempDataBuf[0] = MAKE_WORD( pTisMemo->nTC_0.nAd04W1.nData.nWord.nBC[0],pTisMemo->nTC_0.nAd04W1.nData.nWord.nBC[1]);
		//제동압. 1
		sTempDataBuf[1] = MAKE_WORD( pTisMemo->nM1_1.nAd04W2.nData.nWord.nBC[0],pTisMemo->nM1_1.nAd04W2.nData.nWord.nBC[1]);
		//제동압. 2
		sTempDataBuf[2] = MAKE_WORD( pTisMemo->nM2_2.nAd04W2.nData.nWord.nBC[0],pTisMemo->nM2_2.nAd04W2.nData.nWord.nBC[1]);
		//제동압. 3
		sTempDataBuf[3] = MAKE_WORD( pTisMemo->nM1_3.nAd04W2.nData.nWord.nBC[0],pTisMemo->nM1_3.nAd04W2.nData.nWord.nBC[1]);
		//제동압. 4
		sTempDataBuf[4] = MAKE_WORD( pTisMemo->nM2_4.nAd04W2.nData.nWord.nBC[0],pTisMemo->nM2_4.nAd04W2.nData.nWord.nBC[1]);
		//제동압. 5
		sTempDataBuf[5] = MAKE_WORD( pTisMemo->nT_5.nAd04W1.nData.nWord.nBC[0],pTisMemo->nT_5.nAd04W1.nData.nWord.nBC[1]);
		//제동압. 6
		sTempDataBuf[6] = MAKE_WORD( pTisMemo->nT_6.nAd04W1.nData.nWord.nBC[0],pTisMemo->nT_6.nAd04W1.nData.nWord.nBC[1]);
		//제동압. 7
		sTempDataBuf[7] = MAKE_WORD( pTisMemo->nM1_7.nAd04W2.nData.nWord.nBC[0],pTisMemo->nM1_7.nAd04W2.nData.nWord.nBC[1]);
		//제동압. 8
		sTempDataBuf[8] = MAKE_WORD( pTisMemo->nM2_8.nAd04W2.nData.nWord.nBC[0],pTisMemo->nM2_8.nAd04W2.nData.nWord.nBC[1]);
		//제동압. 9
		sTempDataBuf[9] = MAKE_WORD( pTisMemo->nTC_9.nAd04W1.nData.nWord.nBC[0],pTisMemo->nTC_9.nAd04W1.nData.nWord.nBC[1]);

		for(i = 0; i < 10;i++)
		{
			sTempData2 = sTempDataBuf[i]+260;
			if(sTempData2 > 32767){sTempData2 = 65535 - sTempData2;}

			sTempData = ((sTempData2/3276)*10)+((sTempData2%3276)/327);
			//sTempData3 =((m_Brake_Step*10) + (m_Brake_Step*2))/10; //브레이크 단수에 따른 센스 압력 값을 변경 한다.
			//sTempData = (sTempData-(10-sTempData3));
			sTempData = (sTempData-10);
			sTempData = sTempData + (sTempData/2);

			//sTempData = (sTempData > 20) ? 0 : sTempData;
			sDataBit[sDataBufCnt].nData.nBYTE = WORD_H(sTempData);
			sDataBufCnt++;
			sDataBit[sDataBufCnt].nData.nBYTE = WORD_L(sTempData);
			sDataBufCnt++;
		}
		
		//모터 전류. 1
		sTempDataBuf[0] = MAKE_WORD( pTisMemo->nM1_1.nAd04W1.nData.nWord.nIA[0],pTisMemo->nM1_1.nAd04W1.nData.nWord.nIA[1]);
		//모터 전류. 2
		sTempDataBuf[1] = MAKE_WORD( pTisMemo->nM2_2.nAd04W1.nData.nWord.nIA[0],pTisMemo->nM2_2.nAd04W1.nData.nWord.nIA[1]);
		//모터 전류. 3
		sTempDataBuf[2] = MAKE_WORD( pTisMemo->nM1_3.nAd04W1.nData.nWord.nIA[0],pTisMemo->nM1_3.nAd04W1.nData.nWord.nIA[1]);
		//모터 전류. 4
		sTempDataBuf[3] = MAKE_WORD( pTisMemo->nM2_4.nAd04W1.nData.nWord.nIA[0],pTisMemo->nM2_4.nAd04W1.nData.nWord.nIA[1]);
		//모터 전류. 7
		sTempDataBuf[4] = MAKE_WORD( pTisMemo->nM1_7.nAd04W1.nData.nWord.nIA[0],pTisMemo->nM1_7.nAd04W1.nData.nWord.nIA[1]);
		//모터 전류. 8
		sTempDataBuf[5] = MAKE_WORD( pTisMemo->nM2_8.nAd04W1.nData.nWord.nIA[0],pTisMemo->nM2_8.nAd04W1.nData.nWord.nIA[1]);
		
		for(i = 0; i < 6;i++)
		{
			sTempData2 = sTempDataBuf[i]+260;
			if(sTempData2 > 32767){sTempData2 = 65535 - sTempData2;}

			sTempData = ((sTempData2/3276)*10+(sTempData2%3276)/327)*10;

			sTempData = sTempData+((sTempData/10)*7);

			//sTempData = sTempData2*0.03;


			if(nCurrent.nPow_Step_4){ //파워링이 4단이면 OFF SET 값을 적용한다. 2010_05_20
				sTempVal = (WORD *)&nCurrent.nCar_1;

				sTempData = (sTempData<= 50) ? 0 : (sTempData+sTempVal[i]);
			}
			else{
				sTempData = (sTempData<= 50) ? 0 : sTempData;
			}

			sDataBit[sDataBufCnt].nData.nBYTE = WORD_H(sTempData);
			sDataBufCnt++;
			sDataBit[sDataBufCnt].nData.nBYTE = WORD_L(sTempData);
			sDataBufCnt++;
		}

		//가선 전압 1
		sTempDataBuf[0] = MAKE_WORD( pTisMemo->nM1_1.nAd04W1.nData.nWord.nVL[0],pTisMemo->nM1_1.nAd04W1.nData.nWord.nVL[1]);
		//가선 전압. 2
		sTempDataBuf[1] = MAKE_WORD( pTisMemo->nM2_2.nAd04W1.nData.nWord.nVL[0],pTisMemo->nM2_2.nAd04W1.nData.nWord.nVL[1]);
		//가선 전압. 3
		sTempDataBuf[2] = MAKE_WORD( pTisMemo->nM1_3.nAd04W1.nData.nWord.nVL[0],pTisMemo->nM1_3.nAd04W1.nData.nWord.nVL[1]);
		//가선 전압. 4
		sTempDataBuf[3] = MAKE_WORD( pTisMemo->nM2_4.nAd04W1.nData.nWord.nVL[0],pTisMemo->nM2_4.nAd04W1.nData.nWord.nVL[1]);
		//가선 전압. 7
		sTempDataBuf[4] = MAKE_WORD( pTisMemo->nM1_7.nAd04W1.nData.nWord.nVL[0],pTisMemo->nM1_7.nAd04W1.nData.nWord.nVL[1]);
		//가선 전압. 8
		sTempDataBuf[5] = MAKE_WORD( pTisMemo->nM2_8.nAd04W1.nData.nWord.nVL[0],pTisMemo->nM2_8.nAd04W1.nData.nWord.nVL[1]);
		
		for(i = 0; i < 6;i++)
		{
			sTempData2 = sTempDataBuf[i]+260;
			if(sTempData2 > 32767){sTempData2 = 65535 - sTempData2;}

			sTempData = ((sTempData2/3276)*10+(sTempData2%3276)/327)*40;

			sTempData = sTempData+((sTempData/10)*4);

			//sTempData = sTempData2*0.125;
			sTempData = (sTempData <= 400) ? 0 : sTempData;

			sDataBit[sDataBufCnt].nData.nBYTE = WORD_H(sTempData);
			sDataBufCnt++;
			sDataBit[sDataBufCnt].nData.nBYTE = WORD_L(sTempData);
			sDataBufCnt++;
		}

		ModBusMulti_WORD(0x00,11,(sDataBufCnt/2),(UCHAR *)sDataBit,XR16L784_3CHL);

	}

}

//**********************************************************************************
// Display_Common_Data_Pro 공통 화면. Bit 구성 
// 
//**********************************************************************************
UCHAR Display_Common_Data_Pro(BIT_DATAPRo *pData,UCHAR sSTPoint)
{

	UCHAR sCnt = 0;
	UCHAR sDataBuf[300];
	USHORT sTempData = 0;

	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)sDataBuf;
	PTCCAR_MEMORY sTcDiList;

	NVSRAM_R(XR16L784_8CHL,3,286,sDataBuf);

	sCnt = sSTPoint;

	if(pTisMemo->nTC_0.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	else if(pTisMemo->nTC_9.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
	else
	{
		if(nScreenInf.nCarNum){
			 sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
		else{sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	}

	pData[sCnt].nData.nBit.nBit1 = sTcDiList->nXd16W3.nData.nBit.nLBTL ? 1 : 0;//LBTL
	pData[sCnt].nData.nBit.nBit2 = sTcDiList->nXd16W3.nData.nBit.nASF ? 1 : 0;//ASF
	pData[sCnt].nData.nBit.nBit3 = sTcDiList->nXd16W1.nData.nBit.n43a ? 1 : 0;//제동 불완해
	pData[sCnt].nData.nBit.nBit4 = sTcDiList->nXd16W3.nData.nBit.nDVCOS ? 1 : 0;//DVCOS
	pData[sCnt].nData.nBit.nBit5 = sTcDiList->nXd16W1.nData.nBit.nEBCOS ? 1 : 0;//EBCOS
	pData[sCnt].nData.nBit.nBit6 = sTcDiList->nXd16W3.nData.nBit.nCOTL ? 1 : 0;//COTL
	pData[sCnt].nData.nBit.nBit7 = sTcDiList->nXd16W1.nData.nBit.nEm_Brake ? 0 : 1;//비상 제동
	pData[sCnt].nData.nBit.nBit8 = sTcDiList->nXd16W1.nData.nBit.nSbs ? 1 : 0;//보완 제동
	sCnt++;

	pData[sCnt].nData.nBit.nBit1 = sTcDiList->nXd16W1.nData.nBit.nDIRS ? 1 : 0;//DIRS
	pData[sCnt].nData.nBit.nBit2 = sTcDiList->nXd16W1.nData.nBit.nEpands ? 0 : 1;//EPANDS
	pData[sCnt].nData.nBit.nBit3 = sTcDiList->nXd16W1.nData.nBit.nLSRS ? 1 : 0;//LSRS
	pData[sCnt].nData.nBit.nBit4 = sTcDiList->nXd16W2.nData.nBit.nBEL ? 1 : 0;//BEL
	
	sTempData = (sTcDiList->nXd16W3.nData.nBit.nMOTORING_1 || sTcDiList->nXd16W3.nData.nBit.nMOTORING_4);
	pData[sCnt].nData.nBit.nBit5 = sTempData ? 1 : 0;//제동노치 P
	pData[sCnt].nData.nBit.nBit6 = sTcDiList->nXd16W1.nData.nBit.nBRAKE ? 1 : 0;//제동노치 B

	if(!sTempData && !sTcDiList->nXd16W1.nData.nBit.nBRAKE)
	{
		pData[sCnt].nData.nBit.nBit6 = 1;
	}

	pData[sCnt].nData.nBit.nBit7 = sTcDiList->nXd16W4.nData.nBit.nDIL ? 1 : 0; //도어등
	
	pData[sCnt].nData.nBit.nBit8 = 0;//고장 메세지
	sCnt++;

	//비상일 경우 EM이라는 글자 현시

	pData[sCnt].nData.nBit.nBit1 = sTcDiList->nXd16W1.nData.nBit.nEm_Brake ? 0 : 1; //EM 출력
	pData[sCnt].nData.nBit.nBit2 = (nScreenInf.nRecodeOKNG == 2) ? 1 : 0; //기록 실패

	if(!sTcDiList->nXd16W1.nData.nBit.nEm_Brake)
	{
		pData[(sCnt-1)].nData.nBit.nBit6 = 0;//sTcDiList->nXd16W1.nData.nBit.nBRAKE ? 0 : 1;//제동노치 B
		//pData[sCnt].nData.nBit.nBit1 = sTcDiList->nXd16W1.nData.nBit.nEm_Brake ? 0 : 1; //EM 출력
	}
	
	sCnt++;

	pData[sCnt].nData.nBit.nBit1 = pTisMemo->nTC_0.nXd16W1.nData.nBit.nBV_HANDLE ? 1 : 0; //전진
	pData[sCnt].nData.nBit.nBit2 = pTisMemo->nTC_9.nXd16W1.nData.nBit.nBV_HANDLE ? 1 : 0; //후진


	pData[sCnt].nData.nBit.nBit3 = pTisMemo->nM2_2.nXd16W1.nData.nBit.nPANV ? 1 : 0;
	pData[sCnt].nData.nBit.nBit4 = pTisMemo->nM2_2.nXd16W1.nData.nBit.nPANV ? 1 : 0;
	pData[sCnt].nData.nBit.nBit5 = pTisMemo->nM2_4.nXd16W1.nData.nBit.nPANV ? 1 : 0;
	pData[sCnt].nData.nBit.nBit6 = pTisMemo->nM2_4.nXd16W1.nData.nBit.nPANV ? 1 : 0;
	pData[sCnt].nData.nBit.nBit7 = pTisMemo->nM2_8.nXd16W1.nData.nBit.nPANV ? 1 : 0;
	pData[sCnt].nData.nBit.nBit8 = pTisMemo->nM2_8.nXd16W1.nData.nBit.nPANV ? 1 : 0;

	sCnt++;
	
	return sCnt;

}

//**********************************************************************************
// Display_Common_Data_Pro 공통 화면. 아날로드 구성 
// 
//**********************************************************************************
UCHAR mkiGi_Mode_Cnt = 0;
UCHAR Display_Common_Data_ProAn(BIT_DATAPRo *pData,UCHAR sSTPoint)
{
	int i;
	UCHAR sATS_Data = 0;
	UCHAR sATS_Buf_Add[10] = {1,2,4,8,16,32,0,0};
	UCHAR sCnt = 0;
	UCHAR sDataBuf[300];
	DWORD sTempData = 0;

	PTCCAR_MEMORY sTcDiList;

	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)sDataBuf;
	
	NVSRAM_R(XR16L784_8CHL,3,286,sDataBuf);

	if(pTisMemo->nTC_0.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	else if(pTisMemo->nTC_9.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
	else
	{
		if(nScreenInf.nCarNum){
			 sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
		else{sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	}


	sCnt = sSTPoint;

	////////////////////메시지 전달////////////////////
	/* 고장 신호는 EM 일때 발생한 고장은 EM해제시 소거하고
	   다른 고장들은 확인 후 소거 한다.*/
	pData[sCnt].nData.nBYTE = 0;

	sCnt++;

	if(!m_EmBarke_RE && sTcDiList->nXd16W1.nData.nBit.nEm_Brake) //EM-> B7로 이동하면 클리어
	{
		//pData[sCnt].nData.nBYTE = 0; //클리어 신호
		nScreenInf.nB0_7_Time = 0;

	}
	else{

		if(m_EmBarke_RE && !sTcDiList->nXd16W1.nData.nBit.nEm_Brake) //B7-> EM 첫 으로 이동시 기억한다.
		{
			nScreenInf.nMesgNum_Re = nScreenInf.nMesgNum_B7_Re;
			nScreenInf.nB0_7_Time = 0;
		}

		if(m_EmBarke_RE && sTcDiList->nXd16W1.nData.nBit.nEm_Brake) //EM->B7로 이동후 고장 기록이 있으면 출력한다.
		{
			if(nScreenInf.nMesgNum_Re)//EM-> B7로 이동시 처음 한번만 실행
			{
				nScreenInf.nMesgNum = nScreenInf.nMesgNum_Re;

				nScreenInf.nMesgNum_Re = 0;
			}

			if(nScreenInf.nMesgNum) //고장 발행후 고장이 클리어 되면 자동으로 고장을 클리어 한다.
			{
				if((!nPault.n14Fa.nFaultCnt)&&(!nPault.n14Fa.nFaultRE) &&
					(!nPault.n19Fa.nFaultCnt)&&(!nPault.n19Fa.nFaultRE) &&
					(!nPault.n20Fa.nFaultRE))
				{
					if((!nPault.n21Fa.nFaultCnt)&& (!nPault.n21Fa.nFaultRE) &&
						(!nPault.n23Fa.nFaultRE)&& 
						(!nPault.n24Fa.nFaultCnt)&& (!nPault.n24Fa.nFaultRE))
					{
						if((!nPault.n26Fa.nFaultCnt)&& (!nPault.n26Fa.nFaultRE) &&
							(!nPault.n29Fa.nFaultCnt)&& (!nPault.n29Fa.nFaultRE))
						{
							nScreenInf.nMesgNum = 0;
						}
					}
				}
			}

			nScreenInf.nMesgNum_B7_Re = nScreenInf.nMesgNum; //정상일때 고장을 기억한다.

			nScreenInf.nB0_7_Time = 1;
		}
		
		pData[sCnt].nData.nBYTE = nScreenInf.nMesgNum;
	}

	m_EmBarke_RE =  sTcDiList->nXd16W1.nData.nBit.nEm_Brake;

	sCnt++;
	/*****************************************************************/
	pData[sCnt].nData.nBYTE = 0;  //역행 노치 P
	sCnt++;

	pData[sCnt].nData.nBit.nBit1 = sTcDiList->nXd16W3.nData.nBit.nMOTORING_1 ? 1 : 0;
	pData[sCnt].nData.nBit.nBit3 = sTcDiList->nXd16W3.nData.nBit.nMOTORING_4 ? 1 : 0;
	if(sTcDiList->nXd16W3.nData.nBit.nMOTORING_4)
	{
		pData[sCnt].nData.nBit.nBit1 = 0;//sTcDiList->nXd16W3.nData.nBit.nMOTORING_1 ? 0 : 1;

		nCurrent.nPow_Step_4 = TRUE; //파워링 4단일 경우 OFF SET 값을 적용한다. 2010_05_20
	}
	else{
		nCurrent.nPow_Step_4 = FALSE; //파워링 4단일 경우 OFF SET 값을 적용한다. 2010_05_20
	}

	sCnt++;

	/*****************************************************************/
	pData[sCnt].nData.nBYTE = 0;  //역행 노치 B
	sCnt++;

	pData[sCnt].nData.nBit.nBit1 = sTcDiList->nXd16W1.nData.nBit.nSetp_27 ? 1 : 0;
	pData[sCnt].nData.nBit.nBit2 = sTcDiList->nXd16W1.nData.nBit.nSetp_28 ? 1 : 0;
	pData[sCnt].nData.nBit.nBit3 = sTcDiList->nXd16W1.nData.nBit.nSetp_29 ? 1 : 0;

	
	if(!sTcDiList->nXd16W1.nData.nBit.nEm_Brake){m_Brake_Step = 8;}
	else{
		m_Brake_Step = WORD_L(pData[sCnt].nData.nBYTE);
	}
	
	sCnt++;

	/*****************************************************************/

	pData[sCnt].nData.nBYTE = WORD_H(m_SpeedValue);  //속도
	sCnt++;
	pData[sCnt].nData.nBYTE = WORD_L(m_SpeedValue);
	sCnt++;

	/*****************************************************************/

	if(nScreenInf.nCarNum)
	     {sTempData = MAKE_WORD( pTisMemo->nM2_8.nAd04W1.nData.nWord.nVL[0],pTisMemo->nM1_1.nAd04W1.nData.nWord.nVL[1]);}
	else {sTempData = MAKE_WORD( pTisMemo->nM1_1.nAd04W1.nData.nWord.nVL[0],pTisMemo->nM1_1.nAd04W1.nData.nWord.nVL[1]);}

	sTempData = sTempData+260;
	if(sTempData > 32767){sTempData = 65535 - sTempData;}
	sTempData = ((sTempData/3276)*10+(sTempData%3276)/327)*40;

	sTempData = (sTempData >= 2500) ? 0 : sTempData;

	sTempData = sTempData+((sTempData/10)*4);

	//sTempData = sTempData*0.125;

	pData[sCnt].nData.nBYTE = WORD_H(sTempData);  // 가선 전압
	sCnt++;
	pData[sCnt].nData.nBYTE = WORD_L(sTempData);  // 가선 전압
	sCnt++;

	/*****************************************************************/
	pData[sCnt].nData.nBYTE = 0;  // ATS 모드
	pData[sCnt].nData.nBit.nBit1 = ~(sTcDiList->nXd16W4.nData.nBit.nATS_EM);  // ATS 모드

	sCnt++;

	//if(sTcDiList->nXd16W1.nData.nBit.nBV_HANDLE) //ATS 모드를 표출한다
	//{
		pData[sCnt].nData.nBit.nBit1 = sTcDiList->nXd16A1.nData.nBit.nATS_YARD;
		pData[sCnt].nData.nBit.nBit2 = sTcDiList->nXd16A1.nData.nBit.nATS_STOP;
		pData[sCnt].nData.nBit.nBit3 = sTcDiList->nXd16A1.nData.nBit.nATS_15;
		pData[sCnt].nData.nBit.nBit4 = sTcDiList->nXd16A1.nData.nBit.nATS_25;
		pData[sCnt].nData.nBit.nBit5 = sTcDiList->nXd16A1.nData.nBit.nATS_40;
		pData[sCnt].nData.nBit.nBit6 = sTcDiList->nXd16A1.nData.nBit.nATS_60;
		pData[sCnt].nData.nBit.nBit7 = sTcDiList->nXd16A1.nData.nBit.nATS_70;
		pData[sCnt].nData.nBit.nBit8 = sTcDiList->nXd16A1.nData.nBit.nATS_80;


		sATS_Data = MAKE_WORD( pData[(sCnt-1)].nData.nBYTE,pData[sCnt].nData.nBYTE);

		for(i = 0; i<9;i++)//신호가 2개이상 입력되어 화면정보가 이상동작 하는것을 막는다.
		{
			if((sATS_Data>>i)&0x01) break;
		}

		sATS_Data = sATS_Buf_Add[i];

		pData[(sCnt-1)].nData.nBYTE = WORD_H(sATS_Data);
		pData[sCnt].nData.nBYTE = WORD_L(sATS_Data);

	//}
	sCnt++;


	//다운로드 진행바 
	pData[sCnt].nData.nBYTE = 0;
	sCnt++;

	if(nScreenInf.nRecodeFlag == 1) //기록 카운터 다운 시작
	{

		if(nScreenInf.nRecodeOKNG == 1) 
		{
			m_RecodePerCent = 100;
		}
		else
		{
			m_RecodePerCent = (m_RecodePerCent >= 95) ? 95 : m_RecodePerCent;
		}

		pData[sCnt].nData.nBYTE = m_RecodePerCent;
	}
	else
	{
		pData[sCnt].nData.nBYTE = 0;
	}

	sCnt++;

	/******화면*************************************************************/
	pData[sCnt].nData.nBYTE = 0;
	sCnt++;
	if(sTcDiList->nXd16W1.nData.nBit.nBV_HANDLE && !nScreenInf.nBvHand_Re)
	{
		pData[sCnt].nData.nBYTE = 21;	 
	}
	else
	{
		mkiGi_Mode_Cnt++;
		if(mkiGi_Mode_Cnt > 10)
		{
			pData[sCnt].nData.nBYTE = 0;
		}
	}

	sCnt++;

	nScreenInf.nBvHand_Re = sTcDiList->nXd16W1.nData.nBit.nBV_HANDLE;

	
	
	/*******************************************************************/


	return sCnt;

}
//**********************************************************************************
// Display_Common 공통 화면 출력
// 
//**********************************************************************************
UCHAR nItemCnt = 0;
UCHAR nItemCnt_2 = 0;
void Display_Common()
{
	UCHAR sDataBufCnt = 0;

	UCHAR sDataBuf[300];
	UCHAR sNetBuf[5];

	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)sDataBuf;
	
	BIT_DATAPRo sDataBit[50];
	NVSRAM_R(XR16L784_8CHL,3,288,sDataBuf);
	memset(&sDataBit[0].nData.nBYTE,0x00,50);

	if(nScreenInf.nCarNum){
		 memcpy(sNetBuf,pTisMemo->nNetSta_9,2); sNetBuf[0] = sNetBuf[0]|0x02;}
	else{memcpy(sNetBuf,pTisMemo->nNetSta_0,2); sNetBuf[1] = sNetBuf[1]|0x01;}

	nItemCnt_2++;
	nItemCnt_2 = (nItemCnt_2)%4;

	if(!nItemCnt_2)	//메인통신
	{
		ModBusMulti_Bit(0x00,940,16,(UCHAR *)sNetBuf,XR16L784_3CHL);
	}
	else if(nItemCnt_2 == 1) //bit 처리
	{
		sDataBufCnt = Display_Common_Data_Pro(sDataBit,0);

		ModBusMulti_Bit(0x00,0,(8*sDataBufCnt),(UCHAR *)sDataBit,XR16L784_3CHL);
	}
	else if(nItemCnt_2 == 2) //아날로그 처리
	{
		sDataBufCnt = Display_Common_Data_ProAn(sDataBit,0);

		ModBusMulti_WORD(0x00,11,(sDataBufCnt/2),(UCHAR *)sDataBit,XR16L784_3CHL);
	}
	else if(nItemCnt_2 == 3)//고장 처리
	{
		Display_Fault();
	}
}

//**********************************************************************************
// Display_DI_DATA_Pro
//**********************************************************************************
WORD m_DI_Speed = 0;
WORD m_CloseLb4 = 0;
UCHAR m_CloseLb4Buf[2];
void Display_DI_DATA_Pro()
{
	int i;
	UCHAR sDataBuf[300];
	UCHAR sAnDataBuf[25];//검수 - 아날로그출력 버퍼
	UCHAR sAnDataBuf_BackUp[25];
	WORD sTempData = 0;
	WORD sTempAnData = 0;

	WORD *sTempVal;

	NVSRAM_R(XR16L784_8CHL,3,286,sDataBuf);
	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)sDataBuf;

	memset(sAnDataBuf_BackUp,0x00,25);

	nItemCnt++;
	nItemCnt = (nItemCnt)%3;

	if(nItemCnt == 2)
	{
		Display_Common();
	}
	else
	{
		switch(nScreenInf.nDI_Screen)
		{
		case 1:

			if(!(nItemCnt))
			{

				pTisMemo->nTC_0.nXd16W1.nData.nBit.nEm_Brake = ~(pTisMemo->nTC_0.nXd16W1.nData.nBit.nEm_Brake);
				pTisMemo->nTC_0.nXd16W1.nData.nBit.nEpands = ~(pTisMemo->nTC_0.nXd16W1.nData.nBit.nEpands);

				ModBusMulti_Bit(0x00,nXpaDI_Add.nTC_0.nBit,(16*5),(UCHAR *)&pTisMemo->nTC_0.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{
				
				memcpy(sAnDataBuf,&pTisMemo->nTC_0.nHs02B.nData.nTcHS02B[0],24);

				sTempData = m_Sped_Tc0*((((860*3.14)/90)*3600)/1000000);

				sAnDataBuf_BackUp[0] =WORD_H(sTempData);
				sAnDataBuf_BackUp[1] =WORD_L(sTempData);

				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[8],1,1,0,0); //BC

				Display_AnData(&sAnDataBuf_BackUp[6],&sAnDataBuf[10],1,0,0,0); //MR
				sTempAnData = MAKE_WORD(sAnDataBuf_BackUp[6],sAnDataBuf_BackUp[7])-10;
				sTempAnData = (sTempAnData*2)+(sTempAnData/2);

				sAnDataBuf_BackUp[6] = WORD_H(sTempAnData);
				sAnDataBuf_BackUp[7] = WORD_L(sTempAnData);

				Display_AnData(&sAnDataBuf_BackUp[8],&sAnDataBuf[12],2,0,0,m_Temp_Conver); //온도

				Display_AnData(&sAnDataBuf_BackUp[12],&sAnDataBuf[16],4,0,0,0); //엔커더 판넬

				sTempData = MAKE_WORD(sAnDataBuf_BackUp[12],sAnDataBuf_BackUp[13])*3;

				sAnDataBuf_BackUp[12] =  WORD_H(sTempData);
				sAnDataBuf_BackUp[13] =  WORD_L(sTempData);
				//Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[8],8,);

				sAnDataBuf_BackUp[20] =  WORD_H(RomVer);
				sAnDataBuf_BackUp[21] =  WORD_L(RomVer);

				ModBusMulti_WORD(0x00,248, 11 ,sAnDataBuf_BackUp,XR16L784_3CHL);


			}

			break;
		case 2:
			if(!(nItemCnt))
			{
				

				pTisMemo->nM1_1.nXd16A2.nData.nBit.nCLOSE_LB4 = (MAKE_WORD(m_CloseLb4Buf[0],m_CloseLb4Buf[1]) >= 70) ? 0 : 1;
				pTisMemo->nM1_1.nXd16A1.nData.nM116A1[0] = ~(pTisMemo->nM1_1.nXd16A1.nData.nM116A1[0])&0x03;
				pTisMemo->nM1_1.nXd16A2.nData.nM116A2[0] = ~(pTisMemo->nM1_1.nXd16A2.nData.nM116A2[0]);
				pTisMemo->nM1_1.nXd16A2.nData.nM116A2[1] = ~(pTisMemo->nM1_1.nXd16A2.nData.nM116A2[1]);



				ModBusMulti_Bit(0x00,nXpaDI_Add.nM1_1.nBit,(16*4),(UCHAR *)&pTisMemo->nM1_1.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{

				memcpy(sAnDataBuf,&pTisMemo->nM1_1.nAd04W1.nData.nM1AD04W1[0],24);
				Display_AnData(&sAnDataBuf_BackUp[0],&sAnDataBuf[0],1,0,40,0);
				Display_AnData(&sAnDataBuf_BackUp[2],&sAnDataBuf[2],1,0,10,0);
				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[4],2,0,0,0);

				Display_AnData(&sAnDataBuf_BackUp[8],&sAnDataBuf[8],1,1,0,0);

				//Display_AnData(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1,0,0,0);
				Display_AnData_Sl(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1);
				Display_AnData(&sAnDataBuf_BackUp[12],&sAnDataBuf[12],2,0,0,m_Temp_Conver);

				Display_AnData(&sAnDataBuf_BackUp[16],&sAnDataBuf[16],4,0,0,0);

				//Display_AnData(sAnDataBuf_BackUp,sAnDataBuf,12);

				Display_AnData(m_CloseLb4Buf,pTisMemo->nM1_1.nAd04W3.nData.nWord.nClose_LB4An,1,0,0,0);

				ModBusMulti_WORD(0x00,248, 12 ,sAnDataBuf_BackUp,XR16L784_3CHL);

				//ModBusMulti_WORD(0x00,nXpaDI_Add.nM1_1.nWord,12,(UCHAR *)&pTisMemo->nM1_1.nAd04W1,XR16L784_3CHL);
			}

			break;
		case 3:
			if(!(nItemCnt))
			{
				pTisMemo->nM2_2.nXd16A2.nData.nBit.nCLOSE_LB4 = (MAKE_WORD(m_CloseLb4Buf[0],m_CloseLb4Buf[1]) >= 70) ? 0 : 1;
				pTisMemo->nM2_2.nXd16A1.nData.nM216A1[0] = ~(pTisMemo->nM2_2.nXd16A1.nData.nM216A1[0])&0x03;
				pTisMemo->nM2_2.nXd16A2.nData.nM216A2[0] = ~(pTisMemo->nM2_2.nXd16A2.nData.nM216A2[0]);
				pTisMemo->nM2_2.nXd16A2.nData.nM216A2[1] = ~(pTisMemo->nM2_2.nXd16A2.nData.nM216A2[1]);
				ModBusMulti_Bit(0x00,nXpaDI_Add.nM2_2.nBit,(16*4),(UCHAR *)&pTisMemo->nM2_2.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{
				memcpy(sAnDataBuf,&pTisMemo->nM2_2.nAd04W1.nData.nM2AD04W1[0],24);
				Display_AnData(&sAnDataBuf_BackUp[0],&sAnDataBuf[0],1,0,40,0);
				Display_AnData(&sAnDataBuf_BackUp[2],&sAnDataBuf[2],1,0,10,0);
				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[4],2,0,0,0);

				Display_AnData(&sAnDataBuf_BackUp[8],&sAnDataBuf[8],1,1,0,0);
				//Display_AnData(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1,0,0,0);
				Display_AnData_Sl(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1);
				Display_AnData(&sAnDataBuf_BackUp[12],&sAnDataBuf[12],2,0,0,m_Temp_Conver);

				Display_AnData(&sAnDataBuf_BackUp[16],&sAnDataBuf[16],4,0,0,0);

				//Display_AnData(sAnDataBuf_BackUp,sAnDataBuf,12);
				Display_AnData(m_CloseLb4Buf,pTisMemo->nM2_2.nAd04W3.nData.nWord.nClose_LB4An,1,0,0,0);
				ModBusMulti_WORD(0x00,248, 12 ,sAnDataBuf_BackUp,XR16L784_3CHL);
				//ModBusMulti_WORD(0x00,nXpaDI_Add.nM2_2.nWord,12,(UCHAR *)&pTisMemo->nM2_2.nAd04W1,XR16L784_3CHL);
			}

			break;
		case 4:
			if(!(nItemCnt))
			{
				pTisMemo->nM1_3.nXd16A2.nData.nBit.nCLOSE_LB4 = (MAKE_WORD(m_CloseLb4Buf[0],m_CloseLb4Buf[1]) >= 70) ? 0 : 1;

				pTisMemo->nM1_3.nXd16A1.nData.nM116A1[0] = ~(pTisMemo->nM1_3.nXd16A1.nData.nM116A1[0])&0x03;
				pTisMemo->nM1_3.nXd16A2.nData.nM116A2[0] = ~(pTisMemo->nM1_3.nXd16A2.nData.nM116A2[0]);
				pTisMemo->nM1_3.nXd16A2.nData.nM116A2[1] = ~(pTisMemo->nM1_3.nXd16A2.nData.nM116A2[1]);
				ModBusMulti_Bit(0x00,nXpaDI_Add.nM1_3.nBit,(16*4),(UCHAR *)&pTisMemo->nM1_3.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{
				memcpy(sAnDataBuf,&pTisMemo->nM1_3.nAd04W1.nData.nM1AD04W1[0],24);
				Display_AnData(&sAnDataBuf_BackUp[0],&sAnDataBuf[0],1,0,40,0);
				Display_AnData(&sAnDataBuf_BackUp[2],&sAnDataBuf[2],1,0,10,0);
				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[4],2,0,0,0);

				Display_AnData(&sAnDataBuf_BackUp[8],&sAnDataBuf[8],1,1,0,0);
				//Display_AnData(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1,0,0,0);
				Display_AnData_Sl(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1);
				Display_AnData(&sAnDataBuf_BackUp[12],&sAnDataBuf[12],2,0,0,m_Temp_Conver);

				Display_AnData(&sAnDataBuf_BackUp[16],&sAnDataBuf[16],4,0,0,0);

				//Display_AnData(sAnDataBuf_BackUp,sAnDataBuf,12);
				Display_AnData(m_CloseLb4Buf,pTisMemo->nM1_3.nAd04W3.nData.nWord.nClose_LB4An,1,0,0,0);
				ModBusMulti_WORD(0x00,248, 12 ,sAnDataBuf_BackUp,XR16L784_3CHL);
				//ModBusMulti_WORD(0x00,nXpaDI_Add.nM1_3.nWord,12,(UCHAR *)&pTisMemo->nM1_3.nAd04W1,XR16L784_3CHL);
			}
			break;
		case 5:
			if(!(nItemCnt))
			{
				pTisMemo->nM2_4.nXd16A2.nData.nBit.nCLOSE_LB4 = (MAKE_WORD(m_CloseLb4Buf[0],m_CloseLb4Buf[1]) >= 70) ? 0 : 1;
				pTisMemo->nM2_4.nXd16A1.nData.nM216A1[0] = ~(pTisMemo->nM2_4.nXd16A1.nData.nM216A1[0])&0x03;
				pTisMemo->nM2_4.nXd16A2.nData.nM216A2[0] = ~(pTisMemo->nM2_4.nXd16A2.nData.nM216A2[0]);
				pTisMemo->nM2_4.nXd16A2.nData.nM216A2[1] = ~(pTisMemo->nM2_4.nXd16A2.nData.nM216A2[1]);
				ModBusMulti_Bit(0x00,nXpaDI_Add.nM2_4.nBit,(16*4),(UCHAR *)&pTisMemo->nM2_4.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{
				memcpy(sAnDataBuf,&pTisMemo->nM2_4.nAd04W1.nData.nM2AD04W1[0],24);
				Display_AnData(&sAnDataBuf_BackUp[0],&sAnDataBuf[0],1,0,40,0);
				Display_AnData(&sAnDataBuf_BackUp[2],&sAnDataBuf[2],1,0,10,0);
				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[4],2,0,0,0);

				Display_AnData(&sAnDataBuf_BackUp[8],&sAnDataBuf[8],1,1,0,0);
				//Display_AnData(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1,0,0,0);
				Display_AnData_Sl(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1);
				Display_AnData(&sAnDataBuf_BackUp[12],&sAnDataBuf[12],2,0,0,m_Temp_Conver);

				Display_AnData(&sAnDataBuf_BackUp[16],&sAnDataBuf[16],4,0,0,0);

				//Display_AnData(sAnDataBuf_BackUp,sAnDataBuf,12);
				Display_AnData(m_CloseLb4Buf,pTisMemo->nM2_4.nAd04W3.nData.nWord.nClose_LB4An,1,0,0,0);
				ModBusMulti_WORD(0x00,248, 12 ,sAnDataBuf_BackUp,XR16L784_3CHL);
				//ModBusMulti_WORD(0x00,nXpaDI_Add.nM2_4.nWord,12,(UCHAR *)&pTisMemo->nM2_4.nAd04W1,XR16L784_3CHL);
			}
			break;
		case 6:
			if(!(nItemCnt))
			{
				ModBusMulti_Bit(0x00,nXpaDI_Add.nT_5.nBit,(16*2),(UCHAR *)&pTisMemo->nT_5.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{
				memcpy(sAnDataBuf,&pTisMemo->nT_5.nAd04W1.nData.nTAD04W1[0],8);
				Display_AnData(&sAnDataBuf_BackUp[0],&sAnDataBuf[0],1,1,0,0);
				Display_AnData(&sAnDataBuf_BackUp[2],&sAnDataBuf[2],1,0,0,0);
				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[4],2,0,0,m_Temp_Conver);

				//Display_AnData(sAnDataBuf_BackUp,sAnDataBuf,4);
				ModBusMulti_WORD(0x00,248, 4 ,sAnDataBuf_BackUp,XR16L784_3CHL);
				//ModBusMulti_WORD(0x00,nXpaDI_Add.nT_5.nWord,4,(UCHAR *)&pTisMemo->nT_5.nAd04W1,XR16L784_3CHL);
			}
			break;
		case 7:
			if(!(nItemCnt))
			{
				ModBusMulti_Bit(0x00,nXpaDI_Add.nT_6.nBit,(16*2),(UCHAR *)&pTisMemo->nT_6.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{

				memcpy(sAnDataBuf,&pTisMemo->nT_6.nAd04W1.nData.nTAD04W1[0],8);
				Display_AnData(&sAnDataBuf_BackUp[0],&sAnDataBuf[0],1,1,0,0);
				Display_AnData(&sAnDataBuf_BackUp[2],&sAnDataBuf[2],1,0,0,0);
				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[4],2,0,0,m_Temp_Conver);

				//Display_AnData(sAnDataBuf_BackUp,sAnDataBuf,4);
				ModBusMulti_WORD(0x00,248, 4 ,sAnDataBuf_BackUp,XR16L784_3CHL);
				//ModBusMulti_WORD(0x00,nXpaDI_Add.nT_6.nWord,4,(UCHAR *)&pTisMemo->nT_6.nAd04W1,XR16L784_3CHL);
			}
			break;
		case 8:
			if(!(nItemCnt))
			{
				pTisMemo->nM1_7.nXd16A2.nData.nBit.nCLOSE_LB4 = (MAKE_WORD(m_CloseLb4Buf[0],m_CloseLb4Buf[1]) >= 70) ? 0 : 1;
				pTisMemo->nM1_7.nXd16A1.nData.nM116A1[0] = ~(pTisMemo->nM1_7.nXd16A1.nData.nM116A1[0])&0x03;
				pTisMemo->nM1_7.nXd16A2.nData.nM116A2[0] = ~(pTisMemo->nM1_7.nXd16A2.nData.nM116A2[0]);
				pTisMemo->nM1_7.nXd16A2.nData.nM116A2[1] = ~(pTisMemo->nM1_7.nXd16A2.nData.nM116A2[1]);
				ModBusMulti_Bit(0x00,nXpaDI_Add.nM1_7.nBit,(16*4),(UCHAR *)&pTisMemo->nM1_7.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{
				memcpy(sAnDataBuf,&pTisMemo->nM1_7.nAd04W1.nData.nM1AD04W1[0],24);
				Display_AnData(&sAnDataBuf_BackUp[0],&sAnDataBuf[0],1,0,40,0);
				Display_AnData(&sAnDataBuf_BackUp[2],&sAnDataBuf[2],1,0,10,0);
				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[4],2,0,0,0);

				Display_AnData(&sAnDataBuf_BackUp[8],&sAnDataBuf[8],1,1,0,0);
				//Display_AnData(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1,0,0,0);
				Display_AnData_Sl(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1);
				Display_AnData(&sAnDataBuf_BackUp[12],&sAnDataBuf[12],2,0,0,m_Temp_Conver);

				Display_AnData(&sAnDataBuf_BackUp[16],&sAnDataBuf[16],4,0,0,0);

				//Display_AnData(sAnDataBuf_BackUp,sAnDataBuf,12);
				Display_AnData(m_CloseLb4Buf,pTisMemo->nM1_7.nAd04W3.nData.nWord.nClose_LB4An,1,0,0,0);
				ModBusMulti_WORD(0x00,248, 12 ,sAnDataBuf_BackUp,XR16L784_3CHL);
				//ModBusMulti_WORD(0x00,nXpaDI_Add.nM1_7.nWord,12,(UCHAR *)&pTisMemo->nM1_7.nAd04W1,XR16L784_3CHL);
			}
			break;
		case 9:
			if(!(nItemCnt))
			{
				pTisMemo->nM2_8.nXd16A2.nData.nBit.nCLOSE_LB4 = (MAKE_WORD(m_CloseLb4Buf[0],m_CloseLb4Buf[1]) >= 70) ? 0 : 1;
				pTisMemo->nM2_8.nXd16A1.nData.nM216A1[0] = ~(pTisMemo->nM2_8.nXd16A1.nData.nM216A1[0])&0x03;
				pTisMemo->nM2_8.nXd16A2.nData.nM216A2[0] = ~(pTisMemo->nM2_8.nXd16A2.nData.nM216A2[0]);
				pTisMemo->nM2_8.nXd16A2.nData.nM216A2[1] = ~(pTisMemo->nM2_8.nXd16A2.nData.nM216A2[1]);
				ModBusMulti_Bit(0x00,nXpaDI_Add.nM2_8.nBit,(16*4),(UCHAR *)&pTisMemo->nM2_8.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{
				memcpy(sAnDataBuf,&pTisMemo->nM2_8.nAd04W1.nData.nM2AD04W1[0],24);
				Display_AnData(&sAnDataBuf_BackUp[0],&sAnDataBuf[0],1,0,40,0);
				Display_AnData(&sAnDataBuf_BackUp[2],&sAnDataBuf[2],1,0,10,0);
				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[4],2,0,0,0);

				Display_AnData(&sAnDataBuf_BackUp[8],&sAnDataBuf[8],1,1,0,0);
				//Display_AnData(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1,0,0,0);
				Display_AnData_Sl(&sAnDataBuf_BackUp[10],&sAnDataBuf[10],1);
				Display_AnData(&sAnDataBuf_BackUp[12],&sAnDataBuf[12],2,0,0,m_Temp_Conver);

				Display_AnData(&sAnDataBuf_BackUp[16],&sAnDataBuf[16],4,0,0,0);

				//Display_AnData(sAnDataBuf_BackUp,sAnDataBuf,12);
				Display_AnData(m_CloseLb4Buf,pTisMemo->nM2_8.nAd04W3.nData.nWord.nClose_LB4An,1,0,0,0);
				ModBusMulti_WORD(0x00,248, 12 ,sAnDataBuf_BackUp,XR16L784_3CHL);
				//ModBusMulti_WORD(0x00,nXpaDI_Add.nM2_8.nWord,12,(UCHAR *)&pTisMemo->nM2_8.nAd04W1,XR16L784_3CHL);
			}
			break;
		case 10:
			if(!(nItemCnt))
			{
				pTisMemo->nTC_9.nXd16W1.nData.nBit.nEm_Brake = ~(pTisMemo->nTC_9.nXd16W1.nData.nBit.nEm_Brake);
				pTisMemo->nTC_9.nXd16W1.nData.nBit.nEpands = ~(pTisMemo->nTC_9.nXd16W1.nData.nBit.nEpands);

				ModBusMulti_Bit(0x00,nXpaDI_Add.nTC_9.nBit,(16*5),(UCHAR *)&pTisMemo->nTC_9.nXd16W1,XR16L784_3CHL);
			}
			else if(nItemCnt == 1)
			{
				memcpy(sAnDataBuf,&pTisMemo->nTC_9.nHs02B.nData.nTcHS02B[0],24);

				sTempData = m_Sped_Tc9*((((860*3.14)/90)*3600)/1000000);

				sAnDataBuf_BackUp[0] =WORD_H(sTempData);
				sAnDataBuf_BackUp[1] =WORD_L(sTempData);

				Display_AnData(&sAnDataBuf_BackUp[4],&sAnDataBuf[8],1,1,0,0);
				Display_AnData(&sAnDataBuf_BackUp[6],&sAnDataBuf[10],1,0,0,0);
				sTempAnData = MAKE_WORD(sAnDataBuf_BackUp[6],sAnDataBuf_BackUp[7])-10;
				sTempAnData = (sTempAnData*2)+(sTempAnData/2);

				sAnDataBuf_BackUp[6] = WORD_H(sTempAnData);
				sAnDataBuf_BackUp[7] = WORD_L(sTempAnData);

				Display_AnData(&sAnDataBuf_BackUp[8],&sAnDataBuf[12],2,0,0,m_Temp_Conver);
				Display_AnData(&sAnDataBuf_BackUp[12],&sAnDataBuf[16],4,0,0,0);

				sTempData = MAKE_WORD(sAnDataBuf_BackUp[12],sAnDataBuf_BackUp[13])*3;

				sAnDataBuf_BackUp[12] =  WORD_H(sTempData);
				sAnDataBuf_BackUp[13] =  WORD_L(sTempData);

				ModBusMulti_WORD(0x00,248, 10 ,sAnDataBuf_BackUp,XR16L784_3CHL);

			}
			break;
		case 30:

			sTempVal = (WORD *)&nTemp_Val.nT_0;

			for(i=0;i<20;i++)
			{
				sAnDataBuf_BackUp[(i*2)] = WORD_H(sTempVal[i]);
				sAnDataBuf_BackUp[(i*2)+1] = WORD_L(sTempVal[i]);
			}

			ModBusMulti_WORD(0x00,292, 20 ,sAnDataBuf_BackUp,XR16L784_3CHL);
			break;
		}
	}

}

//**********************************************************************************
// Display_Speed
// V = s/t 
// s = 2∏r/60(hz)  =  X cm 
// t = s(초)
// s(거리) -> Km 변환   s/100000
// t(초)   -> h (시간)   t/3600
//       s/100000          (860*3.14) /60 * 3600
//  v=  ────   =    ──────────  ==  0.162024   
//       t/3600                 1,000,000
//**********************************************************************************
void Display_Speed()
{
	WORD sTempData = 0;
	UCHAR sDataBuf[300];
	PTCCAR_MEMORY sTcDiList;
	USHORT sSpeedVal = 0;
	WORD m_Sped_1 = 0;
	WORD s_Sped_Tc0 = 0;
	WORD s_Sped_Tc9 = 0;

	sSpeedVal = nScreenInf.nWheel; //차륜경 입력 값을 대입 한다.

	NVSRAM_R(XR16L784_8CHL,3,286,sDataBuf);
	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)sDataBuf;

	if(pTisMemo->nTC_0.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	else if(pTisMemo->nTC_9.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
	else
	{
		if(nScreenInf.nCarNum){
			 sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
		else{sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	}

	m_Sped_1 = MAKE_WORD(sTcDiList->nHs02B.nData.nWord.nSpeed[0],sTcDiList->nHs02B.nData.nWord.nSpeed[1]);
	
	sTempData = m_Sped_1;//Display_Speed_Check(m_Sped_Remember,m_Sped_1);

	m_SpeedValue = sTempData*(((((float)sSpeedVal*3.14)/90)*3600)/1000000);

	//m_Sped_Remember = m_Sped_1;
////////////////////////////////////일정 시간 마다 체크 한다./////////
	sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;
	s_Sped_Tc0 = MAKE_WORD(sTcDiList->nHs02B.nData.nWord.nSpeed[0],sTcDiList->nHs02B.nData.nWord.nSpeed[1]);
	m_Sped_Tc0 = s_Sped_Tc0;//Display_Speed_Check(m_Sped_Tc0_Re,s_Sped_Tc0);
	//m_Sped_Tc0_Re = s_Sped_Tc0;

	sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;
	s_Sped_Tc9 = MAKE_WORD(sTcDiList->nHs02B.nData.nWord.nSpeed[0],sTcDiList->nHs02B.nData.nWord.nSpeed[1]);
	m_Sped_Tc9 = s_Sped_Tc9;//Display_Speed_Check(m_Sped_Tc9_Re,s_Sped_Tc9);
	//m_Sped_Tc9_Re = s_Sped_Tc9;


}
//**********************************************************************************
// Display_Speed_Check
//**********************************************************************************
WORD Display_Speed_Check(WORD sOldData,WORD sNowData2)
{
	WORD sIncrease;
	WORD sTempData = 0;
	if(sOldData > sNowData2){
		sIncrease = sOldData-sNowData2;
		sTempData = 0xffff - sIncrease;
	}
	else
	{
		sTempData = sNowData2 - sOldData;
	}

	return sTempData;
}
//**********************************************************************************
// Display_AnData
// 1mv = PLC CNT 3.2767
// 0.1 옴이 1.534mv (4.914)
// 0.4(1도)옴 6.136mv(20.1015)
// 0도 일때 100옴 1.534 v 
// PLC 입력시 2.8 옴 저항값이 감소 하므로 보완 해야 된다.(7도)
//**********************************************************************************
void Display_AnData(UCHAR *pBackUp,UCHAR *pSouData,UCHAR Cnt,UCHAR nBcBrake,UCHAR sChangData,UCHAR sTempData)
{
	int i;
	USHORT sAnDataVal = 0;
	for(i = 0;i < Cnt;i++)
	{
		sAnDataVal = MAKE_WORD(pSouData[(i*2)],pSouData[(i*2)+1]);

		sAnDataVal = sAnDataVal+260;
		if(sAnDataVal > 32767){sAnDataVal = 65535 - sAnDataVal;}
		sAnDataVal = ((sAnDataVal/3276)*10)+((sAnDataVal%3276)/327);

		if(sChangData && !sTempData)
		{
			sAnDataVal = sAnDataVal*sChangData;
			sAnDataVal = sAnDataVal + ((sAnDataVal/10)*7); 
		}
		else if(!sChangData && sTempData)
		{
			sAnDataVal = MAKE_WORD(pSouData[(i*2)],pSouData[(i*2)+1]);

			sAnDataVal = (int )Display_Tem_Vel(sAnDataVal);



			/*
			if((sAnDataVal) >= 5025){
				sAnDataVal = ((sAnDataVal)-5025);
				sAnDataVal = (sAnDataVal)/sTempData;
			}
			else {
				sAnDataVal = (5025-(sAnDataVal));
				sAnDataVal = (sAnDataVal)/sTempData;
				sAnDataVal = 65535 - sAnDataVal;
			}*/
		}
		else if(nBcBrake)
		{
			sAnDataVal = (sAnDataVal-10);
			sAnDataVal = sAnDataVal+(sAnDataVal/2);
		}

		pBackUp[(i*2)] = WORD_H(sAnDataVal); 
		pBackUp[(i*2)+1] = WORD_L(sAnDataVal); 
	}

}

void Display_AnData_Sl(UCHAR *pBackUp,UCHAR *pSouData,UCHAR Cnt)
{
	int i;
	int sAnDataVal = 0;
	int sValCheck = 0;
	for(i = 0;i < Cnt;i++)
	{
		sAnDataVal = MAKE_WORD(pSouData[(i*2)],pSouData[(i*2)+1]);

		if(sAnDataVal > 32767)
		{
			sValCheck = 0;
		}
		else
		{
			sValCheck = 1;
		}

		sAnDataVal = ((sAnDataVal/3276)*10)+((sAnDataVal%3276)/327);

		if(sValCheck){sAnDataVal = sAnDataVal + ((sAnDataVal/10)*6); }
		else{sAnDataVal = sAnDataVal - ((sAnDataVal/10)*6); }
		
		
		pBackUp[(i*2)] = WORD_H(sAnDataVal); 
		pBackUp[(i*2)+1] = WORD_L(sAnDataVal); 
	}

}
//**********************************************************************************
// Display_Fault 고장 기록을 한다.
//**********************************************************************************
void Display_Fault()
{
	//int i;
	int sCnt = 0;
	int sFsilData = 0;
	int sSivData = 0;
	int s43aData = 0;
	UCHAR sFaultBuf[5];
	UCHAR sDataBuf[300];
	UCHAR sFSILBUF[5];
	UCHAR s43aBUF[5];
	UCHAR sSivBuf[5];
	UCHAR sFaultBufGunGa[50];
	int sAddBuf[15] = {1,2,4,8,16,32,64,128,256,512,0};

	PTCCAR_MEMORY sTcDiList;

	PCAR_10R_FAULT sFsilPoint = (CAR_10R_FAULT *) sFaultBuf;

	PCAR_10R_FAULT s43a = (CAR_10R_FAULT *) s43aBUF;

	PCAR_10R_FAULT sSivFault = (CAR_10R_FAULT *) sSivBuf;

	memset(sDataBuf,0x00,300);
	NVSRAM_R(XR16L784_8CHL,3,286,sDataBuf);
	PTIS_MEMORY pTisMemo = (TIS_MEMORY *)sDataBuf;

	memset(sFSILBUF,0x00,5);
	memset(s43aBUF,0x00,5);
	memset(sSivBuf,0x00,5);

	memset(sFaultBufGunGa,0x00,50);

	if(pTisMemo->nTC_0.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	else if(pTisMemo->nTC_9.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
	else
	{
		if(nScreenInf.nCarNum){
			 sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_9;}
		else{sTcDiList =(PTCCAR_MEMORY) &pTisMemo->nTC_0;}
	}

	s43a->nData.nCar10Bit.nCar0_Bit = pTisMemo->nTC_0.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar1_Bit = pTisMemo->nM1_1.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar2_Bit = pTisMemo->nM2_2.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar3_Bit = pTisMemo->nM1_3.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar4_Bit = pTisMemo->nM2_4.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar5_Bit = pTisMemo->nT_5.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar6_Bit = pTisMemo->nT_6.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar7_Bit = pTisMemo->nM1_7.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar8_Bit = pTisMemo->nM2_8.nXd16W1.nData.nBit.n43a;
	s43a->nData.nCar10Bit.nCar9_Bit = pTisMemo->nTC_9.nXd16W1.nData.nBit.n43a;

	sFsilPoint->nData.nCar10Bit.nCar0_Bit = pTisMemo->nTC_0.nXd16W1.nData.nBit.nVehicle_Fsil;
	sFsilPoint->nData.nCar10Bit.nCar1_Bit = pTisMemo->nM1_1.nXd16W1.nData.nBit.nVEHICLE_FSIL;
	sFsilPoint->nData.nCar10Bit.nCar2_Bit = pTisMemo->nM2_2.nXd16W1.nData.nBit.nVEHICLE_FSIL;
	sFsilPoint->nData.nCar10Bit.nCar3_Bit = pTisMemo->nM1_3.nXd16W1.nData.nBit.nVEHICLE_FSIL;
	sFsilPoint->nData.nCar10Bit.nCar4_Bit = pTisMemo->nM2_4.nXd16W1.nData.nBit.nVEHICLE_FSIL;
	sFsilPoint->nData.nCar10Bit.nCar5_Bit = pTisMemo->nT_5.nXd16W1.nData.nBit.nVEHICLE_FSIL;
	sFsilPoint->nData.nCar10Bit.nCar6_Bit = pTisMemo->nT_6.nXd16W1.nData.nBit.nVEHICLE_FSIL;
	sFsilPoint->nData.nCar10Bit.nCar7_Bit = pTisMemo->nM1_7.nXd16W1.nData.nBit.nVEHICLE_FSIL;
	sFsilPoint->nData.nCar10Bit.nCar8_Bit = pTisMemo->nM2_8.nXd16W1.nData.nBit.nVEHICLE_FSIL;
	sFsilPoint->nData.nCar10Bit.nCar9_Bit = pTisMemo->nTC_9.nXd16W1.nData.nBit.nVehicle_Fsil;

	sSivFault->nData.nCar10Bit.nCar1_Bit = pTisMemo->nM1_1.nXd16W1.nData.nBit.nASK;
	sSivFault->nData.nCar10Bit.nCar3_Bit = pTisMemo->nM1_3.nXd16W1.nData.nBit.nASK;
	sSivFault->nData.nCar10Bit.nCar7_Bit = pTisMemo->nM1_7.nXd16W1.nData.nBit.nASK;

	s43aData = MAKE_WORD(s43a->nData.nFaultBuf[1],s43a->nData.nFaultBuf[0]);

	sFsilData = MAKE_WORD(sFsilPoint->nData.nFaultBuf[1],sFsilPoint->nData.nFaultBuf[0]);

	sSivData = MAKE_WORD(sSivFault->nData.nFaultBuf[1],sSivFault->nData.nFaultBuf[0]);
	////////////제동 불완해////////////////////////
	if(s43aData && sTcDiList->nXd16W2.nData.nBit.nBPR)
	{
		if(s43aData != nPault.n14Fa.nFaultRE)
		{	
			nPault.s14Fa_TimeCnt.nFaultRE = 1;

			if(nPault.s14Fa_TimeCnt.nFaultCnt >= 60)
			{

				Display_Fault_Cnt(s43aData,&nPault.n14Fa.nFaultCnt);

				if(WORD_L(nPault.n14Fa.nFaultCnt) >= 10){
					nPault.n14Fa.nFaultRE = s43aData;
					nPault.n14Fa.nFaultCnt = 0;

					pCdmaPro.nSendFlag = pCdmaPro.nEmFlae ? 1 : 0; //고장 방생에 따른 문자 전송 

				}
				else{
					sFaultBufGunGa[sCnt] = WORD_H(sAddBuf[nPault.n14Fa.nFaultCnt]);				   
					sFaultBufGunGa[(sCnt+1)] = WORD_L(sAddBuf[nPault.n14Fa.nFaultCnt]);
		
					nPault.n14Fa.nFaultCnt++;

				}
			}
		}
		else
		{
			nPault.s14Fa_TimeCnt.nFaultCnt = 0;
		}

		sCnt = sCnt +2; 
	}
	else 
	{
		nPault.n14Fa.nFaultRE = 0; nPault.n14Fa.nFaultCnt = 0; sCnt = sCnt +2;
		nPault.s14Fa_TimeCnt.nFaultRE = 0;
		nPault.s14Fa_TimeCnt.nFaultCnt = 0;
	} 

	////////////LBTL,FSIL////////////////////////
	if(sTcDiList->nXd16W3.nData.nBit.nLBTL && !sTcDiList->nXd16W3.nData.nBit.nCOTL && sFsilData)
	{

		if(sFsilData != nPault.n19Fa.nFaultRE)
		{
			nPault.n19Fa.nFaultTimeCnt++;

			if(WORD_L(nPault.n19Fa.nFaultTimeCnt) >= 20) //고장 발생이 일정 시간 지속 되면 고장을 처리 한다.
			{

				Display_Fault_Cnt(sFsilData,&nPault.n19Fa.nFaultCnt);

				if(nPault.n19Fa.nFaultCnt >= 10)
				{
					nPault.n19Fa.nFaultRE = sFsilData;
					nPault.n19Fa.nFaultCnt = 0;
					nPault.n19Fa.nFaultTimeCnt = 0;
					pCdmaPro.nSendFlag = pCdmaPro.nEmFlae ? 1 : 0; //고장 방생에 따른 문자 전송 
				}
				else
				{
					sFaultBufGunGa[sCnt] = WORD_H(sAddBuf[nPault.n19Fa.nFaultCnt]);   
					sFaultBufGunGa[(sCnt+1)] = WORD_L(sAddBuf[nPault.n19Fa.nFaultCnt]);

					nPault.n19Fa.nFaultCnt++;

				}
			}
		}

		sCnt = sCnt +2; 
	}
	else {nPault.n19Fa.nFaultRE = 0; nPault.n19Fa.nFaultCnt = 0; nPault.n19Fa.nFaultTimeCnt = 0; sCnt = sCnt +2;  }
	
	////////////LBTL////////////////////////	
	if((sTcDiList->nXd16W3.nData.nBit.nLBTL)&0x01)
	{
		nPault.n20Fa.nFaultTimeCnt++;

		if(WORD_L(nPault.n20Fa.nFaultTimeCnt) >= 10)
		{
			if((sTcDiList->nXd16W3.nData.nBit.nLBTL)&0x01 && (!nPault.n20Fa.nFaultRE))
			{
				nPault.n20Fa.nFaultRE = 1;
				sFaultBufGunGa[sCnt] = 0;
				sCnt++;
				sFaultBufGunGa[sCnt] = 1;
				sCnt++;

				pCdmaPro.nSendFlag = pCdmaPro.nEmFlae ? 1 : 0; //고장 방생에 따른 문자 전송 
				nPault.n20Fa.nFaultTimeCnt = 0;

			}
			else
			{
				sCnt = sCnt +2;
			}
		}
		else
		{
			sCnt = sCnt +2; 
		}
	}
	else{
		sCnt = sCnt +2; 
		nPault.n20Fa.nFaultRE = 0;
		nPault.n20Fa.nFaultTimeCnt = 0;
	}

	
	////////////LBTL,COTL,FSIL//////////////////////// 
	if(sTcDiList->nXd16W3.nData.nBit.nLBTL && sTcDiList->nXd16W3.nData.nBit.nCOTL && sFsilData)
	{
		if(sFsilData != nPault.n21Fa.nFaultRE)
		{

			nPault.n21Fa.nFaultTimeCnt++;
			if(WORD_L(nPault.n21Fa.nFaultTimeCnt) >= 10)
			{
				Display_Fault_Cnt(sFsilData,&nPault.n21Fa.nFaultCnt);

				if(nPault.n21Fa.nFaultCnt >= 10)
				{
					nPault.n21Fa.nFaultRE = sFsilData;
					nPault.n21Fa.nFaultCnt = 0;
					nPault.n21Fa.nFaultTimeCnt = 0;
					pCdmaPro.nSendFlag = pCdmaPro.nEmFlae ? 1 : 0; //고장 방생에 따른 문자 전송 
				}
				else
				{
					sFaultBufGunGa[sCnt] = WORD_H(sAddBuf[nPault.n21Fa.nFaultCnt]);
					sFaultBufGunGa[(sCnt+1)] = WORD_L(sAddBuf[nPault.n21Fa.nFaultCnt]);

					nPault.n21Fa.nFaultCnt++;

				}
			}
		}

		sCnt = sCnt +2; 
	}
	else{nPault.n21Fa.nFaultRE = 0;  nPault.n21Fa.nFaultCnt = 0; nPault.n21Fa.nFaultTimeCnt = 0; sCnt = sCnt +2; }

	////////////ASF////////////////////////
	if(sTcDiList->nXd16W3.nData.nBit.nASF)
	{
		nPault.n23Fa.nFaultTimeCnt++;

		if(WORD_L(nPault.n23Fa.nFaultTimeCnt) >= 10)
		{
			if(sTcDiList->nXd16W3.nData.nBit.nASF && (!nPault.n23Fa.nFaultRE))
			{

				sFaultBufGunGa[sCnt] = 0;
				sCnt++;
				sFaultBufGunGa[sCnt] = 1;
				sCnt++;
				nPault.n23Fa.nFaultRE = 1;

				nPault.n23Fa.nFaultTimeCnt = 0;
				pCdmaPro.nSendFlag = pCdmaPro.nEmFlae ? 1 : 0; //고장 방생에 따른 문자 전송 
			}
			else
			{
				sCnt = sCnt +2;  
			}
		}
		else
		{
			sCnt = sCnt +2;  
		}
	}
	else{
		sCnt = sCnt +2;  
		nPault.n23Fa.nFaultRE = 0;
		nPault.n23Fa.nFaultTimeCnt = 0;
	}
	////////////LBTL,ASF,FSIL////////////////////////
	if(sTcDiList->nXd16W3.nData.nBit.nLBTL && sTcDiList->nXd16W3.nData.nBit.nASF && sFsilData)
	{

		if(sFsilData != nPault.n24Fa.nFaultRE)
		{
			nPault.n24Fa.nFaultTimeCnt++;
			if(WORD_L(nPault.n24Fa.nFaultTimeCnt) >= 10)
			{

				Display_Fault_Cnt(sFsilData,&nPault.n24Fa.nFaultCnt);

				if(nPault.n24Fa.nFaultCnt >= 10)
				{
					nPault.n24Fa.nFaultRE = sFsilData;
					nPault.n24Fa.nFaultCnt = 0;

					nPault.n24Fa.nFaultTimeCnt = 0;
					pCdmaPro.nSendFlag = pCdmaPro.nEmFlae ? 1 : 0; //고장 방생에 따른 문자 전송 
				}
				else
				{
					sFaultBufGunGa[sCnt] = WORD_H(sAddBuf[nPault.n24Fa.nFaultCnt]);
					sFaultBufGunGa[(sCnt+1)] = WORD_L(sAddBuf[nPault.n24Fa.nFaultCnt]);
					nPault.n24Fa.nFaultCnt++;

				}
			}
		}
		sCnt = sCnt +2; 
	}
	else {nPault.n24Fa.nFaultRE = 0; nPault.n24Fa.nFaultCnt = 0; nPault.n24Fa.nFaultTimeCnt = 0; sCnt = sCnt +2; }
	////////////SIV기동 정지////////////////////////
	if(sSivData && sTcDiList->nXd16W3.nData.nBit.nASF)
	{

		if(sSivData != nPault.n26Fa.nFaultRE)
		{

			nPault.n26Fa.nFaultTimeCnt++;

			if(WORD_L(nPault.n26Fa.nFaultTimeCnt) >= 10)
			{
				Display_Fault_Cnt(sSivData,&nPault.n26Fa.nFaultCnt);

				if(nPault.n26Fa.nFaultCnt >= 10)
				{
					nPault.n26Fa.nFaultRE = sSivData;
					nPault.n26Fa.nFaultCnt = 0;

					nPault.n26Fa.nFaultTimeCnt = 0;
					pCdmaPro.nSendFlag = pCdmaPro.nEmFlae ? 1 : 0; //고장 방생에 따른 문자 전송 
				}
				else
				{
					sFaultBufGunGa[sCnt] = WORD_H(sAddBuf[nPault.n26Fa.nFaultCnt]);
					sFaultBufGunGa[(sCnt+1)] = WORD_L(sAddBuf[nPault.n26Fa.nFaultCnt]);

					nPault.n26Fa.nFaultCnt++;

				}
			}
		}
		sCnt = sCnt +2; 
	}
	else {nPault.n26Fa.nFaultRE = 0; nPault.n26Fa.nFaultCnt = 0; nPault.n26Fa.nFaultTimeCnt = 0; sCnt = sCnt +2; }
	////////////AISUS,FSIL////////////////////////
	if(sTcDiList->nXd16W3.nData.nBit.nAISUS && sFsilData)
	{
		if(sFsilData != nPault.n29Fa.nFaultRE)
		{
			nPault.n29Fa.nFaultTimeCnt++;

			if(WORD_L(nPault.n29Fa.nFaultTimeCnt) >= 10)
			{

				Display_Fault_Cnt(sFsilData,&nPault.n29Fa.nFaultCnt);
				if(nPault.n29Fa.nFaultCnt >= 10)
				{
					nPault.n29Fa.nFaultRE = sFsilData;
					nPault.n29Fa.nFaultCnt = 0;
					nPault.n29Fa.nFaultTimeCnt = 0;
				}
				else
				{
					sFaultBufGunGa[sCnt] = WORD_H(sAddBuf[nPault.n29Fa.nFaultCnt]);
					sFaultBufGunGa[(sCnt+1)] = WORD_L(sAddBuf[nPault.n29Fa.nFaultCnt]);

					nPault.n29Fa.nFaultCnt++;

				}
			}
		}

		sCnt = sCnt +2; 
	}
	else{nPault.n29Fa.nFaultRE = 0;  nPault.n29Fa.nFaultCnt = 0; nPault.n29Fa.nFaultTimeCnt = 0; sCnt = sCnt +2; }

	ModBusMulti_WORD(0x00,230,sCnt/2,(UCHAR *)sFaultBufGunGa,XR16L784_3CHL);

}
//**********************************************************************************
// Display_Fault_Cnt
//**********************************************************************************
void Display_Fault_Cnt(int fData,UCHAR *pCnt)
{
	int i;
	for(i = *pCnt;i<=10;i++)
	{ 
		if((fData >> i)&0x01 ){ *pCnt = i; break; }
		else{*pCnt = i; }
	}
}
//**********************************************************************************
// Display_Tem_Vel
//**********************************************************************************
float Display_Tem_Vel(USHORT nTem_Ad)
{
	float Rth = 0;
	int Rth0 = 10000;
	int R_fixed = 10000;
	int V_fixed = 5.0; 
	int B_constant = 3435; 
	float T0 = 273.16 + 25;      
	float Temp_Heatsink_V = 0;
	float sTemp_Vel = 0;

	//sTemp_Vel = nTem_Ad/32;
	sTemp_Vel = ((nTem_Ad/3276)*10)+((nTem_Ad%3276)/327);
	sTemp_Vel = sTemp_Vel * 0.1;
	//sTemp_Vel = 2.5;

	//Rth = (R_fixed * nTem_Ad) / (V_fixed - nTem_Ad);
	Rth = (R_fixed * sTemp_Vel) / (V_fixed - sTemp_Vel);
	Temp_Heatsink_V = (B_constant * T0) / (T0 * (log(Rth/Rth0)) + B_constant) - 273.16;

	return Temp_Heatsink_V;

}
//**********************************************************************************
// Timer Interrupt
//**********************************************************************************
void Display_Time()
{

	Dis_Time_Cnt++;

	if(!(Dis_Time_Cnt%200))
	{
		m_Speed1SecFlag = TRUE; 	
	}

	if(!(Dis_Time_Cnt%1000)) 
	{

		if(nScreenInf.nRecodeFlag)
		{
			m_RecodePerCent++;
		}

		if(nPault.s14Fa_TimeCnt.nFaultRE)
		{
			nPault.s14Fa_TimeCnt.nFaultCnt++;
		}
		else{nPault.s14Fa_TimeCnt.nFaultCnt = 0; }

		if(nScreenInf.nB0_7_Time){
			nScreenInf.nB0_7_Time_Cnt++; 
			nScreenInf.nB0_7_Time_Cnt = (nScreenInf.nB0_7_Time_Cnt > 10) ? 10 : nScreenInf.nB0_7_Time_Cnt;
		}
		else{nScreenInf.nB0_7_Time_Cnt = 0; }

	}
}

