#include "string.h"
#include "main.h"
#include "def.h"
#include "xr16l784.h"
#include "user.h"
#include "ds1647.h"

UINT m_nUserDebug1msTimer = 0;

UINT m_nUart1RxOneByteGapDelayTime = 0;
UINT m_nUart2RxOneByteGapDelayTime = 0;
UINT m_nUart3RxOneByteGapDelayTime = 0;

DATE_TIME_TYPE m_tmCurTime;
DATE_TIME_TYPE m_tmUtcTime;


RACK_DI mRackDi;

UCHAR m_btCommSt[7];


//int m_LIC_CNCS_TimSetFlag = 0; //CNCS랑 통신이 이루어진후 

int m_LIC_GIA_TimSetFlag = 0; //GIA랑 통신이 이루어진후 					// Y.J (2011.03.02 수정.)
int m_LIC_CNCS_Tx_Flag = 0; //고장 기록 중이라는 플레그/ LIC<-> CNCS전송시 사용한다.
int m_LIC_CNCS_TX_DelyTime = 0;
int m_nLnWkTxFlag = 0; //고장 기록 시작 플레그.
char m_chCarKind = 'A';
int m_nFaultCnt = 0; //고장 전송 카운터
int nRecving_Posi = 0; //시험중이면서 고장 기록이 증가 하면 CNCS로 데이타 전송 한다.
int m_nCDT_FaultDataStFlag = 0;//고장 기록을 시작 Flag

int m_wCarNo = 0x701;

BOOL m_bLnWkDbgTxFlag = 0; //고장 기록 확인 비거깅 플레그. 
UCHAR m_nLnWkWaySideOnRxOk = 0; //고장 수집 완료 플레드. 
UCHAR m_nCarCnt = 0; // 차량 갯수
USHORT m_nCarNo[2] = {0x0000,0x0000};
UINT m_nNvsramPos = 0;
BOOL m_bLnWkFtpEndFlag = FALSE;
UINT m_nDateTime2SecondCnt = 0; // 히스토리컬 전송시 원하는 시간(2000년 1월 1일 0시 0분 0초부터 초 갯수, CNCS로 부터 데이터를 수신받아 Wayside On시 전송한다.)

UINT m_nTxDbg1msTimer = 0;
UINT m_nDbgTxPos = 0xFFFFFFFF; 

UINT m_nSingleOrMarriedCarUpdate1msTimer = 0;

USHORT m_btExVersionTbl[VER_BDD_MAX_CNT+4];
USHORT m_btExVersion_DAYTbl[VER_BDD_MAX_CNT+4];
BOOL m_bExVersionEnableTbl[VER_BDD_MAX_CNT+4];

UCHAR m_btCttSignalA = 0x00; // 컨텍트 신호 Married car일때 A or Single car
UCHAR m_btCttSignalB = 0x00; // 컨텍트 신호 Married car일때 B

//UINT m_nCncsRxCheck1msTimer = 0; // CNCS와 데이터 수신 여부를 판단하기 위한 타이머
UINT m_nGiaRxCheck1msTimer = 0; // Gia와 데이터 수신 여부를 판단하기 위한 타이머


//2011_03_03 수정 
UCHAR LIC_VerList[50][10] = {
	"TRIC1","TRIC2","CCP1","CCP2","LIC_LON","LIC_MPU","GIA","VTX","PAC1","PAC2",
	"FDI1","FDI2","SDI1","SDI2","SDI3","SDI4","SDI5","SDI6","SDI7","SDI8",
	"PII1","PII2","PII3","PII4","PID2-1","PID1-1","PID1-2","PID1-3","PID1-4",
	"PID2-2","PID2-3","PID1-5","PID1-6","PID1-7","PID1-8","PID2-4",
	"MAIN","Launcher","Updata","PP","SP","FTPData","CDTData"};


//2011_05_13 추가.
T_FAULT_INFO m_tFaultInfo[eCDT_MAXIMUM];


//int d_n = 0;
//int d_nCarNoList[1024];


//******************************************************************************************
//	초기화
//******************************************************************************************
void user_Init()
{
	int i;
	int wCarNo = 0;
	UCHAR LL,LH,HL,HH;
	char szBuf[128];
	UCHAR *pDpram = (UCHAR *)DPRAM_BASE;

	PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //버전 정보 처리를 위해 임의로 만들었다.
	
	// 초기화하기
	//timeGet(&m_tmCurTime);
	memset(m_btCommSt,0x00,sizeof(m_btCommSt)); //상태 데이타 저장 버퍼 
	
	memset(m_btExVersionTbl,0x0000,sizeof(m_btExVersionTbl));
	memset(m_btExVersion_DAYTbl,0x0000,sizeof(m_btExVersion_DAYTbl));
	memset(m_bExVersionEnableTbl,0x0000,sizeof(m_bExVersionEnableTbl));

	for(i=0;i<VER_BDD_MAX_CNT;i++)
	{
		if(WORD_L(pLicVerDp->VerCnt) == TRUE)
		{
			if(
				!IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chVer[0])) || !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chVer[1])) ||
				!IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chVer[2])) || !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chVer[3])) ||

				!IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[0])) || !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[1])) ||
				!IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[2])) || !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[3])) ||
				!IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[4])) || !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[5]))
			)
			{
				memset(pLicVerDp->cvbBuf[i].chVer,'0',4);
				memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);
			}
			else
			{
				LH = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[0])),ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[1])));
				LL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[2])),ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[3])));
				m_btExVersionTbl[i] = MAKE_WORD(LH,LL);
				HH = 0x20;
				HL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[0])),ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[1])));
				LH = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[2])),ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[3])));
				LL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[4])),ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[5])));
				m_btExVersion_DAYTbl[i] = MAKE_DWORD(HH,HL,LH,LL);
			}
		}
		else //한번도 버전 정보 입력이 되지않을 경우 0 으로 초기화 한다.
		{
			pLicVerDp->VerCnt = TRUE;
			memset(pLicVerDp->cvbBuf[i].chVer,'0',4);
			memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);
		}
	}

	if(MAKE_WORD(pLicVerDp->CarNum[0],pLicVerDp->CarNum[1]) != 0xFFFF)
	{
		m_wCarNo = MAKE_WORD(pLicVerDp->CarNum[0],pLicVerDp->CarNum[1]);
	}
	
	// LIC-MPU제어기 버젼 & 빌드데이트
	m_btExVersionTbl[5] = MAKE_WORD(
								MAKE_BYTE(ConvHex2Asc(GetFirmwareVersion(1)/1000%10),ConvHex2Asc(GetFirmwareVersion(1)/100%10)),
								MAKE_BYTE(ConvHex2Asc(GetFirmwareVersion(1)/10%10),ConvHex2Asc(GetFirmwareVersion(1)%10))
								);

	m_btExVersion_DAYTbl[5] = MAKE_DWORD(
								0x20,
								MAKE_BYTE(ConvHex2Asc(GetFirmwareVersion(2)/100000%10),ConvHex2Asc(GetFirmwareVersion(2)/10000%10)),
								MAKE_BYTE(ConvHex2Asc(GetFirmwareVersion(2)/1000%10),ConvHex2Asc(GetFirmwareVersion(2)/100%10)),
								MAKE_BYTE(ConvHex2Asc(GetFirmwareVersion(2)/10%10),ConvHex2Asc(GetFirmwareVersion(2)%10))
								);
			
	// 버젼과 빌드데이트의 시험용 루틴							
	/*
	m_btExVersionTbl[0] = 0x1001;   //TRIC, A/F (EX:Ver1.0.01)
	m_btExVersionTbl[1] = 0x1002;   //TRIC, B
	m_btExVersionTbl[2] = 0x1003;   //CCP, F/A end
	m_btExVersionTbl[3] = 0x1004;   //CCP, B
	m_btExVersionTbl[4] = 0x1005;   //LIC-LON
	//m_btExVersionTbl[5] = 0x1006;   //LIC-MPU
	m_btExVersionTbl[6] = 0x1007;   //GIA
	m_btExVersionTbl[7] = 0x1008;   //VTX  
	m_btExVersionTbl[8] = 0x1009;   //PAC, F/A
	m_btExVersionTbl[9] = 0x1010;   //PAC, F/A
	m_btExVersionTbl[10] = 0x1011;   //FDI, F /A
	m_btExVersionTbl[11] = 0x1012;  //FDI, B
	m_btExVersionTbl[12] = 0x1013;  //SDI 1
	m_btExVersionTbl[13] = 0x1014;  //SDI 2
	m_btExVersionTbl[14] = 0x1015;  //SDI 3
	m_btExVersionTbl[15] = 0x1016;  //SDI 4
	m_btExVersionTbl[16] = 0x1017;  //SDI 5
	m_btExVersionTbl[17] = 0x1018;  //SDI 6
	m_btExVersionTbl[18] = 0x1019;  //SDI 7
	m_btExVersionTbl[19] = 0x1020;  //SDI 8
	m_btExVersionTbl[20] = 0x1021;  //PII 1
	m_btExVersionTbl[21] = 0x1022;  //PII 2
	m_btExVersionTbl[22] = 0x1023;  //PII 3
	m_btExVersionTbl[23] = 0x1024;  //PII 4
	m_btExVersionTbl[24] = 0x1025;  //VRX 1
	m_btExVersionTbl[25] = 0x1026;  //VRX 2
	m_btExVersionTbl[26] = 0x1027;  //VRX 3
	m_btExVersionTbl[27] = 0x1028;  //VRX 4
	m_btExVersionTbl[28] = 0x1029;  //VRX 5
	m_btExVersionTbl[29] = 0x1030;  //VRX 6
	m_btExVersionTbl[30] = 0x1031;  //VRX 7
	m_btExVersionTbl[31] = 0x1032;  //VRX 8
	m_btExVersionTbl[32] = 0x1033;  //VRX 9
	m_btExVersionTbl[33] = 0x1034;  //VRX 10
	m_btExVersionTbl[34] = 0x1035;  //VRX 11
	m_btExVersionTbl[35] = 0x1036;  //VRX 12
	m_btExVersionTbl[36] = 0x1037;  //CN-MAIN
	m_btExVersionTbl[37] = 0x1038;  //CN-LAUN
	m_btExVersionTbl[38] = 0x1039;  //CN-UP
	m_btExVersionTbl[39] = 0x1040;  //CN-PPLAY
	m_btExVersionTbl[40] = 0x1041;  //CN-SPLAY
	m_btExVersionTbl[41] = 0x1042;  //CN-FTPDATA
	m_btExVersionTbl[42] = 0x1043;  //CN-CDTDATA
	m_btExVersionTbl[43] = 0x1000;  //끝
	
	m_btExVersion_DAYTbl[0] = 0x20100001;	//TRIC, A/F (EX:2010년 12월 31일)
	m_btExVersion_DAYTbl[1] = 0x20100002;   //TRIC, B          
	m_btExVersion_DAYTbl[2] = 0x20100003;   //CCP, F/A end     
	m_btExVersion_DAYTbl[3] = 0x20100004;   //CCP, B           
	m_btExVersion_DAYTbl[4] = 0x20100005;   //LIC-LON          
	//m_btExVersion_DAYTbl[5] = 0x20100006;   //LIC-MPU          
	m_btExVersion_DAYTbl[6] = 0x20100007;   //GIA              
	m_btExVersion_DAYTbl[7] = 0x20100008;   //VTX              
	m_btExVersion_DAYTbl[8] = 0x20100009;   //PAC, F/A         
	m_btExVersion_DAYTbl[9] = 0x20100010;   //PAC, F/A         
	m_btExVersion_DAYTbl[10] = 0x20100011;   //FDI, F /A        
	m_btExVersion_DAYTbl[11] = 0x20100012;  //FDI, B           
	m_btExVersion_DAYTbl[12] = 0x20100013;  //SDI 1            
	m_btExVersion_DAYTbl[13] = 0x20100014;  //SDI 2            
	m_btExVersion_DAYTbl[14] = 0x20100015;  //SDI 3            
	m_btExVersion_DAYTbl[15] = 0x20100016;  //SDI 4            
	m_btExVersion_DAYTbl[16] = 0x20100017;  //SDI 5            
	m_btExVersion_DAYTbl[17] = 0x20100018;  //SDI 6            
	m_btExVersion_DAYTbl[18] = 0x20100019;  //SDI 7            
	m_btExVersion_DAYTbl[19] = 0x20100020;  //SDI 8            
	m_btExVersion_DAYTbl[20] = 0x20100021;  //PII 1            
	m_btExVersion_DAYTbl[21] = 0x20100022;  //PII 2            
	m_btExVersion_DAYTbl[22] = 0x20100023;  //PII 3            
	m_btExVersion_DAYTbl[23] = 0x20100024;  //PII 4            
	m_btExVersion_DAYTbl[24] = 0x20100025;  //VRX 1            
	m_btExVersion_DAYTbl[25] = 0x20100026;  //VRX 2            
	m_btExVersion_DAYTbl[26] = 0x20100027;  //VRX 3            
	m_btExVersion_DAYTbl[27] = 0x20100028;  //VRX 4            
	m_btExVersion_DAYTbl[28] = 0x20100029;  //VRX 5            
	m_btExVersion_DAYTbl[29] = 0x20100030;  //VRX 6            
	m_btExVersion_DAYTbl[30] = 0x20100031;  //VRX 7            
	m_btExVersion_DAYTbl[31] = 0x20100032;  //VRX 8            
	m_btExVersion_DAYTbl[32] = 0x20100033;  //VRX 9            
	m_btExVersion_DAYTbl[33] = 0x20100034;  //VRX 10           
	m_btExVersion_DAYTbl[34] = 0x20100035;  //VRX 11           
	m_btExVersion_DAYTbl[35] = 0x20100036;  //VRX 12           
	m_btExVersion_DAYTbl[36] = 0x20100037;  //CN-MAIN          
	m_btExVersion_DAYTbl[37] = 0x20100038;  //CN-LAUN          
	m_btExVersion_DAYTbl[38] = 0x20100039;  //CN-UP            
	m_btExVersion_DAYTbl[39] = 0x20100040;  //CN-PPLAY         
	m_btExVersion_DAYTbl[40] = 0x20100041;  //CN-SPLAY         
	m_btExVersion_DAYTbl[41] = 0x20100042;  //CN-FTPDATA       
	m_btExVersion_DAYTbl[42] = 0x20100043;  //CN-CDTDATA       
	m_btExVersion_DAYTbl[43] = 0x00000000;  //끝   
	
	memset(m_bExVersionEnableTbl,TRUE,sizeof(m_bExVersionEnableTbl));
	*/
	
	//
	i = GetFirmwareVersion(1);
	sprintf(szBuf,"Lonwork Monitor Program, Version:%d.%d%d%d\r\n",i/1000%10,i/100%10,i/10%10,i%10);
	user_DebugPrint(szBuf);

	//memset(d_nCarNoList, 0xFFFFFF, sizeof(d_nCarNoList));

	// DPRAM 검사
	/*
	for(i=0;i<DPRAM_SIZE;i++)
	{
		pDpram[i] = i;
	}
	
	for(i=0;i<DPRAM_SIZE;i++)
	{
		if(WORD_L(pDpram[i]) != WORD_L(i)) break;
	}
	
	if(i == DPRAM_SIZE)
	{
		user_DebugPrint("DPRAM Check OK..\r\n");
	}
	else
	{
		user_DebugPrint("DPRAM Check NG..\r\n");
	}
	
	//memset(pDpram,0x00,DPRAM_SIZE);
	*/
}

//******************************************************************************************
//	Loop
//******************************************************************************************
void user_Loop()
{
	int i;

	user_LonWorkLoop();
		
	user_DebugLoop();
	
	user_WithCncsRs232Loop();
	
	user_WithPacRs485Loop();
	
	if(m_nSingleOrMarriedCarUpdate1msTimer > 500)
	{
		m_nSingleOrMarriedCarUpdate1msTimer = 0;
		if(user_IsSingleOrMarried()) SINGLE_OR_MARRIED_CAR = user_IsSingleOrMarried();
	}
}

//******************************************************************************************
//	디버그 수신 루프
//******************************************************************************************
void user_DebugLoop()
{
	int i,j;
	char szBuf1[256];
	char szBuf2[256];
	int nRxLen;
	UCHAR btBuf[256];
	static int nRxPos = 0;
	static UCHAR nOldUart1RxOneByteGapDelayTime = 0;
	static UCHAR btRxBuf[256];
	DATE_TIME_TYPE tmBuf;
	PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;
	PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //버전 정보 처리를 위해 임의로 만들었다.
	
	// 수신
	nRxLen = user_DebugRx(btBuf,128);
	if(nRxLen)
	{
		if(!m_nUart1RxOneByteGapDelayTime) nRxPos = 0;
		m_nUart1RxOneByteGapDelayTime = 10;
		
		if(nRxPos + nRxLen < 250)
		{
			memcpy(&btRxBuf[nRxPos],btBuf,nRxLen);
			nRxPos += nRxLen;
		}
	}
	
	if(nOldUart1RxOneByteGapDelayTime && !m_nUart1RxOneByteGapDelayTime)
	{
		strncpy(szBuf1,(char *)btRxBuf,MIN(16,nRxPos));
		szBuf1[16] = NULL;
		for(i=0;i<strlen(szBuf1);i++) if(!IS_ASCALPHABET(szBuf1[i]) && !IS_ASCSPEC(szBuf1[i])) {szBuf1[i] = NULL; break;}

		if(btRxBuf[0] == '\r' || btRxBuf[0] == '\n')
		{
			user_DebugPrint((char *)"->\r\n");
		}
		else
		if(!strcmp(szBuf1,"T"))
		{
			if(IS_ASCNUMBER(btRxBuf[1]) && IS_ASCNUMBER(btRxBuf[2]) && 
				IS_ASCNUMBER(btRxBuf[3]) && IS_ASCNUMBER(btRxBuf[4]) &&
				IS_ASCNUMBER(btRxBuf[5]) && IS_ASCNUMBER(btRxBuf[6]) &&
				IS_ASCNUMBER(btRxBuf[7]) && IS_ASCNUMBER(btRxBuf[8]) &&
				IS_ASCNUMBER(btRxBuf[9]) && IS_ASCNUMBER(btRxBuf[10]) &&
				IS_ASCNUMBER(btRxBuf[11]) && IS_ASCNUMBER(btRxBuf[12]))
			{
				tmBuf.second = MAKE_BYTE(ConvAsc2Hex(btRxBuf[11]),ConvAsc2Hex(btRxBuf[12]));
				tmBuf.minute = MAKE_BYTE(ConvAsc2Hex(btRxBuf[9]),ConvAsc2Hex(btRxBuf[10]));
				tmBuf.hour = MAKE_BYTE(ConvAsc2Hex(btRxBuf[7]),ConvAsc2Hex(btRxBuf[8]));
				tmBuf.day = MAKE_BYTE(ConvAsc2Hex(btRxBuf[5]),ConvAsc2Hex(btRxBuf[6]));
				tmBuf.month = MAKE_BYTE(ConvAsc2Hex(btRxBuf[3]),ConvAsc2Hex(btRxBuf[4]));
				tmBuf.year = MAKE_BYTE(ConvAsc2Hex(btRxBuf[1]),ConvAsc2Hex(btRxBuf[2]));
				tmBuf.weekday = 0;
				//timeStSet(tmBuf);
	
				//timeGet(&tmBuf);
				m_tmCurTime.second = HEXA2BIN(tmBuf.second);
				m_tmCurTime.minute = HEXA2BIN(tmBuf.minute);
				m_tmCurTime.hour = HEXA2BIN(tmBuf.hour);
				m_tmCurTime.day = HEXA2BIN(tmBuf.day);
				m_tmCurTime.month = HEXA2BIN(tmBuf.month);
				m_tmCurTime.year = HEXA2BIN(tmBuf.year);

				sprintf(btBuf,"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour],%02X[minute],%02X[second] \r\n",
					BIN2HEXA(m_tmCurTime.year),BIN2HEXA(m_tmCurTime.month),BIN2HEXA(m_tmCurTime.day),BIN2HEXA(m_tmCurTime.hour),BIN2HEXA(m_tmCurTime.minute),BIN2HEXA(m_tmCurTime.second));
				user_DebugPrint((char *)btBuf);
			}		
			else
			{
				user_DebugPrint("Not Date&time format \r\n");
			}
		}
		else
		if(!strcmp(szBuf1,"t"))
		{
			sprintf(btBuf,"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour],%02X[minute],%02X[second] \r\n",
				BIN2HEXA(m_tmCurTime.year),BIN2HEXA(m_tmCurTime.month),BIN2HEXA(m_tmCurTime.day),BIN2HEXA(m_tmCurTime.hour),BIN2HEXA(m_tmCurTime.minute),BIN2HEXA(m_tmCurTime.second));
			user_DebugPrint((char *)btBuf);
		}
		else
		if(!strcmp(szBuf1,"V"))
		{
			i = GetFirmwareVersion(1);
			j = MAKE_WORD(pLnWkDp->btVerH,pLnWkDp->btVerL);
			sprintf(btBuf,"LIC-MPU Version:%d.%d%d%d,Build Date:20%06d, LIC-LON Version:%d.%d%d%d,Build Date:%08X\r\n",
									i/1000%10,i/100%10,i/10%10,i%10, GetFirmwareVersion(2),
									BYTE_H(WORD_H(j)),BYTE_L(WORD_H(j)),BYTE_H(WORD_L(j)),BYTE_L(WORD_L(j)),
									MAKE_DWORD(pLnWkDp->btBuildDateHH,pLnWkDp->btBuildDateHL,pLnWkDp->btBuildDateLH,pLnWkDp->btBuildDateLL));

			user_DebugPrint((char *)btBuf);

			memset(btBuf,0x00,256);

			//2011_03_03 수정 
			for(i =0 ;i<43;i++) //CNCS로 부터 받은 버전 정보 표출 하는 부분 추가 
			{
				memset(btBuf,0x00,256);
				memcpy(btBuf,&LIC_VerList[i][0],strlen((char*)&LIC_VerList[i][0]));
				sprintf(&btBuf[strlen((char*)&btBuf)],"---");
				memcpy(&btBuf[strlen((char*)&btBuf)],&pLicVerDp->cvbBuf[i].chVer[0],4);
				sprintf(&btBuf[strlen((char*)&btBuf)],"\r\n");
				
				user_DebugPrint((char *)btBuf);
			}
			
			
		}
		else
		if(!strcmp(szBuf1,"Recent"))
		{
			m_nLnWkTxFlag = 1;
			user_DebugPrint("Recent fault read start send \r\n");
		}
		else
		if(!strcmp(szBuf1,"Historical"))
		{
			m_nLnWkTxFlag = 2;
			gm_SysTimeToRtc(&tmBuf,m_nDateTime2SecondCnt);
			sprintf(btBuf,"Historical read start send, Historical start time : %08XH, Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour],%02X[minute],%02X[second] \r\n",
				m_nDateTime2SecondCnt,
				tmBuf.year,
				tmBuf.month,
				tmBuf.day,
				tmBuf.hour,
				tmBuf.minute,
				tmBuf.second
				);
			user_DebugPrint((char *)btBuf);
		}
		else
		if(!strcmp(szBuf1,"Rxinfo"))
		{
			if(!m_nNvsramPos)
			{
				sprintf(btBuf,"Total byte : %d, Packet count : %d, window count : %d, remaind packet : %d, m_nLnWkWaySideOnRxOk : %d, m_bLnWkFtpEndFlag : %d, Historical start time : %08XH \r\n",0,0,0,0,m_nLnWkWaySideOnRxOk,m_bLnWkFtpEndFlag,m_nDateTime2SecondCnt);
			}
			else
			{
				sprintf(btBuf,"Total byte : %d, Packet count : %d, window count : %d, remaind packet : %d, m_nLnWkWaySideOnRxOk : %d, m_bLnWkFtpEndFlag : %d, Historical start time : %08XH \r\n",m_nNvsramPos,((m_nNvsramPos-1)/128)+1,((m_nNvsramPos-1)/128/6)+1,m_nNvsramPos%128,m_nLnWkWaySideOnRxOk,m_bLnWkFtpEndFlag,m_nDateTime2SecondCnt);
			}
			user_DebugPrint((char *)btBuf);
		}
		else
		if(!strcmp(szBuf1,"LnWayClr"))
		{
			m_nLnWkWaySideOnRxOk = 0;
			user_DebugPrint("'m_nLnWkWaySideOnRxOk' Clear OK \r\n");
		}
		else
		if(!strcmp(szBuf1,"LnFtpClr"))
		{
			m_bLnWkFtpEndFlag = FALSE;
			user_DebugPrint("'m_bLnWkFtpEndFlag' Clear OK \r\n");
		}
		else
		if(!strcmp(szBuf1,"HisStTm"))
		{
			if(IS_ASCHEX(btRxBuf[7]) && IS_ASCHEX(btRxBuf[8]) && 
				IS_ASCHEX(btRxBuf[9]) && IS_ASCHEX(btRxBuf[10]) &&
				IS_ASCHEX(btRxBuf[11]) && IS_ASCHEX(btRxBuf[12]) &&
				IS_ASCHEX(btRxBuf[13]) && IS_ASCHEX(btRxBuf[14]))
			{
				m_nDateTime2SecondCnt = MAKE_DWORD(
							MAKE_BYTE(ConvAsc2Hex(btRxBuf[7]),ConvAsc2Hex(btRxBuf[8])),
							MAKE_BYTE(ConvAsc2Hex(btRxBuf[9]),ConvAsc2Hex(btRxBuf[10])),
							MAKE_BYTE(ConvAsc2Hex(btRxBuf[11]),ConvAsc2Hex(btRxBuf[12])),
							MAKE_BYTE(ConvAsc2Hex(btRxBuf[13]),ConvAsc2Hex(btRxBuf[14]))
							);
				
				gm_SysTimeToRtc(&tmBuf,m_nDateTime2SecondCnt);
				sprintf(btBuf,"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour],%02X[minute],%02X[second], Setting OK \r\n",
					tmBuf.year,
					tmBuf.month,
					tmBuf.day,
					tmBuf.hour,
					tmBuf.minute,
					tmBuf.second
					);
				user_DebugPrint((char *)btBuf);
			}		
			else
			{
				user_DebugPrint("No format \r\n");
			}
		}
		else
		if(!strcmp(szBuf1,"ViewCarNo"))
		{
			sprintf(btBuf,"Car number 0 : %d, Car number 1 : %d \r\n",m_nCarNo[0],m_nCarNo[1]);
			user_DebugPrint((char *)btBuf);
		}
		else
		if(!strcmp(szBuf1,"CarNoClr"))
		{
			m_nCarNo[0] = 0x0000;
			m_nCarNo[1] = 0x0000;
			user_DebugPrint("Car number clear OK \r\n");
		}
		else		
		if(!strcmp(szBuf1,"?"))
		{
			user_DebugPrint("[ENTER]      : Move next line after out '->' \r\n");
			user_DebugPrint("'?'          : Help \r\n");
			user_DebugPrint("'T'          : Date&time setting , 'TYYMMDDHHMNSS', 'EX)T100312154200' \r\n");
			user_DebugPrint("'t'          : Date&time read \r\n");
			user_DebugPrint("'V'          : Version \r\n");
			user_DebugPrint("'Recent'     : Recently faults start \r\n");
			user_DebugPrint("'Historical' : Historical data start \r\n");
			user_DebugPrint("'Rxinfo'     : Recieve info \r\n");
			user_DebugPrint("'LnWayClr'   : 'm_nLnWkWaySideOnRxOk' variable clear \r\n");
			user_DebugPrint("'LnFtpClr'   : 'm_bLnWkFtpEndFlag' variable clear \r\n");
			user_DebugPrint("'HisStTm'    : Historical data start time set(2000/1/1 0:0:0 ~ total second), HisStTmxxxxxxxx, 'EX)HisStTm0000000F' \r\n");
			user_DebugPrint("'ViewCarNo'  : View car number \r\n");
			user_DebugPrint("'CarNoClr'   : Car number clear \r\n");
			user_DebugPrint("\r\n");
		}
		else
		{
			user_DebugPrint("Syntax error\r\n");
		}
	}
	nOldUart1RxOneByteGapDelayTime = m_nUart1RxOneByteGapDelayTime;
}

//******************************************************************************************
//	Single car 인지, Married Car인지 리턴
//
//	Return
//	- 1 : Single
//	- 2 : Married
//	- 0 : 해당사항 없음 사용하지말것
//******************************************************************************************
int user_IsSingleOrMarried()
{
	if(m_nCarNo[0] && !m_nCarNo[1]) return 1;
	else
	if(m_nCarNo[0] && m_nCarNo[1]) return 2;
	else
	return 0;
}

//******************************************************************************************
//	Single car 인지, Married Car인지에 따라서 TRUE또는 FALSE한다.
//******************************************************************************************
void user_SetVersionEnableTbl(int nVal)
{
	int nPos;
	
	switch(nVal)
	{
	// 싱글카인 경우
	case 1:
		nPos = 0;
		m_bExVersionEnableTbl[nPos++] = TRUE;	//TRIC, A/F       
		m_bExVersionEnableTbl[nPos++] = TRUE;	//TRIC, B                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CCP, F/A end                            
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CCP, B                                  
		m_bExVersionEnableTbl[nPos++] = TRUE;	//LIC-LON                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//LIC-MPU                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//GIA                                     
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VTX                                     
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PAC, F/A                                
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PAC, F/A                                
		m_bExVersionEnableTbl[nPos++] = TRUE;	//FDI, F /A                               
		m_bExVersionEnableTbl[nPos++] = TRUE;	//FDI, B                                  
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 1                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 2                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 3                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 4                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//SDI 5                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//SDI 6                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//SDI 7                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//SDI 8                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PII 1                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PII 2                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//PII 3                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//PII 4                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 1                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 2                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 3                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 4                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 5                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 6                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//VRX 7                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//VRX 8                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//VRX 9                                   
		m_bExVersionEnableTbl[nPos++] = FALSE;	//VRX 10                                  
		m_bExVersionEnableTbl[nPos++] = FALSE;	//VRX 11                                  
		m_bExVersionEnableTbl[nPos++] = FALSE;	//VRX 12                                  
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-MAIN                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-LAUN                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-UP                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-PPLAY                                
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-SPLAY                                
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-FTPDATA                              
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-CDTDATA                              
		break;
			
	// 메리드 카인 경우
	case 2:
		nPos = 0;
		m_bExVersionEnableTbl[nPos++] = TRUE;	//TRIC, A/F       
		m_bExVersionEnableTbl[nPos++] = TRUE;	//TRIC, B                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CCP, F/A end                            
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CCP, B                                  
		m_bExVersionEnableTbl[nPos++] = TRUE;	//LIC-LON                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//LIC-MPU                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//GIA                                     
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VTX                                     
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PAC, F/A                                
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PAC, F/A                                
		m_bExVersionEnableTbl[nPos++] = TRUE;	//FDI, F /A                               
		m_bExVersionEnableTbl[nPos++] = TRUE;	//FDI, B                                  
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 1                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 2                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 3                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 4                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 5                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 6                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 7                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//SDI 8                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PII 1                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PII 2                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PII 3                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//PII 4                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 1                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 2                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 3                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 4                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 5                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 6                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 7                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 8                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 9                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 10                                  
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 11                                  
		m_bExVersionEnableTbl[nPos++] = TRUE;	//VRX 12                                  
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-MAIN                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-LAUN                                 
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-UP                                   
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-PPLAY                                
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-SPLAY                                
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-FTPDATA                              
		m_bExVersionEnableTbl[nPos++] = TRUE;	//CN-CDTDATA         
		break;
	}
}

//******************************************************************************************
//	UART 통신 송수신 함수
//******************************************************************************************
int user_DebugRx(UCHAR *pBuf,int nRxBuffLen)
{
	return xr16l784_GetRxBuffer1Ch(pBuf,nRxBuffLen);
}

void user_DebugPrint(char *pTxBuf)
{
	xr16l784_Send(XR16L784_1CHL,(UCHAR *)pTxBuf,strlen(pTxBuf));
}

int user_CncsRx(UCHAR *pBuf,int nRxBuffLen)
{
	return xr16l784_GetRxBuffer2Ch(pBuf,nRxBuffLen);
}

void user_CncsTx(UCHAR *pTxBuf,int nTxLen)
{
	xr16l784_RtsDelayStartSend(XR16L784_2CHL,(UCHAR *)pTxBuf,nTxLen,10);
	//xr16l784_Send(XR16L784_2CHL,(UCHAR *)pTxBuf,nTxLen);
}

int user_PacRx(UCHAR *pBuf,int nRxBuffLen)
{
	return xr16l784_GetRxBuffer3Ch(pBuf,nRxBuffLen);
}

void user_PacTx(UCHAR *pTxBuf,int nTxLen)
{
	xr16l784_RtsDelayStartSend(XR16L784_3CHL,(UCHAR *)pTxBuf,nTxLen,10);
}

//******************************************************************************************
//	LONWORK 읽어서 처리 및 전송
//******************************************************************************************
int d_CdtTxCnt = 0;
void user_LonWorkLoop()
{
	int i;
	int nTxPos = 0;
	UCHAR btTxBuf[128];
	UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;
	char szBuf[512];
	char szBuf2[64];
	
	if(m_nCDT_FaultDataStFlag == 1)
	{
		m_nCDT_FaultDataStFlag = 0;

		m_LIC_CNCS_Tx_Flag = TRUE;
		m_nTxDbg1msTimer = 0;

		nTxPos = 0;
		btTxBuf[nTxPos++] = STX; // STX
		btTxBuf[nTxPos++] = LW_WAYSIDE_ON_REQ; // Command Code
		btTxBuf[nTxPos++] = 0x00; // 0x00으로 설정
		btTxBuf[nTxPos++] = 0x06; // 길이
		btTxBuf[nTxPos++] = m_nLnWkTxFlag; // 스테이션(Recently):0x01, 기지창(Historycal):0x02
		btTxBuf[nTxPos++] = m_chCarKind; // 'A' : A카로부터 수집, 'B' : B카로부터 수집 
		btTxBuf[nTxPos++] = WORD_H(DWORD_H(m_nDateTime2SecondCnt)); // 시간(HH)
		btTxBuf[nTxPos++] = WORD_L(DWORD_H(m_nDateTime2SecondCnt)); // 시간(HL)
		btTxBuf[nTxPos++] = WORD_H(DWORD_L(m_nDateTime2SecondCnt)); // 시간(LH)
		btTxBuf[nTxPos++] = WORD_L(DWORD_L(m_nDateTime2SecondCnt)); // 시간(LL)
		btTxBuf[nTxPos++] = Make1ByteBcc(&btTxBuf[1],nTxPos-1); // Check Sum
		btTxBuf[nTxPos++] = ETX; // ETX
		user_LonWorkTx(btTxBuf,nTxPos);

		d_CdtTxCnt++;
	}

	// NVSRAM에 저장된 내용을 RS232로 전송하여 디버깅한다.
	if(m_bLnWkDbgTxFlag)
	{
		m_bLnWkDbgTxFlag = FALSE;
		m_nDbgTxPos = 0;
		m_nTxDbg1msTimer = 0;
	}
	
	if(m_nDbgTxPos < m_nNvsramPos)
	{
		if(m_nTxDbg1msTimer > 200)
		{
			m_nTxDbg1msTimer = 0;
			szBuf[0] = 0;
			for(i=0;i<(MIN(128,(UINT)(m_nNvsramPos-m_nDbgTxPos)));i++) {sprintf(szBuf2,"%02X ",pNvsram[m_nDbgTxPos+i]); strcat(szBuf,szBuf2);}
			strcat(szBuf,"\r\n");
			user_DebugPrint(szBuf);
			m_nDbgTxPos += 128;
		}
	}
	else
	{
		m_nDbgTxPos = 0xFFFFFFFF;
	}
}

int d_LonKindNum =0;
int d_LonStData = 0;
int d_VerTxCnt = 0; //버전 정보 TX 카운터
int d_EndFlagCnt = 0;
int d_TimeTxCnt = 0; //시간 전송 카운터
int d_StTxCnt = 0; //상태 전송 카운터
int d_TimeTxBuf[10];
int d_nDoorCntA = 0;
int d_nDoorCntB = 0;

void user_LonWorkRead()
{
	int i;
	int nTmp;
	PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;
	UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;

	PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //버전 정보 처리를 위해 임의로 만들었다.

	UCHAR nKind;
	static UCHAR nOldKind = 0;
	UCHAR nRxLen;
	static int nRecRxPos = 0;
	UCHAR btRxBuf[256];
	static UCHAR btFtpOneRecRxBuf[1024];
	int nTxPos = 0;
	UCHAR btTxBuf[128];
	char szBuf[512];
	char szBuf2[64];
	
	//'Y.J 추가 2011-05-19
	int nCarNo = m_wCarNo;
	BOOL bCarNoUpdate = FALSE;

	d_LonKindNum = nKind = WORD_L(pLnWkDp->btKind); 
	
	switch(nKind)
	{
	// FTP1~6 프로토콜
	case 1: case 2: case 3: case 4: case 5: case 6:
		nRxLen = 0;
		
		// 시작
		if(nKind == 1)
		{
			nRecRxPos = 0;
			nRxLen = user_LonWorkRx(nKind,btRxBuf);
			if(nRxLen>6 && nRecRxPos<768)
			{
				memcpy(&btFtpOneRecRxBuf[nRecRxPos],&btRxBuf[5],nRxLen-7);
				nTmp = (nRxLen-7);
				nRecRxPos += nTmp;
				
				szBuf[0] = 0;
				sprintf(szBuf2,"[%d,%3d,%c]",nKind,nRxLen,(char)btRxBuf[4]); strcat(szBuf,szBuf2);
				if(nTmp < 128)
				{
					for(i=0;i<nTmp;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
				}
				else
				{
					for(i=0;i<8;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
					strcat(szBuf,"..");
					for(i=120;i<128;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
				}
				strcat(szBuf,"\r\n");
				user_DebugPrint(szBuf);
			}
		}
		else
		// 중간 레코드 수신
		if(nKind >= 2 && nKind <= 5)
		{
			nRxLen = user_LonWorkRx(nKind,btRxBuf);
			if(nRxLen>6 && nRecRxPos<768)
			{
				memcpy(&btFtpOneRecRxBuf[nRecRxPos],&btRxBuf[5],nRxLen-7);
				nTmp = (nRxLen-7);
				nRecRxPos += nTmp;

				szBuf[0] = 0;
				sprintf(szBuf2,"[%d,%3d,%c]",nKind,nRxLen,(char)btRxBuf[4]); strcat(szBuf,szBuf2);
				if(nTmp < 128)
				{
					for(i=0;i<nTmp;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
				}
				else
				{
					for(i=0;i<8;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
					strcat(szBuf,"..");
					for(i=120;i<128;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
				}
				strcat(szBuf,"\r\n");
				user_DebugPrint(szBuf);
			}
		}
		else
		// 끝
		if(nKind == 6)
		{
			nRxLen = user_LonWorkRx(nKind,btRxBuf);
			if(nRxLen>6 && nRecRxPos<768)
			{
				memcpy(&btFtpOneRecRxBuf[nRecRxPos],&btRxBuf[5],nRxLen-7);
				nTmp = (nRxLen-7);
				nRecRxPos += nTmp;

				szBuf[0] = 0;
				sprintf(szBuf2,"[%d,%3d,%c]",nKind,nRxLen,(char)btRxBuf[4]); strcat(szBuf,szBuf2);
				if(nTmp < 128)
				{
					for(i=0;i<nTmp;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
				}
				else
				{
					for(i=0;i<8;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
					strcat(szBuf,"..");
					for(i=120;i<128;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szBuf2);}
				}
				strcat(szBuf,"\r\n");
				user_DebugPrint(szBuf);
			}
		}

		// 길이가 0~127까지 온다면 데이터를 저장한다.
		if((nRxLen>6 && nRxLen<134))
		{
			user_DebugPrint("***FTP File receive end ^^;***\r\n");
			memcpy(&pNvsram[m_nNvsramPos],btFtpOneRecRxBuf,nRecRxPos);
			m_nNvsramPos += nRecRxPos;
			m_bLnWkFtpEndFlag = TRUE;

			d_EndFlagCnt++;
		}
		else
		if(nKind == 6)
		{
			memcpy(&pNvsram[m_nNvsramPos],btFtpOneRecRxBuf,nRecRxPos);
			m_nNvsramPos += nRecRxPos;
		}
					
		nOldKind = nKind;
		
		break;
			
	// 일반 프로토콜(수신)
	case 7:
		nRxLen = user_LonWorkRx(7,btRxBuf);

		//memcpy(d_LonRxBuf,btRxBuf,nRxLen); //LonWorks수신 버퍼 디버깅.

		if(m_nDbgTxPos == 0xFFFFFFFF)
		{
			szBuf[0] = 0;
			sprintf(szBuf2,"[RX:%02d] ",nRxLen); strcat(szBuf,szBuf2);
			for(i=0;i<nRxLen;i++) {sprintf(szBuf2,"%02X ",btRxBuf[i]); strcat(szBuf,szBuf2);}
			strcat(szBuf,"\r\n");
			user_DebugPrint(szBuf);
		}
		
		if(nRxLen)
		{
			nTxPos = 0;

			d_LonStData = btRxBuf[1];
			switch(btRxBuf[1])
			{
			// WAYSIDE ON ACK 응답
			case LW_WAYSIDE_ON_ACK: 
				m_nLnWkWaySideOnRxOk = 1;
				break;
			// FTP전송 끝
			case LW_FTP_TX_END: 
				if(m_nLnWkWaySideOnRxOk)
				{
					m_nLnWkWaySideOnRxOk--; 
					m_bLnWkFtpEndFlag = TRUE; 
				}
				break;
			// Car Number 읽기
			case LW_CARNO: 

				//memcpy(d_LonRxBuf,btRxBuf,nRxLen); //LonWorks수신 버퍼 디버깅.

				// Y.J 수정(2011-05-19 임시변수에 차량번호를 구한 후, Single과 Married를 구분하여 차량번호를 구함.)

				nTmp = MAKE_WORD(BYTE_L(btRxBuf[4]),btRxBuf[5]);
				//d_nCarNoList[d_n++] = nTmp;
				
				// Single Car...
				if((m_nCarNo[0] != nTmp && m_nCarNo[1] != nTmp)) 
				{
					if(m_nCarNo[0] == 0x0000)
					{
						m_nCarNo[0] = nTmp;
						nCarNo = ((m_nCarNo[0] / 100) << 8) | (((m_nCarNo[0] / 10)%10) << 4) | (m_nCarNo[0] % 10); //메리드는 높은 열번을 사용한다
						bCarNoUpdate = ((m_nCarNo[0] / 100) == 7);
					}
					else
					if(m_nCarNo[1] == 0x0000) m_nCarNo[1] = nTmp;
				}
				
				if(m_nCarNo[0] == m_nCarNo[1])
				{
					m_nCarNo[1] = 0x0000;
				}
				
				if(m_nCarNo[0] == 0x0000 && m_nCarNo[1]) //발생할 수 없는 조건
				{
					nTmp = m_nCarNo[0];
					m_nCarNo[0] = m_nCarNo[1];
					m_nCarNo[1] = nTmp;
				}
				
				// Married Car...
				if(m_nCarNo[0] && m_nCarNo[1])
				{
					if(m_nCarNo[0] > m_nCarNo[1])
					{
						nTmp = m_nCarNo[0];
						m_nCarNo[0] = m_nCarNo[1];
						m_nCarNo[1] = nTmp;
					}
						
					nCarNo = ((m_nCarNo[1] / 100) << 8) | (((m_nCarNo[1] / 10)%10) << 4) | (m_nCarNo[1] % 10); //메리드는 높은 열번을 사용한다.

					bCarNoUpdate = TRUE;
				}

				//if(d_n < 1024)
				//	d_nCarNoList[d_n++] = m_wCarNo;
				if(bCarNoUpdate)
				{
					m_wCarNo =  nCarNo;

					pLicVerDp->CarNum[0] = WORD_H(m_wCarNo);
					pLicVerDp->CarNum[1] = WORD_L(m_wCarNo);
				}

				break;

				// 수정전 원본
				////memcpy(d_LonRxBuf,btRxBuf,nRxLen); //LonWorks수신 버퍼 디버깅.

				//nTmp = MAKE_WORD(BYTE_L(btRxBuf[4]),btRxBuf[5]);
				////d_nCarNoList[d_n++] = nTmp;
				//if((m_nCarNo[0] != nTmp && m_nCarNo[1] != nTmp)) 
				//{
				//	if(m_nCarNo[0] == 0x0000)
				//	{
				//		m_nCarNo[0] = nTmp;
				//		// m_wCarNo = ((m_nCarNo[0] / 100) << 8) | (((m_nCarNo[0] / 10)%10) << 4) % 10 | (m_nCarNo[0] % 10); //메리드는 높은 열번을 사용한다.
				//		m_wCarNo = ((m_nCarNo[0] / 100) << 8) | (((m_nCarNo[0] / 10)%10) << 4) | (m_nCarNo[0] % 10); //메리드는 높은 열번을 사용한다.						
				//	}
				//	else
				//	if(m_nCarNo[1] == 0x0000) m_nCarNo[1] = nTmp;
				//}
				//
				//if(m_nCarNo[0] == m_nCarNo[1])
				//{
				//	m_nCarNo[1] = 0x0000;
				//}
				//
				//if(m_nCarNo[0] == 0x0000 && m_nCarNo[1]) //발생할 수 없는 조건
				//{
				//	nTmp = m_nCarNo[0];
				//	m_nCarNo[0] = m_nCarNo[1];
				//	m_nCarNo[1] = nTmp;
				//}
				//
				//if(m_nCarNo[0] && m_nCarNo[1])
				//{
				//	if(m_nCarNo[0] > m_nCarNo[1])
				//	{
				//		nTmp = m_nCarNo[0];
				//		m_nCarNo[0] = m_nCarNo[1];
				//		m_nCarNo[1] = nTmp;

				//		m_wCarNo = ((m_nCarNo[0] / 100) << 8) | (((m_nCarNo[0] / 10)%10) << 4) | (m_nCarNo[0] % 10); //메리드는 높은 열번을 사용한다.
				//	}
				//	else
				//	{
				//		m_wCarNo = ((m_nCarNo[1] / 100) << 8) | (((m_nCarNo[1] / 10)%10) << 4) | (m_nCarNo[1] % 10); //메리드는 높은 열번을 사용한다.
				//	}
				//}

				////if(d_n < 1024)
				////	d_nCarNoList[d_n++] = m_wCarNo;

				//pLicVerDp->CarNum[0] = WORD_H(m_wCarNo);
				//pLicVerDp->CarNum[1] = WORD_L(m_wCarNo);

				//break;
				
			// 시간요청, MPU가 DPRAM에 데이터를 쓰고 전송 인터럽트를 전송하지않으면 LIC_LON에서 전송하지 않음
			case LW_TIME_REQ:
				nTxPos = 0;
				//if(m_LIC_CNCS_TimSetFlag && m_nCncsRxCheck1msTimer)
				if(m_LIC_GIA_TimSetFlag && m_nGiaRxCheck1msTimer)
				{
					btTxBuf[nTxPos++] = STX; // STX
					btTxBuf[nTxPos++] = LW_TIME_TX; // Command Code
					btTxBuf[nTxPos++] = 0x00; // 0x00으로 설정
					btTxBuf[nTxPos++] = 0x06; // 길이
					/*
					btTxBuf[nTxPos++] = m_tmCurTime.year; // 년 BCD
					btTxBuf[nTxPos++] = m_tmCurTime.month; // 월
					btTxBuf[nTxPos++] = m_tmCurTime.day; // 일
					btTxBuf[nTxPos++] = m_tmCurTime.hour; // 시
					btTxBuf[nTxPos++] = m_tmCurTime.minute; // 분
					btTxBuf[nTxPos++] = m_tmCurTime.second; // 초
					*/
					
					// Y.J 수정
					btTxBuf[nTxPos++] = m_tmUtcTime.year;								// 년 BCD
					btTxBuf[nTxPos++] = m_tmUtcTime.month;								// 월
					btTxBuf[nTxPos++] = m_tmUtcTime.day;								// 일
					btTxBuf[nTxPos++] = m_tmUtcTime.hour;								// 시
					btTxBuf[nTxPos++] = m_tmUtcTime.minute; 							// 분
					btTxBuf[nTxPos++] = m_tmUtcTime.second; 							// 초
					
					btTxBuf[nTxPos++] = Make1ByteBcc(&btTxBuf[1],nTxPos-1); // Check Sum
					btTxBuf[nTxPos++] = ETX; // ETX
					user_LonWorkTx(btTxBuf,nTxPos);

					memset(d_TimeTxBuf,0x00,sizeof(d_TimeTxBuf));

					d_TimeTxCnt++;
					memcpy(d_TimeTxBuf,&btTxBuf[4],6);
				}
				break;
				
			// 상태데이터 요청, MPU가 DPRAM에 데이터를 쓰고 전송 인터럽트를 전송하지않으면 LIC_LON에서 전송하지 않음
			case LW_COMMST_REQ:
				//if(m_LIC_CNCS_TimSetFlag)
				//if(m_LIC_GIA_TimSetFlag)									Y.J 수정(2011.03.03)
				//{
					d_StTxCnt++;

					m_nCarCnt = btRxBuf[4];
					if(m_nCarCnt < 1 && m_nCarCnt > 2) m_nCarCnt = 1;
					nTxPos = 0;
					btTxBuf[nTxPos++] = STX; // STX
					btTxBuf[nTxPos++] = LW_COMMST_TX; // Command Code
					btTxBuf[nTxPos++] = 0x00; // 0x00으로 설정
					btTxBuf[nTxPos++] = 0x07; // 길이
					btTxBuf[nTxPos++] = m_btCommSt[0]; // 상태 데이터
					btTxBuf[nTxPos++] = m_btCommSt[1]; // 상태 데이터
					btTxBuf[nTxPos++] = m_btCommSt[2]; // 상태 데이터
					btTxBuf[nTxPos++] = m_btCommSt[3]; // 상태 데이터
					btTxBuf[nTxPos++] = m_btCommSt[4]; // 상태 데이터
					btTxBuf[nTxPos++] = m_btCommSt[5]; // 상태 데이터
					btTxBuf[nTxPos++] = m_btCommSt[6]; // 상태 데이터
					btTxBuf[nTxPos++] = Make1ByteBcc(&btTxBuf[1],nTxPos-1); // Check Sum
					btTxBuf[nTxPos++] = ETX; // ETX
					user_LonWorkTx(btTxBuf,nTxPos);		
				//}
				break;
				
			//버젼요청
			case LW_VERSION_REQ:
				d_VerTxCnt++;
				nTxPos = 0;
				btTxBuf[nTxPos++] = STX; // STX
				btTxBuf[nTxPos++] = LW_VERSION_TX; // Command Code
				btTxBuf[nTxPos++] = 0x00; // 0x00으로 설정
				btTxBuf[nTxPos++] = 0x08; // 길이
				btTxBuf[nTxPos++] = btRxBuf[4]; // Index 번호
				
				// 2 : Firmware
				// 0 : Not used를 출력하고 버전과 날짜는 출력하지않는다.
				// 6 : 버전전송(LIC -> CDT) 중지
				i = WORD_L(SINGLE_OR_MARRIED_CAR) == 1 || WORD_L(SINGLE_OR_MARRIED_CAR) == 2 ? WORD_L(SINGLE_OR_MARRIED_CAR) : 0;
				user_SetVersionEnableTbl(!i ? 2 : i);
				nTmp = MAX(1,(int)btRxBuf[4]);
				nTmp = MIN((VER_BDD_MAX_CNT+1),(int)btRxBuf[4]);
				nTmp--;
				btTxBuf[nTxPos++] = btRxBuf[4] == (VER_BDD_MAX_CNT+1) ? 6 : (m_bExVersionEnableTbl[nTmp] ? 2 : 0); // Type (2011_03_03 덕수)확인 요청 
				
				btTxBuf[nTxPos++] = WORD_H(m_btExVersionTbl[nTmp]); // Production Version
				btTxBuf[nTxPos++] = WORD_L(m_btExVersionTbl[nTmp]); // Debugging Version
				btTxBuf[nTxPos++] = WORD_H(DWORD_H(m_btExVersion_DAYTbl[nTmp]));//0x20; // Year(천자리,백자리)
				btTxBuf[nTxPos++] = WORD_L(DWORD_H(m_btExVersion_DAYTbl[nTmp]));//0x10;//btRxBuf[4]; // Year(십자리,일자리)
				btTxBuf[nTxPos++] = WORD_H(DWORD_L(m_btExVersion_DAYTbl[nTmp]));//0x01;//btRxBuf[4]+1; // Month(십자리,일자리)
				btTxBuf[nTxPos++] = WORD_L(DWORD_L(m_btExVersion_DAYTbl[nTmp]));//0x01;//btRxBuf[4]+2; // Day(십자리,일자리)
				btTxBuf[nTxPos++] = Make1ByteBcc(&btTxBuf[1],nTxPos-1); // Check Sum
				btTxBuf[nTxPos++] = ETX; // ETX
				user_LonWorkTx(btTxBuf,nTxPos);
				break;

			//도어상태(Single or married A)
			case LW_DOOR_ST_REQ1:
				d_nDoorCntA++;
				m_btCttSignalA = btRxBuf[4];
				break;

			//도어상태(Mmarried B)
			case LW_DDOR_ST_REQ2:
				d_nDoorCntB++;				m_btCttSignalB = btRxBuf[4];
				break;
			}
			
			if(nTxPos)
			{
				if(m_nDbgTxPos == 0xFFFFFFFF)
				{
					szBuf[0] = 0;
					sprintf(szBuf2,"[TX:%02d] ",nTxPos); strcat(szBuf,szBuf2);
					for(i=0;i<nTxPos;i++) {sprintf(szBuf2,"%02X ",btTxBuf[i]); strcat(szBuf,szBuf2);}
					strcat(szBuf,"\r\n");
					user_DebugPrint(szBuf);
				}			
			}
		}
		break;
	}
}

UCHAR user_LonWorkRx(int nRxPos, UCHAR *pRxBuf)
{
	int i;
	UCHAR nRxLen;
	UCHAR *pBuf;
	PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;
	
	if(nRxPos >= 1 && nRxPos <= 6)
	{
		nRxLen = MIN(sizeof(LNWKFTPIT)-1,WORD_L(pLnWkDp->lfBuf[nRxPos-1].btLen)+7);
		if(nRxLen > 6)
		{
			pBuf = &pLnWkDp->lfBuf[nRxPos-1].btStx;
			for(i=0;i<nRxLen;i++) pRxBuf[i] = WORD_L(pBuf[i]);
			if(pRxBuf[0] == STX && pRxBuf[nRxLen-1] == ETX)
			{
				return nRxLen;
			}
			else
			{
				return 0;
			}
		}
		else
		{
			return 0;
		}
	}
	else
	if(nRxPos == 7)
	{
		nRxLen = MIN(sizeof(LNWKGERIT),WORD_L(pLnWkDp->lgRxBuf.btLen)+6);
		if(nRxLen > 5)
		{
			pBuf = &pLnWkDp->lfBuf[nRxPos-1].btStx;
			for(i=0;i<nRxLen;i++) pRxBuf[i] = WORD_L(pBuf[i]);
			if(pRxBuf[0] == STX && pRxBuf[nRxLen-1] == ETX && !Make1ByteBcc(&pRxBuf[1],nRxLen-2))
			{
				return nRxLen;
			}
			else
			{
				return 0;
			}
		}
		else
		{
			return 0;
		}
	}
	else
	{
		return 0;
	}
	
	return 0;
}

int d_LonTxData = 0;
int d_LonTxDataBuf[30];
void user_LonWorkTx(UCHAR *pTxBuf,UCHAR nLen)
{
	UCHAR *pBuf;
	PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;
	
	pBuf = &pLnWkDp->lgTxBuf.btStx;

	memcpy(d_LonTxDataBuf,pBuf,30);

	d_LonTxData++;

	memcpy(pBuf,pTxBuf,(int)nLen);
	LNWK_TXINTREQ();
}

//******************************************************************************************
//	LIC<->CNCS(RS232)
//******************************************************************************************
int d_Len = 0;

//int aaa_FaultCnt = 0;
//int aaa_CarAFautlCnt = 0;
//int aaa_FaultInx = 0;
//int aaa_CollectMarriedB = 0;
//int aaa_ACarDataPosi = 0;
//int aaa_FaultBlkList[1024];

void user_WithCncsRs232Loop()
{
	int i;
	int nRxLen;
	UCHAR btBuf[256]; //수신 레지스트에서 읽어 오는 변수
	UCHAR sTimeBuf[10];//시간 전송 버퍼.
	int sPotoLen = 0; //블량 패킷 Index. 
	UCHAR sBcc = 0;
	static int nRxPos = 0; //수신 카운터.
	static UCHAR nOldUart2RxOneByteGapDelayTime = 0; //10ms 이상 수신이 않되면 수신 처리 한다.
	static UCHAR btRx2chBuf[512]; //수신 버퍼
	static UCHAR btTx2chBuf[512]; //전송 버퍼.
	static int nTimeSendCnt = 0;
	UCHAR LL,LH,HL,HH;

	int nBlkSize = 0;
	int nTempBlkEnd = 0;
	int sTxDataSize = 0; //수신아 데이타 size를 비료 하여 128이명 중간 작으면 마지막 프레임 이다.

	UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;

	PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //버전 정보 처리를 위해 임의로 만들었다.
	PLIC_CNCS_HD pLic_Cncs;
	PCNCS_LIC_SD pCncsLicSd;

	PCNCS_LIC_T_F pCnsc_Lic_T_F;
	PCNCS_LIC_T_F_C pCncs_Lic_T_F_C = (CNCS_LIC_T_F_C *) btRx2chBuf;				// 고장 패킷 전송 완료 확인 프로토콜 추가(Y.J 2011-05-10)
	
	// Fault Block Information;
	PFAULT_INFO pInfo = NULL;

	// 수신
	nRxLen = user_CncsRx(btBuf,128);
	if(nRxLen)
	{
		if(!m_nUart2RxOneByteGapDelayTime) nRxPos = 0;
		m_nUart2RxOneByteGapDelayTime = 10;
		
		if(nRxPos + nRxLen < 511)
		{
			memcpy(&btRx2chBuf[nRxPos],btBuf,nRxLen);
			nRxPos += nRxLen;
		}
	}
	
	if(nOldUart2RxOneByteGapDelayTime && !m_nUart2RxOneByteGapDelayTime)
	{
		pCncsLicSd = (CNCS_LIC_SD *)btRx2chBuf;

		pCnsc_Lic_T_F = (CNCS_LIC_T_F *) btRx2chBuf;

		if(pCncsLicSd->phHdBuf.btSoh == SOH &&
		   pCncsLicSd->btEot == EOT &&
		   sizeof(CNCS_LIC_SD) == nRxPos &&
		   (TWOBYTE_ASC2HEX(pCncsLicSd->phHdBuf.chDestDev) == LIC_DEV_NO) && 
		   (TWOBYTE_ASC2HEX(pCncsLicSd->sCommand) == 0x09) &&  //CNCS가 시간 응답
		   !((Make1ByteBcc(&pCncsLicSd->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOBYTE_ASC2HEX(pCncsLicSd->chChkSum)))))
		{
			d_Len++;

			/*
			m_LIC_CNCS_TimSetFlag = 1;
			m_nCncsRxCheck1msTimer = 2000; //2011_03_03 수정 10초-> 2초 수정 

			m_tmCurTime.second = TWOBYTE_ASC2HEX(pCncsLicSd->sSecond);
			m_tmCurTime.minute = TWOBYTE_ASC2HEX(pCncsLicSd->sMinute);
			m_tmCurTime.hour = TWOBYTE_ASC2HEX(pCncsLicSd->sHour);
			m_tmCurTime.day = TWOBYTE_ASC2HEX(pCncsLicSd->sDay);
			m_tmCurTime.month = TWOBYTE_ASC2HEX(pCncsLicSd->sMonth);
			m_tmCurTime.year = TWOBYTE_ASC2HEX(pCncsLicSd->sYear);
			*/
			
			for(i=0;i<VER_BDD_MAX_CNT;i++)
			{
				if(!MAKE_DWORD(0x00,m_tmCurTime.year,m_tmCurTime.month,m_tmCurTime.day))
				{
					pLicVerDp->VerCnt = FALSE;
					memset(pLicVerDp->cvbBuf[i].chVer,'0',4);
					memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);
					break;
				}
				else
				{
					pLicVerDp->VerCnt = TRUE;

					// 버전 입력
					pLicVerDp->cvbBuf[i].chVer[0] = pCncsLicSd->cvbBuf[i].chVer[0]; 
					pLicVerDp->cvbBuf[i].chVer[1] = pCncsLicSd->cvbBuf[i].chVer[1]; 
					pLicVerDp->cvbBuf[i].chVer[2] = pCncsLicSd->cvbBuf[i].chVer[2]; 
					pLicVerDp->cvbBuf[i].chVer[3] = pCncsLicSd->cvbBuf[i].chVer[3];

					// 만들어진 날짜 입력
					pLicVerDp->cvbBuf[i].chBuildDate[0] = pCncsLicSd->cvbBuf[i].chBuildDate[0];
					pLicVerDp->cvbBuf[i].chBuildDate[1] = pCncsLicSd->cvbBuf[i].chBuildDate[1];
					pLicVerDp->cvbBuf[i].chBuildDate[2] = pCncsLicSd->cvbBuf[i].chBuildDate[2];
					pLicVerDp->cvbBuf[i].chBuildDate[3] = pCncsLicSd->cvbBuf[i].chBuildDate[3];
					pLicVerDp->cvbBuf[i].chBuildDate[4] = pCncsLicSd->cvbBuf[i].chBuildDate[4];
					pLicVerDp->cvbBuf[i].chBuildDate[5] = pCncsLicSd->cvbBuf[i].chBuildDate[5];
				}
			}

			if(TWOBYTE_ASC2HEX(pCncsLicSd->sWaySide) == 0x01 && !m_LIC_CNCS_Tx_Flag) // wayside on 알림
			{
				m_nCDT_FaultDataStFlag = 1;

				//2011_03_03 수정 
				m_nFaultCnt = 0;						// 고장 갯수를 0으로 초기화.(Y.J 추가);
				memset((UCHAR *)NVSRAM_BASE,0x00,1024); // 고장 블럭을 "0" 으로 초시화 한다. 초기 위치 0부터 1024까지만 초기화 한다.
				ClearFltBlkInfo();						// 고장 정보를 Clear하는 부분.
				
				//memset(aaa_FaultBlkList, 0xFF, 1024);

				m_nNvsramPos = 0;	//전체 기록 구조 위치를 처음으로
				nRecving_Posi = 0;	//현재 까지 전송한 위치를 처음으로
				m_nLnWkTxFlag = 0;	//고장 코드 구분을 0으로 초기화

				m_nLnWkTxFlag = TWOBYTE_ASC2HEX(pCncsLicSd->sDaType);

				//m_nDateTime2SecondCnt = MAKE_WORD(MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[0]),ConvAsc2Hex(pCncsLicSd->sFaultTime[1])),
				//                                     MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[2]),ConvAsc2Hex(pCncsLicSd->sFaultTime[3])));

				// 고장 시간 요청 WORD -> DWORD로 변경.(2011.05.08)
				m_nDateTime2SecondCnt = MAKE_DWORD( MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[0]),ConvAsc2Hex(pCncsLicSd->sFaultTime[1])),
													MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[2]),ConvAsc2Hex(pCncsLicSd->sFaultTime[3])),
													MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[4]),ConvAsc2Hex(pCncsLicSd->sFaultTime[5])),
													MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[6]),ConvAsc2Hex(pCncsLicSd->sFaultTime[7])));
			}
		}
		else if(pCncs_Lic_T_F_C->phHdBuf.btSoh == SOH &&																			// 고장 시간 요청 WORD -> DWORD로 변경.(2011.05.11)
			pCncs_Lic_T_F_C->btEot == EOT &&
			sizeof(CNCS_LIC_T_F_C) == nRxPos &&
		   (TWOBYTE_ASC2HEX(pCncs_Lic_T_F_C->phHdBuf.chDestDev) == LIC_DEV_NO) &&
		   (TWOBYTE_ASC2HEX(pCncsLicSd->sCommand) == 0x07) &&  //고장 전송 확인 응답(CNCS-> LIC)
		   !((Make1ByteBcc(&pCncs_Lic_T_F_C->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOBYTE_ASC2HEX(pCncs_Lic_T_F_C->chChkSum)))))

		//else if(pCnsc_Lic_T_F->phHdBuf.btSoh == SOH &&
		//    pCnsc_Lic_T_F->btEot == EOT &&
		//    sizeof(CNCS_LIC_T_F) == nRxPos &&
		//   (TWOBYTE_ASC2HEX(pCnsc_Lic_T_F->phHdBuf.chDestDev) == LIC_DEV_NO) &&
		//   (TWOBYTE_ASC2HEX(pCncsLicSd->sCommand) == 0x07) &&  //고장 전송 확인 응답(CNCS-> LIC)
		//   !((Make1ByteBcc(&pCnsc_Lic_T_F->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOBYTE_ASC2HEX(pCnsc_Lic_T_F->chChkSum)))))
		{
			// Y.J 2011-05-10 요청한 고장 Index를 사용하여, 전송하도록 수정.
			sPotoLen = MAKE_WORD(MAKE_BYTE(ConvAsc2Hex(pCnsc_Lic_T_F->sTEXT[0]),ConvAsc2Hex(pCnsc_Lic_T_F->sTEXT[1])),
			                     MAKE_BYTE(ConvAsc2Hex(pCnsc_Lic_T_F->sTEXT[2]),ConvAsc2Hex(pCnsc_Lic_T_F->sTEXT[3])));
			if(sPotoLen)
			{
				//aaa_FaultCnt++;
				//aaa_FaultInx = sPotoLen;

				// 재전송할 고장 블록 정보를 얻음.
				pInfo = GetFltBlkInfo(m_chCarKind);
				
				if(pInfo != NULL)
				{
					// 전송할 블록 위치로 이동.
					nRecving_Posi = pInfo->nStPosi + ((sPotoLen-1) * 128);

					// 전송할 블록 크기를 구하는 부분.
					if(sPotoLen < pInfo->nTCnt) //  (sPotoLen*128) <= nTempBlkEnd)
					{
						nBlkSize = 128;
					}
					else if(sPotoLen == pInfo->nTCnt)
					{
						nBlkSize = (pInfo->nEdPosi - pInfo->nStPosi) % 128; // - ((sPotoLen - 1) * 128);
					}
					else
					{
						nBlkSize = 0;
					}

					if(nBlkSize < 0) nBlkSize = 0; 

					// 블록의 마지막 위치를 지정.
					nTempBlkEnd = pInfo->nEdPosi;
				}

				sTxDataSize = nBlkSize + 2;

				// 고장 데이터를 전송하는 부분.
				user_FaultDataTx(btTx2chBuf,sTxDataSize,TRUE,sPotoLen);
				user_CncsTx(btTx2chBuf,(sTxDataSize*2)+18);

				// 전송 후, 블록 위치를 마지막 위치로 복원.
				nRecving_Posi = nTempBlkEnd;
			}
			else 
			//바로 종료 코드가 수신 될수 있다.
			{ 
				user_FtpEnd_CarNumFun();

				//memcpy(aaa_FaultBlkList, m_tFaultInfo, sizeof(m_tFaultInfo));
				//aaa_CollectMarriedB++;
			}
		}
	}
	else // 데이타 전송
	{
		if(m_nTxDbg1msTimer > 150)
		{
			//고장 정보 전송.
			if(m_LIC_CNCS_Tx_Flag)
			{ 
				m_nTxDbg1msTimer = 0;

				m_LIC_CNCS_TX_DelyTime++;

				if(m_LIC_CNCS_TX_DelyTime > 50){m_bLnWkFtpEndFlag = TRUE;} 

				if((m_nNvsramPos !=  (nRecving_Posi)) && (m_nNvsramPos >= (nRecving_Posi+128)))
				{
					m_nFaultCnt++;
					if(m_nFaultCnt == 1) 
						SetFltBlkStPos(m_chCarKind, nRecving_Posi);									// 첫번째 블록일 경우, 고장 정보의 시작 위치를 기록.

					sTxDataSize = 128 + 2;

					user_FaultDataTx(btTx2chBuf,sTxDataSize,FALSE,0);

					nRecving_Posi += 128;

					user_CncsTx(btTx2chBuf,(sTxDataSize*2)+18);
				}
				else 
				//바로 종료 코드가 수신 될수 있다.
				if(m_bLnWkFtpEndFlag)
				{ 
					m_nFaultCnt++;
					//aaa_CarAFautlCnt = m_nFaultCnt;

					if(m_nFaultCnt == 1) 
						SetFltBlkStPos(m_chCarKind, nRecving_Posi);									// 첫번째 블록일 경우, 고장 정보의 시작 위치를 기록.

					// 고장 정보를 저장하는 부분.					
					SetFltBlkEdInfo(m_chCarKind, m_nNvsramPos, m_nFaultCnt);

					sTxDataSize = (m_nNvsramPos - nRecving_Posi) + 2;
					user_FaultDataTx(btTx2chBuf,sTxDataSize,TRUE,0);
					nRecving_Posi += (sTxDataSize-2);

					// user_FtpEnd_CarNumFun();

					user_CncsTx(btTx2chBuf,(sTxDataSize*2)+18);

					m_LIC_CNCS_Tx_Flag = FALSE;
				} 				
			}
			else
			//시간 정보 요청.
			if(m_nTxDbg1msTimer > 1000)
			{ 
				m_nTxDbg1msTimer = 0;

				nTimeSendCnt++;
				nTimeSendCnt = nTimeSendCnt%255;

				pCnsc_Lic_T_F = (CNCS_LIC_T_F *) btTx2chBuf;

				sTxDataSize = 4;

				pCnsc_Lic_T_F->phHdBuf.btSoh =  0x01;
				pCnsc_Lic_T_F->phHdBuf.chSrcDev[0] =  ConvHex2Asc(BYTE_H(0x11));
				pCnsc_Lic_T_F->phHdBuf.chSrcDev[1] =  ConvHex2Asc(BYTE_L(0x11));
				pCnsc_Lic_T_F->phHdBuf.chDestDev[0] =  ConvHex2Asc(BYTE_H(0x15));
				pCnsc_Lic_T_F->phHdBuf.chDestDev[1] =  ConvHex2Asc(BYTE_L(0x15));

				pCnsc_Lic_T_F->phHdBuf.chMsgCnt[0] = ConvHex2Asc(BYTE_H(WORD_H(nTimeSendCnt)));
				pCnsc_Lic_T_F->phHdBuf.chMsgCnt[1] = ConvHex2Asc(BYTE_L(WORD_H(nTimeSendCnt)));
				pCnsc_Lic_T_F->phHdBuf.chMsgCnt[2] = ConvHex2Asc(BYTE_H(WORD_L(nTimeSendCnt)));
				pCnsc_Lic_T_F->phHdBuf.chMsgCnt[3] = ConvHex2Asc(BYTE_L(WORD_L(nTimeSendCnt)));

				pCnsc_Lic_T_F->phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(0x10));
				pCnsc_Lic_T_F->phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(0x10));

				pCnsc_Lic_T_F->phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H(WORD_H(sTxDataSize))); // 길이
				pCnsc_Lic_T_F->phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L(WORD_H(sTxDataSize))); // 길이
				pCnsc_Lic_T_F->phHdBuf.chDataLen[2] = ConvHex2Asc(BYTE_H(WORD_L(sTxDataSize))); // 길이
				pCnsc_Lic_T_F->phHdBuf.chDataLen[3] = ConvHex2Asc(BYTE_L(WORD_L(sTxDataSize))); // 길이

				pCnsc_Lic_T_F->sCommand[0] = ConvHex2Asc(BYTE_H(0x08));
				pCnsc_Lic_T_F->sCommand[1] = ConvHex2Asc(BYTE_L(0x08));

				pCnsc_Lic_T_F->sTEXT[0] = ConvHex2Asc(BYTE_H(WORD_H(m_wCarNo)));  //열차 번호 전송
				pCnsc_Lic_T_F->sTEXT[1] = ConvHex2Asc(BYTE_L(WORD_H(m_wCarNo)));  //열차 번호 전송
				pCnsc_Lic_T_F->sTEXT[2] = ConvHex2Asc(BYTE_H(WORD_L(m_wCarNo)));  //열차 번호 전송
				pCnsc_Lic_T_F->sTEXT[3] = ConvHex2Asc(BYTE_L(WORD_L(m_wCarNo)));  //열차 번호 전송

				pCnsc_Lic_T_F->chContactSignalBuf[0] = ConvHex2Asc(BYTE_H(m_btCttSignalA | m_btCttSignalB));
				pCnsc_Lic_T_F->chContactSignalBuf[1] = ConvHex2Asc(BYTE_L(m_btCttSignalA | m_btCttSignalB));

				sBcc = Make1ByteBcc(&pCnsc_Lic_T_F->phHdBuf.chSrcDev[0],(sTxDataSize*2)+14);

				pCnsc_Lic_T_F->chChkSum[0] = ConvHex2Asc(BYTE_H(sBcc));
				pCnsc_Lic_T_F->chChkSum[1] = ConvHex2Asc(BYTE_L(sBcc));

				pCnsc_Lic_T_F->btEot = 0x04; 

				user_CncsTx(&pCnsc_Lic_T_F->phHdBuf.btSoh,(sTxDataSize*2)+18);
			}
		}
	}

	nOldUart2RxOneByteGapDelayTime = m_nUart2RxOneByteGapDelayTime;
}

// CDT별 고장 정보를 삭제하는 부분.
void ClearFltBlkInfo()
{
	memset(&m_tFaultInfo, 0x00, sizeof(m_tFaultInfo));			// 고장 정보 삭제.
}

// CDT별 고장 정보의 시작 위치를 지정.
void SetFltBlkStPos(char chCarKind, int nStPosi)
{
	PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);

	if(pInfo != NULL) 
		pInfo->nStPosi = nStPosi;								// 고장 시작 위치를 저장.
}

// CDT별 고장 정보를 관리하는 부분.
void SetFltBlkEdInfo(char chCarKind, int nEndPosi, int nFltTCnt)
{
	PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);

	if(pInfo != NULL) 
	{
		pInfo->nTCnt = nFltTCnt;									// 고장 전체 갯수를 기록.
		pInfo->nEdPosi = nEndPosi;									// 고장 마지막 위치를 저장.
	}
}

// CDT 고장 정보를 돌려주는 부분.
PFAULT_INFO GetFltBlkInfo(char chCarKind)
{
	int nIdx = chCarKind - 'A';

	if(nIdx < eCDT_MAXIMUM)
		return &m_tFaultInfo[nIdx];

	return NULL;
}

// CDT 고장 정보의  시작위치를 돌려주는 부분.
int GetFltBlkStPos(char chCarKind)
{
	int nStPos = -1;
	PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);

	if(pInfo != NULL) 
		nStPos = pInfo->nStPosi;

	return nStPos;
}

int d_LicTxEndCnt = 0;

void user_FaultDataTx(UCHAR *pTxBuf,UCHAR nLen,UCHAR nEndFlag,int nFltIdx)
{
	UCHAR sTempData = 0;
	PLIC_CNCS_HD pLic_Cncs;
	UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;

	pLic_Cncs =(LIC_CNCS_HD *) pTxBuf;

	pLic_Cncs->phHdBuf.btSoh = 0x01;
	pLic_Cncs->phHdBuf.chSrcDev[0] =  ConvHex2Asc(BYTE_H(0x11));
	pLic_Cncs->phHdBuf.chSrcDev[1] =  ConvHex2Asc(BYTE_L(0x11));
	pLic_Cncs->phHdBuf.chDestDev[0] =  ConvHex2Asc(BYTE_H(0x15));
	pLic_Cncs->phHdBuf.chDestDev[1] =  ConvHex2Asc(BYTE_L(0x15));

	// 고장 인덱스를 신규로 생성(Y.J 수정)
	if(!nFltIdx) nFltIdx = m_nFaultCnt;

	pLic_Cncs->phHdBuf.chMsgCnt[0] = ConvHex2Asc(BYTE_H(WORD_H(nFltIdx)));
	pLic_Cncs->phHdBuf.chMsgCnt[1] = ConvHex2Asc(BYTE_L(WORD_H(nFltIdx)));
	pLic_Cncs->phHdBuf.chMsgCnt[2] = ConvHex2Asc(BYTE_H(WORD_L(nFltIdx)));
	pLic_Cncs->phHdBuf.chMsgCnt[3] = ConvHex2Asc(BYTE_L(WORD_L(nFltIdx)));

	//pLic_Cncs->phHdBuf.chMsgCnt[0] = ConvHex2Asc(BYTE_H(WORD_H(m_nFaultCnt)));
	//pLic_Cncs->phHdBuf.chMsgCnt[1] = ConvHex2Asc(BYTE_L(WORD_H(m_nFaultCnt)));
	//pLic_Cncs->phHdBuf.chMsgCnt[2] = ConvHex2Asc(BYTE_H(WORD_L(m_nFaultCnt)));
	//pLic_Cncs->phHdBuf.chMsgCnt[3] = ConvHex2Asc(BYTE_L(WORD_L(m_nFaultCnt)));

	pLic_Cncs->phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(0x10));
	pLic_Cncs->phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(0x10));

	pLic_Cncs->phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H(WORD_H(nLen)));
	pLic_Cncs->phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L(WORD_H(nLen)));
	pLic_Cncs->phHdBuf.chDataLen[2] = ConvHex2Asc(BYTE_H(WORD_L(nLen)));
	pLic_Cncs->phHdBuf.chDataLen[3] = ConvHex2Asc(BYTE_L(WORD_L(nLen)));

	if(nEndFlag)
	{
		pLic_Cncs->sCommand[0] = ConvHex2Asc(BYTE_H(0x06));//고장 정보 수신 끝.
		pLic_Cncs->sCommand[1] = ConvHex2Asc(BYTE_L(0x06));//고장 정보 수신 끝.

		d_LicTxEndCnt++;
	}
	else
	{
		pLic_Cncs->sCommand[0] = ConvHex2Asc(BYTE_H(0x04));//고장 정보 수신 중.
		pLic_Cncs->sCommand[1] = ConvHex2Asc(BYTE_L(0x04));//고장 정보 수신 중.
	}

	pLic_Cncs->sCarKind[0] = ConvHex2Asc(BYTE_H(m_chCarKind));
	pLic_Cncs->sCarKind[1] = ConvHex2Asc(BYTE_L(m_chCarKind));

	FunConvHexAsc(&pNvsram[nRecving_Posi],(char *)pLic_Cncs->sTextDataAsc,(nLen-2));

	sTempData = Make1ByteBcc(&pLic_Cncs->phHdBuf.chSrcDev[0],(nLen*2)+14);

	pLic_Cncs->sTextDataAsc[((nLen-2)*2)] = ConvHex2Asc(BYTE_H(sTempData));
	pLic_Cncs->sTextDataAsc[((nLen-2)*2)+1] = ConvHex2Asc(BYTE_L(sTempData));

	pLic_Cncs->sTextDataAsc[((nLen-2)*2)+2] = 0x04;

	m_LIC_CNCS_TX_DelyTime = 0;
}

//*****************************************************************************************
// m_bLnWkFtpEndFlag ON시 Single,Married 구분하여 B고장 정보 요청 할지 결정.
//*****************************************************************************************
int d_BcarRxCnt = 0;
void user_FtpEnd_CarNumFun()
{
	m_bLnWkFtpEndFlag = FALSE;

	if(BYTE_L(m_wCarNo>>8) == 0x07)
	{
		m_LIC_CNCS_Tx_Flag = FALSE; //고장 정보 마지막 블럭 이므로 전송 끝.
		m_nNvsramPos = 0;
		nRecving_Posi = 0;
		m_nLnWkWaySideOnRxOk = 0;
		m_nFaultCnt = 0;
		m_chCarKind = 'A';
		m_nLnWkTxFlag = 0;

	}
	else if(BYTE_L(m_wCarNo>>8) == 0x08)
	{
		if(WORD_L(m_chCarKind) == 'A')
		{
			//aaa_ACarDataPosi = m_nNvsramPos;

			m_nLnWkWaySideOnRxOk = 0;
			m_nFaultCnt = 0;
			m_chCarKind = 'B';

			m_LIC_CNCS_Tx_Flag = FALSE; //고장 정보 마지막 블럭 이므로 전송 끝.

			m_nCDT_FaultDataStFlag = 10;
		}
		else
		{
			d_BcarRxCnt++;
			m_nNvsramPos = 0;
			nRecving_Posi = 0;
			m_nLnWkWaySideOnRxOk = 0;
			m_nFaultCnt = 0;
			m_chCarKind = 'A';
			m_nLnWkTxFlag = 0;

			m_LIC_CNCS_Tx_Flag = FALSE; //고장 정보 마지막 블럭 이므로 전송 끝.
		}
	}
}

//******************************************************************************************
//	LIC <-> PAC(RS485)
//******************************************************************************************
int d_Rx3ch = 0;

int d_RxUnitSt_1 = 0;
UCHAR d_RxUnitStBuf[100];
int d_RxUnitSt_2 = 0;
void user_WithPacRs485Loop()
{
	int i;
	int nRxLen;
	int nCciCnt = 0;
	UCHAR btTmp;
	UCHAR btTmpBuf[10];
	UCHAR btBuf[256];
	static int nRxPos = 0;
	static UCHAR nOldUart3RxOneByteGapDelayTime = 0;
	static UCHAR btRx3chBuf[256];
	PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;

	PPACSDR pPaSdrBuf;
	LICSD lsLicSdBuf;
	PPAC_PAC pPa_PaBuf;

	PGIA_PAC pGi_PaBuf;															// Y.J (2011-03-02 추가.) 

	PCOMMSTATUS_PA pCommStatus;
	PCOMMSTATUS_LIC pCommStatus_Lic; 

	// 수신
	nRxLen = user_PacRx(btBuf,128);
	if(nRxLen)
	{
		if(!m_nUart3RxOneByteGapDelayTime) nRxPos = 0;
		m_nUart3RxOneByteGapDelayTime = 3;
		
		if(nRxPos + nRxLen < 250)
		{
			memcpy(&btRx3chBuf[nRxPos],btBuf,nRxLen);
			nRxPos += nRxLen;
		}
	}
	
	if(nOldUart3RxOneByteGapDelayTime && !m_nUart3RxOneByteGapDelayTime)
	{
		//d_RxUnitSt_1 = sizeof(PAC_PAC);

		if(nRxPos >= 10)
		{
			pPaSdrBuf = (PACSDR *)btRx3chBuf;

			pPa_PaBuf = (PAC_PAC *)btRx3chBuf;

			pGi_PaBuf = (GIA_PAC *)btRx3chBuf;										// Y.J (2011-03-02 추가.) 
			

			//PAC <-> LIC 부분 프로토콜을 분리 한다.
			if(
				WORD_L(pPaSdrBuf->phHdBuf.btSoh) == SOH &&
				WORD_L(pPaSdrBuf->btEot) == EOT &&
				sizeof(PACSDR) == nRxPos &&
				(TWOBYTE_ASC2HEX(pPaSdrBuf->phHdBuf.chDestDev) == LIC_DEV_NO)&&
				!((Make1ByteBcc(&pPaSdrBuf->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOBYTE_ASC2HEX(pPaSdrBuf->chChkSum))))
				)
			{
				d_Rx3ch++;

				mRackDi.n1DATA.BYTE = TWOBYTE_ASC2HEX(pPaSdrBuf->chProtocol.chD0); //CAB 신호를 인식 하기 위해 사용.

				switch(TWOBYTE_ASC2HEX(pPaSdrBuf->phHdBuf.chCmdCode))
				{
				case REQ_CMD: //PAC <-> LIC
					lsLicSdBuf.phHdBuf.btSoh = SOH;
					lsLicSdBuf.phHdBuf.chSrcDev[0] = ConvHex2Asc(BYTE_H(LIC_DEV_NO));
					lsLicSdBuf.phHdBuf.chSrcDev[1] = ConvHex2Asc(BYTE_L(LIC_DEV_NO));
					lsLicSdBuf.phHdBuf.chDestDev[0] = pPaSdrBuf->phHdBuf.chSrcDev[0];
					lsLicSdBuf.phHdBuf.chDestDev[1] = pPaSdrBuf->phHdBuf.chSrcDev[1];
					lsLicSdBuf.phHdBuf.chMsgCnt[0] = pPaSdrBuf->phHdBuf.chMsgCnt[0];
					lsLicSdBuf.phHdBuf.chMsgCnt[1] = pPaSdrBuf->phHdBuf.chMsgCnt[1];
					lsLicSdBuf.phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(RPY_CMD));
					lsLicSdBuf.phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(RPY_CMD));
					lsLicSdBuf.phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H(((sizeof(LICSD)-14)/2)));
					lsLicSdBuf.phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L(((sizeof(LICSD)-14)/2)));

					lsLicSdBuf.chRnum[0] = ConvHex2Asc(BYTE_H(1)); // Router Number
					lsLicSdBuf.chRnum[1] = ConvHex2Asc(BYTE_L(1));

					lsLicSdBuf.chTran[0][0] = pPaSdrBuf->chProtocol.chTran[0][0]; // Train Number
					lsLicSdBuf.chTran[0][1] = pPaSdrBuf->chProtocol.chTran[0][1];
					lsLicSdBuf.chTran[1][0] = pPaSdrBuf->chProtocol.chTran[1][0]; //
					lsLicSdBuf.chTran[1][1] = pPaSdrBuf->chProtocol.chTran[1][1];
					lsLicSdBuf.chTran[2][0] = pPaSdrBuf->chProtocol.chTran[2][0]; //
					lsLicSdBuf.chTran[2][1] = pPaSdrBuf->chProtocol.chTran[2][1];

					lsLicSdBuf.chCarn[0][0] = '0'; // Car Number(-.백자리)
					lsLicSdBuf.chCarn[0][1] = ConvHex2Asc(BYTE_L(WORD_H(m_wCarNo)));
					lsLicSdBuf.chCarn[1][0] = ConvHex2Asc(BYTE_H(m_wCarNo)); // Car Number(십자리,일자리)
					lsLicSdBuf.chCarn[1][1] = ConvHex2Asc(BYTE_L(m_wCarNo));

					lsLicSdBuf.chDoorInfo[0][0] = ConvHex2Asc(BYTE_H(m_btCttSignalA | m_btCttSignalB)); // Door접점신호
					lsLicSdBuf.chDoorInfo[0][1] = ConvHex2Asc(BYTE_L(m_btCttSignalA | m_btCttSignalB));

					// LIC-LON Version
					lsLicSdBuf.chLon_F_Ver[0][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btVerH));
					lsLicSdBuf.chLon_F_Ver[0][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btVerH));
					lsLicSdBuf.chLon_F_Ver[1][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btVerL));
					lsLicSdBuf.chLon_F_Ver[1][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btVerL));

					lsLicSdBuf.chLon_Build_Data[0][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btBuildDateHL));
					lsLicSdBuf.chLon_Build_Data[0][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btBuildDateHL));
					lsLicSdBuf.chLon_Build_Data[1][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btBuildDateLH));
					lsLicSdBuf.chLon_Build_Data[1][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btBuildDateLH));
					lsLicSdBuf.chLon_Build_Data[2][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btBuildDateLL));
					lsLicSdBuf.chLon_Build_Data[2][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btBuildDateLL));

					// LON-MPU Version
					lsLicSdBuf.chMpu_F_Ver[0][0] = ConvHex2Asc(GetFirmwareVersion(1)/1000%10);
					lsLicSdBuf.chMpu_F_Ver[0][1] = ConvHex2Asc(GetFirmwareVersion(1)/100%10);
					lsLicSdBuf.chMpu_F_Ver[1][0] = ConvHex2Asc(GetFirmwareVersion(1)/10%10);
					lsLicSdBuf.chMpu_F_Ver[1][1] = ConvHex2Asc(GetFirmwareVersion(1)%10);

					lsLicSdBuf.chMpu_Build_Data[0][0] = ConvHex2Asc(GetFirmwareVersion(2)/100000%10);
					lsLicSdBuf.chMpu_Build_Data[0][1] = ConvHex2Asc(GetFirmwareVersion(2)/10000%10);
					lsLicSdBuf.chMpu_Build_Data[1][0] = ConvHex2Asc(GetFirmwareVersion(2)/1000%10);
					lsLicSdBuf.chMpu_Build_Data[1][1] = ConvHex2Asc(GetFirmwareVersion(2)/100%10);
					lsLicSdBuf.chMpu_Build_Data[2][0] = ConvHex2Asc(GetFirmwareVersion(2)/10%10);
					lsLicSdBuf.chMpu_Build_Data[2][1] = ConvHex2Asc(GetFirmwareVersion(2)%10);


					btTmp = Make1ByteBcc(&lsLicSdBuf.phHdBuf.chSrcDev[0],sizeof(LICSD)-4);
					lsLicSdBuf.chChkSum[0] = ConvHex2Asc(BYTE_H(btTmp));
					lsLicSdBuf.chChkSum[1] = ConvHex2Asc(BYTE_L(btTmp));
					lsLicSdBuf.btEot = EOT;
					
					memcpy(d_RxUnitStBuf,(UCHAR *)&lsLicSdBuf,sizeof(LICSD));

					user_PacTx((UCHAR *)&lsLicSdBuf,sizeof(LICSD));
				}
			}
			else
			if(WORD_L(pPa_PaBuf->phHdBuf.btSoh) == SOH &&  // PAC <-> PAC 에서 상태 정보를 추출한다.
				    WORD_L(pPa_PaBuf->btEot) == EOT &&
				    sizeof(PAC_PAC) == nRxPos &&
					(TWOBYTE_ASC2HEX(pPa_PaBuf->phHdBuf.chSrcDev) == PAC_DEV_NO) && 
				    (TWOBYTE_ASC2HEX(pPa_PaBuf->phHdBuf.chDestDev) == PAC_BAKDEV_NO) && 
				    !((Make1ByteBcc(&pPa_PaBuf->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOBYTE_ASC2HEX(pPa_PaBuf->chChkSum)))))
			{
					d_RxUnitSt_1++;

					memset(m_btCommSt,0x00,sizeof(m_btCommSt));
					FunConvAscHex((char *)pPa_PaBuf->chCarInfo,btTmpBuf,16);

					pCommStatus = (COMMSTATUS_PA *)btTmpBuf;
					
					pCommStatus_Lic = (COMMSTATUS_LIC *)m_btCommSt;

					pCommStatus_Lic->BYTE_1.n1LIC = pCommStatus->BYTE_1.n4LIC;
					pCommStatus_Lic->BYTE_1.n2WLR = pCommStatus->BYTE_1.n5WLAN;
					pCommStatus_Lic->BYTE_1.n3GIA = pCommStatus->BYTE_1.n6GPS;
					pCommStatus_Lic->BYTE_1.n4PID = pCommStatus->BYTE_1.n1VTX;
					pCommStatus_Lic->BYTE_1.n5AVL = pCommStatus->BYTE_1.n2CNCS;
					pCommStatus_Lic->BYTE_1.n6PAC2 = pCommStatus->BYTE_1.n3PAC2;
					pCommStatus_Lic->BYTE_1.n7PAC1 = pCommStatus->BYTE_1.n7PAC1;
					pCommStatus_Lic->BYTE_1.n8TRIC1 = (mRackDi.n1DATA.BIT.n6A_CabOn) ? pCommStatus->BYTE_2.n5TRIC1 : 0; //CRA CAB 신호 입력시만 비교.

					pCommStatus_Lic->BYTE_2.n1TRIC2 = (mRackDi.n1DATA.BIT.n7B_CabOn) ? pCommStatus->BYTE_2.n6TRIC2 : 0; //CRB CAB 신호 입력시만 비교.
					pCommStatus_Lic->BYTE_2.n2TMP1 = 0;
					pCommStatus_Lic->BYTE_2.n3TMP2 = 0;
					pCommStatus_Lic->BYTE_2.n4CCP1 = pCommStatus->BYTE_2.n3CCP1;
					pCommStatus_Lic->BYTE_2.n5CCP2 = pCommStatus->BYTE_2.n4CCP2;
					pCommStatus_Lic->BYTE_2.n6PII1 = pCommStatus->BYTE_8.n5PII1;
					pCommStatus_Lic->BYTE_2.n7PII2 = pCommStatus->BYTE_8.n6PII2;
					pCommStatus_Lic->BYTE_2.n8PII3 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 : pCommStatus->BYTE_8.n7PII3;

					pCommStatus_Lic->BYTE_3.n1PII4 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 : pCommStatus->BYTE_8.n8PII4;
					pCommStatus_Lic->BYTE_3.n2FDI1 = pCommStatus->BYTE_4.n7FDI1;
					pCommStatus_Lic->BYTE_3.n3FDI2 = pCommStatus->BYTE_4.n8FDI2;
					pCommStatus_Lic->BYTE_3.n4SDI1 = pCommStatus->BYTE_6.n1SDI1;
					pCommStatus_Lic->BYTE_3.n5SDI2 = pCommStatus->BYTE_6.n2SDI2;
					pCommStatus_Lic->BYTE_3.n6SDI3 = pCommStatus->BYTE_6.n3SDI3;
					pCommStatus_Lic->BYTE_3.n7SDI4 = pCommStatus->BYTE_6.n4SDI4;
					pCommStatus_Lic->BYTE_3.n8SDI5 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_6.n5SDI5;

					pCommStatus_Lic->BYTE_4.n1SDI6 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_6.n6SDI6;
					pCommStatus_Lic->BYTE_4.n2SDI7 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_6.n7SDI7;
					pCommStatus_Lic->BYTE_4.n3SDI8 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_6.n8SDI8;
					pCommStatus_Lic->BYTE_4.n4PID1_1 = pCommStatus->BYTE_7.n1PID1_1;
					pCommStatus_Lic->BYTE_4.n5PID1_2 = pCommStatus->BYTE_7.n2PID1_2;
					pCommStatus_Lic->BYTE_4.n6PID1_3 = pCommStatus->BYTE_7.n3PID1_3;
					pCommStatus_Lic->BYTE_4.n7PID1_4 = pCommStatus->BYTE_7.n4PID1_4;
					pCommStatus_Lic->BYTE_4.n8PID1_5 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_7.n5PID1_5;

					pCommStatus_Lic->BYTE_5.n1PID1_6 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_7.n6PID1_6;
					pCommStatus_Lic->BYTE_5.n2PID1_7 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_7.n7PID1_7;
					pCommStatus_Lic->BYTE_5.n3PID1_8 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_7.n8PID1_8;
					pCommStatus_Lic->BYTE_5.n4PID2_1 = pCommStatus->BYTE_8.n1PID2_1;
					pCommStatus_Lic->BYTE_5.n5PID2_2 = pCommStatus->BYTE_8.n2PID2_2;
					pCommStatus_Lic->BYTE_5.n6PID2_3 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_8.n3PID2_3;
					pCommStatus_Lic->BYTE_5.n7PID2_4 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_8.n4PID2_4;
					pCommStatus_Lic->BYTE_5.n8DPO1 = pCommStatus->BYTE_2.n1DPO1;

					pCommStatus_Lic->BYTE_6.n1DPO2 = pCommStatus->BYTE_2.n2DPO2;
					pCommStatus_Lic->BYTE_6.n2CPO1 = pCommStatus->BYTE_3.n3CPO1;
					pCommStatus_Lic->BYTE_6.n3CPO2 = pCommStatus->BYTE_3.n4CPO2;
					pCommStatus_Lic->BYTE_6.n4CPO3 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_3.n5CPO3;
					pCommStatus_Lic->BYTE_6.n5CPO4 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_3.n6CPO4;
					pCommStatus_Lic->BYTE_6.n6PEI1 = pCommStatus->BYTE_4.n1PEI1;
					pCommStatus_Lic->BYTE_6.n7PEI2 = pCommStatus->BYTE_4.n2PEI2;
					pCommStatus_Lic->BYTE_6.n8PEI3 = pCommStatus->BYTE_4.n3PEI3;

					pCommStatus_Lic->BYTE_7.n1PEI4 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_4.n4PEI4;
					pCommStatus_Lic->BYTE_7.n2PEI5 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_4.n5PEI5;
					pCommStatus_Lic->BYTE_7.n3PEI6 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00 :pCommStatus->BYTE_4.n6PEI6;
					pCommStatus_Lic->BYTE_7.n4sp = 0x00;
					pCommStatus_Lic->BYTE_7.n5sp = 0x00;
					pCommStatus_Lic->BYTE_7.n6sp = 0x00;
					pCommStatus_Lic->BYTE_7.n7sp = 0x00;
					pCommStatus_Lic->BYTE_7.n8sp = 0x00;
			}
			else	// Y.J (2011-03-02 추가.) 
			if(WORD_L(pGi_PaBuf->phHdBuf.btSoh) == SOH &&  // PAC <-> PAC 에서 상태 정보를 추출한다.
				    WORD_L(pGi_PaBuf->btEot) == EOT &&
				    sizeof(GIA_PAC) == nRxPos  &&
					(TWOBYTE_ASC2HEX(pGi_PaBuf->phHdBuf.chSrcDev) == GIA_DEV_NO) && 
				    ((TWOBYTE_ASC2HEX(pGi_PaBuf->phHdBuf.chDestDev) == PAC_DEV_NO) || (TWOBYTE_ASC2HEX(pGi_PaBuf->phHdBuf.chDestDev) == PAC_BAKDEV_NO))  &&
				    !((Make1ByteBcc(&pGi_PaBuf->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOBYTE_ASC2HEX(pGi_PaBuf->chChkSum)))))
			{
				// Y.J (2011-03-02 추가.)
				// GIA->PAC의 통신중 GIA 시간정보를 추출하는 부분.(시간 정보 계산을 CNCS에서 GIA로 이동시킴.)
				// 시간정보를 구하는 부분.
				m_tmCurTime.second	= TWOBYTE_ASC2DEC(pGi_PaBuf->sSecond);
				m_tmCurTime.minute	= TWOBYTE_ASC2DEC(pGi_PaBuf->sMinute);
				m_tmCurTime.hour	= TWOBYTE_ASC2DEC(pGi_PaBuf->sHour  );
				m_tmCurTime.day		= TWOBYTE_ASC2DEC(pGi_PaBuf->sDay   );
				m_tmCurTime.month	= TWOBYTE_ASC2DEC(pGi_PaBuf->sMonth );
				m_tmCurTime.year	= TWOBYTE_ASC2DEC(pGi_PaBuf->sYear  );

				memset(&m_tmUtcTime, 0x00, sizeof(DATE_TIME_TYPE));
				if(m_LIC_GIA_TimSetFlag = GetLocalTimeToUTC(&m_tmCurTime, -5, &m_tmUtcTime))
				{
					m_tmUtcTime.year	= ConvDec2Hex(m_tmUtcTime.year	);
					m_tmUtcTime.month	= ConvDec2Hex(m_tmUtcTime.month );
					m_tmUtcTime.day		= ConvDec2Hex(m_tmUtcTime.day	);
					m_tmUtcTime.hour	= ConvDec2Hex(m_tmUtcTime.hour	);
					m_tmUtcTime.minute	= ConvDec2Hex(m_tmUtcTime.minute);
					m_tmUtcTime.second	= ConvDec2Hex(m_tmUtcTime.second);
					

					m_nGiaRxCheck1msTimer = 2000;				
				}

			}
		}
	}

	nOldUart3RxOneByteGapDelayTime = m_nUart3RxOneByteGapDelayTime;
}

//******************************************************************************************
//	UTC 시간을 구하는 부분.
//*****************************************************************************************
BOOL GetLocalTimeToUTC( DATE_TIME_PTR pLocal, int nHour, DATE_TIME_PTR pUTC )
{
	// 시간을 계산하는 부분.
	int nHourT = pLocal->hour - nHour;
	int nDayT = pLocal->day;
	int nLastDays = GetDaysOfMonth( pLocal->month, pLocal->year );													
	int nMonthT = pLocal->month;
	int nYearT = 2000 + pLocal->year;

	// 시간 정보를 구하는 부분.
	if(nHourT < 0 ) {
		nHourT += 24;
		nDayT += -1;
	}
	else if( 24 <= nHourT ) {
		nHourT -= 24;
		nDayT += 1;
	}

	// 일자를 구하는 부분.
	// 시간을 계산하여 일자를 변경해야하는 경우.
	if(nDayT < 1)																										
	{
		nDayT = GetDaysOfMonth( nMonthT, nYearT );
		
		if(--nMonthT < 1)
		{
			nYearT--;
			nMonthT = 12;
		}
	}
	else if(nLastDays < nDayT)
	{
		nDayT = 1;
		
		if(12 < ++nMonthT)
		{
			nYearT++;
			nMonthT = 1;
		}
	}

	// 계간된 시분초 정보를 UTC 시간으로 이동시키는 부분.
	pUTC->second = pLocal->second;
	pUTC->minute = pLocal->minute;
	pUTC->hour = nHourT;
	pUTC->day = nDayT;
	pUTC->month = nMonthT;
	pUTC->year = nYearT - 2000;

	return ( ( 10 <= pUTC->year ) &&																		// 10년 이상
				(( 1 <= pUTC->month ) && ( pUTC->month <= 12 )) &&											// 월
				(( 1 <= pUTC->day ) && ( pUTC->day <= GetDaysOfMonth(nMonthT, nYearT) )) && 				// 일
				(( 0 <= pUTC->hour ) && ( pUTC->hour < 24 )) && 											// 시
				(( 0 <= pUTC->minute) && ( pUTC->minute < 60 )) &&											// 분
				(( 0 <= pUTC->second) && ( pUTC->second < 60 )) );											// 초
}

//******************************************************************************************
//	달의 마지막 일자 정보를 구하는 부분.
//******************************************************************************************
int IsLeapYear( int nYear ) 								// 윤년 정보를 구하는 부분.
{
  if( nYear % 400 == 0 )
   return 1;

  if( nYear % 100 == 0 )
   return 0;

  if( nYear % 4 == 0 )
   return 1;

  return 0;
}

int GetDaysOfMonth( int nMonth, int nYear ) 				// 달의 마지막 일자를 구하는 부분.
{
	/* 달의 일수를 저장하는 변수 */
	int nDays = 0;

	switch( nMonth )
	{
	case 1 :												// 31을 마지막 날달
	case 3 :
	case 5 :
	case 7 :
	case 8 :
	case 10 :
	case 12 :		
		nDays = 31;
		break;
	case 2 :
		nDays = 28;
		if( IsLeapYear( nYear ) )							// 윤년을 계산하여, 윤달일 경우, +1
			nDays += 1;
		break;
	case 4 :												// 30을 마지막 날달
	case 6 :
	case 9 :
	case 11 : 
		nDays = 30;
		break;
	}

	return nDays;
}


//******************************************************************************************
//	1ms Loop
//******************************************************************************************
void user_1msLoop()
{
	m_nTxDbg1msTimer++;
	m_nUserDebug1msTimer++;
	m_nSingleOrMarriedCarUpdate1msTimer++;

	if(!(m_nUserDebug1msTimer%100)) //A를 수집 하고 1초 있다가 B를 수집 하기 위하여 시간을 딜레이 한다.
	{
		if(m_nCDT_FaultDataStFlag) m_nCDT_FaultDataStFlag--;
	}
	
	if(m_nUart1RxOneByteGapDelayTime) m_nUart1RxOneByteGapDelayTime--;
	if(m_nUart2RxOneByteGapDelayTime) m_nUart2RxOneByteGapDelayTime--;
	if(m_nUart3RxOneByteGapDelayTime) m_nUart3RxOneByteGapDelayTime--;
		
	if(m_nGiaRxCheck1msTimer) m_nGiaRxCheck1msTimer--;
}

