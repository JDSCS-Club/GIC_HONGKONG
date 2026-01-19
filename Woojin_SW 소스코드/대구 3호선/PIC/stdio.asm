;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Sun Sep 19 18:31:46 2010                                *
;******************************************************************************
	.regalias	; enable floating point register aliases
fp	.set	ar3
FP	.set	ar3
;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Optimization       : Always Choose Smaller Code Size                     *
;*   Memory             : Small Memory Model                                  *
;*   Float-to-Int       : Normal Conversions (round toward zero)              *
;*   Multiply           : in Hardware (24 bits max)                           *
;*   Memory Info        : Unmapped Memory Exists                              *
;*   Repeat Loops       : Use RPTS and/or RPTB                                *
;*   Calls              : Normal Library ASM calls                            *
;*   Debug Info         : Optimized TI Debug Information                      *
;******************************************************************************
;	c:\lang\tms320c3x\511\bin\ac30.exe stdio.c C:\Users\jds\AppData\Local\Temp\stdio.if 
	.file	"stdio.c"
	.file	"stdio.h"
	.sym	_size_t,0,14,13,32
	.stag	.fake0,224
	.member	_fd,0,4,8,32
	.member	_buf,32,28,8,32
	.member	_pos,64,28,8,32
	.member	_bufend,96,28,8,32
	.member	_buff_stop,128,28,8,32
	.member	_flags,160,14,8,32
	.member	_index,192,4,8,32
	.eos
	.sym	_FILE,0,8,13,224,.fake0
	.sym	_fpos_t,0,5,13,32
	.stag	.fake1,544
	.member	_name,0,50,8,288,,9
	.member	_flags,288,13,8,32
	.member	_OPEN,320,148,8,32
	.member	_CLOSE,352,148,8,32
	.member	_READ,384,148,8,32
	.member	_WRITE,416,148,8,32
	.member	_LSEEK,448,149,8,32
	.member	_UNLINK,480,148,8,32
	.member	_RENAME,512,148,8,32
	.eos
	.sym	__DEVICE,0,8,13,544,.fake1
