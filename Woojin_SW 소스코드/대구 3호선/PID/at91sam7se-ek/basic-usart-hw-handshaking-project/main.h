
#ifndef main_H 
#define main_H


#define TRUE		1
#define FALSE		0



typedef unsigned long	DWORD;
typedef unsigned int	UINT;
typedef unsigned char	UCHAR;

#define BitMask(bit)	(1 << (bit))

#define BitSet(val, bit)	((val) |= BitMask(bit))
#define BitClr(val, bit)	((val) &= ~BitMask(bit))
#define BitToggle(val, bit)	((val) ^= BitMask(bit))
#define BitTest(val, bit)	((val) & BitMask(bit))
#define BitGet(val, bit)	(BitTest(val, bit) >> (bit))

#define HI_NIBBLE(data) 	((UCHAR)((data) >> 4))
#define LO_NIBBLE(data) 	((UCHAR)((data) & 0x0f))

#define MAKE_DWORD(HH,HL,LH,LL)	((UINT)(((HH)<<24) | ((HL&0xff)<<16) | ((LH&0xff)<<8) | ((LL)&0xff)))
#define MAKE_WORD(H,L) (((H << 8) | (L & 0xff)) & 0xffff)
#define MAKE_BYTE(H,L) (((H << 4) | (L & 0x0f)) & 0xff)

#define WORD_L(L) (L&0xff)
#define WORD_H(H) ((H>>8)&0xff)
#define BYTE_H(HL) (((HL)>>4) & 0xf)
#define BYTE_L(HL) ((HL) & 0xf)

extern void ISR_Usart0(void);
extern void ISR_Tc0(void);
extern void ConfigureUsart0(void);
extern void ConfigureTc0(void);
extern void SW_TIMER(void);
extern unsigned char ChackHexa(void);
extern int ADD_CHECK(void);
extern void MODE_SET(void);

#endif