
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram107, "ax"


.thumb
Function_2241ae0: @ 2241ae0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	ldr     r0, [pc, #0xe0] @ 0x2241bc8, (=0x68)
	mov     r1, #0x2
	bl      LoadOverlay
	bl      Function_2242f24
	mov     r2, #0x25
	mov     r0, #0x3
	mov     r1, #0x64
	lsl     r2, r2, #12
	bl      Function_2017fc8
	ldr     r1, [pc, #0xcc] @ 0x2241bcc, (=0x43c)
	mov     r0, r4
	mov     r2, #0x64
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0xc0] @ 0x2241bcc, (=0x43c)
	mov     r1, #0x0
	mov     r5, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x64
	bl      Function_2018340
	str     r0, [r5, #0x4c]
	mov     r0, r4
	str     r4, [r5, #0x0]
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	mov     r0, #0x73
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	bl      Function_20302dc
	mov     r1, #0x1d
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	bl      Function_203041c
	mov     r1, #0x75
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r0, [r4, #0x4]
	mov     r2, r4
	add     r2, #0x20
	strb    r0, [r5, #0x9]
	mov     r0, #0xf5
	lsl     r0, r0, #2
	sub     r1, #0x8
	str     r2, [r5, r0]
	ldr     r0, [r5, r1]
	bl      LoadPlayerDataAdress
	mov     r1, #0x72
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xf6
	ldr     r1, [r4, #0x18]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r2, #0xff
	strb    r2, [r5, #0x12]
	ldrh    r1, [r4, #0x28]
	add     r0, #0x5e
	add     r2, #0xcd
	strh    r1, [r5, r0]
	ldr     r0, [r5, r2]
	bl      LoadVariableAreaAdress_17
	str     r0, [r5, #0x4]
	ldr     r0, [pc, #0x50] @ 0x2241bd0, (=0x433)
	mov     r3, #0x0
	mov     r2, #0x1
.thumb
branch_2241b84: @ 2241b84 :thumb
	add     r1, r5, r3
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r2, [r1, r0]
	cmp     r3, #0x3
	blt     branch_2241b84
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2241b9c
	mov     r0, #0x3
	b       branch_2241b9e
@ 0x2241b9c

.thumb
branch_2241b9c: @ 2241b9c :thumb
	mov     r0, #0x4
.thumb
branch_2241b9e: @ 2241b9e :thumb
	strb    r0, [r5, #0x14]
	ldrb    r0, [r5, #0x14]
	strb    r0, [r5, #0x15]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0xc]
	mov     r0, r5
	bl      Function_2242f5c
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2241bbe
	mov     r0, r5
	bl      Function_209ba80
.thumb
branch_2241bbe: @ 2241bbe :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2241bc6


.align 2


.word 0x68 @ 0x2241bc8
.word 0x43c @ 0x2241bcc
.word 0x433 @ 0x2241bd0
.thumb
Function_2241bd4: @ 2241bd4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	ldr     r1, [pc, #0x148] @ 0x2241d28, (=0x432)
	mov     r4, r0
	ldrb    r2, [r4, r1]
	cmp     r2, #0x1
	bne     branch_2241c3e
	ldr     r2, [r5, #0x0]
	cmp     r2, #0x1
	bne     branch_2241c64
	mov     r2, #0x0
	strb    r2, [r4, r1]
	bl      Function_22451d8
	mov     r0, #0x3b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2241c0a
	bl      Function_2249b8c
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x4
	bic     r1, r0
	strb    r1, [r4, #0xe]
.thumb
branch_2241c0a: @ 2241c0a :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      0x222e5d0
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2244bd0
	b       branch_2241c64
@ 0x2241c3e

.thumb
branch_2241c3e: @ 2241c3e :thumb
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0xff
	beq     branch_2241c64
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x1
	beq     branch_2241c4e
	cmp     r0, #0x3
	bne     branch_2241c64
.thumb
branch_2241c4e: @ 2241c4e :thumb
	ldr     r0, [pc, #0xd8] @ 0x2241d28, (=0x432)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_22451d8
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2244bd0
.thumb
branch_2241c64: @ 2241c64 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_2241d12
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2241c76

Jumppoints_2241c76:
.hword branch_2241c80 - Jumppoints_2241c76 - 2
.hword branch_2241c96 - Jumppoints_2241c76 - 2
.hword branch_2241cd8 - Jumppoints_2241c76 - 2
.hword branch_2241cee - Jumppoints_2241c76 - 2
.hword branch_2241d04 - Jumppoints_2241c76 - 2
.thumb
branch_2241c80: @ 2241c80 :thumb
	mov     r0, r4
	bl      Function_2241d6c
	cmp     r0, #0x1
	bne     branch_2241d12
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2244bd0
	b       branch_2241d12
@ 0x2241c96

.thumb
branch_2241c96: @ 2241c96 :thumb
	mov     r0, r4
	bl      Function_2241ec8
	cmp     r0, #0x1
	bne     branch_2241d12
	ldrb    r0, [r4, #0xe]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2241cb6
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2244bd0
	b       branch_2241d12
@ 0x2241cb6

.thumb
branch_2241cb6: @ 2241cb6 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2241ccc
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2244bd0
	b       branch_2241d12
@ 0x2241ccc

.thumb
branch_2241ccc: @ 2241ccc :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_2244bd0
	b       branch_2241d12
@ 0x2241cd8

.thumb
branch_2241cd8: @ 2241cd8 :thumb
	mov     r0, r4
	bl      Function_2242c64
	cmp     r0, #0x1
	bne     branch_2241d12
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2244bd0
	b       branch_2241d12
@ 0x2241cee

.thumb
branch_2241cee: @ 2241cee :thumb
	mov     r0, r4
	bl      Function_2242d60
	cmp     r0, #0x1
	bne     branch_2241d12
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_2244bd0
	b       branch_2241d12
@ 0x2241d04

.thumb
branch_2241d04: @ 2241d04 :thumb
	mov     r0, r4
	bl      Function_2242dcc
	cmp     r0, #0x1
	bne     branch_2241d12
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241d12

.thumb
branch_2241d12: @ 2241d12 :thumb
	mov     r0, r4
	bl      Function_2245c00
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20219f8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241d26


.align 2


.word 0x432 @ 0x2241d28
.thumb
Function_2241d2c: @ 2241d2c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0xd]
	ldr     r0, [r4, r0]
	strh    r1, [r0, #0x0]
	bl      Function_201dc3c
	mov     r0, r4
	bl      Function_2242e14
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x64
	bl      Function_201807c
	ldr     r0, [pc, #0x8] @ 0x2241d68, (=0x68)
	bl      UnloadOverlay
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241d68

.word 0x68 @ 0x2241d68
.thumb
Function_2241d6c: @ 2241d6c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_2241e68
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2241d84

Jumppoints_2241d84:
.hword branch_2241d8e - Jumppoints_2241d84 - 2
.hword branch_2241daa - Jumppoints_2241d84 - 2
.hword branch_2241dd2 - Jumppoints_2241d84 - 2
.hword branch_2241e18 - Jumppoints_2241d84 - 2
.hword branch_2241e5a - Jumppoints_2241d84 - 2
.thumb
branch_2241d8e: @ 2241d8e :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2241da2
	bl      Function_20365f4
	mov     r0, #0xd7
	bl      Function_20364f0
.thumb
branch_2241da2: @ 2241da2 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241e68
@ 0x2241daa

.thumb
branch_2241daa: @ 2241daa :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2241dca
	mov     r0, #0xd7
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2241e68
	bl      Function_20365f4
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241e68
@ 0x2241dca

.thumb
branch_2241dca: @ 2241dca :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241e68
@ 0x2241dd2

.thumb
branch_2241dd2: @ 2241dd2 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2241df2
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_224529c
	cmp     r0, #0x1
	bne     branch_2241e68
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241e68
@ 0x2241df2

.thumb
branch_2241df2: @ 2241df2 :thumb
	mov     r0, r4
	bl      Function_2241e70
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241e68
@ 0x2241e18

.thumb
branch_2241e18: @ 2241e18 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2241e52
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x2
	bcc     branch_2241e68
	mov     r0, #0x0
	strb    r0, [r4, #0xf]
	mov     r0, r4
	bl      Function_2241e70
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241e68
@ 0x2241e52

.thumb
branch_2241e52: @ 2241e52 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241e68
@ 0x2241e5a

.thumb
branch_2241e5a: @ 2241e5a :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2241e68
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2241e68

.thumb
branch_2241e68: @ 2241e68 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2241e6e


.align 2, 0


.thumb
Function_2241e70: @ 2241e70 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	add     r1, sp, #0x8
	add     r3, sp, #0x4
	mov     r4, r0
	add     r1, #0x2
	add     r2, sp, #0x8
	add     r3, #0x2
	bl      Function_2244e14
	mov     r5, r4
	add     r5, #0x50
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	mov     r1, r5
	bl      Function_2245464
	mov     r0, r4
	mov     r1, r5
	bl      Function_2245780
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x80
	bl      Function_2243cc0
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x70
	bl      Function_2243db0
	mov     r0, r4
	bl      Function_2243fa4
	bl      Function_201ffd0_SetDISPCNT_SUB_MODE1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2241ec6


.align 2, 0


.thumb
Function_2241ec8: @ 2241ec8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x15
	bls     branch_2241ed8
	bl      branch_2242c54
.thumb
branch_2241ed8: @ 2241ed8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241ee4

Jumppoints_2241ee4:
.hword branch_2241f10 - Jumppoints_2241ee4 - 2
.hword branch_2241fc2 - Jumppoints_2241ee4 - 2
.hword branch_2242090 - Jumppoints_2241ee4 - 2
.hword branch_22422d8 - Jumppoints_2241ee4 - 2
.hword branch_22424ae - Jumppoints_2241ee4 - 2
.hword branch_2242580 - Jumppoints_2241ee4 - 2
.hword branch_2242592 - Jumppoints_2241ee4 - 2
.hword branch_22425c2 - Jumppoints_2241ee4 - 2
.hword branch_22425e6 - Jumppoints_2241ee4 - 2
.hword branch_2242730 - Jumppoints_2241ee4 - 2
.hword branch_22427cc - Jumppoints_2241ee4 - 2
.hword branch_224294a - Jumppoints_2241ee4 - 2
.hword branch_2242a28 - Jumppoints_2241ee4 - 2
.hword branch_2242a3a - Jumppoints_2241ee4 - 2
.hword branch_2242a6a - Jumppoints_2241ee4 - 2
.hword branch_2242a8e - Jumppoints_2241ee4 - 2
.hword branch_2242aaa - Jumppoints_2241ee4 - 2
.hword branch_2242ad2 - Jumppoints_2241ee4 - 2
.hword branch_2242b96 - Jumppoints_2241ee4 - 2
.hword branch_2242bb2 - Jumppoints_2241ee4 - 2
.hword branch_2242bd6 - Jumppoints_2241ee4 - 2
.hword branch_2242c16 - Jumppoints_2241ee4 - 2
.thumb
branch_2241f10: @ 2241f10 :thumb
	ldrb    r1, [r4, #0xe]
	lsl     r1, r1, #25
	lsr     r1, r1, #30
	cmp     r1, #0x1
	bne     branch_2241f3e
	bl      Function_2244064
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xcc
	mov     r2, #0x64
	bl      Function_2249c60
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x60
	add     sp, #0x18
	bic     r1, r0
	strb    r1, [r4, #0xe]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2241f3e

.thumb
branch_2241f3e: @ 2241f3e :thumb
	cmp     r1, #0x2
	bne     branch_2241f66
	bl      Function_224409c
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd3
	mov     r2, #0x6a
	bl      Function_2249c60
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x60
	add     sp, #0x18
	bic     r1, r0
	strb    r1, [r4, #0xe]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2241f66

.thumb
branch_2241f66: @ 2241f66 :thumb
	ldr     r1, [pc, #0x358] @ 0x22422c0, (=RAM_21bf67c)
	ldr     r1, [r1, #0x48]
	bl      Function_2244bd8
	ldr     r0, [pc, #0x350] @ 0x22422c0, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2241fa0
	ldr     r0, [pc, #0x348] @ 0x22422c4, (=0x5dc)
	bl      Function_2005748
	ldrb    r1, [r4, #0xd]
	ldrb    r0, [r4, #0x15]
	cmp     r1, r0
	bcc     branch_2241f8c
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2241f8c

.thumb
branch_2241f8c: @ 2241f8c :thumb
	mov     r0, r4
	bl      Function_224400c
	mov     r0, r4
	bl      Function_2244018
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_2241fa0: @ 2241fa0 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2241fe2
	ldrb    r1, [r4, #0xd]
	ldrb    r0, [r4, #0x15]
	cmp     r1, r0
	beq     branch_2241fe2
	ldr     r0, [pc, #0x314] @ 0x22422c4, (=0x5dc)
	bl      Function_2005748
	ldrb    r0, [r4, #0x15]
	strb    r0, [r4, #0xd]
	mov     r0, r4
	bl      Function_2244c70
	bl      branch_2242c54
.thumb
branch_2241fc2: @ 2241fc2 :thumb
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001288
	ldr     r1, [pc, #0x2f4] @ 0x22422c4, (=0x5dc)
	mov     r5, r0
	bl      Function_2249ce0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_224200a
	bcs     branch_2242014
	cmp     r5, #0xb
	bls     branch_2241fe6
.thumb
branch_2241fe2: @ 2241fe2 :thumb
	bl      branch_2242c54
.thumb
branch_2241fe6: @ 2241fe6 :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2241ff2

Jumppoints_2241ff2:
.hword branch_2242028 - Jumppoints_2241ff2 - 2
.hword branch_2242c54 - Jumppoints_2241ff2 - 2
.hword branch_2242c54 - Jumppoints_2241ff2 - 2
.hword branch_2242c54 - Jumppoints_2241ff2 - 2
.hword branch_2242c54 - Jumppoints_2241ff2 - 2
.hword branch_224203c - Jumppoints_2241ff2 - 2
.hword branch_2242c54 - Jumppoints_2241ff2 - 2
.hword branch_2242c54 - Jumppoints_2241ff2 - 2
.hword branch_2242c54 - Jumppoints_2241ff2 - 2
.hword branch_2242050 - Jumppoints_2241ff2 - 2
.hword branch_2242066 - Jumppoints_2241ff2 - 2
.hword branch_224207c - Jumppoints_2241ff2 - 2
.thumb
branch_224200a: @ 224200a :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bl      branch_2242c54
.thumb
branch_2242014: @ 2242014 :thumb
	mov     r0, r4
	bl      Function_224403c
	mov     r0, r4
	bl      Function_2243fa4
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_2242028: @ 2242028 :thumb
	mov     r0, r4
	bl      Function_224403c
	mov     r0, r4
	bl      Function_2244064
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_224203c: @ 224203c :thumb
	mov     r0, r4
	bl      Function_224403c
	mov     r0, r4
	bl      Function_224409c
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_2242050: @ 2242050 :thumb
	mov     r0, r4
	bl      Function_224403c
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_2245b40
	mov     r0, #0x14
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_2242066: @ 2242066 :thumb
	mov     r0, r4
	bl      Function_224403c
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_2245b90
	mov     r0, #0x15
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_224207c: @ 224207c :thumb
	mov     r0, r4
	bl      Function_224403c
	mov     r0, r4
	bl      Function_2243fa4
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_2242090: @ 2242090 :thumb
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r0, [r4, r0]
	add     r1, #0x16
	bl      Function_20014d0
	ldr     r0, [pc, #0x220] @ 0x22422c0, (=RAM_21bf67c)
	mov     r1, #0x40
	ldr     r2, [r0, #0x48]
	mov     r0, r2
	tst     r0, r1
	beq     branch_2242104
	ldrh    r0, [r4, #0x16]
	cmp     r0, #0x0
	bne     branch_2242162
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x80
	mov     r1, #0x66
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	str     r2, [sp, #0xc]
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x8
	add     r1, r4, r1
	mov     r3, #0x4
	bl      Function_2001408
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20013ac
	ldr     r0, [pc, #0x1e8] @ 0x22422c4, (=0x5dc)
	bl      Function_2005748
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r4, #0xb0
	mov     r1, r4
	mov     r2, #0x1c
	str     r3, [sp, #0x14]
	bl      Function_224379c
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2242104

.thumb
branch_2242104: @ 2242104 :thumb
	mov     r0, #0x80
	tst     r0, r2
	beq     branch_2242162
	ldrh    r0, [r4, #0x16]
	cmp     r0, #0x4
	bne     branch_2242162
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r1, #0x66
	str     r2, [sp, #0xc]
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x8
	add     r1, r4, r1
	mov     r3, r2
	bl      Function_2001408
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20013ac
	ldr     r0, [pc, #0x18c] @ 0x22422c4, (=0x5dc)
	bl      Function_2005748
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r4, #0xb0
	mov     r1, r4
	mov     r2, #0x18
	str     r3, [sp, #0x14]
	bl      Function_224379c
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2242162

.thumb
branch_2242162: @ 2242162 :thumb
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001288
	ldr     r1, [pc, #0x154] @ 0x22422c4, (=0x5dc)
	mov     r5, r0
	bl      Function_2249ce0
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r0, [r4, r0]
	add     r1, #0x16
	bl      Function_20014d0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_22421aa
	bcs     branch_22421b4
	cmp     r5, #0x4
	bls     branch_2242194
	bl      branch_2242c54
.thumb
branch_2242194: @ 2242194 :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22421a0

Jumppoints_22421a0:
.hword branch_2242c54 - Jumppoints_22421a0 - 2
.hword branch_22421d0 - Jumppoints_22421a0 - 2
.hword branch_22421d0 - Jumppoints_22421a0 - 2
.hword branch_22421d0 - Jumppoints_22421a0 - 2
.hword branch_224224a - Jumppoints_22421a0 - 2
.thumb
branch_22421aa: @ 22421aa :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bl      branch_2242c54
.thumb
branch_22421b4: @ 22421b4 :thumb
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_2244094
	mov     r0, r4
	bl      Function_2244018
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_22421d0: @ 22421d0 :thumb
	mov     r0, r4
	strb    r5, [r4, #0x13]
	bl      Function_2244094
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	bl      Function_2249cac
	ldrh    r2, [r4, #0x16]
	mov     r1, #0xc
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0xc4] @ 0x22422c8, (=0x2249ff0)
	ldr     r1, [r1, r3]
	cmp     r0, r1
	bcs     branch_224221e
	mov     r0, r4
	mov     r1, #0x21
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_224221e: @ 224221e :thumb
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xa8] @ 0x22422cc, (=0x2249e0c)
	mov     r1, #0x0
	ldrh    r2, [r2, r3]
	mov     r0, r4
	mov     r3, #0x3
	str     r1, [sp, #0x0]
	bl      Function_2244a74
	mov     r0, r4
	mov     r1, #0x37
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_22441dc
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_224224a: @ 224224a :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	bl      Function_2249cac
	mov     r6, r0
	cmp     r6, #0x3
	bne     branch_2242270
	ldr     r0, [pc, #0x64] @ 0x22422c4, (=0x5dc)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x68] @ 0x22422d0, (=0x5f3)
	bl      Function_2005748
	bl      branch_2242c54
.thumb
branch_2242270: @ 2242270 :thumb
	strb    r5, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244094
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	mov     r1, #0x0
	ldr     r2, [pc, #0x3c] @ 0x22422d4, (=0x2249e46)
	lsl     r3, r6, #1
	ldrh    r2, [r2, r3]
	mov     r0, r4
	mov     r3, #0x4
	str     r1, [sp, #0x0]
	bl      Function_2244a74
	mov     r0, r4
	mov     r1, #0x26
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_22441dc
	mov     r0, #0x4
	strb    r0, [r4, #0x8]
	bl      branch_2242c54

.word RAM_21bf67c @ 0x22422c0
.word 0x5dc @ 0x22422c4
.word 0x2249ff0 @ 0x22422c8
.word 0x2249e0c @ 0x22422cc
.word 0x5f3 @ 0x22422d0
.word 0x2249e46 @ 0x22422d4


.thumb
branch_22422d8: @ 22422d8 :thumb
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2242302
	bcs     branch_22422fc
	cmp     r0, #0x1
	bls     branch_22422f4
	bl      branch_2242c54
.thumb
branch_22422f4: @ 22422f4 :thumb
	cmp     r0, #0x0
	beq     branch_224230a
	cmp     r0, #0x1
	bne     branch_22422fe
.thumb
branch_22422fc: @ 22422fc :thumb
	b       branch_2242494
@ 0x22422fe

.thumb
branch_22422fe: @ 22422fe :thumb
	bl      branch_2242c54
.thumb
branch_2242302: @ 2242302 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	bl      branch_2242c54
.thumb
branch_224230a: @ 224230a :thumb
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r5, r0
	mov     r0, r4
	bl      Function_2245618
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r6, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_2030698
	mov     r6, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	bl      Function_2249cac
	ldrh    r1, [r4, #0x16]
	mov     r2, #0xc
	mov     r3, r1
	mul     r3, r2
	ldr     r2, [pc, #0x310] @ 0x224266c, (=0x2249ff0)
	ldr     r2, [r2, r3]
	cmp     r0, r2
	bcs     branch_224238a
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, r4
	mov     r1, #0x21
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_224238a: @ 224238a :thumb
	ldr     r0, [pc, #0x2e4] @ 0x2242670, (=0x2249e0c)
	lsl     r2, r1, #1
	ldrh    r0, [r0, r2]
	cmp     r6, r0
	bcs     branch_22423bc
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, r4
	mov     r1, #0x20
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_22423bc: @ 22423bc :thumb
	cmp     r1, #0x0
	bne     branch_22423ee
	mov     r0, r5
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r6, r0
	bne     branch_2242448
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_22423ee: @ 22423ee :thumb
	cmp     r1, #0x1
	bne     branch_2242410
	mov     r0, r5
	bl      Function_2245210
	cmp     r0, #0x0
	bne     branch_2242448
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_2242410: @ 2242410 :thumb
	mov     r0, r5
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r6, r0
	bne     branch_2242448
	mov     r0, r5
	bl      Function_2245210
	cmp     r0, #0x0
	bne     branch_2242448
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	bl      branch_2242c54
.thumb
branch_2242448: @ 2242448 :thumb
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2242486
	ldrb    r2, [r4, #0x13]
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x208] @ 0x2242670, (=0x2249e0c)
	ldrh    r2, [r2, r3]
	bl      0x223bc2c
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	bl      Function_2245780
	ldrb    r1, [r4, #0xd]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_22454f8
	mov     r0, #0x12
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242486

.thumb
branch_2242486: @ 2242486 :thumb
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x2
	add     sp, #0x18
	orr     r0, r1
	strb    r0, [r4, #0xe]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2242494

.thumb
branch_2242494: @ 2242494 :thumb
	mov     r0, r4
	bl      Function_2245618
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_2244064
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x22424ae

.thumb
branch_22424ae: @ 22424ae :thumb
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_22424d0
	bcs     branch_2242566
	cmp     r0, #0x1
	bhi     branch_22424ce
	cmp     r0, #0x0
	beq     branch_22424d6
	cmp     r0, #0x1
	beq     branch_2242566
.thumb
branch_22424ce: @ 22424ce :thumb
	b       branch_2242c54
@ 0x22424d0

.thumb
branch_22424d0: @ 22424d0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2242c54
@ 0x22424d6

.thumb
branch_22424d6: @ 22424d6 :thumb
	mov     r0, r4
	bl      Function_2245618
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	mov     r5, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	bl      Function_2249cac
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x168] @ 0x2242674, (=0x2249e46)
	ldrh    r0, [r0, r1]
	cmp     r5, r0
	bcs     branch_224253e
	mov     r0, r4
	bl      Function_2245618
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, r4
	mov     r1, #0x29
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x224253e

.thumb
branch_224253e: @ 224253e :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2242558
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_2245c94
	mov     r0, #0x5
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242558

.thumb
branch_2242558: @ 2242558 :thumb
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x2
	add     sp, #0x18
	orr     r0, r1
	strb    r0, [r4, #0xe]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2242566

.thumb
branch_2242566: @ 2242566 :thumb
	mov     r0, r4
	bl      Function_2245618
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_2244064
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242580

.thumb
branch_2242580: @ 2242580 :thumb
	ldrb    r1, [r4, #0xd]
	ldrb    r2, [r4, #0x13]
	bl      Function_2244e44
	cmp     r0, #0x1
	bne     branch_224262a
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242592

.thumb
branch_2242592: @ 2242592 :thumb
	ldr     r0, [pc, #0xe4] @ 0x2242678, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224262a
	ldr     r0, [pc, #0xdc] @ 0x224267c, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2245618
	mov     r0, r4
	bl      Function_2244064
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xcc
	mov     r2, #0x64
	bl      Function_2249c60
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x22425c2

.thumb
branch_22425c2: @ 22425c2 :thumb
	ldr     r0, [pc, #0xb4] @ 0x2242678, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224262a
	ldr     r0, [pc, #0xac] @ 0x224267c, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_2244064
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x22425e6

.thumb
branch_22425e6: @ 22425e6 :thumb
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001288
	ldr     r1, [pc, #0x80] @ 0x224267c, (=0x5dc)
	mov     r5, r0
	bl      Function_2249ce0
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r0, [r4, r0]
	add     r1, #0x16
	bl      Function_20014d0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_224262c
	bcs     branch_2242632
	cmp     r5, #0x8
	bhi     branch_224262a
	cmp     r5, #0x6
	bcc     branch_224262a
	beq     branch_224264c
	cmp     r5, #0x7
	beq     branch_2242680
	cmp     r5, #0x8
	beq     branch_22426da
.thumb
branch_224262a: @ 224262a :thumb
	b       branch_2242c54
@ 0x224262c

.thumb
branch_224262c: @ 224262c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	b       branch_2242c54
@ 0x2242632

.thumb
branch_2242632: @ 2242632 :thumb
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_22440c0
	mov     r0, r4
	bl      Function_2244018
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x224264c

.thumb
branch_224264c: @ 224264c :thumb
	mov     r0, r4
	add     r0, #0xb0
	strb    r5, [r4, #0x13]
	bl      Function_2245288
	mov     r0, r4
	bl      Function_22440c0
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_22440c8
	mov     r0, #0x9
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x224266a


.align 2


.word 0x2249ff0 @ 0x224266c
.word 0x2249e0c @ 0x2242670
.word 0x2249e46 @ 0x2242674
.word RAM_21bf67c @ 0x2242678
.word 0x5dc @ 0x224267c
.thumb
branch_2242680: @ 2242680 :thumb
	mov     r0, r4
	add     r0, #0xb0
	strb    r5, [r4, #0x13]
	bl      Function_2245288
	mov     r0, r4
	bl      Function_22440c0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_2249cac
	cmp     r0, #0x1
	bne     branch_22426cc
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, r4
	mov     r1, #0x36
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0xe
	strb    r0, [r4, #0x8]
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22426cc

.thumb
branch_22426cc: @ 22426cc :thumb
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_22440c8
	mov     r0, #0x9
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x22426da

.thumb
branch_22426da: @ 22426da :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_2249cac
	mov     r6, r0
	cmp     r6, #0x3
	bne     branch_22426fe
	ldr     r0, [pc, #0x32c] @ 0x2242a1c, (=0x5dc)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x328] @ 0x2242a20, (=0x5f3)
	bl      Function_2005748
	b       branch_2242c54
@ 0x22426fe

.thumb
branch_22426fe: @ 22426fe :thumb
	mov     r0, r4
	strb    r5, [r4, #0x13]
	bl      Function_22440c0
	mov     r1, #0x0
	ldr     r2, [pc, #0x318] @ 0x2242a24, (=0x2249e4c)
	lsl     r3, r6, #1
	ldrh    r2, [r2, r3]
	mov     r0, r4
	mov     r3, #0x4
	str     r1, [sp, #0x0]
	bl      Function_2244a74
	mov     r0, r4
	mov     r1, #0x26
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_22441dc
	mov     r0, #0xb
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242730

.thumb
branch_2242730: @ 2242730 :thumb
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001288
	ldr     r1, [pc, #0x2e0] @ 0x2242a1c, (=0x5dc)
	mov     r5, r0
	bl      Function_2249ce0
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r0, [r4, r0]
	add     r1, #0x16
	bl      Function_20014d0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_2242760
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_2242804
	b       branch_2242772
@ 0x2242760

.thumb
branch_2242760: @ 2242760 :thumb
	mov     r0, r4
	bl      Function_2244120
	mov     r0, r4
	bl      Function_224409c
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242772

.thumb
branch_2242772: @ 2242772 :thumb
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_201ad10
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	ldrh    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244d5c
	mov     r2, r0
	mov     r1, #0x0
	mov     r0, r4
	mov     r3, #0x3
	str     r1, [sp, #0x0]
	bl      Function_2244a74
	mov     r0, r4
	mov     r1, #0x37
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_22441dc
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0xa
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x22427cc

.thumb
branch_22427cc: @ 22427cc :thumb
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r5, r0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2242806
	bcs     branch_2242802
	cmp     r0, #0x1
	bhi     branch_2242804
	cmp     r0, #0x0
	beq     branch_224280c
	cmp     r0, #0x1
	bne     branch_2242804
.thumb
branch_2242802: @ 2242802 :thumb
	b       branch_2242938
@ 0x2242804

.thumb
branch_2242804: @ 2242804 :thumb
	b       branch_2242c54
@ 0x2242806

.thumb
branch_2242806: @ 2242806 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2242c54
@ 0x224280c

.thumb
branch_224280c: @ 224280c :thumb
	mov     r0, r4
	bl      Function_2245618
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r6, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_2030698
	mov     r6, r0
	ldrh    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244d5c
	cmp     r6, r0
	bcs     branch_2242870
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, r4
	mov     r1, #0x20
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0xf
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242870

.thumb
branch_2242870: @ 2242870 :thumb
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2242902
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_22428da
	mov     r0, r4
	bl      Function_2244120
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	ldrh    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244d5c
	mov     r2, r0
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	bl      0x223bc2c
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	bl      Function_2245780
	ldrh    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244de0
	mov     r2, r0
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_22455a0
	mov     r0, #0x12
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x22428da

.thumb
branch_22428da: @ 22428da :thumb
	ldrh    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244de0
	strh    r0, [r4, #0x10]
	mov     r0, r4
	bl      Function_2244120
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x2
	add     sp, #0x18
	orr     r0, r1
	strb    r0, [r4, #0xe]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2242902

.thumb
branch_2242902: @ 2242902 :thumb
	mov     r0, r5
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2244a8c
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_200b744
	mov     r0, r4
	mov     r1, #0x3c
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x10
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242938

.thumb
branch_2242938: @ 2242938 :thumb
	mov     r0, r4
	bl      Function_2245618
	mov     r0, r4
	bl      Function_22456e4
	mov     r0, #0x9
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x224294a

.thumb
branch_224294a: @ 224294a :thumb
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_224296c
	bcs     branch_2242a02
	cmp     r0, #0x1
	bhi     branch_224296a
	cmp     r0, #0x0
	beq     branch_2242972
	cmp     r0, #0x1
	beq     branch_2242a02
.thumb
branch_224296a: @ 224296a :thumb
	b       branch_2242c54
@ 0x224296c

.thumb
branch_224296c: @ 224296c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2242c54
@ 0x2242972

.thumb
branch_2242972: @ 2242972 :thumb
	mov     r0, r4
	bl      Function_2245618
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	mov     r5, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_2249cac
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x7c] @ 0x2242a24, (=0x2249e4c)
	ldrh    r0, [r0, r1]
	cmp     r5, r0
	bcs     branch_22429da
	mov     r0, r4
	bl      Function_2245618
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, r4
	mov     r1, #0x29
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0xe
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x22429da

.thumb
branch_22429da: @ 22429da :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_22429f4
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	mov     r2, #0x8
	bl      Function_2245c94
	mov     r0, #0xc
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x22429f4

.thumb
branch_22429f4: @ 22429f4 :thumb
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x2
	add     sp, #0x18
	orr     r0, r1
	strb    r0, [r4, #0xe]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2242a02

.thumb
branch_2242a02: @ 2242a02 :thumb
	mov     r0, r4
	bl      Function_2245618
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_224409c
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242a1c

.word 0x5dc @ 0x2242a1c
.word 0x5f3 @ 0x2242a20
.word 0x2249e4c @ 0x2242a24
.thumb
branch_2242a28: @ 2242a28 :thumb
	ldrb    r1, [r4, #0xd]
	ldrb    r2, [r4, #0x13]
	bl      Function_2244e44
	cmp     r0, #0x1
	bne     branch_2242af2
	mov     r0, #0xd
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242a3a

.thumb
branch_2242a3a: @ 2242a3a :thumb
	ldr     r0, [pc, #0x220] @ 0x2242c5c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2242af2
	ldr     r0, [pc, #0x218] @ 0x2242c60, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2245618
	mov     r0, r4
	bl      Function_224409c
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd3
	mov     r2, #0x6a
	bl      Function_2249c60
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242a6a

.thumb
branch_2242a6a: @ 2242a6a :thumb
	ldr     r0, [pc, #0x1f0] @ 0x2242c5c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2242af2
	ldr     r0, [pc, #0x1e8] @ 0x2242c60, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_224409c
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242a8e

.thumb
branch_2242a8e: @ 2242a8e :thumb
	ldr     r0, [pc, #0x1cc] @ 0x2242c5c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2242af2
	ldr     r0, [pc, #0x1c4] @ 0x2242c60, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_22456e4
	mov     r0, #0x9
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242aaa

.thumb
branch_2242aaa: @ 2242aaa :thumb
	ldr     r0, [pc, #0x1b0] @ 0x2242c5c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2242af2
	ldr     r0, [pc, #0x1a8] @ 0x2242c60, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x3d
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_22441dc
	mov     r0, #0x11
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242ad2

.thumb
branch_2242ad2: @ 2242ad2 :thumb
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2242af4
	bcs     branch_2242b84
	cmp     r0, #0x1
	bhi     branch_2242af2
	cmp     r0, #0x0
	beq     branch_2242afa
	cmp     r0, #0x1
	beq     branch_2242b84
.thumb
branch_2242af2: @ 2242af2 :thumb
	b       branch_2242c54
@ 0x2242af4

.thumb
branch_2242af4: @ 2242af4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2242c54
@ 0x2242afa

.thumb
branch_2242afa: @ 2242afa :thumb
	mov     r0, r4
	bl      Function_2245618
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2242b5c
	mov     r0, r4
	bl      Function_2244120
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	ldrh    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244d5c
	mov     r2, r0
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	bl      0x223bc2c
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	bl      Function_2245780
	ldrh    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244de0
	mov     r2, r0
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_22455a0
	mov     r0, #0x12
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242b5c

.thumb
branch_2242b5c: @ 2242b5c :thumb
	ldrh    r1, [r4, #0x16]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244de0
	strh    r0, [r4, #0x10]
	mov     r0, r4
	bl      Function_2244120
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x2
	add     sp, #0x18
	orr     r0, r1
	strb    r0, [r4, #0xe]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2242b84

.thumb
branch_2242b84: @ 2242b84 :thumb
	mov     r0, r4
	bl      Function_2245618
	mov     r0, r4
	bl      Function_22456e4
	mov     r0, #0x9
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242b96

.thumb
branch_2242b96: @ 2242b96 :thumb
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	ldrb    r1, [r4, #0xd]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244e44
	cmp     r0, #0x1
	bne     branch_2242c54
	mov     r0, #0x13
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242bb2

.thumb
branch_2242bb2: @ 2242bb2 :thumb
	ldr     r0, [pc, #0xa8] @ 0x2242c5c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2242c54
	ldr     r0, [pc, #0xa0] @ 0x2242c60, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_2243fa4
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242bd6

.thumb
branch_2242bd6: @ 2242bd6 :thumb
	ldr     r1, [pc, #0x84] @ 0x2242c5c, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	mov     r3, r2
	tst     r3, r1
	beq     branch_2242bea
	sub     r1, #0x21
	bl      Function_2245140
	b       branch_2242c54
@ 0x2242bea

.thumb
branch_2242bea: @ 2242bea :thumb
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2242bf8
	mov     r1, #0x1
	bl      Function_2245140
	b       branch_2242c54
@ 0x2242bf8

.thumb
branch_2242bf8: @ 2242bf8 :thumb
	mov     r0, #0x3
	tst     r0, r2
	beq     branch_2242c54
	ldr     r0, [pc, #0x60] @ 0x2242c60, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2245be0
	mov     r0, r4
	bl      Function_2244018
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242c54
@ 0x2242c16

.thumb
branch_2242c16: @ 2242c16 :thumb
	ldr     r1, [pc, #0x44] @ 0x2242c5c, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	mov     r3, r2
	tst     r3, r1
	beq     branch_2242c2a
	sub     r1, #0x21
	bl      Function_224518c
	b       branch_2242c54
@ 0x2242c2a

.thumb
branch_2242c2a: @ 2242c2a :thumb
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2242c38
	mov     r1, #0x1
	bl      Function_224518c
	b       branch_2242c54
@ 0x2242c38

.thumb
branch_2242c38: @ 2242c38 :thumb
	mov     r0, #0x3
	tst     r0, r2
	beq     branch_2242c54
	ldr     r0, [pc, #0x20] @ 0x2242c60, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2245be0
	mov     r0, r4
	bl      Function_2244018
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_2242c54: @ 2242c54 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2242c5a


.align 2


.word RAM_21bf67c @ 0x2242c5c
.word 0x5dc @ 0x2242c60
.thumb
Function_2242c64: @ 2242c64 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_2242d56
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242c7a

Jumppoints_2242c7a:
.hword branch_2242c84 - Jumppoints_2242c7a - 2
.hword branch_2242cb2 - Jumppoints_2242c7a - 2
.hword branch_2242cde - Jumppoints_2242c7a - 2
.hword branch_2242d00 - Jumppoints_2242c7a - 2
.hword branch_2242d1e - Jumppoints_2242c7a - 2
.thumb
branch_2242c84: @ 2242c84 :thumb
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x60
	bic     r1, r0
	strb    r1, [r4, #0xe]
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	ldrb    r2, [r4, #0xd]
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_224529c
	cmp     r0, #0x1
	bne     branch_2242d56
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x2
	bic     r1, r0
	strb    r1, [r4, #0xe]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242d56
@ 0x2242cb2

.thumb
branch_2242cb2: @ 2242cb2 :thumb
	ldrb    r1, [r4, #0x12]
	cmp     r1, #0xff
	beq     branch_2242d56
	mov     r1, #0x0
	strb    r1, [r4, #0xf]
	ldrb    r2, [r4, #0x13]
	cmp     r2, #0x4
	beq     branch_2242cc6
	cmp     r2, #0x8
	bne     branch_2242cd0
.thumb
branch_2242cc6: @ 2242cc6 :thumb
	ldrb    r1, [r4, #0x12]
	mov     r0, r4
	bl      Function_2245c94
	b       branch_2242cd6
@ 0x2242cd0

.thumb
branch_2242cd0: @ 2242cd0 :thumb
	ldrb    r1, [r4, #0x12]
	bl      Function_22459d0
.thumb
branch_2242cd6: @ 2242cd6 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242d56
@ 0x2242cde

.thumb
branch_2242cde: @ 2242cde :thumb
	ldrb    r0, [r4, #0x15]
	ldrb    r1, [r4, #0x12]
	bl      Function_2249c9c
	mov     r1, r0
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244e44
	cmp     r0, #0x1
	bne     branch_2242d56
	mov     r0, #0x1e
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242d56
@ 0x2242d00

.thumb
branch_2242d00: @ 2242d00 :thumb
	ldrb    r0, [r4, #0xb]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	bne     branch_2242d56
	bl      Function_20365f4
	mov     r0, #0x82
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242d56
@ 0x2242d1e

.thumb
branch_2242d1e: @ 2242d1e :thumb
	mov     r0, #0x82
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2242d56
	bl      Function_20365f4
	mov     r0, #0x64
	bl      Function_20363e8
	mov     r0, #0xff
	strb    r0, [r4, #0x12]
	ldrb    r0, [r4, #0xe]
	lsl     r0, r0, #25
	lsr     r0, r0, #30
	bne     branch_2242d4c
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_2243fa4
.thumb
branch_2242d4c: @ 2242d4c :thumb
	ldr     r0, [pc, #0xc] @ 0x2242d5c, (=0x432)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2242d56

.thumb
branch_2242d56: @ 2242d56 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242d5a


.align 2


.word 0x432 @ 0x2242d5c
.thumb
Function_2242d60: @ 2242d60 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_2242d74
	cmp     r1, #0x1
	beq     branch_2242d8c
	cmp     r1, #0x2
	beq     branch_2242dae
	b       branch_2242dc8
@ 0x2242d74

.thumb
branch_2242d74: @ 2242d74 :thumb
	mov     r1, #0xd
	mov     r2, #0x0
	bl      Function_224529c
	cmp     r0, #0x1
	bne     branch_2242dc8
	mov     r0, #0x1e
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242dc8
@ 0x2242d8c

.thumb
branch_2242d8c: @ 2242d8c :thumb
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	beq     branch_2242d96
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xb]
.thumb
branch_2242d96: @ 2242d96 :thumb
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	bne     branch_2242dc8
	bl      Function_20365f4
	mov     r0, #0x83
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242dc8
@ 0x2242dae

.thumb
branch_2242dae: @ 2242dae :thumb
	mov     r0, #0x83
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2242dc8
	bl      Function_20365f4
	add     r4, #0xb0
	mov     r0, r4
	bl      Function_2245288
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2242dc8

.thumb
branch_2242dc8: @ 2242dc8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242dcc

.thumb
Function_2242dcc: @ 2242dcc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2242dde
	cmp     r0, #0x1
	beq     branch_2242dfe
	b       branch_2242e0c
@ 0x2242dde

.thumb
branch_2242dde: @ 2242dde :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242e0c
@ 0x2242dfe

.thumb
branch_2242dfe: @ 2242dfe :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2242e0c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2242e0c

.thumb
branch_2242e0c: @ 2242e0c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2242e12


.align 2, 0


.thumb
Function_2242e14: @ 2242e14 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xe1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2249b8c
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2249b8c
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2249b8c
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2249b8c
	mov     r0, #0xed
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2249b8c
	mov     r0, #0xee
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2249b8c
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2249b8c
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x1
	bl      0x223b7a8
	mov     r7, r0
	mov     r6, #0x0
	cmp     r7, #0x0
	ble     branch_2242e96
	mov     r4, r5
.thumb
branch_2242e70: @ 2242e70 :thumb
	mov     r0, #0x39
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2249b8c
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2249b8c
	mov     r0, #0xef
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2249b8c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r7
	blt     branch_2242e70
.thumb
branch_2242e96: @ 2242e96 :thumb
	bl      Function_2039794
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      Function_2002fa0
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2002fa0
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Call_free1
	mov     r0, #0x7
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	add     r0, #0x18
	add     r0, r5, r0
	bl      Function_2249954
	ldr     r0, [r5, #0x20]
	bl      Function_200b190
	ldr     r0, [r5, #0x1c]
	bl      Function_200b190
	ldr     r0, [r5, #0x24]
	bl      Function_200b3f0
	ldr     r0, [r5, #0x28]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r5, #0x2c]
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200c560
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_2242ef8: @ 2242ef8 :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x3
	blt     branch_2242ef8
	mov     r0, r5
	add     r0, #0x50
	mov     r1, #0x0
	bl      Function_2249d5c
	ldr     r0, [r5, #0x4c]
	bl      Function_22433a8
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Call_FS_CloseFile
	pop     {r3-r7,pc}
@ 0x2242f22


.align 2, 0


.thumb
Function_2242f24: @ 2242f24 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20177bc
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2242f54, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x2242f58, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x2242f54

.word 0xffffe0ff @ 0x2242f54
.word 0x4001000 @ 0x2242f58



.thumb
Function_2242f5c: @ 2242f5c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r5, r0

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x64
	bl      LoadFromNARC_8
	mov     r1, #0xf7
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_2243324
	mov     r0, r5
	bl      Function_2243384
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xc7
	mov     r3, #0x64
	bl      LoadFromNARC_9
	str     r0, [r5, #0x20]
	ldr     r2, [pc, #0x384] @ 0x2243310, (=0x187)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x64
	bl      LoadFromNARC_9
	str     r0, [r5, #0x1c]
	mov     r0, #0x64
	bl      Function_200b358
	str     r0, [r5, #0x24]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x64
	bl      Function_2023790
	str     r0, [r5, #0x28]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x64
	bl      Function_2023790
	str     r0, [r5, #0x2c]
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, #0x20
.thumb
branch_2242fbe: @ 2242fbe :thumb
	mov     r0, r7
	mov     r1, #0x64
	bl      Function_2023790
	str     r0, [r4, #0x30]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x3
	blt     branch_2242fbe
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x64
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x6
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x64
	bl      LoadFromNARC_PlFont2
	mov     r0, #0x1
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x64
	bl      Function_200c440
	mov     r1, #0x71
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, r5
	ldr     r0, [r5, #0x4c]
	add     r1, #0x50
	mov     r2, #0x0
	bl      Function_2249d14
	add     r0, sp, #0x2c
	add     r1, sp, #0x30
	add     r3, sp, #0x2c
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, #0x2
	add     r2, sp, #0x30
	add     r3, #0x2
	bl      Function_2244e14
	mov     r1, #0x0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xa0
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	lsl     r0, r0, #2
	str     r1, [sp, #0xc]
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0xe1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0x0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0xa0
	str     r0, [sp, #0x4]
	mov     r0, #0x7c
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	lsl     r0, r0, #2
	str     r1, [sp, #0xc]
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0xe2
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_224308e
	mov     r0, #0x48
	mov     r7, #0x40
	str     r0, [sp, #0x18]
	b       branch_2243094
@ 0x224308e

.thumb
branch_224308e: @ 224308e :thumb
	mov     r0, #0x28
	mov     r7, #0x20
	str     r0, [sp, #0x18]
.thumb
branch_2243094: @ 2243094 :thumb
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x1
	bl      0x223b7a8
	mov     r6, #0x0
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	bgt     branch_22430a6
	b       branch_22431cc
@ 0x22430a6

.thumb
branch_22430a6: @ 22430a6 :thumb
	mov     r4, r5
.thumb
branch_22430a8: @ 22430a8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x2
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	bl      Function_2249b1c
	mov     r1, #0x3a
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x38
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	str     r0, [sp, #0x1c]
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_22430fc
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
.thumb
branch_22430fc: @ 22430fc :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	mov     r2, #0x30
	bl      Function_208c104
	mov     r1, r0
	mov     r0, r5
	bl      Function_22450e8
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	mov     r2, #0x30
	bl      Function_208c104
	mov     r1, r0
	mov     r0, r5
	bl      Function_2245114
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	lsl     r0, r7, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x4e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	bl      Function_2249b1c
	mov     r1, #0xef
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x28]
	mov     r2, #0x3
	str     r0, [sp, #0x0]
	lsl     r0, r7, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r1, r6, #0x3
	mov     r3, r2
	bl      Function_2249b1c
	mov     r1, #0x39
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x48
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0x39
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2249c08
	ldr     r0, [sp, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, #0x40
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r7, #0x40
	cmp     r6, r0
	bge     branch_22431cc
	b       branch_22430a8
@ 0x22431cc

.thumb
branch_22431cc: @ 22431cc :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0xa2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x76
	str     r1, [sp, #0x10]
	mov     r1, #0x1
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	bl      Function_2249b1c
	mov     r1, #0xe3
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x11
	bl      Function_22499bc
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x11
	bl      Function_22499fc
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, r5
	add     r1, sp, #0x38
	add     r2, sp, #0x34
	mov     r3, #0x0
	bl      Function_2244d08
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x38]
	mov     r2, r1
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	mov     r3, r1
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0xed
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x34]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0xee
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2243296
	mov     r0, #0xee
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2249bac
.thumb
branch_2243296: @ 2243296 :thumb
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	lsl     r0, r0, #2
	str     r1, [sp, #0xc]
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0xf3
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r1, #0x0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0x3d
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      Function_2249bac
	bl      Function_2035e38
	cmp     r0, #0x0
	beq     branch_224330a
	mov     r0, #0x1
	mov     r1, #0x10
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	bl      Function_2039734
.thumb
branch_224330a: @ 224330a :thumb
	ldr     r0, [pc, #0x8] @ 0x2243314, (=0x22433ed)
	b       branch_2243318
@ 0x224330e


.align 2


.word 0x187 @ 0x2243310
.word 0x22433ed @ 0x2243314
.thumb
branch_2243318: @ 2243318 :thumb
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x2243322


.align 2, 0


.thumb
Function_2243324: @ 2243324 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2243424
	ldr     r0, [r4, #0x4c]
	bl      Function_2243444
	mov     r0, #0x64
	bl      MallocFill120
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	lsl     r2, r1, #8
	mov     r3, #0x64
	bl      Function_2002f70
	mov     r2, #0x7
	lsl     r2, r2, #6
	ldr     r0, [r4, r2]
	mov     r1, #0x0
	add     r2, #0x40
	mov     r3, #0x64
	bl      Function_2002f70
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2243588
	bl      Function_22435fc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2243630
	bl      Function_2243678
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_224373c
	pop     {r4,pc}
@ 0x2243384

.thumb
Function_2243384: @ 2243384 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	mov     r2, r0
	mov     r1, #0xf6
	mov     r0, #0x76
	lsl     r1, r1, #2
	lsl     r0, r0, #2
	lsl     r2, r2, #24
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	lsr     r2, r2, #24
	bl      Function_2249604
	pop     {r4,pc}
@ 0x22433a6


.align 2, 0


.thumb
Function_22433a8: @ 22433a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22433ec

.thumb
Function_22433ec: @ 22433ec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22433fe
	bl      Function_2003694_LoadSomePalettes
.thumb
branch_22433fe: @ 22433fe :thumb
	ldr     r0, [r4, #0x4c]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r3, [pc, #0xc] @ 0x224341c, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x2243420, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x224341a


.align 2


.word 0x27e0000 @ 0x224341c
.word 0x3ff8 @ 0x2243420
.thumb
Function_2243424: @ 2243424 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x2243440, (=0x2249f04)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_224342e: @ 224342e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224342e
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2243440

.word 0x2249f04 @ 0x2243440
.thumb
Function_2243444: @ 2243444 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0x120] @ 0x224356c, (=0x2249e24)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0x110] @ 0x2243570, (=0x2249eac)
	add     r3, sp, #0x70
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x64
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0xe0] @ 0x2243574, (=0x2249ec8)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x64
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xb0] @ 0x2243578, (=0x2249e74)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x64
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x80] @ 0x224357c, (=0x2249e58)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x64
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r5, [pc, #0x50] @ 0x2243580, (=0x2249e90)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r1, [pc, #0x2c] @ 0x2243584, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x224356c

.word 0x2249e24 @ 0x224356c
.word 0x2249eac @ 0x2243570
.word 0x2249ec8 @ 0x2243574
.word 0x2249e74 @ 0x2243578
.word 0x2249e58 @ 0x224357c
.word 0x2249e90 @ 0x2243580
.word 0x4000008 @ 0x2243584
.thumb
Function_2243588: @ 2243588 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x22
	mov     r3, r4
	bl      Function_20070e8
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_22435da
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x23
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22435da

.thumb
branch_22435da: @ 22435da :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x24
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22435fc

.thumb
Function_22435fc: @ 22435fc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0x96
	mov     r1, #0x89
	add     r2, sp, #0x0
	mov     r3, #0x64
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x80
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     GX_LoadBGPltt
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224362e


.align 2, 0


.thumb
Function_2243630: @ 2243630 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x22
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x26
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2243678

.thumb
Function_2243678: @ 2243678 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0x96
	mov     r1, #0x89
	add     r2, sp, #0x0
	mov     r3, #0x64
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x80
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     GX_LoadBGPltt
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22436aa


.align 2, 0


.thumb
Function_22436ac: @ 22436ac :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x22
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x27
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22436f4

.thumb
Function_22436f4: @ 22436f4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x22
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x25
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224373c

.thumb
Function_224373c: @ 224373c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x7d
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x7e
	mov     r3, r4
	bl      Function_200710c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xab
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224379c

.thumb
Function_224379c: @ 224379c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	ldr     r4, [sp, #0x28]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0x4]
	add     r4, sp, #0x18
	ldrb    r5, [r4, #0x18]
	str     r5, [sp, #0x8]
	ldrb    r4, [r4, #0x1c]
	str     r4, [sp, #0xc]
	add     r4, sp, #0x38
	ldrb    r4, [r4, #0x0]
	str     r4, [sp, #0x10]
	add     r4, sp, #0x3c
	ldrb    r4, [r4, #0x0]
	str     r4, [sp, #0x14]
	mov     r4, #0x0
	str     r4, [sp, #0x18]
	bl      Function_22437cc
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x22437ca


.align 2, 0


.thumb
Function_22437cc: @ 22437cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	add     r1, sp, #0x38
	ldrb    r1, [r1, #0x0]
	mov     r5, r0
	mov     r0, r6
	mov     r7, r2
	mov     r4, r3
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x20]
	ldr     r2, [r5, #0x2c]
	mov     r1, r7
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r5, #0x2c]
	bl      Function_200c388
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x1
	beq     branch_2243802
	cmp     r0, #0x2
	beq     branch_2243814
	b       branch_2243820
@ 0x2243802

.thumb
branch_2243802: @ 2243802 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	sub     r4, r4, r0
	b       branch_2243820
@ 0x2243814

.thumb
branch_2243814: @ 2243814 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	sub     r4, r4, r0
.thumb
branch_2243820: @ 2243820 :thumb
	ldr     r0, [sp, #0x28]
	add     r2, sp, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r3, r4
	str     r0, [sp, #0x4]
	add     r0, sp, #0x38
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x18]
	ldrb    r2, [r2, #0x1c]
	lsl     r0, r0, #24
	lsl     r2, r2, #24
	lsr     r0, r0, #8
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x3c
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r5, #0x28]
	mov     r0, r6
	bl      Function_201d78c
	mov     r4, r0
	mov     r0, r6
	bl      Function_201a9a4
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2243860

.thumb
Function_2243860: @ 2243860 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	ldr     r4, [sp, #0x28]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0x4]
	add     r4, sp, #0x18
	ldrb    r5, [r4, #0x18]
	str     r5, [sp, #0x8]
	ldrb    r4, [r4, #0x1c]
	str     r4, [sp, #0xc]
	add     r4, sp, #0x38
	ldrb    r4, [r4, #0x0]
	str     r4, [sp, #0x10]
	add     r4, sp, #0x3c
	ldrb    r4, [r4, #0x0]
	str     r4, [sp, #0x14]
	mov     r4, #0x0
	str     r4, [sp, #0x18]
	bl      Function_2243890
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x224388e


.align 2, 0


.thumb
Function_2243890: @ 2243890 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r1, r2
	ldr     r0, [r5, #0x20]
	ldr     r2, [r5, #0x2c]
	mov     r4, r3
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r5, #0x2c]
	bl      Function_200c388
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x1
	beq     branch_22438ba
	cmp     r0, #0x2
	beq     branch_22438cc
	b       branch_22438d8
@ 0x22438ba

.thumb
branch_22438ba: @ 22438ba :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	sub     r4, r4, r0
	b       branch_22438d8
@ 0x22438cc

.thumb
branch_22438cc: @ 22438cc :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	sub     r4, r4, r0
.thumb
branch_22438d8: @ 22438d8 :thumb
	ldr     r0, [sp, #0x20]
	add     r2, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r3, r4
	str     r0, [sp, #0x4]
	add     r0, sp, #0x30
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x18]
	ldrb    r2, [r2, #0x1c]
	lsl     r0, r0, #24
	lsl     r2, r2, #24
	lsr     r0, r0, #8
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x34
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r5, #0x28]
	mov     r0, r6
	bl      Function_201d78c
	mov     r4, r0
	mov     r0, r6
	bl      Function_201a9a4
	mov     r0, r4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2243918

.thumb
Function_2243918: @ 2243918 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r3, #0x1
	mov     r4, r1
	str     r3, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r1, #0xf
	str     r1, [sp, #0x10]
	mov     r5, r0
	mov     r1, r5
	str     r2, [sp, #0x14]
	add     r1, #0xb0
	mov     r2, r4
	bl      Function_224379c
	add     r5, #0xb0
	mov     r4, r0
	mov     r0, r5
	bl      Function_201a9a4
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x224394e


.align 2, 0


.thumb
Function_2243950: @ 2243950 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r6
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b70c
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x46
	str     r3, [sp, #0x4]
	bl      Function_2243b5c
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x47
	mov     r3, #0x40
	bl      Function_2243b5c
	mov     r0, r6
	bl      Function_2075bcc
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b6d8
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x48
	str     r3, [sp, #0x4]
	bl      Function_2243b5c
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x49
	mov     r3, #0x40
	bl      Function_2243b5c
	mov     r0, r6
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b6a0
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4a
	str     r3, [sp, #0x4]
	bl      Function_2243b5c
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4b
	mov     r3, #0x40
	bl      Function_2243b5c
	mov     r0, r6
	mov     r1, #0xa5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_2244a74
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4c
	str     r3, [sp, #0x4]
	bl      Function_2243b5c
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4d
	mov     r3, #0x50
	bl      Function_2243b5c
	mov     r0, r6
	mov     r1, #0xa6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_2244a74
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4e
	mov     r3, #0x60
	bl      Function_2243b5c
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4f
	mov     r3, #0xb0
	bl      Function_2243b5c
	mov     r0, r6
	mov     r1, #0xa8
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_2244a74
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x50
	str     r3, [sp, #0x4]
	bl      Function_2243b5c
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x51
	mov     r3, #0x50
	bl      Function_2243b5c
	mov     r0, r6
	mov     r1, #0xa9
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_2244a74
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x52
	mov     r3, #0x60
	bl      Function_2243b5c
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x53
	mov     r3, #0xb0
	bl      Function_2243b5c
	mov     r0, r6
	mov     r1, #0xa7
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_2244a74
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x54
	str     r3, [sp, #0x4]
	bl      Function_2243b5c
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x55
	mov     r3, #0x50
	bl      Function_2243b5c
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2243b5a


.align 2, 0


.thumb
Function_2243b5c: @ 2243b5c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	add     r4, sp, #0x18
	ldrh    r4, [r4, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0xff
	str     r4, [sp, #0x4]
	mov     r4, #0x1
	str     r4, [sp, #0x8]
	mov     r4, #0x2
	str     r4, [sp, #0xc]
	mov     r4, #0x0
	str     r4, [sp, #0x10]
	str     r4, [sp, #0x14]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0x18]
	bl      Function_2243890
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x2243b84

.thumb
Function_2243b84: @ 2243b84 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	mov     r4, r2
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x5c
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	mov     r0, #0x42
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x0
	mov     r3, #0x58
	bl      Function_2243c18
	mov     r0, #0x5c
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x37
	str     r0, [sp, #0x8]
	mov     r0, #0x3b
	str     r0, [sp, #0xc]
	mov     r0, #0x43
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x1
	mov     r3, #0x59
	bl      Function_2243c18
	mov     r0, #0x5c
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x38
	str     r0, [sp, #0x8]
	mov     r0, #0x3c
	str     r0, [sp, #0xc]
	mov     r0, #0x44
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x2
	mov     r3, #0x5a
	bl      Function_2243c18
	mov     r0, #0x5c
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x39
	str     r0, [sp, #0x8]
	mov     r0, #0x3d
	str     r0, [sp, #0xc]
	mov     r0, #0x45
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, #0x5b
	bl      Function_2243c18
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2243c18

.thumb
Function_2243c18: @ 2243c18 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	mov     r6, r1
	mov     r5, r2
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x38]
	mov     r2, #0x0
	mov     r7, r3
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r4, #0x24]
	mov     r1, r5
	bl      Function_200b630
	mov     r3, #0x18
	mov     r0, r5
	mul     r0, r3
	add     r0, #0xc
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_2243860
	strb    r0, [r4, #0xa]
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x3c]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	mov     r3, #0x3
	bl      Function_2244a74
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x40]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, #0x3
	bl      Function_2244a74
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r2, [sp, #0x30]
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x89
	bl      Function_2243890
	strb    r0, [r4, #0xa]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2243cc0

.thumb
Function_2243cc0: @ 2243cc0 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x1
	bl      0x223b7a8
	mov     r6, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_2243cf2
.thumb
branch_2243cde: @ 2243cde :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r7
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2243cfc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_2243cde
.thumb
branch_2243cf2: @ 2243cf2 :thumb
	mov     r0, r7
	bl      Function_201a9a4
	pop     {r3-r7,pc}
@ 0x2243cfa


.align 2, 0


.thumb
Function_2243cfc: @ 2243cfc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	mov     r4, r2
	mov     r6, r1
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r7, r3
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0xc]
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2243d24
	mov     r0, #0x24
	b       branch_2243d26
@ 0x2243d24

.thumb
branch_2243d24: @ 2243d24 :thumb
	mov     r0, #0x4
.thumb
branch_2243d26: @ 2243d26 :thumb
	cmp     r7, #0x0
	bne     branch_2243d4c
	lsl     r1, r4, #6
	add     r2, r0, r1
	lsl     r2, r2, #16
	lsr     r7, r2, #16
	mov     r2, r0
	add     r2, #0x18
	add     r2, r2, r1
	add     r0, #0x20
	lsl     r2, r2, #16
	add     r0, r0, r1
	lsr     r2, r2, #16
	lsl     r0, r0, #16
	str     r2, [sp, #0x10]
	lsr     r0, r0, #16
	mov     r4, #0x1
	str     r0, [sp, #0x14]
	b       branch_2243d58
@ 0x2243d4c

.thumb
branch_2243d4c: @ 2243d4c :thumb
	mov     r0, #0x1c
	str     r0, [sp, #0x10]
	mov     r0, #0x24
	mov     r7, #0x4
	mov     r4, #0x0
	str     r0, [sp, #0x14]
.thumb
branch_2243d58: @ 2243d58 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	str     r6, [sp, #0x0]
	mov     r1, r0
	str     r7, [sp, #0x4]
	mov     r0, #0x71
	str     r4, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_200c5bc
	mov     r0, #0x71
	str     r4, [sp, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x10]
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_200c578
	ldr     r0, [sp, #0xc]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	str     r6, [sp, #0x0]
	mov     r1, r0
	ldr     r0, [sp, #0x14]
	mov     r2, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x71
	str     r4, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x0
	bl      Function_200c5bc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2243db0

.thumb
Function_2243db0: @ 2243db0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	mov     r6, r1
	mov     r1, #0x1
	bl      0x223b7a8
	mov     r7, r0
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2243dda
.thumb
branch_2243dc6: @ 2243dc6 :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2243de4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2243dc6
.thumb
branch_2243dda: @ 2243dda :thumb
	mov     r0, r6
	bl      Function_201a9a4
	pop     {r3-r7,pc}
@ 0x2243de2


.align 2, 0


.thumb
Function_2243de4: @ 2243de4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r3, [sp, #0x14]
	ldrb    r0, [r5, #0x9]
	str     r1, [sp, #0x10]
	mov     r6, r2
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2243e00
	mov     r4, #0x28
	mov     r7, #0x50
	b       branch_2243e04
@ 0x2243e00

.thumb
branch_2243e00: @ 2243e00 :thumb
	mov     r4, #0x8
	mov     r7, #0x30
.thumb
branch_2243e04: @ 2243e04 :thumb
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2243e22
	lsl     r0, r6, #6
	add     r6, r4, r0
	mov     r4, #0x1
	add     r7, r7, r0
	b       branch_2243e28
@ 0x2243e22

.thumb
branch_2243e22: @ 2243e22 :thumb
	mov     r6, #0x4
	mov     r4, #0x0
	mov     r7, #0x30
.thumb
branch_2243e28: @ 2243e28 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	mov     r0, #0x71
	str     r4, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200c648
	ldr     r0, [sp, #0x18]
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x0
	lsl     r0, r0, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	mov     r2, r7
	mov     r3, r4
	bl      Function_2244b8c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2243e72


.align 2, 0


.thumb
Function_2243e74: @ 2243e74 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	mov     r4, r1
	bl      Function_205e630
	mov     r6, r0
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	bl      Function_2030698
	mov     r6, r0
	ldr     r0, [r5, #0x4c]
	mov     r1, r4
	bl      Function_2249d84
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x0
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_2244ab4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r6
	mov     r3, #0x4
	bl      Function_2244a74
	mov     r3, #0x10
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4
	bl      Function_2243860
	strb    r0, [r5, #0xa]
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2243ef6


.align 2, 0


.thumb
Function_2243ef8: @ 2243ef8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x0
	mov     r6, r2
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x1c]
	ldr     r2, [r5, #0x2c]
	mov     r1, r6
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r5, #0x2c]
	bl      Function_200c388
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2243f48, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x28]
	mov     r0, r4
	mov     r3, r1
	bl      Function_201d78c
	mov     r5, r0
	mov     r0, r4
	bl      Function_201a9a4
	mov     r0, r5
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2243f46


.align 2


.word 0x10200 @ 0x2243f48
.thumb
Function_2243f4c: @ 2243f4c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	mov     r6, r1
	mov     r4, r2
	mov     r7, r3
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2243f66
	mov     r1, #0x24
	b       branch_2243f68
@ 0x2243f66

.thumb
branch_2243f66: @ 2243f66 :thumb
	mov     r1, #0x4
.thumb
branch_2243f68: @ 2243f68 :thumb
	lsl     r0, r4, #6
	add     r4, r1, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	mov     r1, #0x0
	lsl     r2, r4, #16
	str     r0, [sp, #0x4]
	mov     r0, r6
	lsr     r2, r2, #16
	mov     r3, r1
	bl      Function_201ae78
	str     r6, [sp, #0x0]
	mov     r0, #0x71
	str     r4, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r2, #0x3
	bl      Function_200c5bc
	mov     r0, r6
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2243fa2


.align 2, 0


.thumb
Function_2243fa4: @ 2243fa4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r1, #0x5
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	mov     r2, #0x1
	str     r2, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r4, r0
	mov     r1, r4
	str     r2, [sp, #0x18]
	add     r1, #0x60
	mov     r2, #0x6
	mov     r3, #0x10
	bl      Function_22437cc
	strb    r0, [r4, #0xa]
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2249dbc
	mov     r3, #0x1
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x5
	str     r3, [sp, #0x14]
	bl      Function_224379c
	strb    r0, [r4, #0xa]
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x224400a


.align 2, 0


.thumb
Function_224400c: @ 224400c :thumb
	ldr     r3, [pc, #0x4] @ 0x2244014, (=0x2245289)
	add     r0, #0xc0
	bx      r3
@ 0x2244012


.align 2


.word Function_2245288+1 @ =0x2245289, 0x2244014
.thumb
Function_2244018: @ 2244018 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xd0
	bl      Function_2249dbc
	mov     r0, #0x0
	strh    r0, [r4, #0x16]
	mov     r0, r4
	bl      Function_2244944
	pop     {r4,pc}
@ 0x224403c

.thumb
Function_224403c: @ 224403c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r1, r4
	mov     r2, r4
	ldr     r0, [r4, r0]
	add     r1, #0x18
	add     r2, #0x1a
	bl      Function_20014dc
	mov     r0, r4
	add     r0, #0xd0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_2245730
	pop     {r4,pc}
@ 0x2244062


.align 2, 0


.thumb
Function_2244064: @ 2244064 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r4, #0xa]
	mov     r0, #0x0
	strh    r0, [r4, #0x16]
	mov     r0, r4
	bl      Function_22445c4
	pop     {r4,pc}
@ 0x2244094

.thumb
Function_2244094: @ 2244094 :thumb
	ldr     r3, [pc, #0x0] @ 0x2244098, (=0x2245731)
	bx      r3
@ 0x2244098

.word 0x2245731 @ 0x2244098
.thumb
Function_224409c: @ 224409c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	mov     r0, #0x0
	strh    r0, [r4, #0x16]
	mov     r0, r4
	bl      Function_2244780
	pop     {r4,pc}
@ 0x22440c0

.thumb
Function_22440c0: @ 22440c0 :thumb
	ldr     r3, [pc, #0x0] @ 0x22440c4, (=0x2245731)
	bx      r3
@ 0x22440c4

.word Function_2245730+1 @ =0x2245731, 0x22440c4
.thumb
Function_22440c8: @ 22440c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldrb    r1, [r5, #0xe]
	mov     r0, #0x8
	orr     r0, r1
	strb    r0, [r5, #0xe]
	mov     r0, r5
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r5
	add     r0, #0xb0
	bl      Function_201acf4
	mov     r0, r5
	add     r0, #0xe0
	bl      Function_201acf4
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_22436f4
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, r5
	add     r0, #0x90
	bl      Function_201ad10
	mov     r0, #0x0
	strh    r0, [r5, #0x16]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2244240
	mov     r1, #0x5
	lsl     r1, r1, #6
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2243e74
	pop     {r3-r5,pc}
@ 0x2244120

.thumb
Function_2244120: @ 2244120 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0xe]
	lsl     r0, r1, #28
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_224414a
	mov     r0, #0x8
	bic     r1, r0
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r0, r4, r0
	strb    r1, [r4, #0xe]
	bl      Function_201ad10
	mov     r0, r4
	bl      Function_2245730
	mov     r0, r4
	bl      Function_2245660
.thumb
branch_224414a: @ 224414a :thumb
	pop     {r4,pc}
@ 0x224414c

.thumb
Function_224414c: @ 224414c :thumb
	push    {r4-r7}
	mov     r4, #0x6
	mov     r6, #0x0
	lsl     r4, r4, #6
	mov     r7, r0
	mov     r3, r6
	add     r5, r4, #0x4
.thumb
branch_224415a: @ 224415a :thumb
	str     r3, [r7, r4]
	str     r3, [r7, r5]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0x8
	cmp     r6, #0x3
	blt     branch_224415a
	mov     r4, #0x6
	lsl     r4, r4, #6
	mov     r5, r4
	add     r6, r0, r4
	sub     r5, #0x10
	str     r6, [r0, r5]
	mov     r5, r4
	sub     r5, #0xc
	str     r1, [r0, r5]
	mov     r1, r4
	sub     r1, #0x8
	strb    r3, [r0, r1]
	mov     r3, #0x1
	.hword  0x1fe1 @ sub r1, r4, #0x7
	strb    r3, [r0, r1]
	.hword  0x1fa1 @ sub r1, r4, #0x6
	strb    r2, [r0, r1]
	.hword  0x1f61 @ sub r1, r4, #0x5
	ldrb    r2, [r0, r1]
	mov     r1, #0xf
	bic     r2, r1
	.hword  0x1f61 @ sub r1, r4, #0x5
	strb    r2, [r0, r1]
	ldrb    r2, [r0, r1]
	mov     r1, #0x30
	bic     r2, r1
	.hword  0x1f61 @ sub r1, r4, #0x5
	strb    r2, [r0, r1]
	ldrb    r2, [r0, r1]
	mov     r1, #0xc0
	bic     r2, r1
	mov     r1, #0x40
	orr     r2, r1
	.hword  0x1f61 @ sub r1, r4, #0x5
	strb    r2, [r0, r1]
	pop     {r4-r7}
	bx      lr
@ 0x22441b0

.thumb
Function_22441b0: @ 22441b0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r7
	str     r2, [sp, #0x0]
	add     r5, #0x30
	lsl     r4, r6, #2
	ldr     r0, [r7, #0x20]
	ldr     r2, [r5, r4]
	mov     r1, r3
	bl      Function_200b1b8_CallMsgDecrypt
	lsl     r0, r6, #3
	add     r2, r7, r0
	mov     r0, #0x6
	ldr     r1, [r5, r4]
	lsl     r0, r0, #6
	str     r1, [r2, r0]
	add     r1, r0, #0x4
	ldr     r0, [sp, #0x0]
	str     r0, [r2, r1]
	pop     {r3-r7,pc}
@ 0x22441dc

.thumb
Function_22441dc: @ 22441dc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, #0x12
	lsl     r1, r1, #4
	ldr     r0, [r4, #0x4c]
	add     r1, r4, r1
	bl      Function_2249d84
	mov     r1, #0x12
	lsl     r1, r1, #4
	mov     r0, r4
	add     r1, r4, r1
	mov     r2, #0x2
	bl      Function_224414c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1e
	bl      Function_22441b0
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1f
	bl      Function_22441b0
	mov     r0, #0x64
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x17
	lsl     r0, r0, #4
	mov     r2, #0x0
	add     r0, r4, r0
	mov     r1, #0x8
	mov     r3, r2
	bl      Function_2001b7c
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r4, #0xe]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x224423e


.align 2, 0


.thumb
Function_2244240: @ 2244240 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	str     r1, [sp, #0x0]
	ldrb    r1, [r5, #0xd]
	mov     r2, #0x1
	bl      Function_224503c
	ldrb    r0, [r5, #0x14]
	ldrb    r1, [r5, #0xd]
	bl      Function_2249c98
	mov     r4, r0
	mov     r1, #0x16
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_2243cfc
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r1, #0x15
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_2243de4
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, #0xe1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r2, #0x62
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x64
	bl      LoadFromNARC_9
	str     r0, [sp, #0xc]
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, #0x1
	bl      Function_2249cac
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x6
	bne     branch_22442f2
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x108] @ 0x22443f0, (=0x2249e12)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	b       branch_2244300
@ 0x22442f2

.thumb
branch_22442f2: @ 22442f2 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0xfc] @ 0x22443f4, (=0x2249e06)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
.thumb
branch_2244300: @ 2244300 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x64
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	bl      Function_2013a04
	mov     r1, #0x67
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x4]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_2244344
	ldr     r6, [pc, #0xdc] @ 0x22443f8, (=0x224a02c)
	ldr     r4, [pc, #0xdc] @ 0x22443fc, (=0x2249f84)
.thumb
branch_224431e: @ 224431e :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x6
	bne     branch_2244328
	ldrh    r2, [r6, #0x0]
	b       branch_224432a
@ 0x2244328

.thumb
branch_2244328: @ 2244328 :thumb
	ldrh    r2, [r4, #0x0]
.thumb
branch_224432a: @ 224432a :thumb
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0xc]
	mov     r3, r7
	bl      Function_2013a4c
	ldr     r0, [sp, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r7, r0
	blt     branch_224431e
.thumb
branch_2244344: @ 2244344 :thumb
	mov     r0, #0x67
	lsl     r0, r0, #2
	mov     r2, #0xd
	mov     r3, r2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, #0x20]
	sub     r3, #0xf
	bl      Function_2013a4c
	mov     r2, #0x1a
	ldr     r6, [pc, #0xa4] @ 0x2244400, (=0x2249ee4)
	lsl     r2, r2, #4
	add     r4, r5, r2
	mov     r3, r4
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1f10 @ sub r0, r2, #0x4
	ldr     r0, [r5, r0]
	mov     r1, r5
	str     r0, [r3, #0x0]
	mov     r0, r2
	add     r1, #0xa0
	add     r0, #0xc
	str     r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x1c
	str     r5, [r5, r0]
	ldr     r1, [pc, #0x7c] @ 0x2244404, (=0x224440d)
	add     r0, r2, #0x4
	str     r1, [r5, r0]
	mov     r0, r2
	ldr     r1, [pc, #0x78] @ 0x2244408, (=0x2244561)
	add     r0, #0x8
	str     r1, [r5, r0]
	mov     r1, r2
	ldr     r0, [sp, #0x8]
	add     r1, #0x10
	strh    r0, [r5, r1]
	mov     r0, r2
	add     r0, #0x18
	ldrb    r1, [r5, r0]
	mov     r0, #0xf
	bic     r1, r0
	mov     r0, r2
	add     r0, #0x18
	strb    r1, [r5, r0]
	mov     r0, r2
	mov     r1, #0x6
	add     r0, #0x12
	strh    r1, [r5, r0]
	mov     r0, r2
	mov     r1, #0x0
	add     r0, #0x15
	strb    r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x1a
	ldrh    r4, [r5, r0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	orr     r0, r4
	add     r2, #0x1a
	strh    r0, [r5, r2]
	mov     r0, r3
	mov     r2, r1
	mov     r3, #0x64
	bl      Function_200112c
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r5, #0xa0
	mov     r1, r5
	bl      Function_2245650
	ldr     r0, [sp, #0xc]
	bl      Function_200b190
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22443f0

.word 0x2249e12 @ 0x22443f0
.word 0x2249e06 @ 0x22443f4
.word 0x224a02c @ 0x22443f8
.word 0x2249f84 @ 0x22443fc
.word 0x2249ee4 @ 0x2244400
.word 0x224440d @ 0x2244404
.word 0x2244561 @ 0x2244408
.thumb
Function_224440c: @ 224440c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x0]
	mov     r1, #0x13
	mov     r5, r0
	mov     r6, r2
	bl      Function_2001504
	mov     r4, r0
	cmp     r6, #0x0
	bne     branch_2244436
	ldr     r0, [pc, #0x134] @ 0x2244558, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, sp, #0x4
	bl      Function_20014d0
	b       branch_224443c
@ 0x2244436

.thumb
branch_2244436: @ 2244436 :thumb
	mov     r1, #0x0
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
.thumb
branch_224443c: @ 224443c :thumb
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2001504
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2001504
	add     r2, sp, #0x4
	mov     r7, r0
	mov     r0, r5
	add     r1, sp, #0x8
	add     r2, #0x2
	bl      Function_20014dc
	add     r0, sp, #0x4
	ldrh    r1, [r0, #0x4]
	cmp     r1, #0x0
	bne     branch_224447e
	mov     r0, #0xe1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	b       branch_22444b6
@ 0x224447e

.thumb
branch_224447e: @ 224447e :thumb
	sub     r0, r6, r7
	cmp     r1, r0
	bne     branch_224449e
	mov     r0, #0xe1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	b       branch_22444b6
@ 0x224449e

.thumb
branch_224449e: @ 224449e :thumb
	mov     r0, #0xe1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2249bac
.thumb
branch_22444b6: @ 22444b6 :thumb
	add     r2, sp, #0x4
	ldrh    r2, [r2, #0x2]
	mov     r0, #0x3d
	lsl     r0, r0, #4
	lsl     r2, r2, #4
	add     r2, #0x18
	lsl     r2, r2, #16
	ldr     r0, [r4, r0]
	mov     r1, #0x9e
	lsr     r2, r2, #16
	bl      Function_2249bb8
	mov     r1, #0x1
	ldr     r0, [sp, #0x0]
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2244526
	add     r1, sp, #0x4
	ldrh    r1, [r1, #0x0]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244de0
	mov     r1, #0x11
	lsl     r1, r1, #4
	mov     r2, r0
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2243ef8
	add     r1, sp, #0x4
	ldrh    r1, [r1, #0x0]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244de0
	mov     r1, r0
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22499bc
	add     r1, sp, #0x4
	ldrh    r1, [r1, #0x0]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244de0
	mov     r1, r0
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22499fc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2244526

.thumb
branch_2244526: @ 2244526 :thumb
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r4, r0
	lsr     r1, r1, #16
	bl      Function_22499bc
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x24] @ 0x224455c, (=0xffff)
	add     r0, r4, r0
	bl      Function_22499fc
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2244558

.word 0x5dc @ 0x2244558
.word 0xffff @ 0x224455c
.thumb
Function_2244560: @ 2244560 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r5, r1
	mov     r1, #0x13
	mov     r6, r2
	bl      Function_2001504
	mov     r1, #0x1
	mvn     r1, r1
	mov     r4, r0
	cmp     r5, r1
	beq     branch_22445c0
	ldrb    r2, [r4, #0x13]
	lsl     r1, r5, #16
	lsr     r1, r1, #16
	bl      Function_2244d5c
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2244a74
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0xa0
	mov     r2, #0x4
	mov     r3, #0x80
	bl      Function_2243890
	strb    r0, [r4, #0xa]
	add     r4, #0xa0
	mov     r0, r4
	bl      Function_201a9a4
.thumb
branch_22445c0: @ 22445c0 :thumb
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x22445c4

.thumb
Function_22445c4: @ 22445c4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, r5
	ldr     r0, [r5, #0x4c]
	add     r1, #0xf0
	bl      Function_2249d84
	mov     r0, r5
	add     r0, #0xf0
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x5
	mov     r1, #0x64
	bl      Function_2013a04
	mov     r1, #0x67
	lsl     r1, r1, #2
	ldr     r4, [pc, #0x94] @ 0x2244680, (=0x2249ff0)
	str     r0, [r5, r1]
	mov     r6, #0x0
	mov     r7, r1
.thumb
branch_22445f0: @ 22445f0 :thumb
	ldr     r0, [r5, r7]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r4, #0x4]
	ldr     r3, [r4, #0x8]
	bl      Function_2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, #0x5
	bcc     branch_22445f0
	mov     r2, #0x1a
	ldr     r6, [pc, #0x7c] @ 0x2244684, (=0x2249ee4)
	lsl     r2, r2, #4
	add     r4, r5, r2
	mov     r3, r4
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1f10 @ sub r0, r2, #0x4
	ldr     r0, [r5, r0]
	mov     r1, r5
	str     r0, [r3, #0x0]
	mov     r0, r2
	add     r1, #0xf0
	add     r0, #0xc
	str     r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x1c
	str     r5, [r5, r0]
	ldr     r1, [pc, #0x50] @ 0x2244688, (=0x2244691)
	add     r0, r2, #0x4
	str     r1, [r5, r0]
	mov     r0, r2
	ldr     r1, [pc, #0x4c] @ 0x224468c, (=0x2244709)
	add     r0, #0x8
	str     r1, [r5, r0]
	mov     r0, r2
	mov     r1, #0x5
	add     r0, #0x10
	strh    r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x12
	strh    r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x18
	ldrb    r1, [r5, r0]
	mov     r0, #0xf
	add     r2, #0x18
	bic     r1, r0
	mov     r0, #0xf
	orr     r0, r1
	strb    r0, [r5, r2]
	mov     r1, #0x0
	mov     r0, r3
	mov     r2, r1
	mov     r3, #0x64
	bl      Function_200112c
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r5, #0xf0
	mov     r1, r5
	bl      Function_2245650
	pop     {r3-r7,pc}
@ 0x2244680

.word 0x2249ff0 @ 0x2244680
.word 0x2249ee4 @ 0x2244684
.word 0x2244691 @ 0x2244688
.word 0x2244709 @ 0x224468c
.thumb
Function_2244690: @ 2244690 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r1, #0x13
	mov     r6, r2
	bl      Function_2001504
	mov     r4, r0
	cmp     r6, #0x0
	bne     branch_22446aa
	ldr     r0, [pc, #0x5c] @ 0x2244704, (=0x5dc)
	bl      Function_2005748
.thumb
branch_22446aa: @ 22446aa :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	bl      Function_2249cac
	cmp     r5, #0x4
	beq     branch_22446c6
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_22446da
	b       branch_22446de
@ 0x22446c6

.thumb
branch_22446c6: @ 22446c6 :thumb
	cmp     r0, #0x3
	bne     branch_22446ce
	mov     r2, #0x1b
	b       branch_22446e0
@ 0x22446ce

.thumb
branch_22446ce: @ 22446ce :thumb
	cmp     r0, #0x1
	bne     branch_22446d6
	mov     r2, #0x19
	b       branch_22446e0
@ 0x22446d6

.thumb
branch_22446d6: @ 22446d6 :thumb
	mov     r2, #0x1a
	b       branch_22446e0
@ 0x22446da

.thumb
branch_22446da: @ 22446da :thumb
	mov     r2, #0x1c
	b       branch_22446e0
@ 0x22446de

.thumb
branch_22446de: @ 22446de :thumb
	mov     r2, #0x18
.thumb
branch_22446e0: @ 22446e0 :thumb
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r4, #0xb0
	mov     r1, r4
	str     r3, [sp, #0x14]
	bl      Function_224379c
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2244702


.align 2


.word 0x5dc @ 0x2244704
.thumb
Function_2244708: @ 2244708 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r6, r0
	mov     r1, #0x13
	bl      Function_2001504
	mov     r5, r0
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_20014d0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, #0x0
	bl      Function_2249cac
	cmp     r4, #0x4
	bhi     branch_224476a
	add     r1, r4, r4
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224473e

Jumppoints_224473e:
.hword branch_224476a - Jumppoints_224473e - 2
.hword branch_2244748 - Jumppoints_224473e - 2
.hword branch_2244748 - Jumppoints_224473e - 2
.hword branch_2244748 - Jumppoints_224473e - 2
.hword branch_224475e - Jumppoints_224473e - 2
.thumb
branch_2244748: @ 2244748 :thumb
	mov     r1, #0xc
	mov     r2, r4
	mul     r2, r1
	ldr     r1, [pc, #0x2c] @ 0x224477c, (=0x2249fe4)
	ldr     r1, [r1, r2]
	cmp     r0, r1
	bcc     branch_224475a
	mov     r1, #0x1
	b       branch_224476c
@ 0x224475a

.thumb
branch_224475a: @ 224475a :thumb
	mov     r1, #0x2
	b       branch_224476c
@ 0x224475e

.thumb
branch_224475e: @ 224475e :thumb
	cmp     r0, #0x3
	bne     branch_2244766
	mov     r1, #0x2
	b       branch_224476c
@ 0x2244766

.thumb
branch_2244766: @ 2244766 :thumb
	mov     r1, #0x1
	b       branch_224476c
@ 0x224476a

.thumb
branch_224476a: @ 224476a :thumb
	mov     r1, #0x1
.thumb
branch_224476c: @ 224476c :thumb
	mov     r0, r6
	mov     r2, #0xf
	mov     r3, #0x2
	bl      Function_20013d8
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224477a


.align 2


.word 0x2249fe4 @ 0x224477c
.thumb
Function_2244780: @ 2244780 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2019120
	mov     r1, #0x1
	lsl     r1, r1, #8
	ldr     r0, [r5, #0x4c]
	add     r1, r5, r1
	bl      Function_2249d84
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x4
	mov     r1, #0x64
	bl      Function_2013a04
	mov     r1, #0x67
	lsl     r1, r1, #2
	ldr     r4, [pc, #0xa8] @ 0x224485c, (=0x2249f54)
	str     r0, [r5, r1]
	mov     r6, #0x0
	mov     r7, r1
.thumb
branch_22447b8: @ 22447b8 :thumb
	ldr     r0, [r5, r7]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r4, #0x4]
	ldr     r3, [r4, #0x8]
	bl      Function_2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, #0x4
	bcc     branch_22447b8
	mov     r2, #0x1a
	ldr     r6, [pc, #0x90] @ 0x2244860, (=0x2249ee4)
	lsl     r2, r2, #4
	add     r4, r5, r2
	mov     r3, r4
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1f10 @ sub r0, r2, #0x4
	ldr     r0, [r5, r0]
	str     r0, [r3, #0x0]
	mov     r0, r2
	sub     r0, #0xa0
	add     r1, r5, r0
	mov     r0, r2
	add     r0, #0xc
	str     r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x1c
	str     r5, [r5, r0]
	ldr     r1, [pc, #0x64] @ 0x2244864, (=0x224486d)
	add     r0, r2, #0x4
	str     r1, [r5, r0]
	mov     r0, r2
	ldr     r1, [pc, #0x60] @ 0x2244868, (=0x22448e9)
	add     r0, #0x8
	str     r1, [r5, r0]
	mov     r0, r2
	mov     r1, #0x4
	add     r0, #0x10
	strh    r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x12
	strh    r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x18
	ldrb    r1, [r5, r0]
	mov     r0, #0xf
	add     r2, #0x18
	bic     r1, r0
	mov     r0, #0xf
	orr     r0, r1
	strb    r0, [r5, r2]
	mov     r1, #0x0
	mov     r0, r3
	mov     r2, r1
	mov     r3, #0x64
	bl      Function_200112c
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x98
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2245650
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_2019120
	pop     {r3-r7,pc}
@ 0x224485c

.word 0x2249f54 @ 0x224485c
.word 0x2249ee4 @ 0x2244860
.word 0x224486d @ 0x2244864
.word 0x22448e9 @ 0x2244868
.thumb
Function_224486c: @ 224486c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r1, #0x13
	mov     r6, r2
	bl      Function_2001504
	mov     r4, r0
	cmp     r6, #0x0
	bne     branch_2244886
	ldr     r0, [pc, #0x60] @ 0x22448e4, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2244886: @ 2244886 :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_2249cac
	cmp     r5, #0x6
	beq     branch_22448a2
	cmp     r5, #0x7
	beq     branch_22448a6
	cmp     r5, #0x8
	beq     branch_22448aa
	b       branch_22448be
@ 0x22448a2

.thumb
branch_22448a2: @ 22448a2 :thumb
	mov     r2, #0x30
	b       branch_22448c0
@ 0x22448a6

.thumb
branch_22448a6: @ 22448a6 :thumb
	mov     r2, #0x31
	b       branch_22448c0
@ 0x22448aa

.thumb
branch_22448aa: @ 22448aa :thumb
	cmp     r0, #0x3
	bne     branch_22448b2
	mov     r2, #0x34
	b       branch_22448c0
@ 0x22448b2

.thumb
branch_22448b2: @ 22448b2 :thumb
	cmp     r0, #0x1
	bne     branch_22448ba
	mov     r2, #0x32
	b       branch_22448c0
@ 0x22448ba

.thumb
branch_22448ba: @ 22448ba :thumb
	mov     r2, #0x33
	b       branch_22448c0
@ 0x22448be

.thumb
branch_22448be: @ 22448be :thumb
	mov     r2, #0x35
.thumb
branch_22448c0: @ 22448c0 :thumb
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r4, #0xb0
	mov     r1, r4
	str     r3, [sp, #0x14]
	bl      Function_224379c
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x22448e2


.align 2


.word 0x5dc @ 0x22448e4
.thumb
Function_22448e8: @ 22448e8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x13
	mov     r5, r0
	bl      Function_2001504
	mov     r1, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldrb    r1, [r1, #0x9]
	mov     r2, #0x1
	bl      Function_2249cac
	cmp     r4, #0x7
	beq     branch_224490e
	cmp     r4, #0x8
	beq     branch_2244924
	b       branch_2244930
@ 0x224490e

.thumb
branch_224490e: @ 224490e :thumb
	mov     r1, #0xc
	mov     r2, r4
	mul     r2, r1
	ldr     r1, [pc, #0x28] @ 0x2244940, (=0x2249f0c)
	ldr     r1, [r1, r2]
	cmp     r0, r1
	bcc     branch_2244920
	mov     r1, #0x1
	b       branch_2244932
@ 0x2244920

.thumb
branch_2244920: @ 2244920 :thumb
	mov     r1, #0x2
	b       branch_2244932
@ 0x2244924

.thumb
branch_2244924: @ 2244924 :thumb
	cmp     r0, #0x3
	bne     branch_224492c
	mov     r1, #0x2
	b       branch_2244932
@ 0x224492c

.thumb
branch_224492c: @ 224492c :thumb
	mov     r1, #0x1
	b       branch_2244932
@ 0x2244930

.thumb
branch_2244930: @ 2244930 :thumb
	mov     r1, #0x1
.thumb
branch_2244932: @ 2244932 :thumb
	mov     r0, r5
	mov     r2, #0xf
	mov     r3, #0x2
	bl      Function_20013d8
	pop     {r3-r5,pc}
@ 0x224493e


.align 2


.word 0x2249f0c @ 0x2244940
.thumb
Function_2244944: @ 2244944 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, r5
	ldr     r0, [r5, #0x4c]
	add     r1, #0xe0
	bl      Function_2249d84
	mov     r0, r5
	add     r0, #0xe0
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x5
	mov     r1, #0x64
	bl      Function_2013a04
	mov     r1, #0x67
	lsl     r1, r1, #2
	ldr     r4, [pc, #0xa4] @ 0x2244a10, (=0x2249f2c)
	str     r0, [r5, r1]
	mov     r6, #0x0
	mov     r7, r1
.thumb
branch_2244970: @ 2244970 :thumb
	ldr     r0, [r5, r7]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      Function_2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, #0x5
	blt     branch_2244970
	mov     r2, #0x1a
	ldr     r6, [pc, #0x8c] @ 0x2244a14, (=0x2249ee4)
	lsl     r2, r2, #4
	add     r4, r5, r2
	mov     r3, r4
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1f10 @ sub r0, r2, #0x4
	ldr     r0, [r5, r0]
	mov     r1, r5
	str     r0, [r3, #0x0]
	mov     r0, r2
	add     r1, #0xe0
	add     r0, #0xc
	str     r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x1c
	str     r5, [r5, r0]
	ldr     r1, [pc, #0x60] @ 0x2244a18, (=0x2244a1d)
	add     r0, r2, #0x4
	str     r1, [r5, r0]
	mov     r0, r2
	mov     r1, #0x0
	add     r0, #0x8
	str     r1, [r5, r0]
	mov     r0, r2
	mov     r1, #0x5
	add     r0, #0x10
	strh    r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x12
	strh    r1, [r5, r0]
	mov     r0, r2
	add     r0, #0x18
	ldrb    r1, [r5, r0]
	mov     r0, #0xf
	bic     r1, r0
	mov     r0, #0xf
	orr     r1, r0
	mov     r0, r2
	add     r0, #0x18
	strb    r1, [r5, r0]
	add     r2, #0x1c
	str     r5, [r5, r2]
	mov     r0, r3
	ldrh    r1, [r5, #0x18]
	ldrh    r2, [r5, #0x1a]
	mov     r3, #0x64
	bl      Function_200112c
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, r5
	mov     r0, r5
	add     r1, #0xe0
	bl      Function_2245650
	add     r5, #0xe0
	mov     r0, r5
	bl      Function_201a9a4
	pop     {r3-r7,pc}
@ 0x2244a0e


.align 2


.word 0x2249f2c @ 0x2244a10
.word 0x2249ee4 @ 0x2244a14
.word 0x2244a1d @ 0x2244a18
.thumb
Function_2244a1c: @ 2244a1c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r1, #0x13
	mov     r5, r0
	mov     r4, r2
	bl      Function_2001504
	mov     r6, r0
	cmp     r4, #0x0
	bne     branch_2244a36
	ldr     r0, [pc, #0x38] @ 0x2244a6c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2244a36: @ 2244a36 :thumb
	mov     r0, r5
	add     r1, sp, #0x18
	bl      Function_20014d0
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r6
	add     r6, #0xd0
	str     r3, [sp, #0x14]
	add     r2, sp, #0x18
	ldrh    r2, [r2, #0x0]
	mov     r1, r6
	lsl     r4, r2, #1
	ldr     r2, [pc, #0x10] @ 0x2244a70, (=0x2249e18)
	ldrh    r2, [r2, r4]
	bl      Function_224379c
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x2244a6a


.align 2


.word 0x5dc @ 0x2244a6c
.word 0x2249e18 @ 0x2244a70
.thumb
Function_2244a74: @ 2244a74 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0x1
	str     r4, [sp, #0x4]
	ldr     r0, [r0, #0x24]
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2244a8a


.align 2, 0


.thumb
Function_2244a8c: @ 2244a8c :thumb
	ldr     r3, [pc, #0x4] @ 0x2244a94, (=Function_200b538+1)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x2244a92


.align 2


.word Function_200b538+1 @ 0x2244a94
.thumb
Function_2244a98: @ 2244a98 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, r4
	bl      Function_200b498
	pop     {r3-r5,pc}
@ 0x2244ab4

.thumb
Function_2244ab4: @ 2244ab4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r1, #0x73
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	str     r2, [sp, #0x10]
	mov     r6, r3
	bl      LoadTrainerDataAdress
	mov     r7, r0
	mov     r0, #0x8
	mov     r1, #0x64
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r7
	bl      Function_2025ef0_Dummy
	mov     r1, r0
	mov     r0, r4
	bl      Function_2023d28
	mov     r0, r7
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_2244af0
	ldr     r1, [pc, #0x30] @ 0x2244b20, (=0x70800)
	b       branch_2244af4
@ 0x2244af0

.thumb
branch_2244af0: @ 2244af0 :thumb
	mov     r1, #0xc1
	lsl     r1, r1, #10
.thumb
branch_2244af4: @ 2244af4 :thumb
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x18
	ldrb    r1, [r1, #0x10]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	mov     r2, r4
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_201a9a4
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2244b1e


.align 2


.word 0x70800 @ 0x2244b20
.thumb
Function_2244b24: @ 2244b24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x18]
	mov     r6, r3
	bl      Function_203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      Function_2032ee8
	str     r0, [sp, #0x1c]
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_2244b4a
	ldr     r4, [pc, #0x40] @ 0x2244b88, (=0x70800)
	b       branch_2244b4e
@ 0x2244b4a

.thumb
branch_2244b4a: @ 2244b4a :thumb
	mov     r4, #0xc1
	lsl     r4, r4, #10
.thumb
branch_2244b4e: @ 2244b4e :thumb
	ldr     r0, [r5, #0x24]
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x0
	bl      Function_200b498
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	lsr     r0, r4, #16
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	lsr     r0, r4, #8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_2243860
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2244b88

.word 0x70800 @ 0x2244b88
.thumb
Function_2244b8c: @ 2244b8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r2
	mov     r2, r3
	add     r3, sp, #0x20
	ldrb    r3, [r3, #0x14]
	cmp     r3, #0x0
	bne     branch_2244ba6
	mov     r3, #0x56
	mov     r4, #0x7
	mov     r5, #0x8
	mov     r6, #0x0
	b       branch_2244bb2
@ 0x2244ba6

.thumb
branch_2244ba6: @ 2244ba6 :thumb
	cmp     r3, #0x1
	bne     branch_2244bcc
	mov     r3, #0x57
	mov     r4, #0x3
	mov     r5, #0x4
	mov     r6, #0x0
.thumb
branch_2244bb2: @ 2244bb2 :thumb
	str     r2, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r6, [sp, #0x10]
	add     r2, sp, #0x20
	ldrb    r2, [r2, #0x10]
	str     r2, [sp, #0x14]
	mov     r2, r3
	mov     r3, r7
	bl      Function_2243860
.thumb
branch_2244bcc: @ 2244bcc :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2244bd0

.thumb
Function_2244bd0: @ 2244bd0 :thumb
	mov     r3, #0x0
	strb    r3, [r0, #0x8]
	str     r2, [r1, #0x0]
	bx      lr
@ 0x2244bd8

.thumb
Function_2244bd8: @ 2244bd8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x14]
	ldrb    r1, [r5, #0xd]
	mov     r4, #0x0
	bl      Function_2249c98
	ldr     r1, [pc, #0x84] @ 0x2244c6c, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_2244c0a
	ldrb    r2, [r5, #0xd]
	ldrb    r1, [r5, #0x15]
	cmp     r2, r1
	beq     branch_2244c6a
	cmp     r0, #0x0
	bne     branch_2244c04
	ldrb    r1, [r5, #0x14]
	.hword  0x1e49 @ sub r1, r1, #0x1
	add     r1, r2, r1
	b       branch_2244c06
@ 0x2244c04

.thumb
branch_2244c04: @ 2244c04 :thumb
	.hword  0x1e51 @ sub r1, r2, #0x1
.thumb
branch_2244c06: @ 2244c06 :thumb
	strb    r1, [r5, #0xd]
	mov     r4, #0x1
.thumb
branch_2244c0a: @ 2244c0a :thumb
	ldr     r1, [pc, #0x60] @ 0x2244c6c, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2244c2e
	ldrb    r2, [r5, #0xd]
	ldrb    r1, [r5, #0x15]
	cmp     r2, r1
	beq     branch_2244c6a
	ldrb    r1, [r5, #0x14]
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2244c28
	sub     r0, r2, r1
	b       branch_2244c2a
@ 0x2244c28

.thumb
branch_2244c28: @ 2244c28 :thumb
	add     r0, r2, #0x1
.thumb
branch_2244c2a: @ 2244c2a :thumb
	strb    r0, [r5, #0xd]
	mov     r4, #0x1
.thumb
branch_2244c2e: @ 2244c2e :thumb
	ldr     r0, [pc, #0x3c] @ 0x2244c6c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_2244c46
	ldrb    r1, [r5, #0xd]
	ldrb    r0, [r5, #0x14]
	cmp     r1, r0
	bcc     branch_2244c6a
	ldrb    r0, [r5, #0xc]
	mov     r4, #0x1
	strb    r0, [r5, #0xd]
.thumb
branch_2244c46: @ 2244c46 :thumb
	ldr     r0, [pc, #0x24] @ 0x2244c6c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2244c60
	ldrb    r1, [r5, #0xd]
	ldrb    r0, [r5, #0x15]
	cmp     r1, r0
	bcs     branch_2244c6a
	strb    r1, [r5, #0xc]
	ldrb    r0, [r5, #0x15]
	mov     r4, #0x1
	strb    r0, [r5, #0xd]
.thumb
branch_2244c60: @ 2244c60 :thumb
	cmp     r4, #0x1
	bne     branch_2244c6a
	mov     r0, r5
	bl      Function_2244c70
.thumb
branch_2244c6a: @ 2244c6a :thumb
	pop     {r3-r5,pc}
@ 0x2244c6c

.word RAM_21bf67c @ 0x2244c6c
.thumb
Function_2244c70: @ 2244c70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x2244c9c, (=0x5dc)
	bl      Function_2005748
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2244c8e
	ldrb    r2, [r4, #0xd]
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_224529c
.thumb
branch_2244c8e: @ 2244c8e :thumb
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2244ca0
	pop     {r4,pc}
@ 0x2244c9a


.align 2


.word 0x5dc @ 0x2244c9c
.thumb
Function_2244ca0: @ 2244ca0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	cmp     r2, #0x0
	bne     branch_2244cb8
	mov     r0, #0xed
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r2, #0x1
	mov     r1, #0x0
	b       branch_2244cc2
@ 0x2244cb8

.thumb
branch_2244cb8: @ 2244cb8 :thumb
	mov     r0, #0xee
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r2, #0x2
	mov     r1, #0x11
.thumb
branch_2244cc2: @ 2244cc2 :thumb
	ldrb    r0, [r5, #0x15]
	cmp     r6, r0
	bcc     branch_2244cdc
	mov     r0, r4
	bl      Function_2249bec
	mov     r0, r4
	mov     r1, #0xe0
	mov     r2, #0xa0
	bl      Function_2249bb8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2244cdc

.thumb
branch_2244cdc: @ 2244cdc :thumb
	mov     r0, r4
	mov     r1, r2
	bl      Function_2249bec
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r3, r6
	bl      Function_2244d08
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	mov     r0, r4
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_2249bb8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2244d06


.align 2, 0


.thumb
Function_2244d08: @ 2244d08 :thumb
	push    {r4-r6,lr}
	ldrb    r0, [r0, #0x9]
	mov     r5, r1
	mov     r6, r2
	mov     r4, r3
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2244d3e
	cmp     r4, #0x0
	bne     branch_2244d24
	mov     r0, #0x28
	str     r0, [r5, #0x0]
	b       branch_2244d56
@ 0x2244d24

.thumb
branch_2244d24: @ 2244d24 :thumb
	cmp     r4, #0x1
	bne     branch_2244d2e
	mov     r0, #0x68
	str     r0, [r5, #0x0]
	b       branch_2244d56
@ 0x2244d2e

.thumb
branch_2244d2e: @ 2244d2e :thumb
	cmp     r4, #0x2
	bne     branch_2244d38
	mov     r0, #0xa8
	str     r0, [r5, #0x0]
	b       branch_2244d56
@ 0x2244d38

.thumb
branch_2244d38: @ 2244d38 :thumb
	mov     r0, #0xe8
	str     r0, [r5, #0x0]
	b       branch_2244d56
@ 0x2244d3e

.thumb
branch_2244d3e: @ 2244d3e :thumb
	cmp     r4, #0x0
	bne     branch_2244d48
	mov     r0, #0x48
	str     r0, [r5, #0x0]
	b       branch_2244d56
@ 0x2244d48

.thumb
branch_2244d48: @ 2244d48 :thumb
	cmp     r4, #0x1
	bne     branch_2244d52
	mov     r0, #0x88
	str     r0, [r5, #0x0]
	b       branch_2244d56
@ 0x2244d52

.thumb
branch_2244d52: @ 2244d52 :thumb
	mov     r0, #0xc8
	str     r0, [r5, #0x0]
.thumb
branch_2244d56: @ 2244d56 :thumb
	mov     r0, #0x58
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x2244d5c

.thumb
Function_2244d5c: @ 2244d5c :thumb
	push    {r3-r5,lr}
	mov     r3, r0
	mov     r0, #0x73
	mov     r5, r1
	lsl     r0, r0, #2
	mov     r4, r2
	ldrb    r1, [r3, #0x9]
	ldr     r0, [r3, r0]
	mov     r2, #0x1
	bl      Function_2249cac
	cmp     r4, #0x6
	bne     branch_2244d7e
	ldr     r0, [pc, #0x10] @ 0x2244d88, (=0x224a06c)
	lsl     r1, r5, #1
	ldrh    r0, [r0, r1]
	pop     {r3-r5,pc}
@ 0x2244d7e

.thumb
branch_2244d7e: @ 2244d7e :thumb
	ldr     r0, [pc, #0xc] @ 0x2244d8c, (=0x2249fba)
	lsl     r1, r5, #1
	ldrh    r0, [r0, r1]
	pop     {r3-r5,pc}
@ 0x2244d86


.align 2


.word 0x224a06c @ 0x2244d88
.word 0x2249fba @ 0x2244d8c
.thumb
Function_2244d90: @ 2244d90 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x3c] @ 0x2244dd0, (=0x2249f84)
	mov     r2, #0x0
.thumb
branch_2244d96: @ 2244d96 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_2244da4
	ldr     r0, [pc, #0x34] @ 0x2244dd4, (=0x2249fba)
	lsl     r1, r2, #1
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x2244da4

.thumb
branch_2244da4: @ 2244da4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x1b
	bcc     branch_2244d96
	ldr     r2, [pc, #0x28] @ 0x2244dd8, (=0x224a02c)
	mov     r3, #0x0
.thumb
branch_2244db0: @ 2244db0 :thumb
	ldrh    r1, [r2, #0x0]
	cmp     r0, r1
	bne     branch_2244dbe
	ldr     r0, [pc, #0x24] @ 0x2244ddc, (=0x224a06c)
	lsl     r1, r3, #1
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x2244dbe

.thumb
branch_2244dbe: @ 2244dbe :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, #0x20
	bcc     branch_2244db0
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2244dce


.align 2


.word 0x2249f84 @ 0x2244dd0
.word 0x2249fba @ 0x2244dd4
.word 0x224a02c @ 0x2244dd8
.word 0x224a06c @ 0x2244ddc
.thumb
Function_2244de0: @ 2244de0 :thumb
	push    {r3-r5,lr}
	mov     r3, r0
	mov     r0, #0x73
	mov     r5, r1
	lsl     r0, r0, #2
	mov     r4, r2
	ldrb    r1, [r3, #0x9]
	ldr     r0, [r3, r0]
	mov     r2, #0x1
	bl      Function_2249cac
	cmp     r4, #0x6
	bne     branch_2244e02
	ldr     r0, [pc, #0x10] @ 0x2244e0c, (=0x224a02c)
	lsl     r1, r5, #1
	ldrh    r0, [r0, r1]
	pop     {r3-r5,pc}
@ 0x2244e02

.thumb
branch_2244e02: @ 2244e02 :thumb
	ldr     r0, [pc, #0xc] @ 0x2244e10, (=0x2249f84)
	lsl     r1, r5, #1
	ldrh    r0, [r0, r1]
	pop     {r3-r5,pc}
@ 0x2244e0a


.align 2


.word 0x224a02c @ 0x2244e0c
.word 0x2249f84 @ 0x2244e10
.thumb
Function_2244e14: @ 2244e14 :thumb
	push    {r3-r7,lr}
	ldrb    r0, [r0, #0x9]
	mov     r5, r1
	mov     r6, r2
	mov     r7, r3
	ldr     r4, [sp, #0x18]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2244e36
	mov     r0, #0x1c
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	strh    r0, [r7, #0x0]
	strh    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2244e36

.thumb
branch_2244e36: @ 2244e36 :thumb
	mov     r1, #0x0
	strh    r1, [r5, #0x0]
	strh    r1, [r6, #0x0]
	mov     r0, #0x78
	strh    r0, [r7, #0x0]
	strh    r1, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2244e44

.thumb
Function_2244e44: @ 2244e44 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r0
	ldrb    r0, [r4, #0x14]
	mov     r6, r2
	bl      Function_2249c98
	mov     r5, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x14]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	ldr     r0, [sp, #0x1c]
	lsl     r1, r7, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	mov     r2, #0x30
	bl      Function_208c104
	mov     r1, r0
	mov     r0, r4
	bl      Function_22450e8
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	lsl     r1, r7, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	mov     r2, #0x30
	bl      Function_208c104
	mov     r1, r0
	mov     r0, r4
	bl      Function_2245114
	mov     r7, r0
	cmp     r6, #0xa
	bls     branch_2244eb2
	b       branch_2245036
@ 0x2244eb2

.thumb
branch_2244eb2: @ 2244eb2 :thumb
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2244ebe

Jumppoints_2244ebe:
.hword branch_2245036 - Jumppoints_2244ebe - 2
.hword branch_2244ee2 - Jumppoints_2244ebe - 2
.hword branch_2244ee2 - Jumppoints_2244ebe - 2
.hword branch_2244ee2 - Jumppoints_2244ebe - 2
.hword branch_2244ed4 - Jumppoints_2244ebe - 2
.hword branch_2245036 - Jumppoints_2244ebe - 2
.hword branch_2244fa2 - Jumppoints_2244ebe - 2
.hword branch_2244fa2 - Jumppoints_2244ebe - 2
.hword branch_2244ed4 - Jumppoints_2244ebe - 2
.hword branch_224501a - Jumppoints_2244ebe - 2
.hword branch_2245028 - Jumppoints_2244ebe - 2
.thumb
branch_2244ed4: @ 2244ed4 :thumb
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x4
	add     sp, #0x20
	bic     r1, r0
	strb    r1, [r4, #0xe]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2244ee2

.thumb
branch_2244ee2: @ 2244ee2 :thumb
	ldrb    r1, [r4, #0xe]
	lsl     r0, r1, #29
	lsr     r0, r0, #31
	bne     branch_2244f2c
	mov     r0, #0x4
	orr     r0, r1
	strb    r0, [r4, #0xe]
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2244efe
	mov     r1, #0x40
	b       branch_2244f00
@ 0x2244efe

.thumb
branch_2244efe: @ 2244efe :thumb
	mov     r1, #0x20
.thumb
branch_2244f00: @ 2244f00 :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	lsl     r0, r5, #6
	add     r0, r1, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	lsl     r0, r0, #2
	str     r1, [sp, #0xc]
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0x3b
	lsl     r1, r1, #4
	str     r0, [r4, r1]
.thumb
branch_2244f2c: @ 2244f2c :thumb
	mov     r0, #0x3b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2244f50
	bl      Function_2249c40
	cmp     r0, #0x0
	bne     branch_2244f50
	mov     r0, #0x3b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2249b8c
	mov     r0, #0x3b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_2244f50: @ 2244f50 :thumb
	mov     r0, #0x3b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2245036
	ldr     r0, [sp, #0x14]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	mov     r3, r0
	mov     r0, r4
	add     r1, #0x80
	mov     r2, r5
	bl      Function_2243f4c
	lsl     r5, r5, #2
	mov     r0, #0xef
	add     r1, r4, r5
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r7
	bl      Function_2249bec
	mov     r0, #0x39
	add     r1, r4, r5
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x18]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2249c1c
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x4
	add     sp, #0x20
	bic     r1, r0
	strb    r1, [r4, #0xe]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2244fa2

.thumb
branch_2244fa2: @ 2244fa2 :thumb
	ldrb    r1, [r4, #0xe]
	lsl     r0, r1, #29
	lsr     r0, r0, #31
	bne     branch_2244fec
	mov     r0, #0x4
	orr     r0, r1
	strb    r0, [r4, #0xe]
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2244fbe
	mov     r1, #0x40
	b       branch_2244fc0
@ 0x2244fbe

.thumb
branch_2244fbe: @ 2244fbe :thumb
	mov     r1, #0x20
.thumb
branch_2244fc0: @ 2244fc0 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	lsl     r0, r5, #6
	add     r0, r1, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	lsl     r0, r0, #2
	str     r1, [sp, #0xc]
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0x3b
	lsl     r1, r1, #4
	str     r0, [r4, r1]
.thumb
branch_2244fec: @ 2244fec :thumb
	mov     r0, #0x3b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2249c40
	cmp     r0, #0x0
	bne     branch_2245036
	mov     r0, #0x3b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2249b8c
	mov     r0, #0x3b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x4
	add     sp, #0x20
	bic     r1, r0
	strb    r1, [r4, #0xe]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224501a

.thumb
branch_224501a: @ 224501a :thumb
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x4
	add     sp, #0x20
	bic     r1, r0
	strb    r1, [r4, #0xe]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2245028

.thumb
branch_2245028: @ 2245028 :thumb
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x4
	add     sp, #0x20
	bic     r1, r0
	strb    r1, [r4, #0xe]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2245036

.thumb
branch_2245036: @ 2245036 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x224503c

.thumb
Function_224503c: @ 224503c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrb    r0, [r5, #0x14]
	mov     r6, r2
	bl      Function_2249c98
	mov     r4, r0
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_224505a
	mov     r1, #0x40
	b       branch_224505c
@ 0x224505a

.thumb
branch_224505a: @ 224505a :thumb
	mov     r1, #0x20
.thumb
branch_224505c: @ 224505c :thumb
	cmp     r6, #0x1
	bne     branch_224506a
	mov     r0, #0x0
	mov     r7, #0x28
	mov     r6, #0x50
	str     r0, [sp, #0x8]
	b       branch_2245078
@ 0x224506a

.thumb
branch_224506a: @ 224506a :thumb
	lsl     r0, r4, #6
	add     r0, r1, r0
	lsl     r0, r0, #16
	asr     r7, r0, #16
	mov     r0, #0x2
	mov     r6, #0x3a
	str     r0, [sp, #0x8]
.thumb
branch_2245078: @ 2245078 :thumb
	mov     r0, r7
	add     r0, #0x8
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	add     r0, r6, #0x4
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	lsl     r0, r0, #4
	add     r0, r5, r0
	lsl     r4, r4, #2
	str     r0, [sp, #0xc]
	ldr     r0, [r0, r4]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	bl      Function_2249c58
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r0, r4]
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_2249bb8
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, r4]
	bl      Function_2249c4c
	mov     r0, #0x39
	lsl     r0, r0, #4
	add     r5, r5, r0
	ldr     r0, [r5, r4]
	mov     r1, r7
	mov     r2, r6
	bl      Function_2249c58
	lsl     r1, r7, #16
	lsl     r2, r6, #16
	ldr     r0, [r5, r4]
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_2249bb8
	ldr     r0, [r5, r4]
	ldr     r1, [sp, #0x8]
	bl      Function_2249c4c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22450e6


.align 2, 0


.thumb
Function_22450e8: @ 22450e8 :thumb
	cmp     r1, #0x4
	bhi     branch_2245110
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22450f8

Jumppoints_22450f8:
.hword branch_2245110 - Jumppoints_22450f8 - 2
.hword branch_224510e - Jumppoints_22450f8 - 2
.hword branch_224510a - Jumppoints_22450f8 - 2
.hword branch_2245106 - Jumppoints_22450f8 - 2
.hword branch_2245102 - Jumppoints_22450f8 - 2
.thumb
branch_2245102: @ 2245102 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2245106

.thumb
branch_2245106: @ 2245106 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x224510a

.thumb
branch_224510a: @ 224510a :thumb
	mov     r0, #0x3
	bx      lr
@ 0x224510e

.thumb
branch_224510e: @ 224510e :thumb
	mov     r0, #0x4
.thumb
branch_2245110: @ 2245110 :thumb
	bx      lr
@ 0x2245112


.align 2, 0


.thumb
Function_2245114: @ 2245114 :thumb
	cmp     r1, #0x4
	bhi     branch_224513c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2245124

Jumppoints_2245124:
.hword branch_224513c - Jumppoints_2245124 - 2
.hword branch_224513a - Jumppoints_2245124 - 2
.hword branch_2245136 - Jumppoints_2245124 - 2
.hword branch_2245132 - Jumppoints_2245124 - 2
.hword branch_224512e - Jumppoints_2245124 - 2
.thumb
branch_224512e: @ 224512e :thumb
	mov     r0, #0xf
	bx      lr
@ 0x2245132

.thumb
branch_2245132: @ 2245132 :thumb
	mov     r0, #0xf
	bx      lr
@ 0x2245136

.thumb
branch_2245136: @ 2245136 :thumb
	mov     r0, #0xe
	bx      lr
@ 0x224513a

.thumb
branch_224513a: @ 224513a :thumb
	mov     r0, #0xd
.thumb
branch_224513c: @ 224513c :thumb
	bx      lr
@ 0x224513e


.align 2, 0


.thumb
Function_2245140: @ 2245140 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xd
	ldsb    r0, [r4, r0]
	add     r0, r0, r1
	lsl     r0, r0, #24
	asr     r1, r0, #24
	ldrb    r0, [r4, #0x14]
	bpl     branch_224515a
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	asr     r1, r0, #24
	b       branch_2245160
@ 0x224515a

.thumb
branch_224515a: @ 224515a :thumb
	cmp     r1, r0
	blt     branch_2245160
	mov     r1, #0x0
.thumb
branch_2245160: @ 2245160 :thumb
	strb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_2244c70
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r4
	add     r4, #0x90
	mov     r1, r4
	bl      Function_2243950
	pop     {r4,pc}
@ 0x224518a


.align 2, 0


.thumb
Function_224518c: @ 224518c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xd
	ldsb    r0, [r4, r0]
	add     r0, r0, r1
	lsl     r0, r0, #24
	asr     r1, r0, #24
	ldrb    r0, [r4, #0x14]
	bpl     branch_22451a6
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	asr     r1, r0, #24
	b       branch_22451ac
@ 0x22451a6

.thumb
branch_22451a6: @ 22451a6 :thumb
	cmp     r1, r0
	blt     branch_22451ac
	mov     r1, #0x0
.thumb
branch_22451ac: @ 22451ac :thumb
	strb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_2244c70
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r4
	add     r4, #0x90
	mov     r1, r4
	bl      Function_2243b84
	pop     {r4,pc}
@ 0x22451d6


.align 2, 0


.thumb
Function_22451d8: @ 22451d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2245618
	mov     r0, r4
	bl      Function_2245730
	mov     r0, r4
	bl      Function_2244120
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, r4
	bl      Function_2245be0
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	pop     {r4,pc}
@ 0x2245210

.thumb
Function_2245210: @ 2245210 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r1, #0x3a
	mov     r2, r4
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x42
	mov     r2, r4
	bl      GetPkmnData
	cmp     r6, r0
	beq     branch_2245230
	mov     r4, #0x1
.thumb
branch_2245230: @ 2245230 :thumb
	mov     r0, r5
	mov     r1, #0x3b
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x43
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r6, r0
	beq     branch_224524c
	mov     r4, #0x1
.thumb
branch_224524c: @ 224524c :thumb
	mov     r0, r5
	mov     r1, #0x3c
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x44
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r6, r0
	beq     branch_2245268
	mov     r4, #0x1
.thumb
branch_2245268: @ 2245268 :thumb
	mov     r0, r5
	mov     r1, #0x3d
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x45
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r6, r0
	beq     branch_2245284
	mov     r4, #0x1
.thumb
branch_2245284: @ 2245284 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2245288

.thumb
Function_2245288: @ 2245288 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	bl      Function_200e084
	mov     r0, r4
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x224529a


.align 2, 0


.thumb
Function_224529c: @ 224529c :thumb
	push    {r3-r5,lr}
	mov     r3, r1
	sub     r3, #0xa
	mov     r5, r0
	cmp     r3, #0x3
	bhi     branch_22452da
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x22452b4

Jumppoints_22452b4:
.hword branch_22452bc - Jumppoints_22452b4 - 2
.hword branch_22452c4 - Jumppoints_22452b4 - 2
.hword branch_22452cc - Jumppoints_22452b4 - 2
.hword branch_22452d4 - Jumppoints_22452b4 - 2
.thumb
branch_22452bc: @ 22452bc :thumb
	mov     r4, #0x31
	bl      Function_22452f4
	b       branch_22452da
@ 0x22452c4

.thumb
branch_22452c4: @ 22452c4 :thumb
	mov     r4, #0x32
	bl      Function_2245368
	b       branch_22452da
@ 0x22452cc

.thumb
branch_22452cc: @ 22452cc :thumb
	mov     r4, #0x33
	bl      Function_22453f8
	b       branch_22452da
@ 0x22452d4

.thumb
branch_22452d4: @ 22452d4 :thumb
	mov     r4, #0x34
	bl      Function_224542c
.thumb
branch_22452da: @ 22452da :thumb
	mov     r1, #0x3e
	lsl     r1, r1, #4
	mov     r0, r4
	add     r1, r5, r1
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_22452f0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22452f0

.thumb
branch_22452f0: @ 22452f0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22452f4

.thumb
Function_22452f4: @ 22452f4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r1, #0x3e
	lsl     r1, r1, #4
	strh    r4, [r6, r1]
	bl      GetGender
	ldr     r1, [pc, #0x24] @ 0x2245334, (=0x3e2)
	mov     r4, #0x0
	strh    r0, [r6, r1]
	add     r5, r6, #0x4
	.hword  0x1e8f @ sub r7, r1, #0x2
.thumb
branch_2245318: @ 2245318 :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	lsl     r2, r4, #24
	ldrb    r1, [r6, #0x9]
	ldr     r0, [r6, r0]
	lsr     r2, r2, #24
	bl      Function_2249cac
	strh    r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x3
	blt     branch_2245318
	pop     {r3-r7,pc}
@ 0x2245334

.word 0x3e2 @ 0x2245334



.thumb
.globl Function_107_2245338
Function_107_2245338: @ 2245338 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r5, r0
	ldrb    r0, [r4, #0xf]
	mov     r6, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_2245362
	ldr     r0, [pc, #0x14] @ 0x2245364, (=0x433)
	mov     r3, #0x0
	add     r5, r6, #0x4
.thumb
branch_2245354: @ 2245354 :thumb
	ldrh    r2, [r5, #0x0]
	add     r1, r4, r3
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strb    r2, [r1, r0]
	cmp     r3, #0x3
	blt     branch_2245354
.thumb
branch_2245362: @ 2245362 :thumb
	pop     {r4-r6,pc}
@ 0x2245364

.word 0x433 @ 0x2245364
.thumb
Function_2245368: @ 2245368 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3e
	lsl     r0, r0, #4
	strh    r1, [r5, r0]
	mov     r4, r2
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r4, [r5, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2245388
	ldrb    r0, [r5, #0x12]
	cmp     r0, #0xff
	bne     branch_2245388
	strb    r4, [r5, #0x12]
.thumb
branch_2245388: @ 2245388 :thumb
	ldrb    r1, [r5, #0x12]
	mov     r0, #0xf9
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	ldrh    r2, [r5, #0x10]
	add     r1, r0, #0x4
	.hword  0x1d80 @ add r0, r0, #0x6
	strh    r2, [r5, r1]
	ldrb    r1, [r5, #0x13]
	strh    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x224539e


.align 2, 0
.thumb
.globl Function_107_22453a0
Function_107_22453a0: @ 22453a0 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r6, r0
	ldrb    r0, [r4, #0xf]
	mov     r5, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_22453f0
	ldrh    r1, [r5, #0x2]
	ldr     r0, [pc, #0x38] @ 0x22453f4, (=0x431)
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_22453e4
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0xff
	ldr     r0, [pc, #0x28] @ 0x22453f4, (=0x431)
	beq     branch_22453d2
	mov     r1, #0x0
	strb    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x22453d2

.thumb
branch_22453d2: @ 22453d2 :thumb
	ldrb    r1, [r4, r0]
	ldrb    r0, [r4, #0x15]
	add     r0, r1, r0
	strb    r0, [r4, #0x12]
	ldrh    r0, [r5, #0x8]
	strh    r0, [r4, #0x10]
	ldrh    r0, [r5, #0xa]
	strb    r0, [r4, #0x13]
	pop     {r4-r6,pc}
@ 0x22453e4

.thumb
branch_22453e4: @ 22453e4 :thumb
	ldrh    r0, [r5, #0x4]
	strb    r0, [r4, #0x12]
	ldrh    r0, [r5, #0x8]
	strh    r0, [r4, #0x10]
	ldrh    r0, [r5, #0xa]
	strb    r0, [r4, #0x13]
.thumb
branch_22453f0: @ 22453f0 :thumb
	pop     {r4-r6,pc}
@ 0x22453f2


.align 2


.word 0x431 @ 0x22453f4
.thumb
Function_22453f8: @ 22453f8 :thumb
	mov     r2, #0x3e
	lsl     r2, r2, #4
	strh    r1, [r0, r2]
	ldrb    r3, [r0, #0xd]
	add     r1, r2, #0x2
	strh    r3, [r0, r1]
	bx      lr
@ 0x2245406


.align 2, 0
.thumb
.globl Function_107_2245408
Function_107_2245408: @ 2245408 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r3
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_224542a
	ldrh    r0, [r6, #0x2]
	mov     r1, #0x43
	lsl     r1, r1, #4
	strb    r0, [r4, r1]
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2244ca0
.thumb
branch_224542a: @ 224542a :thumb
	pop     {r4-r6,pc}
@ 0x224542c

.thumb
Function_224542c: @ 224542c :thumb
	mov     r1, #0x3e
	mov     r2, #0x1
	lsl     r1, r1, #4
	strh    r2, [r0, r1]
	bx      lr
@ 0x2245436


.align 2, 0
.thumb
.globl Function_107_2245438
Function_107_2245438: @ 2245438 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r6, r3
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_224544e
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x4] @ 0x2245450, (=0x432)
	strb    r1, [r6, r0]
.thumb
branch_224544e: @ 224544e :thumb
	pop     {r4-r6,pc}
@ 0x2245450

.word 0x432 @ 0x2245450
.thumb
Function_2245454: @ 2245454 :thumb
	push    {r3,lr}
	mov     r2, #0x64
	str     r2, [sp, #0x0]
	mov     r2, #0x0
	mov     r3, r2
	bl      Function_2096954
	pop     {r3,pc}
@ 0x2245464

.thumb
Function_2245464: @ 2245464 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	add     r1, sp, #0x8
	add     r3, sp, #0x4
	mov     r5, r0
	add     r1, #0x2
	add     r2, sp, #0x8
	add     r3, #0x2
	bl      Function_2244e14
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_224549c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r3, sp, #0x4
	ldrh    r2, [r3, #0x6]
	ldrh    r3, [r3, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2244ab4
	b       branch_22454ec
@ 0x224549c

.thumb
branch_224549c: @ 224549c :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	add     r0, sp, #0x4
	bne     branch_22454ca
	ldrh    r2, [r0, #0x6]
	ldrh    r3, [r0, #0x4]
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_2244ab4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r3, sp, #0x4
	ldrh    r2, [r3, #0x2]
	ldrh    r3, [r3, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2244b24
	b       branch_22454ec
@ 0x22454ca

.thumb
branch_22454ca: @ 22454ca :thumb
	ldrh    r2, [r0, #0x6]
	ldrh    r3, [r0, #0x4]
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_2244b24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r3, sp, #0x4
	ldrh    r2, [r3, #0x2]
	ldrh    r3, [r3, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2244ab4
.thumb
branch_22454ec: @ 22454ec :thumb
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22454f6


.align 2, 0


.thumb
Function_22454f8: @ 22454f8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x14]
	mov     r4, r2
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, #0x0
	bl      Function_2249cac
	mov     r0, r6
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2244a8c
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xb0
	bl      Function_2249dbc
	sub     r1, r4, #0x1
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x4c] @ 0x2245598, (=Unknown_2249e00)
	mov     r0, r5
	ldrh    r1, [r1, r2]
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r5, #0xa]
	cmp     r4, #0x1
	beq     branch_2245564
	cmp     r4, #0x2
	beq     branch_224556e
	cmp     r4, #0x3
	beq     branch_2245578
	b       branch_224558a
@ 0x2245564

.thumb
branch_2245564: @ 2245564 :thumb
	mov     r0, r6
	mov     r1, #0x18
	bl      Function_2245454
	b       branch_224558e
@ 0x224556e

.thumb
branch_224556e: @ 224556e :thumb
	mov     r0, r6
	mov     r1, #0x29
	bl      Function_2245454
	b       branch_224558e
@ 0x2245578

.thumb
branch_2245578: @ 2245578 :thumb
	mov     r0, r6
	mov     r1, #0x18
	bl      Function_2245454
	mov     r0, r6
	mov     r1, #0x29
	bl      Function_2245454
	b       branch_224558e
@ 0x224558a

.thumb
branch_224558a: @ 224558a :thumb
	bl      ErrorHandling
.thumb
branch_224558e: @ 224558e :thumb
	ldr     r0, [pc, #0xc] @ 0x224559c, (=0x5ec)
	bl      Function_2005748
	pop     {r4-r6,pc}
@ 0x2245596

.align 2
.word Unknown_2249e00 @ 0x2245598
.word 0x5ec @ 0x224559c



.thumb
Function_22455a0: @ 22455a0 :thumb
	push    {r0-r3}
.thumb
Function_22455a2: @ 22455a2 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x14]
	mov     r4, r1
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	add     r2, sp, #0x18
	mov     r6, r0
	bl      SetPkmnData
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, r6
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2244a8c
	add     r2, sp, #0x10
	ldrh    r2, [r2, #0x8]
	ldr     r0, [r5, #0x24]
	mov     r1, #0x1
	bl      Function_200b70c
	mov     r0, r5
	mov     r1, #0x3b
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r5, #0xa]
	ldr     r0, [pc, #0xc] @ 0x2245614, (=0x624)
	bl      Function_2005748
	pop     {r4-r6}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2245612


.align 2


.word 0x624 @ 0x2245614
.thumb
Function_2245618: @ 2245618 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0xe]
	lsl     r0, r1, #27
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_224564e
	mov     r0, #0x10
	bic     r1, r0
	mov     r0, #0x5f
	strb    r1, [r4, #0xe]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_201ad10
.thumb
branch_224564e: @ 224564e :thumb
	pop     {r4,pc}
@ 0x2245650

.thumb
Function_2245650: @ 2245650 :thumb
	ldrb    r2, [r0, #0xe]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strb    r1, [r0, #0xe]
	bx      lr
@ 0x224565e


.align 2, 0


.thumb
Function_2245660: @ 2245660 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0xe1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0x5
	lsl     r0, r0, #6
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, #0x5
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_201ad10
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_224503c
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_201ad10
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x22456e2


.align 2, 0


.thumb
Function_22456e4: @ 22456e4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0xb0
	bl      Function_2245288
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20013ac
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	bl      Function_20014d0
	add     r1, sp, #0x0
	ldrh    r1, [r1, #0x0]
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2244de0
	mov     r1, #0x11
	lsl     r1, r1, #4
	mov     r2, r0
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2243ef8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2245730

.thumb
Function_2245730: @ 2245730 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0xe]
	lsl     r0, r1, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_224577e
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, #0x66
	strb    r1, [r4, #0xe]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x12
	bl      Function_2001504
	mov     r5, r0
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	bl      Function_201ad10
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, r1
	bl      Function_2001384
.thumb
branch_224577e: @ 224577e :thumb
	pop     {r3-r5,pc}
@ 0x2245780

.thumb
Function_2245780: @ 2245780 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r1
	add     r1, sp, #0x28
	str     r1, [sp, #0x0]
	add     r1, sp, #0x2c
	add     r3, sp, #0x28
	mov     r5, r0
	add     r1, #0x2
	add     r2, sp, #0x2c
	add     r3, #0x2
	bl      Function_2244e14
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_224581a
	add     r1, sp, #0x28
	ldrh    r0, [r1, #0x6]
	ldrh    r6, [r1, #0x4]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	str     r0, [sp, #0x1c]
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      Function_2030698
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2244a74
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	str     r2, [sp, #0x18]
	bl      Function_2243890
	strb    r0, [r5, #0xa]
	b       branch_22459c2
@ 0x224581a

.thumb
branch_224581a: @ 224581a :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	add     r1, sp, #0x28
	bne     branch_22458f4
	ldrh    r0, [r1, #0x6]
	ldrh    r6, [r1, #0x4]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	str     r0, [sp, #0x20]
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x20]
	bl      Function_2030698
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2244a74
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	str     r2, [sp, #0x18]
	bl      Function_2243890
	add     r1, sp, #0x28
	strb    r0, [r5, #0xa]
	ldrh    r0, [r1, #0x2]
	ldrh    r6, [r1, #0x0]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x108] @ 0x22459cc, (=0x436)
	mov     r0, r5
	ldrh    r2, [r5, r2]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2244a74
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3
	mov     r3, r7
	bl      Function_2243890
	strb    r0, [r5, #0xa]
	b       branch_22459c2
@ 0x22458f4

.thumb
branch_22458f4: @ 22458f4 :thumb
	ldrh    r0, [r1, #0x6]
	ldrh    r6, [r1, #0x4]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0xac] @ 0x22459cc, (=0x436)
	mov     r0, r5
	ldrh    r2, [r5, r2]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2244a74
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3
	mov     r3, r7
	bl      Function_2243890
	add     r1, sp, #0x28
	strb    r0, [r5, #0xa]
	ldrh    r0, [r1, #0x2]
	ldrh    r6, [r1, #0x0]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	str     r0, [sp, #0x24]
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x24]
	bl      Function_2030698
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2244a74
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	str     r2, [sp, #0x18]
	bl      Function_2243890
	strb    r0, [r5, #0xa]
.thumb
branch_22459c2: @ 22459c2 :thumb
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x22459cc

.word 0x436 @ 0x22459cc
.thumb
Function_22459d0: @ 22459d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [pc, #0x15c] @ 0x2245b34, (=0x5e3)
	mov     r7, r1
	mov     r5, r2
	bl      Function_2005748
	ldrb    r0, [r4, #0x15]
	mov     r1, r7
	str     r0, [sp, #0x0]
	bl      Function_2249c9c
	str     r0, [sp, #0x4]
	cmp     r5, #0xa
	bhi     branch_2245a28
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22459fc

Jumppoints_22459fc:
.hword branch_2245a28 - Jumppoints_22459fc - 2
.hword branch_2245a12 - Jumppoints_22459fc - 2
.hword branch_2245a12 - Jumppoints_22459fc - 2
.hword branch_2245a12 - Jumppoints_22459fc - 2
.hword branch_2245a28 - Jumppoints_22459fc - 2
.hword branch_2245a28 - Jumppoints_22459fc - 2
.hword branch_2245a1c - Jumppoints_22459fc - 2
.hword branch_2245a1c - Jumppoints_22459fc - 2
.hword branch_2245a28 - Jumppoints_22459fc - 2
.hword branch_2245a26 - Jumppoints_22459fc - 2
.hword branch_2245a26 - Jumppoints_22459fc - 2
.thumb
branch_2245a12: @ 2245a12 :thumb
	.hword  0x1e68 @ sub r0, r5, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x120] @ 0x2245b38, (=0x2249e0c)
	ldrh    r6, [r0, r1]
	b       branch_2245a28
@ 0x2245a1c

.thumb
branch_2245a1c: @ 2245a1c :thumb
	ldrh    r0, [r4, #0x10]
	bl      Function_2244d90
	mov     r6, r0
	b       branch_2245a28
@ 0x2245a26

.thumb
branch_2245a26: @ 2245a26 :thumb
	mov     r6, #0x0
.thumb
branch_2245a28: @ 2245a28 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2245a5c
	ldr     r0, [sp, #0x0]
	cmp     r7, r0
	bcs     branch_2245a4a
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2244a98
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	mov     r2, r6
	bl      0x223bc2c
	b       branch_2245a86
@ 0x2245a4a

.thumb
branch_2245a4a: @ 2245a4a :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x5
	bl      Function_2249cf4
	ldr     r0, [pc, #0xe8] @ 0x2245b3c, (=0x436)
	ldrh    r1, [r4, r0]
	sub     r1, r1, r6
	strh    r1, [r4, r0]
	b       branch_2245a86
@ 0x2245a5c

.thumb
branch_2245a5c: @ 2245a5c :thumb
	ldr     r0, [sp, #0x0]
	cmp     r7, r0
	bcs     branch_2245a74
	ldr     r0, [r4, #0x24]
	mov     r1, #0x5
	bl      Function_2249cf4
	ldr     r0, [pc, #0xd0] @ 0x2245b3c, (=0x436)
	ldrh    r1, [r4, r0]
	sub     r1, r1, r6
	strh    r1, [r4, r0]
	b       branch_2245a86
@ 0x2245a74

.thumb
branch_2245a74: @ 2245a74 :thumb
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2244a98
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	mov     r2, r6
	bl      0x223bc2c
.thumb
branch_2245a86: @ 2245a86 :thumb
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	bl      Function_2245780
	mov     r0, r4
	bl      Function_2245618
	mov     r0, r4
	bl      Function_2245be0
	mov     r0, r4
	bl      Function_2244120
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2245288
	cmp     r5, #0xa
	bhi     branch_2245b30
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2245ac2

Jumppoints_2245ac2:
.hword branch_2245b30 - Jumppoints_2245ac2 - 2
.hword branch_2245ad8 - Jumppoints_2245ac2 - 2
.hword branch_2245ad8 - Jumppoints_2245ac2 - 2
.hword branch_2245ad8 - Jumppoints_2245ac2 - 2
.hword branch_2245b30 - Jumppoints_2245ac2 - 2
.hword branch_2245b30 - Jumppoints_2245ac2 - 2
.hword branch_2245afa - Jumppoints_2245ac2 - 2
.hword branch_2245afa - Jumppoints_2245ac2 - 2
.hword branch_2245b30 - Jumppoints_2245ac2 - 2
.hword branch_2245b1c - Jumppoints_2245ac2 - 2
.hword branch_2245b28 - Jumppoints_2245ac2 - 2
.thumb
branch_2245ad8: @ 2245ad8 :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	mov     r2, r5
	bl      Function_22454f8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245afa

.thumb
branch_2245afa: @ 2245afa :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xb0
	bl      Function_2249dbc
	ldrh    r2, [r4, #0x10]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_22455a0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245b1c

.thumb
branch_2245b1c: @ 2245b1c :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2245b40
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245b28

.thumb
branch_2245b28: @ 2245b28 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2245b90
.thumb
branch_2245b30: @ 2245b30 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245b34

.word 0x5e3 @ 0x2245b34
.word 0x2249e0c @ 0x2245b38
.word 0x436 @ 0x2245b3c
.thumb
Function_2245b40: @ 2245b40 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x2
	bl      Function_2243630
	mov     r0, r5
	add     r0, #0xb0
	bl      Function_201ad10
	mov     r0, r5
	add     r0, #0xa0
	bl      Function_201ad10
	mov     r0, #0x5
	lsl     r0, r0, #6
	add     r0, r5, r0
	bl      Function_201ad10
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r5
	add     r5, #0x90
	mov     r1, r5
	bl      Function_2243950
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r3-r5,pc}
@ 0x2245b90

.thumb
Function_2245b90: @ 2245b90 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x2
	bl      Function_22436ac
	mov     r0, r5
	add     r0, #0xb0
	bl      Function_201ad10
	mov     r0, r5
	add     r0, #0xa0
	bl      Function_201ad10
	mov     r0, #0x5
	lsl     r0, r0, #6
	add     r0, r5, r0
	bl      Function_201ad10
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r5
	add     r5, #0x90
	mov     r1, r5
	bl      Function_2243b84
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r3-r5,pc}
@ 0x2245be0

.thumb
Function_2245be0: @ 2245be0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x90
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r4, #0x90
	mov     r0, r4
	bl      Function_201acf4
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x2245bfe


.align 2, 0


.thumb
Function_2245c00: @ 2245c00 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldrb    r0, [r6, #0x9]
	mov     r1, #0x1
	bl      0x223b7a8
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2245c90
	mov     r5, r6
.thumb
branch_2245c18: @ 2245c18 :thumb
	mov     r0, #0xf6
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x4]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	lsl     r0, r7, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	bl      0x222e240
	mov     r1, r0
	mov     r0, #0x39
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2245c86
	bl      Function_2249c1c
	ldrb    r0, [r6, #0x14]
	ldrb    r1, [r6, #0xd]
	bl      Function_2249c98
	cmp     r4, r0
	bne     branch_2245c6c
	ldrb    r1, [r6, #0xd]
	ldrb    r0, [r6, #0x15]
	cmp     r1, r0
	bcc     branch_2245c7a
.thumb
branch_2245c6c: @ 2245c6c :thumb
	mov     r0, #0x39
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2249c28
	b       branch_2245c86
@ 0x2245c7a

.thumb
branch_2245c7a: @ 2245c7a :thumb
	mov     r0, #0x39
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2249c28
.thumb
branch_2245c86: @ 2245c86 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_2245c18
.thumb
branch_2245c90: @ 2245c90 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245c94

.thumb
Function_2245c94: @ 2245c94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r2, [sp, #0x0]
	ldrb    r0, [r5, #0x9]
	mov     r6, r1
	mov     r1, #0x0
	bl      0x223b7a8
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x4
	beq     branch_2245cb0
	mov     r0, #0x1
	b       branch_2245cb2
@ 0x2245cb0

.thumb
branch_2245cb0: @ 2245cb0 :thumb
	mov     r0, #0x0
.thumb
branch_2245cb2: @ 2245cb2 :thumb
	ldrb    r7, [r5, #0x15]
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r7
	mov     r1, r6
	bl      Function_2249c9c
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2245d9a
	cmp     r6, r7
	bcs     branch_2245d68
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2244a98
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, r4
	bl      Function_2249cac
	mov     r2, r0
	mov     r0, #0x6
	mov     r6, r4
	mul     r6, r0
	ldr     r3, [pc, #0x1b8] @ 0x2245ea4, (=0x2249e46)
	lsl     r2, r2, #1
	add     r3, r3, r6
	ldrb    r1, [r5, #0x9]
	ldrh    r2, [r2, r3]
	ldr     r0, [r5, #0x4]
	bl      0x223bc2c
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, r4
	bl      Function_2249cac
	mov     r7, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x9]
	mov     r1, r4
	bl      Function_205e5b4
	str     r0, [sp, #0x8]
	ldrb    r0, [r5, #0x9]
	mov     r1, r4
	bl      Function_205e5b4
	bl      Function_205e6a8
	add     r3, r7, #0x1
	mov     r2, r0
	lsl     r3, r3, #16
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	lsr     r3, r3, #16
	bl      Function_20306e4
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	beq     branch_2245d48
	b       branch_2245e68
@ 0x2245d48

.thumb
branch_2245d48: @ 2245d48 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r5, #0xe]
	cmp     r0, #0x4
	bne     branch_2245d5c
	mov     r0, #0x60
	bic     r1, r0
	mov     r0, #0x20
	orr     r0, r1
	strb    r0, [r5, #0xe]
	b       branch_2245e68
@ 0x2245d5c

.thumb
branch_2245d5c: @ 2245d5c :thumb
	mov     r0, #0x60
	bic     r1, r0
	mov     r0, #0x40
	orr     r0, r1
	strb    r0, [r5, #0xe]
	b       branch_2245e68
@ 0x2245d68

.thumb
branch_2245d68: @ 2245d68 :thumb
	ldr     r0, [r5, #0x24]
	mov     r1, #0x5
	bl      Function_2249cf4
	ldr     r0, [pc, #0x134] @ 0x2245ea8, (=0x433)
	mov     r6, r4
	add     r1, r5, r0
	ldrb    r7, [r1, r4]
	mov     r0, #0x6
	mul     r6, r0
	ldr     r0, [pc, #0x128] @ 0x2245ea8, (=0x433)
	ldr     r2, [pc, #0x124] @ 0x2245ea4, (=0x2249e46)
	.hword  0x1cc0 @ add r0, r0, #0x3
	lsl     r3, r7, #1
	add     r2, r2, r6
	ldrh    r0, [r5, r0]
	ldrh    r2, [r3, r2]
	sub     r0, r0, r2
	ldr     r2, [pc, #0x118] @ 0x2245ea8, (=0x433)
	.hword  0x1cd2 @ add r2, r2, #0x3
	strh    r0, [r5, r2]
	ldrb    r0, [r1, r4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, r4]
	b       branch_2245e68
@ 0x2245d9a

.thumb
branch_2245d9a: @ 2245d9a :thumb
	cmp     r6, r7
	bcs     branch_2245dd0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x5
	bl      Function_2249cf4
	ldr     r0, [pc, #0x100] @ 0x2245ea8, (=0x433)
	mov     r6, r4
	add     r1, r5, r0
	ldrb    r7, [r1, r4]
	mov     r0, #0x6
	mul     r6, r0
	ldr     r0, [pc, #0xf4] @ 0x2245ea8, (=0x433)
	ldr     r2, [pc, #0xec] @ 0x2245ea4, (=0x2249e46)
	.hword  0x1cc0 @ add r0, r0, #0x3
	lsl     r3, r7, #1
	add     r2, r2, r6
	ldrh    r0, [r5, r0]
	ldrh    r2, [r3, r2]
	sub     r0, r0, r2
	ldr     r2, [pc, #0xe4] @ 0x2245ea8, (=0x433)
	.hword  0x1cd2 @ add r2, r2, #0x3
	strh    r0, [r5, r2]
	ldrb    r0, [r1, r4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, r4]
	b       branch_2245e68
@ 0x2245dd0

.thumb
branch_2245dd0: @ 2245dd0 :thumb
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2244a98
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, r4
	bl      Function_2249cac
	mov     r2, r0
	mov     r0, #0x6
	mov     r6, r4
	mul     r6, r0
	ldr     r3, [pc, #0xb4] @ 0x2245ea4, (=0x2249e46)
	lsl     r2, r2, #1
	add     r3, r3, r6
	ldrb    r1, [r5, #0x9]
	ldrh    r2, [r2, r3]
	ldr     r0, [r5, #0x4]
	bl      0x223bc2c
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, r4
	bl      Function_2249cac
	mov     r7, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	str     r0, [sp, #0xc]
	ldrb    r0, [r5, #0x9]
	mov     r1, r4
	bl      Function_205e5b4
	str     r0, [sp, #0x10]
	ldrb    r0, [r5, #0x9]
	mov     r1, r4
	bl      Function_205e5b4
	bl      Function_205e6a8
	add     r3, r7, #0x1
	mov     r2, r0
	lsl     r3, r3, #16
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	lsr     r3, r3, #16
	bl      Function_20306e4
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2245e68
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r5, #0xe]
	cmp     r0, #0x4
	bne     branch_2245e5e
	mov     r0, #0x60
	bic     r1, r0
	mov     r0, #0x20
	orr     r0, r1
	strb    r0, [r5, #0xe]
	b       branch_2245e68
@ 0x2245e5e

.thumb
branch_2245e5e: @ 2245e5e :thumb
	mov     r0, #0x60
	bic     r1, r0
	mov     r0, #0x40
	orr     r0, r1
	strb    r0, [r5, #0xe]
.thumb
branch_2245e68: @ 2245e68 :thumb
	mov     r0, r5
	bl      Function_2245618
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x50
	bl      Function_2245780
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xb0
	bl      Function_2249dbc
	ldr     r1, [pc, #0x1c] @ 0x2245eac, (=0x2249e34)
	lsl     r2, r7, #1
	add     r1, r1, r6
	ldrh    r1, [r2, r1]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_2243918
	strb    r0, [r5, #0xa]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2245ea2


.align 2


.word 0x2249e46 @ 0x2245ea4
.word 0x433 @ 0x2245ea8
.word 0x2249e34 @ 0x2245eac
.thumb
Function_2245eb0: @ 2245eb0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	ldr     r0, [pc, #0x110] @ 0x2245fc8, (=0x68)
	mov     r1, #0x2
	bl      LoadOverlay
	bl      Function_2246eac
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x64
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0xf7
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x64
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0xf7
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r5, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x64
	bl      Function_2018340
	str     r0, [r5, #0x4c]
	mov     r0, r4
	str     r4, [r5, #0x0]
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	mov     r0, #0x53
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	bl      Function_20302dc
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	bl      Function_203041c
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r0, [r4, #0x4]
	mov     r2, r4
	add     r2, #0x20
	strb    r0, [r5, #0x9]
	mov     r0, #0xd9
	lsl     r0, r0, #2
	sub     r1, #0x8
	str     r2, [r5, r0]
	ldr     r0, [r5, r1]
	bl      LoadPlayerDataAdress
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xde
	mov     r2, r4
	ldr     r1, [r4, #0x1c]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, r0
	add     r2, #0x8
	sub     r1, #0x10
	str     r2, [r5, r1]
	mov     r2, r4
	mov     r1, r0
	add     r2, #0xc
	sub     r1, #0xc
	str     r2, [r5, r1]
	mov     r2, r4
	mov     r1, r0
	add     r2, #0x10
	sub     r1, #0x8
	str     r2, [r5, r1]
	mov     r2, r4
	.hword  0x1f01 @ sub r1, r0, #0x4
	add     r2, #0x14
	str     r2, [r5, r1]
	mov     r2, #0xff
	strb    r2, [r5, #0x11]
	ldrh    r1, [r4, #0x28]
	add     r0, #0x5e
	add     r2, #0x4d
	strh    r1, [r5, r0]
	ldr     r0, [r5, r2]
	bl      LoadVariableAreaAdress_17
	str     r0, [r5, #0x4]
	ldr     r0, [pc, #0x50] @ 0x2245fcc, (=0x3d3)
	mov     r3, #0x0
	mov     r2, #0x1
.thumb
branch_2245f7e: @ 2245f7e :thumb
	add     r1, r5, r3
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r2, [r1, r0]
	cmp     r3, #0x3
	blt     branch_2245f7e
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2245f96
	mov     r0, #0x3
	b       branch_2245f98
@ 0x2245f96

.thumb
branch_2245f96: @ 2245f96 :thumb
	mov     r0, #0x4
.thumb
branch_2245f98: @ 2245f98 :thumb
	strb    r0, [r5, #0x14]
	ldrb    r0, [r5, #0x14]
	mov     r1, #0x0
	strb    r0, [r5, #0x15]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0xc]
	mov     r0, #0x3d
	lsl     r0, r0, #4
	strb    r1, [r5, r0]
	mov     r0, r5
	bl      Function_2246ee4
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2245fc0
	mov     r0, r5
	bl      Function_209ba80
.thumb
branch_2245fc0: @ 2245fc0 :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2245fc8

.word 0x68 @ 0x2245fc8
.word 0x3d3 @ 0x2245fcc
.thumb
Function_2245fd0: @ 2245fd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	ldr     r1, [pc, #0x150] @ 0x224612c, (=0x3d2)
	mov     r4, r0
	ldrb    r2, [r4, r1]
	cmp     r2, #0x1
	bne     branch_2246040
	ldr     r2, [r5, #0x0]
	cmp     r2, #0x1
	bne     branch_224606c
	mov     r2, #0x0
	strb    r2, [r4, r1]
	bl      Function_224883c
	mov     r0, r4
	bl      Function_2249238
	mov     r0, #0xc9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224600c
	bl      Function_2249b8c
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r4, #0xf]
.thumb
branch_224600c: @ 224600c :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2249dbc
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      0x222e5d0
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2248350
	b       branch_224606c
@ 0x2246040

.thumb
branch_2246040: @ 2246040 :thumb
	ldrb    r0, [r4, #0x11]
	cmp     r0, #0xff
	beq     branch_224606c
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x1
	beq     branch_2246050
	cmp     r0, #0x3
	bne     branch_224606c
.thumb
branch_2246050: @ 2246050 :thumb
	ldr     r0, [pc, #0xd8] @ 0x224612c, (=0x3d2)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_224883c
	mov     r0, r4
	bl      Function_2249238
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2248350
.thumb
branch_224606c: @ 224606c :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_2246116
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224607e

Jumppoints_224607e:
.hword branch_2246088 - Jumppoints_224607e - 2
.hword branch_224609e - Jumppoints_224607e - 2
.hword branch_22460dc - Jumppoints_224607e - 2
.hword branch_22460f2 - Jumppoints_224607e - 2
.hword branch_2246108 - Jumppoints_224607e - 2
.thumb
branch_2246088: @ 2246088 :thumb
	mov     r0, r4
	bl      Function_2246170
	cmp     r0, #0x1
	bne     branch_2246116
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2248350
	b       branch_2246116
@ 0x224609e

.thumb
branch_224609e: @ 224609e :thumb
	mov     r0, r4
	bl      Function_22462cc
	cmp     r0, #0x1
	bne     branch_2246116
	ldrb    r0, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_22460ba
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2248350
	b       branch_2246116
@ 0x22460ba

.thumb
branch_22460ba: @ 22460ba :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_22460d0
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2248350
	b       branch_2246116
@ 0x22460d0

.thumb
branch_22460d0: @ 22460d0 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_2248350
	b       branch_2246116
@ 0x22460dc

.thumb
branch_22460dc: @ 22460dc :thumb
	mov     r0, r4
	bl      Function_2246bdc
	cmp     r0, #0x1
	bne     branch_2246116
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2248350
	b       branch_2246116
@ 0x22460f2

.thumb
branch_22460f2: @ 22460f2 :thumb
	mov     r0, r4
	bl      Function_2246cd0
	cmp     r0, #0x1
	bne     branch_2246116
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_2248350
	b       branch_2246116
@ 0x2246108

.thumb
branch_2246108: @ 2246108 :thumb
	mov     r0, r4
	bl      Function_2246d3c
	cmp     r0, #0x1
	bne     branch_2246116
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2246116

.thumb
branch_2246116: @ 2246116 :thumb
	mov     r0, r4
	bl      Function_22492a8
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20219f8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224612a


.align 2


.word 0x3d2 @ 0x224612c
.thumb
Function_2246130: @ 2246130 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0xd]
	ldr     r0, [r4, r0]
	strh    r1, [r0, #0x0]
	bl      Function_201dc3c
	mov     r0, r4
	bl      Function_2246d84
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x64
	bl      Function_201807c
	ldr     r0, [pc, #0x8] @ 0x224616c, (=0x68)
	bl      UnloadOverlay
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224616c

.word 0x68 @ 0x224616c
.thumb
Function_2246170: @ 2246170 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_224626c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2246188

Jumppoints_2246188:
.hword branch_2246192 - Jumppoints_2246188 - 2
.hword branch_22461ae - Jumppoints_2246188 - 2
.hword branch_22461d6 - Jumppoints_2246188 - 2
.hword branch_224621c - Jumppoints_2246188 - 2
.hword branch_224625e - Jumppoints_2246188 - 2
.thumb
branch_2246192: @ 2246192 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_22461a6
	bl      Function_20365f4
	mov     r0, #0xd8
	bl      Function_20364f0
.thumb
branch_22461a6: @ 22461a6 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224626c
@ 0x22461ae

.thumb
branch_22461ae: @ 22461ae :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_22461ce
	mov     r0, #0xd8
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_224626c
	bl      Function_20365f4
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224626c
@ 0x22461ce

.thumb
branch_22461ce: @ 22461ce :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224626c
@ 0x22461d6

.thumb
branch_22461d6: @ 22461d6 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_22461f6
	mov     r0, r4
	mov     r1, #0x14
	mov     r2, #0x0
	bl      Function_2248874
	cmp     r0, #0x1
	bne     branch_224626c
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224626c
@ 0x22461f6

.thumb
branch_22461f6: @ 22461f6 :thumb
	mov     r0, r4
	bl      Function_2246274
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224626c
@ 0x224621c

.thumb
branch_224621c: @ 224621c :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2246256
	ldrb    r0, [r4, #0x17]
	cmp     r0, #0x2
	bcc     branch_224626c
	mov     r0, #0x0
	strb    r0, [r4, #0x17]
	mov     r0, r4
	bl      Function_2246274
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224626c
@ 0x2246256

.thumb
branch_2246256: @ 2246256 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224626c
@ 0x224625e

.thumb
branch_224625e: @ 224625e :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_224626c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x224626c

.thumb
branch_224626c: @ 224626c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2246272


.align 2, 0


.thumb
Function_2246274: @ 2246274 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	add     r1, sp, #0x8
	add     r3, sp, #0x4
	mov     r4, r0
	add     r1, #0x2
	add     r2, sp, #0x8
	add     r3, #0x2
	bl      Function_22484dc
	mov     r5, r4
	add     r5, #0x50
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	mov     r1, r5
	bl      Function_2248e84
	mov     r0, r4
	mov     r1, r5
	bl      Function_2248c08
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x80
	bl      Function_2247b78
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x70
	bl      Function_2247c64
	mov     r0, r4
	bl      Function_2248240
	bl      Function_201ffd0_SetDISPCNT_SUB_MODE1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22462ca


.align 2, 0


.thumb
Function_22462cc: @ 22462cc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x11
	bls     branch_22462da
	bl      branch_2246bd0
.thumb
branch_22462da: @ 22462da :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22462e6

Jumppoints_22462e6:
.hword branch_224630a - Jumppoints_22462e6 - 2
.hword branch_2246366 - Jumppoints_22462e6 - 2
.hword branch_22463c0 - Jumppoints_22462e6 - 2
.hword branch_2246520 - Jumppoints_22462e6 - 2
.hword branch_22465da - Jumppoints_22462e6 - 2
.hword branch_22466e2 - Jumppoints_22462e6 - 2
.hword branch_22467b2 - Jumppoints_22462e6 - 2
.hword branch_224694e - Jumppoints_22462e6 - 2
.hword branch_224699a - Jumppoints_22462e6 - 2
.hword branch_22469e6 - Jumppoints_22462e6 - 2
.hword branch_2246aa2 - Jumppoints_22462e6 - 2
.hword branch_2246adc - Jumppoints_22462e6 - 2
.hword branch_2246aee - Jumppoints_22462e6 - 2
.hword branch_2246b00 - Jumppoints_22462e6 - 2
.hword branch_2246b12 - Jumppoints_22462e6 - 2
.hword branch_2246b2e - Jumppoints_22462e6 - 2
.hword branch_2246b52 - Jumppoints_22462e6 - 2
.hword branch_2246b92 - Jumppoints_22462e6 - 2
.thumb
branch_224630a: @ 224630a :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0xb]
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	ldrb    r0, [r4, #0xf]
	lsl     r0, r0, #24
	lsr     r0, r0, #27
	cmp     r0, #0x1
	bne     branch_224632c
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	bl      Function_2248240
	b       branch_224635a
@ 0x224632c

.thumb
branch_224632c: @ 224632c :thumb
	cmp     r0, #0x2
	bne     branch_2246352
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	bl      Function_22482fc
	mov     r0, #0x36
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0xd3
	mov     r2, #0x69
	bl      Function_2249c60
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_224635a
@ 0x2246352

.thumb
branch_2246352: @ 2246352 :thumb
	cmp     r0, #0x3
	bne     branch_224635a
	mov     r0, #0xd
	strb    r0, [r4, #0x8]
.thumb
branch_224635a: @ 224635a :thumb
	ldrb    r1, [r4, #0xf]
	mov     r0, #0xf8
	bic     r1, r0
	strb    r1, [r4, #0xf]
	bl      branch_2246bd0
.thumb
branch_2246366: @ 2246366 :thumb
	ldr     r1, [pc, #0x2fc] @ 0x2246664, (=RAM_21bf67c)
	ldr     r1, [r1, #0x48]
	bl      Function_2248358
	ldr     r0, [pc, #0x2f4] @ 0x2246664, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_224639e
	ldr     r0, [pc, #0x2ec] @ 0x2246668, (=0x5dc)
	bl      Function_2005748
	ldrb    r1, [r4, #0xd]
	ldrb    r0, [r4, #0x15]
	cmp     r1, r0
	bcc     branch_224638a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224638a

.thumb
branch_224638a: @ 224638a :thumb
	mov     r0, r4
	bl      Function_22482a4
	mov     r0, r4
	bl      Function_22482b0
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	bl      branch_2246bd0
.thumb
branch_224639e: @ 224639e :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22463ee
	ldrb    r1, [r4, #0xd]
	ldrb    r0, [r4, #0x15]
	cmp     r1, r0
	beq     branch_22463ee
	ldr     r0, [pc, #0x2b8] @ 0x2246668, (=0x5dc)
	bl      Function_2005748
	ldrb    r0, [r4, #0x15]
	strb    r0, [r4, #0xd]
	mov     r0, r4
	bl      Function_22483f0
	bl      branch_2246bd0
.thumb
branch_22463c0: @ 22463c0 :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001288
	ldr     r1, [pc, #0x29c] @ 0x2246668, (=0x5dc)
	mov     r5, r0
	bl      Function_2249ce0
	mov     r0, #0x4e
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r0, [r4, r0]
	add     r1, #0x18
	bl      Function_20014d0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_224640a
	bcs     branch_2246412
	cmp     r5, #0x6
	bls     branch_22463f0
.thumb
branch_22463ee: @ 22463ee :thumb
	b       branch_2246bd0
@ 0x22463f0

.thumb
branch_22463f0: @ 22463f0 :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22463fc

Jumppoints_22463fc:
.hword branch_2246424 - Jumppoints_22463fc - 2
.hword branch_22464b0 - Jumppoints_22463fc - 2
.hword branch_22464fc - Jumppoints_22463fc - 2
.hword branch_2246bd0 - Jumppoints_22463fc - 2
.hword branch_2246bd0 - Jumppoints_22463fc - 2
.hword branch_2246bd0 - Jumppoints_22463fc - 2
.hword branch_224650e - Jumppoints_22463fc - 2
.thumb
branch_224640a: @ 224640a :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	b       branch_2246bd0
@ 0x2246412

.thumb
branch_2246412: @ 2246412 :thumb
	mov     r0, r4
	bl      Function_22482d4
	mov     r0, r4
	bl      Function_2248240
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246424

.thumb
branch_2246424: @ 2246424 :thumb
	strb    r5, [r4, #0x13]
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, #0xda
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_224646c
	mov     r0, r4
	bl      Function_22482d4
	mov     r0, r4
	bl      Function_2248bec
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x4
	str     r1, [sp, #0x0]
	bl      Function_22480ec
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_2247d94
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x224646c

.thumb
branch_224646c: @ 224646c :thumb
	mov     r0, r4
	bl      Function_22482d4
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r5, r0
	mov     r0, r4
	bl      Function_2248bec
	mov     r0, r5
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2248104
	mov     r0, r4
	mov     r1, #0x14
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, #0xf
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22464b0

.thumb
branch_22464b0: @ 22464b0 :thumb
	strb    r5, [r4, #0x13]
	mov     r0, r4
	bl      Function_22482d4
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r5, r0
	mov     r0, r4
	bl      Function_2248bec
	mov     r0, r5
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2248104
	mov     r0, r4
	mov     r1, #0x15
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_2247df0
	mov     r0, #0x4
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22464fc

.thumb
branch_22464fc: @ 22464fc :thumb
	mov     r0, r4
	bl      Function_22482d4
	mov     r0, r4
	bl      Function_22482fc
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x224650e

.thumb
branch_224650e: @ 224650e :thumb
	mov     r0, r4
	bl      Function_22482d4
	mov     r0, r4
	bl      Function_2248240
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246520

.thumb
branch_2246520: @ 2246520 :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2246542
	bcs     branch_22465c0
	cmp     r0, #0x1
	bhi     branch_2246540
	cmp     r0, #0x0
	beq     branch_2246548
	cmp     r0, #0x1
	beq     branch_22465c0
.thumb
branch_2246540: @ 2246540 :thumb
	b       branch_2246bd0
@ 0x2246542

.thumb
branch_2246542: @ 2246542 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2246bd0
@ 0x2246548

.thumb
branch_2246548: @ 2246548 :thumb
	mov     r0, r4
	bl      Function_2248bb4
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	cmp     r0, #0x1
	bcs     branch_224658e
	mov     r0, r4
	bl      Function_2248bec
	mov     r0, r4
	mov     r1, #0x1c
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, #0xf
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x224658e

.thumb
branch_224658e: @ 224658e :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_22465ba
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	mov     r2, #0x1
	bl      0x223bc2c
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	bl      Function_2248c08
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_2249024
	mov     r0, #0xb
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22465ba

.thumb
branch_22465ba: @ 22465ba :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x10]
	pop     {r3-r5,pc}
@ 0x22465c0

.thumb
branch_22465c0: @ 22465c0 :thumb
	mov     r0, r4
	bl      Function_2248bb4
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	bl      Function_22482b0
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22465da

.thumb
branch_22465da: @ 22465da :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2246600
	bcs     branch_22466c8
	cmp     r0, #0x2
	bhi     branch_22465fe
	cmp     r0, #0x0
	beq     branch_2246606
	cmp     r0, #0x1
	beq     branch_224666c
	cmp     r0, #0x2
	beq     branch_22466c8
.thumb
branch_22465fe: @ 22465fe :thumb
	b       branch_2246bd0
@ 0x2246600

.thumb
branch_2246600: @ 2246600 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2246bd0
@ 0x2246606

.thumb
branch_2246606: @ 2246606 :thumb
	mov     r0, r4
	bl      Function_2248bb4
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_2246654
	mov     r0, r4
	bl      Function_2248bec
	mov     r0, r4
	mov     r1, #0x1d
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, #0xf
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246654

.thumb
branch_2246654: @ 2246654 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2248e54
	mov     r0, #0x5
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246662


.align 2


.word RAM_21bf67c @ 0x2246664
.word 0x5dc @ 0x2246668
.thumb
branch_224666c: @ 224666c :thumb
	mov     r0, r4
	bl      Function_2248bb4
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x2
	bne     branch_22466ba
	mov     r0, r4
	bl      Function_2248bec
	mov     r0, r4
	mov     r1, #0x1e
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, #0xf
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22466ba

.thumb
branch_22466ba: @ 22466ba :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2248e54
	mov     r0, #0x5
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22466c8

.thumb
branch_22466c8: @ 22466c8 :thumb
	mov     r0, r4
	bl      Function_2248bb4
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	bl      Function_22482b0
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22466e2

.thumb
branch_22466e2: @ 22466e2 :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2246704
	bcs     branch_2246798
	cmp     r0, #0x1
	bhi     branch_2246702
	cmp     r0, #0x0
	beq     branch_224670a
	cmp     r0, #0x1
	beq     branch_2246798
.thumb
branch_2246702: @ 2246702 :thumb
	b       branch_2246bd0
@ 0x2246704

.thumb
branch_2246704: @ 2246704 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2246bd0
@ 0x224670a

.thumb
branch_224670a: @ 224670a :thumb
	mov     r0, r4
	bl      Function_2248bb4
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	mov     r5, r0
	ldrb    r0, [r4, #0xe]
	bl      Function_2248770
	cmp     r5, r0
	bcs     branch_2246752
	mov     r0, r4
	bl      Function_2248bec
	mov     r0, r4
	mov     r1, #0x1c
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, #0xf
	strb    r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246752

.thumb
branch_2246752: @ 2246752 :thumb
	ldrb    r0, [r4, #0xe]
	strb    r0, [r4, #0x12]
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2246792
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	ldrb    r0, [r4, #0xe]
	bl      Function_2248770
	mov     r2, r0
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	bl      0x223bc2c
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	bl      Function_2248c08
	ldrb    r1, [r4, #0xd]
	ldrb    r2, [r4, #0xe]
	mov     r0, r4
	bl      Function_22490e8
	mov     r0, #0xb
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246792

.thumb
branch_2246792: @ 2246792 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x10]
	pop     {r3-r5,pc}
@ 0x2246798

.thumb
branch_2246798: @ 2246798 :thumb
	mov     r0, r4
	bl      Function_2248bb4
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	bl      Function_22482b0
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22467b2

.thumb
branch_22467b2: @ 22467b2 :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001288
	ldr     r1, [pc, #0x2e8] @ 0x2246aa8, (=0x5dc)
	mov     r5, r0
	bl      Function_2249ce0
	mov     r0, #0x4e
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r0, [r4, r0]
	add     r1, #0x18
	bl      Function_20014d0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_22467f0
	bcs     branch_22467f6
	cmp     r5, #0x5
	bhi     branch_22467ee
	cmp     r5, #0x3
	bcc     branch_22467ee
	beq     branch_2246810
	cmp     r5, #0x4
	beq     branch_2246866
	cmp     r5, #0x5
	beq     branch_22468e2
.thumb
branch_22467ee: @ 22467ee :thumb
	b       branch_2246bd0
@ 0x22467f0

.thumb
branch_22467f0: @ 22467f0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	b       branch_2246bd0
@ 0x22467f6

.thumb
branch_22467f6: @ 22467f6 :thumb
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	bl      Function_2248348
	mov     r0, r4
	bl      Function_22482b0
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246810

.thumb
branch_2246810: @ 2246810 :thumb
	strb    r5, [r4, #0x13]
	mov     r0, r4
	bl      Function_2248348
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, #0x37
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2246858
	mov     r0, r4
	bl      Function_2248bec
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x2
	mov     r3, #0x4
	str     r1, [sp, #0x0]
	bl      Function_22480ec
	mov     r0, r4
	mov     r1, #0x2b
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_2247d94
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246858

.thumb
branch_2246858: @ 2246858 :thumb
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_2248a2c
	mov     r0, #0x10
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246866

.thumb
branch_2246866: @ 2246866 :thumb
	mov     r0, r4
	strb    r5, [r4, #0x13]
	bl      Function_2248348
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x2
	bl      Function_2249cac
	cmp     r0, #0x1
	bne     branch_2246894
	mov     r0, r4
	mov     r1, #0x2a
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, #0xe
	strb    r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246894

.thumb
branch_2246894: @ 2246894 :thumb
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, #0xdd
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22468d4
	mov     r0, r4
	bl      Function_2248bec
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x5
	mov     r3, #0x4
	str     r1, [sp, #0x0]
	bl      Function_22480ec
	mov     r0, r4
	mov     r1, #0x42
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_2247d94
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22468d4

.thumb
branch_22468d4: @ 22468d4 :thumb
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	bl      BeSeq_AddToPointer
	mov     r0, #0x11
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22468e2

.thumb
branch_22468e2: @ 22468e2 :thumb
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x2
	bl      Function_2249cac
	cmp     r0, #0x2
	bne     branch_2246904
	ldr     r0, [pc, #0x1b0] @ 0x2246aa8, (=0x5dc)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x1ac] @ 0x2246aac, (=0x5f3)
	bl      Function_2005748
	b       branch_2246bd0
@ 0x2246904

.thumb
branch_2246904: @ 2246904 :thumb
	strb    r5, [r4, #0x13]
	mov     r0, r4
	bl      Function_2248348
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x32
	mov     r3, #0x4
	str     r1, [sp, #0x0]
	bl      Function_22480ec
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, r4
	bl      Function_2247d94
	mov     r0, #0x9
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x224694e

.thumb
branch_224694e: @ 224694e :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2246970
	bcs     branch_2246988
	cmp     r0, #0x1
	bhi     branch_224696e
	cmp     r0, #0x0
	beq     branch_2246976
	cmp     r0, #0x1
	beq     branch_2246988
.thumb
branch_224696e: @ 224696e :thumb
	b       branch_2246bd0
@ 0x2246970

.thumb
branch_2246970: @ 2246970 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2246bd0
@ 0x2246976

.thumb
branch_2246976: @ 2246976 :thumb
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x2e
	bl      Function_224933c
	cmp     r0, #0x1
	bne     branch_22469ba
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2246988

.thumb
branch_2246988: @ 2246988 :thumb
	mov     r0, r4
	bl      Function_2248bb4
	mov     r0, r4
	bl      Function_22482fc
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x224699a

.thumb
branch_224699a: @ 224699a :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_22469bc
	bcs     branch_22469d4
	cmp     r0, #0x1
	bhi     branch_22469ba
	cmp     r0, #0x0
	beq     branch_22469c2
	cmp     r0, #0x1
	beq     branch_22469d4
.thumb
branch_22469ba: @ 22469ba :thumb
	b       branch_2246bd0
@ 0x22469bc

.thumb
branch_22469bc: @ 22469bc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2246bd0
@ 0x22469c2

.thumb
branch_22469c2: @ 22469c2 :thumb
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x45
	bl      Function_224933c
	cmp     r0, #0x1
	bne     branch_2246a06
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22469d4

.thumb
branch_22469d4: @ 22469d4 :thumb
	mov     r0, r4
	bl      Function_2248bb4
	mov     r0, r4
	bl      Function_22482fc
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x22469e6

.thumb
branch_22469e6: @ 22469e6 :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2246a08
	bcs     branch_2246a90
	cmp     r0, #0x1
	bhi     branch_2246a06
	cmp     r0, #0x0
	beq     branch_2246a0e
	cmp     r0, #0x1
	beq     branch_2246a90
.thumb
branch_2246a06: @ 2246a06 :thumb
	b       branch_2246bd0
@ 0x2246a08

.thumb
branch_2246a08: @ 2246a08 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_2246bd0
@ 0x2246a0e

.thumb
branch_2246a0e: @ 2246a0e :thumb
	mov     r0, r4
	bl      Function_2248bb4
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	mov     r5, r0
	ldrb    r0, [r4, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2030698
	mov     r5, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x2
	bl      Function_2249cac
	cmp     r5, #0x32
	bcs     branch_2246a70
	mov     r0, r4
	bl      Function_2248bb4
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2249dbc
	mov     r0, r4
	mov     r1, #0x45
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r4, #0xa]
	mov     r0, #0xe
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246a70

.thumb
branch_2246a70: @ 2246a70 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2246a8a
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	mov     r2, #0x5
	bl      Function_22493cc
	mov     r0, #0xa
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246a8a

.thumb
branch_2246a8a: @ 2246a8a :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x10]
	pop     {r3-r5,pc}
@ 0x2246a90

.thumb
branch_2246a90: @ 2246a90 :thumb
	mov     r0, r4
	bl      Function_2248bb4
	mov     r0, r4
	bl      Function_22482fc
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246aa2

.thumb
branch_2246aa2: @ 2246aa2 :thumb
	ldr     r1, [pc, #0xc] @ 0x2246ab0, (=RAM_21bf67c)
	b       branch_2246ab4
@ 0x2246aa6


.align 2


.word 0x5dc @ 0x2246aa8
.word 0x5f3 @ 0x2246aac
.word RAM_21bf67c @ 0x2246ab0
.thumb
branch_2246ab4: @ 2246ab4 :thumb
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	bne     branch_2246abe
	b       branch_2246bd0
@ 0x2246abe

.thumb
branch_2246abe: @ 2246abe :thumb
	bl      Function_2248bb4
	mov     r0, r4
	bl      Function_22482fc
	mov     r0, #0x36
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0xd3
	mov     r2, #0x69
	bl      Function_2249c60
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246adc

.thumb
branch_2246adc: @ 2246adc :thumb
	ldrb    r1, [r4, #0xd]
	ldrb    r2, [r4, #0x13]
	bl      Function_224850c
	cmp     r0, #0x1
	bne     branch_2246bd0
	mov     r0, #0xf
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246aee

.thumb
branch_2246aee: @ 2246aee :thumb
	ldrb    r1, [r4, #0xd]
	ldrb    r2, [r4, #0x13]
	bl      Function_224850c
	cmp     r0, #0x1
	bne     branch_2246bd0
	mov     r0, #0xd
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246b00

.thumb
branch_2246b00: @ 2246b00 :thumb
	ldrb    r0, [r4, #0x13]
	cmp     r0, #0x3
	bne     branch_2246b0c
	mov     r0, #0x10
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246b0c

.thumb
branch_2246b0c: @ 2246b0c :thumb
	mov     r0, #0x11
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246b12

.thumb
branch_2246b12: @ 2246b12 :thumb
	ldr     r0, [pc, #0xc0] @ 0x2246bd4, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2246bd0
	ldr     r0, [pc, #0xb8] @ 0x2246bd8, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_22482fc
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246b2e

.thumb
branch_2246b2e: @ 2246b2e :thumb
	ldr     r0, [pc, #0xa4] @ 0x2246bd4, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2246bd0
	ldr     r0, [pc, #0x9c] @ 0x2246bd8, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	bl      Function_2248240
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246b52

.thumb
branch_2246b52: @ 2246b52 :thumb
	ldr     r1, [pc, #0x80] @ 0x2246bd4, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	mov     r3, r2
	tst     r3, r1
	beq     branch_2246b66
	sub     r1, #0x21
	bl      Function_224877c
	b       branch_2246bd0
@ 0x2246b66

.thumb
branch_2246b66: @ 2246b66 :thumb
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2246b74
	mov     r1, #0x1
	bl      Function_224877c
	b       branch_2246bd0
@ 0x2246b74

.thumb
branch_2246b74: @ 2246b74 :thumb
	mov     r0, #0x3
	tst     r0, r2
	beq     branch_2246bd0
	ldr     r0, [pc, #0x5c] @ 0x2246bd8, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2249238
	mov     r0, r4
	bl      Function_22482b0
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_2246bd0
@ 0x2246b92

.thumb
branch_2246b92: @ 2246b92 :thumb
	ldr     r1, [pc, #0x40] @ 0x2246bd4, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	mov     r3, r2
	tst     r3, r1
	beq     branch_2246ba6
	sub     r1, #0x21
	bl      Function_22487dc
	b       branch_2246bd0
@ 0x2246ba6

.thumb
branch_2246ba6: @ 2246ba6 :thumb
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2246bb4
	mov     r1, #0x1
	bl      Function_22487dc
	b       branch_2246bd0
@ 0x2246bb4

.thumb
branch_2246bb4: @ 2246bb4 :thumb
	mov     r0, #0x3
	tst     r0, r2
	beq     branch_2246bd0
	ldr     r0, [pc, #0x1c] @ 0x2246bd8, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2249238
	mov     r0, r4
	bl      Function_22482b0
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
.thumb
branch_2246bd0: @ 2246bd0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246bd4

.word RAM_21bf67c @ 0x2246bd4
.word 0x5dc @ 0x2246bd8
.thumb
Function_2246bdc: @ 2246bdc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x5
	bhi     branch_2246cc8
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2246bf2

Jumppoints_2246bf2:
.hword branch_2246bfe - Jumppoints_2246bf2 - 2
.hword branch_2246c22 - Jumppoints_2246bf2 - 2
.hword branch_2246c48 - Jumppoints_2246bf2 - 2
.hword branch_2246c6a - Jumppoints_2246bf2 - 2
.hword branch_2246c88 - Jumppoints_2246bf2 - 2
.hword branch_2246c9a - Jumppoints_2246bf2 - 2
.thumb
branch_2246bfe: @ 2246bfe :thumb
	ldrb    r2, [r4, #0xf]
	mov     r1, #0xf8
	bic     r2, r1
	mov     r1, #0x8
	orr     r1, r2
	strb    r1, [r4, #0xf]
	ldrb    r2, [r4, #0xd]
	mov     r1, #0x15
	bl      Function_2248874
	cmp     r0, #0x1
	bne     branch_2246cc8
	mov     r0, #0x0
	strb    r0, [r4, #0x10]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2246cc8
@ 0x2246c22

.thumb
branch_2246c22: @ 2246c22 :thumb
	ldrb    r1, [r4, #0x11]
	cmp     r1, #0xff
	beq     branch_2246cc8
	mov     r1, #0x0
	strb    r1, [r4, #0x17]
	ldrb    r2, [r4, #0x13]
	ldrb    r1, [r4, #0x11]
	cmp     r2, #0x5
	bne     branch_2246c3c
	mov     r2, #0x5
	bl      Function_22493cc
	b       branch_2246c40
@ 0x2246c3c

.thumb
branch_2246c3c: @ 2246c3c :thumb
	bl      Function_2248f18
.thumb
branch_2246c40: @ 2246c40 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2246cc8
@ 0x2246c48

.thumb
branch_2246c48: @ 2246c48 :thumb
	ldrb    r0, [r4, #0x15]
	ldrb    r1, [r4, #0x11]
	bl      Function_2249c9c
	mov     r1, r0
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_224850c
	cmp     r0, #0x1
	bne     branch_2246cc8
	mov     r0, #0x1e
	strb    r0, [r4, #0x16]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2246cc8
@ 0x2246c6a

.thumb
branch_2246c6a: @ 2246c6a :thumb
	ldrb    r0, [r4, #0x16]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x16]
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x0
	bne     branch_2246cc8
	bl      Function_20365f4
	mov     r0, #0x85
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2246cc8
@ 0x2246c88

.thumb
branch_2246c88: @ 2246c88 :thumb
	mov     r0, #0x85
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2246cc8
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2246cc8
@ 0x2246c9a

.thumb
branch_2246c9a: @ 2246c9a :thumb
	ldrb    r0, [r4, #0x15]
	ldrb    r1, [r4, #0x11]
	bl      Function_2249c9c
	mov     r1, r0
	ldrb    r2, [r4, #0x13]
	mov     r0, r4
	bl      Function_2248674
	cmp     r0, #0x1
	bne     branch_2246cc8
	bl      Function_20365f4
	mov     r0, #0x64
	bl      Function_20363e8
	mov     r0, #0xff
	strb    r0, [r4, #0x11]
	ldr     r0, [pc, #0xc] @ 0x2246ccc, (=0x3d2)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2246cc8

.thumb
branch_2246cc8: @ 2246cc8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246ccc

.word 0x3d2 @ 0x2246ccc
.thumb
Function_2246cd0: @ 2246cd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_2246ce4
	cmp     r1, #0x1
	beq     branch_2246cfc
	cmp     r1, #0x2
	beq     branch_2246d1e
	b       branch_2246d38
@ 0x2246ce4

.thumb
branch_2246ce4: @ 2246ce4 :thumb
	mov     r1, #0x17
	mov     r2, #0x0
	bl      Function_2248874
	cmp     r0, #0x1
	bne     branch_2246d38
	mov     r0, #0x1e
	strb    r0, [r4, #0x16]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2246d38
@ 0x2246cfc

.thumb
branch_2246cfc: @ 2246cfc :thumb
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x0
	beq     branch_2246d06
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x16]
.thumb
branch_2246d06: @ 2246d06 :thumb
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x0
	bne     branch_2246d38
	bl      Function_20365f4
	mov     r0, #0x86
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2246d38
@ 0x2246d1e

.thumb
branch_2246d1e: @ 2246d1e :thumb
	mov     r0, #0x86
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2246d38
	bl      Function_20365f4
	add     r4, #0xc0
	mov     r0, r4
	bl      Function_2248860
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2246d38

.thumb
branch_2246d38: @ 2246d38 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246d3c

.thumb
Function_2246d3c: @ 2246d3c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2246d4e
	cmp     r0, #0x1
	beq     branch_2246d6e
	b       branch_2246d7c
@ 0x2246d4e

.thumb
branch_2246d4e: @ 2246d4e :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2246d7c
@ 0x2246d6e

.thumb
branch_2246d6e: @ 2246d6e :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2246d7c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2246d7c

.thumb
branch_2246d7c: @ 2246d7c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2246d82


.align 2, 0


.thumb
Function_2246d84: @ 2246d84 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0xca
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	bl      Function_2249b8c
	mov     r1, #0xcb
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_2249b8c
	mov     r1, #0x36
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_2249b8c
	mov     r0, #0x0
	mov     r6, #0xd
	ldr     r7, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r6, r6, #6
.thumb
branch_2246db6: @ 2246db6 :thumb
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2246dba: @ 2246dba :thumb
	ldr     r0, [r5, r6]
	bl      Function_2249b8c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_2246dba
	ldr     r0, [sp, #0x4]
	add     r7, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	blt     branch_2246db6
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	ldrb    r0, [r0, #0x9]
	bl      0x223b7dc
	mov     r6, r0
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2246e0e
	mov     r7, #0x33
	ldr     r4, [sp, #0x0]
	lsl     r7, r7, #4
.thumb
branch_2246dec: @ 2246dec :thumb
	mov     r0, #0xc5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2249b8c
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2249b8c
	ldr     r0, [r4, r7]
	bl      Function_2249b8c
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r6
	blt     branch_2246dec
.thumb
branch_2246e0e: @ 2246e0e :thumb
	bl      Function_2039794
	mov     r1, #0x5
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #6
	ldr     r0, [r0, r1]
	mov     r1, #0x2
	bl      Function_2002fa0
	mov     r1, #0x5
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #6
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_2002fa0
	mov     r1, #0x5
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #6
	ldr     r0, [r0, r1]
	bl      Call_free1
	mov     r1, #0x5
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	lsl     r1, r1, #6
	str     r2, [r0, r1]
	add     r1, #0x18
	add     r0, r0, r1
	bl      Function_2249954
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_200b190
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_200b3f0
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x28]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x2c]
	bl      Function_20237bc_FreeMsg
	mov     r1, #0x51
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_200c560
	ldr     r4, [sp, #0x0]
	mov     r5, #0x0
.thumb
branch_2246e7c: @ 2246e7c :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_2246e7c
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	add     r0, #0x50
	bl      Function_2249d5c
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4c]
	bl      Function_22472a4
	mov     r1, #0xdf
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Call_FS_CloseFile
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2246eac

.thumb
Function_2246eac: @ 2246eac :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20177bc
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2246edc, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x2246ee0, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x2246edc

.word 0xffffe0ff @ 0x2246edc
.word 0x4001000 @ 0x2246ee0



.thumb
Function_2246ee4: @ 2246ee4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x64
	bl      LoadFromNARC_8
	mov     r1, #0xdf
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_2247220
	mov     r0, r5
	bl      Function_2247280
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xc9
	mov     r3, #0x64
	bl      LoadFromNARC_9
	str     r0, [r5, #0x20]
	mov     r0, #0x64
	bl      Function_200b358
	str     r0, [r5, #0x24]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x64
	bl      Function_2023790
	str     r0, [r5, #0x28]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x64
	bl      Function_2023790
	str     r0, [r5, #0x2c]
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, #0x20
.thumb
branch_2246f38: @ 2246f38 :thumb
	mov     r0, r7
	mov     r1, #0x64
	bl      Function_2023790
	str     r0, [r4, #0x30]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x3
	blt     branch_2246f38
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x64
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x6
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x64
	bl      LoadFromNARC_PlFont2
	mov     r0, #0x1
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x64
	bl      Function_200c440
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, r5
	ldr     r0, [r5, #0x4c]
	add     r1, #0x50
	mov     r2, #0x1
	bl      Function_2249d14
	add     r0, sp, #0x28
	add     r1, sp, #0x2c
	add     r3, sp, #0x28
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, #0x2
	add     r2, sp, #0x2c
	add     r3, #0x2
	bl      Function_22484dc
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2246fa6
	mov     r0, #0x3c
	mov     r7, #0x40
	str     r0, [sp, #0x1c]
	b       branch_2246fac
@ 0x2246fa6

.thumb
branch_2246fa6: @ 2246fa6 :thumb
	mov     r0, #0x1c
	mov     r7, #0x20
	str     r0, [sp, #0x1c]
.thumb
branch_2246fac: @ 2246fac :thumb
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x1
	bl      0x223b7dc
	mov     r6, #0x0
	str     r0, [sp, #0x18]
	cmp     r0, #0x0
	bgt     branch_2246fbe
	b       branch_22470c8
@ 0x2246fbe

.thumb
branch_2246fbe: @ 2246fbe :thumb
	mov     r4, r5
.thumb
branch_2246fc0: @ 2246fc0 :thumb
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	bl      Function_2249b1c
	mov     r1, #0xc5
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r1, #0x0
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	lsl     r0, r7, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x4e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	bl      Function_2249b1c
	mov     r1, #0x33
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r0, r7, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r2, #0x3
	add     r0, r5, r0
	add     r1, r6, #0x3
	mov     r3, r2
	bl      Function_2249b1c
	mov     r1, #0xc1
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x74
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2249c08
	mov     r0, #0xda
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldrb    r0, [r0, r6]
	cmp     r0, #0x0
	bne     branch_2247090
	mov     r0, #0xc5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	b       branch_22470b4
@ 0x2247090

.thumb
branch_2247090: @ 2247090 :thumb
	mov     r0, #0xc5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2249bac
.thumb
branch_22470b4: @ 22470b4 :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, #0x40
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r7, #0x40
	cmp     r6, r0
	bge     branch_22470c8
	b       branch_2246fc0
@ 0x22470c8

.thumb
branch_22470c8: @ 22470c8 :thumb
	mov     r0, r5
	add     r1, sp, #0x34
	add     r2, sp, #0x30
	mov     r3, #0x0
	bl      Function_2248488
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x34]
	mov     r1, #0x0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r2, r1
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0xca
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x34]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x30]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0xcb
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2247148
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2249bac
.thumb
branch_2247148: @ 2247148 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x20]
	str     r5, [sp, #0x24]
.thumb
branch_2247150: @ 2247150 :thumb
	mov     r7, #0x0
	ldr     r4, [sp, #0x24]
	mov     r6, r7
.thumb
branch_2247156: @ 2247156 :thumb
	mov     r0, r5
	add     r1, sp, #0x34
	add     r2, sp, #0x30
	bl      Function_22495e4
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x34]
	ldr     r0, [sp, #0x20]
	add     r0, r1, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	ldr     r0, [sp, #0x30]
	mov     r2, r1
	add     r0, r0, r6
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_2249b1c
	mov     r1, #0xd
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0xc
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x2
	blt     branch_2247156
	ldr     r0, [sp, #0x20]
	add     r0, #0x40
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	add     r0, #0x8
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x4
	blt     branch_2247150
	mov     r0, r5
	bl      Function_2249580
	mov     r1, #0x0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x56
	lsl     r0, r0, #2
	str     r1, [sp, #0xc]
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0x36
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      Function_2249bac
	bl      Function_2035e38
	cmp     r0, #0x0
	beq     branch_224720e
	mov     r0, #0x1
	mov     r1, #0x10
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	bl      Function_2039734
.thumb
branch_224720e: @ 224720e :thumb
	ldr     r0, [pc, #0xc] @ 0x224721c, (=0x22472e9)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x224721a


.align 2


.word 0x22472e9 @ 0x224721c
.thumb
Function_2247220: @ 2247220 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2247320
	ldr     r0, [r4, #0x4c]
	bl      Function_2247340
	mov     r0, #0x64
	bl      MallocFill120
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	lsl     r2, r1, #8
	mov     r3, #0x64
	bl      Function_2002f70
	mov     r2, #0x5
	lsl     r2, r2, #6
	ldr     r0, [r4, r2]
	mov     r1, #0x0
	add     r2, #0xc0
	mov     r3, #0x64
	bl      Function_2002f70
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2247484
	bl      Function_22474f8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_224752c
	bl      Function_2247574
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_22475f0
	pop     {r4,pc}
@ 0x2247280

.thumb
Function_2247280: @ 2247280 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	mov     r2, r0
	mov     r1, #0xde
	mov     r0, #0x56
	lsl     r1, r1, #2
	lsl     r0, r0, #2
	lsl     r2, r2, #24
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	lsr     r2, r2, #24
	bl      Function_2249604
	pop     {r4,pc}
@ 0x22472a2


.align 2, 0


.thumb
Function_22472a4: @ 22472a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22472e8

.thumb
Function_22472e8: @ 22472e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22472fa
	bl      Function_2003694_LoadSomePalettes
.thumb
branch_22472fa: @ 22472fa :thumb
	ldr     r0, [r4, #0x4c]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r3, [pc, #0xc] @ 0x2247318, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x224731c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x2247316


.align 2


.word 0x27e0000 @ 0x2247318
.word 0x3ff8 @ 0x224731c
.thumb
Function_2247320: @ 2247320 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x224733c, (=0x224a1dc)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_224732a: @ 224732a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224732a
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x224733c

.word 0x224a1dc @ 0x224733c
.thumb
Function_2247340: @ 2247340 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0x120] @ 0x2247468, (=0x224a0bc)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0x110] @ 0x224746c, (=0x224a0f0)
	add     r3, sp, #0x70
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x64
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0xe0] @ 0x2247470, (=0x224a128)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x64
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xb0] @ 0x2247474, (=0x224a144)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x64
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x80] @ 0x2247478, (=0x224a160)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x64
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r5, [pc, #0x50] @ 0x224747c, (=0x224a10c)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r1, [pc, #0x2c] @ 0x2247480, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x2247468

.word 0x224a0bc @ 0x2247468
.word 0x224a0f0 @ 0x224746c
.word 0x224a128 @ 0x2247470
.word 0x224a144 @ 0x2247474
.word 0x224a160 @ 0x2247478
.word 0x224a10c @ 0x224747c
.word 0x4000008 @ 0x2247480
.thumb
Function_2247484: @ 2247484 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x2c
	mov     r3, r4
	bl      Function_20070e8
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_22474d6
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x28
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22474d6

.thumb
branch_22474d6: @ 22474d6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x29
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22474f8

.thumb
Function_22474f8: @ 22474f8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0x96
	mov     r1, #0x8a
	add     r2, sp, #0x0
	mov     r3, #0x64
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x80
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     GX_LoadBGPltt
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224752a


.align 2, 0


.thumb
Function_224752c: @ 224752c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x2c
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x2a
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2247574

.thumb
Function_2247574: @ 2247574 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0x96
	mov     r1, #0x8a
	add     r2, sp, #0x0
	mov     r3, #0x64
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x80
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     GX_LoadBGPltt
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22475a6


.align 2, 0


.thumb
Function_22475a8: @ 22475a8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x2c
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x2b
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22475f0

.thumb
Function_22475f0: @ 22475f0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x7d
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x7e
	mov     r3, r4
	bl      Function_200710c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xab
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2247650

.thumb
Function_2247650: @ 2247650 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	ldr     r4, [sp, #0x28]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0x4]
	add     r4, sp, #0x18
	ldrb    r5, [r4, #0x18]
	str     r5, [sp, #0x8]
	ldrb    r4, [r4, #0x1c]
	str     r4, [sp, #0xc]
	add     r4, sp, #0x38
	ldrb    r4, [r4, #0x0]
	str     r4, [sp, #0x10]
	add     r4, sp, #0x3c
	ldrb    r4, [r4, #0x0]
	str     r4, [sp, #0x14]
	mov     r4, #0x0
	str     r4, [sp, #0x18]
	bl      Function_2247680
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x224767e


.align 2, 0


.thumb
Function_2247680: @ 2247680 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	add     r1, sp, #0x38
	ldrb    r1, [r1, #0x0]
	mov     r5, r0
	mov     r0, r6
	mov     r7, r2
	mov     r4, r3
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x20]
	ldr     r2, [r5, #0x2c]
	mov     r1, r7
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r5, #0x2c]
	bl      Function_200c388
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x1
	beq     branch_22476b6
	cmp     r0, #0x2
	beq     branch_22476c8
	b       branch_22476d4
@ 0x22476b6

.thumb
branch_22476b6: @ 22476b6 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	sub     r4, r4, r0
	b       branch_22476d4
@ 0x22476c8

.thumb
branch_22476c8: @ 22476c8 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	sub     r4, r4, r0
.thumb
branch_22476d4: @ 22476d4 :thumb
	ldr     r0, [sp, #0x28]
	add     r2, sp, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r3, r4
	str     r0, [sp, #0x4]
	add     r0, sp, #0x38
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x18]
	ldrb    r2, [r2, #0x1c]
	lsl     r0, r0, #24
	lsl     r2, r2, #24
	lsr     r0, r0, #8
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x3c
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r5, #0x28]
	mov     r0, r6
	bl      Function_201d78c
	mov     r4, r0
	mov     r0, r6
	bl      Function_201a9a4
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2247714

.thumb
Function_2247714: @ 2247714 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	ldr     r4, [sp, #0x28]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0x4]
	add     r4, sp, #0x18
	ldrb    r5, [r4, #0x18]
	str     r5, [sp, #0x8]
	ldrb    r4, [r4, #0x1c]
	str     r4, [sp, #0xc]
	add     r4, sp, #0x38
	ldrb    r4, [r4, #0x0]
	str     r4, [sp, #0x10]
	add     r4, sp, #0x3c
	ldrb    r4, [r4, #0x0]
	str     r4, [sp, #0x14]
	mov     r4, #0x0
	str     r4, [sp, #0x18]
	bl      Function_2247744
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2247742


.align 2, 0


.thumb
Function_2247744: @ 2247744 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r1, r2
	ldr     r0, [r5, #0x20]
	ldr     r2, [r5, #0x2c]
	mov     r4, r3
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r5, #0x2c]
	bl      Function_200c388
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x1
	beq     branch_224776e
	cmp     r0, #0x2
	beq     branch_2247780
	b       branch_224778c
@ 0x224776e

.thumb
branch_224776e: @ 224776e :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	sub     r4, r4, r0
	b       branch_224778c
@ 0x2247780

.thumb
branch_2247780: @ 2247780 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	sub     r4, r4, r0
.thumb
branch_224778c: @ 224778c :thumb
	ldr     r0, [sp, #0x20]
	add     r2, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r3, r4
	str     r0, [sp, #0x4]
	add     r0, sp, #0x30
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x18]
	ldrb    r2, [r2, #0x1c]
	lsl     r0, r0, #24
	lsl     r2, r2, #24
	lsr     r0, r0, #8
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x34
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r5, #0x28]
	mov     r0, r6
	bl      Function_201d78c
	mov     r4, r0
	mov     r0, r6
	bl      Function_201a9a4
	mov     r0, r4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x22477cc

.thumb
Function_22477cc: @ 22477cc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r3, #0x1
	mov     r4, r1
	str     r3, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r1, #0xf
	str     r1, [sp, #0x10]
	mov     r5, r0
	mov     r1, r5
	str     r2, [sp, #0x14]
	add     r1, #0xc0
	mov     r2, r4
	bl      Function_2247650
	add     r5, #0xc0
	mov     r4, r0
	mov     r0, r5
	bl      Function_201a9a4
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2247802


.align 2, 0


.thumb
Function_2247804: @ 2247804 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r6
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b70c
	mov     r3, #0x8
	str     r3, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x30
	bl      Function_2247a14
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x31
	mov     r3, #0x48
	bl      Function_2247a14
	mov     r0, r6
	bl      Function_2075bcc
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b6d8
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x32
	mov     r3, #0x8
	bl      Function_2247a14
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x33
	mov     r3, #0x48
	bl      Function_2247a14
	mov     r0, r6
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b6a0
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x34
	mov     r3, #0x8
	bl      Function_2247a14
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x35
	mov     r3, #0x48
	bl      Function_2247a14
	mov     r0, r6
	mov     r1, #0xa5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_22480ec
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x36
	mov     r3, #0x8
	bl      Function_2247a14
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x37
	mov     r3, #0x58
	bl      Function_2247a14
	mov     r0, r6
	mov     r1, #0xa6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_22480ec
	mov     r2, #0x38
	str     r2, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x68
	bl      Function_2247a14
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x39
	mov     r3, #0xb8
	bl      Function_2247a14
	mov     r0, r6
	mov     r1, #0xa8
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_22480ec
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3a
	mov     r3, #0x8
	bl      Function_2247a14
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3b
	mov     r3, #0x58
	bl      Function_2247a14
	mov     r0, r6
	mov     r1, #0xa9
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_22480ec
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3c
	mov     r3, #0x68
	bl      Function_2247a14
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3d
	mov     r3, #0xb8
	bl      Function_2247a14
	mov     r0, r6
	mov     r1, #0xa7
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_22480ec
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3e
	mov     r3, #0x8
	bl      Function_2247a14
	mov     r3, #0x58
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3f
	bl      Function_2247a14
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2247a14

.thumb
Function_2247a14: @ 2247a14 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	add     r4, sp, #0x18
	ldrh    r4, [r4, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0xff
	str     r4, [sp, #0x4]
	mov     r4, #0x1
	str     r4, [sp, #0x8]
	mov     r4, #0x2
	str     r4, [sp, #0xc]
	mov     r4, #0x0
	str     r4, [sp, #0x10]
	str     r4, [sp, #0x14]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0x18]
	bl      Function_2247744
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x2247a3c

.thumb
Function_2247a3c: @ 2247a3c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	mov     r4, r2
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x4b
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	mov     r0, #0x42
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x0
	mov     r3, #0x47
	bl      Function_2247ad0
	mov     r0, #0x4b
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x37
	str     r0, [sp, #0x8]
	mov     r0, #0x3b
	str     r0, [sp, #0xc]
	mov     r0, #0x43
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x1
	mov     r3, #0x48
	bl      Function_2247ad0
	mov     r0, #0x4b
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x38
	str     r0, [sp, #0x8]
	mov     r0, #0x3c
	str     r0, [sp, #0xc]
	mov     r0, #0x44
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x2
	mov     r3, #0x49
	bl      Function_2247ad0
	mov     r0, #0x4b
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x39
	str     r0, [sp, #0x8]
	mov     r0, #0x3d
	str     r0, [sp, #0xc]
	mov     r0, #0x45
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, #0x4a
	bl      Function_2247ad0
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2247ad0

.thumb
Function_2247ad0: @ 2247ad0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	mov     r6, r1
	mov     r5, r2
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x38]
	mov     r2, #0x0
	mov     r7, r3
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r4, #0x24]
	mov     r1, r5
	bl      Function_200b630
	mov     r0, #0x18
	mul     r0, r5
	add     r0, #0xc
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x20
	bl      Function_2247714
	strb    r0, [r4, #0xa]
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x3c]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	mov     r3, #0x3
	bl      Function_22480ec
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x40]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, #0x3
	bl      Function_22480ec
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r2, [sp, #0x30]
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x91
	bl      Function_2247744
	strb    r0, [r4, #0xa]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2247b78

.thumb
Function_2247b78: @ 2247b78 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2247b96
	mov     r6, #0x24
	b       branch_2247b98
@ 0x2247b96

.thumb
branch_2247b96: @ 2247b96 :thumb
	mov     r6, #0x4
.thumb
branch_2247b98: @ 2247b98 :thumb
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x1
	bl      0x223b7dc
	mov     r7, #0x0
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_2247c58
	mov     r0, r6
	str     r0, [sp, #0x14]
	add     r0, #0x18
	str     r0, [sp, #0x14]
	mov     r0, r6
	str     r0, [sp, #0x10]
	add     r0, #0x20
	str     r0, [sp, #0x10]
.thumb
branch_2247bb8: @ 2247bb8 :thumb
	mov     r0, #0xda
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldrb    r0, [r0, r7]
	cmp     r0, #0x0
	bne     branch_2247bdc
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r6, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	lsr     r2, r2, #16
	mov     r3, #0x1
	bl      Function_201ae78
	b       branch_2247c42
@ 0x2247bdc

.thumb
branch_2247bdc: @ 2247bdc :thumb
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa3
	mov     r2, #0x0
	str     r0, [sp, #0x18]
	bl      GetPkmnData
	str     r4, [sp, #0x0]
	mov     r1, r0
	str     r6, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_200c5bc
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x14]
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200c578
	ldr     r0, [sp, #0x18]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	ldr     r0, [sp, #0x10]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_200c5bc
.thumb
branch_2247c42: @ 2247c42 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0x40
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r6, #0x40
	add     r0, #0x40
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	cmp     r7, r0
	blt     branch_2247bb8
.thumb
branch_2247c58: @ 2247c58 :thumb
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2247c62


.align 2, 0


.thumb
Function_2247c64: @ 2247c64 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r1, [sp, #0x10]
	mov     r0, r1
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2247c84
	mov     r4, #0x28
	mov     r6, #0x50
	b       branch_2247c88
@ 0x2247c84

.thumb
branch_2247c84: @ 2247c84 :thumb
	mov     r4, #0x8
	mov     r6, #0x30
.thumb
branch_2247c88: @ 2247c88 :thumb
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x1
	bl      0x223b7dc
	mov     r7, #0x0
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_2247cf8
.thumb
branch_2247c98: @ 2247c98 :thumb
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa1
	mov     r2, #0x0
	str     r0, [sp, #0x18]
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200c648
	ldr     r0, [sp, #0x18]
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x0
	lsl     r0, r0, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_22481fc
	ldr     r0, [sp, #0x14]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x40
	add     r6, #0x40
	cmp     r7, r0
	blt     branch_2247c98
.thumb
branch_2247cf8: @ 2247cf8 :thumb
	ldr     r0, [sp, #0x10]
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2247d02


.align 2, 0


.thumb
Function_2247d04: @ 2247d04 :thumb
	push    {r4-r7}
	mov     r4, #0x12
	mov     r6, #0x0
	lsl     r4, r4, #4
	mov     r7, r0
	mov     r3, r6
	add     r5, r4, #0x4
.thumb
branch_2247d12: @ 2247d12 :thumb
	str     r3, [r7, r4]
	str     r3, [r7, r5]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0x8
	cmp     r6, #0x3
	blt     branch_2247d12
	mov     r4, #0x12
	lsl     r4, r4, #4
	mov     r5, r4
	add     r6, r0, r4
	sub     r5, #0x10
	str     r6, [r0, r5]
	mov     r5, r4
	sub     r5, #0xc
	str     r1, [r0, r5]
	mov     r1, r4
	sub     r1, #0x8
	strb    r3, [r0, r1]
	mov     r3, #0x1
	.hword  0x1fe1 @ sub r1, r4, #0x7
	strb    r3, [r0, r1]
	.hword  0x1fa1 @ sub r1, r4, #0x6
	strb    r2, [r0, r1]
	.hword  0x1f61 @ sub r1, r4, #0x5
	ldrb    r2, [r0, r1]
	mov     r1, #0xf
	bic     r2, r1
	.hword  0x1f61 @ sub r1, r4, #0x5
	strb    r2, [r0, r1]
	ldrb    r2, [r0, r1]
	mov     r1, #0x30
	bic     r2, r1
	.hword  0x1f61 @ sub r1, r4, #0x5
	strb    r2, [r0, r1]
	ldrb    r2, [r0, r1]
	mov     r1, #0xc0
	bic     r2, r1
	mov     r1, #0x40
	orr     r2, r1
	add     r1, #0xdb
	strb    r2, [r0, r1]
	pop     {r4-r7}
	bx      lr
@ 0x2247d68

.thumb
Function_2247d68: @ 2247d68 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r7
	str     r2, [sp, #0x0]
	add     r5, #0x30
	lsl     r4, r6, #2
	ldr     r0, [r7, #0x20]
	ldr     r2, [r5, r4]
	mov     r1, r3
	bl      Function_200b1b8_CallMsgDecrypt
	lsl     r0, r6, #3
	add     r2, r7, r0
	mov     r0, #0x12
	ldr     r1, [r5, r4]
	lsl     r0, r0, #4
	str     r1, [r2, r0]
	add     r1, r0, #0x4
	ldr     r0, [sp, #0x0]
	str     r0, [r2, r1]
	pop     {r3-r7,pc}
@ 0x2247d94

.thumb
Function_2247d94: @ 2247d94 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4c]
	add     r1, #0xf0
	bl      Function_2249d84
	mov     r1, r4
	mov     r0, r4
	add     r1, #0xf0
	mov     r2, #0x2
	bl      Function_2247d04
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1a
	bl      Function_2247d68
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1b
	bl      Function_2247d68
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	add     r1, #0xac
	str     r0, [sp, #0x4]
	add     r0, r4, r1
	mov     r1, #0x8
	mov     r3, r2
	bl      Function_2001b7c
	mov     r1, #0x47
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x4
	orr     r0, r1
	strb    r0, [r4, #0xf]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2247df0

.thumb
Function_2247df0: @ 2247df0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, #0x1
	lsl     r1, r1, #8
	ldr     r0, [r4, #0x4c]
	add     r1, r4, r1
	bl      Function_2249d84
	mov     r1, #0x1
	lsl     r1, r1, #8
	mov     r0, r4
	add     r1, r4, r1
	mov     r2, #0x3
	bl      Function_2247d04
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x16
	bl      Function_2247d68
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x17
	bl      Function_2247d68
	mov     r1, #0x2
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x18
	bl      Function_2247d68
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	add     r1, #0xac
	str     r0, [sp, #0x4]
	add     r0, r4, r1
	mov     r1, #0x8
	mov     r3, r2
	bl      Function_2001b7c
	mov     r1, #0x47
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x4
	orr     r0, r1
	strb    r0, [r4, #0xf]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2247e5c

.thumb
Function_2247e5c: @ 2247e5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r1, r5
	ldr     r0, [r5, #0x4c]
	add     r1, #0xa0
	bl      Function_2249d84
	mov     r0, r5
	add     r0, #0xa0
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x4
	mov     r1, #0x64
	bl      Function_2013a04
	mov     r1, #0x4f
	lsl     r1, r1, #2
	ldr     r4, [pc, #0x84] @ 0x2247f08, (=0x224a1bc)
	str     r0, [r5, r1]
	mov     r6, #0x0
	mov     r7, r1
.thumb
branch_2247e8a: @ 2247e8a :thumb
	ldr     r0, [r5, r7]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      Function_2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, #0x4
	bcc     branch_2247e8a
	ldr     r4, [pc, #0x6c] @ 0x2247f0c, (=0x224a17c)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r3, sp, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x48] @ 0x2247f10, (=0x2247f15)
	str     r5, [sp, #0x1c]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	strh    r0, [r3, #0x10]
	ldrb    r4, [r3, #0x18]
	mov     r1, #0xf
	bic     r4, r1
	mov     r1, #0xf
	orr     r1, r4
	strb    r1, [r3, #0x18]
	strh    r0, [r3, #0x12]
	mov     r0, r2
	ldrh    r1, [r5, #0x1c]
	ldrh    r2, [r5, #0x1e]
	mov     r3, #0x64
	bl      Function_200112c
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r1, [r5, #0xf]
	mov     r0, #0x2
	orr     r0, r1
	strb    r0, [r5, #0xf]
	add     r5, #0xa0
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2247f06


.align 2


.word 0x224a1bc @ 0x2247f08
.word 0x224a17c @ 0x2247f0c
.word 0x2247f15 @ 0x2247f10
.thumb
Function_2247f14: @ 2247f14 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r1, #0x13
	mov     r5, r0
	mov     r4, r2
	bl      Function_2001504
	mov     r6, r0
	cmp     r4, #0x0
	bne     branch_2247f2e
	ldr     r0, [pc, #0x38] @ 0x2247f64, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2247f2e: @ 2247f2e :thumb
	mov     r0, r5
	add     r1, sp, #0x18
	bl      Function_20014d0
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r6
	add     r6, #0xe0
	str     r3, [sp, #0x14]
	add     r2, sp, #0x18
	ldrh    r2, [r2, #0x0]
	mov     r1, r6
	lsl     r4, r2, #2
	ldr     r2, [pc, #0x10] @ 0x2247f68, (=0x224a0cc)
	ldr     r2, [r2, r4]
	bl      Function_2247650
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x2247f62


.align 2


.word 0x5dc @ 0x2247f64
.word 0x224a0cc @ 0x2247f68
.thumb
Function_2247f6c: @ 2247f6c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r1, r5
	ldr     r0, [r5, #0x4c]
	add     r1, #0xb0
	bl      Function_2249d84
	mov     r0, r5
	add     r0, #0xb0
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x4
	mov     r1, #0x64
	bl      Function_2013a04
	mov     r1, #0x4f
	lsl     r1, r1, #2
	ldr     r4, [pc, #0x84] @ 0x2248018, (=0x224a19c)
	str     r0, [r5, r1]
	mov     r6, #0x0
	mov     r7, r1
.thumb
branch_2247f9a: @ 2247f9a :thumb
	ldr     r0, [r5, r7]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      Function_2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, #0x4
	bcc     branch_2247f9a
	ldr     r4, [pc, #0x6c] @ 0x224801c, (=0x224a17c)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r3, sp, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xb0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x48] @ 0x2248020, (=0x2248029)
	str     r5, [sp, #0x1c]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x2248024, (=0x22480a1)
	mov     r1, #0xf
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	strh    r0, [r3, #0x10]
	ldrb    r4, [r3, #0x18]
	bic     r4, r1
	mov     r1, #0xf
	orr     r1, r4
	strb    r1, [r3, #0x18]
	strh    r0, [r3, #0x12]
	mov     r1, #0x0
	mov     r0, r2
	mov     r2, r1
	mov     r3, #0x64
	bl      Function_200112c
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r1, [r5, #0xf]
	mov     r0, #0x2
	orr     r0, r1
	strb    r0, [r5, #0xf]
	add     r5, #0xb0
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2248016


.align 2


.word 0x224a19c @ 0x2248018
.word 0x224a17c @ 0x224801c
.word 0x2248029 @ 0x2248020
.word 0x22480a1 @ 0x2248024
.thumb
Function_2248028: @ 2248028 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r1, #0x13
	mov     r6, r0
	mov     r5, r2
	bl      Function_2001504
	mov     r4, r0
	cmp     r5, #0x0
	bne     branch_2248042
	ldr     r0, [pc, #0x58] @ 0x2248098, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2248042: @ 2248042 :thumb
	mov     r0, r6
	add     r1, sp, #0x18
	bl      Function_20014d0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	mov     r2, #0x2
	bl      Function_2249cac
	cmp     r0, #0x1
	beq     branch_2248060
	mov     r6, #0x1
	b       branch_2248062
@ 0x2248060

.thumb
branch_2248060: @ 2248060 :thumb
	mov     r6, #0x0
.thumb
branch_2248062: @ 2248062 :thumb
	mov     r5, #0x1
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r5, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	str     r5, [sp, #0x14]
	add     r2, sp, #0x18
	ldrh    r2, [r2, #0x0]
	mov     r0, r4
	add     r4, #0xc0
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x18] @ 0x224809c, (=0x224a0ac)
	mov     r1, r4
	lsl     r4, r6, #24
	add     r2, r2, r3
	lsr     r4, r4, #23
	ldrh    r2, [r4, r2]
	mov     r3, r5
	bl      Function_2247650
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x2248096


.align 2


.word 0x5dc @ 0x2248098
.word 0x224a0ac @ 0x224809c
.thumb
Function_22480a0: @ 22480a0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x13
	mov     r5, r0
	bl      Function_2001504
	mov     r1, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldrb    r1, [r1, #0x9]
	mov     r2, #0x2
	bl      Function_2249cac
	cmp     r4, #0x4
	beq     branch_22480c6
	cmp     r4, #0x5
	beq     branch_22480d2
	b       branch_22480de
@ 0x22480c6

.thumb
branch_22480c6: @ 22480c6 :thumb
	cmp     r0, #0x1
	bne     branch_22480ce
	mov     r1, #0x2
	b       branch_22480e0
@ 0x22480ce

.thumb
branch_22480ce: @ 22480ce :thumb
	mov     r1, #0x1
	b       branch_22480e0
@ 0x22480d2

.thumb
branch_22480d2: @ 22480d2 :thumb
	cmp     r0, #0x2
	bne     branch_22480da
	mov     r1, #0x2
	b       branch_22480e0
@ 0x22480da

.thumb
branch_22480da: @ 22480da :thumb
	mov     r1, #0x1
	b       branch_22480e0
@ 0x22480de

.thumb
branch_22480de: @ 22480de :thumb
	mov     r1, #0x1
.thumb
branch_22480e0: @ 22480e0 :thumb
	mov     r0, r5
	mov     r2, #0xf
	mov     r3, #0x2
	bl      Function_20013d8
	pop     {r3-r5,pc}
@ 0x22480ec

.thumb
Function_22480ec: @ 22480ec :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0x1
	str     r4, [sp, #0x4]
	ldr     r0, [r0, #0x24]
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2248102


.align 2, 0


.thumb
Function_2248104: @ 2248104 :thumb
	ldr     r3, [pc, #0x4] @ 0x224810c, (=Function_200b538+1)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x224810a


.align 2


.word Function_200b538+1 @ 0x224810c
.thumb
Function_2248110: @ 2248110 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, r4
	bl      Function_200b498
	pop     {r3-r5,pc}
@ 0x224812c

.thumb
Function_224812c: @ 224812c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	str     r2, [sp, #0x10]
	mov     r5, r3
	bl      LoadTrainerDataAdress
	mov     r6, r0
	mov     r0, #0x8
	mov     r1, #0x64
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r6
	bl      Function_2025ef0_Dummy
	mov     r1, r0
	mov     r0, r4
	bl      Function_2023d28
	mov     r0, r6
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_2248168
	ldr     r1, [pc, #0x28] @ 0x2248190, (=0x70800)
	b       branch_224816c
@ 0x2248168

.thumb
branch_2248168: @ 2248168 :thumb
	mov     r1, #0xc1
	lsl     r1, r1, #10
.thumb
branch_224816c: @ 224816c :thumb
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x18
	ldrb    r1, [r1, #0x10]
	ldr     r3, [sp, #0x10]
	mov     r0, r7
	mov     r2, r4
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2248190

.word 0x70800 @ 0x2248190
.thumb
Function_2248194: @ 2248194 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x18]
	mov     r6, r3
	bl      Function_203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      Function_2032ee8
	str     r0, [sp, #0x1c]
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_22481ba
	ldr     r4, [pc, #0x40] @ 0x22481f8, (=0x70800)
	b       branch_22481be
@ 0x22481ba

.thumb
branch_22481ba: @ 22481ba :thumb
	mov     r4, #0xc1
	lsl     r4, r4, #10
.thumb
branch_22481be: @ 22481be :thumb
	ldr     r0, [r5, #0x24]
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x0
	bl      Function_200b498
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	lsr     r0, r4, #16
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	lsr     r0, r4, #8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_2247714
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22481f8

.word 0x70800 @ 0x22481f8
.thumb
Function_22481fc: @ 22481fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r2
	mov     r2, r3
	add     r3, sp, #0x20
	ldrb    r3, [r3, #0x14]
	cmp     r3, #0x0
	bne     branch_2248216
	mov     r3, #0x40
	mov     r4, #0x7
	mov     r5, #0x8
	mov     r6, #0x0
	b       branch_2248222
@ 0x2248216

.thumb
branch_2248216: @ 2248216 :thumb
	cmp     r3, #0x1
	bne     branch_224823c
	mov     r3, #0x41
	mov     r4, #0x3
	mov     r5, #0x4
	mov     r6, #0x0
.thumb
branch_2248222: @ 2248222 :thumb
	str     r2, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r6, [sp, #0x10]
	add     r2, sp, #0x20
	ldrb    r2, [r2, #0x10]
	str     r2, [sp, #0x14]
	mov     r2, r3
	mov     r3, r7
	bl      Function_2247714
.thumb
branch_224823c: @ 224823c :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2248240

.thumb
Function_2248240: @ 2248240 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r4, r0
	mov     r1, r4
	str     r3, [sp, #0x18]
	add     r1, #0x60
	mov     r3, #0x10
	bl      Function_2247680
	strb    r0, [r4, #0xa]
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xd0
	bl      Function_2249dbc
	mov     r3, #0x1
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r1, #0xd0
	mov     r2, #0x4
	str     r3, [sp, #0x14]
	bl      Function_2247650
	strb    r0, [r4, #0xa]
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x22482a4

.thumb
Function_22482a4: @ 22482a4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22482ac, (=0x2248861)
	add     r0, #0xd0
	bx      r3
@ 0x22482aa


.align 2


.word Function_2248860+1 @ =0x2248861, 0x22482ac
.thumb
Function_22482b0: @ 22482b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xe0
	bl      Function_2249dbc
	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_2247e5c
	pop     {r4,pc}
@ 0x22482d4

.thumb
Function_22482d4: @ 22482d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x4e
	lsl     r0, r0, #2
	mov     r1, r4
	mov     r2, r4
	ldr     r0, [r4, r0]
	add     r1, #0x1c
	add     r2, #0x1e
	bl      Function_20014dc
	mov     r0, r4
	add     r0, #0xe0
	bl      Function_2248860
	mov     r0, r4
	bl      Function_2249258
	pop     {r4,pc}
@ 0x22482fa


.align 2, 0


.thumb
Function_22482fc: @ 22482fc :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2249dbc
	mov     r3, #0x1
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x25
	bl      Function_2247650
	strb    r0, [r4, #0xa]
	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_2247f6c
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2248346


.align 2, 0


.thumb
Function_2248348: @ 2248348 :thumb
	ldr     r3, [pc, #0x0] @ 0x224834c, (=0x2249259)
	bx      r3
@ 0x224834c

.word Function_2249258+1 @ =0x2249259, 0x224834c
.thumb
Function_2248350: @ 2248350 :thumb
	mov     r3, #0x0
	strb    r3, [r0, #0x8]
	str     r2, [r1, #0x0]
	bx      lr
@ 0x2248358

.thumb
Function_2248358: @ 2248358 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x14]
	ldrb    r1, [r5, #0xd]
	mov     r4, #0x0
	bl      Function_2249c98
	ldr     r1, [pc, #0x84] @ 0x22483ec, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_224838a
	ldrb    r2, [r5, #0xd]
	ldrb    r1, [r5, #0x15]
	cmp     r2, r1
	beq     branch_22483ea
	cmp     r0, #0x0
	bne     branch_2248384
	ldrb    r1, [r5, #0x14]
	.hword  0x1e49 @ sub r1, r1, #0x1
	add     r1, r2, r1
	b       branch_2248386
@ 0x2248384

.thumb
branch_2248384: @ 2248384 :thumb
	.hword  0x1e51 @ sub r1, r2, #0x1
.thumb
branch_2248386: @ 2248386 :thumb
	strb    r1, [r5, #0xd]
	mov     r4, #0x1
.thumb
branch_224838a: @ 224838a :thumb
	ldr     r1, [pc, #0x60] @ 0x22483ec, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_22483ae
	ldrb    r2, [r5, #0xd]
	ldrb    r1, [r5, #0x15]
	cmp     r2, r1
	beq     branch_22483ea
	ldrb    r1, [r5, #0x14]
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_22483a8
	sub     r0, r2, r1
	b       branch_22483aa
@ 0x22483a8

.thumb
branch_22483a8: @ 22483a8 :thumb
	add     r0, r2, #0x1
.thumb
branch_22483aa: @ 22483aa :thumb
	strb    r0, [r5, #0xd]
	mov     r4, #0x1
.thumb
branch_22483ae: @ 22483ae :thumb
	ldr     r0, [pc, #0x3c] @ 0x22483ec, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_22483c6
	ldrb    r1, [r5, #0xd]
	ldrb    r0, [r5, #0x14]
	cmp     r1, r0
	bcc     branch_22483ea
	ldrb    r0, [r5, #0xc]
	mov     r4, #0x1
	strb    r0, [r5, #0xd]
.thumb
branch_22483c6: @ 22483c6 :thumb
	ldr     r0, [pc, #0x24] @ 0x22483ec, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_22483e0
	ldrb    r1, [r5, #0xd]
	ldrb    r0, [r5, #0x15]
	cmp     r1, r0
	bcs     branch_22483ea
	strb    r1, [r5, #0xc]
	ldrb    r0, [r5, #0x15]
	mov     r4, #0x1
	strb    r0, [r5, #0xd]
.thumb
branch_22483e0: @ 22483e0 :thumb
	cmp     r4, #0x1
	bne     branch_22483ea
	mov     r0, r5
	bl      Function_22483f0
.thumb
branch_22483ea: @ 22483ea :thumb
	pop     {r3-r5,pc}
@ 0x22483ec

.word RAM_21bf67c @ 0x22483ec
.thumb
Function_22483f0: @ 22483f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x224841c, (=0x5dc)
	bl      Function_2005748
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_224840e
	ldrb    r2, [r4, #0xd]
	mov     r0, r4
	mov     r1, #0x16
	bl      Function_2248874
.thumb
branch_224840e: @ 224840e :thumb
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2248420
	pop     {r4,pc}
@ 0x224841a


.align 2


.word 0x5dc @ 0x224841c
.thumb
Function_2248420: @ 2248420 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	cmp     r2, #0x0
	bne     branch_2248438
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r2, #0x1
	mov     r1, #0x0
	b       branch_2248442
@ 0x2248438

.thumb
branch_2248438: @ 2248438 :thumb
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r2, #0x2
	mov     r1, #0x11
.thumb
branch_2248442: @ 2248442 :thumb
	ldrb    r0, [r5, #0x15]
	cmp     r6, r0
	bcc     branch_224845c
	mov     r0, r4
	bl      Function_2249bec
	mov     r0, r4
	mov     r1, #0xe0
	mov     r2, #0xa0
	bl      Function_2249bb8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x224845c

.thumb
branch_224845c: @ 224845c :thumb
	mov     r0, r4
	mov     r1, r2
	bl      Function_2249bec
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r3, r6
	bl      Function_2248488
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	mov     r0, r4
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_2249bb8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2248486


.align 2, 0


.thumb
Function_2248488: @ 2248488 :thumb
	push    {r4-r6,lr}
	ldrb    r0, [r0, #0x9]
	mov     r5, r1
	mov     r6, r2
	mov     r4, r3
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_22484be
	cmp     r4, #0x0
	bne     branch_22484a4
	mov     r0, #0x28
	str     r0, [r5, #0x0]
	b       branch_22484d6
@ 0x22484a4

.thumb
branch_22484a4: @ 22484a4 :thumb
	cmp     r4, #0x1
	bne     branch_22484ae
	mov     r0, #0x68
	str     r0, [r5, #0x0]
	b       branch_22484d6
@ 0x22484ae

.thumb
branch_22484ae: @ 22484ae :thumb
	cmp     r4, #0x2
	bne     branch_22484b8
	mov     r0, #0xa8
	str     r0, [r5, #0x0]
	b       branch_22484d6
@ 0x22484b8

.thumb
branch_22484b8: @ 22484b8 :thumb
	mov     r0, #0xe8
	str     r0, [r5, #0x0]
	b       branch_22484d6
@ 0x22484be

.thumb
branch_22484be: @ 22484be :thumb
	cmp     r4, #0x0
	bne     branch_22484c8
	mov     r0, #0x48
	str     r0, [r5, #0x0]
	b       branch_22484d6
@ 0x22484c8

.thumb
branch_22484c8: @ 22484c8 :thumb
	cmp     r4, #0x1
	bne     branch_22484d2
	mov     r0, #0x88
	str     r0, [r5, #0x0]
	b       branch_22484d6
@ 0x22484d2

.thumb
branch_22484d2: @ 22484d2 :thumb
	mov     r0, #0xc8
	str     r0, [r5, #0x0]
.thumb
branch_22484d6: @ 22484d6 :thumb
	mov     r0, #0x58
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x22484dc

.thumb
Function_22484dc: @ 22484dc :thumb
	push    {r3-r7,lr}
	ldrb    r0, [r0, #0x9]
	mov     r5, r1
	mov     r6, r2
	mov     r7, r3
	ldr     r4, [sp, #0x18]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_22484fe
	mov     r0, #0x20
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	strh    r0, [r7, #0x0]
	strh    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x22484fe

.thumb
branch_22484fe: @ 22484fe :thumb
	mov     r1, #0x0
	strh    r1, [r5, #0x0]
	strh    r1, [r6, #0x0]
	mov     r0, #0x78
	strh    r0, [r7, #0x0]
	strh    r1, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x224850c

.thumb
Function_224850c: @ 224850c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldrb    r0, [r4, #0x14]
	mov     r7, r1
	mov     r5, r2
	bl      Function_2249c98
	mov     r6, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	cmp     r5, #0x5
	bls     branch_2248530
	b       branch_2248666
@ 0x2248530

.thumb
branch_2248530: @ 2248530 :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224853c

Jumppoints_224853c:
.hword branch_2248548 - Jumppoints_224853c - 2
.hword branch_2248556 - Jumppoints_224853c - 2
.hword branch_2248666 - Jumppoints_224853c - 2
.hword branch_22485dc - Jumppoints_224853c - 2
.hword branch_224861a - Jumppoints_224853c - 2
.hword branch_2248658 - Jumppoints_224853c - 2
.thumb
branch_2248548: @ 2248548 :thumb
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	add     sp, #0x14
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2248556

.thumb
branch_2248556: @ 2248556 :thumb
	ldrb    r1, [r4, #0xf]
	lsl     r0, r1, #31
	lsr     r0, r0, #31
	bne     branch_22485ae
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strb    r0, [r4, #0xf]
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x1
	bne     branch_2248572
	mov     r5, #0x9
	b       branch_2248574
@ 0x2248572

.thumb
branch_2248572: @ 2248572 :thumb
	mov     r5, #0xa
.thumb
branch_2248574: @ 2248574 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2248582
	mov     r1, #0x50
	b       branch_2248584
@ 0x2248582

.thumb
branch_2248582: @ 2248582 :thumb
	mov     r1, #0x30
.thumb
branch_2248584: @ 2248584 :thumb
	lsl     r0, r6, #6
	add     r0, r1, r0
	lsl     r0, r0, #16
	str     r5, [sp, #0x0]
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r0, #0x32
	str     r0, [sp, #0x8]
	mov     r0, #0x56
	lsl     r0, r0, #2
	str     r1, [sp, #0xc]
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x10]
	bl      Function_2249b1c
	mov     r1, #0xc9
	lsl     r1, r1, #2
	str     r0, [r4, r1]
.thumb
branch_22485ae: @ 22485ae :thumb
	mov     r0, #0xc9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2249c40
	cmp     r0, #0x0
	bne     branch_2248666
	mov     r0, #0xc9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2249b8c
	mov     r0, #0xc9
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	add     sp, #0x14
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22485dc

.thumb
branch_22485dc: @ 22485dc :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_224860c
	ldr     r0, [pc, #0x84] @ 0x224866c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2248666
	ldr     r0, [pc, #0x7c] @ 0x2248670, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, r7
	bl      Function_2248a2c
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	add     sp, #0x14
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224860c

.thumb
branch_224860c: @ 224860c :thumb
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	add     sp, #0x14
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224861a

.thumb
branch_224861a: @ 224861a :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_224864a
	ldr     r0, [pc, #0x44] @ 0x224866c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2248666
	ldr     r0, [pc, #0x40] @ 0x2248670, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, r7
	bl      BeSeq_AddToPointer
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	add     sp, #0x14
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224864a

.thumb
branch_224864a: @ 224864a :thumb
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	add     sp, #0x14
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2248658

.thumb
branch_2248658: @ 2248658 :thumb
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	add     sp, #0x14
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2248666

.thumb
branch_2248666: @ 2248666 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224866c

.word RAM_21bf67c @ 0x224866c
.word 0x5dc @ 0x2248670
.thumb
Function_2248674: @ 2248674 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x14]
	mov     r7, r1
	mov     r6, r2
	ldrb    r5, [r4, #0x15]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	cmp     r6, #0x5
	bhi     branch_224876c
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22486a0

Jumppoints_22486a0:
.hword branch_22486ac - Jumppoints_22486a0 - 2
.hword branch_22486ac - Jumppoints_22486a0 - 2
.hword branch_224876c - Jumppoints_22486a0 - 2
.hword branch_22486b8 - Jumppoints_22486a0 - 2
.hword branch_2248712 - Jumppoints_22486a0 - 2
.hword branch_22486ac - Jumppoints_22486a0 - 2
.thumb
branch_22486ac: @ 22486ac :thumb
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22486b8

.thumb
branch_22486b8: @ 22486b8 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_22486ec
	bl      Function_203608c
	cmp     r0, #0x0
	ldrb    r0, [r4, #0x11]
	bne     branch_22486dc
	cmp     r0, r5
	bcc     branch_22486ec
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22486dc

.thumb
branch_22486dc: @ 22486dc :thumb
	cmp     r0, r5
	bcs     branch_22486ec
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22486ec

.thumb
branch_22486ec: @ 22486ec :thumb
	ldrb    r1, [r4, #0xf]
	lsl     r0, r1, #31
	lsr     r0, r0, #31
	bne     branch_224876c
	mov     r0, #0xf8
	bic     r1, r0
	mov     r0, #0x18
	orr     r0, r1
	strb    r0, [r4, #0xf]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2248a2c
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2248712

.thumb
branch_2248712: @ 2248712 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2248746
	bl      Function_203608c
	cmp     r0, #0x0
	ldrb    r0, [r4, #0x11]
	bne     branch_2248736
	cmp     r0, r5
	bcc     branch_2248746
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2248736

.thumb
branch_2248736: @ 2248736 :thumb
	cmp     r0, r5
	bcs     branch_2248746
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2248746

.thumb
branch_2248746: @ 2248746 :thumb
	ldrb    r1, [r4, #0xf]
	lsl     r0, r1, #31
	lsr     r0, r0, #31
	bne     branch_224876c
	mov     r0, #0xf8
	bic     r1, r0
	mov     r0, #0x18
	orr     r0, r1
	strb    r0, [r4, #0xf]
	mov     r0, r4
	mov     r1, r7
	bl      BeSeq_AddToPointer
	ldrb    r1, [r4, #0xf]
	mov     r0, #0x1
	bic     r1, r0
	strb    r1, [r4, #0xf]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224876c

.thumb
branch_224876c: @ 224876c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248770

.thumb
Function_2248770: @ 2248770 :thumb
	cmp     r0, #0x1
	bne     branch_2248778
	mov     r0, #0x1
	bx      lr
@ 0x2248778

.thumb
branch_2248778: @ 2248778 :thumb
	mov     r0, #0xf
	bx      lr
@ 0x224877c

.thumb
Function_224877c: @ 224877c :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldrb    r3, [r4, #0xd]
	mov     r5, #0x37
	lsl     r5, r5, #4
	lsl     r0, r3, #24
	asr     r2, r0, #24
	mov     r0, #0x0
.thumb
branch_224878c: @ 224878c :thumb
	add     r2, r2, r1
	lsl     r2, r2, #24
	asr     r2, r2, #24
	bpl     branch_224879e
	ldrb    r2, [r4, #0x14]
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #24
	asr     r2, r2, #24
	b       branch_22487a6
@ 0x224879e

.thumb
branch_224879e: @ 224879e :thumb
	ldrb    r6, [r4, #0x14]
	cmp     r2, r6
	blt     branch_22487a6
	mov     r2, r0
.thumb
branch_22487a6: @ 22487a6 :thumb
	cmp     r2, r3
	beq     branch_22487da
	ldr     r6, [r4, r5]
	ldrb    r6, [r6, r2]
	cmp     r6, #0x1
	bne     branch_224878c
	strb    r2, [r4, #0xd]
	mov     r0, r4
	bl      Function_22483f0
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r4
	add     r4, #0x90
	mov     r1, r4
	bl      Function_2247804
.thumb
branch_22487da: @ 22487da :thumb
	pop     {r4-r6,pc}
@ 0x22487dc

.thumb
Function_22487dc: @ 22487dc :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldrb    r3, [r4, #0xd]
	mov     r5, #0xdd
	lsl     r5, r5, #2
	lsl     r0, r3, #24
	asr     r2, r0, #24
	mov     r0, #0x0
.thumb
branch_22487ec: @ 22487ec :thumb
	add     r2, r2, r1
	lsl     r2, r2, #24
	asr     r2, r2, #24
	bpl     branch_22487fe
	ldrb    r2, [r4, #0x14]
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #24
	asr     r2, r2, #24
	b       branch_2248806
@ 0x22487fe

.thumb
branch_22487fe: @ 22487fe :thumb
	ldrb    r6, [r4, #0x14]
	cmp     r2, r6
	blt     branch_2248806
	mov     r2, r0
.thumb
branch_2248806: @ 2248806 :thumb
	cmp     r2, r3
	beq     branch_224883a
	ldr     r6, [r4, r5]
	ldrb    r6, [r6, r2]
	cmp     r6, #0x1
	bne     branch_22487ec
	strb    r2, [r4, #0xd]
	mov     r0, r4
	bl      Function_22483f0
	ldrb    r0, [r4, #0x14]
	ldrb    r1, [r4, #0xd]
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r4
	add     r4, #0x90
	mov     r1, r4
	bl      Function_2247a3c
.thumb
branch_224883a: @ 224883a :thumb
	pop     {r4-r6,pc}
@ 0x224883c

.thumb
Function_224883c: @ 224883c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2248bb4
	mov     r0, r4
	bl      Function_2249258
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, #0x36
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	pop     {r4,pc}
@ 0x2248860

.thumb
Function_2248860: @ 2248860 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	bl      Function_200e084
	mov     r0, r4
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x2248872


.align 2, 0


.thumb
Function_2248874: @ 2248874 :thumb
	push    {r3-r5,lr}
	mov     r3, r1
	sub     r3, #0x14
	mov     r5, r0
	cmp     r3, #0x3
	bhi     branch_22488b2
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x224888c

Jumppoints_224888c:
.hword branch_2248894 - Jumppoints_224888c - 2
.hword branch_224889c - Jumppoints_224888c - 2
.hword branch_22488a4 - Jumppoints_224888c - 2
.hword branch_22488ac - Jumppoints_224888c - 2
.thumb
branch_2248894: @ 2248894 :thumb
	mov     r4, #0x35
	bl      Function_22488cc
	b       branch_22488b2
@ 0x224889c

.thumb
branch_224889c: @ 224889c :thumb
	mov     r4, #0x36
	bl      Function_2248940
	b       branch_22488b2
@ 0x22488a4

.thumb
branch_22488a4: @ 22488a4 :thumb
	mov     r4, #0x37
	bl      Function_22489d0
	b       branch_22488b2
@ 0x22488ac

.thumb
branch_22488ac: @ 22488ac :thumb
	mov     r4, #0x38
	bl      Function_2248a04
.thumb
branch_22488b2: @ 22488b2 :thumb
	mov     r1, #0xe
	lsl     r1, r1, #6
	mov     r0, r4
	add     r1, r5, r1
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_22488c8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22488c8

.thumb
branch_22488c8: @ 22488c8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22488cc

.thumb
Function_22488cc: @ 22488cc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r1, #0xe
	lsl     r1, r1, #6
	strh    r4, [r6, r1]
	bl      GetGender
	ldr     r1, [pc, #0x24] @ 0x224890c, (=0x382)
	mov     r4, #0x0
	strh    r0, [r6, r1]
	add     r5, r6, #0x4
	.hword  0x1e8f @ sub r7, r1, #0x2
.thumb
branch_22488f0: @ 22488f0 :thumb
	mov     r0, #0x53
	lsl     r0, r0, #2
	lsl     r2, r4, #24
	ldrb    r1, [r6, #0x9]
	ldr     r0, [r6, r0]
	lsr     r2, r2, #24
	bl      Function_2249cac
	strh    r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x3
	blt     branch_22488f0
	pop     {r3-r7,pc}
@ 0x224890c

.word 0x382 @ 0x224890c



.thumb
.globl Function_107_2248910
Function_107_2248910: @ 2248910 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r5, r0
	ldrb    r0, [r4, #0x17]
	mov     r6, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x17]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_224893a
	ldr     r0, [pc, #0x14] @ 0x224893c, (=0x3d3)
	mov     r3, #0x0
	add     r5, r6, #0x4
.thumb
branch_224892c: @ 224892c :thumb
	ldrh    r2, [r5, #0x0]
	add     r1, r4, r3
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strb    r2, [r1, r0]
	cmp     r3, #0x3
	blt     branch_224892c
.thumb
branch_224893a: @ 224893a :thumb
	pop     {r4-r6,pc}
@ 0x224893c

.word 0x3d3 @ 0x224893c
.thumb
Function_2248940: @ 2248940 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xe
	lsl     r0, r0, #6
	strh    r1, [r5, r0]
	mov     r4, r2
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r4, [r5, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2248960
	ldrb    r0, [r5, #0x11]
	cmp     r0, #0xff
	bne     branch_2248960
	strb    r4, [r5, #0x11]
.thumb
branch_2248960: @ 2248960 :thumb
	ldrb    r1, [r5, #0x11]
	mov     r0, #0xe1
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	ldrb    r2, [r5, #0x12]
	add     r1, r0, #0x4
	.hword  0x1d80 @ add r0, r0, #0x6
	strh    r2, [r5, r1]
	ldrb    r1, [r5, #0x13]
	strh    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x2248976


.align 2, 0
.thumb
.globl Function_107_2248978
Function_107_2248978: @ 2248978 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r6, r0
	ldrb    r0, [r4, #0x17]
	mov     r5, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x17]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_22489c8
	ldrh    r1, [r5, #0x2]
	ldr     r0, [pc, #0x38] @ 0x22489cc, (=0x3d1)
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_22489bc
	ldrb    r0, [r4, #0x11]
	cmp     r0, #0xff
	ldr     r0, [pc, #0x28] @ 0x22489cc, (=0x3d1)
	beq     branch_22489aa
	mov     r1, #0x0
	strb    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x22489aa

.thumb
branch_22489aa: @ 22489aa :thumb
	ldrb    r1, [r4, r0]
	ldrb    r0, [r4, #0x15]
	add     r0, r1, r0
	strb    r0, [r4, #0x11]
	ldrh    r0, [r5, #0x8]
	strb    r0, [r4, #0x12]
	ldrh    r0, [r5, #0xa]
	strb    r0, [r4, #0x13]
	pop     {r4-r6,pc}
@ 0x22489bc

.thumb
branch_22489bc: @ 22489bc :thumb
	ldrh    r0, [r5, #0x4]
	strb    r0, [r4, #0x11]
	ldrh    r0, [r5, #0x8]
	strb    r0, [r4, #0x12]
	ldrh    r0, [r5, #0xa]
	strb    r0, [r4, #0x13]
.thumb
branch_22489c8: @ 22489c8 :thumb
	pop     {r4-r6,pc}
@ 0x22489ca


.align 2


.word 0x3d1 @ 0x22489cc
.thumb
Function_22489d0: @ 22489d0 :thumb
	mov     r2, #0xe
	lsl     r2, r2, #6
	strh    r1, [r0, r2]
	ldrb    r3, [r0, #0xd]
	add     r1, r2, #0x2
	strh    r3, [r0, r1]
	bx      lr
@ 0x22489de


.align 2, 0
.thumb
.globl Function_107_22489e0
Function_107_22489e0: @ 22489e0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r4, r3
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_2248a02
	ldrh    r0, [r6, #0x2]
	mov     r1, #0x3d
	lsl     r1, r1, #4
	strb    r0, [r4, r1]
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2248420
.thumb
branch_2248a02: @ 2248a02 :thumb
	pop     {r4-r6,pc}
@ 0x2248a04

.thumb
Function_2248a04: @ 2248a04 :thumb
	mov     r1, #0xe
	mov     r2, #0x1
	lsl     r1, r1, #6
	strh    r2, [r0, r1]
	bx      lr
@ 0x2248a0e


.align 2, 0
.thumb
.globl Function_107_2248a10
Function_107_2248a10: @ 2248a10 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r6, r3
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_2248a26
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x4] @ 0x2248a28, (=0x3d2)
	strb    r1, [r6, r0]
.thumb
branch_2248a26: @ 2248a26 :thumb
	pop     {r4-r6,pc}
@ 0x2248a28

.word 0x3d2 @ 0x2248a28
.thumb
Function_2248a2c: @ 2248a2c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r1, #0x2
	bl      Function_224752c
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_201ad10
	ldrb    r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r4
	add     r4, #0x90
	mov     r1, r4
	bl      Function_2247804
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r3-r5,pc}
@ 0x2248a72


.align 2, 0


.thumb
Function_2248a74: @ 2248a74 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x14]
	bl      Function_2249c98
	mov     r1, #0x37
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r2, #0x1
	strb    r2, [r1, r0]
	pop     {r4,pc}
@ 0x2248a8a


.align 2, 0


.thumb
Function_2248a8c: @ 2248a8c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xc0
	bl      Function_2249dbc
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2248104
	mov     r0, r5
	mov     r1, #0x2f
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r5, #0xa]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248a74
	mov     r0, r5
	bl      Function_2249580
	ldr     r0, [pc, #0x8] @ 0x2248aec, (=0x624)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x2248aea


.align 2


.word 0x624 @ 0x2248aec
.thumb
BeSeq_AddToPointer: @ 2248af0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r1, #0x2
	bl      Function_22475a8
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_2248860
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_201ad10
	ldrb    r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r4
	add     r4, #0x90
	mov     r1, r4
	bl      Function_2247a3c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r3-r5,pc}
@ 0x2248b36


.align 2, 0


.thumb
Function_2248b38: @ 2248b38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x14]
	bl      Function_2249c98
	mov     r1, #0xdd
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r2, #0x1
	strb    r2, [r1, r0]
	pop     {r4,pc}
@ 0x2248b4e


.align 2, 0


.thumb
Function_2248b50: @ 2248b50 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xc0
	bl      Function_2249dbc
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2248104
	mov     r0, r5
	mov     r1, #0x46
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r5, #0xa]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248b38
	mov     r0, r5
	bl      Function_2249580
	ldr     r0, [pc, #0x8] @ 0x2248bb0, (=0x624)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x2248bae


.align 2


.word 0x624 @ 0x2248bb0
.thumb
Function_2248bb4: @ 2248bb4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0xf]
	lsl     r0, r1, #29
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2248bea
	mov     r0, #0x4
	bic     r1, r0
	mov     r0, #0x47
	strb    r1, [r4, #0xf]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_201ad10
.thumb
branch_2248bea: @ 2248bea :thumb
	pop     {r4,pc}
@ 0x2248bec

.thumb
Function_2248bec: @ 2248bec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	add     r4, #0xc0
	mov     r1, r0
	mov     r0, r4
	bl      Function_2249dbc
	pop     {r4,pc}
@ 0x2248c06


.align 2, 0


.thumb
Function_2248c08: @ 2248c08 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r1
	add     r1, sp, #0x28
	str     r1, [sp, #0x0]
	add     r1, sp, #0x2c
	add     r3, sp, #0x28
	mov     r5, r0
	add     r1, #0x2
	add     r2, sp, #0x2c
	add     r3, #0x2
	bl      Function_22484dc
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2248ca2
	add     r1, sp, #0x28
	ldrh    r0, [r1, #0x6]
	ldrh    r6, [r1, #0x4]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	str     r0, [sp, #0x1c]
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      Function_2030698
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_22480ec
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	str     r2, [sp, #0x18]
	bl      Function_2247744
	strb    r0, [r5, #0xa]
	b       branch_2248e46
@ 0x2248ca2

.thumb
branch_2248ca2: @ 2248ca2 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	add     r1, sp, #0x28
	bne     branch_2248d7a
	ldrh    r0, [r1, #0x6]
	ldrh    r6, [r1, #0x4]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	str     r0, [sp, #0x20]
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x20]
	bl      Function_2030698
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_22480ec
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	str     r2, [sp, #0x18]
	bl      Function_2247744
	add     r1, sp, #0x28
	strb    r0, [r5, #0xa]
	ldrh    r0, [r1, #0x2]
	ldrh    r6, [r1, #0x0]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x104] @ 0x2248e50, (=0x3d6)
	mov     r0, r5
	ldrh    r2, [r5, r2]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_22480ec
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	str     r2, [sp, #0x18]
	bl      Function_2247744
	strb    r0, [r5, #0xa]
	b       branch_2248e46
@ 0x2248d7a

.thumb
branch_2248d7a: @ 2248d7a :thumb
	ldrh    r0, [r1, #0x6]
	ldrh    r6, [r1, #0x4]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0xac] @ 0x2248e50, (=0x3d6)
	mov     r0, r5
	ldrh    r2, [r5, r2]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_22480ec
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	str     r2, [sp, #0x18]
	bl      Function_2247744
	add     r1, sp, #0x28
	strb    r0, [r5, #0xa]
	ldrh    r0, [r1, #0x2]
	ldrh    r6, [r1, #0x0]
	mov     r1, #0x0
	add     r0, #0x68
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r2, r7
	mov     r0, #0x30
	sub     r2, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_201ae78
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	str     r0, [sp, #0x24]
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x24]
	bl      Function_2030698
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_22480ec
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r2, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	str     r2, [sp, #0x18]
	bl      Function_2247744
	strb    r0, [r5, #0xa]
.thumb
branch_2248e46: @ 2248e46 :thumb
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2248e50

.word 0x3d6 @ 0x2248e50
.thumb
Function_2248e54: @ 2248e54 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2248770
	mov     r2, r0
	mov     r1, #0x0
	mov     r0, r5
	mov     r3, #0x4
	str     r1, [sp, #0x0]
	bl      Function_22480ec
	mov     r0, r5
	mov     r1, #0x19
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r5, #0xa]
	mov     r0, r5
	bl      Function_2247d94
	strb    r4, [r5, #0xe]
	pop     {r3-r5,pc}
@ 0x2248e84

.thumb
Function_2248e84: @ 2248e84 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	add     r1, sp, #0x8
	add     r3, sp, #0x4
	mov     r5, r0
	add     r1, #0x2
	add     r2, sp, #0x8
	add     r3, #0x2
	bl      Function_22484dc
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_2248ebc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r3, sp, #0x4
	ldrh    r2, [r3, #0x6]
	ldrh    r3, [r3, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_224812c
	b       branch_2248f0c
@ 0x2248ebc

.thumb
branch_2248ebc: @ 2248ebc :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	add     r0, sp, #0x4
	bne     branch_2248eea
	ldrh    r2, [r0, #0x6]
	ldrh    r3, [r0, #0x4]
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_224812c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r3, sp, #0x4
	ldrh    r2, [r3, #0x2]
	ldrh    r3, [r3, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2248194
	b       branch_2248f0c
@ 0x2248eea

.thumb
branch_2248eea: @ 2248eea :thumb
	ldrh    r2, [r0, #0x6]
	ldrh    r3, [r0, #0x4]
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_2248194
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r3, sp, #0x4
	ldrh    r2, [r3, #0x2]
	ldrh    r3, [r3, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_224812c
.thumb
branch_2248f0c: @ 2248f0c :thumb
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2248f16


.align 2, 0


.thumb
Function_2248f18: @ 2248f18 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [pc, #0xfc] @ 0x224901c, (=0x5e3)
	mov     r7, r1
	mov     r6, r2
	bl      Function_2005748
	ldrb    r0, [r4, #0x15]
	mov     r1, r7
	str     r0, [sp, #0x0]
	bl      Function_2249c9c
	str     r0, [sp, #0x4]
	cmp     r6, #0x4
	bhi     branch_2248f62
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248f44

Jumppoints_2248f44:
.hword branch_2248f4e - Jumppoints_2248f44 - 2
.hword branch_2248f52 - Jumppoints_2248f44 - 2
.hword branch_2248f62 - Jumppoints_2248f44 - 2
.hword branch_2248f5c - Jumppoints_2248f44 - 2
.hword branch_2248f60 - Jumppoints_2248f44 - 2
.thumb
branch_2248f4e: @ 2248f4e :thumb
	mov     r5, #0x1
	b       branch_2248f62
@ 0x2248f52

.thumb
branch_2248f52: @ 2248f52 :thumb
	ldrb    r0, [r4, #0x12]
	bl      Function_2248770
	mov     r5, r0
	b       branch_2248f62
@ 0x2248f5c

.thumb
branch_2248f5c: @ 2248f5c :thumb
	mov     r5, #0x2
	b       branch_2248f62
@ 0x2248f60

.thumb
branch_2248f60: @ 2248f60 :thumb
	mov     r5, #0x5
.thumb
branch_2248f62: @ 2248f62 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2248f96
	ldr     r0, [sp, #0x0]
	cmp     r7, r0
	bcs     branch_2248f84
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2248110
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	mov     r2, r5
	bl      0x223bc2c
	b       branch_2248fc0
@ 0x2248f84

.thumb
branch_2248f84: @ 2248f84 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x5
	bl      Function_2249cf4
	ldr     r0, [pc, #0x90] @ 0x2249020, (=0x3d6)
	ldrh    r1, [r4, r0]
	sub     r1, r1, r5
	strh    r1, [r4, r0]
	b       branch_2248fc0
@ 0x2248f96

.thumb
branch_2248f96: @ 2248f96 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r7, r0
	bcs     branch_2248fae
	ldr     r0, [r4, #0x24]
	mov     r1, #0x5
	bl      Function_2249cf4
	ldr     r0, [pc, #0x78] @ 0x2249020, (=0x3d6)
	ldrh    r1, [r4, r0]
	sub     r1, r1, r5
	strh    r1, [r4, r0]
	b       branch_2248fc0
@ 0x2248fae

.thumb
branch_2248fae: @ 2248fae :thumb
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2248110
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, #0x4]
	mov     r2, r5
	bl      0x223bc2c
.thumb
branch_2248fc0: @ 2248fc0 :thumb
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	bl      Function_2248c08
	mov     r0, r4
	bl      Function_2248bb4
	cmp     r6, #0x4
	bhi     branch_2249018
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248fe0

Jumppoints_2248fe0:
.hword branch_2248fea - Jumppoints_2248fe0 - 2
.hword branch_2248ff6 - Jumppoints_2248fe0 - 2
.hword branch_2249018 - Jumppoints_2248fe0 - 2
.hword branch_2249004 - Jumppoints_2248fe0 - 2
.hword branch_2249010 - Jumppoints_2248fe0 - 2
.thumb
branch_2248fea: @ 2248fea :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2249024
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2248ff6

.thumb
branch_2248ff6: @ 2248ff6 :thumb
	ldrb    r2, [r4, #0x12]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_22490e8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2249004

.thumb
branch_2249004: @ 2249004 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248a8c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2249010

.thumb
branch_2249010: @ 2249010 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2248b50
.thumb
branch_2249018: @ 2249018 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224901c

.word 0x5e3 @ 0x224901c
.word 0x3d6 @ 0x2249020
.thumb
Function_2249024: @ 2249024 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x14]
	mov     r4, r1
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xc0
	bl      Function_2249dbc
	mov     r0, r6
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2248104
	mov     r0, r5
	mov     r1, #0x14
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r5, #0xa]
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	mov     r1, #0xda
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r2, #0x1
	strb    r2, [r1, r0]
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0xc5
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_2249bac
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x80
	bl      Function_2247b78
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x70
	bl      Function_2247c64
	ldrb    r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_2249c98
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_2249bac
	ldr     r0, [pc, #0x4] @ 0x22490e4, (=0x624)
	bl      Function_2005748
	pop     {r4-r6,pc}
@ 0x22490e4

.word 0x624 @ 0x22490e4
.thumb
Function_22490e8: @ 22490e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r6, r1
	mov     r7, r2
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xc0
	bl      Function_2249dbc
	ldrb    r0, [r5, #0x14]
	mov     r1, r6
	bl      Function_2249c98
	mov     r1, r0
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2248104
	cmp     r7, #0x1
	bne     branch_2249140
	mov     r0, r5
	mov     r1, #0x1f
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r5, #0xa]
	ldr     r0, [pc, #0xf4] @ 0x2249230, (=0x633)
	bl      Function_2005748
	b       branch_2249152
@ 0x2249140

.thumb
branch_2249140: @ 2249140 :thumb
	mov     r0, r5
	mov     r1, #0x20
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r5, #0xa]
	ldr     r0, [pc, #0xe4] @ 0x2249234, (=0x634)
	bl      Function_2005748
.thumb
branch_2249152: @ 2249152 :thumb
	ldrb    r0, [r5, #0x14]
	mov     r1, r6
	bl      Function_2249c98
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	ldrb    r0, [r5, #0x14]
	bne     branch_2249178
	mov     r1, r6
	bl      Function_2249c98
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	strb    r7, [r1, r0]
	b       branch_2249188
@ 0x2249178

.thumb
branch_2249178: @ 2249178 :thumb
	mov     r1, r6
	bl      Function_2249c98
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r2, #0x0
	strb    r2, [r1, r0]
.thumb
branch_2249188: @ 2249188 :thumb
	ldrb    r0, [r5, #0x14]
	mov     r1, r6
	bl      Function_2249c98
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22491c0
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x32
	bl      GetBaseExpPts
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x8
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
	b       branch_224921a
@ 0x22491c0

.thumb
branch_22491c0: @ 22491c0 :thumb
	ldrb    r0, [r5, #0x14]
	mov     r1, r6
	bl      Function_2249c98
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_22491f8
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x37
	bl      GetBaseExpPts
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x8
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
	b       branch_224921a
@ 0x22491f8

.thumb
branch_22491f8: @ 22491f8 :thumb
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x2d
	bl      GetBaseExpPts
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x8
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
.thumb
branch_224921a: @ 224921a :thumb
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x80
	bl      Function_2247b78
	mov     r0, r5
	add     r5, #0x70
	mov     r1, r5
	bl      Function_2247c64
	pop     {r3-r7,pc}
@ 0x2249230

.word 0x633 @ 0x2249230
.word 0x634 @ 0x2249234
.thumb
Function_2249238: @ 2249238 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x90
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r4, #0x90
	mov     r0, r4
	bl      Function_201acf4
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x2249256


.align 2, 0


.thumb
Function_2249258: @ 2249258 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0xf]
	lsl     r0, r1, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22492a6
	mov     r0, #0x2
	bic     r1, r0
	mov     r0, #0x4e
	strb    r1, [r4, #0xf]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x12
	bl      Function_2001504
	mov     r5, r0
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	bl      Function_201ad10
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	mov     r0, #0x4e
	lsl     r0, r0, #2
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, r1
	bl      Function_2001384
.thumb
branch_22492a6: @ 22492a6 :thumb
	pop     {r3-r5,pc}
@ 0x22492a8

.thumb
Function_22492a8: @ 22492a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldrb    r0, [r6, #0x9]
	mov     r1, #0x1
	bl      0x223b7a8
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2249338
	mov     r5, r6
.thumb
branch_22492c0: @ 22492c0 :thumb
	mov     r0, #0xde
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x4]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	lsl     r0, r7, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	bl      0x222e240
	mov     r1, r0
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224932e
	bl      Function_2249c1c
	ldrb    r0, [r6, #0x14]
	ldrb    r1, [r6, #0xd]
	bl      Function_2249c98
	cmp     r4, r0
	bne     branch_2249314
	ldrb    r1, [r6, #0xd]
	ldrb    r0, [r6, #0x15]
	cmp     r1, r0
	bcc     branch_2249322
.thumb
branch_2249314: @ 2249314 :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2249c28
	b       branch_224932e
@ 0x2249322

.thumb
branch_2249322: @ 2249322 :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2249c28
.thumb
branch_224932e: @ 224932e :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_22492c0
.thumb
branch_2249338: @ 2249338 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224933c

.thumb
Function_224933c: @ 224933c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_2248bb4
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	mov     r7, r0
	ldrb    r0, [r5, #0x9]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	bl      Function_2030698
	cmp     r0, r4
	bcs     branch_2249382
	mov     r0, r5
	bl      Function_2248bec
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r5, #0xa]
	mov     r0, #0xf
	strb    r0, [r5, #0x8]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2249382

.thumb
branch_2249382: @ 2249382 :thumb
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x0
	bne     branch_22493c6
	mov     r0, r5
	add     r0, #0xc0
	bl      Function_2248860
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, #0x4]
	mov     r2, r4
	bl      0x223bc2c
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x50
	bl      Function_2248c08
	cmp     r4, #0x2
	bne     branch_22493b6
	ldrb    r1, [r5, #0xd]
	mov     r0, r5
	bl      Function_2248a8c
	b       branch_22493be
@ 0x22493b6

.thumb
branch_22493b6: @ 22493b6 :thumb
	ldrb    r1, [r5, #0xd]
	mov     r0, r5
	bl      Function_2248b50
.thumb
branch_22493be: @ 22493be :thumb
	mov     r0, #0xc
	strb    r0, [r5, #0x8]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22493c6

.thumb
branch_22493c6: @ 22493c6 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x10]
	pop     {r3-r7,pc}
@ 0x22493cc

.thumb
Function_22493cc: @ 22493cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	mov     r4, r1
	mov     r1, #0x0
	mov     r7, r2
	bl      0x223b7a8
	cmp     r7, #0x5
	bne     branch_22493e6
	mov     r6, #0x2
	b       branch_22493ea
@ 0x22493e6

.thumb
branch_22493e6: @ 22493e6 :thumb
	bl      ErrorHandling
.thumb
branch_22493ea: @ 22493ea :thumb
	ldrb    r7, [r5, #0x15]
	mov     r1, r4
	mov     r0, r7
	bl      Function_2249c9c
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_224949a
	cmp     r4, r7
	bcs     branch_224947a
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2248110
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      Function_2249cac
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, #0x4]
	mov     r2, #0x32
	bl      0x223bc2c
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      Function_2249cac
	mov     r4, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	ldrb    r0, [r5, #0x9]
	mov     r1, r6
	bl      Function_205e5b4
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x9]
	mov     r1, r6
	bl      Function_205e5b4
	bl      Function_205e6a8
	add     r3, r4, #0x1
	lsl     r3, r3, #16
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	lsr     r3, r3, #16
	bl      Function_20306e4
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2249536
	ldrb    r1, [r5, #0xf]
	mov     r0, #0xf8
	bic     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r5, #0xf]
	b       branch_2249536
@ 0x224947a

.thumb
branch_224947a: @ 224947a :thumb
	ldr     r0, [r5, #0x24]
	mov     r1, #0x5
	bl      Function_2249cf4
	ldr     r1, [pc, #0xf4] @ 0x2249578, (=0x3d3)
	add     r2, r1, #0x3
	add     r0, r5, r1
	ldrh    r2, [r5, r2]
	ldrb    r4, [r0, r6]
	.hword  0x1cc9 @ add r1, r1, #0x3
	sub     r2, #0x32
	strh    r2, [r5, r1]
	ldrb    r1, [r0, r6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, r6]
	b       branch_2249536
@ 0x224949a

.thumb
branch_224949a: @ 224949a :thumb
	cmp     r4, r7
	bcs     branch_22494be
	ldr     r0, [r5, #0x24]
	mov     r1, #0x5
	bl      Function_2249cf4
	ldr     r1, [pc, #0xd0] @ 0x2249578, (=0x3d3)
	add     r2, r1, #0x3
	add     r0, r5, r1
	ldrh    r2, [r5, r2]
	ldrb    r4, [r0, r6]
	.hword  0x1cc9 @ add r1, r1, #0x3
	sub     r2, #0x32
	strh    r2, [r5, r1]
	ldrb    r1, [r0, r6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, r6]
	b       branch_2249536
@ 0x22494be

.thumb
branch_22494be: @ 22494be :thumb
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2248110
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      Function_2249cac
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, #0x4]
	mov     r2, #0x32
	bl      0x223bc2c
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r5, #0x9]
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      Function_2249cac
	mov     r4, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	ldrb    r0, [r5, #0x9]
	mov     r1, r6
	bl      Function_205e5b4
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x9]
	mov     r1, r6
	bl      Function_205e5b4
	bl      Function_205e6a8
	add     r3, r4, #0x1
	lsl     r3, r3, #16
	mov     r2, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	lsr     r3, r3, #16
	bl      Function_20306e4
	ldrb    r0, [r5, #0x9]
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_2249536
	ldrb    r1, [r5, #0xf]
	mov     r0, #0xf8
	bic     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r5, #0xf]
.thumb
branch_2249536: @ 2249536 :thumb
	mov     r0, r5
	bl      Function_2248bb4
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x50
	bl      Function_2248c08
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xc0
	bl      Function_2249dbc
	mov     r1, #0x6
	mov     r3, r6
	mul     r3, r1
	ldr     r1, [pc, #0x18] @ 0x224957c, (=0x224a0dc)
	lsl     r2, r4, #1
	add     r1, r1, r3
	ldrh    r1, [r2, r1]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_22477cc
	strb    r0, [r5, #0xa]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2249576


.align 2


.word 0x3d3 @ 0x2249578
.word 0x224a0dc @ 0x224957c
.thumb
Function_2249580: @ 2249580 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldrb    r0, [r6, #0x9]
	mov     r1, #0x1
	bl      0x223b7dc
	mov     r5, r0
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_22495a4
.thumb
branch_2249594: @ 2249594 :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_22495a8
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	blt     branch_2249594
.thumb
branch_22495a4: @ 22495a4 :thumb
	pop     {r4-r6,pc}
@ 0x22495a6


.align 2, 0


.thumb
Function_22495a8: @ 22495a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x37
	lsl     r0, r0, #4
	mov     r4, r1
	ldr     r1, [r5, r0]
	ldrb    r1, [r1, r4]
	cmp     r1, #0x1
	bne     branch_22495c8
	lsl     r1, r4, #3
	add     r1, r5, r1
	sub     r0, #0x30
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_2249bac
.thumb
branch_22495c8: @ 22495c8 :thumb
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldrb    r1, [r1, r4]
	cmp     r1, #0x1
	bne     branch_22495e2
	lsl     r1, r4, #3
	add     r1, r5, r1
	sub     r0, #0x30
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_2249bac
.thumb
branch_22495e2: @ 22495e2 :thumb
	pop     {r3-r5,pc}
@ 0x22495e4

.thumb
Function_22495e4: @ 22495e4 :thumb
	push    {r3-r5,lr}
	ldrb    r0, [r0, #0x9]
	mov     r5, r1
	mov     r4, r2
	bl      0x223ba14
	cmp     r0, #0x1
	bne     branch_22495f8
	mov     r0, #0x40
	b       branch_22495fa
@ 0x22495f8

.thumb
branch_22495f8: @ 22495f8 :thumb
	mov     r0, #0x60
.thumb
branch_22495fa: @ 22495fa :thumb
	str     r0, [r5, #0x0]
	mov     r0, #0x3c
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2249602


.align 2, 0


.thumb
Function_2249604: @ 2249604 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r1, [sp, #0x14]
	mov     r0, #0x20
	mov     r1, #0x64
	str     r2, [sp, #0x18]
	bl      Function_201dbec
	bl      Function_2249a3c
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x64
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r0, #0x28
	add     r1, r5, #0x4
	mov     r2, #0x64
	bl      Function_20095c4
	ldr     r4, [pc, #0x25c] @ 0x22498a0, (=0x224a204)
	str     r0, [r5, #0x0]
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_2249648: @ 2249648 :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r7
	mov     r2, #0x64
	bl      Function_2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x4
	blt     branch_2249648
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xc8
	ldr     r0, [r5, r0]
	mov     r1, #0x97
	mov     r2, #0xf
	bl      Function_200985c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	add     r0, #0xcc
	ldr     r0, [r5, r0]
	mov     r1, #0x97
	mov     r2, #0x27
	bl      Function_20098b8
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xd0
	ldr     r0, [r5, r0]
	mov     r1, #0x97
	mov     r2, #0x11
	mov     r3, #0x1
	bl      Function_2009918
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xd4
	ldr     r0, [r5, r0]
	mov     r1, #0x97
	mov     r2, #0x10
	mov     r3, #0x1
	bl      Function_2009918
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]

	mov     r0, #ItemIcon_Narc
	mov     r1, #0x64
	bl      LoadFromNARC_8
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_207ce78
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xc8
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	mov     r1, #0x2
	bl      Function_207ce78
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	add     r0, #0xcc
	ldr     r0, [r5, r0]
	mov     r1, #0x10
	mov     r3, #0x0
	bl      Function_20098b8
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	bl      Function_207cf40
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xd0
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	bl      Function_207cf44
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xd4
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r4
	bl      Call_FS_CloseFile
	mov     r0, r5
	bl      Function_2249a70

	mov     r0, #PlPokeIcon_Narc
	mov     r1, #0x64
	bl      LoadFromNARC_8
	mov     r7, r0
	bl      Function_2079fd0
	mov     r1, #0x3
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	add     r0, #0xcc
	ldr     r0, [r5, r0]
	mov     r1, #0x13
	mov     r3, #0x0
	bl      Function_20098b8
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	bl      Function_2079fd8
	mov     r2, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xd0
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	bl      Function_2079fe4
	mov     r2, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xd4
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_224980a: @ 224980a :thumb
	cmp     r4, #0x3
	bne     branch_2249828
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	bne     branch_224981e
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	b       branch_2249830
@ 0x224981e

.thumb
branch_224981e: @ 224981e :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	b       branch_2249830
@ 0x2249828

.thumb
branch_2249828: @ 2249828 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
.thumb
branch_2249830: @ 2249830 :thumb
	bl      Function_2079d80_CallGetPokeIconGraphicNr
	mov     r2, r0
	add     r0, r4, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xc8
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x10
	cmp     r4, #0x4
	blt     branch_224980a
	mov     r0, r7
	bl      Call_FS_CloseFile
	mov     r7, #0x4f
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_224986a: @ 224986a :thumb
	ldr     r0, [r4, r7]
	bl      Function_200a328
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x7
	blt     branch_224986a
	mov     r6, #0x5
	mov     r4, #0x0
	lsl     r6, r6, #6
.thumb
branch_224987e: @ 224987e :thumb
	ldr     r0, [r5, r6]
	bl      Function_200a5c8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_224987e
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22498a0

.word 0x224a204 @ 0x22498a0
.thumb
Function_22498a4: @ 22498a4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x80
	mov     r4, r0
	mov     r0, #0x0
	str     r3, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r5, #0x0
	ldr     r0, [sp, #0x98]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r6, [r4, r0]
	str     r6, [sp, #0x14]
	add     r6, r0, #0x4
	ldr     r6, [r4, r6]
	str     r6, [sp, #0x18]
	mov     r6, r0
	add     r6, #0x8
	ldr     r6, [r4, r6]
	add     r0, #0xc
	str     r6, [sp, #0x1c]
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x20]
	str     r5, [sp, #0x24]
	str     r5, [sp, #0x28]
	add     r0, sp, #0x5c
	bl      Function_20093b4
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x34]
	str     r1, [sp, #0x38]
	str     r1, [sp, #0x3c]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	strh    r1, [r0, #0x20]
	ldr     r0, [sp, #0x94]
	str     r0, [sp, #0x50]
	add     r0, sp, #0x80
	ldrb    r0, [r0, #0x1c]
	cmp     r0, #0x0
	bne     branch_2249912
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	b       branch_2249916
@ 0x2249912

.thumb
branch_2249912: @ 2249912 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x54]
.thumb
branch_2249916: @ 2249916 :thumb
	mov     r0, #0x64
	str     r0, [sp, #0x58]
	add     r0, sp, #0x80
	ldrb    r0, [r0, #0x1c]
	cmp     r0, #0x1
	bne     branch_224992c
	mov     r0, #0x3
	ldr     r1, [sp, #0x38]
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x38]
.thumb
branch_224992c: @ 224992c :thumb
	add     r0, sp, #0x2c
	bl      Function_2021aa0
	mov     r1, #0x1
	mov     r4, r0
	bl      Function_2021cc8
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r1, [sp, #0x90]
	mov     r0, r4
	bl      Function_2021d6c
	mov     r0, r4
	add     sp, #0x80
	pop     {r4-r6,pc}
@ 0x2249952


.align 2, 0


.thumb
Function_2249954: @ 2249954 :thumb
	push    {r4-r6,lr}
	mov     r6, #0x4f
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_224995e: @ 224995e :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      Function_200a4e4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x7
	bcc     branch_224995e
	mov     r6, #0x5
	mov     r4, #0x0
	lsl     r6, r6, #6
.thumb
branch_2249978: @ 2249978 :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      Function_200a6dc
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_2249978
	mov     r6, #0x4b
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_2249992: @ 2249992 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      Function_2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_2249992
	ldr     r0, [r5, #0x0]
	bl      Function_2021964
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	pop     {r4-r6,pc}
@ 0x22499ba


.align 2, 0


.thumb
Function_22499bc: @ 22499bc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r6, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2009dc8
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	add     r0, #0xc8
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, #0x10
	bl      Function_2009968
	mov     r0, r4
	bl      Function_200a4c0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22499fa


.align 2, 0


.thumb
Function_22499fc: @ 22499fc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	mov     r6, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2009dc8
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	add     r0, #0xcc
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, #0x10
	bl      Function_20099d4
	mov     r0, r4
	bl      Function_200a6b8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2249a3a


.align 2, 0


.thumb
Function_2249a3c: @ 2249a3c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x28] @ 0x2249a6c, (=0x224a208)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, #0x10
	mov     r0, r2
	mov     r2, r1
	bl      Function_201e88c
	mov     r0, #0x8
	mov     r1, #0x64
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2249a6c

.word 0x224a208 @ 0x2249a6c



.thumb
Function_2249a70: @ 2249a70 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0

	mov     r0, #PlPlistGra_Narc
	mov     r1, #0x64
	bl      LoadFromNARC_8
	mov     r4, r0
	bl      Function_2081930
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xc8
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	bl      Function_2081934
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x64
	str     r0, [sp, #0xc]
	add     r0, #0xcc
	ldr     r0, [r5, r0]
	mov     r1, #0x14
	mov     r3, #0x0
	bl      Function_20098b8
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	bl      Function_2081938
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xd0
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x59
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	bl      Function_208193c
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	add     r0, #0xd4
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x5a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2249b1c

.thumb
Function_2249b1c: @ 2249b1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x64
	mov     r1, #0x8
	mov     r7, r2
	str     r3, [sp, #0x10]
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	strb    r1, [r4, #0x0]
	strb    r1, [r4, #0x1]
	strb    r1, [r4, #0x2]
	strb    r1, [r4, #0x3]
	strb    r1, [r4, #0x4]
	strb    r1, [r4, #0x5]
	strb    r1, [r4, #0x6]
	strb    r1, [r4, #0x7]
	add     r0, sp, #0x28
	mov     r2, #0x14
	ldsh    r2, [r0, r2]
	ldr     r3, [sp, #0x10]
	strh    r2, [r4, #0x0]
	mov     r2, #0x18
	ldsh    r0, [r0, r2]
	mov     r2, r7
	strh    r0, [r4, #0x2]
	ldr     r0, [sp, #0x38]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x44]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	bl      Function_22498a4
	str     r0, [r4, #0x4]
	add     r1, sp, #0x28
	mov     r0, #0x14
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	mov     r0, #0x18
	ldsh    r0, [r1, r0]
	add     r1, sp, #0x14
	lsl     r0, r0, #12
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x4]
	bl      Function_2021c50
	mov     r0, r4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2249b8c

.thumb
Function_2249b8c: @ 2249b8c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2249b9a
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2249b9a

.thumb
branch_2249b9a: @ 2249b9a :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2021bd4
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2249baa


.align 2, 0


.thumb
Function_2249bac: @ 2249bac :thumb
	ldr     r3, [pc, #0x4] @ 0x2249bb4, (=Function_2021cac+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2249bb2


.align 2


.word Function_2021cac+1 @ 0x2249bb4
.thumb
Function_2249bb8: @ 2249bb8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	bl      Function_2021d28
	mov     r3, r0
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r7
	str     r0, [r2, #0x0]
	lsl     r0, r4, #12
	str     r0, [sp, #0x0]
	lsl     r0, r6, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2249bea


.align 2, 0


.thumb
Function_2249bec: @ 2249bec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x1
	ldr     r0, [r5, #0x4]
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      Function_2021d6c
	pop     {r3-r5,pc}
@ 0x2249c06


.align 2, 0


.thumb
Function_2249c08: @ 2249c08 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_2079fc4
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2021f24
	pop     {r4,pc}
@ 0x2249c1c

.thumb
Function_2249c1c: @ 2249c1c :thumb
	ldr     r3, [pc, #0x4] @ 0x2249c24, (=0x222e1d9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2249c22


.align 2


.word 0x222e1d9 @ 0x2249c24
.thumb
Function_2249c28: @ 2249c28 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r1
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x4]
	bl      0x222e204
	pop     {r4,pc}
@ 0x2249c3e


.align 2, 0


.thumb
Function_2249c40: @ 2249c40 :thumb
	ldr     r3, [pc, #0x4] @ 0x2249c48, (=Function_2021fd0+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2249c46


.align 2


.word Function_2021fd0+1 @ 0x2249c48
.thumb
Function_2249c4c: @ 2249c4c :thumb
	ldr     r3, [pc, #0x4] @ 0x2249c54, (=Function_2021e80+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2249c52

.align 2
.word Function_2021e80+1 @ 0x2249c54



.thumb
Function_2249c58: @ 2249c58 :thumb
	strh    r1, [r0, #0x0]
	strh    r2, [r0, #0x2]
	bx      lr
@ 0x2249c5e


.align 2, 0
.thumb
Function_2249c60: @ 2249c60 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r1, #0xb
	bl      Function_2249bec
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2249bb8
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2249bac
	ldr     r0, [pc, #0xc] @ 0x2249c90, (=0x5e3)
	bl      Function_2005748
	ldr     r0, [pc, #0xc] @ 0x2249c94, (=0x656)
	bl      Function_2005748
	pop     {r4-r6,pc}
@ 0x2249c8e


.align 2


.word 0x5e3 @ 0x2249c90
.word 0x656 @ 0x2249c94
.thumb
Function_2249c98: @ 2249c98 :thumb
	mov     r0, r1
	bx      lr
@ 0x2249c9c

.thumb
Function_2249c9c: @ 2249c9c :thumb
	cmp     r1, r0
	bcc     branch_2249ca6
	sub     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r1, r0, #24
.thumb
branch_2249ca6: @ 2249ca6 :thumb
	mov     r0, r1
	bx      lr
@ 0x2249caa


.align 2, 0


.thumb
Function_2249cac: @ 2249cac :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r2
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_205e5b4
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_205e5b4
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_2030698
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r7,pc}
@ 0x2249cde


.align 2, 0


.thumb
Function_2249ce0: @ 2249ce0 :thumb
	push    {r3,lr}
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r0, r2
	beq     branch_2249cf0
	mov     r0, r1
	bl      Function_2005748
.thumb
branch_2249cf0: @ 2249cf0 :thumb
	pop     {r3,pc}
@ 0x2249cf2


.align 2, 0


.thumb
Function_2249cf4: @ 2249cf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      Function_2032ee8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_200b498
	pop     {r3-r5,pc}
@ 0x2249d12


.align 2, 0


.thumb
Function_2249d14: @ 2249d14 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r5, r1
	ldr     r0, [pc, #0x34] @ 0x2249d54, (=0x224a218)
	lsl     r1, r2, #3
	ldr     r0, [r0, r1]
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2249d58, (=0x224a21c)
	ldr     r7, [r0, r1]
	cmp     r7, #0x0
	bls     branch_2249d50
.thumb
branch_2249d2e: @ 2249d2e :thumb
	ldr     r2, [sp, #0x4]
	lsl     r6, r4, #4
	lsl     r3, r4, #3
	ldr     r0, [sp, #0x0]
	add     r1, r5, r6
	add     r2, r2, r3
	bl      Function_201a8d4
	add     r0, r5, r6
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, r7
	bcc     branch_2249d2e
.thumb
branch_2249d50: @ 2249d50 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2249d54

.word 0x224a218 @ 0x2249d54
.word 0x224a21c @ 0x2249d58
.thumb
Function_2249d5c: @ 2249d5c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x1c] @ 0x2249d80, (=0x224a21c)
	lsl     r1, r1, #3
	ldr     r5, [r0, r1]
	mov     r4, #0x0
	cmp     r5, #0x0
	bls     branch_2249d7e
.thumb
branch_2249d6c: @ 2249d6c :thumb
	lsl     r0, r4, #4
	add     r0, r6, r0
	bl      Function_201a8fc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r5
	bcc     branch_2249d6c
.thumb
branch_2249d7e: @ 2249d7e :thumb
	pop     {r4-r6,pc}
@ 0x2249d80

.word 0x224a21c @ 0x2249d80
.thumb
Function_2249d84: @ 2249d84 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_201c290
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x18] @ 0x2249db8, (=0x3f7)
	mov     r0, r5
	mov     r3, #0xb
	bl      Function_200daa4
	ldr     r2, [pc, #0x10] @ 0x2249db8, (=0x3f7)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2249db6


.align 2


.word 0x3f7 @ 0x2249db8
.thumb
Function_2249dbc: @ 2249dbc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r4, r0
	bl      Function_201c290
	mov     r1, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x24] @ 0x2249dfc, (=0x3d9)
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r2, [pc, #0x14] @ 0x2249dfc, (=0x3d9)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2249dfc

.word 0x3d9 @ 0x2249dfc



Unknown_2249e00: @ 0x2249e00
.incbin "./baserom/overlay/overlay_0107.bin", 0x8320, 0x224a320 - 0x2249e00


@end 0x224a320



