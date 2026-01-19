#ifndef _NORFLASH_H_
#define _NORFLASH_H_

#define NORFLASH_ADDR 0x900000	//126

int NorFlashAllErase();
int NorFlashBlockErase(DWORD nErsBlk);
void NorFlashWrite(DWORD nOffset, UCHAR nDat);


#endif
