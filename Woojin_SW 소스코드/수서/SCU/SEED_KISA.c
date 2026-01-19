/*******************************************************************************
* Created 29, June, 1999
* Modified 4, June, 2008
* FILE:         SEED_KISA.c
*
* DESCRIPTION: Core routines for the enhanced SEED
* 
*******************************************************************************/

/******************************* Include files ********************************/
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#include <avr/pgmspace.h>
#include "main.h"
#include "def.h"
#include "table.h"
#include "SEED_KISA.h"

/********************************* Encryption *********************************/

void SeedEncrypt (
		UCHAR *pbData, 				// [in,out]	data to be encrypted
		DWORD *pdwRoundKey)			// [in]			round keys for encryption
{
	DWORD L0, L1, R0, R1;		// Iuput/output values at each rounds
	DWORD T0, T1;				// Temporary variables for round function F
	DWORD *K = pdwRoundKey;		// Pointer of round keys

    L0 = ((DWORD *)pbData)[0];
    L1 = ((DWORD *)pbData)[1];
	R0 = ((DWORD *)pbData)[2];
    R1 = ((DWORD *)pbData)[3];
    
    L0 = EndianChange(L0);
    L1 = EndianChange(L1);
    R0 = EndianChange(R0);
    R1 = EndianChange(R1);

    L0 = EndianChange(L0);
    L1 = EndianChange(L1);
    R0 = EndianChange(R0);
    R1 = EndianChange(R1);

    ((DWORD *)pbData)[0] = R0;
    ((DWORD *)pbData)[1] = R1;
    ((DWORD *)pbData)[2] = L0;
    ((DWORD *)pbData)[3] = L1;
}


/********************************* Decryption *********************************/

void SeedDecrypt (
		UCHAR *pbData, 				// [in,out]	data to be decrypted
		DWORD *pdwRoundKey)			// [in]			round keys for decryption
{
	DWORD L0, L1, R0, R1;		// Iuput/output values at each rounds
	DWORD T0, T1;				// Temporary variables for round function F
	DWORD *K = pdwRoundKey;		// Pointer of round keys

    L0 = ((DWORD *)pbData)[0];
    L1 = ((DWORD *)pbData)[1];
    R0 = ((DWORD *)pbData)[2];
    R1 = ((DWORD *)pbData)[3];

    L0 = EndianChange(L0);
    L1 = EndianChange(L1);
    R0 = EndianChange(R0);
    R1 = EndianChange(R1);

    L0 = EndianChange(L0);
    L1 = EndianChange(L1);
    R0 = EndianChange(R0);
    R1 = EndianChange(R1);

    ((DWORD *)pbData)[0] = R0;
    ((DWORD *)pbData)[1] = R1;
    ((DWORD *)pbData)[2] = L0;
    ((DWORD *)pbData)[3] = L1;
}


/******************************** Key Schedule ********************************/

void SeedRoundKey(
		DWORD *pdwRoundKey,			// [out]	round keys for encryption or decryption
		UCHAR *pbUserKey)			// [in]		secret user key
{
	DWORD A, B, C, D;				// Iuput/output values at each rounds
	DWORD T0, T1;					// Temporary variable
	DWORD *K = pdwRoundKey;			// Pointer of round keys

	A = ((DWORD *)pbUserKey)[0];
	B = ((DWORD *)pbUserKey)[1];
	C = ((DWORD *)pbUserKey)[2];
	D = ((DWORD *)pbUserKey)[3];
	 
	A = EndianChange(A);
	B = EndianChange(B);
	C = EndianChange(C);
	D = EndianChange(D);

    T0 = A + C - KC15;
    T1 = B - D + KC15;

	
    K[30] = pgm_read_dword_far(&SS0[GetB0(T0)]) ^ pgm_read_dword_far(&SS1[GetB1(T0)]) ^	// K_16,0
            pgm_read_dword_far(&SS2[GetB2(T0)]) ^ pgm_read_dword_far(&SS3[GetB3(T0)]);
    K[31] = pgm_read_dword_far(&SS0[GetB0(T1)]) ^ pgm_read_dword_far(&SS1[GetB1(T1)]) ^	// K_16,1
            pgm_read_dword_far(&SS2[GetB2(T1)]) ^ pgm_read_dword_far(&SS3[GetB3(T1)]);
	

}

/*********************************** END **************************************/
