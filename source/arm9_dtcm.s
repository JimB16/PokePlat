/************************
        Data TCM
************************/


.section .dtcm, "ax"

@ 0x2102380
.globl RAM_27e0000
RAM_27e0000: @ 24 JumpAdresses, 1 for every IRQs
.word OS_IrqDummy @ =0x20c1328, 0x2102380
.word OS_IrqDummy @ =0x20c1328, 0x2102384
.word OS_IrqDummy @ =0x20c1328, 0x2102388
.word OSi_IrqTimer0 @ =0x20c13f4, 0x210238c
.word OSi_IrqTimer1 @ =0x20c1404, 0x2102390
.word OSi_IrqTimer2 @ =0x20c1414, 0x2102394
.word OSi_IrqTimer3 @ =0x20c1424, 0x2102398
.word OS_IrqDummy @ =0x20c1328, 0x210239c
.word OSi_IrqDma0 @ =0x20c13b4, 0x21023a0
.word OSi_IrqDma1 @ =0x20c13c4, 0x21023a4
.word OSi_IrqDma2 @ =0x20c13d4, 0x21023a8
.word OSi_IrqDma3 @ =0x20c13e4, 0x21023ac
.word OS_IrqDummy @ =0x20c1328, 0x21023b0
.word OS_IrqDummy @ =0x20c1328, 0x21023b4
.word OS_IrqDummy @ =0x20c1328, 0x21023b8
.word OS_IrqDummy @ =0x20c1328, 0x21023bc
.word OS_IrqDummy @ =0x20c1328, 0x21023c0
.word OS_IrqDummy @ =0x20c1328, 0x21023c4
.word OS_IrqDummy @ =0x20c1328, 0x21023c8
.word OS_IrqDummy @ =0x20c1328, 0x21023cc
.word OS_IrqDummy @ =0x20c1328, 0x21023d0
.word OS_IrqDummy @ =0x20c1328, 0x21023d4
.word 0x0
.word 0x0



.section .dtcm_bss, "ax"

@ 0x21023e0
.globl RAM_27e0060
RAM_27e0060:
    .zero 4*8

    

.section .dtcm_bss2, "ax"

.globl RAM_27e0080
RAM_27e0080:


    .zero 0x27e3000 - 0x27e0080


.globl RAM_27e3000
RAM_27e3000:
    .zero 0xf80
.globl RAM_27e3f80
RAM_27e3f80:
    .zero 0x40

RAM_27e3fc0: @ Stackpointer of Mode: Supervisor (SWI)
    .zero 0x38

.globl RAM_27e3ff8
RAM_27e3ff8:
    .word 0

RAM_27e3ffc: @ Interrupt Handler Adr
    .word 0

