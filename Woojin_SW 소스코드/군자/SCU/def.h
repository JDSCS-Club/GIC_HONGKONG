#ifndef _DEF_H_
#define _DEF_H_

/*****************************************************************
	Define
*******************************************************************/

// type define
typedef unsigned short	WORD;
typedef unsigned short	USHORT;
typedef unsigned char	BYTE;
typedef unsigned char	UCHAR;
typedef unsigned int	UINT;
typedef char	BOOL;
typedef unsigned long	DWORD;

#define RomVer 160
#define HEXA2BIN(H) (((H)>>4)*10+((H)&0x0f))
#define BIN2HEXA(B)	((((B)/10)<<4)|((B)%10))

#define BCD2BIN(H)  HEXA2BIN(H)
#define BIN2BCD(B)  BIN2HEXA(B)

#define SWAPBYTE(x) (((x)&0x0f)<<4|((x)&0xf0)>>4)

#define TRUE		1
#define FALSE		0

#define HI_NIBBLE(x) 	((BYTE)((x) >> 4))
#define LO_NIBBLE(x) 	((BYTE)((x) & 0x0f))

#define HI_BYTE(x)		((BYTE)(((x) >> 8) & 0xff))
#define LO_BYTE(x)		((BYTE)((x) & 0xff))

//#define NULL 0

#define MAKE_DWORD(HH,HL,LH,LL)	((UINT)(((HH)<<24) | ((HL&0xff)<<16) | ((LH&0xff)<<8) | ((LL)&0xff)))
#define MAKE_UINT(H,L)	((UINT)((((H)&0xffff)<<16) | ((L)&0xffff)))
//#define MAKE_WORD(H,L) ((((USHORT)H << 8) | ((USHORT)L & 0xff)) & 0xffff)
#define MAKE_WORD(H,L) (((H << 8) | (L & 0xff)) & 0xffff)
#define MAKE_BYTE(H,L) (((H << 4) | (L & 0x0f)) & 0xff)

#define BYTE_H(HL) (((HL)>>4) & 0xf)
#define BYTE_L(HL) ((HL) & 0xf)

#define WORD_H(HL) (((HL)>>8) & 0x0ff)
#define WORD_L(HL) ((HL) & 0x0ff)

#define DWORD_H(HL) (((HL)>>16) & 0xffff)
#define DWORD_L(HL) ((HL) & 0xffff)

#define CDMA_DATA_LEN 166
//#define CDMA_SEND_LEN (12+20+2+(CDMA_DATA_LEN*2)) //12 = CDMA 전송 명령, 20 = 전송 프로토콜, 2 = NUL 명령 
#define CDMA_SEND_LEN 12+20+(176*2)+2
#define MIN(a,b) a < b ? a : b
#define MAX(a,b) a > b ? a : b
	
#define INSBIT(b,x) ((b)&1)<<(x)

#endif
