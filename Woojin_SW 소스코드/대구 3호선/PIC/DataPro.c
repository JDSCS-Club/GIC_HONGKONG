
#include "string.h"
//#include "stdio.h"
#include "stdarg.h"
#include "Main.h"
#include "All_def.h"
#include "z85c30.h"
#include "Disk.h"
#include "LED_DOWNLOAD.h"
#include "GpProface.h"
#include "NorFlash.h"
#include "DataPro.h"

SANDISK_VARI SanDisk_Vari;
TRAN_STATION_INFO nTr_St_Info;

INDEX_FLAG nIndex_Flag;

DI_CHECK nDi_Check;

TMS_RX_DATA_PR nTmsRxData;

SCC_SEND_FLAG nSccSendFlag;

TMS_SEND_DATA TCMSSD[20];

IDC_ROM_WRITE Idc_Load;

extern LED_DATA_DOWNLOAD nLedDataLoad;

extern UCHAR m_SCCPISTXBuff_Ach[100];

extern SCC_INIT_SHAPE SCC1_INIT_A;
extern SCC_INIT_SHAPE SCC1_INIT_B;

extern SCC_INIT_SHAPE SCC2_INIT_A;
extern SCC_INIT_SHAPE SCC2_INIT_B;

extern SCC_INIT_SHAPE SCC3_INIT_A;
extern SCC_INIT_SHAPE SCC3_INIT_B;

extern SELETC_BUTTON nSelect_Button;

extern WORD glTotalClusterCnt;
extern int glSectorStartOffset;

extern NVSRAM_VARIABLE nNvsram_Variable;	// 사용 되는 변수
extern STATION_NAME StationName[61];		// 한 다이아 에서 사용 가능한 역명.
extern STATION_NAME_ALL StationNameAll[100];//역차 역명 전체를 가지고 있다.
extern DISPLAY_INDEX_NAME nDisplayIndex;	//표시장치 데이타를 가지고 있다.
extern START_NV_ADDRESS nStart_Address_Point; //DIA  주소.

//extern STOP_PT_INFO_ITEM nStop_Pt_Info_Flag[MEMORY_RESIZE];

/*
UCHAR DISPLAY_UNIT_ADD[20] ={0x11,0x21,0x31,0x41,
							 0x12,0x22,0x32,0x42,
							 0x1A,0x2A,0x3A,0x4A,
							 0x1B,0x2B,0x3B,0x4B,
							 0x0F,0x4F};
*/


UCHAR DISPLAY_UNIT_ADD[30] ={0x11,0x21,0x31,0x41,0x71,0x01,
							 0x12,0x22,0x32,0x42,0x72,0x02,
							 0x1C,0x2C,0x3C,0x4C,0x5C,0x6C,
							 0x1E,0x2E,0x3E,0x4E,0x5E,0x6E,
							 0x1F,0x0F,0x1D,0x0D};

/*
UCHAR DISPLAY_UNIT_ADD_NOR_PIB[30] ={0x11,0x21,0x31,0x41,0x71,0x01,
									 0x12,0x22,0x32,0x42,0x72,0x02,
							         0x13,0x23,0x33,0x43,0x73,0x03,
							         0x14,0x24,0x34,0x44,0x74,0x04};
*/

UCHAR DISPLAY_UNIT_ADD_NOR_PIB[30] ={0x11,0x21,0x31,0x12,0x22,0x32,
									0x1F,0x0F};

UCHAR DISPLAY_UNIT_ADD_NOR_RND[30] ={0x15,0x25,0x35,0x45,0x75,0x05,
									 0x16,0x26,0x36,0x46,0x76,0x06,
							         0x17,0x27,0x37,0x47,0x77,0x07,
							         0x18,0x28,0x38,0x48,0x78,0x08,
									 0x1F,0x0F,0x1D,0x0D};

UCHAR mSelfTest_NG_CntBuf[60];//2011_02_17 3.2버전



UCHAR m_JapanStBuf_R[10] = { 0x89,0x45};
UCHAR m_JapanStBuf_L[10] = { 0x8D,0xB6};

UCHAR m_ChangStBuf_R[10] = { 0xD3,0xD2,0xC3,0xC5};
UCHAR m_ChangStBuf_L[10] = { 0xD7,0xF3,0xC3,0xC5};

unsigned int m_ExperssTimeBuf[310]={
							   0x1001,0x30,0x36,0x30,0x30,0x30,0x36,0x32,0x38,
							   0x1002,0x30,0x35,0x32,0x37,0x30,0x35,0x35,0x35,
							   0x1003,0x30,0x37,0x30,0x30,0x30,0x37,0x32,0x38,
							   0x1004,0x30,0x36,0x30,0x30,0x30,0x36,0x32,0x38,
							   0x1005,0x30,0x38,0x30,0x30,0x30,0x38,0x32,0x38,
							   0x1006,0x30,0x37,0x30,0x30,0x30,0x37,0x32,0x38,
							   0x1007,0x30,0x39,0x30,0x30,0x30,0x39,0x32,0x38,
							   0x1008,0x30,0x38,0x30,0x30,0x30,0x38,0x32,0x38,
							   0x1009,0x31,0x30,0x30,0x30,0x31,0x30,0x32,0x38,
							   0x1010,0x30,0x39,0x30,0x30,0x30,0x39,0x32,0x38,
							   0x1011,0x31,0x31,0x30,0x30,0x31,0x31,0x32,0x38,
							   0x1012,0x31,0x30,0x30,0x30,0x31,0x30,0x32,0x38,
							   0x1013,0x31,0x32,0x30,0x30,0x31,0x32,0x32,0x38,
							   0x1014,0x31,0x31,0x30,0x30,0x31,0x31,0x32,0x38,
							   0x1015,0x31,0x33,0x30,0x30,0x31,0x33,0x32,0x38,
							   0x1016,0x31,0x32,0x30,0x30,0x31,0x32,0x32,0x38,
							   0x1017,0x31,0x34,0x30,0x30,0x31,0x34,0x32,0x38,
							   0x1018,0x31,0x33,0x30,0x30,0x31,0x33,0x32,0x38,
							   0x1019,0x31,0x35,0x30,0x30,0x31,0x35,0x32,0x38,
							   0x1020,0x31,0x34,0x30,0x30,0x31,0x34,0x32,0x38,
							   0x1021,0x31,0x36,0x30,0x30,0x31,0x36,0x32,0x38,
							   0x1022,0x31,0x35,0x30,0x30,0x31,0x35,0x32,0x38,
							   0x1023,0x31,0x37,0x30,0x30,0x31,0x37,0x32,0x38,
							   0x1024,0x31,0x36,0x30,0x30,0x31,0x36,0x32,0x38,
							   0x1025,0x31,0x38,0x30,0x30,0x31,0x38,0x32,0x38,
							   0x1026,0x31,0x37,0x30,0x30,0x31,0x37,0x32,0x38,
							   0x1027,0x31,0x39,0x30,0x30,0x31,0x39,0x32,0x38,
							   0x1028,0x31,0x38,0x30,0x30,0x31,0x38,0x32,0x38,
							   0x1029,0x32,0x30,0x30,0x30,0x32,0x30,0x32,0x38,
							   0x1030,0x31,0x39,0x30,0x30,0x31,0x39,0x32,0x38,
							   0x1031,0x32,0x31,0x30,0x30,0x32,0x31,0x32,0x38,
							   0x1032,0x32,0x30,0x30,0x30,0x32,0x30,0x32,0x38,
							   0x1033,0x32,0x32,0x30,0x30,0x32,0x32,0x32,0x38,
							   0x1034,0x32,0x31,0x30,0x30,0x32,0x31,0x32,0x38};

TIME_FLAG nTimeFlag;
SELF_TEST nSelf_Test;	//자기 진단 관련 구조체


UCHAR nSandiskInputCheck = 0;


PTMS_TX_DATA pTmsTxData = (TMS_TX_DATA *) m_SCCPISTXBuff_Ach;


/******************************************************************
	DP_DataPro_Init = 초기화 하는 함수
*******************************************************************/

void DP_DataPro_Init()
{

	SanDisk_Vari.nDiskInputCheckFlag = 0;
	SanDisk_Vari.nCheakSt = 0;
	SanDisk_Vari.nTotalDestCnt = 0;
	SanDisk_Vari.nDiskUpChekFlag = 0;

	nNvsram_Variable.nStop_Patten_Num = 0;
	nNvsram_Variable.nTrainClass_Num = 0;
	nNvsram_Variable.nScreenNum = 0;

	memset(nNvsram_Variable.nDestScreen,0x20,160);
	memset(nNvsram_Variable.nDestCodeList,0xFF,80);
	memset(nNvsram_Variable.nMatchCode,0xFF,256);
	
	nDi_Check.nHcr.nTime = 100;
	nDi_Check.nIcr.nTime = 100;
	nDi_Check.nTcr.nTime = 100;
	nDi_Check.nDist.nTime = 100;
	nDi_Check.nDoor.nTime = 100;

	nDi_Check.nHcr.nTimeCnt = 0;
	nDi_Check.nIcr.nTimeCnt = 0;
	nDi_Check.nTcr.nTimeCnt = 0;
	nDi_Check.nDist.nTimeCnt = 0;
	nDi_Check.nDoor.nTimeCnt = 0;

	nDi_Check.nHcr.nFlag = 0;
	nDi_Check.nIcr.nFlag = 0;
	nDi_Check.nTcr.nFlag = 0;
	nDi_Check.nDist.nFlag = 0;
	nDi_Check.nDoor.nFlag = 0;

	nDi_Check.nDoor.nFlagCnt = 0;
	nDi_Check.nDist.nFlagCnt = 0;
	nDi_Check.nDist.nRemem = 0;



	nTr_St_Info.nTcmsRxNGCnt = 10;
	nTr_St_Info.nSpeed = 0;
	nTr_St_Info.nDistance = 0;

	nTr_St_Info.nStart.nCode = 0;
	nTr_St_Info.nNow.nCode = 0;
	nTr_St_Info.nNext.nCode = 0;
	nTr_St_Info.nDest.nCode = 0;

	nTr_St_Info.nAutoManuFlag = FALSE;

	memset(nTr_St_Info.nStart.nEnNameBuf,0x20,15);
	memset(nTr_St_Info.nStart.nIRNameBuf,0x20,30);

	memset(nTr_St_Info.nNow.nEnNameBuf,0x20,15);
	memset(nTr_St_Info.nNow.nIRNameBuf,0x20,30);
	memset(nTr_St_Info.nGpStName.nNow,0x20,15);

	memset(nTr_St_Info.nNext.nEnNameBuf,0x20,15);
	memset(nTr_St_Info.nNext.nIRNameBuf,0x20,30);
	memset(nTr_St_Info.nGpStName.nNext,0x20,15);

	memset(nTr_St_Info.nDest.nEnNameBuf,0x20,15);
	memset(nTr_St_Info.nDest.nIRNameBuf,0x20,30);
	memset(nTr_St_Info.nGpStName.nDest,0x20,15);

	nTr_St_Info.nSelf_Test_Flag = FALSE;

	nTr_St_Info.nStation_StartPointCnt = 0;
	nTr_St_Info.nStation_PointCnt = 0;
	nTr_St_Info.nStation_PointCntRe = 0;

	nTr_St_Info.nTcmsAutoDriverFlag = 0;

	nTr_St_Info.nSimulationCnt = 0;

	nTr_St_Info.nStopPatNum = 0;
	nTr_St_Info.nOnlyDestSendFlag = 0; //2011_11_16 nOnlyDestSendFlag

	nTr_St_Info.nDoOp_StChFlag = 0; //120820

	nTr_St_Info.nPowerOnFalg = 0;
	nTr_St_Info.nTestCheckRemem = 0;

	memset(&nTr_St_Info,0x00,sizeof(nTr_St_Info));

	memset(&nSelf_Test,0x00,sizeof(nSelf_Test));


	//nTr_St_Info.nSendIddTxFlag = TRUE;
	/*
	memset(nSelf_Test.nSELF_ADDDATA_BUF,0x00,sizeof(nSelf_Test.nSELF_ADDDATA_BUF));
	memcpy(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT_ADD,30);
	memset(nSelf_Test.nSELF_RXDATA_Buf,0x00,60);
	memset(nSelf_Test.nSELF_DownLoad_AddBuf,0x00,30);
	memset(nSelf_Test.nSELF_DownLoad_RxBuf,0x00,30);
	nSelf_Test.nSELF_DownLoad_UnitCnt = 0;
	nSelf_Test.nSELF_All_Cnt = 0;
	nSelf_Test.nSELF_All_Cnt_B = 0;

	nSelf_Test.nSELF_ICR_SELECT = 0;
	nSelf_Test.nSELF_TX_Cnt = 0;
	*/

	nTimeFlag.nFlag_DI_INPUT = FALSE;
	nTimeFlag.nFlag_SelfTest = FALSE;
	nTimeFlag.nFlag_Simu = FALSE;

	nIndex_Flag.nIndexST_STAllCnt = 0;
	nIndex_Flag.nAllCnt_Cnt = 0;
	nIndex_Flag.nIndexDI_DICnt = 0;
	nIndex_Flag.nIndexCnt = 0;
	nIndex_Flag.nBetweenFlag = FALSE;

	memset(&nIndex_Flag,0x00,sizeof(nIndex_Flag));


	//TMS 수신 정보 처리 변수
	nTmsRxData.nDataDefin = 0;
	nTmsRxData.nCarNum = 0;
	nTmsRxData.nDist = 0;

	//SEND 명령어 내리는 플레그
	nSccSendFlag.nManualSet = 0;
	nSccSendFlag.nDeSTCodeSet = 0;
	nSccSendFlag.nClean = 0;
	nSccSendFlag.nIM_Text.nTxFlag = 0;
	nSccSendFlag.nIM_Text.nTxNum = 0;
	nSccSendFlag.nPIBPaten = 0;
	nSccSendFlag.nPR_Text.nTxFlag = 0;
	nSccSendFlag.nPR_Text.nTxNum = 0;
	nSccSendFlag.nS_FDIPaten = 0;
	nSccSendFlag.nRNDTXFlag = 0;

	nSccSendFlag.nEmergency_Text.nFlag = 0;
	nSccSendFlag.nEmergency_Text.nFlagCnt = 0;
	nSccSendFlag.nEmergency_Text.nRemem = 0;


	memset(&nSccSendFlag,0x00,sizeof(nSccSendFlag));

	nSelect_Button.nGPTranNumInput.nNum =0;
	nSelect_Button.nGPTranNumInput.nRemNum = 0;
	nSelect_Button.nGPTranNumInput.nNextSt_Re = 0;
	nSelect_Button.nGPTranNumInput.nNowSt_Re = 0;

	Idc_Load.nDataNvsrLoad = 0;
	Idc_Load.nDataNvsrWait = 0;
	Idc_Load.nErCnt = 0;
	Idc_Load.nIDC_ROM_Flag = 0;
	Idc_Load.nKO_Flag = 0;
	Idc_Load.nRomWriteCnt = 0;

	//m_SCCPISTXBuff_Ach[14] = ROM_VER;

	nSelf_Test.nSELF_ICR_SELECT = 1;

	memset(mSelfTest_NG_CntBuf,0x00,sizeof(mSelfTest_NG_CntBuf));//2011_02_17 3.2버전

}
/******************************************************************
	DP_DataPro_Main =DataPro 에서 Main에서 처리할 부분을 이부분에서 처리
*******************************************************************/
UCHAR d_Auto_Cnt = 0;
UCHAR d_Auto_TxCnt = 0;




void DP_DataPro_Main()
{

	UCHAR sCh;
	if(WORD_L(SanDisk_Vari.nCheakSt))
	{
		SanDisk_Vari.nCheakSt = FALSE;
		DP_SanDisk_Check();
	}

	if(nSelect_Button.nGPTranNumInput.nFlag) //열번에 따른 운행 DIA 검색
	{
		nSelect_Button.nGPTranNumInput.nFlag = 0;
		DP_TranNum_Chech();
	}

	if(nTimeFlag.nFlag_DI_INPUT) //DI 입력 체터링 시간 감지.
	{
		nTimeFlag.nFlag_DI_INPUT = FALSE;
		DP_SanDisk_InputTimeCheck();
	}

	if(nTimeFlag.nFlag_Simu) //&& nDi_Check.nHcr.nFlag ) //2초마다 실행
	{ //시뮬레이션일때 변경되는 조건을 변경 시켜 준다.
		nTimeFlag.nFlag_Simu = FALSE;
		DP_SIMULATION();
	}

	if(WORD_L(nTimeFlag.nAutoPlay_Flag))	//200ms 마다 동작 한다. 자동 운전 모드.
	{
		nTimeFlag.nAutoPlay_Flag = FALSE;

		if(WORD_L(Idc_Load.nIDC_ROM_Flag)){DP_IDC_SW_UPLOAD_Pro();} //설정기 다운로드 기능 중일때는 다른 기능은 정지.
		else if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDSelt || nLedDataLoad.nTNDSelt) {}//표시기 다운로드 기능 일때는 다른 기능은 정지.
		else
		{

			if((WORD_L(nTmsRxData.nDataDefin) == 0x31) || (WORD_L(nTmsRxData.nDataDefin) == 0x33)|| nTr_St_Info.nAutoManuFlag) // 마서트 인 곳에서만 전송 한다.
			{
				if(WORD_L(SCC3_INIT_A.TxOK) && WORD_L(SCC3_INIT_B.TxOK)) //통신 전송이 끝나면 다시 전송을 한다.
				{
					DP_SEND_PRO();       //통신 TX 부분을 이곳에서 처리 한다.
				}
			}


			if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.nSimulationFlag) || WORD_L(nTr_St_Info.nStopPatNum) || 
			  (WORD_L(nTr_St_Info.nTcmsRxNGCnt) > 5)   || WORD_L(nTr_St_Info.nSelf_Test_Flag) ) //자동 운행에 따른 표출 문장 검색.
			{

				if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.nAutoManuFlag)) //&& WORD_L(nTr_St_Info.nRxCode_NoNe_Flag)){ //자동 운행 일때문 출입문 정보를 참조 한다.
				{
					d_Auto_Cnt++;

					DP_Door_Sequence();
				}

				if(WORD_L(SCC3_INIT_A.TxOK) && WORD_L(SCC3_INIT_B.TxOK)) //통신 전송이 끝나면 다시 전송을 한다.
				{
					if(nTr_St_Info.nTcmsAutoDriverFlag || (nTr_St_Info.nSimulationFlag && nTr_St_Info.nSpeed) || WORD_L(nTr_St_Info.nAutoManuFlag)){
				
						d_Auto_TxCnt++;
						if(!WORD_L(nTr_St_Info.nSelf_Test_Flag)){
						
							//if(WORD_L(nTr_St_Info.nSendIddTxFlag))
							if(!WORD_L(nSccSendFlag.nIM_Text.nTxFlag) && !WORD_L(nSccSendFlag.nPR_Text.nTxFlag))
							{
								if(!nSccSendFlag.nEmergency_Text.nFlag) //비상 문자 전송시 다른 문장은 전송 금지.
								{
									d_Auto_TxCnt++;
									DP_Send_IDD_Check(); //차내 전송 문장이 있는지 체크한다
								}
							}
						}
					}

				}
			}
		}
	}
}
/******************************************************************
	DP_SanDisk_Check : SanDisk가 삽입 되어 있는지 확인 한다.
*******************************************************************/
UCHAR d_sandisk_Count=0;
UCHAR d_Dest_All_Cnt = 0;


void DP_SanDisk_Check()
{
	int i;
	
	if(~FDD_STATUS_RD&0x03) 					// San Disk 입력 확인 
	{
		//SanDisk_Vari.nDiskInputCheckFlag =  ~FDD_STATUS_RD&0x03;

		if(Sandisk_Init())
		{
			
			
			if(Seek_File() && glTotalClusterCnt)	// Match File 확인 
			{
				d_sandisk_Count++;
				gpCARDOK;
				//Nvsram_Load(); 
				Nvsram_EditerData();
		
				d_Dest_All_Cnt = SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX_DEST_CODE,nNvsram_Variable.nDestCodeList);

				NVSRAM_Rd_StationName_Total();

				SanDisk_Vari.nDiskInputCheckFlag =  ~FDD_STATUS_RD&0x03;
				
			}
		}
	}
	else
	{
		SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX_DEST_CODE,nNvsram_Variable.nDestCodeList);
		NVSRAM_Rd_StationName_Total();

		gpCARDERR;

		glSectorStartOffset = 0;

		//for(i=0;i<NVSRAM_END_OFFST;i++) NVSRAM(i) = 0x00;// Memory Clear
		//d_sandisk_Count = 2;
	}

}
/******************************************************************
	DP_SanDisk_InputTimeCheck
	디스크 삽입 상태를 채크 하는 함수.
*******************************************************************/
void DP_SanDisk_InputTimeCheck()
{
	UCHAR sDiskChek;
	sDiskChek =  ~FDD_STATUS_RD&0x03;
	if(WORD_L(SanDisk_Vari.nDiskInputCheckFlag) != WORD_L(sDiskChek))
	{
		SanDisk_Vari.nCheakSt = TRUE;
	}		
	SanDisk_Vari.nDiskInputCheckFlag = sDiskChek;
}
/******************************************************************
	열차 번호가 입력 되면 로트를 검색한다.
*******************************************************************/
UCHAR d_MaxStCnt = 0;
void DP_TranNum_Chech()
{
	int i;

	nTr_St_Info.nStopPatNum = NVSRAM_Comp_TrainNo(nSelect_Button.nGPTranNumInput.nNum);


	if(!WORD_L(nTr_St_Info.nStopPatNum))
	{
		memset(nTr_St_Info.nGpStName.nNow,0x20,15);
		memset(nTr_St_Info.nGpStName.nNext,0x20,15);
		memset(nTr_St_Info.nGpStName.nDest,0x20,15);

		gpSETERR;
	}
	else
	{
	    d_MaxStCnt = nTr_St_Info.nStation_MaxCnt = NVSRAM_Get_StopP(nTr_St_Info.nStation_List);

		NVSRAM_Rd_StationName(nTr_St_Info.nStation_MaxCnt,nTr_St_Info.nStation_List);

		nTr_St_Info.nSimulationRun = FALSE;

		nTr_St_Info.nSimulationFlag = FALSE;
		nTr_St_Info.nAutoDoorFlag = FALSE;

		
		nTr_St_Info.nSpeed = 0;

		nTr_St_Info.nDoor = 1;

		nTr_St_Info.nDoorOPenCnt = 0;
		


		nSccSendFlag.nClean = 3; //열번 변경시 클리어 다시 시작하는 기분.
		nTr_St_Info.nClean_Flag = FALSE; //무표시 flage가 FALSE로 된다.

		nTr_St_Info.nStation_StartPointCnt = 0;
		nTr_St_Info.nStation_PointCnt = 0;
		
		nIndex_Flag.nDistanRe = 0;
		nIndex_Flag.nDistanNew = 0;
		nTr_St_Info.nDistance = 0;

		nIndex_Flag.nIndexCnt = 0;
		nIndex_Flag.nIndexDI_DICnt = 0;
		nIndex_Flag.nIndexST_STAllCnt = 0; 
		nIndex_Flag.nAllCnt_Cnt = 0;

		nTr_St_Info.nDoOp_StCh = TRUE;

		DP_STNAME_INFO_UP();

		/*
		if(!nDi_Check.nDoor.nFlag) //출입문이 열려 있으면 출입문 정보에서 처리 한다.
		{
			DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.
		}
		*/

		gpSETCLR;

		nTr_St_Info.nSimulationCnt = 0;
		nDi_Check.nDoor.nFlagCnt = 0;	//열차가 Door 를 open 한 상태에서 열차 번호를 설정하면 다시 한번 운행 스케줄을 인식한다.
		nSccSendFlag.nDeSTCodeSet = 2;
		nSccSendFlag.nTranNum = 2;
		
		//if(!(nSelf_Test.nSELF_ICR_SELECT)) { nSccSendFlag.nCarNum = 1;}

	}	

	gp_WritingStr(0x96,6,nTr_St_Info.nGpStName.nDest);	// 행선 표출
	gp_WritingStr(0x82,6,nTr_St_Info.nGpStName.nNow);	// 현재역 표출
}
/******************************************************************
	역정보를 업그레이드 한다.
*******************************************************************/
UCHAR d_Now = 0;
UCHAR d_Next =0;
UCHAR d_Dest = 0;

void DP_STNAME_INFO_UP()
{
	
	if(!WORD_L(nTr_St_Info.nStation_StartPointCnt))
	{
		nTr_St_Info.nStart.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.nStation_PointCnt]);
		memcpy(nTr_St_Info.nStart.nEnNameBuf, StationName[nTr_St_Info.nStation_PointCnt].EngName,15);
		memcpy(nTr_St_Info.nStart.nIRNameBuf, StationName[nTr_St_Info.nStation_PointCnt].IranName,30);
	}

	d_Now = nTr_St_Info.nNow.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.nStation_PointCnt]);
	memcpy(nTr_St_Info.nNow.nEnNameBuf, StationName[nTr_St_Info.nStation_PointCnt].EngName,15);
	memcpy(nTr_St_Info.nNow.nIRNameBuf, StationName[nTr_St_Info.nStation_PointCnt].IranName,30);

	if(WORD_L(nTr_St_Info.nStation_PointCnt) != (WORD_L(nTr_St_Info.nStation_MaxCnt)-1)) //마지막 역은 아니면 증가 한다.
	{
		d_Next = nTr_St_Info.nNext.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.nStation_PointCnt+1]);
		memcpy(nTr_St_Info.nNext.nEnNameBuf,StationName[nTr_St_Info.nStation_PointCnt+1].EngName,15);
		memcpy(nTr_St_Info.nNext.nIRNameBuf,StationName[nTr_St_Info.nStation_PointCnt+1].IranName,30);
	}
		
	d_Dest = nTr_St_Info.nDest.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.nStation_MaxCnt-1]);
	nTr_St_Info.nOnlyDestSendFlag = nTr_St_Info.nDest.nCode;//2011_11_16 nOnlyDestSendFlag
	memcpy(nTr_St_Info.nDest.nEnNameBuf,StationName[nTr_St_Info.nStation_MaxCnt-1].EngName,15);
	memcpy(nTr_St_Info.nDest.nIRNameBuf,StationName[nTr_St_Info.nStation_MaxCnt-1].IranName,30);
	
	DP_GpDataChange(nTr_St_Info.nGpStName.nNow,nTr_St_Info.nNow.nEnNameBuf);
	DP_GpDataChange(nTr_St_Info.nGpStName.nNext,nTr_St_Info.nNext.nEnNameBuf);
	DP_GpDataChange(nTr_St_Info.nGpStName.nDest,nTr_St_Info.nDest.nEnNameBuf);

}
/******************************************************
	Name 	: DP_GpDataChange(UCHAR *pDData,UCHAR *pSData)
	Purpose : 차내 전송역명 -> GP 표출 역명으로 전환 
*******************************************************/
void DP_GpDataChange(UCHAR *pDData,UCHAR *pSData)
{
	int i,j=0;
	for(i=0;i<15;i++)
	{
		if(WORD_L(pSData[i])!=0x20){ pDData[j++]=pSData[i];	}
	}
}

/******************************************************************
	일정 시간 동안 입력된 값을 확인.
*******************************************************************/
void DP_ONTD(UCHAR IN,UCHAR *OUT,UCHAR MS,UCHAR *CLK )
{
	UCHAR CE;
	
	if(!IN){*CLK = 0; *OUT = 0;}		
	CE = NOT(*OUT) && IN;	
	if(CE)
	{
		if(MS == *CLK) {*OUT = 1;}
		else *CLK = *CLK+1;
	}
}

/******************************************************************
	DP_SIMULATION 2초마다 실행
	시험 항목에서 자동 운행을 선택 하였을 경우 처리 하는 부분.
*******************************************************************/
UCHAR d_SimuTime = 0;
UCHAR d_SimuSpeed = 0;
UCHAR d_SimuDist = 0;
UCHAR d_SimuDistRe = 0;

UCHAR d_jangaaa = 0;
void DP_SIMULATION()
{
	UCHAR sIm_Pr_GpSendData[30];

	memset(sIm_Pr_GpSendData,0x20,30);

	if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag && nTr_St_Info.nStopPatNum && nTr_St_Info.nSpeed )
	{
		nTr_St_Info.nSimulationRun = TRUE;

		nTr_St_Info.nDoorOPenCnt++;
		if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) //문이 열리고 우선 
		{
			gp_WritingStr(300,15,sIm_Pr_GpSendData);	//클리어한다.

			nTr_St_Info.nSimulationCnt++;

			nTr_St_Info.nDistance = 0;

			nIndex_Flag.nDistanRe = 0;
			nIndex_Flag.nDistanNew = 0;
			nIndex_Flag.nBetweenFlag = FALSE;

			nIndex_Flag.nIndexCnt = 0;
			nIndex_Flag.nIndexDI_DICnt = 0;
			nIndex_Flag.nIndexST_STAllCnt = 0;
			nIndex_Flag.nAllCnt_Cnt = 0;


			DP_Door_OPEN();

			d_jangaaa++;

			DP_STNAME_INFO_UP();
			DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.

		}
		else if(nTr_St_Info.nDoor && !(nTr_St_Info.nDoorOPenCnt%3)) // 오픈(10초 동안 오픈)
		{
			nTr_St_Info.nDoor=0;
			

			DP_STNAME_INFO_UP();
			DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.
			
		}
		else if(!nTr_St_Info.nDoor) //close
		{
			nTr_St_Info.nDoorOPenCnt = 0;
			nTr_St_Info.nDistance +=((nTr_St_Info.nSpeed)*(0.5));	//거리 값을 연산 한다.

			d_SimuDistRe = nIndex_Flag.nDistanRe;
			d_SimuDist = nIndex_Flag.nDistanNew = nTr_St_Info.nDistance;	//연산된 거리 값을 적용한다.
			gpDISTANCE(nTr_St_Info.nDistance);
			
			
			DP_Door_CLOSE();

			if(nIndex_Flag.nBetweenFlag)	//bwteen 이면 출입문을 오픈한다.
			{
				nTr_St_Info.nDoor = 1;

				//nTr_St_Info.nDistance += 2000;

				gpDISTANCE(0);	

			}
		}
	}
	else
	{
		nTr_St_Info.nSimulationRun = FALSE;

		nTr_St_Info.nSpeed = 0;
		nTr_St_Info.nDistance = 0;

		nTr_St_Info.nDoor = 1;

		nTr_St_Info.nDoorOPenCnt = 0;

		nTr_St_Info.nStation_PointCnt = 0;
		nTr_St_Info.nStation_StartPointCnt = 0;
	}
}

/******************************************************************
	DP_SelfTest 
	자기 진단 실시.
*******************************************************************/
UCHAR d_SelfCnt = 0;
UCHAR d_ICRCnt = 0;
UCHAR d_ICR_Select = 0;
UCHAR d_SelfTestCnt = 0;

void DP_SelfTest(UCHAR *pDataBuf,UCHAR *pRxDataBuf,UCHAR sUnitCnt)
{
	int i;
	UCHAR sSelf_Tx_Buf[30];
	UCHAR sSelf_RxData_Buf[60];

	d_SelfTestCnt = sUnitCnt;

	memcpy(sSelf_RxData_Buf,pRxDataBuf,sUnitCnt);

	for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<WORD_L(sUnitCnt);i++)
	{
		if(!nSelf_Test.nSELF_All_Cnt)
		{
			sSelf_RxData_Buf[i] = 1;
		}


		if(WORD_L(sSelf_RxData_Buf[i]))
		{
			nSelf_Test.nSELF_TX_Cnt = i;
			break;
		}
		else {

			nSelf_Test.nSELF_TX_Cnt++;
		}
	}

	if(WORD_L(nSelf_Test.nSELF_TX_Cnt) >= WORD_L(sUnitCnt))	//1편성당 자기진단을 실행하는 횟수 카운터.
	{
		nSelf_Test.nSELF_All_Cnt++;
		nSelf_Test.nSELF_TX_Cnt = 0;
		if(WORD_L(nSelf_Test.nSELF_All_Cnt) >= SELF_TEST_ALLCNT)
		{
			nLedDataLoad.nSelfTestFlag = FALSE;
		}
	}
	else
	{
		d_SelfCnt++;
		nSelf_Test.nSELF_RXDATA_Buf[nSelf_Test.nSELF_TX_Cnt] = 1; //자기 진단 장치 수신 버퍼를 불량으로 초기화 한다.(중간에 멈춰도 이전 상태 값 기억)
		mSelfTest_NG_CntBuf[nSelf_Test.nSELF_TX_Cnt] +=1;//2011_02_17 3.2버전

		SCC_TX_PROTOCOL_SELFTEST(sSelf_Tx_Buf,pDataBuf[nSelf_Test.nSELF_TX_Cnt],0x31,0x07,0,10);

		
		if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt ) //다운로드 기능중 차내 빼고는 "B"채널로 보낸다.
		{
			Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5); 
		}
		else {
			Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);
		}
		

		nSelf_Test.nSELF_TX_Cnt++;
	}
}


void DP_SelfTest_B(UCHAR *pDataBuf,UCHAR *pRxDataBuf,UCHAR sUnitCnt)
{
	int i;
	UCHAR sSelf_Tx_Buf[30];
	UCHAR sSelf_RxData_Buf[60];
	UCHAR sCnt = 0;
	d_SelfTestCnt = sUnitCnt;

	memcpy(sSelf_RxData_Buf,pRxDataBuf,sUnitCnt);

	for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt_B);i<WORD_L(sUnitCnt);i++)
	{

		if(!nSelf_Test.nSELF_All_Cnt_B)
		{
			sSelf_RxData_Buf[i] = 1;
		}

		if(WORD_L(sSelf_RxData_Buf[i]))
		{
			nSelf_Test.nSELF_TX_Cnt_B = i;
			break;
		}
		else {
			nSelf_Test.nSELF_TX_Cnt_B++;
		}
	}

	if(WORD_L(nSelf_Test.nSELF_TX_Cnt_B) >= WORD_L(sUnitCnt))	//1편성당 자기진단을 실행하는 횟수 카운터.
	{
		nSelf_Test.nSELF_All_Cnt_B++;
		nSelf_Test.nSELF_TX_Cnt_B = 0;



	}
	else
	{
		d_SelfCnt++;
		if(nSelf_Test.nSELF_ICR_SELECT){
			sCnt = nSelf_Test.nSELF_TX_Cnt_B+DISPLAY_STANDARD_UNIT_A;
			nSelf_Test.nSELF_RXDATA_Buf[(sCnt)] = 1; //자기 진단 장치 수신 버퍼를 불량으로 초기화 한다.(중간에 멈춰도 이전 상태 값 기억)
			mSelfTest_NG_CntBuf[(sCnt)] +=1;//2011_02_17 3.2버전
		}
		else{
			sCnt = nSelf_Test.nSELF_TX_Cnt_B+DISPLAY_UNIT_A;
			nSelf_Test.nSELF_RXDATA_Buf[(sCnt)] = 1; //자기 진단 장치 수신 버퍼를 불량으로 초기화 한다.(중간에 멈춰도 이전 상태 값 기억)
			mSelfTest_NG_CntBuf[(sCnt)] +=1;//2011_02_17 3.2버전

		}
		SCC_TX_PROTOCOL_SELFTEST(sSelf_Tx_Buf,pDataBuf[nSelf_Test.nSELF_TX_Cnt_B],0x31,0x07,0,10);
		Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,50);

		nSelf_Test.nSELF_TX_Cnt_B++;
	}

}
/******************************************************************
	DP_SCC2_A_RX_PRO 자기진단시 수신 데이타 처리 부분.
*******************************************************************/
UCHAR d_Scc2_A_Rx_Pacc_Cnt = 0;

void DP_SCC2_A_RX_PRO(UCHAR *pRxData)
{
	WORD sCRC = 0;
	UCHAR sH_Crc = 0;
	UCHAR sL_Crc = 0;
	UCHAR sPassCnt = 0;
	UCHAR sDisplay_Unit = 0;
	UCHAR sDisplay_UnitBuf[60];
	UCHAR *sDisplay_RxBuf;
	UCHAR sErBlkPoint = 30720; //삭제 한 블럭 갯수.
	UCHAR i;

	PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pRxData;

	PSCC_TX_DATA pRx_Data = (SCC_TX_DATA *) pRxData;

	sCRC = cal_CRC16((SCC2_INIT_A.RxLen-5),&pRxData[3]);

	sH_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_A.RxLen-12];
	sL_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_A.RxLen-11];

	memset(sDisplay_UnitBuf,0x00,60);

	

	if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDSelt || nLedDataLoad.nTNDSelt )
	{
		sDisplay_Unit = nSelf_Test.nSELF_DownLoad_UnitCnt;
		memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);
		sDisplay_RxBuf = nSelf_Test.nSELF_DownLoad_RxBuf;
	}
	else // SCC_A 채널은 직통 일반 구분하여 수신
	{
		if(!nSelf_Test.nSELF_ICR_SELECT)	//직통 자기 진단.
		{
			sDisplay_Unit = DISPLAY_UNIT;
			memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT);
		}
		else if(nSelf_Test.nSELF_ICR_SELECT)	//일반 자기 진다.
		{
			sDisplay_Unit = DISPLAY_STANDARD_UNIT;
			memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_STANDARD_UNIT);
		}
		sDisplay_RxBuf = nSelf_Test.nSELF_RXDATA_Buf;
	}

	if(WORD_L(sH_Crc) == WORD_H(sCRC) && WORD_L(sL_Crc) == WORD_L(sCRC))
	{
		if(WORD_L(pTx_Pro->nText.nCode) == 0x08)
		{			
			for(i=0;i<sDisplay_Unit;i++)
			{
				if( WORD_L(pTx_Pro->nText.nFromAdd) == WORD_L(sDisplay_UnitBuf[i]))
				{
					sDisplay_RxBuf[i] = 0;

					mSelfTest_NG_CntBuf[i] = 0;//2011_02_17 3.2버전

					d_Scc2_A_Rx_Pacc_Cnt++;

					//if( nLedDataLoad.nIDDSelt || nLedDataLoad.nFDDSelt)
					if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDSelt || nLedDataLoad.nTNDSelt )
					{

						if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2)	//다운로드 동작 중이면 수신 카운터를 작동한다.
						{
							nLedDataLoad.nSDR_RxCnt++;
						}

						if(nLedDataLoad.nDataSDRFlag)	// LED 표식 다운로드 기능 
						{
							if(WORD_L(pRx_Data->nTest.nSp4) == 0x20)	// 다운로드 OK
							{
								nSelf_Test.nSELF_TX_Cnt++;
								nLedDataLoad.nDataRepetCnt = 0;
							}
							else if(WORD_L(pRx_Data->nTest.nSp4) == 0x21)	//다운로드 NG 재전송 한다.
							{

								if(nLedDataLoad.nFDD_DATA_Selt) {sErBlkPoint = 0;}

								if(nLedDataLoad.nIDDSelt) {sErBlkPoint = 32256;}

								nLedDataLoad.nDataRepetFlag = TRUE;
								nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pRx_Data->nTest.nErBlk),WORD_L(pRx_Data->nTest.nDeStCode)) - sErBlkPoint;

							}
						}
					}
					
					break;
				}
			}
		}
	}
}

/******************************************************************
	DP_SCC2_B_RX_PRO 설정기 중연 데이타 처리 부분.
*******************************************************************/
UCHAR d_Scc2_B_Rx_Pacc_Cnt = 0;
void DP_SCC2_B_RX_PRO(UCHAR *pRxData)
{
	WORD sCRC = 0;
	UCHAR sH_Crc = 0;
	UCHAR sL_Crc = 0;
	UCHAR sPassCnt = 0;
	UCHAR sDisplay_Unit = 0;
	UCHAR sDisplay_UnitBuf[60];
	UCHAR *sDisplay_RxBuf;
	UCHAR sErBlkPoint = 30720; //삭제 한 블럭 갯수.
	UCHAR i;

	PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pRxData;
	PSCC_TX_DATA pRx_Data = (SCC_TX_DATA *) pRxData;

	sCRC = cal_CRC16((SCC2_INIT_B.RxLen-5),&pRxData[3]);

	sH_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_B.RxLen-12];
	sL_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_B.RxLen-11];

	memset(sDisplay_UnitBuf,0x00,60);

	if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDSelt || nLedDataLoad.nTNDSelt )
	{
		sDisplay_Unit = nSelf_Test.nSELF_DownLoad_UnitCnt;
		memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);
		sDisplay_RxBuf = nSelf_Test.nSELF_DownLoad_RxBuf;
	}
	else // SCC_A 채널은 직통 일반 구분하여 수신
	{
		if(!nSelf_Test.nSELF_ICR_SELECT)	//직통 자기 진단.
		{
			sDisplay_Unit = DISPLAY_UNIT;
			memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT);
		}
		else if(nSelf_Test.nSELF_ICR_SELECT)	//일반 자기 진다.
		{
			sDisplay_Unit = DISPLAY_STANDARD_UNIT;
			memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_STANDARD_UNIT);

		}

		sDisplay_RxBuf = nSelf_Test.nSELF_RXDATA_Buf;
	
	}

	if(WORD_L(sH_Crc) == WORD_H(sCRC) && WORD_L(sL_Crc) == WORD_L(sCRC))
	{
		if(WORD_L(pTx_Pro->nText.nCode) == 0x08)
		{
			
			for(i=0;i<sDisplay_Unit;i++)
			{
				if( WORD_L(pTx_Pro->nText.nFromAdd) == WORD_L(sDisplay_UnitBuf[i]))
				{
					sDisplay_RxBuf[i] = 0;

					mSelfTest_NG_CntBuf[i] = 0;//2011_02_17 3.2버전

					d_Scc2_B_Rx_Pacc_Cnt++;

					//if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt )
					if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDSelt || nLedDataLoad.nTNDSelt )
					{
						if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2)	//다운로드 동작 중이면 수신 카운터를 작동한다.
						{
							nLedDataLoad.nSDR_RxCnt++;
						}

						if(nLedDataLoad.nDataSDRFlag)	// LED 표식 다운로드 기능 
						{
							if(WORD_L(pRx_Data->nTest.nSp4) == 0x20)	// 다운로드 OK
							{
								nSelf_Test.nSELF_TX_Cnt++;
								nLedDataLoad.nDataRepetCnt = 0;
							}
							else if(WORD_L(pRx_Data->nTest.nSp4) == 0x21)	//다운로드 NG 재전송 한다.
							{

								if(nLedDataLoad.nFDD_DATA_Selt) {sErBlkPoint = 0;}

								if(nLedDataLoad.nIDDSelt) {sErBlkPoint = 32256;}

								nLedDataLoad.nDataRepetFlag = TRUE;
								nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pRx_Data->nTest.nErBlk),WORD_L(pRx_Data->nTest.nDeStCode)) - sErBlkPoint;

							}
						}
					}
					break;
				}
			}
			
		}
	}
}

/******************************************************************
	DP_SCC3_B_RX_PRO 설정기 중연 데이타 처리 부분.
*******************************************************************/
void DP_SCC3_B_RX_PRO(UCHAR *pRxData)
{
	WORD sCRC = 0;
	UCHAR sH_Crc = 0;
	UCHAR sL_Crc = 0;
	UCHAR sPassCnt = 0;
	UCHAR sDisplay_Unit = 0;
	UCHAR sDisplay_UnitBuf[60];
	UCHAR *sDisplay_RxBuf;
	UCHAR sErBlkPoint = 30720; //삭제 한 블럭 갯수.
	UCHAR i;

	PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pRxData;

	PSCC_TX_DATA pRx_Data = (SCC_TX_DATA *) pRxData;

	sCRC = cal_CRC16((SCC2_INIT_A.RxLen-5),&pRxData[3]);

	sH_Crc = pTx_Pro->nText.nTEXT[SCC3_INIT_B.RxLen-12];
	sL_Crc = pTx_Pro->nText.nTEXT[SCC3_INIT_B.RxLen-11];

	memset(sDisplay_UnitBuf,0x00,60);



	if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDSelt || nLedDataLoad.nTNDSelt )
	{
		sDisplay_Unit = nSelf_Test.nSELF_DownLoad_UnitCnt;
		memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);
		sDisplay_RxBuf = nSelf_Test.nSELF_DownLoad_RxBuf;
	}
	else // SCC_A 채널은 직통 일반 구분하여 수신
	{
		if(!nSelf_Test.nSELF_ICR_SELECT)	//직통 자기 진단.
		{
			sDisplay_Unit = DISPLAY_UNIT;
			memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT);
		}
		else if(nSelf_Test.nSELF_ICR_SELECT)	//일반 자기 진다.
		{
			sDisplay_Unit = DISPLAY_STANDARD_UNIT;
			memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_STANDARD_UNIT);
		}
		sDisplay_RxBuf = nSelf_Test.nSELF_RXDATA_Buf;
	}

	if(WORD_L(sH_Crc) == WORD_H(sCRC) && WORD_L(sL_Crc) == WORD_L(sCRC))
	{
		if(WORD_L(pTx_Pro->nText.nCode) == 0x08)
		{			
			for(i=0;i<sDisplay_Unit;i++)
			{
				if( WORD_L(pTx_Pro->nText.nFromAdd) == WORD_L(sDisplay_UnitBuf[i]))
				{
					sDisplay_RxBuf[i] = 0;

					mSelfTest_NG_CntBuf[i] = 0;//2011_02_17 3.2버전

					d_Scc2_A_Rx_Pacc_Cnt++;

					//if( nLedDataLoad.nIDDSelt || nLedDataLoad.nFDDSelt)
					if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDSelt || nLedDataLoad.nTNDSelt )
					{

						if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2)	//다운로드 동작 중이면 수신 카운터를 작동한다.
						{
							nLedDataLoad.nSDR_RxCnt++;
						}

						if(nLedDataLoad.nDataSDRFlag)	// LED 표식 다운로드 기능 
						{
							if(WORD_L(pRx_Data->nTest.nSp4) == 0x20)	// 다운로드 OK
							{
								nSelf_Test.nSELF_TX_Cnt++;
								nLedDataLoad.nDataRepetCnt = 0;
							}
							else if(WORD_L(pRx_Data->nTest.nSp4) == 0x21)	//다운로드 NG 재전송 한다.
							{

								if(nLedDataLoad.nFDD_DATA_Selt) {sErBlkPoint = 0;}

								if(nLedDataLoad.nIDDSelt) {sErBlkPoint = 32256;}

								nLedDataLoad.nDataRepetFlag = TRUE;
								nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pRx_Data->nTest.nErBlk),WORD_L(pRx_Data->nTest.nDeStCode)) - sErBlkPoint;

							}
						}
					}

					break;
				}
			}
		}
	}
}



/********************************************************
	Find_StationInfo

*********************************************************/
UCHAR DP_Find_StationInfo(UCHAR sNow,UCHAR sNext,UCHAR sDest,UCHAR sReTrNo,UCHAR sNewTrNo)
{
	int Start=0,End=0;
	int glInfo=0;

	if(WORD_L(sNow) != 0xFF && WORD_L(sNext) != 0xFF)//&& glComDest)		// 역코드가 '0'이 아닌 경우 //종착역
	{	
		if(DWORD_L(sReTrNo) == DWORD_L(sNewTrNo)) Start=1; // 시발역 코드 		
		else Start = 0;
		if(WORD_L(sNext) == WORD_L(sDest)) End = 1;	// 종착역 코드 	
		else End =0;
	
		if(Start&&End) 		glInfo =4;	// 시발-종착
		else if(Start && !End) 	glInfo =1;	// 시발-중간
		else if(!Start && End) 	glInfo =3;	// 중간-종착
		else if(!Start && !End) glInfo =2;	// 중간-중간 
	}	
	
	return glInfo;
}
/********************************************************
	도어 데이터 시퀜스 
*********************************************************/
UCHAR d_Auto_Flag = 0;
UCHAR d_Auto_Data = 0;

void DP_Door_Sequence()
{
	int i;

	if(WORD_L(nTr_St_Info.nAutoManuFlag)){nTr_St_Info.nDoOp_StChFlag = TRUE;} //수동 설정 이면 nDoOp_StChFlag를 항상 참으로 한다. //120820

	if((nDi_Check.nDoor.nFlag || nTr_St_Info.nTcmsRxDoorFlag) && nTr_St_Info.nDoOp_StChFlag) //출입문이 열렸을 경우 처리. nTr_St_Info.nDoOp_StChFlag 출입문이 열리고 통신이 이루어 진후 처리 한다. //120820
	{
		if(!nTr_St_Info.nSimulationRun){ //시뮬레이션이 아니고 출입문이 열리면 마지막 문장 표시를 초기화 한다. //120820
			nIndex_Flag.nBetweenFlag = FALSE; //시뮬레이션일때는 "nBetweenFlag"를 따로 사용 한다.
		}

		
		if(!WORD_L(nDi_Check.nDoor.nFlagCnt))//DP_Door_OPEN 함수가 실행 되면 카운터가 증가 한다.
		{
			nTmsRxData.nDist = 0;

			if(DWORD_L(nTr_St_Info.nStopPatNum) && (WORD_L(nTr_St_Info.nRxCode_NoNe_Flag) || WORD_L(nTr_St_Info.nAutoManuFlag))) 
			{ //정차 패턴이 정상 / 현재역 다음역 코드가 정상 / 수동 설정

				d_Auto_Flag++;

				//nTmsRxData.nDist = 0;

				nTr_St_Info.nDistance = 0;

				nIndex_Flag.nDistanRe = 0;
				nIndex_Flag.nDistanNew = 0;
				nIndex_Flag.nBetweenFlag = FALSE;

				nDi_Check.nDist.nFlagCnt = 0;

				DP_Door_OPEN();
			}
		}
	}
	else if(!(nDi_Check.nDoor.nFlag || nTr_St_Info.nTcmsRxDoorFlag))//&& (nIndex_Flag.nDistanRe != nIndex_Flag.nDistanNew))
	{
		nTr_St_Info.nDoOp_StChFlag = FALSE; //120820

		if(WORD_L(nDi_Check.nDoor.nRemem)){ //출입문 닫힐때 무표시 전송.
			//14_06_30 출입문 정보를 편집 데이타로 통일 한다.
			//if(WORD_L(nTmsRxData.nDoOpenIf)&0x03){  //TCMS 통신으로 수신한 출입문 정보가 정상일 경우  //120820 
			//	nDisplayIndex.nDoor = nTmsRxData.nDoOpenIf; } //출입문 정보를 TCMS 통신 수신 데이타로 변경 한다.

			nSccSendFlag.nClean = 3;
			if(nTr_St_Info.nSelf_Test_Flag) //아직 자기 진단 중이라면 종료 한다.
			{
				nSelf_Test.nSELF_All_Cnt = SELF_TEST_ALLCNT; 
				nSelf_Test.nSELF_All_Cnt_B = SELF_TEST_ALLCNT;
			}

		}

		//시뮬레이션일때는 출입문과 아무런 관계가 없기 때문에 여기서 막는다.
		if(!nTr_St_Info.nSimulationRun){
			nTmsRxData.nDist = nDi_Check.nDist.nFlagCnt;// *50; //10_08_10 시뮬레이션
		}

		if(DWORD_MASKING(nTmsRxData.nDist) >= 50 )	//TMS거리 값이 있어야 된다.
		{
			
			nDi_Check.nDoor.nFlagCnt = 0;

			nTr_St_Info.nAutoDoorFlag = FALSE;
			nTr_St_Info.nSimulationFlag = FALSE;

			
			nIndex_Flag.nDistanNew = nTmsRxData.nDist;
			nTr_St_Info.nDistance = nTmsRxData.nDist;

			if(!WORD_L(nIndex_Flag.nBetweenFlag))
			{
				if(WORD_L(nTr_St_Info.nRxCode_NoNe_Flag) || nTr_St_Info.nAutoManuFlag)
				{
					DP_Door_CLOSE();
				}
			}
		}	
	}

	nDi_Check.nDoor.nRemem = (nDi_Check.nDoor.nFlag);
}
/********************************************************
	문이 열려 있을 경우 문장 검색 및 역 증가 함수.
*********************************************************/
UCHAR d_DiDi_Cnt = 0;
UCHAR d_doorPintCnt = 0;
UCHAR d_SimEndCnt = 0;
UCHAR d_TcmsRxNow = 0;
UCHAR d_TcmsRxNex = 0 ;
UCHAR d_StCodeFineAuto = 0;
UCHAR d_StPointVal = 0;

UCHAR d_a_Dest = 0;
UCHAR d_a_Next = 0;
UCHAR d_a_simCnt = 0;
UCHAR d_a_abab = 0;

void DP_Door_OPEN()
{
	char szBuf[512];
	char szBuf2[64];
	int i;
	UCHAR sIm_Pr_GpSendData[30];

	memset(sIm_Pr_GpSendData,0x20,30);
	szBuf[0] = 0;

	d_SimEndCnt = nTr_St_Info.nStation_PointCnt;
	
	//역정보를 증가 한다. - 패턴 전체 역 코드이상은 증가 한지 않는다.df
	//if(WORD_L(nTr_St_Info.nStation_PointCnt) < WORD_L(nTr_St_Info.nStation_MaxCnt)-1) //10_08_10
	if((WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) && WORD_L(nTr_St_Info.nDoOp_StCh)) || WORD_L(nTr_St_Info.nAutoManuFlag)) //운행 조건 변경.
	{

		d_a_abab++;

		//표출 관련 변수를 클리어 한다.
		nIndex_Flag.nIndexCnt = 0;
		nIndex_Flag.nIndexDI_DICnt = 0;
		nIndex_Flag.nIndexST_STAllCnt = 0; 
		nIndex_Flag.nAllCnt_Cnt = 0;

		nTr_St_Info.nDoOp_StCh = 0;

		if((WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode))|| nTr_St_Info.nAutoManuFlag) 
		{
			if(!WORD_L(nTr_St_Info.nStation_StartPointCnt))//처음 역일 경우에는 이미 역코드가 처음이로 되어 있기 때문에 역 포인터를 증가할 필요가 없다.
			{
				nTr_St_Info.nStation_StartPointCnt++;
			}
			else
			{
				
				nTr_St_Info.nStation_PointCnt++;
				nTr_St_Info.nStation_StartPointCnt++;
			}
		}

		d_StPointVal = nTr_St_Info.nStation_StartPointCnt;

		d_doorPintCnt++;

		gp_WritingStr(300,15,sIm_Pr_GpSendData);	//클리어한다.

		DP_STNAME_INFO_UP();

		if(WORD_L(nTr_St_Info.nAutoManuFlag))//수동 설정 운전 일대 사용 한다.
		{

			nDi_Check.nDoor.nFlagCnt++;	//역에 정차해서 문이 여러번 열려도 역이 한번만 증가 한다.
			DP_STNAME_INFO_UP();
			DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.

			nTr_St_Info.nSelf_Test_Flag = TRUE;

			nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2버전
			nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2버전

		}
		else
		{

			//TCMS 수신 코드와 현재 검색한 코드를 비교 한다. 
			//일치 할 경우 정상 처리하고.

			d_TcmsRxNow = WORD_L(nTmsRxData.nNow);
			d_TcmsRxNex = WORD_L(nTmsRxData.nNext);
			if((WORD_L(nTmsRxData.nNow) == WORD_L(nTr_St_Info.nNow.nCode)) &&
				(WORD_L(nTmsRxData.nNext) == WORD_L(nTr_St_Info.nNext.nCode)))
			{

				nDi_Check.nDoor.nFlagCnt++;	//역에 정차해서 문이 여러번 열려도 역이 한번만 증가 한다.

				DP_STNAME_INFO_UP();
				DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.

				nTr_St_Info.nSelf_Test_Flag = TRUE;

				nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2버전
				nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2버전

				//sprintf(szBuf2,"---Self Test Start...");strcat(szBuf,szBuf2);
				//sprintf(szBuf2,"---DoorPoen Function-1 ST:[%02X]H-ST[%02X]H code Using Find",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext)); strcat(szBuf,szBuf2);
				//sprintf(szBuf2,"---all Text :[%d]\r\n",WORD_L(nIndex_Flag.nIndexST_STAllCnt)); strcat(szBuf,szBuf2);

				d_DiDi_Cnt++;
				
			}
			else
			{ //수신 코드와 현재 코드가 일치 하지 않을 경우 코드를 다시 검색 한다.
				for(i=0;i<WORD_L(nTr_St_Info.nStation_MaxCnt);i++)
				{

						if(WORD_L(nTr_St_Info.nStation_List[i] == WORD_L(nTmsRxData.nNow)) && 
						WORD_L(nTr_St_Info.nStation_List[(i+1)] == WORD_L(nTmsRxData.nNext)))
						{
							nDi_Check.nDoor.nFlagCnt++;	//역에 정차해서 문이 여러번 열려도 역이 한번만 증가 한다.

							nTr_St_Info.nStation_PointCnt = i;
							nTr_St_Info.nStation_StartPointCnt = i+1;


							DP_STNAME_INFO_UP();
							DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.

							nTr_St_Info.nSelf_Test_Flag = TRUE;

							nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2버전
							nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2버전

							//sprintf(szBuf2,"---Self Test Start...");strcat(szBuf,szBuf2);
							//sprintf(szBuf2,"---DoorPoen Function-2 ST:[%02X]H-ST[%02X]H code Using Find",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext)); strcat(szBuf,szBuf2);
							//sprintf(szBuf2,"---all Text :[%d]\r\n",WORD_L(nIndex_Flag.nIndexST_STAllCnt)); strcat(szBuf,szBuf2);


							d_StCodeFineAuto++;

							break;
						}
				}

			}
		}

		user_DebugPrint(szBuf);

		

	} //시뮬레이션일때 동작 
	else if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag)
	{
		
		d_a_Dest = WORD_L(nTr_St_Info.nDest.nCode);
		d_a_Next = WORD_L(nTr_St_Info.nNext.nCode);

		d_a_simCnt++;

		//if(WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode)) 
		if((WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode)) || (!nTr_St_Info.nStation_StartPointCnt)) //101106
		{
			
			if(!nTr_St_Info.nStation_StartPointCnt)//처음 역일 경우에는 이미 역코드가 처음이로 되어 있기 때문에 역 포인터를 증가할 필요가 없다.
			{
				nTr_St_Info.nStation_StartPointCnt++;
			}
			else
			{
				nTr_St_Info.nStation_PointCnt++;
				nTr_St_Info.nStation_StartPointCnt++;
			}

			d_doorPintCnt++;

			gp_WritingStr(300,15,sIm_Pr_GpSendData);	//클리어한다.

		}
		else
		{
			nTr_St_Info.nStation_PointCnt = WORD_L(nTr_St_Info.nStation_MaxCnt)-1;
			nTr_St_Info.nAutoDoorFlag = FALSE;
			nTr_St_Info.nSimulationFlag = FALSE;

			nTr_St_Info.nClean_Flag = FALSE; //시뮬레이션이 완료 되면 무표시 flage가 FALSE로 된다.

			//nTr_St_Info.nStopPatNum = FALSE;

		}
		
	}
}
/********************************************************
	문이 닫혀 있을 경우 거리 값에 따른 전송 문장 체크
*********************************************************/
UCHAR d_simaaa = 0;
void DP_Door_CLOSE()
{
	if((DWORD_L(nIndex_Flag.nDistanRe) != DWORD_L(nIndex_Flag.nDistanNew)) && DWORD_L(nIndex_Flag.nDistanNew ))
	{
		d_simaaa++;
		if(WORD_L(nIndex_Flag.nIndexDI_DICnt) == WORD_L(nIndex_Flag.nIndexCnt))
		{
			
			nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nIndexBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nDistanNew);

			nIndex_Flag.nIndexCnt = 0;
			nIndex_Flag.nDistanRe = nIndex_Flag.nDistanNew;
		}
	}
}

/********************************************************
	전송 문장이 있는지 체크한다.
	수신 역코드와 DIA 리스트 와 일치할 경우 처리 한다.
*********************************************************/
int sInfoNum = 2;
int d_StallCnt_Text = 0;
void DP_ALL_TEXT_CHECK()
{
	//역 정보를 확인한다. ex)시발-중간,중간-중간,중간-종착
	sInfoNum = DP_Find_StationInfo(nTr_St_Info.nNow.nCode,nTr_St_Info.nNext.nCode,nTr_St_Info.nDest.nCode,nTr_St_Info.nStart.nCode,nTr_St_Info.nNow.nCode);
	// 역과역 사이에 전체 문장을 검색한다.
	d_StallCnt_Text = nIndex_Flag.nIndexST_STAllCnt = NVSRAM_Display_Schedule(nTr_St_Info.nNow.nCode,nTr_St_Info.nNext.nCode,sInfoNum);
	//전체 문장가운데 현재 거리 값에 맞는 문장 검색 및 표출.
	nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nIndexBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nDistanNew);
	nIndex_Flag.nIndexCnt = 0;

	nIndex_Flag.nDistanRe++;
	nIndex_Flag.nDistanNew++;

	//nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput.nNum;
}

/********************************************************
	전송 문장이 있는지 체크한다.
*********************************************************/
UCHAR d_BetweenCnt = 0;
UCHAR d_Text_Send_Cnt = 0;
UCHAR d_Text_Send_Num = 0;
UCHAR d_Text_Send_NumBuf[20];
UCHAR d_Text_Send_AllNow = 0;
UCHAR d_Text_Send_NowCnt = 0;

void DP_Send_IDD_Check()
{
	char szBuf[512];
	int sTemp;
	UCHAR sTxTextNum = 0;
	
	UCHAR sImText[10]={"IM : "};
	UCHAR sPrText[10]={"PR : "};
	UCHAR sStText[15]={"TEXT SENDING.."};
	UCHAR sEndText[20]={"TEXT FINISH!!!"};

	UCHAR sIm_Pr_GpSendData[30];

	memset(sIm_Pr_GpSendData,0x20,30);

	szBuf[0] = 0;

	d_Text_Send_Cnt = nIndex_Flag.nAllCnt_Cnt;

	d_Text_Send_AllNow = nIndex_Flag.nIndexDI_DICnt;
	d_Text_Send_NowCnt = nIndex_Flag.nIndexCnt;

	
	if(WORD_L(nIndex_Flag.nIndexCnt) < WORD_L(nIndex_Flag.nIndexDI_DICnt))				// glIndex는 Tx 통신 루틴이 시작된 경우 
	{

		sTemp = nIndex_Flag.nIndexBuf[nIndex_Flag.nIndexCnt];
		
		//if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) == 3)//{memset(glGpBuf1,0x00,32);}}
		
		if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) ==0) //IM
		{
			 sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp].Number)+1;

			d_Text_Send_Num = d_Text_Send_Num%20;
			d_Text_Send_NumBuf[d_Text_Send_Num++] = sTxTextNum;

			//nTr_St_Info.nSendIddTxFlag = FALSE;

			if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum == 5)
			{
				memcpy(sIm_Pr_GpSendData,sImText,5);
				sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)+0x30;
				sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/10)+0x30;
				sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;

				memcpy(&sIm_Pr_GpSendData[9],sStText,14);

				gp_WritingStr(300,15,sIm_Pr_GpSendData);	// PIB에 문장 전송.
			}

			nSccSendFlag.nIM_Text.nTxNum = sTxTextNum;	//문장 전송하는 부분.
			nSccSendFlag.nIM_Text.nTxFlag = 1;

			nIndex_Flag.nIndexCnt++;
			nIndex_Flag.nAllCnt_Cnt++;

			//sprintf(szBuf,"--IM Text[%d]  : Send Cnt[%d] -> Dist[%d]\r\n",WORD_L(sTxTextNum),WORD_L(nIndex_Flag.nAllCnt_Cnt),nTmsRxData.nDist);
			//user_DebugPrint(szBuf);

		}		
		else if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type)==1) //PR
		{
			d_Text_Send_Num = sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp].Number)+1;
			//nTr_St_Info.nSendIddTxFlag = FALSE;

			if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum == 5)
			{
				memcpy(sIm_Pr_GpSendData,sPrText,5);
				sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)+0x30;
				sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/10)+0x30;
				sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;

				memcpy(&sIm_Pr_GpSendData[9],sStText,14);
				
				gp_WritingStr(300,15,sIm_Pr_GpSendData);	// PIB에 문장 전송.
			}

			nSccSendFlag.nPR_Text.nTxNum = sTxTextNum;	//문장 전송하는 부분.
			nSccSendFlag.nPR_Text.nTxFlag = 1;

			nIndex_Flag.nIndexCnt++;
			nIndex_Flag.nAllCnt_Cnt++;

			//sprintf(szBuf,"--PR Text[%d]  : Send Cnt[%d] -> Dist[%d]\r\n",WORD_L(sTxTextNum),WORD_L(nIndex_Flag.nAllCnt_Cnt),nTmsRxData.nDist);
			//user_DebugPrint(szBuf);

		}	

		if(WORD_L(nIndex_Flag.nIndexST_STAllCnt) <= WORD_L(nIndex_Flag.nAllCnt_Cnt))
		{
			d_BetweenCnt++;
			nIndex_Flag.nBetweenFlag = TRUE;	//마지막 문장으로 인식한다.	
			memcpy(sIm_Pr_GpSendData,sEndText,14);

			if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum == 5)
			{
				gp_WritingStr(300,15,sIm_Pr_GpSendData);	//클리어한다.
			}

			nIndex_Flag.nIndexCnt = 0;
			nIndex_Flag.nIndexDI_DICnt = 0;
		}
	}	
}
/********************************************************
	nTextNum    - 문장 번호
	nIM_PR_Code - IM 인지 PR 인지 구별하는 코드 
	nUnitCode   - 차내/측면을 구별하는 코드
	    -> 0xF1 차내
		-> 0xF6 측면
	기능 : 문장을 읽어서 전송한다.
*********************************************************/
void DP_IM_PR_TEXT_READ(UCHAR nTextNum,UCHAR nIM_PR_Code,UCHAR nUnitCode)
{
	int sTextLen;

	UCHAR sTX_DATABUF[550];
	UCHAR sIM_PRTXDATA[550];

	memset(sTX_DATABUF,0x00,550);
	memset(sIM_PRTXDATA,0x00,550);

	if(WORD_L(nIM_PR_Code) == 1)
	{
		NVSRAM_Find_IM(nTextNum,nIndex_Flag.nIM_PR_TEXT);
	}
	else if(WORD_L(nIM_PR_Code) == 4)
	{
		NVSRAM_Find_PR(nTextNum,nIndex_Flag.nIM_PR_TEXT);
	}

	sTextLen = DP_Insert_SpecialCodeNew(nIndex_Flag.nIM_PR_TEXT,sIM_PRTXDATA)+3;

	SCC_TX_PIB_TEXT(sTX_DATABUF,nUnitCode,0x31,0x0A,sTextLen,sIM_PRTXDATA);

	Delay_SCC3_SendTo(sTX_DATABUF,(sTextLen+10),SCC_B_CHANNEL,5);

}

/********************************************************
	Name  :	Scroll_Station_Name
	Input : pSData(Source Data Buf)
	Output: pDData(Destination Data Buf)
*********************************************************/

UCHAR DP_Scroll_Station_Name(UCHAR *pSData,UCHAR *pDData,UCHAR nBufLen,UCHAR nKorFlag)
{
	int i=0,k,j=0;
	int Space_Flag =0;

	if(WORD_L(pSData[j])==0x20)
	{
		for(j=1;j<20;j++) if(WORD_L(pSData[j])!=0x20) break;
	}
	if(WORD_L(pSData[j])!=0x20)
	{
		for(k=j;k<nBufLen;k++)
		{
			if(nKorFlag)
			{
				if(!WORD_L(pSData[k])){ break;}
				else {pDData[i++]=WORD_L(pSData[k]);}
			}
			else
			{
				if(!WORD_L(pSData[k])) break;
				else if(Space_Flag)
				{
					if(WORD_L(pSData[k])!=0x20) {pDData[i++]=WORD_L(pSData[k]); Space_Flag =0;}
				}	
				else if(WORD_L(pSData[k])==0x20)
				{
					pDData[i++]=WORD_L(pSData[k]);
					Space_Flag =1;
				}
				else pDData[i++]=WORD_L(pSData[k]);
			}
		}	
	}		
	return i;	
}		


/********************************************************
	Name  :	Insert_SpecialCode
	Input : pSData(Source Data Buf)
	Output: pDData(Destination Data Buf)
	IM 표출문에 현재역 및 해당되는 역을 삽입한다. (수정본)

*********************************************************/
UCHAR d_TextPo = 0;
UCHAR DP_Insert_SpecialCodeNew(UCHAR *pSData,UCHAR *pDData)
{
	int i,j,m=0,l=0,t=0;
	int nLen=0;
	int DestOffst=0;
	
	UCHAR nTemp[50];
	UCHAR nTempBuf[500];
	UCHAR Scroll_Left=0;	
	UCHAR Scroll_Reigt = 0;
	UCHAR Text_Code = 0;	//최측 표기언어인지 우측표기 언어인지 확인한다.

	PTIMEBUF nTimeBuf = (TIMEBUF *)m_ExperssTimeBuf;

	for(i=0;i<500;i++)
	{
		nTempBuf[i] = WORD_L(pSData[i]);
	}
	
	if(WORD_L(nTempBuf[9]==0x01))  //->
	{
		Scroll_Left=1;					// Scroll Left
		Scroll_Reigt = 0;
	}

	Text_Code = WORD_L(nTempBuf[12]);	//최측 표기언어인지 우측표기 언어인지 확인한다.

	for(i=0;i<14;i++) pDData[DestOffst++]= WORD_L(nTempBuf[i]);	// Header Update	
	for(i=14;i<500;i++)
	{
		if(WORD_L(nTempBuf[i]) == 0x40)						//(BYTE *)'@')
		{	
			if(!strncmp((char *)&nTempBuf[i+1],(char *)"[NextSta]",9))
			{
				if(Scroll_Left)
				{
					j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nEnNameBuf[0],nTemp,15,FALSE);
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=9; DestOffst+=j;
				}
				else 	
				{
					
					j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nEnNameBuf[0],nTemp,20,TRUE);

					j = (j>=12) ? 12 : j;

					memset(&pDData[DestOffst],0x20,12);

					memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);

					i+=9; DestOffst+=12;
					
				
				}	

			}	
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)NextSta]",11))
			{
				if(Scroll_Left)
				{
					j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nIRNameBuf[0],nTemp,30,FALSE);

					memcpy(&pDData[DestOffst],nTemp,j);

					i+=11;DestOffst+=j;
				}
				else 
				{	
					
					j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nIRNameBuf[0],nTemp,20,FALSE);
					j = (j>=12) ? 12 : j;

					memset(&pDData[DestOffst],0x20,12);

					memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);

					i+=11; DestOffst+=12;
					

				}	
			}	
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[DestSta]",9))
			{
				if(Scroll_Left)
				{
					j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nEnNameBuf[0],nTemp,15,FALSE);
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=9;DestOffst+=j;
				}
				else 
				{
					j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nEnNameBuf[0],nTemp,20,FALSE);
					j = (j>=12) ? 12 : j;

					memset(&pDData[DestOffst],0x20,12);

					memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);

					i+=9; DestOffst+=12;
				}			
			}	
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)DestSta]",11))
			{
				if(Scroll_Left)
				{
					j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nIRNameBuf[0],nTemp,30,FALSE);

					memcpy(&pDData[DestOffst],nTemp,j);

					i+=11;DestOffst+=j;
				}
				else
				{
					j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nIRNameBuf[0],nTemp,20,FALSE);
					j = (j>=12) ? 12 : j;

					memset(&pDData[DestOffst],0x20,12);

					memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);

					i+=11; DestOffst+=12;
				}		
			}
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[StartSta]",10))
			{
				if(Scroll_Left)
				{
					j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nEnNameBuf[0],nTemp,15,FALSE);
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=10; DestOffst+=j;
				}
				else 	
				{

					j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nEnNameBuf[0],nTemp,20,FALSE);
					j = (j>=12) ? 12 : j;

					memset(&pDData[DestOffst],0x20,12);

					memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);

					i+=10; DestOffst+=12;
				}	
			}
			
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)StartSta]",12))
			{
				if(Scroll_Left)
				{
					j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nIRNameBuf[0],nTemp,30,FALSE);

					memcpy(&pDData[DestOffst],nTemp,j);

					i+=12;DestOffst+=j;
				}
				else 
				{	
					j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nIRNameBuf[0],nTemp,20,FALSE);
					j = (j>=12) ? 12 : j;

					memset(&pDData[DestOffst],0x20,12);

					memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);

					i+=12; DestOffst+=12;
				}	
			}
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[H)Arrow]",9))
			{
				if(Scroll_Left)
				{
					if(WORD_L(nDisplayIndex.nDoor) == 0x01) 	   {memcpy(&pDData[DestOffst],"오른쪽",6);i+=9;DestOffst+=6;}
					else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst],"왼쪽",4);i+=9;DestOffst+=4;}
				}
				else
				{
					if(WORD_L(nDisplayIndex.nDoor) == 0x01) 	   {memcpy(&pDData[DestOffst],"  오 른 쪽  ",12);i+=9;DestOffst+=12;}
					else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst],"  왼    쪽  ",12);i+=9;DestOffst+=12;}
				}
			}	
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)Arrow]",9))
			{
				if(Scroll_Left)
				{
					if(WORD_L(nDisplayIndex.nDoor) == 0x01) 	   {memcpy(&pDData[DestOffst],"right",5);i+=9;DestOffst+=5;}
					else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst],"left",4);i+=9;DestOffst+=4;}
				}
				else 
				{

					d_TextPo++;

					if(WORD_L(nDisplayIndex.nDoor) == 0x01) 	   {memcpy(&pDData[DestOffst],"RIGHT",5);i+=9;DestOffst+=5;}
					else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst],"LEFT",4);i+=9;DestOffst+=4;}

				}
			}	
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[Arrow]",7))
			{
				if(WORD_L(nDisplayIndex.nDoor) == 0x01) 	   {memcpy(&pDData[DestOffst],"@[R)Arrow]",10);i+=7;DestOffst+=10;}
				else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst],"@[L)Arrow]",10);i+=7;DestOffst+=10;}
			}	
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[J)Arrow]",9))
			{
				if(WORD_L(nDisplayIndex.nDoor) == 0x01) 	   {memcpy(&pDData[DestOffst],m_JapanStBuf_R,2);i+=9;DestOffst+=2;}
				else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst],m_JapanStBuf_L,2);i+=9;DestOffst+=2;}

			}
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[C)Arrow]",9))
			{
				if(WORD_L(nDisplayIndex.nDoor) == 0x01) 	   {memcpy(&pDData[DestOffst],m_ChangStBuf_R,4);i+=9;DestOffst+=4;}
				else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst],m_ChangStBuf_L,4);i+=9;DestOffst+=4;}

			}
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[STH",4))
			{
				for(t=0;t<34;t++)
				{
					if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Button.nGPTranNumInput.nNum))
					{
						memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nStartHour,2);i+=4;DestOffst+=2;
						break;
					}
				}
			}
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[STM",4))
			{
				for(t=0;t<34;t++)
				{
					if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Button.nGPTranNumInput.nNum))
					{
						memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nStartMin,2);i+=4;DestOffst+=2;
						break;
					}
				}

			}
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[ETH",4))
			{
				for(t=0;t<34;t++)
				{
					if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Button.nGPTranNumInput.nNum))
					{
						memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nEndHour,2);i+=4;DestOffst+=2;
						break;
					}
				}

			}
			else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[ETM",4))
			{
				for(t=0;t<34;t++)
				{
					if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Button.nGPTranNumInput.nNum))
					{
						memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nEndMin,2);i+=4;DestOffst+=2;
						break;
					}
				}

			}
		

			else pDData[DestOffst++] = nTempBuf[i];
		} // if end 	
		else if(WORD_L(nTempBuf[i])== 0x1B)						//(BYTE *)'1B')e
		{
			pDData[DestOffst++]= WORD_L(nTempBuf[i++]);				
			pDData[DestOffst++]= WORD_L(nTempBuf[i++]);	
			pDData[DestOffst++]= WORD_L(nTempBuf[i]);	
		}
		else if(!WORD_L(nTempBuf[i])){DestOffst++; break;}
		else pDData[DestOffst++]= WORD_L(nTempBuf[i]);				
	}	
	return DestOffst;
}

/******************************************************************
	역명을 문장에 맞도록 순서를 제 조립 한다. 영어 같은 경우 뒤집어서 다시 정렬
*******************************************************************/
void DP_STNAME_CHANGE(UCHAR *pSDATA,UCHAR *pChDATA, UCHAR nLen)
{
	int i;
	for(i=0;i<nLen;i++)
	{
		 pChDATA[i]= pSDATA[(nLen-1)-i];
	}
}
/******************************************************************
	DP_SCC1_A_RX_PRO 
*******************************************************************/
UCHAR d_CarNum1 = 0;
UCHAR d_CarNumRem1 = 0;
UCHAR d_CarNum = 0;
UCHAR d_CarNumRem = 0;
UCHAR d_stChCnt = 0;
UINT d_dist = 0;
UINT d_dist1 = 0;

UCHAR d_SelfTxCnt = 0;

UCHAR d_TcmsRxInfo_Door = 0;

UCHAR d_MC1_Flag = 1;
UCHAR d_MC2_Flag = 1;

void DP_SCC1_A_RX_PRO(UCHAR *pRxData)
{

	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;
	DWORD sTrNUM = 0;
	int i;
	int sDoorInfo = 0;
	UINT sDist = 0;

	UCHAR sNowSt; // 현재역
	UCHAR sNextSt; //다음역
	UCHAR sDestSt; // 행선역

	PTMS_RX_DATA pTmsRxData = (TMS_RX_DATA *) pRxData;


	sTrNUM = BCD_BIN(MAKE_WORD(pTmsRxData->nCarTrainNum[0],pTmsRxData->nCarTrainNum[1]));

	sNowSt = MAKE_WORD(pTmsRxData->nNowCode[0],pTmsRxData->nNowCode[1]);
	sNextSt = MAKE_WORD(pTmsRxData->nNextCode[0],pTmsRxData->nNextCode[1]);
	sDestSt = MAKE_WORD(pTmsRxData->nDestCode[0],pTmsRxData->nDestCode[1]);


	pTmsTxData->nSTX = 0x02;
	pTmsTxData->nComandCode = 0x20;

	pTmsTxData->nNowCode[0] = pTmsRxData->nNowCode[0];
	pTmsTxData->nNowCode[1] = pTmsRxData->nNowCode[1];

	pTmsTxData->nNextCode[0] = pTmsRxData->nNextCode[0];
	pTmsTxData->nNextCode[1] = pTmsRxData->nNextCode[1];

	pTmsTxData->nDestCode[0] = pTmsRxData->nDestCode[0];
	pTmsTxData->nDestCode[1] = pTmsRxData->nDestCode[1];

	pTmsTxData->nCarTrainNum[0] = pTmsRxData->nCarTrainNum[0];
	pTmsTxData->nCarTrainNum[1] = pTmsRxData->nCarTrainNum[1];

	pTmsTxData->nDistance[0] = pTmsRxData->nDistance[0];
	pTmsTxData->nDistance[1] = pTmsRxData->nDistance[1];

	d_TcmsRxInfo_Door = nTr_St_Info.nTcmsRxDoorFlag = (pTmsRxData->nTrain_Info18_19.TEST_BIT.nDoorOpenA | pTmsRxData->nTrain_Info18_19.TEST_BIT.nDoorOpenB); 



	szBuf[0] = 0;

	/*
	//직통인지 일반인지 인식하는 부분 (TCMS 통신에서 4회이상 -> 10회 미만사이에 데이타를 이용한다)
	//선택화면에서 선택하였다면 TCMS 정보를 이용하지 않는다.
	if(!WORD_L(nSelf_Test.nSELF_Selt_Flag) && ((SCC1_INIT_A.RxOKCnt >= 4) && (SCC1_INIT_A.RxOKCnt < 30)))
	{
		if(WORD_L(pTmsRxData->BIT.nExpress)){ //직통
			nSelf_Test.nSELF_ICR_SELECT = 0;
		}
		else if(WORD_L(pTmsRxData->BIT.nNorMal)){ //일반
			nSelf_Test.nSELF_ICR_SELECT = 1; 
		}
		else {nSelf_Test.nSELF_ICR_SELECT = 1;} //디폴트 -> 일반.
	}
	*/

	nSelf_Test.nSELF_ICR_SELECT = 1;

	

	if(nDi_Check.nHcr.nFlag)
	{
		nTmsRxData.nDataDefin = 0x31;//pTmsRxData->nPiscFault.MC1_PiscF;

		pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.MasterBit = 1;

		if(!WORD_L(nTr_St_Info.nPowerOnFalg))
		{
			nTr_St_Info.nPowerOnFalg++;
			nTr_St_Info.nSelf_Test_Flag = TRUE; //전원이 ON되면 자기 진단을 실시 한다.

		}


	}
	
	else if(!nDi_Check.nHcr.nFlag && (pTmsRxData->nS_PiscFault.MC1_PiscF || pTmsRxData->nS_PiscFault.MC2_PiscF))
	{
		//if(d_MC1_Flag && pTmsRxData->nS_PiscFault.MC2_PiscF)
		//if(d_MC2_Flag && pTmsRxData->nS_PiscFault.MC1_PiscF)
		//{

			nTmsRxData.nDataDefin = 0x33; // 백업 동작시 동작 코드

			pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.MasterBit = 1;

			if(!WORD_L(nTr_St_Info.nPowerOnFalg))
			{
				nTr_St_Info.nPowerOnFalg++;
				nTr_St_Info.nSelf_Test_Flag = TRUE; //전원이 ON되면 자기 진단을 실시 한다.

			}
		//}

	}
	else
	{
		nTmsRxData.nDataDefin = 0x34;  //마스터가 아닌 곳은 대기 상태로 있는다.

		//pTmsTxData->nS_Master_Self_union.UCHAR = 0x01;

		pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.selfBit = 1; // 임수로 후부에서 TCMS 통신 데이타 참으로 수정.

		pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.MasterBit = 0;

	}
	

	nTmsRxData.nTrainKind = pTmsRxData->nTrainKind; // 차량 종별 코드 현시

	pTmsTxData->nTrainKind = pTmsRxData->nTrainKind;



	if((WORD_L(nTmsRxData.nDataDefin) >= 0x31) && (WORD_L(nTmsRxData.nDataDefin) <= 0x34))
	{
		nTr_St_Info.nMasterOffCnt = 0;

		if((WORD_L(nTmsRxData.nDataDefin) == 0x31) || (WORD_L(nTmsRxData.nDataDefin) == 0x33))
		{
			nTr_St_Info.nMasterFlag = TRUE;



			//Master에서 자기 진단 시험 기능 활성화 하는 부분.
			if(pTmsRxData->nTest10_11.TEST_BIT.B0_TR)
			{
				pTmsTxData->nTest07_08.TEST_BIT.B0_TR = pTmsRxData->nTest10_11.TEST_BIT.B0_TR;

				if(pTmsRxData->nTest10_11.TEST_BIT.B7_SR && pTmsRxData->nTest10_11.nTextCode)
				{

					pTmsTxData->nTest07_08.TEST_BIT.B7_SR = pTmsRxData->nTest10_11.TEST_BIT.B7_SR;
					pTmsTxData->nTest07_08.nTextCode = pTmsRxData->nTest10_11.nTextCode;

					if((nTr_St_Info.nTestCheckRemem != pTmsRxData->nTest10_11.nTextCode) && pTmsRxData->nTest10_11.nTextCode)
					{

						nTr_St_Info.nSelf_Test_Flag = TRUE;
					}

					nTr_St_Info.nTestCheckRemem =  pTmsRxData->nTest10_11.nTextCode;
				}
				
			}
			else if(pTmsRxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nTest_7) // TCMS 가 패턴 테스트 명령을 내린다.
			{
				nSccSendFlag.nPIBPaten = 1;
			}
			else
			{
				pTmsTxData->nTest07_08.TEST_BIT.B7_SR = 0x00;
				pTmsTxData->nTest07_08.TEST_BIT.B0_TR = 0x00;
				pTmsTxData->nTest07_08.nTextCode = 0x00;
			}
		}
		else
		{
			nTr_St_Info.nMasterFlag = FALSE;
		}
		
		if(WORD_L(nTr_St_Info.nAutoManuFlag)){} //수동 설정이면~~~
		else
		{
			//현재역, 다음역이 "0" 이면 자동 운전을 해제 한다.
			if((!WORD_L(sNowSt) || !WORD_L(sNextSt)) ||  !DWORD_L(sTrNUM))
			{
				nTr_St_Info.nTcmsAutoDriverFlag = FALSE; 
			} 
			else
			{
				nTr_St_Info.nTcmsAutoDriverFlag = TRUE;  
				nTr_St_Info.nAutoDoorFlag = FALSE; // 정상적으로 열번이 입력 되면 실행 중이던 시뮬레이션 중지.
				nTr_St_Info.nSimulationFlag = FALSE;

				if(WORD_L(sNowSt) == WORD_L(sNextSt))
				{//2011_11_10 
				//서울역 또는 인천공항 역에서 현재역,다음역은 이전 코드가 수신도고 있고, 열번, 행선 코드만 변경 되면
				//노선 표시기는 이전에 참이 였던 조건을 유지 하여 노선 표시기에 표출 하게 된다.
				//따라서 출입문이 OPEN 되었을 경우 현재역, 다음역 코드가 변경 된것 까지 확인 하고 전송 한다.
					nSccSendFlag.nRNDTXFlag = FALSE;
					
				}
			}


			//열차 번호와 행선은 출입문 정보와 관계 없이 변화 하면 표출한다.
			if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum) != DWORD_L(sTrNUM))  //출입문에 관계 없이 열번을 변경 된다.
			{
				if(DWORD_L(sTrNUM)){
					nTr_St_Info.nTcmsAutoDriverFlag = TRUE;//자동 운행 시작
					nSelect_Button.nGPTranNumInput.nNum = DWORD_L(sTrNUM);
					nSccSendFlag.nTranNum = 2;

					//sprintf(szBuf2,"-TRNUM Chang Data Tx... : [%d]",sTrNUM); strcat(szBuf,szBuf2);
					sdebugFlag = TRUE;

				}
			}



			//긴급 코드가 수신 되고 
			if(pTmsRxData->nEmergency15_16.TEST_BIT.B7_ON && WORD_L(pTmsRxData->nEmergency15_16.nTextCode))
			{
				nSccSendFlag.nEmergency_Text.nFlag = TRUE;

				if(nSccSendFlag.nEmergency_Text.nFlagCnt != WORD_L(pTmsRxData->nEmergency15_16.nTextCode))
				{

					nSccSendFlag.nClean = 2;
					//표출 하는 문장을 기억 하는 부분.
					nSccSendFlag.nEmergency_Text.nFlagCnt = WORD_L(pTmsRxData->nEmergency15_16.nTextCode);
					//IM 문장을 전송 하는 부분.
					nSccSendFlag.nIM_Text.nTxNum = WORD_L(pTmsRxData->nEmergency15_16.nTextCode);	//문장 전송하는 부분.
					nSccSendFlag.nIM_Text.nTxFlag = 1;


					pTmsTxData->nEmergency03_04.TEST_BIT.B7_ON = 1;
					pTmsTxData->nEmergency03_04.nTextCode = WORD_L(pTmsRxData->nEmergency15_16.nTextCode);

					pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nCall = pTmsRxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nCall;
					pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nOverload = pTmsRxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nOverload;
					pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nFire = pTmsRxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nFire;
					pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nSprinkler = pTmsRxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nSprinkler;
					pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nEmergency_Brk = pTmsRxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nEmergency_Brk;

					pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nTest_7 = TRUE;

				}

			}
			else if(nSccSendFlag.nEmergency_Text.nFlag && !WORD_L(pTmsRxData->nEmergency15_16.nTextCode))
			{
				nSccSendFlag.nEmergency_Text.nFlag = FALSE;

				pTmsTxData->nEmergency03_04.TEST_BIT.B7_ON = 0; 
				pTmsTxData->nEmergency03_04.nTextCode = 0;

				pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nCall = FALSE;
				pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nOverload = FALSE;
				pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nFire = FALSE;
				pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nSprinkler = FALSE;
				pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nEmergency_Brk = FALSE;

				pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nTest_7 = FALSE;

			}


			if(nSccSendFlag.nEmergency_Text.nRemem != nSccSendFlag.nEmergency_Text.nFlag)
			{
				nSccSendFlag.nEmergency_Text.nRemem = nSccSendFlag.nEmergency_Text.nFlag;

				nSccSendFlag.nClean = 2;

			}
			/////////////////////////////////////////////////////////////////////////////////////////////

			


			//2011_11_16 nOnlyDestSendFlag
			if(WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sDestSt)]) != WORD_L(nTr_St_Info.nOnlyDestSendFlag))
			{
				if(WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sDestSt)]) != 0xFF)
				{
					 nTr_St_Info.nTcmsAutoDriverFlag = TRUE;//자동 운행 시작
					 //2011_11_16 nOnlyDestSendFlag
					nTr_St_Info.nOnlyDestSendFlag =  WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sDestSt)]);
					nSccSendFlag.nDeSTCodeSet = 2;

					//2011_11_16 nOnlyDestSendFlag
					//sprintf(szBuf2,"-FDI Chang Data Tx... : [%02X]H",WORD_L(nTr_St_Info.nOnlyDestSendFlag)); strcat(szBuf,szBuf2);
					sdebugFlag = TRUE;

				}
			}

			/*
			//도착 직전에 출입문 뱡향이 바뀌면 다시 한번 전송한다.
			if(WORD_L(pTmsRxData->BIT.nNextSt)) //다음역 도착 직전에 코드 정보가 수신 되었을 경우
			{
				sDoorInfo = ((pTmsRxData->BIT.nDoor2<<1) | (pTmsRxData->BIT.nDoor1))&0x03;
				
				if(sDoorInfo&0x03) //값이 참이면.
				{
					if(WORD_L(nIndex_Flag.nBetweenFlag) && (WORD_L(nDisplayIndex.nDoor) != WORD_L(sDoorInfo)))
					{//마지막 문장이 전송되고 출입문 정보가 변경 되었을 경우

						nSccSendFlag.nManualSet = 2; //출입문 정보 문장을 다시 한번 표출한다.

						sprintf(szBuf2,"-Next St EVENT -> RX [%02X]H : Default[%02X]H",WORD_L(sDoorInfo),WORD_L(nDisplayIndex.nDoor));
						strcat(szBuf,szBuf2);
						sdebugFlag = TRUE;
					}

					nDisplayIndex.nDoor = sDoorInfo;
				}

			}*/

			//디버깅
			//if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }


		}

		//출입문이 열려 있을때문 검사 한다.
		if((nDi_Check.nDoor.nFlag||nTr_St_Info.nTcmsRxDoorFlag) && !WORD_L(nTr_St_Info.nAutoManuFlag)) //수동 설정이 되어 있으면 역코드 수신 상태를 확인 하지 않는다. 
		{
			
			if(WORD_L(StationCode_Definite(WORD_L(sNowSt),WORD_L(sNextSt))) >= 2 ) //현재역. 다음역이 정상 수신 되면 
			{

				nTmsRxData.nDoOpenIf = ((pTmsRxData->nTrain_Info18_19.TEST_BIT.nDoorOpenA <<1) | 
					                    (pTmsRxData->nTrain_Info18_19.TEST_BIT.nDoorOpenB))&0x03; //120820 출입문 정보는 도어 OPEN 일 경우 TCMS 정보로 계속 갱신 한다.
				//열번이 변경 되었을 경우
				if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) != DWORD_L(nSelect_Button.nGPTranNumInput.nNum))
				{
					if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum))
					{
						nDi_Check.nDoor.nFlagCnt = 0;

						nSccSendFlag.nTranNum = 2; //열번이 변경 되면 열번을 변경한다.

						nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput.nNum = sTrNUM;

						nSelect_Button.nGPTranNumInput.nFlag = TRUE;  //열번 변경에 따른 열번을 다시 검색 한다. 2010_07_31

						//sprintf(szBuf2,"-DIA FIND : [%d]",DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum));strcat(szBuf,szBuf2);strcat(szBuf,szBuf2);
						sdebugFlag = TRUE;
					}
					else{//열번 입력을 "0"으로 했을때.

						nTr_St_Info.nStopPatNum = FALSE;
						memset(nTr_St_Info.nGpStName.nNow,0x20,15);
						memset(nTr_St_Info.nGpStName.nNext,0x20,15);
						memset(nTr_St_Info.nGpStName.nDest,0x20,15);
						gpSETERR;
					}
				}

				//역 정보만 변경 되었을 경우
				if(nTr_St_Info.nStopPatNum && //열차 번호가 유효 하다면...
					(WORD_L(nSelect_Button.nGPTranNumInput.nNowSt_Re) != WORD_L(sNowSt) ||
					WORD_L(nSelect_Button.nGPTranNumInput.nNextSt_Re) != WORD_L(sNextSt)))
				{
					d_CarNum1 = nSelect_Button.nGPTranNumInput.nNowSt_Re = WORD_L(sNowSt);
					d_CarNumRem1 = nSelect_Button.nGPTranNumInput.nNextSt_Re = WORD_L(sNextSt);

					if(WORD_L(nSelect_Button.nGPTranNumInput.nNowSt_Re) != WORD_L(nSelect_Button.nGPTranNumInput.nNextSt_Re))
					{
						d_stChCnt++;

						nTr_St_Info.nAutoDoorFlag = FALSE; // 정상적으로 열번이 입력 되면 실행 중이던 시뮬레이션 중지.
						nTr_St_Info.nSimulationFlag = FALSE;

						nDi_Check.nDoor.nFlagCnt = 0;

						nTmsRxData.nNow = WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sNowSt)]);
						nTmsRxData.nNext = WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sNextSt)]);

						nTr_St_Info.nDoOp_StCh = TRUE;
						nTr_St_Info.nRxCode_NoNe_Flag = TRUE;

						//sprintf(szBuf2,"-Door Open St-St Code RX OK : Now[%02X]H : Next[%02X]H ",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext));
						//strcat(szBuf,szBuf2);
						sdebugFlag = TRUE;
					}

				}
				
			}
			else
			{
				nTr_St_Info.nRxCode_NoNe_Flag = FALSE;

				//sprintf(szBuf2,"-Door Open St-St Code RX NG-NG : Now[%02X]H : Next[%02X]H ",WORD_L(sNowSt),WORD_L(sNextSt));
				//strcat(szBuf,szBuf2);
				sdebugFlag = TRUE;
			}

			//if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }

			nTr_St_Info.nDoOp_StChFlag = TRUE; //120820 출입문이 열리고 정상적으로 통신이 이루어 졌다.
		}// 차량 이동 거리 값을 계산 한다.
		else if(!(nDi_Check.nDoor.nFlag||nTr_St_Info.nTcmsRxDoorFlag) && !WORD_L(nTr_St_Info.nAutoManuFlag))
		{

			sDist = MAKE_WORD(pTmsRxData->nDistance[0],pTmsRxData->nDistance[1]);
		
			// 차량 수신 거리 값 처리 방법 변경.
			if(DWORD_L(sDist) < nDi_Check.nDist.nRemem) 
			{
				//sDist = 0xFFFF - sDist; 
				d_dist = nDi_Check.nDist.nFlagCnt = DWORD_L(nDi_Check.nDist.nFlagCnt) + ( nDi_Check.nDist.nRemem - DWORD_L(sDist)) ;
			}
			else
			{
				d_dist = nDi_Check.nDist.nFlagCnt = DWORD_L(nDi_Check.nDist.nFlagCnt) + ( DWORD_L(sDist) - nDi_Check.nDist.nRemem) ;
			}


			nDi_Check.nDist.nRemem = DWORD_L(sDist);

		}

		
	}
	else
	{
		if(WORD_L(nTr_St_Info.nMasterFlag) || WORD_L(nTr_St_Info.nTcmsAutoDriverFlag))
		{
			nTr_St_Info.nMasterOffCnt = 5;

			memset(&nSccSendFlag,0x00,sizeof(nSccSendFlag));

			nSelect_Button.nGPTranNumInput.nNum = 0;     //열차 번호를 클리어 한다.  //2011_05_02
			nSelect_Button.nGPTranNumInput.nRemNum = 0;  //열차 번호 기억 변수도 클리어 한다.//2011_05_02

			nTr_St_Info.nAutoManuFlag = FALSE;//수동 설정

			nTr_St_Info.nSimulationRun = FALSE; 

			nTr_St_Info.nSimulationFlag = FALSE;
			nTr_St_Info.nAutoDoorFlag = FALSE;

		
			nTr_St_Info.nSpeed = 0;
			nTr_St_Info.nDistance = 0;

			nTr_St_Info.nDoor = 1;

			nTr_St_Info.nDoorOPenCnt = 0;

			nSccSendFlag.nClean = 3; //무표시 전송
			nTr_St_Info.nClean_Flag = FALSE; //시뮬레이션이 완료 되면 무표시 flage가 FALSE로 된다.

			memset(mSelfTest_NG_CntBuf,0x00,sizeof(mSelfTest_NG_CntBuf));//2011_02_17 3.2버전//

			if(nTr_St_Info.nDISFPatFlag)
			{
				nTr_St_Info.nDISFPatFlag = FALSE; //노선 표시기가 패턴 중이 였다면 정지
				nSccSendFlag.nS_FDIPaten = 2;
			}

			nTr_St_Info.nStopPatNum = FALSE;

			//sprintf(szBuf,"-Master Key Off [%02X] \r\n",nTmsRxData.nDataDefin);
			//user_DebugPrint(szBuf);

			//DP_SEND_PRO();       //통신 TX 부분을 이곳에서 처리 한다.
		
		}

		nTr_St_Info.nTcmsAutoDriverFlag = FALSE;
		nTr_St_Info.nMasterFlag = FALSE;  



		if(WORD_L(nTr_St_Info.nMasterOffCnt))
		{
			nTr_St_Info.nMasterOffCnt--;
			DP_SEND_PRO();       //통신 TX 부분을 이곳에서 처리 한다.
		}
		

		nIndex_Flag.nIndexCnt = 0;
		nIndex_Flag.nIndexDI_DICnt = 0;
		nIndex_Flag.nIndexST_STAllCnt = 0;
		nIndex_Flag.nAllCnt_Cnt = 0;
	}

	pTmsTxData->nETX = 0x03;

	MakeBcc(&m_SCCPISTXBuff_Ach[1],42);

}
/******************************************************************
	통신 TX 부분을 이곳에서 처리 한다.
*******************************************************************/
UCHAR dStStion = 0;
UCHAR dRndNow = 0;
UCHAR dRndNext = 0;
UCHAR dRndDest = 0;
UCHAR dRndDistance = 0;
UCHAR d_SendCnt = 0;
UCHAR d_RndTxCnt = 0;
void DP_SEND_PRO()
{
	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;

	UCHAR sDestTxBuf[20];
	UCHAR sClean_Tx_Buf[20];
	UCHAR sSimu_Tx_Buf[20];
	UCHAR sAddSet_Tx_Buf[20];

	UCHAR sSelf_Tx_Buf[20];
	UCHAR sRnd_Tx_Buf[20];
	UCHAR nDest_Num = 0;

	szBuf[0] = 0;

	if(WORD_L(nTr_St_Info.nSelf_Test_Flag))	//자기 진단 진행중일때 전송한다.
	{
		if(pTmsTxData->nTest07_08.TEST_BIT.B0_TR) //시험 실행 요구가 들오 오면 시험결과를 보내 준다.
		{
			pTmsTxData->nTest_State = 0x01; // 시험중.
		}
		

		memcpy(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT_ADD_NOR_PIB,DISPLAY_STANDARD_UNIT);
		//memcpy(&nSelf_Test.nSELF_ADDDATA_BUF[DISPLAY_STANDARD_UNIT_A],DISPLAY_UNIT_ADD_NOR_RND,DISPLAY_STANDARD_UNIT_B);
		if(nSelf_Test.nSELF_All_Cnt < SELF_TEST_ALLCNT){
			DP_SelfTest(nSelf_Test.nSELF_ADDDATA_BUF,nSelf_Test.nSELF_RXDATA_Buf,DISPLAY_STANDARD_UNIT);	// 일반
		}

		/*
		if(nSelf_Test.nSELF_All_Cnt_B < SELF_TEST_ALLCNT){
			DP_SelfTest_B(&nSelf_Test.nSELF_ADDDATA_BUF[DISPLAY_STANDARD_UNIT_A],&nSelf_Test.nSELF_RXDATA_Buf[DISPLAY_STANDARD_UNIT_A],DISPLAY_STANDARD_UNIT_B);	// 일반
		}
		*/

	

		//if(WORD_L(nSelf_Test.nSELF_All_Cnt) >=SELF_TEST_ALLCNT && nSelf_Test.nSELF_All_Cnt_B >= SELF_TEST_ALLCNT)	//전책 반복 횟수가 3회를 넘으면 종료.
		if(WORD_L(nSelf_Test.nSELF_All_Cnt) >=SELF_TEST_ALLCNT)	//전책 반복 횟수가 3회를 넘으면 종료.
		{
			nSelf_Test.nSELF_All_Cnt = 0;
			nSelf_Test.nSELF_All_Cnt_B = 0;
			d_ICR_Select = nSelf_Test.nSELF_ICR_SELECT;
			
			nTr_St_Info.nSelf_Test_Flag = FALSE;
			nLedDataLoad.nSelfTestFlag = FALSE;

			DP_TCMSSD_Format(TCMSSD,&m_SCCPISTXBuff_Ach[22]); //TCMS 전송 DATA 를 갱신 한다.

			if(pTmsTxData->nTest07_08.TEST_BIT.B0_TR) //시험 실행 요구가 들오 오면 시험결과를 보내 준다.
			{
				pTmsTxData->nTest_State = 0x02; // 시험 완료.
				pTmsTxData->nS_TEST_RESULT.UCHAR = 0xFF; //시험 결과 1 = OK / 0 = NG
			}
			
			if(nTr_St_Info.nPowerOnFalg == 1)
			{
				nTr_St_Info.nPowerOnFalg++;

				if((TCMSSD[0].DR.BYTE &0x03) && (TCMSSD[1].DR.BYTE&0x07) && (TCMSSD[2].DR.BYTE&0x07)) // 장치가 모두 죽었을 경우에 대하여 0으로 설정 한다.(13_06_24 수정)
				{
					pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.selfBit =  0;
				}
				else {pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.selfBit = 1; }
			}

			//sprintf(szBuf2,"#Self Test FINISH");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
			
		}
	}
	else if(WORD_L(nSccSendFlag.nManualSet)) // 수동 설정시 문장 전송
	{
		if(nSccSendFlag.nManualSet == 2)
		{
			DP_IM_PR_TEXT_READ(100,1,0xF1);	//차내 수동 설정 표시기에 96번 표출 문장을 전송한다.
		}
		else if(nSccSendFlag.nManualSet == 1)
		{
			//DP_IM_PR_TEXT_READ(99,1,0xF1);	//차내 수동 설정 표시기에 97번 표출 문장을 전송한다.
		}
		nSccSendFlag.nManualSet--;
	}
	else if(WORD_L(nSccSendFlag.nDeSTCodeSet) || WORD_L(nSccSendFlag.nTranNum)) // 정면 행선 표시기 출력
	{
		//2011_11_16 nOnlyDestSendFlag
		nDest_Num = WORD_L(nTr_St_Info.nOnlyDestSendFlag)+1;

		if(nSccSendFlag.nDeSTCodeSet && nSccSendFlag.nTranNum){
			//SCC_TX_PROTOCOL(sDestTxBuf,0xF8,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum),0,0,0,10);
			if(nSccSendFlag.nDeSTCodeSet == 2)
			{
				SCC_TX_PROTOCOL(sClean_Tx_Buf,0xF5,0x31,0x1A,0,0,0,0,0,10);
				Delay_SCC3_SendTo(sClean_Tx_Buf,20,SCC_B_CHANNEL,5);
			}
			else
			{
				DP_IM_PR_TEXT_READ(71,1,0xF5);	
			}
			//sprintf(szBuf2,"#SEND FDI-TRNUM Tx Ok");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
		}
		else if(nSccSendFlag.nDeSTCodeSet)
		{
			//SCC_TX_PROTOCOL(sDestTxBuf,0xF5,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum),0,0,0,10);
			if(nSccSendFlag.nDeSTCodeSet == 2)
			{
				SCC_TX_PROTOCOL(sClean_Tx_Buf,0xF5,0x31,0x1A,0,0,0,0,0,10);
				Delay_SCC3_SendTo(sClean_Tx_Buf,20,SCC_B_CHANNEL,5);
			}
			else
			{
				DP_IM_PR_TEXT_READ(71,1,0xF5);	//차내 수동 설정 표시기에 96번 표출 문장을 전송한다.
			}
			//sprintf(szBuf2,"#SEND FDI Tx Ok");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
		}
		else if(nSccSendFlag.nTranNum)
		{
			//SCC_TX_PROTOCOL(sDestTxBuf,0xF7,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum),0,0,0,10);

			//sprintf(szBuf2,"#SEND TRNUM Tx Ok");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
		}

		//Delay_SCC3_SendTo(sDestTxBuf,20,SCC_B_CHANNEL,5);

		if(nSccSendFlag.nDeSTCodeSet)nSccSendFlag.nDeSTCodeSet--;
		if(nSccSendFlag.nTranNum)nSccSendFlag.nTranNum--;
	}
	else if(WORD_L(nSccSendFlag.nCarNum)) //호차 번호 표시기 숫자 표현.
	{
		nSccSendFlag.nCarNum = 0;

		SCC_TX_PROTOCOL(sDestTxBuf,0xFA,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum),0,0,0,10);
		Delay_SCC3_SendTo(sDestTxBuf,20,SCC_B_CHANNEL,5);

		//sprintf(szBuf2,"#SEND CarNum Tx Ok");strcat(szBuf,szBuf2);sdebugFlag = TRUE;

	}
	else if(WORD_L(nSccSendFlag.nClean)) //차내 표시기 클리어
	{
		SCC_TX_PROTOCOL(sClean_Tx_Buf,0xF1,0x31,0x1A,0,0,0,0,0,10);
		
		Delay_SCC3_SendTo(sClean_Tx_Buf,20,SCC_B_CHANNEL,5);
		
		nSccSendFlag.nClean--;

		//sprintf(szBuf2,"#SEND Text Clean OK");strcat(szBuf,szBuf2);sdebugFlag = TRUE;
		
	}
	else if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.nSimulationFlag) || nTr_St_Info.nAutoManuFlag) //주행 및 시뮬레이션 기능 동작시 조작 가능한 조건들.
	{
		
		if(WORD_L(nSccSendFlag.nIM_Text.nTxFlag) && !WORD_L(nTr_St_Info.nClean_Flag)) //무표시 조작시 전송 금지.
		{
			
			DP_IM_PR_TEXT_READ(WORD_L(nSccSendFlag.nIM_Text.nTxNum),1,0xF1);	//문장을 읽어서 전송한다.
			nSccSendFlag.nIM_Text.nTxFlag = 0;

			//sprintf(szBuf2,"#SEND IM OK[%d] ",WORD_L(nSccSendFlag.nIM_Text.nTxNum));strcat(szBuf,szBuf2);sdebugFlag = TRUE;

		}
		else if(WORD_L(nSccSendFlag.nPR_Text.nTxFlag) && !WORD_L(nTr_St_Info.nClean_Flag))//무표시 조작시 전송 금지.
		{
			//d_SendCnt++;
			DP_IM_PR_TEXT_READ(WORD_L(nSccSendFlag.nPR_Text.nTxNum),4,0xF1);	//문장을 읽어서 전송한다.
			nSccSendFlag.nPR_Text.nTxFlag = 0;

			//sprintf(szBuf2,"#SEND PR OK[%d] ",WORD_L(nSccSendFlag.nPR_Text.nTxNum));strcat(szBuf,szBuf2);sdebugFlag = TRUE;

		}
		else if(WORD_L(nSccSendFlag.nRNDTXFlag) && 	!WORD_L(nTr_St_Info.nClean_Flag))//노선 표시기 전송.  //무표시 조작시 전송 금지.
		{

			if((WORD_L(nTr_St_Info.nNow.nCode)+1) && (WORD_L(nTr_St_Info.nNext.nCode)+1) && (WORD_L(nTr_St_Info.nDest.nCode)+1))
			{
				if(!DWORD_L(nTr_St_Info.nDistance))
				{
					if(dRndNow != (WORD_L(nTr_St_Info.nNow.nCode)+1) && dRndNext != (WORD_L(nTr_St_Info.nNext.nCode)+1))
					{
						dRndDistance = DWORD_L(nTr_St_Info.nDistance);
					}
				}
				else {dRndDistance = DWORD_L(nTr_St_Info.nDistance); }

				dStStion = WORD_L(nTr_St_Info.nStart.nCode)+1;
				dRndNow  = WORD_L(nTr_St_Info.nNow.nCode)+1;
				dRndNext = WORD_L(nTr_St_Info.nNext.nCode)+1;
				dRndDest = WORD_L(nTr_St_Info.nDest.nCode)+1;

				SCC_RNDTX_PROTOCOL(sRnd_Tx_Buf,0xF9,0x31,0x28,dRndNow,dRndNext,dRndDest,dStStion,dRndDistance,10);
				Delay_SCC3_SendTo(sRnd_Tx_Buf,20,SCC_B_CHANNEL,5);

				d_RndTxCnt++;

				
				//if(!(d_RndTxCnt%10))
				//{
					//sprintf(szBuf2,"#RND TX DATA : StartST[%02X]H-NowST[%02X]H-NextST[%02X]H-DestST[%02X]H-Distan[%d]",dStStion,dRndNow,dRndNext,dRndDest,dRndDistance);
					//strcat(szBuf,szBuf2);sdebugFlag = TRUE;
				//}
				
			}
			
			nSccSendFlag.nRNDTXFlag = 0;
		}
	}
	else if(!WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) && !WORD_L(nTr_St_Info.nSimulationFlag))//자동 운전도 아니고 시뮬레이션도 아닐때 패턴 TEST 실시 한다.
	{
		d_SendCnt++;
	
		if(nSccSendFlag.nPIBPaten) // 차내 패턴 TEST
		{
			if(nTr_St_Info.nPIBPatFlag)
			{
				SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x0B,0,0,0,0,0,10);
			}
			else
			{
				SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x1B,0,0,0,0,0,10);
			}

			Delay_SCC3_SendTo(sSimu_Tx_Buf,20,SCC_B_CHANNEL,5);
			nSccSendFlag.nPIBPaten = 0;
		}
		else if(nSccSendFlag.nS_FDIPaten) // 정면,열번,노선 패턴 TEST
		{
			if(nSccSendFlag.nS_FDIPaten == 0x01)
			{
				if(nTr_St_Info.nDISFPatFlag)
				{
					SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x0B,0,0,0,0,0,10);
				}
				else
				{
					SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x1B,0,0,0,0,0,10);
				}
			}
			else if(nSccSendFlag.nS_FDIPaten == 0x02) // 호차 번호 표시기 패턴 TEST ??? 확인 필요
			{
				if(nTr_St_Info.nDISFPatFlag)
				{
					SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xFA,0x31,0x0B,0,0,0,0,0,10);
				}
				else
				{
					SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xFA,0x31,0x1B,0,0,0,0,0,10);

					nSccSendFlag.nCarNum = 1; //호차 번호 표시기는 패턴이 끝나면 숫자를 표출한다.
				}
			}

			Delay_SCC3_SendTo(sSimu_Tx_Buf,20,SCC_B_CHANNEL,5);

			nSccSendFlag.nS_FDIPaten--;
		}
	}

	//디버깅
	//if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }
}

/////////////////////////////////////////////////////////////////////////
//차량에 상관 없이 8량 기준에 맞추어 재구성 후 DATA 출력 //2004_10_13
/////////////////////////////////////////////////////////////////////////
UCHAR d_self_Buf[60];
void DP_SD_Format_Change(UCHAR *pDData)
{
	int i;

	memcpy(d_self_Buf,pDData,60);

	for(i=0;i<18;i++) TCMSSD[i].DR.BYTE = 0x00;

	for(i=0;i<60;i++)
	{
		
		if( WORD_L(mSelfTest_NG_CntBuf[i]) >= SELF_TEST_ALLCNT)//2011_02_17 3.2버전
		{
			pDData[i] = 1;
		}
		else{
			pDData[i] = 0;
		}

	}

	//TC1
	TCMSSD[0].DR.BIT.B0 = pDData[6];//FID1
	TCMSSD[0].DR.BIT.B1 = pDData[7];//FID2
	TCMSSD[0].DR.BIT.B2 = 0;
	TCMSSD[0].DR.BIT.B3 = 0;
	TCMSSD[0].DR.BIT.B4 = 0;
	TCMSSD[0].DR.BIT.B5 = 0;
	TCMSSD[0].DR.BIT.B6 = 0;
	TCMSSD[0].DR.BIT.B7 = 0;
	

	//CAR1
	TCMSSD[1].DR.BIT.B0 = pDData[0] ; 	//IDU1
	TCMSSD[1].DR.BIT.B1 = pDData[3] ;   //IDU2
	TCMSSD[1].DR.BIT.B2 = pDData[1]; ;	//IDU3
	TCMSSD[1].DR.BIT.B3 = 0 ;	//IDU4
	TCMSSD[1].DR.BIT.B4 = 0 ;	//FSM1   - CNSU1
	TCMSSD[1].DR.BIT.B5 = 0 ;	//FSM2
	TCMSSD[1].DR.BIT.B6 = 0 ;	//FSM3
	TCMSSD[1].DR.BIT.B7 = 0 ;	//FSM4   - CNSU2

	//CAR1
	TCMSSD[2].DR.BIT.B0 = pDData[4] ; 	//IDU1
	TCMSSD[2].DR.BIT.B1 = pDData[2] ;   //IDU2
	TCMSSD[2].DR.BIT.B2 = pDData[5] ;	//IDU3
	TCMSSD[2].DR.BIT.B3 = 0 ;	//IDU4
	TCMSSD[2].DR.BIT.B4 = 0 ;	//FSM1   - CNSU1
	TCMSSD[2].DR.BIT.B5 = 0 ;	//FSM2
	TCMSSD[2].DR.BIT.B6 = 0 ;	//FSM3
	TCMSSD[2].DR.BIT.B7 = 0 ;	//FSM4   - CNSU2

}


void DP_TCMSSD_Format(TMS_SEND_DATA *Type,UCHAR *pDData)		
{
	int i;
	
	DP_SD_Format_Change(nSelf_Test.nSELF_RXDATA_Buf);

	//pDData[0] = 0x30;
	for(i=0;i<3;i++) pDData[(i)] = Type[i].DR.BYTE;
	//pDData[11] = ROM_VER;

}	
/******************************************************************
	
*******************************************************************/

void DP_IDC_SW_UPLOAD_Pro()
{
	DWORD i=0;
	UCHAR sDATA_IDC;
	UCHAR sDataBuf[10];
	
	if(((SanDisk_Vari.nDiskUpChekFlag == 1) || (SanDisk_Vari.nDiskUpChekFlag == 2)||(SanDisk_Vari.nDiskUpChekFlag == 3)) 
	  && SanDisk_Vari.nDiskInputCheckFlag)
	{
		if(!DWORD_MASKING(Idc_Load.nDataNvsrLoad))
		{
			if(!WORD_L(Idc_Load.nErCnt))
			{
				Idc_Load.nErCnt = NorFlashAllErase();
			}
			else if(WORD_L(Idc_Load.nErCnt)) 
			{
				Idc_Load.nErCnt++; 
			}

			if(WORD_L(Idc_Load.nErCnt)==50 && !DWORD_MASKING(Idc_Load.nDataNvsrLoad))
			{
				Idc_Load.nDataNvsrLoad = Nvsram_IDC_UpLoad_Da();	//IDC 파일 사이즈를 리턴한다.
			}
		}

		if(DWORD_MASKING(Idc_Load.nDataNvsrLoad))
		{
			Idc_Load.nDataNvsrWait++;

			if(DWORD_MASKING(Idc_Load.nDataNvsrWait)>=5)
			{
				for(i=0;i<512;i++)
				{
					if(DWORD_MASKING(Idc_Load.nRomWriteCnt)>= DWORD_MASKING(Idc_Load.nDataNvsrLoad))
					{
						Idc_Load.nDataNvsrLoad = 0;
						Idc_Load.nDataNvsrWait = 0;
						Idc_Load.nErCnt = 0;
						Idc_Load.nRomWriteCnt = 0;
						Idc_Load.nKO_Flag = 1;
						Idc_Load.nIDC_ROM_Flag = 0;

						gpBuzzerOn;

						break;
					}
					else
					{
						sDATA_IDC = NVSRAM(Idc_Load.nRomWriteCnt);
						NorFlashWrite(Idc_Load.nRomWriteCnt,sDATA_IDC);
					}

					Idc_Load.nRomWriteCnt++;
				}
			}
		}
	}
}

/******************************************************
	Name 	: STOP_PT_INFO_ITEM_FUNCT //2010-05-10
	Purpose : 역간 정보와 정차 패턴을 하나로 관리 한다.
*******************************************************/
WORD d_DP_STOP_PT_INFO_ITEM_FUNCT = 0;
WORD d_DP_STOP_PT_INFO_ITEM_FUNCT_2 = 0;
UCHAR d_DP_BUFF[20];

void DP_STOP_PT_INFO_ITEM_FUNCT(STOP_PT_INFO_ITEM *pData)
{

	int s_St_Info_Point = 0;
	int s_Stop_Pt_Item_Point = 0;
	int i = 0;
	int sAdd = 0;
	int sForCnt = 0;
	int sCnt=0;
	int sCnt2=0;


	pST_INFO pSt_Info;
	pST_INFO_B pSt_Info_b;

	pSTOP_PT_ITEM pStop_Pt_Item;
	pSTOP_PT_ITEM_B pStop_Pt_Item_b;

	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);

	s_St_Info_Point = MAKE_DWORD(pDest_s->nAdd2_St_Info_b[0],pDest_s->nAdd2_St_Info_b[1],pDest_s->nAdd2_St_Info_b[2],pDest_s->nAdd2_St_Info_b[3]);
	s_Stop_Pt_Item_Point = MAKE_DWORD(pDest_s->nAdd4_Stop_Pt_I_b[0],pDest_s->nAdd4_Stop_Pt_I_b[1],pDest_s->nAdd4_Stop_Pt_I_b[2],pDest_s->nAdd4_Stop_Pt_I_b[3]);

	pSt_Info = (ST_INFO *) NVSRAM_ADD(s_St_Info_Point);
	sCnt = MAKE_WORD(pSt_Info->nCnt.nNum_b[0],pSt_Info->nCnt.nNum_b[1]);
	pSt_Info_b = (ST_INFO_B *)calloc(sCnt,sizeof(ST_INFO_B));
	pSt_Info_b = (ST_INFO_B *) NVSRAM_ADD(s_St_Info_Point+2);


	pStop_Pt_Item = (STOP_PT_ITEM *)NVSRAM_ADD(s_Stop_Pt_Item_Point);
	sCnt2 = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.nNum_b[1]);
	pStop_Pt_Item_b = (STOP_PT_ITEM_B *)calloc(sCnt2,sizeof(STOP_PT_ITEM_B));
	pStop_Pt_Item_b = (STOP_PT_ITEM_B *)NVSRAM_ADD(s_Stop_Pt_Item_Point+2);


	memcpy(pData->nCnt.nNum_b,pStop_Pt_Item->nCnt.nNum_b,2);

	//free(pData->pBody);
	//pData->pBody = (STOP_PT_INFO_ITEM_B *)calloc(sCnt2,sizeof(STOP_PT_INFO_ITEM_B));

	/*
	d_DP_BUFF[0] = s_St_Info_Point;
	d_DP_BUFF[1] = s_Stop_Pt_Item_Point;
	d_DP_BUFF[2] = MAKE_WORD(pSt_Info->nCnt.nNum_b[0],pSt_Info->nCnt.nNum_b[1]);
	d_DP_BUFF[3] = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.nNum_b[1]);
	*/

	sForCnt = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.nNum_b[1]);

	d_DP_BUFF[4] = sForCnt;

	//개수 만큼 반복 입력 한다.
	for(i = 0;i<sForCnt;i++)
	{
		sAdd = MAKE_WORD(pStop_Pt_Item_b[i].nSt_Info_b[0],pStop_Pt_Item_b[i].nSt_Info_b[1]);
		//역간 정보를 입력 한다.
		memcpy(pData->pBody[i].nSt_Info_flag.nSt_Index_b,pSt_Info_b[sAdd].nSt_Index_b,2);
		memcpy(pData->pBody[i].nSt_Info_flag.nArr_Index_b,pSt_Info_b[sAdd].nArr_Index_b,2);
		memcpy(pData->pBody[i].nSt_Info_flag.nSt_Dist_b,pSt_Info_b[sAdd].nSt_Dist_b,2);

		//정차 패턴 ITEM을 입력 한다.
		pData->pBody[i].nDoor_Info = pStop_Pt_Item_b[i].nDoor_Info;
		memcpy(pData->pBody[i].nSt_Time_b,pStop_Pt_Item_b[i].nSt_Time_b,3);
		memcpy(pData->pBody[i].nStop_Time_b,pStop_Pt_Item_b[i].nStop_Time_b,3);

	}

	free(pSt_Info_b);
	free(pStop_Pt_Item_b);

}
/******************************************************
	Name 	: DP_STOP_PT_INFO_G_FUNCT //2010-05-11
	Purpose : 정차 패턴 그룹을 하나로 관리 한다.
*******************************************************/
UCHAR d_DP_STOP_PT_INFO_G_FUNCT = 0;
UCHAR d_DP_STOP_Buf[20];
void DP_STOP_PT_INFO_G_FUNCT(STOP_PT_G_I_HAP *pData)
{
	int i,j;
	int sCnt = 0;
	int sStG_IndexCnt = 0;

	STOP_PT_INFO_ITEM nStop_Pt_Info_Flag; //정차 패턴 ITEM 더하기 역간 정보

	pSTOP_PT_G_B pStop_Pt_G = (STOP_PT_G_B *)NVSRAM_ADD(nStart_Address_Point.nSt_Pt_G_Address); //정차 패턴 그룹 주소.
	pSTOP_PT_G_B_B pStop_Pt_G_b;

	DP_STOP_PT_INFO_ITEM_FUNCT(&nStop_Pt_Info_Flag); ////정차 패턴 ITEM 더하기 역간 정보 합치는 부분.

	memcpy(pData->nHeader.nSt_Index_b,pStop_Pt_G->nHeader.nSt_Index_b,2);
	memcpy(pData->nHeader.nEn_Index_b,pStop_Pt_G->nHeader.nEn_Index_b,2);
	memcpy(pData->nHeader.nSt_P_G_Cnt_b,pStop_Pt_G->nHeader.nSt_P_G_Cnt_b,2);

	d_DP_STOP_PT_INFO_G_FUNCT = sCnt = MAKE_WORD(pStop_Pt_G->nHeader.nSt_P_G_Cnt_b[0],pStop_Pt_G->nHeader.nSt_P_G_Cnt_b[1]);

	pStop_Pt_G_b = (STOP_PT_G_B_B *)calloc(sCnt,sizeof(STOP_PT_G_B_B));
	pStop_Pt_G_b = (STOP_PT_G_B_B *)NVSRAM_ADD(nStart_Address_Point.nSt_Pt_G_Address+6); //정차 패턴 그룹 주소.

	//free(pData->nSt_Pt_G_I_Flage);
	//pData->nSt_Pt_G_I_Flage = (STOP_PT_INFO_ITEM_B *)calloc(sCnt,sizeof(STOP_PT_INFO_ITEM_B));


	memset(d_DP_STOP_Buf,0x00,20);

	for(i=0;i<WORD_L(sCnt);i++)
	{
		
	    d_DP_STOP_Buf[i] =  sStG_IndexCnt =MAKE_WORD(pStop_Pt_G_b[i].nSt_P_Item_Index_b[0],pStop_Pt_G_b[i].nSt_P_Item_Index_b[1]);
		
		memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b,nStop_Pt_Info_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Index_b,2);
		memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b,nStop_Pt_Info_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nArr_Index_b,2);
		memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Dist_b,nStop_Pt_Info_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Dist_b,2);

		pData->nSt_Pt_G_I_Flage[i].nDoor_Info = nStop_Pt_Info_Flag.pBody[sStG_IndexCnt].nDoor_Info;

		memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Time_b,nStop_Pt_Info_Flag.pBody[sStG_IndexCnt].nSt_Time_b,3);
		memcpy(pData->nSt_Pt_G_I_Flage[i].nStop_Time_b,nStop_Pt_Info_Flag.pBody[sStG_IndexCnt].nStop_Time_b,3);
	}

	free(pStop_Pt_G_b);
	free(nStop_Pt_Info_Flag);
}
/******************************************************
	Name 	: DP_DISP_G__HAP //2010-05-11
	Purpose : Dispay 그룹을 더한다.
*******************************************************/
UCHAR d_disp_g_cnt = 0;
void DP_DISP_G__HAP(DISPLAY_G_I_H *pData)
{
	int sCnt = 0;
	int sCnt2 =0;
	int i;
	int sDisplayItemAdd_D = 0;
	DWORD sDisItemAdd = 0;

	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //프로그램 시작한때 전체 주소 리스트

	//동적배열 선언
	pDISPLAY_GROUP nDisplay_G = (DISPLAY_GROUP *)NVSRAM_ADD(nStart_Address_Point.nDisp_G_Address); //Display Group address
	pDISPLAY_G_B nDisplay_G_b;

	//동적배열 선언
	pDISPLAY_ITEM nDisplay_I;
	pDISPLAY_ITEM_B nDisplay_I_b;

	sDisItemAdd = MAKE_DWORD(pDest_s->nAdd6_Display_I_b[0],pDest_s->nAdd6_Display_I_b[1],pDest_s->nAdd6_Display_I_b[2],pDest_s->nAdd6_Display_I_b[3]);

	nDisplay_I = (DISPLAY_ITEM *)NVSRAM_ADD(sDisItemAdd); //Display Item 주소.
	sCnt2 = MAKE_WORD(nDisplay_I->nCnt.nNum_b[0],nDisplay_G->nCnt.nNum_b[1]);
	nDisplay_I_b = (DISPLAY_ITEM_B *)calloc(sCnt2,sizeof(DISPLAY_ITEM_B)); //동적배열 할당
	nDisplay_I_b = (DISPLAY_ITEM_B *)NVSRAM_ADD(sDisItemAdd+2); //Display Item 주소.


	d_disp_g_cnt = sCnt = MAKE_WORD(nDisplay_G->nCnt.nNum_b[0],nDisplay_G->nCnt.nNum_b[1]);
	nDisplay_G_b = (DISPLAY_G_B *)calloc(sCnt,sizeof(DISPLAY_G_B)); //동적배열 할당
	nDisplay_G_b = (DISPLAY_G_B *)NVSRAM_ADD(nStart_Address_Point.nDisp_G_Address+2); //Display Group address


	memcpy(pData->nCnt.nNum_b,nDisplay_G->nCnt.nNum_b,2);

	//free(pData->pBody);
	//pData->pBody = (DISPLAY_G_I_B *)calloc(sCnt,sizeof(DISPLAY_G_I_B));

	
	for(i=0;i<sCnt;i++)
	{
		memcpy(pData->pBody[i].nSt_Cnt_b,nDisplay_G_b[i].nSt_Cnt_b,2);
		memcpy(pData->pBody[i].nGuri_b,nDisplay_G_b[i].nGuri_b,2);

		sDisplayItemAdd_D = MAKE_WORD(nDisplay_G_b[i].nItem_Index_b[0],nDisplay_G_b[i].nItem_Index_b[1]);//Display Item Index 값

		memcpy(pData->pBody[i].nItem_Index_Flag.nText_Kind_b,nDisplay_I_b[sDisplayItemAdd_D].nText_Kind_b,2);
		memcpy(pData->pBody[i].nItem_Index_Flag.nText_Index,nDisplay_I_b[sDisplayItemAdd_D].nText_Index,2);
		
	}
	

	free(nDisplay_G_b);
	free(nDisplay_I_b);
}

//*****************************************************************************************
//	ASC를 HEX로 바꾼다.
//*****************************************************************************************
UCHAR DP_ConvAsc2Hex(char chDat)
{
	int nBuf = 0;	
	if(chDat >= '0' && chDat <= '9') nBuf = chDat-'0';		
	else
	if(chDat >= 'a' && chDat <= 'f') nBuf = ((chDat-'a') + 10);		
	else
	if(chDat >= 'A' && chDat <= 'F') nBuf = ((chDat-'A') + 10);
	
	return nBuf;
}

//*****************************************************************************************
//	HEX를 ASC로 바꾼다.
//*****************************************************************************************
char DP_ConvHex2Asc(UCHAR btCh)
{
	char chBuf = '0';
	if(btCh >= 0 && btCh <= 9) chBuf = btCh+'0';
	else if(btCh >= 10 && btCh <= 15) chBuf = (btCh-10)+'A';

	return chBuf;
}
//***************************************************************
//	user_DebugPrint
//****************************************************************

void user_DebugPrint(char *pTxBuf)
{
	//Delay_SCC3_SendTo((UCHAR *)pTxBuf,strlen(pTxBuf),SCC_B_CHANNEL,1);
}


//***************************************************************
//	DP_PLUSCNT
//****************************************************************

UINT DP_PLUSCNT(void)
{
	UINT sPlusCnt = 0;
	sPlusCnt = MAKE_20BIT(PULS_20BIT,PULS_16BIT,PULS_12BIT,PULS_8BIT,PULS_4BIT);
	LINE_ON; // 펄스 값을 초기화 한다.
	return ((3.141592*BCD_BIN(nSelect_Button.nWheel_Value))/90 * sPlusCnt);;

	return sPlusCnt;
}

/******************************************************************
	DP_Timer_1ms_DataPro
*******************************************************************/
UCHAR nTimeDataPro_Cnt = 0;

UCHAR d_DI_Door = 0;
UCHAR d_DI_Dist_cnt = 0;

UCHAR m_PLUSCNT_Rem = 0;


void DP_Timer_1ms_DataPro()
{
	nTimeDataPro_Cnt++;
	
	DP_ONTD(~DICE&0x02,&nDi_Check.nDoor.nFlag,nDi_Check.nDoor.nTime,&nDi_Check.nDoor.nTimeCnt);
	DP_ONTD(~DICE&0x01,&nDi_Check.nHcr.nFlag,nDi_Check.nHcr.nTime,&nDi_Check.nHcr.nTimeCnt);
	//DP_ONTD(~DI_STATUS_RD&0x01,&nDi_Check.nDist.nFlag,nDi_Check.nDist.nTime,&nDi_Check.nDist.nTimeCnt);

	d_DI_Door = nDi_Check.nDist.nFlag;

	/*
	if((WORD_L(nDi_Check.nDist.nRemem) != WORD_L(nDi_Check.nDist.nFlag)) &&  WORD_L(nDi_Check.nDist.nFlag)){ //운행 거리 카운터.

		nDi_Check.nDist.nFlagCnt++;
		d_DI_Dist_cnt++;
	}
	*/

	//nDi_Check.nDist.nRemem = nDi_Check.nDist.nFlag;
	
  
	if(!(nTimeDataPro_Cnt%200))
	{
		nTimeFlag.nAutoPlay_Flag = TRUE;

	}

	//수동 설정일 경우 타코 입력 신호를 거리 값으로 사용 한다.
	if(nTr_St_Info.nAutoManuFlag && !(nTimeDataPro_Cnt%200))
	{
		d_DI_Dist_cnt = DP_PLUSCNT();

		if((m_PLUSCNT_Rem != d_DI_Dist_cnt) && !nDi_Check.nDoor.nFlag )
		{
			nDi_Check.nDist.nFlagCnt = nDi_Check.nDist.nFlagCnt + (DP_PLUSCNT()-m_PLUSCNT_Rem);
		}
		
		m_PLUSCNT_Rem = d_DI_Dist_cnt;
	}

}
/******************************************************************
	DP_Timer_100ms_DataPro
*******************************************************************/
UCHAR d_Rnd_Cnt = 0;
UCHAR nTimeDataPro_100Cnt = 0;
void DP_Timer_100ms_DataPro()
{
	nTimeDataPro_100Cnt++;

	//일반 편성이고 셀프테스트가 아니면 노선 표시기를 진행 한다.
	if(!(nTimeDataPro_100Cnt%10) && (!nTr_St_Info.nSelf_Test_Flag))	//1초
	{
		//시뮬레이션 이던지. 아니면 정상 코드 입력 받았을 경우
		if((nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag) || WORD_L(nTr_St_Info.nRxCode_NoNe_Flag))
		{
			d_Rnd_Cnt++;
			//nSccSendFlag.nRNDTXFlag = TRUE;	//노선 표시기 동작 Flag
		}
	}



	if(!(nTimeDataPro_100Cnt%5))	//500ms
	{
		nTimeFlag.nFlag_DI_INPUT = TRUE;
	}

	if(!(nTimeDataPro_100Cnt%20) && nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag)	//2초 마다
	{
		nTimeFlag.nFlag_Simu = TRUE;
	}

}