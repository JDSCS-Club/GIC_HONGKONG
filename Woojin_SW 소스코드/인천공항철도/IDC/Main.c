/**************************************************
	TMS320C3X C Program			  				  
/**************************************************/
//10_08_10
//2011_02_17 3.2버전 /자기진단 기능 변경.
//2011_05_02 3.5 출발역에서 M Key 31 -> 30 -> 31 (운전자 교대) 이상동작 문제 해결
//2011_11_10 4.0 노선 표시기 표출 조건 변경.
//2011_11_16 행선 설정용 전용 변수 선언 nOnlyDestSendFlag
//2011_11_28 자기진단 6회로 수정. SELF_TEST_ALLCNT 디폴트 타입 추가
//120820 TCMS 출입문 정보를 사용한다.(값이 없으면 디폴트 사용)
/**************************************************
         Header 정의 
/**************************************************/


#include "string.h"
#include "stdio.h"
#include "stdarg.h"
#include "ALL_DEF.h"
#include "debug3x.h"
#include "NorFlash.h"
#include "z85c30.h"
#include "Disk.h"
#include "LED_DOWNLOAD.h"
#include "GpProface.h"
#include "DataPro.h"
#include "Main.h"

////////////////////////////////////////////////////

void (*c_int01_ECC)(void) = 0;
void (*c_int02_ECC)(void) = 0;
void (*c_int03_ECC)(void) = 0;

extern SCC_INIT_SHAPE SCC1_INIT_A;
extern SCC_INIT_SHAPE SCC1_INIT_B;

extern SCC_INIT_SHAPE SCC2_INIT_A;
extern SCC_INIT_SHAPE SCC2_INIT_B;

extern SCC_INIT_SHAPE SCC3_INIT_A;
extern SCC_INIT_SHAPE SCC3_INIT_B;

extern UCHAR m_Scc1RXBuff_Ach_Back[SCC_BUFF_SIZE];
extern UCHAR m_Scc1RXBuff_Bch_Back[SCC_BUFF_SIZE];

extern UCHAR m_Scc2RXBuff_Ach_Back[SCC_BUFF_SIZE];
extern UCHAR m_Scc2RXBuff_Bch_Back[SCC_BUFF_SIZE];

extern UCHAR m_Scc3RXBuff_Ach_Back[SCC_BUFF_SIZE];
extern UCHAR m_Scc3RXBuff_Bch_Back[SCC_BUFF_SIZE];



/*************************************************
	변수를 정의한다.
**************************************************/
WORD cint04 =0,cint09 =0,cint10 =0;
WORD glDebugCnt=0;

/************************************************/
/* 통신에 사용된 변수 							*/
/************************************************/
WORD cint01 =0,cint02 =0,cint03 =0;

int glScc1a_cnt=0;
int glScc1a_Delaycnt=0;

/********************************************************
	CPU의 초기화 함수
*********************************************************/
void DSP_Init(void)
{
	/* primary bus control reg. */
	STRB0_CTRL = 0x000f0468;	/* Bank=1M, Wait=1, SWW=3 wait by software */
	STRB1_CTRL = 0x000f0468;	/* Bank=1M, Wait=0, SWW=0 wait by software */
	IOSTRB_CTRL = 0x000000e8;	/* Wait=2, SWW=11 wait by software */

	/* timer0 init */
	TMR0_CTRL = 0x02C0;		// General in port : TCLK0 
	TMR0_PERD = 1474560;		// 58.9824 MHz/4/14745.6 = 1Hz
	
	/* timer1 init */
	TMR1_CTRL = 0x02C0;		// General in port : TCLK1
	TMR1_PERD = 14745;		// 1ms

	/* Interrupt vector set */
	INT0_VECT = OP_BR |(int)c_int01 ; /* SCC Interrupt 0 */
	INT1_VECT = OP_BR |(int)c_int02 ; /* SCC Interrupt 1 */
	INT2_VECT = OP_BR |(int)c_int03 ; /* SCC Interrupt 2 */
	TIMER0_INT_VECT	 = OP_BR |(int)c_int09 ; /* Timer 0 */	
	TIMER1_INT_VECT	 = OP_BR |(int)c_int10 ; /* Timer 0 */	

	EDGE_INT;			/* LEVEL INTERRUPT */	
	
	/* Timer 1:b9, Timer 0:b8, serial port int:b5, EINT3:b3, EINT2:b2 ,EINT1:b1, EINT0:b0 */
	asm("	OR	307h,IE");
	*(int *)0x110000 = 0; 		// Boot SW => 인터럽트를 본래의 기능으로..

	// -- ISR SET --
	c_int01_ECC = &SCC1_AB;
	c_int02_ECC = &SCC2_AB;
	c_int03_ECC = &SCC3_AB;

	LINE_OFF = 1;
}

/**********************************************************************************************
	Main program
***********************************************************************************************/

char *gpVersion = ROM_VER_S;

void main(void)
{
	int i;

	DINT; 								// global interrupt disable 
	DSP_Init() ;
	Debug3xInit(TMS320C32);	
		
	SCC_Initial();
	DP_DataPro_Init();
	DP_SanDisk_Check();
	GpProface_Init();
	LED_Init();

	EINT;// global interrupt enable	
 											
	while(1)
	{
		glDebugCnt++;
		nDisplay_Pro();
		DP_DataPro_Main();
		M_Scc1_Rx();
		M_Scc2_RX();
		Gp_Pro_Main();
		LED_Main();
	}
}

/********************************************************
	SCC1A : TCMS (HDLC9600BPS) 
*********************************************************/

void c_int01(void)
{	
	cint01++;
	(*c_int01_ECC)();

} 

/********************************************************
	SCC2A : 차내,정면,측면
	SCC2B : 자기진단
*********************************************************/
void c_int02(void)
{
	cint02++;
	(*c_int02_ECC)();
}

/********************************************************
	SCC3A : GP 화면 전송 (19200bps)
	SCC3B : RS232 Monitor(19200bps)
*********************************************************/
void c_int03(void)
{
	cint03++;
	(*c_int03_ECC)();
}


/********************************************************
	SCC_1A RX 처리 부분.
*********************************************************/
void M_Scc1_Rx()
{
	if(SCC1_INIT_A.RxOK)
	{
		SCC1_INIT_A.RxOK = FALSE;
		DP_SCC1_A_RX_PRO(m_Scc1RXBuff_Ach_Back);
	}
}
/********************************************************
	GP 통신 처리
*********************************************************/
void nDisplay_Pro()
{
	if(SCC3_INIT_A.RxOK)
	{
		SCC3_INIT_A.RxOK= FALSE;
		Gp_Receive(m_Scc3RXBuff_Ach_Back);
	}
}
/********************************************************
	SCC_2A RX 처리 부분.
*********************************************************/
void M_Scc2_RX()
{
	if(SCC2_INIT_A.RxOK)
	{
		SCC2_INIT_A.RxOK = FALSE;
		DP_SCC2_A_RX_PRO(m_Scc2RXBuff_Ach_Back); 
	}

	if(SCC2_INIT_B.RxOK)
	{
		SCC2_INIT_B.RxOK = FALSE;
		DP_SCC2_B_RX_PRO(m_Scc2RXBuff_Bch_Back); 
	}
}

/********************************************************
	Timer0 100mS  시퀜스 
*********************************************************/

void c_int09()
{	
	cint09++;

	Scc100msTime();
	DP_Timer_100ms_DataPro();
	GP_100msTime();
}

/********************************************************
	Timer1 1mS  시퀜스 
	RTS CONTROL 을 위한 시간 설정
*********************************************************/
void c_int10()
{	
	cint10++;
	Scc1msTime();
	GP_1msTime();
	DP_Timer_1ms_DataPro();
	LED_Timer_1ms();
}	


