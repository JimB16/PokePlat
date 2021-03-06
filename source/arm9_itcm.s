/************************
    Instruction TCM
************************/


.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


/************************
Interrupt Request Handler
************************/

@ 0x2101d20
.section .itcm, "ax"

arm_func_start OS_IrqHandler
OS_IrqHandler: @ 1ff8000 :arm
	stmfd   sp!, {lr}

	mov     r12, #0x4000000
	add     r12, r12, #0x210
	ldr     r1, [r12, #-0x8]        @ 0x4000208 = REG_IME

	cmp     r1, #IME_DISABLE
	beq     branch_1ff801c
	b       branch_1ff8020

branch_1ff801c: @ 1ff801c :arm
	ldmfd   sp!, {pc}

branch_1ff8020: @ 1ff8020 :arm
	ldmia   r12, {r1,r2}            @ load from REG_IE and REG_IF
	ands    r1, r1, r2              @ and compare
	beq     branch_1ff8030
	b       branch_1ff8034

branch_1ff8030: @ 1ff8030 :arm
	ldmfd   sp!, {pc}

branch_1ff8034: @ 1ff8034 :arm
	mov     r3, #1<<31
branch_1ff8038: @ 1ff8038 :arm
	clz     r0, r1
	bics    r1, r1, r3, lsr r0
	bne     branch_1ff8038

	mov     r1, r3, lsr r0
	str     r1, [r12, #0x4]
	rsbs    r0, r0, #0x1f
	ldr     r1, =RAM_27e0000
	ldr     r0, [r1, r0, lsl #0x2]
	ldr     lr, =OS_IrqHandler2
	bx      r0
@ 0x1ff8060

.pool
arm_func_end OS_IrqHandler



arm_func_start OS_IrqHandler2
OS_IrqHandler2: @ 1ff8068 :arm
	ldr     r12, =RAM_27e0060
	mov     r3, #0x0
	ldr     r12, [r12, #RAM_27e0060_0]
	mov     r2, #0x1
	cmp     r12, #0x0
	beq     branch_1ff80b8

branch_1ff8080: @ 1ff8080 :arm
	str     r2, [r12, #0x64]
	str     r3, [r12, #0x78]
	str     r3, [r12, #0x7c]
	ldr     r0, [r12, #0x80]
	str     r3, [r12, #0x80]
	mov     r12, r0
	cmp     r12, #0x0
	bne     branch_1ff8080

	ldr     r12, =RAM_27e0060
	str     r3, [r12, #RAM_27e0060_0]
	str     r3, [r12, #RAM_27e0060_4]
	ldr     r12, =RAM_21ccc80
	mov     r1, #0x1
	strh    r1, [r12, #RAM_21ccc80_0]
branch_1ff80b8: @ 1ff80b8 :arm
	ldr     r12, =RAM_21ccc80
	ldrh    r1, [r12, #RAM_21ccc80_0]
	cmp     r1, #0x0
	beq     branch_1ff80cc
	b       branch_1ff80d0

branch_1ff80cc: @ 1ff80cc :arm
	ldr     pc, [sp], #0x4
branch_1ff80d0: @ 1ff80d0 :arm
	mov     r1, #0x0
	strh    r1, [r12, #RAM_21ccc80_0]
	mov     r3, #0xd2
	msr     CPSR_c, r3
	add     r2, r12, #RAM_21ccc80_8
	ldr     r1, [r2]
branch_1ff80e8: @ 1ff80e8 :arm
	cmp     r1, #0x0
	bne     branch_1ff80f4
	b       branch_1ff80f8

branch_1ff80f4: @ 1ff80f4 :arm
	ldrh    r0, [r1, #0x64]
branch_1ff80f8: @ 1ff80f8 :arm
	bne     branch_1ff8100
	b       branch_1ff8104

branch_1ff8100: @ 1ff8100 :arm
	cmp     r0, #0x1
branch_1ff8104: @ 1ff8104 :arm
	bne     branch_1ff810c
	b       branch_1ff8110

branch_1ff810c: @ 1ff810c :arm
	ldr     r1, [r1, #0x68]
branch_1ff8110: @ 1ff8110 :arm
	bne     branch_1ff80e8

	cmp     r1, #0x0
	bne     branch_1ff8128

branch_1ff811c: @ 1ff811c :arm
	mov     r3, #0x92
	msr     CPSR_c, r3
	ldr     pc, [sp], #0x4
branch_1ff8128: @ 1ff8128 :arm
	ldr     r0, [r12, #RAM_21ccc80_4]
	cmp     r1, r0
	beq     branch_1ff811c

	ldr     r3, [r12, #RAM_21ccc80_c]
	cmp     r3, #0x0
	beq     branch_1ff8150

	stmfd   sp!, {r0,r1,r12}
	mov     lr, pc
	bx      r3
	ldmfd   sp!, {r0,r1,r12}

branch_1ff8150: @ 1ff8150 :arm
	str     r1, [r12, #RAM_21ccc80_4]
	mrs     r2, SPSR
	str     r2, [r0]!
	stmfd   sp!, {r0,r1}
	add     r0, r0, #0x0
	add     r0, r0, #0x48
	ldr     r1, =CP_SaveContext
	blx     r1
	ldmfd   sp!, {r0,r1}
	ldmed   sp!, {r2,r3}
	stmib   r0!, {r2,r3}
	ldmed   sp!, {r2,r3,r12,lr}
	stmib   r0!, {r2-lr}^
	stmib   r0!, {lr}
	mov     r3, #0xd3
	msr     CPSR_c, r3
	stmib   r0!, {sp}
	stmfd   sp!, {r1}
	add     r0, r1, #0x0
	add     r0, r0, #0x48
	ldr     r1, =CPi_RestoreContext
	blx     r1
	ldmfd   sp!, {r1}
	ldr     sp, [r1, #0x44]
	mov     r3, #0xd2
	msr     CPSR_c, r3
	ldr     r2, [r1]!
	msr     SPSR_fc, r2
	ldr     lr, [r1, #0x40]
	ldmib   r1, {r0-lr}^
	mov     r0, r0
	stmed   sp!, {r0-r3,r12,lr}
	ldmfd   sp!, {pc}
@ 0x1ff81d4

.pool
arm_func_end OS_IrqHandler2



arm_func_start OSi_DoResetSystem
OSi_DoResetSystem: @ 1ff81e4 :arm
	stmfd   sp!, {r3,lr}

	ldr     r0, =RAM_21ccfe4
branch_1ff81ec: @ 1ff81ec :arm
	ldrh    r1, [r0]
	cmp     r1, #0x0
	beq     branch_1ff81ec

	ldr     r0, =REG_IME
	mov     r1, #IME_DISABLE
	strh    r1, [r0]

	bl      OSi_ReloadRomData
	bl      Function_1ff8218

	ldmfd   sp!, {r3,pc}
@ 0x1ff8210

.pool
arm_func_end OSi_DoResetSystem



arm_func_start Function_1ff8218
Function_1ff8218: @ 1ff8218 :arm
	mov     r12, #0x4000000
	str     r12, [r12, #0x208]
	ldr     r1, =RAM_27e0000
	add     r1, r1, #0x3fc0
	add     r1, r1, #0x3c
	mov     r0, #0x0
	str     r0, [r1]

	ldr     r1, =REG_IPC_SYNC
branch_1ff8238: @ 1ff8238 :arm
	ldrh    r0, [r1]
	and     r0, r0, #0xf
	cmp     r0, #0x1
	bne     branch_1ff8238

	mov     r0, #0x100
	strh    r0, [r1]

	mov     r0, #0x0
	ldr     r3, =RAM_27ffd9c
	ldr     r4, [r3]
	ldr     r1, =RAM_27ffd80
	mov     r2, #0x80
	bl      MIi_CpuClearFast3
	str     r4, [r3]

	ldr     r1, =RAM_27fff80
	mov     r2, #0x18
	bl      MIi_CpuClearFast3

	ldr     r1, =RAM_27fff98
	strh    r0, [r1]

	ldr     r1, =RAM_27fff9c
	mov     r2, #0x64
	bl      MIi_CpuClearFast3

	ldr     r1, =REG_IPC_SYNC
branch_1ff8290: @ 1ff8290 :arm
	ldrh    r0, [r1]
	and     r0, r0, #0xf
	cmp     r0, #0x1
	beq     branch_1ff8290

	mov     r0, #0x0
	strh    r0, [r1]
	ldr     r3, =RAM_27ffe00
	ldr     r12, [r3, #RAM_27ffe00_24]
	mov     lr, r12
	ldr     r11, =RAM_27fff80
	ldmia   r11, {r0-r10}
	mov     r11, #0x0
	bx      r12
@ 0x1ff82c4

.pool
arm_func_end Function_1ff8218


/* Fill memory with value

Input:
r0 = Fill Value
r1 = Start Address
r2 = length
*/
arm_func_start MIi_CpuClearFast3
MIi_CpuClearFast3: @ 1ff82e4 :arm
	add     r12, r1, r2
branch_1ff82e8: @ 1ff82e8 :arm
	cmp     r1, r12
	blt     branch_1ff82f4
	b       branch_1ff82f8

branch_1ff82f4: @ 1ff82f4 :arm
	stmia   r1!, {r0}
branch_1ff82f8: @ 1ff82f8 :arm
	blt     branch_1ff82e8

	bx      lr
arm_func_end MIi_CpuClearFast3


arm_func_start OSi_ReloadRomData
OSi_ReloadRomData: @ 1ff8300 :arm
	stmfd   sp!, {r3-r11,lr}
	ldr     r1, =RAM_27ffc2c
	ldr     r4, [r1]
	cmp     r4, #0x8000
	blo    branch_1ff8324

    @ load NDS Cart Header
	mov     r0, r4
	add     r1, r1, #0x1d4      @ 0x27FFE00
	mov     r2, #0x160
	bl      OSi_ReadCardRom32

branch_1ff8324: @ 1ff8324 :arm
	ldr     r0, =RAM_27ffe20
	ldr     r5, [r0]                @ ARM9 rom_offset    (4000h and up, align 1000h)
	ldr     r6, [r0, #0x8]          @ ARM9 ram_address   (2000000h..23BFE00h)
	ldr     r7, [r0, #0xc]          @ ARM9 size          (max 3BFE00h) (3839.5KB)
	ldr     r8, [r0, #0x10]         @ ARM7 rom_offset    (8000h and up)
	ldr     r9, [r0, #0x18]         @ ARM7 ram_address   (2000000h..23BFE00h, or 37F8000h..3807E00h)
	ldr     r10, [r0, #0x1c]        @ ARM7 size          (max 3BFE00h, or FE00h) (3839.5KB, 63.5KB)

	bl      OS_DisableInterrupts
	mov     r11, r0
	bl      DC_StoreAll
	bl      DC_InvalidateAll
	mov     r0, r11
	bl      OS_RestoreInterrupts
	bl      IC_InvalidateAll
	bl      DC_WaitWriteBufferEmpty

	add     r5, r5, r4
	cmp     r5, #0x8000
	bhs     branch_1ff837c

	rsb     r0, r5, #0x8000
	add     r6, r6, r0
	sub     r7, r7, r0
	mov     r5, #0x8000
branch_1ff837c: @ 1ff837c :arm
    
    @ load ARM9
	mov     r0, r5      @ rom_offset
	mov     r1, r6      @ ram_address
	mov     r2, r7      @ size
	bl      OSi_ReadCardRom32

    @ load ARM7
	mov     r1, r9      @ ram_address
	mov     r2, r10     @ size
	add     r0, r8, r4
	bl      OSi_ReadCardRom32

	ldmfd   sp!, {r3-r11,pc}
@ 0x1ff83a0

.pool
arm_func_end OSi_ReloadRomData



/* Input:
r0: source (rom_offset)
r1: destination (ram_address)
r2: size
*/
arm_func_start OSi_ReadCardRom32
OSi_ReadCardRom32: @ 1ff83a8 :arm
	stmfd   sp!, {r3-r9,lr}
	ldr     r4, =RAM_27ffe60        @ Port 40001A4h setting for normal commands (usually 00586000h)
	ldr     r3, =0x1ff
	ldr     r5, [r4]
	and     r4, r0, r3
	bic     r3, r5, #0x7000000
	ldr     r5, =REG_ROMCTRL
	orr     r3, r3, #0xa1000000
	rsb     r12, r4, #0x0
branch_1ff83cc: @ 1ff83cc :arm
	ldr     r4, [r5]
	tst     r4, #CARD_ACTIVATE
	bne     branch_1ff83cc

	ldr     r7, =REG_AUXSPICNTH
	mov     r4, #CARD_CR1_ENABLE
	strb    r4, [r7]
	cmp     r12, r2
	add     r0, r0, r12
	ldmgefd sp!, {r3-r9,pc}         @ if card not enabled exit function

	ldr     r4, =CARD_DATA_RD
	mov     r9, r0, lsr #8
	mov     r6, #CARD_CMD_DATA_READ
	mov     r5, #0x0
branch_1ff8400: @ 1ff8400 :arm
	strb    r6, [r7, #0x7]      @ 0x040001A8 = CARD_COMMAND
	mov     lr, r0, lsr #24
	strb    lr, [r7, #0x8]      @ CARD_COMMAND+1 (eg. addr bit 24-31)
	mov     lr, r0, lsr #16
	strb    lr, [r7, #0x9]      @ CARD_COMMAND+2 (eg. addr bit 16-23)
	strb    r9, [r7, #0xa]      @ CARD_COMMAND+3 (eg. addr bit 8-15) (when aligned=even)
	strb    r0, [r7, #0xb]      @ CARD_COMMAND+4 (eg. addr bit 0-7)  (when aligned=00h)
	strb    r5, [r7, #0xc]      @ CARD_COMMAND+5 (eg. 00h)
	strb    r5, [r7, #0xd]      @ CARD_COMMAND+6 (eg. 00h)
	strb    r5, [r7, #0xe]      @ CARD_COMMAND+7 (eg. 00h) (LSB)
	str     r3, [r7, #0x3]      @ REG_ROMCTRL

branch_1ff842c: @ 1ff842c :arm
	ldr     r8, [r7, #0x3]      @ REG_ROMCTRL
	tst     r8, #CARD_DATA_READY
	beq     branch_1ff8450

	cmp     r12, #0x0
	ldr     lr, [r4]
	blt     branch_1ff844c

	cmp     r12, r2
	strlt   lr, [r1, r12]
branch_1ff844c: @ 1ff844c :arm
	add     r12, r12, #0x4
branch_1ff8450: @ 1ff8450 :arm
	tst     r8, #CARD_BUSY
	bne     branch_1ff842c

	cmp     r12, r2
	add     r9, r9, #0x2
	add     r0, r0, #0x200
	blt     branch_1ff8400

	ldmfd   sp!, {r3-r9,pc}
@ 0x1ff846c

.pool
arm_func_end OSi_ReadCardRom32



/* Input:
r0: # of DMA
r1: Source
r2: Destination
r3: Control | WordCount << 16
*/
arm_func_start PreITCM_MIi_DmaSetParams
PreITCM_MIi_DmaSetParams: @ 1ff8480 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3

	bl      OS_DisableInterrupts

	mov     r1, #0xc
	mul     r2, r7, r1
	add     r1, r2, #0xb0
	add     r2, r2, #0x4000000
	str     r6, [r2, #0xb0]
	add     r1, r1, #0x4000000
	str     r5, [r1, #0x4]
	str     r4, [r1, #0x8]

	bl      OS_RestoreInterrupts

	ldmfd   sp!, {r3-r7,pc}
arm_func_end PreITCM_MIi_DmaSetParams


/* Input:
r0: NrOfDMAChannel
r1: Source
r2: Destination
r3: Word Count
*/
arm_func_start PreITCM_MIi_DmaSetParams_wait
PreITCM_MIi_DmaSetParams_wait: @ 1ff84c0 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3

	bl      OS_DisableInterrupts

	mov     r1, #0xc
	mul     r2, r7, r1
	add     r1, r2, #0xb0
	add     r2, r2, #0x4000000
	str     r6, [r2, #0xb0]         @ Source Address
	add     r3, r1, #0x4000000
	str     r5, [r3, #0x4]          @ Destination Address
	ldr     r2, =DMA0_SRC
	str     r4, [r3, #0x8]          @ Word Count + Control
	ldr     r1, [r2]
	cmp     r7, #0x0
	ldr     r1, [r2]
	bne     branch_1ff8520

	mov     r2, #0x0
	str     r2, [r3]
	ldr     r1, =0x81400001
	str     r2, [r3, #0x4]
	str     r1, [r3, #0x8]
branch_1ff8520: @ 1ff8520 :arm

	bl      OS_RestoreInterrupts

	ldmfd   sp!, {r3-r7,pc}
@ 0x1ff8528

.pool
arm_func_end PreITCM_MIi_DmaSetParams_wait



/* Input:
r0: # of DMA
r1: Source
r2: Destination
r3: Control | WordCount << 16
*/
arm_func_start MIi_DmaSetParams_noInt
MIi_DmaSetParams_noInt: @ 1ff8530 :arm
	mov     r12, #0xc
	mul     r12, r0, r12
	add     r0, r12, #0xb0
	add     r12, r12, #0x4000000
	str     r1, [r12, #0xb0]
	add     r0, r0, #0x4000000
	str     r2, [r0, #0x4]
	str     r3, [r0, #0x8]
	bx      lr
arm_func_end MIi_DmaSetParams_noInt


arm_func_start MIi_DmaSetParams_wait_noInt
MIi_DmaSetParams_wait_noInt: @ 1ff8554 :arm
	stmfd   sp!, {r3,lr}
	mov     r12, #0xc
	mul     lr, r0, r12
	add     r12, lr, #0xb0
	add     lr, lr, #0x4000000
	str     r1, [lr, #0xb0]
	add     r12, r12, #0x4000000
	str     r2, [r12, #0x4]
	ldr     r2, =DMA0_SRC
	str     r3, [r12, #0x8]
	ldr     r1, [r2]
	cmp     r0, #0x0
	ldr     r0, [r2]
	bne     branch_1ff85a0

	mov     r1, #0x0
	str     r1, [r12]
	ldr     r0, =0x81400001
	str     r1, [r12, #0x4]
	str     r0, [r12, #0x8]
branch_1ff85a0: @ 1ff85a0 :arm
	ldr     r1, =DMA0_SRC
	ldr     r0, [r1]
	ldr     r0, [r1]
	ldmfd   sp!, {r3,pc}
@ 0x1ff85b0

.pool
arm_func_end MIi_DmaSetParams_wait_noInt



arm_func_start MI_SendGXCommand
MI_SendGXCommand: @ 1ff85b8 :arm
	stmfd   sp!, {r3-r11,lr}
	movs    r8, r2
	mov     r10, r0
	mov     r9, r1
	ldmeqfd sp!, {r3-r11,pc}

	mov     r3, #0x0
	bl      MIi_CheckDma0SourceAddress
	add     r0, r10, r10, lsl #1
	add     r0, r0, #0x2
	mov     r0, r0, lsl #2
	add     r0, r0, #0xb0
	add     r6, r0, #0x4000000
branch_1ff85e8: @ 1ff85e8 :arm
	ldr     r0, [r6]
	tst     r0, #0x80000000
	bne     branch_1ff85e8

	cmp     r8, #0x0
	beq     branch_1ff8634

	ldr     r11, =GFX_FIFO
	ldr     r4, =0x84400000
	mov     r5, #0x1d8
branch_1ff8608: @ 1ff8608 :arm
	cmp     r8, #0x1d8
	movhi   r7, r5
	movls   r7, r8
	mov     r0, r10
	mov     r1, r9
	mov     r2, r11
	orr     r3, r4, r7, lsr #2
	bl      PreITCM_MIi_DmaSetParams
	subs    r8, r8, r7
	add     r9, r9, r7
	bne     branch_1ff8608

branch_1ff8634: @ 1ff8634 :arm
	ldr     r0, [r6]
	tst     r0, #0x80000000
	bne     branch_1ff8634

	ldmfd   sp!, {r3-r11,pc}
@ 0x1ff8644

.pool
arm_func_end MI_SendGXCommand


@ 0x1ff864c
.align 5, 0


@ 0x1ff8660
