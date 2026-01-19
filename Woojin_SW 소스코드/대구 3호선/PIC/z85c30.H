

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

/*
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
*/
#define SCC1A_RTS_ON	{(*(UCHAR *)0x811000) = 1;} 
#define SCC1A_RTS_OFF	{(*(UCHAR *)0x812000) = 0;}


#define SCC2A_RTS_ON	{(*(UCHAR *)0x813000) = 1;}
#define SCC2A_RTS_OFF	{(*(UCHAR *)0x819000) = 0;}

#define SCC2B_RTS_ON	{(*(UCHAR *)0x815000) = 1;}
#define SCC2B_RTS_OFF	{(*(UCHAR *)0x816000) = 0;}


#define SCC3B_RTS_ON	{(*(UCHAR *)0x817000) = 1;}
#define SCC3B_RTS_OFF	{(*(UCHAR *)0x818000) = 0;}


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
	struct 
	{                                          
		WORD B0_TR:1;    	    /*    시험개시 요구*/
		WORD B1 :1;           	/*    Bit 1     */
		WORD B2 :1;           	/*    Bit 2     */
		WORD B3 :1;           	/*    Bit 3     */
		WORD B4:1;           	/*    Bit 4     */
		WORD B5:1;           	/*    Bit 5     */
		WORD B6:1;           	/*    Bit 6     */
		WORD B7_SR:1;          /*    시험실행 요구*/
	}TEST_BIT;

	UCHAR nTextCode;            // 시험 코드
	
}TEST_FUN;

typedef struct
{
	struct 
	{                                          
		WORD B0:1;    	        /*     Bit 0    */
		WORD B1 :1;           	/*    Bit 1     */
		WORD B2 :1;           	/*    Bit 2     */
		WORD B3 :1;           	/*    Bit 3     */
		WORD B4:1;           	/*    Bit 4     */
		WORD B5:1;           	/*    Bit 5     */
		WORD B6:1;           	/*    Bit 6     */
		WORD B7_ON:1;          /*    ON        */
	}TEST_BIT;

	UCHAR nTextCode;            // 시험 코드

}EMERGENCY_DISPLY;

typedef struct
{

	UCHAR nTrainSpeed;            // 차량 속도
	struct 
	{                                          
		WORD nStopSation1:1;    	/*    다음역 정차번선    */
		WORD nStopSation2 :1;     	/*    다음역 정차번선     */
		WORD nStopSation3 :1;     	/*    다음역 정차번선     */
		WORD nStopSation4 :1;     	/*    다음역 정차번선     */
		WORD nDoorOpenA:1;        	/*    도어열림 지령     */
		WORD nDoorOpenB:1;        	/*    도어열림 지령     */
		WORD nMasterMC1:1;        	/*    진행방향     */
		WORD nMasterMC2:1;         /*    진행방향     */
	}TEST_BIT;

}TRAIN_INFO;

typedef struct
{
	UCHAR nYY;
	UCHAR nMM;
	UCHAR nDD;
	UCHAR nhh;
	UCHAR nmm;
	UCHAR nss;
}TIME;

///////////////////////////////////////////////////////////////
typedef struct	//TMS에서 받은 DATA
{
	UCHAR nSTX;
	UCHAR nComandCode;	//0x13;
	TIME nBCDTime;
	struct 
	{                                          
		WORD TSETL:1;    	    /*    Bit 0     */
		WORD B1 :1;           	/*    Bit 1     */
		WORD B2 :1;           	/*    Bit 2     */
		WORD B3 :1;           	/*    Bit 3     */
		WORD B4:1;           	/*    Bit 4     */
		WORD B5:1;           	/*    Bit 5     */
		WORD B6:1;           	/*    Bit 6     */
		WORD B7:1;           	/*    Bit 7     */
	}nS_TsetBit ;

	struct 
	{                                          
		WORD MC1_PiscF:1;    	/*    MC1 고장  */
		WORD MC2_PiscF:1;		/*    MC2 고장  */
		WORD B2 :1;           	/*    Bit 2     */
		WORD B3 :1;           	/*    Bit 3     */
		WORD B4:1;           	/*    Bit 4     */
		WORD B5:1;           	/*    Bit 5     */
		WORD B6:1;           	/*    Bit 6     */
		WORD B7:1;           	/*    Bit 7     */
	}nS_PiscFault ;

	UCHAR nSP09;

	TEST_FUN nTest10_11;

	UCHAR nSp12;
	UCHAR nSp13;

	struct 
	{                                          
		WORD nrelief:1;    		/*    구원 운전중*/
		WORD nStartTest :1;		/*    출고 점검중*/
		WORD B2 :1;           	/*    Bit 2     */
		WORD B3 :1;           	/*    Bit 3     */
		WORD B4:1;           	/*    Bit 4     */
		WORD B5:1;           	/*    Bit 5     */
		WORD B6:1;           	/*    Bit 6     */
		WORD B7:1;           	/*    Bit 7     */
	}nS_TrainInfo14;

	EMERGENCY_DISPLY nEmergency15_16;

	union{
		WORD UCHAR;
		struct 
		{                                          
			WORD nCall:1;    	    /*    첨승원 호출		*/
			WORD nOverload :1;		/*    과하중			*/
			WORD nFire :1;          /*    화재			*/
			WORD nSprinkler :1;     /*    스프링 쿨러		*/
			WORD nEmergency_Brk:1;  /*    비상 브레이크	*/
			WORD nTest_7:1;     /*    TEST 표시		*/
			WORD B6:1;           	/*    Bit 6			*/
			WORD B7:1;           	/*    Bit 7			*/
		}nS_DIS_ORDER_BIT;
	}nS_DIS_ORDER_UCHAR;

	TRAIN_INFO nTrain_Info18_19;

	UCHAR nTrainKind; // 열차 종별.

	UCHAR nCarTrainNum[2];	//열차 번호

	UCHAR nDestCode[2];//종착역

	UCHAR nNowCode[2];	//현재역
	UCHAR nDistance[2]; //이동 거리.
	UCHAR nNextCode[2];//다음역


	UCHAR nETX;
	UCHAR nBCC[2];

}TMS_RX_DATA,*PTMS_RX_DATA;

/////////////////////TCMS TX DATA//////////////////////////////////////////
typedef struct	//TMS에서 받은 DATA
{
	UCHAR nSTX;
	UCHAR nComandCode;	//0x13;
	//TIME nBCDTime;
	UCHAR nSp01;
	UCHAR nSp02;

	EMERGENCY_DISPLY nEmergency03_04;


	union{
		WORD UCHAR;
		struct 
		{                                          
			WORD nCall:1;    	    /*    첨승원 호출		*/
			WORD nOverload :1;		/*    과하중			*/
			WORD nFire :1;          /*    화재			*/
			WORD nSprinkler :1;     /*    스프링 쿨러		*/
			WORD nEmergency_Brk:1;  /*    비상 브레이크	*/
			WORD B5:1;     /*    TEST 표시		*/
			WORD B6:1;           	/*    Bit 6			*/
			WORD nTest_7:1;           	/*    Bit 7			*/
		}nS_DIS_ORDER_BIT;
	}nS_DIS_ORDER_UCHAR;

	UCHAR nSp06;

	TEST_FUN nTest07_08; //기기시험 기능.

	UCHAR nSp09;

	UCHAR nTest_State; //시험 실행 상태 0x01 = 시험중 / 0x02 = 시험 완료. 

	union{
		WORD UCHAR;
		struct 
		{                                          
			WORD nTestOk0 :1;    	    /*    첨승원 호출		*/
			WORD nTestOk1 :1;		/*    과하중			*/
			WORD nTestOk2 :1;          /*    화재			*/
			WORD nTestOk3 :1;     /*    스프링 쿨러		*/
			WORD nTestOk4:1;  /*    비상 브레이크	*/
			WORD nTestOk5:1;     /*    TEST 표시		*/
			WORD nTestOk6:1;           	/*    Bit 6			*/
			WORD nTestOk7:1;           	/*    Bit 7			*/
		}nS_TEST_RESULT_BIT;
	}nS_TEST_RESULT;

	UCHAR nSp12;
	UCHAR nSp13;
	UCHAR nSp14;
	UCHAR nSp15;
	UCHAR nSp16;
	UCHAR nSp17;
	UCHAR nSp18;
	UCHAR nSp19;

	union{
		WORD UCHAR;
		struct 
		{                                          
			WORD selfBit:1;    	/*    MC1 고장  */
			WORD B1:1;		/*    MC2 고장  */
			WORD B2 :1;           	/*    Bit 2     */
			WORD B3 :1;           	/*    Bit 3     */
			WORD B4:1;           	/*    Bit 4     */
			WORD B5:1;           	/*    Bit 5     */
			WORD B6:1;           	/*    Bit 6     */
			WORD MasterBit:1;           	/*    Bit 7     */
		}nS_Master_Self_BIT ;
	}nS_Master_Self_union;


	struct 
	{                                          
		WORD FID1F:1;    	    /*    Bit 0     */
		WORD FID2F :1;           	/*    Bit 1     */
		WORD B2 :1;           	/*    Bit 2     */
		WORD B3 :1;           	/*    Bit 3     */
		WORD B4:1;           	/*    Bit 4     */
		WORD B5:1;           	/*    Bit 5     */
		WORD B6:1;           	/*    Bit 6     */
		WORD B7:1;           	/*    Bit 7     */
	}nS_FIDSelfBit ;

	struct 
	{                                          
		WORD PID11F:1;    	    /*    Bit 0     */
		WORD PID12F :1;           	/*    Bit 1     */
		WORD PID13F :1;           	/*    Bit 2     */
		WORD B3 :1;           	/*    Bit 3     */
		WORD B4:1;           	/*    Bit 4     */
		WORD B5:1;           	/*    Bit 5     */
		WORD B6:1;           	/*    Bit 6     */
		WORD B7:1;           	/*    Bit 7     */
	}nS_PID1SelfBit ;

	struct 
	{                                          
		WORD PID21F:1;    	    /*    Bit 0     */
		WORD PID22F :1;           	/*    Bit 1     */
		WORD PID23F :1;           	/*    Bit 2     */
		WORD B3 :1;           	/*    Bit 3     */
		WORD B4:1;           	/*    Bit 4     */
		WORD B5:1;           	/*    Bit 5     */
		WORD B6:1;           	/*    Bit 6     */
		WORD B7:1;           	/*    Bit 7     */
	}nS_PID2SelfBit ;

	UCHAR nSp24;
	UCHAR nSp25;
	UCHAR nSp26;
	UCHAR nSp27;
	UCHAR nSp28;
	UCHAR nSp29;

	UCHAR nTrainKind; // 열차 종별.

	UCHAR nCarTrainNum[2];	//열차 번호
	UCHAR nDestCode[2];//종착역

	UCHAR nNowCode[2];	//현재역
	UCHAR nDistance[2]; //이동 거리.
	UCHAR nNextCode[2];//다음역

	UCHAR nETX;
	UCHAR nBCC[2];

}TMS_TX_DATA,*PTMS_TX_DATA;





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