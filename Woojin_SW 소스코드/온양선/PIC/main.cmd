/****************************************************************/
/* C31 Linker Command File										*/
/****************************************************************/

	/********************************/
	/*	Specify the Input Files	*/
	/********************************/

	start.obj
	debug3x.obj
	en29lv040.obj
	xr16788.obj
	PA_Pro.obj
	user.obj
	saf82532.obj
	gpproface.obj
	Disk.obj
	LED_DOWNLOAD.obj
	main.obj

	/********************************/
	/*	Specify Linker Options	*/
	/********************************/
	
	-o main.out
	-m main.map
	-c
	-stack	0x1000
	-l rts30.lib

			     
	/****************************************/
	/* Specify the Memory Configuration	*/
	/****************************************/

	MEMORY
	{
		ROM   : origin = 0000000h   length = 0004000h
		IRAM0  : origin = 0800000h   length = 0008000h
		/*IRAM1  : origin = 0809800h   length = 0000400h*/
		IRAM1  : origin = 0809810h   length = 00007b0h
    }

	/************************************/
	/*	Specify the Output Sections		*/
	/************************************/

	SECTIONS {
		
		.text : { start.obj(.text) }	> IRAM0
		.text : { main.obj(.text) }	> IRAM0

		.cinit : { } > IRAM1
		.const : { } > IRAM0
		.data  : { } > IRAM0
		.stack : { } > IRAM0
		.bss   : { } > IRAM0

        }

/****************************/
/*	End of Command File		*/
/****************************/
