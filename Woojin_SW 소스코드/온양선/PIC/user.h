#ifndef _USER_H_
#define _USER_H_

/**************************************************************
SanDisk R/W 변수 정리.
***************************************************************/
typedef struct
{
	UCHAR nTotalDestCnt;	// 행선 역명 전체 카운더
	UCHAR nCheakSt;		// 디스크 삽입 상태 TRUE= 정상 / FALSE = 불량.
	UCHAR nDiskInputCheckFlag; //디스트 입력 상태를 기억한다.
	UCHAR nDiskUpChekFlag; //업로드 확인 
}SANDISK_VARI; // 디스크 확인 변수들.

typedef struct
{
	UCHAR nCode;
	UCHAR nEnNameBuf[15];
	UCHAR nIRNameBuf[30];
}STATION_INFO;

typedef struct
{
	UCHAR nPre[15];
	UCHAR nNow[15];
	UCHAR nNext[15];
	UCHAR nDest[15];
}GP_ST_NAME;

typedef struct
{
	UCHAR nFlag_DI_INPUT;	//DI 입력 시간을 체크 
	UCHAR nFlag_Simu;		//시뮬레이션 체트 시간 
	UCHAR nFlag_SelfTest;	//자기진단 체크 시간.
	UCHAR nAutoPlay_Flag;
}TIME_FLAG;


typedef struct	//자기 진단 관련  변수들.
{
	UCHAR nSELF_ADDDATA_BUF[30];	//자기진단 전체 어드레스를 기지고 있다.
	UCHAR nSELF_RXDATA_Buf[15];		//자기진단 수신 내용상태를 버퍼.
	UCHAR nSELF_RXDATA_Buf_2R[15];	//자기진단 수신 내용상태를 버퍼. 2중연 차량 버퍼
	//UCHAR nSELF_RXDATA_Buf_3R[20];	//자기진단 수신 내용상태를 버퍼. 3중연 차량 버퍼
	UCHAR nSELF_TX_Cnt;				//자기진단 TX 카운터.
	UCHAR nSELF_All_Cnt;			//자기진단 전체 반복 횟수.
	UCHAR nSELF_ICR_CNT;			//자기진단 중연 카운터.
	UCHAR nSELF_ICR_SELECT;			//자기진단 선택한 카운터.
	UCHAR nPA_PrintCnt;				//방송 장치 자기진단을 일정 시간마다 표출한다.
	UCHAR nPA_SCREEN_SET;			//방송 장치 화면을 선택 하였을 경우.
}SELF_TEST;

typedef struct
{
	UCHAR nStopPatNum; //입력 받은 열번을 이용 정차 패턴을 찾는다.
	UCHAR nStation_MaxCnt;	//열번 루트기록되어 있는 역갯수
	UCHAR nStation_StartPointCnt;//운행시 처음 역인지 인지하는 변수.
	UCHAR nStation_PointCnt;	// 자동 운행시 진행되는 역 카운터.
	UCHAR nStation_PointCntRe;	// 자동 운행시 진행되는 역 카운터 를 기억 한다..
	UCHAR nStation_List[200];	// 열차번호 패턴 리스트. //2012_11_09
	UCHAR nPIBPatFlag; //시험 화면에서 차내 패턴.
	UCHAR nDISFPatFlag;//시험 화면에서 정-측면 패턴.
	UCHAR nSimulationFlag;//시뮬레이션 버튼.
	UCHAR nSimulationCnt; //시뮬레이션 역증가 카운터.
	UCHAR nAutoDoorFlag;	//출입문 자동 개-패 Flag.
	UCHAR nSpeed;	//속도값 + -
	UCHAR nDoor;	//출입문 On-OFF
	UCHAR nDoorOPenCnt; //출입문이 열려 있는 시간을 카운터 한다.
	UCHAR nDistance;	//거리 이동값.
	UCHAR nSinmuScrCnt;//시험 화면 5번 카운터.
	UCHAR nTcmsRxNGCnt;//TCMS 수신 카운터.
	STATION_INFO nStart;
	STATION_INFO nPre; //이전역
	STATION_INFO nNow;	//현재역
	STATION_INFO nNext;	//다음역
	STATION_INFO nDest;	//종착역
	GP_ST_NAME nGpStName;
	UCHAR nSelf_Test_Flag;	//자기진단 실시 Flag
	UCHAR nClean_Flag;		//무표시
	UCHAR nSendTextEnd;
	UCHAR nPaTxDataBuf[22];

	struct 
	{                                          
		unsigned int nFirCode:1;    	        /*    Bit 0     */
		unsigned int B1:1;           	/*    Bit 1     */
		unsigned int B2:1;           	/*    Bit 2     */
		unsigned int B3:1;           	/*    Bit 3     */
		unsigned int B4:1;           	/*    Bit 4     */
		unsigned int B5:1;           	/*    Bit 5     */
		unsigned int B6:1;           	/*    Bit 6     */
		unsigned int nAutoTest:1;           	/*    Bit 7     */
	} nFirAuto;

}TRAN_STATION_INFO;

typedef struct
{
	UCHAR nFlag;
	UCHAR nTime;
	UCHAR nTimeCnt;
	UCHAR nFlagCnt;	//도어 같은 경우 출입문이 반복적으로 열렸을 경우 카운터를 이용해서 한번만 처리 한다.
}ONTD_CHECK;

typedef struct
{
	ONTD_CHECK nHcr;
	ONTD_CHECK nIcr;
	ONTD_CHECK nTcr;
	ONTD_CHECK nDoor;
	ONTD_CHECK nDoLeft;
	ONTD_CHECK nDoRight;
}DI_CHECK;

typedef struct
{
	//UCHAR nIM_PR_TEXT[550];		//표출해야될 문장을 가진다.
	UCHAR nIndexBuf[20];		//역 구간 표출할 수 있는 전체 버퍼.
	UCHAR nIndexST_STAllCnt;	//역간 전체 문장 전송.
	UCHAR nAllCnt_Cnt;//역--역 간 지금 까지 전송 문장 카운터
	UCHAR nIndexDI_DICnt;		//거리와 거리 검색 역면 카운터
	UCHAR nIndexCnt;			//카운터 변수
	DWORD nDistanRe;			//이전 거리 값
	DWORD nDistanNew;			//현재 입력된 거리 값.
	UCHAR nBetweenFlag;			//끝나는 지점 확인
}INDEX_FLAG;


typedef struct	//TMS 수신 데이타 중에서 공용으로 처리할 변수.
{
	UCHAR nDataDefin;	//차량 상태 코드
	UCHAR nCarNum;	//차량 번호;
	UCHAR nDist;	//거리;
	int nDist_10;
	UCHAR nStaCod;	//시발역
	UCHAR nNowCod;	//현재역
	UCHAR nNowCod_Re;	//현재역
	UCHAR nNexCod;	//다음역
	UCHAR nNexCod_Re;	//다음역
	UCHAR nDetCod;	//종착역
	UCHAR nDetCod_Re;	//종착역
	UCHAR nMasterFlag; //통신 마스터 플레그
}TMS_RX_DATA_PR;

typedef struct
{
	UCHAR nTxNum;
	UCHAR nTxFlag;
}IM_PR_SEND;

typedef struct
{
	UCHAR nTrNumSet;	//열차번호 
	UCHAR nDeSTCodeSet;	//행선지 설정.
	UCHAR nSddCodeSet;	//측면 문장 전송
	UCHAR nClean;		//무표시
	UCHAR nPIBPaten;	//차내 패턴
	UCHAR nS_FDIPaten;	//정측면 패턴
	IM_PR_SEND nIM_Text;
	IM_PR_SEND nPR_Text;
	UCHAR nAddSet;		//어드레스 설정.
	UCHAR nSDI_Clean;	//측면 무표시
	UCHAR nManualSet;
	UCHAR nDeadheadFlag; //회송 - 시운전
	UCHAR nDest9999Flag; //열차 번호가 9999 일때 정 축면에 행선만 표출한다.
	UCHAR nSddAddCntUp;	//측면 표시기 호차 번호 증가.
	UCHAR nPaSendTxCnt;	//방송 장치에게 방송하라고 전송.
	UCHAR nPaSendStartFlag;
	UCHAR nPaSendEndFlag;
}SCC_SEND_FLAG;

//////////*****************************************************/////////////
typedef struct
{
	UCHAR nCh;	//전송 해야할 채널
	UCHAR nLen;	//전송 길이
}RING_FALG;

typedef struct
{
	UCHAR nPush_Cnt;	//입력 카운터
	UCHAR nPop_Cnt;		//출력 카운터
	RING_FALG nRingFlagBuf[RING_BUF_SIZE];
}RING_BUF_FALG;


typedef struct
{
	UCHAR nDataBuf[550];//전송 데이타
}RING_DATA;

typedef struct
{
	RING_DATA nRingDataBuf[RING_BUF_SIZE];
}RING_BUF_DATA,*PRING_BUF_DATA;

//////////*****************************************************/////////////
//////////*****************************************************/////////////

typedef struct
{
	UCHAR nIDC_ROM_Flag;
	UCHAR nErCnt;
	UCHAR nErFlag;
	UCHAR nDataNvsrLoad;
	UCHAR nDataNvsrWait;
	UCHAR nRomWriteCnt;
	UCHAR nKO_Flag;
}IDC_ROM_WRITE;

/**************************************************************/
/**************************************************************/
typedef struct
{
	UCHAR nAA;
	UCHAR nBB;
	UCHAR nCC;
	UCHAR nLen_H;
	UCHAR nLen_L;
	UCHAR nLenCom_H;
	UCHAR nLenCom_L;
}SCC_HEAD;

typedef struct
{
	UCHAR nToAdd;
	UCHAR nFromAdd;
	UCHAR nCode;
	UCHAR nSp3;
	UCHAR nSp4;
	UCHAR nErBlk;
	UCHAR nSp6;
	UCHAR nSp7;
	UCHAR nSp8;
	UCHAR nSp9;
}SCC_TEST;

typedef struct
{
	SCC_HEAD nHead;
	SCC_TEST nTest;
	UCHAR Etx;
	UCHAR CRC_H;
	UCHAR CRC_L;
}SCC_TX_DATA,*PSCC_TX_DATA ;

typedef struct
{
	UCHAR nToAdd;
	UCHAR nFromAdd;
	UCHAR nCode;
	UCHAR nTEXT[550];
}SCC_TEXT;

typedef struct
{
	SCC_HEAD nHead;
	SCC_TEXT nText;
	//UCHAR Etx;
	//UCHAR CRC_H;
	//UCHAR CRC_L;
}SCC_PIB_TEXT,*PSCC_PIB_TEXT;

/***************TCMS**********************/
typedef struct
{
	UCHAR nSTX;

	UCHAR nST_Code;	//상태 코드
	UCHAR nSp1;
	UCHAR nStaCod;	//시발역
	UCHAR nNowCod;	//현재역
	UCHAR nNexCod;	//다음역
	UCHAR nDetCod;	//종착역
	UCHAR nSp2;

	struct 
	{                                          
		UINT nFirCode:1;    			/*    Bit 0     */
		UINT B1:1;           			/*    Bit 1     */
		UINT B2:1;           			/*    Bit 2     */
		UINT B3:1;           			/*    Bit 3     */
		UINT nMc2Flag:1;           		/*    Bit 4     */
		UINT nMc1Flag:1;           		/*    Bit 5     */
		UINT nIDCFlag:1;           		/*    Bit 6     */
		UINT nAutoTest:1;           	/*    Bit 7     */
	} BIT;

	UCHAR nTrnBuf[4];	//열차 번호.

	struct
	{
		UINT n1PA_1 : 1;
		UINT n2PA_4 : 1;
		UINT n3COB_1 : 1;
		UINT n4COB_4 : 1;
		UINT n5SOBL_1 : 1;
		UINT n6SOBL_4 : 1;
		UINT n7SOBR_1 : 1;
		UINT n8SOBR_4 : 1;
	}PA_IDC_Falt_1;

	struct
	{
		UINT n1Pow_Amp_1 : 1;
		UINT n2Pow_Amp_2 : 1;
		UINT n3Pow_Amp_3 : 1;
		UINT n4Pow_Amp_4 : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1;
	}PA_IDC_Falt_2;

	struct
	{
		UINT n1EM_Phon_1 : 1;
		UINT n2EM_Phon_2 : 1;
		UINT n3EM_Phon_3 : 1;
		UINT n4EM_Phon_4 : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1;
	}PA_IDC_Falt_3;

	PA_ICR_INFO nTCR_DATA;

	UCHAR nSp3Buf[3];

	UCHAR nETX;
}SCC_TCMS,*TCMS_PSS;
/**************************************************************************/
typedef struct
{
	UCHAR nSTX;

	UCHAR nST_Code;	//상태 코드
	UCHAR nSp1;
	UCHAR nStaCod;	//시발역
	UCHAR nNowCod;	//현재역
	UCHAR nNexCod;	//다음역
	UCHAR nDetCod;	//종착역

	union{
		unsigned int BYTE;
		struct
		{
			UINT n1PA_1 : 1;
			UINT n2PA_4 : 1;
			UINT n3COB_1 : 1;
			UINT n4COB_4 : 1;
			UINT n5SOBL_1 : 1;
			UINT n6SOBL_4 : 1;
			UINT n7SOBR_1 : 1;
			UINT n8SOBR_4 : 1;
		}BIT;
	}PA_IDC_Falt_1;

	union{
		unsigned int BYTE;
		struct
		{
			UINT n1Pow_Amp_1 : 1;
			UINT n2Pow_Amp_2 : 1;
			UINT n3Pow_Amp_3 : 1;
			UINT n4Pow_Amp_4 : 1;
			UINT n5sp : 1;
			UINT n6sp : 1;
			UINT n7sp : 1;
			UINT n8sp : 1;
		}BIT;
	}PA_IDC_Falt_2;

	union{
		unsigned int BYTE;
		struct
		{
			UINT n1EM_Phon_1 : 1;
			UINT n2EM_Phon_2 : 1;
			UINT n3EM_Phon_3 : 1;
			UINT n4EM_Phon_4 : 1;
			UINT n5sp : 1;
			UINT n6sp : 1;
			UINT n7sp : 1;
			UINT n8sp : 1;
		}BIT;
	}PA_IDC_Falt_3;

	PA_ICR_INFO nTCR_DATA;

	struct
	{
		UINT n1FDD_1 :1;
		UINT n2FDD_4 :1;
		UINT n3sp : 1;
		UINT n4sp : 1;
		UINT n5FDD_5 :1;
		UINT n6FDD_8 :1;
		UINT n7sp : 1;
		UINT n8Self_Info : 1;
	}PID_Falt_1;

	struct
	{
		UINT n1SDD1_1 :1;
		UINT n2SDD2_1 :1;
		UINT n3SDD3_1 :1;
		UINT n4SDD4_1 :1;
		UINT n5SDD5_1 :1;
		UINT n6SDD6_1 :1;
		UINT n7SDD7_1 :1;
		UINT n8SDD8_1 :1;
	}PID_Falt_2;

	struct
	{
		UINT n1SDD1_2 :1;
		UINT n2SDD2_2 :1;
		UINT n3SDD3_2 :1;
		UINT n4SDD4_2 :1;
		UINT n5SDD5_2 :1;
		UINT n6SDD6_2 :1;
		UINT n7SDD7_2 :1;
		UINT n8SDD8_2 :1;
	}PID_Falt_3;

	UCHAR nSpBuf[6];
	UCHAR nETX;

}PSS_TCMS_SD,*PPSS_TCMS_SD;




typedef struct
{
	UCHAR nIDCFlag;
	UCHAR nMc1Flag;
	UCHAR nMc2Flag;
}TCMS_IDC_INFO;


typedef struct
{
	unsigned int nTimeTranNum;
	UCHAR  nStartHour[2];
	UCHAR nStartMin[2];
}TRANNUMTIME, *PTRANNUMTIME;

typedef struct
{
	TRANNUMTIME nTIMEBUF[25];
}TIMEBUF, *PTIMEBUF;

/**************************************************************

***************************************************************/
void DP_Timer_1ms_DataPro();
void DP_DataPro_Main();
void DP_DataPro_Init();
void DP_DataPro_SendPro_Init();
void DP_SanDisk_Check();
void DP_SanDisk_InputTimeCheck();
void DP_TranNum_Chech();
void DP_GpDataChange(UCHAR *pDData,UCHAR *pSData);
void DP_ONTD(UCHAR IN,UCHAR *OUT,UCHAR MS,UCHAR *CLK );
void DP_SIMULATION();
void DP_SelfTest(UCHAR *pDataBuf,UCHAR sUnitCnt);

void DP_Xr1677_RX_DATA_Pro_A(UCHAR *pRxData);
void DP_Xr1677_RX_DATA_Pro_B(UCHAR *pRxData,UCHAR nLen);
void DP_Xr1677_RX_DATA_Pro_C(UCHAR *pRxData,UCHAR nLen);
void DP_Xr1677_RX_DATA_Pro_D(UCHAR *pRxData,UCHAR nLen);

void DP_Door_Sequence();
void DP_Send_IDD_Check();
void DP_STNAME_INFO_UP();
UCHAR DP_Find_StationInfo(UCHAR sNow,UCHAR sNext,UCHAR sDest,UCHAR sReTrNo,UCHAR sNewTrNo);
UCHAR DP_Scroll_Station_Name(UCHAR *pSData,UCHAR *pDData,UCHAR nBufLen);
UCHAR DP_Insert_SpecialCodeNew(UCHAR *pSData,UCHAR *pDData);
void DP_Door_CLOSE();
void DP_Door_OPEN();
void DP_ALL_TEXT_CHECK();
void DP_STNAME_CHANGE(UCHAR *pSDATA,UCHAR *pChDATA, UCHAR nLen);
void DP_IM_PR_TEXT_READ(UCHAR nTextNum,UCHAR nIM_PR_Code,UCHAR nUnitCode);
void DP_SEND_PRO();
void DP_SD_Format_Change(UCHAR *pPisData,UCHAR *pPisData2);

void DP_RING_BUF_PUSH(UCHAR *pData,UCHAR pLen,UCHAR Ch);
void DP_RING_BUF_POP(UCHAR *pData,UCHAR *pLen);

void DP_IDC_SW_UPLOAD_Pro();

void DP_STNAME_INFO_UP_TCMS();

UCHAR DP_ConvAsc2Hex(char chDat);
char DP_ConvHex2Asc(UCHAR btCh);

UCHAR ASC_TO_HEX(UCHAR *pOutput);



#endif
