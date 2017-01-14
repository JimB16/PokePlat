

.section .iwram119, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3,lr}
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xc] @ 0x21d0da0, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x21d0da4, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x21d0da0

.word 0xffffe0ff @ 0x21d0da0
.word 0x4001000 @ 0x21d0da4
.thumb
Function_21d0da8: @ 21d0da8 :thumb
	push    {r3,lr}
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d0dcc, (=0x4000050)
	mov     r1, #0x0
	mov     r2, #0xe
	mov     r3, #0xb
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x10] @ 0x21d0dd0, (=0x4001050)
	mov     r1, #0x0
	mov     r2, #0xe
	mov     r3, #0x7
	blx     G2x_SetBlendAlpha_
	pop     {r3,pc}
@ 0x21d0dcc

.word 0x4000050 @ 0x21d0dcc
.word 0x4001050 @ 0x21d0dd0
.thumb
Function_21d0dd4: @ 21d0dd4 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, #0x2
	mov     r1, #0x0
	ldr     r0, [pc, #0x10] @ 0x21d0df0, (=0x21d0df5)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x47
	mov     r3, r1
	bl      Function_2024220
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21d0dee


.align 2


.word 0x21d0df5 @ 0x21d0df0
.thumb
Function_21d0df4: @ 21d0df4 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x60] @ 0x21d0e60, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x21d0e64, (=0xffffcffd)
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
	ldr     r2, [pc, #0x40] @ 0x21d0e68, (=0xcffb)
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
	ldr     r2, [pc, #0x1c] @ 0x21d0e6c, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0x14] @ 0x21d0e70, (=0xbfff0000)
	ldr     r0, [pc, #0x18] @ 0x21d0e74, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x21d0e60

.word 0x4000008 @ 0x21d0e60
.word 0xffffcffd @ 0x21d0e64
.word 0xcffb @ 0x21d0e68
.word 0x7fff @ 0x21d0e6c
.word 0xbfff0000 @ 0x21d0e70
.word 0x4000580 @ 0x21d0e74
.thumb
Function_21d0e78: @ 21d0e78 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x34] @ 0x21d0eb0, (=0x2100dec)
	mov     r0, #0x2
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	lsl     r0, r0, #14
	mov     r2, r1
	blx     r3
	ldr     r3, [pc, #0x28] @ 0x21d0eb4, (=0x2100df4)
	mov     r1, #0x0
	mov     r4, r0
	ldr     r3, [r3, #0x0]
	mov     r0, #0x80
	mov     r2, r1
	blx     r3
	mov     r5, r0
	cmp     r4, #0x0
	bne     branch_21d0ea0
	bl      ErrorHandling
.thumb
branch_21d0ea0: @ 21d0ea0 :thumb
	cmp     r5, #0x0
	bne     branch_21d0ea8
	bl      ErrorHandling
.thumb
branch_21d0ea8: @ 21d0ea8 :thumb
	bl      Function_2014000
	pop     {r3-r5,pc}
@ 0x21d0eae


.align 2


.word 0x2100dec @ 0x21d0eb0
.word 0x2100df4 @ 0x21d0eb4
.thumb
Function_21d0eb8: @ 21d0eb8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xa8
	mov     r4, r0
	bl      Function_201ff00
	ldr     r5, [pc, #0xf8] @ 0x21d0fbc, (=0x21d2450)
	add     r3, sp, #0x2c
	mov     r2, #0x5
.thumb
branch_21d0ec8: @ 21d0ec8 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d0ec8
	add     r0, sp, #0x2c
	bl      Function_201fe94
	mov     r1, #0x6
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x62
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	mov     r1, #0x19
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x66
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	ldr     r5, [pc, #0xb0] @ 0x21d0fc0, (=Unknown_21d23b8)
	add     r3, sp, #0x1c
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r5, [pc, #0xa0] @ 0x21d0fc4, (=0x21d2518)
	add     r3, sp, #0x54
	mov     r2, #0xa
.thumb
branch_21d0f28: @ 21d0f28 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d0f28
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r2, sp, #0x54
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x2
	add     r2, sp, #0x70
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x3
	add     r2, sp, #0x8c
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r1, [pc, #0x54] @ 0x21d0fc8, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	orr     r2, r0
	strh    r2, [r1, #0x0]
	mov     r1, r0
	bl      Function_201ff0c
	bl      Function_201ffd0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r5, [pc, #0x38] @ 0x21d0fcc, (=0x21d23f4)
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
	add     sp, #0xa8
	pop     {r3-r5,pc}
@ 0x21d0fbc

.word 0x21d2450 @ 0x21d0fbc
.word Unknown_21d23b8 @ 0x21d0fc0
.word 0x21d2518 @ 0x21d0fc4
.word 0x4000008 @ 0x21d0fc8
.word 0x21d23f4 @ 0x21d0fcc



.thumb
Function_21d0fd0: @ 21d0fd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x3c]
	bl      Function_2008a94
	bl      Function_201dcac
	bl      Function_200c800
	ldr     r0, [r4, #0x8]
	bl      Function_2003694
	ldr     r0, [r4, #0x4]
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d0ffc, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x21d1000, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d0ffc

.word 0x27e0000 @ 0x21d0ffc
.word 0x3ff8 @ 0x21d1000
.thumb
Function_21d1004: @ 21d1004 :thumb
	push    {r3,lr}
	bl      Call_G3X_Reset
	bl      Function_201469c
	cmp     r0, #0x0
	ble     branch_21d101a
	bl      Call_G3X_Reset
	blx     Function_20a73c0
.thumb
branch_21d101a: @ 21d101a :thumb
	bl      Function_20146c0
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_20241bc
	pop     {r3,pc}
@ 0x21d1028

.thumb
Function_21d1028: @ 21d1028 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x47
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	add     sp, #0xc
	pop     {pc}
@ 0x21d1046


.align 2, 0


.thumb
Function_21d1048: @ 21d1048 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x47
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	add     sp, #0xc
	pop     {pc}
@ 0x21d1068

.thumb
Function_21d1068: @ 21d1068 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r2
	mov     r4, r1
	lsl     r1, r6, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x47
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, #0x14
	mov     r3, #0xf
	mov     r5, r0
	bl      Function_200dd0c
	mov     r0, r6
	bl      Function_200dd08
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xc0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x26
	mov     r3, #0x47
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x47
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x32
	mov     r3, #0xd
	bl      Function_200daa4
	bl      Function_200daa0
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x26
	mov     r3, #0x47
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xe
	mov     r2, #0x7
	mov     r3, #0x47
	bl      Function_2003050
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d10f0

.thumb
Function_21d10f0: @ 21d10f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r4, r2
	mov     r6, r3
	bl      Function_201a7a0
	ldr     r0, [sp, #0x28]
	lsl     r2, r4, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	lsl     r3, r6, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r1, r5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	lsr     r2, r2, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x34]
	lsr     r3, r3, #24
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r7
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x14
	mov     r3, #0xc
	bl      Function_200e060
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	bl      Function_201a954
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1158

.thumb
Function_21d1158: @ 21d1158 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r1, #0xf
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r6, r3
	bl      Function_201ada4
	ldr     r2, [pc, #0x74] @ 0x21d11e0, (=0x165)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x47
	bl      Function_200b144
	mov     r7, r0
	mov     r0, #0x47
	bl      Function_200b358
	mov     r5, r0
	mov     r0, r7
	mov     r1, r4
	bl      Function_200b1ec
	str     r0, [sp, #0x14]
	mov     r0, #0xff
	mov     r1, #0x47
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [sp, #0x10]
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200b538
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	mov     r2, r4
	str     r3, [sp, #0x8]
	bl      Function_201d738
	mov     r6, r0
	mov     r0, r7
	bl      Function_200b190
	mov     r0, r4
	bl      Function_20237bc
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc
	mov     r0, r5
	bl      Function_200b3f0
	mov     r0, r6
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d11e0

.word 0x165 @ 0x21d11e0
.thumb
Function_21d11e4: @ 21d11e4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r0, r2
	mov     r6, r1
	str     r2, [sp, #0x14]
	mov     r4, r3
	bl      Function_201a7a0
	ldr     r0, [sp, #0x3c]
	ldr     r3, [sp, #0x38]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x40]
	lsl     r2, r4, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x44]
	lsl     r3, r3, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4c]
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x48]
	lsr     r2, r2, #24
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r6
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, #0x2
	mov     r1, #0x47
	bl      Function_2013a04
	str     r0, [r5, #0x48]
	ldr     r2, [pc, #0x8c] @ 0x21d12c8, (=0x165)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x47
	bl      Function_200b144
	mov     r7, r0
	mov     r4, #0x0
.thumb
branch_21d124a: @ 21d124a :thumb
	mov     r0, r7
	add     r1, r4, #0x2
	bl      Function_200b1ec
	mov     r6, r0
	ldr     r0, [r5, #0x48]
	mov     r1, r6
	mov     r2, r4
	bl      Function_2013a6c
	mov     r0, r6
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x2
	blt     branch_21d124a
	mov     r0, r7
	bl      Function_200b190
	ldr     r0, [r5, #0x48]
	mov     r1, #0x0
	str     r0, [sp, #0x18]
	add     r0, sp, #0x18
	strb    r1, [r0, #0x8]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x2
	str     r1, [sp, #0x1c]
	mov     r1, #0x1
	strb    r1, [r0, #0x9]
	strb    r2, [r0, #0xa]
	ldrb    r3, [r0, #0xb]
	mov     r2, #0xf
	bic     r3, r2
	strb    r3, [r0, #0xb]
	ldrb    r3, [r0, #0xb]
	mov     r2, #0x30
	bic     r3, r2
	strb    r3, [r0, #0xb]
	ldrb    r3, [r0, #0xb]
	mov     r2, #0xc0
	bic     r3, r2
	mov     r2, #0x40
	orr     r2, r3
	strb    r2, [r0, #0xb]
	ldr     r0, [sp, #0x14]
	mov     r2, #0x32
	mov     r3, #0xd
	bl      Function_200dc48
	mov     r0, #0x47
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x18
	mov     r1, #0x8
	mov     r3, r2
	bl      Function_2001b7c
	str     r0, [r5, #0x4c]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d12c6


.align 2


.word 0x165 @ 0x21d12c8
.thumb
Function_21d12cc: @ 21d12cc :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x28
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	add     r0, #0x28
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0x28
	bl      Function_201a8fc
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x0
	bl      Function_2001bc4
	ldr     r0, [r4, #0x48]
	bl      Function_2013a3c
	pop     {r4,pc}
@ 0x21d12f8

.thumb
Function_21d12f8: @ 21d12f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201acf4
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x21d1308

.thumb
Function_21d1308: @ 21d1308 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x47
	str     r0, [sp, #0xc]
	mov     r0, #0x76
	mov     r2, r5
	mov     r3, #0x3
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x47
	str     r0, [sp, #0xc]
	mov     r0, #0x76
	mov     r2, r5
	mov     r3, #0x3
	bl      Function_2006e60
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x76
	mov     r2, #0x8
	mov     r3, #0x47
	bl      Function_2003050
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d135a


.align 2, 0


.thumb
Function_21d135c: @ 21d135c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x47
	mov     r4, r1
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	mov     r1, #0xa
	mov     r2, r5
	mov     r3, #0x4
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x47
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	mov     r1, #0xb
	mov     r2, r5
	mov     r3, #0x4
	bl      Function_2006e60
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0xc
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x47
	bl      Function_2003050
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d13b4

.thumb
Function_21d13b4: @ 21d13b4 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x14] @ 0x21d13cc, (=0x2100dec)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bl      Function_20145b4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x21d13ca


.align 2


.word 0x2100dec @ 0x21d13cc
.thumb
Function_21d13d0: @ 21d13d0 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x14] @ 0x21d13e8, (=0x2100df4)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bl      Function_20145f4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x21d13e6


.align 2


.word 0x2100df4 @ 0x21d13e8
.thumb
Function_21d13ec: @ 21d13ec :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r1, #0x12
	lsl     r1, r1, #10
	mov     r4, r0
	bl      malloc
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x12
	ldr     r0, [pc, #0x28] @ 0x21d142c, (=0x21d13b5)
	ldr     r1, [pc, #0x28] @ 0x21d1430, (=0x21d13d1)
	lsl     r3, r3, #10
	str     r4, [sp, #0x4]
	bl      Function_2014014
	mov     r4, r0
	bl      Function_2014784
	mov     r2, r0
	beq     branch_21d1424
	mov     r0, #0x1
	mov     r1, #0xe1
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
.thumb
branch_21d1424: @ 21d1424 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d142a


.align 2


.word 0x21d13b5 @ 0x21d142c
.word 0x21d13d1 @ 0x21d1430
.thumb
Function_21d1434: @ 21d1434 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      Function_21d13ec
	mov     r4, r0
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	bl      Call2_LoadFromNARC_2
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0xa
	mov     r3, #0x1
	bl      Function_20144cc
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21d145c


.thumb
Function_21d145c: @ 21d145c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2014730
	mov     r4, r0
	mov     r0, r5
	bl      Function_201411c
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x21d1474


.thumb
Function_21d1474: @ 21d1474 :thumb
	push    {r3}
	add     sp, #-0xc
	add     r2, sp, #0x0
	mov     r1, #0x0
	str     r1, [r2, #0x0]
	str     r1, [r2, #0x4]
	str     r1, [r2, #0x8]
	ldr     r1, [r0, #0x20]
	ldr     r2, [sp, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x4]
	add     r1, r2, r1
	str     r1, [r0, #0x28]
	ldr     r1, [r0, #0x20]
	ldr     r2, [sp, #0x4]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x8]
	add     r1, r2, r1
	str     r1, [r0, #0x2c]
	ldr     r1, [r0, #0x20]
	ldr     r2, [sp, #0x8]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0xc]
	add     r1, r2, r1
	str     r1, [r0, #0x30]
	add     sp, #0xc
	pop     {r3}
	bx      lr
@ 0x21d14ac

.thumb
Function_21d14ac: @ 21d14ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x10
	bl      malloc
	mov     r4, r0
	bne     branch_21d14c0
	bl      ErrorHandling
.thumb
branch_21d14c0: @ 21d14c0 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r2, [r5, #0x4]
	mov     r1, #0x77
	str     r0, [r4, #0x0]
	str     r2, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_21d1434
	mov     r1, #0x1
	str     r0, [r4, #0xc]
	bl      Function_2014788
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d14dc

.thumb
Function_21d14dc: @ 21d14dc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x10] @ 0x21d14f4, (=0x21d1475)
	mov     r3, r4
	bl      Function_20146f4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_2014788
	pop     {r4,pc}
@ 0x21d14f4

.word Function_21d1474+1 @ =0x21d1475, 0x21d14f4
.thumb
Function_21d14f8: @ 21d14f8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_2014710
	cmp     r0, #0x0
	beq     branch_21d1508
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1508

.thumb
branch_21d1508: @ 21d1508 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d150c


.thumb
Function_21d150c: @ 21d150c :thumb
	ldr     r3, [pc, #0x0] @ 0x21d1510, (=free+1)
	bx      r3
@ 0x21d1510

.word free+1 @ 0x21d1510



.thumb
Function_21d1514: @ 21d1514 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x38
	ldr     r3, [pc, #0xdc] @ 0x21d15f8, (=0x21d2430)
	add     r2, sp, #0x18
	mov     r6, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r5, [r6, #0x50]
	ldr     r4, [r6, #0x54]
	ldr     r6, [r6, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc0] @ 0x21d15fc, (=0x4e20)
	mov     r1, r5
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x18]
	mov     r0, r4
	mov     r2, #0x76
	bl      Function_200cbdc
	mov     r0, #0x76
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xa0] @ 0x21d1600, (=0x4e21)
	mov     r2, r4
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r3, r5
	bl      Function_200cd7c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x90] @ 0x21d1604, (=0x4e22)
	mov     r1, r5
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r0, r4
	mov     r2, #0x76
	bl      Function_200ce0c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x80] @ 0x21d1608, (=0x4e23)
	mov     r1, r5
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x24]
	mov     r0, r4
	mov     r2, #0x76
	bl      Function_200ce3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x70] @ 0x21d160c, (=0x61a8)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, #0x76
	mov     r3, #0x7
	bl      Function_200cbdc
	mov     r0, #0x76
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x50] @ 0x21d1610, (=0x61a9)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r5
	bl      Function_200cd7c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d1614, (=0x61aa)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x76
	mov     r3, #0x6
	bl      Function_200ce0c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21d1618, (=0x61ab)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x76
	mov     r3, #0x5
	bl      Function_200ce3c
	add     sp, #0x38
	pop     {r4-r6,pc}
@ 0x21d15f8

.word 0x21d2430 @ 0x21d15f8
.word 0x4e20 @ 0x21d15fc
.word 0x4e21 @ 0x21d1600
.word 0x4e22 @ 0x21d1604
.word 0x4e23 @ 0x21d1608
.word 0x61a8 @ 0x21d160c
.word 0x61a9 @ 0x21d1610
.word 0x61aa @ 0x21d1614
.word 0x61ab @ 0x21d1618
.thumb
Function_21d161c: @ 21d161c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x34
	mov     r4, r0
	mov     r1, #0x80
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, #0x78
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	mov     r0, #0x1
	mov     r2, #0x2
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x30]
	ldr     r1, [pc, #0x78] @ 0x21d16b8, (=0x4e20)
	str     r0, [sp, #0x10]
	add     r0, r1, #0x1
	str     r0, [sp, #0x18]
	add     r0, r1, #0x2
	str     r0, [sp, #0x1c]
	add     r0, r1, #0x3
	str     r0, [sp, #0x20]
	.hword  0x1ed0 @ sub r0, r2, #0x3
	str     r2, [sp, #0x2c]
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0x54]
	ldr     r1, [r4, #0x50]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	str     r0, [r4, #0x74]
	bl      Function_200d330
	ldr     r0, [r4, #0x74]
	mov     r1, #0x2
	bl      Function_200d6a4
	mov     r2, #0x0
	add     r0, sp, #0x0
	mov     r1, r2
	strh    r2, [r0, #0x0]
	sub     r1, #0x10
	strh    r1, [r0, #0x2]
	ldr     r1, [pc, #0x40] @ 0x21d16bc, (=0x61a8)
	str     r2, [sp, #0x2c]
	add     r0, r1, #0x1
	str     r0, [sp, #0x18]
	add     r0, r1, #0x2
	str     r0, [sp, #0x1c]
	add     r0, r1, #0x3
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x54]
	ldr     r1, [r4, #0x50]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	str     r0, [r4, #0x78]
	bl      Function_200d330
	mov     r1, #0x90
	add     r0, sp, #0x0
	strh    r1, [r0, #0x2]
	ldr     r0, [r4, #0x54]
	ldr     r1, [r4, #0x50]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	str     r0, [r4, #0x7c]
	bl      Function_200d330
	add     sp, #0x34
	pop     {r3,r4,pc}
@ 0x21d16b6


.align 2


.word 0x4e20 @ 0x21d16b8
.word 0x61a8 @ 0x21d16bc
.thumb
Function_21d16c0: @ 21d16c0 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	str     r0, [sp, #0x0]
	add     r0, #0x80
	mov     r3, r1
	ldr     r1, [r0, #0x0]
	add     r4, #0x80
	cmp     r1, #0x0
	bne     branch_21d174e
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa
	blt     branch_21d16e2
	add     r0, r1, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	b       branch_21d174e
@ 0x21d16e2

.thumb
branch_21d16e2: @ 21d16e2 :thumb
	mov     r1, #0x14
	mov     r7, r3
	mul     r7, r1
	ldr     r1, [pc, #0x70] @ 0x21d175c, (=0x21d2478)
	ldr     r2, [pc, #0x74] @ 0x21d1760, (=0x21d24c8)
	lsl     r6, r0, #1
	add     r1, r1, r7
	add     r2, r2, r7
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	lsl     r6, r0, #2
	mov     r0, #0x28
	mul     r0, r3
	ldr     r3, [pc, #0x64] @ 0x21d1764, (=0x21d256c)
	mov     r5, #0x0
	add     r3, r3, r0
	ldr     r7, [r6, r3]
	ldr     r3, [pc, #0x60] @ 0x21d1768, (=0x21d260c)
	add     r0, r3, r0
	ldr     r6, [r6, r0]
	cmp     r1, #0xff
	bne     branch_21d1712
	mov     r1, r5
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d1712: @ 21d1712 :thumb
	cmp     r2, #0xff
	bne     branch_21d171a
	mov     r2, #0x0
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d171a: @ 21d171a :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x74]
	bl      Function_200d5dc
	mov     r0, #0x0
	mov     r1, r7
	blx     Function_20e1290
	beq     branch_21d173a
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	ldr     r0, [r0, #0x74]
	mov     r2, r6
	bl      Function_200d6e8
	b       branch_21d173c
@ 0x21d173a

.thumb
branch_21d173a: @ 21d173a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d173c: @ 21d173c :thumb
	cmp     r5, #0x3
	beq     branch_21d1748
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_21d1756
@ 0x21d1748

.thumb
branch_21d1748: @ 21d1748 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d174e: @ 21d174e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	str     r0, [r4, #0x4]
	pop     {r3-r7,pc}
@ 0x21d1756

.thumb
branch_21d1756: @ 21d1756 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d175a


.align 2


.word 0x21d2478 @ 0x21d175c
.word 0x21d24c8 @ 0x21d1760
.word 0x21d256c @ 0x21d1764
.word 0x21d260c @ 0x21d1768
.thumb
Function_21d176c: @ 21d176c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d16c0
	cmp     r0, #0x0
	bne     branch_21d177e
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x21d177e

.thumb
branch_21d177e: @ 21d177e :thumb
	cmp     r4, #0x4
	bne     branch_21d178e
	add     r5, #0x84
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x6
	bne     branch_21d179a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d178e

.thumb
branch_21d178e: @ 21d178e :thumb
	add     r5, #0x84
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x6
	bne     branch_21d179a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d179a

.thumb
branch_21d179a: @ 21d179a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d179e


.align 2, 0


.thumb
Function_21d17a0: @ 21d17a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x74]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x78]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x7c]
	bl      Function_200d0f4
	pop     {r4,pc}
@ 0x21d17b8

.thumb
Function_21d17b8: @ 21d17b8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4c
	mov     r4, r0
	mov     r0, #0x47
	bl      Function_200c6e4
	add     r2, sp, #0x2c
	ldr     r5, [pc, #0x70] @ 0x21d1838, (=0x21d2410)
	str     r0, [r4, #0x50]
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	ldr     r6, [pc, #0x60] @ 0x21d183c, (=0x21d23c8)
	stmia   r2!, {r0,r1}
	add     r5, sp, #0x18
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r3
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x50]
	mov     r3, #0x20
	bl      Function_200c73c
	ldr     r3, [pc, #0x44] @ 0x21d1840, (=0x21d23dc)
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x50]
	bl      Function_200c704
	str     r0, [r4, #0x4c]
	ldr     r0, [r4, #0x50]
	ldr     r1, [r4, #0x4c]
	mov     r2, #0xff
	bl      Function_200c7c0
	cmp     r0, #0x0
	bne     branch_21d1822
	bl      ErrorHandling
.thumb
branch_21d1822: @ 21d1822 :thumb
	ldr     r0, [r4, #0x50]
	ldr     r1, [r4, #0x4c]
	add     r2, sp, #0x0
	bl      Function_200cb30
	cmp     r0, #0x0
	bne     branch_21d1834
	bl      ErrorHandling
.thumb
branch_21d1834: @ 21d1834 :thumb
	add     sp, #0x4c
	pop     {r3-r6,pc}
@ 0x21d1838

.word 0x21d2410 @ 0x21d1838
.word 0x21d23c8 @ 0x21d183c
.word 0x21d23dc @ 0x21d1840
.thumb
Function_21d1844: @ 21d1844 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x50]
	ldr     r1, [r4, #0x4c]
	bl      Function_200d0b0
	ldr     r0, [r4, #0x50]
	bl      Function_200c8d4
	pop     {r4,pc}
@ 0x21d1858

.thumb
Function_21d1858: @ 21d1858 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	ldr     r4, [r0, #0xc]
	mov     r2, #0x0
	mov     r0, r4
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_20765ac
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x4c
	add     r2, sp, #0x10
	bl      SetPkmnData
	add     r0, sp, #0x3c
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_2075ef4
	lsl     r2, r6, #16
	ldr     r0, [r5, #0x40]
	add     r1, sp, #0x14
	lsr     r2, r2, #16
	mov     r3, #0x1
	bl      Function_20789bc
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	add     r7, #0x60
	str     r1, [sp, #0x4]
	add     r0, sp, #0x14
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x3c]
	add     r1, sp, #0x3c
	mov     r2, #0x80
	mov     r3, r7
	bl      Function_2007c34
	str     r0, [r5, #0x70]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x21d18be


.align 2, 0


.thumb
Function_21d18c0: @ 21d18c0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	ldr     r0, [r0, #0xc]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2075bcc
	ldr     r0, [r5, #0x70]
	mov     r1, #0x1
	bl      Function_2007b98
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	lsl     r3, r4, #16
	ldr     r0, [r5, #0x40]
	ldr     r1, [r5, #0x58]
	ldr     r2, [r5, #0x70]
	lsr     r3, r3, #16
	bl      Function_20789f4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d1900

.thumb
Function_21d1900: @ 21d1900 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1908, (=0x2007dc9)
	ldr     r0, [r0, #0x70]
	bx      r3
@ 0x21d1906


.align 2


.word 0x2007dc9 @ 0x21d1908
.thumb
Function_21d190c: @ 21d190c :thumb
	ldr     r3, [pc, #0x8] @ 0x21d1918, (=0x2007ded)
	mov     r2, r1
	ldr     r0, [r0, #0x70]
	mov     r1, #0x6
	bx      r3
@ 0x21d1916


.align 2


.word 0x2007ded @ 0x21d1918
.thumb
Function_21d191c: @ 21d191c :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x5c]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x21d192c, (=0x21d26ac)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x21d192a


.align 2


.word 0x21d26ac @ 0x21d192c
.thumb
Function_21d1930: @ 21d1930 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r4, r0
	ldr     r1, [r4, #0x60]
	mov     r5, #0x1
	cmp     r1, #0x11
	bls     branch_21d1940
	b       branch_21d1b96
@ 0x21d1940

.thumb
branch_21d1940: @ 21d1940 :thumb
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d194c

Jumppoints_21d194c:
.hword branch_21d1970 - Jumppoints_21d194c - 2
.hword branch_21d19de - Jumppoints_21d194c - 2
.hword branch_21d19e8 - Jumppoints_21d194c - 2
.hword branch_21d1a06 - Jumppoints_21d194c - 2
.hword branch_21d1a16 - Jumppoints_21d194c - 2
.hword branch_21d1a26 - Jumppoints_21d194c - 2
.hword branch_21d1a36 - Jumppoints_21d194c - 2
.hword branch_21d1a46 - Jumppoints_21d194c - 2
.hword branch_21d1a96 - Jumppoints_21d194c - 2
.hword branch_21d1aaa - Jumppoints_21d194c - 2
.hword branch_21d1aba - Jumppoints_21d194c - 2
.hword branch_21d1ae0 - Jumppoints_21d194c - 2
.hword branch_21d1b32 - Jumppoints_21d194c - 2
.hword branch_21d1b6a - Jumppoints_21d194c - 2
.hword branch_21d1b76 - Jumppoints_21d194c - 2
.hword branch_21d1b7c - Jumppoints_21d194c - 2
.hword branch_21d1b86 - Jumppoints_21d194c - 2
.hword branch_21d1b96 - Jumppoints_21d194c - 2
.thumb
branch_21d1970: @ 21d1970 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	bl      Function_21d1308
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	bl      Function_21d135c
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0x14]
	bl      Function_21d1068
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x3b
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x18
	mov     r2, r5
	mov     r3, #0x2
	bl      Function_21d10f0
	mov     r0, r4
	bl      Function_21d1514
	mov     r0, r4
	bl      Function_21d161c
	mov     r0, r4
	bl      Function_21d1858
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d190c
	mov     r0, #0x47
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x18
	bl      Function_21d14ac
	str     r0, [r4, #0x44]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d19de

.thumb
branch_21d19de: @ 21d19de :thumb
	bl      Function_21d1028
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d19e8: @ 21d19e8 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d1ab2
	bl      Function_200569c
	ldr     r1, [pc, #0x1d0] @ 0x21d1bc8, (=0x475)
	mov     r0, #0xd
	mov     r2, #0x1
	bl      Function_2004550
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1a06

.thumb
branch_21d1a06: @ 21d1a06 :thumb
	bl      Function_21d1e38
	cmp     r0, #0x0
	bne     branch_21d1ab2
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1a16

.thumb
branch_21d1a16: @ 21d1a16 :thumb
	bl      Function_21d1e80
	cmp     r0, #0x0
	bne     branch_21d1ab2
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1a26

.thumb
branch_21d1a26: @ 21d1a26 :thumb
	bl      Function_21d1ef0
	cmp     r0, #0x0
	bne     branch_21d1ab2
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1a36

.thumb
branch_21d1a36: @ 21d1a36 :thumb
	bl      Function_21d1f48
	cmp     r0, #0x0
	bne     branch_21d1ab2
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1a46

.thumb
branch_21d1a46: @ 21d1a46 :thumb
	bl      Function_21d1fac
	cmp     r0, #0x0
	bne     branch_21d1ab2
	mov     r0, r4
	bl      Function_21d18c0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	ldr     r0, [r0, #0xc]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x70
	ldr     r0, [r0, #0xc]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	lsl     r0, r6, #16
	lsl     r1, r1, #24
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	bl      Function_2005844
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0xc]
	ldr     r3, [r4, #0x10]
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_21d1158
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1a96

.thumb
branch_21d1a96: @ 21d1a96 :thumb
	bl      Function_200598c
	cmp     r0, #0x0
	bne     branch_21d1ab2
	ldr     r0, [pc, #0x12c] @ 0x21d1bcc, (=0x484)
	bl      Function_2006150
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1aaa: @ 21d1aaa :thumb
	bl      Function_20061e4
	cmp     r0, #0x0
	beq     branch_21d1ab4
.thumb
branch_21d1ab2: @ 21d1ab2 :thumb
	b       branch_21d1bba
@ 0x21d1ab4

.thumb
branch_21d1ab4: @ 21d1ab4 :thumb
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1aba: @ 21d1aba :thumb
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d1bba
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0xc]
	ldr     r3, [r4, #0x10]
	add     r0, #0x18
	mov     r1, #0x1
	bl      Function_21d1158
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1ae0: @ 21d1ae0 :thumb
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d1bba
	ldr     r0, [r4, #0x58]
	mov     r1, #0x0
	bl      Function_20160f4
	cmp     r0, #0x1
	bne     branch_21d1bba
	ldr     r0, [r4, #0x70]
	bl      Function_2007c24
	cmp     r0, #0x0
	bne     branch_21d1bba
	mov     r0, #0x19
	str     r0, [sp, #0x0]
	mov     r0, #0xd
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0xa7
	str     r0, [sp, #0x10]
	mov     r0, #0xe
	str     r0, [sp, #0x14]
	mov     r2, r4
	ldr     r1, [r4, #0x4]
	mov     r0, r4
	add     r2, #0x28
	mov     r3, #0x1
	bl      Function_21d11e4
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1b32

.thumb
branch_21d1b32: @ 21d1b32 :thumb
	ldr     r0, [r4, #0x4c]
	bl      Function_2001be0
	.hword  0x1ee9 @ sub r1, r5, #0x3
	cmp     r0, r1
	beq     branch_21d1b46
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_21d1bba
	b       branch_21d1b54
@ 0x21d1b46

.thumb
branch_21d1b46: @ 21d1b46 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1b54

.thumb
branch_21d1b54: @ 21d1b54 :thumb
	cmp     r0, #0x0
	bne     branch_21d1b5c
	mov     r1, r5
	b       branch_21d1b5e
@ 0x21d1b5c

.thumb
branch_21d1b5c: @ 21d1b5c :thumb
	mov     r1, #0x0
.thumb
branch_21d1b5e: @ 21d1b5e :thumb
	ldr     r0, [r4, #0x0]
	str     r1, [r0, #0x4]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1b6a

.thumb
branch_21d1b6a: @ 21d1b6a :thumb
	bl      Function_21d12cc
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1b76

.thumb
branch_21d1b76: @ 21d1b76 :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1b7c

.thumb
branch_21d1b7c: @ 21d1b7c :thumb
	bl      Function_21d1048
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1b86: @ 21d1b86 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d1bba
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1bba
@ 0x21d1b96

.thumb
branch_21d1b96: @ 21d1b96 :thumb
	mov     r0, r4
	bl      Function_21d1900
	mov     r0, r4
	bl      Function_21d17a0
	mov     r0, r4
	add     r0, #0x18
	bl      Function_21d12f8
	ldr     r0, [r4, #0x44]
	ldr     r0, [r0, #0xc]
	bl      Function_21d145c
	ldr     r0, [r4, #0x44]
	bl      Function_21d150c
	mov     r5, #0x0
.thumb
branch_21d1bba: @ 21d1bba :thumb
	ldr     r0, [r4, #0x50]
	bl      Function_200c7ec
	mov     r0, r5
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x21d1bc6


.align 2


.word 0x475 @ 0x21d1bc8
.word 0x484 @ 0x21d1bcc
.thumb
Function_21d1bd0: @ 21d1bd0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r4, r0
	ldr     r1, [r4, #0x60]
	mov     r5, #0x1
	cmp     r1, #0x11
	bls     branch_21d1be0
	b       branch_21d1dfe
@ 0x21d1be0

.thumb
branch_21d1be0: @ 21d1be0 :thumb
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d1bec

Jumppoints_21d1bec:
.hword branch_21d1c10 - Jumppoints_21d1bec - 2
.hword branch_21d1c86 - Jumppoints_21d1bec - 2
.hword branch_21d1c90 - Jumppoints_21d1bec - 2
.hword branch_21d1caa - Jumppoints_21d1bec - 2
.hword branch_21d1cf8 - Jumppoints_21d1bec - 2
.hword branch_21d1cf8 - Jumppoints_21d1bec - 2
.hword branch_21d1cf8 - Jumppoints_21d1bec - 2
.hword branch_21d1cf8 - Jumppoints_21d1bec - 2
.hword branch_21d1cfe - Jumppoints_21d1bec - 2
.hword branch_21d1d12 - Jumppoints_21d1bec - 2
.hword branch_21d1d22 - Jumppoints_21d1bec - 2
.hword branch_21d1d48 - Jumppoints_21d1bec - 2
.hword branch_21d1d9a - Jumppoints_21d1bec - 2
.hword branch_21d1dd2 - Jumppoints_21d1bec - 2
.hword branch_21d1dde - Jumppoints_21d1bec - 2
.hword branch_21d1de4 - Jumppoints_21d1bec - 2
.hword branch_21d1dee - Jumppoints_21d1bec - 2
.hword branch_21d1dfe - Jumppoints_21d1bec - 2
.thumb
branch_21d1c10: @ 21d1c10 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	bl      Function_21d1308
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	bl      Function_21d135c
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0x14]
	bl      Function_21d1068
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x3b
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x18
	mov     r2, r5
	mov     r3, #0x2
	bl      Function_21d10f0
	mov     r0, r4
	bl      Function_21d1514
	mov     r0, r4
	bl      Function_21d161c
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, r4
	bl      Function_21d1858
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d190c
	mov     r0, #0x47
	str     r0, [sp, #0x18]
	mov     r0, r5
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x18
	bl      Function_21d14ac
	str     r0, [r4, #0x44]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1c86

.thumb
branch_21d1c86: @ 21d1c86 :thumb
	bl      Function_21d1028
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1c90: @ 21d1c90 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d1d1a
	ldr     r1, [pc, #0x194] @ 0x21d1e30, (=0x475)
	mov     r0, #0xd
	mov     r2, #0x1
	bl      Function_2004550
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1caa

.thumb
branch_21d1caa: @ 21d1caa :thumb
	bl      Function_21d21bc
	cmp     r0, #0x0
	bne     branch_21d1d1a
	mov     r0, r4
	bl      Function_21d18c0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	ldr     r0, [r0, #0xc]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x70
	ldr     r0, [r0, #0xc]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	lsl     r0, r6, #16
	lsl     r1, r1, #24
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	bl      Function_2005844
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0xc]
	ldr     r3, [r4, #0x10]
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_21d1158
	str     r0, [r4, #0xc]
	mov     r0, #0x8
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1cf8

.thumb
branch_21d1cf8: @ 21d1cf8 :thumb
	bl      ErrorHandling
	b       branch_21d1e22
@ 0x21d1cfe

.thumb
branch_21d1cfe: @ 21d1cfe :thumb
	bl      Function_200598c
	cmp     r0, #0x0
	bne     branch_21d1d1a
	ldr     r0, [pc, #0x12c] @ 0x21d1e34, (=0x484)
	bl      Function_2006150
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1d12: @ 21d1d12 :thumb
	bl      Function_20061e4
	cmp     r0, #0x0
	beq     branch_21d1d1c
.thumb
branch_21d1d1a: @ 21d1d1a :thumb
	b       branch_21d1e22
@ 0x21d1d1c

.thumb
branch_21d1d1c: @ 21d1d1c :thumb
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1d22: @ 21d1d22 :thumb
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d1e22
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0xc]
	ldr     r3, [r4, #0x10]
	add     r0, #0x18
	mov     r1, #0x1
	bl      Function_21d1158
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1d48: @ 21d1d48 :thumb
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d1e22
	ldr     r0, [r4, #0x58]
	mov     r1, #0x0
	bl      Function_20160f4
	cmp     r0, #0x1
	bne     branch_21d1e22
	ldr     r0, [r4, #0x70]
	bl      Function_2007c24
	cmp     r0, #0x0
	bne     branch_21d1e22
	mov     r0, #0x19
	str     r0, [sp, #0x0]
	mov     r0, #0xd
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0xa7
	str     r0, [sp, #0x10]
	mov     r0, #0xe
	str     r0, [sp, #0x14]
	mov     r2, r4
	ldr     r1, [r4, #0x4]
	mov     r0, r4
	add     r2, #0x28
	mov     r3, #0x1
	bl      Function_21d11e4
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1d9a

.thumb
branch_21d1d9a: @ 21d1d9a :thumb
	ldr     r0, [r4, #0x4c]
	bl      Function_2001be0
	.hword  0x1ee9 @ sub r1, r5, #0x3
	cmp     r0, r1
	beq     branch_21d1dae
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_21d1e22
	b       branch_21d1dbc
@ 0x21d1dae

.thumb
branch_21d1dae: @ 21d1dae :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1dbc

.thumb
branch_21d1dbc: @ 21d1dbc :thumb
	cmp     r0, #0x0
	bne     branch_21d1dc4
	mov     r1, r5
	b       branch_21d1dc6
@ 0x21d1dc4

.thumb
branch_21d1dc4: @ 21d1dc4 :thumb
	mov     r1, #0x0
.thumb
branch_21d1dc6: @ 21d1dc6 :thumb
	ldr     r0, [r4, #0x0]
	str     r1, [r0, #0x4]
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1dd2

.thumb
branch_21d1dd2: @ 21d1dd2 :thumb
	bl      Function_21d12cc
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1dde

.thumb
branch_21d1dde: @ 21d1dde :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1de4

.thumb
branch_21d1de4: @ 21d1de4 :thumb
	bl      Function_21d1048
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
.thumb
branch_21d1dee: @ 21d1dee :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d1e22
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	b       branch_21d1e22
@ 0x21d1dfe

.thumb
branch_21d1dfe: @ 21d1dfe :thumb
	mov     r0, r4
	bl      Function_21d1900
	mov     r0, r4
	bl      Function_21d17a0
	mov     r0, r4
	add     r0, #0x18
	bl      Function_21d12f8
	ldr     r0, [r4, #0x44]
	ldr     r0, [r0, #0xc]
	bl      Function_21d145c
	ldr     r0, [r4, #0x44]
	bl      Function_21d150c
	mov     r5, #0x0
.thumb
branch_21d1e22: @ 21d1e22 :thumb
	ldr     r0, [r4, #0x50]
	bl      Function_200c7ec
	mov     r0, r5
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x21d1e2e


.align 2


.word 0x475 @ 0x21d1e30
.word 0x484 @ 0x21d1e34
.thumb
Function_21d1e38: @ 21d1e38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x0
	beq     branch_21d1e48
	cmp     r0, #0x1
	beq     branch_21d1e58
	b       branch_21d1e70
@ 0x21d1e48

.thumb
branch_21d1e48: @ 21d1e48 :thumb
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      Function_200d3cc
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d1e78
@ 0x21d1e58

.thumb
branch_21d1e58: @ 21d1e58 :thumb
	ldr     r0, [r4, #0x64]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x64]
	cmp     r0, #0x19
	blt     branch_21d1e78
	ldr     r0, [pc, #0x18] @ 0x21d1e7c, (=0x714)
	bl      Function_2005748
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d1e78
@ 0x21d1e70

.thumb
branch_21d1e70: @ 21d1e70 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x68]
	str     r0, [r4, #0x64]
	pop     {r4,pc}
@ 0x21d1e78

.thumb
branch_21d1e78: @ 21d1e78 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1e7c

.word 0x714 @ 0x21d1e7c
.thumb
Function_21d1e80: @ 21d1e80 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x68]
	cmp     r1, #0x0
	beq     branch_21d1e90
	cmp     r1, #0x1
	beq     branch_21d1eaa
	b       branch_21d1ece
@ 0x21d1e90

.thumb
branch_21d1e90: @ 21d1e90 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_21d14f8
	cmp     r0, #0x1
	beq     branch_21d1ee8
	ldr     r0, [r4, #0x74]
	mov     r1, #0x1
	bl      Function_200d3cc
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d1ee8
@ 0x21d1eaa

.thumb
branch_21d1eaa: @ 21d1eaa :thumb
	mov     r1, #0x0
	bl      Function_21d176c
	cmp     r0, #0x2
	bne     branch_21d1ee8
	ldr     r0, [pc, #0x34] @ 0x21d1eec, (=0x714)
	bl      Function_2005748
	ldr     r0, [r4, #0x74]
	mov     r1, #0x2
	bl      Function_200d3cc
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	b       branch_21d1ee8
@ 0x21d1ece

.thumb
branch_21d1ece: @ 21d1ece :thumb
	mov     r1, #0x0
	bl      Function_21d176c
	cmp     r0, #0x2
	bne     branch_21d1ee8
	ldr     r0, [r4, #0x74]
	mov     r1, #0x2
	bl      Function_200d3cc
	mov     r0, #0x0
	str     r0, [r4, #0x68]
	str     r0, [r4, #0x64]
	pop     {r4,pc}
@ 0x21d1ee8

.thumb
branch_21d1ee8: @ 21d1ee8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1eec

.word 0x714 @ 0x21d1eec
.thumb
Function_21d1ef0: @ 21d1ef0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x68]
	cmp     r1, #0x0
	beq     branch_21d1f00
	cmp     r1, #0x1
	beq     branch_21d1f06
	b       branch_21d1f38
@ 0x21d1f00

.thumb
branch_21d1f00: @ 21d1f00 :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d1f40
@ 0x21d1f06

.thumb
branch_21d1f06: @ 21d1f06 :thumb
	mov     r1, #0x1
	bl      Function_21d176c
	mov     r5, r0
	cmp     r5, #0x1
	bne     branch_21d1f28
	ldr     r0, [pc, #0x30] @ 0x21d1f44, (=0x714)
	bl      Function_2005748
	ldr     r0, [r4, #0x74]
	mov     r1, #0x3
	bl      Function_200d3cc
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      Function_21d14dc
.thumb
branch_21d1f28: @ 21d1f28 :thumb
	cmp     r5, #0x2
	bne     branch_21d1f40
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d1f40
@ 0x21d1f38

.thumb
branch_21d1f38: @ 21d1f38 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x68]
	str     r0, [r4, #0x64]
	pop     {r3-r5,pc}
@ 0x21d1f40

.thumb
branch_21d1f40: @ 21d1f40 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1f44

.word 0x714 @ 0x21d1f44
.thumb
Function_21d1f48: @ 21d1f48 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x68]
	cmp     r1, #0x0
	beq     branch_21d1f58
	cmp     r1, #0x1
	beq     branch_21d1f6a
	b       branch_21d1f9c
@ 0x21d1f58

.thumb
branch_21d1f58: @ 21d1f58 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_21d14f8
	cmp     r0, #0x1
	beq     branch_21d1fa4
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d1fa4
@ 0x21d1f6a

.thumb
branch_21d1f6a: @ 21d1f6a :thumb
	mov     r1, #0x2
	bl      Function_21d176c
	mov     r5, r0
	cmp     r5, #0x1
	bne     branch_21d1f8c
	ldr     r0, [pc, #0x30] @ 0x21d1fa8, (=0x714)
	bl      Function_2005748
	ldr     r0, [r4, #0x74]
	mov     r1, #0x4
	bl      Function_200d3cc
	ldr     r0, [r4, #0x44]
	mov     r1, #0x1
	bl      Function_21d14dc
.thumb
branch_21d1f8c: @ 21d1f8c :thumb
	cmp     r5, #0x2
	bne     branch_21d1fa4
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d1fa4
@ 0x21d1f9c

.thumb
branch_21d1f9c: @ 21d1f9c :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x68]
	str     r0, [r4, #0x64]
	pop     {r3-r5,pc}
@ 0x21d1fa4

.thumb
branch_21d1fa4: @ 21d1fa4 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1fa8

.word 0x714 @ 0x21d1fa8
.thumb
Function_21d1fac: @ 21d1fac :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r1, [r4, #0x68]
	cmp     r1, #0x5
	bls     branch_21d1fba
	b       branch_21d2198
@ 0x21d1fba

.thumb
branch_21d1fba: @ 21d1fba :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1fc6

Jumppoints_21d1fc6:
.hword branch_21d1fd2 - Jumppoints_21d1fc6 - 2
.hword branch_21d1ff4 - Jumppoints_21d1fc6 - 2
.hword branch_21d2036 - Jumppoints_21d1fc6 - 2
.hword branch_21d209e - Jumppoints_21d1fc6 - 2
.hword branch_21d2130 - Jumppoints_21d1fc6 - 2
.hword branch_21d217c - Jumppoints_21d1fc6 - 2
.thumb
branch_21d1fd2: @ 21d1fd2 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_21d14f8
	cmp     r0, #0x1
	beq     branch_21d2040
	ldr     r0, [r4, #0x74]
	mov     r1, #0x4
	bl      Function_200d3cc
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d21ac
@ 0x21d1ff4

.thumb
branch_21d1ff4: @ 21d1ff4 :thumb
	mov     r1, #0x3
	bl      Function_21d176c
	mov     r5, r0
	cmp     r5, #0x1
	bne     branch_21d201e
	ldr     r0, [r4, #0x74]
	mov     r1, #0x5
	bl      Function_200d3cc
	ldr     r0, [pc, #0x1a8] @ 0x21d21b4, (=0x707)
	bl      Function_2005748
	ldr     r0, [r4, #0x44]
	mov     r1, #0x2
	bl      Function_21d14dc
	ldr     r0, [r4, #0x44]
	mov     r1, #0x3
	bl      Function_21d14dc
.thumb
branch_21d201e: @ 21d201e :thumb
	cmp     r5, #0x2
	bne     branch_21d2040
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d21ac
@ 0x21d2036

.thumb
branch_21d2036: @ 21d2036 :thumb
	ldr     r0, [r4, #0x64]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x64]
	cmp     r0, #0xa
	bge     branch_21d2042
.thumb
branch_21d2040: @ 21d2040 :thumb
	b       branch_21d21ac
@ 0x21d2042

.thumb
branch_21d2042: @ 21d2042 :thumb
	mov     r3, #0x0
	str     r3, [r4, #0x64]
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	ldr     r2, [pc, #0x16c] @ 0x21d21b8, (=0xffff)
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2003178
	ldr     r0, [r4, #0x78]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r5, r0
	mov     r3, #0x0
	mov     r6, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	ldr     r2, [pc, #0x144] @ 0x21d21b8, (=0xffff)
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	lsl     r6, r5
	eor     r2, r6
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	lsr     r2, r2, #16
	bl      Function_2003178
	ldr     r0, [pc, #0x130] @ 0x21d21b8, (=0xffff)
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x70]
	mov     r2, #0x10
	mov     r3, r1
	bl      Function_20086fc
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d21ac
@ 0x21d209e

.thumb
branch_21d209e: @ 21d209e :thumb
	add     r1, sp, #0xc
	ldr     r0, [r4, #0x78]
	mov     r5, #0x0
	add     r1, #0x2
	add     r2, sp, #0xc
	bl      Function_200d550
	add     r0, sp, #0xc
	mov     r1, r5
	ldsh    r2, [r0, r1]
	mov     r0, r1
	sub     r0, #0x30
	cmp     r2, r0
	ble     branch_21d20c4
	ldr     r0, [r4, #0x78]
	.hword  0x1f0a @ sub r2, r1, #0x4
	bl      Function_200d5dc
	b       branch_21d20c6
@ 0x21d20c4

.thumb
branch_21d20c4: @ 21d20c4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d20c6: @ 21d20c6 :thumb
	add     r1, sp, #0xc
	ldr     r0, [r4, #0x7c]
	add     r1, #0x2
	add     r2, sp, #0xc
	bl      Function_200d550
	add     r0, sp, #0xc
	mov     r1, #0x0
	ldsh    r0, [r0, r1]
	cmp     r0, #0xc0
	bge     branch_21d20e6
	ldr     r0, [r4, #0x7c]
	mov     r2, #0x4
	bl      Function_200d5dc
	b       branch_21d20e8
@ 0x21d20e6

.thumb
branch_21d20e6: @ 21d20e6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d20e8: @ 21d20e8 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_21d21ac
	cmp     r5, #0x2
	bne     branch_21d21ac
	ldr     r0, [r4, #0x70]
	bl      Function_20087b4
	cmp     r0, #0x0
	bne     branch_21d21ac
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d190c
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x78]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x7c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d21ac
@ 0x21d2130

.thumb
branch_21d2130: @ 21d2130 :thumb
	ldr     r0, [r4, #0x64]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x64]
	cmp     r0, #0x19
	blt     branch_21d21ac
	mov     r2, #0x0
	ldr     r0, [pc, #0x78] @ 0x21d21b8, (=0xffff)
	str     r2, [r4, #0x64]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x70]
	mov     r1, #0x10
	mov     r3, r2
	bl      Function_20086fc
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r2, [pc, #0x64] @ 0x21d21b8, (=0xffff)
	str     r3, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2003178
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r2, [pc, #0x50] @ 0x21d21b8, (=0xffff)
	str     r3, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_2003178
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d21ac
@ 0x21d217c

.thumb
branch_21d217c: @ 21d217c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_21d21ac
	ldr     r0, [r4, #0x70]
	bl      Function_20087b4
	cmp     r0, #0x0
	bne     branch_21d21ac
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d21ac
@ 0x21d2198

.thumb
branch_21d2198: @ 21d2198 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_21d14f8
	cmp     r0, #0x1
	beq     branch_21d21ac
	mov     r0, #0x0
	str     r0, [r4, #0x68]
	add     sp, #0x10
	str     r0, [r4, #0x64]
	pop     {r4-r6,pc}
@ 0x21d21ac

.thumb
branch_21d21ac: @ 21d21ac :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d21b2


.align 2


.word 0x707 @ 0x21d21b4
.word 0xffff @ 0x21d21b8
.thumb
Function_21d21bc: @ 21d21bc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x4
	bls     branch_21d21ca
	b       branch_21d2398
@ 0x21d21ca

.thumb
branch_21d21ca: @ 21d21ca :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d21d6

Jumppoints_21d21d6:
.hword branch_21d21e0 - Jumppoints_21d21d6 - 2
.hword branch_21d2210 - Jumppoints_21d21d6 - 2
.hword branch_21d229e - Jumppoints_21d21d6 - 2
.hword branch_21d2330 - Jumppoints_21d21d6 - 2
.hword branch_21d237c - Jumppoints_21d21d6 - 2
.thumb
branch_21d21e0: @ 21d21e0 :thumb
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      Function_21d14dc
	ldr     r0, [r4, #0x44]
	mov     r1, #0x1
	bl      Function_21d14dc
	ldr     r0, [r4, #0x44]
	mov     r1, #0x2
	bl      Function_21d14dc
	ldr     r0, [r4, #0x44]
	mov     r1, #0x3
	bl      Function_21d14dc
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d23a2
@ 0x21d2210

.thumb
branch_21d2210: @ 21d2210 :thumb
	ldr     r0, [r4, #0x64]
	cmp     r0, #0x19
	beq     branch_21d2220
	cmp     r0, #0x50
	beq     branch_21d2228
	cmp     r0, #0x8e
	beq     branch_21d2230
	b       branch_21d2236
@ 0x21d2220

.thumb
branch_21d2220: @ 21d2220 :thumb
	ldr     r0, [pc, #0x184] @ 0x21d23a8, (=0x806)
	bl      Function_2005748
	b       branch_21d2236
@ 0x21d2228

.thumb
branch_21d2228: @ 21d2228 :thumb
	ldr     r0, [pc, #0x180] @ 0x21d23ac, (=0x7aa)
	bl      Function_2005748
	b       branch_21d2236
@ 0x21d2230

.thumb
branch_21d2230: @ 21d2230 :thumb
	ldr     r0, [pc, #0x17c] @ 0x21d23b0, (=0x815)
	bl      Function_2005748
.thumb
branch_21d2236: @ 21d2236 :thumb
	ldr     r0, [r4, #0x64]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x64]
	cmp     r0, #0xa0
	bge     branch_21d2242
	b       branch_21d23a2
@ 0x21d2242

.thumb
branch_21d2242: @ 21d2242 :thumb
	mov     r3, #0x0
	str     r3, [r4, #0x64]
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	ldr     r2, [pc, #0x168] @ 0x21d23b4, (=0xffff)
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2003178
	ldr     r0, [r4, #0x78]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r5, r0
	mov     r3, #0x0
	mov     r6, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	ldr     r2, [pc, #0x140] @ 0x21d23b4, (=0xffff)
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	lsl     r6, r5
	eor     r2, r6
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	lsr     r2, r2, #16
	bl      Function_2003178
	ldr     r0, [pc, #0x12c] @ 0x21d23b4, (=0xffff)
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x70]
	mov     r2, #0x10
	mov     r3, r1
	bl      Function_20086fc
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d23a2
@ 0x21d229e

.thumb
branch_21d229e: @ 21d229e :thumb
	add     r1, sp, #0xc
	ldr     r0, [r4, #0x78]
	mov     r5, #0x0
	add     r1, #0x2
	add     r2, sp, #0xc
	bl      Function_200d550
	add     r0, sp, #0xc
	mov     r1, r5
	ldsh    r2, [r0, r1]
	mov     r0, r1
	sub     r0, #0x30
	cmp     r2, r0
	ble     branch_21d22c4
	ldr     r0, [r4, #0x78]
	.hword  0x1f0a @ sub r2, r1, #0x4
	bl      Function_200d5dc
	b       branch_21d22c6
@ 0x21d22c4

.thumb
branch_21d22c4: @ 21d22c4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d22c6: @ 21d22c6 :thumb
	add     r1, sp, #0xc
	ldr     r0, [r4, #0x7c]
	add     r1, #0x2
	add     r2, sp, #0xc
	bl      Function_200d550
	add     r0, sp, #0xc
	mov     r1, #0x0
	ldsh    r0, [r0, r1]
	cmp     r0, #0xc0
	bge     branch_21d22e6
	ldr     r0, [r4, #0x7c]
	mov     r2, #0x4
	bl      Function_200d5dc
	b       branch_21d22e8
@ 0x21d22e6

.thumb
branch_21d22e6: @ 21d22e6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d22e8: @ 21d22e8 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_21d23a2
	cmp     r5, #0x2
	bne     branch_21d23a2
	ldr     r0, [r4, #0x70]
	bl      Function_20087b4
	cmp     r0, #0x0
	bne     branch_21d23a2
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d190c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x78]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x7c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d23a2
@ 0x21d2330

.thumb
branch_21d2330: @ 21d2330 :thumb
	ldr     r0, [r4, #0x64]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x64]
	cmp     r0, #0x19
	blt     branch_21d23a2
	mov     r2, #0x0
	ldr     r0, [pc, #0x74] @ 0x21d23b4, (=0xffff)
	str     r2, [r4, #0x64]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x70]
	mov     r1, #0x10
	mov     r3, r2
	bl      Function_20086fc
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r2, [pc, #0x60] @ 0x21d23b4, (=0xffff)
	str     r3, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2003178
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r2, [pc, #0x4c] @ 0x21d23b4, (=0xffff)
	str     r3, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_2003178
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d23a2
@ 0x21d237c

.thumb
branch_21d237c: @ 21d237c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_21d23a2
	ldr     r0, [r4, #0x70]
	bl      Function_20087b4
	cmp     r0, #0x0
	bne     branch_21d23a2
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	b       branch_21d23a2
@ 0x21d2398

.thumb
branch_21d2398: @ 21d2398 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x68]
	add     sp, #0x10
	str     r0, [r4, #0x64]
	pop     {r4-r6,pc}
@ 0x21d23a2

.thumb
branch_21d23a2: @ 21d23a2 :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d23a8

.word 0x806 @ 0x21d23a8
.word 0x7aa @ 0x21d23ac
.word 0x815 @ 0x21d23b0
.word 0xffff @ 0x21d23b4



Unknown_21d23b8: @ 0x21d23b8
.incbin "./baserom/overlay/overlay_0119.bin", 0x1638, 0x21d26c0 - 0x21d23b8


@end 0x21d26c0



