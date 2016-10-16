
.arm
entry_point: @ 2000800 :arm
	mov     r12, #0x4000000
	str     r12, [r12, #0x208]
branch_2000808: @ 2000808 :arm
	ldrh    r0, [r12, #0x6]
	cmp     r0, #0x0
	bne     branch_2000808
	bl      init_cp15
	mov     r0, #0x13
	msr     CPSR_c, r0
	ldr     r0, [pc, #0x108] @ [0x2000930] (=RAM_27e0000)
	add     r0, r0, #0x3fc0
	mov     sp, r0
	mov     r0, #0x12
	msr     CPSR_c, r0
	ldr     r0, [pc, #0xf4] @ [0x2000930] (=RAM_27e0000)
	add     r0, r0, #0x3fc0
	sub     r0, r0, #0x40
	sub     sp, r0, #0x4
	tst     sp, #0x4
	beq     branch_2000850
	b       branch_2000854

branch_2000850: @ 2000850 :arm
	sub     sp, sp, #0x4
branch_2000854: @ 2000854 :arm
	ldr     r1, [pc, #0xd8] @ [0x2000934] (=0x800)
	sub     r1, r0, r1
	mov     r0, #0x1f
	msr     CPSR_fsxc, r0
	sub     sp, r1, #0x4
    
	mov     r0, #0x0
	ldr     r1, [pc, #0xbc] @ [0x2000930] (=RAM_27e0000)
	mov     r2, #0x4000
	bl      MIi_CpuClearFast2

	mov     r0, #0x0
	ldr     r1, [pc, #0xb4] @ [0x2000938] (=BG_PALETTE)
	mov     r2, #BG_PALETTE_SUB - BG_PALETTE
	bl      MIi_CpuClearFast2

	mov     r0, #ATTR0_DISABLED
	ldr     r1, [pc, #0xa8] @ [0x200093c] (=OAM)
	mov     r2, #OAM_SUB-OAM
	bl      MIi_CpuClearFast2
    
	ldr     r1, [pc, #0xa0] @ [0x2000940] (=Unknown_2000ba0)
	ldr     r0, [r1, #0x14]
	bl      Function_2000970
	bl      Function_2000a1c
	ldr     r0, [pc, #0x90] @ [0x2000940] (=Unknown_2000ba0)
	ldr     r1, [r0, #0xc]
	ldr     r2, [r0, #0x10]
	mov     r3, r1
	mov     r0, #0x0
branch_20008bc: @ 20008bc :arm
	cmp     r1, r2
	bcc     branch_20008c8
	b       branch_20008cc

branch_20008c8: @ 20008c8 :arm
	str     r0, [r1], #0x4
branch_20008cc: @ 20008cc :arm
	bcc     branch_20008bc
	bic     r1, r3, #0x1f
branch_20008d4: @ 20008d4 :arm
	mcr     p15, 0, r0, c7, c10, 4
	mcr     p15, 0, r1, c7, c5, 1
	mcr     p15, 0, r1, c7, c14, 1
	add     r1, r1, #0x20
	cmp     r1, r2
	blt     branch_20008d4
	ldr     r1, [pc, #0x50] @ [0x2000944] (=RAM_27fff9c)
	str     r0, [r1]
    
	ldr     r1, [pc, #0x34] @ [0x2000930] (=RAM_27e0000)
	add     r1, r1, #0x3fc0
	add     r1, r1, #0x3c
	ldr     r0, [pc, #0x40] @ [0x2000948] (=OS_IrqHandler)
	str     r0, [r1]
    
	bl      Function_20e28b8
	bl      NitroStartUp
	bl      Function_20e402c
	ldr     r1, [pc, #0x30] @ [0x200094c] (=start+1)
	ldr     lr, [pc, #0x30] @ [0x2000950] (=0xffff0000)
	tst     sp, #0x4
	bne     branch_2000928
	b       branch_200092c

branch_2000928: @ 2000928 :arm
	sub     sp, sp, #0x4
branch_200092c: @ 200092c :arm
	bx      r1
@ 0x2000930

.word RAM_27e0000 @ 0x2000930
.word 0x800 @ 0x2000934
.word BG_PALETTE @ 0x2000938
.word OAM @ 0x200093c
.word Unknown_2000ba0 @ 0x2000940
.word RAM_27fff9c @ 0x2000944
.word OS_IrqHandler @ 0x2000948
.word start+1 @ 0x200094c
.word 0xffff0000 @ 0x2000950



.arm
/* Fill memory with value

Input:
r0 = Fill Value
r1 = Start Address
r2 = length
*/
MIi_CpuClearFast2: @ 2000954 :arm
	add     r12, r1, r2
branch_2000958: @ 2000958 :arm
	cmp     r1, r12
	blt     branch_2000964
	b       branch_2000968

branch_2000964: @ 2000964 :arm
	stmia   r1!, {r0}
branch_2000968: @ 2000968 :arm
	blt     branch_2000958
	bx      lr
@ 0x2000970


Function_2000970: @ 2000970 :arm
	cmp     r0, #0x0
	beq     branch_2000a18
	stmfd   sp!, {r4-r7}
	ldmdb   r0, {r1,r2}
	add     r2, r0, r2
	sub     r3, r0, r1, lsr #24
	bic     r1, r1, #0xff000000
	sub     r1, r0, r1
	mov     r4, r2
branch_2000994: @ 2000994 :arm
	cmp     r3, r1
	ble     branch_20009f4
	ldrb    r5, [r3, #-0x1]!
	mov     r6, #0x8
branch_20009a4: @ 20009a4 :arm
	subs    r6, r6, #0x1
	blt     branch_2000994
	tst     r5, #0x80
	bne     branch_20009c0
	ldrb    r0, [r3, #-0x1]!
	strb    r0, [r2, #-0x1]!
	b       branch_20009e8

branch_20009c0: @ 20009c0 :arm
	ldrb    r12, [r3, #-0x1]!
	ldrb    r7, [r3, #-0x1]!
	orr     r7, r7, r12, lsl #8
	bic     r7, r7, #0xf000
	add     r7, r7, #0x2
	add     r12, r12, #0x20
branch_20009d8: @ 20009d8 :arm
	ldrb    r0, [r2, r7]
	strb    r0, [r2, #-0x1]!
	subs    r12, r12, #0x10
	bge     branch_20009d8
branch_20009e8: @ 20009e8 :arm
	cmp     r3, r1
	mov     r5, r5, lsl #1
	bgt     branch_20009a4
branch_20009f4: @ 20009f4 :arm
	mov     r0, #0x0
	bic     r3, r1, #0x1f
branch_20009fc: @ 20009fc :arm
	mcr     p15, 0, r0, c7, c10, 4
	mcr     p15, 0, r3, c7, c5, 1
	mcr     p15, 0, r3, c7, c14, 1
	add     r3, r3, #0x20
	cmp     r3, r4
	blt     branch_20009fc
	ldmfd   sp!, {r4-r7}
branch_2000a18: @ 2000a18 :arm
	bx      lr
@ 0x2000a1c


Function_2000a1c: @ 2000a1c :arm
	ldr     r0, =Unknown_2000ba0
	ldr     r1, [r0]
	ldr     r2, [r0, #0x4]
	ldr     r3, [r0, #0x8]
branch_2000a2c: @ 2000a2c :arm
	cmp     r1, r2
	beq     branch_2000aa4
	ldr     r5, [r1], #0x4
	ldr     r7, [r1], #0x4
	add     r6, r5, r7
	mov     r4, r5
branch_2000a44: @ 2000a44 :arm
	cmp     r4, r6
	bmi     branch_2000a50
	b       branch_2000a54

branch_2000a50: @ 2000a50 :arm
	ldr     r7, [r3], #0x4
branch_2000a54: @ 2000a54 :arm
	bmi     branch_2000a5c
	b       branch_2000a60

branch_2000a5c: @ 2000a5c :arm
	str     r7, [r4], #0x4
branch_2000a60: @ 2000a60 :arm
	bmi     branch_2000a44
	ldr     r7, [r1], #0x4
	add     r6, r4, r7
	mov     r7, #0x0
branch_2000a70: @ 2000a70 :arm
	cmp     r4, r6
	bcc     branch_2000a7c
	b       branch_2000a80

branch_2000a7c: @ 2000a7c :arm
	str     r7, [r4], #0x4
branch_2000a80: @ 2000a80 :arm
	bcc     branch_2000a70
	bic     r4, r5, #0x1f
branch_2000a88: @ 2000a88 :arm
	mcr     p15, 0, r7, c7, c10, 4
	mcr     p15, 0, r4, c7, c5, 1
	mcr     p15, 0, r4, c7, c14, 1
	add     r4, r4, #0x20
	cmp     r4, r6
	blt     branch_2000a88
	b       branch_2000a2c

branch_2000aa4: @ 2000aa4 :arm
	b       branch_2000aac
@ 0x2000aa8

.pool


.arm
branch_2000aac: @ 2000aac :arm
	bx      lr
@ 0x2000ab0


init_cp15: @ 2000ab0 :arm
	mrc     p15, 0, r0, c1, c0, 0   @ Control Register (R/W, or R=Fixed)
	ldr     r1, =0xf9005
	bic     r0, r0, r1
	mcr     p15, 0, r0, c1, c0, 0
    
	mov     r0, #0x0
	mcr     p15, 0, r0, c7, c5, 0
	mcr     p15, 0, r0, c7, c6, 0
	mcr     p15, 0, r0, c7, c10, 4
    
	ldr     r0, =0x4000033
	mcr     p15, 0, r0, c6, c0, 0
	ldr     r0, =0x200002d
	mcr     p15, 0, r0, c6, c1, 0
	ldr     r0, =0x27e0021
	mcr     p15, 0, r0, c6, c2, 0
	ldr     r0, =0x8000035
	mcr     p15, 0, r0, c6, c3, 0
	ldr     r0, =RAM_27e0000
	orr     r0, r0, #0x1a
	orr     r0, r0, #0x1
	mcr     p15, 0, r0, c6, c4, 0
	ldr     r0, =0x100002f
	mcr     p15, 0, r0, c6, c5, 0
	ldr     r0, =0xffff001d
	mcr     p15, 0, r0, c6, c6, 0
	ldr     r0, =0x27ff017
	mcr     p15, 0, r0, c6, c7, 0
    
	mov     r0, #0x20
	mcr     p15, 0, r0, c9, c1, 1   @ TCM Instruction TCM Base and Virtual Size
	ldr     r0, =RAM_27e0000
	orr     r0, r0, #0xa
	mcr     p15, 0, r0, c9, c1, 0   @ TCM Data TCM Base and Virtual Size
	mov     r0, #0x42
    
	mcr     p15, 0, r0, c2, c0, 1   @ PU Cachability Bits for Instruction Protection Region
	mov     r0, #0x42
	mcr     p15, 0, r0, c2, c0, 0   @ PU Cachability Bits for Data/Unified Protection Region
	mov     r0, #0x2
	mcr     p15, 0, r0, c3, c0, 0   @ PU Write-Bufferability Bits for Data Protection Regions
	ldr     r0, =0x5100011
	mcr     p15, 0, r0, c5, c0, 3   @ PU Extended Access Permission Instruction Protection Region
	ldr     r0, =0x15111011
	mcr     p15, 0, r0, c5, c0, 2   @ PU Extended Access Permission Data/Unified Protection Region
	mrc     p15, 0, r0, c1, c0, 0   @ Control Register (R/W, or R=Fixed)
	ldr     r1, =0x5707d
	orr     r0, r0, r1
	mcr     p15, 0, r0, c1, c0, 0
	bx      lr
@ 0x2000b68

.pool



.arm
NitroStartUp: @ 2000b98 :arm
	bx      lr
@ 0x2000b9c


