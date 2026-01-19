#ifndef _EN29LV040_H_
#define _EN29LV040_H_

#define EN29LV040_BASE 0x400000

/***********************************************************************************
	Function
************************************************************************************/
void en29_Init();
UCHAR en29_AllErase();
UCHAR en29_SectorErase(UINT nAddr);
void en29_WriteByte(UINT nAddr,UCHAR nDat);
UCHAR en29_ReadByte(UINT nAddr);

#endif