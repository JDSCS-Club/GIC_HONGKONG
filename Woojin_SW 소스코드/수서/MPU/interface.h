/*******************************************************************/
/* interface.h                                                     */
/*******************************************************************/
#include "mmtype.h"

#ifndef _INTERFACE_H_
#define _INTERFACE_H_


/********************************************/
/* TC DI/DO 구조                            */
/********************************************/
/* 24V :  46 ch , 100V : 26 ch */
/* 100 :  28 ch */
typedef struct	/* 중앙 DI 구조 */
{

	BYTE _80KPH		:1;	
	BYTE _70KPH		:1;	
	BYTE _60KPH		:1;	
	BYTE _40KPH		:1;	
	BYTE _25KPH		:1;	
	BYTE YAD2		:1;	
	BYTE ATCAR		:1;	
	BYTE ATCCOS		:1;	

	BYTE 			:1;	
	BYTE			:1;	
	BYTE			:1;	
	BYTE 			:1;	
	BYTE EBR		:1;	
	BYTE ATCFBR		:1;	
	BYTE YC			:1;	
	BYTE _100KPH	:1;	


	BYTE 			:1;
	BYTE 			:1;
	BYTE 			:1;
	BYTE 			:1;
	BYTE 			:1;
	BYTE 			:1;
	BYTE 			:1;
	BYTE 			:1;

	BYTE 			:1;	
	BYTE EBS		:1;	
	BYTE RPFR		:1;	
	BYTE VOSF		:1;	
	BYTE ESBLF		:1;	
	BYTE ESBCF		:1;	
	BYTE DICF		:1;	
	BYTE DIDF3		:1;	

} TCDITYPE, *PTCDITYPE; /* 4 BYTE : 4-byte_(100v) :CN3 */

/********************************************/
/* CC DI/DO 구조                            */
/********************************************/
typedef struct	/* 단말 DI 구조 : 14 BYTE */
{
	BYTE DS8			:1;
	BYTE DS7			:1;
	BYTE DS6			:1;
	BYTE DS5			:1;
	BYTE DS4			:1;
	BYTE DS3			:1;
	BYTE DS2			:1;
	BYTE DS1			:1;

	BYTE ASPS1			:1;
	BYTE PBPS			:1;
	BYTE MRPS			:1;
	BYTE ISBR			:1;
	BYTE NRBR			:1;
	BYTE DIDF2			:1;
	BYTE DIDF1			:1;
	BYTE PA				:1;

	BYTE CMGR_BPSUF		:1;		/* TGP1/TGB21 ,TC/M */
	BYTE WSPF			:1;
	BYTE WSPT			:1;
	BYTE BCCS2			:1;
	BYTE ASCS2			:1;
	BYTE ASPS2			:1;
	BYTE BCCS1			:1;
	BYTE ASCS1			:1;

	BYTE ESK			:1;
	BYTE ACON			:1;
	BYTE SIVMFR			:1;
	BYTE SIVCN			:1;
	BYTE RSR1_CCOS		:1;
	BYTE MC1_DCTR1		:1;
	BYTE MC3_PANPS2		:1;
	BYTE BYPR_PANPS1	:1;

	BYTE EBRS			:1;
	BYTE _P				:1;
	BYTE E2				:1;
	BYTE BEAR			:1;
	BYTE SBS			:1;
	BYTE _R				:1;
	BYTE _F			    :1;
	BYTE HCR			:1;

	BYTE MPB			:1;
	BYTE TRIF			:1;
	BYTE GRST			:1;
	BYTE DCL			:1;
	BYTE DCR			:1;
	BYTE DIR			:1;
	BYTE DMA			:1;
	BYTE EBCOS			:1;

} CCDITYPE, *PCCDITYPE; /* 단말 DI 구조 6 BYTE */

typedef struct	/* 단말 TC DI 구조*/
{
	BYTE DS8			:1;
	BYTE DS7			:1;
	BYTE DS6			:1;
	BYTE DS5			:1;
	BYTE DS4			:1;
	BYTE DS3			:1;
	BYTE DS2			:1;
	BYTE DS1			:1;

	BYTE ASPS1			:1;
	BYTE PBPS			:1;
	BYTE MRPS			:1;
	BYTE ISBR			:1;
	BYTE NRBR			:1;
	BYTE DIDF2			:1;
	BYTE DIDF1			:1;
	BYTE PA				:1;

	BYTE CMGR			:1;		
	BYTE WSPF			:1;
	BYTE WSPT			:1;
	BYTE BCCS2			:1;
	BYTE ASCS2			:1;
	BYTE ASPS2			:1;
	BYTE BCCS1			:1;
	BYTE ASCS1			:1;

	BYTE				:1;
	BYTE ACON			:1;
	BYTE SIVMFR			:1;
	BYTE SIVCN			:1;
	BYTE RSR1			:1;
	BYTE MC1			:1;
	BYTE MC3			:1;
	BYTE BYPR			:1;

	BYTE EBRS			:1;
	BYTE _P				:1;
	BYTE E2				:1;
	BYTE BEAR			:1;
	BYTE SBS			:1;
	BYTE _R				:1;
	BYTE _F			    :1;
	BYTE HCR			:1;

	BYTE MPB			:1;
	BYTE TRIF			:1;
	BYTE GRST			:1;
	BYTE DCL			:1;
	BYTE DCR			:1;
	BYTE DIR			:1;
	BYTE DMA			:1;
	BYTE EBCOS			:1;

} CCDITCTYPE, *PCCDITCTYPE; /* 단말 DI 구조 6 BYTE */

typedef struct	/* 단말 M DI 구조*/
{
	BYTE DS8			:1;
	BYTE DS7			:1;
	BYTE DS6			:1;
	BYTE DS5			:1;
	BYTE DS4			:1;
	BYTE DS3			:1;
	BYTE DS2			:1;
	BYTE DS1			:1;

	BYTE ASPS1			:1;
	BYTE				:1;
	BYTE				:1;
	BYTE ISBR			:1;
	BYTE NRBR			:1;
	BYTE DIDF2			:1;
	BYTE DIDF1			:1;
	BYTE PA				:1;

	BYTE BPSUF			:1;		
	BYTE				:1;
	BYTE				:1;
	BYTE BCCS2			:1;
	BYTE ASCS2			:1;
	BYTE ASPS2			:1;
	BYTE BCCS1			:1;
	BYTE ASCS1			:1;

	BYTE				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE CCOS			:1;
	BYTE DCTR1			:1;
	BYTE PANPS2			:1;
	BYTE PANPS1			:1;

	BYTE				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE 				:1;
	BYTE 			    :1;
	BYTE 				:1;

	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;

} CCDIMTYPE, *PCCDIMTYPE; /* 단말 DI 구조 6 BYTE */

typedef struct	/* 단말 T1 DI 구조*/
{
	BYTE DS8			:1;
	BYTE DS7			:1;
	BYTE DS6			:1;
	BYTE DS5			:1;
	BYTE DS4			:1;
	BYTE DS3			:1;
	BYTE DS2			:1;
	BYTE DS1			:1;

	BYTE ASPS1			:1;
	BYTE				:1;
	BYTE				:1;
	BYTE ISBR			:1;
	BYTE NRBR			:1;
	BYTE DIDF2			:1;
	BYTE DIDF1			:1;
	BYTE PA				:1;

	BYTE				:1;		
	BYTE WSPF			:1;
	BYTE WSPT			:1;
	BYTE BCCS2			:1;
	BYTE ASCS2			:1;
	BYTE ASPS2			:1;
	BYTE BCCS1			:1;
	BYTE ASCS1			:1;

	BYTE ESK			:1;
	BYTE				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE				:1;

	BYTE				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE 				:1;
	BYTE 			    :1;
	BYTE 				:1;

	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;

} CCDIT1TYPE, *PCCDIT1TYPE; /* 단말 DI 구조 6 BYTE */

typedef struct	/* 단말 T2 DI 구조*/
{
	BYTE DS8			:1;
	BYTE DS7			:1;
	BYTE DS6			:1;
	BYTE DS5			:1;
	BYTE DS4			:1;
	BYTE DS3			:1;
	BYTE DS2			:1;
	BYTE DS1			:1;

	BYTE ASPS1			:1;
	BYTE				:1;
	BYTE				:1;
	BYTE ISBR			:1;
	BYTE NRBR			:1;
	BYTE DIDF2			:1;
	BYTE DIDF1			:1;
	BYTE PA				:1;

	BYTE CMGR			:1;	
	BYTE WSPF			:1;
	BYTE WSPT			:1;
	BYTE BCCS2			:1;
	BYTE ASCS2			:1;
	BYTE ASPS2			:1;
	BYTE BCCS1			:1;
	BYTE ASCS1			:1;

	BYTE ESK			:1;
	BYTE ACON			:1;
	BYTE SIVMFR			:1;
	BYTE SIVCN			:1;
	BYTE RSR1			:1;
	BYTE MC1			:1;
	BYTE MC3			:1;
	BYTE BYPR			:1;

	BYTE				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE				:1;
	BYTE				:1;
	BYTE 				:1;
	BYTE 			    :1;
	BYTE 				:1;

	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;
	BYTE 				:1;

} CCDIT2TYPE, *PCCDIT2TYPE; /* 단말 DI 구조 6 BYTE */

/********************************************/
/* 통신데이터 구조                          */
/********************************************/

typedef struct
{
	UCHAR usStx;

	UCHAR chDataType;	/* 데이터 종류 : 0x20 */

	UCHAR YEAR;		/* 0x80 : DISABLE, 0x81 : ENABLE */
	UCHAR MONTH;		/* 0x80 */
	UCHAR DAY;		/* 0x80 */
	UCHAR HOUR;
	UCHAR MINUTE;

	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR AMR		:1;		/* Automatic Modes Relay */

	UCHAR spare[3];

	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR TDC		:1;		/* Trace Data Clear */

	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;
}BRAKESDRTYPE,*PBRAKESDRTYPE;

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 : 0x20 */

	UCHAR TRCE			:1;
	UCHAR RAMF			:1;
	UCHAR RBFF			:1;
	UCHAR BUF			:1;
	UCHAR EVCFT			:1;
	UCHAR EVCFM			:1;
	UCHAR BEAF			:1;
	UCHAR LSPF			:1;

	UCHAR TEST			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;

	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR B4			:1;
	UCHAR B2			:1;
	UCHAR B1			:1;
	UCHAR BCDS			:1;
	UCHAR PCDS			:1;

	UCHAR SBD;
	UCHAR LDPM;
	UCHAR LDPT;
	UCHAR VLS;
	UCHAR BED;
	UCHAR BEA;
	UCHAR EPCM;
	UCHAR EPCT;
	UCHAR WTM;
	UCHAR WTT;

	UCHAR spare[5];
	UCHAR TRACENO;	/* BIT00 ~ BIT05 : TRACE BIT */
	UCHAR spare2;

	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;
}BRAKESDTYPE,*PBRAKESDTYPE;

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 : 0x21 */
	UCHAR chTraceNo;	/* 01H ~ 05H */

	UCHAR chTraceBlock;	/* 00h~16h */

	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;
}BRAKETDRTYPE,*PBRAKETDRTYPE;

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 : 0x21 */
	UCHAR chBlockNo;

	UCHAR chDataBlock[50];

	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;
}BRAKETDTYPE,*PBRAKETDTYPE;

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 : 0x20 */

	SYSTIMETYPE sysTime;
	UCHAR spare[4];

	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;
}SIVSDRTYPE,*PSIVSDRTYPE;

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 : 0x21 */

	UCHAR chTraceNo;	/* 추적기록 No 01~03 */

	UCHAR chTraceBlock_L;
	UCHAR chTraceBlock_H;	/* Block: 0000h ~ 02D0h */

	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;
}SIVTDRTYPE,*PSIVTDRTYPE;

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 : 0x21 */

	UCHAR chBlock_L;
	UCHAR chBlock_H;	/* Block: 0000h ~ 02D0h */

	UCHAR chDataBlock[15];	/* Data Block */

	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;

}SIVTDTYPE,*PSIVTDTYPE;

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 :TX- TPR(0x22),TSR(0x23),TSTR(0x25) */

	UCHAR chText;		/* 0x40 */

	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;

}SIVTSRTYPE,*PSIVTSRTYPE;	/* Test Start Request */

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 :RX- TP(0x22)*/

	UCHAR 			:1;
	UCHAR 			:1;	/* bFixed '1' */
	UCHAR bOK		:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	
	
	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;

}SIVTPTYPE,*PSIVTPTYPE;	/* Test Prepare */

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 :RX- TS(0x23)*/

	UCHAR 			:1;
	UCHAR 			:1;	/* bFixed '1' */
	UCHAR bOK		:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	
	
	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;

}SIVTSTYPE,*PSIVTSTYPE;	/* Test Started */

typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;	/* 데이터 종류 :RX- TR(0x24)*/

	UCHAR RESULT	:2;		/* 00:UNDER TEST ,01:NOT USED , RESULT No Good, Result OK */
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	UCHAR 			:1;
	
	UCHAR chResult[14];
	
	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;

}SIVTRTYPE,*PSIVTRTYPE;	/* Test Result */


typedef struct
{
	UCHAR usStx;
	UCHAR chDataType;		/* 종별코드 (0x20) */

	UCHAR CHOC1		:1;
	UCHAR CHOC2		:1;
	UCHAR CHOV1		:1;
	UCHAR CHOV2		:1;
	UCHAR INVOV1		:1;
	UCHAR INVOV2		:1;
	UCHAR INVOC1		:1;
	UCHAR INVOC2		:1;

	UCHAR OUTOV		:1;
	UCHAR OUTUDV		:1;
	UCHAR OUTOC		:1;
	UCHAR OUTSH		:1;
	UCHAR DCOV		:1;
	UCHAR DCUDV		:1;
	UCHAR UNBAL		:1;
	UCHAR STTERR		:1;

	UCHAR CPSF		:1;
	UCHAR BCF		:1;
	UCHAR CPUF		:1;
	UCHAR PLCF		:1;
	UCHAR ARFT		:1;
	UCHAR SIVFT		:1;
	UCHAR OT		:1;
	UCHAR 		:1;

	UCHAR SIVMCB		:1;
	UCHAR START		:1;
	UCHAR HK		:1;
	UCHAR IVK		:1;
	UCHAR SIVK		:1;
	UCHAR 		:1;
	UCHAR BTHON		:1;
	UCHAR PTRON		:1;

	UCHAR spare[5];
	UCHAR DCV;
	UCHAR OUTVDC;
	UCHAR OUTCDC;
	UCHAR CHV1;
	UCHAR CHV2;
	UCHAR INVV1;
	UCHAR INVV2;
	UCHAR BCV;
	UCHAR OUTF;
	UCHAR spare2[8];

	UCHAR TRACENO;
	UCHAR spare3;


	UCHAR usEtx;
	UCHAR usBcc_H;
	UCHAR usBcc_L;

}SIVSDTYPE,*PSIVSDTYPE;


/* 추진장치 프로토콜 */


typedef struct
{
	UCHAR usHDR;
	UCHAR usAddr;
	UCHAR chDataType;	/* 데이터 종류 : 0x20 */

	UCHAR YEAR;		/* 0x80 : DISABLE, 0x81 : ENABLE */
	UCHAR MONTH;		/* 0x80 */
	UCHAR DAY;		/* 0x80 */
	UCHAR HOUR;
	UCHAR MINUTE;
	UCHAR spare[5];

	UCHAR usCrc_L;
	UCHAR usCrc_H;

	UCHAR usTER;

}CISDRTYPE,*PCISDRTYPE;

typedef struct
{
	UCHAR usHDR;
	UCHAR usAddr;
	UCHAR chDataType;	/* 데이터 종류 : 0x20 */

	UCHAR _M		:1;
	UCHAR _B		:1;
	UCHAR HBR		:1;
	UCHAR HB1		:1;
	UCHAR HB2		:1;
	UCHAR CCCR		:1;
	UCHAR CCCS		:1;
	UCHAR CCF		:1;

	UCHAR HSCBF		:1;
	UCHAR FCC		:1;
	UCHAR 			:1;
	UCHAR _24LVD		:1;
	UCHAR GPLVD		:1;
	UCHAR ESTF		:1;
	UCHAR WSPM		:1;
	UCHAR RST		:1;

	UCHAR FCF		:1;
	UCHAR PHAF		:1;
	UCHAR PHBF		:1;
	UCHAR PHCF		:1;
	UCHAR PGD1		:1;
	UCHAR PGD2		:1;
	UCHAR PGD3		:1;
	UCHAR PGD4		:1;

	UCHAR ICS		:1;
	UCHAR MWB		:1;
	UCHAR ICF		:1;
	UCHAR PWMF		:1;
	UCHAR VLSF		:1;
	UCHAR ILTF		:1;
	UCHAR DF		:1;
	UCHAR RILF		:1;

	UCHAR B1		:1;
	UCHAR B2		:1;
	UCHAR B4		:1;
	UCHAR IDOCD		:1;
	UCHAR LOV		:1;
	UCHAR MOCD		:1;
	UCHAR CCTF		:1;
	UCHAR MCO		:1;

	UCHAR spare1;
	UCHAR spare2;
	UCHAR EFC;
	UCHAR PWM;
	UCHAR TED;
	char  CIID;
	UCHAR TE;
	char  IL;
	char  CIIQ;
	UCHAR FINV;
	char  FS;
	UCHAR SPD_H;	/* SPEED[FFFF] = 0.0005 m/s/bit = 1.8 m/h/bit (32.7675 m/s/max:117963 m/h/max)*/
	UCHAR SPD_L;
	UCHAR BCPM;
	UCHAR BCPT;

	UCHAR spare[8];

	UCHAR usCrc_L;
	UCHAR usCrc_H;

	UCHAR usTER;

}CISDTYPE,*PCISDTYPE;

typedef struct
{
	UCHAR usHDR;
	UCHAR usAddr;
	UCHAR chDataType;	/* 데이터 종류 : 0x20 */

	UCHAR spare;

	UCHAR usCrc_L;
	UCHAR usCrc_H;

	UCHAR usTER;

}CISHDTYPE,*PCISHDTYPE;


#endif /* _INTERFACE_H_ */
