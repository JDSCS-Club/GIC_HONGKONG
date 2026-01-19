/************************/
/*	TMS320C32.H	*/
/************************/

#define CPU_CLK 	39.3216e6
#define CPU_H1		(int)(CPU_CLK/2.)	/* cpu H1 cycle */
#define CPU_TMR_CLK	(CPU_H1/2)		/* cpu timer clock */
#define TMR_START	0x0C0			/* timer reset & restart */
#define OP_BR		0x60000000		/* BR instruction OP CODE */

/* bus control */
#define IOSTRB_CTRL	(*((int *)0x808060))
#define STRB0_CTRL	(*((int *)0x808064))
#define STRB1_CTRL	(*((int *)0x808068))

/* interrupt vector */
#define INT0_VECT	(*(int *)0x87fe01) // Interript-Trap Table Pointer : 0x87fe */
#define INT1_VECT	(*(int *)0x87fe02)
#define INT2_VECT	(*(int *)0x87fe03)
#define INT3_VECT	(*(int *)0x87fe04)
#define XINT0_VECT	(*(int *)0x87fe05)
#define RINT0_VECT	(*(int *)0x87fe06)
#define TIMER0_INT_VECT      (*(int *)0x87fe09) // timer 0
#define TIMER1_INT_VECT      (*(int *)0x87fe0a) // timer 1
#define DINT0_VECT	(*(int *)0x87fe0b)
#define DINT1_VECT	(*(int *)0x87fe0c)

/* timer define */
#define TMR0_CTRL	(*((int *)0x808020))
#define TMR0_CNT	(*((int *)0x808024))
#define TMR0_PERD	(*((int *)0x808028))
#define TMR1_CTRL	(*((int *)0x808030))
#define TMR1_CNT	(*((int *)0x808034))
#define TMR1_PERD	(*((int *)0x808038))

/* serial define */
#define SP_GLOBAL_CON	(*((int *)0x808040))
#define FSX_DX_CLKX_CON (*((int *)0x808042))
#define FSR_DR_CLKR_CON (*((int *)0x808043))
#define RX_TIMER_CON	(*((int *)0x808044))
#define RX_TIMER_CNT	(*((int *)0x808045))
#define RX_TIMER_PRD	(*((int *)0x808046))
#define S_TXD			(*((int *)0x808048))
#define S_RXD			(*((int *)0x80804c))

/*------------------------------*/
/*	320c3x macro		*/
/*------------------------------*/
#define DINT		asm(" AND       0DFFFh, ST ")
#define EINT		asm(" OR        02000h, ST ")

#define LEVEL_INT	asm(" AND       0BFFFh, ST ")
#define EDGE_INT	asm(" OR        04000h, ST ")

/* External Interrupt 0 */
#define DI_EINT0	asm(" AND       0FFFEh, IE ")
#define EI_EINT0	asm(" OR        00001h, IE ")

/* External Interrupt 1 */
#define DI_EINT1	asm(" AND       0FFFDh, IE ")
#define EI_EINT1	asm(" OR        00002h, IE ")

/* External Interrupt 2 */
#define DI_EINT2	asm(" AND       0FFFBh, IE ")
#define EI_EINT2	asm(" OR        00004h, IE ")

/* External Interrupt 3 */
#define DI_EINT3	asm(" AND       0FFF7h, IE ")
#define EI_EINT3	asm(" OR        00008h, IE ")

/* Serial Port Transmit */
#define DI_XINT 	asm(" AND       0FFEFh, IE ")
#define EI_XINT 	asm(" OR        00010h, IE ")

/* Serial Port Receive */
#define DI_RINT 	asm(" AND       0FFDFh, IE ")
#define EI_RINT 	asm(" OR        00020h, IE ")

/* Timer 0 */
#define DI_TINT0	asm(" AND       0FEFFh, IE ")
#define EI_TINT0	asm(" OR        00100h, IE ")

/* Timer 1 */
#define DI_TINT1	asm(" AND       0FDFFh, IE ")
#define EI_TINT1	asm(" OR        00200h, IE ")


//
//	DSP32 Board Memory MAP.H
//

/*
#define ADC		(*((int *)(0x100000)))

#define UART(addr)	(*((int *)(0x300000+addr)))

#define RTC(addr)	(*((int *)(0x810000+addr)))
#define FLASH(addr)	(*((int *)(0x900000+addr)))
#define SRAM(addr)	(*((int *)(0xA00000+addr)))


#define DATA_OUT	(*((int *)(0x820000)))
#define DATA_IN 	(*((int *)(0x820000)))
#define SEG_CLK1	(*((int *)(0x820002)))
#define SEG_CLK2	(*((int *)(0x820003)))
#define LED_CLK 	(*((int *)(0x820004)))
#define WDI		(*((int *)(0x820005)) = 0)
#define PR_1		(*((int *)(0x820006)) = 0)
#define PR_2		(*((int *)(0x820007)) = 0)
#define PR_3		(*((int *)(0x820008)) = 0)

// UART define
#define RXD		(*((int *)0x300000))
#define TXD		(*((int *)0x300000))
#define DLL		(*((int *)0x300000))
#define DLM		(*((int *)0x300001))
#define IER		(*((int *)0x300001))
#define IIR		(*((int *)0x300002))
#define FCR		(*((int *)0x300002))
#define LCR		(*((int *)0x300003))
#define MCR		(*((int *)0x300004))
#define LSR		(*((int *)0x300005))
#define MSR_U		(*((int *)0x300006))
#define SCR		(*((int *)0x300007))

// RTC define
#define MSR		(*((int *)0x810000))
#define RTMR		(*((int *)0x810001))
#define OMR		(*((int *)0x810002))
#define ICR0		(*((int *)0x810003))
#define ICR1		(*((int *)0x810004))
#define PFR		(*((int *)0x810003))
#define TSCR		(*((int *)0x810004))
#define MSEC_CC 	(*((int *)0x810005))
#define SEC_CC		(*((int *)0x810006))
#define MIN_CC		(*((int *)0x810007))
#define HUR_CC		(*((int *)0x810008))
#define DOM_CC		(*((int *)0x810009))
#define MON_CC		(*((int *)0x81000A))
#define YER_CC		(*((int *)0x81000B))
#define YEAR_100	(*((int *)0x81000C))
#define DOW_CC		(*((int *)0x81000E))
#define SEC_CR		(*((int *)0x810013))
#define MIN_CR		(*((int *)0x810014))
#define HUR_CR		(*((int *)0x810015))
#define DOM_CR		(*((int *)0x810016))
#define MON_CR		(*((int *)0x810017))
#define DOW_CR		(*((int *)0x810018))
#define SEC_TSR 	(*((int *)0x810019))
#define MIN_TSR 	(*((int *)0x81001A))
#define HUR_TSR 	(*((int *)0x81001B))
#define DOM_TSR 	(*((int *)0x81001C))
#define MON_TSR 	(*((int *)0x81001D))

#define RAM_TEST	(*((int *)0x81001F))
*/

//
//	type define
//
typedef unsigned long	DWORD;
typedef unsigned int	WORD;
typedef unsigned char	BYTE;

#define TRUE		1
#define FALSE		0

#define XOR(a,b)	(a^b)
#define AND2(a,b)	(a&&b)
#define OR2(a,b)	(a||b)
#define NOT(a)		(~a & 0x0001)


#define BitMask(bit)	(1 << (bit))

#define BitSet(val, bit)	((val) |= BitMask(bit))
#define BitClr(val, bit)	((val) &= ~BitMask(bit))
#define BitToggle(val, bit)	((val) ^= BitMask(bit))
#define BitTest(val, bit)	((val) & BitMask(bit))
#define BitGet(val, bit)	(BitTest(val, bit) >> (bit))

#define BIT_15	BitMask(15)
#define BIT_14	BitMask(14)
#define BIT_13	BitMask(13)
#define BIT_12	BitMask(12)
#define BIT_11	BitMask(11)
#define BIT_10	BitMask(10)
#define BIT_9	BitMask(9)
#define BIT_8	BitMask(8)
#define BIT_7	BitMask(7)
#define BIT_6	BitMask(6)
#define BIT_5	BitMask(5)
#define BIT_4	BitMask(4)
#define BIT_3	BitMask(3)
#define BIT_2	BitMask(2)
#define BIT_1	BitMask(1)
#define BIT_0	BitMask(0)

#define HI_NIBBLE(data) 	((BYTE)((data) >> 4))
#define LO_NIBBLE(data) 	((BYTE)((data) & 0x0f))

#define HI_BYTE(data)		((BYTE)(((data) >> 8) & 0xff))
#define LO_BYTE(data)		((BYTE)((data) & 0xff))

#define MAKE_WORD(hi, lo)	(WORD)(((WORD)(LO_BYTE(hi)) << 8) + (lo & 0xff))
#define MAKE_DWORD(HH,HL,LH,LL) ((MAKE_WORD(HH,HL) << 16) | (MAKE_WORD(LH,LL)&0xffff))

#define WORD_L(L)			(L&0xff)
#define WORD_H(H)			((H>>8)&0xff)

#define max(a,b)		(((a) > (b)) ? (a) : (b))
#define min(a,b)		(((a) < (b)) ? (a) : (b))

#define ABS(x)			((x) >= 0 ? (x) : -(x))
#define DELTA(a,b)		(((a) > (b)) ? (a)-(b) : (b)-(a))
#define SIGN(x) 		((x) >= 0 ? 1 : 0)
#define BOUND(x, max)		(((x) > (max)) ? (max) : ((x) < -(max)) ? -(max) : (x))

//
// 자주사용되는 상수
//
#define PI		3.141592654
#define SQRT2		1.414213562		/* sqrt(2.) */
#define INV_SQRT3	0.577350269		/* 1/sqrt(3.) */
#define SQRT3		1.732050808		/* sqrt(3.) */
#define SQRT32		0.866025404		/* sqrt(3.)/2. */
#define INV3		0.333333333		/* 1./3. */


//
// DMA control
//

#define DMA0_GCR *(int *)0x808000
#define DMA0_SRC *(int *)0x808004
#define DMA0_DST *(int *)0x808006
#define DMA0_CNT *(int *)0x808008

#define DMA1_GCR *(int *)0x808010
#define DMA1_SRC *(int *)0x808014
#define DMA1_DST *(int *)0x808016
#define DMA1_CNT *(int *)0x808018

#define ASC_DAT(A,B) (BYTE)((A<<4)|(B))