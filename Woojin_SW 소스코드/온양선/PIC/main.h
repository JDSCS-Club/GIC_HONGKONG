#ifndef _MAIN_H_
#define _MAIN_H_

#define DUMMY_ACCESS *(UCHAR *)0xF00000 = *(UCHAR *)0xF00000;

#define BOOT2INT ((*(int *)0x100000) = 0)

#define DICE (*(UCHAR *)0x240000)	//디지탈 입력


#define WDI_ACT (*(UCHAR *)0x180000 = 0x00)

#define RUN_LED_ON 0
#define RUN_LED_OFF 1
#define RUN_LED (*(UCHAR *)0x280000)

#define RUN_LEDPRO(x) {if((x)) {RUN_LED = RUN_LED & 0x02;} else {RUN_LED = RUN_LED | 0x01;}}

#define DO0 (*(UCHAR *)0x500000)
#define DO1 (*(UCHAR *)0x540000)

#define INT_ST_BASE 0x200000
#define INT0_ST ((*(UCHAR *)INT_ST_BASE)&0x01)
#define INT1_ST (((*(UCHAR *)INT_ST_BASE)>>1)&0x01)
#define PI_ST (*(UCHAR *)0x2C0000)
#define XR16L788_INT_ST INT1_ST

#define SCMBD_SAF82532_RTSA_CNNT 	0x02 // SAF82532의 RTS를 RS485의 RTS에 연결한다.(자동제어가능)
#define SCMBD_SAF82532_RTSB_CNNT 	0x04 // SAF82532의 RTS를 RS485의 RTS에 연결한다.(자동제어가능)

#define STX 	0x02 // 시작 비트
#define ETX 	0x03 // 종료 비트

//RS485의 RTS신호제어
#define RS485_TX_ACHL_ENABLE	// RS485의 Tx Enable
#define RS485_TX_BCHL_ENABLE	// RS485의 Tx Enable
//
#define RS485_TX_ACHL_DISABLE	// RS485의 Tx Disable
#define RS485_TX_BCHL_DISABLE	// RS485의 Tx Disable

#define ROM_VER	60	//10 -> 15 -> 17
#define ROM_VER_S "IDC60"

void c_int01(void);
void c_int02(void);
void c_int10(void);
void DspInit(void);
int DIST(void);

void Saf82532_GetRecv_ACH();
void Saf82532_GetRecv_BCH();
void Pa_Send_Data();

void saf82532_Send_BCH();

void Xr1677_RX_Pro_A();
void Xr1677_RX_Pro_B();
void Xr1677_RX_Pro_C();
void Xr1677_RX_Pro_D();

void Xr1677_Rx_Pro();
void Xr1677_Tx_Pro();

int ConvAsc2Dec(char nCh);
char ConvHex2Asc(int btCh);
void Dec2Str(char *pBuf,int nDat);
void StrCat(char *dest, const char *src);
int StrLen(const char *string);
void StrCpy(char *dest, const char *src);
int StrCmp(const char *string1, const char *string2);
void Port(int nKind,int nHl);
void Delay_Funtion(int nRX_OK_FLAG);
void user_DebugPrint(char *pTxBuf);
//int IsBCCOk(UCHAR *pDat,int nLen);
int Delay(int nCnt);

	// SCM HTX,HRX LED제어
#define SCM_HDLC_LED				(*(UCHAR *)0xE30000)
#define SCM_HDLC_TX1(x) SCM_HDLC_LED = (x) ? SCM_HDLC_LED & 0xE : SCM_HDLC_LED | 0x1
#define SCM_HDLC_TX2(x) SCM_HDLC_LED = (x) ? SCM_HDLC_LED & 0xD : SCM_HDLC_LED | 0x2
#define SCM_HDLC_RX1(x) SCM_HDLC_LED = (x) ? SCM_HDLC_LED & 0xB : SCM_HDLC_LED | 0x4
#define SCM_HDLC_RX2(x) SCM_HDLC_LED = (x) ? SCM_HDLC_LED & 0x7 : SCM_HDLC_LED | 0x8

#endif