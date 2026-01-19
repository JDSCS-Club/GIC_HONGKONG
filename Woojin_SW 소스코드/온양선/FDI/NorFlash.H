#ifndef _NORFLASH_H_
#define _NORFLASH_H_

/***********************************************************

	Flash memory test (4Mbyte)
	
************************************************************/

#define NORFLASH_ADDR 0xc00000

void NorFlashAllErase();
int NorFlashBlockErase(DWORD nErsBlk);
void NorFlashWrite(DWORD nOffset, BYTE nDat);


/***********************************************************
	Nor Flash를 모두 지운다. (30초 소모)
************************************************************/
void NorFlashAllErase()
{
	(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0x80;
	(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0x10;
}

/***********************************************************
	Nor Flash를 Block으로 지운다.(64kbyte)
************************************************************/
int NorFlashBlockErase(DWORD nErsBlk)
{
	(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0x80;
	(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	(*(BYTE *)(NORFLASH_ADDR + (nErsBlk*0x10000))) = 0x30;
	
	return TRUE;
}

/***********************************************************
	Nor Flash에 데이터를 쓴다.
************************************************************/
void NorFlashWrite(DWORD nOffset, BYTE nDat)
{
	
		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
		(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xa0;
		(*(BYTE *)(NORFLASH_ADDR + nOffset)) = nDat;
	
	while(((*(BYTE *)(NORFLASH_ADDR + nOffset))&0xff) != nDat);
	
}

#endif
