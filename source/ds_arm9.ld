
/* NOTE!!!: This linker script defines the RAM &  */
/*   ROM start addresses. In order for it to work */
/*   properly, remove -Ttext and -Tbss linker     */
/*   options from your makefile if they are       */
/*   present.                                     */

/* You can use the following to view section      */
/* addresses in your .elf file:                   */
/*   objdump -h file.elf                          */
/* Please note that empty sections may incorrectly*/
/* list the lma address as the vma address for    */
/* some versions of objdump.                      */

OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(_start)
/* SEARCH_DIR(/bin/arm); */

/* The linker script function "var1 += var2;" sometimes    */
/* reports incorrect values in the *.map file but the      */
/* actual value it calculates is usually, if not always,   */
/* correct. If you leave out the ". = ALIGN(4);" at the    */
/* end of each section then the return value of SIZEOF()   */
/* is sometimes incorrect and "var1 += var2;" appears to   */
/* not work as well. "var1 += var2" style functions are    */
/* avoided below as a result.                              */

MEMORY {

	mainram	: ORIGIN = 0x02000000, LENGTH = 8M
	itcm	: ORIGIN = 0x01ff8000, LENGTH = 32K
	dtcm	: ORIGIN = 0x027e0000, LENGTH = 16K
	iwram_21d0d80 : ORIGIN = 0x021d0d80, LENGTH = 8M
	iwram_21d0dc0 : ORIGIN = 0x021d0dc0, LENGTH = 8M
	iwram_221f800 : ORIGIN = 0x0221f800, LENGTH = 8M
	iwram_221fc20 : ORIGIN = 0x0221fc20, LENGTH = 8M
	iwram_222ae60 : ORIGIN = 0x0222ae60, LENGTH = 8M
	iwram_222dce0 : ORIGIN = 0x0222dce0, LENGTH = 8M
	iwram_222f2c0 : ORIGIN = 0x0222f2c0, LENGTH = 8M
	iwram_223b140 : ORIGIN = 0x0223b140, LENGTH = 8M
	iwram_223b5a0 : ORIGIN = 0x0223b5a0, LENGTH = 8M
	iwram_223d7a0 : ORIGIN = 0x0223d7a0, LENGTH = 8M
	iwram_223e140 : ORIGIN = 0x0223e140, LENGTH = 8M
	iwram_2241440 : ORIGIN = 0x02241440, LENGTH = 8M
	iwram_2241ae0 : ORIGIN = 0x02241ae0, LENGTH = 8M
	iwram_2246c20 : ORIGIN = 0x02246c20, LENGTH = 8M
	iwram_2249960 : ORIGIN = 0x02249960, LENGTH = 8M
	iwram_2253ce0 : ORIGIN = 0x02253ce0, LENGTH = 8M
	iwram_2254de0 : ORIGIN = 0x02254de0, LENGTH = 8M
	iwram_22561c0 : ORIGIN = 0x022561c0, LENGTH = 8M
	iwram_225c700 : ORIGIN = 0x0225c700, LENGTH = 8M
	iwram_2260440 : ORIGIN = 0x02260440, LENGTH = 8M
}

__mainram_start = ORIGIN(mainram);
__mainram_top = ORIGIN(mainram) + LENGTH(mainram);;
__itcm_start	=	ORIGIN(itcm);
__itcm_top	=	ORIGIN(itcm) + LENGTH(itcm);;
__dtcm_start	=	ORIGIN(dtcm);
__dtcm_top	=	ORIGIN(dtcm) + LENGTH(dtcm);;
__iwram_21d0d80_start	=	ORIGIN(iwram_21d0d80);
__iwram_21d0d80_top	=	ORIGIN(iwram_21d0d80) + LENGTH(iwram_21d0d80);;
__iwram_21d0dc0_start	=	ORIGIN(iwram_21d0dc0);
__iwram_21d0dc0_top	=	ORIGIN(iwram_21d0dc0) + LENGTH(iwram_21d0dc0);;
__iwram_221f800_start	=	ORIGIN(iwram_221f800);
__iwram_221f800_top	=	ORIGIN(iwram_221f800) + LENGTH(iwram_221f800);;
__iwram_221fc20_start	=	ORIGIN(iwram_221fc20);
__iwram_221fc20_top	=	ORIGIN(iwram_221fc20) + LENGTH(iwram_221fc20);;
__iwram_222ae60_start	=	ORIGIN(iwram_222ae60);
__iwram_222ae60_top	=	ORIGIN(iwram_222ae60) + LENGTH(iwram_222ae60);;
__iwram_222dce0_start	=	ORIGIN(iwram_222dce0);
__iwram_222dce0_top	=	ORIGIN(iwram_222dce0) + LENGTH(iwram_222dce0);;
__iwram_222f2c0_start	=	ORIGIN(iwram_222f2c0);
__iwram_222f2c0_top	=	ORIGIN(iwram_222f2c0) + LENGTH(iwram_222f2c0);;
__iwram_223b140_start	=	ORIGIN(iwram_223b140);
__iwram_223b140_top	=	ORIGIN(iwram_223b140) + LENGTH(iwram_223b140);;
__iwram_223b5a0_start	=	ORIGIN(iwram_223b5a0);
__iwram_223b5a0_top	=	ORIGIN(iwram_223b5a0) + LENGTH(iwram_223b5a0);;
__iwram_223d7a0_start	=	ORIGIN(iwram_223d7a0);
__iwram_223d7a0_top	=	ORIGIN(iwram_223d7a0) + LENGTH(iwram_223d7a0);;
__iwram_223e140_start	=	ORIGIN(iwram_223e140);
__iwram_223e140_top	=	ORIGIN(iwram_223e140) + LENGTH(iwram_223e140);;
__iwram_2241440_start	=	ORIGIN(iwram_2241440);
__iwram_2241440_top	=	ORIGIN(iwram_2241440) + LENGTH(iwram_2241440);;
__iwram_2241ae0_start	=	ORIGIN(iwram_2241ae0);
__iwram_2241ae0_top	=	ORIGIN(iwram_2241ae0) + LENGTH(iwram_2241ae0);;
__iwram_2246c20_start	=	ORIGIN(iwram_2246c20);
__iwram_2246c20_top	=	ORIGIN(iwram_2246c20) + LENGTH(iwram_2246c20);;
__iwram_2249960_start	=	ORIGIN(iwram_2249960);
__iwram_2249960_top	=	ORIGIN(iwram_2249960) + LENGTH(iwram_2249960);;
__iwram_2254de0_start	=	ORIGIN(iwram_2254de0);
__iwram_2254de0_top	=	ORIGIN(iwram_2254de0) + LENGTH(iwram_2254de0);;
__iwram_22561c0_start	=	ORIGIN(iwram_22561c0);
__iwram_22561c0_top	=	ORIGIN(iwram_22561c0) + LENGTH(iwram_22561c0);;
__iwram_2253ce0_start	=	ORIGIN(iwram_2253ce0);
__iwram_2253ce0_top	=	ORIGIN(iwram_2253ce0) + LENGTH(iwram_2253ce0);;
__iwram_225c700_start	=	ORIGIN(iwram_225c700);
__iwram_225c700_top	=	ORIGIN(iwram_225c700) + LENGTH(iwram_225c700);;
__iwram_2260440_start	=	ORIGIN(iwram_2260440);
__iwram_2260440_top	=	ORIGIN(iwram_2260440) + LENGTH(iwram_2260440);;
__sp_irq	=	__mainram_top - 0x060;
__sp_usr	=	__sp_irq - 0x0a0;
__irq_flags	=	0x03007ff8;
__irg_handler = 0x01ff8000;

SECTIONS
{
    __mainram_lma = 0x4000;
	.mainram __mainram_start : AT (__mainram_lma) /* virtual memory area | loaded memory area*/
	{
		*(.mainram)
		/*. = ALIGN(4);   REQUIRED. LD is flaky without it. */
		__mainram_end = ABSOLUTE(.);
	}>mainram = 0xff

	__irg_handler_lma = __mainram_lma + SIZEOF(.mainram);
	.itcm __irg_handler : AT (__irg_handler_lma)
	{
		__itcm_start = ABSOLUTE(.);
		*(.itcm)
		/*. = ALIGN(4);   REQUIRED. LD is flaky without it. */
		__itcm_end = ABSOLUTE(.);
	}>itcm = 0xff
	__itcm_size = SIZEOF(.itcm);

	__itcm_bss_start = ADDR(.itcm) + SIZEOF(.itcm);
	.itcm_bss (__itcm_bss_start) (NOLOAD) :
	{
		*(.itcm_bss)
		build/arm9.o (.itcm_bss)
		__itcm_bss_end = ABSOLUTE(.);
	}>itcm = 0xff
	__itcm_bss_size = SIZEOF(.itcm_bss);

	__dtcm_start_lma = LOADADDR(.itcm) + SIZEOF(.itcm);
	.dtcm (__dtcm_start) : AT (__dtcm_start_lma)
	{
		*(.dtcm)
		build/arm9.o (.dtcm)
		__dtcm_end = ABSOLUTE(.);
	}>dtcm = 0xff
	__dtcm_size = SIZEOF(.dtcm);

	__dtcm_bss_start = ADDR(.dtcm) + SIZEOF(.dtcm);
	.dtcm_bss (__dtcm_bss_start) (NOLOAD) :
	{
		*(.dtcm_bss)
		build/arm9.o (.dtcm_bss)
		__dtcm_bss_end = ABSOLUTE(.);
	}>dtcm = 0xff
	__dtcm_bss_size = SIZEOF(.dtcm_bss);

	__dtcm_bss2_start = ADDR(.dtcm_bss) + SIZEOF(.dtcm_bss);
	.dtcm_bss2 (__dtcm_bss2_start) (NOLOAD) :
	{
		*(.dtcm_bss2)
		build/arm9.o (.dtcm_bss2)
		__dtcm_bss2_end = ABSOLUTE(.);
	}>dtcm = 0xff
	__dtcm_bss2_size = SIZEOF(.dtcm_bss2);


	__mainram2_start = __mainram_start + SIZEOF(.mainram) + SIZEOF(.itcm) + SIZEOF(.dtcm);
	__mainram2_start_lma = LOADADDR(.dtcm) + SIZEOF(.dtcm);
	.mainram2 __mainram2_start : AT (__mainram2_start_lma)
	{
		*(.mainram2)
		/*. = ALIGN(4);   REQUIRED. LD is flaky without it. */
		__mainram2_end = ABSOLUTE(.);
	}>mainram = 0xff

	__mainram3_start = __mainram2_start + SIZEOF(.mainram2);
	__mainram3_start_lma = LOADADDR(.mainram2) + SIZEOF(.mainram2);
	.mainram3 __mainram3_start : AT (__mainram3_start_lma)
	{
		*(.mainram3)
		__mainram3_end = ABSOLUTE(.);
	}>mainram = 0xff

	__y9_start = __mainram3_start + SIZEOF(.mainram3);
	__y9_start_lma = LOADADDR(.mainram3) + SIZEOF(.mainram3);
	.y9 __y9_start : AT (__y9_start_lma)
	{
		*(.y9)
		__y9_end = ABSOLUTE(.);
	}>mainram = 0xff
    
    
	__iwram_overlay_lma = LOADADDR(.y9) + SIZEOF(.y9);

	__iwram_overlay_start = . ;
    

    temp0 = __iwram_overlay_lma;
	.overlay0 __iwram_21d0d80_start : AT (temp0) {
		*(.overlay0)
		build/overlay_0000.o (.text)
		. = ALIGN(4);
	} > iwram_21d0d80 = 0xff
	__load_start_overlay0 = ADDR (.overlay0);
	__load_stop_overlay0 = LOADADDR (.overlay0) + SIZEOF (.overlay0);
	__load_size_overlay0 = SIZEOF (.overlay0);

	__overlay0_bss_start = ADDR(.overlay0) + SIZEOF(.overlay0);
	.overlay0_bss (__overlay0_bss_start) (NOLOAD) :
	{
		*(.overlay0_bss)
		build/overlay_0000.o (.bss)
		__overlay0_bss_end = ABSOLUTE(.);
	}>iwram_21d0d80 = 0xff
	__overlay0_bss_size = SIZEOF(.overlay0_bss);

    temp1 = temp0 + SIZEOF (.overlay0) + (((__load_stop_overlay0 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_overlay0));
	.overlay1 __iwram_21d0d80_start : AT (temp1) { *(.overlay1) build/overlay_0001.o (.text) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_overlay1 = ADDR (.overlay1);
	__load_stop_overlay1 = LOADADDR (.overlay1) + SIZEOF (.overlay1);
	__load_size_overlay1 = SIZEOF (.overlay1);

	__overlay1_bss_start = ADDR(.overlay1) + SIZEOF(.overlay1);
	.overlay1_bss (__overlay1_bss_start) (NOLOAD) :
	{
		*(.overlay1_bss)
		build/overlay_0001.o (.bss)
		__overlay1_bss_end = ABSOLUTE(.);
	}>iwram_21d0d80 = 0xff
	__overlay1_bss_size = SIZEOF(.overlay1_bss);

    temp2 = temp1 + SIZEOF (.overlay1) + (((__load_stop_overlay1 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_overlay1));
	.overlay2 __iwram_21d0dc0_start : AT (temp2) { *(.overlay2) build/overlay_0002.o (.text) . = ALIGN(4); } > iwram_21d0dc0 = 0xff
	__load_start_overlay2 = ADDR (.overlay2);
	__load_stop_overlay2 = LOADADDR (.overlay2) + SIZEOF (.overlay2);
	__load_size_overlay2 = SIZEOF (.overlay2);

	__overlay2_bss_start = ADDR(.overlay2) + SIZEOF(.overlay2);
	.overlay2_bss (__overlay2_bss_start) (NOLOAD) :
	{
		*(.overlay2_bss)
		build/overlay_0002.o (.bss)
		__overlay2_bss_end = ABSOLUTE(.);
	}>iwram_21d0dc0 = 0xff
	__overlay2_bss_size = SIZEOF(.overlay2_bss);

	__itcm_1ff8660_start = __itcm_end;
    temp3 = temp2 + SIZEOF (.overlay2) + (((__load_stop_overlay2 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_overlay2));
	.iwram3 __itcm_1ff8660_start : AT (temp3) { *(.iwram3) build/overlay_0003.o (.text) . = ALIGN(4); } > itcm = 0xff
	__load_start_overlay3 = ADDR (.iwram3);
	__load_stop_iwram3 = LOADADDR (.iwram3) + SIZEOF (.iwram3);
	__load_size_overlay3 = SIZEOF (.iwram3);

    temp4 = temp3 + SIZEOF (.iwram3) + (((__load_stop_iwram3 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram3));
	.iwram4 __iwram_21d0d80_start : AT (temp4) { *(.iwram4) build/overlay_0004.o (.text) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_overlay4 = ADDR (.iwram4);
	__load_stop_iwram4 = LOADADDR (.iwram4) + SIZEOF (.iwram4);
	__load_size_overlay4 = SIZEOF (.iwram4);
    
    temp5 = temp4 + SIZEOF (.iwram4) + (((__load_stop_iwram4 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram4));
	.overlay5 __iwram_21d0d80_start : AT (temp5) { *(.overlay5) build/overlay_0005.o (.text) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_overlay5 = ADDR (.overlay5);
	__load_stop_iwram5 = LOADADDR (.overlay5) + SIZEOF (.overlay5);
	__load_size_overlay5 = SIZEOF (.overlay5);

	__overlay5_bss_start = ADDR(.overlay5) + SIZEOF(.overlay5);
	.overlay5_bss (__overlay5_bss_start) (NOLOAD) :
	{
		*(.overlay5_bss)
		build/overlay_0005.o (.bss)
		__overlay5_bss_end = ABSOLUTE(.);
	}>iwram_21d0d80 = 0xff
	__overlay5_bss_size = SIZEOF(.overlay5_bss);
    
    temp6 = temp5 + SIZEOF (.overlay5) + (((__load_stop_iwram5 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram5));
	.iwram6 __iwram_223e140_start : AT (temp6) { *(.iwram6) build/overlay_0006.o (.text) . = ALIGN(4); } > iwram_223e140 = 0xff
	__load_start_overlay6 = ADDR (.iwram6);
	__load_stop_iwram6 = LOADADDR (.iwram6) + SIZEOF (.iwram6);
	__load_size_overlay6 = SIZEOF (.iwram6);
    
    temp7 = temp6 + SIZEOF (.iwram6) + (((__load_stop_iwram6 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram6));
	.iwram7 __iwram_2249960_start : AT (temp7) { *(.iwram7) build/overlay_0007.o (.text) . = ALIGN(4); } > iwram_2249960 = 0xff
	__load_start_overlay7 = ADDR (.iwram7);
	__load_stop_iwram7 = LOADADDR (.iwram7) + SIZEOF (.iwram7);
	__load_size_overlay7 = SIZEOF (.iwram7);
    
    temp8 = temp7 + SIZEOF (.iwram7) + (((__load_stop_iwram7 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram7));
	.iwram8 __iwram_2249960_start : AT (temp8) { *(.iwram8) build/overlay_0008.o (.text) . = ALIGN(4); } > iwram_2249960 = 0xff
	__load_start_overlay8 = ADDR (.iwram8);
	__load_stop_iwram8 = LOADADDR (.iwram8) + SIZEOF (.iwram8);
	__load_size_overlay8 = SIZEOF (.iwram8);
    
    temp9 = temp8 + SIZEOF (.iwram8) + (((__load_stop_iwram8 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram8));
	.iwram9 __iwram_2249960_start : AT (temp9) { *(.iwram9) build/overlay_0009.o (.text) . = ALIGN(4); } > iwram_2249960 = 0xff
	__load_start_overlay9 = ADDR (.iwram9);
	__load_stop_iwram9 = LOADADDR (.iwram9) + SIZEOF (.iwram9);
	__load_size_overlay9 = SIZEOF (.iwram9);
    
    temp10 = temp9 + SIZEOF (.iwram9) + (((__load_stop_iwram9 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram9));
	.iwram10 __iwram_221f800_start : AT (temp10) { *(.iwram10) . = ALIGN(4); } > iwram_221f800 = 0xff
	__load_start_overlay10 = ADDR (.iwram10);
	__load_stop_iwram10 = LOADADDR (.iwram10) + SIZEOF (.iwram10);
	__load_size_overlay10 = SIZEOF (.iwram10);
    
    temp11 = temp10 + SIZEOF (.iwram10) + (((__load_stop_iwram10 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram10));
	.iwram11 __iwram_221f800_start : AT (temp11) { *(.iwram11) . = ALIGN(4); } > iwram_221f800 = 0xff
	__load_start_overlay11 = ADDR (.iwram11);
	__load_stop_iwram11 = LOADADDR (.iwram11) + SIZEOF (.iwram11);
	__load_size_overlay11 = SIZEOF (.iwram11);
    
    temp12 = temp11 + SIZEOF (.iwram11) + (((__load_stop_iwram11 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram11));
	.iwram12 __iwram_221fc20_start : AT (temp12) { *(.iwram12) . = ALIGN(4); } > iwram_221fc20 = 0xff
	__load_start_overlay12 = ADDR (.iwram12);
	__load_stop_iwram12 = LOADADDR (.iwram12) + SIZEOF (.iwram12);
	__load_size_overlay12 = SIZEOF (.iwram12);
    
    temp13 = temp12 + SIZEOF (.iwram12) + (((__load_stop_iwram12 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram12));
	.iwram13 __iwram_221fc20_start : AT (temp13) { *(.iwram13) . = ALIGN(4); } > iwram_221fc20 = 0xff
	__load_start_overlay13 = ADDR (.iwram13);
	__load_stop_iwram13 = LOADADDR (.iwram13) + SIZEOF (.iwram13);
	__load_size_overlay13 = SIZEOF (.iwram13);
    
    temp14 = temp13 + SIZEOF (.iwram13) + (((__load_stop_iwram13 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram13));
	.iwram14 __iwram_221fc20_start : AT (temp14) { *(.iwram14) . = ALIGN(4); } > iwram_221fc20 = 0xff
	__load_start_overlay14 = ADDR (.iwram14);
	__load_stop_iwram14 = LOADADDR (.iwram14) + SIZEOF (.iwram14);
	__load_size_overlay14 = SIZEOF (.iwram14);
    
    temp15 = temp14 + SIZEOF (.iwram14) + (((__load_stop_iwram14 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram14));
	.iwram15 __iwram_21d0d80_start : AT (temp15) { *(.iwram15) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_overlay15 = ADDR (.iwram15);
	__load_stop_iwram15 = LOADADDR (.iwram15) + SIZEOF (.iwram15);
	__load_size_overlay15 = SIZEOF (.iwram15);
    
    temp16 = temp15 + SIZEOF (.iwram15) + (((__load_stop_iwram15 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram15));
	.iwram16 __iwram_223b140_start : AT (temp16) { *(.iwram16) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_overlay16 = ADDR (.iwram16);
	__load_stop_iwram16 = LOADADDR (.iwram16) + SIZEOF (.iwram16);
	__load_size_overlay16 = SIZEOF (.iwram16);
    
    temp17 = temp16 + SIZEOF (.iwram16) + (((__load_stop_iwram16 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram16));
	.iwram17 __iwram_223b140_start : AT (temp17) { *(.iwram17) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_overlay17 = ADDR (.iwram17);
	__load_stop_iwram17 = LOADADDR (.iwram17) + SIZEOF (.iwram17);
	__load_size_overlay17 = SIZEOF (.iwram17);
    
    temp18 = temp17 + SIZEOF (.iwram17) + (((__load_stop_iwram17 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram17));
	.iwram18 __iwram_221f800_start : AT (temp18) { *(.iwram18) . = ALIGN(4); } > iwram_221f800 = 0xff
	__load_start_overlay18 = ADDR (.iwram18);
	__load_stop_iwram18 = LOADADDR (.iwram18) + SIZEOF (.iwram18);
	__load_size_overlay18 = SIZEOF (.iwram18);
    
    temp19 = temp18 + SIZEOF (.iwram18) + (((__load_stop_iwram18 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram18));
	.iwram19 __iwram_21d0d80_start : AT (temp19) { *(.iwram19) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_overlay19 = ADDR (.iwram19);
	__load_stop_iwram19 = LOADADDR (.iwram19) + SIZEOF (.iwram19);
	__load_size_overlay19 = SIZEOF (.iwram19);
    
    temp20 = temp19 + SIZEOF (.iwram19) + (((__load_stop_iwram19 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram19));
	.iwram20 __iwram_21d0d80_start : AT (temp20) { *(.iwram20) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_overlay20 = ADDR (.iwram20);
	__load_stop_iwram20 = LOADADDR (.iwram20) + SIZEOF (.iwram20);
	__load_size_overlay20 = SIZEOF (.iwram20);
    
    temp21 = temp20 + SIZEOF (.iwram20) + (((__load_stop_iwram20 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram20));
	.iwram21 __iwram_21d0d80_start : AT (temp21) { *(.iwram21) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram21 = LOADADDR (.iwram21);
	__load_stop_iwram21 = LOADADDR (.iwram21) + SIZEOF (.iwram21);
	__load_size_overlay21 = SIZEOF (.iwram21);
    
    temp22 = temp21 + SIZEOF (.iwram21) + (((__load_stop_iwram21 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram21));
	.iwram22 __iwram_2254de0_start : AT (temp22) { *(.iwram22) . = ALIGN(4); } > iwram_2254de0 = 0xff
	__load_start_iwram22 = LOADADDR (.iwram22);
	__load_stop_iwram22 = LOADADDR (.iwram22) + SIZEOF (.iwram22);
	__load_size_overlay22 = SIZEOF (.iwram22);
    
    temp23 = temp22 + SIZEOF (.iwram22) + (((__load_stop_iwram22 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram22));
	.iwram23 __iwram_223e140_start : AT (temp23) { *(.iwram23) . = ALIGN(4); } > iwram_223e140 = 0xff
	__load_start_iwram23 = LOADADDR (.iwram23);
	__load_stop_iwram23 = LOADADDR (.iwram23) + SIZEOF (.iwram23);
	__load_size_overlay23 = SIZEOF (.iwram23);
    
    temp24 = temp23 + SIZEOF (.iwram23) + (((__load_stop_iwram23 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram23));
	.iwram24 __iwram_2253ce0_start : AT (temp24) { *(.iwram24) . = ALIGN(4); } > iwram_2253ce0 = 0xff
	__load_start_iwram24 = LOADADDR (.iwram24);
	__load_stop_iwram24 = LOADADDR (.iwram24) + SIZEOF (.iwram24);
	__load_size_overlay24 = SIZEOF (.iwram24);
    
    temp25 = temp24 + SIZEOF (.iwram24) + (((__load_stop_iwram24 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram24));
	.iwram25 __iwram_2253ce0_start : AT (temp25) { *(.iwram25) . = ALIGN(4); } > iwram_2253ce0 = 0xff
	__load_start_iwram25 = LOADADDR (.iwram25);
	__load_stop_iwram25 = LOADADDR (.iwram25) + SIZEOF (.iwram25);
	__load_size_overlay25 = SIZEOF (.iwram25);
    
    temp26 = temp25 + SIZEOF (.iwram25) + (((__load_stop_iwram25 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram25));
	.iwram26 __iwram_22561c0_start : AT (temp26) { *(.iwram26) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram26 = LOADADDR (.iwram26);
	__load_stop_iwram26 = LOADADDR (.iwram26) + SIZEOF (.iwram26);
	__load_size_overlay26 = SIZEOF (.iwram26);
    
    temp27 = temp26 + SIZEOF (.iwram26) + (((__load_stop_iwram26 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram26));
	.iwram27 __iwram_22561c0_start : AT (temp27) { *(.iwram27) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram27 = LOADADDR (.iwram27);
	__load_stop_iwram27 = LOADADDR (.iwram27) + SIZEOF (.iwram27);
	__load_size_overlay27 = SIZEOF (.iwram27);
    
    temp28 = temp27 + SIZEOF (.iwram27) + (((__load_stop_iwram27 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram27));
	.iwram28 __iwram_22561c0_start : AT (temp28) { *(.iwram28) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram28 = LOADADDR (.iwram28);
	__load_stop_iwram28 = LOADADDR (.iwram28) + SIZEOF (.iwram28);
	__load_size_overlay28 = SIZEOF (.iwram28);
    
    temp29 = temp28 + SIZEOF (.iwram28) + (((__load_stop_iwram28 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram28));
	.iwram29 __iwram_22561c0_start : AT (temp29) { *(.iwram29) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram29 = LOADADDR (.iwram29);
	__load_stop_iwram29 = LOADADDR (.iwram29) + SIZEOF (.iwram29);
	__load_size_overlay29 = SIZEOF (.iwram29);
    
    temp30 = temp29 + SIZEOF (.iwram29) + (((__load_stop_iwram29 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram29));
	.iwram30 __iwram_22561c0_start : AT (temp30) { *(.iwram30) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram30 = LOADADDR (.iwram30);
	__load_stop_iwram30 = LOADADDR (.iwram30) + SIZEOF (.iwram30);
	__load_size_overlay30 = SIZEOF (.iwram30);
    
    temp31 = temp30 + SIZEOF (.iwram30) + (((__load_stop_iwram30 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram30));
	.iwram31 __iwram_22561c0_start : AT (temp31) { *(.iwram31) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram31 = LOADADDR (.iwram31);
	__load_stop_iwram31 = LOADADDR (.iwram31) + SIZEOF (.iwram31);
	__load_size_overlay31 = SIZEOF (.iwram31);
    
    temp32 = temp31 + SIZEOF (.iwram31) + (((__load_stop_iwram31 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram31));
	.iwram32 __iwram_22561c0_start : AT (temp32) { *(.iwram32) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram32 = LOADADDR (.iwram32);
	__load_stop_iwram32 = LOADADDR (.iwram32) + SIZEOF (.iwram32);
	__load_size_overlay32 = SIZEOF (.iwram32);
    
    temp33 = temp32 + SIZEOF (.iwram32) + (((__load_stop_iwram32 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram32));
	.iwram33 __iwram_22561c0_start : AT (temp33) { *(.iwram33) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram33 = LOADADDR (.iwram33);
	__load_stop_iwram33 = LOADADDR (.iwram33) + SIZEOF (.iwram33);
	__load_size_overlay33 = SIZEOF (.iwram33);
    
    temp34 = temp33 + SIZEOF (.iwram33) + (((__load_stop_iwram33 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram33));
	.iwram34 __iwram_22561c0_start : AT (temp34) { *(.iwram34) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram34 = LOADADDR (.iwram34);
	__load_stop_iwram34 = LOADADDR (.iwram34) + SIZEOF (.iwram34);
	__load_size_overlay34 = SIZEOF (.iwram34);
    
    temp35 = temp34 + SIZEOF (.iwram34) + (((__load_stop_iwram34 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram34));
	.iwram35 __iwram_22561c0_start : AT (temp35) { *(.iwram35) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram35 = LOADADDR (.iwram35);
	__load_stop_iwram35 = LOADADDR (.iwram35) + SIZEOF (.iwram35);
	__load_size_overlay35 = SIZEOF (.iwram35);
    
    temp36 = temp35 + SIZEOF (.iwram35) + (((__load_stop_iwram35 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram35));
	.iwram36 __iwram_22561c0_start : AT (temp36) { *(.iwram36) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram36 = LOADADDR (.iwram36);
	__load_stop_iwram36 = LOADADDR (.iwram36) + SIZEOF (.iwram36);
	__load_size_overlay36 = SIZEOF (.iwram36);
    
    temp37 = temp36 + SIZEOF (.iwram36) + (((__load_stop_iwram36 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram36));
	.iwram37 __iwram_22561c0_start : AT (temp37) { *(.iwram37) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram37 = LOADADDR (.iwram37);
	__load_stop_iwram37 = LOADADDR (.iwram37) + SIZEOF (.iwram37);
	__load_size_overlay37 = SIZEOF (.iwram37);
    
    temp38 = temp37 + SIZEOF (.iwram37) + (((__load_stop_iwram37 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram37));
	.iwram38 __iwram_22561c0_start : AT (temp38) { *(.iwram38) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram38 = LOADADDR (.iwram38);
	__load_stop_iwram38 = LOADADDR (.iwram38) + SIZEOF (.iwram38);
	__load_size_overlay38 = SIZEOF (.iwram38);
    
    temp39 = temp38 + SIZEOF (.iwram38) + (((__load_stop_iwram38 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram38));
	.iwram39 __iwram_22561c0_start : AT (temp39) { *(.iwram39) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram39 = LOADADDR (.iwram39);
	__load_stop_iwram39 = LOADADDR (.iwram39) + SIZEOF (.iwram39);
	__load_size_overlay39 = SIZEOF (.iwram39);
    
    temp40 = temp39 + SIZEOF (.iwram39) + (((__load_stop_iwram39 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram39));
	.iwram40 __iwram_22561c0_start : AT (temp40) { *(.iwram40) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram40 = LOADADDR (.iwram40);
	__load_stop_iwram40 = LOADADDR (.iwram40) + SIZEOF (.iwram40);
	__load_size_overlay40 = SIZEOF (.iwram40);
    
    temp41 = temp40 + SIZEOF (.iwram40) + (((__load_stop_iwram40 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram40));
	.iwram41 __iwram_22561c0_start : AT (temp41) { *(.iwram41) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram41 = LOADADDR (.iwram41);
	__load_stop_iwram41 = LOADADDR (.iwram41) + SIZEOF (.iwram41);
	__load_size_overlay41 = SIZEOF (.iwram41);
    
    temp42 = temp41 + SIZEOF (.iwram41) + (((__load_stop_iwram41 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram41));
	.iwram42 __iwram_22561c0_start : AT (temp42) { *(.iwram42) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram42 = LOADADDR (.iwram42);
	__load_stop_iwram42 = LOADADDR (.iwram42) + SIZEOF (.iwram42);
	__load_size_overlay42 = SIZEOF (.iwram42);
    
    temp43 = temp42 + SIZEOF (.iwram42) + (((__load_stop_iwram42 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram42));
	.iwram43 __iwram_22561c0_start : AT (temp43) { *(.iwram43) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram43 = LOADADDR (.iwram43);
	__load_stop_iwram43 = LOADADDR (.iwram43) + SIZEOF (.iwram43);
	__load_size_overlay43 = SIZEOF (.iwram43);
    
    temp44 = temp43 + SIZEOF (.iwram43) + (((__load_stop_iwram43 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram43));
	.iwram44 __iwram_22561c0_start : AT (temp44) { *(.iwram44) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram44 = LOADADDR (.iwram44);
	__load_stop_iwram44 = LOADADDR (.iwram44) + SIZEOF (.iwram44);
	__load_size_overlay44 = SIZEOF (.iwram44);
    
    temp45 = temp44 + SIZEOF (.iwram44) + (((__load_stop_iwram44 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram44));
	.iwram45 __iwram_22561c0_start : AT (temp45) { *(.iwram45) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram45 = LOADADDR (.iwram45);
	__load_stop_iwram45 = LOADADDR (.iwram45) + SIZEOF (.iwram45);
	__load_size_overlay45 = SIZEOF (.iwram45);
    
    temp46 = temp45 + SIZEOF (.iwram45) + (((__load_stop_iwram45 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram45));
	.iwram46 __iwram_22561c0_start : AT (temp46) { *(.iwram46) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram46 = LOADADDR (.iwram46);
	__load_stop_iwram46 = LOADADDR (.iwram46) + SIZEOF (.iwram46);
	__load_size_overlay46 = SIZEOF (.iwram46);
    
    temp47 = temp46 + SIZEOF (.iwram46) + (((__load_stop_iwram46 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram46));
	.iwram47 __iwram_22561c0_start : AT (temp47) { *(.iwram47) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram47 = LOADADDR (.iwram47);
	__load_stop_iwram47 = LOADADDR (.iwram47) + SIZEOF (.iwram47);
	__load_size_overlay47 = SIZEOF (.iwram47);
    
    temp48 = temp47 + SIZEOF (.iwram47) + (((__load_stop_iwram47 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram47));
	.iwram48 __iwram_22561c0_start : AT (temp48) { *(.iwram48) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram48 = LOADADDR (.iwram48);
	__load_stop_iwram48 = LOADADDR (.iwram48) + SIZEOF (.iwram48);
	__load_size_overlay48 = SIZEOF (.iwram48);
    
    temp49 = temp48 + SIZEOF (.iwram48) + (((__load_stop_iwram48 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram48));
	.iwram49 __iwram_22561c0_start : AT (temp49) { *(.iwram49) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram49 = LOADADDR (.iwram49);
	__load_stop_iwram49 = LOADADDR (.iwram49) + SIZEOF (.iwram49);
	__load_size_overlay49 = SIZEOF (.iwram49);
    
    temp50 = temp49 + SIZEOF (.iwram49) + (((__load_stop_iwram49 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram49));
	.iwram50 __iwram_22561c0_start : AT (temp50) { *(.iwram50) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram50 = LOADADDR (.iwram50);
	__load_stop_iwram50 = LOADADDR (.iwram50) + SIZEOF (.iwram50);
	__load_size_overlay50 = SIZEOF (.iwram50);
    
    temp51 = temp50 + SIZEOF (.iwram50) + (((__load_stop_iwram50 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram50));
	.iwram51 __iwram_22561c0_start : AT (temp51) { *(.iwram51) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram51 = LOADADDR (.iwram51);
	__load_stop_iwram51 = LOADADDR (.iwram51) + SIZEOF (.iwram51);
	__load_size_overlay51 = SIZEOF (.iwram51);
    
    temp52 = temp51 + SIZEOF (.iwram51) + (((__load_stop_iwram51 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram51));
	.iwram52 __iwram_22561c0_start : AT (temp52) { *(.iwram52) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram52 = LOADADDR (.iwram52);
	__load_stop_iwram52 = LOADADDR (.iwram52) + SIZEOF (.iwram52);
	__load_size_overlay52 = SIZEOF (.iwram52);
    
    temp53 = temp52 + SIZEOF (.iwram52) + (((__load_stop_iwram52 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram52));
	.iwram53 __iwram_22561c0_start : AT (temp53) { *(.iwram53) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram53 = LOADADDR (.iwram53);
	__load_stop_iwram53 = LOADADDR (.iwram53) + SIZEOF (.iwram53);
	__load_size_overlay53 = SIZEOF (.iwram53);
    
    temp54 = temp53 + SIZEOF (.iwram53) + (((__load_stop_iwram53 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram53));
	.iwram54 __iwram_22561c0_start : AT (temp54) { *(.iwram54) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram54 = LOADADDR (.iwram54);
	__load_stop_iwram54 = LOADADDR (.iwram54) + SIZEOF (.iwram54);
	__load_size_overlay54 = SIZEOF (.iwram54);
    
    temp55 = temp54 + SIZEOF (.iwram54) + (((__load_stop_iwram54 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram54));
	.iwram55 __iwram_22561c0_start : AT (temp55) { *(.iwram55) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram55 = LOADADDR (.iwram55);
	__load_stop_iwram55 = LOADADDR (.iwram55) + SIZEOF (.iwram55);
	__load_size_overlay55 = SIZEOF (.iwram55);
    
    temp56 = temp55 + SIZEOF (.iwram55) + (((__load_stop_iwram55 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram55));
	.iwram56 __iwram_22561c0_start : AT (temp56) { *(.iwram56) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram56 = LOADADDR (.iwram56);
	__load_stop_iwram56 = LOADADDR (.iwram56) + SIZEOF (.iwram56);
	__load_size_overlay56 = SIZEOF (.iwram56);
    
    temp57 = temp56 + SIZEOF (.iwram56) + (((__load_stop_iwram56 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram56));
	.iwram57 __iwram_22561c0_start : AT (temp57) { *(.iwram57) . = ALIGN(4); } > iwram_22561c0 = 0xff
	__load_start_iwram57 = LOADADDR (.iwram57);
	__load_stop_iwram57 = LOADADDR (.iwram57) + SIZEOF (.iwram57);
	__load_size_overlay57 = SIZEOF (.iwram57);
    
    temp58 = temp57 + SIZEOF (.iwram57) + (((__load_stop_iwram57 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram57));
	.iwram58 __iwram_21d0d80_start : AT (temp58) { *(.iwram58) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram58 = LOADADDR (.iwram58);
	__load_stop_iwram58 = LOADADDR (.iwram58) + SIZEOF (.iwram58);
	__load_size_overlay58 = SIZEOF (.iwram58);
    
    temp59 = temp58 + SIZEOF (.iwram58) + (((__load_stop_iwram58 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram58));
	.iwram59 __iwram_21d0d80_start : AT (temp59) { *(.iwram59) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram59 = LOADADDR (.iwram59);
	__load_stop_iwram59 = LOADADDR (.iwram59) + SIZEOF (.iwram59);
	__load_size_overlay59 = SIZEOF (.iwram59);
    
    temp60 = temp59 + SIZEOF (.iwram59) + (((__load_stop_iwram59 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram59));
	.iwram60 __iwram_221f800_start : AT (temp60) { *(.iwram60) . = ALIGN(4); } > iwram_221f800 = 0xff
	__load_start_iwram60 = LOADADDR (.iwram60);
	__load_stop_iwram60 = LOADADDR (.iwram60) + SIZEOF (.iwram60);
	__load_size_overlay60 = SIZEOF (.iwram60);
    
    temp61 = temp60 + SIZEOF (.iwram60) + (((__load_stop_iwram60 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram60));
	.iwram61 __iwram_222ae60_start : AT (temp61) { *(.iwram61) . = ALIGN(4); } > iwram_222ae60 = 0xff
	__load_start_iwram61 = LOADADDR (.iwram61);
	__load_stop_iwram61 = LOADADDR (.iwram61) + SIZEOF (.iwram61);
	__load_size_overlay61 = SIZEOF (.iwram61);
    
    temp62 = temp61 + SIZEOF (.iwram61) + (((__load_stop_iwram61 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram61));
	.iwram62 __iwram_222f2c0_start : AT (temp62) { *(.iwram62) . = ALIGN(4); } > iwram_222f2c0 = 0xff
	__load_start_iwram62 = LOADADDR (.iwram62);
	__load_stop_iwram62 = LOADADDR (.iwram62) + SIZEOF (.iwram62);
	__load_size_overlay62 = SIZEOF (.iwram62);
    
    temp63 = temp62 + SIZEOF (.iwram62) + (((__load_stop_iwram62 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram62));
	.iwram63 __iwram_222ae60_start : AT (temp63) { *(.iwram63) . = ALIGN(4); } > iwram_222ae60 = 0xff
	__load_start_iwram63 = LOADADDR (.iwram63);
	__load_stop_iwram63 = LOADADDR (.iwram63) + SIZEOF (.iwram63);
	__load_size_overlay63 = SIZEOF (.iwram63);
    
    temp64 = temp63 + SIZEOF (.iwram63) + (((__load_stop_iwram63 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram63));
	.iwram64 __iwram_222dce0_start : AT (temp64) { *(.iwram64) . = ALIGN(4); } > iwram_222dce0 = 0xff
	__load_start_iwram64 = LOADADDR (.iwram64);
	__load_stop_iwram64 = LOADADDR (.iwram64) + SIZEOF (.iwram64);
	__load_size_overlay64 = SIZEOF (.iwram64);
    
    temp65 = temp64 + SIZEOF (.iwram64) + (((__load_stop_iwram64 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram64));
	.iwram65 __iwram_222dce0_start : AT (temp65) { *(.iwram65) . = ALIGN(4); } > iwram_222dce0 = 0xff
	__load_start_iwram65 = LOADADDR (.iwram65);
	__load_stop_iwram65 = LOADADDR (.iwram65) + SIZEOF (.iwram65);
	__load_size_overlay65 = SIZEOF (.iwram65);
    
    temp66 = temp65 + SIZEOF (.iwram65) + (((__load_stop_iwram65 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram65));
	.iwram66 __iwram_222dce0_start : AT (temp66) { *(.iwram66) . = ALIGN(4); } > iwram_222dce0 = 0xff
	__load_start_iwram66 = LOADADDR (.iwram66);
	__load_stop_iwram66 = LOADADDR (.iwram66) + SIZEOF (.iwram66);
	__load_size_overlay66 = SIZEOF (.iwram66);
    
    temp67 = temp66 + SIZEOF (.iwram66) + (((__load_stop_iwram66 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram66));
	.iwram67 __iwram_225c700_start : AT (temp67) { *(.iwram67) . = ALIGN(4); } > iwram_225c700 = 0xff
	__load_start_iwram67 = LOADADDR (.iwram67);
	__load_stop_iwram67 = LOADADDR (.iwram67) + SIZEOF (.iwram67);
	__load_size_overlay67 = SIZEOF (.iwram67);
    
    temp68 = temp67 + SIZEOF (.iwram67) + (((__load_stop_iwram67 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram67));
	.iwram68 __iwram_225c700_start : AT (temp68) { *(.iwram68) . = ALIGN(4); } > iwram_225c700 = 0xff
	__load_start_iwram68 = LOADADDR (.iwram68);
	__load_stop_iwram68 = LOADADDR (.iwram68) + SIZEOF (.iwram68);
	__load_size_overlay68 = SIZEOF (.iwram68);
    
    temp69 = temp68 + SIZEOF (.iwram68) + (((__load_stop_iwram68 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram68));
	.iwram69 __iwram_225c700_start : AT (temp69) { *(.iwram69) . = ALIGN(4); } > iwram_225c700 = 0xff
	__load_start_iwram69 = LOADADDR (.iwram69);
	__load_stop_iwram69 = LOADADDR (.iwram69) + SIZEOF (.iwram69);
	__load_size_overlay69 = SIZEOF (.iwram69);
    
    temp70 = temp69 + SIZEOF (.iwram69) + (((__load_stop_iwram69 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram69));
	.iwram70 __iwram_225c700_start : AT (temp70) { *(.iwram70) . = ALIGN(4); } > iwram_225c700 = 0xff
	__load_start_iwram70 = LOADADDR (.iwram70);
	__load_stop_iwram70 = LOADADDR (.iwram70) + SIZEOF (.iwram70);
	__load_size_overlay70 = SIZEOF (.iwram70);
    
    temp71 = temp70 + SIZEOF (.iwram70) + (((__load_stop_iwram70 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram70));
	.iwram71 __iwram_223b140_start : AT (temp71) { *(.iwram71) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_iwram71 = LOADADDR (.iwram71);
	__load_stop_iwram71 = LOADADDR (.iwram71) + SIZEOF (.iwram71);
	__load_size_overlay71 = SIZEOF (.iwram71);
    
    temp72 = temp71 + SIZEOF (.iwram71) + (((__load_stop_iwram71 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram71));
	.iwram72 __iwram_223d7a0_start : AT (temp72) { *(.iwram72) . = ALIGN(4); } > iwram_223d7a0 = 0xff
	__load_start_iwram72 = LOADADDR (.iwram72);
	__load_stop_iwram72 = LOADADDR (.iwram72) + SIZEOF (.iwram72);
	__load_size_overlay72 = SIZEOF (.iwram72);
    
    temp73 = temp72 + SIZEOF (.iwram72) + (((__load_stop_iwram72 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram72));
	.iwram73 __iwram_21d0d80_start : AT (temp73) { *(.iwram73) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram73 = LOADADDR (.iwram73);
	__load_stop_iwram73 = LOADADDR (.iwram73) + SIZEOF (.iwram73);
	__load_size_overlay73 = SIZEOF (.iwram73);
    
    temp74 = temp73 + SIZEOF (.iwram73) + (((__load_stop_iwram73 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram73));
	.iwram74 __iwram_21d0d80_start : AT (temp74) { *(.iwram74) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram74 = LOADADDR (.iwram74);
	__load_stop_iwram74 = LOADADDR (.iwram74) + SIZEOF (.iwram74);
	__load_size_overlay74 = SIZEOF (.iwram74);
    
    temp75 = temp74 + SIZEOF (.iwram74) + (((__load_stop_iwram74 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram74));
	.iwram75 __iwram_21d0d80_start : AT (temp75) { *(.iwram75) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram75 = LOADADDR (.iwram75);
	__load_stop_iwram75 = LOADADDR (.iwram75) + SIZEOF (.iwram75);
	__load_size_overlay75 = SIZEOF (.iwram75);
    
    temp76 = temp75 + SIZEOF (.iwram75) + (((__load_stop_iwram75 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram75));
	.iwram76 __iwram_223b140_start : AT (temp76) { *(.iwram76) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_iwram76 = LOADADDR (.iwram76);
	__load_stop_iwram76 = LOADADDR (.iwram76) + SIZEOF (.iwram76);
	__load_size_overlay76 = SIZEOF (.iwram76);
    
    temp77 = temp76 + SIZEOF (.iwram76) + (((__load_stop_iwram76 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram76));
	.iwram77 __iwram_21d0d80_start : AT (temp77) { *(.iwram77) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram77 = LOADADDR (.iwram77);
	__load_stop_iwram77 = LOADADDR (.iwram77) + SIZEOF (.iwram77);
	__load_size_overlay77 = SIZEOF (.iwram77);
    
    temp78 = temp77 + SIZEOF (.iwram77) + (((__load_stop_iwram77 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram77));
	.iwram78 __iwram_21d0d80_start : AT (temp78) { *(.iwram78) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram78 = LOADADDR (.iwram78);
	__load_stop_iwram78 = LOADADDR (.iwram78) + SIZEOF (.iwram78);
	__load_size_overlay78 = SIZEOF (.iwram78);
    
    temp79 = temp78 + SIZEOF (.iwram78) + (((__load_stop_iwram78 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram78));
	.iwram79 __iwram_21d0d80_start : AT (temp79) { *(.iwram79) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram79 = LOADADDR (.iwram79);
	__load_stop_iwram79 = LOADADDR (.iwram79) + SIZEOF (.iwram79);
	__load_size_overlay79 = SIZEOF (.iwram79);
    
    temp80 = temp79 + SIZEOF (.iwram79) + (((__load_stop_iwram79 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram79));
	.iwram80 __iwram_21d0d80_start : AT (temp80) { *(.iwram80) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram80 = LOADADDR (.iwram80);
	__load_stop_iwram80 = LOADADDR (.iwram80) + SIZEOF (.iwram80);
	__load_size_overlay80 = SIZEOF (.iwram80);
    
    temp81 = temp80 + SIZEOF (.iwram80) + (((__load_stop_iwram80 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram80));
	.iwram81 __iwram_21d0d80_start : AT (temp81) { *(.iwram81) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram81 = LOADADDR (.iwram81);
	__load_stop_iwram81 = LOADADDR (.iwram81) + SIZEOF (.iwram81);
	__load_size_overlay81 = SIZEOF (.iwram81);
    
    temp82 = temp81 + SIZEOF (.iwram81) + (((__load_stop_iwram81 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram81));
	.iwram82 __iwram_223b140_start : AT (temp82) { *(.iwram82) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_iwram82 = LOADADDR (.iwram82);
	__load_stop_iwram82 = LOADADDR (.iwram82) + SIZEOF (.iwram82);
	__load_size_overlay82 = SIZEOF (.iwram82);
    
    temp83 = temp82 + SIZEOF (.iwram82) + (((__load_stop_iwram82 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram82));
	.iwram83 __iwram_223b5a0_start : AT (temp83) { *(.iwram83) . = ALIGN(4); } > iwram_223b5a0 = 0xff
	__load_start_iwram83 = LOADADDR (.iwram83);
	__load_stop_iwram83 = LOADADDR (.iwram83) + SIZEOF (.iwram83);
	__load_size_overlay83 = SIZEOF (.iwram83);
    
    temp84 = temp83 + SIZEOF (.iwram83) + (((__load_stop_iwram83 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram83));
	.iwram84 __iwram_223b5a0_start : AT (temp84) { *(.iwram84) . = ALIGN(4); } > iwram_223b5a0 = 0xff
	__load_start_iwram84 = LOADADDR (.iwram84);
	__load_stop_iwram84 = LOADADDR (.iwram84) + SIZEOF (.iwram84);
	__load_size_overlay84 = SIZEOF (.iwram84);
    
    temp85 = temp84 + SIZEOF (.iwram84) + (((__load_stop_iwram84 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram84));
	.iwram85 __iwram_2241440_start : AT (temp85) { *(.iwram85) . = ALIGN(4); } > iwram_2241440 = 0xff
	__load_start_iwram85 = LOADADDR (.iwram85);
	__load_stop_iwram85 = LOADADDR (.iwram85) + SIZEOF (.iwram85);
	__load_size_overlay85 = SIZEOF (.iwram85);
    
    temp86 = temp85 + SIZEOF (.iwram85) + (((__load_stop_iwram85 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram85));
	.iwram86 __iwram_223b140_start : AT (temp86) { *(.iwram86) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_iwram86 = LOADADDR (.iwram86);
	__load_stop_iwram86 = LOADADDR (.iwram86) + SIZEOF (.iwram86);
	__load_size_overlay86 = SIZEOF (.iwram86);
    
    temp87 = temp86 + SIZEOF (.iwram86) + (((__load_stop_iwram86 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram86));
	.iwram87 __iwram_21d0d80_start : AT (temp87) { *(.iwram87) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram87 = LOADADDR (.iwram87);
	__load_stop_iwram87 = LOADADDR (.iwram87) + SIZEOF (.iwram87);
	__load_size_overlay87 = SIZEOF (.iwram87);
    
    temp88 = temp87 + SIZEOF (.iwram87) + (((__load_stop_iwram87 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram87));
	.iwram88 __iwram_223b140_start : AT (temp88) { *(.iwram88) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_iwram88 = LOADADDR (.iwram88);
	__load_stop_iwram88 = LOADADDR (.iwram88) + SIZEOF (.iwram88);
	__load_size_overlay88 = SIZEOF (.iwram88);
    
    temp89 = temp88 + SIZEOF (.iwram88) + (((__load_stop_iwram88 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram88));
	.iwram89 __iwram_21d0d80_start : AT (temp89) { *(.iwram89) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram89 = LOADADDR (.iwram89);
	__load_stop_iwram89 = LOADADDR (.iwram89) + SIZEOF (.iwram89);
	__load_size_overlay89 = SIZEOF (.iwram89);
    
    temp90 = temp89 + SIZEOF (.iwram89) + (((__load_stop_iwram89 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram89));
	.iwram90 __iwram_21d0d80_start : AT (temp90) { *(.iwram90) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram90 = LOADADDR (.iwram90);
	__load_stop_iwram90 = LOADADDR (.iwram90) + SIZEOF (.iwram90);
	__load_size_overlay90 = SIZEOF (.iwram90);
    
    temp91 = temp90 + SIZEOF (.iwram90) + (((__load_stop_iwram90 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram90));
	.iwram91 __iwram_21d0d80_start : AT (temp91) { *(.iwram91) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram91 = LOADADDR (.iwram91);
	__load_stop_iwram91 = LOADADDR (.iwram91) + SIZEOF (.iwram91);
	__load_size_overlay91 = SIZEOF (.iwram91);
    
    temp92 = temp91 + SIZEOF (.iwram91) + (((__load_stop_iwram91 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram91));
	.iwram92 __iwram_21d0d80_start : AT (temp92) { *(.iwram92) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram92 = LOADADDR (.iwram92);
	__load_stop_iwram92 = LOADADDR (.iwram92) + SIZEOF (.iwram92);
	__load_size_overlay92 = SIZEOF (.iwram92);
    
    temp93 = temp92 + SIZEOF (.iwram92) + (((__load_stop_iwram92 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram92));
	.iwram93 __iwram_21d0d80_start : AT (temp93) { *(.iwram93) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram93 = LOADADDR (.iwram93);
	__load_stop_iwram93 = LOADADDR (.iwram93) + SIZEOF (.iwram93);
	__load_size_overlay93 = SIZEOF (.iwram93);
    
    temp94 = temp93 + SIZEOF (.iwram93) + (((__load_stop_iwram93 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram93));
	.iwram94 __iwram_223b140_start : AT (temp94) { *(.iwram94) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_iwram94 = LOADADDR (.iwram94);
	__load_stop_iwram94 = LOADADDR (.iwram94) + SIZEOF (.iwram94);
	__load_size_overlay94 = SIZEOF (.iwram94);
    
    temp95 = temp94 + SIZEOF (.iwram94) + (((__load_stop_iwram94 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram94));
	.iwram95 __iwram_2246c20_start : AT (temp95) { *(.iwram95) . = ALIGN(4); } > iwram_2246c20 = 0xff
	__load_start_iwram95 = LOADADDR (.iwram95);
	__load_stop_iwram95 = LOADADDR (.iwram95) + SIZEOF (.iwram95);
	__load_size_overlay95 = SIZEOF (.iwram95);
    
    temp96 = temp95 + SIZEOF (.iwram95) + (((__load_stop_iwram95 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram95));
	.iwram96 __iwram_223b140_start : AT (temp96) { *(.iwram96) . = ALIGN(4); } > iwram_223b140 = 0xff
	__load_start_iwram96 = LOADADDR (.iwram96);
	__load_stop_iwram96 = LOADADDR (.iwram96) + SIZEOF (.iwram96);
	__load_size_overlay96 = SIZEOF (.iwram96);
    
    temp97 = temp96 + SIZEOF (.iwram96) + (((__load_stop_iwram96 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram96));
	.iwram97 __iwram_222ae60_start : AT (temp97) { *(.iwram97) . = ALIGN(4); } > iwram_222ae60 = 0xff
	__load_start_iwram97 = LOADADDR (.iwram97);
	__load_stop_iwram97 = LOADADDR (.iwram97) + SIZEOF (.iwram97);
	__load_size_overlay97 = SIZEOF (.iwram97);
    
    temp98 = temp97 + SIZEOF (.iwram97) + (((__load_stop_iwram97 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram97));
	.iwram98 __iwram_2246c20_start : AT (temp98) { *(.iwram98) . = ALIGN(4); } > iwram_2246c20 = 0xff
	__load_start_iwram98 = LOADADDR (.iwram98);
	__load_stop_iwram98 = LOADADDR (.iwram98) + SIZEOF (.iwram98);
	__load_size_overlay98 = SIZEOF (.iwram98);
    
    temp99 = temp98 + SIZEOF (.iwram98) + (((__load_stop_iwram98 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram98));
	.iwram99 __iwram_21d0d80_start : AT (temp99) { *(.iwram99) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram99 = LOADADDR (.iwram99);
	__load_stop_iwram99 = LOADADDR (.iwram99) + SIZEOF (.iwram99);
	__load_size_overlay99 = SIZEOF (.iwram99);
    
    temp100 = temp99 + SIZEOF (.iwram99) + (((__load_stop_iwram99 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram99));
	.iwram100 __iwram_21d0d80_start : AT (temp100) { *(.iwram100) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram100 = ADDR (.iwram100);
	__load_stop_iwram100 = LOADADDR (.iwram100) + SIZEOF (.iwram100);
	__load_size_overlay100 = SIZEOF (.iwram100);
    
    temp101 = temp100 + SIZEOF (.iwram100) + (((__load_stop_iwram100 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram100));
	.iwram101 __iwram_21d0d80_start : AT (temp101) { *(.iwram101) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram101 = ADDR (.iwram101);
	__load_stop_iwram101 = LOADADDR (.iwram101) + SIZEOF (.iwram101);
	__load_size_overlay101 = SIZEOF (.iwram101);
    
    temp102 = temp101 + SIZEOF (.iwram101) + (((__load_stop_iwram101 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram101));
	.iwram102 __iwram_21d0d80_start : AT (temp102) { *(.iwram102) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram102 = ADDR (.iwram102);
	__load_stop_iwram102 = LOADADDR (.iwram102) + SIZEOF (.iwram102);
	__load_size_overlay102 = SIZEOF (.iwram102);
    
    temp103 = temp102 + SIZEOF (.iwram102) + (((__load_stop_iwram102 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram102));
	.iwram103 __iwram_222dce0_start : AT (temp103) { *(.iwram103) . = ALIGN(4); } > iwram_222dce0 = 0xff
	__load_start_iwram103 = ADDR (.iwram103);
	__load_stop_iwram103 = LOADADDR (.iwram103) + SIZEOF (.iwram103);
	__load_size_overlay103 = SIZEOF (.iwram103);
    
    temp104 = temp103 + SIZEOF (.iwram103) + (((__load_stop_iwram103 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram103));
	.iwram104 __iwram_222dce0_start : AT (temp104) { *(.iwram104) . = ALIGN(4); } > iwram_222dce0 = 0xff
	__load_start_iwram104 = ADDR (.iwram104);
	__load_stop_iwram104 = LOADADDR (.iwram104) + SIZEOF (.iwram104);
	__load_size_overlay104 = SIZEOF (.iwram104);
    
    temp105 = temp104 + SIZEOF (.iwram104) + (((__load_stop_iwram104 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram104));
	.iwram105 __iwram_2241ae0_start : AT (temp105) { *(.iwram105) . = ALIGN(4); } > iwram_2241ae0 = 0xff
	__load_start_iwram105 = ADDR (.iwram105);
	__load_stop_iwram105 = LOADADDR (.iwram105) + SIZEOF (.iwram105);
	__load_size_overlay105 = SIZEOF (.iwram105);
    
    temp106 = temp105 + SIZEOF (.iwram105) + (((__load_stop_iwram105 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram105));
	.iwram106 __iwram_2241ae0_start : AT (temp106) { *(.iwram106) . = ALIGN(4); } > iwram_2241ae0 = 0xff
	__load_start_iwram106 = ADDR (.iwram106);
	__load_stop_iwram106 = LOADADDR (.iwram106) + SIZEOF (.iwram106);
	__load_size_overlay106 = SIZEOF (.iwram106);
    
    temp107 = temp106 + SIZEOF (.iwram106) + (((__load_stop_iwram106 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram106));
	.iwram107 __iwram_2241ae0_start : AT (temp107) { *(.iwram107) . = ALIGN(4); } > iwram_2241ae0 = 0xff
	__load_start_iwram107 = ADDR (.iwram107);
	__load_stop_iwram107 = LOADADDR (.iwram107) + SIZEOF (.iwram107);
	__load_size_overlay107 = SIZEOF (.iwram107);
    
    temp108 = temp107 + SIZEOF (.iwram107) + (((__load_stop_iwram107 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram107));
	.iwram108 __iwram_2241ae0_start : AT (temp108) { *(.iwram108) . = ALIGN(4); } > iwram_2241ae0 = 0xff
	__load_start_iwram108 = ADDR (.iwram108);
	__load_stop_iwram108 = LOADADDR (.iwram108) + SIZEOF (.iwram108);
	__load_size_overlay108 = SIZEOF (.iwram108);
    
    temp109 = temp108 + SIZEOF (.iwram108) + (((__load_stop_iwram108 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram108));
	.iwram109 __iwram_21d0d80_start : AT (temp109) { *(.iwram109) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram109 = ADDR (.iwram109);
	__load_stop_iwram109 = LOADADDR (.iwram109) + SIZEOF (.iwram109);
	__load_size_overlay109 = SIZEOF (.iwram109);
    
    temp110 = temp109 + SIZEOF (.iwram109) + (((__load_stop_iwram109 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram109));
	.iwram110 __iwram_21d0d80_start : AT (temp110) { *(.iwram110) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram110 = ADDR (.iwram110);
	__load_stop_iwram110 = LOADADDR (.iwram110) + SIZEOF (.iwram110);
	__load_size_overlay110 = SIZEOF (.iwram110);
    
    temp111 = temp110 + SIZEOF (.iwram110) + (((__load_stop_iwram110 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram110));
	.iwram111 __iwram_21d0d80_start : AT (temp111) { *(.iwram111) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram111 = ADDR (.iwram111);
	__load_stop_iwram111 = LOADADDR (.iwram111) + SIZEOF (.iwram111);
	__load_size_overlay111 = SIZEOF (.iwram111);
    
    temp112 = temp111 + SIZEOF (.iwram111) + (((__load_stop_iwram111 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram111));
	.iwram112 __iwram_225c700_start : AT (temp112) { *(.iwram112) . = ALIGN(4); } > iwram_225c700 = 0xff
	__load_start_iwram112 = ADDR (.iwram112);
	__load_stop_iwram112 = LOADADDR (.iwram112) + SIZEOF (.iwram112);
	__load_size_overlay112 = SIZEOF (.iwram112);
    
    temp113 = temp112 + SIZEOF (.iwram112) + (((__load_stop_iwram112 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram112));
	.iwram113 __iwram_225c700_start : AT (temp113) { *(.iwram113) . = ALIGN(4); } > iwram_225c700 = 0xff
	__load_start_iwram113 = ADDR (.iwram113);
	__load_stop_iwram113 = LOADADDR (.iwram113) + SIZEOF (.iwram113);
	__load_size_overlay113 = SIZEOF (.iwram113);
    
    temp114 = temp113 + SIZEOF (.iwram113) + (((__load_stop_iwram113 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram113));
	.iwram114 __iwram_225c700_start : AT (temp114) { *(.iwram114) . = ALIGN(4); } > iwram_225c700 = 0xff
	__load_start_iwram114 = ADDR (.iwram114);
	__load_stop_iwram114 = LOADADDR (.iwram114) + SIZEOF (.iwram114);
	__load_size_overlay114 = SIZEOF (.iwram114);
    
    temp115 = temp114 + SIZEOF (.iwram114) + (((__load_stop_iwram114 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram114));
	.iwram115 __iwram_2260440_start : AT (temp115) { *(.iwram115) . = ALIGN(4); } > iwram_2260440 = 0xff
	__load_start_iwram115 = ADDR (.iwram115);
	__load_stop_iwram115 = LOADADDR (.iwram115) + SIZEOF (.iwram115);
	__load_size_overlay115 = SIZEOF (.iwram115);

	__overlay115_bss_start = ADDR(.iwram115) + SIZEOF(.iwram115);
	.overlay115_bss (__overlay115_bss_start) (NOLOAD) :
	{
		*(.overlay115_bss)
		build/overlay_0115.o (.bss)
		__overlay115_bss_end = ABSOLUTE(.);
	}>iwram_2260440 = 0xff
	__overlay115_bss_size = SIZEOF(.overlay115_bss);
    
    temp116 = temp115 + SIZEOF (.iwram115) + (((__load_stop_iwram115 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram115));
	.iwram116 __iwram_2260440_start : AT (temp116) { *(.iwram116) . = ALIGN(4); } > iwram_2260440 = 0xff
	__load_start_iwram116 = ADDR (.iwram116);
	__load_stop_iwram116 = LOADADDR (.iwram116) + SIZEOF (.iwram116);
	__load_size_overlay116 = SIZEOF (.iwram116);
    
    temp117 = temp116 + SIZEOF (.iwram116) + (((__load_stop_iwram116 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram116));
	.iwram117 __iwram_2260440_start : AT (temp117) { *(.iwram117) . = ALIGN(4); } > iwram_2260440 = 0xff
	__load_start_iwram117 = ADDR (.iwram117);
	__load_stop_iwram117 = LOADADDR (.iwram117) + SIZEOF (.iwram117);
	__load_size_overlay117 = SIZEOF (.iwram117);
    
    temp118 = temp117 + SIZEOF (.iwram117) + (((__load_stop_iwram117 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram117));
	.iwram118 __iwram_21d0d80_start : AT (temp118) { *(.iwram118) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram118 = ADDR (.iwram118);
	__load_stop_iwram118 = LOADADDR (.iwram118) + SIZEOF (.iwram118);
	__load_size_overlay118 = SIZEOF (.iwram118);
    
    temp119 = temp118 + SIZEOF (.iwram118) + (((__load_stop_iwram118 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram118));
	.iwram119 __iwram_21d0d80_start : AT (temp119) { *(.iwram119) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram119 = ADDR (.iwram119);
	__load_stop_iwram119 = LOADADDR (.iwram119) + SIZEOF (.iwram119);
	__load_size_overlay119 = SIZEOF (.iwram119);
    
    temp120 = temp119 + SIZEOF (.iwram119) + (((__load_stop_iwram119 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram119));
	.iwram120 __iwram_21d0d80_start : AT (temp120) { *(.iwram120) . = ALIGN(4); } > iwram_21d0d80 = 0xff
	__load_start_iwram120 = ADDR (.iwram120);
	__load_stop_iwram120 = LOADADDR (.iwram120) + SIZEOF (.iwram120);
	__load_size_overlay120 = SIZEOF (.iwram120);
    
    temp121 = temp120 + SIZEOF (.iwram120) + (((__load_stop_iwram120 + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram120));
	.iwram121 __iwram_21d0d80_start : AT (temp121) { *(.iwram121) . = ALIGN(4); FILL(0xFF); } > iwram_21d0d80 = 0xff
	__load_start_iwram121 = ADDR (.iwram121);
	__load_stop_iwram121 = LOADADDR (.iwram121) + SIZEOF (.iwram121);
	__load_size_overlay121 = SIZEOF (.iwram121);
	
	.fill121 :
	{
		FILL(0xFF);
		. = . + ((((__load_stop_iwram121) + 0x200 - 1) & ~(0x200 - 1)) - (__load_stop_iwram121)) - 1;
	    BYTE(0xFF);
	} > iwram_21d0d80 = 0xff



/*	.bss ALIGN(4) (NOLOAD) :*/
	.bss (__mainram_start) (NOLOAD) :
	{
		__bss_start = ABSOLUTE(.);
		*(.bss)
		build/arm9_ram.o (.bss)
		. = ALIGN(4);    /* REQUIRED. LD is flaky without it. */
		__bss_end = ABSOLUTE(.);
	}>mainram = 0xff


}

