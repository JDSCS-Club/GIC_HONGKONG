
#define LDM_AB(D) (*(BYTE *)(0x210000)) = D
#define LDM_ADDR(A) ((*(BYTE *)(0x200000)) = A)
#define LDM_CTRL(C) (*(BYTE *)(0x220000)) = C
#define LDM_DATA_ADDR 0x230000
#define LDM_DATA (*(BYTE *)(LDM_DATA_ADDR))

#define LED_RED_GREEN(R) ((*(BYTE *)(0xB20000)) = R)	//스위치 LED 출력을 한다.
#define SW_INPUT (*((int *)0xB30000))						//스위치 값을 입력 받는다.

/***************************************************************
	(D0)OE, (D1)Latch
****************************************************************/
void LdmLatchClk()
{	
	/*switch(Line)
	{	
	case 0:
		LDM_CTRL(0x0a);
		LDM_CTRL(0x0b);
		LDM_CTRL(0x09);
		LDM_CTRL(0x0b);
		LDM_CTRL(0x0a);
		break;
	case 1:
		LDM_CTRL(0x0a);
		LDM_CTRL(0x0e);
		LDM_CTRL(0x06);
		LDM_CTRL(0x0e);
		LDM_CTRL(0x0a);
		break;
	}
	*/

	
	LDM_CTRL((0x0a));
	LDM_CTRL((0x0f));
	LDM_CTRL((0x05));
	LDM_CTRL((0x0f));
	LDM_CTRL((0x0a));
	
}