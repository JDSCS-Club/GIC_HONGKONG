#include "All_def.h"
#include "NorFlash.h"

/***********************************************************
	Flash memory test
	126KBYTE
************************************************************/

/***********************************************************
	Nor Flash를 모두 지운다. (30초 소모)
************************************************************/
int NorFlashAllErase()
{
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;
	(*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0x80;
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;
	(*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0x10;
	return TRUE;
}

/***********************************************************
	Nor Flash를 Block으로 지운다.(64kbyte)
************************************************************/
int NorFlashBlockErase(DWORD nErsBlk)
{
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;
	(*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0x80;
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;
	(*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;
	(*(UCHAR *)(NORFLASH_ADDR + (nErsBlk*0x10000))) = 0x30;
	
	return TRUE;
}

/***********************************************************
	Nor Flash에 데이터를 쓴다.
************************************************************/
void NorFlashWrite(DWORD nOffset, UCHAR nDat)
{
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;
	(*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;
	(*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xa0;
	(*(UCHAR *)(NORFLASH_ADDR + (nOffset))) = WORD_L(nDat);

	while(((*(UCHAR *)(NORFLASH_ADDR + (nOffset)))&0xff) != WORD_L(nDat));
}