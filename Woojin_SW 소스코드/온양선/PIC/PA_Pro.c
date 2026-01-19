//*****************************************************************************************
//	2011년 10월 24일 : 방송 수신이 없을 경우 TCMS 방송 고장 현시(2011_10_24)
//*****************************************************************************************
#include "string.h"
#include "stdio.h"
#include "stdarg.h"
#include "def.h"
#include "main.h"
#include "string.h"
#include "xr16788.h"
#include "GpProface.h"
#include "saf82532.h"
#include "PA_Pro.h"
#include "user.h"
#include "LED_DOWNLOAD.h"

extern XR16788_INIT_SHAPE Xr16788_1Ch;
extern TRAN_STATION_INFO nTr_St_Info;
extern DI_CHECK nDi_Check;
extern PSS_TCMS_SD nPssTcmsTxData;
extern TCMS_IDC_INFO nTcmsIdcInfo;
extern SELETC_BUTTON nSelect_Button;
extern SCC_SEND_FLAG nSccSendFlag;
extern IDC_ROM_WRITE Idc_Load;
extern LED_DATA_DOWNLOAD nLedDataLoad;

UCHAR nMc1_Flag = 1;
UCHAR nPaTimeCnt = 0;
UCHAR m_PA_SccTxCnt = 0;

UCHAR m_PA_SelfTest_Buf[30];
UCHAR m_PA_M1_Cnt = 0;
UCHAR m_PA_M2_Cnt = 0;

UCHAR m_PA_Tx_Flag = 0;
UCHAR m_PA_Self_Tcms_Tx_Info = 0;
//************************************************************************************
//	Pa_Pro_Init
//************************************************************************************
void Pa_Pro_Init()
{


}
//************************************************************************************
//	Pa_MainPro
//************************************************************************************
void Pa_MainPro()
{
	UCHAR sData[25];
	if(!(nPaTimeCnt%500) && (!Idc_Load.nIDC_ROM_Flag) && (!nLedDataLoad.nSDDSelt) && (!nLedDataLoad.nFDDSelt))
	{
		memset(sData,0x00,25);
		nPaTimeCnt++;

		Pa_TxData_Pro(sData,Xr16788_1Ch.nRxBuf_BackUp);
		memcpy(nTr_St_Info.nPaTxDataBuf,sData,21);
		nTr_St_Info.nPaTxDataBuf[21] = (m_PA_SccTxCnt%256);
		saf82532_Send(SAB82532_ACH,sData,21);
		m_PA_SccTxCnt++;

		if(WORD_L(m_PA_SccTxCnt) > 20){
			DO0 = 1; //2012_03_12 
			nPssTcmsTxData.PA_IDC_Falt_1.BIT.n1PA_1 = 1;
		}
		else
		{
			DO0 = 0; //2012_03_12
		}

	}

}
//************************************************************************************
//	
//************************************************************************************

void Pa_RxData_Pro(UCHAR *pData)
{
	PPA_PIS_TXDATA nPaSd = (PA_PIS_TXDATA *) pData;

	UCHAR sDataBuf[30];
	memset(sDataBuf,0x00,30);


	m_PA_SccTxCnt = 0; // 2011_10_24
	sDataBuf[0] = nPaSd->TEST_03_Falt.n2COB_1;
	sDataBuf[1] = nPaSd->TEST_03_Falt.n6COB_2;
	sDataBuf[2] = nPaSd->TEST_03_Falt.n3SOBL_1;
	sDataBuf[3] = nPaSd->TEST_03_Falt.n7SOBL_2;
	sDataBuf[4] = nPaSd->TEST_03_Falt.n4SOBR_1;
	sDataBuf[5] = nPaSd->TEST_03_Falt.n8SOBR_2;

	sDataBuf[6] = nPaSd->TEST_04_Falt.n1EI1_1;
	sDataBuf[7] = nPaSd->TEST_04_Falt.n2EI2_1;
	sDataBuf[8] = nPaSd->TEST_04_Falt.n3EI3_1;
	sDataBuf[9] = nPaSd->TEST_04_Falt.n4EI4_1;

	sDataBuf[10] = nPaSd->TEST_05_Falt.n1EI1_2;
	sDataBuf[11] = nPaSd->TEST_05_Falt.n2EI2_2;
	sDataBuf[12] = nPaSd->TEST_05_Falt.n3EI3_2;
	sDataBuf[13] = nPaSd->TEST_05_Falt.n4EI4_2;

	sDataBuf[14] = nPaSd->TEST_06_Falt.n1AMP1;
	sDataBuf[15] = nPaSd->TEST_06_Falt.n2AMP2;
	sDataBuf[16] = nPaSd->TEST_06_Falt.n3AMP3;
	sDataBuf[17] = nPaSd->TEST_06_Falt.n4AMP4;

	sDataBuf[18] = nPaSd->TEST_10_Falt.n1IFV1_1;
	sDataBuf[19] = nPaSd->TEST_10_Falt.n2IFV1_2;
	sDataBuf[20] = nPaSd->TEST_10_Falt.n3IFV1_3;
	sDataBuf[21] = nPaSd->TEST_10_Falt.n4IFV1_4;
	sDataBuf[22] = nPaSd->TEST_10_Falt.n5IFV2_1;
	sDataBuf[23] = nPaSd->TEST_10_Falt.n6IFV2_2;
	sDataBuf[24] = nPaSd->TEST_10_Falt.n7IFV2_3;
	sDataBuf[25] = nPaSd->TEST_10_Falt.n8IFV2_4;

	sDataBuf[26] = nPaSd->TEST_11_Falt.n2IFV3_2;
	sDataBuf[27] = nPaSd->TEST_11_Falt.n3IFV3_3;
	sDataBuf[28] = nPaSd->TEST_11_Falt.n6IFV4_2;
	sDataBuf[29] = nPaSd->TEST_11_Falt.n7IFV4_3;

	if( WORD_L(pData[4]) || WORD_L(pData[5]) || WORD_L(pData[6]) || WORD_L(pData[7])){m_PA_Self_Tcms_Tx_Info++; }
	else 
	{
		m_PA_Self_Tcms_Tx_Info=0;

		nPssTcmsTxData.PA_IDC_Falt_1.BYTE = 0;
		nPssTcmsTxData.PA_IDC_Falt_2.BYTE = 0;
		nPssTcmsTxData.PA_IDC_Falt_3.BYTE = 0;
	}

	//if( (!m_PA_Self_Tcms_Tx_Info)|| m_PA_Self_Tcms_Tx_Info>10)
	if(WORD_L(m_PA_Self_Tcms_Tx_Info)>10)  //고장 카운터가 10회 이상 지속 될때 고장을 전송 한다.
	{
		nPssTcmsTxData.PA_IDC_Falt_1.BIT.n1PA_1 =   nPaSd->TEST_03_Falt.n1PAVC_1;
		nPssTcmsTxData.PA_IDC_Falt_1.BIT.n2PA_4 =   nPaSd->TEST_03_Falt.n5PAVC_2;
		nPssTcmsTxData.PA_IDC_Falt_1.BIT.n3COB_1 =  nPaSd->TEST_03_Falt.n2COB_1;
		nPssTcmsTxData.PA_IDC_Falt_1.BIT.n4COB_4 =  nPaSd->TEST_03_Falt.n6COB_2;
		nPssTcmsTxData.PA_IDC_Falt_1.BIT.n5SOBL_1 = nPaSd->TEST_03_Falt.n3SOBL_1;
		nPssTcmsTxData.PA_IDC_Falt_1.BIT.n6SOBL_4 = nPaSd->TEST_03_Falt.n7SOBL_2;
		nPssTcmsTxData.PA_IDC_Falt_1.BIT.n7SOBR_1 = nPaSd->TEST_03_Falt.n4SOBR_1;
		nPssTcmsTxData.PA_IDC_Falt_1.BIT.n8SOBR_4 = nPaSd->TEST_03_Falt.n8SOBR_2;
	

		nPssTcmsTxData.PA_IDC_Falt_2.BIT.n1Pow_Amp_1 = nPaSd->TEST_06_Falt.n1AMP1;
		nPssTcmsTxData.PA_IDC_Falt_2.BIT.n2Pow_Amp_2 = nPaSd->TEST_06_Falt.n2AMP2;
		nPssTcmsTxData.PA_IDC_Falt_2.BIT.n3Pow_Amp_3 = nPaSd->TEST_06_Falt.n3AMP3;
		nPssTcmsTxData.PA_IDC_Falt_2.BIT.n4Pow_Amp_4 = nPaSd->TEST_06_Falt.n4AMP4;

		nPssTcmsTxData.PA_IDC_Falt_3.BIT.n1EM_Phon_1 = (nPaSd->TEST_04_Falt.n1EI1_1 || nPaSd->TEST_05_Falt.n1EI1_2) ? 1 : 0;
		nPssTcmsTxData.PA_IDC_Falt_3.BIT.n2EM_Phon_2 = (nPaSd->TEST_04_Falt.n2EI2_1 || nPaSd->TEST_05_Falt.n2EI2_2) ? 1 : 0;
		nPssTcmsTxData.PA_IDC_Falt_3.BIT.n3EM_Phon_3 = (nPaSd->TEST_04_Falt.n3EI3_1 || nPaSd->TEST_05_Falt.n3EI3_2) ? 1 : 0;
		nPssTcmsTxData.PA_IDC_Falt_3.BIT.n4EM_Phon_4 = (nPaSd->TEST_04_Falt.n4EI4_1 || nPaSd->TEST_05_Falt.n4EI4_2) ? 1 : 0;

	}

	//2012_03_12
	if(nTcmsIdcInfo.nIDCFlag)
	{

		nPssTcmsTxData.nTCR_DATA.nTCR_DATA_1 = nPaSd->nTCR_DATA.nTCR_DATA_1;
		nPssTcmsTxData.nTCR_DATA.nTCR_DATA_2 = nPaSd->nTCR_DATA.nTCR_DATA_2;
	}

	memcpy(m_PA_SelfTest_Buf,sDataBuf,30);

}
//************************************************************************************
//	Pa_TxData_Pro
//************************************************************************************/
UCHAR d_paM_Data = 0;
void Pa_TxData_Pro(UCHAR *pData,UCHAR *pRxData)
{

	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;

	PPIS_PA_TXDATA nPaSdr = (PIS_PA_TXDATA *) pData;
	TCMS_PSS pTcmsRxData = (SCC_TCMS *)pRxData;

	memset(pData,0x00,22);

	nPaSdr->nSTX = 0x02;
	nPaSdr->nPA_ADD = 0x50;
	nPaSdr->nPIC_ADD = 0x40;
	nPaSdr->nSDR_Code = 0x20;

	szBuf[0] = 0;

	//if(WORD_L(nTr_St_Info.nTcmsRxNGCnt) <= 5)//TCMS 통신 고장 이면 아무것도 하지 않는다.
	//{
		nPaSdr->TEXT_03.n1Mster_Active = (WORD_L(pTcmsRxData->nST_Code) == 0x20) ? 1 : 0 ;//시험 운전 090527
		//nPaSdr->TEXT_03.n1Mster_Active = (WORD_L(nDi_Check.nTcr.nFlag)) ? 1 : 0 ;//시험 운전 090527
		nPaSdr->TEXT_03.n4Fire = pTcmsRxData->BIT.nFirCode;
		nPaSdr->TEXT_03.n5ICR_DI = nDi_Check.nIcr.nFlag ? 1 : 0;
		nPaSdr->TEXT_03.n6ICR_Flag = pTcmsRxData->BIT.nIDCFlag;
		nPaSdr->nLine_Num = 0; // 처리 방식 모름.
		//nPaSdr->nNow_ST = pTcmsRxData->nNowCod || nTr_St_Info.nNow.nCode;  //시뮬레이션
		nPaSdr->nNow_ST = nTr_St_Info.nNow.nCode +1;  //시뮬레이션
		nPaSdr->nPR_Num = 0;//처리 방식 모름.
		//nPaSdr->nNext_ST = pTcmsRxData->nNexCod || nTr_St_Info.nNext.nCode;//시뮬레이션
		nPaSdr->nNext_ST = nTr_St_Info.nNext.nCode+1;//시뮬레이션
		//nPaSdr->nDest_ST = pTcmsRxData->nDetCod || nTr_St_Info.nDest.nCode;//시뮬레이션
		nPaSdr->nDest_ST = nTr_St_Info.nDest.nCode+1;//시뮬레이션

		nPaSdr->TEXT_09.n1Door_LR = nDi_Check.nDoor.nFlag;
		nPaSdr->TEXT_09.n2DCW = nDi_Check.nDoor.nFlag;
		nPaSdr->TEXT_09.n3DOW = !nDi_Check.nDoor.nFlag;

		if(nSccSendFlag.nPaSendStartFlag)
		{
			//nPaSdr->TEXT_09.n4BR_Start = nSccSendFlag.nIM_Text.nTxFlag;
			if(nSccSendFlag.nPaSendTxCnt)
			{
				nSccSendFlag.nPaSendTxCnt--;
				nPaSdr->TEXT_09.n4BR_Start = 1;
				nPaSdr->TEXT_09.n5BR_Finish = 0;
			}
			else
			{
				nPaSdr->TEXT_09.n4BR_Start = 0;
				nPaSdr->TEXT_09.n5BR_Finish = 0;
				nSccSendFlag.nPaSendStartFlag = FALSE;
				nSccSendFlag.nPaSendEndFlag = FALSE;

			}

			/*sprintf(szBuf2,"-PA TX protocol : Now[%02X]H : Next[%02X]H : Dest[%02X]H : Start[%02X]H",
				WORD_L(nTr_St_Info.nNow.nCode+1),WORD_L(nTr_St_Info.nNext.nCode+1),WORD_L(nTr_St_Info.nDest.nCode+1),WORD_L(nPaSdr->TEXT_09.n4BR_Start));
			strcat(szBuf,szBuf2);
			sdebugFlag = TRUE;*/
		
		}
		else if(nSccSendFlag.nPaSendEndFlag)
		{
			//nPaSdr->TEXT_09.n5BR_Finish = nSccSendFlag.nIM_Text.nTxFlag;
			if(nSccSendFlag.nPaSendTxCnt)
			{
				nSccSendFlag.nPaSendTxCnt--;
				nPaSdr->TEXT_09.n4BR_Start = 0;
				nPaSdr->TEXT_09.n5BR_Finish = 1;
			}
			else
			{
				nPaSdr->TEXT_09.n4BR_Start = 0;
				nPaSdr->TEXT_09.n5BR_Finish = 0;
				nSccSendFlag.nPaSendStartFlag = FALSE;
				nSccSendFlag.nPaSendEndFlag = FALSE;
			}

			/*sprintf(szBuf2,"-PA TX protocol : Now[%02X]H : Next[%02X]H : Dest[%02X]H : Finish[%02X]H",
				WORD_L(nTr_St_Info.nNow.nCode+1),WORD_L(nTr_St_Info.nNext.nCode+1),WORD_L(nTr_St_Info.nDest.nCode+1),WORD_L(nPaSdr->TEXT_09.n5BR_Finish));
			strcat(szBuf,szBuf2);
			sdebugFlag = TRUE;*/
		}

		nPaSdr->TEXT_09.n6INFO = 0;
		nPaSdr->TEXT_09.n7RM = 0;
		
		nPaSdr->TEST_10.n1PDT1 = 0;
		nPaSdr->TEST_10.n2PDT2 = 0;
		nPaSdr->TEST_10.n3SNDChk = 0;
		nPaSdr->TEST_10.n5StarST_PA = 0;
		
		//nPaSdr->nTramNum[0] = MAKE_BYTE(WORD_L(pTcmsRxData->nTrnBuf[0])-0x30,WORD_L(pTcmsRxData->nTrnBuf[1])-0x30);
		//nPaSdr->nTramNum[1] = MAKE_BYTE(WORD_L(pTcmsRxData->nTrnBuf[2])-0x30,WORD_L(pTcmsRxData->nTrnBuf[3])-0x30);
		nPaSdr->nTramNum[0] = MAKE_BYTE(WORD_L(nSelect_Button.nGPTranNumInput.nASC_NumBuf[1])-0x30,WORD_L(nSelect_Button.nGPTranNumInput.nASC_NumBuf[2])-0x30);
		nPaSdr->nTramNum[1] = MAKE_BYTE(WORD_L(nSelect_Button.nGPTranNumInput.nASC_NumBuf[3])-0x30,WORD_L(nSelect_Button.nGPTranNumInput.nASC_NumBuf[4])-0x30);

		nPaSdr->nDistNUM[0] = WORD_H(nTr_St_Info.nDistance);
		nPaSdr->nDistNUM[1] = WORD_L(nTr_St_Info.nDistance);
		
		if(nTcmsIdcInfo.nIDCFlag)
		{
			nPaSdr->nTCR_DATA.nTCR_DATA_1 = pTcmsRxData->nTCR_DATA.nTCR_DATA_1;
			nPaSdr->nTCR_DATA.nTCR_DATA_2 = pTcmsRxData->nTCR_DATA.nTCR_DATA_2;
		}

		/*if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }*/

	//}

	nPaSdr->nETX = 0x03;

	
	MakeBcc(&pData[1],18);

}
//************************************************************************************
//	Pa_Time1ms
//************************************************************************************

void Pa_Time1ms()
{
	nPaTimeCnt++;
}


