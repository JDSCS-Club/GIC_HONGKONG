/*******************************************************************/
/* GpLib.h : header file                                           */
/*******************************************************************/

#ifndef _GPLIB_H_
#define _GPLIB_H_


/*******************************/
/* 기본 매크로 선언            */
/*******************************/
#define GP_DEV_NAME			"/ScctyCo/2"	/* 포트 */
#define GP_DEV_BAUDRATE		38400			/* 회선속도 */

#define INT_TRACE			mx_NullTrace/*logMsg*/

#define GP_MAX_PTL		600		/* 한번에 보낼수 있는 GP 프로토콜의 양 */
#define GP_LINK_PERIOD	200		/* GP에 데이터를 전송하는 주기 약 200ms */
#define GP_PRIORITY		152		/* GP에서 받는 함수의 task 우선순위 */
#define GP_ESC			0x1b	/* Escape Signal */

#define MAX_REV_BUFFER_SIZE 100	/* GP의 최대 수신 버퍼 사이즈 */


/*******************************/
/* 기본 함수 선언              */
/*******************************/
int gp_PortOpen();
BOOL gp_RevCommProcess();
void gp_BuzzerTimer(USHORT wTick);


/*******************************/
/* 외부(Gp.c) 함수 선언        */
/*******************************/
extern BOOL gp_AnswerWord(USHORT nReadAddr,const UCHAR Ptl[],int size);

#endif /* _GPLIB_H_ */
