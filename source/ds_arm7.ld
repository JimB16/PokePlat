OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(_start)

MEMORY {

	rom	: ORIGIN = 0x08000000, LENGTH = 32M
	iwram	: ORIGIN = 0x02380000, LENGTH = 8M
	iwram_27e0000	: ORIGIN = 0x027e0000, LENGTH = 8M
	iwram_37f8000	: ORIGIN = 0x037f8000, LENGTH = 8M
}

__iwram_start	=	ORIGIN(iwram);
__iwram_top	=	ORIGIN(iwram)+ LENGTH(iwram);

__sp_irq	=	__iwram_top - 0x100;
__sp_svc	=	__sp_irq - 0x100;
__sp_usr	=	__sp_svc - 0x100;

__irq_flags	=	0x04000000 - 8;
__irq_flagsaux	=	0x04000000 - 0x40;
__irq_vector	=	0x04000000 - 4;

SECTIONS
  {
  .text 0x2380000 : { *(.text) _etext = . ; }
  .text2 0x27e0000 :
    AT ( ADDR (.text) + SIZEOF (.text) )
    { _text2 = . ; *(.text2); _etext2 = . ;  }
  .text3 0x37f8000 :
    AT ( ADDR (.text) + SIZEOF (.text) + SIZEOF (.text2) )
    { _text3 = . ; *(.text3); _etext3 = . ;  }
  .text4 0x6000000 :
    AT ( ADDR (.text) + SIZEOF (.text) + SIZEOF (.text2) + SIZEOF (.text3) )
    { _text4 = . ; *(.text4); _etext4 = . ;  }
  .text_ 0x23a77d8 :
    AT ( ADDR (.text) + SIZEOF (.text) + SIZEOF (.text2) + SIZEOF (.text3) + SIZEOF (.text4) )
    { _text_ = . ; *(.text_); _etext_ = . ;  }
  .bss 0x3000 :
    { _bstart = . ;  *(.bss) *(COMMON) ; _bend = . ;}
}
