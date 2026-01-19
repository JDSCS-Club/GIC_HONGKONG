/***********************************************************************************
	By Yeon Jun Sang
************************************************************************************/

#ifndef _WMPU860_H_
#define _WMPU860_H_

#define	BOOTFLASH_BASE_ADDRESS 0xFFC00000
#define SECFLASH_BASE_ADDRESS 0xFA000000

#define BOOTFLASH 0
#define TE28FXXX 1
#define AM29F040 2

/**************************************************************************************
	ÇÔ¼ö Prototype
***************************************************************************************/
int RomAutoProgram(const char fn[]);
int RomAutoProgram2(const char fn[],int nDev);
BOOL IsFlashMem(UINT nAddr,int nDev);
int makeFlashBoot(const char fn[]);
int makeFlashBoot2(const char fn[],int nDev);

#endif