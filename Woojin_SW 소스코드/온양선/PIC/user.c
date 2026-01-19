
#include "def.h"
#include "main.h"
#include "GpProface.h"
#include "Disk.h"
#include "PA_Pro.h"
#include "user.h"
#include "en29lv040.h"
#include "xr16788.h"
#include "saf82532.h"
#include "LED_DOWNLOAD.h"

SANDISK_VARI SanDisk_Vari;
TRAN_STATION_INFO nTr_St_Info;

INDEX_FLAG nIndex_Flag;

DI_CHECK nDi_Check;

TMS_RX_DATA_PR nTmsRxData;

SCC_SEND_FLAG nSccSendFlag;

//TMS_SEND_DATA TCMSSD[20];
PSS_TCMS_SD nPssTcmsTxData;

RING_BUF_FALG nRingFlag;		//링버퍼 플레그

TCMS_IDC_INFO nTcmsIdcInfo;

extern UCHAR m_PA_SelfTest_Buf[30];

extern LED_DATA_DOWNLOAD nLedDataLoad;

extern XR16788_INIT_SHAPE Xr16788_1Ch;
extern XR16788_INIT_SHAPE Xr16788_2Ch;
extern XR16788_INIT_SHAPE Xr16788_3Ch;
extern XR16788_INIT_SHAPE Xr16788_4Ch;

extern SELETC_BUTTON nSelect_Button;

extern WORD glTotalClusterCnt;
extern int glSectorStartOffset;

extern PNVSRAM_VARIABLE nNvsram_Variable;	// 사용 되는 변수

extern PSTATION_NAME StationName;
//extern STATION_NAME StationName[61];		// 한 다이아 에서 사용 가능한 역명.
extern PSTATION_NAME_ALL StationNameAll;//역차 역명 전체를 가지고 있다.
extern DISPLAY_INDEX_NAME nDisplayIndex;	//표시장치 데이타를 가지고 있다.

extern START_NV_ADDRESS nStart_Address_Point; //DIA  주소.

/*
UCHAR DISPLAY_UNIT_ADD[20] ={0x11,0x21,0x31,0x41,
							 0x12,0x22,0x32,0x42,
							 `,0x2A,0x3A,0x4A,
							 0x1B,0x2B,0x3B,0x4B,
							 0x1F,0x0F};



UCHAR DISPLAY_UNIT_ADD[20] ={0x11,0x21,0x31,0x01,
							 0x12,0x22,0x32,0x02,
							 0x1A,0x2A,0x3A,0x0A,
							 0x1B,0x2B,0x3B,0x0B,
							 0x1F,0x0F};
							 */

UCHAR DISPLAY_UNIT_ADD[20] ={0x1A,0x2A,0x3A,0x4A,
							 0x1B,0x2B,0x3B,0x4B,
							 0x1F,0x0F,0x1C};


TIME_FLAG nTimeFlag;
SELF_TEST nSelf_Test;	//자기 진단 관련 구조체
IDC_ROM_WRITE Idc_Load;



UCHAR nSandiskInputCheck = 0;


/******************************************************************
	DP_DataPro_Init = 초기화 하는 함수
*******************************************************************/
void DP_DataPro_Init()
{

	int i;

	for(i=0;i<(550*20);i++)	// 링버퍼 초기화
	{
		NVSRAM(0x20800+i) = 0x00;
	}

	SanDisk_Vari.nDiskInputCheckFlag = 0;
	SanDisk_Vari.nCheakSt = 0;
	SanDisk_Vari.nTotalDestCnt = 0;
	SanDisk_Vari.nDiskUpChekFlag = 0;

	nNvsram_Variable->nStop_Patten_Num = 0;
	nNvsram_Variable->nTrainClass_Num = 0;
	nNvsram_Variable->nScreenNum = 0;

	memset(nNvsram_Variable->nDestScreen,0x20,160);
	memset(nNvsram_Variable->nDestCodeList,0xFF,80);
	memset(nNvsram_Variable->nMatchCode,0xFF,256);
	
	nDi_Check.nHcr.nTime = 100;
	nDi_Check.nIcr.nTime = 100;
	nDi_Check.nTcr.nTime = 100;
	nDi_Check.nDoor.nTime = 200;

	nDi_Check.nHcr.nTimeCnt = 0;
	nDi_Check.nIcr.nTimeCnt = 0;
	nDi_Check.nTcr.nTimeCnt = 0;
	nDi_Check.nDoor.nTimeCnt = 0;

	nDi_Check.nHcr.nFlag = 0;
	nDi_Check.nIcr.nFlag = 0;
	nDi_Check.nTcr.nFlag = 0;
	nDi_Check.nDoor.nFlag = 0;

	nDi_Check.nDoor.nFlagCnt = 0;

	nTr_St_Info.nTcmsRxNGCnt = 10;
	nTr_St_Info.nSpeed = 0;
	nTr_St_Info.nDistance = 0;

	nTr_St_Info.nStart.nCode = 0;
	nTr_St_Info.nNow.nCode = 0;
	nTr_St_Info.nNext.nCode = 0;
	nTr_St_Info.nDest.nCode = 0;

	nTr_St_Info.nFirAuto.nAutoTest = 0;
	nTr_St_Info.nFirAuto.nFirCode =0;

	nTr_St_Info.nSendTextEnd = TRUE;

	nTr_St_Info.nDoor = 0;

	nRingFlag.nPop_Cnt = 0;
	nRingFlag.nPush_Cnt = 0;
	memset(nRingFlag.nRingFlagBuf,0x00,10);

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

	memset(nTr_St_Info.nPaTxDataBuf,0x00,20);


	nTr_St_Info.nStopPatNum = 0;

	memcpy(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT_ADD,20);
	memset(nSelf_Test.nSELF_RXDATA_Buf,0x00,15);
	memset(nSelf_Test.nSELF_RXDATA_Buf_2R,0x00,15);
	//memset(nSelf_Test.nSELF_RXDATA_Buf_3R,0x00,20);

	nSelf_Test.nSELF_All_Cnt = 0;
	nSelf_Test.nSELF_ICR_CNT = 0;
	nSelf_Test.nSELF_ICR_SELECT = 0;
	nSelf_Test.nSELF_TX_Cnt = 0;
	nSelf_Test.nPA_PrintCnt = 0;
	nSelf_Test.nPA_SCREEN_SET = 0;

	nTimeFlag.nFlag_DI_INPUT = FALSE;
	nTimeFlag.nFlag_SelfTest = FALSE;
	nTimeFlag.nFlag_Simu = FALSE;

	nIndex_Flag.nIndexST_STAllCnt = 0;
	nIndex_Flag.nIndexDI_DICnt = 0;
	nIndex_Flag.nIndexCnt = 0;
	nIndex_Flag.nBetweenFlag = FALSE;
	//memset(nIndex_Flag.nIM_PR_TEXT,0x00,550);

	nTr_St_Info.nSimulationCnt = 0;

	//TMS 수신 정보 처리 변수
	nTmsRxData.nDataDefin = 0;
	nTmsRxData.nCarNum = 0;
	nTmsRxData.nDist = 0;
	nTmsRxData.nDist_10 = 0;
	nTmsRxData.nNowCod = 0;
	nTmsRxData.nNowCod_Re = 0;
	nTmsRxData.nNexCod = 0;
	nTmsRxData.nNexCod_Re = 0;
	nTmsRxData.nDetCod = 0;
	nTmsRxData.nDetCod_Re = 0;
	nTmsRxData.nMasterFlag = 0;

	DP_DataPro_SendPro_Init();	//Send Pro 전송 플레그를 따로 관리 한다.


	memset(nSelect_Button.nGPTranNumInput.nASC_NumBuf,0x30,5);
	nSelect_Button.nGPTranNumInput.nNum =0x0000;
	nSelect_Button.nGPTranNumInput.nRemNum = 0;

	Idc_Load.nDataNvsrLoad = 0;
	Idc_Load.nDataNvsrWait = 0;
	Idc_Load.nErCnt = 0;
	Idc_Load.nErFlag = 0;
	Idc_Load.nIDC_ROM_Flag = 0;
	Idc_Load.nKO_Flag = 0;
	Idc_Load.nRomWriteCnt = 0;

	memset(&nPssTcmsTxData,0x00,24);

	nTcmsIdcInfo.nIDCFlag = 0;
	nTcmsIdcInfo.nMc1Flag = 0;
	nTcmsIdcInfo.nMc2Flag = 0;
	//memset(TCMSSD,0x00,20);

}
/******************************************************************
	DP_DataPro_SendPro_Init 통신 전송 플레그를 따로 관리 한다.
*******************************************************************/
void DP_DataPro_SendPro_Init()
{
	//SEND 명령어 내리는 플레그
	nSccSendFlag.nDeadheadFlag = 0;
	nSccSendFlag.nDest9999Flag = 0;
	nSccSendFlag.nTrNumSet = 0; 
	nSccSendFlag.nSddCodeSet = 0; 
	nSccSendFlag.nManualSet = 0;
	nSccSendFlag.nDeSTCodeSet = 0;
	nSccSendFlag.nClean = 0;
	nSccSendFlag.nIM_Text.nTxFlag = 0;
	nSccSendFlag.nIM_Text.nTxNum = 0;
	nSccSendFlag.nPIBPaten = 0;
	nSccSendFlag.nPR_Text.nTxFlag = 0;
	nSccSendFlag.nPR_Text.nTxNum = 0;
	nSccSendFlag.nS_FDIPaten = 0;
	nSccSendFlag.nSDI_Clean = 0;
	nSccSendFlag.nSddAddCntUp = 0;
	nSccSendFlag.nPaSendTxCnt = 0;
	nSccSendFlag.nPaSendStartFlag = 0;
	nSccSendFlag.nPaSendEndFlag = 0;
}

/******************************************************************
	DP_DataPro_Main =DataPro 에서 Main에서 처리할 부분을 이부분에서 처리
*******************************************************************/
UCHAR d_RingTxLen = 0;
UCHAR d_Mast_Cnt = 0;
void DP_DataPro_Main()
{
	UCHAR sCh;
	UCHAR sLen;
	UCHAR sDataBuf[550];

	if(WORD_L(SanDisk_Vari.nCheakSt))
	{
		SanDisk_Vari.nCheakSt = FALSE;
		//DP_SanDisk_Check();
	}

	if(WORD_L(nSelect_Button.nGPTranNumInput.nFlag))
	{
		nSelect_Button.nGPTranNumInput.nFlag = 0;
		DP_TranNum_Chech();
	}

	if(WORD_L(nTimeFlag.nFlag_DI_INPUT))
	{
		nTimeFlag.nFlag_DI_INPUT = FALSE;
		//DP_SanDisk_InputTimeCheck();
	}

	if(WORD_L(nTimeFlag.nFlag_Simu)) //&& nDi_Check.nHcr.nFlag ) //2초마다 실행
	{
		nTimeFlag.nFlag_Simu = FALSE;
		DP_SIMULATION();
	}

	

	if(WORD_L(nTimeFlag.nAutoPlay_Flag))	//200ms 마다 동작 한다. 자동 운전 모드.
	{
		nTimeFlag.nAutoPlay_Flag = FALSE;

		if(WORD_L(Idc_Load.nIDC_ROM_Flag)){DP_IDC_SW_UPLOAD_Pro();}


		if(WORD_L(nDi_Check.nHcr.nFlag) || WORD_L(nTmsRxData.nMasterFlag))	//HCR 접점이 들어 오면 동작 한다.
		{
			d_Mast_Cnt++;
			DP_Door_Sequence();
		}

		if(WORD_L(Xr16788_3Ch.nTxOK))
		{
			if(WORD_L(nTr_St_Info.nTcmsRxNGCnt) <= 5)	//통신이 정상 적으로 이루어 지면 마스터쪽에서만 조작 가능하다.
			{
				if(nTmsRxData.nMasterFlag)
				{
					DP_Send_IDD_Check();
					DP_SEND_PRO();
				}
				else{DP_DataPro_SendPro_Init();}
			}
			else //통신이 끈어지면 양쪽다 가능.
			{
				DP_Send_IDD_Check();
				DP_SEND_PRO();
			}
		}

		if(WORD_L(nDi_Check.nIcr.nFlag))	//중연 링 버퍼
		{
			if(WORD_L(nRingFlag.nPop_Cnt) != WORD_L(nRingFlag.nPush_Cnt))
			{
				sCh = nRingFlag.nRingFlagBuf[(nRingFlag.nPop_Cnt+1)%RING_BUF_SIZE].nCh;
				if(WORD_L(sCh) == XR16L788_3CHL)
				{
					if(WORD_L(Xr16788_3Ch.nTxOK))
					{
						DP_RING_BUF_POP(sDataBuf,&sLen);
						d_RingTxLen = sLen;
						xr16l788_Send(XR16L788_3CHL,sDataBuf,sLen);	
					}
				}
				else if(WORD_L(sCh) == XR16L788_4CHL)
				{
					if(WORD_L(Xr16788_4Ch.nTxOK))
					{
						DP_RING_BUF_POP(sDataBuf,&sLen);
						d_RingTxLen = sLen;
						xr16l788_Send(XR16L788_4CHL,sDataBuf,sLen);	
					}
				}
			}
		}
	}

}
/******************************************************************
	
*******************************************************************/
UCHAR dSelfCnt = 0;
void DP_IDC_SW_UPLOAD_Pro()
{
	DWORD i=0;
	UCHAR sDATA_IDC;
	UCHAR sDataBuf[10];
	
	//if((Nvsram_IDC_UpLoad_CK(sDataBuf,IDC_FILE) == 1 ||Nvsram_IDC_UpLoad_CK(sDataBuf,IDC_FILE) == 2)  && SanDisk_Vari.nDiskInputCheckFlag)
	if(((SanDisk_Vari.nDiskUpChekFlag == 1) || (SanDisk_Vari.nDiskUpChekFlag == 2) || (SanDisk_Vari.nDiskUpChekFlag == 3)) && SanDisk_Vari.nDiskInputCheckFlag)
	{
		dSelfCnt++;
		
		if(!WORD_L(Idc_Load.nErCnt))
		{
			Idc_Load.nErCnt = 1;
			Idc_Load.nErFlag = en29_AllErase();
			
		}
		else if(WORD_L(Idc_Load.nErCnt)) 
		{
			Idc_Load.nErCnt++; 
		}

		if(WORD_L(Idc_Load.nErCnt)>50 && !WORD_L(Idc_Load.nDataNvsrLoad) && Idc_Load.nErFlag)
		{
			Idc_Load.nDataNvsrLoad = Nvsram_IDC_UpLoad_Da();	//IDC 파일 사이즈를 리턴한다.
		}

		if(DWORD_L(Idc_Load.nDataNvsrLoad))
		{
			Idc_Load.nDataNvsrWait++;

			if(WORD_L(Idc_Load.nDataNvsrWait)>=5)
			{
				for(i=0;i<512;i++)
				{
					if(DWORD_MASKING(Idc_Load.nRomWriteCnt)>= DWORD_MASKING(Idc_Load.nDataNvsrLoad))
					{
						Idc_Load.nDataNvsrLoad = 0;
						Idc_Load.nDataNvsrWait = 0;
						Idc_Load.nErCnt = 0;
						Idc_Load.nErFlag = 0;
						Idc_Load.nRomWriteCnt = 0;
						Idc_Load.nKO_Flag = 1;
						Idc_Load.nIDC_ROM_Flag = 0;

						gpBuzzerOn;

						break;
					}
					else
					{
						sDATA_IDC = NVSRAM(Idc_Load.nRomWriteCnt);
						en29_WriteByte(Idc_Load.nRomWriteCnt,sDATA_IDC);
					}

					Idc_Load.nRomWriteCnt++;
				}
			}
		}
	}
}
/******************************************************************
	DP_SanDisk_Check : SanDisk가 삽입 되어 있는지 확인 한다.
*******************************************************************/
UCHAR d_disk_check = 0;
void DP_SanDisk_Check()
{
	int i;
	
	if(Sandisk_Init())
	{
		
		if(Seek_File() && glTotalClusterCnt)	// Match File 확인 
		{
			d_disk_check++;
			Nvsram_EditerData();
			SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX_DEST_CODE,nNvsram_Variable->nDestCodeList);
			NVSRAM_Rd_StationName_Total();
			SanDisk_Vari.nDiskInputCheckFlag =  TRUE;
			
		}
	}
	else
	{
		//SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX_DEST_CODE,nNvsram_Variable.nDestCodeList);
		//NVSRAM_Rd_StationName_Total();

		glSectorStartOffset = 0;

		SanDisk_Vari.nDiskInputCheckFlag = FALSE;
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
UCHAR d_Trnum_Vel = 0;
UCHAR d_nStation_MaxCnt = 0;
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
		//d_Trnum_Vel++;
	   // nTr_St_Info.nStation_MaxCnt = NVSRAM_Comp_StopP(WORD_L(nTr_St_Info.nStopPatNum),nTr_St_Info.nStation_List); 


		nTr_St_Info.nStation_MaxCnt = NVSRAM_Get_StopP(nTr_St_Info.nStation_List); 

		NVSRAM_Rd_StationName(nTr_St_Info.nStation_MaxCnt,nTr_St_Info.nStation_List);

		nTr_St_Info.nStation_StartPointCnt = 0;
		nTr_St_Info.nStation_PointCnt = 0;
		
		nIndex_Flag.nDistanRe = 0;
		nIndex_Flag.nDistanNew = 0;
		nTr_St_Info.nDistance = 0;

		nIndex_Flag.nIndexCnt = 0;
		nIndex_Flag.nIndexDI_DICnt = 0;
		nIndex_Flag.nIndexST_STAllCnt = 0;
				
		nIndex_Flag.nIndexCnt = 0;

		nTmsRxData.nDist = 0;
		nTmsRxData.nDist_10 = 0;

		DP_STNAME_INFO_UP();

		DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.

		gpSETCLR;

		nTr_St_Info.nSimulationCnt = 0;
		nDi_Check.nDoor.nFlagCnt = 0;	//열차가 Door 를 open 한 상태에서 열차 번호를 설정하면 다시 한번 운행 스케줄을 인식한다.

		if(nTmsRxData.nDist <= 2)  //2013_04_23 거리 값을 10m 단위로 변경. 10 -> 2
		{
			nSccSendFlag.nSDI_Clean = 2;	//문장을 클리어 한다.
			nSccSendFlag.nSddCodeSet = 3;
			nSccSendFlag.nDeSTCodeSet = 4;

			//if(nTcmsIdcInfo.nIDCFlag)
			//{
			nSccSendFlag.nSddAddCntUp = 2;
			//}
		}
		
		
	}	

	gp_WritingStr(0x96,6,nTr_St_Info.nGpStName.nDest);	// 행선 표출
	gp_WritingStr(0x82,6,nTr_St_Info.nGpStName.nNow);	// 현재역 표출
}
/******************************************************************
	역정보를 업그레이드 한다.
*******************************************************************/

void DP_STNAME_INFO_UP()
{
	if(nTr_St_Info.nStation_StartPointCnt == 0 )
	{
		nTr_St_Info.nStart.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.nStation_PointCnt]);
		memcpy(nTr_St_Info.nStart.nEnNameBuf, StationName->StaName[nTr_St_Info.nStation_PointCnt].EngName,15);
		memcpy(nTr_St_Info.nStart.nIRNameBuf, StationName->StaName[nTr_St_Info.nStation_PointCnt].IranName,30);
	}

	nTr_St_Info.nNow.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.nStation_PointCnt]);
	memcpy(nTr_St_Info.nNow.nEnNameBuf, StationName->StaName[nTr_St_Info.nStation_PointCnt].EngName,15);
	memcpy(nTr_St_Info.nNow.nIRNameBuf, StationName->StaName[nTr_St_Info.nStation_PointCnt].IranName,30);

	nTr_St_Info.nNext.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.nStation_PointCnt+1]);
	memcpy(nTr_St_Info.nNext.nEnNameBuf,StationName->StaName[nTr_St_Info.nStation_PointCnt+1].EngName,15);
	memcpy(nTr_St_Info.nNext.nIRNameBuf,StationName->StaName[nTr_St_Info.nStation_PointCnt+1].IranName,30);


	nTr_St_Info.nDest.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.nStation_MaxCnt-1]);
	memcpy(nTr_St_Info.nDest.nEnNameBuf,StationName->StaName[nTr_St_Info.nStation_MaxCnt-1].EngName,15);
	memcpy(nTr_St_Info.nDest.nIRNameBuf,StationName->StaName[nTr_St_Info.nStation_MaxCnt-1].IranName,30);
	
	DP_GpDataChange(nTr_St_Info.nGpStName.nNow,nTr_St_Info.nNow.nEnNameBuf);
	DP_GpDataChange(nTr_St_Info.nGpStName.nNext,nTr_St_Info.nNext.nEnNameBuf);
	DP_GpDataChange(nTr_St_Info.nGpStName.nDest,nTr_St_Info.nDest.nEnNameBuf);

	nTmsRxData.nNowCod_Re = nTr_St_Info.nNow.nCode;
	nTmsRxData.nNexCod_Re = nTr_St_Info.nNext.nCode;
	nTmsRxData.nDetCod_Re = nTr_St_Info.nDest.nCode;

}

UCHAR d_Re_Now;
UCHAR d_Re_Nexw;
UCHAR d_Re_Det;
void DP_STNAME_INFO_UP_TCMS()
{
	UCHAR sIm_Pr_GpSendData[30];

	memset(sIm_Pr_GpSendData,0x20,30);

	nTr_St_Info.nStart.nCode = nTmsRxData.nStaCod-1; 
	nTr_St_Info.nNow.nCode = nTmsRxData.nNowCod-1;
	nTr_St_Info.nNext.nCode = nTmsRxData.nNexCod-1;
	nTr_St_Info.nDest.nCode = nTmsRxData.nDetCod-1;

	nTmsRxData.nNowCod_Re = nTmsRxData.nNowCod;
	nTmsRxData.nNexCod_Re =  nTmsRxData.nNexCod;
	nTmsRxData.nDetCod_Re =  nTmsRxData.nDetCod;

	d_Re_Now =  nTmsRxData.nNowCod_Re;
	d_Re_Nexw = nTmsRxData.nNexCod_Re;
	d_Re_Det =  nTmsRxData.nDetCod_Re;

	NVSRAM_Rd_StationName_Code(nTr_St_Info.nStart.nCode,nTr_St_Info.nStart.nEnNameBuf,nTr_St_Info.nGpStName.nNow);
	memcpy(nTr_St_Info.nStart.nIRNameBuf,StationNameAll->StaName[nTr_St_Info.nStart.nCode].IranName,30);
	

	NVSRAM_Rd_StationName_Code(nTr_St_Info.nNow.nCode,nTr_St_Info.nNow.nEnNameBuf,nTr_St_Info.nGpStName.nNow);
	memcpy(nTr_St_Info.nNow.nIRNameBuf,StationNameAll->StaName[nTr_St_Info.nNow.nCode].IranName,30);

	NVSRAM_Rd_StationName_Code(nTr_St_Info.nNext.nCode,nTr_St_Info.nNext.nEnNameBuf,nTr_St_Info.nGpStName.nNext);
	memcpy(nTr_St_Info.nNext.nIRNameBuf,StationNameAll->StaName[nTr_St_Info.nNext.nCode].IranName,30);
	
	NVSRAM_Rd_StationName_Code(nTr_St_Info.nDest.nCode,nTr_St_Info.nDest.nEnNameBuf,nTr_St_Info.nGpStName.nDest);
	memcpy(nTr_St_Info.nDest.nIRNameBuf,StationNameAll->StaName[nTr_St_Info.nDest.nCode].IranName,30);


	memset(sIm_Pr_GpSendData,0x20,30);

	gp_WritingStr(300,15,sIm_Pr_GpSendData);	//클리어한다.
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
UCHAR d_Simula_Cnt = 0;
UCHAR d_StaTextCnt = 0;
void DP_SIMULATION()
{
	UCHAR sIm_Pr_GpSendData[30];

	memset(sIm_Pr_GpSendData,0x20,30);

	if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag && nTr_St_Info.nStopPatNum )
	{
		nTr_St_Info.nDoorOPenCnt++;
		if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) //문이 열리고 우선 
		{
			gp_WritingStr(300,15,sIm_Pr_GpSendData);	//클리어한다.

			nTr_St_Info.nSimulationCnt++;

			//if(nDi_Check.nDoor.nFlag && nTr_St_Info.nSimulationCnt==1){ }
			//else 
			//{ 
			DP_Door_OPEN(); 
			//}

		}
		else if(nTr_St_Info.nDoor && !(nTr_St_Info.nDoorOPenCnt%5)) // 오픈(10초 동안 오픈)
		{
			nTr_St_Info.nDoor=0;
			nTr_St_Info.nDistance = 0;

			nIndex_Flag.nDistanRe = 0;
			nIndex_Flag.nDistanNew = 0;
			nIndex_Flag.nBetweenFlag = FALSE;

			nIndex_Flag.nIndexCnt = 0;
			nIndex_Flag.nIndexDI_DICnt = 0;
			nIndex_Flag.nIndexST_STAllCnt = 0;

			DP_STNAME_INFO_UP();
			DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.
			//DP_Door_CLOSE();

			d_Simula_Cnt++;
			
		}
		else if(!nTr_St_Info.nDoor) //close
		{
			nTr_St_Info.nDoorOPenCnt = 0;
			nTr_St_Info.nDistance +=(nTr_St_Info.nSpeed*3);	//거리 값을 연산 한다.

			nIndex_Flag.nDistanNew = nTr_St_Info.nDistance;	//연산된 거리 값을 적용한다.
			
			DP_Door_CLOSE();

			gpDISTANCE(nTr_St_Info.nDistance);

			if(nIndex_Flag.nBetweenFlag)	//bwteen 이면 출입문을 오픈한다.
			{
				nTr_St_Info.nDoor = 1;

				nTr_St_Info.nDistance = 0;

				gpDISTANCE(0);	

			}
		}
	}
	else
	{
		nTr_St_Info.nSpeed = 0;
		nTr_St_Info.nDistance = 0;

		nTr_St_Info.nDoor = 1;

		nTr_St_Info.nDoorOPenCnt = 0;
	}
}

/******************************************************************
	DP_SelfTest 
	자기 진단 실시.
*******************************************************************/

void DP_SelfTest(UCHAR *pDataBuf,UCHAR sUnitCnt)
{
	int i;
	UCHAR sSelf_Tx_Buf[25];
	UCHAR sSelf_RxData_Buf[25];

	if(nSelf_Test.nSELF_ICR_CNT == 0)
	{
		memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_RXDATA_Buf,15);
	}
	else if(nSelf_Test.nSELF_ICR_CNT == 1)
	{
		memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_RXDATA_Buf_2R,15);
	}

	for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(sUnitCnt);i++)
	{
		if(WORD_L(sSelf_RxData_Buf[i]))
		{
			nSelf_Test.nSELF_TX_Cnt = i;
			break;
		}
		else {nSelf_Test.nSELF_TX_Cnt++;}
	}


	if(nSelf_Test.nSELF_TX_Cnt >= (sUnitCnt))
	{
		nSelf_Test.nSELF_All_Cnt++;
		nSelf_Test.nSELF_TX_Cnt = 0;

		if(WORD_L(nSelf_Test.nSELF_All_Cnt) >=3)	//3회 반복 수행이 끝나면.
		{
			nSelf_Test.nSELF_All_Cnt = 0;
			nSelf_Test.nSELF_ICR_CNT++;

			//if(WORD_L(nTr_St_Info.nSelf_Test_Flag))	//운행 자기 진단이면 TCMS 전송 정보를 변경 한다.
			//{
			
			//}

			if(WORD_L(nSelf_Test.nSELF_ICR_CNT) > WORD_L(nSelf_Test.nSELF_ICR_SELECT))	//선택한 중연 편성과 실행한 편성 비교.
			{
				nTr_St_Info.nSelf_Test_Flag = FALSE;
				nSelf_Test.nSELF_ICR_CNT = 0;

				DP_SD_Format_Change(nSelf_Test.nSELF_RXDATA_Buf,nSelf_Test.nSELF_RXDATA_Buf_2R);
			}

			nLedDataLoad.nSelfTestFlag = FALSE;

		}
	}
	else
	{
		Xr_TX_PROTOCOL(sSelf_Tx_Buf,pDataBuf[nSelf_Test.nSELF_TX_Cnt],0x31,0x07,0,0,0,0,0,10);

		nSelf_Test.nSELF_TX_Cnt++;
		xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);	// 3 채널에 LCDC- LED 모두 같이 동작 한다.
	}
}
/******************************************************************
	DP_Xr1677_RX_DATA_Pro_B LCD
*******************************************************************/
UCHAR d_Trnum_Cnt = 0;
UCHAR d_AutoData = 0;
UCHAR d_IDC_Flag = 0;

UCHAR d_Tranmun_Vel = 0;
void DP_Xr1677_RX_DATA_Pro_A(UCHAR *pRxData)
{
	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;

	UCHAR i;
	UCHAR sData = 0;
	UCHAR sTrNumBuf[10];
	TCMS_PSS pTcmsRxData = (SCC_TCMS *)pRxData;
	
	szBuf[0] = 0;

	if(pTcmsRxData->nTrnBuf[0] != 0x00 || pTcmsRxData->nTrnBuf[1] != 0x00)
	{
		if(pTcmsRxData->nTrnBuf[2] != 0x00 || pTcmsRxData->nTrnBuf[3] != 0x00)
		{
			nSelect_Button.nGPTranNumInput.nASC_NumBuf[0] = 0x30;
			
			memcpy(&nSelect_Button.nGPTranNumInput.nASC_NumBuf[1],pTcmsRxData->nTrnBuf,4);
			
			memcpy(sTrNumBuf,pTcmsRxData->nTrnBuf,4);

			sData += ((WORD_L(sTrNumBuf[0])-0x30)*1000);
			sData += ((WORD_L(sTrNumBuf[1])-0x30)*100);
			sData += ((WORD_L(sTrNumBuf[2])-0x30)*10);
			sData += ((WORD_L(sTrNumBuf[3])-0x30)*1);

			nSelect_Button.nGPTranNumInput.nNum = sData;
			
			nTmsRxData.nDataDefin = pTcmsRxData->nST_Code;

		
			if(((WORD_L(pTcmsRxData->nNowCod) && WORD_L(pTcmsRxData->nNexCod)) ||(DWORD_L(nSelect_Button.nGPTranNumInput.nNum) == 9999)) 
			  && WORD_L(pTcmsRxData->nST_Code) == 0x20)
			{
				nTmsRxData.nMasterFlag = TRUE;
				nTmsRxData.nStaCod = WORD_L(pTcmsRxData->nStaCod);

				//현재역 다음역 정보 유효값을 점검 한다.
				if((WORD_L(nTmsRxData.nNowCod) != WORD_L(pTcmsRxData->nNowCod)) && (WORD_L(nTmsRxData.nNexCod) != WORD_L(pTcmsRxData->nNexCod)))
				{
					if(WORD_L(pTcmsRxData->nNowCod) && WORD_L(pTcmsRxData->nNowCod) != 0xFF)
					{
						if(WORD_L(pTcmsRxData->nNexCod) && WORD_L(pTcmsRxData->nNexCod) != 0xFF)
						{
							nTmsRxData.nNowCod = WORD_L(pTcmsRxData->nNowCod);
							nTmsRxData.nNexCod = WORD_L(pTcmsRxData->nNexCod);

						/*	sprintf(szBuf2,"** TCMS RX Data :  Now[%d] : Nex[%d] : Dest[%d] : TrNum[%d] : Dist[%d] ",
							WORD_L(pTcmsRxData->nNowCod),WORD_L(nTmsRxData.nNexCod),WORD_L(nTr_St_Info.nDest.nCode),DWORD_L(sData),DWORD_L(nTmsRxData.nDist));
							strcat(szBuf,szBuf2);
							sdebugFlag = TRUE;*/

							//sprintf(szBuf2,"** TCMS RX Data :  Now[%02X]H : Nex[%02X]H : TrNum[%04X]H",
							//	     WORD_L(pTcmsRxData->nNowCod),WORD_L(nTmsRxData.nNexCod),DWORD_L(sData));strcat(szBuf,szBuf2);sdebugFlag = TRUE;
						}
					}
				}

				//행선역 정보 유효값을 점검 한다.
				if(WORD_L(nTmsRxData.nDetCod) != WORD_L(pTcmsRxData->nDetCod))
				{
					if(WORD_L(pTcmsRxData->nDetCod) && WORD_L(pTcmsRxData->nDetCod) != 0xFF)
					{
						nTmsRxData.nDetCod = WORD_L(pTcmsRxData->nDetCod);
						if(nTmsRxData.nDetCod_Re != nTmsRxData.nDetCod)
						{

							nTmsRxData.nDetCod_Re = nTmsRxData.nDetCod;

							nTr_St_Info.nDest.nCode = nTmsRxData.nDetCod-1;

							//NVSRAM_Rd_StationName_Code(nTr_St_Info.nDest.nCode,nTr_St_Info.nDest.nIRNameBuf,nTr_St_Info.nGpStName.nDest);
							for(i=0;i<15;i++)
							{
								nTr_St_Info.nDest.nEnNameBuf[i] = WORD_L(StationNameAll->StaName[WORD_L(nTr_St_Info.nDest.nCode)].EngName[i]);
							}

							for(i=0;i<30;i++)
							{
								nTr_St_Info.nDest.nIRNameBuf[i] = WORD_L(StationNameAll->StaName[WORD_L(nTr_St_Info.nDest.nCode)].IranName[i]);			
							}
							
							
							nSccSendFlag.nSDI_Clean = 2;

							nSccSendFlag.nDeSTCodeSet = 4;

							nSccSendFlag.nSddCodeSet = 3;

							//sprintf(szBuf2,"** TCMS RX Data :  Dest[%02X]H : TrNum[%04X]H",
							//	     WORD_L(nTr_St_Info.nDest.nCode),DWORD_L(sData));strcat(szBuf,szBuf2);sdebugFlag = TRUE;
						}
					}
				}

				//중연 하였을 경우에 대한 변수.
				nTcmsIdcInfo.nIDCFlag = pTcmsRxData->BIT.nIDCFlag;
				nTcmsIdcInfo.nMc1Flag = pTcmsRxData->BIT.nMc1Flag;
				nTcmsIdcInfo.nMc2Flag = pTcmsRxData->BIT.nMc2Flag;

				d_IDC_Flag = nTcmsIdcInfo.nIDCFlag;

				nSelf_Test.nSELF_ICR_SELECT = nTcmsIdcInfo.nIDCFlag;
				//열차 번호가 변경 되었을 경우 실행 한다.
				if(nSelect_Button.nGPTranNumInput.nRemNum != nSelect_Button.nGPTranNumInput.nNum)
				{
					nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput.nNum;
					nSelect_Button.nGPTranNumInput.nFlag = TRUE;

					nSelect_Button.nScreenSafe = 60000;
					nSelect_Button.nScreenSetNum = 1;
					
					
				}
			}
			else {nTmsRxData.nMasterFlag = FALSE; }
			
		}

		//디버깅
		/*if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }*/
	}

	
	if( pTcmsRxData->BIT.nAutoTest && (nTr_St_Info.nFirAuto.nAutoTest != pTcmsRxData->BIT.nAutoTest) )
	{
		GP_AUTO_SELFTEST();
		//DP_SD_Format_Change(nSelf_Test.nSELF_RXDATA_Buf,nSelf_Test.nSELF_RXDATA_Buf_2R);
	}

	d_AutoData=nTr_St_Info.nFirAuto.nAutoTest = pTcmsRxData->BIT.nAutoTest;

	nTr_St_Info.nFirAuto.nFirCode = pTcmsRxData->BIT.nFirCode;

	
}
/******************************************************************
	DP_Xr1677_RX_DATA_Pro_B LCD
*******************************************************************/
void DP_Xr1677_RX_DATA_Pro_B(UCHAR *pRxData,UCHAR nLen)
{
	UCHAR i;

	PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pRxData;

	if(IsBCCOK(&pRxData[3],(nLen-5)))
	{
		if(WORD_L(pTx_Pro->nTest.nCode) == 0x08)
		{
			for(i=0;i<(DISPLAY_UNIT+LCDC);i++)
			{
				if( WORD_L(pTx_Pro->nTest.nFromAdd) == WORD_L(nSelf_Test.nSELF_ADDDATA_BUF[i]))
				{
					nSelf_Test.nSELF_RXDATA_Buf[i] = 0;

					break;
				}
			}
		}	
	}
}
/******************************************************************
	DP_Xr1677_RX_DATA_Pro_C LED
*******************************************************************/
UCHAR d_Sdr_C = 0;
void DP_Xr1677_RX_DATA_Pro_C(UCHAR *pRxData,UCHAR nLen)
{
	UCHAR i;
	UCHAR sCRC;
	UCHAR sOKFlag = 0;
	UCHAR sCRCBuf[30];
	UCHAR sHeadAA = 0;

	PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pRxData;

	if(WORD_L(Xr16788_3Ch.nBPS) == 96)	//다운로드 중이면 CRC 검사를 한다.
	{
		memcpy(sCRCBuf,pRxData,20);
		sCRC = MAKE_WORD(sCRCBuf[18],sCRCBuf[19]);
		if(DWORD_L(cal_CRC16(15,&sCRCBuf[3])) == DWORD_L(sCRC)){sOKFlag = TRUE;}
	}
	else if(WORD_L(Xr16788_3Ch.nBPS) == 192)	//평상시 BCC 채크 한다.
	{
		sOKFlag = IsBCCOK(&pRxData[3],(nLen-5));
	}

	if(sOKFlag)
	{
		
		if(WORD_L(pTx_Pro->nTest.nCode) == 0x08)
		{
			if(!WORD_L(nDi_Check.nIcr.nFlag))
			{
				for(i=0;i<(DISPLAY_UNIT+LCDC);i++)
				{
					if( WORD_L(pTx_Pro->nTest.nFromAdd) == WORD_L(nSelf_Test.nSELF_ADDDATA_BUF[i]))
					{
						if(!WORD_L(nSelf_Test.nSELF_ICR_CNT)) {nSelf_Test.nSELF_RXDATA_Buf[i] = 0;}	//표시기 자기진단 시 중연 자기진단인지 구분한다.
						else if(WORD_L(nSelf_Test.nSELF_ICR_CNT) == 1) {nSelf_Test.nSELF_RXDATA_Buf_2R[i] = 0;}
						
						if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2)	//다운로드 동작 중이면 수신 카운터를 작동한다.
						{
							nLedDataLoad.nSDR_RxCnt++;
						}

						if(nLedDataLoad.nDataSDRFlag)	// LED 표식 다운로드 기능 
						{
							if(WORD_L(pTx_Pro->nTest.nSp4) == 0x20)	// 다운로드 OK
							{
								nSelf_Test.nSELF_TX_Cnt++;
								nLedDataLoad.nDataRepetCnt = 0;
							}
							else if(WORD_L(pTx_Pro->nTest.nSp4) == 0x21)	//다운로드 NG
							{
								nLedDataLoad.nDataRepetFlag = TRUE;
								nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pTx_Pro->nTest.nErBlk),WORD_L(pTx_Pro->nTest.nSp6)) - 30720;
							}
						}

						break;
					}
				}
			}
			else if(WORD_L(nDi_Check.nIcr.nFlag))
			{
				xr16l788_Send(XR16L788_4CHL,pRxData,nLen);	//자기 진단일 경우 바로 페스 시킨다.
			}

		}
		else if(nDi_Check.nIcr.nFlag)	//중연 데이타 페스 하는 부분.
		{
			d_Sdr_C++;
			sHeadAA = WORD_L(pTx_Pro->nHead.nAA);
			sHeadAA++;

			if(WORD_L(pTx_Pro->nTest.nCode) == 0x1C || WORD_L(pTx_Pro->nTest.nCode) == 0x07)
			{
				if(WORD_L(pTx_Pro->nHead.nBB) == 0xBC)//BC 일경우에 대해서만 데이타를 페스 시키다.
				{
					if(BYTE_L(pTx_Pro->nHead.nBB) == BYTE_L(sHeadAA))
					{
						pTx_Pro->nHead.nAA = 0xAA;
						pTx_Pro->nHead.nBB = 0xBB;
					}
					else
					{
						pTx_Pro->nHead.nAA = WORD_L(sHeadAA);
						pTx_Pro->nHead.nBB = 0xBC;
					}

					if(WORD_L(pTx_Pro->nTest.nCode) == 0x07)
					{
						xr16l788_Send(XR16L788_4CHL,pRxData,nLen);	//자기 진단일 경우 바로 페스 시킨다.
					}
					else
					{
						DP_RING_BUF_PUSH(pRxData,nLen,XR16L788_4CHL);	//호차 번호 표시기 패스
					}
				}
				else if(WORD_L(pTx_Pro->nHead.nBB) == 0xBB)	//BB 일경우 데이타를 페스 시키면 않된다.
				{
					pTx_Pro->nHead.nAA = 0x02;//삭제 코드.
				}

			}
			else
			{
				DP_RING_BUF_PUSH(pRxData,nLen,XR16L788_4CHL);
			}
		}
	}
}
/******************************************************************
	DP_Xr1677_RX_DATA_Pro_D 중연 
*******************************************************************/

void DP_Xr1677_RX_DATA_Pro_D(UCHAR *pRxData,UCHAR nLen)
{
	UCHAR i;
	UCHAR sCRC;
	UCHAR sOKFlag = 0;
	UCHAR sCRCBuf[30];
	UCHAR sHeadAA = 0;

	PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pRxData;

	sOKFlag = IsBCCOK(&pRxData[3],(nLen-5));

	if(sOKFlag)
	{
		
		if(WORD_L(pTx_Pro->nTest.nCode) == 0x08)
		{
			xr16l788_Send(XR16L788_3CHL,pRxData,nLen);	//자기 진단일 경우 바로 페스 시킨다.
		}
		else if(WORD_L(nDi_Check.nIcr.nFlag))
		{
			sHeadAA = WORD_L(pTx_Pro->nHead.nAA);
			sHeadAA++;
			if(WORD_L(pTx_Pro->nHead.nBB) == 0xBC)
			{
				if(BYTE_L(pTx_Pro->nHead.nBB) == BYTE_L(sHeadAA))
				{
					pTx_Pro->nHead.nAA = 0xAA;
					pTx_Pro->nHead.nBB = 0xBB;
				}
				else
				{
					pTx_Pro->nHead.nAA = WORD_L(sHeadAA);
					pTx_Pro->nHead.nBB = 0xBC;
				}
			}

			if(WORD_L(pTx_Pro->nTest.nCode) == 0x07)
			{
				xr16l788_Send(XR16L788_3CHL,pRxData,nLen);	//자기 진단일 경우 바로 페스 시킨다.
			}
			else
			{
				DP_RING_BUF_PUSH(pRxData,nLen,XR16L788_3CHL);
			}
		}
	}
}
/******************************************************************
	PASS_RING_BUF_PUSH
*******************************************************************/

UCHAR d_RingPush_SaveCnt = 0;
void DP_RING_BUF_PUSH(UCHAR *pData,UCHAR pLen,UCHAR Ch)
{
	UCHAR sLen;
	UCHAR sCh;
	UCHAR sDataBuf[550];
	int i;

	PRING_BUF_DATA RingBuf = (RING_BUF_DATA *) NVSRAM_RING_BUF_ADD;

	memcpy(sDataBuf,pData,pLen);

	sLen = pLen;
	sCh = Ch;

	nRingFlag.nPush_Cnt++;

	nRingFlag.nPush_Cnt = ((nRingFlag.nPush_Cnt)%RING_BUF_SIZE);
	
	d_RingPush_SaveCnt++;

	if(WORD_L(nRingFlag.nPush_Cnt) != WORD_L(nRingFlag.nPop_Cnt))
	{

		
		nRingFlag.nRingFlagBuf[nRingFlag.nPush_Cnt].nCh = sCh;
		nRingFlag.nRingFlagBuf[nRingFlag.nPush_Cnt].nLen = sLen;

		NVSRAM_MEMCPY(RingBuf->nRingDataBuf[nRingFlag.nPush_Cnt].nDataBuf,sDataBuf,sLen);
	}
	else
	{
		nRingFlag.nPop_Cnt++;
		
		nRingFlag.nPop_Cnt = (nRingFlag.nPop_Cnt)%RING_BUF_SIZE;

		nRingFlag.nRingFlagBuf[nRingFlag.nPush_Cnt].nCh = sCh;
		nRingFlag.nRingFlagBuf[nRingFlag.nPush_Cnt].nLen = sLen;

		NVSRAM_MEMCPY(RingBuf->nRingDataBuf[nRingFlag.nPush_Cnt].nDataBuf,sDataBuf,sLen);

	}
}

/******************************************************************
	PASS_RING_BUF_POP
*******************************************************************/

UCHAR d_RingPush_POPCnt = 0;
void DP_RING_BUF_POP(UCHAR *pData,UCHAR *pLen)
{
	int i;
	UCHAR sLen;
	PRING_BUF_DATA RingBuf = (RING_BUF_DATA *) NVSRAM_RING_BUF_ADD;

	if(WORD_L(nRingFlag.nPush_Cnt) != WORD_L(nRingFlag.nPop_Cnt))
	{
		d_RingPush_POPCnt = nRingFlag.nPop_Cnt++;
		nRingFlag.nPop_Cnt = (nRingFlag.nPop_Cnt)%RING_BUF_SIZE;

		sLen = DWORD_L(nRingFlag.nRingFlagBuf[nRingFlag.nPop_Cnt].nLen);

		*pLen = sLen;

		NVSRAM_MEMCPY(pData,RingBuf->nRingDataBuf[nRingFlag.nPop_Cnt].nDataBuf,sLen);

	}
}

/********************************************************
	Find_StationInfo
*********************************************************/
UCHAR DP_Find_StationInfo(UCHAR sNow,UCHAR sNext,UCHAR sDest,UCHAR sReTrNo,UCHAR sNewTrNo)
{
	int Start=0,End=0;
	int glInfo=0;

	if(WORD_L(sNow) && WORD_L(sNext))//&& glComDest)		// 역코드가 '0'이 아닌 경우 //종착역
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
UCHAR d_DoorOpen = 0;
UCHAR d_DistSt_St = 0;
void DP_Door_Sequence()
{

	d_DistSt_St = nTmsRxData.nDist;
	if(nDi_Check.nDoor.nFlag)
	{
		//if(!WORD_L(nDi_Check.nDoor.nFlagCnt) 
	    //||(WORD_L(nTmsRxData.nNowCod_Re) != WORD_L(nTmsRxData.nNowCod)) && (WORD_L(nTmsRxData.nNexCod_Re) != WORD_L(nTmsRxData.nNexCod)))) // 출입문 OPEN
		if((WORD_L(nTmsRxData.nNowCod_Re) != WORD_L(nTmsRxData.nNowCod)) && (WORD_L(nTmsRxData.nNexCod_Re) != WORD_L(nTmsRxData.nNexCod))) // 출입문 OPEN
		{
			if(nTr_St_Info.nStopPatNum)
			{
				d_DoorOpen++;

				nDi_Check.nDoor.nFlagCnt++;	//역에 정차해서 문이 여러번 열려도 역이 한번만 증가 한다.
				
				nIndex_Flag.nDistanRe = 0;
				nIndex_Flag.nDistanNew = 0;
				nIndex_Flag.nBetweenFlag = FALSE;

				nIndex_Flag.nIndexCnt = 0;
				nIndex_Flag.nIndexDI_DICnt = 0;
				nIndex_Flag.nIndexST_STAllCnt = 0;

				nTmsRxData.nDist = 0;
				nTmsRxData.nDist_10 = 0;

				if(nTr_St_Info.nTcmsRxNGCnt >5)
				{
					DP_Door_OPEN();
					//통신이 끈어 졌을경우 수동 설정.
					DP_STNAME_INFO_UP();	//증가한 포인터에 대한 역명을 검색한다.
				}
				else
				{
					//통신이 잘 되었을 경우 설정한다.
					DP_STNAME_INFO_UP_TCMS();
				}

				DP_ALL_TEXT_CHECK();	//스케줄에 따른 역명 검색을 한다.
				//DP_Door_CLOSE();
			}
		}
	}
	else if(!nDi_Check.nDoor.nFlag)//&& (nIndex_Flag.nDistanRe != nIndex_Flag.nDistanNew))
	{
		if(DWORD_MASKING(nTmsRxData.nDist) >= 5 )	//TMS거리 값이 있어야 된다. 2013_04_23 거리 값을 10m 단위로 변경. 50 -> 5
		{
			nTr_St_Info.nAutoDoorFlag = FALSE;
			nTr_St_Info.nSimulationFlag = FALSE;

			nDi_Check.nDoor.nFlagCnt = 0;
			nIndex_Flag.nDistanNew = nTmsRxData.nDist+1; //2013_04_23 거리 값을 10m 단위로 변경. 5 -> 1
			nTr_St_Info.nDistance = nTmsRxData.nDist+1;  //2013_04_23 거리 값을 10m 단위로 변경. 5 -> 1

			if(!nIndex_Flag.nBetweenFlag)
			{
				DP_Door_CLOSE();
			}
		}	
	}

	
}
/********************************************************
	문이 열려 있을 경우 문장 검색 및 역 증가 함수.
*********************************************************/

void DP_Door_OPEN()
{
	UCHAR sIm_Pr_GpSendData[30];

	memset(sIm_Pr_GpSendData,0x20,30);
		
		
	//역정보를 증가 한다. - 패턴 전체 역 코드이상은 증가 한지 않는다.
	if(WORD_L(nTr_St_Info.nStation_PointCnt) < WORD_L(nTr_St_Info.nStation_MaxCnt)-2)
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

		gp_WritingStr(300,15,sIm_Pr_GpSendData);	//클리어한다.

	}
	else
	{
		nTr_St_Info.nStation_PointCnt = WORD_L(nTr_St_Info.nStation_MaxCnt)-1;

		nTr_St_Info.nAutoDoorFlag = FALSE;
		nTr_St_Info.nSimulationFlag = FALSE;
		nTr_St_Info.nStopPatNum = FALSE;
	}
}
/********************************************************
	문이 닫혀 있을 경우 거리 값에 따른 전송 문장 체크
*********************************************************/
UCHAR d_TxDisRe = 0;
UCHAR d_TxDisNew = 0;
void DP_Door_CLOSE()
{
	if(nIndex_Flag.nIndexDI_DICnt == nIndex_Flag.nIndexCnt)
	{
		nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nIndexBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nDistanNew);

		nIndex_Flag.nIndexCnt = 0;
		nIndex_Flag.nDistanRe = nIndex_Flag.nDistanNew;

		d_TxDisRe = nIndex_Flag.nDistanRe;
		d_TxDisNew = nIndex_Flag.nDistanNew;


		d_StaTextCnt++;
	}
}

/********************************************************
	전송 문장이 있는지 체크한다.
*********************************************************/
UCHAR d_sInfoNum = 0;
UCHAR d_IndexStCnt = 0;
UCHAR d_NowSt = 0;
UCHAR d_NextSt = 0;
UCHAR d_Start_St = 0;
UCHAR d_SendTextCnt = 0;
UCHAR d_DistSt1 = 0;
UCHAR d_DistSt2 = 0;
UCHAR d_DP_ALL_TEXT_CHECK_Cnt = 0;

void DP_ALL_TEXT_CHECK()
{
	int sInfoNum;
	//역 정보를 확인한다. ex)시발-중간,중간-중간,중간-종착

	d_DP_ALL_TEXT_CHECK_Cnt++;
	nIndex_Flag.nIndexCnt = 0;
	nIndex_Flag.nIndexDI_DICnt = 0;
	nIndex_Flag.nIndexST_STAllCnt = 0; 
	nIndex_Flag.nAllCnt_Cnt = 0;
	
	d_NowSt = nTr_St_Info.nNow.nCode;
	d_NextSt = nTr_St_Info.nNext.nCode;
	d_Start_St = nTr_St_Info.nStart.nCode;

	sInfoNum = DP_Find_StationInfo(WORD_L(nTr_St_Info.nNow.nCode),WORD_L(nTr_St_Info.nNext.nCode),WORD_L(nTr_St_Info.nDest.nCode),WORD_L(nTr_St_Info.nStart.nCode),WORD_L(nTr_St_Info.nNow.nCode));
	d_sInfoNum = sInfoNum;
	// 역과역 사이에 전체 문장을 검색한다.
	nIndex_Flag.nIndexST_STAllCnt = NVSRAM_Display_Schedule(WORD_L(nTr_St_Info.nNow.nCode),WORD_L(nTr_St_Info.nNext.nCode),sInfoNum);
	
	d_IndexStCnt = nIndex_Flag.nIndexST_STAllCnt;
	//전체 문장가운데 현재 거리 값에 맞는 문장 검색 및 표출.
	d_DistSt1 = nIndex_Flag.nDistanNew;
	d_DistSt2 = nIndex_Flag.nDistanRe;
	d_SendTextCnt = nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nIndexBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nDistanNew);

	nIndex_Flag.nDistanRe = nIndex_Flag.nDistanNew;	// 출발역 방송 문장 전송.


	nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput.nNum;
}

/********************************************************
	전송 문장이 있는지 체크한다.
*********************************************************/
UCHAR d_TextCnt = 0;
UCHAR d_AllTextCnt = 0;
UCHAR d_PR_Cnt = 0;
UCHAR d_Send_Text_Cnt = 0;
void DP_Send_IDD_Check()
{
	int sTemp;
	UCHAR sTxTextNum = 0;
	
	UCHAR sImText[10]={"IM : "};
	UCHAR sPrText[10]={"PR : "};
	UCHAR sStText[15]={"TEXT SENDING.."};
	UCHAR sEndText[20]={"TEXT FINISH!!!"};

	UCHAR sIm_Pr_GpSendData[30];

	memset(sIm_Pr_GpSendData,0x20,30);

	d_TextCnt = nIndex_Flag.nIndexCnt;
	
	d_AllTextCnt = nIndex_Flag.nIndexDI_DICnt;
	
	if((WORD_L(nIndex_Flag.nIndexCnt) < WORD_L(nIndex_Flag.nIndexDI_DICnt)) && nTr_St_Info.nSendTextEnd)			// glIndex는 Tx 통신 루틴이 시작된 경우 
	{
		
		sTemp = nIndex_Flag.nIndexBuf[nIndex_Flag.nIndexCnt];
		/*
		if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) == 3)//{memset(glGpBuf1,0x00,32);}}
		{
			nIndex_Flag.nBetweenFlag = TRUE;	//마지막 문장으로 인식한다.	
			memcpy(sIm_Pr_GpSendData,sEndText,14);

			if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum == 5)
			{
				gp_WritingStr(300,15,sIm_Pr_GpSendData);	//클리어한다.
			}

			nIndex_Flag.nIndexCnt = 0;
			nIndex_Flag.nIndexDI_DICnt = 0;
		}
		*/
		
		if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) ==0) //IM
		{
			sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp].Number)+1;

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

			if(WORD_L(nSccSendFlag.nIM_Text.nTxNum) == 95)
			{
				nSccSendFlag.nPaSendStartFlag = TRUE;
				nSccSendFlag.nPaSendTxCnt = 6;
			}
			else if(WORD_L(nSccSendFlag.nIM_Text.nTxNum) == 99|| WORD_L(nSccSendFlag.nIM_Text.nTxNum) == 98)	//출발방송/도착방송 일경우 방송 전송 
			{
				nSccSendFlag.nPaSendEndFlag = TRUE;
				nSccSendFlag.nPaSendTxCnt = 6;
			}

			d_Send_Text_Cnt++;

			nIndex_Flag.nIndexCnt++;
			nIndex_Flag.nAllCnt_Cnt++;

			nTr_St_Info.nSendTextEnd = FALSE;
			

		}		
		else if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type)==1) //PR
		{
			sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp].Number);

			d_PR_Cnt = sTxTextNum;
			
			if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum == 5)
			{
				memcpy(sIm_Pr_GpSendData,sPrText,5);
				sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)+0x30;
				sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/100)+0x30;
				sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;

				memcpy(&sIm_Pr_GpSendData[9],sStText,14);
				
				gp_WritingStr(300,15,sIm_Pr_GpSendData);	// PIB에 문장 전송.
			}

			nSccSendFlag.nPR_Text.nTxNum = sTxTextNum;	//문장 전송하는 부분.
			nSccSendFlag.nPR_Text.nTxFlag = 1;

			nIndex_Flag.nIndexCnt++;
			nIndex_Flag.nAllCnt_Cnt++;

			nTr_St_Info.nSendTextEnd = FALSE;

		}
		
		if(WORD_L(nIndex_Flag.nIndexST_STAllCnt) <= WORD_L(nIndex_Flag.nAllCnt_Cnt))
		{
	
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
	UCHAR sTextBuf[550];

	memset(sTX_DATABUF,0x00,550);
	memset(sIM_PRTXDATA,0x00,550);
	memset(sTextBuf,0x00,550);

	if(WORD_L(nIM_PR_Code) == 1)
	{
		//NVSRAM_Find_IM(nTextNum,nIndex_Flag.nIM_PR_TEXT);
		NVSRAM_Find_IM(nTextNum,sTextBuf);
	}
	else if(WORD_L(nIM_PR_Code) == 4)
	{
		//NVSRAM_Find_PR(nTextNum,nIndex_Flag.nIM_PR_TEXT);
		NVSRAM_Find_PR(nTextNum,sTextBuf);
	}

	//sTextLen = DP_Insert_SpecialCodeNew(nIndex_Flag.nIM_PR_TEXT,sIM_PRTXDATA)+3;
	sTextLen = DP_Insert_SpecialCodeNew(sTextBuf,sIM_PRTXDATA)+3;

	Xr_TX_PIB_TEXT(sTX_DATABUF,nUnitCode,0x31,0x0A,sTextLen,sIM_PRTXDATA);

	xr16l788_Send(XR16L788_3CHL,sTX_DATABUF,(sTextLen+10));
		
}

/********************************************************
	Name  :	Scroll_Station_Name
	Input : pSData(Source Data Buf)
	Output: pDData(Destination Data Buf)
*********************************************************/

UCHAR DP_Scroll_Station_Name(UCHAR *pSData,UCHAR *pDData,UCHAR nBufLen)
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
	return i;	
}		


/********************************************************
	Name  :	Insert_SpecialCode
	Input : pSData(Source Data Buf)
	Output: pDData(Destination Data Buf)
	IM 표출문에 현재역 및 해당되는 역을 삽입한다. (수정본)

*********************************************************/
	UCHAR sTime_Vel_H;
		UCHAR sTime_Buf_H[5];
		UCHAR sTime_Vel_M;
		UCHAR sTime_Buf_M[5];

UCHAR DP_Insert_SpecialCodeNew(UCHAR *pSData,UCHAR *pDData)
{
	int i,j,t,m=0,l=0;
	int nLen=0;
	int DestOffst=0;
	
	UCHAR nTemp[50];
	UCHAR nTempBuf[550];
	UCHAR Scroll_Left=0;	
	UCHAR Scroll_Reigt = 0;
	UCHAR Text_Code;	//최측 표기언어인지 우측표기 언어인지 확인한다.
	
	

	//PTIMEBUF nTimeBuf = (TIMEBUF *)DiaTimeBuf;

	for(i=0;i<500;i++)
	{
		nTempBuf[i] = WORD_L(pSData[i]);
	}
	
	if(WORD_L(nTempBuf[9]==0x01))  //->
	{
		Scroll_Left=1;					// Scroll Left
		Scroll_Reigt = 0;
	}
	else if(WORD_L(nTempBuf[9]==0x11))   //<-
	{
		Scroll_Left = 0;
		Scroll_Reigt = 1;
	}

	Text_Code = WORD_L(nTempBuf[12]);	//최측 표기언어인지 우측표기 언어인지 확인한다.

	for(i=0;i<14;i++) pDData[DestOffst++]= WORD_L(nTempBuf[i]);	// Header Update	
	for(i=14;i<500;i++)
	{
		if(WORD_L(nTempBuf[i])== 0x40)						//(BYTE *)'@')
		{	
			if(!strncmp(&nTempBuf[i+1],"[NextSta]",9))
			{
				j=DP_Scroll_Station_Name(nTr_St_Info.nNext.nEnNameBuf,nTemp,15);
				if(Scroll_Left)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=9; DestOffst+=j;
				}
				else if(Scroll_Reigt)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=9; DestOffst+=j;
				}
				else 	
				{
					j = (j>=20) ? 20 : j;

					memcpy(&pDData[DestOffst],nTemp,j);

					i+=9; DestOffst+=j;
				}	

			}	
			else if(!strncmp(&nTempBuf[i+1],"[A)NextSta]",11))
			{
				j=DP_Scroll_Station_Name(nTr_St_Info.nNext.nIRNameBuf,nTemp,30);
				if(Scroll_Left)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=11;DestOffst+=j;
				}
				else if(Scroll_Reigt)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=11;DestOffst+=j;

				}
				else 
				{	
					j = (j>=20) ? 20 : j;
					memcpy(&pDData[DestOffst],nTemp,j);

					i+=11; DestOffst+=j;
				}	
			}	
			else if(!strncmp(&nTempBuf[i+1],"[DestSta]",9))
			{
				j=DP_Scroll_Station_Name(nTr_St_Info.nDest.nEnNameBuf,nTemp,15);
				if(Scroll_Left)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=9;DestOffst+=j;
				}
				else if(Scroll_Reigt)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=9;DestOffst+=j;
				}
				else 
				{
					j = (j>=20) ? 20 : j;

					memcpy(&pDData[DestOffst],nTemp,j);

					i+=9; DestOffst+=j;
				}			
			}	
			else if(!strncmp(&nTempBuf[i+1],"[A)DestSta]",11))
			{
				j=DP_Scroll_Station_Name(nTr_St_Info.nDest.nIRNameBuf,nTemp,30);
				if(Scroll_Left)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=11;DestOffst+=j;
				}
				else if(Scroll_Reigt)//<-
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=11;DestOffst+=j;
				}
				else
				{
					j = (j>=20) ? 20 : j;
					memcpy(&pDData[DestOffst],nTemp,j);

					i+=11; DestOffst+=j;
				}		
			}
			else if(!strncmp(&nTempBuf[i+1],"[StartSta]",10))
			{
				j=DP_Scroll_Station_Name(nTr_St_Info.nStart.nEnNameBuf,nTemp,15);
				if(Scroll_Left)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=10; DestOffst+=j;
				}
				else if(Scroll_Reigt)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=10; DestOffst+=j;
				}
				else 	
				{
					j = (j>=20) ? 20 : j;
					memcpy(&pDData[DestOffst],nTemp,j);

					i+=10; DestOffst+=j;
				}	
			}
			else if(!strncmp(&nTempBuf[i+1],"[A)StartSta]",12))
			{
				j=DP_Scroll_Station_Name(nTr_St_Info.nStart.nIRNameBuf,nTemp,30);
				if(Scroll_Left)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=12;DestOffst+=j;
				}
				else if(Scroll_Reigt)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=12;DestOffst+=j;
				}
				else 
				{	
					j = (j>=20) ? 20 : j;
					memcpy(&pDData[DestOffst],nTemp,j);

					i+=12; DestOffst+=j;
				}	
			}
			else if(!strncmp(&nTempBuf[i+1],"[TrNum]",7))
			{
				j=DP_Scroll_Station_Name(&nSelect_Button.nGPTranNumInput.nASC_NumBuf[1],nTemp,4);
				if(Scroll_Left)
				{
					memcpy(&pDData[DestOffst],nTemp,j);
					i+=7;DestOffst+=j;
				}
				else 
				{	
					j = (j>=20) ? 20 : j;

					memcpy(&pDData[DestOffst],nTemp,j);

					i+=7; DestOffst+=4;
				}	


			}
			else if(!strncmp(&nTempBuf[i+1],"[STH",4))
			{
				sTime_Vel_H = BIN_BCD(nDisplayIndex.nStart_Time_H);
				Hex2ASCIIW(sTime_Vel_H,sTime_Buf_H);
				
				memcpy(&pDData[DestOffst],&sTime_Buf_H[3],2);i+=4;DestOffst+=2;

				/*
				for(t=0;t<24;t++)
				{
					
					if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == nSelect_Button.nGPTranNumInput.nNum)
					{
						memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nStartHour,2);i+=4;DestOffst+=2;
						break;
					}
				}
				*/
			}
			else if(!strncmp(&nTempBuf[i+1],"[STM",4))
			{
				sTime_Vel_M = BIN_BCD(nDisplayIndex.nStart_Time_M);
				Hex2ASCIIW(sTime_Vel_M,sTime_Buf_M);
				
				
				memcpy(&pDData[DestOffst],&sTime_Buf_M[3],2);i+=4;DestOffst+=2;
				
				/*
				for(t=0;t<24;t++)
				{
					if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == nSelect_Button.nGPTranNumInput.nNum)
					{
						memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nStartMin,2);i+=4;DestOffst+=2;
						break;
					}
				}
				*/

			}
			else pDData[DestOffst++] = nTempBuf[i];
		} // if end 	
		else if(WORD_L(nTempBuf[i])== 0x1B)						//(BYTE *)'1B')
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
	통신 TX 부분을 이곳에서 처리 한다.
*******************************************************************/
UCHAR d_Side_TxCnt = 0;
UCHAR m_Fdi_Send_Cnt = 0;
void DP_SEND_PRO()
{
	char szBuf[512];
	char szBuf2[100];
	int sdebugFlag = 0;
	UCHAR sSendTextNum = 0;

	UCHAR sDestTxBuf[20];
	UCHAR sClean_Tx_Buf[20];
	UCHAR sSimu_Tx_Buf[20];
	UCHAR sAddSet_Tx_Buf[20];
	UCHAR nTemp[50];
	UCHAR nStTemp[50];

	szBuf[0] = 0;

	if(WORD_L(nTr_St_Info.nSelf_Test_Flag))	
	{
		DP_SelfTest(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT+LCDC);

		/*sprintf(szBuf2,"#Self Test Start");strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/

	}
	else if(nSccSendFlag.nSDI_Clean)
	{
		if(WORD_L(nSccSendFlag.nSDI_Clean) == 2)
		{
			Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF8,0x31,0x1A,0,0,0,0,0,10);

		}
		else if(WORD_L(nSccSendFlag.nSDI_Clean) == 1)
		{
			Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF5,0x31,0x1A,0,0,0,0,0,10);
		}

		xr16l788_Send(XR16L788_3CHL,sClean_Tx_Buf,20);

		nSccSendFlag.nSDI_Clean--;

		/*sprintf(szBuf2,"#SEND Text Clean OK");strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
	}
	else if(nSccSendFlag.nSddCodeSet)	//측면
	{
		if(nSccSendFlag.nSddCodeSet == 2 || nSccSendFlag.nSddCodeSet == 1 )
		{
			DP_Scroll_Station_Name(nTr_St_Info.nDest.nEnNameBuf,nTemp,15);
			DP_Scroll_Station_Name(nTr_St_Info.nStart.nEnNameBuf,nStTemp,15);


			if(nSccSendFlag.nDeadheadFlag)//회송 시운전 문장 표출.
			{
				DP_IM_PR_TEXT_READ(85,1,0xF6);	//측면 표시기에 85번 표출 문장을 전송한다. 문장 색상이 빨강색이다.
				nSccSendFlag.nDeadheadFlag--;

				sSendTextNum = 85;

			}
			else if(nSccSendFlag.nDest9999Flag)
			{
				DP_IM_PR_TEXT_READ(91,1,0xF6);	//측면 표시기에 85번 표출 문장을 전송한다. 문장 색상이 빨강색이다.
				nSccSendFlag.nDest9999Flag--;

				sSendTextNum = 91;
			}
			else if(!strncmp(nTemp,"온양온천.신창",13))
			{
				

				DP_IM_PR_TEXT_READ(86,1,0xF6);

				sSendTextNum = 86;
				//if(nSccSendFlag.nSddCodeSet == 2){ DP_IM_PR_TEXT_READ(86,1,0x0A); }	//측면 표시기에 93번 표출 문장을 전송한다.
				//else if(nSccSendFlag.nSddCodeSet == 1){ DP_IM_PR_TEXT_READ(87,1,0x0B);}	//측면 표시기에 93번 표출 문장을 전송한다.
			}
			else if(!strncmp(nStTemp,"온양온천.신창",13))
			{
				DP_IM_PR_TEXT_READ(88,1,0xF6);

				sSendTextNum = 88;
				//if(nSccSendFlag.nSddCodeSet == 2){ DP_IM_PR_TEXT_READ(88,1,0x0A); }	//측면 표시기에 93번 표출 문장을 전송한다.
				//else if(nSccSendFlag.nSddCodeSet == 1){ DP_IM_PR_TEXT_READ(89,1,0x0B); }	//측면 표시기에 93번 표출 문장을 전송한다.

			}
			else
			{
				DP_IM_PR_TEXT_READ(94,1,0xF6);	//측면 표시기에 94번 표출 문장을 전송한다.

				sSendTextNum = 94;
			}

			/*sprintf(szBuf2,"#SEND SDI TEXT-NUM[%d] : Count [%d]",WORD_L(sSendTextNum),WORD_L(nSccSendFlag.nSddCodeSet));strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
		}
		else if(nSccSendFlag.nSddCodeSet == 3)
		{
			DP_Scroll_Station_Name(nTr_St_Info.nDest.nIRNameBuf,nTemp,30);


			d_Side_TxCnt = (DWORD_L(nSelect_Button.nGPTranNumInput.nNum));

			if(!strncmp(nTemp,"회송",4) || !strncmp(nTemp,"시운전",6))
			{
				DP_IM_PR_TEXT_READ(85,1,0xF6);	//측면 표시기에 85번 표출 문장을 전송한다. 문장 색상이 빨강색이다.
				nSccSendFlag.nDeadheadFlag = 2;

				sSendTextNum = 85;
			}
			else if((DWORD_L(nSelect_Button.nGPTranNumInput.nNum) == 9999))
			{
				DP_IM_PR_TEXT_READ(90,1,0xF6);	//측면 표시기에 85번 표출 문장을 전송한다. 문장 색상이 빨강색이다.
				nSccSendFlag.nDest9999Flag = 2;

				sSendTextNum = 90;
			}

			/*sprintf(szBuf2,"#SEND SDI TEXT-NUM[%d] : Count [%d]",WORD_L(sSendTextNum),WORD_L(nSccSendFlag.nSddCodeSet));strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
		}

		nSccSendFlag.nSddCodeSet--; 
	}
	else if(nSccSendFlag.nManualSet)	//수동 설정.
	{
		if(nSccSendFlag.nManualSet == 2)
		{
			DP_IM_PR_TEXT_READ(99,1,0xF1);	//차내 수동 설정 표시기에 96번 표출 문장을 전송한다.
		}
		else if(nSccSendFlag.nManualSet == 1)
		{
			//DP_IM_PR_TEXT_READ(97,1,0xF1);	//차내 수동 설정 표시기에 97번 표출 문장을 전송한다.
		}
		nSccSendFlag.nManualSet--;

		/*sprintf(szBuf2,"#SEND Manual OK ");strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
	}
	else if(nSccSendFlag.nDeSTCodeSet)	//정면 표시기 문장 전송
	{

		if(nSccSendFlag.nDeSTCodeSet == 1)
		{
			//DP_IM_PR_TEXT_READ(92,1,0xF5);	//정면 표시기에 92번 표출 문장을 전송한다.
		}
		else if(nSccSendFlag.nDeSTCodeSet == 2)
		{
			DP_Scroll_Station_Name(nTr_St_Info.nDest.nIRNameBuf,nTemp,30);

			if(!strncmp(nTemp,"회송",4) || !strncmp(nTemp,"시운전",6))
			{
				DP_IM_PR_TEXT_READ(85,1,0xF5);	//정면 표시기에 85번 표출 문장을 전송한다. 문장 색상이 빨강색이다.
				sSendTextNum = 85;
			}
			else
			{
				DP_IM_PR_TEXT_READ(91,1,0xF5);	//정면 표시기에 91번 표출 문장을 전송한다.
				sSendTextNum = 91;
			}
		}
		else if(nSccSendFlag.nDeSTCodeSet == 3)
		{
			DP_Scroll_Station_Name(nTr_St_Info.nDest.nIRNameBuf,nTemp,30);

			if(!strncmp(nTemp,"회송",4) || !strncmp(nTemp,"시운전",6))
			{
				DP_IM_PR_TEXT_READ(85,1,0xF5);	//정면 표시기에 85번 표출 문장을 전송한다. 문장 색상이 빨강색이다.
				sSendTextNum = 85;
			}
			else
			{
				DP_IM_PR_TEXT_READ(90,1,0xF5);	//정면 표시기에 90번 표출 문장을 전송한다.
				sSendTextNum = 90;
			}
		}
		else if(nSccSendFlag.nDeSTCodeSet == 4)	//문장을 클리어 한다. 12_12_14일 정면 표시기 표출 이상 수정.
		{
			m_Fdi_Send_Cnt++;

			if(!(m_Fdi_Send_Cnt%20))
			{
				Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF5,0x31,0x1A,0,0,0,0,0,10);

				xr16l788_Send(XR16L788_3CHL,sClean_Tx_Buf,20);
			}
		}
		nSccSendFlag.nDeSTCodeSet--;

		/*sprintf(szBuf2,"#SEND FDI TEXT-NUM[%d] : Count [%d]",WORD_L(sSendTextNum),WORD_L(nSccSendFlag.nDeSTCodeSet));strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/

	}
	else if(nSccSendFlag.nClean)	//화면 클리어
	{
		Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF1,0x31,0x1A,0,0,0,0,0,10);

		//xr16l788_Send(XR16L788_2CHL,sClean_Tx_Buf,20);
		xr16l788_Send(XR16L788_3CHL,sClean_Tx_Buf,20);

		nSccSendFlag.nClean = 0;
	}
	else if(nSccSendFlag.nPIBPaten)	//차내 패턴
	{
		if(nTr_St_Info.nPIBPatFlag)
		{
			Xr_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x0B,0,0,0,0,0,10);
		}
		else
		{
			Xr_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x1B,0,0,0,0,0,10);
		}

		xr16l788_Send(XR16L788_3CHL,sSimu_Tx_Buf,20);
		nSccSendFlag.nPIBPaten = 0;
	}
	else if(nSccSendFlag.nS_FDIPaten)	//정.측면 패턴 시험
	{
		if(nSccSendFlag.nS_FDIPaten)
		{
			if(nTr_St_Info.nDISFPatFlag)
			{
				Xr_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x0B,0,0,0,0,0,10);

				/*sprintf(szBuf2,"#SEND Paten Start OK ");strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
			}
			else
			{
				Xr_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x1B,0,0,0,0,0,10);

				/*sprintf(szBuf2,"#SEND Paten finish OK ");strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
			}
		}
		xr16l788_Send(XR16L788_3CHL,sSimu_Tx_Buf,20);

		nSccSendFlag.nS_FDIPaten--;
	}
	else if(nSccSendFlag.nIM_Text.nTxFlag )	//차내 표시기
	{
		DP_IM_PR_TEXT_READ(nSccSendFlag.nIM_Text.nTxNum,1,0xF1);	//문장을 읽어서 전송한다.
		nSccSendFlag.nIM_Text.nTxFlag = 0;

		nTr_St_Info.nSendTextEnd = TRUE;

		/*sprintf(szBuf2,"#SEND PII-IM[%d] : ST-ST Text All Cnt[%d] : Text Cnt[%d] : Dist[%d] ",
		WORD_L(nSccSendFlag.nIM_Text.nTxNum),
		WORD_L(nIndex_Flag.nIndexST_STAllCnt),
		WORD_L(nIndex_Flag.nAllCnt_Cnt),
		DWORD_L(nTmsRxData.nDist));
		strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
		
	}
	else if(nSccSendFlag.nPR_Text.nTxFlag)
	{
		DP_IM_PR_TEXT_READ(WORD_L(nSccSendFlag.nPR_Text.nTxNum),4,0xF1);	//문장을 읽어서 전송한다.
		nSccSendFlag.nPR_Text.nTxFlag = 0;

		nTr_St_Info.nSendTextEnd = TRUE;

		/*sprintf(szBuf2,"#SEND PII-PR[%d] : ST-ST Text All Cnt[%d] : Text Cnt[%d] : Dist[%d] ",
		WORD_L(nSccSendFlag.nPR_Text.nTxNum),
		WORD_L(nIndex_Flag.nIndexST_STAllCnt),
		WORD_L(nIndex_Flag.nAllCnt_Cnt),
		DWORD_L(nTmsRxData.nDist));
		strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
	}
	else if(nSccSendFlag.nSddAddCntUp)	//측면표시기 호차 번호  증가
	{
		if(nTcmsIdcInfo.nIDCFlag){Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF6,0x31,0x1C,4,0,0,0,0,10);} //중연일 경우 
		else                     {Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF6,0x31,0x1C,0,0,0,0,0,10);} //일반 차량일 경우 

		xr16l788_Send(XR16L788_3CHL,sClean_Tx_Buf,20);

		nSccSendFlag.nSddAddCntUp--;

		/*sprintf(szBuf2,"#SEND CAR-NUM OK");strcat(szBuf,szBuf2);sdebugFlag = TRUE;*/
	}

	//디버깅
	/*if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPrint(szBuf); }*/
	
}

/////////////////////////////////////////////////////////////////////////
//차량에 상관 없이 8량 기준에 맞추어 재구성 후 DATA 출력 //2004_10_13
void DP_SD_Format_Change(UCHAR *pPisData,UCHAR *pPisData2)
{


	int i;
	UCHAR sPisDatabuf[15];
	UCHAR sPisDatabuf2[15];

	if(nTcmsIdcInfo.nIDCFlag)
	{
		if(nTcmsIdcInfo.nMc1Flag)     
		{
			memcpy(sPisDatabuf,pPisData,15);
			memcpy(sPisDatabuf2,pPisData2,15);	
		}
		else if(nTcmsIdcInfo.nMc2Flag)
		{
			memcpy(sPisDatabuf,pPisData2,15);
			memcpy(sPisDatabuf2,pPisData,15);	
		}
	}
	else{memcpy(sPisDatabuf,pPisData,15); }

	nPssTcmsTxData.PID_Falt_1.n1FDD_1 = sPisDatabuf[8];
	nPssTcmsTxData.PID_Falt_1.n2FDD_4 = sPisDatabuf[9];

	nPssTcmsTxData.PID_Falt_1.n8Self_Info = nTr_St_Info.nSelf_Test_Flag;

	nPssTcmsTxData.PID_Falt_2.n1SDD1_1 = sPisDatabuf[0];
	nPssTcmsTxData.PID_Falt_2.n2SDD2_1 = sPisDatabuf[1];
	nPssTcmsTxData.PID_Falt_2.n3SDD3_1 = sPisDatabuf[2];
	nPssTcmsTxData.PID_Falt_2.n4SDD4_1 = sPisDatabuf[3];
	nPssTcmsTxData.PID_Falt_3.n1SDD1_2 = sPisDatabuf[4];
	nPssTcmsTxData.PID_Falt_3.n2SDD2_2 = sPisDatabuf[5];
	nPssTcmsTxData.PID_Falt_3.n3SDD3_2 = sPisDatabuf[6];
	nPssTcmsTxData.PID_Falt_3.n4SDD4_2 = sPisDatabuf[7];

	if(nTcmsIdcInfo.nIDCFlag)
	{
		nPssTcmsTxData.PID_Falt_1.n5FDD_5 = sPisDatabuf2[8];
		nPssTcmsTxData.PID_Falt_1.n6FDD_8 = sPisDatabuf2[9];
		nPssTcmsTxData.PID_Falt_2.n5SDD5_1 = sPisDatabuf2[0];
		nPssTcmsTxData.PID_Falt_2.n6SDD6_1 = sPisDatabuf2[1];
		nPssTcmsTxData.PID_Falt_2.n7SDD7_1 = sPisDatabuf2[2];
		nPssTcmsTxData.PID_Falt_2.n8SDD8_1 = sPisDatabuf2[3];
		nPssTcmsTxData.PID_Falt_3.n5SDD5_2 = sPisDatabuf2[4];
		nPssTcmsTxData.PID_Falt_3.n6SDD6_2 = sPisDatabuf2[5];
		nPssTcmsTxData.PID_Falt_3.n7SDD7_2 = sPisDatabuf2[6];
		nPssTcmsTxData.PID_Falt_3.n8SDD8_2 = sPisDatabuf2[7];
	}

}

/******************************************************
	Name 	: STOP_PT_INFO_ITEM_FUNCT //2010-05-10
	Purpose : 역간 정보와 정차 패턴을 하나로 관리 한다.
*******************************************************/
WORD d_DP_STOP_PT_INFO_ITEM_FUNCT = 0;
WORD d_DP_STOP_PT_INFO_ITEM_FUNCT_2 = 0;

void DP_STOP_PT_INFO_ITEM_FUNCT(STOP_PT_INFO_ITEM *pData)
{

	int s_St_Info_Point = 0;
	int s_Stop_Pt_Item_Point = 0;
	int i = 0;
	int sAdd = 0;
	int sForCnt = 0;

	pST_INFO pSt_Info;
	pSTOP_PT_ITEM pStop_Pt_Item;

	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);

	s_St_Info_Point = MAKE_DWORD(pDest_s->nAdd2_St_Info_b[0],pDest_s->nAdd2_St_Info_b[1],pDest_s->nAdd2_St_Info_b[2],pDest_s->nAdd2_St_Info_b[3]);
	s_Stop_Pt_Item_Point = MAKE_DWORD(pDest_s->nAdd4_Stop_Pt_I_b[0],pDest_s->nAdd4_Stop_Pt_I_b[1],pDest_s->nAdd4_Stop_Pt_I_b[2],pDest_s->nAdd4_Stop_Pt_I_b[3]);

	pSt_Info = (ST_INFO *) NVSRAM_ADD(s_St_Info_Point);
	pStop_Pt_Item = (STOP_PT_ITEM *)NVSRAM_ADD(s_Stop_Pt_Item_Point);

	memcpy(pData->nCnt.nNum_b,pStop_Pt_Item->nCnt.nNum_b,2);

	sForCnt = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.nNum_b[1]);
	
	//개수 만큼 반복 입력 한다.
	for(i = 0;i<sForCnt;i++)
	{
		sAdd = MAKE_WORD(pStop_Pt_Item->pBody[i].nSt_Info_b[0],pStop_Pt_Item->pBody[i].nSt_Info_b[1]);

		//역간 정보를 입력 한다
		memcpy(pData->pBody[i].nSt_Info_flag.nSt_Index_b,pSt_Info->pBody[(sAdd)].nSt_Index_b,2);
		memcpy(pData->pBody[i].nSt_Info_flag.nArr_Index_b,pSt_Info->pBody[(sAdd)].nArr_Index_b,2);
		memcpy(pData->pBody[i].nSt_Info_flag.nSt_Dist_b,pSt_Info->pBody[(sAdd)].nSt_Dist_b,2);

		//정차 패턴 ITEM을 입력 한다.
		pData->pBody[i].nDoor_Info = pStop_Pt_Item->pBody[i].nDoor_Info;
		memcpy(pData->pBody[i].nSt_Time_b,pStop_Pt_Item->pBody[i].nSt_Time_b,3);
		memcpy(pData->pBody[i].nStop_Time_b,pStop_Pt_Item->pBody[i].nStop_Time_b,3);
		
	}
	
}
/******************************************************
	Name 	: DP_STOP_PT_INFO_G_FUNCT //2010-05-11
	Purpose : 정차 패턴 그룹을 하나로 관리 한다.
*******************************************************/
UCHAR d_DP_STOP_PT_INFO_G_FUNCT = 0;
UCHAR d_DP_STOP_Buf[20];
void DP_STOP_PT_INFO_G_FUNCT(STOP_PT_G_I_HAP *pData)
{
	int i;
	int sCnt = 0;
	int sStG_IndexCnt = 0;

	pSTOP_PT_INFO_ITEM nStop_Pt_Info_Flag = (STOP_PT_INFO_ITEM *) NVSRAM_SRAM_4; //정차 패턴 ITEM 더하기 역간 정보 2012_11_09
	pSTOP_PT_G_B pStop_Pt_G = (STOP_PT_G_B *)NVSRAM_ADD(nStart_Address_Point.nSt_Pt_G_Address); //정차 패턴 그룹 주소.
	

	DP_STOP_PT_INFO_ITEM_FUNCT(nStop_Pt_Info_Flag); ////정차 패턴 ITEM 더하기 역간 정보 합치는 부분.

	memcpy(pData->nHeader.nSt_Index_b,pStop_Pt_G->nHeader.nSt_Index_b,2);
	memcpy(pData->nHeader.nEn_Index_b,pStop_Pt_G->nHeader.nEn_Index_b,2);
	memcpy(pData->nHeader.nSt_P_G_Cnt_b,pStop_Pt_G->nHeader.nSt_P_G_Cnt_b,2);

	d_DP_STOP_PT_INFO_G_FUNCT = sCnt = MAKE_WORD(pStop_Pt_G->nHeader.nSt_P_G_Cnt_b[0],pStop_Pt_G->nHeader.nSt_P_G_Cnt_b[1]);

	for(i=0;i<WORD_L(sCnt);i++)
	{
		
	    sStG_IndexCnt =MAKE_WORD(pStop_Pt_G->pBody[i].nSt_P_Item_Index_b[0],pStop_Pt_G->pBody[i].nSt_P_Item_Index_b[1]);

		memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b,nStop_Pt_Info_Flag->pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Index_b,2);
		memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b,nStop_Pt_Info_Flag->pBody[sStG_IndexCnt].nSt_Info_flag.nArr_Index_b,2);
		memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Dist_b,nStop_Pt_Info_Flag->pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Dist_b,2);

		pData->nSt_Pt_G_I_Flage[i].nDoor_Info = nStop_Pt_Info_Flag->pBody[sStG_IndexCnt].nDoor_Info;

		memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Time_b,nStop_Pt_Info_Flag->pBody[sStG_IndexCnt].nSt_Time_b,3);
		memcpy(pData->nSt_Pt_G_I_Flage[i].nStop_Time_b,nStop_Pt_Info_Flag->pBody[sStG_IndexCnt].nStop_Time_b,3);
	}

}

/******************************************************
	Name 	: DP_DISP_G__HAP //2010-05-11
	Purpose : Dispay 그룹을 더한다.
*******************************************************/
UCHAR d_disp_g_cnt = 0;
void DP_DISP_G__HAP(DISPLAY_G_I_H *pData)
{
	int sCnt = 0;
	int i;
	int sDisplayItemAdd_D = 0;
	DWORD sDisItemAdd = 0;

	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //프로그램 시작한때 전체 주소 리스트

	pDISPLAY_GROUP nDisplay_G = (DISPLAY_GROUP *)NVSRAM_ADD(nStart_Address_Point.nDisp_G_Address); //Display Group address

	pDISPLAY_ITEM nDisplay_I;

	sDisItemAdd = MAKE_DWORD(pDest_s->nAdd6_Display_I_b[0],pDest_s->nAdd6_Display_I_b[1],pDest_s->nAdd6_Display_I_b[2],pDest_s->nAdd6_Display_I_b[3]);
	nDisplay_I = (DISPLAY_ITEM *)NVSRAM_ADD(sDisItemAdd); //Display Item 주소.

	d_disp_g_cnt = sCnt = MAKE_WORD(nDisplay_G->nCnt.nNum_b[0],nDisplay_G->nCnt.nNum_b[1]);

	memcpy(pData->nCnt.nNum_b,nDisplay_G->nCnt.nNum_b,2);
	for(i=0;i<sCnt;i++)
	{
		memcpy(pData->pBody[i].nSt_Cnt_b,nDisplay_G->pBody[i].nSt_Cnt_b,2);
		memcpy(pData->pBody[i].nGuri_b,nDisplay_G->pBody[i].nGuri_b,2);

		sDisplayItemAdd_D = MAKE_WORD(nDisplay_G->pBody[i].nItem_Index_b[0],nDisplay_G->pBody[i].nItem_Index_b[1]);//Display Item Index 값

		memcpy(pData->pBody[i].nItem_Index_Flag.nText_Kind_b,nDisplay_I->pBody[sDisplayItemAdd_D].nText_Kind_b,2);
		memcpy(pData->pBody[i].nItem_Index_Flag.nText_Index,nDisplay_I->pBody[sDisplayItemAdd_D].nText_Index,2);
		
	}
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


UCHAR ASC_TO_HEX(UCHAR *pOutput)
{
	UCHAR sDATA = 0;

	sDATA = sDATA | ((WORD_L(pOutput[0])-0x30)<<12);
	sDATA = sDATA | ((WORD_L(pOutput[1])-0x30)<<8);
	sDATA = sDATA | ((WORD_L(pOutput[2])-0x30)<<4);
	sDATA = sDATA | ((WORD_L(pOutput[3])-0x30)&0x0f);
	
	return sDATA;
}



/******************************************************************
	DP_Timer_1ms_DataPro
*******************************************************************/
UCHAR nTimeDataPro_Cnt = 0;
UCHAR nTimeDataUnitCnt = 0;
UCHAR dDistCnt_mm = 0;
UCHAR dDistCnt_2_M = 0;
UCHAR dDistCnt_3_10M = 0;
UCHAR d_DoorFlag = 0;

void DP_Timer_1ms_DataPro()
{
	nTimeDataPro_Cnt++;

	DP_ONTD(~DICE&0x01,&nDi_Check.nTcr.nFlag,    nDi_Check.nTcr.nTime,    &nDi_Check.nTcr.nTimeCnt);
	DP_ONTD(DICE&0x02,&nDi_Check.nDoor.nFlag,    nDi_Check.nDoor.nTime,   &nDi_Check.nDoor.nTimeCnt);
	DP_ONTD(~DICE&0x04,&nDi_Check.nIcr.nFlag,    nDi_Check.nIcr.nTime,    &nDi_Check.nIcr.nTimeCnt);
	DP_ONTD(~DICE&0x08,&nDi_Check.nDoRight.nFlag,nDi_Check.nDoRight.nTime,&nDi_Check.nDoRight.nTimeCnt);
	DP_ONTD(~DICE&0x10,&nDi_Check.nDoLeft.nFlag, nDi_Check.nDoLeft.nTime, &nDi_Check.nDoLeft.nTimeCnt);
	DP_ONTD(~DICE&0x20,&nDi_Check.nHcr.nFlag,    nDi_Check.nHcr.nTime,    &nDi_Check.nHcr.nTimeCnt);

	if(!(nTimeDataPro_Cnt%1000)) 
	{
		nTr_St_Info.nTcmsRxNGCnt++;	

		dDistCnt_mm = DIST();

		 nTmsRxData.nDist_10 = nTmsRxData.nDist_10 + dDistCnt_mm;//DIST();	// 거리 값을 구한다.
		 dDistCnt_2_M = (nTmsRxData.nDist_10 / 1000);
		 dDistCnt_3_10M = nTmsRxData.nDist =((nTmsRxData.nDist_10 / 1000)/10);

	}

	if(!(nTimeDataPro_Cnt%500))
	{
		nTimeFlag.nFlag_DI_INPUT = TRUE;
	}

	if(!(nTimeDataPro_Cnt%5000))
	{
		nTimeFlag.nFlag_Simu = TRUE;

		if(nTcmsIdcInfo.nIDCFlag && Xr16788_3Ch.nTxOK && nTmsRxData.nMasterFlag)
		{
			nSccSendFlag.nSddAddCntUp = 1;
		}
	}

	if(!(nTimeDataPro_Cnt%5000) && (!Idc_Load.nIDC_ROM_Flag) && (!nLedDataLoad.nSDDSelt) && (!nLedDataLoad.nFDDSelt))//사구간 통과 할경우를 대비해 지속적으로 전송.
	{
		if((nTr_St_Info.nStopPatNum || (DWORD_L(nSelect_Button.nGPTranNumInput.nNum) == 9999)) && Xr16788_3Ch.nTxOK && nTmsRxData.nMasterFlag )
		{
			//nSccSendFlag.nSDI_Clean = 2;

			if(!WORD_L(nSccSendFlag.nSddCodeSet) && !WORD_L(nSccSendFlag.nDeSTCodeSet))
			{
				if(!DWORD_MASKING(nTmsRxData.nDist))
				{ 
					if(!nTr_St_Info.nDISFPatFlag)
					{ 
						nTimeDataUnitCnt++;

						if(nTimeDataUnitCnt&0x01){ nSccSendFlag.nSddCodeSet = 3;}
						else { nSccSendFlag.nDeSTCodeSet = 4; }
					}
				}
				else{

					nTimeDataUnitCnt++;

					if(nTimeDataUnitCnt&0x01){ nSccSendFlag.nSddCodeSet = 3;}
					else { nSccSendFlag.nDeSTCodeSet = 4; }
				}
			}
				//nSccSendFlag.nSddCodeSet = 3;}

			/*
			if(DWORD_MASKING(nTmsRxData.nDist) >= 50) 
			{
				nSccSendFlag.nDeSTCodeSet = 4;
			}
			*/
		}
	}

	if(!(nTimeDataPro_Cnt%(200))) 
	{
		nTimeFlag.nAutoPlay_Flag = TRUE;
		
	}

}


