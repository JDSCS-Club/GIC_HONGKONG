del *.out
del *.obj
c:\lang\tms320c3x\511\bin\asm30 -sl start.asm
c:\lang\tms320c3x\511\bin\cl30 -gks -mn -mm NorFlash.c
c:\lang\tms320c3x\511\bin\cl30 -gks -mn -mm z85c30.c
c:\lang\tms320c3x\511\bin\cl30 -gks -mn -mm Disk.c
c:\lang\tms320c3x\511\bin\cl30 -gks -mn -mm GpProface.c
c:\lang\tms320c3x\511\bin\cl30 -gks -mn -mm DataPro.c
c:\lang\tms320c3x\511\bin\cl30 -gks -mn -mm LED_DOWNLOAD.c
c:\lang\tms320c3x\511\bin\cl30 -gks -mn -mm Main.c
c:\lang\tms320c3x\511\bin\lnk30 -v0 main.cmd

