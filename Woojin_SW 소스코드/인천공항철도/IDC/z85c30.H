

#ifndef _z85c30_H_
#define _z85c30_H_

/******************************************************************
	define
*******************************************************************/
//Z85C30 1
#define SCC1_A_C (*(UCHAR *)0x822002)
#define SCC1_A_D (*(UCHAR *)0x822003)

#define SCC1_B_C (*(UCHAR *)0x822000)
#define SCC1_B_D (*(UCHAR *)0x822001)
//Z85C30 2
#define SCC2_A_C (*(UCHAR *)0x823002)
#define SCC2_A_D (*(UCHAR *)0x823003)

#define SCC2_B_C (*(UCHAR *)0x823000)
#define SCC2_B_D (*(UCHAR *)0x823001)

//Z85C30 3
#define SCC3_A_C (*(UCHAR *)0x824002)
#define SCC3_A_D (*(UCHAR *)0x824003)

#define SCC3_B_C (*(UCHAR *)0x824000)
#define SCC3_B_D (*(UCHAR *)0x824001)

#define SCC1A_RTS_ON	{SCC1_A_C = 5; SCC1_A_C = 0x6b;} ////동기-비동기 
#define SCC1A_RTS_OFF	{SCC1_A_C = 5; SCC1_A_C = 0x69;} ////동기-비동기

#define SCC1B_RTS_ON	{SCC1_B_C = 5; SCC1_B_C = 0x6a;} //비동기
#define SCC1B_RTS_OFF	{SCC1_B_C = 5; SCC1_B_C = 0x68;} //비동기

#define SCC2A_RTS_ON	{SCC2_A_C = 5; SCC2_A_C = 0x6a;} //비동기 
#define SCC2A_RTS_OFF	{SCC2_A_C = 5; SCC2_A_C = 0x68;} //비동기 
#define SCC2B_RTS_ON	{SCC2_B_C = 5; SCC2_B_C = 0x6a;} //비동기 
#define SCC2B_RTS_OFF	{SCC2_B_C = 5; SCC2_B_C = 0x68;} //비동기 

#define SCC3A_RTS_ON	{SCC3_A_C = 5; SCC3_A_C = 0x6a;} //비동기 
#define SCC3A_RTS_OFF	{SCC3_A_C = 5; SCC3_A_C = 0x68;} //비동기 
#define SCC3B_RTS_ON	{SCC3_B_C = 5; SCC3_B_C = 0x6a;} //비동기 
#define SCC3B_RTS_OFF	{SCC3_B_C = 5; SCC3_B_C = 0x68;} //비동기 

#define SCC_A_CHANNEL 0  
#define SCC_B_CHANNEL 1  

#define SCC_85C30A_CMD1_WR(CTRL,DAT) {SCC1_A_C = CTRL; SCC1_A_C = DAT;}
#define SCC_85C30B_CMD1_WR(CTRL,DAT) {SCC1_B_C = CTRL; SCC1_B_C = DAT;}

#define SCC_85C30A_CMD1_RD(CTRL,DAT) {SCC1_A_C = CTRL; DAT = SCC1_A_C;}
#define SCC_85C30B_CMD1_RD(CTRL,DAT) {SCC1_B_C = CTRL; DAT = SCC1_B_C;}

#define SCC_85C30A_CMD2_WR(CTRL,DAT) {SCC2_A_C = CTRL; SCC2_A_C = DAT;}
#define SCC_85C30B_CMD2_WR(CTRL,DAT) {SCC2_B_C = CTRL; SCC2_B_C = DAT;}

#define SCC_85C30A_CMD2_RD(CTRL,DAT) {SCC2_A_C = CTRL; DAT = SCC2_A_C;}
#define SCC_85C30B_CMD2_RD(CTRL,DAT) {SCC2_B_C = CTRL; DAT = SCC2_B_C;}

#define SCC_85C30A_CMD3_WR(CTRL,DAT) {SCC3_A_C = CTRL; SCC3_A_C = DAT;}
#define SCC_85C30B_CMD3_WR(CTRL,DAT) {SCC3_B_C = CTRL; SCC3_B_C = DAT;}

#define SCC_85C30A_CMD3_RD(CTRL,DAT) {SCC3_A_C = CTRL; DAT = SCC3_A_C;}
#define SCC_85C30B_CMD3_RD(CTRL,DAT) {SCC3_B_C = CTRL; DAT = SCC3_B_C;}

/*************************************************
	UART 를 설정한다. (PC16550-PLCC)
**************************************************/
#define UART_BASE 	0x111000
#define RXD		(*((WORD *)UART_BASE+0))
#define TXD		(*((WORD *)UART_BASE+0))
#define DLL		(*((WORD *)UART_BASE+0))
#define DLM		(*((WORD *)UART_BASE+1))
#define IER		(*((WORD *)UART_BASE+1))
#define IIR		(*((WORD *)UART_BASE+2))
#define FCR		(*((WORD *)UART_BASE+2))
#define LCR		(*((WORD *)UART_BASE+3))
#define MCR		(*((WORD *)UART_BASE+4))
#define LSR		(*((WORD *)UART_BASE+5))
#define MSR_U		(*((WORD *)UART_BASE+6))
#define SCR		(*((WORD *)UART_BASE+7))


#define STX_AA 0xAA
#define STX_BB 0xBB
#define STX_CC 0xCC

#define SCC_BUFF_SIZE 550
#define RX_TIME_OUT 10
/******************************************************************
	함수의 정의
*******************************************************************/
typedef struct {
	union{
		WORD UCHAR;
		struct 
		{                                          
	       	WORD B0:1;    	        /*    Bit 0     */
			WORD B1:1;           	/*    Bit 1     */
			WORD B2:1;           	/*    Bit 2     */
			WORD B3:1;           	/*    Bit 3     */
	        WORD B4:1;           	/*    Bit 4     */
	        WORD B5:1;           	/*    Bit 5     */
	        WORD B6:1;           	/*    Bit 6     */
	        WORD B7:1;           	/*    Bit 7     */
		} BIT;
	} DR;	
} SD;
/******************************************************************
 전송 프로토콜 구성.
*******************************************************************/
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
	UCHAR nDeStCode;
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
	UCHAR nSp3;
	UCHAR nNow;
	UCHAR nNext;
	UCHAR nDeSt;
	UCHAR nStartSt;
	UCHAR nDist_H;
	UCHAR nDist_L;
}SCC_TEST_RND;

typedef struct
{
	SCC_HEAD nHead;
	SCC_TEST_RND nTest;
	UCHAR Etx;
	UCHAR CRC_H;
	UCHAR CRC_L;
}SCC_RNDTX_DATA,*PSCC_RNDTX_DATA ;


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
}SCC_PIB_TEXT,*PSCC_PIB_TEXT ;

/******************************************************************
	TX_RX 프로토콜
*******************************************************************/
typedef struct
{
	UCHAR nYY;
	UCHAR nMM;
	UCHAR nDD;
	UCHAR nhh;
	UCHAR nmm;
	UCHAR nss;
}TIME;
typedef struct	//TMS에서 받은 DATA
{
	UCHAR nLAddres;	//0x60;
	UCHAR nHAddres;	//0x20;
	UCHAR nContro;	//0x13;
	UCHAR nDataDefin;	//0x20;
	UCHAR nStCode; //TCMS 상태 코트
	UCHAR nNowCode;	//현재역
	UCHAR nNextCode;//다음역
	UCHAR nDestCode;//종착역

	struct 
	{                                          
       	WORD nDoor1 :1;    	        /*    Bit 0  오른쪽   */
		WORD nDoor2 :1;           	/*    Bit 1   왼쪽  */
		WORD nDcw :1;           	/*    Bit 2     */
		WORD nNextSt :1;           	/*    Bit 3     */
        WORD nExpress:1;           	/*    Bit 4     */
        WORD nNorMal:1;           	/*    Bit 5     */
        WORD B6:1;           	/*    Bit 6     */
        WORD B7:1;           	/*    Bit 7     */
	} BIT;

	UCHAR nCarTrainNum[2];	//열차 번호
	UCHAR nSp;
	TIME nTime;
	UCHAR nSp_2;

}TMS_RX_DATA,*PTMS_RX_DATA;



/******************************************************************
	TX_RX 프로토콜
*******************************************************************/
typedef struct
{
	UCHAR TxPos;
	UCHAR TxLen;
	UCHAR TxOK;
	UCHAR TX_RTS_OFF_TIME;
	UCHAR *TxBuffer;
	UCHAR RxOK;
	UCHAR RxOKCnt;
	UCHAR RxPos;
	UCHAR RxDlyTm;
	UCHAR RxLen;
	UCHAR RX_RTS_OFF_TIME;
	UCHAR *RxBuffer;
	UCHAR RxTimeOut;
} SCC_INIT_SHAPE;

/******************************************************************
	함수의 정의
*******************************************************************/
void SCC_Initial();
void SCC1_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel);
void SCC2_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel);
void SCC3_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel);
WORD cal_CRC16(int no,unsigned char *dat);
UCHAR IsBCCOK(UCHAR *pDat,int nLen);
void MakeBcc(UCHAR *pDat,int nLen);
void SCC1_AB();
void SCC2_AB();
void SCC3_AB();
void Delay_SCC1_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDlyTm);
void Delay_SCC2_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDlyTm);
void Delay_SCC3_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDlyTm);
void Scc1msTime();
void Scc100msTime();

void SCC_TX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nDeStCode,UCHAR nDownSt,UCHAR nErBlk,UCHAR nDataBlk1,UCHAR nDataBlk2,UCHAR nLen);
void SCC_TX_PROTOCOL_SELFTEST(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nDeStCode,UCHAR nLen);
void SCC_TX_PIB_TEXT(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nLen,UCHAR *pText);
void SCC_TX_ADDSET_TEXT(UCHAR *pTxData, UCHAR nCarNum);
void SCC_Tx_DownLoad_TEXT(UCHAR *pTxData,UCHAR *pDownData,UCHAR nUnitCod,UCHAR nReNum);
void SCC_RNDTX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR nCode,UCHAR nNowSt,UCHAR nNextSt,UCHAR nDeSt,UCHAR nStartSt,UCHAR nDist,UCHAR nLen);



#endif