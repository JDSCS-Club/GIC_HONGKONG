#include "def.h"

#ifndef _DISPLAY_H_
#define _DISPLAY_H_

typedef struct
{
	USHORT nBit;
	USHORT nWord;
}XPANEL_ADD;

typedef struct
{
	XPANEL_ADD nTC_0;
	XPANEL_ADD nM1_1;
	XPANEL_ADD nM2_2;
	XPANEL_ADD nM1_3;
	XPANEL_ADD nM2_4;
	XPANEL_ADD nT_5;
	XPANEL_ADD nT_6;
	XPANEL_ADD nM1_7;
	XPANEL_ADD nM2_8;
	XPANEL_ADD nTC_9;
}XPANEL_DI_ADD;

typedef struct
{
	UCHAR nDirverScreen; // 화면 번호
	UCHAR nDI_Screen;	 //검수 화면 선택 차량
	UCHAR nDATE[6];
	USHORT nDiaNum;	//편성 번호
	USHORT nCarNum; //차량 번호.
	USHORT nWheel;//차륜경
	UCHAR nMesgNum; //고장 메시지 번호
	UCHAR nMesgNum_Re; //고장 메시지 기억하고 있다가EM->B7로 이동시 다시 출력
	UCHAR nMesgNum_B7_Re; //EM이 아닐때 고장을 기억하고 있다가 전달해 준다.
	UCHAR nBvHand_Re;	//BV 핸들 기억
	int nB0_7_Time;//정상 동작 시간을 기억한다.
	int nB0_7_Time_Cnt;
	UCHAR nRecodeFlag; //운전 기록 명령문.
	UCHAR nRecodeCnt; //기록중에는 한번만 명령을 전송한다.
	UCHAR nRecodeOKNG;
	UCHAR mkiGi_Mode; //수시 메시지가 100이면 기지 모드
}SCREEN_INF;

//////////////////////////////////////////////////////////
/////    Bit 처리
/////////////////////////////////////////////////////////
typedef struct
{
	union{
	UCHAR nBYTE;
	struct{
		UCHAR nBit1 : 1;
		UCHAR nBit2 : 1;
		UCHAR nBit3 : 1;
		UCHAR nBit4 : 1;
		UCHAR nBit5 : 1;
		UCHAR nBit6 : 1;
		UCHAR nBit7 : 1;
		UCHAR nBit8 : 1;
		}nBit;
	}nData;
}BIT_DATAPRo,*PBIT_DATAPRo;

//////////////////////////////////////////////////////////
/////    고장 리스트
/////////////////////////////////////////////////////////

typedef struct
{
	union{
	UCHAR nFaultBuf[2];
	struct{
		UCHAR nCar0_Bit : 1;
		UCHAR nCar1_Bit : 1;
		UCHAR nCar2_Bit : 1;
		UCHAR nCar3_Bit : 1;
		UCHAR nCar4_Bit : 1;
		UCHAR nCar5_Bit : 1;
		UCHAR nCar6_Bit : 1;
		UCHAR nCar7_Bit : 1;
		UCHAR nCar8_Bit : 1;
		UCHAR nCar9_Bit : 1;
		UCHAR nCar10_Bit : 1;
		UCHAR nSp11_Bit : 1;
		UCHAR nSp12_Bit : 1;
		UCHAR nSp13_Bit : 1;
		UCHAR nSp14_Bit : 1;
		UCHAR nSp15_Bit : 1;
		}nCar10Bit;
	}nData;
}CAR_10R_FAULT,*PCAR_10R_FAULT;

typedef struct
{
	int nFaultRE;		//	
	UCHAR nFaultCnt;
}NFAULTUNIT;

typedef struct
{
	NFAULTUNIT n14Fa;
	NFAULTUNIT n19Fa;
	NFAULTUNIT n20Fa;
	NFAULTUNIT n21Fa;
	NFAULTUNIT n23Fa;
	NFAULTUNIT n24Fa;
	NFAULTUNIT n26Fa;
	NFAULTUNIT n29Fa;
	NFAULTUNIT s14Fa_TimeCnt;
}FAULTLIST;
//////////////////////////////////////////////////////////
/////    TC DI 리스트 정리
/////////////////////////////////////////////////////////
typedef struct
{
	union{
	UCHAR nTc16A1[2];
	struct{
		UCHAR nATS_R0 : 1;
		UCHAR nATS_R1 : 1;
		UCHAR nATS_YY : 1;
		UCHAR nATS_Y : 1;
		UCHAR nATS_G : 1;
		UCHAR nSp1 : 1;
		UCHAR nSp2 : 1;
		UCHAR nSp3 : 1;

		UCHAR nDoor1 : 1;
		UCHAR nDoor3 : 1;
		UCHAR nDoor5 : 1;
		UCHAR nDoor7 : 1;
		UCHAR nDoor2 : 1;
		UCHAR nDoor4 : 1;
		UCHAR nDoor6 : 1;
		UCHAR nDoor8 : 1;
		}nBit;
	}nData;
}TC_16A1;

typedef struct
{
	union{
	UCHAR nTc16W1[2];
	struct{
		UCHAR nVehicle_Fsil : 1; //해당차량 과부하 Fsil점등.
		UCHAR nEm_Brake : 1; //비상제동 검지.
		UCHAR nBV_HANDLE : 1;	//운전실 선택		
		UCHAR nBRAKE : 1;	//제동 감지		
		UCHAR nATCCOS : 1;	//ATC개방 스위치 감지		
		UCHAR nEBCOS : 1;	//비상제동차단 스위치 감지		
		UCHAR nLSRS : 1;	//ZVR계전기 여자로 비상스위치 역할		
		UCHAR nDIRS : 1;	//출입문연동 계전기용 스위치		

		UCHAR nCrs2 : 1; //최측 출입문 CRS 동작
		UCHAR nCrs1 : 1; //우측 출입문 CRS 동작
		UCHAR nEpands : 1; //비상판타스위치
		UCHAR n43a : 1; //제동 검지 장치
		UCHAR nSetp_27 : 1; //운전실 제동변 Step 지령.
		UCHAR nSetp_28 : 1; //운전실 제동변 Step 지령.
		UCHAR nSetp_29 : 1; //운전실 제동변 Step 지령.
		UCHAR nSbs : 1; //보안 제동 체결 스위치
		
		}nBit;
	}nData;
}TC_16W1;

typedef struct
{
	union{
	UCHAR nTc16W2[2];
	struct{
		UCHAR nBPR : 1	;	//비상제동 해방 회로 
		UCHAR nBEAR : 1	;	//비상제동 해방 회로 
		UCHAR nCHCGS_Half_C : 1;	//(반냉)	냉방반냉
		UCHAR nCHCGS_Full_C : 1;	//(전냉)	냉방전냉
		UCHAR nCHCGS_350W_h : 1;	//(350W 난방)	350W 난방
		UCHAR nCHCGS_700W_h : 1;	//(700W 난방)	700W 난방
		UCHAR nCMK1 : 1;	//	1위 냉반기 동작
		UCHAR nCMK2 : 1;	//	2위냉방기 동작

		UCHAR nBEL : 1;	//비상제동 및 응급 스위치 취급시
		UCHAR nPANDS : 1;	//	PANTO DOWN
		UCHAR nTCN : 1;	//	견인제어전원 NFB
		UCHAR nBVN : 1;	//	제동제어전원 NFB
		UCHAR nTIK : 1;	//	운전준비 회로구성
		UCHAR nSp1 : 1;
		UCHAR nBSK : 1;	//	안전루프 회로구성
		UCHAR nDSDR : 1	;	//승무원 안전장치
		
		}nBit;
	}nData;
}TC_16W2;

typedef struct
{
	union{
	UCHAR nTc16W3[2];
	struct{
		UCHAR nBR : 1;	//	역행 11선 가압
		UCHAR nZVR : 1;	//	열차 3KM이하시 점등
		UCHAR nAISUS : 1;	//	공기스프링내 압력 불량시 점등
		UCHAR nLBTL : 1;	//	차단기 미 투입시 점등
		UCHAR nVCOR : 1;	//	고장차 개방시 점등 
		UCHAR nASF : 1;	//	보조회로 고장시 점등
		UCHAR nCOTL : 1;	//	초퍼과온시 점등
		UCHAR nUCOR : 1;	//	유니트 개방시 점등

		UCHAR nRESET : 1;	//	견인 및 보조장치의 과부하 리셋하는 푸시버튼
		UCHAR nDVCOS : 1;	//	36선을 통해 VCOR을 여자시켜 고장차량 차단
		UCHAR nRV_F : 1;	//	전진
		UCHAR nRV_R : 1;	//	후진
		UCHAR nMOTORING_1 : 1;	//	역행 감지 1놋지
		UCHAR nMOTORING_4 : 1;	//	역행 감지 4놋지
		UCHAR nBDR_Unit : 1;	//	제동지령게전기
		UCHAR nBDR : 1;	//	역행 11선 가압
		}nBit;
	}nData;
}TC_16W3;

typedef struct
{
	union{
	UCHAR nTc16W4[2];
	struct{
		
		UCHAR nsp4 :1;
		UCHAR nsp5 :1;
		UCHAR nsp6 :1;
		UCHAR nsp7 :1;
		UCHAR nsp8 :1;
		UCHAR nsp9 :1;
		UCHAR n1Car :1;
		UCHAR n9Car :1;

		UCHAR nDIL : 1;//	발차지시등 확인
		UCHAR nATS_EM : 1;//	ATS 고장에 따른 EBR 동작
		UCHAR nSOCG : 1;//	SO
		UCHAR nATS_BELL : 1;//	
		UCHAR nPANUS : 1;//	판타 상승스위치
		UCHAR nsp1 :1;
		UCHAR nsp2 :1;
		UCHAR nsp3 :1;

		}nBit;
	}nData;
}TC_16W4;


typedef struct
{
	union{
	UCHAR nTcAD04W1[8];
	struct{
		UCHAR nBC[2];//	BC압력
		UCHAR nMR[2];//	MR 압력
		UCHAR nTEMP1[2];//	객실온도
		UCHAR nTEMP2[2];//	객실온도
		}nWord;
	}nData;
}TC_AD04W1;


typedef struct
{
	UCHAR nBC;  //	BC압력
	UCHAR nMR; //	MR 압력
	UCHAR nTemp1;
	UCHAR nTemp2;
}TC_AD04W1_RE;
/****************************/

typedef struct
{
	union{
	UCHAR nTcAD04W2[8];
	struct{
		UCHAR n3401[2];//	놎지 통전율
		UCHAR n3501[2];//	놎지 통전율
		UCHAR n3402[2];//	놎지 통전율
		UCHAR nsp[2];//
		}nWord;
	}nData;
}TC_AD04W2;


typedef struct
{
	UCHAR n3401; //	놎지 통전율
	UCHAR n3501; //	놎지 통전율
}TC_AD04W2_RE;
/****************************/

typedef struct
{
	union{
	UCHAR nTcHS02B[8];
	struct{
		UCHAR nSpeed[2];//
		UCHAR nSpeed_H[2];//
		UCHAR nSp[4];//	놎지 통전율
		}nWord;
	}nData;
}TC_Hs02B;


typedef struct
{
	UCHAR nSpeed;
}TC_Hs02B_RE;

//////////////////////////////////////////////////////////
/////    M1 DI 리스트 정리
/////////////////////////////////////////////////////////

typedef struct
{
	union{
	UCHAR nM116A1[2];
	struct{
		UCHAR nDEMAND_CLAMP :1;
		UCHAR nSEVERO_CLAMP :1;
		UCHAR nsp1 :1;
		UCHAR nsp2 :1;
		UCHAR nsp3 :1;
		UCHAR nsp4 :1;
		UCHAR nsp5 :1;
		UCHAR nsp6 :1;

		UCHAR nDoor1 : 1;
		UCHAR nDoor3 : 1;
		UCHAR nDoor5 : 1;
		UCHAR nDoor7 : 1;
		UCHAR nDoor2 : 1;
		UCHAR nDoor4 : 1;
		UCHAR nDoor6 : 1;
		UCHAR nDoor8 : 1;
		
		}nBit;
	}nData;
}M1_16A1;

typedef struct
{
	union{
	UCHAR nM116A2[2];
	struct{
		UCHAR nVL_OL : 1;//	과전압
		UCHAR nIA_OL : 1;//	전기자 과전류
		UCHAR nIF_OL : 1;//	계자 과전류
		UCHAR nMBS_F : 1;//	역행
		UCHAR nMBS_B : 1;//	제동 
		UCHAR nFWD_DETECTION : 1;// 환류다이오드 감시
		UCHAR nMOTER_DEMAND : 1;//	역행회로구성
		UCHAR nBRAKE_DEMAND : 1;//	DBR 여자(BRAKE DEMAND신호확인)

		UCHAR nCLOSE_LB4 : 1;//	LB1~4투입여부,CCR정상시소자상태확인
		UCHAR nREMOTE_RESET : 1;//	운전실 리셋(MOLR RESET)
		UCHAR nLOCAL_RESET : 1;//	ec BOX용
		UCHAR nMOTOR_PROVED : 1;//	LK.IK.MBS(M)투입확인
		UCHAR nNOTCH_4 : 1;//	4놋지 투입
		UCHAR nBRAKE_PROVED : 1;//	LK.IK.MBS(B)투입확인
		UCHAR nLB : 1;//	LB1,2,3 투입확인
		UCHAR nOVER_LOAD_OK : 1;//	
		
		}nBit;
	}nData;
}M1_16A2;

typedef struct
{
	union{
	UCHAR nM116W1[2];
	struct{
		
		UCHAR nCMK2 : 1;//	2위냉방기 동작
		UCHAR nsp1 : 1;//
		UCHAR nsp2 : 1;//
		UCHAR nsp3 : 1;//
		UCHAR nsp4 : 1;//
		UCHAR nsp5 : 1;//
		UCHAR nsp6 : 1;//
		UCHAR nsp7 : 1;//

		UCHAR n43a : 1;// 제동검지장치	제동통 공기 불완해 검지
		UCHAR nVCOR_VCOS : 1;//	동력차량을 개방
		UCHAR nVEHICLE_FSIL : 1;//	해당차량과부하FSIL 점등.
		UCHAR nLK : 1;//	LK 투입신호
		UCHAR nASK : 1;//	보조전원접촉기
		UCHAR nBCRX : 1;//	축전지충전가속계전기
		UCHAR nESK : 1;//	연장급전투입
		UCHAR nCMK1 : 1;//	1위 냉반기 동작
		}nBit;
	}nData;
}M1_16W1;


typedef struct
{
	union{
	UCHAR nM116W2[2];
	struct{
		
		UCHAR n1Car : 1;
		UCHAR n2Car : 1;
		UCHAR n3Car : 1;
		UCHAR n4Car : 1;
		UCHAR n5Car : 1;
		UCHAR n6Car : 1;
		UCHAR n7Car : 1;
		UCHAR n8Car : 1;

		UCHAR nsp1 : 1;
		UCHAR nsp2 : 1;
		UCHAR nsp3 : 1;
		UCHAR nsp4 : 1;
		UCHAR nsp5 : 1;
		UCHAR nsp6 : 1;
		UCHAR nsp7 : 1;
		UCHAR nsp8 : 1;

		}nBit;
	}nData;
}M1_16W2;


typedef struct
{
	union{
	UCHAR nM1AD04W1[8];
	struct{
		UCHAR nVL[2];//	CF충전전압
		UCHAR nIA[2];//	전기자 전류
		UCHAR nBED[2];//	제동요구력
		UCHAR nTED[2];//	견인요구력
		}nWord;
	}nData;
}M1_AD04W1;


typedef struct
{
	UCHAR nVL;	//CF충전전압
	UCHAR nIA;	//전기자 전류
	UCHAR nBED;	//제동요구력
	UCHAR nTED;	//견인요구력
}M1_AD04W1_RE; 
/************************************/

typedef struct
{
	union{
	UCHAR nM1AD04W2[8];
	struct{
		UCHAR nBC[2];//	BC압력
		UCHAR nSL[2];//	서보레벨 값 현시
		UCHAR nTEMP1[2];//	객실온도
		UCHAR nTEMP2[2];//	객실온도
		}nWord;
	}nData;
}M1_AD04W2;


typedef struct
{
	UCHAR nBC;	//BC압력
	UCHAR nSL;	//서보레벨 값 현시
	UCHAR nTemp1;
	UCHAR nTemp2;
}M1_AD04W2_RE; 
/************************************/

typedef struct
{
	union{
	UCHAR nM1AD04W3[8];
	struct{
		UCHAR nClose_LB4An[2];//	
		UCHAR nsp2[2];//	
		UCHAR nsp3[2];//	
		UCHAR nsp4[2];//
		}nWord;
	}nData;
}M1_AD04W3;

typedef struct
{
	UCHAR nClose_LB4;	//BC압력
	UCHAR nIA_Br;	//서보레벨 값 현시
}M1_AD04W3_RE; 
/************************************/


//////////////////////////////////////////////////////////
/////    M2 DI 리스트 정리
/////////////////////////////////////////////////////////
typedef struct
{
	union{
	UCHAR nM216A1[2];
	struct{
		
		UCHAR nDEMAND_CLAMP :1;
		UCHAR nSEVERO_CLAMP :1;
		UCHAR nsp1 :1;
		UCHAR nsp2 :1;
		UCHAR nsp3 :1;
		UCHAR nsp4 :1;
		UCHAR nsp5 :1;
		UCHAR nsp6 :1;

		UCHAR nDoor1 : 1;
		UCHAR nDoor3 : 1;
		UCHAR nDoor5 : 1;
		UCHAR nDoor7 : 1;
		UCHAR nDoor2 : 1;
		UCHAR nDoor4 : 1;
		UCHAR nDoor6 : 1;
		UCHAR nDoor8 : 1;
		}nBit;
	}nData;
}M2_16A1;

typedef struct
{
	union{
	UCHAR nM216A2[2];
	struct{
		
		UCHAR nVL_OL : 1;//	과전압
		UCHAR nIA_OL : 1;//	전기자 과전류
		UCHAR nIF_OL : 1;//	계자 과전류
		UCHAR nMBS_F : 1;//	역행
		UCHAR nMBS_B : 1;//	제동 
		UCHAR nFWD_DETECTION : 1;// 환류다이오드 감시
		UCHAR nMOTER_DEMAND : 1;//	역행회로구성
		UCHAR nBRAKE_DEMAND : 1;//	DBR 여자(BRAKE DEMAND신호확인)

		UCHAR nCLOSE_LB4 : 1;//	LB1~4투입여부,CCR정상시소자상태확인
		UCHAR nREMOTE_RESET : 1;//	운전실 리셋(MOLR RESET)
		UCHAR nLOCAL_RESET : 1;//	ec BOX용
		UCHAR nMOTOR_PROVED : 1;//	LK.IK.MBS(M)투입확인
		UCHAR nNOTCH_4 : 1;//	4놋지 투입
		UCHAR nBRAKE_PROVED : 1;//	LK.IK.MBS(B)투입확인
		UCHAR nLB : 1;//	LB1,2,3 투입확인
		UCHAR nOVER_LOAD_OK : 1;//	
		}nBit;
	}nData;
}M2_16A2;

typedef struct
{
	union{
	UCHAR nM216W1[2];
	struct{
		
		UCHAR nPANV : 1;//	PANTO상승계전기
		UCHAR nCMK1 : 1;//	1위 냉반기 동작
		UCHAR nCMK2 : 1;//	2위냉방기 동작
		UCHAR nsp1 : 1;//
		UCHAR nsp2 : 1;//
		UCHAR nsp3 : 1;//
		UCHAR nsp4 : 1;//
		UCHAR nsp5 : 1;//

		UCHAR n43a : 1;// 제동검지장치	제동통 공기 불완해 검지
		UCHAR nVCOR_VCOS : 1;//	동력차량을 개방
		UCHAR nUCOR_UCOS : 1;//	유니트차량을 개방
		UCHAR nVEHICLE_FSIL : 1;//	해당차량과부하 nFSIL 점등
		UCHAR nLK : 1;//	LK 투입신호
		UCHAR nHB : 1;//	고속도차단기투입
		UCHAR nCMK : 1;//	CM 기동 및 정지상태
		UCHAR nLBR : 1;//	주회로차단계전기

		}nBit;
	}nData;
}M2_16W1;


typedef struct
{
	union{
	UCHAR nM216W2[2];
	struct{
		
		UCHAR n1Car : 1;
		UCHAR n2Car : 1;
		UCHAR n3Car : 1;
		UCHAR n4Car : 1;
		UCHAR n5Car : 1;
		UCHAR n6Car : 1;
		UCHAR n7Car : 1;
		UCHAR n8Car : 1;

		UCHAR nsp1 : 1;
		UCHAR nsp2 : 1;
		UCHAR nsp3 : 1;
		UCHAR nsp4 : 1;
		UCHAR nsp5 : 1;
		UCHAR nsp6 : 1;
		UCHAR nsp7 : 1;
		UCHAR nsp8 : 1;
		}nBit;
	}nData;
}M2_16W2;


typedef struct
{
	union{
	UCHAR nM2AD04W1[8];
	struct{
		UCHAR nVL[2];//	CF충전전압
		UCHAR nIA[2];//	전기자 전류
		UCHAR nBED[2];//	제동요구력
		UCHAR nTED[2];//	견인요구력
		}nWord;
	}nData;
}M2_AD04W1;


typedef struct
{
	UCHAR nVL;	//CF충전전압
	UCHAR nIA;	//전기자 전류
	UCHAR nBED;	//제동요구력
	UCHAR nTED;	//견인요구력
}M2_AD04W1_RE; 
/******************!@#$%^&*******************/

typedef struct
{
	union{
	UCHAR nM2AD04W2[8];
	struct{
		UCHAR nBC[2];//	BC압력
		UCHAR nSL[2];//	서보레벨 값 현시
		UCHAR nTEMP1[2];//	객실온도
		UCHAR nTEMP2[2];//	객실온도
		}nWord;
	}nData;
}M2_AD04W2;


typedef struct
{
	UCHAR nBC;	//BC압력
	UCHAR nSL;	//서보레벨 값 현시
	UCHAR nTemp1;
	UCHAR nTemp2;
}M2_AD04W2_RE;

/******************!@#$%^&*******************/

typedef struct
{
	union{
	UCHAR nM2AD04W3[8];
	struct{
		UCHAR nClose_LB4An[2];//	
		UCHAR nsp2[2];//	
		UCHAR nsp3[2];//	
		UCHAR nsp4[2];//
		}nWord;
	}nData;
}M2_AD04W3;

typedef struct
{
	UCHAR nClose_LB4;	//BC압력
	UCHAR nIA_Br;	//서보레벨 값 현시
}M2_AD04W3_RE; 
/************************************/


//////////////////////////////////////////////////////////
/////    T DI 리스트 정리
/////////////////////////////////////////////////////////
typedef struct
{
	union{
	UCHAR nT16A1[2];
	struct{
		
		UCHAR nsp1 :1;
		UCHAR nsp2 :1;
		UCHAR nsp3 :1;
		UCHAR nsp4 :1;
		UCHAR nsp5 :1;
		UCHAR nsp6 :1;
		UCHAR nsp7 :1;
		UCHAR nsp8 :1;

		UCHAR nDoor1 : 1;
		UCHAR nDoor3 : 1;
		UCHAR nDoor5 : 1;
		UCHAR nDoor7 : 1;
		UCHAR nDoor2 : 1;
		UCHAR nDoor4 : 1;
		UCHAR nDoor6 : 1;
		UCHAR nDoor8 : 1;
		}nBit;
	}nData;
}T_16A1;


typedef struct
{
	union{
	UCHAR nT16W1[2];
	struct{
		
		UCHAR n1Car : 1;
		UCHAR n2Car : 1;
		UCHAR n3Car : 1;
		UCHAR n4Car : 1;
		UCHAR n5Car : 1;
		UCHAR n6Car : 1;
		UCHAR n7Car : 1;
		UCHAR n8Car : 1;

		UCHAR n43a : 1;// 제동검지장치	제동통 공기 불완해 검지
		UCHAR nVEHICLE_FSIL : 1;//	해당차량과부하 nFSIL 점등
		UCHAR nCMK1 : 1;//	1위 냉반기 동작
		UCHAR nCMK2 : 1;//	2위냉방기 동작
		UCHAR nsp1 : 1;//
		UCHAR nsp2 : 1;//
		UCHAR nsp3 : 1;//
		UCHAR nsp4 : 1;//
		}nBit;
	}nData;
}T_16W1;

/******************!@#$%^&*******************/
typedef struct
{
	UCHAR nDoor8 : 1;
	UCHAR nDoor6 : 1;
	UCHAR nDoor4 : 1;
	UCHAR nDoor2 : 1;
	UCHAR nDoor7 : 1;
	UCHAR nDoor5 : 1;
	UCHAR nDoor3 : 1;
	UCHAR nDoor1 : 1;

}T_16_RE;

typedef struct
{
	union{
	UCHAR nTAD04W1[8];
	struct{
		UCHAR nBC[2];//	CF충전전압
		UCHAR nsp[2];//	전기자 전류
		UCHAR nTEMP1[2];//	제동요구력
		UCHAR nTEMP2[2];//	견인요구력
		}nWord;
	}nData;
}T_AD04W1;


typedef struct
{
	UCHAR nBC;	//CF충전전압
	UCHAR nTemp1;
	UCHAR nTemp2;
}T_AD04W1_RE;  
/////////////////////////////////////////////////////////

typedef struct
{
	
	TC_Hs02B nHs02B;
	TC_AD04W1 nAd04W1;
	TC_AD04W2 nAd04W2;
	TC_16W1 nXd16W1;
	TC_16W2 nXd16W2;
	TC_16W3 nXd16W3;
	TC_16W4 nXd16W4;
	TC_16A1 nXd16A1;
}TCCAR_MEMORY,*PTCCAR_MEMORY;

typedef struct
{

	M1_AD04W1 nAd04W1;
	M1_AD04W2 nAd04W2;
	M1_AD04W3 nAd04W3;
	M1_16W1 nXd16W1;
	M1_16W2 nXd16W2;
	M1_16A1 nXd16A1;
	M1_16A2 nXd16A2;
}M1CAR_MEMORY;

typedef struct
{

	M2_AD04W1 nAd04W1;
	M2_AD04W2 nAd04W2;
	M2_AD04W3 nAd04W3;
	M2_16W1 nXd16W1;
	M2_16W2 nXd16W2;
	M2_16A1 nXd16A1;
	M2_16A2 nXd16A2;
}M2CAR_MEMORY;


typedef struct
{
	T_AD04W1 nAd04W1;
	T_16W1 nXd16W1;
	T_16A1 nXd16A1;
}TCAR_MEMORY;


typedef struct
{
	TCCAR_MEMORY nTC_0;
	UCHAR nNetSta_0[2];
	M1CAR_MEMORY nM1_1;
	M2CAR_MEMORY nM2_2;
	M1CAR_MEMORY nM1_3;
	M2CAR_MEMORY nM2_4;
	TCAR_MEMORY nT_5;
	TCAR_MEMORY nT_6;
	M1CAR_MEMORY nM1_7;
	M2CAR_MEMORY nM2_8;
	TCCAR_MEMORY nTC_9;
	UCHAR nNetSta_9[2];
	UCHAR nCdmaTimeBuf[8]; //2010_03_15;
	UCHAR nNetCnt[10];
}TIS_MEMORY,*PTIS_MEMORY;

/********************************************************
군자 기록 구조
******************************************************/
typedef struct
{
	TC_Hs02B_RE nHs02B;
	TC_AD04W1_RE nAd04W1;
	TC_AD04W2_RE nAd04W2;
	TC_16W1 nXd16W1;
	TC_16W2 nXd16W2;
	TC_16W3 nXd16W3;
	TC_16W4 nXd16W4;
	TC_16A1 nXd16A1;
}TCCAR_MEMORY_RE,*PTCCAR_MEMORY_RE;


typedef struct
{

	M1_AD04W1_RE nAd04W1;
	M1_AD04W2_RE nAd04W2;
	M1_AD04W3_RE nAd04W3;
	M1_16W1 nXd16W1;
	M1_16W2 nXd16W2;
	M1_16A1 nXd16A1;
	M1_16A2 nXd16A2;
}M1CAR_MEMORY_RE;

typedef struct
{

	M2_AD04W1_RE nAd04W1;
	M2_AD04W2_RE nAd04W2;
	M2_AD04W3_RE nAd04W3;
	M2_16W1 nXd16W1;
	M2_16W2 nXd16W2;
	M2_16A1 nXd16A1;
	M2_16A2 nXd16A2;
}M2CAR_MEMORY_RE;


typedef struct
{
	T_AD04W1_RE nAd04W1;
	T_16W1 nXd16W;
	T_16_RE nXd16;
}TCAR_MEMORY_RE;


typedef struct
{
	UCHAR  stime[6];
	UCHAR wDistance[2];		/* 거리 [m] */
	UCHAR wCarNum[2];	        /* 편성 번호*/

	TCCAR_MEMORY_RE nTC_0;
	UCHAR nNetSta_0[2];
	M1CAR_MEMORY_RE nM1_1;
	M2CAR_MEMORY_RE nM2_2;
	M1CAR_MEMORY_RE nM1_3;
	M2CAR_MEMORY_RE nM2_4;
	TCAR_MEMORY_RE nT_5;
	TCAR_MEMORY_RE nT_6;
	M1CAR_MEMORY_RE nM1_7;
	M2CAR_MEMORY_RE nM2_8;
	TCCAR_MEMORY_RE nTC_9;
}SCU_TIS_MEMORY_RE,*PSCU_TIS_MEMORY_RE;

/***********************************************************************
온도 조정 값 관련 
**************************************************************************/
typedef struct
{
	WORD nTemp1_OffSet;
	WORD nTemp2_OffSet;
}TEMP_VALUE;

typedef struct //온도 차이 만큼 OFF_SET 을 가진다. 
{
	UCHAR nTempFlag;
	TEMP_VALUE nT_0;
	TEMP_VALUE nT_1;
	TEMP_VALUE nT_2;
	TEMP_VALUE nT_3;
	TEMP_VALUE nT_4;
	TEMP_VALUE nT_5;
	TEMP_VALUE nT_6;
	TEMP_VALUE nT_7;
	TEMP_VALUE nT_8;
	TEMP_VALUE nT_9;
	UCHAR nTempOriginal; //온도 현재 인식 값을 알고 싶을때. 13_03_11
}TEMP_CHANGE;

typedef struct
{
	WORD nTemp_Stand;
}TEMP_STVALUE;

typedef struct
{
	TEMP_STVALUE nT_0;
	TEMP_STVALUE nT_1;
	TEMP_STVALUE nT_2;
	TEMP_STVALUE nT_3;
	TEMP_STVALUE nT_4;
	TEMP_STVALUE nT_5;
	TEMP_STVALUE nT_6;
	TEMP_STVALUE nT_7;
	TEMP_STVALUE nT_8;
	TEMP_STVALUE nT_9;
}TEMP_STAND;


//2010_05_20
typedef struct
{
	UCHAR nCurFlag;
	UCHAR nPow_Step_4;
	WORD nCar_1;
	WORD nCar_2;
	WORD nCar_3;
	WORD nCar_4;
	WORD nCar_7;
	WORD nCar_8;
}CURRENT_CHANGE;

void Display_Main();
void Display_Time();
void Dispaly_TX_Data();
void Display_DI_DATA_Pro();
void Display_Init();
void Display_Driver1_Data();
void Display_Common();
UCHAR Display_Common_Data_Pro(BIT_DATAPRo *pData,UCHAR sSTPoint);
UCHAR Display_Common_Data_ProAn(BIT_DATAPRo *pData,UCHAR sSTPoint);
void Display_Fault();
void Display_Speed();
void Display_Fault_Cnt(int fData,UCHAR *pCnt);
void Display_AnData(UCHAR *pBackUp,UCHAR *pSouData,UCHAR Cnt,UCHAR nBcBrake,UCHAR sChangData,UCHAR sTempData);
WORD Display_Speed_Check(WORD sOldData,WORD sNowData2);
void Display_AnData_Sl(UCHAR *pBackUp,UCHAR *pSouData,UCHAR Cnt);
void Display_Start();

void Display_Debug();

float Display_Tem_Vel(USHORT nTem_Ad);

#endif
