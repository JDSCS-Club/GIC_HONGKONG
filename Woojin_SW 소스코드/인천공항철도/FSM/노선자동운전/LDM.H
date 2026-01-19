
#define LDM_AB(D) (*(BYTE *)(0x210000)) = D
#define LDM_ADDR(A) (*(BYTE *)(0x200000)) = A
#define LDM_CTRL(C) (*(BYTE *)(0x220000)) = C
#define LDM_DATA_ADDR 0x230000
#define LDM_DATA (*(BYTE *)(LDM_DATA_ADDR))

#define LED_RED_GREEN(R) ((*(BYTE *)(0xB20000)) = R)	//스위치 LED 출력을 한다.
#define SW_INPUT (*((int *)0xB30000))						//스위치 값을 입력 받는다.

/***************************************************************
	초기화
****************************************************************/
void LdmInit()
{
	LDM_CTRL(0xFF); // OE -> High, LT -> High
}

/***************************************************************
	OE->High->Low, Latch->High
****************************************************************/
void LdmLatchClk(int Line)
{	
	int i=0;
	Line *= 2;
	
	
	/*LDM_CTRL((0x02)<<Line);
	LDM_CTRL((0x03)<<Line);
	LDM_CTRL((0x01)<<Line);
	LDM_CTRL((0x03)<<Line);
	LDM_CTRL((0x02)<<Line);
	*/
	LDM_CTRL(0x0A);
	for(i=0;i<100;i++){}
	
	LDM_CTRL(0x0F);
	for(i=0;i<100;i++){}
	
	LDM_CTRL(0x05);
	for(i=0;i<100;i++){}
	
	LDM_CTRL(0x0F);
	for(i=0;i<100;i++){}
	
	LDM_CTRL(0x0A);

	
	
	
}