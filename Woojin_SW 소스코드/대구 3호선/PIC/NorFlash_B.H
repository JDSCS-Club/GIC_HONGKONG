#ifndef _NORFLASH_B_H_
#define _NORFLASH_B_H_

/***********************************************************

	Flash memory test (4Mbit)
	512KBYTE
	
************************************************************/

#define NORFLASH_ADDR_B 0x400000	//512

void NorFlashAllErase_B();
int NorFlashBlockErase_B(DWORD nErsBlk);
void NorFlashWrite_B(DWORD nOffset, BYTE nDat);


/***********************************************************
	Nor Flash를 모두 지운다. (30초 소모)
************************************************************/
void NorFlashAllErase_B()
{
	(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0xaa;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x0002aa)) = 0x55;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0x80;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0xaa;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x0002aa)) = 0x55;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0x10;
}

/***********************************************************
	Nor Flash를 Block으로 지운다.(64kbyte)
************************************************************/
int NorFlashBlockErase_B(DWORD nErsBlk)
{
	(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0xaa;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x0002aa)) = 0x55;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0x80;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0xaa;
	(*(BYTE *)(NORFLASH_ADDR_B + 0x0002aa)) = 0x55;
	(*(BYTE *)(NORFLASH_ADDR_B + (nErsBlk*0x10000))) = 0x30;
	
	return TRUE;
}

/***********************************************************
	Nor Flash에 데이터를 쓴다.
************************************************************/
void NorFlashWrite_B(DWORD nOffset, BYTE nDat)
{
	
		(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0xaa;
		(*(BYTE *)(NORFLASH_ADDR_B + 0x0002aa)) = 0x55;
		(*(BYTE *)(NORFLASH_ADDR_B + 0x000555)) = 0xa0;
		(*(BYTE *)(NORFLASH_ADDR_B + nOffset)) = nDat;

		while(((*(BYTE *)(NORFLASH_ADDR_B + nOffset))&0xff) != nDat);
	
}

#endif
