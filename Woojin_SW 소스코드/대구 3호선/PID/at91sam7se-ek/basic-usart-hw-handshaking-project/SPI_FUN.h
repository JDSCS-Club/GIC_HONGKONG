#ifndef SPI_FUN_H 
#define SPI_FUN_H


extern void ISR_Spi(void);
extern unsigned char AT26_ReadStatus(At26 *pAt26);
extern void AT26_WriteStatus(At26 *pAt26, unsigned char status);
extern void AT26_WaitReady(At26 *pAt26);
extern unsigned int AT26_ReadJedecId(At26 *pAt26);
extern void AT26_EnableWrite(At26 *pAt26);
extern unsigned char AT26_Unprotect(At26 *pAt26);
extern unsigned char AT26_EraseChip(At26 *pAt26);
extern unsigned char AT26_EraseBlock(At26 *pAt26, unsigned int address);
extern unsigned char AT26_Write(At26 *pAt26,unsigned char *pData,unsigned int size,unsigned int address);
extern void AT26_Read(At26 *pAt26,unsigned char *pData,unsigned int size,unsigned int address);
extern void SPI_Init(void);

#endif