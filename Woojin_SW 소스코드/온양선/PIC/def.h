#ifndef _def_H_
#define _def_H_

/*****************************************************************
	Define
*******************************************************************/
// type define
typedef unsigned short	WORD;
typedef unsigned short	USHORT;
typedef unsigned char	BYTE;
typedef unsigned char	UCHAR;
typedef unsigned int	UINT;
typedef int				BOOL;
typedef unsigned long	DWORD;

#define OP_BR		0x60000000		// BR instruction OP CODE


//#define NVSRAM_SRAM (nIndex) (*(UCHAR *)(0xC7A120+nIndex))	// 1M UCHAR 


//#define NVSRAM_RING_BUF_ADD ((UCHAR *)0xC7D000)


#define NVSRAM(nIndex) 	(*(UCHAR *)(0xC00000+nIndex))	// 1M UCHAR 

#define NVSRAM_ADD(nIndex)(0xC00000+nIndex)


#define NVSRAM_RING_BUF_ADD 0xC20800
#define Cluster_OneFile_ADD 0xC2335C

#define NVSRAM_Xr16788_debugBuf 0xC79540
#define NVSRAM_Xr16788_Buf1 0xC797A0 //608 Byte
#define NVSRAM_Xr16788_Buf2 0xC79A00 //608 Byte
#define NVSRAM_Xr16788_Buf3 0xC79C60 //608 Byte
#define NVSRAM_Xr16788_Buf4 0xC79EC0 //608 Byte


#define NVSRAM_SRAM_1 0xC7A120 //7000 // 7000 1B58
#define NVSRAM_SRAM_2 0xC7BC78 //7000  // C7BC78
#define NVSRAM_SRAM_3 0xC7D7D0 //7000  // C7D7D0
#define NVSRAM_SRAM_4 0xC7F328 //3288  // C7F328


//----------NASRAM----------------
//----------DATA       0xC00000 ~~ 0xC20800(130KB)
//----------Ring Buf     0xC20800 ~~ 0xC2335C(10KB)
//         ~~~~~~~~~~~~~~~~~~
//----------통신 버퍼     0xC797A0 ~~
//----------Disk Buf     0xC7A120 ~~ 0xC80000 


#define RING_BUF_SIZE 10

// Bus Control
#define PRIMBUSREG		*(int *)0x808064 // Primary BUS Register

// Interrupt Vector
#define RINT0_VECT      *(int *)0x809fc6        // Serial port0 receive INT
#define TINT0_VECT      *(int *)0x809fc9        // Timer0 INT
#define INT0_VECT       *(int *)0x809fc1        // External INT 0
#define INT1_VECT       *(int *)0x809fc2        // External INT 1
#define INT2_VECT       *(int *)0x809fc3        // External INT 2
#define INT3_VECT       *(int *)0x809fc4        // External INT 3
#define DMA_VECT        *(int *)0x809fcB        // DMA  vector address

// Timer Define
#define TMR0_CTRL       *(int *)0x808020        // Timer0 control register
#define TMR0_CNT        *(int *)0x808024        // Timer0 counter register
#define TMR0_PERD       *(int *)0x808028        // Timer0 period register


// Serial Define
#define SP_GLOBAL_CON   (*((int *)0x808040))    // Global control register
#define FSX_DX_CLKX_CON (*((int *)0x808042))    // FSX/DX/CLKX port control
#define FSR_DR_CLKR_CON (*((int *)0x808043))    // FSR/DR/CLKR port control
#define RX_TIMER_CON    (*((int *)0x808044))    // R/X timer control reg
#define RX_TIMER_CNT    (*((int *)0x808045))    // R/X timer counter
#define RX_TIMER_PRD    (*((int *)0x808046))    // R/X timer period register
#define S_TXD           (*((int *)0x808048))    // Data transmit register
#define S_RXD           (*((int *)0x80804c))    // Data receive register


// DMA Control
#define DMA_GCR		(*((int *)0x808000))    // DMA global control register
#define DMA_SRC		(*((int *)0x808004))    // DMA source address register
#define DMA_DST		(*((int *)0x808006))    // DMA destination address register
#define DMA_CNT		(*((int *)0x808008))    // DMA transfer counter register


// Interrupt Enable, Disable
#define DINT		asm("	AND	0DFFFh, ST	")
#define EINT		asm("	OR	02000h, ST	")

#define DIS_CACHE	asm("   AND	0F7FFh, ST	")
#define EN_CACHE	asm("   OR	00800h, ST	")

#define DI_INT0		asm("	AND	0FFFEh, IE	")
#define EI_INT0		asm("	OR	00001h, IE	")

#define DI_INT1		asm("	AND	0FFFDh, IE	")
#define EI_INT1		asm("	OR	00002h, IE	")

#define DI_INT2		asm("	AND	0FFFBh, IE	")
#define EI_INT2		asm("	OR	00004h, IE	")

#define DI_INT3		asm("	AND	0FFFEh, IE	")
#define EI_INT3		asm("	OR	00008h, IE	")

// Timer 0
#define DI_TINT0	asm(" AND       0FEFFh, IE ")
#define EI_TINT0	asm(" OR        00100h, IE ")

// Timer 1
#define DI_TINT1	asm(" AND       0FDFFh, IE ")
#define EI_TINT1	asm(" OR        00200h, IE ")



#define SIZE_512 512

#define IDC_FILE 0x01
#define SDD_FILE 0x02
#define FDD_FILE 0x03

#define TRUE		1
#define FALSE		0

#define SCC_A_CHANNEL 0
#define SCC_B_CHANNEL 1

#define DISPLAY_UNIT 10
#define PA_UNIT 16
#define LCDC 1


#define HI_NIBBLE(x) 	((BYTE)((x) >> 4))
#define LO_NIBBLE(x) 	((BYTE)((x) & 0x0f))

#define HI_BYTE(x)		((BYTE)(((x) >> 8) & 0xff))
#define LO_BYTE(x)		((BYTE)((x) & 0xff))

#define NULL 0

#define MAKE_DWORD(HH,HL,LH,LL)	((UINT)(((HH)<<24) | ((HL&0xff)<<16) | ((LH&0xff)<<8) | ((LL)&0xff)))
#define MAKE_UINT(H,L)	((UINT)((((H)&0xffff)<<16) | ((L)&0xffff)))
#define MAKE_WORD(H,L) (((H << 8) | (L & 0xff)) & 0xffff)
#define MAKE_BYTE(H,L) (((H << 4) | (L & 0x0f)) & 0xff)
#define DWORD_MASKING(HL) ((HL)&0xffffffff)

#define BYTE_H(HL) (((HL)>>4) & 0xf)
#define BYTE_L(HL) ((HL) & 0xf)

#define WORD_H(HL) (((HL)>>8) & 0x0ff)
#define WORD_L(HL) ((HL) & 0x0ff)

#define DWORD_H(HL) (((HL)>>16) & 0xffff)
#define DWORD_L(HL) ((HL) & 0xffff)

#define MIN(a,b) a < b ? a : b
#define MAX(a,b) a > b ? a : b

#define NOT !

#define MEMORY_RESIZE 150//가변 메모리를 우선 100으로 한시적으로 한다. //2012_11_09


#endif
