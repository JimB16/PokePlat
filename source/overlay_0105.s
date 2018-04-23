
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


/*
0x3c9600 in arm9.bin
*/

.section .iwram105, "ax"


.thumb
Function_2241ae0: @ 2241ae0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	ldr     r0, [pc, #0xe4] @ 0x2241bd0, (=0x68)
	mov     r1, #0x2
	bl      LoadOverlay
	bl      Function_22452e4
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x5d
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0x36
	mov     r0, r5
	lsl     r1, r1, #4
	mov     r2, #0x5d
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0x36
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r2, #0x2
	mov     r1, #0x0
	ldr     r0, [pc, #0xb4] @ 0x2241bd4, (=0x2245cd1)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r3, r1
	bl      Function_2024220
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x5d
	bl      Function_2018340
	str     r0, [r4, #0x4c]
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r3, #0x4f
	mov     r2, #0xae
	ldr     r1, [r0, #0x0]
	lsl     r3, r3, #2
	str     r1, [r4, r3]
	ldrb    r1, [r0, #0x4]
	lsl     r2, r2, #2
	strb    r1, [r4, #0x9]
	ldrb    r1, [r0, #0x5]
	strb    r1, [r4, #0xa]
	ldrb    r1, [r0, #0x6]
	strb    r1, [r4, #0xb]
	ldr     r1, [r0, #0x8]
	str     r1, [r4, r2]
	ldr     r5, [r0, #0xc]
	add     r1, r2, #0x4
	str     r5, [r4, r1]
	add     r0, #0x10
	add     r2, #0x14
	str     r0, [r4, r2]
	ldr     r0, [r4, r3]
	bl      LoadPlayerDataAdress
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x8
	str     r0, [r4, #0x14]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_22454f8
	cmp     r0, #0x1
	bne     branch_2241b8a
	mov     r0, #0x6
	strb    r0, [r4, #0x12]
	b       branch_2241bae
@ 0x2241b8a

.thumb
branch_2241b8a: @ 2241b8a :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2241ba2
	mov     r0, #0x2
	strb    r0, [r4, #0x12]
	mov     r0, #0x3
	strb    r0, [r4, #0x1a]
	mov     r0, #0x6
	strb    r0, [r4, #0x1b]
	b       branch_2241bae
@ 0x2241ba2

.thumb
branch_2241ba2: @ 2241ba2 :thumb
	mov     r0, #0x3
	strb    r0, [r4, #0x12]
	mov     r0, #0x4
	strb    r0, [r4, #0x1a]
	mov     r0, #0x5
	strb    r0, [r4, #0x1b]
.thumb
branch_2241bae: @ 2241bae :thumb
	mov     r0, r4
	bl      Function_224531c
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2241bc4
	mov     r0, r4
	bl      Function_209ba80
.thumb
branch_2241bc4: @ 2241bc4 :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2241bce


.align 2


.word 0x68 @ 0x2241bd0
.word 0x2245cd1 @ 0x2241bd4
.thumb
Function_2241bd8: @ 2241bd8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r1, #0x35
	mov     r4, r0
	lsl     r1, r1, #4
	ldrh    r1, [r4, r1]
	cmp     r1, #0x1
	bne     branch_2241c22
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x9
	bhi     branch_2241c22
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241bfe

Jumppoints_2241bfe:
.hword branch_2241c22 - Jumppoints_2241bfe - 2
.hword branch_2241c22 - Jumppoints_2241bfe - 2
.hword branch_2241c22 - Jumppoints_2241bfe - 2
.hword branch_2241c22 - Jumppoints_2241bfe - 2
.hword branch_2241c22 - Jumppoints_2241bfe - 2
.hword branch_2241c22 - Jumppoints_2241bfe - 2
.hword branch_2241c12 - Jumppoints_2241bfe - 2
.hword branch_2241c12 - Jumppoints_2241bfe - 2
.hword branch_2241c12 - Jumppoints_2241bfe - 2
.hword branch_2241c12 - Jumppoints_2241bfe - 2
.thumb
branch_2241c12: @ 2241c12 :thumb
	ldrb    r1, [r4, #0x13]
	lsl     r1, r1, #25
	lsr     r1, r1, #31
	bne     branch_2241c22
	mov     r1, r5
	mov     r2, #0xb
	bl      Function_2244778
.thumb
branch_2241c22: @ 2241c22 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0xe
	bhi     branch_2241cc0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2241c34

Jumppoints_2241c34:
.hword branch_2241c52 - Jumppoints_2241c34 - 2
.hword branch_2241c82 - Jumppoints_2241c34 - 2
.hword branch_2241c68 - Jumppoints_2241c34 - 2
.hword branch_2241cb0 - Jumppoints_2241c34 - 2
.hword branch_2241d12 - Jumppoints_2241c34 - 2
.hword branch_2241d46 - Jumppoints_2241c34 - 2
.hword branch_2241d5c - Jumppoints_2241c34 - 2
.hword branch_2241da6 - Jumppoints_2241c34 - 2
.hword branch_2241df8 - Jumppoints_2241c34 - 2
.hword branch_2241e56 - Jumppoints_2241c34 - 2
.hword branch_2241ea8 - Jumppoints_2241c34 - 2
.hword branch_2241ed6 - Jumppoints_2241c34 - 2
.hword branch_2241f02 - Jumppoints_2241c34 - 2
.hword branch_2241f18 - Jumppoints_2241c34 - 2
.hword branch_2241f26 - Jumppoints_2241c34 - 2
.thumb
branch_2241c52: @ 2241c52 :thumb
	mov     r0, r4
	bl      Function_2241ff4
	cmp     r0, #0x1
	bne     branch_2241cc0
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241c68

.thumb
branch_2241c68: @ 2241c68 :thumb
	mov     r0, r4
	bl      Function_2242698
	cmp     r0, #0x1
	bne     branch_2241c7e
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2244778
	b       branch_2241c82
@ 0x2241c7e

.thumb
branch_2241c7e: @ 2241c7e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241c82

.thumb
branch_2241c82: @ 2241c82 :thumb
	mov     r0, r4
	bl      Function_22421f0
	cmp     r0, #0x1
	bne     branch_2241cc0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_22454f8
	cmp     r0, #0x1
	bne     branch_2241ca4
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241ca4

.thumb
branch_2241ca4: @ 2241ca4 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x6
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241cb0

.thumb
branch_2241cb0: @ 2241cb0 :thumb
	mov     r0, r4
	bl      Function_22457c0
	mov     r0, r4
	bl      Function_22426e0
	cmp     r0, #0x1
	beq     branch_2241cc2
.thumb
branch_2241cc0: @ 2241cc0 :thumb
	b       branch_2241f3a
@ 0x2241cc2

.thumb
branch_2241cc2: @ 2241cc2 :thumb
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2241cd8
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241cd8

.thumb
branch_2241cd8: @ 2241cd8 :thumb
	ldrb    r0, [r4, #0x9]
	bl      Function_2245508
	ldrb    r1, [r4, #0x11]
	cmp     r1, r0
	bne     branch_2241cf0
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241cf0

.thumb
branch_2241cf0: @ 2241cf0 :thumb
	mov     r0, r4
	bl      Function_2245518
	cmp     r0, #0x1
	bne     branch_2241d06
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xd
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241d06

.thumb
branch_2241d06: @ 2241d06 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241d12

.thumb
branch_2241d12: @ 2241d12 :thumb
	mov     r0, r4
	bl      Function_22457c0
	mov     r0, r4
	bl      Function_2242d04
	cmp     r0, #0x1
	bne     branch_2241e02
	ldrb    r0, [r4, #0x9]
	bl      Function_2245508
	ldrb    r1, [r4, #0x11]
	cmp     r1, r0
	bne     branch_2241d3a
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xd
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241d3a

.thumb
branch_2241d3a: @ 2241d3a :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x5
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241d46

.thumb
branch_2241d46: @ 2241d46 :thumb
	mov     r0, r4
	bl      Function_2243144
	cmp     r0, #0x1
	bne     branch_2241e02
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241d5c

.thumb
branch_2241d5c: @ 2241d5c :thumb
	mov     r0, r4
	bl      Function_22434bc
	cmp     r0, #0x1
	bne     branch_2241e02
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2241d7c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241d7c

.thumb
branch_2241d7c: @ 2241d7c :thumb
	mov     r0, r4
	bl      Function_2245518
	cmp     r0, #0x1
	bne     branch_2241d9a
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2245528
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x7
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241d9a

.thumb
branch_2241d9a: @ 2241d9a :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xa
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241da6

.thumb
branch_2241da6: @ 2241da6 :thumb
	mov     r0, r4
	bl      Function_2243818
	cmp     r0, #0x1
	bne     branch_2241e02
	mov     r0, r4
	bl      Function_2245518
	cmp     r0, #0x1
	bne     branch_2241dce
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2245528
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x6
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241dce

.thumb
branch_2241dce: @ 2241dce :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2241dec
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x8
	mov     r2, #0xb
	bic     r1, r0
	strb    r1, [r4, #0x13]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241dec

.thumb
branch_2241dec: @ 2241dec :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xd
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241df8

.thumb
branch_2241df8: @ 2241df8 :thumb
	mov     r0, r4
	bl      Function_2243a3c
	cmp     r0, #0x1
	beq     branch_2241e04
.thumb
branch_2241e02: @ 2241e02 :thumb
	b       branch_2241f3a
@ 0x2241e04

.thumb
branch_2241e04: @ 2241e04 :thumb
	mov     r0, r4
	bl      Function_2245518
	cmp     r0, #0x1
	bne     branch_2241e22
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2245528
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x9
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241e22

.thumb
branch_2241e22: @ 2241e22 :thumb
	ldrb    r0, [r4, #0x11]
	cmp     r0, #0x0
	bne     branch_2241e34
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xa
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241e34

.thumb
branch_2241e34: @ 2241e34 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2241e4a
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xb
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241e4a

.thumb
branch_2241e4a: @ 2241e4a :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xd
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241e56

.thumb
branch_2241e56: @ 2241e56 :thumb
	mov     r0, r4
	bl      Function_2243e84
	cmp     r0, #0x1
	bne     branch_2241f3a
	mov     r0, r4
	bl      Function_2245518
	cmp     r0, #0x1
	bne     branch_2241e7e
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2245528
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x8
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241e7e

.thumb
branch_2241e7e: @ 2241e7e :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2241e9c
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x8
	mov     r2, #0xb
	bic     r1, r0
	strb    r1, [r4, #0x13]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241e9c

.thumb
branch_2241e9c: @ 2241e9c :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xd
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241ea8

.thumb
branch_2241ea8: @ 2241ea8 :thumb
	mov     r0, r4
	bl      Function_224400c
	cmp     r0, #0x1
	bne     branch_2241f3a
	ldrb    r0, [r4, #0x11]
	cmp     r0, #0x0
	bne     branch_2241eca
	mov     r0, r4
	bl      Function_22424cc
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x6
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241eca

.thumb
branch_2241eca: @ 2241eca :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x8
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241ed6

.thumb
branch_2241ed6: @ 2241ed6 :thumb
	mov     r0, r4
	bl      Function_224435c
	cmp     r0, #0x1
	bne     branch_2241f3a
	mov     r0, #0x35
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_2241ef6
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xe
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241ef6

.thumb
branch_2241ef6: @ 2241ef6 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xc
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241f02

.thumb
branch_2241f02: @ 2241f02 :thumb
	mov     r0, r4
	bl      Function_224439c
	cmp     r0, #0x1
	bne     branch_2241f3a
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xd
	bl      Function_2244778
	b       branch_2241f3a
@ 0x2241f18

.thumb
branch_2241f18: @ 2241f18 :thumb
	mov     r0, r4
	bl      Function_22443dc
	cmp     r0, #0x1
	bne     branch_2241f3a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241f26

.thumb
branch_2241f26: @ 2241f26 :thumb
	mov     r0, r4
	bl      Function_2244424
	cmp     r0, #0x1
	bne     branch_2241f3a
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xc
	bl      Function_2244778
.thumb
branch_2241f3a: @ 2241f3a :thumb
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20219f8
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2245d50
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241f52


.align 2, 0


.thumb
Function_2241f54: @ 2241f54 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	bl      LoadOverlayData1c
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_22454f8
	cmp     r0, #0x1
	bne     branch_2241f96
	ldrb    r0, [r4, #0x9]
	mov     r7, #0x0
	bl      Function_2245508
	cmp     r0, #0x0
	ble     branch_2241fca
	mov     r6, r4
	mov     r5, r7
.thumb
branch_2241f78: @ 2241f78 :thumb
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldrh    r1, [r6, r0]
	add     r0, #0xc
	ldr     r0, [r4, r0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	strh    r1, [r0, r5]
	ldrb    r0, [r4, #0x9]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_2245508
	cmp     r7, r0
	blt     branch_2241f78
	b       branch_2241fca
@ 0x2241f96

.thumb
branch_2241f96: @ 2241f96 :thumb
	mov     r7, #0xb
	lsl     r7, r7, #6
	mov     r6, #0x0
	mov     r0, r7
	mov     r3, r4
	mov     r5, r6
	add     r0, #0xc
.thumb
branch_2241fa4: @ 2241fa4 :thumb
	ldrh    r2, [r3, r7]
	ldr     r1, [r4, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	strh    r2, [r1, r5]
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x2
	blt     branch_2241fa4
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bne     branch_2241fca
	mov     r0, #0xb3
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r2, #0xff
	strh    r2, [r1, #0x0]
	ldr     r0, [r4, r0]
	strh    r2, [r0, #0x2]
.thumb
branch_2241fca: @ 2241fca :thumb
	mov     r0, r4
	bl      Function_22451b4
	ldr     r0, [sp, #0x0]
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x5d
	bl      Function_201807c
	ldr     r0, [pc, #0x8] @ 0x2241ff0, (=0x68)
	bl      UnloadOverlay
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2241fee


.align 2


.word 0x68 @ 0x2241ff0
.thumb
Function_2241ff4: @ 2241ff4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x6
	bhi     branch_22420ca
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224200c

Jumppoints_224200c:
.hword branch_224201a - Jumppoints_224200c - 2
.hword branch_2242036 - Jumppoints_224200c - 2
.hword branch_224205e - Jumppoints_224200c - 2
.hword branch_22420c2 - Jumppoints_224200c - 2
.hword branch_22420de - Jumppoints_224200c - 2
.hword branch_224212c - Jumppoints_224200c - 2
.hword branch_224214c - Jumppoints_224200c - 2
.thumb
branch_224201a: @ 224201a :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_224202e
	bl      Function_20365f4
	mov     r0, #0xed
	bl      Function_20364f0
.thumb
branch_224202e: @ 224202e :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421dc
@ 0x2242036

.thumb
branch_2242036: @ 2242036 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2242056
	mov     r0, #0xed
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_22420ca
	bl      Function_20365f4
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421dc
@ 0x2242056

.thumb
branch_2242056: @ 2242056 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421dc
@ 0x224205e

.thumb
branch_224205e: @ 224205e :thumb
	ldrb    r0, [r4, #0x12]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2242086
	mov     r7, #0x29
	mov     r5, r4
	lsl     r7, r7, #4
.thumb
branch_224206c: @ 224206c :thumb
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2245f2c
	ldr     r0, [r5, r7]
	bl      Function_2245f5c
	ldrb    r0, [r4, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_224206c
.thumb
branch_2242086: @ 2242086 :thumb
	mov     r3, #0x42
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x2
	mov     r2, #0x0
	lsl     r3, r3, #2
	bl      Function_2019184
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421dc
@ 0x22420c2

.thumb
branch_22420c2: @ 22420c2 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_22420cc
.thumb
branch_22420ca: @ 22420ca :thumb
	b       branch_22421dc
@ 0x22420cc

.thumb
branch_22420cc: @ 22420cc :thumb
	ldr     r0, [pc, #0x114] @ 0x22421e4, (=0x612)
	bl      Function_2005748
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421dc
@ 0x22420de

.thumb
branch_22420de: @ 22420de :thumb
	bl      Function_2244780
	cmp     r0, #0x1
	bne     branch_22421dc
	ldr     r0, [pc, #0xfc] @ 0x22421e4, (=0x612)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0xf8] @ 0x22421e8, (=0x679)
	bl      Function_2005748
	ldrb    r0, [r4, #0x12]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2242114
	mov     r7, #0x29
	mov     r5, r4
	lsl     r7, r7, #4
.thumb
branch_2242102: @ 2242102 :thumb
	ldr     r0, [r5, r7]
	mov     r1, #0xa
	bl      Function_2245f90
	ldrb    r0, [r4, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_2242102
.thumb
branch_2242114: @ 2242114 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2244924
	mov     r0, #0x8
	str     r0, [r4, #0x14]
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421dc
@ 0x224212c

.thumb
branch_224212c: @ 224212c :thumb
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245e48
	cmp     r0, #0x1
	beq     branch_22421dc
	mov     r0, r4
	bl      Function_2245a30
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421dc
@ 0x224214c

.thumb
branch_224214c: @ 224214c :thumb
	ldrb    r1, [r4, #0x19]
	cmp     r1, #0x0
	bne     branch_224219c
	mov     r1, #0x3
	bl      Function_2244b90
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [pc, #0x60] @ 0x22421ec, (=0xffff)
	mov     r1, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_200872c
.thumb
branch_224219c: @ 224219c :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20087b4
	ldrb    r0, [r4, #0x19]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x2
	bcc     branch_22421dc
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	mov     r0, r4
	bl      Function_2245a64
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22421dc

.thumb
branch_22421dc: @ 22421dc :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22421e2


.align 2


.word 0x612 @ 0x22421e4
.word 0x679 @ 0x22421e8
.word 0xffff @ 0x22421ec
.thumb
Function_22421f0: @ 22421f0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_2242202
	cmp     r1, #0x1
	beq     branch_2242266
	b       branch_2242274
@ 0x2242202

.thumb
branch_2242202: @ 2242202 :thumb
	mov     r1, #0x0
	bl      Function_22454f8
	cmp     r0, #0x1
	bne     branch_2242214
	mov     r0, r4
	bl      Function_224227c
	b       branch_224221a
@ 0x2242214

.thumb
branch_2242214: @ 2242214 :thumb
	mov     r0, r4
	bl      Function_22424cc
.thumb
branch_224221a: @ 224221a :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2242234
	mov     r2, #0x0
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x60
	mov     r3, r2
	str     r2, [sp, #0x0]
	bl      Function_2244f84
.thumb
branch_2242234: @ 2242234 :thumb
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2242256
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
.thumb
branch_2242256: @ 2242256 :thumb
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r4, #0x13]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242274
@ 0x2242266

.thumb
branch_2242266: @ 2242266 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2242274
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2242274

.thumb
branch_2242274: @ 2242274 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224227a


.align 2, 0


.thumb
Function_224227c: @ 224227c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	bl      0x223aa50
	str     r0, [sp, #0x18]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2245528
	mov     r0, #0x2d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldrb    r1, [r5, #0x12]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1b8] @ 0x224245c, (=0x2246394)
	mov     r3, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	str     r3, [sp, #0x8]
	bl      Function_2245fb8
	mov     r1, #0xaa
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r2, #0x0
	mov     r1, r5
	str     r2, [sp, #0x0]
	mov     r0, r5
	add     r1, #0x50
	mov     r3, r2
	bl      Function_2244f0c
	ldrb    r0, [r5, #0x11]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2242354
	mov     r7, r5
	mov     r4, r5
	add     r7, #0x50
.thumb
branch_22422d8: @ 22422d8 :thumb
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      Function_2245f44
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_2245fac
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x7
	bl      Function_2245f90
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0xb
	str     r0, [sp, #0x14]
	lsl     r2, r2, #6
	ldrh    r2, [r4, r2]
	add     r1, r6, #0x2
	lsl     r1, r1, #4
	lsl     r2, r2, #24
	mov     r0, r5
	add     r1, r7, r1
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2244ff8
	ldrb    r0, [r5, #0x11]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, r0
	blt     branch_22422d8
.thumb
branch_2242354: @ 2242354 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xae
	mov     r1, r5
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x50
	str     r0, [sp, #0x14]
	ldrb    r4, [r5, #0x11]
	mov     r0, r5
	.hword  0x1ca4 @ add r4, r4, #0x2
	lsl     r4, r4, #4
	add     r1, r1, r4
	bl      Function_2244ff8
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xa0
	bl      Function_224628c
	ldrb    r2, [r5, #0x11]
	mov     r0, r5
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_2244ee8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2244d14
	strb    r0, [r5, #0x10]
	ldrb    r0, [r5, #0x13]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2242458
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_22461a4
	mov     r0, r5
	bl      Function_2244df0
	mov     r1, #0x0
	ldr     r0, [pc, #0x8c] @ 0x2242460, (=0x2246308)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	mov     r1, #0x3
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2245fb8
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_2242458
	ldr     r0, [sp, #0x18]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2242458
	mov     r7, r5
	mov     r6, r5
	add     r7, #0x50
.thumb
branch_2242404: @ 2242404 :thumb
	mov     r0, r4
	add     r0, #0x8
	lsl     r0, r0, #4
	str     r0, [sp, #0x1c]
	add     r0, r7, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrb    r0, [r5, #0x18]
	cmp     r4, r0
	bge     branch_2242446
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x38] @ 0x2242464, (=0x352)
	ldr     r1, [sp, #0x1c]
	ldrh    r0, [r6, r0]
	mov     r2, #0x0
	add     r1, r7, r1
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x30] @ 0x2242468, (=0x356)
	mov     r3, r2
	ldrh    r0, [r6, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      Function_22450dc
.thumb
branch_2242446: @ 2242446 :thumb
	ldr     r0, [sp, #0x1c]
	add     r0, r7, r0
	bl      Function_201a9a4
	ldr     r0, [sp, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, r0
	blt     branch_2242404
.thumb
branch_2242458: @ 2242458 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x224245c

.word 0x2246394 @ 0x224245c
.word 0x2246308 @ 0x2242460
.word 0x352 @ 0x2242464
.word 0x356 @ 0x2242468
.thumb
Function_224246c: @ 224246c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldrb    r0, [r6, #0x12]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_224249e
	mov     r7, #0x29
	mov     r5, r6
	lsl     r7, r7, #4
.thumb
branch_224247e: @ 224247e :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2245934
	mov     r1, #0x29
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r7]
	mov     r1, #0x1
	bl      Function_2245ebc
	ldrb    r0, [r6, #0x12]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_224247e
.thumb
branch_224249e: @ 224249e :thumb
	pop     {r3-r7,pc}
@ 0x22424a0

.thumb
Function_22424a0: @ 22424a0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r1, #0xae
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x18
	ldr     r1, [r4, r1]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, r4
	mov     r3, #0x78
	str     r1, [sp, #0x4]
	bl      Function_22455c4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22424ca


.align 2, 0


.thumb
Function_22424cc: @ 22424cc :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_2245528
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_224628c
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_224251c
	mov     r0, #0x2d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r2, #0x3
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xf0] @ 0x22425f8, (=0x2246340)
	mov     r3, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xf0] @ 0x22425fc, (=0x22462d0)
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x1a]
	add     r0, r4, r0
	bl      Function_2245fb8
	b       branch_2242540
@ 0x224251c

.thumb
branch_224251c: @ 224251c :thumb
	mov     r0, #0x2d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r2, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xd4] @ 0x2242600, (=0x22462fc)
	mov     r3, r2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xd0] @ 0x2242604, (=Unknown_22462cc)
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x1a]
	add     r0, r4, r0
	bl      Function_2245fb8
branch_2242540: @ 2242540 :thumb
	mov     r1, #0xaa
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r2, #0x0
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	mov     r3, r2
	str     r2, [sp, #0x0]
	bl      Function_2244f0c
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xae
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, #0x70
	str     r0, [sp, #0x14]
	mov     r0, r4
	bl      Function_2244ff8
	mov     r1, r4
	ldr     r0, [r4, #0x4c]
	add     r1, #0xc0
	bl      Function_2246260
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
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x13
	bl      Function_2244c60
	strb    r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_201a9a4
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22425f4
	mov     r0, r4
	bl      Function_2244df0
	mov     r1, #0x0
	ldr     r0, [pc, #0x30] @ 0x2242608, (=0x2246308)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	mov     r1, #0x3
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2245fb8
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r4, r1]
.thumb
branch_22425f4: @ 22425f4 :thumb
	add     sp, #0x18
	pop     {r4,pc}
@ 0x22425f8

.word 0x2246340 @ 0x22425f8
.word 0x22462d0 @ 0x22425fc
.word 0x22462fc @ 0x2242600
.word Unknown_22462cc @ 0x2242604
.word 0x2246308 @ 0x2242608



.thumb
Function_224260c: @ 224260c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x12]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2242668
	mov     r7, #0x29
	mov     r4, r5
	lsl     r7, r7, #4
.thumb
branch_224261e: @ 224261e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2245934
	mov     r1, #0x29
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r7]
	mov     r1, #0x1
	bl      Function_2245ebc
	ldrb    r0, [r5, #0x13]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_224265e
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245f44
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2245fac
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_2245f90
.thumb
branch_224265e: @ 224265e :thumb
	ldrb    r0, [r5, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_224261e
.thumb
branch_2242668: @ 2242668 :thumb
	pop     {r3-r7,pc}
@ 0x224266a


.align 2, 0


.thumb
Function_224266c: @ 224266c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r1, #0xae
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x18
	ldr     r1, [r4, r1]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x78
	bl      Function_22455c4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2242698

.thumb
Function_2242698: @ 2242698 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_22426dc
	ldr     r0, [r4, #0x4]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x1
	bne     branch_22426dc
	mov     r1, #0x5
	lsl     r1, r1, #6
	ldr     r0, [r4, r1]
	ldrb    r2, [r0, #0x14]
	mov     r0, #0x2d
	lsl     r0, r0, #4
	str     r2, [r4, r0]
	ldr     r0, [r4, r1]
	bl      free
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r4
	bl      Function_22452a0
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x40
	bic     r1, r0
	strb    r1, [r4, #0x13]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22426dc

.thumb
branch_22426dc: @ 22426dc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22426e0

.thumb
Function_22426e0: @ 22426e0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x5
	bls     branch_22426ee
	b       branch_2242956
@ 0x22426ee

.thumb
branch_22426ee: @ 22426ee :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22426fa

Jumppoints_22426fa:
.hword branch_2242706 - Jumppoints_22426fa - 2
.hword branch_2242720 - Jumppoints_22426fa - 2
.hword branch_22427d4 - Jumppoints_22426fa - 2
.hword branch_224290c - Jumppoints_22426fa - 2
.hword branch_224293e - Jumppoints_22426fa - 2
.hword branch_224294a - Jumppoints_22426fa - 2
.thumb
branch_2242706: @ 2242706 :thumb
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_2242712
	mov     r0, #0x1
	b       branch_2242714
@ 0x2242712

.thumb
branch_2242712: @ 2242712 :thumb
	mov     r0, #0x2
.thumb
branch_2242714: @ 2242714 :thumb
	strb    r0, [r4, #0x8]
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x2
	bic     r1, r0
	strb    r1, [r4, #0x13]
	b       branch_2242956
@ 0x2242720

.thumb
branch_2242720: @ 2242720 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246080
	ldr     r0, [pc, #0x230] @ 0x224295c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_2242758
	ldr     r0, [pc, #0x228] @ 0x2242960, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r2, r0
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	ldrb    r1, [r4, #0x11]
	mov     r0, r4
	bl      Function_22453f8
.thumb
branch_2242758: @ 2242758 :thumb
	ldr     r0, [pc, #0x200] @ 0x224295c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22427a2
	ldr     r0, [pc, #0x1fc] @ 0x2242960, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22461a4
	mov     r0, r4
	bl      Function_2244df0
	mov     r1, #0x0
	ldr     r0, [pc, #0x1e4] @ 0x2242964, (=0x2246308)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	mov     r1, #0x3
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2245fb8
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242956
@ 0x22427a2

.thumb
branch_22427a2: @ 22427a2 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2242814
	ldrb    r0, [r4, #0x11]
	cmp     r0, #0x0
	beq     branch_2242814
	ldr     r0, [pc, #0x1b0] @ 0x2242960, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_224296c
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_22427ce
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2245620
.thumb
branch_22427ce: @ 22427ce :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x22427d4

.thumb
branch_22427d4: @ 22427d4 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r5, r0
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246080
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_224280c
	bcs     branch_22428d2
	cmp     r5, #0x3
	bhi     branch_22428d2
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2242804

Jumppoints_2242804:
.hword branch_2242818 - Jumppoints_2242804 - 2
.hword branch_2242866 - Jumppoints_2242804 - 2
.hword branch_22428d2 - Jumppoints_2242804 - 2
.hword branch_224289c - Jumppoints_2242804 - 2
.thumb
branch_224280c: @ 224280c :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2242816
.thumb
branch_2242814: @ 2242814 :thumb
	b       branch_2242956
@ 0x2242816

.thumb
branch_2242816: @ 2242816 :thumb
	b       branch_22428d2
@ 0x2242818

.thumb
branch_2242818: @ 2242818 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r1, #0xab
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r2, [r4, #0x13]
	mov     r1, #0x40
	mov     r3, r0
	orr     r1, r2
	strb    r1, [r4, #0x13]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x5d
	str     r1, [sp, #0x8]
	mov     r1, r0
	mov     r2, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242956
@ 0x2242866

.thumb
branch_2242866: @ 2242866 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, r4
	bl      Function_2242a58
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2242896
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2245620
.thumb
branch_2242896: @ 2242896 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224289c

.thumb
branch_224289c: @ 224289c :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, r4
	bl      Function_2242b54
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_22428cc
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2245620
.thumb
branch_22428cc: @ 22428cc :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x22428d2

.thumb
branch_22428d2: @ 22428d2 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22461a4
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224290c

.thumb
branch_224290c: @ 224290c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2242956
	mov     r0, r4
	bl      Function_2245464
	mov     r0, r4
	bl      Function_22451b4
	mov     r1, #0x5
	lsl     r1, r1, #6
	ldr     r0, [pc, #0x40] @ 0x2242968, (=Unknown_20f410c)
	ldr     r1, [r4, r1]
	mov     r2, #0x5d
	bl      AllocAndInitOverlayData
	str     r0, [r4, #0x4]
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x2
	add     sp, #0xc
	orr     r0, r1
	strb    r0, [r4, #0x13]
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224293e

.thumb
branch_224293e: @ 224293e :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2242956
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224294a

.thumb
branch_224294a: @ 224294a :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2242956
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
.thumb
branch_2242956: @ 2242956 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224295c

.word RAM_21bf67c @ 0x224295c
.word 0x5dc @ 0x2242960
.word 0x2246308 @ 0x2242964
.word Unknown_20f410c @ 0x2242968
.thumb
Function_224296c: @ 224296c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrb    r0, [r4, #0x11]
	mov     r1, r4
	add     r1, #0x50
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrb    r0, [r4, #0x11]
	mov     r1, r4
	add     r1, #0x50
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_201a9a4
	ldrb    r0, [r4, #0x11]
	mov     r1, r4
	add     r1, #0x50
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x11]
	ldrb    r0, [r4, #0x11]
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xae
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, #0x50
	str     r0, [sp, #0x14]
	ldrb    r5, [r4, #0x11]
	mov     r0, r4
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r5, r5, #4
	add     r1, r1, r5
	bl      Function_2244ff8
	ldrb    r2, [r4, #0x11]
	mov     r0, r4
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_2244ee8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	ldrb    r0, [r4, #0x11]
	lsl     r0, r0, #1
	add     r1, r4, r0
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldrh    r1, [r1, r0]
	sub     r0, #0x30
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	bl      Function_2245f50
	ldrb    r0, [r4, #0x11]
	lsl     r0, r0, #1
	add     r1, r4, r0
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldrh    r1, [r1, r0]
	sub     r0, #0x30
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_2245fac
	ldrb    r0, [r4, #0x11]
	lsl     r0, r0, #1
	add     r1, r4, r0
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldrh    r1, [r1, r0]
	sub     r0, #0x30
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	mov     r1, #0x6
	bl      Function_2245f90
	ldrb    r0, [r4, #0x11]
	mov     r2, #0x0
	lsl     r0, r0, #1
	add     r1, r4, r0
	mov     r0, #0xb
	lsl     r0, r0, #6
	strh    r2, [r1, r0]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2242a56


.align 2, 0


.thumb
Function_2242a58: @ 2242a58 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      Function_2245f44
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_2245fac
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x7
	bl      Function_2245f90
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	ldrb    r1, [r4, #0x11]
	lsl     r1, r1, #1
	add     r2, r4, r1
	mov     r1, #0xb
	lsl     r1, r1, #6
	strh    r0, [r2, r1]
	ldrb    r0, [r4, #0x11]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x11]
	ldrb    r0, [r4, #0x9]
	bl      Function_2245508
	ldrb    r1, [r4, #0x11]
	cmp     r1, r0
	bne     branch_2242ae8
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	add     sp, #0x18
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x2242ae8

.thumb
branch_2242ae8: @ 2242ae8 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22461a4
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xae
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, #0x50
	str     r0, [sp, #0x14]
	ldrb    r5, [r4, #0x11]
	mov     r0, r4
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r5, r5, #4
	add     r1, r1, r5
	bl      Function_2244ff8
	ldrb    r2, [r4, #0x11]
	mov     r0, r4
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_2244ee8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2242b54

.thumb
Function_2242b54: @ 2242b54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      Function_2245f50
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_2245fac
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x6
	bl      Function_2245f90
	ldrb    r0, [r5, #0x11]
	cmp     r0, #0x2
	bcc     branch_2242bf8
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	mov     r1, #0xb
	lsl     r1, r1, #6
	ldrh    r2, [r5, r1]
	cmp     r2, r0
	bne     branch_2242bf8
	add     r0, r1, #0x2
	ldrh    r0, [r5, r0]
	strh    r0, [r5, r1]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2007dc8
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	mov     r1, r0
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, r5
	mov     r3, #0x78
	str     r1, [sp, #0x4]
	bl      Function_22455c4
.thumb
branch_2242bf8: @ 2242bf8 :thumb
	ldrb    r0, [r5, #0x11]
	mov     r1, #0x0
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x11]
	ldrb    r0, [r5, #0x11]
	lsl     r0, r0, #1
	add     r2, r5, r0
	mov     r0, #0xb
	lsl     r0, r0, #6
	strh    r1, [r2, r0]
	sub     r0, #0x18
	ldr     r0, [r5, r0]
	bl      Function_22461a4
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldrb    r0, [r5, #0x9]
	bl      Function_2245508
	mov     r7, r0
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2242c4a
	mov     r6, r5
	add     r6, #0x50
.thumb
branch_2242c38: @ 2242c38 :thumb
	add     r0, r4, #0x2
	lsl     r0, r0, #4
	add     r0, r6, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2242c38
.thumb
branch_2242c4a: @ 2242c4a :thumb
	ldrb    r0, [r5, #0x11]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2242c9a
	mov     r0, r5
	str     r0, [sp, #0x18]
	add     r0, #0x50
	mov     r6, r5
	str     r0, [sp, #0x18]
.thumb
branch_2242c5c: @ 2242c5c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0xae
	add     r1, r4, #0x2
	lsl     r0, r0, #2
	lsl     r2, r1, #4
	ldr     r1, [sp, #0x18]
	ldr     r0, [r5, r0]
	add     r1, r1, r2
	mov     r2, #0xb
	str     r0, [sp, #0x14]
	lsl     r2, r2, #6
	ldrh    r2, [r6, r2]
	mov     r0, r5
	mov     r3, #0x0
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      Function_2244ff8
	ldrb    r0, [r5, #0x11]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, r0
	blt     branch_2242c5c
.thumb
branch_2242c9a: @ 2242c9a :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xae
	mov     r1, r5
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x50
	str     r0, [sp, #0x14]
	ldrb    r4, [r5, #0x11]
	mov     r0, r5
	.hword  0x1ca4 @ add r4, r4, #0x2
	lsl     r4, r4, #4
	add     r1, r1, r4
	bl      Function_2244ff8
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2242cea
	mov     r6, r5
	add     r6, #0x50
.thumb
branch_2242cda: @ 2242cda :thumb
	add     r0, r4, #0x2
	lsl     r0, r0, #4
	add     r0, r6, r0
	bl      Function_201a9a4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2242cda
.thumb
branch_2242cea: @ 2242cea :thumb
	ldrb    r2, [r5, #0x11]
	mov     r0, r5
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_2244ee8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2244d14
	strb    r0, [r5, #0x10]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2242d04

.thumb
Function_2242d04: @ 2242d04 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	bl      0x223aa50
	str     r0, [sp, #0xc]
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x7
	bls     branch_2242d1a
	b       branch_224313c
@ 0x2242d1a

.thumb
branch_2242d1a: @ 2242d1a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2242d26

Jumppoints_2242d26:
.hword branch_2242d36 - Jumppoints_2242d26 - 2
.hword branch_2242dd4 - Jumppoints_2242d26 - 2
.hword branch_2242e24 - Jumppoints_2242d26 - 2
.hword branch_2242ec0 - Jumppoints_2242d26 - 2
.hword branch_2242ee0 - Jumppoints_2242d26 - 2
.hword branch_2243020 - Jumppoints_2242d26 - 2
.hword branch_22430ee - Jumppoints_2242d26 - 2
.hword branch_2243128 - Jumppoints_2242d26 - 2
.thumb
branch_2242d36: @ 2242d36 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2246074
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x20
	orr     r0, r1
	strb    r0, [r4, #0x13]
	mov     r0, r4
	add     r0, #0x60
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0xd0
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0xe0
	bl      Function_201acf4
	ldrb    r0, [r4, #0x11]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_2242d88
	mov     r6, r4
	add     r6, #0x50
.thumb
branch_2242d6e: @ 2242d6e :thumb
	add     r0, r5, #0x2
	lsl     r7, r0, #4
	add     r0, r6, r7
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r6, r7
	bl      Function_201a9a4
	ldrb    r0, [r4, #0x11]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2242d6e
.thumb
branch_2242d88: @ 2242d88 :thumb
	mov     r0, r4
	add     r0, #0x50
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0x50
	bl      Function_201a9a4
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	ldr     r0, [pc, #0x2cc] @ 0x2243084, (=0xffff)
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x10
	mov     r3, r1
	bl      Function_200872c
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224313c
@ 0x2242dd4

.thumb
branch_2242dd4: @ 2242dd4 :thumb
	ldrb    r0, [r4, #0x19]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x2
	bcc     branch_2242e3c
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2244924
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2244be4
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224313c
@ 0x2242e24

.thumb
branch_2242e24: @ 2242e24 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20087b4
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245e48
	cmp     r0, #0x1
	bne     branch_2242e3e
.thumb
branch_2242e3c: @ 2242e3c :thumb
	b       branch_224313c
@ 0x2242e3e

.thumb
branch_2242e3e: @ 2242e3e :thumb
	mov     r0, r4
	bl      Function_2245a30
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2007dc8
	mov     r0, #0x2c
	str     r0, [sp, #0x14]
	mov     r0, #0x80
	str     r0, [sp, #0x18]
	mov     r0, #0xd4
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0xc]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_2242eb0
	add     r6, sp, #0x14
	str     r4, [sp, #0x10]
	mov     r7, r4
.thumb
branch_2242e68: @ 2242e68 :thumb
	mov     r1, #0xb
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r2, [sp, #0x10]
	lsl     r1, r1, #6
	ldrh    r1, [r2, r1]
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	lsl     r1, r5, #24
	ldr     r3, [r6, #0x0]
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_22455c4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
	ldr     r0, [sp, #0x10]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r5, r0
	blt     branch_2242e68
.thumb
branch_2242eb0: @ 2242eb0 :thumb
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2244924
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224313c
@ 0x2242ec0

.thumb
branch_2242ec0: @ 2242ec0 :thumb
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245e48
	cmp     r0, #0x1
	beq     branch_2242f7a
	mov     r0, r4
	bl      Function_2245a30
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224313c
@ 0x2242ee0

.thumb
branch_2242ee0: @ 2242ee0 :thumb
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x0
	bne     branch_2242f64
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2244c0c
	ldr     r0, [sp, #0xc]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2242f10
	mov     r7, #0x4b
	mov     r5, r4
	lsl     r7, r7, #2
.thumb
branch_2242efc: @ 2242efc :thumb
	ldr     r0, [r5, r7]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_2242efc
.thumb
branch_2242f10: @ 2242f10 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_2242f36
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x20
	bl      Function_22448f4
	b       branch_2242f50
@ 0x2242f36

.thumb
branch_2242f36: @ 2242f36 :thumb
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
.thumb
branch_2242f50: @ 2242f50 :thumb
	ldr     r0, [pc, #0x130] @ 0x2243084, (=0xffff)
	mov     r1, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_200872c
.thumb
branch_2242f64: @ 2242f64 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20087b4
	ldrb    r0, [r4, #0x19]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x15
	bcs     branch_2242f7c
.thumb
branch_2242f7a: @ 2242f7a :thumb
	b       branch_224313c
@ 0x2242f7c

.thumb
branch_2242f7c: @ 2242f7c :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_2242fa2
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x20
	bl      Function_22448f4
	b       branch_2242fbc
@ 0x2242fa2

.thumb
branch_2242fa2: @ 2242fa2 :thumb
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
.thumb
branch_2242fbc: @ 2242fbc :thumb
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x20
	bic     r1, r0
	strb    r1, [r4, #0x13]
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2242fda
	ldr     r0, [pc, #0xb8] @ 0x2243088, (=0x35b)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_22457c0
.thumb
branch_2242fda: @ 2242fda :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2244ee8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	mov     r0, r4
	bl      Function_2244e94
	mov     r1, #0x0
	ldr     r0, [pc, #0x94] @ 0x224308c, (=0x22462f4)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	mov     r1, #0x2
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2245fb8
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224313c
@ 0x2243020

.thumb
branch_2243020: @ 2243020 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r5, r0
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246080
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_224304c
	bcs     branch_2243090
	cmp     r5, #0x1
	bhi     branch_2243090
	cmp     r5, #0x0
	beq     branch_2243054
	cmp     r5, #0x1
	b       branch_2243090
@ 0x224304c

.thumb
branch_224304c: @ 224304c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_224313c
	b       branch_2243090
@ 0x2243054

.thumb
branch_2243054: @ 2243054 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224313c
@ 0x2243084

.word 0xffff @ 0x2243084
.word 0x35b @ 0x2243088
.word 0x22462f4 @ 0x224308c
.thumb
branch_2243090: @ 2243090 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2246074
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r1, #0xab
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r2, [r4, #0x11]
	add     r1, #0x14
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r4, #0x11]
	ldrb    r2, [r4, #0x11]
	lsl     r2, r2, #1
	add     r2, r4, r2
	strh    r0, [r2, r1]
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_22430e8
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2245620
.thumb
branch_22430e8: @ 22430e8 :thumb
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22430ee

.thumb
branch_22430ee: @ 22430ee :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_22430fe
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22430fe

.thumb
branch_22430fe: @ 22430fe :thumb
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2245620
	cmp     r0, #0x1
	bne     branch_224313c
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	bl      Function_20365f4
	mov     r0, #0xa4
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224313c
@ 0x2243128

.thumb
branch_2243128: @ 2243128 :thumb
	mov     r0, #0xa4
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_224313c
	bl      Function_20365f4
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224313c

.thumb
branch_224313c: @ 224313c :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2243142


.align 2, 0


.thumb
Function_2243144: @ 2243144 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	bl      0x223aa50
	mov     r7, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x4
	bls     branch_224315a
	b       branch_224339c
@ 0x224315a

.thumb
branch_224315a: @ 224315a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2243166

Jumppoints_2243166:
.hword branch_2243170 - Jumppoints_2243166 - 2
.hword branch_22431f0 - Jumppoints_2243166 - 2
.hword branch_2243272 - Jumppoints_2243166 - 2
.hword branch_22432d8 - Jumppoints_2243166 - 2
.hword branch_22432f8 - Jumppoints_2243166 - 2
.thumb
branch_2243170: @ 2243170 :thumb
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x20
	orr     r0, r1
	strb    r0, [r4, #0x13]
	mov     r0, r4
	add     r0, #0x60
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0xd0
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0xe0
	bl      Function_201acf4
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_22431b6
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x20
	bl      Function_22448f4
	b       branch_22431d0
@ 0x22431b6

.thumb
branch_22431b6: @ 22431b6 :thumb
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
.thumb
branch_22431d0: @ 22431d0 :thumb
	ldr     r0, [pc, #0x1d0] @ 0x22433a4, (=0xffff)
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x10
	mov     r3, r1
	bl      Function_200872c
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224339c
@ 0x22431f0

.thumb
branch_22431f0: @ 22431f0 :thumb
	ldrb    r0, [r4, #0x19]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x2
	bcc     branch_224328a
	mov     r6, #0x0
	cmp     r7, #0x0
	ble     branch_2243216
	mov     r5, r4
.thumb
branch_2243204: @ 2243204 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2007dc8
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r7
	blt     branch_2243204
.thumb
branch_2243216: @ 2243216 :thumb
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2244924
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_2243244
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x20
	bl      Function_22448f4
	b       branch_224325e
@ 0x2243244

.thumb
branch_2243244: @ 2243244 :thumb
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
.thumb
branch_224325e: @ 224325e :thumb
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2244be4
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224339c
@ 0x2243272

.thumb
branch_2243272: @ 2243272 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20087b4
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245e48
	cmp     r0, #0x1
	bne     branch_224328c
.thumb
branch_224328a: @ 224328a :thumb
	b       branch_224339c
@ 0x224328c

.thumb
branch_224328c: @ 224328c :thumb
	mov     r0, r4
	bl      Function_2245a30
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r1, r0
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, r4
	mov     r3, #0x78
	str     r1, [sp, #0x4]
	bl      Function_22455c4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2244924
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224339c
@ 0x22432d8

.thumb
branch_22432d8: @ 22432d8 :thumb
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245e48
	cmp     r0, #0x1
	beq     branch_224339c
	mov     r0, r4
	bl      Function_2245a30
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224339c
@ 0x22432f8

.thumb
branch_22432f8: @ 22432f8 :thumb
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x0
	bne     branch_2243342
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2244b90
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	ldr     r0, [pc, #0x74] @ 0x22433a4, (=0xffff)
	mov     r1, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_200872c
.thumb
branch_2243342: @ 2243342 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20087b4
	ldrb    r0, [r4, #0x19]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x15
	bcc     branch_224339c
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x20
	bic     r1, r0
	strb    r1, [r4, #0x13]
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2243390
	ldr     r0, [pc, #0x20] @ 0x22433a8, (=0x35b)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_22457c0
.thumb
branch_2243390: @ 2243390 :thumb
	mov     r0, r4
	bl      Function_22433ac
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224339c

.thumb
branch_224339c: @ 224339c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22433a2


.align 2


.word 0xffff @ 0x22433a4
.word 0x35b @ 0x22433a8
.thumb
Function_22433ac: @ 22433ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	bl      0x223aa50
	ldrb    r0, [r5, #0x11]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2243402
	mov     r7, r5
	mov     r6, r5
	add     r7, #0x50
.thumb
branch_22433c6: @ 22433c6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0xb
	str     r0, [sp, #0x14]
	lsl     r2, r2, #6
	ldrh    r2, [r6, r2]
	add     r1, r4, #0x2
	lsl     r1, r1, #4
	lsl     r2, r2, #24
	mov     r0, r5
	add     r1, r7, r1
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2244ff8
	ldrb    r0, [r5, #0x11]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, r0
	blt     branch_22433c6
.thumb
branch_2243402: @ 2243402 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xae
	mov     r1, r5
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x50
	str     r0, [sp, #0x14]
	ldrb    r4, [r5, #0x11]
	mov     r0, r5
	.hword  0x1ca4 @ add r4, r4, #0x2
	lsl     r4, r4, #4
	add     r1, r1, r4
	bl      Function_2244ff8
	mov     r2, #0x0
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x50
	mov     r3, r2
	str     r2, [sp, #0x0]
	bl      Function_2244f0c
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_22461a4
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      Function_2245f50
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_2245fac
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x6
	bl      Function_2245f90
	ldrb    r2, [r5, #0x11]
	mov     r0, r5
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_2244ee8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2244d14
	strb    r0, [r5, #0x10]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22434ba


.align 2, 0


.thumb
Function_22434bc: @ 22434bc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x5
	bls     branch_22434ca
	b       branch_2243722
@ 0x22434ca

.thumb
branch_22434ca: @ 22434ca :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22434d6

Jumppoints_22434d6:
.hword branch_22434e2 - Jumppoints_22434d6 - 2
.hword branch_2243502 - Jumppoints_22434d6 - 2
.hword branch_22435be - Jumppoints_22434d6 - 2
.hword branch_22436d8 - Jumppoints_22434d6 - 2
.hword branch_224370a - Jumppoints_22434d6 - 2
.hword branch_2243716 - Jumppoints_22434d6 - 2
.thumb
branch_22434e2: @ 22434e2 :thumb
	mov     r1, #0x0
	bl      Function_2245528
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_22434f4
	mov     r0, #0x1
	b       branch_22434f6
@ 0x22434f4

.thumb
branch_22434f4: @ 22434f4 :thumb
	mov     r0, #0x2
.thumb
branch_22434f6: @ 22434f6 :thumb
	strb    r0, [r4, #0x8]
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x2
	bic     r1, r0
	strb    r1, [r4, #0x13]
	b       branch_2243722
@ 0x2243502

.thumb
branch_2243502: @ 2243502 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246080
	ldr     r0, [pc, #0x218] @ 0x2243728, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xf0
	tst     r0, r1
	beq     branch_224353a
	ldr     r0, [pc, #0x214] @ 0x224372c, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r2, r0
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	ldrb    r1, [r4, #0x11]
	mov     r0, r4
	bl      Function_22453f8
.thumb
branch_224353a: @ 224353a :thumb
	ldr     r0, [pc, #0x1ec] @ 0x2243728, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22435a4
	ldr     r0, [pc, #0x1e4] @ 0x224372c, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	ldrb    r1, [r4, #0x1a]
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r1, r0
	bne     branch_224356a
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2245528
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224356a

.thumb
branch_224356a: @ 224356a :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22461a4
	mov     r0, r4
	bl      Function_2244df0
	mov     r1, #0x0
	ldr     r0, [pc, #0x1b0] @ 0x2243730, (=0x2246308)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	mov     r1, #0x3
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2245fb8
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2243722
@ 0x22435a4

.thumb
branch_22435a4: @ 22435a4 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22435f4
	ldr     r0, [pc, #0x180] @ 0x224372c, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2245528
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22435be

.thumb
branch_22435be: @ 22435be :thumb
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r5, r0
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246080
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_22435ee
	bcs     branch_2243668
	cmp     r5, #0x4
	bhi     branch_2243668
	cmp     r5, #0x0
	beq     branch_22435f8
	cmp     r5, #0x2
	beq     branch_2243668
	cmp     r5, #0x4
	beq     branch_2243646
	b       branch_2243668
@ 0x22435ee

.thumb
branch_22435ee: @ 22435ee :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	bne     branch_22435f6
.thumb
branch_22435f4: @ 22435f4 :thumb
	b       branch_2243722
@ 0x22435f6

.thumb
branch_22435f6: @ 22435f6 :thumb
	b       branch_2243668
@ 0x22435f8

.thumb
branch_22435f8: @ 22435f8 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r1, #0xab
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r2, [r4, #0x13]
	mov     r1, #0x40
	mov     r3, r0
	orr     r1, r2
	strb    r1, [r4, #0x13]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x5d
	str     r1, [sp, #0x8]
	mov     r1, r0
	mov     r2, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2243722
@ 0x2243646

.thumb
branch_2243646: @ 2243646 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, r4
	bl      Function_2243738
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2243668

.thumb
branch_2243668: @ 2243668 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22461a4
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, r4
	ldr     r0, [r4, #0x4c]
	add     r1, #0xc0
	bl      Function_2246260
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
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x13
	bl      Function_2244c60
	strb    r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_201a9a4
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2243722
@ 0x22436d8

.thumb
branch_22436d8: @ 22436d8 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2243722
	mov     r0, r4
	bl      Function_2245464
	mov     r0, r4
	bl      Function_22451b4
	mov     r1, #0x5
	lsl     r1, r1, #6
	ldr     r0, [pc, #0x40] @ 0x2243734, (=Unknown_20f410c)
	ldr     r1, [r4, r1]
	mov     r2, #0x5d
	bl      AllocAndInitOverlayData
	str     r0, [r4, #0x4]
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x2
	add     sp, #0x18
	orr     r0, r1
	strb    r0, [r4, #0x13]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224370a

.thumb
branch_224370a: @ 224370a :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2243722
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2243716

.thumb
branch_2243716: @ 2243716 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2243722
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
.thumb
branch_2243722: @ 2243722 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2243728

.word RAM_21bf67c @ 0x2243728
.word 0x5dc @ 0x224372c
.word 0x2246308 @ 0x2243730
.word Unknown_20f410c @ 0x2243734
.thumb
Function_2243738: @ 2243738 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      Function_2245f44
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_2245fac
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x6
	bl      Function_2245f90
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xae
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, #0x50
	str     r0, [sp, #0x14]
	ldrb    r5, [r4, #0x11]
	mov     r0, r4
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r5, r5, #4
	add     r1, r1, r5
	bl      Function_2244ff8
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	ldrb    r1, [r4, #0x11]
	lsl     r1, r1, #1
	add     r2, r4, r1
	mov     r1, #0xb
	lsl     r1, r1, #6
	strh    r0, [r2, r1]
	ldrb    r0, [r4, #0x11]
	sub     r1, #0x14
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x11]
	ldr     r0, [r4, r1]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xaa
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldrb    r2, [r4, #0x13]
	mov     r0, #0x4
	orr     r0, r2
	strb    r0, [r4, #0x13]
	mov     r0, r4
	add     r0, #0x70
	bl      Function_201ada4_ClearTextBox
	add     r4, #0x70
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2243818

.thumb
Function_2243818: @ 2243818 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrb    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2243830
	cmp     r0, #0x1
	beq     branch_22438a4
	cmp     r0, #0x2
	bne     branch_224382e
	b       branch_224395a
@ 0x224382e

.thumb
branch_224382e: @ 224382e :thumb
	b       branch_2243960
@ 0x2243830

.thumb
branch_2243830: @ 2243830 :thumb
	mov     r0, r5
	add     r0, #0x70
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrb    r0, [r5, #0x11]
	mov     r1, r5
	add     r1, #0x50
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_201a9a4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2007dc8
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_2244d14
	strb    r0, [r5, #0x10]
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2246074
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_22461a4
	mov     r0, r5
	bl      Function_2244e94
	mov     r1, #0x0
	ldr     r0, [pc, #0xe8] @ 0x2243968, (=0x22462f4)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	mov     r1, #0x2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2245fb8
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_2243960
@ 0x22438a4

.thumb
branch_22438a4: @ 22438a4 :thumb
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r4, r0
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2246080
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bhi     branch_22438d0
	bcs     branch_2243924
	cmp     r4, #0x1
	bhi     branch_2243924
	cmp     r4, #0x0
	beq     branch_22438d8
	cmp     r4, #0x1
	b       branch_2243924
@ 0x22438d0

.thumb
branch_22438d0: @ 22438d0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2243960
	b       branch_2243924
@ 0x22438d8

.thumb
branch_22438d8: @ 22438d8 :thumb
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldrb    r1, [r5, #0x13]
	mov     r0, #0x8
	bic     r1, r0
	strb    r1, [r5, #0x13]
	ldrb    r0, [r5, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_224391c
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2244d14
	strb    r0, [r5, #0x10]
.thumb
branch_224391c: @ 224391c :thumb
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_2243960
@ 0x2243924

.thumb
branch_2243924: @ 2243924 :thumb
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_224396c
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_2243960
@ 0x224395a

.thumb
branch_224395a: @ 224395a :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x2243960

.thumb
branch_2243960: @ 2243960 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2243966


.align 2


.word 0x22462f4 @ 0x2243968
.thumb
Function_224396c: @ 224396c :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22461c0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xae
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, #0x70
	str     r0, [sp, #0x14]
	mov     r0, r4
	bl      Function_2244ff8
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r1, r0
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x78
	bl      Function_22455c4
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2246074
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22461a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2245528
	mov     r1, r4
	ldr     r0, [r4, #0x4c]
	add     r1, #0xc0
	bl      Function_2246260
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
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x13
	bl      Function_2244c60
	strb    r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_201a9a4
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2243a3a


.align 2, 0


.thumb
Function_2243a3c: @ 2243a3c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x3
	bls     branch_2243a4a
	b       branch_2243cfe
@ 0x2243a4a

.thumb
branch_2243a4a: @ 2243a4a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2243a56

Jumppoints_2243a56:
.hword branch_2243a5e - Jumppoints_2243a56 - 2
.hword branch_2243b58 - Jumppoints_2243a56 - 2
.hword branch_2243c6a - Jumppoints_2243a56 - 2
.hword branch_2243cf8 - Jumppoints_2243a56 - 2
.thumb
branch_2243a5e: @ 2243a5e :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x4c]
	add     r1, #0xc0
	bl      Function_2246260
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
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x17
	bl      Function_2244c60
	strb    r0, [r4, #0x10]
	mov     r0, #0x11
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	mov     r1, r4
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x18
	bl      Function_2244cc0
	strb    r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_201a9a4
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_2243ae2
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x238] @ 0x2243d04, (=0x2246350)
	mov     r2, #0x3
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x238] @ 0x2243d08, (=0x22462d4)
	mov     r3, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x1b]
	add     r0, r4, r0
	bl      Function_2245fb8
	b       branch_2243afe
@ 0x2243ae2

.thumb
branch_2243ae2: @ 2243ae2 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x224] @ 0x2243d0c, (=0x224637c)
	mov     r2, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x220] @ 0x2243d10, (=0x22462e4)
	mov     r3, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x1b]
	add     r0, r4, r0
	bl      Function_2245fb8
.thumb
branch_2243afe: @ 2243afe :thumb
	mov     r1, #0xaa
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r3, #0x0
	mov     r2, r0
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0xaf
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, #0x70
	str     r0, [sp, #0x14]
	mov     r0, r4
	bl      Function_2244ff8
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_224628c
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2243cfe
@ 0x2243b58

.thumb
branch_2243b58: @ 2243b58 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246080
	ldr     r0, [pc, #0x1b0] @ 0x2243d14, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc0
	tst     r0, r1
	beq     branch_2243b90
	ldr     r0, [pc, #0x1a8] @ 0x2243d18, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r2, r0
	mov     r0, #0xaf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      Function_22453f8
.thumb
branch_2243b90: @ 2243b90 :thumb
	ldr     r0, [pc, #0x180] @ 0x2243d14, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_2243bbe
	ldr     r0, [pc, #0x17c] @ 0x2243d18, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	mov     r2, r0
	mov     r0, #0xaf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      Function_22453f8
.thumb
branch_2243bbe: @ 2243bbe :thumb
	ldr     r0, [pc, #0x154] @ 0x2243d14, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2243c50
	ldr     r0, [pc, #0x14c] @ 0x2243d18, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	ldrb    r1, [r4, #0x1b]
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r1, r0
	bne     branch_2243bee
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2245528
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2243bee

.thumb
branch_2243bee: @ 2243bee :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	ldrb    r1, [r4, #0x1b]
	.hword  0x1e89 @ sub r1, r1, #0x2
	cmp     r1, r0
	bne     branch_2243c0c
	mov     r0, r4
	bl      Function_2243d20
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2243c0c

.thumb
branch_2243c0c: @ 2243c0c :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22461a4
	mov     r0, r4
	bl      Function_2244e94
	mov     r1, #0x0
	ldr     r0, [pc, #0xf8] @ 0x2243d1c, (=0x22462f4)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	mov     r1, #0x2
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2245fb8
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0xe
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2243cfe
@ 0x2243c50

.thumb
branch_2243c50: @ 2243c50 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2243cfe
	ldr     r0, [pc, #0xc0] @ 0x2243d18, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2245528
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2243c6a

.thumb
branch_2243c6a: @ 2243c6a :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r5, r0
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246080
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bhi     branch_2243c96
	bcs     branch_2243cd6
	cmp     r5, #0x1
	bhi     branch_2243cd6
	cmp     r5, #0x0
	beq     branch_2243c9e
	cmp     r5, #0x1
	b       branch_2243cd6
@ 0x2243c96

.thumb
branch_2243c96: @ 2243c96 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_2243cfe
	b       branch_2243cd6
@ 0x2243c9e

.thumb
branch_2243c9e: @ 2243c9e :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, r4
	bl      Function_2243d84
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2243cce
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
.thumb
branch_2243cce: @ 2243cce :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2243cfe
@ 0x2243cd6

.thumb
branch_2243cd6: @ 2243cd6 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, r4
	bl      Function_2243de4
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2243cfe
@ 0x2243cf8

.thumb
branch_2243cf8: @ 2243cf8 :thumb
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2243cfe

.thumb
branch_2243cfe: @ 2243cfe :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2243d04

.word 0x2246350 @ 0x2243d04
.word 0x22462d4 @ 0x2243d08
.word 0x224637c @ 0x2243d0c
.word 0x22462e4 @ 0x2243d10
.word RAM_21bf67c @ 0x2243d14
.word 0x5dc @ 0x2243d18
.word 0x22462f4 @ 0x2243d1c
.thumb
Function_2243d20: @ 2243d20 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xaa
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldrb    r2, [r4, #0x13]
	mov     r0, #0x4
	bic     r2, r0
	mov     r0, r4
	add     r0, #0x70
	strb    r2, [r4, #0x13]
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0x70
	bl      Function_201a9a4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2007dc8
	mov     r0, r4
	add     r0, #0xc0
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0xc0
	mov     r1, #0x1
	bl      Function_200e084
	mov     r0, r4
	add     r0, #0xc0
	bl      Function_201ad10
	ldrb    r0, [r4, #0x11]
	mov     r1, #0x0
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x11]
	mov     r0, #0xb
	lsl     r0, r0, #6
	strh    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2243d84

.thumb
Function_2243d84: @ 2243d84 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x8
	orr     r0, r1
	strb    r0, [r4, #0x13]
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	ldrb    r1, [r4, #0x11]
	lsl     r1, r1, #1
	add     r2, r4, r1
	mov     r1, #0xb
	lsl     r1, r1, #6
	strh    r0, [r2, r1]
	ldrb    r0, [r4, #0x11]
	sub     r1, #0x14
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x11]
	ldr     r0, [r4, r1]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_2246074
	mov     r0, r4
	add     r0, #0x70
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0x70
	bl      Function_201a9a4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2007dc8
	pop     {r4,pc}
@ 0x2243de2


.align 2, 0


.thumb
Function_2243de4: @ 2243de4 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_22461a4
	mov     r1, r4
	ldr     r0, [r4, #0x4c]
	add     r1, #0xc0
	bl      Function_2246260
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
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x17
	bl      Function_2244c60
	strb    r0, [r4, #0x10]
	mov     r0, #0x11
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	mov     r1, r4
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x18
	bl      Function_2244cc0
	strb    r0, [r4, #0x10]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_224628c
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	add     r4, #0xc0
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2243e82


.align 2, 0


.thumb
Function_2243e84: @ 2243e84 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrb    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2243e9c
	cmp     r0, #0x1
	beq     branch_2243f10
	cmp     r0, #0x2
	bne     branch_2243e9a
	b       branch_2243fcc
@ 0x2243e9a

.thumb
branch_2243e9a: @ 2243e9a :thumb
	b       branch_2243fd2
@ 0x2243e9c

.thumb
branch_2243e9c: @ 2243e9c :thumb
	mov     r0, r5
	add     r0, #0x70
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	add     r0, #0x70
	bl      Function_201a9a4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2007dc8
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xa0
	bl      Function_224628c
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_2244d14
	strb    r0, [r5, #0x10]
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2246074
	mov     r0, r5
	bl      Function_2244e94
	mov     r1, #0x0
	ldr     r0, [pc, #0xec] @ 0x2243fd8, (=0x22462f4)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	mov     r1, #0x2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2245fb8
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_2243fd2
@ 0x2243f10

.thumb
branch_2243f10: @ 2243f10 :thumb
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r4, r0
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2246080
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bhi     branch_2243f3c
	bcs     branch_2243f90
	cmp     r4, #0x1
	bhi     branch_2243f90
	cmp     r4, #0x0
	beq     branch_2243f44
	cmp     r4, #0x1
	b       branch_2243f90
@ 0x2243f3c

.thumb
branch_2243f3c: @ 2243f3c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2243fd2
	b       branch_2243f90
@ 0x2243f44

.thumb
branch_2243f44: @ 2243f44 :thumb
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldrb    r1, [r5, #0x13]
	mov     r0, #0x8
	bic     r1, r0
	strb    r1, [r5, #0x13]
	ldrb    r0, [r5, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_2243f88
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2244d14
	strb    r0, [r5, #0x10]
.thumb
branch_2243f88: @ 2243f88 :thumb
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_2243fd2
@ 0x2243f90

.thumb
branch_2243f90: @ 2243f90 :thumb
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2246060
	mov     r0, #0xaa
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_2243fdc
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_2243fd2
@ 0x2243fcc

.thumb
branch_2243fcc: @ 2243fcc :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x2243fd2

.thumb
branch_2243fd2: @ 2243fd2 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2243fd8

.word 0x22462f4 @ 0x2243fd8
.thumb
Function_2243fdc: @ 2243fdc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0xaf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, r4
	mov     r3, #0x78
	str     r1, [sp, #0x4]
	bl      Function_22455c4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2245528
	add     sp, #0x8
	pop     {r4,pc}
@ 0x224400c

.thumb
Function_224400c: @ 224400c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	bl      0x223aa50
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x6
	bhi     branch_22440ca
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224402a

Jumppoints_224402a:
.hword branch_2244038 - Jumppoints_224402a - 2
.hword branch_22440be - Jumppoints_224402a - 2
.hword branch_224410c - Jumppoints_224402a - 2
.hword branch_2244160 - Jumppoints_224402a - 2
.hword branch_22441f6 - Jumppoints_224402a - 2
.hword branch_2244248 - Jumppoints_224402a - 2
.hword branch_2244268 - Jumppoints_224402a - 2
.thumb
branch_2244038: @ 2244038 :thumb
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x20
	orr     r0, r1
	strb    r0, [r4, #0x13]
	mov     r0, r4
	add     r0, #0x60
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0xd0
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0xe0
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0x50
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0x50
	bl      Function_201a9a4
	mov     r0, r4
	add     r0, #0xa0
	mov     r1, #0x1
	bl      Function_200e084
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_201ad10
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2246244
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	ldr     r0, [pc, #0x2ac] @ 0x224434c, (=0xffff)
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x10
	mov     r3, r1
	bl      Function_200872c
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2244346
@ 0x22440be

.thumb
branch_22440be: @ 22440be :thumb
	ldrb    r0, [r4, #0x19]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x2
	bcs     branch_22440cc
.thumb
branch_22440ca: @ 22440ca :thumb
	b       branch_2244346
@ 0x22440cc

.thumb
branch_22440cc: @ 22440cc :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2007dc8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2244924
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2244be4
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2244346
@ 0x224410c

.thumb
branch_224410c: @ 224410c :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20087b4
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245e48
	cmp     r0, #0x1
	beq     branch_2244200
	mov     r0, r4
	bl      Function_2245a30
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2244aa8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2244a60
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2244a18
	ldr     r0, [r4, #0x4c]
	ldr     r3, [r4, #0xc]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_2019184
	ldr     r0, [pc, #0x200] @ 0x2244350, (=0x612)
	bl      Function_2005748
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2244346
@ 0x2244160

.thumb
branch_2244160: @ 2244160 :thumb
	mov     r0, r4
	bl      Function_2244830
	cmp     r0, #0x1
	bne     branch_2244200
	ldr     r0, [pc, #0x1e4] @ 0x2244350, (=0x612)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x1e0] @ 0x2244354, (=0x679)
	bl      Function_2005748
	mov     r0, #0x8
	str     r0, [r4, #0x14]
	ldrb    r0, [r4, #0x12]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22441a6
	mov     r5, r4
	mov     r7, r6
.thumb
branch_2244188: @ 2244188 :thumb
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2245ea8
	mov     r1, #0x29
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	str     r7, [r5, r0]
	ldrb    r0, [r4, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_2244188
.thumb
branch_22441a6: @ 22441a6 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_22441c0
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x2
	bne     branch_22441bc
	mov     r0, #0x4
	strb    r0, [r4, #0x12]
	b       branch_22441c0
@ 0x22441bc

.thumb
branch_22441bc: @ 22441bc :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x12]
.thumb
branch_22441c0: @ 22441c0 :thumb
	mov     r0, r4
	bl      Function_224260c
	ldrb    r0, [r4, #0x12]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22441e4
	mov     r7, #0x29
	mov     r5, r4
	lsl     r7, r7, #4
.thumb
branch_22441d4: @ 22441d4 :thumb
	ldr     r0, [r5, r7]
	bl      Function_2245f5c
	ldrb    r0, [r4, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_22441d4
.thumb
branch_22441e4: @ 22441e4 :thumb
	ldr     r0, [pc, #0x168] @ 0x2244350, (=0x612)
	bl      Function_2005748
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2244346
@ 0x22441f6

.thumb
branch_22441f6: @ 22441f6 :thumb
	mov     r0, r4
	bl      Function_2244780
	cmp     r0, #0x1
	beq     branch_2244202
.thumb
branch_2244200: @ 2244200 :thumb
	b       branch_2244346
@ 0x2244202

.thumb
branch_2244202: @ 2244202 :thumb
	ldr     r0, [pc, #0x14c] @ 0x2244350, (=0x612)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x148] @ 0x2244354, (=0x679)
	bl      Function_2005748
	ldrb    r0, [r4, #0x12]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2244230
	mov     r7, #0x29
	mov     r5, r4
	lsl     r7, r7, #4
.thumb
branch_224421e: @ 224421e :thumb
	ldr     r0, [r5, r7]
	mov     r1, #0xa
	bl      Function_2245f90
	ldrb    r0, [r4, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_224421e
.thumb
branch_2244230: @ 2244230 :thumb
	mov     r0, #0x8
	str     r0, [r4, #0x14]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2244924
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2244346
@ 0x2244248

.thumb
branch_2244248: @ 2244248 :thumb
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245e48
	cmp     r0, #0x1
	beq     branch_2244346
	mov     r0, r4
	bl      Function_2245a30
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2244346
@ 0x2244268

.thumb
branch_2244268: @ 2244268 :thumb
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x0
	bne     branch_22442e8
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2244b90
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_224428e
	mov     r0, r4
	bl      Function_224266c
	b       branch_22442ac
@ 0x224428e

.thumb
branch_224428e: @ 224428e :thumb
	mov     r0, #0xaf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, r4
	mov     r3, #0x78
	str     r1, [sp, #0x4]
	bl      Function_22455c4
.thumb
branch_22442ac: @ 22442ac :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [pc, #0x90] @ 0x224434c, (=0xffff)
	mov     r1, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_200872c
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
.thumb
branch_22442e8: @ 22442e8 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20087b4
	ldrb    r0, [r4, #0x19]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x15
	bcc     branch_2244346
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_2245538
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x15
	bl      Function_22448f4
	mov     r0, r4
	bl      Function_2245a64
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x20
	bic     r1, r0
	strb    r1, [r4, #0x13]
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_224433c
	ldr     r0, [pc, #0x24] @ 0x2244358, (=0x35b)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_22457c0
.thumb
branch_224433c: @ 224433c :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2244346

.thumb
branch_2244346: @ 2244346 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224434c

.word 0xffff @ 0x224434c
.word 0x612 @ 0x2244350
.word 0x679 @ 0x2244354
.word 0x35b @ 0x2244358
.thumb
Function_224435c: @ 224435c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_224436c
	cmp     r1, #0x1
	beq     branch_2244384
	b       branch_2244394
@ 0x224436c

.thumb
branch_224436c: @ 224436c :thumb
	ldrb    r2, [r4, #0x13]
	mov     r1, #0xa
	lsl     r2, r2, #28
	lsr     r2, r2, #31
	bl      Function_2245620
	cmp     r0, #0x1
	bne     branch_2244394
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2244394
@ 0x2244384

.thumb
branch_2244384: @ 2244384 :thumb
	ldr     r0, [pc, #0x10] @ 0x2244398, (=0x35a)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x2
	bcc     branch_2244394
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2244394

.thumb
branch_2244394: @ 2244394 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244398

.word 0x35a @ 0x2244398
.thumb
Function_224439c: @ 224439c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_22443ac
	cmp     r1, #0x1
	beq     branch_22443c6
	b       branch_22443d8
@ 0x22443ac

.thumb
branch_22443ac: @ 22443ac :thumb
	mov     r1, #0xf
	bl      Function_2244d14
	strb    r0, [r4, #0x10]
	bl      Function_20365f4
	mov     r0, #0xa5
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22443d8
@ 0x22443c6

.thumb
branch_22443c6: @ 22443c6 :thumb
	mov     r0, #0xa5
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_22443d8
	bl      Function_20365f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22443d8

.thumb
branch_22443d8: @ 22443d8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22443dc

.thumb
Function_22443dc: @ 22443dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_22443ee
	cmp     r0, #0x1
	beq     branch_224440e
	b       branch_224441c
@ 0x22443ee

.thumb
branch_22443ee: @ 22443ee :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_224441c
@ 0x224440e

.thumb
branch_224440e: @ 224440e :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_224441c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x224441c

.thumb
branch_224441c: @ 224441c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2244422


.align 2, 0


.thumb
Function_2244424: @ 2244424 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2244436
	cmp     r0, #0x1
	beq     branch_2244500
	b       branch_2244514
@ 0x2244436

.thumb
branch_2244436: @ 2244436 :thumb
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2244468
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      Function_2245a98
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2246060
	mov     r0, #0xab
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_2244468: @ 2244468 :thumb
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      0x222e5d0
	mov     r1, #0xae
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x8
	ldrh    r1, [r4, r1]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      GetAdrOfPkmnInParty
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2244f00
	mov     r1, #0xaf
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	.hword  0x1d89 @ add r1, r1, #0x6
	ldrh    r1, [r4, r1]
	bl      GetAdrOfPkmnInParty
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2244f00
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_224628c
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, r4
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xa0
	mov     r2, #0x10
	bl      Function_2244c60
	strb    r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_201a9a4
	mov     r0, #0x50
	strb    r0, [r4, #0x19]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2244514
@ 0x2244500

.thumb
branch_2244500: @ 2244500 :thumb
	ldrb    r0, [r4, #0x10]
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2244514
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2244514

.thumb
branch_2244514: @ 2244514 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4,pc}
@ 0x224451a


.align 2, 0


.thumb
Function_224451c: @ 224451c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2244558
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2008a94
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224453e
	bl      Function_2003694_LoadSomePalettes
.thumb
branch_224453e: @ 224453e :thumb
	ldr     r0, [r4, #0x4c]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r3, [pc, #0xc] @ 0x224455c, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x2244560, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
.thumb
branch_2244558: @ 2244558 :thumb
	pop     {r4,pc}
@ 0x224455a


.align 2


.word 0x27e0000 @ 0x224455c
.word 0x3ff8 @ 0x2244560
.thumb
Function_2244564: @ 2244564 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x2244580, (=0x224641c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_224456e: @ 224456e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224456e
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2244580

.word 0x224641c @ 0x2244580
.thumb
Function_2244584: @ 2244584 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	ldr     r5, [pc, #0xd4] @ 0x2244660, (=0x2246330)
	add     r3, sp, #0x70
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xc4] @ 0x2244664, (=0x22463e4)
	add     r3, sp, #0x54
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
	mov     r3, #0x5d
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0x94] @ 0x2244668, (=0x22463ac)
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
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x70] @ 0x224466c, (=0x2246400)
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
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r5, [pc, #0x4c] @ 0x2244670, (=0x22463c8)
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
	ldr     r1, [pc, #0x28] @ 0x2244674, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	strh    r2, [r1, #0x0]
	mov     r1, r0
	bl      Function_201ff0c
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x2244660

.word 0x2246330 @ 0x2244660
.word 0x22463e4 @ 0x2244664
.word 0x22463ac @ 0x2244668
.word 0x2246400 @ 0x224466c
.word 0x22463c8 @ 0x2244670
.word 0x4000008 @ 0x2244674
.thumb
Function_2244678: @ 2244678 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2244564
	ldr     r0, [r4, #0x4c]
	bl      Function_2244584
	mov     r0, #0x5d
	bl      MallocFill120
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	lsl     r2, r1, #8
	mov     r3, #0x5d
	bl      Function_2002f70
	mov     r2, #0x12
	lsl     r2, r2, #4
	ldr     r0, [r4, r2]
	mov     r1, #0x0
	add     r2, #0xe0
	mov     r3, #0x5d
	bl      Function_2002f70
	bl      Function_2244af8
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	bne     branch_22446ec
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2244aa8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2244a60
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2244a18
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	b       branch_2244720
@ 0x22446ec

.thumb
branch_22446ec: @ 22446ec :thumb
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_22449a4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2244a60
	ldr     r0, [r4, #0x4c]
	ldr     r3, [r4, #0xc]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_2019184
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
.thumb
branch_2244720: @ 2244720 :thumb
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2244b30
	pop     {r4,pc}
@ 0x224472a


.align 2, 0


.thumb
Function_224472c: @ 224472c :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x2244738, (=0x2245aad)
	add     r0, r0, r1
	bx      r3
@ 0x2244736


.align 2


.word 0x2245aad @ 0x2244738
.thumb
Function_224473c: @ 224473c :thumb
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
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2244778

.thumb
Function_2244778: @ 2244778 :thumb
	mov     r3, #0x0
	strb    r3, [r0, #0x8]
	str     r2, [r1, #0x0]
	bx      lr
@ 0x2244780

.thumb
Function_2244780: @ 2244780 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4c]
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x8
	bl      Function_2019184
	ldr     r0, [r5, #0x4c]
	mov     r1, #0x2
	bl      Function_20192ec
	str     r0, [r5, #0xc]
	ldrb    r0, [r5, #0x12]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2244816
	mov     r4, r5
.thumb
branch_22447aa: @ 22447aa :thumb
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245f2c
	mov     r7, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245f88
	ldr     r2, [r7, #0x0]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	sub     r1, #0x8
	cmp     r1, r0
	bgt     branch_22447fa
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245f88
	mov     r7, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2245f8c
	mov     r2, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, r7
	bl      Function_2245f14
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_224480c
@ 0x22447fa

.thumb
branch_22447fa: @ 22447fa :thumb
	mov     r1, #0x29
	lsl     r1, r1, #4
	mov     r2, #0x7
	ldr     r1, [r4, r1]
	add     r0, sp, #0x4
	mvn     r2, r2
	mov     r3, #0x0
	bl      Function_2245ec8
.thumb
branch_224480c: @ 224480c :thumb
	ldrb    r0, [r5, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_22447aa
.thumb
branch_2244816: @ 2244816 :thumb
	mov     r0, r5
	bl      Function_22448bc
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_2244828
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2244828

.thumb
branch_2244828: @ 2244828 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224482e


.align 2, 0


.thumb
Function_2244830: @ 2244830 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	ldr     r0, [r6, #0x4c]
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x8
	mov     r4, #0x0
	bl      Function_2019184
	ldr     r0, [r6, #0x4c]
	mov     r1, #0x2
	bl      Function_20192ec
	str     r0, [r6, #0xc]
	ldrb    r0, [r6, #0x12]
	mov     r7, r4
	cmp     r0, #0x0
	ble     branch_22448a2
	mov     r5, r6
.thumb
branch_2244858: @ 2244858 :thumb
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2245f2c
	ldr     r1, [r0, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	mov     r0, #0x17
	sub     r1, #0x8
	mvn     r0, r0
	cmp     r1, r0
	bge     branch_2244886
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2245ebc
	.hword  0x1c64 @ add r4, r4, #0x1
	b       branch_2244898
@ 0x2244886

.thumb
branch_2244886: @ 2244886 :thumb
	mov     r1, #0x29
	lsl     r1, r1, #4
	mov     r2, #0x7
	ldr     r1, [r5, r1]
	add     r0, sp, #0x0
	mvn     r2, r2
	mov     r3, #0x0
	bl      Function_2245ec8
.thumb
branch_2244898: @ 2244898 :thumb
	ldrb    r0, [r6, #0x12]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, r0
	blt     branch_2244858
.thumb
branch_22448a2: @ 22448a2 :thumb
	mov     r0, r6
	bl      Function_22448bc
	ldrb    r0, [r6, #0x12]
	cmp     r4, r0
	bne     branch_22448b4
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22448b4

.thumb
branch_22448b4: @ 22448b4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22448ba


.align 2, 0


.thumb
Function_22448bc: @ 22448bc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r1, [r4, #0x14]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_22448ea
	lsr     r0, r1, #2
	cmp     r0, #0x4
	bcc     branch_22448d4
	mov     r0, #0x0
	str     r0, [r4, #0x14]
.thumb
branch_22448d4: @ 22448d4 :thumb
	mov     r3, #0x20
	str     r3, [sp, #0x0]
	ldr     r2, [r4, #0x14]
	mov     r0, r4
	lsr     r2, r2, #2
	.hword  0x1d92 @ add r2, r2, #0x6
	lsl     r2, r2, #24
	mov     r1, #0x1
	lsr     r2, r2, #24
	bl      Function_22448f4
.thumb
branch_22448ea: @ 22448ea :thumb
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22448f4

.thumb
Function_22448f4: @ 22448f4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	str     r3, [sp, #0x0]
	add     r0, sp, #0x8
	ldrb    r0, [r0, #0x10]
	mov     r4, r1
	lsl     r1, r4, #24
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x4c]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2019e2c
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x4c]
	lsr     r1, r1, #24
	bl      Function_201c3c0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2244922


.align 2, 0


.thumb
Function_2244924: @ 2244924 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r4, r0
	cmp     r6, #0x5
	bhi     branch_224496c
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224493a

Jumppoints_224493a:
.hword branch_2244946 - Jumppoints_224493a - 2
.hword branch_2244950 - Jumppoints_224493a - 2
.hword branch_224496c - Jumppoints_224493a - 2
.hword branch_224496c - Jumppoints_224493a - 2
.hword branch_224495a - Jumppoints_224493a - 2
.hword branch_2244964 - Jumppoints_224493a - 2
.thumb
branch_2244946: @ 2244946 :thumb
	ldr     r0, [pc, #0x54] @ 0x224499c, (=0x5ee)
	bl      Function_2005748
	mov     r5, #0x2
	b       branch_224496c
@ 0x2244950

.thumb
branch_2244950: @ 2244950 :thumb
	ldr     r0, [pc, #0x4c] @ 0x22449a0, (=0x5ef)
	bl      Function_2005748
	mov     r5, #0x3
	b       branch_224496c
@ 0x224495a

.thumb
branch_224495a: @ 224495a :thumb
	ldr     r0, [pc, #0x40] @ 0x224499c, (=0x5ee)
	bl      Function_2005748
	mov     r5, #0x2
	b       branch_224496c
@ 0x2244964

.thumb
branch_2244964: @ 2244964 :thumb
	ldr     r0, [pc, #0x38] @ 0x22449a0, (=0x5ef)
	bl      Function_2005748
	mov     r5, #0x3
.thumb
branch_224496c: @ 224496c :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2245584
	mov     r1, r0
	mov     r0, r4
	bl      Function_22459b0
	mov     r1, #0x2b
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_224499a
	mov     r0, r4
	mov     r1, r5
	bl      Function_2245a04
	mov     r1, #0xad
	lsl     r1, r1, #2
	str     r0, [r4, r1]
.thumb
branch_224499a: @ 224499a :thumb
	pop     {r4-r6,pc}
@ 0x224499c

.word 0x5ee @ 0x224499c
.word 0x5ef @ 0x22449a0
.thumb
Function_22449a4: @ 22449a4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x4
	mov     r3, r4
	bl      Function_20070e8
	ldrb    r0, [r5, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_22449f6
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x5
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22449f6

.thumb
branch_22449f6: @ 22449f6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0xb
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2244a18

.thumb
Function_2244a18: @ 2244a18 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x4
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x7
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2244a60

.thumb
Function_2244a60: @ 2244a60 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x4
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x8
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2244aa8

.thumb
Function_2244aa8: @ 2244aa8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x4
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x9
	mov     r3, r4
	bl      Function_200710c
	mov     r0, #0x1
	mov     r1, #0x2
	bl      Function_2019060
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2244af8

.thumb
Function_2244af8: @ 2244af8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0x96
	mov     r1, #0x82
	add     r2, sp, #0x0
	mov     r3, #0x5d
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x16
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #4
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	mov     r2, #0x16
	ldr     r0, [r0, #0xc]
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     GX_LoadBGPltt
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2244b2e


.align 2, 0


.thumb
Function_2244b30: @ 2244b30 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
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
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x7e
	mov     r3, r4
	bl      Function_200710c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x5d
	str     r0, [sp, #0x4]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xab
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2244b90

.thumb
Function_2244b90: @ 2244b90 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_2244bc2
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0x5
	mov     r3, #0x3
	bl      Function_200710c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2244bc2

.thumb
branch_2244bc2: @ 2244bc2 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0xb
	mov     r3, #0x3
	bl      Function_200710c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2244be4

.thumb
Function_2244be4: @ 2244be4 :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	ldr     r2, [r2, #0x4c]
	mov     r1, #0x7
	mov     r3, #0x3
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3,pc}
@ 0x2244c0c

.thumb
Function_2244c0c: @ 2244c0c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_2244c3e
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0xa
	mov     r3, #0x3
	bl      Function_200710c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2244c3e

.thumb
branch_2244c3e: @ 2244c3e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0xc
	mov     r3, #0x3
	bl      Function_200710c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2244c60

.thumb
Function_2244c60: @ 2244c60 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r1, sp, #0x38
	ldrb    r1, [r1, #0x0]
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	mov     r7, r3
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x1c]
	ldr     r2, [r5, #0x28]
	mov     r1, r6
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x20]
	ldr     r1, [r5, #0x24]
	ldr     r2, [r5, #0x28]
	bl      Function_200c388
	ldr     r0, [sp, #0x28]
	add     r2, sp, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r3, r7
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
	ldr     r2, [r5, #0x24]
	mov     r0, r4
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2244cc0

.thumb
Function_2244cc0: @ 2244cc0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	mov     r1, r2
	ldr     r0, [r5, #0x1c]
	ldr     r2, [r5, #0x28]
	mov     r6, r3
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x20]
	ldr     r1, [r5, #0x24]
	ldr     r2, [r5, #0x28]
	bl      Function_200c388
	ldr     r0, [sp, #0x20]
	add     r2, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r3, r6
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
	ldr     r2, [r5, #0x24]
	mov     r0, r4
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2244d14

.thumb
Function_2244d14: @ 2244d14 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r3, #0x1
	mov     r2, r1
	str     r3, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r1, #0xf
	str     r1, [sp, #0x10]
	mov     r4, r0
	mov     r1, r4
	add     r1, #0xa0
	str     r3, [sp, #0x14]
	bl      Function_2244c60
	add     r4, #0xa0
	mov     r5, r0
	mov     r0, r4
	bl      Function_201a9a4
	mov     r0, r5
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2244d48

.thumb
Function_2244d48: @ 2244d48 :thumb
	push    {r4-r7}
	mov     r4, #0x1
	mov     r6, #0x0
	lsl     r4, r4, #8
	mov     r7, r0
	mov     r3, r6
	add     r5, r4, #0x4
.thumb
branch_2244d56: @ 2244d56 :thumb
	str     r3, [r7, r4]
	str     r3, [r7, r5]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0x8
	cmp     r6, #0x4
	blt     branch_2244d56
	mov     r4, #0x1
	lsl     r4, r4, #8
	add     r5, r0, r4
	mov     r4, r0
	add     r4, #0xf0
	str     r5, [r4, #0x0]
	mov     r4, r0
	add     r4, #0xf4
	str     r1, [r4, #0x0]
	mov     r1, r0
	add     r1, #0xf8
	strb    r3, [r1, #0x0]
	mov     r1, r0
	mov     r3, #0x1
	add     r1, #0xf9
	strb    r3, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xfa
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xfb
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf
	bic     r2, r1
	mov     r1, r0
	add     r1, #0xfb
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xfb
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x30
	bic     r2, r1
	mov     r1, #0x10
	orr     r2, r1
	mov     r1, r0
	add     r1, #0xfb
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xfb
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc0
	add     r0, #0xfb
	bic     r2, r1
	mov     r1, #0x40
	orr     r1, r2
	strb    r1, [r0, #0x0]
	pop     {r4-r7}
	bx      lr
@ 0x2244dc2


.align 2, 0


.thumb
Function_2244dc4: @ 2244dc4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r7
	str     r2, [sp, #0x0]
	add     r5, #0x2c
	lsl     r4, r6, #2
	ldr     r0, [r7, #0x1c]
	ldr     r2, [r5, r4]
	mov     r1, r3
	bl      Function_200b1b8_CallMsgDecrypt
	lsl     r0, r6, #3
	add     r2, r7, r0
	mov     r0, #0x1
	ldr     r1, [r5, r4]
	lsl     r0, r0, #8
	str     r1, [r2, r0]
	add     r1, r0, #0x4
	ldr     r0, [sp, #0x0]
	str     r0, [r2, r1]
	pop     {r3-r7,pc}
@ 0x2244df0

.thumb
Function_2244df0: @ 2244df0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4c]
	add     r1, #0xc0
	bl      Function_2246260
	mov     r1, r4
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x3
	bl      Function_2244d48
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x5
	bl      Function_2244dc4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_22454f8
	cmp     r0, #0x1
	bne     branch_2244e5c
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22461a0
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      Function_2245f3c
	cmp     r0, #0x0
	bne     branch_2244e4e
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x6
	bl      Function_2244dc4
	b       branch_2244e68
@ 0x2244e4e

.thumb
branch_2244e4e: @ 2244e4e :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x8
	bl      Function_2244dc4
	b       branch_2244e68
@ 0x2244e5c

.thumb
branch_2244e5c: @ 2244e5c :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4
	mov     r3, #0x15
	bl      Function_2244dc4
.thumb
branch_2244e68: @ 2244e68 :thumb
	mov     r1, #0x2
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x7
	bl      Function_2244dc4
	mov     r1, #0x0
	mov     r0, #0x5d
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xf0
	mov     r2, r1
	mov     r3, r1
	bl      Function_2001b7c
	add     r4, #0xfc
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2244e92


.align 2, 0


.thumb
Function_2244e94: @ 2244e94 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4c]
	add     r1, #0xc0
	bl      Function_2246260
	mov     r1, r4
	mov     r0, r4
	add     r1, #0xc0
	mov     r2, #0x2
	bl      Function_2244d48
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x3
	bl      Function_2244dc4
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x4
	bl      Function_2244dc4
	mov     r1, #0x0
	mov     r0, #0x5d
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xf0
	mov     r2, r1
	mov     r3, r1
	bl      Function_2001b7c
	add     r4, #0xfc
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2244ee6


.align 2, 0


.thumb
Function_2244ee8: @ 2244ee8 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	ldr     r0, [r0, #0x20]
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2244efe


.align 2, 0
.thumb
Function_2244f00: @ 2244f00 :thumb
	ldr     r3, [pc, #0x4] @ 0x2244f08, (=Function_200b538+1)
	ldr     r0, [r0, #0x20]
	bx      r3
@ 0x2244f06

.align 2
.word Function_200b538+1 @ 0x2244f08



.thumb
Function_2244f0c: @ 2244f0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r1, #0x4f
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	str     r2, [sp, #0x10]
	mov     r6, r3
	bl      LoadTrainerDataAdress
	mov     r7, r0
	mov     r0, #0x8
	mov     r1, #0x5d
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r7
	bl      Function_2025ef0_Dummy
	mov     r1, r0
	mov     r0, r4
	bl      Function_2023d28
	mov     r0, r7
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_2244f50
	ldr     r1, [pc, #0x30] @ 0x2244f80, (=0x70800)
	b       branch_2244f54
@ 0x2244f50

.thumb
branch_2244f50: @ 2244f50 :thumb
	mov     r1, #0xc1
	lsl     r1, r1, #10
.thumb
branch_2244f54: @ 2244f54 :thumb
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
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2244f7e


.align 2


.word 0x70800 @ 0x2244f80
.thumb
Function_2244f84: @ 2244f84 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	str     r2, [sp, #0x10]
	mov     r6, r3
	bl      Function_203608c
	mov     r1, #0x1
	sub     r0, r1, r0
	bl      Function_2032ee8
	mov     r7, r0
	mov     r0, #0x8
	mov     r1, #0x5d
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r7
	mov     r1, r4
	bl      Function_2025ef4
	mov     r0, r7
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_2244fc4
	ldr     r1, [pc, #0x30] @ 0x2244ff4, (=0x70800)
	b       branch_2244fc8
@ 0x2244fc4

.thumb
branch_2244fc4: @ 2244fc4 :thumb
	mov     r1, #0xc1
	lsl     r1, r1, #10
.thumb
branch_2244fc8: @ 2244fc8 :thumb
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
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2244ff2


.align 2


.word 0x70800 @ 0x2244ff4
.thumb
Function_2244ff8: @ 2244ff8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	str     r0, [sp, #0x10]
	mov     r5, r1
	ldr     r0, [sp, #0x64]
	mov     r1, r2
	mov     r6, r3
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xb3
	add     r2, sp, #0x20
	mov     r7, r0
	bl      GetPkmnData
	add     r1, sp, #0x40
	ldrb    r1, [r1, #0x1c]
	mov     r0, r5
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0xb
	mov     r1, #0x5d
	bl      Function_2023790
	add     r1, sp, #0x20
	mov     r4, r0
	bl      Function_2023d28
	add     r0, sp, #0x60
	ldrb    r0, [r0, #0x0]
	add     r2, sp, #0x40
	mov     r3, r6
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x50]
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldrb    r0, [r2, #0x14]
	ldrb    r1, [r2, #0x1c]
	ldrb    r2, [r2, #0x18]
	lsl     r0, r0, #24
	lsr     r0, r0, #8
	lsl     r2, r2, #24
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	mov     r2, r4
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_201c294
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	mov     r0, r7
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	bne     branch_2245084
	mov     r0, #0x19
	str     r0, [sp, #0x14]
	b       branch_2245088
@ 0x2245084

.thumb
branch_2245084: @ 2245084 :thumb
	mov     r0, #0x1a
	str     r0, [sp, #0x14]
.thumb
branch_2245088: @ 2245088 :thumb
	cmp     r7, #0x0
	bne     branch_2245090
	ldr     r6, [pc, #0x48] @ 0x22450d8, (=0x70800)
	b       branch_2245094
@ 0x2245090

.thumb
branch_2245090: @ 2245090 :thumb
	mov     r6, #0xc1
	lsl     r6, r6, #10
.thumb
branch_2245094: @ 2245094 :thumb
	mov     r0, r4
	bl      Function_20237e8
	cmp     r7, #0x2
	beq     branch_22450c6
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x1c]
	mov     r2, r4
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [sp, #0x50]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x1c]
	mov     r0, r5
	mov     r2, r4
	lsl     r3, r3, #3
	bl      Function_201d78c
.thumb
branch_22450c6: @ 22450c6 :thumb
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x22450d6


.align 2


.word 0x70800 @ 0x22450d8
.thumb
Function_22450dc: @ 22450dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r1
	add     r1, sp, #0x28
	ldrb    r1, [r1, #0x18]
	str     r0, [sp, #0x10]
	mov     r0, r5
	str     r2, [sp, #0x14]
	mov     r6, r3
	bl      Function_201ada4_ClearTextBox
	mov     r2, #0x67
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x5d
	bl      LoadFromNARC_9
	add     r1, sp, #0x28
	ldrh    r1, [r1, #0x20]
	mov     r7, r0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_200b190
	add     r2, sp, #0x28
	ldrb    r0, [r2, #0x1c]
	ldr     r3, [sp, #0x14]
	str     r0, [sp, #0x1c]
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldrb    r0, [r2, #0x10]
	ldrb    r1, [r2, #0x18]
	ldrb    r2, [r2, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #8
	lsl     r2, r2, #24
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	mov     r2, r4
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_201c294
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x20]
	add     r0, sp, #0x4c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224515e
	mov     r0, #0x19
	str     r0, [sp, #0x18]
	b       branch_2245162
@ 0x224515e

.thumb
branch_224515e: @ 224515e :thumb
	mov     r0, #0x1a
	str     r0, [sp, #0x18]
.thumb
branch_2245162: @ 2245162 :thumb
	add     r0, sp, #0x4c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224516e
	ldr     r7, [pc, #0x44] @ 0x22451b0, (=0x70800)
	b       branch_2245172
@ 0x224516e

.thumb
branch_224516e: @ 224516e :thumb
	mov     r7, #0xc1
	lsl     r7, r7, #10
.thumb
branch_2245172: @ 2245172 :thumb
	mov     r0, r4
	bl      Function_20237e8
	add     r0, sp, #0x4c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	beq     branch_22451a6
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x18]
	ldr     r0, [r0, #0x1c]
	mov     r2, r4
	bl      Function_200b1b8_CallMsgDecrypt
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x20]
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	mov     r2, r4
	lsl     r3, r3, #3
	bl      Function_201d78c
.thumb
branch_22451a6: @ 22451a6 :thumb
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22451b0

.word 0x70800 @ 0x22451b0
.thumb
Function_22451b4: @ 22451b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x12]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22451e0
	mov     r7, #0x29
	mov     r4, r5
	lsl     r7, r7, #4
.thumb
branch_22451c6: @ 22451c6 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_22451d6
	bl      Function_2245ea8
	mov     r1, #0x29
	lsl     r1, r1, #4
	str     r0, [r4, r1]
.thumb
branch_22451d6: @ 22451d6 :thumb
	ldrb    r0, [r5, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_22451c6
.thumb
branch_22451e0: @ 22451e0 :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_22451f6
	bl      Function_2246060
	mov     r0, #0xaa
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_22451f6: @ 22451f6 :thumb
	bl      Function_2039794
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      Function_2002fa0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2002fa0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Call_free1
	mov     r0, #0x12
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	add     r0, #0x24
	add     r0, r5, r0
	bl      Function_2245c50
	mov     r7, #0x4b
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_2245234: @ 2245234 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_224523e
	bl      Function_2007dc8
.thumb
branch_224523e: @ 224523e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x3
	blt     branch_2245234
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2007b6c
	ldr     r0, [r5, #0x1c]
	bl      Function_200b190
	ldr     r0, [r5, #0x20]
	bl      Function_200b3f0
	ldr     r0, [r5, #0x24]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r5, #0x28]
	bl      Function_20237bc_FreeMsg
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_224526c: @ 224526c :thumb
	ldr     r0, [r4, #0x2c]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_224526c
	mov     r0, r5
	add     r0, #0x50
	bl      Function_2246244
	ldr     r0, [r5, #0x4c]
	bl      Function_224473c
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Call_FS_CloseFile
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_20242c4
	pop     {r3-r7,pc}
@ 0x224529e


.align 2, 0


.thumb
Function_22452a0: @ 22452a0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_22452e4
	mov     r2, #0x2
	mov     r1, #0x0
	ldr     r0, [pc, #0x30] @ 0x22452e0, (=0x2245cd1)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r3, r1
	bl      Function_2024220
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x5d
	bl      Function_2018340
	str     r0, [r4, #0x4c]
	mov     r0, r4
	bl      Function_224531c
	ldr     r0, [r4, #0x4c]
	add     r4, #0x50
	mov     r1, r4
	bl      Function_2246214
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22452de


.align 2


.word 0x2245cd1 @ 0x22452e0
.thumb
Function_22452e4: @ 22452e4 :thumb
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
	ldr     r0, [pc, #0xc] @ 0x2245314, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x2245318, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x2245314

.word 0xffffe0ff @ 0x2245314
.word 0x4001000 @ 0x2245318



.thumb
Function_224531c: @ 224531c :thumb
	push    {r3-r7,lr}
	mov     r6, r0

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x5d
	bl      LoadFromNARC_8
	mov     r1, #0xb5
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r0, r6
	bl      Function_2244678
	mov     r0, r6
	bl      Function_224472c
	mov     r2, #0x5b
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x5d
	bl      LoadFromNARC_9
	str     r0, [r6, #0x1c]
	mov     r0, #0x5d
	bl      Function_200b358
	str     r0, [r6, #0x20]
	mov     r0, #0x32
	lsl     r0, r0, #4
	mov     r1, #0x5d
	bl      Function_2023790
	str     r0, [r6, #0x24]
	mov     r0, #0x32
	lsl     r0, r0, #4
	mov     r1, #0x5d
	bl      Function_2023790
	str     r0, [r6, #0x28]
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, #0x40
.thumb
branch_2245370: @ 2245370 :thumb
	mov     r0, r7
	mov     r1, #0x5d
	bl      Function_2023790
	str     r0, [r5, #0x2c]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2245370
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x5d
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x6
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x5d
	bl      LoadFromNARC_PlFont2
	mov     r0, #0x5d
	bl      AllocInitNARCPokeGra
	mov     r1, #0x4a
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	bl      Function_2035e38
	cmp     r0, #0x0
	beq     branch_22453c0
	mov     r0, #0x1
	mov     r1, #0x10
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	bl      Function_2039734
.thumb
branch_22453c0: @ 22453c0 :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_22454f8
	cmp     r0, #0x1
	bne     branch_22453da
	mov     r0, r6
	bl      Function_224246c
	mov     r0, r6
	bl      Function_22424a0
	b       branch_22453e6
@ 0x22453da

.thumb
branch_22453da: @ 22453da :thumb
	mov     r0, r6
	bl      Function_224260c
	mov     r0, r6
	bl      Function_224266c
.thumb
branch_22453e6: @ 22453e6 :thumb
	bl      Function_201ffd0_SetDISPCNT_SUB_MODE1
	ldr     r0, [pc, #0x8] @ 0x22453f4, (=0x224451d)
	mov     r1, r6
	bl      SetMainLoopFunctionCall
	pop     {r3-r7,pc}
@ 0x22453f4

.word 0x224451d @ 0x22453f4
.thumb
Function_22453f8: @ 22453f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r6, r1
	mov     r4, r2
	mov     r7, r3
	bl      Function_22461a0
	ldrb    r1, [r5, #0x12]
	cmp     r0, r1
	bcs     branch_224545e
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2007dc8
	ldr     r0, [sp, #0x30]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x78
	str     r7, [sp, #0x4]
	bl      Function_22455c4
	mov     r3, #0x0
	add     r1, r6, #0x2
	lsl     r2, r4, #24
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [sp, #0x30]
	str     r3, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r5, #0x50
	lsl     r1, r1, #4
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_2244ff8
.thumb
branch_224545e: @ 224545e :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2245462


.align 2, 0


.thumb
Function_2245464: @ 2245464 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5d
	mov     r1, #0x30
	bl      malloc
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Call_FillMemWithValue
	mov     r2, #0xae
	mov     r1, #0x5
	lsl     r2, r2, #2
	lsl     r1, r1, #6
	ldr     r3, [r4, r2]
	ldr     r0, [r4, r1]
	sub     r2, #0x10
	str     r3, [r0, #0x0]
	mov     r0, r1
	sub     r0, #0x8
	ldr     r3, [r4, r0]
	ldr     r0, [r4, r1]
	str     r3, [r0, #0x4]
	ldr     r0, [r4, r1]
	mov     r3, #0x1
	strb    r3, [r0, #0x11]
	ldr     r0, [r4, r1]
	strb    r3, [r0, #0x12]
	ldrb    r3, [r4, #0x12]
	ldr     r0, [r4, r1]
	strb    r3, [r0, #0x13]
	ldr     r0, [r4, r2]
	bl      Function_22461a0
	mov     r1, #0x5
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	strb    r0, [r2, #0x14]
	ldr     r0, [r4, r1]
	mov     r2, #0x0
	strh    r2, [r0, #0x18]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	bl      Function_207a274
	mov     r1, #0x5
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x1c]
	ldr     r0, [r4, r1]
	mov     r2, #0x0
	str     r2, [r0, #0x2c]
	ldr     r0, [r4, r1]
	ldr     r1, [pc, #0x1c] @ 0x22454f4, (=0x22462dc)
	bl      Function_208d720
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      LoadTrainerDataAdress
	mov     r1, r0
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Function_208e9c0
	pop     {r4,pc}
@ 0x22454f4

.word 0x22462dc @ 0x22454f4
.thumb
Function_22454f8: @ 22454f8 :thumb
	ldrb    r0, [r0, #0xb]
	cmp     r0, r1
	bne     branch_2245502
	mov     r0, #0x1
	bx      lr
@ 0x2245502

.thumb
branch_2245502: @ 2245502 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2245506


.align 2, 0


.thumb
Function_2245508: @ 2245508 :thumb
	cmp     r0, #0x0
	beq     branch_2245510
	cmp     r0, #0x1
	bne     branch_2245514
.thumb
branch_2245510: @ 2245510 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x2245514

.thumb
branch_2245514: @ 2245514 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x2245518

.thumb
Function_2245518: @ 2245518 :thumb
	ldrb    r0, [r0, #0x13]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2245524
	mov     r0, #0x1
	bx      lr
@ 0x2245524

.thumb
branch_2245524: @ 2245524 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2245528

.thumb
Function_2245528: @ 2245528 :thumb
	ldrb    r3, [r0, #0x13]
	mov     r2, #0x1
	bic     r3, r2
	mov     r2, #0x1
	and     r1, r2
	orr     r1, r3
	strb    r1, [r0, #0x13]
	bx      lr
@ 0x2245538

.thumb
Function_2245538: @ 2245538 :thumb
	push    {r3,lr}
	mov     r3, #0x0
	cmp     r1, #0x0
	beq     branch_224554a
	cmp     r1, #0x1
	beq     branch_224555c
	cmp     r1, #0x2
	beq     branch_224556e
	b       branch_224557e
@ 0x224554a

.thumb
branch_224554a: @ 224554a :thumb
	cmp     r2, #0x1
	bne     branch_2245552
	mov     r3, #0x2
	b       branch_224557e
@ 0x2245552

.thumb
branch_2245552: @ 2245552 :thumb
	ldrb    r0, [r0, #0x9]
	bl      0x223aed4
	mov     r3, #0x2
	b       branch_224557e
@ 0x224555c

.thumb
branch_224555c: @ 224555c :thumb
	cmp     r2, #0x1
	bne     branch_2245564
	mov     r3, #0x1
	b       branch_224557e
@ 0x2245564

.thumb
branch_2245564: @ 2245564 :thumb
	ldrb    r0, [r0, #0x9]
	bl      0x223aed4
	mov     r3, #0x1
	b       branch_224557e
@ 0x224556e

.thumb
branch_224556e: @ 224556e :thumb
	cmp     r2, #0x1
	bne     branch_2245576
	mov     r3, #0x2
	b       branch_224557e
@ 0x2245576

.thumb
branch_2245576: @ 2245576 :thumb
	ldrb    r0, [r0, #0x9]
	bl      0x223aed4
	mov     r3, #0x2
.thumb
branch_224557e: @ 224557e :thumb
	mov     r0, r3
	pop     {r3,pc}
@ 0x2245582


.align 2, 0


.thumb
Function_2245584: @ 2245584 :thumb
	push    {r4,lr}
	mov     r4, r1
	cmp     r4, #0x5
	bhi     branch_22455c0
	add     r1, r4, r4
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2245598

Jumppoints_2245598:
.hword branch_22455c0 - Jumppoints_2245598 - 2
.hword branch_22455c0 - Jumppoints_2245598 - 2
.hword branch_22455c0 - Jumppoints_2245598 - 2
.hword branch_22455c0 - Jumppoints_2245598 - 2
.hword branch_22455a4 - Jumppoints_2245598 - 2
.hword branch_22455b2 - Jumppoints_2245598 - 2
.thumb
branch_22455a4: @ 22455a4 :thumb
	ldrb    r0, [r0, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_22455c0
	mov     r0, #0xb
	pop     {r4,pc}
@ 0x22455b2

.thumb
branch_22455b2: @ 22455b2 :thumb
	ldrb    r0, [r0, #0x9]
	bl      0x223aed4
	cmp     r0, #0x1
	bne     branch_22455c0
	mov     r0, #0xc
	pop     {r4,pc}
@ 0x22455c0

.thumb
branch_22455c0: @ 22455c0 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x22455c4

.thumb
Function_22455c4: @ 22455c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	lsl     r4, r1, #2
	ldr     r1, [sp, #0x20]
	mov     r7, #0x4b
	lsl     r7, r7, #2
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	.hword  0x1f39 @ sub r1, r7, #0x4
	add     r5, r0, r7
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	mov     r6, r2
	bl      Function_2245d88
	str     r0, [r5, r4]
	ldr     r0, [r5, r4]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
	mov     r0, r6
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	mov     r0, r7
	mov     r2, #0x1c
	bl      GetPkmnBaseData2
	cmp     r0, #0x0
	bne     branch_224561c
	ldr     r0, [r5, r4]
	ldr     r1, [sp, #0x24]
	bl      Function_2245db8
.thumb
branch_224561c: @ 224561c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245620

.thumb
Function_2245620: @ 2245620 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	mov     r4, r1
	mov     r7, r2
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_2245636
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245636

.thumb
branch_2245636: @ 2245636 :thumb
	cmp     r4, #0x7
	beq     branch_2245644
	cmp     r4, #0x8
	beq     branch_2245650
	cmp     r4, #0xa
	beq     branch_224565e
	b       branch_224566a
@ 0x2245644

.thumb
branch_2245644: @ 2245644 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r6, #0x1d
	bl      Function_2245684
	b       branch_224566a
@ 0x2245650

.thumb
branch_2245650: @ 2245650 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	mov     r6, #0x1e
	bl      Function_22456a8
	b       branch_224566a
@ 0x224565e

.thumb
branch_224565e: @ 224565e :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	mov     r6, #0x20
	bl      Function_2245884
.thumb
branch_224566a: @ 224566a :thumb
	mov     r1, #0xb6
	lsl     r1, r1, #2
	mov     r0, r6
	add     r1, r5, r1
	mov     r2, #0x3c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2245680
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2245680

.thumb
branch_2245680: @ 2245680 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245684

.thumb
Function_2245684: @ 2245684 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r0, #0xb6
	lsl     r0, r0, #2
	strh    r4, [r5, r0]
	pop     {r3-r5,pc}
@ 0x224569c


.thumb
.globl Function_105_224569c
Function_105_224569c: @ 224569c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203608c
	cmp     r4, r0
	pop     {r4,pc}
@ 0x22456a8


.thumb
Function_22456a8: @ 22456a8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, #0x0
	mov     r0, #0xb6
	str     r1, [sp, #0x0]
	mov     r2, r5
	mov     r4, r1
	lsl     r0, r0, #2
.thumb
branch_22456b8: @ 22456b8 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r4, [r2, r0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x3c
	blt     branch_22456b8
	ldrb    r1, [r5, #0x11]
	mov     r0, #0xb6
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x11]
	cmp     r0, #0x0
	ble     branch_2245708
	ldr     r0, [sp, #0x0]
	mov     r7, r5
	lsl     r0, r0, #1
	add     r6, r5, r0
.thumb
branch_22456de: @ 22456de :thumb
	mov     r1, #0xb
	mov     r0, #0xae
	lsl     r1, r1, #6
	lsl     r0, r0, #2
	ldrh    r1, [r7, r1]
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0xb6
	lsl     r1, r1, #2
	strh    r0, [r6, r1]
	ldrb    r0, [r5, #0x11]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, r0
	blt     branch_22456de
.thumb
branch_2245708: @ 2245708 :thumb
	ldr     r1, [sp, #0x0]
	mov     r7, #0x0
	add     r1, r1, r0
	cmp     r0, #0x0
	ble     branch_2245742
	lsl     r0, r1, #1
	mov     r6, r5
	add     r4, r5, r0
.thumb
branch_2245718: @ 2245718 :thumb
	mov     r1, #0xb
	mov     r0, #0xae
	lsl     r1, r1, #6
	lsl     r0, r0, #2
	ldrh    r1, [r6, r1]
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0xb6
	lsl     r1, r1, #2
	strh    r0, [r4, r1]
	ldrb    r0, [r5, #0x11]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r7, r0
	blt     branch_2245718

branch_2245742: @ 2245742 :thumb
	pop     {r3-r7,pc}
@ 0x2245744


.thumb
.globl Function_105_2245744
Function_105_2245744: @ 2245744 :thumb
	push    {r3-r7,lr}
	mov     r5, r3
	mov     r7, r0
	ldrb    r0, [r5, #0x9]
	mov     r6, r2
	mov     r4, #0x0
	bl      0x223aa50
	bl      Function_203608c
	cmp     r7, r0
	beq     branch_22457a8
	ldrh    r0, [r6, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r0, [r5, #0x18]
	ldrb    r3, [r5, #0x18]
	mov     r0, #0x0
	cmp     r3, #0x0
	ble     branch_2245782
	lsl     r1, r4, #1
	ldr     r7, [pc, #0x3c] @ 0x22457ac, (=0x352)
	add     r1, r6, r1
	mov     r2, r5
.thumb
branch_2245772: @ 2245772 :thumb
	ldrh    r3, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r3, [r2, r7]
	ldrb    r3, [r5, #0x18]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, r3
	blt     branch_2245772
.thumb
branch_2245782: @ 2245782 :thumb
	add     r1, r4, r3
	mov     r0, #0x0
	cmp     r3, #0x0
	ble     branch_22457a2
	lsl     r1, r1, #1
	add     r3, r6, r1
	ldr     r1, [pc, #0x20] @ 0x22457b0, (=0x356)
	mov     r4, r5
.thumb
branch_2245792: @ 2245792 :thumb
	ldrh    r2, [r3, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r2, [r4, r1]
	ldrb    r2, [r5, #0x18]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r0, r2
	blt     branch_2245792
.thumb
branch_22457a2: @ 22457a2 :thumb
	ldr     r0, [pc, #0x10] @ 0x22457b4, (=0x35b)
	mov     r1, #0x1
	strb    r1, [r5, r0]
.thumb
branch_22457a8: @ 22457a8 :thumb
	pop     {r3-r7,pc}
@ 0x22457aa


.align 2


.word 0x352 @ 0x22457ac
.word 0x356 @ 0x22457b0
.word 0x35b @ 0x22457b4



.thumb
.globl Function_105_22457b8
Function_105_22457b8: @ 22457b8 :thumb
	ldr     r3, [pc, #0x0] @ 0x22457bc, (=ErrorHandling+1)
	bx      r3
@ 0x22457bc

.word ErrorHandling+1 @ 0x22457bc



.thumb
Function_22457c0: @ 22457c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r7, r0
	ldrb    r0, [r7, #0x9]
	bl      0x223aa50
	str     r0, [sp, #0x18]
	ldrb    r0, [r7, #0x13]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22457f4
	mov     r0, r7
	add     r0, #0x60
	bl      Function_201acf4
	mov     r0, r7
	add     r0, #0xd0
	bl      Function_201acf4
	add     r7, #0xe0
	mov     r0, r7
	bl      Function_201acf4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22457f4

.thumb
branch_22457f4: @ 22457f4 :thumb
	ldr     r0, [pc, #0x80] @ 0x2245878, (=0x35b)
	ldrb    r0, [r7, r0]
	cmp     r0, #0x1
	bne     branch_224586e
	ldr     r0, [sp, #0x18]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_224585e
	mov     r6, r7
	mov     r5, r7
	add     r6, #0x50
.thumb
branch_224580a: @ 224580a :thumb
	mov     r0, r4
	add     r0, #0x8
	lsl     r0, r0, #4
	str     r0, [sp, #0x1c]
	add     r0, r6, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrb    r0, [r7, #0x18]
	cmp     r4, r0
	bge     branch_224584c
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x4c] @ 0x224587c, (=0x352)
	ldr     r1, [sp, #0x1c]
	ldrh    r0, [r5, r0]
	mov     r2, #0x0
	add     r1, r6, r1
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x44] @ 0x2245880, (=0x356)
	mov     r3, r2
	ldrh    r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	mov     r0, r7
	bl      Function_22450dc
.thumb
branch_224584c: @ 224584c :thumb
	ldr     r0, [sp, #0x1c]
	add     r0, r6, r0
	bl      Function_201a9a4
	ldr     r0, [sp, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r0
	blt     branch_224580a
.thumb
branch_224585e: @ 224585e :thumb
	mov     r2, #0x0
	mov     r1, r7
	mov     r0, r7
	add     r1, #0x60
	mov     r3, r2
	str     r2, [sp, #0x0]
	bl      Function_2244f84
.thumb
branch_224586e: @ 224586e :thumb
	ldr     r0, [pc, #0x8] @ 0x2245878, (=0x35b)
	mov     r1, #0x0
	strb    r1, [r7, r0]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2245878

.word 0x35b @ 0x2245878
.word 0x352 @ 0x224587c
.word 0x356 @ 0x2245880
.thumb
Function_2245884: @ 2245884 :thumb
	mov     r3, #0xb6
	lsl     r3, r3, #2
	strh    r1, [r0, r3]
	add     r1, r3, #0x2
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0x18
	ldrh    r2, [r0, r1]
	add     r1, r3, #0x4
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0x16
	ldrh    r2, [r0, r1]
	add     r1, r3, #0x6
	strh    r2, [r0, r1]
	bx      lr
@ 0x22458a4


.thumb
.globl Function_105_22458a4
Function_105_22458a4: @ 22458a4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x84] @ 0x2245930, (=0x35a)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_224592e
	ldrh    r0, [r5, #0x2]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r0, #0x35
	lsl     r0, r0, #4
	strh    r1, [r4, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2245906
	ldrb    r0, [r4, #0x13]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22458e4
	mov     r0, #0x35
	mov     r1, #0x0
	lsl     r0, r0, #4
	strh    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x22458e4

.thumb
branch_22458e4: @ 22458e4 :thumb
	mov     r1, #0x35
	lsl     r1, r1, #4
	ldrh    r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_224592e
	ldrh    r0, [r5, #0x4]
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	mov     r0, r1
	sub     r0, #0x90
	strh    r2, [r4, r0]
	ldrh    r0, [r5, #0x6]
	sub     r1, #0x8e
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	strh    r0, [r4, r1]
	pop     {r4-r6,pc}
@ 0x2245906

.thumb
branch_2245906: @ 2245906 :thumb
	mov     r1, #0x35
	lsl     r1, r1, #4
	ldrh    r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_224592e
	ldrb    r2, [r4, #0x13]
	mov     r0, #0x8
	bic     r2, r0
	strb    r2, [r4, #0x13]
	ldrh    r0, [r5, #0x4]
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	mov     r0, r1
	sub     r0, #0x90
	strh    r2, [r4, r0]
	ldrh    r0, [r5, #0x6]
	sub     r1, #0x8e
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	strh    r0, [r4, r1]
.thumb
branch_224592e: @ 224592e :thumb
	pop     {r4-r6,pc}
@ 0x2245930

.word 0x35a @ 0x2245930
.thumb
Function_2245934: @ 2245934 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_22454f8
	cmp     r0, #0x1
	bne     branch_2245950
	ldr     r0, [pc, #0x48] @ 0x2245990, (=0x2246364)
	lsl     r2, r4, #2
	ldrh    r1, [r0, r2]
	ldr     r0, [pc, #0x48] @ 0x2245994, (=0x2246366)
	ldrh    r2, [r0, r2]
	b       branch_2245982
@ 0x2245950

.thumb
branch_2245950: @ 2245950 :thumb
	ldrb    r0, [r5, #0x9]
	bl      0x223aed4
	cmp     r0, #0x0
	bne     branch_2245966
	ldr     r0, [pc, #0x3c] @ 0x2245998, (=0x2246314)
	lsl     r2, r4, #2
	ldrh    r1, [r0, r2]
	ldr     r0, [pc, #0x38] @ 0x224599c, (=0x2246316)
	ldrh    r2, [r0, r2]
	b       branch_2245982
@ 0x2245966

.thumb
branch_2245966: @ 2245966 :thumb
	ldrb    r0, [r5, #0x12]
	cmp     r0, #0x2
	bne     branch_2245978
	ldr     r0, [pc, #0x30] @ 0x22459a0, (=0x22462ec)
	lsl     r2, r4, #2
	ldrh    r1, [r0, r2]
	ldr     r0, [pc, #0x30] @ 0x22459a4, (=0x22462ee)
	ldrh    r2, [r0, r2]
	b       branch_2245982
@ 0x2245978

.thumb
branch_2245978: @ 2245978 :thumb
	ldr     r0, [pc, #0x2c] @ 0x22459a8, (=0x2246320)
	lsl     r2, r4, #2
	ldrh    r1, [r0, r2]
	ldr     r0, [pc, #0x2c] @ 0x22459ac, (=0x2246322)
	ldrh    r2, [r0, r2]
.thumb
branch_2245982: @ 2245982 :thumb
	mov     r0, #0x51
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r3, #0x5d
	bl      Function_2245e54
	pop     {r3-r5,pc}
@ 0x2245990

.word 0x2246364 @ 0x2245990
.word 0x2246366 @ 0x2245994
.word 0x2246314 @ 0x2245998
.word 0x2246316 @ 0x224599c
.word 0x22462ec @ 0x22459a0
.word 0x22462ee @ 0x22459a4
.word 0x2246320 @ 0x22459a8
.word 0x2246322 @ 0x22459ac
.thumb
Function_22459b0: @ 22459b0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	cmp     r1, #0xc
	bhi     branch_22459f4
	add     r4, r1, r1
	add     r4, pc
	ldrh    r4, [r4, #0x6]
	lsl     r4, r4, #16
	asr     r4, r4, #16
	add     pc, r4
@ 0x22459c4

Jumppoints_22459c4:
.hword branch_22459de - Jumppoints_22459c4 - 2
.hword branch_22459de - Jumppoints_22459c4 - 2
.hword branch_22459f4 - Jumppoints_22459c4 - 2
.hword branch_22459f4 - Jumppoints_22459c4 - 2
.hword branch_22459e4 - Jumppoints_22459c4 - 2
.hword branch_22459e4 - Jumppoints_22459c4 - 2
.hword branch_22459f4 - Jumppoints_22459c4 - 2
.hword branch_22459f4 - Jumppoints_22459c4 - 2
.hword branch_22459f4 - Jumppoints_22459c4 - 2
.hword branch_22459f4 - Jumppoints_22459c4 - 2
.hword branch_22459f4 - Jumppoints_22459c4 - 2
.hword branch_22459ea - Jumppoints_22459c4 - 2
.hword branch_22459f0 - Jumppoints_22459c4 - 2
.thumb
branch_22459de: @ 22459de :thumb
	mov     r2, #0x50
	mov     r3, #0x28
	b       branch_22459f4
@ 0x22459e4

.thumb
branch_22459e4: @ 22459e4 :thumb
	mov     r2, #0x80
	mov     r3, #0x28
	b       branch_22459f4
@ 0x22459ea

.thumb
branch_22459ea: @ 22459ea :thumb
	mov     r2, #0x50
	mov     r3, #0x28
	b       branch_22459f4
@ 0x22459f0

.thumb
branch_22459f0: @ 22459f0 :thumb
	mov     r2, #0x50
	mov     r3, #0x28
.thumb
branch_22459f4: @ 22459f4 :thumb
	mov     r4, #0x5d
	str     r4, [sp, #0x0]
	add     r4, #0xe7
	add     r0, r0, r4
	bl      Function_2245dc4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2245a04

.thumb
Function_2245a04: @ 2245a04 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x2
	beq     branch_2245a12
	cmp     r4, #0x3
	bne     branch_2245a18
.thumb
branch_2245a12: @ 2245a12 :thumb
	mov     r2, #0xd8
	mov     r3, #0x28
	b       branch_2245a20
@ 0x2245a18

.thumb
branch_2245a18: @ 2245a18 :thumb
	bl      ErrorHandling
	mov     r2, #0x0
	mov     r3, r2
.thumb
branch_2245a20: @ 2245a20 :thumb
	mov     r0, #0x5d
	str     r0, [sp, #0x0]
	add     r0, #0xe7
	add     r0, r5, r0
	mov     r1, r4
	bl      Function_2245dc4
	pop     {r3-r5,pc}
@ 0x2245a30

.thumb
Function_2245a30: @ 2245a30 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2245a4a
	bl      Function_2245e1c
	mov     r0, #0x2b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_2245a4a: @ 2245a4a :thumb
	mov     r0, #0xad
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2245a60
	bl      Function_2245e1c
	mov     r0, #0xad
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_2245a60: @ 2245a60 :thumb
	pop     {r4,pc}
@ 0x2245a62


.align 2, 0


.thumb
Function_2245a64: @ 2245a64 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x5d
	bl      Function_2019690
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r0, [r4, #0x4c]
	add     r4, #0x50
	mov     r1, r4
	bl      Function_2246214
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x2245a98

.thumb
Function_2245a98: @ 2245a98 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x2245aaa


.align 2, 0


.thumb
Function_2245aac: @ 2245aac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	bl      Function_2245c98
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x5d
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r0, #0x9
	add     r1, r7, #0x4
	mov     r2, #0x5d
	bl      Function_20095c4
	ldr     r4, [pc, #0xc0] @ 0x2245ba0, (=0x2246444)
	str     r0, [r7, #0x0]
	mov     r6, #0x0
	mov     r5, r7
.thumb
branch_2245ae4: @ 2245ae4 :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r6
	mov     r2, #0x5d
	bl      Function_2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_2245ae4
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x5d
	str     r0, [sp, #0x8]
	add     r0, #0xcf
	ldr     r0, [r7, r0]
	mov     r1, #0x97
	bl      Function_200985c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r0, [sp, #0xc]
	add     r0, #0xd3
	ldr     r0, [r7, r0]
	mov     r1, #0x97
	mov     r2, #0x24
	bl      Function_20098b8
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r7, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x2
	str     r2, [sp, #0x4]
	mov     r0, #0x5d
	str     r0, [sp, #0x8]
	add     r0, #0xd7
	ldr     r0, [r7, r0]
	mov     r1, #0x97
	mov     r3, #0x1
	bl      Function_2009918
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	str     r0, [sp, #0x8]
	add     r0, #0xdb
	mov     r2, #0x1
	ldr     r0, [r7, r0]
	mov     r1, #0x97
	mov     r3, r2
	bl      Function_2009918
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	sub     r1, #0xc
	ldr     r0, [r7, r1]
	bl      Function_200a328
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r7, r0]
	bl      Function_200a5c8
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2245ba0

.word 0x2246444 @ 0x2245ba0
.thumb
Function_2245ba4: @ 2245ba4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x80
	mov     r5, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	mov     r4, r3
	str     r0, [sp, #0x8]
	mov     r3, #0x0
	ldr     r0, [sp, #0x90]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r6, r2
	ldr     r2, [r5, r0]
	str     r2, [sp, #0x14]
	add     r2, r0, #0x4
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r0
	add     r2, #0x8
	ldr     r2, [r5, r2]
	add     r0, #0xc
	str     r2, [sp, #0x1c]
	ldr     r0, [r5, r0]
	mov     r2, r1
	str     r0, [sp, #0x20]
	str     r3, [sp, #0x24]
	str     r3, [sp, #0x28]
	add     r0, sp, #0x5c
	mov     r3, r1
	bl      Function_20093b4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
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
	str     r4, [sp, #0x50]
	add     r0, sp, #0x80
	ldrb    r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_2245c18
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	b       branch_2245c1c
@ 0x2245c18

.thumb
branch_2245c18: @ 2245c18 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x54]
.thumb
branch_2245c1c: @ 2245c1c :thumb
	mov     r0, #0x5d
	str     r0, [sp, #0x58]
	add     r0, sp, #0x80
	ldrb    r0, [r0, #0x14]
	cmp     r0, #0x1
	bne     branch_2245c32
	mov     r0, #0x3
	ldr     r1, [sp, #0x38]
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x38]
.thumb
branch_2245c32: @ 2245c32 :thumb
	add     r0, sp, #0x2c
	bl      Function_2021aa0
	mov     r4, r0
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, r4
	mov     r1, r6
	bl      Function_2021d6c
	mov     r0, r4
	add     sp, #0x80
	pop     {r4-r6,pc}
@ 0x2245c4e


.align 2, 0


.thumb
Function_2245c50: @ 2245c50 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a4e4
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_200a6dc
	mov     r6, #0x4b
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_2245c6e: @ 2245c6e :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      Function_2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_2245c6e
	ldr     r0, [r5, #0x0]
	bl      Function_2021964
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	pop     {r4-r6,pc}
@ 0x2245c96


.align 2, 0


.thumb
Function_2245c98: @ 2245c98 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x28] @ 0x2245cc8, (=0x2246448)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r1, [pc, #0x20] @ 0x2245ccc, (=0x100010)
	mov     r0, r2
	mov     r2, r1
	bl      Function_201e88c
	mov     r0, #0x8
	mov     r1, #0x5d
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2245cc8

.word 0x2246448 @ 0x2245cc8
.word 0x100010 @ 0x2245ccc
.thumb
Function_2245cd0: @ 2245cd0 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x5c] @ 0x2245d38, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	strh    r2, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x2245d3c, (=0xffffcffd)
	and     r2, r1
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x40] @ 0x2245d40, (=0xcffb)
	and     r3, r2
	strh    r3, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	sub     r2, #0x1c
	and     r3, r1
	mov     r1, #0x8
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     G3X_SetFog
	mov     r0, #0x0
	ldr     r2, [pc, #0x1c] @ 0x2245d44, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0x14] @ 0x2245d48, (=0xbfff0000)
	ldr     r0, [pc, #0x18] @ 0x2245d4c, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x2245d38

.word 0x4000008 @ 0x2245d38
.word 0xffffcffd @ 0x2245d3c
.word 0xcffb @ 0x2245d40
.word 0x7fff @ 0x2245d44
.word 0xbfff0000 @ 0x2245d48
.word 0x4000580 @ 0x2245d4c
.thumb
Function_2245d50: @ 2245d50 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	ldr     r2, [pc, #0x24] @ 0x2245d80, (=0x4000440)
	mov     r3, #0x0
	mov     r1, r2
	str     r3, [r2, #0x0]
	add     r1, #0x14
	str     r3, [r1, #0x0]
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	str     r3, [r1, #0x0]
	blx     Function_20af480
	blx     Function_20a73c0
	mov     r0, r4
	bl      DrawNARCPokeGra
	ldr     r0, [pc, #0x8] @ 0x2245d84, (=GFX_FLUSH)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x2245d80

.word 0x4000440 @ 0x2245d80
.word GFX_FLUSH @ 0x2245d84
.thumb
Function_2245d88: @ 2245d88 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r4, r1
	mov     r1, r2
	add     r0, sp, #0x10
	mov     r2, #0x2
	mov     r6, r3
	bl      LoadPkmnDataForPlatGraphic
	ldr     r0, [sp, #0x34]
	ldr     r3, [sp, #0x30]
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r1, sp, #0x10
	mov     r2, r6
	bl      Function_2007c34
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x2245db8

.thumb
Function_2245db8: @ 2245db8 :thumb
	ldr     r3, [pc, #0x4] @ 0x2245dc0, (=Function_2007dec+1)
	mov     r2, r1
	mov     r1, #0x23
	bx      r3
@ 0x2245dc0

.word Function_2007dec+1 @ 0x2245dc0
.thumb
Function_2245dc4: @ 2245dc4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	mov     r1, #0xc
	mov     r5, r2
	mov     r6, r3
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
	strb    r1, [r4, #0x8]
	strb    r1, [r4, #0x9]
	strb    r1, [r4, #0xa]
	strb    r1, [r4, #0xb]
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	str     r1, [sp, #0x4]
	mov     r0, r7
	mov     r3, r1
	bl      Function_2245ba4
	str     r0, [r4, #0x8]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_2245e30
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2245e1a


.align 2, 0


.thumb
Function_2245e1c: @ 2245e1c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_2021bd4
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245e30

.thumb
Function_2245e30: @ 2245e30 :thumb
	push    {lr}
	add     sp, #-0xc
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	lsl     r1, r2, #12
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {pc}
@ 0x2245e48

.thumb
Function_2245e48: @ 2245e48 :thumb
	ldr     r3, [pc, #0x4] @ 0x2245e50, (=Function_2021fd0+1)
	ldr     r0, [r0, #0x8]
	bx      r3
@ 0x2245e4e


.align 2


.word Function_2021fd0+1 @ 0x2245e50
.thumb
Function_2245e54: @ 2245e54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r5, r1
	mov     r0, r3
	mov     r1, #0x10
	mov     r6, r2
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_2245e6e: @ 2245e6e :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2245e6e
	mov     r1, #0x0
	strh    r1, [r4, #0x0]
	str     r5, [r4, #0x4]
	str     r6, [r4, #0x8]
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r7
	mov     r2, #0x6
	mov     r3, r1
	bl      Function_2245ba4
	str     r0, [r4, #0xc]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_2245f14
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_2021e90
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245ea6


.align 2, 0


.thumb
Function_2245ea8: @ 2245ea8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2021bd4
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245ebc

.thumb
Function_2245ebc: @ 2245ebc :thumb
	ldr     r3, [pc, #0x4] @ 0x2245ec4, (=Function_2021cac+1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x2245ec2


.align 2


.word Function_2021cac+1 @ 0x2245ec4
.thumb
Function_2245ec8: @ 2245ec8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	mov     r6, r2
	mov     r7, r3
	bl      Function_2021d28
	mov     r3, r0
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r12, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	lsl     r0, r6, #12
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	lsl     r0, r7, #12
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	mov     r1, r12
	bl      Function_2021c50
	ldr     r0, [r4, #0xc]
	bl      Function_2021d28
	mov     r2, r0
	ldmia   r2!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r5, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2245f14

.thumb
Function_2245f14: @ 2245f14 :thumb
	push    {lr}
	add     sp, #-0xc
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	lsl     r1, r2, #12
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {pc}
@ 0x2245f2c

.thumb
Function_2245f2c: @ 2245f2c :thumb
	ldr     r3, [pc, #0x4] @ 0x2245f34, (=Function_2021d28+1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x2245f32

.align 2
.word Function_2021d28+1 @ 0x2245f34



.thumb
Function_2245f38: @ 2245f38 :thumb
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x2245f3c


.thumb
Function_2245f3c: @ 2245f3c :thumb
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x2245f44

.thumb
Function_2245f44: @ 2245f44 :thumb
	ldr     r3, [pc, #0x4] @ 0x2245f4c, (=0x2245f39)
	mov     r1, #0x1
	bx      r3
@ 0x2245f4a


.align 2


.word 0x2245f39 @ 0x2245f4c
.thumb
Function_2245f50: @ 2245f50 :thumb
	ldr     r3, [pc, #0x4] @ 0x2245f58, (=0x2245f39)
	mov     r1, #0x0
	bx      r3
@ 0x2245f56


.align 2


.word Function_2245f38+1 @ =0x2245f39, 0x2245f58
.thumb
Function_2245f5c: @ 2245f5c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2245f2c
	ldr     r2, [r0, #0x0]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	add     r1, #0xf8
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	add     r1, sp, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2245f86


.align 2, 0


.thumb
Function_2245f88: @ 2245f88 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x2245f8c

.thumb
Function_2245f8c: @ 2245f8c :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x2245f90

.thumb
Function_2245f90: @ 2245f90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x1
	ldr     r0, [r5, #0xc]
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r0, [r5, #0xc]
	mov     r1, r4
	bl      Function_2021d6c
	pop     {r3-r5,pc}
@ 0x2245faa


.align 2, 0


.thumb
Function_2245fac: @ 2245fac :thumb
	ldr     r3, [pc, #0x4] @ 0x2245fb4, (=Function_2021e90+1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x2245fb2

.align 2
.word Function_2021e90+1 @ 0x2245fb4



.thumb
Function_2245fb8: @ 2245fb8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x5d
	mov     r1, #0x14
	str     r2, [sp, #0x8]
	mov     r5, r3
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_2245fd4: @ 2245fd4 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2245fd4
	strb    r7, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	strb    r0, [r4, #0x10]
	strb    r5, [r4, #0x1]
	add     r0, sp, #0x20
	ldrb    r2, [r0, #0x10]
	ldr     r0, [sp, #0x34]
	strb    r2, [r4, #0x2]
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x38]
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_224600c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [r4, #0x8]
	mov     r0, r6
	ldrb    r2, [r3, r2]
	mov     r3, r1
	bl      Function_2245ba4
	str     r0, [r4, #0xc]
	b       branch_2246036
@ 0x224600c

.thumb
branch_224600c: @ 224600c :thumb
	cmp     r5, #0x0
	bne     branch_2246024
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, r6
	mov     r2, #0x8
	mov     r3, r1
	str     r1, [sp, #0x4]
	bl      Function_2245ba4
	str     r0, [r4, #0xc]
	b       branch_2246036
@ 0x2246024

.thumb
branch_2246024: @ 2246024 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, r6
	mov     r2, #0x9
	mov     r3, r1
	str     r1, [sp, #0x4]
	bl      Function_2245ba4
	str     r0, [r4, #0xc]
.thumb
branch_2246036: @ 2246036 :thumb
	ldrb    r0, [r4, #0x2]
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	ldrb    r0, [r4, #0x2]
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	add     r1, r1, r0
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	add     r1, sp, #0xc
	lsl     r0, r0, #12
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0xc]
	bl      Function_2021c50
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2246060

.thumb
Function_2246060: @ 2246060 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2021bd4
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246074

.thumb
Function_2246074: @ 2246074 :thumb
	ldr     r3, [pc, #0x4] @ 0x224607c, (=Function_2021cac+1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x224607a


.align 2


.word Function_2021cac+1 @ 0x224607c
.thumb
Function_2246080: @ 2246080 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x3]
	cmp     r0, #0x1
	bne     branch_224608e
	b       branch_2246196
@ 0x224608e

.thumb
branch_224608e: @ 224608e :thumb
	ldr     r0, [pc, #0x10c] @ 0x224619c, (=RAM_21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_2246196
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x2
	bne     branch_2246114
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_22460b6
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_22460b0
	ldrb    r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x22460b0

.thumb
branch_22460b0: @ 22460b0 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x22460b6

.thumb
branch_22460b6: @ 22460b6 :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_22460d2
	ldrb    r0, [r4, #0x0]
	ldrb    r1, [r4, #0x2]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r1, r0
	bne     branch_22460cc
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x22460cc

.thumb
branch_22460cc: @ 22460cc :thumb
	add     r0, r1, #0x1
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x22460d2

.thumb
branch_22460d2: @ 22460d2 :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_22460f8
	ldrb    r0, [r4, #0x10]
	ldrb    r1, [r4, #0x2]
	cmp     r1, r0
	bcs     branch_22460e4
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x22460e4

.thumb
branch_22460e4: @ 22460e4 :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r1, r0
	bne     branch_22460f2
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x22460f2

.thumb
branch_22460f2: @ 22460f2 :thumb
	add     r0, r1, #0x1
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x22460f8

.thumb
branch_22460f8: @ 22460f8 :thumb
	mov     r1, #0x40
	tst     r0, r1
	beq     branch_224614e
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x10]
	cmp     r1, r0
	bcs     branch_224610e
	ldrb    r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x224610e

.thumb
branch_224610e: @ 224610e :thumb
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x2246114

.thumb
branch_2246114: @ 2246114 :thumb
	cmp     r1, #0x0
	bne     branch_224611e
	mov     r1, #0x10
	mov     r2, #0x20
	b       branch_2246122
@ 0x224611e

.thumb
branch_224611e: @ 224611e :thumb
	mov     r1, #0x80
	mov     r2, #0x40
.thumb
branch_2246122: @ 2246122 :thumb
	tst     r1, r0
	beq     branch_224613a
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	bcc     branch_224614e
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	b       branch_224614e
@ 0x224613a

.thumb
branch_224613a: @ 224613a :thumb
	tst     r0, r2
	beq     branch_224614e
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_2246148
	ldrb    r0, [r4, #0x0]
	strb    r0, [r4, #0x2]
.thumb
branch_2246148: @ 2246148 :thumb
	ldrb    r0, [r4, #0x2]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x2]
.thumb
branch_224614e: @ 224614e :thumb
	ldr     r2, [r4, #0x8]
	cmp     r2, #0x0
	beq     branch_224615e
	ldrb    r1, [r4, #0x2]
	ldr     r0, [r4, #0xc]
	ldrb    r1, [r2, r1]
	bl      Function_2021dcc
.thumb
branch_224615e: @ 224615e :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldrb    r0, [r4, #0x2]
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	ldrb    r0, [r4, #0x2]
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	add     r1, r1, r0
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	mov     r1, r2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	bl      Function_2021c50
.thumb
branch_2246196: @ 2246196 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224619a


.align 2


.word RAM_21bf67c @ 0x224619c
.thumb
Function_22461a0: @ 22461a0 :thumb
	ldrb    r0, [r0, #0x2]
	bx      lr
@ 0x22461a4

.thumb
Function_22461a4: @ 22461a4 :thumb
	push    {r3,lr}
	strb    r1, [r0, #0x3]
	cmp     r1, #0x0
	ldr     r0, [r0, #0xc]
	bne     branch_22461b6
	mov     r1, #0x8
	bl      Function_2021dcc
	pop     {r3,pc}
@ 0x22461b6

.thumb
branch_22461b6: @ 22461b6 :thumb
	mov     r1, #0xd
	bl      Function_2021dcc
	pop     {r3,pc}
@ 0x22461be


.align 2, 0


.thumb
Function_22461c0: @ 22461c0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	strb    r1, [r4, #0x2]
	ldr     r2, [r4, #0x8]
	cmp     r2, #0x0
	beq     branch_22461d8
	ldrb    r1, [r4, #0x2]
	ldr     r0, [r4, #0xc]
	ldrb    r1, [r2, r1]
	bl      Function_2021dcc
.thumb
branch_22461d8: @ 22461d8 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldrb    r0, [r4, #0x2]
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	ldrb    r0, [r4, #0x2]
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	add     r1, r1, r0
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	mov     r1, r2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2246214

.thumb
Function_2246214: @ 2246214 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_224621c: @ 224621c :thumb
	ldr     r2, [pc, #0x20] @ 0x2246240, (=0x2246458)
	lsl     r6, r4, #4
	lsl     r3, r4, #3
	mov     r0, r7
	add     r1, r5, r6
	add     r2, r2, r3
	bl      Function_201a8d4
	add     r0, r5, r6
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0xa
	bcc     branch_224621c
	pop     {r3-r7,pc}
@ 0x2246240

.word 0x2246458 @ 0x2246240
.thumb
Function_2246244: @ 2246244 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_224624a: @ 224624a :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	bl      Function_201a8fc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xa
	bcc     branch_224624a
	pop     {r3-r5,pc}
@ 0x224625e


.align 2, 0


.thumb
Function_2246260: @ 2246260 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x5d
	str     r1, [sp, #0x4]
	ldr     r2, [pc, #0x18] @ 0x2246288, (=0x3f7)
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200daa4
	ldr     r2, [pc, #0xc] @ 0x2246288, (=0x3f7)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2246288

.word 0x3f7 @ 0x2246288
.thumb
Function_224628c: @ 224628c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r4, r0
	bl      Function_201c290
	mov     r1, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x5d
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x20] @ 0x22462c8, (=0x3d9)
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r2, [pc, #0x10] @ 0x22462c8, (=0x3d9)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22462c6

.align 2
.word 0x3d9 @ 0x22462c8



Unknown_22462cc: @ 0x22462cc
.incbin "./baserom/overlay/overlay_0105.bin", 0x47ec, 0x22464c0 - 0x22462cc


@end 0x22464c0



