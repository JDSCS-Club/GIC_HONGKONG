/************************/
/*	TMS320C32.H	*/
/************************/


#ifndef _All_def_H_
#define _All_def_H_

#define CPU_CLK 	39.3216e6
#define CPU_H1		(int)(CPU_CLK/2.)	/* cpu H1 cycle */
#define CPU_TMR_CLK	(CPU_H1/2)		/* cpu timer clock */
#define TMR_START	0x0C0			/* timer reset & restart */
#define OP_BR		0x60000000		/* BR instruction OP CODE */

#define NVSRAM(nIndex) 	(*(UCHAR *)(0x200000+nIndex))	// 1M UCHAR 
#define NVSRAM_ADD(nIndex) (0x200000+nIndex)	// 1M UCHAR

#define XF0_ON		asm(" OR       6h,   IOF ")
#define XF0_OFF		asm(" AND      0FBh, IOF ")
#define XF1_ON		asm(" OR       60h,  IOF ")
#define XF1_OFF		asm(" AND      0BFh, IOF ")

#define DI_STATUS_RD 	(*(UCHAR *)(0x131000)) 
#define LED_TRIG 	(*(UCHAR *)(0x825000))
#define DO_CLK 		(*(UCHAR *)(0x812000))
#define DO_CLR 		(*(UCHAR *)(0x813000))
#define DICE		(*(UCHAR *)(0x810000))		// New Version
#define LINE_ON		(*(UCHAR *)(0x814000))		//PULS 0으로 초기화 한다.
#define LINE_OFF	(*(UCHAR *)(0x815000))		// New Version

#define PULS_4BIT   (*(UCHAR *)(0x825000))
#define PULS_8BIT   (*(UCHAR *)(0x826000))
#define PULS_12BIT (*(UCHAR *)(0x827000))
#define PULS_16BIT  (*(UCHAR *)(0x828000))
#define PULS_20BIT  (*(UCHAR *)(0x829000))

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
#define S_TXD		(*((int *)0x808048))
#define S_RXD		(*((int *)0x80804c))

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

/* type define */
typedef unsigned long	DWORD;
typedef unsigned short	USHORT;
typedef unsigned char	UCHAR;
typedef unsigned int	WORD;
typedef unsigned int	UINT;

#define IDC_FILE 0x01
#define RND_FILE 0x02
#define FDD_FILE 0x03
#define IDD_FILE 0x04
#define TND_FILE 0x05

#define FDD_DATA 0x06

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

#define DISPLAY_UNIT 28	//직통전체
#define DISPLAY_UNIT_A 12 //직통 차내
#define DISPLAY_UNIT_B 16 //직통 호차, 정면, 열번
#define DISPLAY_STANDARD_UNIT 8	//일반 전체 
#define DISPLAY_STANDARD_UNIT_A 6	//일반 차내
#define DISPLAY_STANDARD_UNIT_B 2	//일반 노선,정면,열번

#define DISPLAY_IDD_UNIT_CNT 24
#define DISPLAY_RND_UNIT_CNT 24
#define DISPLAY_FDD_UNIT_CNT 2
#define DISPLAY_TND_UNIT_CNT 2

#define HI_NIBBLE(data) 	((UCHAR)((data) >> 4))
#define LO_NIBBLE(data) 	((UCHAR)((data) & 0x0f))

#define HI_BYTE(data)		((UCHAR)(((data) >> 8) & 0xff))
#define LO_BYTE(data)		((UCHAR)((data) & 0xff))


#define MAKE_20BIT(HLL,HH,HL,LH,LL)	(((HLL&0x0f)<<16)|((HH&0x0f)<<12) | ((HL&0x0f)<<8) | ((LH&0x0f)<<4) | ((LL)&0x0f))
#define MAKE_DWORD(HH,HL,LH,LL)	(((HH)<<24) | ((HL&0xff)<<16) | ((LH&0xff)<<8) | ((LL)&0xff))
#define MAKE_WORD(H,L) (((H << 8) | (L & 0xff)) & 0xffff)
#define MAKE_BYTE(H,L) (((H << 4) | (L & 0x0f)) & 0xff)

#define BYTE_H(HL) (((HL)>>4) & 0xf)
#define BYTE_L(HL) ((HL) & 0xf)

#define WORD_H(HL) (((HL)>>8) & 0x0ff)
#define WORD_L(HL) ((HL) & 0x0ff)

#define DWORD_H(HL) (((HL)>>16) & 0xffff)
#define DWORD_L(HL) ((HL) & 0xffff)

#define DWORD_MASKING(HL) ((HL)&0xffffffff)

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

#define MEMORY_RESIZE 100 //가변 메모리를 우선 100으로 한시적으로 한다.
#define MEMORY_DISPLAY_CNT 200 


#endif