#ifndef _PA_Pro_H_
#define _PA_Pro_H_

void Pa_Pro_Init();
void Pa_RxData_Pro(UCHAR *pData);
void Pa_TxData_Pro(UCHAR *pData,UCHAR *pRxData);
void Pa_Time1ms();
void Pa_MainPro();

typedef struct
{
	struct
	{
		UINT n1EM1_1 : 1;
		UINT n2EM2_1 : 1;
		UINT n3EM3_1 : 1;
		UINT n4EM4_1 : 1;
		UINT n5EMSW : 1;
		UINT n6TCRCallFinish : 1;
		UINT n7EMCallFinish : 1;
		UINT n8sp : 1;
	}nTCR_DATA_1;

	struct
	{
		UINT n1EM1_2 : 1;
		UINT n2EM2_2 : 1;
		UINT n3EM3_2 : 1;
		UINT n4EM4_2 : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1;
	}nTCR_DATA_2;
}PA_ICR_INFO;


typedef struct
{
	UCHAR nSTX;
	UCHAR nPA_ADD;
	UCHAR nPIC_ADD;
	UCHAR nSDR_Code;
	struct
	{
		UINT n1Mster_Active : 1;
		UINT n2sp:1;
		UINT n3EM_Call_End : 1;
		UINT n4Fire : 1;
		UINT n5ICR_DI : 1;	//중연 차량 가운데 차량.
		UINT n6ICR_Flag : 1; //중연 중인지를 알려 준다.
		UINT n7sp1 : 1;
		UINT n8sp2 : 1;
	}TEXT_03;
	UCHAR nLine_Num;
	UCHAR nNow_ST;
	UCHAR nPR_Num;
	UCHAR nNext_ST;
	UCHAR nDest_ST;
	struct
	{
		UINT n1Door_LR : 1;	//출입문 열린 방향.
		UINT n2DCW : 1;
		UINT n3DOW : 1;
		UINT n4BR_Start : 1;
		UINT n5BR_Finish : 1;
		UINT n6INFO : 1;
		UINT n7RM : 1;
		UINT n8sp : 1;
	}TEXT_09;
	struct
	{
		UINT n1PDT1 : 1;
		UINT n2PDT2 : 1;
		UINT n3SNDChk : 1;
		UINT n4sp : 1;
		UINT n5StarST_PA : 1;//시발역 안내 방송
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1;
	}TEST_10;
	UCHAR nTramNum[2];
	UCHAR nDistNUM[2];
	PA_ICR_INFO nTCR_DATA;
	
	UCHAR nETX;

}PIS_PA_TXDATA,*PPIS_PA_TXDATA;

typedef struct
{
	UCHAR nSTX;
	UCHAR nPIC_ADD;
	UCHAR nPA_ADD;
	UCHAR nSD_Code;
	struct
	{
		UINT n1PAVC_1 : 1;
		UINT n2COB_1 : 1;
		UINT n3SOBL_1 : 1;
		UINT n4SOBR_1 : 1;
		UINT n5PAVC_2 : 1;
		UINT n6COB_2 : 1;
		UINT n7SOBL_2 : 1;
		UINT n8SOBR_2 : 1; 
	}TEST_03_Falt;

	struct
	{
		UINT n1EI1_1 : 1;
		UINT n2EI2_1 : 1;
		UINT n3EI3_1 : 1;
		UINT n4EI4_1 : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1; 
	}TEST_04_Falt;

	struct
	{
		UINT n1EI1_2 : 1;
		UINT n2EI2_2 : 1;
		UINT n3EI3_2 : 1;
		UINT n4EI4_2 : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1; 
	}TEST_05_Falt;

	struct
	{
		UINT n1AMP1 : 1;
		UINT n2AMP2 : 1;
		UINT n3AMP3 : 1;
		UINT n4AMP4 : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1; 
	}TEST_06_Falt;

	struct
	{
		UINT n1ACK : 1; //승객 경보 인지.
		UINT n2ACK_KingCh : 1;//승객 경보 사령 전환
		UINT n3Speaking : 1;	//방송중
		UINT n4sp : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1; 
	}TEST_07;

	struct
	{
		UINT n1EI1_1_Call : 1;
		UINT n2EI2_1_Call : 1;
		UINT n3EI3_1_Call : 1;
		UINT n4EI4_1_Call : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1; 
	}TEST_08;

	struct
	{
		UINT n1EI1_2_Call : 1;
		UINT n2EI2_2_Call : 1;
		UINT n3EI3_2_Call : 1;
		UINT n4EI4_2_Call : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1; 
	}TEST_09;


	struct
	{
		UINT n1IFV1_1 : 1;
		UINT n2IFV1_2 : 1;
		UINT n3IFV1_3 : 1;
		UINT n4IFV1_4 : 1;
		UINT n5IFV2_1 : 1;
		UINT n6IFV2_2 : 1;
		UINT n7IFV2_3 : 1;
		UINT n8IFV2_4 : 1; 
	}TEST_10_Falt;

	struct
	{
		UINT n1sp : 1;
		UINT n2IFV3_2 : 1;
		UINT n3IFV3_3 : 1;
		UINT n4sp : 1;
		UINT n5sp : 1;
		UINT n6IFV4_2 : 1;
		UINT n7IFV4_3 : 1;
		UINT n8sp : 1; 
	}TEST_11_Falt;

	UCHAR nSound_Level;
	UCHAR nRomVer;

	PA_ICR_INFO nTCR_DATA;
	UCHAR nTEXT16sp;

	UCHAR nETX;

}PA_PIS_TXDATA,*PPA_PIS_TXDATA;


#endif