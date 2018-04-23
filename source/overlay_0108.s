
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram108, "ax"


.thumb
Function_2241ae0: @ 2241ae0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	ldr     r0, [pc, #0x144] @ 0x2241c2c, (=0x68)
	mov     r1, #0x2
	bl      LoadOverlay
	bl      Function_2242344
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x67
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0xf3
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x67
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0xf3
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r5, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x67
	bl      Function_2018340
	mov     r1, r5
	add     r1, #0x90
	str     r0, [r1, #0x0]
	mov     r0, r4
	str     r4, [r5, #0x0]
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	mov     r0, r5
	ldr     r1, [r4, #0x0]
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	bl      Function_20304a0
	mov     r1, r5
	add     r1, #0xe0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	bl      Function_20305b8
	mov     r1, r5
	add     r1, #0xe4
	str     r0, [r1, #0x0]
	ldrb    r0, [r4, #0x4]
	strb    r0, [r5, #0x9]
	ldrh    r0, [r4, #0x1e]
	strh    r0, [r5, #0x2a]
	ldrh    r0, [r4, #0x1c]
	strh    r0, [r5, #0x28]
	ldrh    r1, [r4, #0x18]
	ldr     r0, [pc, #0xcc] @ 0x2241c30, (=0x3c2)
	strh    r1, [r5, r0]
	ldrb    r1, [r4, #0x7]
	sub     r0, #0x62
	strb    r1, [r5, #0x12]
	mov     r1, r4
	add     r1, #0x38
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	bl      LoadPlayerDataAdress
	mov     r1, r5
	add     r1, #0xd8
	str     r0, [r1, #0x0]
	mov     r0, #0xd9
	ldr     r1, [r4, #0x30]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [r4, #0x34]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, #0xff
	strb    r0, [r5, #0xe]
	mov     r0, r5
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	bl      LoadVariableAreaAdress_17
	str     r0, [r5, #0x4]
	mov     r0, #0xd7
	ldr     r1, [r4, #0x8]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [r4, #0xc]
	add     r0, #0x28
	str     r1, [r5, #0x1c]
	ldr     r1, [r4, #0x10]
	str     r1, [r5, #0x20]
	ldr     r1, [r4, #0x14]
	add     r4, #0x42
	str     r1, [r5, #0x24]
	str     r0, [r5, #0x18]
	ldrb    r0, [r4, #0x0]
	strb    r0, [r5, #0xc]
	mov     r2, #0x0
	mov     r1, #0x20
.thumb
branch_2241bc2: @ 2241bc2 :thumb
	add     r0, r5, r2
	add     r0, #0x44
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r0, #0x0]
	cmp     r2, #0x20
	blt     branch_2241bc2
	mov     r0, r5
	mov     r1, #0x4
	add     r0, #0x2c
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x2d
	strb    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x10
	add     r0, #0x2e
	strb    r1, [r0, #0x0]
	mov     r0, #0xf
	mov     r1, #0x0
	lsl     r0, r0, #6
	strb    r1, [r5, r0]
	mov     r0, r5
	bl      Function_2242b1c
	ldr     r1, [r5, #0x24]
	strh    r0, [r1, #0x0]
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #28
	sub     r1, r1, r2
	mov     r0, #0x1c
	ror     r1, r0
	add     r0, r2, r1
	strh    r0, [r5, #0x16]
	mov     r0, r5
	bl      Function_224237c
	ldrb    r0, [r5, #0x9]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2241c1e
	mov     r0, r5
	bl      Function_209ba80
.thumb
branch_2241c1e: @ 2241c1e :thumb
	mov     r1, #0x0
	ldr     r0, [pc, #0x10] @ 0x2241c34, (=0x22437a0)
	str     r1, [r6, #0x0]
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2241c2c

.word 0x68 @ 0x2241c2c
.word 0x3c2 @ 0x2241c30
.word 0x22437a0 @ 0x2241c34
.thumb
Function_2241c38: @ 2241c38 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	ldrb    r1, [r4, #0xe]
	cmp     r1, #0xff
	beq     branch_2241c6a
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x1
	bne     branch_2241c6a
	bl      Function_2243008
	mov     r0, r4
	add     r0, #0x2e
	ldrb    r0, [r0, #0x0]
	ldrb    r1, [r4, #0xe]
	bl      Function_2242a04
	strb    r0, [r4, #0x14]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_224295c
.thumb
branch_2241c6a: @ 2241c6a :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_2241d1c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2241c7c

Jumppoints_2241c7c:
.hword branch_2241c86 - Jumppoints_2241c7c - 2
.hword branch_2241c9c - Jumppoints_2241c7c - 2
.hword branch_2241ce2 - Jumppoints_2241c7c - 2
.hword branch_2241cf8 - Jumppoints_2241c7c - 2
.hword branch_2241d0e - Jumppoints_2241c7c - 2
.thumb
branch_2241c86: @ 2241c86 :thumb
	mov     r0, r4
	bl      Function_2241db0
	cmp     r0, #0x1
	bne     branch_2241d1c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_224295c
	b       branch_2241d1c
@ 0x2241c9c

.thumb
branch_2241c9c: @ 2241c9c :thumb
	mov     r0, r4
	bl      Function_2241f28
	cmp     r0, #0x1
	bne     branch_2241d1c
	mov     r0, r4
	add     r0, #0x2f
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #25
	cmp     r0, #0x1
	bne     branch_2241cc0
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_224295c
	b       branch_2241d1c
@ 0x2241cc0

.thumb
branch_2241cc0: @ 2241cc0 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2241cd6
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_224295c
	b       branch_2241d1c
@ 0x2241cd6

.thumb
branch_2241cd6: @ 2241cd6 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_224295c
	b       branch_2241d1c
@ 0x2241ce2

.thumb
branch_2241ce2: @ 2241ce2 :thumb
	mov     r0, r4
	bl      Function_2242104
	cmp     r0, #0x1
	bne     branch_2241d1c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_224295c
	b       branch_2241d1c
@ 0x2241cf8

.thumb
branch_2241cf8: @ 2241cf8 :thumb
	mov     r0, r4
	bl      Function_2242198
	cmp     r0, #0x1
	bne     branch_2241d1c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_224295c
	b       branch_2241d1c
@ 0x2241d0e

.thumb
branch_2241d0e: @ 2241d0e :thumb
	mov     r0, r4
	bl      Function_22421f0
	cmp     r0, #0x1
	bne     branch_2241d1c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241d1c

.thumb
branch_2241d1c: @ 2241d1c :thumb
	ldrb    r3, [r4, #0x13]
	mov     r1, r4
	mov     r2, #0xfe
	mov     r0, r3
	lsl     r3, r3, #24
	lsr     r3, r3, #25
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	lsl     r3, r3, #25
	bic     r0, r2
	lsr     r3, r3, #24
	orr     r0, r3
	strb    r0, [r4, #0x13]
	ldrb    r0, [r4, #0x13]
	add     r1, #0x13
	lsl     r0, r0, #24
	lsr     r0, r0, #25
	cmp     r0, #0x4
	bcc     branch_2241d64
	ldrb    r0, [r1, #0x0]
	bic     r0, r2
	strb    r0, [r1, #0x0]
	ldrb    r3, [r1, #0x0]
	mov     r2, #0x1
	mov     r0, r3
	bic     r0, r2
	lsl     r2, r3, #31
	lsr     r2, r2, #31
	mov     r3, #0x1
	eor     r2, r3
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	and     r2, r3
	orr     r0, r2
	strb    r0, [r1, #0x0]
.thumb
branch_2241d64: @ 2241d64 :thumb
	add     r4, #0xe8
	ldr     r0, [r4, #0x0]
	bl      Function_20219f8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241d70

.thumb
Function_2241d70: @ 2241d70 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, #0x36
	lsl     r0, r0, #4
	ldrb    r1, [r4, #0xd]
	ldr     r0, [r4, r0]
	strh    r1, [r0, #0x0]
	bl      Function_201dc3c
	mov     r0, r4
	bl      Function_2242238
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x67
	bl      Function_201807c
	ldr     r0, [pc, #0x8] @ 0x2241dac, (=0x68)
	bl      UnloadOverlay
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241dac

.word 0x68 @ 0x2241dac
.thumb
Function_2241db0: @ 2241db0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x9
	bhi     branch_2241e14
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241dc8

Jumppoints_2241dc8:
.hword branch_2241ddc - Jumppoints_2241dc8 - 2
.hword branch_2241e00 - Jumppoints_2241dc8 - 2
.hword branch_2241e2a - Jumppoints_2241dc8 - 2
.hword branch_2241e36 - Jumppoints_2241dc8 - 2
.hword branch_2241e42 - Jumppoints_2241dc8 - 2
.hword branch_2241e4e - Jumppoints_2241dc8 - 2
.hword branch_2241e72 - Jumppoints_2241dc8 - 2
.hword branch_2241e9a - Jumppoints_2241dc8 - 2
.hword branch_2241eda - Jumppoints_2241dc8 - 2
.hword branch_2241f14 - Jumppoints_2241dc8 - 2
.thumb
branch_2241ddc: @ 2241ddc :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2241df8
	bl      Function_20365f4
	mov     r0, #0xc7
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241df8

.thumb
branch_2241df8: @ 2241df8 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e00

.thumb
branch_2241e00: @ 2241e00 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2241e22
	mov     r0, #0xc7
	bl      Function_2036540
	cmp     r0, #0x1
	beq     branch_2241e16
.thumb
branch_2241e14: @ 2241e14 :thumb
	b       branch_2241f22
@ 0x2241e16

.thumb
branch_2241e16: @ 2241e16 :thumb
	bl      Function_20365f4
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e22

.thumb
branch_2241e22: @ 2241e22 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e2a

.thumb
branch_2241e2a: @ 2241e2a :thumb
	bl      Function_2242bf0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e36

.thumb
branch_2241e36: @ 2241e36 :thumb
	bl      Function_2242d5c
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e42

.thumb
branch_2241e42: @ 2241e42 :thumb
	bl      Function_2242e10
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e4e

.thumb
branch_2241e4e: @ 2241e4e :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2241e6a
	bl      Function_20365f4
	mov     r0, #0xc9
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e6a

.thumb
branch_2241e6a: @ 2241e6a :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e72

.thumb
branch_2241e72: @ 2241e72 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2241e92
	mov     r0, #0xc9
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2241f22
	bl      Function_20365f4
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e92

.thumb
branch_2241e92: @ 2241e92 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241e9a

.thumb
branch_2241e9a: @ 2241e9a :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2241eba
	mov     r0, r4
	mov     r1, #0x1e
	mov     r2, #0x0
	bl      Function_2242a38
	cmp     r0, #0x1
	bne     branch_2241f22
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241eba

.thumb
branch_2241eba: @ 2241eba :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241eda

.thumb
branch_2241eda: @ 2241eda :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2241f0c
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x2
	bcc     branch_2241f22
	mov     r0, #0x0
	strb    r0, [r4, #0xf]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, #0x67
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241f0c

.thumb
branch_2241f0c: @ 2241f0c :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241f22
@ 0x2241f14

.thumb
branch_2241f14: @ 2241f14 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2241f22
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2241f22

.thumb
branch_2241f22: @ 2241f22 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2241f28

.thumb
Function_2241f28: @ 2241f28 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x8
	bhi     branch_2241fc6
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241f3e

Jumppoints_2241f3e:
.hword branch_2241f50 - Jumppoints_2241f3e - 2
.hword branch_2241f64 - Jumppoints_2241f3e - 2
.hword branch_2241f7a - Jumppoints_2241f3e - 2
.hword branch_2241fba - Jumppoints_2241f3e - 2
.hword branch_2241ff4 - Jumppoints_2241f3e - 2
.hword branch_224202c - Jumppoints_2241f3e - 2
.hword branch_224207c - Jumppoints_2241f3e - 2
.hword branch_22420d2 - Jumppoints_2241f3e - 2
.hword branch_22420e2 - Jumppoints_2241f3e - 2
.thumb
branch_2241f50: @ 2241f50 :thumb
	mov     r1, #0x0
	strb    r1, [r4, #0xb]
	ldrh    r1, [r4, #0x16]
	strb    r1, [r4, #0xd]
	ldrb    r1, [r4, #0xd]
	bl      Function_22429c8
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22420f2
@ 0x2241f64

.thumb
branch_2241f64: @ 2241f64 :thumb
	ldrb    r0, [r4, #0xb]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0xa
	bcc     branch_2241fc6
	mov     r0, #0x0
	strb    r0, [r4, #0xb]
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_22420f2
@ 0x2241f7a

.thumb
branch_2241f7a: @ 2241f7a :thumb
	mov     r7, #0xb6
	mov     r6, #0x0
	mov     r5, r4
	lsl     r7, r7, #2
.thumb
branch_2241f82: @ 2241f82 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2241f9a
	mov     r1, #0x20
	bl      Function_22435f4
	mov     r0, #0xb6
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_22435a8
.thumb
branch_2241f9a: @ 2241f9a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x10
	blt     branch_2241f82
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2242884
	ldr     r0, [pc, #0x14c] @ 0x22420f8, (=0x609)
	bl      Function_2005748
	mov     r0, #0x18
	strb    r0, [r4, #0xb]
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	b       branch_22420f2
@ 0x2241fba

.thumb
branch_2241fba: @ 2241fba :thumb
	ldrb    r0, [r4, #0xb]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	beq     branch_2241fc8
.thumb
branch_2241fc6: @ 2241fc6 :thumb
	b       branch_22420f2
@ 0x2241fc8

.thumb
branch_2241fc8: @ 2241fc8 :thumb
	mov     r7, #0xb6
	mov     r6, #0x0
	mov     r5, r4
	lsl     r7, r7, #2
.thumb
branch_2241fd0: @ 2241fd0 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2241fdc
	mov     r1, #0x21
	bl      Function_22435f4
.thumb
branch_2241fdc: @ 2241fdc :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x10
	blt     branch_2241fd0
	ldr     r0, [pc, #0x110] @ 0x22420f8, (=0x609)
	bl      Function_2005748
	mov     r0, #0x18
	strb    r0, [r4, #0xb]
	mov     r0, #0x4
	strb    r0, [r4, #0x8]
	b       branch_22420f2
@ 0x2241ff4

.thumb
branch_2241ff4: @ 2241ff4 :thumb
	ldrb    r0, [r4, #0xb]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	bne     branch_22420f2
	mov     r7, #0xb6
	mov     r6, #0x0
	mov     r5, r4
	lsl     r7, r7, #2
.thumb
branch_2242008: @ 2242008 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2242014
	mov     r1, #0x22
	bl      Function_22435f4
.thumb
branch_2242014: @ 2242014 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x10
	blt     branch_2242008
	ldr     r0, [pc, #0xd8] @ 0x22420f8, (=0x609)
	bl      Function_2005748
	mov     r0, #0x18
	strb    r0, [r4, #0xb]
	mov     r0, #0x5
	strb    r0, [r4, #0x8]
	b       branch_22420f2
@ 0x224202c

.thumb
branch_224202c: @ 224202c :thumb
	ldrb    r0, [r4, #0xb]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	bne     branch_22420f2
	mov     r7, #0xb6
	mov     r5, #0x0
	mov     r6, r4
	lsl     r7, r7, #2
.thumb
branch_2242040: @ 2242040 :thumb
	ldr     r0, [r6, r7]
	cmp     r0, #0x0
	beq     branch_2242050
	add     r1, r4, r5
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	bl      Function_22435f4
.thumb
branch_2242050: @ 2242050 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r5, #0x10
	blt     branch_2242040
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22435a8
	ldr     r0, [pc, #0x94] @ 0x22420fc, (=0x624)
	bl      Function_2005748
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22435f4
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_22420f2
@ 0x224207c

.thumb
branch_224207c: @ 224207c :thumb
	ldr     r1, [pc, #0x80] @ 0x2242100, (=RAM_21bf67c)
	ldr     r1, [r1, #0x48]
	bl      Function_2242964
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2242096
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	ble     branch_2242096
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x18]
.thumb
branch_2242096: @ 2242096 :thumb
	mov     r0, r4
	bl      Function_2242fe8
	cmp     r0, #0x1
	beq     branch_22420a6
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_22420f2
.thumb
branch_22420a6: @ 22420a6 :thumb
	mov     r0, r4
	bl      Function_22429fc
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	cmp     r0, #0x0
	bne     branch_22420bc
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	b       branch_22420f2
@ 0x22420bc

.thumb
branch_22420bc: @ 22420bc :thumb
	mov     r0, r4
	add     r0, #0x2f
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xfe
	add     r4, #0x2f
	bic     r1, r0
	mov     r0, #0x2
	orr     r0, r1
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22420d2

.thumb
branch_22420d2: @ 22420d2 :thumb
	ldrb    r1, [r4, #0xd]
	bl      Function_2242ba0
	mov     r0, #0x1e
	strb    r0, [r4, #0xb]
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	b       branch_22420f2
@ 0x22420e2

.thumb
branch_22420e2: @ 22420e2 :thumb
	ldrb    r0, [r4, #0xb]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	bne     branch_22420f2
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22420f2

.thumb
branch_22420f2: @ 22420f2 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22420f6


.align 2


.word 0x609 @ 0x22420f8
.word 0x624 @ 0x22420fc
.word RAM_21bf67c @ 0x2242100
.thumb
Function_2242104: @ 2242104 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x4
	bhi     branch_2242194
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x224211a

Jumppoints_224211a:
.hword branch_2242124 - Jumppoints_224211a - 2
.hword branch_2242148 - Jumppoints_224211a - 2
.hword branch_224214e - Jumppoints_224211a - 2
.hword branch_2242166 - Jumppoints_224211a - 2
.hword branch_2242178 - Jumppoints_224211a - 2
.thumb
branch_2242124: @ 2242124 :thumb
	ldrb    r2, [r4, #0x14]
	mov     r1, #0x1f
	bl      Function_2242a38
	cmp     r0, #0x1
	bne     branch_2242194
	mov     r0, r4
	add     r0, #0x2f
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xfe
	bic     r1, r0
	mov     r0, r4
	add     r0, #0x2f
	strb    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242194
@ 0x2242148

.thumb
branch_2242148: @ 2242148 :thumb
	add     r0, r1, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242194
@ 0x224214e

.thumb
branch_224214e: @ 224214e :thumb
	ldrb    r1, [r4, #0xe]
	cmp     r1, #0xff
	beq     branch_2242194
	mov     r1, #0x0
	strb    r1, [r4, #0xf]
	ldrb    r1, [r4, #0xe]
	bl      Function_2242ba0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242194
@ 0x2242166

.thumb
branch_2242166: @ 2242166 :thumb
	bl      Function_20365f4
	mov     r0, #0x97
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242194
@ 0x2242178

.thumb
branch_2242178: @ 2242178 :thumb
	mov     r0, #0x97
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2242194
	bl      Function_20365f4
	mov     r0, #0x67
	bl      Function_20363e8
	mov     r0, #0xff
	strb    r0, [r4, #0xe]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2242194

.thumb
branch_2242194: @ 2242194 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242198

.thumb
Function_2242198: @ 2242198 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_22421ac
	cmp     r0, #0x1
	beq     branch_22421b8
	cmp     r0, #0x2
	beq     branch_22421da
	b       branch_22421ec
@ 0x22421ac

.thumb
branch_22421ac: @ 22421ac :thumb
	mov     r0, #0xf
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421ec
@ 0x22421b8

.thumb
branch_22421b8: @ 22421b8 :thumb
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	beq     branch_22421c2
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xb]
.thumb
branch_22421c2: @ 22421c2 :thumb
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	bne     branch_22421ec
	bl      Function_20365f4
	mov     r0, #0x98
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22421ec
@ 0x22421da

.thumb
branch_22421da: @ 22421da :thumb
	mov     r0, #0x98
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_22421ec
	bl      Function_20365f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22421ec

.thumb
branch_22421ec: @ 22421ec :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22421f0

.thumb
Function_22421f0: @ 22421f0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2242202
	cmp     r0, #0x1
	beq     branch_2242222
	b       branch_2242230
@ 0x2242202

.thumb
branch_2242202: @ 2242202 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242230
@ 0x2242222

.thumb
branch_2242222: @ 2242222 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2242230
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2242230

.thumb
branch_2242230: @ 2242230 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2242236


.align 2, 0


.thumb
Function_2242238: @ 2242238 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_224224a
	bl      Function_2243594
.thumb
branch_224224a: @ 224224a :thumb
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_2242258
	bl      Function_2243594
.thumb
branch_2242258: @ 2242258 :thumb
	mov     r7, #0xb6
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_2242260: @ 2242260 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_224226a
	bl      Function_2243594
.thumb
branch_224226a: @ 224226a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x10
	blt     branch_2242260
	ldrb    r0, [r6, #0x9]
	mov     r1, #0x1
	bl      0x223bd70
	mov     r7, r0
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_22422c4
	mov     r4, r6
.thumb
branch_2242284: @ 2242284 :thumb
	mov     r0, #0xc6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2242292
	bl      Function_2243594
.thumb
branch_2242292: @ 2242292 :thumb
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22422a0
	bl      Function_2243594
.thumb
branch_22422a0: @ 22422a0 :thumb
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22422ae
	bl      Function_2243594
.thumb
branch_22422ae: @ 22422ae :thumb
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22422bc
	bl      Function_2243594
.thumb
branch_22422bc: @ 22422bc :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r7
	blt     branch_2242284
.thumb
branch_22422c4: @ 22422c4 :thumb
	bl      Function_2039794
	mov     r0, r6
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_2002fa0
	mov     r0, r6
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2002fa0
	mov     r0, r6
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	bl      Call_free1
	mov     r0, r6
	mov     r1, #0x0
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xe8
	bl      Function_2243194
	ldr     r0, [r6, #0x68]
	bl      Function_200b190
	ldr     r0, [r6, #0x6c]
	bl      Function_200b3f0
	ldr     r0, [r6, #0x70]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x74]
	bl      Function_20237bc_FreeMsg
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_2242316: @ 2242316 :thumb
	ldr     r0, [r4, #0x78]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x2
	blt     branch_2242316
	mov     r0, r6
	add     r0, #0x94
	bl      Function_2243660
	mov     r0, r6
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Function_22426d4
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Call_FS_CloseFile
	pop     {r3-r7,pc}
@ 0x2242342


.align 2, 0


.thumb
Function_2242344: @ 2242344 :thumb
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
	ldr     r0, [pc, #0xc] @ 0x2242374, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x2242378, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x2242374

.word 0xffffe0ff @ 0x2242374
.word 0x4001000 @ 0x2242378



.thumb
Function_224237c: @ 224237c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x18]
	mov     r0, #FrontierBg_Narc
	mov     r1, #0x67
	bl      LoadFromNARC_8
	mov     r2, #0xdb
	ldr     r1, [sp, #0x18]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	mov     r0, r1
	bl      Function_2242658
	ldr     r0, [sp, #0x18]
	bl      Function_22426b0
	mov     r2, #0x86
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x67
	bl      LoadFromNARC_9
	ldr     r1, [sp, #0x18]
	str     r0, [r1, #0x68]
	mov     r0, #0x67
	bl      Function_200b358
	ldr     r1, [sp, #0x18]
	str     r0, [r1, #0x6c]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x67
	bl      Function_2023790
	ldr     r1, [sp, #0x18]
	str     r0, [r1, #0x70]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x67
	bl      Function_2023790
	ldr     r1, [sp, #0x18]
	mov     r4, #0x0
	str     r0, [r1, #0x74]
	mov     r5, r1
	mov     r6, #0x20
	mov     r7, #0x67
.thumb
branch_22423de: @ 22423de :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_2023790
	str     r0, [r5, #0x78]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_22423de
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x67
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x6
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x67
	bl      LoadFromNARC_PlFont2
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r1, #0x94
	bl      Function_2243630
	mov     r0, #0x23
	str     r0, [sp, #0x0]
	mov     r0, #0x44
	str     r0, [sp, #0x4]
	mov     r0, #0x24
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	str     r1, [sp, #0x14]
	mov     r1, #0x1
	add     r0, #0xe8
	mov     r2, r1
	mov     r3, r1
	bl      Function_224351c
	mov     r2, #0xb5
	ldr     r1, [sp, #0x18]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	mov     r0, r1
	ldr     r0, [r0, r2]
	mov     r1, #0x0
	bl      Function_22435a8
	ldr     r4, [sp, #0x18]
	mov     r5, #0x0
	mov     r6, r4
	mov     r7, #0x20
	add     r6, #0xe8
.thumb
branch_2242456: @ 2242456 :thumb
	lsr     r2, r5, #31
	lsl     r1, r5, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r1, r2, r1
	mov     r0, #0x28
	mul     r0, r1
	add     r0, #0x44
	lsl     r0, r0, #16
	str     r7, [sp, #0x0]
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	asr     r0, r5, #1
	lsr     r0, r0, #30
	add     r0, r5, r0
	asr     r1, r0, #2
	mov     r0, #0x28
	mul     r0, r1
	mov     r1, #0x1
	add     r0, #0x24
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, r1
	mov     r3, r1
	bl      Function_224351c
	mov     r1, #0xb6
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22435a8
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x10
	blt     branch_2242456
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1
	ldrb    r0, [r0, #0x9]
	bl      0x223bd70
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	ldrb    r0, [r0, #0x9]
	bl      0x223c000
	cmp     r0, #0x0
	bne     branch_22424d4
	mov     r0, #0x32
	mov     r7, #0x2e
	str     r0, [sp, #0x20]
	b       branch_22424da
@ 0x22424d4

.thumb
branch_22424d4: @ 22424d4 :thumb
	mov     r0, #0x1a
	mov     r7, #0x16
	str     r0, [sp, #0x20]
.thumb
branch_22424da: @ 22424da :thumb
	ldr     r0, [sp, #0x1c]
	mov     r5, #0x0
	cmp     r0, #0x0
	bgt     branch_22424e4
	b       branch_22425fe
@ 0x22424e4

.thumb
branch_22424e4: @ 22424e4 :thumb
	ldr     r4, [sp, #0x18]
	mov     r6, r4
	add     r6, #0xe8
.thumb
branch_22424ea: @ 22424ea :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, r1
	mov     r3, r1
	bl      Function_224351c
	mov     r1, #0xce
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r1, #0x2
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xf6
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	mov     r2, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r3, r1
	bl      Function_224351c
	mov     r1, #0xd2
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	mov     r2, #0x3
	str     r0, [sp, #0x14]
	mov     r0, r6
	add     r1, r5, #0x3
	mov     r3, r2
	bl      Function_224351c
	mov     r1, #0xc6
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xee
	str     r0, [sp, #0x4]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	mov     r2, #0x3
	str     r0, [sp, #0x14]
	mov     r0, r6
	add     r1, r5, #0x7
	mov     r3, r2
	bl      Function_224351c
	mov     r1, #0xca
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xd9
	ldr     r1, [sp, #0x18]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0xc6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2243610
	mov     r0, #0xda
	ldr     r1, [sp, #0x18]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2243610
	mov     r0, #0xc6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2243624
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2243624
	ldr     r0, [sp, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0x28
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r7, #0x28
	cmp     r5, r0
	bge     branch_22425fe
	b       branch_22424ea
@ 0x22425fe

.thumb
branch_22425fe: @ 22425fe :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_2242f38
	mov     r1, #0x0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x80
	str     r0, [sp, #0x4]
	mov     r0, #0x60
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r2, r1
	add     r0, #0xe8
	mov     r3, r1
	bl      Function_224351c
	mov     r2, #0xd6
	ldr     r1, [sp, #0x18]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	bl      Function_2035e38
	cmp     r0, #0x0
	beq     branch_2242648
	mov     r0, #0x1
	mov     r1, #0x10
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	bl      Function_2039734
.thumb
branch_2242648: @ 2242648 :thumb
	ldr     r0, [pc, #0x8] @ 0x2242654, (=0x2242709)
	ldr     r1, [sp, #0x18]
	bl      SetMainLoopFunctionCall
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2242654

.word 0x2242709 @ 0x2242654
.thumb
Function_2242658: @ 2242658 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2242740
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Function_2242760
	mov     r0, #0x67
	bl      MallocFill120
	mov     r1, r4
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xd4
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	lsl     r2, r1, #8
	mov     r3, #0x67
	bl      Function_2002f70
	mov     r0, r4
	add     r0, #0xd4
	mov     r2, #0x2
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x67
	bl      Function_2002f70
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2242828
	bl      Function_22428c0
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_22428f4
	pop     {r4,pc}
@ 0x22426ae


.align 2, 0


.thumb
Function_22426b0: @ 22426b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	bl      0x223c000
	mov     r3, r0
	mov     r2, #0xd9
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	mov     r0, r4
	lsl     r3, r3, #24
	ldr     r2, [r4, r2]
	add     r0, #0xe8
	lsr     r3, r3, #24
	bl      Function_2243030
	pop     {r4,pc}
@ 0x22426d4

.thumb
Function_22426d4: @ 22426d4 :thumb
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
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2242708

.thumb
Function_2242708: @ 2242708 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2242718
	bl      Function_2003694_LoadSomePalettes
.thumb
branch_2242718: @ 2242718 :thumb
	add     r4, #0x90
	ldr     r0, [r4, #0x0]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r3, [pc, #0xc] @ 0x2242738, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x224273c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x2242736


.align 2


.word 0x27e0000 @ 0x2242738
.word 0x3ff8 @ 0x224273c
.thumb
Function_2242740: @ 2242740 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x224275c, (=0x2243738)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_224274a: @ 224274a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224274a
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x224275c

.word 0x2243738 @ 0x224275c
.thumb
Function_2242760: @ 2242760 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x64
	ldr     r5, [pc, #0xac] @ 0x2242814, (=0x22436a0)
	add     r3, sp, #0x54
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0x9c] @ 0x2242818, (=0x22436e0)
	add     r3, sp, #0x38
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
	mov     r3, #0x67
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0x6c] @ 0x224281c, (=0x22436fc)
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
	ldr     r5, [pc, #0x48] @ 0x2242820, (=0x22436c4)
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
	ldr     r1, [pc, #0x24] @ 0x2242824, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	add     sp, #0x64
	pop     {r4,r5,pc}
@ 0x2242814

.word 0x22436a0 @ 0x2242814
.word 0x22436e0 @ 0x2242818
.word 0x22436fc @ 0x224281c
.word 0x22436c4 @ 0x2242820
.word 0x4000008 @ 0x2242824
.thumb
Function_2242828: @ 2242828 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	mov     r0, #0xdb
	mov     r2, r5
	lsl     r0, r0, #2
	add     r2, #0x90
	ldr     r0, [r5, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x78
	mov     r3, r4
	bl      Function_20070e8
	ldrb    r0, [r5, #0x9]
	bl      0x223c000
	cmp     r0, #0x0
	bne     branch_2242860
	mov     r1, #0x74
	b       branch_2242862
@ 0x2242860

.thumb
branch_2242860: @ 2242860 :thumb
	mov     r1, #0x76
.thumb
branch_2242862: @ 2242862 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r5, #0x90
	ldr     r2, [r5, #0x0]
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2242884

.thumb
Function_2242884: @ 2242884 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	mov     r4, r1
	bl      0x223c000
	cmp     r0, #0x0
	bne     branch_224289a
	mov     r1, #0x75
	b       branch_224289c
@ 0x224289a

.thumb
branch_224289a: @ 224289a :thumb
	mov     r1, #0x77
.thumb
branch_224289c: @ 224289c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r5, #0x90
	ldr     r2, [r5, #0x0]
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22428be


.align 2, 0


.thumb
Function_22428c0: @ 22428c0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0x96
	mov     r1, #0xa7
	add     r2, sp, #0x0
	mov     r3, #0x67
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0xe0
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0xe0
	blx     GX_LoadBGPltt
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22428f2


.align 2, 0


.thumb
Function_22428f4: @ 22428f4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	mov     r0, #0xdb
	mov     r2, r5
	lsl     r0, r0, #2
	add     r2, #0x90
	ldr     r0, [r5, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x7a
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x67
	str     r0, [sp, #0x4]
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xa8
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r5, #0x90
	ldr     r2, [r5, #0x0]
	mov     r1, #0x79
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224295a


.align 2, 0


.thumb
Function_224295c: @ 224295c :thumb
	mov     r3, #0x0
	strb    r3, [r0, #0x8]
	str     r2, [r1, #0x0]
	bx      lr
@ 0x2242964

.thumb
Function_2242964: @ 2242964 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x10]
	lsl     r1, r1, #1
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x10]
	ldr     r0, [pc, #0x48] @ 0x22429c0, (=0x224368f)
	ldrb    r2, [r4, #0x10]
	ldrb    r0, [r0, r1]
	cmp     r2, r0
	bcc     branch_22429be
	mov     r0, #0x0
	strb    r0, [r4, #0x10]
	ldrb    r0, [r4, #0xc]
	cmp     r0, #0x1
	bne     branch_224299a
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #28
	sub     r1, r1, r2
	mov     r0, #0x1c
	ror     r1, r0
	add     r0, r2, r1
	b       branch_224299e
@ 0x224299a

.thumb
branch_224299a: @ 224299a :thumb
	ldrb    r0, [r4, #0xd]
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_224299e: @ 224299e :thumb
	strb    r0, [r4, #0xd]
	ldr     r0, [pc, #0x20] @ 0x22429c4, (=0x5e5)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0x2e
	ldrb    r1, [r4, #0xd]
	ldrb    r0, [r0, #0x0]
	cmp     r1, r0
	bcc     branch_22429b6
	mov     r0, #0x0
	strb    r0, [r4, #0xd]
.thumb
branch_22429b6: @ 22429b6 :thumb
	ldrb    r1, [r4, #0xd]
	mov     r0, r4
	bl      Function_22429c8
.thumb
branch_22429be: @ 22429be :thumb
	pop     {r4,pc}
@ 0x22429c0

.word 0x224368f @ 0x22429c0
.word 0x5e5 @ 0x22429c4
.thumb
Function_22429c8: @ 22429c8 :thumb
	push    {r4,lr}
	mov     r2, r1
	mov     r1, #0xb5
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	lsr     r4, r2, #31
	lsl     r3, r2, #30
	sub     r3, r3, r4
	mov     r1, #0x1e
	ror     r3, r1
	add     r1, r4, r3
	mov     r3, #0x28
	mov     r4, r1
	mul     r4, r3
	lsr     r2, r2, #2
	mul     r3, r2
	add     r4, #0x44
	add     r3, #0x24
	lsl     r1, r4, #16
	lsl     r2, r3, #16
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_22435b4
	pop     {r4,pc}
@ 0x22429fa


.align 2, 0


.thumb
Function_22429fc: @ 22429fc :thumb
	ldrb    r1, [r0, #0xd]
	strb    r1, [r0, #0x14]
	bx      lr
@ 0x2242a02


.align 2, 0


.thumb
Function_2242a04: @ 2242a04 :thumb
	cmp     r1, r0
	bcc     branch_2242a0e
	sub     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r1, r0, #24
.thumb
branch_2242a0e: @ 2242a0e :thumb
	mov     r0, r1
	bx      lr
@ 0x2242a12


.align 2, 0


.thumb
Function_2242a14: @ 2242a14 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	ldrh    r4, [r5, #0x28]
	bl      0x223c000
	cmp     r0, #0x1
	bne     branch_2242a30
	ldr     r0, [pc, #0xc] @ 0x2242a34, (=0x3c2)
	ldrh    r1, [r5, r0]
	ldrh    r0, [r5, #0x28]
	cmp     r1, r0
	bls     branch_2242a30
	mov     r4, r1
.thumb
branch_2242a30: @ 2242a30 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2242a34

.word 0x3c2 @ 0x2242a34
.thumb
Function_2242a38: @ 2242a38 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	cmp     r1, #0x1e
	beq     branch_2242a4a
	cmp     r1, #0x1f
	beq     branch_2242a52
	cmp     r1, #0x20
	beq     branch_2242a5a
	b       branch_2242a60
@ 0x2242a4a

.thumb
branch_2242a4a: @ 2242a4a :thumb
	mov     r5, #0x47
	bl      Function_2242a7c
	b       branch_2242a60
@ 0x2242a52

.thumb
branch_2242a52: @ 2242a52 :thumb
	mov     r5, #0x48
	bl      Function_2242ae8
	b       branch_2242a60
@ 0x2242a5a

.thumb
branch_2242a5a: @ 2242a5a :thumb
	mov     r5, #0x49
	bl      Function_2242b74
.thumb
branch_2242a60: @ 2242a60 :thumb
	mov     r1, #0x37
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r4, r1
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2242a76
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2242a76

.thumb
branch_2242a76: @ 2242a76 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2242a7a


.align 2, 0


.thumb
Function_2242a7c: @ 2242a7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r0, #0x37
	lsl     r0, r0, #4
	strh    r4, [r5, r0]
	mov     r2, #0x0
	mov     r3, r5
	add     r1, r0, #0x4
.thumb
branch_2242a96: @ 2242a96 :thumb
	add     r0, r5, r2
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r0, [r3, r1]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x10
	blt     branch_2242a96
	ldrh    r1, [r5, #0x16]
	mov     r0, #0xe5
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x2242ab0


.thumb
.globl Function_108_2242ab0
Function_108_2242ab0: @ 2242ab0 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r6, r0
	ldrb    r0, [r4, #0xf]
	mov     r5, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_2242ae6
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_2242ae6
	mov     r2, #0x0
	mov     r3, r5
.thumb
branch_2242ad2: @ 2242ad2 :thumb
	ldrh    r1, [r3, #0x4]
	add     r0, r4, r2
	add     r0, #0x34
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strb    r1, [r0, #0x0]
	cmp     r2, #0x10
	blt     branch_2242ad2
	ldrh    r0, [r5, #0x24]
	strh    r0, [r4, #0x16]
.thumb
branch_2242ae6: @ 2242ae6 :thumb
	pop     {r4-r6,pc}
@ 0x2242ae8

.thumb
Function_2242ae8: @ 2242ae8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x37
	lsl     r0, r0, #4
	strh    r1, [r5, r0]
	mov     r4, r2
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r4, [r5, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2242b08
	ldrb    r0, [r5, #0xe]
	cmp     r0, #0xff
	bne     branch_2242b08
	strb    r4, [r5, #0xe]
.thumb
branch_2242b08: @ 2242b08 :thumb
	ldrb    r1, [r5, #0xe]
	mov     r0, #0xdd
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	ldr     r1, [r5, #0x24]
	.hword  0x1c80 @ add r0, r0, #0x2
	ldrh    r1, [r1, #0x0]
	strh    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x2242b1a


.align 2, 0
.thumb
Function_2242b1c: @ 2242b1c :thumb
	ldr     r3, [pc, #0x0] @ 0x2242b20, (=PRNG+1)
	bx      r3
@ 0x2242b20

.word PRNG+1 @ 0x2242b20



.thumb
.globl Function_108_2242b24
Function_108_2242b24: @ 2242b24 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r6, r0
	ldrb    r0, [r4, #0xf]
	mov     r5, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_2242b6e
	ldrh    r1, [r5, #0x2]
	ldr     r0, [pc, #0x30] @ 0x2242b70, (=0x3c1)
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2242b64
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0xff
	ldr     r0, [pc, #0x20] @ 0x2242b70, (=0x3c1)
	beq     branch_2242b56
	mov     r1, #0x0
	strb    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x2242b56

.thumb
branch_2242b56: @ 2242b56 :thumb
	ldrb    r1, [r4, r0]
	mov     r0, r4
	add     r0, #0x2e
	ldrb    r0, [r0, #0x0]
	add     r0, r1, r0
	strb    r0, [r4, #0xe]
	pop     {r4-r6,pc}
@ 0x2242b64

.thumb
branch_2242b64: @ 2242b64 :thumb
	ldrh    r0, [r5, #0x4]
	strb    r0, [r4, #0xe]
	ldrh    r1, [r5, #0x6]
	ldr     r0, [r4, #0x24]
	strh    r1, [r0, #0x0]
.thumb
branch_2242b6e: @ 2242b6e :thumb
	pop     {r4-r6,pc}
@ 0x2242b70

.word 0x3c1 @ 0x2242b70
.thumb
Function_2242b74: @ 2242b74 :thumb
	mov     r2, #0x37
	lsl     r2, r2, #4
	strh    r1, [r0, r2]
	ldrb    r3, [r0, #0xd]
	add     r1, r2, #0x2
	strh    r3, [r0, r1]
	bx      lr
@ 0x2242b82


.align 2, 0
.thumb
.globl Function_108_2242b84
Function_108_2242b84: @ 2242b84 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r6, r3
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_2242b9c
	ldrh    r1, [r4, #0x2]
	mov     r0, #0xf
	lsl     r0, r0, #6
	strb    r1, [r6, r0]
.thumb
branch_2242b9c: @ 2242b9c :thumb
	pop     {r4-r6,pc}
@ 0x2242b9e


.align 2, 0


.thumb
Function_2242ba0: @ 2242ba0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	add     r0, #0x2e
	ldrb    r0, [r0, #0x0]
	bl      Function_2242a04
	ldr     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r0, r1, r0
	add     r0, #0x34
	ldrb    r6, [r0, #0x0]
	mov     r0, r1
	ldr     r0, [r0, #0x20]
	mov     r7, #0xb6
	strb    r6, [r0, #0x0]
	mov     r4, #0x0
	mov     r5, r1
	lsl     r7, r7, #2
.thumb
branch_2242bc6: @ 2242bc6 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2242bd2
	mov     r1, r6
	bl      Function_22435f4
.thumb
branch_2242bd2: @ 2242bd2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x10
	blt     branch_2242bc6
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_22429c8
	ldr     r0, [pc, #0x8] @ 0x2242bec, (=0x5e3)
	bl      Function_2005748
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2242bec

.word 0x5e3 @ 0x2242bec
.thumb
Function_2242bf0: @ 2242bf0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	str     r0, [sp, #0x4]
	add     r0, #0x64
	ldr     r5, [pc, #0x154] @ 0x2242d50, (=0x2243718)
	mov     r7, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_2242c00: @ 2242c00 :thumb
	ldrh    r0, [r6, #0x2a]
	cmp     r0, #0x5
	bhi     branch_2242c4e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2242c12

Jumppoints_2242c12:
.hword branch_2242c1e - Jumppoints_2242c12 - 2
.hword branch_2242c26 - Jumppoints_2242c12 - 2
.hword branch_2242c2e - Jumppoints_2242c12 - 2
.hword branch_2242c36 - Jumppoints_2242c12 - 2
.hword branch_2242c3e - Jumppoints_2242c12 - 2
.hword branch_2242c46 - Jumppoints_2242c12 - 2
.thumb
branch_2242c1e: @ 2242c1e :thumb
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	b       branch_2242c54
@ 0x2242c26

.thumb
branch_2242c26: @ 2242c26 :thumb
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	b       branch_2242c54
@ 0x2242c2e

.thumb
branch_2242c2e: @ 2242c2e :thumb
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	b       branch_2242c54
@ 0x2242c36

.thumb
branch_2242c36: @ 2242c36 :thumb
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	b       branch_2242c54
@ 0x2242c3e

.thumb
branch_2242c3e: @ 2242c3e :thumb
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	b       branch_2242c54
@ 0x2242c46

.thumb
branch_2242c46: @ 2242c46 :thumb
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	b       branch_2242c54
@ 0x2242c4e

.thumb
branch_2242c4e: @ 2242c4e :thumb
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
.thumb
branch_2242c54: @ 2242c54 :thumb
	cmp     r0, #0x1
	bne     branch_2242d42
	mov     r0, r7
	sub     r0, #0x18
	mov     r4, #0xff
	cmp     r0, #0x7
	bhi     branch_2242c98
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2242c6e

Jumppoints_2242c6e:
.hword branch_2242c82 - Jumppoints_2242c6e - 2
.hword branch_2242c86 - Jumppoints_2242c6e - 2
.hword branch_2242c8a - Jumppoints_2242c6e - 2
.hword branch_2242c7e - Jumppoints_2242c6e - 2
.hword branch_2242c8e - Jumppoints_2242c6e - 2
.hword branch_2242c92 - Jumppoints_2242c6e - 2
.hword branch_2242c98 - Jumppoints_2242c6e - 2
.hword branch_2242c96 - Jumppoints_2242c6e - 2
.thumb
branch_2242c7e: @ 2242c7e :thumb
	mov     r4, #0x0
	b       branch_2242c98
@ 0x2242c82

.thumb
branch_2242c82: @ 2242c82 :thumb
	mov     r4, #0x1
	b       branch_2242c98
@ 0x2242c86

.thumb
branch_2242c86: @ 2242c86 :thumb
	mov     r4, #0x2
	b       branch_2242c98
@ 0x2242c8a

.thumb
branch_2242c8a: @ 2242c8a :thumb
	mov     r4, #0x3
	b       branch_2242c98
@ 0x2242c8e

.thumb
branch_2242c8e: @ 2242c8e :thumb
	mov     r4, #0x4
	b       branch_2242c98
@ 0x2242c92

.thumb
branch_2242c92: @ 2242c92 :thumb
	mov     r4, #0x5
	b       branch_2242c98
@ 0x2242c96

.thumb
branch_2242c96: @ 2242c96 :thumb
	mov     r4, #0x6
.thumb
branch_2242c98: @ 2242c98 :thumb
	mov     r0, r6
	bl      Function_2242a14
	mov     r1, #0x7
	str     r0, [sp, #0x0]
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r2, r0, #16
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x2242d54, (=0x270f)
	cmp     r1, r0
	bcc     branch_2242cb4
	mov     r2, #0x6
.thumb
branch_2242cb4: @ 2242cb4 :thumb
	cmp     r4, #0xff
	beq     branch_2242d26
	cmp     r2, #0x7
	bhi     branch_2242d1e
	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2242cc8

Jumppoints_2242cc8:
.hword branch_2242cd8 - Jumppoints_2242cc8 - 2
.hword branch_2242ce2 - Jumppoints_2242cc8 - 2
.hword branch_2242cec - Jumppoints_2242cc8 - 2
.hword branch_2242cf6 - Jumppoints_2242cc8 - 2
.hword branch_2242d00 - Jumppoints_2242cc8 - 2
.hword branch_2242d0a - Jumppoints_2242cc8 - 2
.hword branch_2242d14 - Jumppoints_2242cc8 - 2
.hword branch_2242d14 - Jumppoints_2242cc8 - 2
.thumb
branch_2242cd8: @ 2242cd8 :thumb
	ldr     r0, [pc, #0x7c] @ 0x2242d58, (=0x2243680)
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	b       branch_2242d28
@ 0x2242ce2

.thumb
branch_2242ce2: @ 2242ce2 :thumb
	ldr     r0, [pc, #0x74] @ 0x2242d58, (=0x2243680)
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	b       branch_2242d28
@ 0x2242cec

.thumb
branch_2242cec: @ 2242cec :thumb
	ldr     r0, [pc, #0x68] @ 0x2242d58, (=0x2243680)
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	b       branch_2242d28
@ 0x2242cf6

.thumb
branch_2242cf6: @ 2242cf6 :thumb
	ldr     r0, [pc, #0x60] @ 0x2242d58, (=0x2243680)
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	b       branch_2242d28
@ 0x2242d00

.thumb
branch_2242d00: @ 2242d00 :thumb
	ldr     r0, [pc, #0x54] @ 0x2242d58, (=0x2243680)
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	b       branch_2242d28
@ 0x2242d0a

.thumb
branch_2242d0a: @ 2242d0a :thumb
	ldr     r0, [pc, #0x4c] @ 0x2242d58, (=0x2243680)
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	b       branch_2242d28
@ 0x2242d14

.thumb
branch_2242d14: @ 2242d14 :thumb
	ldr     r0, [pc, #0x40] @ 0x2242d58, (=0x2243680)
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	b       branch_2242d28
@ 0x2242d1e

.thumb
branch_2242d1e: @ 2242d1e :thumb
	bl      ErrorHandling
	mov     r0, #0x1
	b       branch_2242d28
@ 0x2242d26

.thumb
branch_2242d26: @ 2242d26 :thumb
	mov     r0, #0x1
.thumb
branch_2242d28: @ 2242d28 :thumb
	cmp     r0, #0x1
	bne     branch_2242d42
	mov     r0, r6
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	add     r0, r6, r0
	add     r0, #0x44
	strb    r7, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	strb    r1, [r0, #0x0]
.thumb
branch_2242d42: @ 2242d42 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r7, #0x20
	bcs     branch_2242d4c
	b       branch_2242c00
@ 0x2242d4c

.thumb
branch_2242d4c: @ 2242d4c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2242d50

.word 0x2243718 @ 0x2242d50
.word 0x270f @ 0x2242d54
.word 0x2243680 @ 0x2242d58



.thumb
Function_2242d5c: @ 2242d5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldrb    r3, [r5, #0x12]
	ldr     r2, [pc, #0xa4] @ 0x2242e0c, (=Unknown_224367c)
	mov     r1, #0x0
branch_2242d68: @ 2242d68 :thumb
	ldrb    r0, [r2, #0x0]
	cmp     r3, r0
	bcs     branch_2242d76
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r1, #0x4
	bcc     branch_2242d68
branch_2242d76: @ 2242d76 :thumb
	mov     r0, r5
	strb    r1, [r5, #0x11]
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2242e06
	mov     r0, r5
	str     r0, [sp, #0x4]
	add     r0, #0x33
	str     r0, [sp, #0x4]
	mov     r0, r5
	str     r0, [sp, #0x0]
	add     r0, #0x32
	mov     r7, r5
	mov     r6, r5
	str     r0, [sp, #0x0]
	add     r7, #0x31
	add     r6, #0x30
.thumb
branch_2242d9c: @ 2242d9c :thumb
	add     r0, r5, r4
	add     r0, #0x44
	ldrb    r0, [r0, #0x0]
	bl      0x223c148
	cmp     r0, #0x0
	bne     branch_2242db2
	ldrb    r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r6, #0x0]
	b       branch_2242dfa
@ 0x2242db2

.thumb
branch_2242db2: @ 2242db2 :thumb
	add     r0, r5, r4
	add     r0, #0x44
	ldrb    r0, [r0, #0x0]
	bl      0x223c148
	cmp     r0, #0x1
	bne     branch_2242dc8
	ldrb    r0, [r7, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r7, #0x0]
	b       branch_2242dfa
@ 0x2242dc8

.thumb
branch_2242dc8: @ 2242dc8 :thumb
	add     r0, r5, r4
	add     r0, #0x44
	ldrb    r0, [r0, #0x0]
	bl      0x223c148
	cmp     r0, #0x2
	bne     branch_2242de2
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	strb    r1, [r0, #0x0]
	b       branch_2242dfa
@ 0x2242de2

.thumb
branch_2242de2: @ 2242de2 :thumb
	add     r0, r5, r4
	add     r0, #0x44
	ldrb    r0, [r0, #0x0]
	bl      0x223c148
	cmp     r0, #0x3
	bne     branch_2242dfa
	ldr     r0, [sp, #0x4]
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	strb    r1, [r0, #0x0]
.thumb
branch_2242dfa: @ 2242dfa :thumb
	mov     r0, r5
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2242d9c
.thumb
branch_2242e06: @ 2242e06 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2242e0a

.align 2
.word Unknown_224367c @ 0x2242e0c



.thumb
Function_2242e10: @ 2242e10 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
branch_2242e1a: @ 2242e1a :thumb
	ldrb    r1, [r6, #0x11]
	mov     r0, r6
	bl      Function_2242ef4
	mov     r5, r0
	add     r0, r6, r5
	add     r0, #0x30
	mov     r4, #0x0
	ldrb    r7, [r0, #0x0]
	cmp     r5, #0x0
	beq     branch_2242e70
	cmp     r5, #0x1
	bne     branch_2242e3e
	mov     r0, r6
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	add     r4, r4, r0
	b       branch_2242e70
@ 0x2242e3e

.thumb
branch_2242e3e: @ 2242e3e :thumb
	cmp     r5, #0x2
	bne     branch_2242e54
	mov     r0, r6
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	add     r1, r4, r0
	mov     r0, r6
	add     r0, #0x31
	ldrb    r0, [r0, #0x0]
	add     r4, r1, r0
	b       branch_2242e70
@ 0x2242e54

.thumb
branch_2242e54: @ 2242e54 :thumb
	cmp     r5, #0x3
	bne     branch_2242e70
	mov     r0, r6
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	add     r1, r4, r0
	mov     r0, r6
	add     r0, #0x31
	ldrb    r0, [r0, #0x0]
	add     r1, r1, r0
	mov     r0, r6
	add     r0, #0x32
	ldrb    r0, [r0, #0x0]
	add     r4, r1, r0
.thumb
branch_2242e70: @ 2242e70 :thumb
	bl      PRNG
	mov     r1, r7
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	add     r0, r0, r4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r7, #0x0
.thumb
branch_2242e8c: @ 2242e8c :thumb
	cmp     r7, #0x32
	blt     branch_2242ea0
	bl      ErrorHandling
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	add     r0, r6, r0
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	b       branch_2242ee6
@ 0x2242ea0

.thumb
branch_2242ea0: @ 2242ea0 :thumb
	add     r0, r6, r4
	add     r0, #0x44
	ldrb    r0, [r0, #0x0]
	bl      0x223c148
	cmp     r5, r0
	bne     branch_2242ebe
	add     r0, r6, r4
	add     r0, #0x44
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, r6, r0
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	b       branch_2242ee6
@ 0x2242ebe

.thumb
branch_2242ebe: @ 2242ebe :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r6
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r4, r0
	bcc     branch_2242ed2
	mov     r4, #0x0
.thumb
branch_2242ed2: @ 2242ed2 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r4, r0
	bne     branch_2242e8c
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x4
	bcc     branch_2242e8c
	mov     r5, #0x0
	b       branch_2242e8c
@ 0x2242ee6

.thumb
branch_2242ee6: @ 2242ee6 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x10
	blt     branch_2242e1a
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2242ef4

.thumb
Function_2242ef4: @ 2242ef4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, #0x0
	bl      PRNG
	mov     r1, #0x64
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r2, r0, #16
	ldr     r3, [pc, #0x28] @ 0x2242f34, (=0x22436b0)
	lsl     r1, r4, #2
	mov     r0, r5
	add     r1, r3, r1
.thumb
branch_2242f10: @ 2242f10 :thumb
	ldrb    r3, [r1, r0]
	add     r3, r5, r3
	lsl     r3, r3, #24
	lsr     r5, r3, #24
	cmp     r2, r5
	blt     branch_2242f26
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x4
	bcc     branch_2242f10
.thumb
branch_2242f26: @ 2242f26 :thumb
	cmp     r0, #0x4
	bcc     branch_2242f30
	bl      ErrorHandling
	mov     r0, #0x0
.thumb
branch_2242f30: @ 2242f30 :thumb
	pop     {r3-r5,pc}
@ 0x2242f32


.align 2


.word 0x22436b0 @ 0x2242f34
.thumb
Function_2242f38: @ 2242f38 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x1
	bl      0x223bd70
	mov     r6, r0
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x1
	bl      0x223bda4
	mov     r7, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	bls     branch_2242f9a
.thumb
branch_2242f56: @ 2242f56 :thumb
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2242f80
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_22435a8
	b       branch_2242f90
@ 0x2242f80

.thumb
branch_2242f80: @ 2242f80 :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_22435a8
.thumb
branch_2242f90: @ 2242f90 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, r6
	bcc     branch_2242f56
.thumb
branch_2242f9a: @ 2242f9a :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	bls     branch_2242fe4
	mov     r6, #0xda
	lsl     r6, r6, #2
.thumb
branch_2242fa4: @ 2242fa4 :thumb
	ldr     r0, [r5, r6]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2242fca
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_22435a8
	b       branch_2242fda
@ 0x2242fca

.thumb
branch_2242fca: @ 2242fca :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_22435a8
.thumb
branch_2242fda: @ 2242fda :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, r7
	bcc     branch_2242fa4
.thumb
branch_2242fe4: @ 2242fe4 :thumb
	pop     {r3-r7,pc}
@ 0x2242fe6


.align 2, 0


.thumb
Function_2242fe8: @ 2242fe8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2243004, (=0x2243687)
	bl      Function_20226dc
	cmp     r0, #0x0
	bne     branch_2243000
	mov     r0, r4
	bl      Function_2243008
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243000

.thumb
branch_2243000: @ 2243000 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2243004

.word 0x2243687 @ 0x2243004
.thumb
Function_2243008: @ 2243008 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2243028, (=0x5dc)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x14] @ 0x224302c, (=0x5e4)
	bl      Function_2005748
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22435f4
	pop     {r4,pc}
@ 0x2243028

.word 0x5dc @ 0x2243028
.word 0x5e4 @ 0x224302c
.thumb
Function_2243030: @ 2243030 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	str     r1, [sp, #0x14]
	mov     r0, #0x20
	mov     r1, #0x67
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x1c]
	bl      Function_201dbec
	bl      Function_22431fc
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x67
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r0, #0x22
	add     r1, r5, #0x4
	mov     r2, #0x67
	bl      Function_20095c4
	ldr     r4, [pc, #0x7c] @ 0x22430ec, (=0x2243760)
	str     r0, [r5, #0x0]
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_2243076: @ 2243076 :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r7
	mov     r2, #0x67
	bl      Function_2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x4
	blt     branch_2243076
	mov     r0, r5
	bl      Function_2243490
	mov     r0, r5
	bl      Function_2243230
	mov     r0, r5
	bl      Function_22432b4
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	mov     r0, r5
	bl      Function_2243360
	mov     r7, #0x4f
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_22430b6: @ 22430b6 :thumb
	ldr     r0, [r4, r7]
	bl      Function_200a328
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0xb
	blt     branch_22430b6
	mov     r6, #0x5
	mov     r4, #0x0
	lsl     r6, r6, #6
.thumb
branch_22430ca: @ 22430ca :thumb
	ldr     r0, [r5, r6]
	bl      Function_200a5c8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_22430ca
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22430ec

.word 0x2243760 @ 0x22430ec
.thumb
Function_22430f0: @ 22430f0 :thumb
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
	mov     r1, #0x1
	lsl     r1, r1, #12
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x30]
	mov     r0, r5
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x38]
	str     r0, [sp, #0x3c]
	str     r1, [sp, #0x40]
	str     r1, [sp, #0x44]
	str     r1, [sp, #0x48]
	add     r1, sp, #0x2c
	strh    r0, [r1, #0x20]
	ldr     r1, [sp, #0x94]
	str     r1, [sp, #0x50]
	mov     r1, #0x67
	str     r1, [sp, #0x58]
	add     r1, sp, #0x80
	ldrb    r1, [r1, #0x1c]
	cmp     r1, #0x0
	bne     branch_2243162
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	b       branch_224316e
@ 0x2243162

.thumb
branch_2243162: @ 2243162 :thumb
	mov     r1, #0x2
	str     r1, [sp, #0x54]
	mov     r1, #0x3
	lsl     r1, r1, #18
	add     r0, r0, r1
	str     r0, [sp, #0x38]
.thumb
branch_224316e: @ 224316e :thumb
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
@ 0x2243194

.thumb
Function_2243194: @ 2243194 :thumb
	push    {r4-r6,lr}
	mov     r6, #0x4f
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_224319e: @ 224319e :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      Function_200a4e4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0xb
	bcc     branch_224319e
	mov     r6, #0x5
	mov     r4, #0x0
	lsl     r6, r6, #6
.thumb
branch_22431b8: @ 22431b8 :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      Function_200a6dc
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_22431b8
	mov     r6, #0x4b
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_22431d2: @ 22431d2 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      Function_2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_22431d2
	ldr     r0, [r5, #0x0]
	bl      Function_2021964
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	pop     {r4-r6,pc}
@ 0x22431fa


.align 2, 0


.thumb
Function_22431fc: @ 22431fc :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x28] @ 0x224322c, (=0x2243764)
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
	mov     r0, #0xe
	mov     r1, #0x67
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x224322c

.word 0x2243764 @ 0x224322c
.thumb
Function_2243230: @ 2243230 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r4, r0
	str     r3, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xc5
	ldr     r0, [r4, r0]
	mov     r1, #0x97
	mov     r2, #0x12
	bl      Function_200985c
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	add     r0, #0xc9
	ldr     r0, [r4, r0]
	mov     r1, #0x97
	mov     r2, #0x28
	mov     r3, #0x0
	bl      Function_20098b8
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xcd
	ldr     r0, [r4, r0]
	mov     r1, #0x97
	mov     r2, #0x14
	bl      Function_2009918
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xd1
	ldr     r0, [r4, r0]
	mov     r1, #0x97
	mov     r2, #0x13
	bl      Function_2009918
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x10
	pop     {r4,pc}
@ 0x22432b4


.thumb
Function_22432b4: @ 22432b4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0

	mov     r0, #PlPlistGra_Narc
	mov     r1, #0x67
	bl      LoadFromNARC_8
	mov     r4, r0
	bl      Function_2081930
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xc5
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
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	add     r0, #0xc9
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
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xcd
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
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xd1
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
@ 0x2243360

.thumb
Function_2243360: @ 2243360 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	mov     r7, r1

	mov     r0, #PlPokeIcon_Narc
	mov     r1, #0x67
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	bl      LoadFromNARC_8
	str     r0, [sp, #0x18]
	bl      Function_2079fd0
	mov     r1, #0x3
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	add     r0, #0xc9
	ldr     r0, [r6, r0]
	mov     r1, #0x13
	mov     r3, #0x0
	bl      Function_20098b8
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r6, r1]
	bl      Function_2079fd8
	mov     r2, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xcd
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	bl      Function_2079fe4
	mov     r2, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xd1
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_22433e6: @ 22433e6 :thumb
	cmp     r4, #0x3
	bne     branch_224341c
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2243406
	mov     r0, r7
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x1c]
	b       branch_2243430
@ 0x2243406

.thumb
branch_2243406: @ 2243406 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x10]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x1c]
	b       branch_2243430
@ 0x224341c

.thumb
branch_224341c: @ 224341c :thumb
	mov     r0, r7
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x10]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x1c]
.thumb
branch_2243430: @ 2243430 :thumb
	ldr     r0, [sp, #0x20]
	bl      Function_2079d80_CallGetPokeIconGraphicNr
	mov     r2, r0
	add     r0, r4, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xc5
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x1c]
	bl      Function_2079d80_CallGetPokeIconGraphicNr
	mov     r2, r0
	add     r0, r4, #0x7
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xc5
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	bcc     branch_22433e6
	ldr     r0, [sp, #0x18]
	bl      Call_FS_CloseFile
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x224348e


.align 2, 0


.thumb
Function_2243490: @ 2243490 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xc5
	ldr     r0, [r4, r0]
	mov     r1, #0x97
	mov     r2, #0x15
	mov     r3, #0x1
	bl      Function_200985c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r0, [sp, #0xc]
	add     r0, #0xc9
	ldr     r0, [r4, r0]
	mov     r1, #0x97
	mov     r2, #0x29
	bl      Function_20098b8
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xcd
	ldr     r0, [r4, r0]
	mov     r1, #0x97
	mov     r2, #0x17
	mov     r3, #0x1
	bl      Function_2009918
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	str     r0, [sp, #0x8]
	add     r0, #0xd1
	ldr     r0, [r4, r0]
	mov     r1, #0x97
	mov     r2, #0x16
	mov     r3, #0x1
	bl      Function_2009918
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x10
	pop     {r4,pc}
@ 0x224351a


.align 2, 0


.thumb
Function_224351c: @ 224351c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x67
	mov     r1, #0x14
	mov     r7, r2
	str     r3, [sp, #0x10]
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_2243538: @ 2243538 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2243538
	ldr     r0, [sp, #0x38]
	ldr     r3, [sp, #0x10]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x44]
	mov     r1, r6
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x48]
	mov     r2, r7
	str     r0, [sp, #0x8]
	add     r0, sp, #0x4c
	ldrb    r0, [r0, #0x0]
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      Function_22430f0
	str     r0, [r4, #0x10]
	add     r0, sp, #0x28
	ldrh    r3, [r0, #0x14]
	strh    r3, [r4, #0xc]
	ldrh    r1, [r0, #0x18]
	add     r0, sp, #0x4c
	ldrb    r2, [r0, #0x0]
	strh    r1, [r4, #0xe]
	lsl     r0, r3, #12
	strb    r2, [r4, #0xb]
	lsl     r1, r1, #12
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	cmp     r2, #0x1
	bne     branch_2243584
	mov     r0, #0x3
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x18]
.thumb
branch_2243584: @ 2243584 :thumb
	ldr     r0, [r4, #0x10]
	add     r1, sp, #0x14
	bl      Function_2021c50
	mov     r0, r4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2243592


.align 2, 0


.thumb
Function_2243594: @ 2243594 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      Function_2021bd4
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22435a8

.thumb
Function_22435a8: @ 22435a8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22435b0, (=Function_2021cac+1)
	ldr     r0, [r0, #0x10]
	bx      r3
@ 0x22435ae


.align 2


.word Function_2021cac+1 @ 0x22435b0
.thumb
Function_22435b4: @ 22435b4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r4, r1
	mov     r6, r2
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	lsl     r1, r6, #12
	str     r0, [r2, #0x0]
	lsl     r0, r4, #12
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0xb]
	cmp     r0, #0x1
	bne     branch_22435e6
	mov     r0, #0x3
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x4]
.thumb
branch_22435e6: @ 22435e6 :thumb
	ldr     r0, [r5, #0x10]
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22435f2


.align 2, 0


.thumb
Function_22435f4: @ 22435f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x1
	ldr     r0, [r5, #0x10]
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      Function_2021dcc
	pop     {r3-r5,pc}
@ 0x224360e


.align 2, 0


.thumb
Function_2243610: @ 2243610 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_2079fc4
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	bl      Function_2021f24
	pop     {r4,pc}
@ 0x2243624

.thumb
Function_2243624: @ 2243624 :thumb
	ldr     r3, [pc, #0x4] @ 0x224362c, (=Function_2021cc8+1)
	ldr     r0, [r0, #0x10]
	bx      r3
@ 0x224362a


.align 2


.word Function_2021cc8+1 @ 0x224362c
.thumb
Function_2243630: @ 2243630 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_2243638: @ 2243638 :thumb
	ldr     r2, [pc, #0x20] @ 0x224365c, (=0x2243774)
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
	cmp     r4, #0x2
	bcc     branch_2243638
	pop     {r3-r7,pc}
@ 0x224365c

.word 0x2243774 @ 0x224365c



.thumb
Function_2243660: @ 2243660 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
branch_2243666: @ 2243666 :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	bl      Function_201a8fc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x2
	bcc     branch_2243666
	pop     {r3-r5,pc}
@ 0x224367a


.align 2, 0
Unknown_224367c: @ 0x224367c
.incbin "./baserom/overlay/overlay_0108.bin", 0x1b9c, 0x22437a0 - 0x224367c


@end 0x22437a0



