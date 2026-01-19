/* Gp.h : header file                                              */
/*******************************************************************/
/* GP HEADER                                                       */
/* -화면장치(GP)와 관련된 정의는 여기서 기술한다.                  */
/*******************************************************************/
#include "mmtype.h"
#include "Main.h"

#ifndef _GP_H_
#define _GP_H_


#define INIT_GP_SCR 1			/* 초기 GP 화면 */

#define FLASH_TIME	100	/* 점멸시간 0.2 초간격 */

#define ISRANGE_NORMALMODE(X)	ISRANGE(X,10,99)						/* AS MODE 의 화면범위 */
#define ISRANGE_ASMODE(X)		ISRANGE(X,6000,6020)						/* AS MODE 의 화면범위 */
#define ISRANGE_INTERFACE(X)	ISRANGE(X,270,283)						/* 검수/인터페이스의 화면범위 */
#define ISRANGE_ASIFSCR(X)		ISRANGE(X,6005,6008)						/* AS DI 인터페이스의 화면범위 */
#define ISRANGE_SETMODE(X)		ISRANGE(X,210,220)							/* 초기 설정 및 시간 설정 */
#define ISRANGE_FISMODE(X)		ISRANGE(X,500,510)						/* 고장검지 화면범위 */

#define SCRNO_DOWNLOAD			6400		/* 데이터 다운로드 중 화면 */
#define SCRNO_CHANGEFORM		6410		/* 편성변경시의 화면 */
#define SETMODE_TRAININFO		210
#define SETMODE_TIMEINFO		220

#define CICUT_VIEWTIME	2

/*********************************************************/
/* 함수 프로토타입                                       */
/*********************************************************/

void gp_ArgInit();
void gp_Init(BOOL bFail);
void gp_Close();
BOOL gp_ButtonProcess(const UCHAR Ptl[],int size);

BOOL gp_AnswerWord(USHORT nReadAddr,const UCHAR Ptl[],int size);

void gp_ContinousGP_SendData();
void gp_ScreenChange(USHORT nCode);
void gp_ScreenChangeAp(int nToScr);
void gp_ScreenInitUpdate(int nScrNo);
void gp_CommonScreenUpdate();
void gp_ScreenUpdate(int nScrNo);
void gp_LineMessageBar(LPBYTE szMessage);

void gp_UnderSystemUpdate();

void gp_CursorInit(int nScrNo);
void gp_ButtonDown(int nScreen);
void gp_ButtonUp(int nScreen);
void gp_ButtonLeft(int nScreen);
void gp_ButtonRight(int nScreen);
int gp_InitSetCursorPosition(int nPos);
void gp_CursorInput(int nScreen, int nNum);
int gp_SetModeInput(int nScreen);
int gp_TrainSetInfo(const UCHAR pSendData[]);
int gp_TimeSetInfo(const UCHAR pSendData[]);
void gp_PAInfo();
void gp_WTInfo();
void gp_ACInfo();
void gp_ESKInfo();
void gp_MCBInfo();
void gp_DoorInfo();
void gp_IMInfo(USHORT wCiCutON,USHORT wCiCutOFF);
void gp_BCInfo();
void gp_ASInfo();
void gp_BEDInfo();
void gp_BEAInfo();
void gp_EFCInfo(USHORT wCiCutON,USHORT wCiCutOFF);
void gp_TEDInfo(USHORT wCiCutON,USHORT wCiCutOFF);
void gp_TEInfo(USHORT wCiCutON,USHORT wCiCutOFF);
void gp_PWMInfo();
void gp_DCVInfo();
void gp_VOInfo();
void gp_IOInfo();
void gp_FOInfo();
void gp_SetCursor(int nPos);
void gp_CursorDestroy(int nScrNo);

#endif /* _GP_H_ */