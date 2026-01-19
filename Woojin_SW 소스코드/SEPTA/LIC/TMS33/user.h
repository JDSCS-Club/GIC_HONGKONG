#include "main.h"

#ifndef _USER_H_
#define _USER_H_

#define STX 0x02
#define ETX 0x03

#define SOH 0x01
#define EOT 0x04

#define ACK 0x06
#define NAK 0x15

#define GIA_DEV_NO		0x13

#define PAC_DEV_NO		0x16
#define PAC_BAKDEV_NO	0x17
#define LIC_DEV_NO		0x11
#define CCP_DEV_NO      0x31
#define CCP_BAKDEV_NO   0x32

#define REQ_CMD			0x10
#define RPY_CMD			0x11


#define LIC_33_Ver 0x1000

#define DPRAM_BASE 0xB00000
#define DPRAM (*(UCHAR *)DPRAM_BASE)
#define DPRAM_SIZE 0x2000

#define NVSRAM_BASE 0xC00000
#define NVSRAM (*(UCHAR *)NVSRAM_BASE)

#define NVSRAM_VER 0xFFFE0C
#define NVSRAM_VER_SIZE 500

#define SINGLE_OR_MARRIED_CAR (*(UCHAR *)(0xFFFFFF))

#define LNWK_TXINTREQ() ((*(UCHAR *)0xA00000) = (~(*(UCHAR *)0xA00000)&0x01))

#define LW_WAYSIDE_ON_REQ	0x01
#define LW_WAYSIDE_ON_ACK	0x02
#define LW_FTP_TX			0x05
#define LW_FTP_TX_END		0x06
#define LW_CARNO			0x07
#define LW_TIME_REQ			0x08
#define LW_TIME_TX			0x09
#define LW_COMMST_REQ		0x0A
#define LW_COMMST_TX		0x0B
#define LW_VERSION_REQ		0x0C
#define LW_VERSION_TX		0x0D
#define LW_DOOR_ST_REQ1		0x0E
#define LW_DDOR_ST_REQ2		0x0F

#define VER_BDD_MAX_CNT		43

typedef struct
{
	UCHAR btStx;
	UCHAR btCmd;
	UCHAR btZero;
	UCHAR btLen;
	UCHAR btDat[131]; // 데이터 버퍼
	UCHAR btSp;
} LNWKFTPIT, *PLNWKFTPIT;

typedef struct
{
	UCHAR btStx;
	UCHAR btCmd;
	UCHAR btZero;
	UCHAR btLen;
	UCHAR btDat[58]; // 데이터 버퍼
	UCHAR btSp[2];
} LNWKGERIT, *PLNWKGERIT;

typedef struct
{
	UCHAR btKind; // 1~7
	UCHAR btVerH; // 0x00~0x99
	UCHAR btVerL; // 0x00~0x99
	UCHAR btBuildDateHH; // Build date HH
	UCHAR btBuildDateHL; // Build date HL
	UCHAR btBuildDateLH; // Build date LH
	UCHAR btBuildDateLL; // Build date LL
	UCHAR btSpare; // Spare
	LNWKFTPIT lfBuf[6]; // LonWork Ftp Buffer
	LNWKGERIT lgRxBuf; // Lonwork 일반 Rx
	LNWKGERIT lgTxBuf; // Lonwork 일반 Tx
} LNWKDP, *PLNWKDP;


	// Protocol 정의
typedef struct
{
	UCHAR btSoh;
	UCHAR chSrcDev[2];    //출발지
	UCHAR chDestDev[2];   //도착지
	UCHAR chMsgCnt[2];    //카운터
	UCHAR chCmdCode[2];   //명령 코드
	UCHAR chDataLen[2];   //길이
} PTCHD, *PPTCHD;

typedef struct
{
	UCHAR chPacT[2];  //선두 차에 대한 정보를 알수 있다. CRB - bit6/ CRA - bit2
	UCHAR chCcpM[2];
	UCHAR chCncsT[2];
	UCHAR chD0[2];
	UCHAR chD1[2];
	UCHAR chTran[3][2];
	UCHAR chCid[3][2];
	UCHAR chDs[2];
}PROTOCOL_1;

typedef struct
{
	PTCHD phHdBuf;
	PROTOCOL_1 chProtocol;
	UCHAR chCarN[2][2];
	UCHAR chSpare[2][2];
	UCHAR chChkSum[2];
	UCHAR btEot;
} PACSDR, *PPACSDR;

typedef struct
{
	PTCHD phHdBuf;
	PROTOCOL_1 chProtocol;
	UCHAR chNowd[2];
	UCHAR chNexd[2];
	UCHAR chTrip[3][2];
	UCHAR chCard[2][2];
	UCHAR chSpk[2];
	UCHAR chCarInfo[8][2]; //차량 정보 수신 [4] 정보는 뻰다(Call 정보).
	UCHAR chD0[2];

	UCHAR chCplID[2];

	//UCHAR chSpare[6][2];
	UCHAR chTrnLen[2];					// Protoco 변경으로 인한 수정.
	UCHAR chPeiCallst[2][2];

	UCHAR cSpBuf[4][2]; //12년 12월4일 내용 추가


	UCHAR chFrmVer[2][2];
	UCHAR chBldData[3][2];

	UCHAR chChkSum[2];
	UCHAR btEot;
}PAC_PAC,*PPAC_PAC;


typedef struct
{
	PTCHD phHdBuf;
	UCHAR chRnum[2];
	UCHAR chTran[3][2];
	UCHAR chCarn[2][2];
	UCHAR chDoorInfo[1][2];
	UCHAR chLon_F_Ver[2][2];
	UCHAR chLon_Build_Data[3][2];
	UCHAR chMpu_F_Ver[2][2];
	UCHAR chMpu_Build_Data[3][2];

	UCHAR chChkSum[2];
	UCHAR btEot;
} LICSD, *PLICSDR;

	// Protocol 정의
typedef struct
{
	UCHAR btSoh;
	UCHAR chSrcDev[2];    //출발지
	UCHAR chDestDev[2];   //도착지
	UCHAR chMsgCnt[4];    //카운터
	UCHAR chCmdCode[2];   //명령 코드
	UCHAR chDataLen[4];   //길이
} CNCSHD, *PCNCSHD;


typedef struct
{
	CNCSHD phHdBuf;
	UCHAR sCommand[2]; //명령어
	UCHAR sCarKind[2];
	UCHAR sTextDataAsc[300]; //ASC Code
}LIC_CNCS_HD,*PLIC_CNCS_HD;

typedef struct
{
	char chVer[4];
	char chBuildDate[6];
}CNCS_LIC_VERBDD_SD, *PCNCS_LIC_VERBDD_SD;

typedef struct
{
	USHORT VerCnt;
	CNCS_LIC_VERBDD_SD cvbBuf[VER_BDD_MAX_CNT]; // 버젼및 만든시간 업데이트 버퍼
	USHORT CarNum[2];
}LIC_DPRAM_Ver,*PLIC_DPRAM_Ver;

typedef struct
{
	UCHAR s1TRIC[2][4];
	UCHAR s2CCP[2][4];
	UCHAR s3LIC_LON[2][4];
	UCHAR s4GIA[2][4];
	UCHAR s5VTX[2][4];
	UCHAR s6PAC[2][4];
	UCHAR s7FDI[2][4];
	UCHAR s8SDI[2][4];
	UCHAR s9PII[2][4];
	UCHAR s10VRX[2][4];
	UCHAR s11CN_MAIN[2][4];
	UCHAR s12CN_LAVN[2][4];
	UCHAR s13CN_VP[2][4];
	UCHAR s14CN_PPLOY[2][4];
	UCHAR s15CN_SPLAY[2][4];
	UCHAR s16CN_PTU[2][4];
}LIC_VER_LIST,*PLIC_VER_LIST;

typedef struct
{
	CNCSHD phHdBuf;
	UCHAR sCommand[2]; //명령어
	UCHAR sYear[2]; //시스템 시간
	UCHAR sMonth[2]; //시스템 시간
	UCHAR sDay[2]; //시스템 시간
	UCHAR sHour[2]; //시스템 시간
	UCHAR sMinute[2]; //시스템 시간
	UCHAR sSecond[2]; //시스템 시간
	UCHAR sWaySide[2];  //고장 요청 Flag
	UCHAR sDaType[2];   //Data Type
	//UCHAR sCarKind;  //차량 종류 A/B
	UCHAR sFaultTime[8];//고장 요청 시간
	CNCS_LIC_VERBDD_SD cvbBuf[VER_BDD_MAX_CNT]; // 버젼및 만든시간 업데이트 버퍼
	UCHAR chChkSum[2]; 
	UCHAR btEot;
}CNCS_LIC_SD,*PCNCS_LIC_SD;


typedef struct
{
	CNCSHD phHdBuf;
	UCHAR sCommand[2]; //명령어
	UCHAR sTEXT[4];  //시간 정보 요청(LIC) 및 고장 정보 수신(고장 카운터)
	UCHAR chContactSignalBuf[2]; // BIT3 : Active Cab, BIT0 : All Doors Closed
	UCHAR chChkSum[2];
	UCHAR btEot;
}CNCS_LIC_T_F,*PCNCS_LIC_T_F;

typedef struct
{
	CNCSHD phHdBuf;
	UCHAR sCommand[2]; //명령어
	UCHAR sTEXT[4];  //시간 정보 요청(LIC) 및 고장 정보 수신(고장 카운터)
	UCHAR chChkSum[2];
	UCHAR btEot;
}CNCS_LIC_T_F_C,*PCNCS_LIC_T_F_C;

typedef struct
{
	UCHAR sChSum[2];
	UCHAR sETX;
}LIC_CNCS_ED,*PLIC_CNCS_ED;

typedef struct
{
	struct
	{
		UINT n1VTX : 1;
		UINT n2CNCS : 1;
		UINT n3PAC2 : 1;
		UINT n4LIC : 1;
		UINT n5WLAN : 1;
		UINT n6GPS : 1;
		UINT n7PAC1 : 1;
		UINT n8sp : 1;
	}BYTE_1;

	struct
	{
		UINT n1DPO1 : 1;
		UINT n2DPO2 : 1;
		UINT n3CCP1 : 1;
		UINT n4CCP2 : 1;
		UINT n5TRIC1 : 1;
		UINT n6TRIC2 : 1;
		UINT n7TR1 : 1;
		UINT n8TR2 : 1;
	}BYTE_2;

	struct
	{
		UINT n1Sp : 1;
		UINT n2Sp : 1;
		UINT n3CPO1 : 1;
		UINT n4CPO2 : 1;
		UINT n5CPO3 : 1;
		UINT n6CPO4 : 1;
		UINT n7Sp : 1;
		UINT n8Sp : 1;
	}BYTE_3;

	struct
	{
		UINT n1PEI1 : 1;
		UINT n2PEI2 : 1;
		UINT n3PEI3 : 1;
		UINT n4PEI4 : 1;
		UINT n5PEI5 : 1;
		UINT n6PEI6 : 1;
		UINT n7FDI1 : 1;
		UINT n8FDI2 : 1;
	}BYTE_4;


	UCHAR BYTE_5;


	struct
	{
		UINT n1SDI1 : 1;
		UINT n2SDI2 : 1;
		UINT n3SDI3 : 1;
		UINT n4SDI4 : 1;
		UINT n5SDI5 : 1;
		UINT n6SDI6 : 1;
		UINT n7SDI7 : 1;
		UINT n8SDI8 : 1;
	}BYTE_6;

	struct
	{
		UINT n1PID1_1 : 1;
		UINT n2PID1_2 : 1;
		UINT n3PID1_3 : 1;
		UINT n4PID1_4 : 1;
		UINT n5PID1_5 : 1;
		UINT n6PID1_6 : 1;
		UINT n7PID1_7 : 1;
		UINT n8PID1_8 : 1;
	}BYTE_7;


	struct
	{
		UINT n1PID2_1 : 1;
		UINT n2PID2_2 : 1;
		UINT n3PID2_3 : 1;
		UINT n4PID2_4 : 1;
		UINT n5PII1 : 1;
		UINT n6PII2 : 1;
		UINT n7PII3 : 1;
		UINT n8PII4 : 1;
	}BYTE_8;
}COMMSTATUS_PA, *PCOMMSTATUS_PA;


typedef struct
{
	struct
	{
		UINT n1LIC : 1;
		UINT n2WLR : 1;
		UINT n3GIA : 1;
		UINT n4PID : 1;
		UINT n5AVL : 1;
		UINT n6PAC2 : 1;
		UINT n7PAC1 : 1;
		UINT n8TRIC1 : 1;
	}BYTE_1;

	struct
	{
		UINT n1TRIC2 : 1;
		UINT n2TMP1 : 1;
		UINT n3TMP2 : 1;
		UINT n4CCP1 : 1;
		UINT n5CCP2 : 1;
		UINT n6PII1 : 1;
		UINT n7PII2 : 1;
		UINT n8PII3 : 1;
	}BYTE_2;

	struct
	{
		UINT n1PII4 : 1;
		UINT n2FDI1 : 1;
		UINT n3FDI2 : 1;
		UINT n4SDI1 : 1;
		UINT n5SDI2 : 1;
		UINT n6SDI3 : 1;
		UINT n7SDI4 : 1;
		UINT n8SDI5 : 1;
	}BYTE_3;

	struct
	{
		UINT n1SDI6 : 1;
		UINT n2SDI7 : 1;
		UINT n3SDI8 : 1;
		UINT n4PID1_1 : 1;
		UINT n5PID1_2 : 1;
		UINT n6PID1_3 : 1;
		UINT n7PID1_4 : 1;
		UINT n8PID1_5 : 1;
	}BYTE_4;

	struct
	{
		UINT n1PID1_6 : 1;
		UINT n2PID1_7 : 1;
		UINT n3PID1_8 : 1;
		UINT n4PID2_1 : 1;
		UINT n5PID2_2 : 1;
		UINT n6PID2_3 : 1;
		UINT n7PID2_4 : 1;
		UINT n8DPO1 : 1;
	}BYTE_5;

	struct
	{
		UINT n1DPO2 : 1;
		UINT n2CPO1 : 1;
		UINT n3CPO2 : 1;
		UINT n4CPO3 : 1;
		UINT n5CPO4 : 1;
		UINT n6PEI1 : 1;
		UINT n7PEI2 : 1;
		UINT n8PEI3 : 1;
	}BYTE_6;


	struct
	{
		UINT n1PEI4 : 1;
		UINT n2PEI5 : 1;
		UINT n3PEI6 : 1;
		UINT n4sp : 1;
		UINT n5sp : 1;
		UINT n6sp : 1;
		UINT n7sp : 1;
		UINT n8sp : 1;
	}BYTE_7;
}COMMSTATUS_LIC, *PCOMMSTATUS_LIC;

typedef struct
{
	union{
		UCHAR BYTE;
		struct{
			UINT n1Reverse : 1;
			UINT n2ForWard : 1;
			UINT n3Uncouple : 1;
			UINT n4Simulation : 1;
			UINT n5Pattern : 1;
			UINT n6A_CabOn : 1;
			UINT n7B_CabOn : 1;
			UINT n8sp : 1;
		}BIT;
	}n1DATA;
}RACK_DI,*PRACK_DI;

// Y.J (2011-03-02 추가.) 
// GIA에서 PAC로 전송하는 프로토콜 추가
typedef struct
{
	PTCHD	phHdBuf;

	//UCHAR chDate[6][2];
	UCHAR	sYear[2];	//시스템 시간
	UCHAR	sMonth[2];	//시스템 시간
	UCHAR	sDay[2];	//시스템 시간
	UCHAR	sHour[2];	//시스템 시간
	UCHAR	sMinute[2]; //시스템 시간
	UCHAR	sSecond[2]; //시스템 시간

	UCHAR	chLat[5][2];
	UCHAR	chSpare[2];
	UCHAR	chLon[5][2];
	UCHAR	chD0[2];
	UCHAR	chVersion[2][2];
	UCHAR	chBuildDate[3][2];

	UCHAR	chChkSum[2];
	UCHAR	btEot;
} GIA_PAC, *PGIA_PAC;

// Y.J (2011-03-02 추가.) 
BOOL GetLocalTimeToUTC( DATE_TIME_PTR pLocal, int nHour, DATE_TIME_PTR pUTC );							// UTC Time을 구하는 부분.
int IsLeapYear( int nYear );																			// 윤년 정보를 구하는 부분.
int GetDaysOfMonth( int nMonth, int nYear );	

// 고장 정보를 관리하는 부분(Y.J 2011-05-13 추가.) 
enum eCDT_TYPE { eCDT_A, eCDT_B, eCDT_MAXIMUM };

typedef struct
{
	int nTCnt;
	
	int nStPosi;
	int nEdPosi;
} T_FAULT_INFO, *PFAULT_INFO;

void ClearFltBlkInfo();																					// 고장 정보를 Clear
void SetFltBlkStPos(char chCarKind, int nStPosi);
void SetFltBlkEdInfo(char chCarKind, int nEndPosi, int nFltTCnt);											// CDT별 고장 정보를 따로 관리.

int GetFltBlkStPos(char chCarKind);																		// CDT 고장 정보의  시작위치를 돌려주는 부분.
PFAULT_INFO GetFltBlkInfo(char chCarKind);																// CDT 고장 정보를 돌려주는 부분.
////////////////////////////////////////////////////////////////

void user_Init();
void user_Loop();
void user_DebugLoop();
int user_IsSingleOrMarried();
int user_PacRx(UCHAR *pBuf,int nRxBuffLen);
void user_PacTx(UCHAR *pTxBuf,int nTxLen);
int user_CncsRx(UCHAR *pBuf,int nRxBuffLen);
void user_CncsTx(UCHAR *pTxBuf,int nTxLen);
int user_DebugRx(UCHAR *pBuf,int nRxBuffLen);
void user_DebugPrint(char *pTxBuf);
void user_LonWorkLoop();
void user_LonWorkRead();
UCHAR user_LonWorkRx(int nRxPos, UCHAR *pRxBuf);
void user_LonWorkTx(UCHAR *pTxBuf,UCHAR nLen);
int user_GetLonWorkCarCnt();
void user_WithCncsRs232Loop();
void user_WithPacRs485Loop();
void user_1msLoop();
void user_FaultDataTx(UCHAR *pTxBuf,UCHAR nLen,UCHAR nEndFlag,int nFltIdx);
void user_FtpEnd_CarNumFun();

#endif
