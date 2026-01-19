
#define LDM_ADDR(A) ((*(BYTE *)(0x200000)) = A)
#define LDM_AB(D) (*(BYTE *)(0x210000)) = D
#define LDM_CTRL(C) (*(BYTE *)(0x220000)) = C
#define LDM_DATA_ADDR 0x230000
#define LDM_UD_DATA_ADDR 0x240000




/***************************************************************
	(D0)OE, (D1)Latch
****************************************************************/
void LdmLatchClk(int Line)
{	
	Line *= 2;
	LDM_CTRL((0x00)<<Line);
	LDM_CTRL((0x01)<<Line);
	LDM_CTRL((0x03)<<Line);
	LDM_CTRL((0x01)<<Line);
	LDM_CTRL((0x00)<<Line);
	/*
	
	switch(Line)
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
	
	
		LDM_CTRL(0xAA);
		LDM_CTRL(0xFF);
		LDM_CTRL(0x55);
		LDM_CTRL(0xFF);
		LDM_CTRL(0xAA);

	/*
	LDM_CTRL((0x0a));
	LDM_CTRL((0x0f));
	LDM_CTRL((0x05));
	LDM_CTRL((0x0f));
	LDM_CTRL((0x0a));
	*/
}