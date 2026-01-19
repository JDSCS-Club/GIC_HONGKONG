
#ifndef _DataPro_H_
#define _DataPro_H_

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
	UCHAR nSELF_ADDDATA_BUF[60];	//자기진단 전체 어드레스를 기지고 있다.
	UCHAR nSELF_RXDATA_Buf[60];		//자기진단 수신 내용상태를 버퍼.
	UCHAR nSELF_DownLoad_RxBuf[30];	//다운로드 시 사용 하는 버퍼.
	UCHAR nSELF_DownLoad_AddBuf[30];
	UCHAR nSELF_DownLoad_UnitCnt;	//다운로드시 장치 숫자.
	//UCHAR nSELF_RXDATA_Buf_2R[30];	//자기진단 수신 내용상태를 버퍼. 2중연 차량 버퍼
	//UCHAR nSELF_RXDATA_Buf_3R[30];	//자기진단 수신 내용상태를 버퍼. 3중연 차량 버퍼
	UCHAR nSELF_TX_Cnt;				//자기진단 TX 카운터.
	UCHAR nSELF_TX_Cnt_B;
	UCHAR nSELF_All_Cnt;			//자기진단 전체 반복 횟수.
	UCHAR nSELF_All_Cnt_B;
	UCHAR nSELF_ICR_SELECT;			//자기진단 선택한 카운터.
	UCHAR nSELF_Selt_Flag;
}SELF_TEST;

typedef struct
{
	UCHAR nStopPatNum; //입력 받은 열번을 이용 정차 패턴을 찾는다.
	UCHAR nStation_MaxCnt;	//열번 루트기록되어 있는 역갯수
	UCHAR nStation_StartPointCnt;//운행시 처음 역인지 인지하는 변수.
	UCHAR nStation_PointCnt;	// 자동 운행시 진행되는 역 카운터.
	UCHAR nStation_PointCntRe;	// 자동 운행시 진행되는 역 카운터 를 기억 한다..
	UCHAR nStation_List[60];	// 열차번호 패턴 리스트.
	UCHAR nPIBPatFlag; //시험 화면에서 차내 패턴.
	UCHAR nDISFPatFlag;//시험 화면에서 정-측면 패턴.
	UCHAR nSimulationFlag;//시뮬레이션 버튼.
	UCHAR nSimulationCnt; //시물레이션 역 카운터
	UCHAR nSimulationRun; //시뮬레이션 실행중이라는 명령..
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
	UCHAR nOnlyDestSendFlag;//오직 행선 표시기만 표출 한다. 2011_11_16
	UCHAR nSelf_Test_Flag;	//자기진단 실시 Flag
	UCHAR nClean_Flag;		//무표시
	UCHAR nTcmsAutoDriverFlag; //자동 운전을 해도 된다는 것.
	UCHAR nDoOp_StCh;//출입문이 열리고 역코드가 변경 되었을때를 알려 준다.
	UCHAR nMasterFlag; //TCMS 마스터 코드가 수신 된다.
	UCHAR nRxCode_NoNe_Flag; // 수신 코드가 정상일 경우 처리 한다.
	//UCHAR nSendIddTxFlag; //표출 문장 전송이 완료 되면 다음 문장을 찾는다.
	UCHAR nAutoManuFlag; //수동 설정 플레그
	UCHAR nAutoManuFlagCnt;
	UCHAR nMasterOffCnt;
	UCHAR nDoOp_StChFlag; //출입문이 열리고 - 통신이 이루어 진후 DP_Door_Sequence를 동작 한다.
}TRAN_STATION_INFO;

typedef struct
{
	UCHAR nFlag;
	UCHAR nTime;
	UCHAR nTimeCnt;
	UCHAR nFlagCnt;	//도어 같은 경우 출입문이 반복적으로 열렸을 경우 카운터를 이용해서 한번만 처리 한다.
	UCHAR nRemem;
}ONTD_CHECK;

typedef struct
{
	ONTD_CHECK nHcr;
	ONTD_CHECK nIcr;
	ONTD_CHECK nTcr;
	ONTD_CHECK nDoor; //출입문
	ONTD_CHECK nDist; //거리
}DI_CHECK;

typedef struct
{
	UCHAR nIM_PR_TEXT[550];		//표출해야될 문장을 가진다.
	UCHAR nIndexBuf[20];		//역 구간 표출할 수 있는 전체 버퍼.
	UCHAR nIndexST_STAllCnt;	//역간 전체 문장 전송. 
	UCHAR nAllCnt_Cnt;//역--역 간 지금 까지 전송 문장 카운터
	UCHAR nIndexDI_DICnt;		//거리와 거리 검색 역면 카운터
	UCHAR nIndexCnt;			//카운터 변수
	DWORD nDistanRe;			//이전 거리 값
	DWORD nDistanNew;			//현재 입력된 거리 값.
	UCHAR nBetweenFlag;			//끝나는 지점 확인
	UCHAR nTxEndTimeFlag;
}INDEX_FLAG;


typedef struct	//TMS 수신 데이타 중에서 공용으로 처리할 변수.
{
	UCHAR nDataDefin;	//차량 상태 코드
	UCHAR nCarNum;	//차량 번호;
	UCHAR nDist;	//거리;
	UCHAR nNow;
	UCHAR nNext;
	UCHAR nDest;
	UCHAR nDoOpenIf; //출입문 오픈 정보
}TMS_RX_DATA_PR;

typedef struct
{
	UCHAR nTxNum;
	UCHAR nTxFlag;
}IM_PR_SEND;

typedef struct
{
	UCHAR nDeSTCodeSet;	//행선지 설정.
	UCHAR nTranNum;		//열차 번호 설정.
	UCHAR nClean;		//무표시
	UCHAR nPIBPaten;	//차내 패턴
	UCHAR nS_FDIPaten;	//정측면 패턴
	UCHAR nCarNum;      //호차 번호 
	IM_PR_SEND nIM_Text;
	IM_PR_SEND nPR_Text;
	UCHAR nRNDTXFlag;
	UCHAR nManualSet;
}SCC_SEND_FLAG;

/******************************************************************
	함수의 정의
*******************************************************************/
typedef struct {
	union{
		unsigned int BYTE;
		struct 
		{                                          
	       	unsigned int B0:1;    	        /*    Bit 0     */
			unsigned int B1:1;           	/*    Bit 1     */
			unsigned int B2:1;           	/*    Bit 2     */
			unsigned int B3:1;           	/*    Bit 3     */
	        unsigned int B4:1;           	/*    Bit 4     */
	        unsigned int B5:1;           	/*    Bit 5     */
	        unsigned int B6:1;           	/*    Bit 6     */
	        unsigned int B7:1;           	/*    Bit 7     */
		} BIT;
	} DR;	
}TMS_SEND_DATA;


typedef struct
{
	UCHAR nIDC_ROM_Flag;
	UCHAR nErCnt;
	UCHAR nDataNvsrLoad;
	UCHAR nDataNvsrWait;
	UCHAR nRomWriteCnt;
	UCHAR nKO_Flag;
}IDC_ROM_WRITE;

typedef struct
{
	unsigned int nTimeTranNum;
	UCHAR  nStartHour[2];
	UCHAR nStartMin[2];
	UCHAR nEndHour[2];
	UCHAR nEndMin[2];
}TRANNUMTIME, *PTRANNUMTIME;

typedef struct
{
	TRANNUMTIME nTIMEBUF[34];
}
TIMEBUF, *PTIMEBUF;
/**************************************************************

***************************************************************/
void DP_Timer_1ms_DataPro();
void DP_Timer_100ms_DataPro();
void DP_DataPro_Main();
void DP_DataPro_Init();
void DP_SanDisk_Check();
void DP_SanDisk_InputTimeCheck();
void DP_TranNum_Chech();
void DP_GpDataChange(UCHAR *pDData,UCHAR *pSData);
void DP_ONTD(UCHAR IN,UCHAR *OUT,UCHAR MS,UCHAR *CLK );
void DP_SIMULATION();
void DP_SelfTest(UCHAR *pDataBuf,UCHAR *pRxDataBuf,UCHAR sUnitCnt);
void DP_SelfTest_B(UCHAR *pDataBuf,UCHAR *pRxDataBuf,UCHAR sUnitCnt);
void DP_SCC1_A_RX_PRO(UCHAR *pRxData);
void DP_SCC2_A_RX_PRO(UCHAR *pRxData);	// 통신 수신 처리 
void DP_SCC2_B_RX_PRO(UCHAR *pRxData);	// 통신 수신 처리 
void DP_Door_Sequence();
void DP_Send_IDD_Check();
void DP_STNAME_INFO_UP();
UCHAR DP_Find_StationInfo(UCHAR sNow,UCHAR sNext,UCHAR sDest,UCHAR sReTrNo,UCHAR sNewTrNo);
UCHAR DP_Scroll_Station_Name(UCHAR *pSData,UCHAR *pDData,UCHAR nBufLen,UCHAR nKorFlag);
UCHAR DP_Insert_SpecialCodeNew(UCHAR *pSData,UCHAR *pDData);
void DP_Door_CLOSE();
void DP_Door_OPEN();
void DP_ALL_TEXT_CHECK();
void DP_STNAME_CHANGE(UCHAR *pSDATA,UCHAR *pChDATA, UCHAR nLen);
void DP_IM_PR_TEXT_READ(UCHAR nTextNum,UCHAR nIM_PR_Code,UCHAR nUnitCode);
void DP_SEND_PRO();
void DP_SD_Format_Change(UCHAR *pDData);
void DP_TCMSSD_Format(TMS_SEND_DATA *Type,UCHAR *pDData);
void DP_IDC_SW_UPLOAD_Pro();


UCHAR DP_ConvAsc2Hex(char chDat);
char DP_ConvHex2Asc(UCHAR btCh);
void user_DebugPrint(char *pTxBuf);




#endif