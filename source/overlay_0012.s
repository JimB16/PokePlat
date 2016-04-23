
.include "source/macros_asm.s"


.section .iwram12, "ax"




.thumb
Startpoint_221fc20: @ 221fc20 :thumb
	mov     r1, r0
	add     r1, #0x8d
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_221fc32
	ldr     r1, [pc, #0x14] @ 0x221fc40, (=#0x221fc45)
	add     r0, #0xbc
	str     r1, [r0, #0x0]
	bx      lr

branch_221fc32: @ 221fc32 :thumb
	mov     r1, r0
	add     r1, #0x8d
	ldrb    r1, [r1, #0x0]
	add     r0, #0x8d
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x221fc40

.word 0x221fc45 @ 0x221fc40



.thumb
Function_221fc44: @ 221fc44 :thumb
	push    {r4,lr}
	mov     r4, r0
branch_221fc48: @ 221fc48 :thumb
	ldr     r0, [r4, #0x18]
	ldr     r0, [r0, #0x0]
	bl      Function_2223164
	mov     r1, r0
	mov     r0, r4
	blx     r1
	mov     r0, r4
	add     r0, #0x8d
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_221fc66
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	beq     branch_221fc48
branch_221fc66: @ 221fc66 :thumb
	pop     {r4,pc}
@ 0x221fc68


.thumb
Function_221fc68: @ 221fc68 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	cmp     r0, #0x1
	beq     branch_221fc78
	cmp     r0, #0x2
	beq     branch_221fc86
	b       branch_221fc94

branch_221fc78: @ 221fc78 :thumb
	mov     r0, r1
	add     r0, #0x8e
	ldrh    r0, [r0, #0x0]
	add     r1, #0x8e
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r1, #0x0]
	b       branch_221fc98

branch_221fc86: @ 221fc86 :thumb
	mov     r0, r1
	add     r0, #0x90
	ldrh    r0, [r0, #0x0]
	add     r1, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r1, #0x0]
	b       branch_221fc98

branch_221fc94: @ 221fc94 :thumb
	bl      Function_2022974
branch_221fc98: @ 221fc98 :thumb
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r5,pc}
@ 0x221fca4


.thumb
Function_221fca4: @ 221fca4 :thumb
	push    {r4,lr}
	mov     r4, r2
	cmp     r0, #0x1
	beq     branch_221fcb2
	cmp     r0, #0x2
	beq     branch_221fcc0
	b       branch_221fcce

branch_221fcb2: @ 221fcb2 :thumb
	mov     r0, r1
	add     r0, #0x8e
	ldrh    r0, [r0, #0x0]
	add     r1, #0x8e
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r1, #0x0]
	b       branch_221fcd2

branch_221fcc0: @ 221fcc0 :thumb
	mov     r0, r1
	add     r0, #0x90
	ldrh    r0, [r0, #0x0]
	add     r1, #0x90
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r1, #0x0]
	b       branch_221fcd2

branch_221fcce: @ 221fcce :thumb
	bl      Function_2022974
branch_221fcd2: @ 221fcd2 :thumb
	mov     r0, r4
	bl      Function_200da58
	pop     {r4,pc}
@ 0x221fcda


.align 2, 0
.thumb
Function_221fcdc: @ 221fcdc :thumb
	push    {r3-r5,lr}
	mov     r1, #0x6f
	lsl     r1, r1, #2
	mov     r5, r0
	bl      Function_2018144
	mov     r4, r0
	bne     branch_221fcf8
	cmp     r4, #0x0
	bne     branch_221fcf4
	bl      Function_2022974
branch_221fcf4: @ 221fcf4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_221fcf8: @ 221fcf8 :thumb
	mov     r2, #0x6f
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx 0x20d5126
	mov     r1, #0x47
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	lsl     r1, r1, #2
	bl      Function_2018144
	mov     r1, r4
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	mov     r0, #0x7
	mov     r1, r5
	bl      Function_2006c24
	mov     r1, #0x69
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1b
	mov     r1, r5
	bl      Function_2006c24
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x15
	mov     r1, r5
	bl      Function_2006c24
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x16
	mov     r1, r5
	bl      Function_2006c24
	mov     r1, #0x1b
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x17
	mov     r1, r5
	bl      Function_2006c24
	mov     r1, #0x6d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x18
	mov     r1, r5
	bl      Function_2006c24
	mov     r2, #0x6e
	lsl     r2, r2, #2
	str     r0, [r4, r2]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_221fd80
	bne     branch_221fd7c
	bl      Function_2022974
branch_221fd7c: @ 221fd7c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_221fd80: @ 221fd80 :thumb
	mov     r1, #0x0
	sub     r2, #0x9c
	blx 0x20d5124
	mov     r1, #0x0
	str     r1, [r4, #0xc]
	str     r1, [r4, #0x18]
	mov     r2, r4
	mov     r3, r1
branch_221fd92: @ 221fd92 :thumb
	mov     r0, r2
	add     r0, #0xcc
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r3, [r0, #0x0]
	cmp     r1, #0x4
	blt     branch_221fd92
	mov     r0, #0x59
	mov     r2, r4
	mov     r1, #0x0
	lsl     r0, r0, #2
branch_221fda8: @ 221fda8 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r1, [r2, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r3, #0x5
	blt     branch_221fda8
	mov     r0, #0x5e
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x221fdc0


.thumb
Function_221fdc0: @ 221fdc0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_221fdce
	bl      Function_2022974
branch_221fdce: @ 221fdce :thumb
	str     r4, [r5, #0x8]
	pop     {r3-r5,pc}
@ 0x221fdd2


.align 2, 0
.thumb
Function_221fdd4: @ 221fdd4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_221fdde
	bl      Function_2022974
branch_221fdde: @ 221fdde :thumb
	ldr     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x221fde2


.align 2, 0
.thumb
Function_221fde4: @ 221fde4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_221fdee
	bl      Function_2022974
branch_221fdee: @ 221fdee :thumb
	ldr     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x221fdf2


.align 2, 0


.thumb
Function_221fdf4: @ 221fdf4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	bl      Function_22201b4
	cmp     r0, #0x0
	bne     branch_221fe04
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x221fe04

.thumb
branch_221fe04: @ 221fe04 :thumb
	mov     r6, #0x69
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #2
.thumb
branch_221fe0c: @ 221fe0c :thumb
	ldr     r0, [r5, r6]
	bl      Function_2006ca8
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_221fe0c
	mov     r0, r7
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	bl      Function_20181c4
	mov     r0, r7
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x221fe2e


.align 2, 0


.thumb
Function_221fe30: @ 221fe30 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r4, r0
	mov     r5, r1
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	bl      Function_2220474
	mov     r0, r4
	bl      Function_22201b4
	cmp     r0, #0x0
	bne     branch_221fe50
	add     sp, #0x3c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x221fe50

.thumb
branch_221fe50: @ 221fe50 :thumb
	mov     r3, #0x0
	mov     r2, #0x1
	mov     r1, r3
.thumb
branch_221fe56: @ 221fe56 :thumb
	add     r0, r4, r3
	add     r0, #0x6c
	strb    r2, [r0, #0x0]
	add     r0, r4, r3
	add     r0, #0x7c
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r1, [r0, #0x0]
	cmp     r3, #0x10
	blt     branch_221fe56
	mov     r3, r4
	mov     r0, #0x0
.thumb
branch_221fe6c: @ 221fe6c :thumb
	mov     r2, r3
	add     r2, #0x94
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r0, [r2, #0x0]
	cmp     r1, #0xa
	blt     branch_221fe6c
	mov     r3, r4
	mov     r2, #0x0
.thumb
branch_221fe7e: @ 221fe7e :thumb
	str     r2, [r3, #0x30]
	mov     r1, r3
	str     r2, [r3, #0x28]
	add     r1, #0x2c
	strb    r2, [r1, #0x0]
	mov     r1, r3
	add     r1, #0x2d
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, #0xc
	strb    r2, [r1, #0x0]
	cmp     r0, #0x3
	blt     branch_221fe7e
	mov     r0, r4
	add     r0, #0xc0
	ldrb    r1, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldrb    r1, [r5, #0x1]
	ldr     r0, [r0, #0x0]
	strb    r1, [r0, #0x1]
	mov     r0, r4
	add     r0, #0xc0
	ldrh    r1, [r5, #0x2]
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x2]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r1, [r5, #0x4]
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0x4]
	mov     r0, r4
	add     r0, #0xc0
	ldrh    r1, [r5, #0x8]
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x8]
	mov     r0, r4
	add     r0, #0xc0
	ldrh    r1, [r5, #0xc]
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0xa]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r1, [r5, #0x10]
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0xc]
	mov     r0, r4
	add     r0, #0xc0
	ldrh    r1, [r5, #0xa]
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x10]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r1, [r5, #0x54]
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x12]
	mov     r0, r4
	add     r0, #0xc0
	ldrh    r1, [r5, #0x14]
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x14]
	mov     r0, r4
	add     r0, #0xc0
	ldrh    r1, [r5, #0x16]
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x16]
	ldrh    r0, [r5, #0xe]
	lsl     r0, r0, #30
	lsr     r2, r0, #31
	mov     r0, r4
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	mov     r0, #0x46
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_221ff30
	bl      Function_2022974
.thumb
branch_221ff30: @ 221ff30 :thumb
	ldr     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r1, [r0, #0x4]
	mov     r0, r4
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r7, r2
	ldr     r1, [r0, #0x8]
	mov     r0, r4
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x30]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r2
	mov     r3, r0
	mov     r12, r3
.thumb
branch_221ff5e: @ 221ff5e :thumb
	mov     r5, r4
	add     r5, #0xc0
	ldr     r5, [r5, #0x0]
	ldr     r3, [r0, #0xc]
	add     r5, r5, r1
	add     r5, #0xb0
	str     r3, [r5, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r5, r4
	add     r5, #0xc0
	add     r6, r3, r2
	ldr     r5, [r5, #0x0]
	ldrb    r3, [r6, #0x1c]
	add     r5, r5, r2
	add     r5, #0xc0
	strb    r3, [r5, #0x0]
	mov     r5, r4
	add     r5, #0xc0
	ldr     r5, [r5, #0x0]
	ldr     r3, [r0, #0x20]
	add     r5, r5, r1
	add     r5, #0xc4
	str     r3, [r5, #0x0]
	mov     r5, r4
	add     r5, #0xc0
	mov     r3, r12
	ldr     r5, [r5, #0x0]
	ldrh    r3, [r3, #0x34]
	add     r5, r5, r7
	add     r5, #0xd8
	strh    r3, [r5, #0x0]
	mov     r5, r4
	mov     r3, r6
	add     r5, #0xc0
	add     r3, #0x3c
	ldr     r5, [r5, #0x0]
	ldrb    r3, [r3, #0x0]
	add     r5, r5, r2
	add     r5, #0xe0
	strb    r3, [r5, #0x0]
	mov     r3, r6
	mov     r5, r4
	add     r5, #0xc0
	add     r3, #0x40
	ldr     r5, [r5, #0x0]
	ldrb    r3, [r3, #0x0]
	add     r5, r5, r2
	add     r5, #0xe4
	strb    r3, [r5, #0x0]
	mov     r5, r4
	add     r5, #0xc0
	add     r6, #0x44
	ldr     r5, [r5, #0x0]
	ldrb    r3, [r6, #0x0]
	add     r5, r5, r2
	add     r5, #0xe8
	strb    r3, [r5, #0x0]
	mov     r5, r4
	add     r5, #0xc0
	ldr     r5, [r5, #0x0]
	ldr     r3, [r0, #0x48]
	add     r5, r5, r1
	add     r5, #0xec
	str     r3, [r5, #0x0]
	mov     r5, r4
	add     r5, #0xc0
	ldr     r5, [r5, #0x0]
	ldr     r3, [r0, #0x58]
	add     r5, r5, r1
	add     r5, #0xfc
	str     r3, [r5, #0x0]
	mov     r3, r12
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1cbf @ add r7, r7, #0x2
	mov     r12, r3
	cmp     r2, #0x4
	blt     branch_221ff5e
	ldr     r5, [sp, #0x4]
	mov     r2, #0x61
	lsl     r2, r2, #2
	add     r5, #0x6c
	add     r3, r4, r2
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [sp, #0x4]
	add     r0, #0x84
	ldr     r3, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	mov     r0, r2
	sub     r0, #0x78
	str     r3, [r1, r0]
	ldr     r0, [sp, #0x4]
	add     r0, #0x8c
	ldr     r3, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	mov     r0, r2
	sub     r0, #0x70
	str     r3, [r1, r0]
	ldr     r0, [sp, #0x4]
	add     r0, #0x88
	ldr     r3, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	mov     r0, r2
	sub     r0, #0x74
	str     r3, [r1, r0]
	ldr     r0, [sp, #0x0]
	sub     r2, #0x62
	cmp     r0, r2
	bne     branch_222007e
	ldr     r5, [pc, #0x100] @ 0x2220154, (=#0x2238680)
	add     r3, sp, #0x8
	mov     r2, #0x6
.thumb
branch_2220058: @ 2220058 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2220058
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldrh    r0, [r0, #0x12]
	cmp     r0, #0x18
	bcc     branch_2220076
	mov     r0, #0xa1
	str     r0, [sp, #0x0]
	b       branch_222007e
@ 0x2220076

.thumb
branch_2220076: @ 2220076 :thumb
	lsl     r1, r0, #2
	add     r0, sp, #0x8
	ldr     r0, [r0, r1]
	str     r0, [sp, #0x0]
.thumb
branch_222007e: @ 222007e :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_222008a
	ldr     r1, [pc, #0xd0] @ 0x2220158, (=#0x1d3)
	cmp     r0, r1
	ble     branch_222008e
.thumb
branch_222008a: @ 222008a :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
.thumb
branch_222008e: @ 222008e :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x68]
	str     r0, [r4, #0x4]
	ldr     r1, [sp, #0x0]
	ldr     r2, [r4, #0x0]
	bl      Function_2006ac0
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_22200ae
	bne     branch_22200a8
	bl      Function_2022974
.thumb
branch_22200a8: @ 22200a8 :thumb
	add     sp, #0x3c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22200ae

.thumb
branch_22200ae: @ 22200ae :thumb
	str     r0, [r4, #0x18]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_201a008
	mov     r1, #0x1a
	lsl     r1, r1, #4
	strb    r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_201a008
	ldr     r1, [pc, #0x8c] @ 0x222015c, (=#0x1a1)
	strb    r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_201a008
	ldr     r1, [pc, #0x80] @ 0x2220160, (=#0x1a2)
	strb    r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_201a008
	ldr     r1, [pc, #0x74] @ 0x2220164, (=#0x1a3)
	mov     r3, #0x0
	strb    r0, [r4, r1]
	mov     r2, r4
	mov     r1, r3
.thumb
branch_22200f8: @ 22200f8 :thumb
	mov     r0, r2
	add     r0, #0xdc
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r1, [r0, #0x0]
	cmp     r3, #0xa
	blt     branch_22200f8
	mov     r2, #0x4f
	lsl     r2, r2, #2
	mov     r3, r2
	mov     r5, r4
	mov     r0, #0x0
	add     r3, #0x14
.thumb
branch_2220112: @ 2220112 :thumb
	str     r0, [r5, r2]
	str     r0, [r5, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r1, #0x5
	blt     branch_2220112
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r1, r4
	ldr     r2, [pc, #0x40] @ 0x2220168, (=#0x221fc45)
	add     r1, #0xbc
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x8d
	strb    r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2220144
	mov     r0, #0x67
	mov     r1, #0x7
	lsl     r0, r0, #2
	b       branch_222014a
@ 0x2220144

.thumb
branch_2220144: @ 2220144 :thumb
	mov     r1, #0xff
	mov     r0, r1
	add     r0, #0x9d
.thumb
branch_222014a: @ 222014a :thumb
	str     r1, [r4, r0]
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x2220154

.word 0x2238680 @ 0x2220154
.word 0x1d3 @ 0x2220158
.word 0x1a1 @ 0x222015c
.word 0x1a2 @ 0x2220160
.word 0x1a3 @ 0x2220164
.word Function_221fc44+1 @ =0x221fc45, 0x2220168
.thumb
Function_222016c: @ 222016c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22201b4
	cmp     r0, #0x0
	bne     branch_222017c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222017c

.thumb
branch_222017c: @ 222017c :thumb
	mov     r0, r4
	add     r4, #0xbc
	ldr     r1, [r4, #0x0]
	blx     r1
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2220188

.thumb
Function_2220188: @ 2220188 :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_2220192
	mov     r0, #0x1
	bx      lr
@ 0x2220192

.thumb
branch_2220192: @ 2220192 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2220196


.align 2, 0
.thumb
Function_2220198: @ 2220198 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_22201aa
	bne     branch_22201a6
	bl      Function_2022974
branch_22201a6: @ 22201a6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}

branch_22201aa: @ 22201aa :thumb
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22201b2


.align 2, 0
.thumb
Function_22201b4: @ 22201b4 :thumb
	cmp     r0, #0x0
	bne     branch_22201bc
	mov     r0, #0x0
	bx      lr

branch_22201bc: @ 22201bc :thumb
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x1
	bne     branch_22201c6
	mov     r0, #0x1
	bx      lr

branch_22201c6: @ 22201c6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22201ca


.align 2, 0
.thumb
Function_22201cc: @ 22201cc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      Function_221fc68
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22201e8

.thumb
Function_22201e8: @ 22201e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x10] @ 0x2220200, (=#0x44c)
	mov     r4, r1
	mov     r3, r2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, r5
	mov     r2, r4
	bl      Function_221fc68
	pop     {r3-r5,pc}
@ 0x2220200

.word 0x44c @ 0x2220200
.thumb
Function_2220204: @ 2220204 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      Function_221fc68
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2220220

.thumb
Function_2220220: @ 2220220 :thumb
	mov     r3, r0
	mov     r2, r1
	mov     r1, r3
	ldr     r3, [pc, #0x4] @ 0x222022c, (=#0x221fca5)
	mov     r0, #0x1
	bx      r3
@ 0x222022c

.word 0x221fca5 @ 0x222022c



.thumb
Function_2220230: @ 2220230 :thumb
	mov     r3, r0
	mov     r2, r1
	mov     r1, r3
	ldr     r3, [pc, #0x4] @ 0x222023c, (=#0x221fca5)
	mov     r0, #0x2
	bx      r3
@ 0x222023c

.word Function_221fca4+1 @ =0x221fca5, 0x222023c



.thumb
Function_2220240: @ 2220240 :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldrh    r0, [r0, #0x14]
	bx      lr
@ 0x2220248


.thumb
Function_2220248: @ 2220248 :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldrh    r0, [r0, #0x16]
	bx      lr
@ 0x2220250

.thumb
Function_2220250: @ 2220250 :thumb
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	ldr     r0, [r1, #0x18]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r0, [r0, #0x1c]
	bx      lr
@ 0x222025e


.align 2, 0


.thumb
Function_2220260: @ 2220260 :thumb
	add     r0, #0xc0
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r2, r0
	ldr     r0, [r0, #0x1c]
	bx      lr
@ 0x222026c

.thumb
Function_222026c: @ 222026c :thumb
	add     r0, #0xc0
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r2, r0
	ldr     r0, [r0, #0x5c]
	bx      lr
@ 0x2220278

.thumb
Function_2220278: @ 2220278 :thumb
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x222027e


.align 2, 0


.thumb
Function_2220280: @ 2220280 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0xa
	blt     branch_222028e
	bl      Function_2022974
branch_222028e: @ 222028e :thumb
	lsl     r0, r5, #2
	add     r0, r4, r0
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x2220298

.thumb
Function_2220298: @ 2220298 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0xa
	blt     branch_22202a6
	bl      Function_2022974
branch_22202a6: @ 22202a6 :thumb
	cmp     r5, #0x0
	bne     branch_22202ae
	bl      Function_2022974
branch_22202ae: @ 22202ae :thumb
	add     r5, #0xdc
	lsl     r4, r4, #2
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	bne     branch_22202bc
	bl      Function_2022974
branch_22202bc: @ 22202bc :thumb
	ldr     r0, [r5, r4]
	pop     {r3-r5,pc}
@ 0x22202c0

.thumb
Function_22202c0: @ 22202c0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x5
	blt     branch_22202ce
	bl      Function_2022974
branch_22202ce: @ 22202ce :thumb
	cmp     r5, #0x0
	bne     branch_22202d6
	bl      Function_2022974
branch_22202d6: @ 22202d6 :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r5, r5, r0
	lsl     r4, r4, #2
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	bne     branch_22202e8
	bl      Function_2022974
branch_22202e8: @ 22202e8 :thumb
	ldr     r0, [r5, r4]
	pop     {r3-r5,pc}
@ 0x22202ec

.thumb
Function_22202ec: @ 22202ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22202f6
	bl      Function_2022974
branch_22202f6: @ 22202f6 :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x22202fe


.align 2, 0


.thumb
Function_2220300: @ 2220300 :thumb
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2220306


.align 2, 0


.thumb
Function_2220308: @ 2220308 :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2220312


.align 2, 0
.thumb
Function_2220314: @ 2220314 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3c
	bl      Function_2018144
	mov     r4, r0
	bne     branch_222032c
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_222032c: @ 222032c :thumb
	mov     r1, #0x0
	mov     r2, #0x3c
	blx     Function_20d5124
	mov     r0, r5
	add     r0, #0x90
	ldrh    r0, [r0, #0x0]
	add     r5, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2220344


.thumb
Function_2220344: @ 2220344 :thumb
	ldr     r3, [pc, #0x8] @ 0x2220350, (=Function_200d9e8+1)
	str     r0, [r1, #0x38]
	ldr     r0, [pc, #0x8] @ 0x2220354, (=#0x222035d)
	ldr     r2, [pc, #0xc] @ 0x2220358, (=#0x44c)
	bx      r3
@ 0x222034e

.align 2
.word Function_200d9e8+1 @ 0x2220350
.word 0x222035d @ 0x2220354
.word 0x44c @ 0x2220358



.thumb
Function_222035c: @ 222035c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x2c] @ 0x2220398, (=JumpTable_223862c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	bne     branch_2220396
	ldr     r0, [r4, #0x38]
	mov     r1, r0
	add     r1, #0x90
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_222038a
	mov     r1, r0
	add     r1, #0x90
	ldrh    r1, [r1, #0x0]
	add     r0, #0x90
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r0, #0x0]
branch_222038a: @ 222038a :thumb
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, r5
	bl      Function_200da58
branch_2220396: @ 2220396 :thumb
	pop     {r3-r5,pc}
@ 0x2220398

.word JumpTable_223862c @ 0x2220398



.thumb
Function_222039c: @ 222039c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22203a0

.thumb
Function_22203a0: @ 22203a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r1, [r5, #0x4]
	add     r0, r1, #0x1
	strb    r0, [r5, #0x4]
	ldrb    r0, [r5, #0x3]
	cmp     r1, r0
	bcs     branch_22203b4
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_22203b4: @ 22203b4 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x4]
	ldr     r2, [r5, #0x14]
	ldr     r1, [r5, #0x10]
	mov     r4, #0x1
	add     r1, r2, r1
	str     r1, [r5, #0x14]
	ldr     r1, [r5, #0x10]
	cmp     r1, #0x0
	bne     branch_22203cc
	mov     r4, r0
	b       branch_22203e4

branch_22203cc: @ 22203cc :thumb
	ldr     r2, [r5, #0xc]
	ldr     r1, [r5, #0x8]
	cmp     r1, r2
	ldr     r1, [r5, #0x14]
	bge     branch_22203de
	cmp     r1, r2
	blt     branch_22203e4
	mov     r4, r0
	b       branch_22203e4

branch_22203de: @ 22203de :thumb
	cmp     r1, r2
	bgt     branch_22203e4
	mov     r4, r0
branch_22203e4: @ 22203e4 :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_2005818
	ldrh    r0, [r5, #0x1a]
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_22203f6
	mov     r4, #0x0
branch_22203f6: @ 22203f6 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22203fa


.align 2, 0
.thumb
Function_22203fc: @ 22203fc :thumb
	ldr     r3, [pc, #0x0] @ 0x2220400, (=Function_22203a0+1)
	bx      r3
@ 0x2220400

.word Function_22203a0+1 @ =0x22203a1, 0x2220400



.thumb
Function_2220404: @ 2220404 :thumb
	ldr     r3, [pc, #0x0] @ 0x2220408, (=Function_22203a0+1)
	bx      r3
@ 0x2220408

.word Function_22203a0+1 @ =0x22203a1, 0x2220408



.thumb
Function_222040c: @ 222040c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r1, [r5, #0x4]
	add     r0, r1, #0x1
	strb    r0, [r5, #0x4]
	ldrb    r0, [r5, #0x3]
	cmp     r1, r0
	bcs     branch_2220420
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2220420

.thumb
branch_2220420: @ 2220420 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x4]
	ldrb    r0, [r5, #0x18]
	mov     r4, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x18]
	ldrh    r0, [r5, #0x1a]
	bl      Function_2005748
	ldrh    r0, [r5, #0x1a]
	ldr     r1, [pc, #0x10] @ 0x2220448, (=#0xffff)
	ldr     r2, [r5, #0x14]
	bl      Function_20057fc
	ldrb    r0, [r5, #0x18]
	cmp     r0, #0x0
	bne     branch_2220444
	mov     r4, #0x0
branch_2220444: @ 2220444 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2220448

.word 0xffff @ 0x2220448



.thumb
Function_222044c: @ 222044c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r2, [r4, #0x3]
	mov     r0, #0x1
	sub     r1, r2, #0x1
	strb    r1, [r4, #0x3]
	cmp     r2, #0x0
	bne     branch_222046e
	ldrh    r0, [r4, #0x1a]
	bl      Function_2005748
	ldrh    r0, [r4, #0x1a]
	ldr     r1, [pc, #0x8] @ 0x2220470, (=#0xffff)
	ldr     r2, [r4, #0x14]
	bl      Function_20057fc
	mov     r0, #0x0
branch_222046e: @ 222046e :thumb
	pop     {r4,pc}
@ 0x2220470

.word 0xffff @ 0x2220470



.thumb
Function_2220474: @ 2220474 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x10] @ 0x2220488, (=#0x4000050)
	mov     r3, #0x8
	mov     r1, #0x0
	mov     r2, #0x3f
	str     r3, [sp, #0x0]
	blx 0x20bf55c
	pop     {r3,pc}
@ 0x2220486

.align 2
.word 0x4000050 @ 0x2220488



.thumb
Function_222048c: @ 222048c :thumb
	push    {r3,r4}
	mov     r2, r0
	mov     r1, #0x1
	add     r2, #0x8d
	strb    r1, [r2, #0x0]
	ldr     r3, [pc, #0x28] @ 0x22204c0, (=#0x21bf67c)
	lsl     r2, r1, #9
	ldr     r4, [r3, #0x44]
	tst     r2, r4
	beq     branch_22204bc
	mov     r2, r1
	add     r2, #0xff
	tst     r2, r4
	beq     branch_22204bc
	ldr     r2, [r3, #0x48]
	lsl     r1, r1, #10
	tst     r1, r2
	beq     branch_22204bc
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	mov     r1, #0x0
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
.thumb
branch_22204bc: @ 22204bc :thumb
	pop     {r3,r4}
	bx      lr
@ 0x22204c0

.word 0x21bf67c @ 0x22204c0
.thumb
Function_22204c4: @ 22204c4 :thumb
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x8d
	strb    r2, [r1, #0x0]
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r1, [pc, #0x4] @ 0x22204e0, (=Startpoint_221fc20+1)
	add     r0, #0xbc
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22204e0

.word Startpoint_221fc20+1 @ =0x221fc21, 0x22204e0



.thumb
Function_22204e4: @ 22204e4 :thumb
	mov     r1, r0
	add     r1, #0x8e
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_22204fc
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	mov     r1, #0x0
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x22204fc

.thumb
branch_22204fc: @ 22204fc :thumb
	mov     r1, #0x1
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2220504

.thumb
Function_2220504: @ 2220504 :thumb
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r3, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	cmp     r3, #0xa
	bcs     branch_2220522
	lsl     r1, r3, #2
	add     r0, r0, r1
	add     r0, #0x94
	str     r2, [r0, #0x0]
.thumb
branch_2220522: @ 2220522 :thumb
	bx      lr
@ 0x2220524

.thumb
Function_2220524: @ 2220524 :thumb
	ldr     r1, [r0, #0x18]
	mov     r3, #0x0
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	mov     r2, r3
.thumb
branch_222052e: @ 222052e :thumb
	mov     r1, r0
	add     r1, #0x94
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r2, [r1, #0x0]
	cmp     r3, #0xa
	blt     branch_222052e
	bx      lr
@ 0x222053e


.align 2, 0


.thumb
Function_2220540: @ 2220540 :thumb
	cmp     r1, #0x5
	bhi     branch_222058c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r2, r2, #0
	lsl     r2, r3, #0
	lsl     r2, r4, #0
	lsl     r2, r5, #0
	lsl     r2, r6, #0
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x2220564


.thumb
Function_2220564: @ 2220564 :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldrh    r0, [r0, #0x8]
	bx      lr
@ 0x222056c

.thumb
Function_222056c: @ 222056c :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldrh    r0, [r0, #0xa]
	bx      lr
@ 0x2220574


.incbin "./baserom/overlay/overlay_0012.bin", 0x954, 0x222058c - 0x2220574


.thumb
branch_222058c: @ 222058c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2220590

.thumb
Function_2220590: @ 2220590 :thumb
	push    {r3-r7,lr}
	mov     r3, r0
	mov     r0, #0x0
	str     r2, [sp, #0x0]
	mov     r6, r0
	mov     r5, r1
	mov     r12, r0
	mov     r7, r1
.thumb
branch_22205a0: @ 22205a0 :thumb
	mov     r2, r3
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	add     r2, r2, r6
	add     r2, #0xb0
	ldr     r2, [r2, #0x0]
	str     r2, [r5, #0x8]
	mov     r2, r3
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	add     r2, r2, r6
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	str     r2, [r5, #0x18]
	mov     r2, r3
	add     r2, #0xc0
	ldr     r4, [r2, #0x0]
	mov     r2, r12
	add     r2, r4, r2
	add     r2, #0xd8
	ldrh    r2, [r2, #0x0]
	strh    r2, [r7, #0x28]
	mov     r2, r3
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r2, r2, r0
	add     r2, #0xe0
	ldrb    r4, [r2, #0x0]
	add     r2, r1, r0
	add     r2, #0x30
	strb    r4, [r2, #0x0]
	mov     r2, r3
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	add     r2, r2, r0
	add     r2, #0xe4
	ldrb    r4, [r2, #0x0]
	add     r2, r1, r0
	add     r2, #0x34
	strb    r4, [r2, #0x0]
	mov     r2, r3
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	add     r2, r2, r0
	add     r2, #0xe8
	ldrb    r4, [r2, #0x0]
	add     r2, r1, r0
	add     r2, #0x38
	strb    r4, [r2, #0x0]
	mov     r2, r3
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	add     r2, r2, r6
	add     r2, #0xec
	ldr     r2, [r2, #0x0]
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r2, [r5, #0x3c]
	mov     r2, r3
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r2, r2, r0
	add     r2, #0xc0
	ldrb    r4, [r2, #0x0]
	add     r2, r1, r0
	add     r2, #0x4c
	strb    r4, [r2, #0x0]
	mov     r2, r12
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r2
	cmp     r0, #0x4
	blt     branch_22205a0
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x3
	bhi     branch_222069e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r3, #0
	lsl     r6, r5, #0
	lsl     r2, r0, #1
	mov     r0, r3
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r3, #0xc0
	ldrh    r0, [r0, #0x14]
	str     r0, [r1, #0x0]
	ldr     r0, [r3, #0x0]
	ldrh    r0, [r0, #0x16]
	str     r0, [r1, #0x4]
	pop     {r3-r7,pc}
@ 0x2220662


.incbin "./baserom/overlay/overlay_0012.bin", 0xa42, 0x222069e - 0x2220662


.thumb
branch_222069e: @ 222069e :thumb
	bl      Function_2022974
	pop     {r3-r7,pc}
@ 0x22206a4

.thumb
Function_22206a4: @ 22206a4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x50
	mov     r5, r0
	ldr     r1, [r5, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	ldr     r4, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	add     r1, sp, #0x0
	mov     r2, r4
	bl      Function_2220590
	cmp     r4, #0x2
	add     r0, sp, #0x0
	bne     branch_22206ce
	ldr     r1, [r5, #0x0]
	bl      Function_2238390
	add     sp, #0x50
	pop     {r3-r5,pc}
@ 0x22206ce

.thumb
branch_22206ce: @ 22206ce :thumb
	cmp     r4, #0x3
	bne     branch_22206dc
	ldr     r1, [r5, #0x0]
	bl      Function_22380cc
	add     sp, #0x50
	pop     {r3-r5,pc}
@ 0x22206dc

.thumb
branch_22206dc: @ 22206dc :thumb
	ldr     r1, [r5, #0x0]
	bl      Function_22380bc
	add     sp, #0x50
	pop     {r3-r5,pc}
@ 0x22206e6


.align 2, 0


.thumb
Function_22206e8: @ 22206e8 :thumb
	push    {r4,lr}
	add     sp, #-0x50
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	add     r1, sp, #0x0
	bl      Function_2220590
	ldr     r1, [r4, #0x0]
	add     r0, sp, #0x0
	bl      Function_22382bc
	add     sp, #0x50
	pop     {r4,pc}
@ 0x222070c

.thumb
Function_222070c: @ 222070c :thumb
	ldr     r1, [r0, #0x18]
	mov     r2, #0x0
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	mov     r3, r0
.thumb
branch_2220716: @ 2220716 :thumb
	ldr     r1, [r3, #0x30]
	cmp     r1, #0x1
	beq     branch_2220742
	mov     r1, #0xc
	mul     r1, r2
	mov     r2, #0x1
	add     r1, r0, r1
	str     r2, [r1, #0x30]
	mov     r2, r1
	mov     r3, #0x0
	add     r2, #0x2c
	strb    r3, [r2, #0x0]
	ldr     r2, [r0, #0x18]
	ldr     r3, [r2, #0x0]
	mov     r2, r1
	add     r2, #0x2d
	strb    r3, [r2, #0x0]
	ldr     r2, [r0, #0x18]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	str     r2, [r1, #0x28]
	bx      lr
@ 0x2220742

.thumb
branch_2220742: @ 2220742 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0xc
	cmp     r2, #0x3
	blt     branch_2220716
	bx      lr
@ 0x222074c

.thumb
Function_222074c: @ 222074c :thumb
	push    {r3,r4}
	ldr     r1, [r0, #0x18]
	mov     r3, r0
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r3, #0x18
	str     r1, [r0, #0x18]
	mov     r2, #0x2
.thumb
branch_222075a: @ 222075a :thumb
	ldr     r1, [r3, #0x30]
	cmp     r1, #0x0
	beq     branch_222078e
	mov     r4, r2
	mov     r1, #0xc
	mov     r2, r0
	mul     r4, r1
	add     r2, #0x2c
	ldrb    r1, [r2, r4]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r2, r4]
	ldrb    r3, [r2, r4]
	add     r2, r0, r4
	mov     r1, r2
	add     r1, #0x2d
	ldrb    r1, [r1, #0x0]
	cmp     r3, r1
	bne     branch_2220786
	mov     r0, #0x0
	str     r0, [r2, #0x30]
	pop     {r3,r4}
	bx      lr
@ 0x2220786

.thumb
branch_2220786: @ 2220786 :thumb
	ldr     r1, [r2, #0x28]
	str     r1, [r0, #0x18]
	pop     {r3,r4}
	bx      lr
@ 0x222078e

.thumb
branch_222078e: @ 222078e :thumb
	sub     r3, #0xc
	.hword  0x1e52 @ sub r2, r2, #0x1
	bpl     branch_222075a
	pop     {r3,r4}
	bx      lr
@ 0x2220798

.thumb
Function_2220798: @ 2220798 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x1f8] @ 0x2220994, (=#0x17e)
	mov     r5, r0
	ldrb    r0, [r5, r1]
	mov     r6, #0x0
	cmp     r0, #0x1
	bcs     branch_22207b6
	mov     r0, r5
	mov     r2, #0x1
	add     r0, #0x8d
	strb    r2, [r0, #0x0]
	ldrb    r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r1]
	pop     {r3-r7,pc}
@ 0x22207b6

.thumb
branch_22207b6: @ 22207b6 :thumb
	mov     r7, r6
	mov     r4, r6
.thumb
branch_22207ba: @ 22207ba :thumb
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	beq     branch_22207ce
	bl      Function_2014710
	add     r6, r6, r0
.thumb
branch_22207ce: @ 22207ce :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x10
	blt     branch_22207ba
	cmp     r6, #0x0
	bne     branch_22207ee
	mov     r0, r5
	add     r0, #0x8e
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22207ee
	mov     r0, r5
	add     r0, #0x90
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22207fe
.thumb
branch_22207ee: @ 22207ee :thumb
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x1a0] @ 0x2220998, (=#0x17d)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x22207fe

.thumb
branch_22207fe: @ 22207fe :thumb
	bl      Function_20057e0
	cmp     r0, #0x0
	beq     branch_2220828
	ldr     r0, [pc, #0x190] @ 0x2220998, (=#0x17d)
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	ldrb    r1, [r5, r0]
	cmp     r1, #0x5a
	bls     branch_2220820
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	b       branch_2220828
@ 0x2220820

.thumb
branch_2220820: @ 2220820 :thumb
	mov     r0, #0x1
	add     r5, #0x8d
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2220828

.thumb
branch_2220828: @ 2220828 :thumb
	ldr     r0, [pc, #0x16c] @ 0x2220998, (=#0x17d)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r5, r0]
	mov     r0, r5
	mov     r2, r1
.thumb
branch_2220836: @ 2220836 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r2, [r0, #0x1c]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r1, #0x3
	blt     branch_2220836
	mov     r1, r5
	mov     r4, #0x0
.thumb
branch_2220844: @ 2220844 :thumb
	mov     r0, r1
	str     r4, [r1, #0x28]
	add     r0, #0x2c
	strb    r4, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x2d
	strb    r4, [r0, #0x0]
	str     r4, [r1, #0x30]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0xc
	cmp     r2, #0x3
	blt     branch_2220844
	mov     r7, r5
	mov     r6, #0x0
.thumb
branch_2220860: @ 2220860 :thumb
	mov     r0, r7
	add     r0, #0xcc
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2220878
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_200d0b0
.thumb
branch_2220878: @ 2220878 :thumb
	mov     r0, r7
	add     r0, #0xcc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r6, [r0, #0x0]
	cmp     r4, #0x4
	blt     branch_2220860
.thumb
branch_2220886: @ 2220886 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2221238
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x5
	blt     branch_2220886
	mov     r6, #0x0
	mov     r4, r6
	mov     r7, r6
.thumb
branch_222089a: @ 222089a :thumb
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	beq     branch_22208b6
	bl      Function_2223894
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	str     r7, [r0, #0x1c]
.thumb
branch_22208b6: @ 22208b6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x10
	blt     branch_222089a
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_22208cc
	mov     r1, #0x0
	str     r1, [r5, r0]
.thumb
branch_22208cc: @ 22208cc :thumb
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x0
	bne     branch_2220920
	bl      0x223f9f0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r4, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r3, r0
	lsl     r0, r4, #24
	mov     r1, #0x1
	lsr     r0, r0, #24
	lsl     r1, r1, #14
	mov     r2, #0x0
	bl      Function_2019690
	mov     r0, r5
	bl      Function_2220278
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2019ebc
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019120
	b       branch_2220924
@ 0x2220920

.thumb
branch_2220920: @ 2220920 :thumb
	bl      0x22413d8
.thumb
branch_2220924: @ 2220924 :thumb
	mov     r1, #0x1a
	lsl     r1, r1, #4
	ldrb    r1, [r5, r1]
	mov     r0, #0x0
	bl      Function_2019060
	ldr     r1, [pc, #0x68] @ 0x222099c, (=#0x1a1)
	mov     r0, #0x1
	ldrb    r1, [r5, r1]
	bl      Function_2019060
	ldr     r1, [pc, #0x64] @ 0x22209a0, (=#0x1a2)
	mov     r0, #0x2
	ldrb    r1, [r5, r1]
	bl      Function_2019060
	ldr     r1, [pc, #0x5c] @ 0x22209a4, (=#0x1a3)
	mov     r0, #0x3
	ldrb    r1, [r5, r1]
	bl      Function_2019060
	mov     r0, r5
	add     r0, #0xc4
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r5
	add     r0, #0xc4
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r5
	add     r0, #0xc4
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}
@ 0x2220994

.word 0x17e @ 0x2220994
.word 0x17d @ 0x2220998
.word 0x1a1 @ 0x222099c
.word 0x1a2 @ 0x22209a0
.word 0x1a3 @ 0x22209a4



.thumb
Function_22209a8: @ 22209a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r4, [r0, #0x0]
	add     r1, r0, #0x4
	str     r1, [r5, #0x18]
	ldr     r0, [r1, #0x0]
	str     r0, [sp, #0x0]
	add     r0, r1, #0x4
	str     r0, [r5, #0x18]
	ldr     r7, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	str     r4, [r0, #0x18]
	add     r0, r5, r4
	add     r0, #0x7c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2220a06
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	add     r1, sp, #0x4
	bl      Function_2014734
	mov     r0, #0x0
	ldr     r1, [sp, #0x8]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x4
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	bl      Function_2014744
.thumb
branch_2220a06: @ 2220a06 :thumb
	mov     r0, r5
	add     r0, #0xc0
	add     r1, r5, r4
	add     r1, #0x6c
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      Function_2014788
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	mov     r2, r7
	mov     r3, r5
	bl      Function_2223880
	add     r5, #0xc0
	ldr     r1, [r5, #0x0]
	str     r0, [r1, #0x5c]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2220a3a


.align 2, 0


.thumb
Function_2220a3c: @ 2220a3c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r4, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r7, [r0, #0x0]
	add     r1, r0, #0x4
	str     r1, [r5, #0x18]
	ldr     r0, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	str     r0, [sp, #0x4]
	ldr     r0, [r1, #0x0]
	str     r0, [sp, #0x0]
	add     r0, r1, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	str     r4, [r0, #0x18]
	add     r0, r5, r4
	add     r0, #0x7c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2220aa2
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	add     r1, sp, #0x8
	bl      Function_2014734
	mov     r0, #0x0
	ldr     r1, [sp, #0xc]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x8
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	bl      Function_2014744
.thumb
branch_2220aa2: @ 2220aa2 :thumb
	mov     r0, r5
	add     r0, #0xc0
	add     r1, r5, r4
	add     r1, #0x6c
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      Function_2014788
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x4]
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	ldr     r2, [sp, #0x0]
	mov     r3, r5
	bl      Function_2223880
	add     r5, #0xc0
	ldr     r2, [r5, #0x0]
	lsl     r1, r7, #2
	add     r1, r2, r1
	str     r0, [r1, #0x5c]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2220ada


.align 2, 0


.thumb
Function_2220adc: @ 2220adc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x90
	ldr     r5, [pc, #0x4c] @ 0x2220b30, (=#0x22386b4)
	mov     r4, r0
	add     r3, sp, #0x0
	mov     r2, #0x12
.thumb
branch_2220ae8: @ 2220ae8 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2220ae8
	mov     r0, r4
	bl      Function_2220240
	mov     r5, r0
	mov     r0, r4
	bl      Function_2220248
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2235254
	mov     r5, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2235254
	mov     r1, #0x18
	mov     r3, r5
	mul     r3, r1
	add     r2, sp, #0x0
	lsl     r1, r0, #2
	add     r0, r2, r3
	ldr     r4, [r1, r0]
	cmp     r4, #0xff
	bne     branch_2220b28
	bl      Function_2022974
branch_2220b28: @ 2220b28 :thumb
	sub     r0, r4, #0x1
	add     sp, #0x90
	pop     {r4-r6,pc}
@ 0x2220b2e

.align 2
.word 0x22386b4 @ 0x2220b30



.thumb
Function_2220b34: @ 2220b34 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x90
	ldr     r5, [pc, #0x4c] @ 0x2220b88, (=#0x2238744)
	mov     r4, r0
	add     r3, sp, #0x0
	mov     r2, #0x12
branch_2220b40: @ 2220b40 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2220b40
	mov     r0, r4
	bl      Function_2220240
	mov     r5, r0
	mov     r0, r4
	bl      Function_2220248
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2235254
	mov     r5, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2235254
	mov     r1, #0x18
	mov     r3, r5
	mul     r3, r1
	add     r2, sp, #0x0
	lsl     r1, r0, #2
	add     r0, r2, r3
	ldr     r4, [r1, r0]
	cmp     r4, #0xff
	bne     branch_2220b80
	bl      Function_2022974
branch_2220b80: @ 2220b80 :thumb
	mov     r0, r4
	add     sp, #0x90
	pop     {r4-r6,pc}
@ 0x2220b86

.align 2
.word 0x2238744 @ 0x2220b88



.thumb
Function_2220b8c: @ 2220b8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	ldr     r1, [r5, #0x18]
	add     r0, #0x18
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	ldr     r4, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	mov     r1, #0x0
	add     r2, sp, #0x10
.thumb
branch_2220ba4: @ 2220ba4 :thumb
	ldr     r3, [r5, #0x18]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r3, [r3, #0x0]
	str     r3, [r2, #0x0]
	ldr     r3, [r0, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r3, [r0, #0x0]
	cmp     r1, #0x6
	blt     branch_2220ba4
	ldr     r1, [r5, #0x18]
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x0]
	ldr     r1, [r0, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	str     r4, [r0, #0x18]
	add     r0, r5, r4
	add     r0, #0x7c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2220c02
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	add     r1, sp, #0x4
	bl      Function_2014734
	mov     r0, #0x0
	ldr     r1, [sp, #0x8]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x4
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	bl      Function_2014744
.thumb
branch_2220c02: @ 2220c02 :thumb
	mov     r0, r5
	bl      Function_2220adc
	mov     r7, r0
	mov     r0, r5
	add     r0, #0xc0
	add     r1, r5, r4
	add     r1, #0x6c
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      Function_2014788
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r2, r7, #2
	add     r0, r0, r6
	add     r1, sp, #0x10
	ldr     r1, [r1, r2]
	ldr     r0, [r0, #0x1c]
	ldr     r2, [sp, #0x0]
	mov     r3, r5
	bl      Function_2223880
	add     r5, #0xc0
	ldr     r1, [r5, #0x0]
	str     r0, [r1, #0x5c]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2220c42


.align 2, 0


.thumb
Function_2220c44: @ 2220c44 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r1, [r5, #0x18]
	add     r0, #0x18
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	ldr     r4, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	mov     r1, #0x0
	add     r2, sp, #0x10
.thumb
branch_2220c5c: @ 2220c5c :thumb
	ldr     r3, [r5, #0x18]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r3, [r3, #0x0]
	str     r3, [r2, #0x0]
	ldr     r3, [r0, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r3, [r0, #0x0]
	cmp     r1, #0x4
	blt     branch_2220c5c
	ldr     r1, [r5, #0x18]
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x0]
	ldr     r1, [r0, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	str     r4, [r0, #0x18]
	add     r0, r5, r4
	add     r0, #0x7c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2220cba
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	add     r1, sp, #0x4
	bl      Function_2014734
	mov     r0, #0x0
	ldr     r1, [sp, #0x8]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x4
	add     r0, r0, r6
	ldr     r0, [r0, #0x1c]
	bl      Function_2014744
.thumb
branch_2220cba: @ 2220cba :thumb
	mov     r0, r5
	bl      Function_2220b34
	mov     r7, r0
	mov     r0, r5
	add     r0, #0xc0
	add     r1, r5, r4
	add     r1, #0x6c
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      Function_2014788
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r2, r7, #2
	add     r0, r0, r6
	add     r1, sp, #0x10
	ldr     r1, [r1, r2]
	ldr     r0, [r0, #0x1c]
	ldr     r2, [sp, #0x0]
	mov     r3, r5
	bl      Function_2223880
	add     r5, #0xc0
	ldr     r1, [r5, #0x0]
	str     r0, [r1, #0x5c]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2220cfa


.align 2, 0


.thumb
Function_2220cfc: @ 2220cfc :thumb
	push    {r3-r7,lr}
	mov     r6, #0x0
	mov     r5, r0
	mov     r7, r6
	mov     r4, r6
.thumb
branch_2220d06: @ 2220d06 :thumb
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	beq     branch_2220d1a
	bl      Function_2014710
	add     r6, r6, r0
.thumb
branch_2220d1a: @ 2220d1a :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x10
	blt     branch_2220d06
	cmp     r6, #0x0
	bne     branch_2220d34
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, #0x0
	add     r5, #0x8d
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2220d34

.thumb
branch_2220d34: @ 2220d34 :thumb
	mov     r0, #0x1
	add     r5, #0x8d
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2220d3c

.thumb
Function_2220d3c: @ 2220d3c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r4, r1, #2
	add     r0, r0, r4
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	beq     branch_2220d60
	bl      Function_2022974
.thumb
branch_2220d60: @ 2220d60 :thumb
	ldr     r0, [r5, #0x18]
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x0]
	bl      Function_22237f0
	mov     r1, r5
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	add     r1, r1, r4
	str     r0, [r1, #0x1c]
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x8] @ 0x2220d8c, (=#0x221fc21)
	add     r5, #0xbc
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x2220d8a

.align 2
.word Startpoint_221fc20+1 @ =0x221fc21, 0x2220d8c



.thumb
Function_2220d90: @ 2220d90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r4, r1, #2
	add     r0, r0, r4
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	beq     branch_2220db6
	bl      Function_2022974
.thumb
branch_2220db6: @ 2220db6 :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, #0x64
	ldr     r2, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_2223818
	mov     r1, r5
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	add     r1, r1, r4
	str     r0, [r1, #0x1c]
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x8] @ 0x2220de4, (=#0x221fc21)
	add     r5, #0xbc
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x2220de2

.align 2
.word Startpoint_221fc20+1 @ =0x221fc21, 0x2220de4



.thumb
Function_2220de8: @ 2220de8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r4, r1, #2
	add     r0, r0, r4
	ldr     r0, [r0, #0x1c]
	bl      Function_2223894
	add     r5, #0xc0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	add     r0, r0, r4
	str     r1, [r0, #0x1c]
	pop     {r3-r5,pc}
@ 0x2220e14

.thumb
Function_2220e14: @ 2220e14 :thumb
	ldr     r1, [r0, #0x18]
	mov     r3, #0x0
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	mov     r2, r0
.thumb
branch_2220e1e: @ 2220e1e :thumb
	ldr     r1, [r2, #0x1c]
	cmp     r1, #0x0
	bne     branch_2220e3a
	ldr     r1, [r0, #0x18]
	add     r2, r1, #0x4
	lsl     r1, r3, #2
	add     r1, r0, r1
	str     r2, [r1, #0x1c]
	ldr     r2, [r0, #0x18]
	ldr     r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r2, r1
	str     r1, [r0, #0x18]
	bx      lr
@ 0x2220e3a

.thumb
branch_2220e3a: @ 2220e3a :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r3, #0x3
	blt     branch_2220e1e
	bx      lr
@ 0x2220e44

.thumb
Function_2220e44: @ 2220e44 :thumb
	ldr     r1, [r0, #0x18]
	mov     r3, r0
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	mov     r2, #0x2
	add     r3, #0x8
.thumb
branch_2220e50: @ 2220e50 :thumb
	ldr     r1, [r3, #0x1c]
	cmp     r1, #0x0
	beq     branch_2220e66
	mov     r3, r0
	add     r3, #0x1c
	lsl     r2, r2, #2
	ldr     r1, [r3, r2]
	str     r1, [r0, #0x18]
	mov     r0, #0x0
	str     r0, [r3, r2]
	bx      lr
@ 0x2220e66

.thumb
branch_2220e66: @ 2220e66 :thumb
	.hword  0x1f1b @ sub r3, r3, #0x4
	.hword  0x1e52 @ sub r2, r2, #0x1
	bpl     branch_2220e50
	bx      lr
@ 0x2220e6e


.align 2, 0


.thumb
Function_2220e70: @ 2220e70 :thumb
	push    {r3,r4}
	ldr     r2, [r0, #0x18]
	mov     r1, r0
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	ldr     r4, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	ldr     r3, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	lsl     r2, r4, #2
	add     r2, r0, r2
	add     r2, #0x94
	ldr     r2, [r2, #0x0]
	add     r1, #0x18
	cmp     r3, r2
	bne     branch_2220e9e
	ldr     r1, [r0, #0x18]
	ldr     r1, [r1, #0x0]
	str     r1, [r0, #0x18]
	pop     {r3,r4}
	bx      lr
@ 0x2220e9e

.thumb
branch_2220e9e: @ 2220e9e :thumb
	ldr     r0, [r1, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r1, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2220ea8

.thumb
Function_2220ea8: @ 2220ea8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	bl      Function_2223178
	cmp     r0, #0x0
	ldr     r0, [r4, #0x18]
	beq     branch_2220ec8
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x2220ec8

.thumb
branch_2220ec8: @ 2220ec8 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x2220ece


.align 2, 0


.thumb
Function_2220ed0: @ 2220ed0 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	add     r1, r0, #0x4
	str     r1, [r4, #0x18]
	ldr     r0, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	bl      Function_2226998
	mov     r7, r0
	ldr     r0, [r4, #0x18]
	mov     r2, r4
	ldr     r5, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r2, #0x18
	mov     r3, #0x0
	str     r0, [r4, #0x18]
	cmp     r5, #0x0
	bls     branch_2220f12
	mov     r6, r4
.thumb
branch_2220efa: @ 2220efa :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c5b @ add r3, r3, #0x1
	ldr     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0x94
	str     r1, [r0, #0x0]
	ldr     r0, [r2, #0x0]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x0]
	cmp     r3, r5
	bcc     branch_2220efa
.thumb
branch_2220f12: @ 2220f12 :thumb
	cmp     r3, #0xa
	bge     branch_2220f2a
	lsl     r0, r3, #2
	add     r2, r4, r0
	mov     r1, #0x0
.thumb
branch_2220f1c: @ 2220f1c :thumb
	mov     r0, r2
	add     r0, #0x94
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r1, [r0, #0x0]
	cmp     r3, #0xa
	blt     branch_2220f1c
.thumb
branch_2220f2a: @ 2220f2a :thumb
	mov     r0, r4
	blx     r7
	pop     {r3-r7,pc}
@ 0x2220f30

.thumb
Function_2220f30: @ 2220f30 :thumb
	ldr     r2, [r0, #0x18]
	mov     r1, r0
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	mov     r2, r0
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	add     r1, #0x18
	ldrh    r3, [r2, #0x10]
	mov     r2, #0x1
	tst     r2, r3
	beq     branch_2220f4e
	ldr     r2, [r1, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r1, #0x0]
.thumb
branch_2220f4e: @ 2220f4e :thumb
	ldr     r2, [r0, #0x18]
	ldr     r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r2, r1
	str     r1, [r0, #0x18]
	bx      lr
@ 0x2220f5a


.align 2, 0


.thumb
Function_2220f5c: @ 2220f5c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	cmp     r2, #0x0
	bne     branch_2220f7e
	mov     r1, r4
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	ldrh    r1, [r1, #0x14]
	bl      Function_223525c
	b       branch_2220f8a
@ 0x2220f7e

.thumb
branch_2220f7e: @ 2220f7e :thumb
	mov     r1, r4
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	ldrh    r1, [r1, #0x16]
	bl      Function_223525c
.thumb
branch_2220f8a: @ 2220f8a :thumb
	cmp     r0, #0x4
	bne     branch_2220f94
	ldr     r0, [r4, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
.thumb
branch_2220f94: @ 2220f94 :thumb
	ldr     r1, [r4, #0x18]
	ldr     r0, [r1, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x2220fa0

.thumb
Function_2220fa0: @ 2220fa0 :thumb
	push    {r4,r5}
	add     sp, #-0x10
	ldr     r5, [pc, #0x50] @ 0x2220ff8, (=#0x22385a4)
	add     r2, sp, #0x0
	mov     r4, r0
	mov     r3, r2
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [r4, #0x18]
	mov     r0, r4
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	mov     r1, r4
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	add     r0, #0x18
	ldr     r1, [r1, #0xc]
	cmp     r1, #0x0
	beq     branch_2220fe6
	ldr     r2, [r0, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x0]
	mov     r2, #0x0
.thumb
branch_2220fd2: @ 2220fd2 :thumb
	ldr     r5, [r3, #0x0]
	tst     r5, r1
	bne     branch_2220fe6
	ldr     r5, [r0, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r5, [r0, #0x0]
	cmp     r2, #0x4
	bcc     branch_2220fd2
.thumb
branch_2220fe6: @ 2220fe6 :thumb
	ldr     r1, [r4, #0x18]
	ldr     r0, [r1, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	add     sp, #0x10
	pop     {r4,r5}
	bx      lr
@ 0x2220ff6

.align 2
.word 0x22385a4 @ 0x2220ff8



.thumb
Function_2220ffc: @ 2220ffc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_222101a
	ldr     r1, [r4, #0x18]
	ldr     r0, [r1, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x222101a

.thumb
branch_222101a: @ 222101a :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x2221022


.align 2, 0


.thumb
Function_2221024: @ 2221024 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	mov     r1, r5
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	ldrh    r1, [r1, #0x14]
	bl      Function_223525c
	mov     r1, r5
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	mov     r4, r0
	ldrh    r1, [r1, #0x16]
	mov     r0, r5
	bl      Function_223525c
	cmp     r4, r0
	bne     branch_222105a
	ldr     r1, [r5, #0x18]
	ldr     r0, [r1, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [r5, #0x18]
	pop     {r3-r5,pc}
@ 0x222105a

.thumb
branch_222105a: @ 222105a :thumb
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	pop     {r3-r5,pc}
@ 0x2221062


.align 2, 0


.thumb
Function_2221064: @ 2221064 :thumb
	ldr     r2, [r0, #0x18]
	mov     r1, r0
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	ldr     r3, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	mov     r2, r0
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	add     r1, #0x18
	ldrh    r2, [r2, #0x10]
	cmp     r3, r2
	bne     branch_222108e
	ldr     r0, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #2
	add     r0, r2, r0
	str     r0, [r1, #0x0]
	bx      lr
@ 0x222108e

.thumb
branch_222108e: @ 222108e :thumb
	ldr     r0, [r1, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r1, #0x0]
	bx      lr
@ 0x2221096


.align 2, 0


.thumb
Function_2221098: @ 2221098 :thumb
	ldr     r1, [r0, #0x18]
	add     r2, r1, #0x4
	str     r2, [r0, #0x18]
	ldr     r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r2, r1
	str     r1, [r0, #0x18]
	bx      lr
@ 0x22210a8

.thumb
Function_22210a8: @ 22210a8 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	cmp     r1, #0x7
	bhi     branch_2221186
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r1, #0
	lsl     r6, r2, #0
	lsl     r6, r3, #0
	lsl     r4, r5, #0
	lsl     r2, r7, #0
	lsl     r0, r4, #1
	lsl     r6, r0, #2
	lsl     r0, r5, #2
	add     r4, #0xc0
	ldr     r0, [r4, #0x0]
	ldrh    r6, [r0, #0x14]
	b       branch_2221186
@ 0x22210d4


.incbin "./baserom/overlay/overlay_0012.bin", 0x14b4, 0x2221186 - 0x22210d4


.thumb
branch_2221186: @ 2221186 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x222118a


.incbin "./baserom/overlay/overlay_0012.bin", 0x156a, 0x222118c - 0x222118a


.thumb
Function_222118c: @ 222118c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x0
	beq     branch_22211a8
	ldrb    r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x4]
	ldrb    r1, [r5, #0x4]
	ldrb    r0, [r5, #0x5]
	cmp     r1, r0
	bne     branch_22211d6
	mov     r0, #0x0
	strb    r0, [r5, #0x4]
branch_22211a8: @ 22211a8 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r4, r0, #16
	ldr     r0, [r5, #0x8]
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r4, r0
	lsl     r0, r0, #16
	asr     r2, r0, #16
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_200d4c4
branch_22211d6: @ 22211d6 :thumb
	pop     {r4-r6,pc}
@ 0x22211d8


.thumb
Function_22211d8: @ 22211d8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x0
	beq     branch_22211f4
	ldrb    r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x4]
	ldrb    r1, [r5, #0x4]
	ldrb    r0, [r5, #0x5]
	cmp     r1, r0
	bne     branch_2221236
	mov     r0, #0x0
	strb    r0, [r5, #0x4]
branch_22211f4: @ 22211f4 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r4, r0, #16
	ldr     r0, [r5, #0x8]
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r4, r0
	lsl     r0, r0, #16
	asr     r4, r0, #16
	sub     r6, #0x28
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	mov     r2, #0x0
	neg     r3, r6
	bl      Function_2019184
	sub     r4, #0x28
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	mov     r2, #0x3
	neg     r3, r4
	bl      Function_2019184
branch_2221236: @ 2221236 :thumb
	pop     {r4-r6,pc}
@ 0x2221238


.thumb
Function_2221238: @ 2221238 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	cmp     r1, #0x4
	bne     branch_2221264
	mov     r0, #0x5e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2221282
	ldr     r0, [r0, #0xc]
	bl      Function_200da58
	mov     r0, #0x5e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20181c4
	mov     r0, #0x5e
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r3-r5,pc}

branch_2221264: @ 2221264 :thumb
	mov     r0, #0x59
	lsl     r0, r0, #2
	lsl     r5, r1, #2
	add     r4, r4, r0
	ldr     r0, [r4, r5]
	cmp     r0, #0x0
	beq     branch_2221282
	ldr     r0, [r0, #0xc]
	bl      Function_200da58
	ldr     r0, [r4, r5]
	bl      Function_20181c4
	mov     r0, #0x0
	str     r0, [r4, r5]
branch_2221282: @ 2221282 :thumb
	pop     {r3-r5,pc}
@ 0x2221284

.thumb
Function_2221284: @ 2221284 :thumb
	bx      lr
@ 0x2221286


.align 2, 0


.thumb
Function_2221288: @ 2221288 :thumb
	bx      lr
@ 0x222128a


.align 2, 0


.thumb
Function_222128c: @ 222128c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r1, [r5, #0x18]
	add     r2, r1, #0x4
	str     r2, [r5, #0x18]
	ldr     r1, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r5, #0x18]
	ldr     r6, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r5, #0x18]
	bl      Function_22210a8
	mov     r4, r0
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r1, r4, #2
	add     r1, r0, r1
	add     r1, #0xb0
	ldr     r2, [r1, #0x0]
	add     r0, r0, r4
	ldr     r1, [r2, #0x4]
	add     r0, #0xe8
	str     r1, [sp, #0x14]
	ldr     r1, [r2, #0x8]
	ldrb    r7, [r0, #0x0]
	str     r1, [sp, #0x10]
	ldr     r1, [r2, #0x0]
	mov     r0, r5
	str     r1, [sp, #0x18]
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_22212ea
	mov     r0, r5
	mov     r1, r4
	bl      Function_22232d0
	mov     r1, r7
	bl      Function_22384f0
	cmp     r0, #0x1
	bne     branch_22212ea
	ldr     r7, [pc, #0x130] @ 0x2221418, (=#0x109)
	b       branch_22212ee
@ 0x22212ea

.thumb
branch_22212ea: @ 22212ea :thumb
	mov     r7, #0x42
	lsl     r7, r7, #2
.thumb
branch_22212ee: @ 22212ee :thumb
	mov     r0, #0x2
	bl      Function_2019f28
	mov     r2, #0x19
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     Function_20c4cf4
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xc4
	mov     r3, #0x32
	ldr     r0, [r0, #0x0]
	ldr     r2, [sp, #0x18]
	mov     r1, #0x2
	lsl     r3, r3, #6
	bl      Function_201958c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	ldr     r3, [r5, #0x0]
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r2, r5
	str     r0, [sp, #0xc]
	mov     r0, #0x69
	lsl     r0, r0, #2
	add     r2, #0xc4
	ldr     r0, [r5, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, r7
	mov     r3, #0x2
	bl      Function_200710c
	cmp     r6, #0x1
	bne     branch_222139e
	ldr     r0, [r5, #0x0]
	mov     r1, #0x10
	bl      Function_2018144
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	ldr     r0, [r5, r1]
	mov     r1, r4
	str     r2, [r0, #0x0]
	mov     r0, r5
	bl      Function_22232fc
	mov     r1, #0x5e
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	str     r0, [r2, #0x8]
	ldr     r0, [r5, r1]
	mov     r2, #0x0
	strb    r2, [r0, #0x4]
	ldr     r0, [r5, r1]
	strb    r2, [r0, #0x5]
	ldr     r0, [pc, #0x8c] @ 0x222141c, (=#0x22211d9)
	ldr     r1, [r5, r1]
	ldr     r2, [pc, #0x8c] @ 0x2221420, (=#0x1001)
	bl      Function_200d9e8
	mov     r1, #0x5e
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	str     r0, [r1, #0xc]
.thumb
branch_222139e: @ 222139e :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_22232fc
	mov     r1, #0x0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r7, r0, #16
	mov     r0, r5
	mov     r1, r4
	bl      Function_22232fc
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	mov     r0, r5
	mov     r1, r4
	bl      Function_22232fc
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r6, r0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	mov     r0, r5
	add     r0, #0xc4
	sub     r7, #0x28
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	mov     r2, #0x0
	neg     r3, r7
	bl      Function_2019184
	mov     r0, r5
	add     r0, #0xc4
	sub     r6, #0x28
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	mov     r2, #0x3
	neg     r3, r6
	bl      Function_2019184
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019120
	mov     r0, r5
	bl      Function_222339c
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, #0x2
	lsr     r1, r1, #24
	bl      Function_2019060
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2221418

.word 0x109 @ 0x2221418
.word 0x22211d9 @ 0x222141c
.word 0x1001 @ 0x2221420



.thumb
Function_2221424: @ 2221424 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	mov     r0, #0x2
	bl      Function_2019f28
	mov     r2, #0x19
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     Function_20c4cf4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2221238
	pop     {r4,pc}
@ 0x222144a


.align 2, 0


.thumb
Function_222144c: @ 222144c :thumb
	push    {r4,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x6c] @ 0x22214c0, (=#0x22385e4)
	add     r2, sp, #0x0
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_200c704
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r2, #0x5
	bl      Function_200c7c0
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_200c738
	mov     r2, #0x11
	mov     r1, #0x0
	lsl     r2, r2, #16
	bl      Function_200964c
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4e
	add     r0, #0xac
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	add     r2, sp, #0x0
	bl      Function_200cb30
	add     sp, #0x18
	pop     {r4,pc}
@ 0x22214c0

.word 0x22385e4 @ 0x22214c0
.thumb
Function_22214c4: @ 22214c4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	ldr     r1, [pc, #0xac] @ 0x222157c, (=#0x4e21)
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r2, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r4, r2, r1
	ldrh    r3, [r0, #0x14]
	lsr     r2, r1, #2
	add     r0, #0xac
	mul     r2, r3
	add     r4, r4, r2
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r2, #0x6a
	str     r4, [sp, #0x8]
	lsr     r1, r1, #6
	lsl     r2, r2, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	mov     r3, #0x4c
	bl      Function_200cc3c
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r3, #0x4b
	str     r3, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, r5
	str     r4, [sp, #0x14]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	add     r0, #0xc8
	add     r2, #0xac
	add     r3, #0xed
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	ldr     r3, [r5, r3]
	mov     r1, #0x2
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x4e
	str     r4, [sp, #0x4]
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r2, r2, #2
	add     r0, #0xac
	ldr     r1, [r5, r2]
	add     r2, #0x70
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, r2]
	mov     r3, #0x4d
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x4e
	str     r4, [sp, #0x4]
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r2, r2, #2
	add     r0, #0xac
	ldr     r1, [r5, r2]
	add     r2, #0x70
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, r2]
	mov     r3, #0x4e
	bl      Function_200ce54
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x222157c

.word 0x4e21 @ 0x222157c
.thumb
Function_2221580: @ 2221580 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x78
	mov     r5, r0
	ldr     r1, [r5, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	ldr     r7, [r1, #0x0]
	add     r2, r1, #0x4
	str     r2, [r5, #0x18]
	ldr     r1, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r5, #0x18]
	str     r1, [sp, #0x10]
	ldr     r1, [r2, #0x0]
	str     r1, [sp, #0xc]
	add     r1, r2, #0x4
	str     r1, [r5, #0x18]
	ldr     r3, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r2, [pc, #0x200] @ 0x22217a8, (=#0x4e21)
	str     r1, [r5, #0x18]
	add     r1, r3, r2
	mov     r3, r5
	add     r3, #0xc0
	ldr     r3, [r3, #0x0]
	ldrh    r6, [r3, #0x14]
	lsr     r3, r2, #2
	mul     r3, r6
	add     r3, r1, r3
	str     r3, [sp, #0x60]
	mov     r3, r5
	add     r3, #0xc0
	ldr     r3, [r3, #0x0]
	ldrh    r6, [r3, #0x14]
	lsr     r3, r2, #2
	mul     r3, r6
	add     r3, r1, r3
	str     r3, [sp, #0x64]
	mov     r3, r5
	add     r3, #0xc0
	ldr     r3, [r3, #0x0]
	ldrh    r6, [r3, #0x14]
	lsr     r3, r2, #2
	lsr     r2, r2, #2
	mul     r3, r6
	add     r3, r1, r3
	str     r3, [sp, #0x68]
	mov     r3, r5
	add     r3, #0xc0
	ldr     r3, [r3, #0x0]
	ldrh    r3, [r3, #0x14]
	mul     r2, r3
	add     r1, r1, r2
	str     r1, [sp, #0x6c]
	mov     r1, #0x0
	str     r1, [sp, #0x70]
	str     r1, [sp, #0x74]
	mov     r1, r7
	bl      Function_22210a8
	mov     r7, r0
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r1, r7, #2
	add     r1, r0, r1
	add     r1, #0xb0
	ldr     r2, [r1, #0x0]
	add     r0, r0, r7
	ldr     r1, [r2, #0x4]
	add     r0, #0xe8
	str     r1, [sp, #0x20]
	ldr     r1, [r2, #0x8]
	ldrb    r0, [r0, #0x0]
	str     r1, [sp, #0x1c]
	ldr     r1, [r2, #0x0]
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x28]
	mov     r0, r5
	mov     r1, r7
	bl      Function_22232fc
	mov     r6, r0
	beq     branch_222164e
	mov     r1, #0x0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r4, r0, #16
	mov     r0, r6
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r4, r0
	lsl     r0, r0, #16
	asr     r4, r0, #16
.thumb
branch_222164e: @ 222164e :thumb
	ldr     r0, [sp, #0x14]
	add     r1, sp, #0x2c
	strh    r0, [r1, #0x0]
	strh    r4, [r1, #0x2]
	mov     r0, #0x0
	strh    r0, [r1, #0x4]
	strh    r0, [r1, #0x6]
	mov     r1, #0x64
	str     r1, [sp, #0x34]
	mov     r1, #0x1
	str     r0, [sp, #0x38]
	str     r1, [sp, #0x3c]
	str     r1, [sp, #0x58]
	str     r0, [sp, #0x5c]
	add     r2, sp, #0x60
	add     r3, sp, #0x2c
.thumb
branch_222166e: @ 222166e :thumb
	ldr     r1, [r2, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r1, [r3, #0x14]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x6
	blt     branch_222166e
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4e
	add     r0, #0xac
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	add     r2, sp, #0x2c
	bl      Function_200ce6c
	str     r0, [sp, #0x24]
	cmp     r6, #0x0
	bne     branch_22216a0
	mov     r1, #0x0
	bl      Function_200d3f4
	b       branch_22216b4
@ 0x22216a0

.thumb
branch_22216a0: @ 22216a0 :thumb
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_20080c0
	cmp     r0, #0x1
	bne     branch_22216b4
	ldr     r0, [sp, #0x24]
	mov     r1, #0x0
	bl      Function_200d3f4
.thumb
branch_22216b4: @ 22216b4 :thumb
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_22216d8
	mov     r0, r5
	mov     r1, r7
	bl      Function_22232d0
	ldr     r1, [sp, #0x18]
	bl      Function_22384f0
	cmp     r0, #0x1
	bne     branch_22216d8
	ldr     r0, [sp, #0x24]
	mov     r1, #0x1
	bl      Function_200d7d4
.thumb
branch_22216d8: @ 22216d8 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_22232fc
	cmp     r0, #0x0
	beq     branch_22216fc
	ldr     r0, [sp, #0x24]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f98
	mov     r1, r0
	mov     r3, #0x32
	ldr     r1, [r1, #0x4]
	ldr     r2, [sp, #0x28]
	mov     r0, #0x13
	lsl     r3, r3, #6
	bl      Function_201dc68
.thumb
branch_22216fc: @ 22216fc :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_22232fc
	cmp     r0, #0x0
	beq     branch_2221734
	ldr     r0, [sp, #0x24]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #0x20
	lsl     r0, r0, #20
	str     r1, [sp, #0x4]
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [r5, #0x0]
	bl      Function_2003050
.thumb
branch_2221734: @ 2221734 :thumb
	ldr     r0, [sp, #0xc]
	lsl     r4, r0, #2
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r6, r5, r0
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	beq     branch_2221748
	bl      Function_2022974
.thumb
branch_2221748: @ 2221748 :thumb
	ldr     r0, [sp, #0x24]
	mov     r2, #0x1
	str     r0, [r6, r4]
	mov     r0, #0x15
	add     r1, r5, r4
	lsl     r0, r0, #4
	str     r2, [r1, r0]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_22217a2
	mov     r0, r5
	mov     r1, r7
	bl      Function_22232fc
	cmp     r0, #0x0
	beq     branch_22217a2
	mov     r0, #0x59
	lsl     r0, r0, #2
	add     r6, r5, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x10
	bl      Function_2018144
	str     r0, [r6, r4]
	ldr     r1, [r6, r4]
	ldr     r0, [sp, #0x24]
	str     r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r7
	bl      Function_22232fc
	ldr     r1, [r6, r4]
	ldr     r2, [pc, #0x20] @ 0x22217ac, (=#0x1001)
	str     r0, [r1, #0x8]
	ldr     r0, [r6, r4]
	mov     r1, #0x0
	strb    r1, [r0, #0x4]
	ldr     r0, [r6, r4]
	strb    r1, [r0, #0x5]
	ldr     r0, [pc, #0x18] @ 0x22217b0, (=#0x222118d)
	ldr     r1, [r6, r4]
	bl      Function_200d9e8
	ldr     r1, [r6, r4]
	str     r0, [r1, #0xc]
.thumb
branch_22217a2: @ 22217a2 :thumb
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x22217a6

.align 2
.word 0x4e21 @ 0x22217a8
.word 0x1001 @ 0x22217ac
.word 0x222118d @ 0x22217b0



.thumb
Function_22217b4: @ 22217b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_22217d6
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_200d0b0
.thumb
branch_22217d6: @ 22217d6 :thumb
	mov     r0, #0x4e
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x22217e0

.thumb
Function_22217e0: @ 22217e0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, #0x4f
	lsl     r0, r0, #2
	lsl     r4, r1, #2
	add     r6, r5, r0
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	beq     branch_2221802
	bl      Function_200d0f4
branch_2221802: @ 2221802 :thumb
	mov     r0, #0x15
	mov     r2, #0x0
	add     r1, r5, r4
	lsl     r0, r0, #4
	str     r2, [r1, r0]
	str     r2, [r6, r4]
	pop     {r4-r6,pc}
@ 0x2221810


.thumb
Function_2221810: @ 2221810 :thumb
	push    {r3,lr}
	ldr     r2, [r1, #0xc]
	cmp     r2, #0x0
	bne     branch_222181e
	bl      Function_200da58
	pop     {r3,pc}

branch_222181e: @ 222181e :thumb
	mov     r0, #0x4e
	ldr     r2, [r1, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_2221830
	ldr     r0, [r1, #0x4]
	bl      Function_200c7ec
branch_2221830: @ 2221830 :thumb
	pop     {r3,pc}
@ 0x2221832


.incbin "./baserom/overlay/overlay_0012.bin", 0x1c12, 0x2221834 - 0x2221832


.thumb
Function_2221834: @ 2221834 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r6, r5
	add     r1, r0, #0x4
	str     r1, [r5, #0x18]
	ldr     r0, [r1, #0x0]
	add     r6, #0x54
	str     r0, [sp, #0x0]
	add     r0, r1, #0x4
	str     r0, [r5, #0x18]
	ldr     r2, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r5
	lsl     r4, r2, #4
	str     r0, [sp, #0x8]
	add     r0, #0x4c
	lsl     r1, r1, #2
	str     r0, [sp, #0x8]
	str     r5, [r0, r4]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r3, [r5, r0]
	add     r2, r5, r4
	str     r3, [r2, #0x50]
	add     r1, r5, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	str     r0, [r6, r4]
	mov     r0, #0x1
	str     r0, [r2, #0x58]
	ldr     r0, [r6, r4]
	bl      Function_200d3f4
	mov     r0, r5
	bl      Function_2223364
	cmp     r0, #0x1
	beq     branch_2221890
	b       branch_22219de
@ 0x2221890

.thumb
branch_2221890: @ 2221890 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_2235254
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_2235254
	mov     r7, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_22210a8
	mov     r1, r0
	mov     r0, r5
	bl      Function_22232fc
	cmp     r0, #0x0
	beq     branch_22218cc
	mov     r1, #0x6
	bl      Function_20080c0
	b       branch_22218ce
@ 0x22218cc

.thumb
branch_22218cc: @ 22218cc :thumb
	mov     r0, #0x0
.thumb
branch_22218ce: @ 22218ce :thumb
	cmp     r0, #0x1
	ldr     r0, [r6, r4]
	bne     branch_22218dc
	mov     r1, #0x0
	bl      Function_200d3f4
	b       branch_22218e2
@ 0x22218dc

.thumb
branch_22218dc: @ 22218dc :thumb
	mov     r1, #0x1
	bl      Function_200d3f4
.thumb
branch_22218e2: @ 22218e2 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x3
	bhi     branch_22219d0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r2, #1
	lsl     r4, r5, #0
	lsl     r0, r3, #2
	ldr     r0, [sp, #0x4]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	bhi     branch_222190e
	ldr     r0, [r6, r4]
	mov     r1, #0x1
	bl      Function_200d474
	b       branch_22219d0
@ 0x222190e

.thumb
branch_222190e: @ 222190e :thumb
	add     r5, #0x54
	ldr     r0, [r5, r4]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r5, r4]
	mov     r1, #0xff
	bl      Function_200d474
	b       branch_22219d0
@ 0x2221922


.incbin "./baserom/overlay/overlay_0012.bin", 0x1d02, 0x22219d0 - 0x2221922


.thumb
branch_22219d0: @ 22219d0 :thumb
	ldr     r1, [sp, #0x8]
	mov     r2, #0x1
	ldr     r0, [pc, #0xc] @ 0x22219e4, (=#0x2221811)
	add     r1, r1, r4
	lsl     r2, r2, #12
	bl      Function_200d9e8
.thumb
branch_22219de: @ 22219de :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22219e2

.align 2
.word 0x2221811 @ 0x22219e4



.thumb
Function_22219e8: @ 22219e8 :thumb
	ldr     r1, [r0, #0x18]
	mov     r2, #0x0
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r3, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	lsl     r1, r3, #4
	add     r0, r0, r1
	str     r2, [r0, #0x58]
	bx      lr
@ 0x22219fe


.align 2, 0


.thumb
Function_2221a00: @ 2221a00 :thumb
	ldr     r1, [r0, #0x18]
	ldr     r3, [pc, #0xc] @ 0x2221a10, (=#0x2221239)
	add     r2, r1, #0x4
	str     r2, [r0, #0x18]
	ldr     r1, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	bx      r3
@ 0x2221a10

.word Function_2221238+1 @ =0x2221239, 0x2221a10



.thumb
Function_2221a14: @ 2221a14 :thumb
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r3, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	add     r0, r0, r3
	add     r0, #0x6c
	strb    r2, [r0, #0x0]
	bx      lr
@ 0x2221a2e


.align 2, 0


.thumb
Function_2221a30: @ 2221a30 :thumb
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r3, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	add     r0, r0, r3
	add     r0, #0x7c
	strb    r2, [r0, #0x0]
	bx      lr
@ 0x2221a4a


.align 2, 0


.thumb
Function_2221a4c: @ 2221a4c :thumb
	bx      lr
@ 0x2221a4e


.align 2, 0


.thumb
Function_2221a50: @ 2221a50 :thumb
	bx      lr
@ 0x2221a52


.align 2, 0


.thumb
Function_2221a54: @ 2221a54 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	mov     r5, r0
	ldrh    r1, [r1, #0x14]
	mov     r0, r4
	mov     r6, r2
	bl      Function_223525c
	mov     r7, r0
	mov     r0, r4
	add     r4, #0xc0
	ldr     r1, [r4, #0x0]
	ldrh    r1, [r1, #0x16]
	bl      Function_223525c
	lsl     r1, r6, #2
	add     r1, r5, r1
	ldr     r1, [r1, #0x1c]
	cmp     r1, #0x2
	bne     branch_2221a98
	cmp     r7, r0
	bne     branch_2221a90
	cmp     r0, #0x3
	beq     branch_2221a8c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2221a8c

.thumb
branch_2221a8c: @ 2221a8c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2221a90

.thumb
branch_2221a90: @ 2221a90 :thumb
	cmp     r0, #0x3
	bne     branch_2221aa4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2221a98

.thumb
branch_2221a98: @ 2221a98 :thumb
	cmp     r1, #0x0
	beq     branch_2221aa4
	cmp     r0, #0x3
	bne     branch_2221aa4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2221aa4

.thumb
branch_2221aa4: @ 2221aa4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2221aa8

.thumb
Function_2221aa8: @ 2221aa8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r5, r1
	mov     r0, r3
	mov     r1, #0x0
	mov     r4, r2
	str     r3, [sp, #0x10]
	bl      Function_22234e4
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r2, r5
	str     r0, [sp, #0xc]
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, #0x7
	mov     r3, r4
	bl      Function_2006e3c
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	bl      Function_22234e4
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x90
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	ldr     r3, [r5, #0x0]
	mov     r1, #0x7
	bl      Function_2003050
	mov     r0, r5
	add     r0, #0xc4
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	bl      Function_2019ebc
	mov     r0, r5
	mov     r6, #0x2
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2221b1c
	mov     r6, #0x4
	b       branch_2221b2c
@ 0x2221b1c

.thumb
branch_2221b1c: @ 2221b1c :thumb
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x7
	bl      Function_2221a54
	cmp     r0, #0x1
	bne     branch_2221b2c
	mov     r6, #0x3
.thumb
branch_2221b2c: @ 2221b2c :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, r6
	bl      Function_22234e4
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	add     r5, #0xc4
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, #0x7
	mov     r3, r4
	bl      Function_2006e60
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2221b54

.thumb
Function_2221b54: @ 2221b54 :thumb
	lsl     r0, r0, #16
	and     r0, r1
	cmp     r1, r0
	bne     branch_2221b60
	mov     r0, #0x1
	bx      lr
@ 0x2221b60

.thumb
branch_2221b60: @ 2221b60 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2221b64

.thumb
Function_2221b64: @ 2221b64 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0x48] @ 0x2221bb4, (=#0x2238594)
	add     r2, sp, #0x0
	mov     r5, r0
	mov     r4, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r7, [pc, #0x3c] @ 0x2221bb8, (=#0x2238644)
	mov     r6, #0x0
.thumb
branch_2221b7c: @ 2221b7c :thumb
	ldr     r0, [r5, #0x18]
	ldr     r1, [r4, #0x0]
	bl      Function_2221b54
	cmp     r0, #0x0
	beq     branch_2221ba6
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	lsr     r2, r0, #16
	cmp     r2, #0x2
	blt     branch_2221b9e
.thumb
branch_2221b92: @ 2221b92 :thumb
	lsr     r0, r2, #31
	add     r0, r2, r0
	asr     r2, r0, #1
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r2, #0x2
	bge     branch_2221b92
.thumb
branch_2221b9e: @ 2221b9e :thumb
	lsl     r1, r1, #2
	ldr     r1, [r7, r1]
	mov     r0, r5
	blx     r1
.thumb
branch_2221ba6: @ 2221ba6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	bcc     branch_2221b7c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2221bb2

.align 2
.word 0x2238594 @ 0x2221bb4
.word 0x2238644 @ 0x2221bb8



.thumb
Function_2221bbc: @ 2221bbc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4c
	bl      Function_2018144
	mov     r4, r0
	bne     branch_2221bd4
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2221bd4

.thumb
branch_2221bd4: @ 2221bd4 :thumb
	mov     r1, #0x0
	mov     r2, #0x4c
	blx     Function_20d5124
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	strb    r0, [r4, #0x5]
	str     r5, [r4, #0x48]
	strb    r0, [r4, #0x9]
	mov     r0, #0x1f
	strb    r0, [r4, #0xa]
	mov     r0, #0x1d
	strb    r0, [r4, #0xb]
	mov     r0, #0x2
	strb    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	cmp     r0, #0x1
	bne     branch_2221c0e
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	mov     r0, #0x1f
	strb    r0, [r4, #0xa]
	mov     r0, #0xf
	strb    r0, [r4, #0xb]
	mov     r0, #0x7
	strb    r0, [r4, #0xc]
.thumb
branch_2221c0e: @ 2221c0e :thumb
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	cmp     r0, #0x2
	bne     branch_2221c2a
	mov     r0, #0x7
	strb    r0, [r4, #0x9]
	mov     r0, #0xf
	strb    r0, [r4, #0xa]
	mov     r0, #0x1d
	strb    r0, [r4, #0xb]
	mov     r0, #0x2
	strb    r0, [r4, #0xc]
.thumb
branch_2221c2a: @ 2221c2a :thumb
	mov     r1, #0x0
	mov     r2, r5
	mov     r3, r4
.thumb
branch_2221c30: @ 2221c30 :thumb
	mov     r0, r2
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r3, #0x1c]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r1, #0xa
	blt     branch_2221c30
	mov     r0, #0x5f
	mov     r1, #0x1
	lsl     r0, r0, #2
	strb    r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2221c4e


.align 2, 0


.thumb
Function_2221c50: @ 2221c50 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x0
	beq     branch_2221c64
	cmp     r0, #0x1
	beq     branch_2221ca2
	cmp     r0, #0x2
	beq     branch_2221cf4
	b       branch_2221d3e
@ 0x2221c64

.thumb
branch_2221c64: @ 2221c64 :thumb
	ldr     r0, [r5, #0x48]
	mov     r1, #0x2
	bl      Function_2222590
	ldr     r0, [r5, #0x48]
	mov     r1, #0x2
	bl      Function_2223428
	mov     r4, r0
	ldr     r0, [r5, #0x48]
	mov     r1, #0x1
	bl      Function_2223428
	lsl     r1, r4, #24
	mov     r0, #0x3
	lsr     r1, r1, #24
	bl      Function_2019060
	lsl     r1, r4, #24
	mov     r0, #0x2
	lsr     r1, r1, #24
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019120
	ldrb    r0, [r5, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x5]
	b       branch_2221d42
@ 0x2221ca2

.thumb
branch_2221ca2: @ 2221ca2 :thumb
	ldr     r0, [r5, #0x48]
	mov     r1, #0x3
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r2, #0x2
	mov     r3, r1
	bl      Function_2018898
	ldr     r0, [r5, #0x48]
	bl      Function_221fdd4
	cmp     r0, #0x1
	beq     branch_2221ccc
	ldr     r0, [r5, #0x48]
	mov     r2, #0x0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2018898
.thumb
branch_2221ccc: @ 2221ccc :thumb
	ldr     r1, [r5, #0x48]
	ldr     r3, [r5, #0x10]
	mov     r0, r5
	mov     r2, #0x3
	bl      Function_2221aa8
	ldrb    r0, [r5, #0x9]
	mov     r1, #0x4
	mov     r2, #0x8
	str     r0, [sp, #0x0]
	ldrb    r3, [r5, #0xa]
	ldr     r0, [pc, #0x64] @ 0x2221d48, (=#0x4000050)
	blx     Function_20bf55c
	mov     r0, r5
	bl      Function_2221b64
	ldrb    r0, [r5, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x5]
.thumb
branch_2221cf4: @ 2221cf4 :thumb
	ldrb    r1, [r5, #0x9]
	ldrb    r0, [r5, #0xb]
	mov     r2, #0x0
	cmp     r1, r0
	bcs     branch_2221d04
	add     r0, r1, #0x2
	strb    r0, [r5, #0x9]
	b       branch_2221d06
@ 0x2221d04

.thumb
branch_2221d04: @ 2221d04 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_2221d06: @ 2221d06 :thumb
	ldrb    r1, [r5, #0xa]
	ldrb    r0, [r5, #0xc]
	cmp     r1, r0
	bls     branch_2221d14
	sub     r0, r1, #0x2
	strb    r0, [r5, #0xa]
	b       branch_2221d16
@ 0x2221d14

.thumb
branch_2221d14: @ 2221d14 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_2221d16: @ 2221d16 :thumb
	cmp     r2, #0x2
	bne     branch_2221d28
	ldrb    r0, [r5, #0xb]
	strb    r0, [r5, #0x9]
	ldrb    r0, [r5, #0xc]
	strb    r0, [r5, #0xa]
	ldrb    r0, [r5, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x5]
.thumb
branch_2221d28: @ 2221d28 :thumb
	ldrb    r0, [r5, #0x9]
	ldrb    r1, [r5, #0xa]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x18] @ 0x2221d4c, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x2
	beq     branch_2221d42
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2221d3e: @ 2221d3e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2221d42: @ 2221d42 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2221d46

.align 2
.word 0x4000050 @ 0x2221d48
.word 0x4000052 @ 0x2221d4c



.thumb
Function_2221d50: @ 2221d50 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x4
	bls     branch_2221d5e
	b       branch_2221f30

branch_2221d5e: @ 2221d5e :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r2, #0
	lsl     r0, r3, #1
	lsl     r6, r3, #2
	lsl     r0, r4, #6
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019120
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	ldr     r0, [r4, #0x48]
	mov     r1, #0x2
	bl      Function_2223428
	mov     r5, r0
	ldr     r0, [r4, #0x48]
	mov     r1, #0x1
	bl      Function_2223428
	lsl     r1, r5, #24
	mov     r0, #0x3
	lsr     r1, r1, #24
	bl      Function_2019060
	lsl     r1, r5, #24
	mov     r0, #0x2
	lsr     r1, r1, #24
	bl      Function_2019060
	ldrb    r0, [r4, #0xa]
	mov     r1, #0x4
	mov     r2, #0x8
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x9]
	ldr     r0, [pc, #0x188] @ 0x2221f3c, (=#0x4000050)
	blx     Function_20bf55c
	mov     r0, r4
	bl      Function_2221b64
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	ldrb    r1, [r4, #0x9]
	ldrb    r0, [r4, #0xb]
	mov     r2, #0x0
	cmp     r1, r0
	bcs     branch_2221dd4
	add     r0, r1, #0x2
	strb    r0, [r4, #0x9]
	b       branch_2221dd6
@ 0x2221dd4

.thumb
branch_2221dd4: @ 2221dd4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_2221dd6: @ 2221dd6 :thumb
	ldrb    r1, [r4, #0xa]
	ldrb    r0, [r4, #0xc]
	cmp     r1, r0
	bls     branch_2221de4
	sub     r0, r1, #0x2
	strb    r0, [r4, #0xa]
	b       branch_2221de6
@ 0x2221de4

.thumb
branch_2221de4: @ 2221de4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_2221de6: @ 2221de6 :thumb
	cmp     r2, #0x2
	bne     branch_2221dfc
	ldrb    r0, [r4, #0xb]
	.hword  0x1c80 @ add r0, r0, #0x2
	strb    r0, [r4, #0x9]
	ldrb    r0, [r4, #0xc]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r0, [r4, #0xa]
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
.thumb
branch_2221dfc: @ 2221dfc :thumb
	ldrb    r0, [r4, #0xa]
	ldrb    r1, [r4, #0x9]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x138] @ 0x2221f40, (=#0x4000052)
	strh    r1, [r0, #0x0]
	b       branch_2221f36
@ 0x2221e0a


.incbin "./baserom/overlay/overlay_0012.bin", 0x21ea, 0x2221f30 - 0x2221e0a


.thumb
branch_2221f30: @ 2221f30 :thumb
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2221f36

.thumb
branch_2221f36: @ 2221f36 :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2221f3c

.word 0x4000050 @ 0x2221f3c
.word 0x4000052 @ 0x2221f40
.thumb
Function_2221f44: @ 2221f44 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x0
	beq     branch_2221f56
	cmp     r0, #0x1
	beq     branch_2221fd2
	b       branch_222204e
@ 0x2221f56

.thumb
branch_2221f56: @ 2221f56 :thumb
	ldrb    r0, [r4, #0xd]
	ldr     r2, [r4, #0x48]
	cmp     r0, #0x0
	bne     branch_2221f94
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r5, #0x67
	mov     r0, r2
	str     r3, [sp, #0x8]
	lsl     r5, r5, #2
	ldr     r2, [r2, r5]
	add     r0, #0xc8
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	lsr     r2, r2, #16
	bl      Function_2003178
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x48]
	mov     r2, r5
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	add     r2, #0x64
	mov     r3, #0x10
	bl      Function_2003a2c
	b       branch_2221fcc
@ 0x2221f94

.thumb
branch_2221f94: @ 2221f94 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc8] @ 0x2222068, (=#0xffff)
	mov     r5, #0x67
	str     r0, [sp, #0x8]
	mov     r0, r2
	lsl     r5, r5, #2
	ldr     r2, [r2, r5]
	add     r0, #0xc8
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	lsr     r2, r2, #16
	bl      Function_2003178
	ldr     r0, [pc, #0xb0] @ 0x2222068, (=#0xffff)
	mov     r2, r5
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x48]
	mov     r1, #0x0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	add     r2, #0x64
	mov     r3, #0x10
	bl      Function_2003a2c
.thumb
branch_2221fcc: @ 2221fcc :thumb
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
.thumb
branch_2221fd2: @ 2221fd2 :thumb
	ldr     r0, [r4, #0x48]
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_2222062
	ldr     r0, [r4, #0x48]
	mov     r2, #0x0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2018898
	ldr     r1, [r4, #0x48]
	ldr     r3, [r4, #0x10]
	mov     r0, r4
	mov     r2, #0x3
	bl      Function_2221aa8
	ldrb    r0, [r4, #0xd]
	cmp     r0, #0x0
	bne     branch_222201c
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r0, [r4, #0x48]
	mov     r1, #0x1
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	lsl     r2, r1, #9
	bl      Function_2003178
	b       branch_2222036
@ 0x222201c

.thumb
branch_222201c: @ 222201c :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r0, [pc, #0x44] @ 0x2222068, (=#0xffff)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x48]
	mov     r1, #0x1
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	lsl     r2, r1, #9
	bl      Function_2003178
.thumb
branch_2222036: @ 2222036 :thumb
	mov     r0, r4
	bl      Function_2221b64
	mov     r0, #0x5f
	ldr     r1, [r4, #0x48]
	mov     r2, #0x2
	lsl     r0, r0, #2
	strb    r2, [r1, r0]
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	b       branch_2222062
@ 0x222204e

.thumb
branch_222204e: @ 222204e :thumb
	ldr     r0, [r4, #0x48]
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_2222062
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x2222062

.thumb
branch_2222062: @ 2222062 :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2222068

.word 0xffff @ 0x2222068
.thumb
Function_222206c: @ 222206c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x3
	bls     branch_222207a
	b       branch_2222276
@ 0x222207a

.thumb
branch_222207a: @ 222207a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r2, #0
	lsl     r4, r1, #2
	lsl     r4, r7, #5
	mov     r0, r4
	bl      Function_2221b64
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	ldrb    r0, [r4, #0xd]
	cmp     r0, #0x0
	bne     branch_22220d6
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r0, [r4, #0x48]
	mov     r1, #0x1
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	lsl     r2, r1, #9
	bl      Function_2003178
	ldr     r3, [r4, #0x48]
	mov     r1, #0x0
	mov     r2, #0x67
	mov     r0, r3
	str     r1, [sp, #0x0]
	lsl     r2, r2, #2
	ldr     r2, [r3, r2]
	add     r0, #0xc8
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      Function_2003a2c
	b       branch_222210e
@ 0x22220d6

.thumb
branch_22220d6: @ 22220d6 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c0] @ 0x22222a0, (=#0xffff)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x48]
	lsl     r2, r1, #9
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_2003178
	mov     r2, #0x67
	ldr     r3, [r4, #0x48]
	ldr     r0, [pc, #0x1a8] @ 0x22222a0, (=#0xffff)
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	mov     r0, r3
	ldr     r2, [r3, r2]
	add     r0, #0xc8
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      Function_2003a2c
.thumb
branch_222210e: @ 222210e :thumb
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	ldr     r0, [r4, #0x48]
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_2222124
	b       branch_222229a
@ 0x2222124

.thumb
branch_2222124: @ 2222124 :thumb
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2222138
	ldr     r0, [r4, #0x48]
	bl      Function_2222338
.thumb
branch_2222138: @ 2222138 :thumb
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_222214c
	ldr     r0, [r4, #0x48]
	bl      Function_2222338
.thumb
branch_222214c: @ 222214c :thumb
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [r4, #0x48]
	bl      Function_221fdd4
	cmp     r0, #0x0
	bne     branch_222217e
	ldr     r0, [r4, #0x48]
	mov     r1, #0x3
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2018898
	ldr     r0, [r4, #0x48]
	mov     r1, #0x3
	bl      Function_2223460
	ldr     r0, [r4, #0x48]
	bl      Function_2223488
	b       branch_22221d2
@ 0x222217e

.thumb
branch_222217e: @ 222217e :thumb
	ldr     r2, [r4, #0x48]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r2, #0x0]
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [sp, #0xc]
	ldr     r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r2, r1]
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r3, #0x3
	bl      Function_2006e3c
	mov     r2, #0x66
	lsl     r2, r2, #2
	mov     r1, r2
	ldr     r3, [r4, #0x48]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r3, r2]
	sub     r1, #0x14
	lsl     r0, r0, #5
	str     r0, [sp, #0x4]
	sub     r0, r2, #0x4
	ldr     r0, [r3, r0]
	sub     r2, #0xc
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, r3
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	ldr     r1, [r3, r1]
	ldr     r2, [r3, r2]
	ldr     r3, [r3, #0x0]
	bl      Function_2003050
.thumb
branch_22221d2: @ 22221d2 :thumb
	ldr     r2, [r4, #0x48]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r2, #0x0]
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [sp, #0xc]
	ldr     r0, [r2, r1]
	add     r1, #0xc
	ldr     r1, [r2, r1]
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r3, #0x3
	bl      Function_2006e60
	mov     r0, #0x3
	mov     r1, #0x1
	bl      Function_2019120
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	ldr     r0, [r4, #0x48]
	mov     r2, #0x0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	ldr     r0, [r4, #0x48]
	mov     r1, #0x3
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	ldrb    r0, [r4, #0xd]
	ldr     r2, [r4, #0x48]
	cmp     r0, #0x0
	bne     branch_222224e
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r5, #0x67
	mov     r0, r2
	str     r3, [sp, #0x8]
	lsl     r5, r5, #2
	ldr     r2, [r2, r5]
	add     r0, #0xc8
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	lsr     r2, r2, #16
	bl      Function_2003178
	b       branch_2222270
@ 0x222224e

.thumb
branch_222224e: @ 222224e :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	mov     r5, #0x67
	ldr     r0, [pc, #0x48] @ 0x22222a0, (=#0xffff)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r2
	lsl     r5, r5, #2
	ldr     r2, [r2, r5]
	add     r0, #0xc8
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	lsr     r2, r2, #16
	bl      Function_2003178
.thumb
branch_2222270: @ 2222270 :thumb
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
.thumb
branch_2222276: @ 2222276 :thumb
	ldr     r0, [r4, #0x48]
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_222229a
	mov     r0, #0x5f
	ldr     r1, [r4, #0x48]
	mov     r2, #0x2
	lsl     r0, r0, #2
	strb    r2, [r1, r0]
	ldrb    r0, [r4, #0x5]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222229a

.thumb
branch_222229a: @ 222229a :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22222a0

.word 0xffff @ 0x22222a0
.thumb
Function_22222a4: @ 22222a4 :thumb
	push    {r3,lr}
	mov     r0, r1
	bl      Function_2221b64
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22222b0

.thumb
Function_22222b0: @ 22222b0 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_2221b64
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22222ce
	ldr     r0, [r4, #0x48]
	bl      Function_2222338
.thumb
branch_22222ce: @ 22222ce :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22222d2


.incbin "./baserom/overlay/overlay_0012.bin", 0x26b2, 0x22222d4 - 0x22222d2


.thumb
Function_22222d4: @ 22222d4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_22222ee
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, r5
	bl      Function_200da58
	pop     {r3-r5,pc}

branch_22222ee: @ 22222ee :thumb
	mov     r3, #0x4
	mov     r1, #0x8
	ldsh    r2, [r4, r3]
	ldsh    r0, [r4, r1]
	add     r0, r2, r0
	strh    r0, [r4, #0x4]
	mov     r0, #0x6
	ldsh    r2, [r4, r0]
	mov     r0, #0xa
	ldsh    r0, [r4, r0]
	add     r0, r2, r0
	strh    r0, [r4, #0x6]
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_222231c
	ldr     r1, [r4, #0xc]
	ldsh    r3, [r4, r3]
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_2019184
branch_222231c: @ 222231c :thumb
	mov     r0, #0xa
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2222336
	ldr     r1, [r4, #0xc]
	mov     r3, #0x6
	lsl     r1, r1, #24
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x3
	bl      Function_2019184
branch_2222336: @ 2222336 :thumb
	pop     {r3-r5,pc}
@ 0x2222338


.thumb
Function_2222338: @ 2222338 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2222342
	bl      Function_2022974
branch_2222342: @ 2222342 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2222350
	mov     r0, #0x1
	str     r0, [r1, #0x18]
branch_2222350: @ 2222350 :thumb
	pop     {r4,pc}
@ 0x2222352


.align 2, 0
.thumb
Function_2222354: @ 2222354 :thumb
	mov     r1, #0x67
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x222235c


.thumb
Function_222235c: @ 222235c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2222360

.thumb
Function_2222360: @ 2222360 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x48]
	mov     r1, #0x20
	ldr     r0, [r0, #0x0]
	bl      Function_2018144
	mov     r4, r0
	ldr     r0, [r5, #0x48]
	mov     r2, #0x6
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x48]
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0x4]
	ldr     r0, [r5, #0x48]
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0x6]
	ldr     r0, [r5, #0x48]
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0x8]
	ldr     r0, [r5, #0x48]
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0xa]
	mov     r0, #0x3
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x10]
	ldr     r1, [r5, #0x48]
	mov     r0, r5
	bl      Function_2221a54
	cmp     r0, #0x1
	bne     branch_22223d4
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	sub     r0, #0x9
	mul     r0, r1
	strh    r0, [r4, #0x8]
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	sub     r0, #0xb
	mul     r0, r1
	strh    r0, [r4, #0xa]
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	.hword  0x1f40 @ sub r0, r0, #0x5
	mul     r0, r1
	strh    r0, [r4, #0x4]
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	.hword  0x1fc0 @ sub r0, r0, #0x7
	mul     r0, r1
	strh    r0, [r4, #0x6]
.thumb
branch_22223d4: @ 22223d4 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x14]
	mov     r1, #0x0
	str     r1, [r4, #0x18]
	mov     r1, #0x6
	ldr     r2, [r5, #0x48]
	lsl     r1, r1, #6
	str     r4, [r2, r1]
	mov     r1, r5
	add     r1, #0x44
	ldrh    r2, [r1, #0x0]
	mov     r1, #0x1
	add     r5, #0x44
	bic     r2, r1
	orr     r0, r2
	strh    r0, [r5, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2222404, (=#0x22222d5)
	ldr     r2, [pc, #0x10] @ 0x2222408, (=#0x1001)
	mov     r1, r4
	bl      Function_200d9e8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2222402

.align 2
.word 0x22222d5 @ 0x2222404
.word 0x1001 @ 0x2222408



.thumb
Function_222240c: @ 222240c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r4, [r0, #0x48]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x20
	bl      Function_2018144
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0xc4
	bl      Function_2018144
	str     r0, [r6, #0x1c]
	mov     r0, #0x6
	lsl     r0, r0, #6
	str     r6, [r4, r0]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	orr     r2, r1
	add     r0, #0x44
	strh    r2, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r6, #0x18]
	mov     r0, r4
	bl      Function_22233ec
	bl      Function_22266f0
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_22266e8
	mov     r1, r0
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	bl      Function_2226544
	mov     r4, #0x0
	ldr     r1, [r6, #0x1c]
	ldr     r7, [pc, #0x74] @ 0x22224dc, (=#0x2238660)
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	str     r4, [sp, #0x4]
	mov     r5, r4
.thumb
branch_2222470: @ 2222470 :thumb
	ldr     r0, [r6, #0x1c]
	strh    r4, [r0, r5]
	ldr     r0, [r6, #0x1c]
	add     r1, r0, r5
	ldsh    r0, [r0, r5]
	add     r0, #0x8
	strh    r0, [r1, #0x2]
	mov     r0, #0x0
	ldsh    r1, [r7, r0]
	ldr     r0, [r6, #0x1c]
	add     r0, r0, r5
	strh    r1, [r0, #0x4]
	ldr     r0, [r6, #0x1c]
	add     r1, r0, r5
	mov     r0, #0x0
	strh    r0, [r1, #0x6]
	mov     r1, r0
	bl      Function_22266e8
	ldr     r1, [r6, #0x1c]
	mov     r2, #0x6
	add     r1, r1, r5
	str     r0, [r1, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r1, r0
	ldr     r1, [r1, #0x48]
	bl      Function_2221a54
	cmp     r0, #0x1
	bne     branch_22224ba
	ldr     r0, [r6, #0x1c]
	mov     r1, #0x4
	add     r0, r0, r5
	ldsh    r2, [r0, r1]
	.hword  0x1f49 @ sub r1, r1, #0x5
	mul     r1, r2
	strh    r1, [r0, #0x4]
.thumb
branch_22224ba: @ 22224ba :thumb
	ldr     r0, [sp, #0x4]
	add     r4, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0xc
	.hword  0x1cbf @ add r7, r7, #0x2
	str     r0, [sp, #0x4]
	cmp     r0, #0x10
	blt     branch_2222470
	mov     r2, #0x1
	ldr     r0, [pc, #0x10] @ 0x22224e0, (=#0x22224f9)
	mov     r1, r6
	lsl     r2, r2, #12
	bl      Function_200d9e8
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22224dc

.word 0x2238660 @ 0x22224dc
.word 0x22224f9 @ 0x22224e0
.thumb
Function_22224e4: @ 22224e4 :thumb
	mov     r1, r0
	add     r1, #0x44
	ldrh    r2, [r1, #0x0]
	mov     r1, #0x2
	add     r0, #0x44
	orr     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	bx      lr
@ 0x22224f6


.align 2, 0
.thumb
Function_22224f8: @ 22224f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x18]
	ldr     r4, [r5, #0x1c]
	cmp     r0, #0x1
	bne     branch_2222526
	add     r4, #0xc0
	ldr     r0, [r4, #0x0]
	bl      Function_22265c0
	ldr     r0, [r5, #0x1c]
	bl      Function_20181c4
	mov     r0, r5
	bl      Function_20181c4
	mov     r0, r6
	bl      Function_200da58
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_2222526: @ 2222526 :thumb
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	bl      Function_22265e4
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
branch_2222536: @ 2222536 :thumb
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	add     r0, r1, r0
	strh    r0, [r4, #0x6]
	mov     r0, #0x0
	ldsh    r6, [r4, r0]
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r6, r0
	bge     branch_222257e
	ldr     r0, [sp, #0x0]
	lsl     r1, r6, #2
	add     r5, r0, r1
	mov     r7, #0x2
branch_2222556: @ 2222556 :thumb
	ldr     r1, [r4, #0x8]
	mov     r2, #0x6
	lsl     r0, r1, #16
	asr     r1, r1, #16
	lsl     r1, r1, #16
	asr     r1, r1, #16
	lsl     r1, r1, #16
	ldsh    r2, [r4, r2]
	asr     r0, r0, #16
	lsr     r1, r1, #16
	add     r0, r0, r2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_22266e8
	stmia   r5!, {r0}
	ldsh    r0, [r4, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_2222556
branch_222257e: @ 222257e :thumb
	ldr     r0, [sp, #0x4]
	add     r4, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x10
	blt     branch_2222536
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222258e


.align 2, 0
.thumb
Function_2222590: @ 2222590 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r1, #0x2
	mov     r5, r0
	bl      Function_2223428
	mov     r1, r0
	lsl     r0, r4, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_22225d4
	mov     r0, r5
	add     r0, #0xc4
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_2018898
	b       branch_22225f8

branch_22225d4: @ 22225d4 :thumb
	mov     r0, r5
	add     r0, #0xc4
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2018898
	mov     r0, r5
	add     r0, #0xc4
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_2018898
.thumb
branch_22225f8: @ 22225f8 :thumb
	mov     r0, r5
	add     r0, #0xc4
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	bl      Function_2019ebc
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2222636
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x61
	mov     r2, r5
	lsl     r1, r1, #2
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r2, #0xc4
	ldr     r1, [r5, r1]
	ldr     r2, [r2, #0x0]
	mov     r3, r4
	bl      Function_2006e3c
	b       branch_222263e
@ 0x2222636

.thumb
branch_2222636: @ 2222636 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2223460
.thumb
branch_222263e: @ 222263e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	add     r1, #0xc
	ldr     r1, [r5, r1]
	add     r5, #0xc4
	ldr     r2, [r5, #0x0]
	mov     r3, r4
	bl      Function_2006e60
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2222664


.thumb
Function_2222664: @ 2222664 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x1
	mov     r5, r0
	bl      Function_2223428
	mov     r1, r0
	lsl     r0, r4, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_222269c
	mov     r0, r5
	add     r0, #0xc4
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x2
	mov     r3, #0x3
	bl      Function_2018898
	b       branch_22226c0

branch_222269c: @ 222269c :thumb
	mov     r0, r5
	add     r0, #0xc4
	lsl     r1, r4, #24
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2018898
	mov     r0, r5
	add     r0, #0xc4
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x2
	mov     r3, #0x3
	bl      Function_2018898
branch_22226c0: @ 22226c0 :thumb
	add     r5, #0xc4
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x0]
	lsr     r1, r1, #24
	bl      Function_2019ebc
	pop     {r3-r5,pc}
@ 0x22226ce


.align 2, 0
.thumb
Function_22226d0: @ 22226d0 :thumb
	mov     r1, r0
	add     r1, #0x44
	ldrh    r2, [r1, #0x0]
	mov     r1, #0x1
	add     r0, #0x44
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	bx      lr
@ 0x22226e6


.align 2, 0


.thumb
Function_22226e8: @ 22226e8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x48]
	bl      Function_2222338
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22226f4


.thumb
Function_22226f4: @ 22226f4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x14]
	mov     r5, r0
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x20] @ 0x2222720, (=JumpTable_22385cc)
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	bne     branch_222271e
	mov     r0, #0x5f
	ldr     r1, [r4, #0x48]
	mov     r2, #0x0
	lsl     r0, r0, #2
	strb    r2, [r1, r0]
	mov     r0, r4
	bl      Function_20181c4
	mov     r0, r5
	bl      Function_200da58
branch_222271e: @ 222271e :thumb
	pop     {r3-r5,pc}
@ 0x2222720

.word JumpTable_22385cc @ 0x2222720



.thumb
Function_2222724: @ 2222724 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2221bbc
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strb    r0, [r4, #0xd]
	ldr     r0, [r5, #0x18]
	ldr     r2, [pc, #0x2c] @ 0x2222768, (=#0x44c)
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x14] @ 0x222276c, (=#0xffff0000)
	and     r0, r1
	lsr     r0, r0, #16
	str     r0, [r4, #0x18]
	ldr     r0, [pc, #0x10] @ 0x2222770, (=#0x22226f5)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r5,pc}
@ 0x2222768

.word 0x44c @ 0x2222768
.word 0xffff0000 @ 0x222276c
.word 0x22226f5 @ 0x2222770



.thumb
Function_2222774: @ 2222774 :thumb
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r3, [r1, #0x0]
	add     r2, r1, #0x4
	str     r2, [r0, #0x18]
	ldr     r1, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r1, r1, #16
	asr     r1, r1, #16
	str     r2, [r0, #0x18]
	cmp     r3, #0x3
	bhi     branch_22227c8
	add     r2, r3, r3
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
	lsl     r6, r0, #0
	lsl     r0, r2, #0
	lsl     r2, r3, #0
	lsl     r4, r4, #0
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldr     r0, [r0, r2]
	strh    r1, [r0, #0x8]
	bx      lr
@ 0x22227ac


.incbin "./baserom/overlay/overlay_0012.bin", 0x2b8c, 0x22227c8 - 0x22227ac


.thumb
branch_22227c8: @ 22227c8 :thumb
	bx      lr
@ 0x22227ca


.align 2, 0
.thumb
Function_22227cc: @ 22227cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2221bbc
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strb    r0, [r4, #0xd]
	ldr     r0, [r5, #0x18]
	ldr     r2, [pc, #0x30] @ 0x2222814, (=#0x44c)
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x18]
	add     r1, r0, #0x4
	str     r1, [r5, #0x18]
	ldr     r0, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	lsl     r1, r0, #16
	lsr     r1, r1, #16
	.hword  0x1cc9 @ add r1, r1, #0x3
	str     r1, [r4, #0x14]
	ldr     r1, [pc, #0x14] @ 0x2222818, (=#0xffff0000)
	and     r0, r1
	lsr     r0, r0, #16
	str     r0, [r4, #0x18]
	ldr     r0, [pc, #0x10] @ 0x222281c, (=#0x22226f5)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r5,pc}
@ 0x2222812

.align 2
.word 0x44c @ 0x2222814
.word 0xffff0000 @ 0x2222818
.word 0x22226f5 @ 0x222281c



.thumb
Function_2222820: @ 2222820 :thumb
	mov     r1, #0x5f
	lsl     r1, r1, #2
	ldrb    r1, [r0, r1]
	cmp     r1, #0x2
	bne     branch_2222838
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	mov     r1, #0x0
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2222838

.thumb
branch_2222838: @ 2222838 :thumb
	mov     r1, #0x1
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2222840

.thumb
Function_2222840: @ 2222840 :thumb
	mov     r1, #0x5f
	lsl     r1, r1, #2
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_2222858
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	mov     r1, #0x0
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2222858

.thumb
branch_2222858: @ 2222858 :thumb
	mov     r1, #0x1
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2222860

.thumb
Function_2222860: @ 2222860 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r4, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r4
	bl      Function_22234e4
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r2, r5
	str     r0, [sp, #0xc]
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, #0x7
	mov     r3, #0x3
	bl      Function_2006e3c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22234e4
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	mov     r3, r2
	str     r0, [sp, #0x4]
	mov     r0, #0x7
	bl      Function_2006e84
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_22234e4
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	add     r5, #0xc4
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, #0x7
	mov     r3, #0x3
	bl      Function_2006e60
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22228da


.align 2, 0


.thumb
Function_22228dc: @ 22228dc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2221bbc
	mov     r4, r0
	ldr     r0, [r5, #0x18]
	add     r1, r0, #0x4
	str     r1, [r5, #0x18]
	ldr     r0, [r1, #0x0]
	str     r0, [sp, #0x0]
	add     r0, r1, #0x4
	str     r0, [r5, #0x18]
	ldr     r7, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r6, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_222290e
	str     r6, [r4, #0x10]
	b       branch_2222926
@ 0x222290e

.thumb
branch_222290e: @ 222290e :thumb
	mov     r0, r5
	add     r5, #0xc0
	ldr     r1, [r5, #0x0]
	ldrh    r1, [r1, #0x16]
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_2222922
	str     r7, [r4, #0x10]
	b       branch_2222926
@ 0x2222922

.thumb
branch_2222922: @ 2222922 :thumb
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x10]
branch_2222926: @ 2222926 :thumb
	ldr     r0, [pc, #0xc] @ 0x2222934, (=#0x22226f5)
	ldr     r2, [pc, #0xc] @ 0x2222938, (=#0x44c)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2222932

.align 2
.word 0x22226f5 @ 0x2222934
.word 0x44c @ 0x2222938



.thumb
Function_222293c: @ 222293c :thumb
	bx      lr
@ 0x222293e


.align 2, 0
.thumb
Function_2222940: @ 2222940 :thumb
	bx      lr
@ 0x2222942


.align 2, 0
.thumb
Function_2222944: @ 2222944 :thumb
	bx      lr
@ 0x2222946


.align 2, 0


.thumb
Function_2222948: @ 2222948 :thumb
	bx      lr
@ 0x222294a


.align 2, 0


.thumb
Function_222294c: @ 222294c :thumb
	bx      lr
@ 0x222294e


.align 2, 0


.thumb
Function_2222950: @ 2222950 :thumb
	ldr     r1, [r0, #0x18]
	ldr     r3, [pc, #0x10] @ 0x2222964, (=#Function_2005748+1)
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	bx      r3
@ 0x2222964

.word Function_2005748+1 @ 0x2222964



.thumb
Function_2222968: @ 2222968 :thumb
	ldr     r1, [r0, #0x18]
	ldr     r3, [pc, #0x14] @ 0x2222980, (=#Function_20057a4+1)
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	mov     r1, #0x0
	bx      r3
@ 0x222297e

.align 2
.word Function_20057a4+1 @ 0x2222980



.thumb
Function_2222984: @ 2222984 :thumb
	push    {r3-r5,lr}
	ldr     r1, [r0, #0x18]
	add     r2, r1, #0x4
	str     r2, [r0, #0x18]
	ldr     r1, [r2, #0x0]
	lsl     r1, r1, #16
	lsr     r4, r1, #16
	add     r1, r2, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	lsl     r1, r2, #24
	asr     r1, r1, #24
	bl      Function_222317c
	mov     r5, r0
	mov     r0, r4
	bl      Function_2005748
	ldr     r1, [pc, #0x8] @ 0x22229b8, (=#0xffff)
	mov     r0, r4
	mov     r2, r5
	bl      Function_20057fc
	pop     {r3-r5,pc}
@ 0x22229b8

.word 0xffff @ 0x22229b8
.thumb
Function_22229bc: @ 22229bc :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	lsl     r1, r2, #24
	asr     r1, r1, #24
	bl      Function_222317c
	bl      Function_2005818
	pop     {r3,pc}
@ 0x22229d8

.thumb
Function_22229d8: @ 22229d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2220314
	mov     r1, #0x0
	mov     r2, #0x3c
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, #0x1
	strb    r0, [r4, #0x0]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0x1a]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	lsl     r1, r1, #24
	asr     r1, r1, #24
	bl      Function_222317c
	str     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r0, r5
	lsl     r1, r1, #24
	asr     r1, r1, #24
	bl      Function_222317c
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x10]
	lsl     r0, r0, #24
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	asr     r0, r0, #24
	asr     r1, r1, #24
	asr     r2, r2, #24
	bl      Function_2223234
	str     r0, [r4, #0x10]
	ldrh    r0, [r4, #0x1a]
	bl      Function_2005748
	ldrh    r0, [r4, #0x1a]
	ldr     r1, [pc, #0x10] @ 0x2222a74, (=#0xffff)
	ldr     r2, [r4, #0x8]
	bl      Function_20057fc
	mov     r0, r5
	mov     r1, r4
	bl      Function_2220344
	pop     {r3-r5,pc}
@ 0x2222a74

.word 0xffff @ 0x2222a74
.thumb
Function_2222a78: @ 2222a78 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2220314
	mov     r1, #0x0
	mov     r2, #0x3c
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, #0x2
	strb    r0, [r4, #0x0]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0x1a]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldrh    r0, [r4, #0x1a]
	bl      Function_2005748
	ldrh    r0, [r4, #0x1a]
	ldr     r1, [pc, #0x10] @ 0x2222aec, (=#0xffff)
	ldr     r2, [r4, #0x8]
	bl      Function_20057fc
	mov     r0, r5
	mov     r1, r4
	bl      Function_2220344
	pop     {r3-r5,pc}
@ 0x2222aec

.word 0xffff @ 0x2222aec
.thumb
Function_2222af0: @ 2222af0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2220314
	mov     r1, #0x0
	mov     r2, #0x3c
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, #0x1
	strb    r0, [r4, #0x0]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0x1a]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	lsl     r1, r1, #24
	asr     r1, r1, #24
	bl      Function_222317c
	str     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r0, r5
	lsl     r1, r1, #24
	asr     r1, r1, #24
	bl      Function_222317c
	str     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	mov     r0, r5
	lsl     r1, r1, #24
	asr     r1, r1, #24
	bl      Function_222317c
	str     r0, [r4, #0x10]
	ldrh    r0, [r4, #0x1a]
	bl      Function_2005748
	ldrh    r0, [r4, #0x1a]
	ldr     r1, [pc, #0x10] @ 0x2222b90, (=#0xffff)
	ldr     r2, [r4, #0x8]
	bl      Function_20057fc
	mov     r0, r5
	mov     r1, r4
	bl      Function_2220344
	pop     {r3-r5,pc}
@ 0x2222b8e

.align 2
.word 0xffff @ 0x2222b90



.thumb
Function_2222b94: @ 2222b94 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2220314
	mov     r1, #0x0
	mov     r2, #0x3c
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, #0x4
	strb    r0, [r4, #0x0]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0x1a]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [r4, #0x14]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strb    r0, [r4, #0x18]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldrb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	ldr     r1, [r4, #0x14]
	mov     r0, r5
	lsl     r1, r1, #24
	asr     r1, r1, #24
	bl      Function_222317c
	str     r0, [r4, #0x14]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2220344
	pop     {r3-r5,pc}
@ 0x2222bf8

.thumb
Function_2222bf8: @ 2222bf8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2220314
	mov     r1, #0x0
	mov     r2, #0x3c
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, #0x5
	strb    r0, [r4, #0x0]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strh    r0, [r4, #0x1a]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [r4, #0x14]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r4, #0x14]
	mov     r0, r5
	lsl     r1, r1, #24
	asr     r1, r1, #24
	bl      Function_222317c
	str     r0, [r4, #0x14]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2220344
	pop     {r3-r5,pc}
@ 0x2222c4e


.align 2, 0


.thumb
Function_2222c50: @ 2222c50 :thumb
	bx      lr
@ 0x2222c52


.align 2, 0


.thumb
Function_2222c54: @ 2222c54 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x90
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2222c70
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2222ca8, (=#0x17d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2222c70

.thumb
branch_2222c70: @ 2222c70 :thumb
	bl      Function_20057e0
	cmp     r0, #0x0
	beq     branch_2222c94
	ldr     r0, [pc, #0x2c] @ 0x2222ca8, (=#0x17d)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	ldrb    r1, [r4, r0]
	cmp     r1, #0x5a
	bls     branch_2222c8c
	mov     r1, #0x0
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2222c8c

.thumb
branch_2222c8c: @ 2222c8c :thumb
	mov     r0, #0x1
	add     r4, #0x8d
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2222c94

.thumb
branch_2222c94: @ 2222c94 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x8] @ 0x2222ca8, (=#0x17d)
	strb    r1, [r4, r0]
	ldr     r0, [r4, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x2222ca8

.word 0x17d @ 0x2222ca8
.thumb
Function_2222cac: @ 2222cac :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r3, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	lsl     r3, r3, #16
	ldr     r0, [pc, #0xc] @ 0x2222cd8, (=#0x4001050)
	mov     r1, #0x1
	mov     r2, #0x2
	lsr     r3, r3, #16
	blx     Function_20bf55c
	pop     {r3,pc}
@ 0x2222cd6

.align 2
.word 0x4001050 @ 0x2222cd8



.thumb
Function_2222cdc: @ 2222cdc :thumb
	ldr     r3, [pc, #0x0] @ 0x2222ce0, (=#0x2220475)
	bx      r3
@ 0x2222ce0

.word 0x2220475 @ 0x2222ce0



.thumb
Function_2222ce4: @ 2222ce4 :thumb
	bx      lr
@ 0x2222ce6


.align 2, 0
.thumb
Function_2222ce8: @ 2222ce8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r6, r5
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r7, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	lsl     r4, r1, #2
	add     r6, #0xcc
	str     r0, [r5, #0x18]
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	beq     branch_2222d10
	bl      Function_2022974
.thumb
branch_2222d10: @ 2222d10 :thumb
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_200c704
	str     r0, [r6, r4]
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	bne     branch_2222d2a
	bl      Function_2022974
.thumb
branch_2222d2a: @ 2222d2a :thumb
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, r4]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r2, r7
	bl      Function_200c7c0
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_200c738
	mov     r2, #0x11
	mov     r1, #0x0
	lsl     r2, r2, #16
	bl      Function_200964c
	mov     r0, r5
	mov     r1, #0x0
	add     r2, sp, #0x0
	add     r0, #0x18
.thumb
branch_2222d5c: @ 2222d5c :thumb
	ldr     r3, [r5, #0x18]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r3, [r3, #0x0]
	str     r3, [r2, #0x0]
	ldr     r3, [r0, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r3, [r0, #0x0]
	cmp     r1, #0x6
	blt     branch_2222d5c
	add     r5, #0xc0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r6, r4]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x0
	bl      Function_200cb30
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2222d84

.thumb
Function_2222d84: @ 2222d84 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r2, r0
	ldr     r0, [r2, #0x18]
	mov     r4, #0x6b
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	ldr     r3, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2222dc8, (=#0x1388)
	lsl     r1, r1, #2
	add     r0, r3, r0
	str     r0, [sp, #0x8]
	mov     r0, r2
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, r2, r1
	add     r0, #0xac
	add     r1, #0xcc
	lsl     r4, r4, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, r4]
	bl      Function_200cc3c
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2222dc8

.word 0x1388 @ 0x2222dc8
.thumb
Function_2222dcc: @ 2222dcc :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	ldr     r3, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x18]
	ldr     r1, [r0, #0x0]
	add     r2, r0, #0x4
	str     r2, [r4, #0x18]
	ldr     r0, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r4, #0x18]
	mov     r2, #0x1b
	lsl     r2, r2, #4
	ldr     r2, [r4, r2]
	lsl     r3, r3, #2
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r2, #0x1
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x24] @ 0x2222e28, (=#0x1388)
	mov     r2, r4
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	add     r3, r4, r3
	add     r0, #0xc8
	add     r2, #0xac
	add     r3, #0xcc
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r1, #0x2
	bl      Function_200cdc4
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2222e26


.align 2


.word 0x1388 @ 0x2222e28
.thumb
Function_2222e2c: @ 2222e2c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r2, r0
	ldr     r0, [r2, #0x18]
	mov     r4, #0x6d
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	ldr     r3, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2222e70, (=#0x1388)
	lsl     r1, r1, #2
	add     r0, r3, r0
	str     r0, [sp, #0x4]
	mov     r0, r2
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, r2, r1
	add     r0, #0xac
	add     r1, #0xcc
	lsl     r4, r4, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, r4]
	bl      Function_200ce24
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2222e6e

.align 2
.word 0x1388 @ 0x2222e70



.thumb
Function_2222e74: @ 2222e74 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r2, r0
	ldr     r0, [r2, #0x18]
	mov     r4, #0x6e
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	ldr     r3, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2222eb8, (=#0x1388)
	lsl     r1, r1, #2
	add     r0, r3, r0
	str     r0, [sp, #0x4]
	mov     r0, r2
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, r2, r1
	add     r0, #0xac
	add     r1, #0xcc
	lsl     r4, r4, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, r4]
	bl      Function_200ce54
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2222eb6

.align 2
.word 0x1388 @ 0x2222eb8



.thumb
Function_2222ebc: @ 2222ebc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	ldr     r5, [r1, #0x0]
	add     r2, r1, #0x4
	str     r2, [r4, #0x18]
	ldr     r1, [r2, #0x0]
	str     r1, [sp, #0x0]
	add     r1, r2, #0x4
	str     r1, [r4, #0x18]
	bl      Function_2220248
	mov     r6, r0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_22258e0
	add     r1, sp, #0xc
	strh    r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22258e0
	add     r2, sp, #0xc
	strh    r0, [r2, #0x2]
	mov     r1, #0x0
	strh    r1, [r2, #0x4]
	strh    r1, [r2, #0x6]
	mov     r0, #0x64
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x38]
	mov     r0, r4
	ldr     r3, [pc, #0xb8] @ 0x2222fc4, (=#0x1388)
	str     r1, [sp, #0x18]
	str     r1, [sp, #0x3c]
	add     r2, sp, #0xc
	add     r0, #0x18
branch_2222f14: @ 2222f14 :thumb
	ldr     r6, [r4, #0x18]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r6, [r6, #0x0]
	add     r6, r6, r3
	str     r6, [r2, #0x14]
	ldr     r6, [r0, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r6, [r0, #0x0]
	cmp     r1, #0x6
	blt     branch_2222f14
	mov     r0, #0x41
	lsl     r0, r0, #2
	add     r3, sp, #0xc
	add     r2, r4, r0
	mov     r6, #0x6
branch_2222f34: @ 2222f34 :thumb
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e76 @ sub r6, r6, #0x1
	bne     branch_2222f34
	ldr     r0, [r3, #0x0]
	lsl     r7, r5, #2
	str     r0, [r2, #0x0]
	mov     r0, r4
	str     r0, [sp, #0x8]
	add     r0, #0xcc
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x8]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, r7]
	add     r2, sp, #0xc
	bl      Function_200ce6c
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	mov     r2, r4
	ldr     r3, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r2, #0x18
	mov     r6, #0x0
	str     r0, [r4, #0x18]
	cmp     r3, #0x0
	ble     branch_2222f8c
	mov     r5, r4
branch_2222f74: @ 2222f74 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x94
	str     r1, [r0, #0x0]
	ldr     r0, [r2, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r2, #0x0]
	cmp     r6, r3
	blt     branch_2222f74
branch_2222f8c: @ 2222f8c :thumb
	cmp     r6, #0xa
	bge     branch_2222fa4
	lsl     r0, r6, #2
	add     r2, r4, r0
	mov     r1, #0x0
branch_2222f96: @ 2222f96 :thumb
	mov     r0, r2
	add     r0, #0x94
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r1, [r0, #0x0]
	cmp     r6, #0xa
	blt     branch_2222f96
branch_2222fa4: @ 2222fa4 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_22269ac
	mov     r5, r0
	mov     r0, r4
	add     r4, #0xc0
	ldr     r1, [r4, #0x0]
	ldr     r2, [sp, #0x8]
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, r7]
	ldr     r3, [sp, #0x4]
	blx     r5
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x2222fc2

.align 2
.word 0x1388 @ 0x2222fc4



.thumb
Function_2222fc8: @ 2222fc8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	ldr     r1, [r5, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	ldr     r4, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	ldr     r7, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	bl      Function_2220248
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_22258e0
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22258e0
	add     r2, sp, #0x0
	strh    r0, [r2, #0x2]
	mov     r1, #0x0
	strh    r1, [r2, #0x4]
	strh    r1, [r2, #0x6]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x2c]
	mov     r0, r5
	ldr     r3, [pc, #0x60] @ 0x2223078, (=#0x1388)
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x30]
	add     r2, sp, #0x0
	add     r0, #0x18
.thumb
branch_222301e: @ 222301e :thumb
	ldr     r6, [r5, #0x18]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r6, [r6, #0x0]
	add     r6, r6, r3
	str     r6, [r2, #0x14]
	ldr     r6, [r0, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r6, [r0, #0x0]
	cmp     r1, #0x6
	blt     branch_222301e
	mov     r0, #0x41
	lsl     r0, r0, #2
	add     r6, sp, #0x0
	add     r3, r5, r0
	mov     r2, #0x6
.thumb
branch_222303e: @ 222303e :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222303e
	ldr     r0, [r6, #0x0]
	lsl     r1, r4, #2
	str     r0, [r3, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, r5, r1
	add     r0, #0xac
	add     r1, #0xcc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	add     r5, #0xdc
	lsl     r4, r7, #2
	mov     r6, r0
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	beq     branch_2223072
	bl      Function_2022974
.thumb
branch_2223072: @ 2223072 :thumb
	str     r6, [r5, r4]
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2223078

.word 0x1388 @ 0x2223078
.thumb
Function_222307c: @ 222307c :thumb
	push    {r3-r5,lr}
	ldr     r1, [r0, #0x18]
	mov     r5, r0
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r2, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r5, #0xcc
	lsl     r4, r2, #2
	str     r1, [r0, #0x18]
	ldr     r1, [r5, r4]
	cmp     r1, #0x0
	beq     branch_22230a2
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_200d0b0
.thumb
branch_22230a2: @ 22230a2 :thumb
	mov     r0, #0x0
	str     r0, [r5, r4]
	pop     {r3-r5,pc}
@ 0x22230a8

.thumb
Function_22230a8: @ 22230a8 :thumb
	ldr     r1, [r0, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r0, #0x18]
	ldr     r3, [r1, #0x0]
	add     r2, r1, #0x4
	str     r2, [r0, #0x18]
	ldr     r1, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r0, #0x18]
	lsl     r2, r3, #2
	add     r2, r0, r2
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r3, [pc, #0x4] @ 0x22230c8, (=Function_200d3f4+1)
	ldr     r0, [r2, r0]
	bx      r3
@ 0x22230c8

.word Function_200d3f4+1 @ 0x22230c8



.thumb
Function_22230cc: @ 22230cc :thumb
	ldr     r3, [pc, #0x0] @ 0x22230d0, (=Function_2022974+1)
	bx      r3
@ 0x22230d0

.word Function_2022974+1 @ 0x22230d0



.thumb
Function_22230d4: @ 22230d4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x18]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	ldr     r4, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r5, #0x18]
	ldr     r1, [r1, #0x0]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	lsl     r1, r1, #24
	asr     r1, r1, #24
	bl      Function_222317c
	ldr     r1, [r5, #0x18]
	add     r2, r1, #0x4
	str     r2, [r5, #0x18]
	ldr     r1, [r2, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r2, [r5, #0x18]
	mov     r2, r5
	add     r2, #0xc0
	ldr     r6, [r2, #0x0]
	ldrh    r3, [r6, #0x14]
	str     r0, [sp, #0x0]
	lsl     r2, r3, #1
	mov     r0, #0x46
	add     r2, r6, r2
	add     r3, r6, r3
	lsl     r0, r0, #2
	str     r1, [sp, #0x4]
	ldr     r1, [r6, r0]
	add     r2, #0xd8
	str     r1, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	add     r3, #0xe8
	str     r1, [sp, #0xc]
	sub     r0, #0xc
	ldrh    r2, [r2, #0x0]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r6, r0]
	mov     r1, r4
	bl      Function_2077d3c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2223134

.thumb
Function_2223134: @ 2223134 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200598c
	cmp     r0, #0x0
	bne     branch_2223158
	ldr     r0, [r4, #0x18]
	add     r1, r0, #0x4
	str     r1, [r4, #0x18]
	ldr     r0, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r1, [r4, #0x18]
	mov     r1, #0x0
	add     r4, #0x8d
	strb    r1, [r4, #0x0]
	bl      Function_200592c
	pop     {r4,pc}
@ 0x2223158

.thumb
branch_2223158: @ 2223158 :thumb
	mov     r0, #0x1
	add     r4, #0x8d
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2223160

.thumb
Function_2223160: @ 2223160 :thumb
	bx      lr
@ 0x2223162


.align 2, 0
.thumb
Function_2223164: @ 2223164 :thumb
	cmp     r0, #0x55
	bls     branch_222316c
	mov     r0, #0x0
	bx      lr

branch_222316c: @ 222316c :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x4] @ 0x2223174, (=JumpTable_22387d4)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2223174

.word JumpTable_22387d4 @ 0x2223174



.thumb
Function_2223178: @ 2223178 :thumb
	ldrb    r0, [r0, #0x1]
	bx      lr
@ 0x222317c


.thumb
Function_222317c: @ 222317c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2220240
	mov     r7, r0
	mov     r0, r5
	bl      Function_2220248
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_223525c
	mov     r0, r5
	mov     r1, r6
	bl      Function_223525c
	mov     r0, r5
	mov     r1, r7
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_22231b8
	mov     r0, r5
	mov     r1, r6
	bl      Function_223525c
	cmp     r0, #0x4
	beq     branch_222321e
.thumb
branch_22231b8: @ 22231b8 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_22231d8
	mov     r0, r5
	mov     r1, r6
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_22231d8
	mov     r0, #0x0
	mvn     r0, r0
	mul     r4, r0
	b       branch_222321e
@ 0x22231d8

.thumb
branch_22231d8: @ 22231d8 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_22231fc
	mov     r0, r5
	mov     r1, r6
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_22231fc
	cmp     r4, #0x0
	ble     branch_222321e
	mov     r0, #0x0
	mvn     r0, r0
	mul     r4, r0
	b       branch_222321e
@ 0x22231fc

.thumb
branch_22231fc: @ 22231fc :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222321e
	mov     r0, r5
	mov     r1, r6
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222321e
	cmp     r4, #0x0
	bge     branch_222321e
	mov     r0, #0x0
	mvn     r0, r0
	mul     r4, r0
.thumb
branch_222321e: @ 222321e :thumb
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_222322e
	mov     r0, #0x0
	mvn     r0, r0
	mul     r4, r0
.thumb
branch_222322e: @ 222322e :thumb
	lsl     r0, r4, #24
	asr     r0, r0, #24
	pop     {r3-r7,pc}
@ 0x2223234

.thumb
Function_2223234: @ 2223234 :thumb
	push    {r3,lr}
	cmp     r0, r1
	bge     branch_2223246
	mov     r0, r2
	blx     Function_20d4070
	lsl     r0, r0, #24
	asr     r0, r0, #24
	pop     {r3,pc}
@ 0x2223246

.thumb
branch_2223246: @ 2223246 :thumb
	cmp     r0, r1
	ble     branch_2223258
	mov     r0, r2
	blx     Function_20d4070
	neg     r0, r0
	lsl     r0, r0, #24
	asr     r0, r0, #24
	pop     {r3,pc}
@ 0x2223258

.thumb
branch_2223258: @ 2223258 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222325c

.thumb
Function_222325c: @ 222325c :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x18]
	mov     r3, r0
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r4, [r0, #0x18]
	ldr     r5, [r4, #0x0]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r3, #0x18
	str     r4, [r0, #0x18]
	cmp     r5, r2
	beq     branch_222327e
	cmp     r5, r2
	beq     branch_222327a
	bl      Function_2022974
branch_222327a: @ 222327a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222327e

.thumb
branch_222327e: @ 222327e :thumb
	mov     r4, #0x0
	cmp     r2, #0x0
	ble     branch_2223298
.thumb
branch_2223284: @ 2223284 :thumb
	ldr     r5, [r0, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r5, [r5, #0x0]
	str     r5, [r1, #0x0]
	ldr     r5, [r3, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r5, [r3, #0x0]
	cmp     r4, r2
	blt     branch_2223284
.thumb
branch_2223298: @ 2223298 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222329c

.thumb
Function_222329c: @ 222329c :thumb
	push    {r3,r4}
	mov     r4, r0
	mov     r0, #0x41
	lsl     r0, r0, #2
	add     r3, r1, r0
	mov     r2, #0x6
.thumb
branch_22232a8: @ 22232a8 :thumb
	ldmia   r3!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22232a8
	ldr     r0, [r3, #0x0]
	str     r0, [r4, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x22232b8

.thumb
Function_22232b8: @ 22232b8 :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, r0, r1
	add     r0, #0xc0
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x22232c4

.thumb
Function_22232c4: @ 22232c4 :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, r0, r1
	add     r0, #0xe0
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x22232d0

.thumb
Function_22232d0: @ 22232d0 :thumb
	add     r0, #0xc0
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #1
	add     r0, r2, r0
	add     r0, #0xd8
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x22232de


.align 2, 0


.thumb
Function_22232e0: @ 22232e0 :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, r0, r1
	add     r0, #0xe8
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x22232ec

.thumb
Function_22232ec: @ 22232ec :thumb
	add     r0, #0xc0
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r2, r0
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x22232fa


.align 2, 0


.thumb
Function_22232fc: @ 22232fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r4, r1, #2
	add     r0, r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2223314
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2223314

.thumb
branch_2223314: @ 2223314 :thumb
	bl      Function_2008b38
	cmp     r0, #0x0
	beq     branch_2223328
	add     r5, #0xc0
	ldr     r0, [r5, #0x0]
	add     r0, r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x2223328

.thumb
branch_2223328: @ 2223328 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222332c

.thumb
Function_222332c: @ 222332c :thumb
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2223332


.align 2, 0


.thumb
Function_2223334: @ 2223334 :thumb
	add     r0, #0xc0
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r2, r0
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x2223344

.thumb
Function_2223344: @ 2223344 :thumb
	add     r0, #0xc0
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r2, r0
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x2223354

.thumb
Function_2223354: @ 2223354 :thumb
	add     r0, #0xc0
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r2, r0
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2223364

.thumb
Function_2223364: @ 2223364 :thumb
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, #0xd4
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2223376
	mov     r0, #0x1
	bx      lr
@ 0x2223376

.thumb
branch_2223376: @ 2223376 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222337a


.align 2, 0


.thumb
Function_222337c: @ 222337c :thumb
	add     r0, #0xc0
	ldr     r2, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r2, r0
	add     r0, #0xfc
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2223398, (=#0x200400c0)
	tst     r0, r1
	beq     branch_2223392
	mov     r0, #0x1
	bx      lr

branch_2223392: @ 2223392 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2223396

.align 2
.word 0x200400c0 @ 0x2223398



.thumb
Function_222339c: @ 222339c :thumb
	push    {r3,lr}
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_22233aa
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x22233aa

.thumb
branch_22233aa: @ 22233aa :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22233ae


.align 2, 0


.thumb
Function_22233b0: @ 22233b0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x30] @ 0x22233e8, (=#0x2238614)
	add     r2, sp, #0x0
	mov     r5, r0
	mov     r4, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_22233dc
	add     r0, sp, #0xc
	lsl     r1, r4, #2
	add     sp, #0x18
	ldr     r0, [r0, r1]
	pop     {r3-r5,pc}
@ 0x22233dc

.thumb
branch_22233dc: @ 22233dc :thumb
	lsl     r1, r4, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22233e6

.align 2
.word 0x2238614 @ 0x22233e8



.thumb
Function_22233ec: @ 22233ec :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x30] @ 0x2223424, (=#0x22385fc)
	add     r2, sp, #0x0
	mov     r5, r0
	mov     r4, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2223418
	add     r0, sp, #0xc
	lsl     r1, r4, #2
	add     sp, #0x18
	ldr     r0, [r0, r1]
	pop     {r3-r5,pc}
@ 0x2223418

.thumb
branch_2223418: @ 2223418 :thumb
	lsl     r1, r4, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2223422

.align 2
.word 0x22385fc @ 0x2223424



.thumb
Function_2223428: @ 2223428 :thumb
	push    {r3,lr}
	cmp     r1, #0x3
	bhi     branch_222345e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r6, r1, #0
	lsl     r6, r2, #0
	lsl     r6, r3, #0
	bl      Function_221fdd4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222344a


.incbin "./baserom/overlay/overlay_0012.bin", 0x382a, 0x222345e - 0x222344a


.thumb
branch_222345e: @ 222345e :thumb
	pop     {r3,pc}
@ 0x2223460


.thumb
Function_2223460: @ 2223460 :thumb
	push    {r3,lr}
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r2
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x11
	add     r0, #0xc4
	lsl     r2, r2, #4
	lsl     r1, r1, #24
	ldr     r2, [r3, r2]
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	lsl     r3, r3, #16
	bl      Function_201958c
	pop     {r3,pc}
@ 0x2223486


.align 2, 0


.thumb
Function_2223488: @ 2223488 :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mov     r1, r0
	lsl     r2, r2, #8
	str     r2, [sp, #0x0]
	add     r1, #0xc0
	add     r0, #0xc8
	ldr     r1, [r1, #0x0]
	sub     r2, #0xec
	ldr     r1, [r1, r2]
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r3, r2
	bl      Function_2002fbc
	pop     {r3,pc}
@ 0x22234a8

.thumb
Function_22234a8: @ 22234a8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_22210a8
	mov     r4, r0
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	add     r0, #0xe8
	ldrb    r6, [r0, #0x0]
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_22234de
	mov     r0, r5
	mov     r1, r4
	bl      Function_22232d0
	mov     r1, r6
	bl      Function_22384f0
	cmp     r0, #0x1
	bne     branch_22234de
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22234de

.thumb
branch_22234de: @ 22234de :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22234e2


.align 2, 0


.thumb
Function_22234e4: @ 22234e4 :thumb
	mov     r2, #0x14
	mul     r2, r0
	ldr     r0, [pc, #0x8] @ 0x22234f4, (=#0x2238928)
	lsl     r1, r1, #2
	add     r0, r0, r2
	ldr     r0, [r1, r0]
	bx      lr
@ 0x22234f2

.align 2
.word 0x2238928 @ 0x22234f4



.thumb
Function_22234f8: @ 22234f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x98
	ldr     r3, [pc, #0x258] @ 0x2223758, (=#0x22385b4)
	mov     r5, r2
	add     r2, sp, #0x80
	mov     r7, r0
	str     r1, [sp, #0x18]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [sp, #0x18]
	mov     r1, #0x58
	bl      Function_2018144
	mov     r4, r0
	ldr     r0, [sp, #0x18]
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x4]
	mov     r0, r7
	bl      0x223e010
	str     r0, [r4, #0x8]
	mov     r0, r7
	bl      0x223e018
	str     r0, [r4, #0xc]
	mov     r0, r7
	bl      0x223e064
	str     r0, [r4, #0x10]
	mov     r6, #0x0
	mov     r5, r4
.thumb
branch_222353e: @ 222353e :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x24]
	mov     r0, r7
	mov     r1, r6
	bl      0x223f2ac
	str     r0, [r5, #0x34]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_222353e
	mov     r1, r4
	mov     r0, r7
	add     r1, #0x44
	bl      0x223f87c
	mov     r1, r4
	mov     r0, r7
	add     r1, #0x48
	bl      0x223f8ac
	ldr     r1, [sp, #0x18]
	mov     r0, #0x1b
	bl      Function_2006c24
	mov     r6, r0
	mov     r7, #0x0
	str     r4, [sp, #0x1c]
.thumb
branch_2223576: @ 2223576 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r7, r0
	beq     branch_2223580
	cmp     r0, #0xff
	bne     branch_22235ea
.thumb
branch_2223580: @ 2223580 :thumb
	ldr     r1, [sp, #0x1c]
	ldr     r1, [r1, #0x48]
	cmp     r1, #0x0
	beq     branch_22235ea
	ldr     r1, [pc, #0x1d0] @ 0x222375c, (=#0xd903)
	mov     r3, #0x4c
	add     r2, r7, r1
	ldr     r1, [pc, #0x1d0] @ 0x2223760, (=#0x1388)
	mul     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	add     r5, r2, r1
	str     r0, [sp, #0x4]
	str     r5, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r2, r6
	bl      Function_200cc3c
	str     r6, [sp, #0x0]
	mov     r0, #0x4b
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r5, [sp, #0x14]
	ldr     r0, [r4, #0x10]
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r2, r6
	mov     r3, #0x4d
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r2, r6
	mov     r3, #0x4e
	bl      Function_200ce54
.thumb
branch_22235ea: @ 22235ea :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	cmp     r7, #0x4
	blt     branch_2223576
	mov     r0, r6
	bl      Function_2006ca8
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	mov     r7, r4
.thumb
branch_2223602: @ 2223602 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [sp, #0x2c]
	cmp     r0, r1
	beq     branch_2223610
	cmp     r1, #0xff
	beq     branch_2223610
	b       branch_2223744
@ 0x2223610

.thumb
branch_2223610: @ 2223610 :thumb
	ldr     r2, [pc, #0x148] @ 0x222375c, (=#0xd903)
	ldr     r0, [sp, #0x2c]
	mov     r3, r1
	add     r0, r0, r2
	ldr     r2, [pc, #0x144] @ 0x2223760, (=#0x1388)
	mul     r3, r2
	add     r1, r0, r3
	str     r1, [r7, #0x14]
	ldr     r1, [r4, #0x4]
	mov     r3, r1
	mul     r3, r2
	add     r1, r0, r3
	str     r1, [sp, #0x68]
	ldr     r1, [r4, #0x4]
	mov     r3, r1
	mul     r3, r2
	add     r1, r0, r3
	str     r1, [sp, #0x6c]
	ldr     r1, [r4, #0x4]
	mov     r3, r1
	mul     r3, r2
	add     r1, r0, r3
	str     r1, [sp, #0x70]
	ldr     r1, [r4, #0x4]
	mul     r2, r1
	mov     r1, #0x0
	add     r0, r0, r2
	str     r0, [sp, #0x74]
	str     r1, [sp, #0x78]
	str     r1, [sp, #0x7c]
	ldr     r2, [r7, #0x34]
	ldr     r5, [r7, #0x48]
	ldr     r0, [r2, #0x4]
	cmp     r5, #0x0
	str     r0, [sp, #0x28]
	ldr     r0, [r2, #0x8]
	str     r0, [sp, #0x24]
	ldr     r0, [r2, #0x0]
	str     r0, [sp, #0x20]
	beq     branch_2223744
	mov     r0, r5
	bl      Function_20080c0
	str     r0, [sp, #0x30]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	mov     r0, r5
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r2, r6, r0
	ldr     r0, [sp, #0x30]
	add     r1, sp, #0x34
	strh    r0, [r1, #0x0]
	strh    r2, [r1, #0x2]
	mov     r0, #0x0
	strh    r0, [r1, #0x4]
	strh    r0, [r1, #0x6]
	ldr     r1, [sp, #0x2c]
	add     r3, sp, #0x34
	add     r1, r4, r1
	add     r1, #0x44
	ldrb    r1, [r1, #0x0]
	lsl     r2, r1, #2
	add     r1, sp, #0x80
	ldr     r1, [r1, r2]
	str     r0, [sp, #0x40]
	str     r1, [sp, #0x3c]
	mov     r1, #0x1
	str     r1, [sp, #0x44]
	str     r1, [sp, #0x60]
	str     r0, [sp, #0x64]
	add     r2, sp, #0x68
.thumb
branch_22236aa: @ 22236aa :thumb
	ldr     r1, [r2, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r1, [r3, #0x14]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x6
	blt     branch_22236aa
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	add     r2, sp, #0x34
	bl      Function_200ce6c
	mov     r6, r0
	bl      Function_200d330
	str     r6, [r7, #0x24]
	cmp     r5, #0x0
	bne     branch_22236d8
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_200d3f4
	b       branch_2223700
@ 0x22236d8

.thumb
branch_22236d8: @ 22236d8 :thumb
	mov     r0, r5
	bl      Function_2008b38
	cmp     r0, #0x0
	bne     branch_22236ec
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_200d3f4
	b       branch_2223700
@ 0x22236ec

.thumb
branch_22236ec: @ 22236ec :thumb
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_20080c0
	cmp     r0, #0x1
	bne     branch_2223700
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_200d3f4
.thumb
branch_2223700: @ 2223700 :thumb
	cmp     r5, #0x0
	beq     branch_222371a
	ldr     r0, [r6, #0x0]
	bl      Function_2021f98
	mov     r1, r0
	mov     r3, #0x32
	ldr     r1, [r1, #0x4]
	ldr     r2, [sp, #0x20]
	mov     r0, #0x13
	lsl     r3, r3, #6
	bl      Function_201dc68
.thumb
branch_222371a: @ 222371a :thumb
	cmp     r5, #0x0
	beq     branch_2223744
	ldr     r0, [r6, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #0x20
	lsl     r0, r0, #20
	str     r1, [sp, #0x4]
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x10]
	ldr     r1, [sp, #0x28]
	ldr     r2, [sp, #0x24]
	ldr     r3, [r4, #0x0]
	bl      Function_2003050
branch_2223744: @ 2223744 :thumb
	ldr     r0, [sp, #0x2c]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x2c]
	cmp     r0, #0x4
	bge     branch_2223752
	b       branch_2223602

branch_2223752: @ 2223752 :thumb
	mov     r0, r4
	add     sp, #0x98
	pop     {r3-r7,pc}
@ 0x2223758

.word 0x22385b4 @ 0x2223758
.word 0xd903 @ 0x222375c
.word 0x1388 @ 0x2223760



.thumb
Function_2223764: @ 2223764 :thumb
	ldr     r3, [pc, #0x4] @ 0x222376c, (=#0x22234f9)
	mov     r2, #0xff
	bx      r3
@ 0x222376a

.align 2
.word 0x22234f9 @ 0x222376c



.thumb
Function_2223770: @ 2223770 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_2223778: @ 2223778 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_2223794
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0x14]
	bl      Function_200d070
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0x14]
	bl      Function_200d080
	ldr     r0, [r4, #0x24]
	bl      Function_200d0f4
.thumb
branch_2223794: @ 2223794 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_2223778
	mov     r0, r5
	bl      Function_20181c4
	pop     {r4-r6,pc}
@ 0x22237a4

.thumb
Function_22237a4: @ 22237a4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_22237ac: @ 22237ac :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_22237c8
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0x14]
	bl      Function_200d070
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0x14]
	bl      Function_200d080
	ldr     r0, [r4, #0x24]
	bl      Function_200d0f4
branch_22237c8: @ 22237c8 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_22237ac
	mov     r0, r5
	bl      Function_20181c4
	pop     {r4-r6,pc}
@ 0x22237d8


.thumb
Function_22237d8: @ 22237d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22237e2
	bl      Function_2022974
branch_22237e2: @ 22237e2 :thumb
	ldr     r0, [r4, #0x4]
	add     r0, r4, r0
	add     r0, #0x44
	ldrb    r0, [r0, #0x0]
	pop     {r4,pc}
@ 0x22237ec


.thumb
Function_22237ec: @ 22237ec :thumb
	bx      lr
@ 0x22237ee


.align 2, 0
.thumb
Function_22237f0: @ 22237f0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      0x221f840
	mov     r4, r0
	mov     r0, #0x1d
	mov     r1, r6
	mov     r2, r5
	bl      Function_20144c4
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0xa
	mov     r3, r7
	bl      Function_20144cc
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2223818

.thumb
Function_2223818: @ 2223818 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      0x221f840
	mov     r4, r0
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	bl      Function_20144c4
	mov     r1, r0
	ldr     r3, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0xa
	bl      Function_20144cc
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2223842


.align 2, 0
.thumb
Function_2223844: @ 2223844 :thumb
	ldr     r3, [pc, #0x0] @ 0x2223848, (=#0x2006cb9)
	bx      r3
@ 0x2223848

.word 0x2006cb9 @ 0x2223848
.thumb
Function_222384c: @ 222384c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      0x221f888
	mov     r4, r0
	bne     branch_2223864
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2223864: @ 2223864 :thumb
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	bl      Function_2223844
	mov     r1, r0
	ldr     r3, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0xa
	bl      Function_20144cc
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x222387e


.align 2, 0
.thumb
Function_2223880: @ 2223880 :thumb
	push    {r4,lr}
	lsl     r4, r2, #2
	ldr     r2, [pc, #0x8] @ 0x2223890, (=JumpTable_2238db0)
	ldr     r2, [r2, r4]
	bl      Function_20146f4
	pop     {r4,pc}
@ 0x222388e

.align 2
.word JumpTable_2238db0 @ 0x2223890



.thumb
Function_2223894: @ 2223894 :thumb
	ldr     r3, [pc, #0x0] @ 0x2223898, (=#0x221f8d9)
	bx      r3
@ 0x2223898

.word 0x221f8d9 @ 0x2223898
.thumb
Function_222389c: @ 222389c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r2
	mov     r4, #0x1
	bl      Function_2235254
	mov     r5, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_2235254
	cmp     r5, #0x5
	bhi     branch_22238d8
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r2, #0
	lsl     r2, r1, #0
	lsl     r4, r2, #0
	lsl     r6, r1, #0
	lsl     r4, r2, #0
	lsl     r2, r2, #0
	.hword  0x1ea4 @ sub r4, r4, #0x2
	b       branch_22238d8
@ 0x22238d2


.incbin "./baserom/overlay/overlay_0012.bin", 0x3cb2, 0x22238d8 - 0x22238d2


.thumb
branch_22238d8: @ 22238d8 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x22238dc


.thumb
Function_22238dc: @ 22238dc :thumb
	bx      lr
@ 0x22238de


.align 2, 0
.thumb
Function_22238e0: @ 22238e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	bl      Function_2014764
	mov     r4, r0
	bl      Function_2220240
	mov     r0, r4
	bl      Function_2220248
	mov     r0, r4
	bl      Function_2220250
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_2223916
	mov     r0, r4
	mov     r1, #0x1
	add     r2, sp, #0x28
	bl      Function_2235508
	b       branch_222394e
@ 0x2223916

.thumb
branch_2223916: @ 2223916 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2235254
	str     r0, [sp, #0x0]
	bl      Function_2235310
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_2014790
	mov     r7, r0
	mov     r0, r4
	bl      Function_221fdd4
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0x28
	mov     r2, r4
	mov     r3, r7
	bl      Function_2235448
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x1c
	mov     r2, r4
	mov     r3, r7
	bl      Function_2235448
.thumb
branch_222394e: @ 222394e :thumb
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x28]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x2c]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x30]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x30]
	mov     r0, #0x1
	add     r1, sp, #0x10
	bl      Function_2235760
	mov     r0, r6
	bl      Function_2014784
	mov     r4, r0
	add     r0, sp, #0x8
	mov     r1, r4
	bl      Function_2020a94
	add     r0, sp, #0x8
	mov     r1, r4
	bl      Function_20209d4
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2223996

.align 2, 0

.thumb
Function_2223998: @ 2223998 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	bl      Function_2014764
	mov     r4, r0
	bl      Function_2220248
	mov     r6, r0
	mov     r0, r4
	bl      Function_2220250
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x0
	add     r2, sp, #0xc
	bl      Function_2235508
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x30]
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_2235760
	mov     r0, r7
	add     r1, sp, #0x0
	bl      Function_2014744
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22239f4

.thumb
Function_22239f4: @ 22239f4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2014764
	mov     r5, r0
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	add     r2, sp, #0x0
	bl      Function_2235508
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x30]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2223a36


.align 2, 0


.thumb
Function_2223a38: @ 2223a38 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2014764
	mov     r5, r0
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	add     r2, sp, #0x0
	bl      Function_2235508
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x30]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2223a7a


.align 2, 0


.thumb
Function_2223a7c: @ 2223a7c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_2014764
	mov     r4, r0
	bl      Function_2220240
	mov     r6, r0
	mov     r0, r4
	bl      Function_2220248
	mov     r0, r4
	mov     r1, r6
	add     r2, sp, #0x0
	bl      Function_2235508
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x30]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2223ac6


.align 2, 0


.thumb
Function_2223ac8: @ 2223ac8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_2014764
	mov     r6, r0
	bl      Function_2220250
	bl      Function_2014790
	mov     r7, r0
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_223525c
	cmp     r0, #0x3
	beq     branch_2223af4
	mov     r4, #0x1
	b       branch_2223af6
@ 0x2223af4

.thumb
branch_2223af4: @ 2223af4 :thumb
	mov     r4, #0x0
.thumb
branch_2223af6: @ 2223af6 :thumb
	mov     r0, r6
	bl      Function_221fdd4
	mov     r2, r0
	mov     r0, r4
	add     r1, sp, #0x0
	mov     r3, r7
	bl      Function_2235448
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x30]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2223b30

.thumb
Function_2223b30: @ 2223b30 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_2014764
	mov     r6, r0
	bl      Function_2220250
	bl      Function_2014790
	mov     r7, r0
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r6
	bl      Function_223525c
	cmp     r0, #0x3
	beq     branch_2223b5c
	mov     r4, #0x1
	b       branch_2223b5e
@ 0x2223b5c

.thumb
branch_2223b5c: @ 2223b5c :thumb
	mov     r4, #0x0
.thumb
branch_2223b5e: @ 2223b5e :thumb
	mov     r0, r6
	bl      Function_221fdd4
	mov     r2, r0
	mov     r0, r4
	add     r1, sp, #0x0
	mov     r3, r7
	bl      Function_2235448
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x30]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2223b98

.thumb
Function_2223b98: @ 2223b98 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x9c
	mov     r5, r0
	add     r1, sp, #0x0
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	strh    r0, [r1, #0x2]
	strh    r0, [r1, #0x4]
	strh    r0, [r1, #0x6]
	strh    r0, [r1, #0x8]
	strh    r0, [r1, #0xa]
	ldr     r3, [pc, #0x88] @ 0x2223c38, (=#0x2238e0c)
	add     r2, sp, #0x54
	mov     r1, #0x24
.thumb
branch_2223bb4: @ 2223bb4 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2223bb4
	ldr     r3, [pc, #0x78] @ 0x2223c3c, (=#0x2238e54)
	add     r2, sp, #0xc
	mov     r1, #0x24
.thumb
branch_2223bc6: @ 2223bc6 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2223bc6
	bl      Function_2014764
	mov     r4, r0
	bl      Function_2220240
	mov     r6, r0
	mov     r0, r4
	bl      Function_2220248
	mov     r7, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2235254
	mov     r6, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_2235254
	lsl     r2, r0, #1
	mov     r0, #0xc
	mov     r1, r6
	mul     r1, r0
	add     r0, sp, #0x54
	add     r0, r0, r1
	ldsh    r4, [r2, r0]
	mov     r3, #0xac
	mov     r0, r4
	ldr     r4, [r5, #0x20]
	mul     r0, r3
	ldr     r4, [r4, #0x0]
	ldr     r4, [r4, #0x4]
	add     r0, r0, r4
	str     r0, [r5, #0x28]
	add     r0, sp, #0xc
	add     r0, r0, r1
	ldsh    r0, [r2, r0]
	mov     r1, r0
	ldr     r0, [r5, #0x20]
	mul     r1, r3
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	str     r0, [r5, #0x30]
	add     sp, #0x9c
	pop     {r4-r7,pc}
@ 0x2223c36

.align 2
.word 0x2238e0c @ 0x2223c38
.word 0x2238e54 @ 0x2223c3c



.thumb
Function_2223c40: @ 2223c40 :thumb
	push    {r3,r4}
	mov     r3, r2
	add     r3, #0x8
	cmp     r0, #0x7
	bhi     branch_2223cd0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r7, #1
	lsl     r6, r1, #0
	lsl     r0, r3, #0
	lsl     r2, r4, #0
	lsl     r4, r5, #0
	lsl     r6, r7, #0
	lsl     r0, r2, #1
	lsl     r2, r4, #1
	ldr     r0, [r2, #0x0]
	mul     r1, r0
	str     r1, [r2, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2223c70


.incbin "./baserom/overlay/overlay_0012.bin", 0x4050, 0x2223cd0 - 0x2223c70


.thumb
branch_2223cd0: @ 2223cd0 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x2223cd4


.thumb
Function_2223cd4: @ 2223cd4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r2
	mov     r5, r1
	mov     r1, r3
	add     r7, sp, #0x10
	mov     r2, #0x0
	str     r2, [r7, #0x0]
	ldr     r3, [sp, #0x30]
	str     r2, [r7, #0x4]
	ldr     r4, [sp, #0x38]
	str     r2, [r7, #0x8]
	cmp     r3, #0x5
	bhi     branch_2223d7e
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r0, r0, #2
	lsl     r2, r1, #0
	lsl     r0, r6, #0
	lsl     r4, r0, #1
	lsl     r4, r1, #1
	lsl     r6, r2, #1
	mov     r0, r5
	mov     r1, r7
	bl      Function_2014988
	add     r1, sp, #0x20
	mov     r0, #0x14
	ldsb    r0, [r1, r0]
	ldr     r1, [sp, #0x10]
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [sp, #0x14]
	str     r2, [sp, #0x10]
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [sp, #0x18]
	str     r2, [sp, #0x14]
	mul     r0, r1
	str     r0, [sp, #0x18]
	b       branch_2223d7e
@ 0x2223d2e


.incbin "./baserom/overlay/overlay_0012.bin", 0x410e, 0x2223d7e - 0x2223d2e


.thumb
branch_2223d7e: @ 2223d7e :thumb
	ldr     r1, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	sub     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r4, #0x4]
	sub     r0, r1, r0
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	ldr     r0, [r4, #0x8]
	sub     r0, r1, r0
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, sp, #0x10
	bl      Function_2014970
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2223da2


.align 2, 0


.thumb
Function_2223da4: @ 2223da4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r2
	mov     r5, r1
	mov     r1, r3
	add     r7, sp, #0x10
	mov     r2, #0x0
	str     r2, [r7, #0x0]
	ldr     r3, [sp, #0x30]
	str     r2, [r7, #0x4]
	ldr     r4, [sp, #0x38]
	str     r2, [r7, #0x8]
	cmp     r3, #0x5
	bhi     branch_2223e4e
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r0, r0, #2
	lsl     r2, r1, #0
	lsl     r0, r6, #0
	lsl     r4, r0, #1
	lsl     r4, r1, #1
	lsl     r6, r2, #1
	mov     r0, r5
	mov     r1, r7
	bl      Function_20148a8
	add     r1, sp, #0x20
	mov     r0, #0x14
	ldsb    r0, [r1, r0]
	ldr     r1, [sp, #0x10]
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [sp, #0x14]
	str     r2, [sp, #0x10]
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [sp, #0x18]
	str     r2, [sp, #0x14]
	mul     r0, r1
	str     r0, [sp, #0x18]
	b       branch_2223e4e
@ 0x2223dfe


.incbin "./baserom/overlay/overlay_0012.bin", 0x41de, 0x2223e4e - 0x2223dfe


.thumb
branch_2223e4e: @ 2223e4e :thumb
	ldr     r1, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	sub     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r4, #0x4]
	sub     r0, r1, r0
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	ldr     r0, [r4, #0x8]
	sub     r0, r1, r0
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, sp, #0x10
	bl      Function_2014890
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2223e72


.align 2, 0


.thumb
Function_2223e74: @ 2223e74 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x94
	mov     r6, r0
	mov     r7, r2
	mov     r4, r1
	str     r3, [sp, #0xc]
	bl      Function_2220250
	mov     r0, r6
	mov     r1, r7
	bl      Function_2235254
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	bl      Function_2235254
	mov     r5, r0
	mov     r0, r6
	add     r1, sp, #0x7c
	mov     r2, #0x3
	bl      Function_222325c
	mov     r0, r6
	add     r1, sp, #0x70
	mov     r2, #0x3
	bl      Function_222325c
	mov     r0, r6
	add     r1, sp, #0x58
	mov     r2, #0x3
	bl      Function_222325c
	mov     r0, r6
	add     r1, sp, #0x64
	mov     r2, #0x3
	bl      Function_222325c
	mov     r0, r6
	add     r1, sp, #0x40
	mov     r2, #0x3
	bl      Function_222325c
	mov     r0, r6
	add     r1, sp, #0x34
	mov     r2, #0x3
	bl      Function_222325c
	mov     r0, r6
	add     r1, sp, #0x4c
	mov     r2, #0x3
	bl      Function_222325c
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x5
	bhi     branch_2223efc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r2, r3, #0
	lsl     r0, r6, #0
	lsl     r4, r4, #1
	lsl     r6, r5, #2
	lsl     r2, r4, #3
.thumb
branch_2223efc: @ 2223efc :thumb
	ldr     r1, [sp, #0x7c]
	add     r0, sp, #0x14
	strh    r1, [r0, #0x0]
	ldr     r1, [sp, #0x80]
	strh    r1, [r0, #0x2]
	ldr     r1, [sp, #0x84]
	strh    r1, [r0, #0x4]
	b       branch_222401c
@ 0x2223f0c


.incbin "./baserom/overlay/overlay_0012.bin", 0x42ec, 0x222401c - 0x2223f0c


.thumb
branch_222401c: @ 222401c :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r6
	mov     r1, r7
	bl      Function_222389c
	mov     r5, r0
	add     r1, sp, #0x28
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r6
	mov     r2, #0x3
	bl      Function_222325c
	mov     r0, r6
	mov     r1, r7
	add     r2, sp, #0x1c
	bl      Function_2235508
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	bne     branch_2224088
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	bne     branch_2224088
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	bne     branch_2224088
	add     r3, sp, #0x1c
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x88
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [r4, #0x20]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x4]
	add     r0, r0, r1
	str     r0, [r4, #0x28]
	ldr     r1, [r4, #0x20]
	ldr     r0, [sp, #0x20]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x8]
	add     r0, r0, r1
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x20]
	ldr     r0, [sp, #0x24]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0xc]
	add     r0, r0, r1
	str     r0, [r4, #0x30]
	b       branch_22240dc
@ 0x2224088

.thumb
branch_2224088: @ 2224088 :thumb
	ldr     r2, [sp, #0x28]
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x30]
	str     r2, [sp, #0x88]
	str     r1, [sp, #0x8c]
	str     r0, [sp, #0x90]
	cmp     r2, #0x0
	bne     branch_22240a2
	mov     r0, #0x32
	lsl     r0, r0, #6
	cmp     r1, r0
	bne     branch_22240a2
	mov     r5, #0x1
.thumb
branch_22240a2: @ 22240a2 :thumb
	ldr     r1, [sp, #0x88]
	mov     r0, r1
	ldr     r1, [sp, #0x8c]
	mul     r0, r5
	mov     r2, r1
	mul     r2, r5
	ldr     r1, [sp, #0x24]
	str     r2, [sp, #0x8c]
	mov     r2, r1
	mul     r2, r5
	str     r0, [sp, #0x88]
	str     r2, [sp, #0x90]
	ldr     r1, [r4, #0x20]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x4]
	add     r0, r0, r1
	str     r0, [r4, #0x28]
	ldr     r1, [r4, #0x20]
	ldr     r0, [sp, #0x8c]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x8]
	add     r0, r0, r1
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x20]
	ldr     r0, [sp, #0x90]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0xc]
	add     r0, r0, r1
	str     r0, [r4, #0x30]
.thumb
branch_22240dc: @ 22240dc :thumb
	ldr     r0, [sp, #0xa8]
	cmp     r0, #0x0
	beq     branch_222411a
	cmp     r0, #0x1
	beq     branch_22240ec
	cmp     r0, #0x2
	beq     branch_2224104
	b       branch_222411a
@ 0x22240ec

.thumb
branch_22240ec: @ 22240ec :thumb
	ldr     r0, [sp, #0xac]
	ldr     r3, [sp, #0xc]
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	add     r0, sp, #0x88
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      Function_2223cd4
	b       branch_222411a
@ 0x2224104

.thumb
branch_2224104: @ 2224104 :thumb
	ldr     r0, [sp, #0xac]
	ldr     r3, [sp, #0xc]
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	add     r0, sp, #0x88
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      Function_2223da4
.thumb
branch_222411a: @ 222411a :thumb
	add     r1, sp, #0x14
	ldrh    r2, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x50
	strh    r2, [r0, #0x0]
	mov     r0, r4
	ldrh    r2, [r1, #0x2]
	add     r0, #0x52
	add     r4, #0x54
	strh    r2, [r0, #0x0]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r4, #0x0]
	add     sp, #0x94
	pop     {r4-r7,pc}
@ 0x2224136


.align 2, 0
.thumb
Function_2224138: @ 2224138 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	bl      Function_2014764
	mov     r6, r0
	bl      Function_2220240
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_2220248
	mov     r3, r0
	str     r5, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	mov     r1, r7
	str     r4, [sp, #0x4]
	bl      Function_2223e74
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2224168


.thumb
Function_2224168: @ 2224168 :thumb
	ldr     r3, [pc, #0x4] @ 0x2224170, (=#0x2224139)
	mov     r1, #0x0
	mov     r2, r1
	bx      r3
@ 0x2224170

.word 0x2224139 @ 0x2224170



.thumb
Function_2224174: @ 2224174 :thumb
	ldr     r3, [pc, #0x4] @ 0x222417c, (=#0x2224139)
	mov     r1, #0x1
	mov     r2, r1
	bx      r3
@ 0x222417c

.word 0x2224139 @ 0x222417c



.thumb
Function_2224180: @ 2224180 :thumb
	ldr     r3, [pc, #0x4] @ 0x2224188, (=#0x2224139)
	mov     r1, #0x1
	mov     r2, #0x2
	bx      r3
@ 0x2224188

.word 0x2224139 @ 0x2224188



.thumb
Function_222418c: @ 222418c :thumb
	ldr     r3, [pc, #0x4] @ 0x2224194, (=#0x2224139)
	mov     r1, #0x1
	mov     r2, #0x3
	bx      r3
@ 0x2224194

.word 0x2224139 @ 0x2224194



.thumb
Function_2224198: @ 2224198 :thumb
	ldr     r3, [pc, #0x4] @ 0x22241a0, (=#0x2224139)
	mov     r1, #0x1
	mov     r2, #0x4
	bx      r3
@ 0x22241a0

.word 0x2224139 @ 0x22241a0



.thumb
Function_22241a4: @ 22241a4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22241ac, (=#0x2224139)
	mov     r1, #0x1
	mov     r2, #0x5
	bx      r3
@ 0x22241ac

.word 0x2224139 @ 0x22241ac



.thumb
Function_22241b0: @ 22241b0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22241b8, (=#0x2224139)
	mov     r1, #0x2
	mov     r2, #0x1
	bx      r3
@ 0x22241b8

.word 0x2224139 @ 0x22241b8



.thumb
Function_22241bc: @ 22241bc :thumb
	ldr     r3, [pc, #0x4] @ 0x22241c4, (=#0x2224139)
	mov     r1, #0x2
	mov     r2, r1
	bx      r3
@ 0x22241c4

.word 0x2224139 @ 0x22241c4



.thumb
Function_22241c8: @ 22241c8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22241d0, (=#0x2224139)
	mov     r1, #0x2
	mov     r2, #0x3
	bx      r3
@ 0x22241d0

.word 0x2224139 @ 0x22241d0



.thumb
Function_22241d4: @ 22241d4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22241dc, (=#0x2224139)
	mov     r1, #0x2
	mov     r2, #0x4
	bx      r3
@ 0x22241dc

.word 0x2224139 @ 0x22241dc



.thumb
Function_22241e0: @ 22241e0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22241e8, (=#0x2224139)
	mov     r1, #0x2
	mov     r2, #0x5
	bx      r3
@ 0x22241e8

.word 0x2224139 @ 0x22241e8



.thumb
Function_22241ec: @ 22241ec :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_2014764
	mov     r4, r0
	bl      Function_2220240
	mov     r6, r0
	mov     r0, r4
	bl      Function_2220248
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r5
	mov     r3, r6
	bl      Function_2223e74
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x222421a


.align 2, 0
.thumb
Function_222421c: @ 222421c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x14]
	mov     r5, r0
	cmp     r2, #0x0
	beq     branch_222422c
	bl      Function_22242e0
.thumb
branch_222422c: @ 222422c :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_222423a
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224614
.thumb
branch_222423a: @ 222423a :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_2224248
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224e74
.thumb
branch_2224248: @ 2224248 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224ea8
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_222425e
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224eb8
.thumb
branch_222425e: @ 222425e :thumb
	pop     {r3-r5,pc}
@ 0x2224260


.thumb
Function_2224260: @ 2224260 :thumb
	push    {r3-r7,lr}
	ldr     r4, [r1, #0x0]
	mov     r6, r2
	mov     r0, r4
	bl      Function_2220250
	bl      Function_2014790
	mov     r7, r0
	mov     r0, r4
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r4
	bl      Function_223525c
	cmp     r0, #0x3
	beq     branch_2224288
	mov     r5, #0x1
	b       branch_222428a
@ 0x2224288

.thumb
branch_2224288: @ 2224288 :thumb
	mov     r5, #0x0
.thumb
branch_222428a: @ 222428a :thumb
	mov     r0, r4
	bl      Function_221fdd4
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, r7
	bl      Function_2235448
	pop     {r3-r7,pc}
@ 0x222429e


.align 2, 0


.thumb
Function_22242a0: @ 22242a0 :thumb
	push    {r3-r7,lr}
	ldr     r4, [r1, #0x0]
	mov     r6, r2
	mov     r0, r4
	bl      Function_2220250
	bl      Function_2014790
	mov     r7, r0
	mov     r0, r4
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r4
	bl      Function_223525c
	cmp     r0, #0x3
	beq     branch_22242c8
	mov     r5, #0x1
	b       branch_22242ca

branch_22242c8: @ 22242c8 :thumb
	mov     r5, #0x0
branch_22242ca: @ 22242ca :thumb
	mov     r0, r4
	bl      Function_221fdd4
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, r7
	bl      Function_2235448
	pop     {r3-r7,pc}
@ 0x22242de


.align 2, 0
.thumb
Function_22242e0: @ 22242e0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xbc
	mov     r4, r1
	ldr     r2, [r4, #0x14]
	mov     r5, r0
	cmp     r2, #0x64
	bgt     branch_2224348
	blt     branch_22242f2
	b       branch_22244bc
@ 0x22242f2

.thumb
branch_22242f2: @ 22242f2 :thumb
	cmp     r2, #0x22
	bhi     branch_222434e
	add     r3, r2, r2
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
	lsl     r2, r0, #11
	lsl     r4, r1, #1
	lsl     r0, r3, #1
	lsl     r4, r2, #5
	lsl     r0, r2, #6
	lsl     r4, r4, #6
	lsl     r4, r4, #1
	lsl     r0, r6, #1
	lsl     r4, r7, #4
	lsl     r0, r1, #5
	lsl     r4, r7, #1
	lsl     r0, r1, #2
	lsl     r4, r4, #7
	lsl     r4, r6, #7
	lsl     r4, r2, #2
	lsl     r0, r4, #2
	lsl     r4, r5, #2
	lsl     r0, r7, #2
	lsl     r4, r0, #3
	lsl     r0, r2, #3
	lsl     r4, r3, #3
	lsl     r0, r5, #3
	lsl     r4, r6, #3
	lsl     r0, r0, #4
	lsl     r4, r1, #4
	lsl     r0, r3, #4
	lsl     r4, r4, #4
	lsl     r0, r6, #4
	lsl     r4, r0, #8
	lsl     r2, r0, #11
	lsl     r4, r2, #9
	lsl     r2, r5, #8
	lsl     r4, r1, #10
	lsl     r0, r2, #8
	lsl     r6, r3, #8
branch_2224348: @ 2224348 :thumb
	cmp     r2, #0x65
	bne     branch_222434e
	b       branch_22244d2

branch_222434e: @ 222434e :thumb
	b       branch_22245c6
@ 0x2224350


.thumb
Function_2224350: @ 2224350 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x24]
	add     r2, sp, #0xb0
	bl      Function_2235508
	b       branch_22245c6
@ 0x222435c

.thumb
Function_222435c: @ 222435c :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x28]
	add     r2, sp, #0xb0
	bl      Function_2235508
	b       branch_22245c6
@ 0x2224368


.incbin "./baserom/overlay/overlay_0012.bin", 0x4748, 0x22244bc - 0x2224368


.thumb
branch_22244bc: @ 22244bc :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x24]
	add     r2, sp, #0xb0
	bl      Function_2235508
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	add     r2, sp, #0xb0
	bl      Function_2225008
	b       branch_22245c6
@ 0x22244d2

.thumb
branch_22244d2: @ 22244d2 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x28]
	add     r2, sp, #0xb0
	bl      Function_2235508
	ldr     r1, [r4, #0x28]
	mov     r0, r4
	add     r2, sp, #0xb0
	bl      Function_2225008
	b       branch_22245c6
@ 0x22244e8


.incbin "./baserom/overlay/overlay_0012.bin", 0x48c8, 0x22245c6 - 0x22244e8


.thumb
branch_22245c6: @ 22245c6 :thumb
	add     r2, sp, #0xb0
	ldmia   r2!, {r0,r1}
	add     r4, #0x2c
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0xb0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0xb4]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0xb8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x30]
	add     sp, #0xbc
	pop     {r3-r6,pc}
@ 0x22245fa


.incbin "./baserom/overlay/overlay_0012.bin", 0x49da, 0x2224614 - 0x22245fa


.thumb
Function_2224614: @ 2224614 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x148
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r1, #0x0]
	ldr     r1, [r1, #0x24]
	bl      Function_2235254
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x28]
	bl      Function_2235254
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x18]
	cmp     r0, #0x1a
	bls     branch_222463e
	b       branch_2224e38
@ 0x222463e

.thumb
branch_222463e: @ 222463e :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r6, #0
	lsl     r0, r0, #1
	lsl     r0, r0, #1
	lsl     r6, r2, #29
	lsl     r0, r5, #2
	lsl     r2, r4, #5
	lsl     r4, r2, #18
	lsl     r4, r2, #18
	lsl     r4, r3, #8
	lsl     r4, r3, #8
	lsl     r4, r0, #10
	lsl     r4, r0, #10
	lsl     r2, r2, #11
	lsl     r2, r2, #11
	lsl     r2, r3, #12
	lsl     r2, r3, #12
	lsl     r2, r4, #13
	lsl     r2, r4, #13
	lsl     r4, r0, #16
	lsl     r4, r0, #16
	lsl     r4, r1, #17
	lsl     r4, r1, #17
	lsl     r2, r5, #29
	lsl     r4, r5, #31
	lsl     r6, r7, #30
	lsl     r2, r7, #29
	lsl     r4, r1, #30
	mov     r1, #0x0
	add     r0, sp, #0x20
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	b       branch_2224e38
@ 0x222468c


.incbin "./baserom/overlay/overlay_0012.bin", 0x4a6c, 0x2224e38 - 0x222468c


.thumb
branch_2224e38: @ 2224e38 :thumb
	add     r1, sp, #0x20
	ldr     r0, [sp, #0x0]
	ldrh    r2, [r1, #0x0]
	add     r0, #0x50
	strh    r2, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	ldrh    r2, [r1, #0x2]
	add     r0, #0x52
	strh    r2, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	ldrh    r1, [r1, #0x4]
	add     r0, #0x54
	str     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	add     sp, #0x148
	pop     {r3-r7,pc}
@ 0x2224e58


.incbin "./baserom/overlay/overlay_0012.bin", 0x5238, 0x2224e74 - 0x2224e58


.thumb
Function_2224e74: @ 2224e74 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	bl      Function_2225614
	mov     r6, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_2224ea4
.thumb
branch_2224e86: @ 2224e86 :thumb
	mov     r0, r4
	bl      Function_22255ec
	ldr     r1, [r5, #0x1c]
	and     r1, r0
	cmp     r0, r1
	bne     branch_2224e9e
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_22255d4
.thumb
branch_2224e9e: @ 2224e9e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_2224e86
.thumb
branch_2224ea4: @ 2224ea4 :thumb
	pop     {r3-r7,pc}
@ 0x2224ea6


.align 2, 0


.thumb
Function_2224ea8: @ 2224ea8 :thumb
	mov     r3, r0
	mov     r2, r1
	mov     r1, r3
	ldr     r3, [pc, #0x4] @ 0x2224eb4, (=#0x222584d)
	ldr     r0, [r2, #0x20]
	bx      r3
@ 0x2224eb4

.word 0x222584d @ 0x2224eb4
.thumb
Function_2224eb8: @ 2224eb8 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	ldr     r0, [r6, #0x0]
	ldr     r1, [r6, #0x24]
	bl      Function_2235254
	ldr     r0, [r6, #0x0]
	ldr     r1, [r6, #0x28]
	bl      Function_2235254
	ldr     r1, [r6, #0xc]
	cmp     r1, #0x3
	bhi     branch_2224f00
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r3, #0
	lsl     r6, r0, #0
	lsl     r4, r2, #0
	lsl     r6, r3, #0
	cmp     r0, #0x0
	bne     branch_2224ef2
	mov     r4, #0x1
	lsl     r4, r4, #8
	b       branch_2224f00
@ 0x2224ef2

.thumb
branch_2224ef2: @ 2224ef2 :thumb
	ldr     r4, [pc, #0x18] @ 0x2224f0c, (=#0xffffec00)
	b       branch_2224f00
@ 0x2224ef6


.incbin "./baserom/overlay/overlay_0012.bin", 0x52d6, 0x2224f00 - 0x2224ef6


.thumb
branch_2224f00: @ 2224f00 :thumb
	ldr     r0, [r5, #0x20]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r4, r0
	str     r0, [r5, #0x30]
	pop     {r4-r6,pc}
@ 0x2224f0c

.word 0xffffec00 @ 0x2224f0c

.incbin "./baserom/overlay/overlay_0012.bin", 0x52f0, 0x2224f14 - 0x2224f10


.thumb
Function_2224f14: @ 2224f14 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_2014764
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x38
	bl      Function_2018144
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_2220250
	str     r0, [r4, #0x4]
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0xc
	mov     r2, #0x6
	bl      Function_222325c
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x4
	bhi     branch_2224f5c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r3, #0
	lsl     r4, r5, #0
	lsl     r6, r7, #0
	lsl     r0, r2, #1
.thumb
branch_2224f5c: @ 2224f5c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	str     r0, [r4, #0x28]
	b       branch_2224fb4
@ 0x2224f6e


.incbin "./baserom/overlay/overlay_0012.bin", 0x534e, 0x2224fb4 - 0x2224f6e


.thumb
branch_2224fb4: @ 2224fb4 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_222421c
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4-r6,pc}
@ 0x2224fc4

.thumb
Function_2224fc4: @ 2224fc4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	ldr     r1, [r6, #0x24]
	mov     r4, #0x1
	bl      Function_2235254
	mov     r5, r0
	ldr     r0, [r6, #0x0]
	ldr     r1, [r6, #0x28]
	bl      Function_2235254
	cmp     r5, #0x5
	bhi     branch_2225002
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r2, #0
	lsl     r2, r1, #0
	lsl     r4, r2, #0
	lsl     r6, r1, #0
	lsl     r4, r2, #0
	lsl     r2, r2, #0
	.hword  0x1ea4 @ sub r4, r4, #0x2
	b       branch_2225002
@ 0x2224ffc


.incbin "./baserom/overlay/overlay_0012.bin", 0x53dc, 0x2225002 - 0x2224ffc


.thumb
branch_2225002: @ 2225002 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2225006


.align 2, 0


.thumb
Function_2225008: @ 2225008 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	add     r0, sp, #0x20
	mov     r4, #0x0
	str     r4, [r0, #0x0]
	str     r4, [r0, #0x4]
	mov     r6, r1
	mov     r7, r2
	str     r4, [r0, #0x8]
.thumb
branch_222501c: @ 222501c :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_2235254
	cmp     r4, r0
	ldr     r0, [r5, #0x0]
	bne     branch_2225034
	add     r1, sp, #0x10
	mov     r2, #0x4
	bl      Function_222325c
	b       branch_222503c
@ 0x2225034

.thumb
branch_2225034: @ 2225034 :thumb
	add     r1, sp, #0x0
	mov     r2, #0x4
	bl      Function_222325c
.thumb
branch_222503c: @ 222503c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	blt     branch_222501c
	mov     r0, r5
	bl      Function_2224fc4
	strb    r0, [r5, #0x8]
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_2225060
	mov     r0, #0x1
	strb    r0, [r5, #0x8]
.thumb
branch_2225060: @ 2225060 :thumb
	mov     r1, #0x8
	ldsb    r0, [r5, r1]
	ldr     r2, [sp, #0x20]
	ldr     r3, [sp, #0x24]
	mul     r0, r2
	str     r0, [sp, #0x20]
	ldsb    r2, [r5, r1]
	mul     r2, r3
	str     r2, [sp, #0x24]
	ldsb    r1, [r5, r1]
	ldr     r2, [sp, #0x28]
	mul     r1, r2
	str     r1, [sp, #0x28]
	ldr     r1, [r7, #0x0]
	add     r0, r1, r0
	str     r0, [r7, #0x0]
	ldr     r1, [r7, #0x4]
	ldr     r0, [sp, #0x24]
	add     r0, r1, r0
	str     r0, [r7, #0x4]
	ldr     r1, [r7, #0x8]
	ldr     r0, [sp, #0x28]
	add     r0, r1, r0
	str     r0, [r7, #0x8]
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2225094


.thumb
Function_2225094: @ 2225094 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r4, r1
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0xc
	mov     r2, #0x4
	bl      Function_222325c
	mov     r0, r5
	bl      Function_2224fc4
	strb    r0, [r5, #0x8]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_22250ce
	mov     r0, #0x1
	strb    r0, [r5, #0x8]
.thumb
branch_22250ce: @ 22250ce :thumb
	mov     r1, #0x8
	ldsb    r0, [r5, r1]
	ldr     r2, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mul     r0, r2
	str     r0, [sp, #0x0]
	ldsb    r2, [r5, r1]
	mul     r2, r3
	str     r2, [sp, #0x4]
	ldsb    r1, [r5, r1]
	ldr     r2, [sp, #0x8]
	mul     r1, r2
	str     r1, [sp, #0x8]
	ldr     r1, [r4, #0x0]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	add     r0, r1, r0
	str     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	ldr     r0, [sp, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2225102


.align 2, 0


.thumb
Function_2225104: @ 2225104 :thumb
	ldr     r3, [pc, #0x4] @ 0x222510c, (=#0x222325d)
	ldr     r0, [r0, #0x0]
	mov     r2, #0x5
	bx      r3
@ 0x222510c

.word Function_222325c+1 @ =0x222325d, 0x222510c
.thumb
Function_2225110: @ 2225110 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2225114

.thumb
Function_2225114: @ 2225114 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r4, r1
	add     r1, sp, #0x0
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	strh    r0, [r1, #0x2]
	strh    r0, [r1, #0x4]
	mov     r0, r4
	add     r1, sp, #0x8
	bl      Function_2225104
	mov     r0, r4
	bl      Function_2224fc4
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_2225140
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_2225140: @ 2225140 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x3
	bgt     branch_222515e
	cmp     r0, #0x0
	blt     branch_22251ca
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r6, r6, #0
	lsl     r2, r6, #1
	lsl     r2, r6, #1
.thumb
branch_222515e: @ 222515e :thumb
	cmp     r0, #0xff
	b       branch_22251ca
@ 0x2225162

.thumb
Function_2225162: @ 2225162 :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2014874
	add     r2, sp, #0x0
	mov     r0, #0x0
	mov     r1, #0x8
	ldsh    r3, [r2, r0]
	ldsb    r0, [r4, r1]
	mul     r0, r3
	strh    r0, [r2, #0x0]
	mov     r0, #0x2
	ldsh    r3, [r2, r0]
	ldsb    r0, [r4, r1]
	mul     r0, r3
	strh    r0, [r2, #0x2]
	mov     r0, #0x4
	ldsh    r3, [r2, r0]
	ldsb    r0, [r4, r1]
	mul     r0, r3
	strh    r0, [r2, #0x4]
	b       branch_22251ca
@ 0x222518e


.incbin "./baserom/overlay/overlay_0012.bin", 0x556e, 0x22251ca - 0x222518e


.thumb
branch_22251ca: @ 22251ca :thumb
	add     r1, sp, #0x0
	mov     r0, #0x0
	ldsh    r2, [r1, r0]
	ldr     r0, [r4, #0x2c]
	sub     r0, r2, r0
	strh    r0, [r1, #0x0]
	mov     r0, #0x2
	ldsh    r2, [r1, r0]
	ldr     r0, [r4, #0x30]
	sub     r0, r2, r0
	strh    r0, [r1, #0x2]
	mov     r0, #0x4
	ldsh    r2, [r1, r0]
	ldr     r0, [r4, #0x34]
	sub     r0, r2, r0
	strh    r0, [r1, #0x4]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2014874
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x22251f8

.thumb
Function_22251f8: @ 22251f8 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x22251fc

.thumb
Function_22251fc: @ 22251fc :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2225200

.thumb
Function_2225200: @ 2225200 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r4, r1
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_2225104
	mov     r0, r4
	bl      Function_2224fc4
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_222522c
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_222522c: @ 222522c :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x3
	bgt     branch_222524a
	cmp     r0, #0x0
	blt     branch_22252aa
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r6, r5, #0
	lsl     r0, r2, #1
	lsl     r4, r3, #1
.thumb
branch_222524a: @ 222524a :thumb
	cmp     r0, #0xff
	b       branch_22252aa
@ 0x222524e


.incbin "./baserom/overlay/overlay_0012.bin", 0x562e, 0x22252aa - 0x222524e


.thumb
branch_22252aa: @ 22252aa :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x2c]
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, #0x30]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2014890
	mov     r0, #0x1
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x22252c8

.thumb
Function_22252c8: @ 22252c8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r1, sp, #0x4
	bl      Function_2225104
	mov     r0, r4
	bl      Function_2224fc4
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	bne     branch_22252f0
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_22252f0: @ 22252f0 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x3
	bgt     branch_222530e
	cmp     r0, #0x0
	blt     branch_222533c
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r2, r4, #0
	lsl     r4, r6, #0
	lsl     r4, r6, #0
.thumb
branch_222530e: @ 222530e :thumb
	cmp     r0, #0xff
	b       branch_222533c
@ 0x2225312


.incbin "./baserom/overlay/overlay_0012.bin", 0x56f2, 0x222533c - 0x2225312


.thumb
branch_222533c: @ 222533c :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20148dc
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x222534a


.align 2, 0


.thumb
Function_222534c: @ 222534c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r1, sp, #0x4
	bl      Function_2225104
	mov     r0, r4
	bl      Function_2224fc4
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	bne     branch_2225374
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_2225374: @ 2225374 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x3
	bgt     branch_2225392
	cmp     r0, #0x0
	blt     branch_22253bc
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r0, r4, #0
	lsl     r0, r6, #0
	lsl     r0, r6, #0
.thumb
branch_2225392: @ 2225392 :thumb
	cmp     r0, #0xff
	b       branch_22253bc
@ 0x2225396


.incbin "./baserom/overlay/overlay_0012.bin", 0x5776, 0x22253bc - 0x2225396


.thumb
branch_22253bc: @ 22253bc :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2014910
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22253ca


.align 2, 0


.thumb
Function_22253cc: @ 22253cc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r1, sp, #0x4
	bl      Function_2225104
	mov     r0, r4
	bl      Function_2224fc4
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	bne     branch_22253f4
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_22253f4: @ 22253f4 :thumb
	ldr     r1, [sp, #0x4]
	cmp     r1, #0x3
	bgt     branch_2225412
	cmp     r1, #0x0
	blt     branch_2225426
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r4, r2, #0
	lsl     r2, r3, #0
	lsl     r2, r3, #0
.thumb
branch_2225412: @ 2225412 :thumb
	cmp     r1, #0xff
	b       branch_2225426
@ 0x2225416


.incbin "./baserom/overlay/overlay_0012.bin", 0x57f6, 0x2225426 - 0x2225416


.thumb
branch_2225426: @ 2225426 :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2014940
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2225434

.thumb
Function_2225434: @ 2225434 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2225438

.thumb
Function_2225438: @ 2225438 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222543c

.thumb
Function_222543c: @ 222543c :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2225440

.thumb
Function_2225440: @ 2225440 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2225444

.thumb
Function_2225444: @ 2225444 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r7, r0
	mov     r4, r1
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_2225104
	mov     r0, r4
	bl      Function_2224fc4
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_2225470
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_2225470: @ 2225470 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x4
	bgt     branch_2225490
	cmp     r0, #0x0
	blt     branch_222552a
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r1, #0
	lsl     r0, r6, #0
	lsl     r4, r1, #2
	lsl     r0, r3, #2
	lsl     r2, r2, #1
.thumb
branch_2225490: @ 2225490 :thumb
	cmp     r0, #0xff
	b       branch_222552a
@ 0x2225494


.incbin "./baserom/overlay/overlay_0012.bin", 0x5874, 0x222552a - 0x2225494


.thumb
branch_222552a: @ 222552a :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x2c]
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, #0x30]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r4, #0x34]
	sub     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r7
	add     r1, sp, #0x0
	bl      Function_2014970
	mov     r0, #0x1
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2225550

.thumb
Function_2225550: @ 2225550 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r1, sp, #0x4
	bl      Function_2225104
	mov     r0, r4
	bl      Function_2224fc4
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	bne     branch_2225578
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_2225578: @ 2225578 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x3
	bgt     branch_2225596
	cmp     r0, #0x0
	blt     branch_22255c4
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r2, r4, #0
	lsl     r4, r6, #0
	lsl     r4, r6, #0
.thumb
branch_2225596: @ 2225596 :thumb
	cmp     r0, #0xff
	b       branch_22255c4
@ 0x222559a


.incbin "./baserom/overlay/overlay_0012.bin", 0x597a, 0x22255c4 - 0x222559a


.thumb
branch_22255c4: @ 22255c4 :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20149bc
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22255d2


.align 2, 0
.thumb
Function_22255d4: @ 22255d4 :thumb
	push    {r3,lr}
	mov     r3, r0
	mov     r0, r1
	mov     r1, r2
	ldr     r2, [pc, #0x8] @ 0x22255e8, (=#0x2239d6c)
	lsl     r3, r3, #2
	ldr     r2, [r2, r3]
	blx     r2
	pop     {r3,pc}
@ 0x22255e6

.align 2
.word 0x2239d6c @ 0x22255e8



.thumb
Function_22255ec: @ 22255ec :thumb
	push    {r3-r5}
	add     sp, #-0x3c
	ldr     r4, [pc, #0x1c] @ 0x2225610, (=#0x2239da4)
	mov     r5, r0
	add     r3, sp, #0x0
	mov     r2, #0x7
branch_22255f8: @ 22255f8 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22255f8
	ldr     r0, [r4, #0x0]
	lsl     r1, r5, #2
	str     r0, [r3, #0x0]
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	add     sp, #0x3c
	pop     {r3-r5}
	bx      lr
@ 0x2225610

.word 0x2239da4 @ 0x2225610
.thumb
Function_2225614: @ 2225614 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	ldr     r6, [pc, #0x20] @ 0x222563c, (=#0xfefe)
	mov     r5, r4
.thumb
branch_222561c: @ 222561c :thumb
	mov     r0, r4
	bl      Function_22255ec
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r0, r6
	beq     branch_222562e
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0xff
	blt     branch_222561c
.thumb
branch_222562e: @ 222562e :thumb
	cmp     r5, #0xff
	blt     branch_2225636
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2225636

.thumb
branch_2225636: @ 2225636 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222563a

.align 2
.word 0xfefe @ 0x222563c



.thumb
Function_2225640: @ 2225640 :thumb
	ldr     r3, [pc, #0x4] @ 0x2225648, (=#0x222325d)
	ldr     r0, [r0, #0x0]
	mov     r2, #0x4
	bx      r3
@ 0x2225648

.word Function_222325c+1 @ =0x222325d, 0x2225648



.thumb
Function_222564c: @ 222564c :thumb
	push    {r3,lr}
	add     sp, #-0x8
	add     r2, sp, #0x0
	mov     r0, #0x0
	strh    r0, [r2, #0x0]
	strh    r0, [r2, #0x2]
	strh    r0, [r2, #0x4]
	strh    r0, [r2, #0x6]
	ldr     r0, [r1, #0x4]
	bl      Function_2014784
	mov     r1, r0
	add     r0, sp, #0x0
	bl      Function_20209d4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2225670

.thumb
Function_2225670: @ 2225670 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r1, [pc, #0x30] @ 0x22256a8, (=#0x2239de0)
	add     r0, sp, #0x0
	ldrh    r2, [r1, #0x20]
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x22]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x24]
	ldrh    r1, [r1, #0x26]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldr     r0, [r4, #0x4]
	bl      Function_2014784
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2014788
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_20209d4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22256a8

.word 0x2239de0 @ 0x22256a8
.thumb
Function_22256ac: @ 22256ac :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r1
	add     r1, sp, #0x0
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	strh    r0, [r1, #0x2]
	strh    r0, [r1, #0x4]
	strh    r0, [r1, #0x6]
	mov     r0, r4
	add     r1, sp, #0x8
	bl      Function_2225640
	ldr     r1, [sp, #0xc]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	strh    r1, [r0, #0x2]
	ldr     r1, [sp, #0x14]
	strh    r1, [r0, #0x4]
	ldr     r0, [r4, #0x4]
	bl      Function_2014784
	mov     r1, r0
	add     r0, sp, #0x0
	bl      Function_20209d4
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r4,pc}
@ 0x22256e8

.thumb
Function_22256e8: @ 22256e8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r1, [pc, #0x30] @ 0x2225720, (=#0x2239de0)
	add     r0, sp, #0x0
	ldrh    r2, [r1, #0x18]
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x1a]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x1c]
	ldrh    r1, [r1, #0x1e]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldr     r0, [r4, #0x4]
	bl      Function_2014784
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2014788
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_20209d4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2225720

.word 0x2239de0 @ 0x2225720
.thumb
Function_2225724: @ 2225724 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	ldr     r1, [pc, #0x54] @ 0x2225780, (=#0x2239de0)
	add     r0, sp, #0x0
	ldrh    r2, [r1, #0x10]
	strh    r2, [r0, #0x8]
	ldrh    r2, [r1, #0x12]
	strh    r2, [r0, #0xa]
	ldrh    r2, [r1, #0x14]
	strh    r2, [r0, #0xc]
	ldrh    r2, [r1, #0x16]
	strh    r2, [r0, #0xe]
	ldrh    r2, [r1, #0x28]
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x2a]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x2c]
	strh    r2, [r0, #0x4]
	ldrh    r1, [r1, #0x2e]
	strh    r1, [r0, #0x6]
	ldr     r0, [r4, #0x4]
	bl      Function_2014784
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2014788
	ldr     r0, [r4, #0x0]
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2225772
	add     r0, sp, #0x8
	mov     r1, r5
	bl      Function_20209d4
	b       branch_222577a
@ 0x2225772

.thumb
branch_2225772: @ 2225772 :thumb
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_20209d4
.thumb
branch_222577a: @ 222577a :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2225780

.word 0x2239de0 @ 0x2225780
.thumb
Function_2225784: @ 2225784 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r1, [pc, #0x30] @ 0x22257bc, (=#0x2239de0)
	add     r0, sp, #0x0
	ldrh    r2, [r1, #0x0]
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x2]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x4]
	ldrh    r1, [r1, #0x6]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldr     r0, [r4, #0x4]
	bl      Function_2014784
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2014788
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_20209d4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22257bc

.word 0x2239de0 @ 0x22257bc
.thumb
Function_22257c0: @ 22257c0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r1, [pc, #0x30] @ 0x22257f8, (=#0x2239de0)
	add     r0, sp, #0x0
	ldrh    r2, [r1, #0x8]
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0xa]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0xc]
	ldrh    r1, [r1, #0xe]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldr     r0, [r4, #0x4]
	bl      Function_2014784
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2014788
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_20209d4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22257f8

.word 0x2239de0 @ 0x22257f8
.thumb
Function_22257fc: @ 22257fc :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r0, [r5, #0x4]
	bl      Function_2014784
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x24]
	add     r2, sp, #0x0
	bl      Function_22356e8
	add     r0, sp, #0x0
	mov     r1, r4
	bl      Function_2020acc
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2225822


.align 2, 0


.thumb
Function_2225824: @ 2225824 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r0, [r5, #0x4]
	bl      Function_2014784
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x28]
	add     r2, sp, #0x0
	bl      Function_22356e8
	add     r0, sp, #0x0
	mov     r1, r4
	bl      Function_2020acc
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222584a


.align 2, 0
.thumb
Function_222584c: @ 222584c :thumb
	push    {r3,lr}
	mov     r3, r0
	mov     r0, r1
	mov     r1, r2
	ldr     r2, [pc, #0x8] @ 0x2225860, (=JumpTable_2239e10)
	lsl     r3, r3, #2
	ldr     r2, [r2, r3]
	blx     r2
	pop     {r3,pc}
@ 0x222585e

.align 2
.word JumpTable_2239e10 @ 0x2225860


.thumb
Function_2225864: @ 2225864 :thumb
	push    {r3-r6}
	cmp     r2, #0x0
	beq     branch_222587a
	mov     r4, #0x18
	mov     r6, r0
	mul     r6, r4
	ldr     r4, [pc, #0x1c] @ 0x2225890, (=#0x2239e34)
	lsl     r5, r1, #2
	add     r4, r4, r6
	ldsh    r4, [r5, r4]
	strh    r4, [r2, #0x0]
branch_222587a: @ 222587a :thumb
	cmp     r3, #0x0
	beq     branch_222588c
	mov     r2, #0x18
	mul     r2, r0
	ldr     r0, [pc, #0x10] @ 0x2225894, (=#0x2239e36)
	lsl     r1, r1, #2
	add     r0, r0, r2
	ldsh    r0, [r1, r0]
	strh    r0, [r3, #0x0]
.thumb
branch_222588c: @ 222588c :thumb
	pop     {r3-r6}
	bx      lr
@ 0x2225890

.word 0x2239e34 @ 0x2225890
.word 0x2239e36 @ 0x2225894
.thumb
Function_2225898: @ 2225898 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_22258b8
	mov     r0, #0x0
	add     r1, r5, #0x2
	mov     r2, r4
	mov     r3, r6
	bl      Function_2225864
	pop     {r3-r7,pc}
@ 0x22258b8

.thumb
branch_22258b8: @ 22258b8 :thumb
	mov     r0, r7
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_22258d0
	mov     r0, #0x1
	sub     r1, r5, #0x2
	mov     r2, r4
	mov     r3, r6
	bl      Function_2225864
	pop     {r3-r7,pc}
@ 0x22258d0

.thumb
branch_22258d0: @ 22258d0 :thumb
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_2225864
	pop     {r3-r7,pc}
@ 0x22258de


.align 2, 0


.thumb
Function_22258e0: @ 22258e0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r2
	bl      Function_2235254
	mov     r4, r0
	mov     r0, r7
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_22258fa
	mov     r5, #0x1
	b       branch_22258fc
@ 0x22258fa

.thumb
branch_22258fa: @ 22258fa :thumb
	mov     r5, #0x0
.thumb
branch_22258fc: @ 22258fc :thumb
	mov     r0, r7
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2225908
	.hword  0x1ca4 @ add r4, r4, #0x2
.thumb
branch_2225908: @ 2225908 :thumb
	cmp     r6, #0x3
	bhi     branch_2225940
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r2, #0
	lsl     r6, r0, #0
	lsl     r6, r2, #0
	mov     r0, #0x18
	mov     r2, r5
	mul     r2, r0
	ldr     r0, [pc, #0x20] @ 0x2225948, (=#0x2239e34)
	lsl     r1, r4, #2
	add     r0, r0, r2
	ldsh    r0, [r1, r0]
	pop     {r3-r7,pc}
@ 0x2225930


.incbin "./baserom/overlay/overlay_0012.bin", 0x5d10, 0x2225940 - 0x2225930


.thumb
branch_2225940: @ 2225940 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2225948

.word 0x2239e34 @ 0x2225948

.incbin "./baserom/overlay/overlay_0012.bin", 0x5d2c, 0x2225950 - 0x222594c


.thumb
Function_2225950: @ 2225950 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x2225964

.thumb
Function_2225964: @ 2225964 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, #0x1
	bl      Function_223525c
	mov     r4, r0
	mov     r0, r6
	bl      Function_221fdd4
	cmp     r0, #0x0
	beq     branch_2225982
	cmp     r4, #0x3
	bne     branch_2225988
	.hword  0x1ead @ sub r5, r5, #0x2
	b       branch_2225988
@ 0x2225982

.thumb
branch_2225982: @ 2225982 :thumb
	cmp     r4, #0x4
	bne     branch_2225988
	.hword  0x1ead @ sub r5, r5, #0x2
.thumb
branch_2225988: @ 2225988 :thumb
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x222598c

.thumb
Function_222598c: @ 222598c :thumb
	push    {r4,lr}
	mov     r4, #0x1
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222599a
	.hword  0x1ea4 @ sub r4, r4, #0x2
.thumb
branch_222599a: @ 222599a :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x222599e


.align 2, 0
.thumb
Function_22259a0: @ 22259a0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22259a8, (=#Function_20bcfd0)
	sub     r0, r1, r0
	lsl     r1, r2, #12
	bx      r3
@ 0x22259a8

.word Function_20bcfd0 @ 0x22259a8



.thumb
Function_22259ac: @ 22259ac :thumb
	push    {r3,lr}
	sub     r0, r1, r0
	mov     r1, r2
	blx     Function_20bcfd0
	add     r1, sp, #0x0
	str     r0, [sp, #0x0]
	blx     Function_20bdbcc
	cmp     r0, #0x0
	beq     branch_22259cc
	mov     r0, #0x1
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x0]
.thumb
branch_22259cc: @ 22259cc :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bge     branch_22259d4
	neg     r0, r0
.thumb
branch_22259d4: @ 22259d4 :thumb
	str     r0, [sp, #0x0]
	asr     r0, r0, #12
	pop     {r3,pc}
@ 0x22259da


.align 2, 0


.thumb
Function_22259dc: @ 22259dc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x0
	ldsh    r1, [r4, r1]
	add     r1, r2, r1
	mov     r2, #0x2
	ldsh    r2, [r4, r2]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     r2, r3, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	pop     {r4,pc}
@ 0x22259fc


.thumb
Function_22259fc: @ 22259fc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2225fa4
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	bl      Function_200d6e8
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2225a18


.thumb
Function_2225a18: @ 2225a18 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x0
	mov     r6, r3
	ldsh    r3, [r5, r1]
	mov     r0, r4
	add     r2, r2, r3
	bl      Function_2007dec
	mov     r2, #0x2
	ldsh    r2, [r5, r2]
	mov     r0, r4
	mov     r1, #0x1
	add     r2, r6, r2
	bl      Function_2007dec
	pop     {r4-r6,pc}
@ 0x2225a3c


.thumb
Function_2225a3c: @ 2225a3c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r2, #0x0
	mov     r4, r1
	ldsh    r2, [r5, r2]
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_2007dec
	mov     r2, #0x2
	ldsh    r2, [r5, r2]
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_2007dec
	pop     {r3-r5,pc}
@ 0x2225a5c

.thumb
Function_2225a5c: @ 2225a5c :thumb
	push    {r3-r5,lr}
	mov     r4, r3
	mov     r5, r0
	ldr     r3, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	str     r3, [r5, #0x4]
	str     r1, [r5, #0x8]
	str     r0, [r5, #0xc]
	ldr     r0, [sp, #0x18]
	str     r4, [r5, #0x10]
	str     r0, [r5, #0x14]
	sub     r0, r2, r1
	mov     r1, r3
	blx     Division
	str     r0, [r5, #0x18]
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x10]
	ldr     r1, [sp, #0x1c]
	sub     r0, r0, r4
	blx     Division
	str     r0, [r5, #0x1c]
	pop     {r3-r5,pc}
@ 0x2225a8c

.thumb
Function_2225a8c: @ 2225a8c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	cmp     r5, #0x0
	bne     branch_2225a9e
	bl      Function_2022974
.thumb
branch_2225a9e: @ 2225a9e :thumb
	cmp     r4, r7
	bls     branch_2225aaa
	add     r0, sp, #0x8
	ldrh    r1, [r0, #0x1c]
	neg     r1, r1
	strh    r1, [r0, #0x1c]
.thumb
branch_2225aaa: @ 2225aaa :thumb
	add     r1, sp, #0x8
	mov     r0, #0x1c
	ldsh    r6, [r1, r0]
	lsl     r0, r4, #12
	lsl     r1, r7, #12
	lsl     r2, r6, #12
	bl      Function_22259ac
	str     r0, [r5, #0x4]
	ldr     r0, [sp, #0x1c]
	str     r4, [r5, #0x8]
	str     r0, [r5, #0xc]
	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x10]
	ldr     r0, [sp, #0x20]
	str     r0, [r5, #0x14]
	str     r6, [r5, #0x18]
	add     r0, sp, #0x8
	ldrh    r1, [r0, #0x10]
	ldr     r0, [sp, #0x0]
	sub     r0, r1, r0
	ldr     r1, [r5, #0x4]
	blx     Division
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x2225ade


.align 2, 0


.thumb
Function_2225ae0: @ 2225ae0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2225aea
	bl      Function_2022974
.thumb
branch_2225aea: @ 2225aea :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2225b6e
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x18]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x54] @ 0x2225b74, (=#0x20f983c)
	asr     r3, r2, #31
	ldsh    r0, [r0, r1]
	asr     r1, r0, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	asr     r0, r1, #12
	strh    r0, [r4, #0x0]
	ldr     r0, [r4, #0x10]
	ldr     r2, [r4, #0x14]
	asr     r0, r0, #4
	lsl     r0, r0, #1
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x28] @ 0x2225b74, (=#0x20f983c)
	asr     r3, r2, #31
	ldsh    r0, [r0, r1]
	asr     r1, r0, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	asr     r0, r1, #12
	strh    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4,pc}

branch_2225b6e: @ 2225b6e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2225b72

.align 2
.word 0x20f983c @ 0x2225b74



.thumb
Function_2225b78: @ 2225b78 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2225ae0
	cmp     r0, #0x0
	beq     branch_2225b9a
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, r6
	bl      Function_22259dc
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2225b9a: @ 2225b9a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2225b9e


.align 2, 0
.thumb
Function_2225ba0: @ 2225ba0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2225ae0
	cmp     r0, #0x0
	beq     branch_2225bc2
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, r6
	bl      Function_2225a18
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2225bc2: @ 2225bc2 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2225bc6


.align 2, 0
.thumb
Function_2225bc8: @ 2225bc8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r3
	str     r2, [sp, #0x0]
	cmp     r5, #0x0
	bne     branch_2225bdc
	bl      Function_2022974
.thumb
branch_2225bdc: @ 2225bdc :thumb
	strh    r4, [r5, #0x0]
	strh    r6, [r5, #0x2]
	add     r0, sp, #0x10
	ldrh    r7, [r0, #0x14]
	lsl     r0, r4, #12
	str     r0, [sp, #0x4]
	str     r7, [r5, #0x4]
	ldr     r1, [sp, #0x0]
	mov     r2, r7
	lsl     r1, r1, #12
	bl      Function_22259a0
	str     r0, [r5, #0x8]
	lsl     r4, r6, #12
	add     r2, sp, #0x10
	mov     r1, #0x10
	ldsh    r1, [r2, r1]
	mov     r0, r4
	mov     r2, r7
	lsl     r1, r1, #12
	bl      Function_22259a0
	str     r0, [r5, #0xc]
	ldr     r0, [sp, #0x4]
	str     r0, [r5, #0x10]
	str     r4, [r5, #0x14]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2225c14

.thumb
Function_2225c14: @ 2225c14 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2225c1e
	bl      Function_2022974
.thumb
branch_2225c1e: @ 2225c1e :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2225c4a
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x10]
	asr     r0, r0, #12
	strh    r0, [r4, #0x0]
	ldr     r0, [r4, #0x14]
	asr     r0, r0, #12
	strh    r0, [r4, #0x2]
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}

branch_2225c4a: @ 2225c4a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2225c4e


.align 2, 0
.thumb
Function_2225c50: @ 2225c50 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2225c14
	cmp     r0, #0x0
	beq     branch_2225c6e
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_22259dc
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2225c6e: @ 2225c6e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2225c72


.align 2, 0
.thumb
Function_2225c74: @ 2225c74 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2225c14
	cmp     r0, #0x0
	beq     branch_2225c92
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_2225a18
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2225c92: @ 2225c92 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2225c96


.align 2, 0
.thumb
Function_2225c98: @ 2225c98 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	add     r4, sp, #0x10
	mov     r1, #0x14
	ldsh    r1, [r4, r1]
	str     r1, [sp, #0x0]
	ldrh    r1, [r4, #0x18]
	str     r1, [sp, #0x4]
	mov     r1, r2
	mov     r2, r3
	mov     r3, #0x10
	ldsh    r3, [r4, r3]
	bl      Function_2225bc8
	mov     r1, #0x0
	strh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2225cdc, (=#0xbfff)
	strh    r1, [r5, #0x2]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldrh    r0, [r0, #0x18]
	ldr     r3, [pc, #0x14] @ 0x2225ce0, (=#0x3fff)
	mov     r2, r1
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      Function_2225a5c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2225cda

.align 2
.word 0xbfff @ 0x2225cdc
.word 0x3fff @ 0x2225ce0



.thumb
Function_2225ce4: @ 2225ce4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2225cf2
	bl      Function_2022974
.thumb
branch_2225cf2: @ 2225cf2 :thumb
	cmp     r4, #0x0
	bne     branch_2225cfa
	bl      Function_2022974
.thumb
branch_2225cfa: @ 2225cfa :thumb
	mov     r0, r5
	bl      Function_2225c14
	mov     r6, r0
	mov     r0, r4
	bl      Function_2225ae0
	mov     r2, #0x0
	ldsh    r3, [r5, r2]
	ldsh    r1, [r4, r2]
	add     r1, r3, r1
	strh    r1, [r5, #0x0]
	mov     r1, #0x2
	ldsh    r3, [r5, r1]
	ldsh    r1, [r4, r1]
	add     r1, r3, r1
	strh    r1, [r5, #0x2]
	cmp     r6, r0
	bne     branch_2225d28
	cmp     r6, #0x0
	bne     branch_2225d28
	mov     r0, r2
	pop     {r4-r6,pc}
@ 0x2225d28

.thumb
branch_2225d28: @ 2225d28 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2225d2c

.thumb
Function_2225d2c: @ 2225d2c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_2225ce4
	cmp     r0, #0x0
	beq     branch_2225d4a
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_22259dc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2225d4a

.thumb
branch_2225d4a: @ 2225d4a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2225d4e


.align 2, 0


.thumb
Function_2225d50: @ 2225d50 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	cmp     r5, #0x0
	bne     branch_2225d62
	bl      Function_2022974
.thumb
branch_2225d62: @ 2225d62 :thumb
	str     r6, [r5, #0x0]
	lsl     r0, r6, #12
	lsl     r1, r7, #12
	mov     r2, r4
	str     r4, [r5, #0x4]
	bl      Function_22259a0
	asr     r0, r0, #12
	str     r0, [r5, #0x8]
	pop     {r3-r7,pc}
@ 0x2225d76


.align 2, 0


.thumb
Function_2225d78: @ 2225d78 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	cmp     r5, #0x0
	bne     branch_2225d8a
	bl      Function_2022974
.thumb
branch_2225d8a: @ 2225d8a :thumb
	str     r6, [r5, #0x0]
	lsl     r6, r6, #12
	mov     r0, r6
	lsl     r1, r7, #12
	mov     r2, r4
	str     r4, [r5, #0x4]
	bl      Function_22259a0
	str     r0, [r5, #0x8]
	str     r6, [r5, #0xc]
	pop     {r3-r7,pc}
@ 0x2225da0

.thumb
Function_2225da0: @ 2225da0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2225daa
	bl      Function_2022974
.thumb
branch_2225daa: @ 2225daa :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2225dc2
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}

branch_2225dc2: @ 2225dc2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2225dc6


.align 2, 0
.thumb
Function_2225dc8: @ 2225dc8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2225dd2
	bl      Function_2022974
branch_2225dd2: @ 2225dd2 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2225dee
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0xc]
	asr     r0, r0, #12
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}

branch_2225dee: @ 2225dee :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2225df2


.align 2, 0
.thumb
Function_2225df4: @ 2225df4 :thumb
	push    {r3-r5,lr}
	ldr     r4, [sp, #0x10]
	mov     r5, r0
	str     r4, [r5, #0x4]
	str     r1, [r5, #0x8]
	sub     r0, r2, r1
	mov     r1, r4
	str     r3, [r5, #0xc]
	blx     Function_20e2178
	str     r0, [r5, #0x10]
	pop     {r3-r5,pc}
@ 0x2225e0c


.thumb
Function_2225e0c: @ 2225e0c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2225e16
	bl      Function_2022974
branch_2225e16: @ 2225e16 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2225e5e
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	asr     r0, r0, #4
	lsl     r0, r0, #1
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x28] @ 0x2225e64, (=#0x20f983c)
	asr     r3, r2, #31
	ldsh    r0, [r0, r1]
	asr     r1, r0, #31
	blx 0x20e1f1e
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	asr     r0, r1, #12
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}

branch_2225e5e: @ 2225e5e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2225e62

.align 2
.word 0x20f983c @ 0x2225e64



.thumb
Function_2225e68: @ 2225e68 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r4, #0x0
	bne     branch_2225e7a
	bl      Function_2022974
branch_2225e7a: @ 2225e7a :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	str     r0, [r4, #0x4]
	lsl     r0, r5, #8
	blx     Division
	mov     r5, r0
	lsl     r0, r7, #8
	mov     r1, r6
	blx     Division
	mov     r1, r0
	ldr     r2, [sp, #0x18]
	lsl     r0, r5, #12
	lsl     r1, r1, #12
	bl      Function_22259a0
	str     r0, [r4, #0x8]
	lsl     r0, r5, #16
	asr     r0, r0, #16
	strh    r0, [r4, #0x0]
	strh    r0, [r4, #0x2]
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x10]
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x14]
	pop     {r3-r7,pc}
@ 0x2225eb8

.thumb
Function_2225eb8: @ 2225eb8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2225ec2
	bl      Function_2022974
.thumb
branch_2225ec2: @ 2225ec2 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2225eec
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x10]
	asr     r0, r0, #12
	strh    r0, [r4, #0x0]
	ldr     r0, [r4, #0x14]
	asr     r0, r0, #12
	strh    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2225eec

.thumb
branch_2225eec: @ 2225eec :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2225ef0

.thumb
Function_2225ef0: @ 2225ef0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	cmp     r5, #0x0
	bne     branch_2225f02
	bl      Function_2022974
.thumb
branch_2225f02: @ 2225f02 :thumb
	ldr     r0, [sp, #0x20]
	add     r1, sp, #0x8
	str     r0, [r5, #0x4]
	mov     r0, #0x14
	ldsh    r4, [r1, r0]
	lsl     r0, r6, #8
	mov     r1, r4
	blx     Division
	mov     r6, r0
	lsl     r0, r7, #8
	mov     r1, r4
	blx     Division
	mov     r1, r0
	ldr     r2, [sp, #0x20]
	lsl     r0, r6, #12
	lsl     r1, r1, #12
	bl      Function_22259a0
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	lsl     r0, r0, #8
	blx     Division
	mov     r7, r0
	add     r1, sp, #0x8
	mov     r0, #0x10
	ldsh    r0, [r1, r0]
	mov     r1, r4
	lsl     r0, r0, #8
	blx     Division
	mov     r1, r0
	ldr     r2, [sp, #0x20]
	lsl     r0, r7, #12
	lsl     r1, r1, #12
	bl      Function_22259a0
	str     r0, [r5, #0xc]
	strh    r6, [r5, #0x0]
	strh    r7, [r5, #0x2]
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	lsl     r0, r0, #12
	str     r0, [r5, #0x10]
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	lsl     r0, r0, #12
	str     r0, [r5, #0x14]
	pop     {r3-r7,pc}
@ 0x2225f6a


.align 2, 0


.thumb
Function_2225f6c: @ 2225f6c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2225f76
	bl      Function_2022974
.thumb
branch_2225f76: @ 2225f76 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2225fa0
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x10]
	asr     r0, r0, #12
	strh    r0, [r4, #0x0]
	ldr     r0, [r4, #0x14]
	asr     r0, r0, #12
	strh    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2225fa0

.thumb
branch_2225fa0: @ 2225fa0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2225fa4

.thumb
Function_2225fa4: @ 2225fa4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	mov     r4, r1
	mov     r6, r2
	blx     Function_20e17b4
	ldr     r1, [pc, #0x18] @ 0x2225fd0, (=#0x43800000)
	blx     Function_20e1304
	str     r0, [r4, #0x0]
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	blx     Function_20e17b4
	ldr     r1, [pc, #0x8] @ 0x2225fd0, (=#0x43800000)
	blx     Function_20e1304
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x2225fce

.align 2
.word 0x43800000 @ 0x2225fd0



.thumb
Function_2225fd4: @ 2225fd4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	lsl     r1, r1, #1
	mov     r0, #0x50
	sub     r0, r0, r1
	lsl     r4, r0, #12
	asr     r1, r4, #31
	mov     r0, r4
	asr     r3, r2, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	lsl     r1, r2, #9
	blx     Function_20bcfd0
	sub     r0, r4, r0
	add     r1, sp, #0x0
	blx     Function_20bdbcc
	cmp     r0, #0x0
	beq     branch_2226012
	mov     r1, #0x2
	lsl     r1, r1, #10
	add     r0, r0, r1
branch_2226012: @ 2226012 :thumb
	ldr     r1, [sp, #0x0]
	add     r0, r1, r0
	asr     r1, r0, #12
	lsr     r0, r1, #31
	add     r0, r1, r0
	lsl     r0, r0, #15
	asr     r0, r0, #16
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2226024


.thumb
Function_2226024: @ 2226024 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, r6
	mov     r2, r3
	bl      Function_2225fd4
	mov     r2, r0
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_222604e
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r2
	lsl     r0, r0, #16
	asr     r2, r0, #16
	sub     r0, r4, r6
	lsl     r0, r0, #16
	asr     r4, r0, #16
branch_222604e: @ 222604e :thumb
	mov     r0, r5
	mov     r1, #0x1
	add     r2, r4, r2
	bl      Function_2007dec
	pop     {r4-r6,pc}
@ 0x222605a


.align 2, 0
.thumb
Function_222605c: @ 222605c :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, r3
	bl      Function_2225fd4
	mov     r4, r0
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_2226086
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r4
	lsl     r0, r0, #16
	asr     r4, r0, #16
	sub     r0, r5, r7
	lsl     r0, r0, #16
	asr     r5, r0, #16
branch_2226086: @ 2226086 :thumb
	add     r1, sp, #0x0
	mov     r0, r6
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	add     r2, sp, #0x0
	mov     r1, #0x2
	ldsh    r1, [r2, r1]
	add     r2, r5, r4
	lsl     r2, r2, #16
	mov     r0, r6
	asr     r2, r2, #16
	bl      Function_200d4c4
	pop     {r3-r7,pc}
@ 0x22260a6


.align 2, 0
.thumb
Function_22260a8: @ 22260a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2225eb8
	cmp     r0, #0x0
	beq     branch_22260c2
	mov     r0, r5
	mov     r1, r4
	bl      Function_22259fc
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_22260c2: @ 22260c2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22260c6


.align 2, 0
.thumb
Function_22260c8: @ 22260c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2225eb8
	cmp     r0, #0x0
	beq     branch_22260e2
	mov     r0, r5
	mov     r1, r4
	bl      Function_2225a3c
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_22260e2: @ 22260e2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22260e6


.align 2, 0
.thumb
Function_22260e8: @ 22260e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2225f6c
	cmp     r0, #0x0
	beq     branch_2226102
	mov     r0, r5
	mov     r1, r4
	bl      Function_2225a3c
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2226102: @ 2226102 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2226106


.align 2, 0
.thumb
Function_2226108: @ 2226108 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	mov     r7, r3
	cmp     r5, #0x0
	bne     branch_222611a
	bl      Function_2022974
branch_222611a: @ 222611a :thumb
	str     r7, [r5, #0x4]
	ldr     r0, [sp, #0x18]
	str     r7, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r1, #0x0
	str     r1, [r5, #0x10]
	str     r6, [r5, #0x14]
	str     r4, [r5, #0x18]
	neg     r0, r6
	str     r0, [r5, #0x1c]
	neg     r0, r4
	str     r0, [r5, #0x20]
	strh    r1, [r5, #0x0]
	strh    r1, [r5, #0x2]
	pop     {r3-r7,pc}
@ 0x2226138


.thumb
Function_2226138: @ 2226138 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2226142
	bl      Function_2022974
branch_2226142: @ 2226142 :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_2226196
	ldr     r0, [r4, #0x4]
	add     r1, r0, #0x1
	str     r1, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	blt     branch_2226192
	mov     r2, #0x0
	str     r2, [r4, #0x4]
	ldsh    r0, [r4, r2]
	ldr     r1, [r4, #0x1c]
	str     r0, [r4, #0x1c]
	cmp     r1, #0x0
	bne     branch_2226166
	strh    r2, [r4, #0x0]
	b       branch_222616a

branch_2226166: @ 2226166 :thumb
	neg     r0, r1
	strh    r0, [r4, #0x0]
branch_222616a: @ 222616a :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x20]
	str     r0, [r4, #0x20]
	cmp     r1, #0x0
	bne     branch_222617a
	mov     r0, #0x0
	b       branch_222617c

branch_222617a: @ 222617a :thumb
	neg     r0, r1
branch_222617c: @ 222617c :thumb
	strh    r0, [r4, #0x2]
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
	cmp     r0, #0x4
	blt     branch_2226192
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0xc]
branch_2226192: @ 2226192 :thumb
	mov     r0, #0x1
	pop     {r4,pc}

branch_2226196: @ 2226196 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222619a


.align 2, 0
.thumb
Function_222619c: @ 222619c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2226138
	cmp     r0, #0x0
	beq     branch_22261be
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	mov     r3, r6
	bl      Function_2225a18
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_22261be: @ 22261be :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22261c2


.align 2, 0
.thumb
Function_22261c4: @ 22261c4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	strh    r3, [r7, #0x0]
	add     r0, sp, #0x8
	mov     r1, #0x10
	ldsh    r1, [r0, r1]
	mov     r6, #0x0
	strh    r1, [r7, #0x2]
	mov     r1, r7
	add     r1, #0x94
	str     r2, [r1, #0x0]
	mov     r1, r7
	ldrh    r2, [r0, #0x14]
	add     r1, #0xa8
	strh    r2, [r1, #0x0]
	mov     r1, r7
	add     r1, #0xaa
	strh    r6, [r1, #0x0]
	ldrb    r1, [r0, #0x18]
	mov     r2, r7
	add     r2, #0xac
	mov     r12, r1
	strb    r1, [r2, #0x0]
	mov     r1, r7
	add     r1, #0xad
	strb    r6, [r1, #0x0]
	ldrb    r1, [r0, #0x1c]
	mov     r0, r7
	add     r0, #0xae
	strb    r1, [r0, #0x0]
	mov     r0, r12
	cmp     r0, #0x0
	ble     branch_2226226
	mov     r5, r7
.thumb
branch_222620a: @ 222620a :thumb
	ldr     r4, [sp, #0x0]
	add     r3, r5, #0x4
	mov     r2, #0x4
.thumb
branch_2226210: @ 2226210 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2226210
	ldr     r0, [r4, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r12
	add     r5, #0x24
	cmp     r6, r0
	blt     branch_222620a
.thumb
branch_2226226: @ 2226226 :thumb
	mov     r0, r7
	ldr     r1, [sp, #0x28]
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, r7
	ldr     r1, [sp, #0x2c]
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r7
	ldr     r1, [sp, #0x30]
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r0, r7
	ldr     r1, [sp, #0x34]
	add     r0, #0xa4
	str     r1, [r0, #0x0]
	mov     r0, r7
	add     r0, #0xac
	ldrb    r0, [r0, #0x0]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_2226270
	mov     r4, r7
	mov     r6, r5
.thumb
branch_2226256: @ 2226256 :thumb
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	bl      Function_200d3f4
	mov     r0, r7
	add     r0, #0xac
	ldrb    r0, [r0, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r0
	blt     branch_2226256
branch_2226270: @ 2226270 :thumb
	pop     {r3-r7,pc}
@ 0x2226272


.align 2, 0
.thumb
Function_2226274: @ 2226274 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, #0x0
	add     r2, sp, #0x10
	mov     r1, #0x1
branch_2226280: @ 2226280 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	stmia   r2!, {r1}
	cmp     r0, #0x4
	blt     branch_2226280
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r2, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xaa
	ldrh    r0, [r0, #0x0]
	cmp     r2, r0
	bhi     branch_22262c0
	mov     r0, r5
	add     r0, #0xad
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_200d3f4
	mov     r0, r5
	add     r0, #0xad
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xad
	strb    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xaa
	strh    r1, [r0, #0x0]
branch_22262c0: @ 22262c0 :thumb
	mov     r0, r5
	add     r0, #0xad
	ldrb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xac
	ldrb    r0, [r0, #0x0]
	cmp     r1, r0
	bcs     branch_22262de
	mov     r0, r5
	add     r0, #0xaa
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xaa
	strh    r1, [r0, #0x0]
branch_22262de: @ 22262de :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xad
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_222637e
	add     r0, sp, #0x10
	add     r7, r5, #0x4
	str     r0, [sp, #0x4]
	mov     r6, r5
	mov     r4, r5
branch_22262f6: @ 22262f6 :thumb
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r7
	blx     r1
	ldr     r1, [sp, #0x4]
	cmp     r0, #0x0
	str     r0, [r1, #0x0]
	beq     branch_2226354
	mov     r0, r5
	add     r0, #0xae
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_222633a
	mov     r1, #0x0
	mov     r2, #0x4
	ldsh    r1, [r5, r1]
	ldsh    r2, [r6, r2]
	mov     r0, r4
	add     r0, #0x98
	add     r1, r1, r2
	mov     r2, #0x2
	ldsh    r3, [r5, r2]
	mov     r2, #0x6
	ldsh    r2, [r6, r2]
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	add     r2, r3, r2
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	b       branch_2226360

branch_222633a: @ 222633a :thumb
	mov     r0, r7
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_2225fa4
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	bl      Function_200d6e8
	b       branch_2226360

branch_2226354: @ 2226354 :thumb
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200d3f4
branch_2226360: @ 2226360 :thumb
	ldr     r0, [sp, #0x4]
	add     r7, #0x24
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r6, #0x24
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xad
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r0, r1
	blt     branch_22262f6
branch_222637e: @ 222637e :thumb
	add     r5, #0xac
	ldrb    r2, [r5, #0x0]
	mov     r3, #0x0
	cmp     r2, #0x0
	ble     branch_222639e
	add     r1, sp, #0x10
branch_222638a: @ 222638a :thumb
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x1
	bne     branch_2226396
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2226396: @ 2226396 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r3, r2
	blt     branch_222638a
branch_222639e: @ 222639e :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22263a4


.thumb
Function_22263a4: @ 22263a4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0x28] @ 0x22263d4, (=#0xffff)
	mov     r4, r1
	mov     r1, #0x2
	str     r3, [sp, #0x0]
	lsl     r1, r1, #16
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x20] @ 0x22263d8, (=#0xffff8000)
	mov     r5, r0
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r1, #0x0
	mov     r2, r3
	mov     r3, r1
	bl      Function_2225a5c
	ldr     r0, [r5, #0x4]
	mov     r1, r0
	mul     r1, r4
	str     r1, [r5, #0x4]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22263d2

.align 2
.word 0xffff @ 0x22263d4
.word 0xffff8000 @ 0x22263d8



.thumb
Function_22263dc: @ 22263dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_22263f8
	mov     r0, #0x1
	str     r0, [r4, #0x24]
	mov     r0, r5
	bl      Function_200da58
	pop     {r3-r5,pc}

branch_22263f8: @ 22263f8 :thumb
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	cmp     r1, #0x0
	bge     branch_2226402
	strh    r0, [r4, #0x0]
branch_2226402: @ 2226402 :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_222640e
	mov     r0, #0x0
	strh    r0, [r4, #0x2]
branch_222640e: @ 222640e :thumb
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x4] @ 0x2226420, (=#0x4000052)
	strh    r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x2226420

.word 0x4000052 @ 0x2226420



.thumb
Function_2226424: @ 2226424 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	add     r6, sp, #0x8
	mov     r5, #0x10
	ldsh    r5, [r6, r5]
	mov     r4, r0
	str     r5, [sp, #0x0]
	ldr     r5, [sp, #0x1c]
	lsl     r5, r5, #16
	lsr     r5, r5, #16
	str     r5, [sp, #0x4]
	bl      Function_2225bc8
	mov     r2, #0x0
	ldr     r0, [pc, #0xc] @ 0x2226450, (=#0x22263dd)
	mov     r1, r4
	str     r2, [r4, #0x24]
	bl      Function_200d9e8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x222644e

.align 2
.word 0x22263dd @ 0x2226450



.thumb
Function_2226454: @ 2226454 :thumb
	ldr     r0, [r0, #0x24]
	bx      lr
@ 0x2226458


.thumb
Function_2226458: @ 2226458 :thumb
	push    {r3,lr}
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	beq     branch_222646c
	mov     r0, #0x1
	str     r0, [r1, #0xc]
	ldr     r0, [r1, #0x18]
	ldr     r1, [r1, #0x10]
	blx     r1
	pop     {r3,pc}

branch_222646c: @ 222646c :thumb
	bl      Function_2013ba8
	pop     {r3,pc}
@ 0x2226472


.align 2, 0
.thumb
Function_2226474: @ 2226474 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_222648e
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_222648e
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x14]
	blx     r1
	mov     r0, #0x0
	str     r0, [r4, #0xc]
branch_222648e: @ 222648e :thumb
	pop     {r4,pc}
@ 0x2226490


.thumb
Function_2226490: @ 2226490 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r5, #0x0
	bne     branch_22264a2
	bl      Function_2022974
branch_22264a2: @ 22264a2 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x8]
	mov     r2, #0x0
	str     r2, [r5, #0xc]
	str     r4, [r5, #0x18]
	str     r6, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x22264c8, (=#0x2226459)
	str     r7, [r5, #0x14]
	mov     r1, r5
	bl      Function_200da3c
	str     r0, [r5, #0x4]
	ldr     r0, [pc, #0x10] @ 0x22264cc, (=#0x2226475)
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_200da04
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22264c8

.word 0x2226459 @ 0x22264c8
.word 0x2226475 @ 0x22264cc



.thumb
Function_22264d0: @ 22264d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22264da
	bl      Function_2022974
branch_22264da: @ 22264da :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22264e4
	bl      Function_200da58
branch_22264e4: @ 22264e4 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22264ee
	bl      Function_200da58
branch_22264ee: @ 22264ee :thumb
	bl      Function_2013ba8
	pop     {r4,pc}
@ 0x22264f4


.thumb
Function_22264f4: @ 22264f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22264fe
	bl      Function_2022974
branch_22264fe: @ 22264fe :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x2226504


.thumb
Function_2226504: @ 2226504 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_2013b68
	mov     r5, r0
	bl      Function_2013ba8
	mov     r1, #0x62
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, #0x1
	bl      Function_2013bb8
	pop     {r3-r5,pc}
@ 0x2226526


.align 2, 0
.thumb
Function_2226528: @ 2226528 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_2013b94
	mov     r0, r4
	bl      Function_2226504
	pop     {r4,pc}
@ 0x222653a


.align 2, 0
.thumb
Function_222653c: @ 222653c :thumb
	ldr     r3, [pc, #0x0] @ 0x2226540, (=#0x2226505)
	bx      r3
@ 0x2226540

.word Function_2226504+1 @ =0x2226505, 0x2226540



.thumb
Function_2226544: @ 2226544 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r2
	mov     r5, r0
	ldr     r1, [pc, #0x64] @ 0x22265b4, (=#0x624)
	mov     r0, r7
	bl      Function_2018144
	ldr     r2, [pc, #0x5c] @ 0x22265b4, (=#0x624)
	mov     r1, #0x0
	mov     r4, r0
	blx     Function_20d5124
	cmp     r4, #0x0
	bne     branch_2226566
	bl      Function_2022974
.thumb
branch_2226566: @ 2226566 :thumb
	mov     r2, #0x32
	mov     r1, r4
	lsl     r2, r2, #4
	mov     r0, r7
	add     r1, #0x20
	add     r2, r4, r2
	bl      Function_2013b10
	str     r0, [r4, #0x1c]
	cmp     r0, #0x0
	bne     branch_2226580
	bl      Function_2022974
.thumb
branch_2226580: @ 2226580 :thumb
	mov     r0, #0x62
	lsl     r0, r0, #4
	mov     r1, r4
	mov     r2, #0x3
	str     r5, [r4, r0]
	mov     r0, r6
	add     r1, #0x20
	lsl     r2, r2, #8
	blx     Function_20c4b4c
	mov     r2, #0x32
	lsl     r2, r2, #4
	add     r1, r4, r2
	mov     r0, r6
	sub     r2, #0x20
	blx     Function_20c4b4c
	ldr     r2, [pc, #0x14] @ 0x22265b8, (=#0x2226529)
	ldr     r3, [pc, #0x14] @ 0x22265bc, (=#0x222653d)
	mov     r0, r4
	mov     r1, r4
	bl      Function_2226490
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x22265b2

.align 2
.word 0x624 @ 0x22265b4
.word 0x2226529 @ 0x22265b8
.word 0x222653d @ 0x22265bc


.thumb
Function_22265c0: @ 22265c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22265ca
	bl      Function_2022974
branch_22265ca: @ 22265ca :thumb
	mov     r0, r4
	bl      Function_22264d0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_22265da
	bl      Function_2013b40
branch_22265da: @ 22265da :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x22265e2


.align 2, 0
.thumb
Function_22265e4: @ 22265e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22265ee
	bl      Function_2022974
branch_22265ee: @ 22265ee :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_2013b54
	pop     {r4,pc}
@ 0x22265f6


.align 2, 0
.thumb
Function_22265f8: @ 22265f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2226602
	bl      Function_2022974
branch_2226602: @ 2226602 :thumb
	mov     r0, r4
	bl      Function_22264f4
	pop     {r4,pc}
@ 0x222660a


.align 2, 0
.thumb
Function_222660c: @ 222660c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_2013da4
	ldr     r0, [r4, #0x1c]
	bl      Function_2013ddc
	pop     {r4,pc}
@ 0x222661e


.align 2, 0
.thumb
Function_2226620: @ 2226620 :thumb
	ldr     r3, [pc, #0x4] @ 0x2226628, (=#0x2013ddd)
	ldr     r0, [r0, #0x1c]
	bx      r3
@ 0x2226626

.align 2
.word 0x2013ddd @ 0x2226628



.thumb
Function_222662c: @ 222662c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r0
	str     r1, [sp, #0x14]
	ldr     r0, [sp, #0x40]
	mov     r1, #0x20
	str     r2, [sp, #0x18]
	mov     r5, r3
	bl      Function_2018144
	mov     r4, r0
	bne     branch_2226648
	bl      Function_2022974
branch_2226648: @ 2226648 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Function_20d5124
	ldr     r0, [sp, #0x34]
	bl      Function_22266f0
	mov     r6, r0
	ldr     r0, [sp, #0x40]
	bl      Function_2013be0
	str     r0, [r4, #0x1c]
	str     r5, [sp, #0x0]
	add     r1, sp, #0x20
	mov     r0, #0x10
	ldsh    r0, [r1, r0]
	mov     r1, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x3c]
	str     r6, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x38]
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	bl      Function_2013c10
	ldr     r2, [pc, #0x10] @ 0x2226694, (=#0x222660d)
	ldr     r3, [pc, #0x10] @ 0x2226698, (=#0x2226621)
	mov     r0, r4
	mov     r1, r4
	bl      Function_2226490
	mov     r0, r4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2226694

.word 0x222660d @ 0x2226694
.word 0x2226621 @ 0x2226698



.thumb
Function_222669c: @ 222669c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22266a6
	bl      Function_2022974
branch_22266a6: @ 22266a6 :thumb
	mov     r0, r4
	bl      Function_22264d0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_22266b6
	bl      Function_2013d74
branch_22266b6: @ 22266b6 :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x22266be


.align 2, 0
.thumb
Function_22266c0: @ 22266c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22266ca
	bl      Function_2022974
.thumb
branch_22266ca: @ 22266ca :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_2013d94
	pop     {r4,pc}
@ 0x22266d2


.align 2, 0
.thumb
Function_22266d4: @ 22266d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_22266de
	bl      Function_2022974
branch_22266de: @ 22266de :thumb
	mov     r0, r4
	bl      Function_22264f4
	pop     {r4,pc}
@ 0x22266e6


.align 2, 0
.thumb
Function_22266e8: @ 22266e8 :thumb
	lsl     r1, r1, #16
	orr     r0, r1
	bx      lr
@ 0x22266ee


.align 2, 0
.thumb
Function_22266f0: @ 22266f0 :thumb
	cmp     r0, #0x3
	bhi     branch_2226716
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	ldr     r0, [pc, #0xc] @ 0x2226718, (=#0x4000010)
	bx      lr
@ 0x222670c


.incbin "./baserom/overlay/overlay_0012.bin", 0x6aec, 0x2226716 - 0x222670c


.thumb
branch_2226716: @ 2226716 :thumb
	bx      lr
@ 0x2226718

.word 0x4000010 @ 0x2226718


.incbin "./baserom/overlay/overlay_0012.bin", 0x6afc, 0x2226744 - 0x222671c


.thumb
Function_2226744: @ 2226744 :thumb
	push    {r3,lr}
	sub     r1, r1, r3
	neg     r1, r1
	sub     r0, r0, r2
	lsl     r1, r1, #16
	lsl     r0, r0, #16
	asr     r1, r1, #16
	mov     r2, r1
	asr     r0, r0, #16
	mul     r2, r1
	mov     r1, r0
	mul     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #12
	blx 0x20bcff0
	ldr     r1, [sp, #0x8]
	str     r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x222676a


.align 2, 0
.thumb
Function_222676c: @ 222676c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	sub     r0, r1, r3
	neg     r0, r0
	lsl     r0, r0, #16
	sub     r1, r6, r2
	asr     r4, r0, #16
	lsl     r1, r1, #16
	ldr     r5, [sp, #0x10]
	lsl     r0, r4, #12
	asr     r1, r1, #4
	blx 0x20bda22
	strh    r0, [r5, #0x0]
	ldrh    r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_222679c
	cmp     r4, #0x0
	bge     branch_222679c
	ldr     r0, [pc, #0xc] @ 0x22267a0, (=#0x7fff)
	sub     r1, r1, r0
	ldr     r0, [pc, #0xc] @ 0x22267a4, (=#0xffff)
	mul     r0, r1
	strh    r0, [r5, #0x0]
branch_222679c: @ 222679c :thumb
	pop     {r4-r6,pc}
@ 0x222679e

.align 2
.word 0x7fff @ 0x22267a0
.word 0xffff @ 0x22267a4



.thumb
Function_22267a8: @ 22267a8 :thumb
	cmp     r2, #0x0
	ldr     r3, [r0, #0x0]
	bge     branch_22267c0
	add     r2, r3, r2
	cmp     r2, r1
	ble     branch_22267ba
	str     r2, [r0, #0x0]
	mov     r0, #0x0
	bx      lr

branch_22267ba: @ 22267ba :thumb
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr

branch_22267c0: @ 22267c0 :thumb
	add     r2, r3, r2
	cmp     r2, r1
	bge     branch_22267cc
	str     r2, [r0, #0x0]
	mov     r0, #0x0
	bx      lr

branch_22267cc: @ 22267cc :thumb
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x22267d2


.align 2, 0
.thumb
Function_22267d4: @ 22267d4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2226844
	mov     r0, #0x17
	ldsb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x17]
	ldsb    r1, [r4, r0]
	mov     r0, #0x16
	ldsb    r0, [r4, r0]
	cmp     r1, r0
	blt     branch_2226844
	mov     r0, #0x0
	strb    r0, [r4, #0x17]
	ldrb    r0, [r4, #0x14]
	str     r0, [sp, #0x0]
	ldrh    r0, [r4, #0x10]
	str     r0, [sp, #0x4]
	ldrh    r2, [r4, #0xc]
	ldrh    r3, [r4, #0xe]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x8]
	bl      Function_20039b0
	ldrb    r3, [r4, #0x13]
	ldrb    r1, [r4, #0x14]
	cmp     r1, r3
	bne     branch_222681a
	mov     r0, #0x0
	add     sp, #0x8
	str     r0, [r4, #0x0]
	pop     {r4,pc}

branch_222681a: @ 222681a :thumb
	mov     r0, #0x15
	ldsb    r2, [r4, r0]
	add     r1, r1, r2
	lsl     r0, r1, #24
	asr     r0, r0, #24
	cmp     r2, #0x0
	ble     branch_2226838
	cmp     r0, r3
	ble     branch_2226832
	add     sp, #0x8
	strb    r3, [r4, #0x14]
	pop     {r4,pc}

branch_2226832: @ 2226832 :thumb
	add     sp, #0x8
	strb    r1, [r4, #0x14]
	pop     {r4,pc}

branch_2226838: @ 2226838 :thumb
	cmp     r0, r3
	bge     branch_2226842
	add     sp, #0x8
	strb    r3, [r4, #0x14]
	pop     {r4,pc}

branch_2226842: @ 2226842 :thumb
	strb    r1, [r4, #0x14]
branch_2226844: @ 2226844 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2226848


.thumb
Function_2226848: @ 2226848 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2226852
	bl      Function_2022974
.thumb
branch_2226852: @ 2226852 :thumb
	ldr     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2226856


.align 2, 0


.thumb
Function_2226858: @ 2226858 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2226862
	bl      Function_2022974
.thumb
branch_2226862: @ 2226862 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_200da58
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x2226870

.thumb
Function_2226870: @ 2226870 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x1c
	mov     r6, r2
	mov     r7, r3
	bl      Function_2018144
	mov     r4, r0
	bne     branch_2226888
	bl      Function_2022974
.thumb
branch_2226888: @ 2226888 :thumb
	str     r5, [r4, #0x18]
	str     r6, [r4, #0x8]
	strh    r7, [r4, #0xc]
	add     r1, sp, #0x8
	ldrh    r0, [r1, #0x10]
	strh    r0, [r4, #0xe]
	ldrh    r0, [r1, #0x24]
	strh    r0, [r4, #0x10]
	ldrb    r2, [r1, #0x1c]
	add     r0, sp, #0x28
	ldrb    r0, [r0, #0x0]
	strb    r2, [r4, #0x12]
	strb    r0, [r4, #0x13]
	strb    r2, [r4, #0x14]
	mov     r0, #0x14
	ldsb    r0, [r1, r0]
	strb    r0, [r4, #0x16]
	strb    r0, [r4, #0x17]
	ldrb    r2, [r4, #0x12]
	ldrb    r0, [r4, #0x13]
	cmp     r2, r0
	bcs     branch_22268ba
	mov     r0, #0x18
	ldsb    r0, [r1, r0]
	b       branch_22268c0
@ 0x22268ba

.thumb
branch_22268ba: @ 22268ba :thumb
	mov     r0, #0x18
	ldsb    r0, [r1, r0]
	neg     r0, r0
.thumb
branch_22268c0: @ 22268c0 :thumb
	strb    r0, [r4, #0x15]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x22268d8, (=#0x22267d5)
	ldr     r2, [sp, #0x30]
	mov     r1, r4
	bl      Function_200d9e8
	str     r0, [r4, #0x4]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x22268d6

.align 2
.word 0x22267d5 @ 0x22268d8



.thumb
Function_22268dc: @ 22268dc :thumb
	push    {r4-r7}
	mov     r7, #0x0
	cmp     r1, #0x0
	ble     branch_222691e
	mov     r2, #0x97
.thumb
branch_22268e6: @ 22268e6 :thumb
	ldrh    r6, [r0, #0x0]
	mov     r3, #0x1f
	.hword  0x1c7f @ add r7, r7, #0x1
	asr     r4, r6, #10
	and     r4, r3
	mov     r5, r4
	mov     r3, #0x1d
	mul     r5, r3
	mov     r3, #0x1f
	and     r3, r6
	mov     r4, #0x4c
	mul     r4, r3
	asr     r6, r6, #5
	mov     r3, #0x1f
	and     r3, r6
	mov     r6, r3
	mul     r6, r2
	add     r3, r4, r6
	add     r3, r5, r3
	asr     r5, r3, #8
	lsl     r4, r5, #10
	lsl     r3, r5, #5
	orr     r3, r4
	orr     r3, r5
	strh    r3, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r7, r1
	blt     branch_22268e6
.thumb
branch_222691e: @ 222691e :thumb
	pop     {r4-r7}
	bx      lr
@ 0x2226922


.align 2, 0


.thumb
Function_2226924: @ 2226924 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222332c
	mov     r1, #0x0
	bl      Function_200316c
	mov     r4, r0
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2226948
	mov     r0, r4
	mov     r1, #0x30
	bl      Function_22268dc
	pop     {r3-r5,pc}
@ 0x2226948

.thumb
branch_2226948: @ 2226948 :thumb
	mov     r0, r4
	mov     r1, #0x80
	bl      Function_22268dc
	pop     {r3-r5,pc}
@ 0x2226952


.align 2, 0


.thumb
Function_2226954: @ 2226954 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_222332c
	mov     r4, r0
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2226980
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x60
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2003120
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2226980

.thumb
branch_2226980: @ 2226980 :thumb
	mov     r1, #0x0
	mov     r0, #0x1
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2003120
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2226998

.thumb
Function_2226998: @ 2226998 :thumb
	cmp     r0, #0x54
	bcc     branch_22269a0
	mov     r0, #0x0
	bx      lr

branch_22269a0: @ 22269a0 :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x4] @ 0x22269a8, (=#0x2239eec)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x22269a8

.word 0x2239eec @ 0x22269a8



.thumb
Function_22269ac: @ 22269ac :thumb
	cmp     r0, #0x21
	bcc     branch_22269b4
	mov     r0, #0x0
	bx      lr

branch_22269b4: @ 22269b4 :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x4] @ 0x22269bc, (=JumpTable_2239e68)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x22269bc

.word JumpTable_2239e68 @ 0x22269bc



.thumb
Function_22269c0: @ 22269c0 :thumb
	bx      lr
@ 0x22269c2


.align 2, 0
.thumb
Function_22269c4: @ 22269c4 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22269d6
	cmp     r0, #0x1
	beq     branch_22269dc
	pop     {r4,pc}

branch_22269d6: @ 22269d6 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4,pc}

branch_22269dc: @ 22269dc :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x22269ec


.thumb
Function_22269ec: @ 22269ec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5
	mov     r1, #0x8
	bl      Function_2018144
	mov     r2, r0
	mov     r0, #0x0
	strb    r0, [r2, #0x0]
	mov     r3, #0x1
	ldr     r1, [pc, #0xc] @ 0x2226a10, (=#0x22269c5)
	mov     r0, r4
	lsl     r3, r3, #12
	str     r4, [r2, #0x4]
	bl      Function_22201cc
	pop     {r4,pc}
@ 0x2226a0e

.align 2
.word 0x22269c5 @ 0x2226a10



.thumb
Function_2226a14: @ 2226a14 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2226a26
	cmp     r0, #0x1
	beq     branch_2226a2c
	pop     {r4,pc}

branch_2226a26: @ 2226a26 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4,pc}

branch_2226a2c: @ 2226a2c :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220230
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x2226a3c


.thumb
Function_2226a3c: @ 2226a3c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5
	mov     r1, #0x8
	bl      Function_2018144
	mov     r2, r0
	mov     r0, #0x0
	strb    r0, [r2, #0x0]
	mov     r3, #0x1
	ldr     r1, [pc, #0xc] @ 0x2226a60, (=#0x2226a15)
	mov     r0, r4
	lsl     r3, r3, #12
	str     r4, [r2, #0x4]
	bl      Function_2220204
	pop     {r4,pc}
@ 0x2226a5e

.align 2
.word 0x2226a15 @ 0x2226a60



.thumb
Function_2226a64: @ 2226a64 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_2226a74
	cmp     r1, #0x1
	beq     branch_2226a7a
	pop     {r4,pc}

branch_2226a74: @ 2226a74 :thumb
	add     r0, r1, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4,pc}

branch_2226a7a: @ 2226a7a :thumb
	bl      Function_200da58
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x2226a86


.align 2, 0
.thumb
Function_2226a88: @ 2226a88 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5
	mov     r1, #0x8
	bl      Function_2018144
	mov     r1, r0
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	mov     r2, #0x1
	ldr     r0, [pc, #0x8] @ 0x2226aa8, (=#0x2226a65)
	lsl     r2, r2, #12
	str     r4, [r1, #0x4]
	bl      Function_200d9e8
	pop     {r4,pc}
@ 0x2226aa8

.word 0x2226a65 @ 0x2226aa8



.thumb
Function_2226aac: @ 2226aac :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2226abe
	cmp     r0, #0x1
	beq     branch_2226b04
	pop     {r4-r6,pc}

branch_2226abe: @ 2226abe :thumb
	ldr     r0, [r5, #0x14]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	bl      Function_200d5ac
	ldr     r0, [r5, #0x18]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	mvn     r1, r1
	mov     r2, #0x0
	bl      Function_200d5ac
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_200d5ac
	ldr     r0, [r5, #0xc]
	bl      Function_200c7ec
	pop     {r4-r6,pc}

branch_2226b04: @ 2226b04 :thumb
	ldr     r0, [r5, #0x10]
	ldr     r4, [r5, #0x4]
	bl      Function_200d0f4
	mov     r0, r5
	bl      Function_20181c4
	mov     r0, r4
	mov     r1, r6
	bl      Function_2220220
	pop     {r4-r6,pc}
@ 0x2226b1c


.thumb
Function_2226b1c: @ 2226b1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r6, r1
	mov     r1, #0x73
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r1, r1, #2
	mov     r7, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r4, r0
	bne     branch_2226b3a
	bl      Function_2022974
branch_2226b3a: @ 2226b3a :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	str     r6, [r4, #0x8]
	str     r7, [r4, #0xc]
	ldr     r0, [sp, #0x0]
	str     r5, [r4, #0x10]
	str     r0, [r4, #0x4]
	ldr     r1, [sp, #0x0]
	add     r0, sp, #0x4
	bl      Function_222329c
	str     r5, [r4, #0x14]
	mov     r6, #0x1
	add     r5, r4, #0x4
	add     r7, sp, #0x4
branch_2226b58: @ 2226b58 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r2, r7
	bl      Function_200ce6c
	str     r0, [r5, #0x14]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_2226b58
	mov     r3, #0x1
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2226b80, (=#0x2226aad)
	mov     r2, r4
	lsl     r3, r3, #12
	bl      Function_22201cc
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2226b7e

.align 2
.word 0x2226aad @ 0x2226b80



.thumb
Function_2226b84: @ 2226b84 :thumb
	push    {r4,lr}
	mov     r1, #0xc
	mov     r2, r1
	add     r2, #0xf4
	mov     r4, r0
	bl      Function_2007dec
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf3
	bl      Function_2007dec
	pop     {r4,pc}


Function_2226ba0: @ 2226ba0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r2, r0
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_2226bb2
	cmp     r0, #0x1
	beq     branch_2226bd4
	b       branch_2226c9e

branch_2226bb2: @ 2226bb2 :thumb
	mov     r0, #0x26
	ldsh    r0, [r5, r0]
	mov     r1, #0x20
	mov     r2, #0x22
	str     r0, [sp, #0x0]
	mov     r3, #0x24
	mov     r0, r5
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	add     r0, #0x7c
	bl      Function_2226108
	ldrb    r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2226bd4: @ 2226bd4 :thumb
	mov     r0, r5
	add     r0, #0x7c
	bl      Function_2226138
	cmp     r0, #0x0
	bne     branch_2226be8
	ldrb    r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2226be8: @ 2226be8 :thumb
	ldr     r2, [r5, #0x28]
	mov     r1, #0x1
	lsl     r1, r1, #8
	mov     r0, r2
	and     r0, r1
	cmp     r0, r1
	bne     branch_2226c34
	ldr     r0, [r5, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2226c82
	mov     r4, r5
	mov     r7, #0x32
branch_2226c02: @ 2226c02 :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_2226c28
	mov     r2, #0x7c
	mov     r3, #0x30
	ldsh    r2, [r5, r2]
	ldsh    r3, [r4, r3]
	mov     r1, #0x0
	add     r2, r2, r3
	bl      Function_2007dec
	mov     r2, #0x7e
	ldsh    r3, [r5, r2]
	ldsh    r2, [r4, r7]
	ldr     r0, [r4, #0x34]
	mov     r1, #0x1
	add     r2, r3, r2
	bl      Function_2007dec
branch_2226c28: @ 2226c28 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x14
	cmp     r6, r0
	blt     branch_2226c02
	b       branch_2226c82

branch_2226c34: @ 2226c34 :thumb
	lsl     r0, r1, #1
	and     r2, r0
	cmp     r2, r0
	bne     branch_2226c82
	ldr     r0, [r5, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2226c7c
	mov     r4, r5
	mov     r7, #0x32
branch_2226c48: @ 2226c48 :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_2226c72
	mov     r1, #0x7c
	mov     r2, #0x30
	ldsh    r1, [r5, r1]
	ldsh    r2, [r4, r2]
	add     r1, r1, r2
	mov     r2, #0x7e
	ldsh    r3, [r5, r2]
	ldsh    r2, [r4, r7]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     r2, r3, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	ldr     r0, [r4, #0x38]
	bl      Function_200d330
branch_2226c72: @ 2226c72 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x14
	cmp     r6, r0
	blt     branch_2226c48
branch_2226c7c: @ 2226c7c :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_200c7ec
branch_2226c82: @ 2226c82 :thumb
	mov     r0, #0x1
	ldr     r1, [r5, #0x28]
	lsl     r0, r0, #10
	and     r1, r0
	cmp     r1, r0
	bne     branch_2226cac
	mov     r3, #0x7c
	ldsh    r3, [r5, r3]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_2019184
	pop     {r3-r7,pc}

branch_2226c9e: @ 2226c9e :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
branch_2226cac: @ 2226cac :thumb
	pop     {r3-r7,pc}
@ 0x2226cae


.align 2, 0
.thumb
Function_2226cb0: @ 2226cb0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0xa0
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	add     r1, r4, #0x4
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	strh    r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	strh    r0, [r4, #0x22]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	strh    r0, [r4, #0x24]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	strh    r0, [r4, #0x26]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	mov     r2, #0x1
	lsl     r2, r2, #8
	str     r0, [r4, #0x28]
	mov     r1, r0
	and     r0, r2
	cmp     r0, r2
	bne     branch_2226d10
	mov     r2, r4
	mov     r0, r5
	add     r2, #0x2c
	mov     r3, r4
	bl      Function_2235998
	b       branch_2226d26
@ 0x2226d10

.thumb
branch_2226d10: @ 2226d10 :thumb
	lsl     r0, r2, #1
	mov     r3, r1
	and     r3, r0
	cmp     r3, r0
	bne     branch_2226d26
	mov     r2, r4
	mov     r0, r5
	add     r2, #0x2c
	mov     r3, r4
	bl      Function_2235d74
.thumb
branch_2226d26: @ 2226d26 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0x8] @ 0x2226d34, (=#0x2226ba1)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x2226d32

.align 2
.word 0x2226ba1 @ 0x2226d34



.thumb
Function_2226d38: @ 2226d38 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x1c]
	cmp     r0, #0x3
	bhi     branch_2226e02
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r4, r4, #0
	lsl     r6, r4, #1
	lsl     r2, r6, #1
	ldrh    r0, [r4, #0x18]
	mov     r1, #0x4
	mov     r2, #0x39
	str     r0, [sp, #0x0]
	ldrh    r3, [r4, #0x16]
	ldr     r0, [pc, #0x140] @ 0x2226ea4, (=#0x4000050)
	blx 0x20bf55c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019120
	ldrb    r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1c]
	ldrh    r1, [r4, #0x8]
	ldrh    r2, [r4, #0x16]
	mov     r0, #0x0
	.hword  0x1e89 @ sub r1, r1, #0x2
	cmp     r2, r1
	bge     branch_2226d88
	add     r1, r2, #0x2
	strh    r1, [r4, #0x16]
	b       branch_2226d8a

branch_2226d88: @ 2226d88 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
branch_2226d8a: @ 2226d8a :thumb
	ldrh    r1, [r4, #0x18]
	cmp     r1, #0x9
	bls     branch_2226d96
	.hword  0x1e89 @ sub r1, r1, #0x2
	strh    r1, [r4, #0x18]
	b       branch_2226d98

branch_2226d96: @ 2226d96 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
branch_2226d98: @ 2226d98 :thumb
	cmp     r0, #0x2
	bne     branch_2226daa
	ldrh    r0, [r4, #0x8]
	strh    r0, [r4, #0x16]
	mov     r0, #0x7
	strh    r0, [r4, #0x18]
	ldrb    r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1c]
branch_2226daa: @ 2226daa :thumb
	ldrh    r0, [r4, #0x18]
	ldrh    r1, [r4, #0x16]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0xf4] @ 0x2226ea8, (=#0x4000052)
	strh    r1, [r0, #0x0]
	b       branch_2226e1a
@ 0x2226db8


.incbin "./baserom/overlay/overlay_0012.bin", 0x7198, 0x2226e02 - 0x2226db8


.thumb
branch_2226e02: @ 2226e02 :thumb
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [r4, #0x20]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}

branch_2226e1a: @ 2226e1a :thumb
	mov     r1, #0x10
	ldsh    r3, [r4, r1]
	cmp     r3, #0x0
	ble     branch_2226e2c
	mov     r0, #0xc
	ldsh    r2, [r4, r0]
	lsl     r0, r1, #5
	cmp     r2, r0
	bge     branch_2226e3a
branch_2226e2c: @ 2226e2c :thumb
	cmp     r3, #0x0
	bge     branch_2226e3e
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	ldr     r0, [pc, #0x74] @ 0x2226eac, (=#0xfffffe64)
	cmp     r1, r0
	bgt     branch_2226e3e
branch_2226e3a: @ 2226e3a :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x4]
branch_2226e3e: @ 2226e3e :thumb
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	mov     r0, #0xe
	ldsh    r0, [r4, r0]
	add     r0, r1, r0
	strh    r0, [r4, #0xa]
	mov     r0, #0xc
	ldsh    r2, [r4, r0]
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	add     r1, r2, r1
	strh    r1, [r4, #0xc]
	ldrh    r2, [r4, #0x12]
	ldrh    r1, [r4, #0x14]
	cmp     r2, r1
	bcs     branch_2226e82
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_2226e68
	.hword  0x1c40 @ add r0, r0, #0x1
	b       branch_2226e6a

branch_2226e68: @ 2226e68 :thumb
	mov     r0, #0x0
branch_2226e6a: @ 2226e6a :thumb
	strh    r0, [r4, #0x10]
	mov     r0, #0xe
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_2226e78
	.hword  0x1c40 @ add r0, r0, #0x1
	b       branch_2226e7a

branch_2226e78: @ 2226e78 :thumb
	mov     r0, #0x0
branch_2226e7a: @ 2226e7a :thumb
	strh    r0, [r4, #0xe]
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
	b       branch_2226e86

branch_2226e82: @ 2226e82 :thumb
	add     r0, r1, #0x1
	strh    r0, [r4, #0x14]
branch_2226e86: @ 2226e86 :thumb
	mov     r3, #0xa
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_2019184
	mov     r3, #0xc
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_2019184
	pop     {r3-r5,pc}
@ 0x2226ea4

.word 0x4000050 @ 0x2226ea4
.word 0x4000052 @ 0x2226ea8
.word 0xfffffe64 @ 0x2226eac



.thumb
Function_2226eb0: @ 2226eb0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r1, #0xb8
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x1c
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	strh    r0, [r4, #0xa]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	strh    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	strh    r0, [r4, #0xe]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strh    r0, [r4, #0x10]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	strh    r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2220280
	strh    r0, [r4, #0x12]
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2226f5c
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_2226f5c
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	sub     r0, #0xb
	mul     r0, r1
	strh    r0, [r4, #0xa]
	mov     r1, #0xc
	mov     r0, r1
	ldsh    r2, [r4, r1]
	sub     r0, #0xd
	mul     r0, r2
	strh    r0, [r4, #0xc]
	mov     r0, #0xe
	ldsh    r2, [r4, r0]
	sub     r0, #0xf
	mul     r0, r2
	strh    r0, [r4, #0xe]
	mov     r0, #0x10
	ldsh    r2, [r4, r0]
	sub     r0, #0x11
	mul     r0, r2
	strh    r0, [r4, #0x10]
	ldsh    r0, [r4, r1]
	sub     r0, #0x54
	strh    r0, [r4, #0xc]
	b       branch_2226f64
@ 0x2226f5c

.thumb
branch_2226f5c: @ 2226f5c :thumb
	mov     r0, #0xc
	ldsh    r0, [r4, r0]
	add     r0, #0x54
	strh    r0, [r4, #0xc]
.thumb
branch_2226f64: @ 2226f64 :thumb
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2226f78
	mov     r0, #0xe
	ldsh    r1, [r4, r0]
	sub     r0, #0xf
	mul     r0, r1
	strh    r0, [r4, #0xe]
.thumb
branch_2226f78: @ 2226f78 :thumb
	mov     r1, #0x0
	strh    r1, [r4, #0x16]
	mov     r0, #0x1f
	strh    r0, [r4, #0x18]
	mov     r0, #0x2
	str     r1, [r4, #0x4]
	bl      Function_2019120
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r1, #0x0
	mov     r7, r0
	bl      Function_22234e4
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x30]
	mov     r0, #0x7
	mov     r1, r6
	mov     r3, #0x2
	bl      Function_2006e3c
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_22234e4
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x90
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x34]
	mov     r1, #0x7
	mov     r2, r6
	bl      Function_2003050
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r0, r5
	mov     r6, #0x2
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2226ff8
	mov     r6, #0x4
	b       branch_222700c
@ 0x2226ff8

.thumb
branch_2226ff8: @ 2226ff8 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222700c
	mov     r6, #0x3
.thumb
branch_222700c: @ 222700c :thumb
	mov     r0, r7
	mov     r1, r6
	bl      Function_22234e4
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x30]
	mov     r0, #0x7
	mov     r1, r6
	mov     r3, #0x2
	bl      Function_2006e60
	mov     r3, #0xa
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_2019184
	mov     r3, #0xc
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_2019184
	ldr     r0, [r4, #0x20]
	ldr     r1, [pc, #0xc] @ 0x2227060, (=#0x2226d39)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222705e

.align 2
.word 0x2226d39 @ 0x2227060



.thumb
Function_2227064: @ 2227064 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x1c]
	cmp     r0, #0x3
	bhi     branch_222712a
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r4, r4, #0
	lsl     r2, r4, #1
	lsl     r6, r5, #1
	ldrh    r0, [r4, #0x18]
	mov     r1, #0x4
	mov     r2, #0x39
	str     r0, [sp, #0x0]
	ldrh    r3, [r4, #0x16]
	ldr     r0, [pc, #0x13c] @ 0x22271cc, (=#0x4000050)
	blx 0x20bf55c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019120
	ldrb    r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1c]
	ldrh    r0, [r4, #0x16]
	mov     r1, #0x0
	cmp     r0, #0x10
	bcs     branch_22270b0
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r4, #0x16]
	b       branch_22270b2

branch_22270b0: @ 22270b0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
branch_22270b2: @ 22270b2 :thumb
	ldrh    r0, [r4, #0x18]
	cmp     r0, #0x4
	bls     branch_22270be
	.hword  0x1e80 @ sub r0, r0, #0x2
	strh    r0, [r4, #0x18]
	b       branch_22270c0

branch_22270be: @ 22270be :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
branch_22270c0: @ 22270c0 :thumb
	cmp     r1, #0x2
	bne     branch_22270d2
	mov     r0, #0x10
	strh    r0, [r4, #0x16]
	mov     r0, #0x4
	strh    r0, [r4, #0x18]
	ldrb    r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1c]
branch_22270d2: @ 22270d2 :thumb
	ldrh    r0, [r4, #0x18]
	ldrh    r1, [r4, #0x16]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0xf4] @ 0x22271d0, (=#0x4000052)
	strh    r1, [r0, #0x0]
	b       branch_2227142
@ 0x22270e0


.incbin "./baserom/overlay/overlay_0012.bin", 0x74c0, 0x222712a - 0x22270e0


.thumb
branch_222712a: @ 222712a :thumb
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [r4, #0x20]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}

branch_2227142: @ 2227142 :thumb
	mov     r1, #0x10
	ldsh    r3, [r4, r1]
	cmp     r3, #0x0
	ble     branch_2227154
	mov     r0, #0xc
	ldsh    r2, [r4, r0]
	lsl     r0, r1, #5
	cmp     r2, r0
	bge     branch_2227162
branch_2227154: @ 2227154 :thumb
	cmp     r3, #0x0
	bge     branch_2227166
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	ldr     r0, [pc, #0x74] @ 0x22271d4, (=#0xfffffe64)
	cmp     r1, r0
	bgt     branch_2227166
branch_2227162: @ 2227162 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x4]
branch_2227166: @ 2227166 :thumb
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	mov     r0, #0xe
	ldsh    r0, [r4, r0]
	add     r0, r1, r0
	strh    r0, [r4, #0xa]
	mov     r0, #0xc
	ldsh    r2, [r4, r0]
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	add     r1, r2, r1
	strh    r1, [r4, #0xc]
	ldrh    r2, [r4, #0x12]
	ldrh    r1, [r4, #0x14]
	cmp     r2, r1
	bcs     branch_22271aa
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_2227190
	.hword  0x1c40 @ add r0, r0, #0x1
	b       branch_2227192

branch_2227190: @ 2227190 :thumb
	mov     r0, #0x0
branch_2227192: @ 2227192 :thumb
	strh    r0, [r4, #0x10]
	mov     r0, #0xe
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_22271a0
	.hword  0x1c40 @ add r0, r0, #0x1
	b       branch_22271a2

branch_22271a0: @ 22271a0 :thumb
	mov     r0, #0x0
branch_22271a2: @ 22271a2 :thumb
	strh    r0, [r4, #0xe]
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
	b       branch_22271ae

branch_22271aa: @ 22271aa :thumb
	add     r0, r1, #0x1
	strh    r0, [r4, #0x14]
branch_22271ae: @ 22271ae :thumb
	mov     r3, #0xa
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_2019184
	mov     r3, #0xc
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_2019184
	pop     {r3-r5,pc}
@ 0x22271cc

.word 0x4000050 @ 0x22271cc
.word 0x4000052 @ 0x22271d0
.word 0xfffffe64 @ 0x22271d4



.thumb
Function_22271d8: @ 22271d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r1, #0xb8
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x1c
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	strh    r0, [r4, #0xa]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	strh    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	strh    r0, [r4, #0xe]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strh    r0, [r4, #0x10]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	strh    r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2220280
	strh    r0, [r4, #0x12]
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2227284
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_2227284
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	sub     r0, #0xb
	mul     r0, r1
	strh    r0, [r4, #0xa]
	mov     r1, #0xc
	mov     r0, r1
	ldsh    r2, [r4, r1]
	sub     r0, #0xd
	mul     r0, r2
	strh    r0, [r4, #0xc]
	mov     r0, #0xe
	ldsh    r2, [r4, r0]
	sub     r0, #0xf
	mul     r0, r2
	strh    r0, [r4, #0xe]
	mov     r0, #0x10
	ldsh    r2, [r4, r0]
	sub     r0, #0x11
	mul     r0, r2
	strh    r0, [r4, #0x10]
	ldsh    r0, [r4, r1]
	sub     r0, #0x54
	strh    r0, [r4, #0xc]
	b       branch_222728c
@ 0x2227284

.thumb
branch_2227284: @ 2227284 :thumb
	mov     r0, #0xc
	ldsh    r0, [r4, r0]
	add     r0, #0x54
	strh    r0, [r4, #0xc]
.thumb
branch_222728c: @ 222728c :thumb
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_22272a0
	mov     r0, #0xe
	ldsh    r1, [r4, r0]
	sub     r0, #0xf
	mul     r0, r1
	strh    r0, [r4, #0xe]
.thumb
branch_22272a0: @ 22272a0 :thumb
	mov     r0, #0x4
	strh    r0, [r4, #0x16]
	mov     r0, #0x10
	strh    r0, [r4, #0x18]
	mov     r1, #0x0
	strh    r1, [r4, #0x16]
	strh    r0, [r4, #0x18]
	mov     r0, #0x2
	str     r1, [r4, #0x4]
	bl      Function_2019120
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r1, #0x0
	mov     r7, r0
	bl      Function_22234e4
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x30]
	mov     r0, #0x7
	mov     r1, r6
	mov     r3, #0x2
	bl      Function_2006e3c
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_22234e4
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x90
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x34]
	mov     r1, #0x7
	mov     r2, r6
	bl      Function_2003050
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r0, r5
	mov     r6, #0x2
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2227326
	mov     r6, #0x4
	b       branch_222733a
@ 0x2227326

.thumb
branch_2227326: @ 2227326 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222733a
	mov     r6, #0x3
.thumb
branch_222733a: @ 222733a :thumb
	mov     r0, r7
	mov     r1, r6
	bl      Function_22234e4
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x30]
	mov     r0, #0x7
	mov     r1, r6
	mov     r3, #0x2
	bl      Function_2006e60
	mov     r3, #0xa
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_2019184
	mov     r3, #0xc
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_2019184
	ldr     r0, [r4, #0x20]
	ldr     r1, [pc, #0x8] @ 0x222738c, (=#0x2227065)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222738c

.word 0x2227065 @ 0x222738c



.thumb
Function_2227390: @ 2227390 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22273a6
	cmp     r0, #0x1
	beq     branch_22273a6
	cmp     r0, #0x2
	beq     branch_22273d8
	pop     {r3-r5,pc}

branch_22273a6: @ 22273a6 :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_2225da0
	cmp     r0, #0x1
	bne     branch_22273c2
	ldr     r2, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	lsl     r2, r2, #16
	mov     r1, #0x9
	lsr     r2, r2, #16
	bl      Function_2007dec
	pop     {r3-r5,pc}

branch_22273c2: @ 22273c2 :thumb
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x20]
	ldr     r3, [r4, #0x24]
	add     r0, #0xc
	bl      Function_2225d50
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}

branch_22273d8: @ 22273d8 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x8]
	mov     r1, #0xb
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x8]
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}
@ 0x2227406


.align 2, 0
.thumb
Function_2227408: @ 2227408 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x2c
	bl      Function_2018144
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	str     r5, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r4, #0x24]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	mov     r7, r0
	beq     branch_2227442
	cmp     r7, #0x2
	bne     branch_222744c
.thumb
branch_2227442: @ 2227442 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	str     r0, [sp, #0x0]
	b       branch_2227454
@ 0x222744c

.thumb
branch_222744c: @ 222744c :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	str     r0, [sp, #0x0]
.thumb
branch_2227454: @ 2227454 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	mov     r2, r0
	mov     r0, r4
	ldr     r1, [r4, #0x20]
	ldr     r3, [r4, #0x24]
	add     r0, #0xc
	bl      Function_2225d50
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2225964
	mov     r6, r0
	ldr     r0, [r4, #0x14]
	mov     r1, r0
	mul     r1, r6
	str     r1, [r4, #0x14]
	cmp     r7, #0x2
	bne     branch_2227486
	mov     r0, #0x0
	mvn     r0, r0
	mul     r6, r0
.thumb
branch_2227486: @ 2227486 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	cmp     r0, #0x1
	bne     branch_22274b0
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strh    r0, [r4, #0x28]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	b       branch_22274b8
@ 0x22274b0

.thumb
branch_22274b0: @ 22274b0 :thumb
	mov     r0, #0x28
	mov     r1, r6
	mul     r1, r0
	strh    r1, [r4, #0x28]
.thumb
branch_22274b8: @ 22274b8 :thumb
	strh    r0, [r4, #0x2a]
	mov     r2, #0x28
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x8]
	mov     r1, #0xa
	bl      Function_2007dec
	mov     r2, #0x2a
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x8]
	mov     r1, #0xb
	bl      Function_2007dec
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x22274e0, (=#0x2227391)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x22274de

.align 2
.word 0x2227391 @ 0x22274e0



.thumb
Function_22274e4: @ 22274e4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x2c
	mov     r2, #0x2e
	mov     r5, r0
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r3, [r4, #0x28]
	add     r0, r4, #0x4
	bl      Function_2225ba0
	cmp     r0, #0x0
	bne     branch_2227530
	mov     r2, #0x2c
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2007dec
	mov     r2, #0x2e
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	sub     r2, #0x8
	bl      Function_2007dec
	ldr     r0, [r4, #0x28]
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_2227530: @ 2227530 :thumb
	pop     {r3-r5,pc}
@ 0x2227532


.align 2, 0
.thumb
Function_2227534: @ 2227534 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x30
	bl      Function_2018144
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	str     r5, [r4, #0x0]
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	mov     r2, r0
	add     r0, r4, #0x4
	mov     r1, r6
	bl      Function_22263a4
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	cmp     r0, #0x8
	bgt     branch_222757e
	cmp     r0, #0x2
	blt     branch_22275f0
	beq     branch_2227584
	cmp     r0, #0x4
	beq     branch_22275a0
	cmp     r0, #0x8
	beq     branch_22275c4
	b       branch_22275f0
@ 0x222757e

.thumb
branch_222757e: @ 222757e :thumb
	cmp     r0, #0x10
	beq     branch_22275d6
	b       branch_22275f0
@ 0x2227584

.thumb
branch_2227584: @ 2227584 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x28]
	mov     r0, #0x0
	ldr     r1, [r4, #0x10]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [r4, #0x10]
	b       branch_22275f4
@ 0x22275a0

.thumb
branch_22275a0: @ 22275a0 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22352ac
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x28]
	mov     r0, #0x0
	ldr     r1, [r4, #0x10]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [r4, #0x10]
	b       branch_22275f4
@ 0x22275c4

.thumb
branch_22275c4: @ 22275c4 :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x28]
	b       branch_22275f4
@ 0x22275d6

.thumb
branch_22275d6: @ 22275d6 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22352ac
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x28]
	b       branch_22275f4
@ 0x22275f0

.thumb
branch_22275f0: @ 22275f0 :thumb
	bl      Function_2022974
.thumb
branch_22275f4: @ 22275f4 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x2c]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x2e]
	mov     r0, #0x2e
	ldsh    r0, [r4, r0]
	ldr     r1, [pc, #0xc] @ 0x222761c, (=#0x22274e5)
	mov     r2, r4
	add     r0, #0x8
	strh    r0, [r4, #0x2e]
	ldr     r0, [r4, #0x0]
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x222761c

.word 0x22274e5 @ 0x222761c



.thumb
Function_2227620: @ 2227620 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	mov     r4, r1
	mov     r1, #0x1
	mov     r6, r2
	bl      Function_200d3f4
	ldr     r0, [r5, #0x14]
	mov     r1, r4
	mov     r2, r6
	bl      Function_200d4c4
	mov     r0, #0x0
	str     r0, [r5, #0x40]
	mov     r0, #0x4
	mov     r1, #0xa
	add     r5, #0x18
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0xe
	bl      Function_2225e68
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2227656


.incbin "./baserom/overlay/overlay_0012.bin", 0x7a36, 0x222769c - 0x2227656


.thumb
Function_222769c: @ 222769c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x48]
	mov     r5, #0x0
	cmp     r1, #0x4
	bhi     branch_2227734
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r6, r5, #0
	lsl     r6, r7, #0
	lsl     r4, r5, #1
	lsl     r4, r7, #1
	mov     r1, #0x4c
	ldsh    r3, [r4, r1]
	ldr     r2, [r4, #0x3c]
	mov     r1, #0x18
	mul     r1, r2
	mov     r2, #0x4e
	ldsh    r2, [r4, r2]
	add     r1, r3, r1
	lsl     r1, r1, #16
	sub     r2, #0x10
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2227620
	ldr     r0, [r4, #0x48]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x48]
	b       branch_2227734
@ 0x22276e4


.incbin "./baserom/overlay/overlay_0012.bin", 0x7ac4, 0x2227734 - 0x22276e4


.thumb
branch_2227734: @ 2227734 :thumb
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x2227738


.thumb
Function_2227738: @ 2227738 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_222774a
	cmp     r0, #0x1
	beq     branch_222775c
	b       branch_2227772

branch_222774a: @ 222774a :thumb
	mov     r0, r4
	bl      Function_222769c
	cmp     r0, #0x0
	beq     branch_2227772
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2227772

branch_222775c: @ 222775c :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}

branch_2227772: @ 2227772 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x222777a


.align 2, 0
.thumb
Function_222777c: @ 222777c :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x50
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r6, r3
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x4]
	str     r0, [r4, #0x8]
	str     r6, [r4, #0x14]
	mov     r0, r6
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, #0x4
	str     r0, [r4, #0x44]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	str     r0, [r4, #0x3c]
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x4c
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x4e
	strh    r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2227804, (=#0x2227739)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x2227802

.align 2
.word 0x2227739 @ 0x2227804



.thumb
Function_2227808: @ 2227808 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_2227826
	mov     r0, r4
	bl      Function_20181c4
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2220220
branch_2227826: @ 2227826 :thumb
	pop     {r3-r5,pc}
@ 0x2227828


.thumb
Function_2227828: @ 2227828 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r1, #0x8
	mov     r5, r0
	bl      Function_2235e50
	mov     r6, r0
	str     r5, [r6, #0x0]
	mov     r0, r5
	bl      Function_222332c
	str     r0, [r6, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	cmp     r0, #0x0
	beq     branch_2227856
	cmp     r0, #0x1
	beq     branch_2227862
	cmp     r0, #0x2
	beq     branch_2227868
	b       branch_222786e
@ 0x2227856

.thumb
branch_2227856: @ 2227856 :thumb
	mov     r0, r5
	bl      Function_2222354
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_2227872
@ 0x2227862

.thumb
branch_2227862: @ 2227862 :thumb
	mov     r4, #0x1
	lsl     r4, r4, #8
	b       branch_2227872
@ 0x2227868

.thumb
branch_2227868: @ 2227868 :thumb
	mov     r4, #0x2
	lsl     r4, r4, #8
	b       branch_2227872
@ 0x222786e

.thumb
branch_222786e: @ 222786e :thumb
	bl      Function_2022974
.thumb
branch_2227872: @ 2227872 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #16
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	lsl     r3, r7, #24
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x4]
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r0, [r6, #0x4]
	mov     r1, #0x1
	mov     r2, r4
	asr     r3, r3, #24
	bl      Function_2003178
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xc] @ 0x22278cc, (=#0x2227809)
	mov     r2, r6
	bl      Function_22201e8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22278ca

.align 2
.word 0x2227809 @ 0x22278cc



.thumb
Function_22278d0: @ 22278d0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x5
	bhi     branch_2227978
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r2, r4, #0
	lsl     r4, r6, #0
	lsl     r6, r0, #1
	lsl     r6, r3, #1
	lsl     r0, r0, #2
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, #0x10]
	bl      Function_20086fc
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x222790c


.incbin "./baserom/overlay/overlay_0012.bin", 0x7cec, 0x2227978 - 0x222790c


.thumb
branch_2227978: @ 2227978 :thumb
	pop     {r3-r5,pc}
@ 0x222797a


.align 2, 0
.thumb
Function_222797c: @ 222797c :thumb
	push    {r3-r7,lr}
	mov     r1, #0x20
	mov     r4, r0
	bl      Function_2235e50
	mov     r6, r0
	str     r4, [r6, #0x0]
	mov     r1, #0x0
	mov     r0, r4
	str     r1, [r6, #0x4]
	bl      Function_2220280
	ldr     r2, [pc, #0x1ac] @ 0x2227b44, (=#0x802)
	cmp     r0, r2
	bgt     branch_22279b6
	bge     branch_2227a3c
	cmp     r0, #0x8
	bgt     branch_22279b0
	cmp     r0, #0x2
	blt     branch_22279ae
	beq     branch_22279ce
	cmp     r0, #0x4
	beq     branch_22279e0
	cmp     r0, #0x8
	beq     branch_2227a06
.thumb
branch_22279ae: @ 22279ae :thumb
	b       branch_2227af4
@ 0x22279b0

.thumb
branch_22279b0: @ 22279b0 :thumb
	cmp     r0, #0x10
	beq     branch_2227a18
	b       branch_2227af4
@ 0x22279b6

.thumb
branch_22279b6: @ 22279b6 :thumb
	add     r1, r2, #0x6
	cmp     r0, r1
	bgt     branch_22279c6
	bge     branch_2227a98
	add     r1, r2, #0x2
	cmp     r0, r1
	beq     branch_2227a6c
	b       branch_2227af4
@ 0x22279c6

.thumb
branch_22279c6: @ 22279c6 :thumb
	add     r2, #0xe
	cmp     r0, r2
	beq     branch_2227ac8
	b       branch_2227af4
@ 0x22279ce

.thumb
branch_22279ce: @ 22279ce :thumb
	mov     r0, r4
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22232fc
	str     r0, [r6, #0x4]
	b       branch_2227af8
@ 0x22279e0

.thumb
branch_22279e0: @ 22279e0 :thumb
	mov     r0, r4
	bl      Function_2223364
	cmp     r0, #0x1
	beq     branch_22279ec
	b       branch_2227af8
@ 0x22279ec

.thumb
branch_22279ec: @ 22279ec :thumb
	ldr     r0, [r6, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22352ac
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22232fc
	str     r0, [r6, #0x4]
	b       branch_2227af8
@ 0x2227a06

.thumb
branch_2227a06: @ 2227a06 :thumb
	mov     r0, r4
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22232fc
	str     r0, [r6, #0x4]
	b       branch_2227af8
@ 0x2227a18

.thumb
branch_2227a18: @ 2227a18 :thumb
	mov     r0, r4
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_2227af8
	ldr     r0, [r6, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22352ac
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22232fc
	str     r0, [r6, #0x4]
	b       branch_2227af8
@ 0x2227a3c

.thumb
branch_2227a3c: @ 2227a3c :thumb
	mov     r7, #0xff
	mov     r5, #0x0
.thumb
branch_2227a40: @ 2227a40 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_22232b8
	cmp     r0, #0x0
	beq     branch_2227a50
	cmp     r0, #0x2
	bne     branch_2227a54
.thumb
branch_2227a50: @ 2227a50 :thumb
	mov     r7, r5
	b       branch_2227a5a
@ 0x2227a54

.thumb
branch_2227a54: @ 2227a54 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_2227a40
.thumb
branch_2227a5a: @ 2227a5a :thumb
	cmp     r7, #0xff
	bne     branch_2227a60
	mov     r7, #0x0
.thumb
branch_2227a60: @ 2227a60 :thumb
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	bl      Function_22232fc
	str     r0, [r6, #0x4]
	b       branch_2227af8
@ 0x2227a6c

.thumb
branch_2227a6c: @ 2227a6c :thumb
	mov     r7, #0xff
	mov     r5, #0x0
.thumb
branch_2227a70: @ 2227a70 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_22232b8
	cmp     r0, #0x4
	bne     branch_2227a80
	mov     r7, r5
	b       branch_2227a86
@ 0x2227a80

.thumb
branch_2227a80: @ 2227a80 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_2227a70
.thumb
branch_2227a86: @ 2227a86 :thumb
	cmp     r7, #0xff
	bne     branch_2227a8c
	mov     r7, #0x0
.thumb
branch_2227a8c: @ 2227a8c :thumb
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	bl      Function_22232fc
	str     r0, [r6, #0x4]
	b       branch_2227af8
@ 0x2227a98

.thumb
branch_2227a98: @ 2227a98 :thumb
	mov     r7, #0xff
	mov     r5, #0x0
.thumb
branch_2227a9c: @ 2227a9c :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_22232b8
	cmp     r0, #0x1
	beq     branch_2227aac
	cmp     r0, #0x3
	bne     branch_2227ab0
.thumb
branch_2227aac: @ 2227aac :thumb
	mov     r7, r5
	b       branch_2227ab6
@ 0x2227ab0

.thumb
branch_2227ab0: @ 2227ab0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_2227a9c
.thumb
branch_2227ab6: @ 2227ab6 :thumb
	cmp     r7, #0xff
	bne     branch_2227abc
	mov     r7, #0x0
.thumb
branch_2227abc: @ 2227abc :thumb
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	bl      Function_22232fc
	str     r0, [r6, #0x4]
	b       branch_2227af8
@ 0x2227ac8

.thumb
branch_2227ac8: @ 2227ac8 :thumb
	mov     r7, #0xff
	mov     r5, #0x0
.thumb
branch_2227acc: @ 2227acc :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_22232b8
	cmp     r0, #0x5
	bne     branch_2227adc
	mov     r7, r5
	b       branch_2227ae2
@ 0x2227adc

.thumb
branch_2227adc: @ 2227adc :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_2227acc
.thumb
branch_2227ae2: @ 2227ae2 :thumb
	cmp     r7, #0xff
	bne     branch_2227ae8
	mov     r7, #0x0
.thumb
branch_2227ae8: @ 2227ae8 :thumb
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	bl      Function_22232fc
	str     r0, [r6, #0x4]
	b       branch_2227af8
@ 0x2227af4

.thumb
branch_2227af4: @ 2227af4 :thumb
	bl      Function_2022974
.thumb
branch_2227af8: @ 2227af8 :thumb
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	bne     branch_2227b06
	mov     r0, r6
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x2227b06

.thumb
branch_2227b06: @ 2227b06 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2220280
	str     r0, [r6, #0x10]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r6, #0xc]
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r6, #0x14]
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [r6, #0x18]
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r6, #0x1c]
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2227b48, (=#0x22278d1)
	mov     r2, r6
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x2227b44

.word 0x802 @ 0x2227b44
.word 0x22278d1 @ 0x2227b48



.thumb
Function_2227b4c: @ 2227b4c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x4
	bls     branch_2227b5c
	b       branch_2227cb0

branch_2227b5c: @ 2227b5c :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r2, #1
	lsl     r0, r5, #2
	lsl     r2, r2, #3
	lsl     r4, r6, #4
	ldr     r0, [r4, #0x4c]
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x3c]
	ldr     r2, [r4, #0x44]
	ldr     r3, [r4, #0x40]
	mov     r0, r4
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	add     r0, #0x14
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2225e68
	mov     r0, r4
	add     r0, #0x14
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_2225fa4
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x1
	bne     branch_2227bae
	ldr     r1, [sp, #0x8]
	mov     r0, #0x0
	blx 0x20e1a9c
	str     r0, [sp, #0x8]
branch_2227bae: @ 2227bae :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	bl      Function_200d6e8
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2227cb0
@ 0x2227bc0


.incbin "./baserom/overlay/overlay_0012.bin", 0x7fa0, 0x2227cb0 - 0x2227bc0


.thumb
branch_2227cb0: @ 2227cb0 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2227cba


.align 2, 0
.thumb
Function_2227cbc: @ 2227cbc :thumb
	push    {r4-r6,lr}
	mov     r1, #0x54
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	cmp     r0, #0x0
	bne     branch_2227cfe
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2223354
	b       branch_2227d1c
@ 0x2227cfe

.thumb
branch_2227cfe: @ 2227cfe :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2223354
.thumb
branch_2227d1c: @ 2227d1c :thumb
	strh    r0, [r4, #0xe]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0xc]
	mov     r0, r6
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, #0xc
	ldsh    r1, [r4, r1]
	sub     r0, r1, r0
	strh    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	str     r0, [r4, #0x38]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r4, #0x3c]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r4, #0x40]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [r4, #0x44]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r4, #0x48]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	str     r0, [r4, #0x4c]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2220280
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22202c0
	str     r0, [r4, #0x10]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r1, [r4, #0x38]
	mov     r2, #0x10
	ldr     r0, [r4, #0x0]
	sub     r2, r2, r1
	bl      Function_2235780
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x28] @ 0x2227ddc, (=#0x2227b4d)
	mov     r2, r4
	bl      Function_22201e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	cmp     r0, #0x0
	beq     branch_2227dca
	mov     r1, #0x1
	b       branch_2227dcc
@ 0x2227dca

.thumb
branch_2227dca: @ 2227dca :thumb
	mov     r1, #0x0
.thumb
branch_2227dcc: @ 2227dcc :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_22234a8
	cmp     r0, #0x1
	bne     branch_2227dda
	mov     r0, #0x1
	str     r0, [r4, #0x50]
.thumb
branch_2227dda: @ 2227dda :thumb
	pop     {r4-r6,pc}
@ 0x2227ddc

.word 0x2227b4d @ 0x2227ddc
.thumb
Function_2227de0: @ 2227de0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x5
	bls     branch_2227df0
	b       branch_2227f2c
@ 0x2227df0

.thumb
branch_2227df0: @ 2227df0 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r6, r1, #1
	lsl     r6, r7, #1
	lsl     r2, r2, #2
	lsl     r0, r3, #3
	lsl     r2, r3, #4
	ldr     r0, [r4, #0x40]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x44]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4c]
	asr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r1, [r4, #0x34]
	ldr     r2, [r4, #0x38]
	ldr     r3, [r4, #0x3c]
	mov     r0, r4
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	add     r0, #0x10
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2225ef0
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	add     r0, #0x10
	bl      Function_22260c8
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4,r5,pc}
@ 0x2227e4c


.incbin "./baserom/overlay/overlay_0012.bin", 0x822c, 0x2227f2c - 0x2227e4c


.thumb
branch_2227f2c: @ 2227f2c :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2227f30

.thumb
Function_2227f30: @ 2227f30 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	mov     r5, r0
	mov     r1, #0x54
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	str     r5, [r4, #0x0]
	bl      Function_2220280
	ldr     r2, [pc, #0x1e8] @ 0x2228134, (=#0x802)
	cmp     r0, r2
	bgt     branch_2227f74
	bge     branch_2227fe0
	mov     r2, #0x42
	lsl     r2, r2, #2
	cmp     r0, r2
	bgt     branch_2227f6c
	sub     r1, r2, #0x6
	cmp     r0, r1
	blt     branch_2227f6a
	beq     branch_2227f8c
	sub     r1, r2, #0x4
	cmp     r0, r1
	beq     branch_2227f8c
	cmp     r0, r2
	beq     branch_2227fb6
.thumb
branch_2227f6a: @ 2227f6a :thumb
	b       branch_2228096
@ 0x2227f6c

.thumb
branch_2227f6c: @ 2227f6c :thumb
	add     r2, #0x8
	cmp     r0, r2
	beq     branch_2227fb6
	b       branch_2228096
@ 0x2227f74

.thumb
branch_2227f74: @ 2227f74 :thumb
	add     r1, r2, #0x6
	cmp     r0, r1
	bgt     branch_2227f84
	bge     branch_222803c
	add     r1, r2, #0x2
	cmp     r0, r1
	beq     branch_2228010
	b       branch_2228096
@ 0x2227f84

.thumb
branch_2227f84: @ 2227f84 :thumb
	add     r2, #0xe
	cmp     r0, r2
	beq     branch_222806c
	b       branch_2228096
@ 0x2227f8c

.thumb
branch_2227f8c: @ 2227f8c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2223354
	strh    r0, [r4, #0xa]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2235998
	ldr     r0, [sp, #0xc]
	str     r0, [r4, #0xc]
	b       branch_2228096
@ 0x2227fb6

.thumb
branch_2227fb6: @ 2227fb6 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2223354
	strh    r0, [r4, #0xa]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2235998
	ldr     r0, [sp, #0xc]
	str     r0, [r4, #0xc]
	b       branch_2228096
@ 0x2227fe0

.thumb
branch_2227fe0: @ 2227fe0 :thumb
	mov     r7, #0xff
	mov     r6, #0x0
.thumb
branch_2227fe4: @ 2227fe4 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232b8
	cmp     r0, #0x0
	beq     branch_2227ff4
	cmp     r0, #0x2
	bne     branch_2227ff8
.thumb
branch_2227ff4: @ 2227ff4 :thumb
	mov     r7, r6
	b       branch_2227ffe
@ 0x2227ff8

.thumb
branch_2227ff8: @ 2227ff8 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x4
	blt     branch_2227fe4
.thumb
branch_2227ffe: @ 2227ffe :thumb
	cmp     r7, #0xff
	bne     branch_2228004
	mov     r7, #0x0
.thumb
branch_2228004: @ 2228004 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	b       branch_2228096
@ 0x2228010

.thumb
branch_2228010: @ 2228010 :thumb
	mov     r7, #0xff
	mov     r6, #0x0
.thumb
branch_2228014: @ 2228014 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232b8
	cmp     r0, #0x4
	bne     branch_2228024
	mov     r7, r6
	b       branch_222802a
@ 0x2228024

.thumb
branch_2228024: @ 2228024 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x4
	blt     branch_2228014
.thumb
branch_222802a: @ 222802a :thumb
	cmp     r7, #0xff
	bne     branch_2228030
	mov     r7, #0x0
.thumb
branch_2228030: @ 2228030 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	b       branch_2228096
@ 0x222803c

.thumb
branch_222803c: @ 222803c :thumb
	mov     r7, #0xff
	mov     r6, #0x0
.thumb
branch_2228040: @ 2228040 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232b8
	cmp     r0, #0x1
	beq     branch_2228050
	cmp     r0, #0x3
	bne     branch_2228054
.thumb
branch_2228050: @ 2228050 :thumb
	mov     r7, r6
	b       branch_222805a
@ 0x2228054

.thumb
branch_2228054: @ 2228054 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x4
	blt     branch_2228040
.thumb
branch_222805a: @ 222805a :thumb
	cmp     r7, #0xff
	bne     branch_2228060
	mov     r7, #0x0
.thumb
branch_2228060: @ 2228060 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	b       branch_2228096
@ 0x222806c

.thumb
branch_222806c: @ 222806c :thumb
	mov     r7, #0xff
	mov     r6, #0x0
.thumb
branch_2228070: @ 2228070 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232b8
	cmp     r0, #0x5
	bne     branch_2228080
	mov     r7, r6
	b       branch_2228086
@ 0x2228080

.thumb
branch_2228080: @ 2228080 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x4
	blt     branch_2228070
.thumb
branch_2228086: @ 2228086 :thumb
	cmp     r7, #0xff
	bne     branch_222808c
	mov     r7, #0x0
.thumb
branch_222808c: @ 222808c :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_22232fc
	str     r0, [r4, #0xc]
.thumb
branch_2228096: @ 2228096 :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_22280a6
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x22280a6

.thumb
branch_22280a6: @ 22280a6 :thumb
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x29
	bl      Function_20080c0
	strh    r0, [r4, #0xa]
	mov     r0, #0xa
	ldsh    r0, [r4, r0]
	mov     r1, #0x1
	add     r0, #0x10
	strh    r0, [r4, #0xa]
	mov     r0, r5
	bl      Function_2220280
	str     r0, [r4, #0x34]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r4, #0x38]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r4, #0x3c]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [r4, #0x40]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r4, #0x44]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	str     r0, [r4, #0x48]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2220280
	str     r0, [r4, #0x4c]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [r4, #0x48]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	asr     r0, r0, #16
	str     r0, [r4, #0x50]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x14] @ 0x2228138, (=#0x2227de1)
	mov     r2, r4
	bl      Function_22201e8
	mov     r1, r4
	bl      Function_2227de0
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x2228134

.word 0x802 @ 0x2228134
.word Function_2227de0+1 @ =0x2227de1, 0x2228138



.thumb
Function_222813c: @ 222813c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x8
	bl      Function_2226454
	cmp     r0, #0x0
	beq     branch_222815e
	mov     r0, r4
	bl      Function_20181c4
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2220220
	pop     {r3-r5,pc}

branch_222815e: @ 222815e :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x2228166


.align 2, 0
.thumb
Function_2228168: @ 2228168 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r1, #0x30
	mov     r7, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r7, [r4, #0x0]
	mov     r0, r7
	bl      Function_22202ec
	str     r0, [r4, #0x4]
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2220280
	mov     r6, r0
	mov     r5, #0x0
.thumb
branch_222818c: @ 222818c :thumb
	mov     r0, #0x1
	lsl     r0, r5
	tst     r0, r6
	beq     branch_22281a2
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_22202c0
	mov     r1, #0x1
	bl      Function_200d810
.thumb
branch_22281a2: @ 22281a2 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_222818c
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2220280
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r5
	bl      Function_2235780
	mov     r0, r7
	mov     r1, #0x2
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r1, #0x5
	bl      Function_2220280
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsl     r1, r5, #16
	lsl     r2, r6, #16
	lsl     r3, r3, #16
	add     r0, #0x8
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2226424
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2228210, (=#0x222813d)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2228210

.word 0x222813d @ 0x2228210
.thumb
Function_2228214: @ 2228214 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r1, #0x1
	bl      Function_2220280
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2220280
	mov     r1, r0
	mov     r0, r6
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2235998
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2228262
	mov     r7, #0x6
.thumb
branch_2228240: @ 2228240 :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r6
	bl      Function_222337c
	cmp     r0, #0x1
	bne     branch_2228250
	cmp     r5, #0x0
	beq     branch_222825a
.thumb
branch_2228250: @ 2228250 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	mov     r2, r5
	bl      Function_2007dec
.thumb
branch_222825a: @ 222825a :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2228240
.thumb
branch_2228262: @ 2228262 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2228266


.align 2, 0
.thumb
Function_2228268: @ 2228268 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	blt     branch_22282b6
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x14]
	bne     branch_2228296
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
	mov     r0, r4
	bl      Function_20181c4
	ldr     r0, [r4, #0x3c]
	mov     r1, r5
	bl      Function_2220220
	pop     {r3-r5,pc}

branch_2228296: @ 2228296 :thumb
	mov     r1, #0x6
	bl      Function_20080c0
	mov     r3, r0
	mov     r2, #0x1
	ldr     r0, [r4, #0x14]
	mov     r1, #0x6
	eor     r2, r3
	bl      Function_2007dec
	ldr     r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}

branch_22282b6: @ 22282b6 :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x22282bc


.thumb
Function_22282bc: @ 22282bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x40
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	str     r5, [r4, #0x3c]
	bl      Function_2220280
	lsl     r0, r0, #1
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	mov     r1, r4
	str     r0, [r4, #0x8]
	mov     r0, r5
	add     r1, #0x20
	bl      Function_223595c
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_22232fc
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x3c]
	ldr     r1, [pc, #0x8] @ 0x2228308, (=#0x2228269)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x2228306

.align 2
.word 0x2228269 @ 0x2228308



.thumb
Function_222830c: @ 222830c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2228324
	cmp     r0, #0x1
	beq     branch_2228358
	b       branch_2228382

branch_2228324: @ 2228324 :thumb
	mov     r0, #0x16
	ldsh    r3, [r4, r0]
	mov     r0, #0x14
	ldsh    r1, [r4, r0]
	mov     r2, #0xc
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldsh    r2, [r4, r2]
	mov     r0, r4
	add     r0, #0x40
	add     r2, r1, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, r4
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	add     r4, #0x24
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4,pc}

branch_2228358: @ 2228358 :thumb
	mov     r0, r4
	add     r0, #0x40
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_2228372
	mov     r0, r4
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x24
	strb    r1, [r0, #0x0]
branch_2228372: @ 2228372 :thumb
	mov     r2, #0x40
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      Function_2007dec
	add     sp, #0x8
	pop     {r4,pc}

branch_2228382: @ 2228382 :thumb
	ldr     r0, [r4, #0x64]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2228394


.thumb
Function_2228394: @ 2228394 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x68
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x64]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	strh    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	mov     r6, #0xff
	mov     r1, r6
	add     r1, #0x9
	cmp     r0, r1
	bgt     branch_22283e0
	add     r1, r6, #0x3
	cmp     r0, r1
	blt     branch_2228436
	beq     branch_22283ea
	add     r1, r6, #0x5
	cmp     r0, r1
	beq     branch_22283f4
	mov     r1, r6
	add     r1, #0x9
	cmp     r0, r1
	beq     branch_2228410
	b       branch_2228436
@ 0x22283e0

.thumb
branch_22283e0: @ 22283e0 :thumb
	mov     r1, r6
	add     r1, #0x11
	cmp     r0, r1
	beq     branch_222841a
	b       branch_2228436
@ 0x22283ea

.thumb
branch_22283ea: @ 22283ea :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r6, r0
	b       branch_222843a
@ 0x22283f4

.thumb
branch_22283f4: @ 22283f4 :thumb
	mov     r0, r5
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_222843a
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r6, r0
	b       branch_222843a
@ 0x2228410

.thumb
branch_2228410: @ 2228410 :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r6, r0
	b       branch_222843a
@ 0x222841a

.thumb
branch_222841a: @ 222841a :thumb
	mov     r0, r5
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_222843a
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r6, r0
	b       branch_222843a
@ 0x2228436

.thumb
branch_2228436: @ 2228436 :thumb
	bl      Function_2022974
.thumb
branch_222843a: @ 222843a :thumb
	cmp     r6, #0xff
	bne     branch_2228446
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4-r6,pc}
@ 0x2228446

.thumb
branch_2228446: @ 2228446 :thumb
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x24
	bl      Function_223595c
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232fc
	mov     r1, r4
	add     r1, #0x14
	str     r0, [r4, #0x18]
	bl      Function_2235918
	mov     r0, r5
	mov     r1, r6
	bl      Function_2225964
	cmp     r0, #0x0
	bgt     branch_2228478
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	sub     r0, #0xd
	mul     r0, r1
	strh    r0, [r4, #0xc]
.thumb
branch_2228478: @ 2228478 :thumb
	ldr     r0, [r4, #0x64]
	ldr     r1, [pc, #0x8] @ 0x2228484, (=#0x222830d)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x2228484

.word 0x222830d @ 0x2228484
.thumb
Function_2228488: @ 2228488 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22284a0
	cmp     r0, #0x1
	beq     branch_22284e2
	b       branch_222850c
@ 0x22284a0

.thumb
branch_22284a0: @ 22284a0 :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_22284b0
	mov     r0, #0xff
	add     r4, #0x20
	add     sp, #0x8
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x22284b0

.thumb
branch_22284b0: @ 22284b0 :thumb
	mov     r0, #0x12
	ldsh    r3, [r4, r0]
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	mov     r2, #0x64
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldsh    r2, [r4, r2]
	mov     r0, r4
	add     r0, #0x3c
	add     r2, r1, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x20
	strb    r1, [r0, #0x0]
.thumb
branch_22284e2: @ 22284e2 :thumb
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_22284fc
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x20
	strb    r1, [r0, #0x0]
.thumb
branch_22284fc: @ 22284fc :thumb
	mov     r2, #0x3c
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_2007dec
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222850c

.thumb
branch_222850c: @ 222850c :thumb
	ldr     r0, [r4, #0x60]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222851e


.align 2, 0


.thumb
Function_2228520: @ 2228520 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x68
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x60]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	mov     r1, r4
	add     r1, #0x64
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	mov     r1, r4
	mov     r7, r0
	mov     r0, r5
	add     r1, #0x20
	bl      Function_223595c
	mov     r6, #0xff
	mov     r0, r6
	add     r0, #0x9
	cmp     r7, r0
	bgt     branch_222857c
	add     r0, r6, #0x3
	cmp     r7, r0
	blt     branch_22285d2
	beq     branch_2228586
	add     r0, r6, #0x5
	cmp     r7, r0
	beq     branch_2228590
	mov     r0, r6
	add     r0, #0x9
	cmp     r7, r0
	beq     branch_22285ac
	b       branch_22285d2
@ 0x222857c

.thumb
branch_222857c: @ 222857c :thumb
	mov     r0, r6
	add     r0, #0x11
	cmp     r7, r0
	beq     branch_22285b6
	b       branch_22285d2
@ 0x2228586

.thumb
branch_2228586: @ 2228586 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r6, r0
	b       branch_22285d6
@ 0x2228590

.thumb
branch_2228590: @ 2228590 :thumb
	mov     r0, r5
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_22285d6
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r6, r0
	b       branch_22285d6
@ 0x22285ac

.thumb
branch_22285ac: @ 22285ac :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r6, r0
	b       branch_22285d6
@ 0x22285b6

.thumb
branch_22285b6: @ 22285b6 :thumb
	mov     r0, r5
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_22285d6
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r6, r0
	b       branch_22285d6
@ 0x22285d2

.thumb
branch_22285d2: @ 22285d2 :thumb
	bl      Function_2022974
.thumb
branch_22285d6: @ 22285d6 :thumb
	cmp     r6, #0xff
	bne     branch_22285e2
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x22285e2

.thumb
branch_22285e2: @ 22285e2 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232fc
	mov     r1, r4
	add     r1, #0x10
	str     r0, [r4, #0x14]
	bl      Function_2235918
	mov     r0, r5
	mov     r1, r6
	bl      Function_2225964
	cmp     r0, #0x0
	bgt     branch_2228610
	mov     r0, #0x64
	ldsh    r1, [r4, r0]
	sub     r0, #0x65
	mov     r2, r1
	mul     r2, r0
	mov     r0, r4
	add     r0, #0x64
	strh    r2, [r0, #0x0]
.thumb
branch_2228610: @ 2228610 :thumb
	mov     r0, r5
	bl      Function_221fdd4
	ldr     r0, [r4, #0x60]
	ldr     r1, [pc, #0xc] @ 0x2228628, (=#0x2228489)
	mov     r2, r4
	bl      Function_22201e8
	mov     r1, r4
	bl      Function_2228488
	pop     {r3-r7,pc}
@ 0x2228628

.word Function_2228488+1 @ =0x2228489, 0x2228628



.thumb
Function_222862c: @ 222862c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bls     branch_222863c
	b       branch_22287ba
@ 0x222863c

.thumb
branch_222863c: @ 222863c :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r5, #1
	lsl     r2, r6, #2
	lsl     r0, r0, #4
	mov     r0, r4
	add     r0, #0x14
	bl      Function_2225eb8
	cmp     r0, #0x1
	bne     branch_22286a8
	mov     r0, r4
	add     r0, #0x38
	bl      Function_2226138
	mov     r2, #0x14
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	mov     r1, #0xc
	bl      Function_2007dec
	mov     r2, #0x16
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	mov     r1, #0xd
	bl      Function_2007dec
	mov     r2, #0x38
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_2008274
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x28]
	bl      Function_2225fd4
	mov     r2, #0x2
	mov     r3, r0
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	add     r2, r2, r3
	bl      Function_2007dec
	add     sp, #0x4
	pop     {r3-r6,pc}

branch_22286a8: @ 22286a8 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x22286b2


.incbin "./baserom/overlay/overlay_0012.bin", 0x8a92, 0x22287ba - 0x22286b2


.thumb
branch_22287ba: @ 22287ba :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22287cc


.thumb
Function_22287cc: @ 22287cc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x5c
	bl      Function_2018144
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x0]
	str     r5, [r4, #0xc]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strb    r0, [r4, #0xa]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x2]
	ldr     r0, [r4, #0xc]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2223354
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x64
	lsl     r3, r6, #16
	add     r0, #0x14
	mov     r2, r1
	asr     r3, r3, #16
	bl      Function_2225e68
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x38
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2226108
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0xc] @ 0x2228864, (=#0x222862d)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2228862

.align 2
.word 0x222862d @ 0x2228864


.thumb
Function_2228868: @ 2228868 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bls     branch_2228878
	b       branch_22289f8
@ 0x2228878

.thumb
branch_2228878: @ 2228878 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r5, #1
	lsl     r4, r6, #2
	lsl     r2, r0, #4
	mov     r0, r4
	add     r0, #0x20
	bl      Function_2225f6c
	cmp     r0, #0x1
	bne     branch_22288e4
	mov     r0, r4
	add     r0, #0x44
	bl      Function_2226138
	mov     r2, #0x20
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xc
	bl      Function_2007dec
	mov     r2, #0x22
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xd
	bl      Function_2007dec
	mov     r2, #0x44
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_2008274
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x34]
	bl      Function_2225fd4
	mov     r2, #0x2
	mov     r3, r0
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	add     r2, r2, r3
	bl      Function_2007dec
	add     sp, #0xc
	pop     {r3,r4,pc}

branch_22288e4: @ 22288e4 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3,r4,pc}
@ 0x22288ee


.incbin "./baserom/overlay/overlay_0012.bin", 0x8cce, 0x22289f8 - 0x22288ee


.thumb
branch_22289f8: @ 22289f8 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2228a0a


.align 2, 0
.thumb
Function_2228a0c: @ 2228a0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x68
	bl      Function_2018144
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x0]
	str     r5, [r4, #0x18]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x18]
	bl      Function_22232fc
	str     r0, [r4, #0x1c]
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	strb    r0, [r4, #0xa]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x18]
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x0
	add     r3, r4, #0x2
	bl      Function_2225898
	ldr     r0, [r4, #0x18]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x18]
	bl      Function_2223354
	str     r0, [r4, #0x4]
	mov     r1, #0x2
	ldsh    r1, [r4, r1]
	add     r0, r1, r0
	strh    r0, [r4, #0x2]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	asr     r0, r0, #16
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #16
	asr     r7, r0, #16
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	asr     r0, r0, #16
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #16
	asr     r6, r0, #16
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r6, [sp, #0x0]
	mov     r1, #0x64
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r3, [sp, #0xc]
	add     r0, #0x20
	mov     r2, r7
	bl      Function_2225ef0
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x44
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2226108
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0xc] @ 0x2228b0c, (=#0x2228869)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2228b0a

.align 2
.word 0x2228869 @ 0x2228b0c



.thumb
Function_2228b10: @ 2228b10 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x1
	lsl     r2, r2, #26
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2228b3c, (=#0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2222664
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}
@ 0x2228b3a

.align 2
.word 0xffff1fff @ 0x2228b3c



.thumb
Function_2228b40: @ 2228b40 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x28
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r0, r5
	add     r1, r4, #0x4
	bl      Function_223595c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2222590
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      Function_200d810
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r1, [pc, #0x40] @ 0x2228bc0, (=#0x3f99999a)
	ldr     r0, [r4, #0x24]
	mov     r2, r1
	bl      Function_200d6e8
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x34] @ 0x2228bc4, (=#0xffff1fff)
	and     r2, r1
	lsr     r1, r0, #11
	orr     r1, r2
	str     r1, [r0, #0x0]
	add     r0, #0x4a
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x3f
	bic     r2, r1
	mov     r1, #0x1b
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x20] @ 0x2228bc8, (=#0xffffc0ff)
	and     r2, r1
	mov     r1, #0x7
	lsl     r1, r1, #8
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0x14] @ 0x2228bcc, (=#0x2228b11)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x2228bbe

.align 2
.word 0x3f99999a @ 0x2228bc0
.word 0xffff1fff @ 0x2228bc4
.word 0xffffc0ff @ 0x2228bc8
.word 0x2228b11 @ 0x2228bcc



.thumb
Function_2228bd0: @ 2228bd0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2228be8
	cmp     r0, #0x1
	beq     branch_2228c24
	b       branch_2228c5a
@ 0x2228be8

.thumb
branch_2228be8: @ 2228be8 :thumb
	mov     r0, #0x12
	ldsh    r3, [r4, r0]
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	mov     r0, #0x66
	ldsh    r0, [r4, r0]
	mov     r2, #0x64
	add     r0, r3, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldsh    r2, [r4, r2]
	mov     r0, r4
	add     r0, #0x3c
	add     r2, r1, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x20
	strb    r1, [r0, #0x0]
.thumb
branch_2228c24: @ 2228c24 :thumb
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_2228c3e
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x20
	strb    r1, [r0, #0x0]
.thumb
branch_2228c3e: @ 2228c3e :thumb
	mov     r2, #0x3c
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_2007dec
	mov     r2, #0x3e
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_2007dec
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2228c5a

.thumb
branch_2228c5a: @ 2228c5a :thumb
	ldr     r0, [r4, #0x60]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2228c6c

.thumb
Function_2228c6c: @ 2228c6c :thumb
	push    {r3-r7,lr}
	mov     r1, #0x68
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x60]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	mov     r1, r4
	add     r1, #0x64
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	mov     r1, r4
	add     r1, #0x66
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	mov     r1, r4
	mov     r7, r0
	mov     r0, r5
	add     r1, #0x20
	bl      Function_223595c
	mov     r6, #0xff
	mov     r0, r6
	add     r0, #0x9
	cmp     r7, r0
	bgt     branch_2228cd6
	add     r0, r6, #0x3
	cmp     r7, r0
	blt     branch_2228d2c
	beq     branch_2228ce0
	add     r0, r6, #0x5
	cmp     r7, r0
	beq     branch_2228cea
	mov     r0, r6
	add     r0, #0x9
	cmp     r7, r0
	beq     branch_2228d06
	b       branch_2228d2c
@ 0x2228cd6

.thumb
branch_2228cd6: @ 2228cd6 :thumb
	mov     r0, r6
	add     r0, #0x11
	cmp     r7, r0
	beq     branch_2228d10
	b       branch_2228d2c
@ 0x2228ce0

.thumb
branch_2228ce0: @ 2228ce0 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r6, r0
	b       branch_2228d30
@ 0x2228cea

.thumb
branch_2228cea: @ 2228cea :thumb
	mov     r0, r5
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_2228d30
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r6, r0
	b       branch_2228d30
@ 0x2228d06

.thumb
branch_2228d06: @ 2228d06 :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r6, r0
	b       branch_2228d30
@ 0x2228d10

.thumb
branch_2228d10: @ 2228d10 :thumb
	mov     r0, r5
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_2228d30
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r6, r0
	b       branch_2228d30
@ 0x2228d2c

.thumb
branch_2228d2c: @ 2228d2c :thumb
	bl      Function_2022974
.thumb
branch_2228d30: @ 2228d30 :thumb
	cmp     r6, #0xff
	bne     branch_2228d3c
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x2228d3c

.thumb
branch_2228d3c: @ 2228d3c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232fc
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_2228d52
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x2228d52

.thumb
branch_2228d52: @ 2228d52 :thumb
	mov     r1, r4
	add     r1, #0x10
	bl      Function_2235918
	mov     r0, r5
	mov     r1, r6
	bl      Function_2225964
	cmp     r0, #0x0
	bgt     branch_2228d86
	mov     r0, #0x64
	ldsh    r1, [r4, r0]
	sub     r0, #0x65
	mov     r2, r1
	mul     r2, r0
	mov     r0, r4
	add     r0, #0x64
	strh    r2, [r0, #0x0]
	mov     r0, #0x66
	ldsh    r1, [r4, r0]
	sub     r0, #0x67
	mov     r2, r1
	mul     r2, r0
	mov     r0, r4
	add     r0, #0x66
	strh    r2, [r0, #0x0]
.thumb
branch_2228d86: @ 2228d86 :thumb
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2228da0
	mov     r0, #0x66
	ldsh    r1, [r4, r0]
	sub     r0, #0x67
	mov     r2, r1
	mul     r2, r0
	mov     r0, r4
	add     r0, #0x66
	strh    r2, [r0, #0x0]
.thumb
branch_2228da0: @ 2228da0 :thumb
	ldr     r0, [r4, #0x60]
	ldr     r1, [pc, #0x10] @ 0x2228db4, (=#0x2228bd1)
	mov     r2, r4
	bl      Function_22201e8
	mov     r1, r4
	bl      Function_2228bd0
	pop     {r3-r7,pc}
@ 0x2228db2

.align 2
.word Function_2228bd0+1 @ =0x2228bd1, 0x2228db4



.thumb
Function_2228db8: @ 2228db8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x20
	mov     r2, #0x22
	mov     r5, r0
	mov     r0, r4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r3, [r4, #0x24]
	add     r0, #0x30
	bl      Function_2225ba0
	cmp     r0, #0x0
	bne     branch_2228dfc
	mov     r2, #0x20
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_2007dec
	mov     r2, #0x22
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	sub     r2, #0x8
	bl      Function_2007dec
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_2228dfc: @ 2228dfc :thumb
	pop     {r3-r5,pc}
@ 0x2228dfe


.align 2, 0
.thumb
Function_2228e00: @ 2228e00 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r1, #0x54
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r2, r4
	mov     r1, r0
	mov     r0, r5
	add     r2, #0x1c
	add     r3, sp, #0x0
	bl      Function_2235998
	mov     r0, #0x22
	ldsh    r0, [r4, r0]
	mov     r1, #0x1
	add     r0, #0x8
	strh    r0, [r4, #0x22]
	mov     r0, r5
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x30
	mov     r1, r6
	bl      Function_22263a4
	ldr     r1, [r4, #0x3c]
	mov     r2, r4
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [r4, #0x3c]
	ldr     r1, [r4, #0x44]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [r4, #0x44]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2228e74, (=#0x2228db9)
	bl      Function_22201e8
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2228e74

.word 0x2228db9 @ 0x2228e74



.thumb
Function_2228e78: @ 2228e78 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2228eb0
	mov     r0, r4
	add     r0, #0x30
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_2228e96
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_2228e96: @ 2228e96 :thumb
	mov     r2, #0x30
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_2007dec
	mov     r2, #0x32
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_2007dec
	pop     {r4,pc}

branch_2228eb0: @ 2228eb0 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x2228ec0


.thumb
Function_2228ec0: @ 2228ec0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r1, #0x5c
	mov     r6, r0
	bl      Function_2235e50
	mov     r5, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_223595c
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2220280
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2220280
	mov     r7, r0
	cmp     r4, #0x8
	bgt     branch_2228efe
	cmp     r4, #0x2
	blt     branch_2228f3c
	beq     branch_2228f04
	cmp     r4, #0x4
	beq     branch_2228f0e
	cmp     r4, #0x8
	beq     branch_2228f20
	b       branch_2228f3c
@ 0x2228efe

.thumb
branch_2228efe: @ 2228efe :thumb
	cmp     r4, #0x10
	beq     branch_2228f2a
	b       branch_2228f3c
@ 0x2228f04

.thumb
branch_2228f04: @ 2228f04 :thumb
	mov     r0, r6
	bl      Function_2220240
	str     r0, [sp, #0x8]
	b       branch_2228f40
@ 0x2228f0e

.thumb
branch_2228f0e: @ 2228f0e :thumb
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_22352ac
	str     r0, [sp, #0x8]
	b       branch_2228f40
@ 0x2228f20

.thumb
branch_2228f20: @ 2228f20 :thumb
	mov     r0, r6
	bl      Function_2220248
	str     r0, [sp, #0x8]
	b       branch_2228f40
@ 0x2228f2a

.thumb
branch_2228f2a: @ 2228f2a :thumb
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r6
	bl      Function_22352ac
	str     r0, [sp, #0x8]
	b       branch_2228f40
@ 0x2228f3c

.thumb
branch_2228f3c: @ 2228f3c :thumb
	bl      Function_2022974
.thumb
branch_2228f40: @ 2228f40 :thumb
	mov     r2, r5
	ldr     r1, [sp, #0x8]
	mov     r0, r6
	add     r2, #0x54
	bl      Function_22353ac
	mov     r2, r5
	mov     r0, r6
	mov     r1, r4
	add     r2, #0x1c
	add     r3, sp, #0xc
	bl      Function_2235998
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x58
	strh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x5a
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x8]
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_2228f7a
	mov     r1, #0x4f
	mvn     r1, r1
	b       branch_2228f7e
@ 0x2228f7a

.thumb
branch_2228f7a: @ 2228f7a :thumb
	mov     r1, #0x15
	lsl     r1, r1, #4
.thumb
branch_2228f7e: @ 2228f7e :thumb
	mov     r0, r5
	add     r0, #0x58
	strh    r1, [r0, #0x0]
	mov     r0, #0x22
	ldsh    r3, [r5, r0]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x20
	mov     r2, #0x58
	mov     r0, r5
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	add     r0, #0x30
	bl      Function_2225bc8
	ldr     r0, [r5, #0x4]
	ldr     r1, [pc, #0xc] @ 0x2228fb0, (=#0x2228e79)
	mov     r2, r5
	bl      Function_22201e8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2228fae

.align 2
.word 0x2228e79 @ 0x2228fb0



.thumb
Function_2228fb4: @ 2228fb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r1, #0x5c
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	mov     r7, r0
	cmp     r6, #0x8
	bgt     branch_2228ffc
	cmp     r6, #0x2
	blt     branch_222903a
	beq     branch_2229002
	cmp     r6, #0x4
	beq     branch_222900c
	cmp     r6, #0x8
	beq     branch_222901e
	b       branch_222903a
@ 0x2228ffc

.thumb
branch_2228ffc: @ 2228ffc :thumb
	cmp     r6, #0x10
	beq     branch_2229028
	b       branch_222903a
@ 0x2229002

.thumb
branch_2229002: @ 2229002 :thumb
	mov     r0, r5
	bl      Function_2220240
	str     r0, [sp, #0x8]
	b       branch_222903e
@ 0x222900c

.thumb
branch_222900c: @ 222900c :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	str     r0, [sp, #0x8]
	b       branch_222903e
@ 0x222901e

.thumb
branch_222901e: @ 222901e :thumb
	mov     r0, r5
	bl      Function_2220248
	str     r0, [sp, #0x8]
	b       branch_222903e
@ 0x2229028

.thumb
branch_2229028: @ 2229028 :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	str     r0, [sp, #0x8]
	b       branch_222903e
@ 0x222903a

.thumb
branch_222903a: @ 222903a :thumb
	bl      Function_2022974
.thumb
branch_222903e: @ 222903e :thumb
	mov     r2, r4
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	add     r2, #0x54
	bl      Function_22353ac
	mov     r2, r4
	mov     r0, r5
	mov     r1, r6
	add     r2, #0x1c
	add     r3, sp, #0x10
	bl      Function_2235998
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x58
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x5a
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x8]
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_2229078
	mov     r1, #0x4f
	mvn     r1, r1
	b       branch_222907c
@ 0x2229078

.thumb
branch_2229078: @ 2229078 :thumb
	mov     r1, #0x15
	lsl     r1, r1, #4
.thumb
branch_222907c: @ 222907c :thumb
	mov     r0, r4
	add     r0, #0x58
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_22290a6
	mov     r0, #0x22
	ldsh    r3, [r4, r0]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x20
	mov     r2, #0x58
	mov     r0, r4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	add     r0, #0x30
	bl      Function_2225bc8
	b       branch_22290ca
@ 0x22290a6

.thumb
branch_22290a6: @ 22290a6 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_22258e0
	mov     r2, r0
	mov     r0, #0x22
	ldsh    r3, [r4, r0]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x58
	mov     r0, r4
	ldsh    r1, [r4, r1]
	add     r0, #0x30
	bl      Function_2225bc8
.thumb
branch_22290ca: @ 22290ca :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x22290d8, (=#0x2228e79)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22290d8

.word 0x2228e79 @ 0x22290d8
.thumb
Function_22290dc: @ 22290dc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_2220280
	mov     r4, r0
	cmp     r4, #0x8
	bgt     branch_22290fe
	cmp     r4, #0x2
	blt     branch_222913c
	beq     branch_2229104
	cmp     r4, #0x4
	beq     branch_222910e
	cmp     r4, #0x8
	beq     branch_2229120
	b       branch_222913c
@ 0x22290fe

.thumb
branch_22290fe: @ 22290fe :thumb
	cmp     r4, #0x10
	beq     branch_222912a
	b       branch_222913c
@ 0x2229104

.thumb
branch_2229104: @ 2229104 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r6, r0
	b       branch_2229140
@ 0x222910e

.thumb
branch_222910e: @ 222910e :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r6, r0
	b       branch_2229140
@ 0x2229120

.thumb
branch_2229120: @ 2229120 :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r6, r0
	b       branch_2229140
@ 0x222912a

.thumb
branch_222912a: @ 222912a :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r6, r0
	b       branch_2229140
@ 0x222913c

.thumb
branch_222913c: @ 222913c :thumb
	bl      Function_2022974
.thumb
branch_2229140: @ 2229140 :thumb
	mov     r0, r5
	mov     r1, r6
	add     r2, sp, #0x0
	bl      Function_22353ac
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2235998
	mov     r0, r5
	mov     r1, r6
	bl      Function_2223354
	lsl     r0, r0, #16
	asr     r4, r0, #16
	mov     r1, #0x0
	add     r2, sp, #0x0
	ldsh    r2, [r2, r1]
	ldr     r0, [sp, #0x10]
	bl      Function_2007dec
	add     r3, sp, #0x0
	mov     r2, #0x2
	ldsh    r2, [r3, r2]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	add     r2, r2, r4
	bl      Function_2007dec
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x2229182


.align 2, 0
.thumb
Function_2229184: @ 2229184 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x30]
	bl      Function_2226848
	cmp     r0, #0x0
	bne     branch_22291a8
	ldr     r0, [r4, #0x30]
	bl      Function_2226858
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_22291a8: @ 22291a8 :thumb
	pop     {r3-r5,pc}
@ 0x22291aa


.align 2, 0
.thumb
Function_22291ac: @ 22291ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r1, #0x34
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [sp, #0x1c]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [sp, #0x20]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [sp, #0x24]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	mov     r2, r4
	str     r0, [sp, #0x28]
	mov     r0, r5
	mov     r1, r7
	add     r2, #0x1c
	add     r3, sp, #0x2c
	bl      Function_2235d74
	ldr     r0, [r4, #0x28]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r7, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	lsl     r0, r6, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	lsl     r3, r7, #20
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x24]
	lsr     r3, r3, #16
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x18] @ 0x2229270, (=#0x44c)
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x18]
	bl      Function_2226870
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x10] @ 0x2229274, (=#0x2229185)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x222926e

.align 2
.word 0x44c @ 0x2229270
.word 0x2229185 @ 0x2229274


.thumb
Function_2229278: @ 2229278 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_22292ec
	ldr     r0, [r4, #0x4c]
	add     r1, r0, #0x1
	str     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x44]
	cmp     r1, r0
	blt     branch_2229300
	mov     r1, #0x0
	str     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x48]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x54]
	bne     branch_22292b0
	cmp     r0, #0x0
	bge     branch_22292a2
	str     r1, [r4, #0x54]
branch_22292a2: @ 22292a2 :thumb
	ldr     r0, [r4, #0x54]
	cmp     r0, #0x0
	bne     branch_22292c4
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_22292c4

branch_22292b0: @ 22292b0 :thumb
	cmp     r0, #0x50
	ble     branch_22292b8
	mov     r0, #0x50
	str     r0, [r4, #0x54]
branch_22292b8: @ 22292b8 :thumb
	ldr     r0, [r4, #0x54]
	cmp     r0, #0x50
	bne     branch_22292c4
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_22292c4: @ 22292c4 :thumb
	ldr     r0, [r4, #0x24]
	ldr     r2, [r4, #0x54]
	mov     r1, #0x12
	bl      Function_2007dec
	ldr     r0, [r4, #0x24]
	ldr     r2, [r4, #0x50]
	mov     r1, #0x1
	bl      Function_2007dec
	mov     r0, #0x42
	ldsh    r1, [r4, r0]
	ldr     r2, [r4, #0x50]
	sub     r1, r2, r1
	str     r1, [r4, #0x50]
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x54]
	pop     {r3-r5,pc}

branch_22292ec: @ 22292ec :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_2226b84
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_2229300: @ 2229300 :thumb
	pop     {r3-r5,pc}
@ 0x2229302


.align 2, 0
.thumb
Function_2229304: @ 2229304 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0x58
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r6, r0
	mov     r2, r4
	mov     r0, r5
	mov     r1, r6
	add     r2, #0x1c
	add     r3, sp, #0x4
	bl      Function_2235998
	cmp     r6, #0x8
	bgt     branch_2229346
	cmp     r6, #0x2
	blt     branch_2229384
	beq     branch_222934c
	cmp     r6, #0x4
	beq     branch_2229356
	cmp     r6, #0x8
	beq     branch_2229368
	b       branch_2229384
@ 0x2229346

.thumb
branch_2229346: @ 2229346 :thumb
	cmp     r6, #0x10
	beq     branch_2229372
	b       branch_2229384
@ 0x222934c

.thumb
branch_222934c: @ 222934c :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r7, r0
	b       branch_2229388
@ 0x2229356

.thumb
branch_2229356: @ 2229356 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r7, r0
	b       branch_2229388
@ 0x2229368

.thumb
branch_2229368: @ 2229368 :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r7, r0
	b       branch_2229388
@ 0x2229372

.thumb
branch_2229372: @ 2229372 :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r7, r0
	b       branch_2229388
@ 0x2229384

.thumb
branch_2229384: @ 2229384 :thumb
	bl      Function_2022974
.thumb
branch_2229388: @ 2229388 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	str     r0, [r4, #0x48]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x24]
	bne     branch_22293dc
	mov     r1, #0x1
	bl      Function_20080c0
	str     r0, [r4, #0x50]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x12
	bl      Function_20080c0
	mov     r1, #0x50
	sub     r0, r1, r0
	str     r0, [r4, #0x54]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	mov     r1, r4
	add     r1, #0x40
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	mov     r1, r4
	add     r1, #0x42
	strh    r0, [r1, #0x0]
	mov     r0, #0x42
	ldsh    r1, [r4, r0]
	sub     r0, #0x43
	mov     r2, r1
	mul     r2, r0
	mov     r0, r4
	add     r0, #0x42
	strh    r2, [r0, #0x0]
	b       branch_222940a
@ 0x22293dc

.thumb
branch_22293dc: @ 22293dc :thumb
	mov     r1, #0x1
	bl      Function_20080c0
	str     r0, [r4, #0x50]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x12
	bl      Function_20080c0
	str     r0, [r4, #0x54]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	mov     r1, r4
	add     r1, #0x40
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	mov     r1, r4
	add     r1, #0x42
	strh    r0, [r1, #0x0]
.thumb
branch_222940a: @ 222940a :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	str     r0, [r4, #0x34]
	mov     r0, #0x50
	str     r0, [r4, #0x38]
	mov     r0, r5
	mov     r1, r7
	bl      Function_2223354
	mov     r1, #0x50
	sub     r0, r1, r0
	str     r0, [r4, #0x3c]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [r4, #0x44]
	mov     r0, #0x0
	str     r0, [r4, #0x4c]
	ldr     r0, [r4, #0x3c]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x24]
	ldr     r1, [r4, #0x30]
	ldr     r2, [r4, #0x34]
	ldr     r3, [r4, #0x38]
	bl      Function_20086d4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0xc] @ 0x2229450, (=#0x2229279)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222944e

.align 2
.word 0x2229279 @ 0x2229450



.thumb
Function_2229454: @ 2229454 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	cmp     r1, #0x8
	bgt     branch_222946e
	cmp     r1, #0x2
	blt     branch_22294a4
	beq     branch_2229474
	cmp     r1, #0x4
	beq     branch_222947c
	cmp     r1, #0x8
	beq     branch_222948c
	b       branch_22294a4
@ 0x222946e

.thumb
branch_222946e: @ 222946e :thumb
	cmp     r1, #0x10
	beq     branch_2229494
	b       branch_22294a4
@ 0x2229474

.thumb
branch_2229474: @ 2229474 :thumb
	bl      Function_2220240
	mov     r4, r0
	b       branch_22294a8
@ 0x222947c

.thumb
branch_222947c: @ 222947c :thumb
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r4, r0
	b       branch_22294a8
@ 0x222948c

.thumb
branch_222948c: @ 222948c :thumb
	bl      Function_2220248
	mov     r4, r0
	b       branch_22294a8
@ 0x2229494

.thumb
branch_2229494: @ 2229494 :thumb
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_22352ac
	mov     r4, r0
	b       branch_22294a8
@ 0x22294a4

.thumb
branch_22294a4: @ 22294a4 :thumb
	bl      Function_2022974
.thumb
branch_22294a8: @ 22294a8 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22294ac


.thumb
Function_22294ac: @ 22294ac :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22294be
	cmp     r0, #0x1
	beq     branch_2229504
	pop     {r3-r5,pc}
@ 0x22294be

.thumb
branch_22294be: @ 22294be :thumb
	ldr     r0, [r4, #0x24]
	add     r1, r0, #0x1
	str     r1, [r4, #0x24]
	ldr     r0, [r4, #0x20]
	cmp     r1, r0
	blt     branch_2229536
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	mov     r0, #0x1c
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x44]
	add     r2, r1, r0
	str     r2, [r4, #0x44]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_2007dec
	mov     r0, #0x1c
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x3c]
	sub     r1, r1, r0
	str     r1, [r4, #0x3c]
	ldr     r0, [r4, #0x40]
	cmp     r1, r0
	ble     branch_22294f8
	str     r0, [r4, #0x3c]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
.thumb
branch_22294f8: @ 22294f8 :thumb
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x3c]
	mov     r1, #0x12
	bl      Function_2007dec
	pop     {r3-r5,pc}
@ 0x2229504

.thumb
branch_2229504: @ 2229504 :thumb
	ldr     r0, [r4, #0x30]
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x48]
	mov     r1, #0x1
	bl      Function_2007dec
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x40]
	mov     r1, #0x12
	bl      Function_2007dec
	ldr     r0, [r4, #0x30]
	bl      Function_2226b84
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
.thumb
branch_2229536: @ 2229536 :thumb
	pop     {r3-r5,pc}
@ 0x2229538

.thumb
Function_2229538: @ 2229538 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222954a
	cmp     r0, #0x1
	beq     branch_222958e
	pop     {r3-r5,pc}
@ 0x222954a

.thumb
branch_222954a: @ 222954a :thumb
	ldr     r0, [r4, #0x24]
	add     r1, r0, #0x1
	str     r1, [r4, #0x24]
	ldr     r0, [r4, #0x20]
	cmp     r1, r0
	blt     branch_22295c0
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	mov     r0, #0x1c
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x44]
	add     r2, r1, r0
	str     r2, [r4, #0x44]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_2007dec
	mov     r0, #0x1c
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x3c]
	sub     r0, r1, r0
	str     r0, [r4, #0x3c]
	bpl     branch_2229582
	mov     r0, #0x0
	str     r0, [r4, #0x3c]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
.thumb
branch_2229582: @ 2229582 :thumb
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x3c]
	mov     r1, #0x12
	bl      Function_2007dec
	pop     {r3-r5,pc}
@ 0x222958e

.thumb
branch_222958e: @ 222958e :thumb
	ldr     r0, [r4, #0x30]
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x48]
	mov     r1, #0x1
	bl      Function_2007dec
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x40]
	mov     r1, #0x12
	bl      Function_2007dec
	ldr     r0, [r4, #0x30]
	bl      Function_2226b84
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
.thumb
branch_22295c0: @ 22295c0 :thumb
	pop     {r3-r5,pc}
@ 0x22295c2


.align 2, 0
.thumb
Function_22295c4: @ 22295c4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22295d6
	cmp     r0, #0x1
	beq     branch_2229618
	pop     {r3-r5,pc}

branch_22295d6: @ 22295d6 :thumb
	ldr     r0, [r4, #0x24]
	add     r1, r0, #0x1
	str     r1, [r4, #0x24]
	ldr     r0, [r4, #0x20]
	cmp     r1, r0
	blt     branch_2229636
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	mov     r1, #0x1c
	ldsh    r2, [r4, r1]
	ldr     r3, [r4, #0x3c]
	sub     r2, r3, r2
	str     r2, [r4, #0x3c]
	ldsh    r1, [r4, r1]
	ldr     r2, [r4, #0x40]
	add     r1, r2, r1
	str     r1, [r4, #0x40]
	ldr     r1, [r4, #0x3c]
	cmp     r1, #0x0
	bge     branch_2229606
	str     r0, [r4, #0x3c]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_2229606: @ 2229606 :thumb
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x3c]
	mov     r3, #0x50
	bl      Function_20086d4
	pop     {r3-r5,pc}

branch_2229618: @ 2229618 :thumb
	ldr     r0, [r4, #0x30]
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x30]
	bl      Function_2226b84
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_2229636: @ 2229636 :thumb
	pop     {r3-r5,pc}
@ 0x2229638


.thumb
Function_2229638: @ 2229638 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r1, #0x50
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	strh    r0, [r4, #0x1c]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r6, r0
	mov     r2, r4
	mov     r0, r5
	mov     r1, r6
	add     r2, #0x28
	add     r3, sp, #0x4
	bl      Function_2235998
	mov     r0, r5
	mov     r1, r6
	bl      Function_2229454
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	cmp     r0, #0x0
	beq     branch_22296ba
	mov     r0, r5
	mov     r1, r6
	bl      Function_2223354
	mov     r3, #0x50
	sub     r0, r3, r0
	str     r0, [r4, #0x3c]
	mov     r1, #0x0
	str     r1, [r4, #0x40]
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x3c]
	bl      Function_20086d4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x7c] @ 0x222972c, (=#0x22295c5)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22296ba

.thumb
branch_22296ba: @ 22296ba :thumb
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_20080c0
	str     r0, [r4, #0x44]
	str     r0, [r4, #0x48]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2223354
	mov     r3, #0x50
	sub     r0, r3, r0
	str     r0, [r4, #0x3c]
	str     r0, [r4, #0x40]
	mov     r0, #0x1c
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_22296fa
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	mov     r2, r1
	bl      Function_20086d4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x40] @ 0x2229730, (=#0x2229539)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22296fa

.thumb
branch_22296fa: @ 22296fa :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x3c]
	ldr     r1, [r4, #0x44]
	ldr     r0, [r4, #0x40]
	add     r2, r1, r0
	str     r2, [r4, #0x44]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_2007dec
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	mov     r2, r1
	mov     r3, #0x50
	bl      Function_20086d4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x10] @ 0x2229734, (=#0x22294ad)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x222972c

.word 0x22295c5 @ 0x222972c
.word 0x2229539 @ 0x2229730
.word 0x22294ad @ 0x2229734



.thumb
Function_2229738: @ 2229738 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222974c
	cmp     r0, #0x1
	beq     branch_222976c
	b       branch_22297fc

branch_222974c: @ 222974c :thumb
	ldr     r0, [r4, #0x10]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	mov     r0, r4
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r3, [r4, #0xc]
	add     r0, #0xd4
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2226108
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_222976c: @ 222976c :thumb
	mov     r0, r4
	add     r0, #0xd4
	bl      Function_2226138
	cmp     r0, #0x0
	bne     branch_22297c0
	ldrb    r1, [r4, #0x1]
	ldr     r0, [r4, #0x18]
	cmp     r1, r0
	ldrb    r0, [r4, #0x0]
	blt     branch_2229786
	.hword  0x1c40 @ add r0, r0, #0x1
	b       branch_2229788

branch_2229786: @ 2229786 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
branch_2229788: @ 2229788 :thumb
	strb    r0, [r4, #0x0]
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_22297a0
	ldr     r1, [r4, #0x1c]
	mov     r2, #0x0
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x28]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2019184
branch_22297a0: @ 22297a0 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_22297b6
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
branch_22297b6: @ 22297b6 :thumb
	ldrb    r0, [r4, #0x1]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3,r4,pc}

branch_22297c0: @ 22297c0 :thumb
	mov     r3, #0xd4
	ldsh    r0, [r4, r3]
	cmp     r0, #0x0
	beq     branch_22297dc
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	ldr     r1, [r4, #0x1c]
	ldsh    r3, [r4, r3]
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x28]
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_2019184
branch_22297dc: @ 22297dc :thumb
	mov     r3, #0xd6
	ldsh    r0, [r4, r3]
	cmp     r0, #0x0
	beq     branch_222980a
	mov     r0, #0x1
	str     r0, [r4, #0x24]
	ldr     r1, [r4, #0x1c]
	ldsh    r3, [r4, r3]
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x28]
	lsr     r1, r1, #24
	mov     r2, #0x3
	bl      Function_2019184
	add     sp, #0x4
	pop     {r3,r4,pc}

branch_22297fc: @ 22297fc :thumb
	ldr     r0, [r4, #0x2c]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_222980a: @ 222980a :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222980e


.align 2, 0
.thumb
Function_2229810: @ 2229810 :thumb
	push    {r3-r5,lr}
	mov     r1, #0xf8
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	str     r5, [r4, #0x2c]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x2c]
	bl      Function_2220278
	str     r0, [r4, #0x28]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r4, #0x10]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [r4, #0x18]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	cmp     r0, #0x0
	bne     branch_2229876
	mov     r0, #0x3
	b       branch_2229878
@ 0x2229876

.thumb
branch_2229876: @ 2229876 :thumb
	mov     r0, #0x2
.thumb
branch_2229878: @ 2229878 :thumb
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x2c]
	ldr     r1, [pc, #0x8] @ 0x2229888, (=#0x2229739)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x2229886

.align 2
.word 0x2229739 @ 0x2229888



.thumb
Function_222988c: @ 222988c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x2c]
	ldr     r3, [r4, #0x24]
	cmp     r3, r0
	beq     branch_22298a0
	ldr     r1, [r4, #0x28]
	cmp     r1, r0
	bne     branch_22298b0
.thumb
branch_22298a0: @ 22298a0 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x22298b0

.thumb
branch_22298b0: @ 22298b0 :thumb
	mov     r1, #0x20
	ldsh    r2, [r4, r1]
	cmp     r2, #0x0
	bge     branch_22298d2
	add     r2, r3, r2
	cmp     r2, #0x0
	ble     branch_22298ca
	str     r2, [r4, #0x24]
	ldsh    r0, [r4, r1]
	ldr     r2, [r4, #0x28]
	add     r0, r2, r0
	str     r0, [r4, #0x28]
	b       branch_22298ea
@ 0x22298ca

.thumb
branch_22298ca: @ 22298ca :thumb
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x2c]
	str     r0, [r4, #0x28]
	b       branch_22298ea
@ 0x22298d2

.thumb
branch_22298d2: @ 22298d2 :thumb
	add     r2, r3, r2
	cmp     r2, #0xf
	bge     branch_22298e4
	str     r2, [r4, #0x24]
	ldsh    r0, [r4, r1]
	ldr     r2, [r4, #0x28]
	add     r0, r2, r0
	str     r0, [r4, #0x28]
	b       branch_22298ea
@ 0x22298e4

.thumb
branch_22298e4: @ 22298e4 :thumb
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x2c]
	str     r0, [r4, #0x28]
.thumb
branch_22298ea: @ 22298ea :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_200d330
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0x24]
	lsl     r0, r0, #4
	orr     r1, r0
	ldr     r0, [pc, #0x8] @ 0x2229904, (=#0x400004d)
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	bl      Function_200c7ec
	pop     {r4,pc}
@ 0x2229904

.word 0x400004d @ 0x2229904
.thumb
Function_2229908: @ 2229908 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x30
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2220280
	strh    r0, [r4, #0x20]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2220280
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22202c0
	mov     r1, #0x1
	str     r0, [r4, #0x1c]
	bl      Function_200d3f4
	mov     r0, #0x20
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_222995e
	mov     r0, #0x0
	b       branch_2229960
@ 0x222995e

.thumb
branch_222995e: @ 222995e :thumb
	mov     r0, #0xf
.thumb
branch_2229960: @ 2229960 :thumb
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_200d7fc
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0xc] @ 0x222997c, (=#0x222988d)
	mov     r2, r4
	bl      Function_22201e8
	mov     r1, r4
	bl      Function_222988c
	pop     {r3-r5,pc}
@ 0x222997c

.word Function_222988c+1 @ =0x222988d, 0x222997c
.thumb
Function_2229980: @ 2229980 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	strh    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	strh    r0, [r4, #0xe]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	strh    r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strh    r0, [r4, #0x6]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	str     r0, [r4, #0x10]
	mov     r0, r5
	mov     r1, #0x8
	bl      Function_2220280
	str     r0, [r4, #0x30]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2220280
	ldr     r2, [pc, #0x6c] @ 0x2229a4c, (=#0xffff0000)
	mov     r1, #0x0
	and     r2, r0
	lsl     r0, r0, #16
	str     r1, [r4, #0x1c]
	lsr     r2, r2, #16
	str     r2, [r4, #0x20]
	lsr     r0, r0, #16
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	bne     branch_22299f6
	str     r1, [r4, #0x20]
.thumb
branch_22299f6: @ 22299f6 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_2229a00
	mov     r0, #0xff
	str     r0, [r4, #0x24]
.thumb
branch_2229a00: @ 2229a00 :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_222026c
	str     r0, [r4, #0x38]
	mov     r0, r5
	bl      Function_2220250
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_2229a2a
	mov     r0, r5
	bl      Function_2220240
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_2220248
	str     r0, [r4, #0x18]
	b       branch_2229a3e
@ 0x2229a2a

.thumb
branch_2229a2a: @ 2229a2a :thumb
	cmp     r0, #0x1
	bne     branch_2229a3e
	mov     r0, r5
	bl      Function_2220248
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_2220240
	str     r0, [r4, #0x18]
branch_2229a3e: @ 2229a3e :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	bne     branch_2229a48
	bl      Function_2022974
branch_2229a48: @ 2229a48 :thumb
	pop     {r3-r5,pc}
@ 0x2229a4a

.align 2
.word 0xffff0000 @ 0x2229a4c



.thumb
Function_2229a50: @ 2229a50 :thumb
	ldr     r0, [r0, #0x8]
	mov     r1, #0x0
	cmp     r0, #0x0
	beq     branch_2229a62
branch_2229a58: @ 2229a58 :thumb
	ldrh    r2, [r0, #0x26]
	ldrh    r3, [r0, #0x24]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2229a58
branch_2229a62: @ 2229a62 :thumb
	cmp     r2, r3
	beq     branch_2229a68
	mov     r1, #0x1
branch_2229a68: @ 2229a68 :thumb
	mov     r0, r1
	bx      lr
@ 0x2229a6c


.thumb
Function_2229a6c: @ 2229a6c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x38]
	bl      Function_2229a50
	mov     r4, r0
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	ldr     r1, [r5, #0x28]
	cmp     r1, r0
	bge     branch_2229a8a
	add     r0, r1, #0x1
	str     r0, [r5, #0x28]
	pop     {r4-r6,pc}

branch_2229a8a: @ 2229a8a :thumb
	mov     r0, r5
	add     r0, #0xa8
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_2229ab2
	cmp     r4, #0x0
	bne     branch_2229ab2
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	bl      Function_2014724
	ldr     r0, [r5, #0x40]
	mov     r1, r6
	bl      Function_2220220
	mov     r0, r5
	bl      Function_2235e80
	pop     {r4-r6,pc}

branch_2229ab2: @ 2229ab2 :thumb
	ldr     r1, [r5, #0x1c]
	ldr     r0, [r5, #0x20]
	cmp     r0, r1
	bgt     branch_2229ac0
	ldr     r0, [r5, #0x24]
	cmp     r0, r1
	bge     branch_2229ac6
branch_2229ac0: @ 2229ac0 :thumb
	ldr     r0, [r5, #0x24]
	cmp     r0, #0xff
	bne     branch_2229b24
branch_2229ac6: @ 2229ac6 :thumb
	mov     r0, #0xa8
	ldsh    r2, [r5, r0]
	ldr     r1, [r5, #0x38]
	mov     r3, #0xac
	mov     r0, r2
	ldr     r2, [r1, #0x20]
	mul     r0, r3
	ldr     r2, [r2, #0x0]
	ldr     r2, [r2, #0x4]
	add     r0, r0, r2
	str     r0, [r1, #0x28]
	mov     r0, #0xaa
	ldsh    r4, [r5, r0]
	ldr     r2, [r5, #0x38]
	mov     r1, r4
	mul     r1, r3
	ldr     r3, [r2, #0x20]
	ldr     r3, [r3, #0x0]
	ldr     r3, [r3, #0x8]
	add     r1, r1, r3
	str     r1, [r2, #0x2c]
	ldr     r1, [r5, #0x30]
	cmp     r1, #0x0
	beq     branch_2229b24
	mov     r1, #0x6
	ldsh    r1, [r5, r1]
	add     r0, #0xbe
	blx 0x20e1f6c
	ldr     r1, [r5, #0x2c]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d250
	mov     r1, #0xaa
	ldsh    r2, [r5, r1]
	mov     r1, #0xac
	mul     r1, r2
	add     r2, r1, r0
	ldr     r1, [r5, #0x38]
	ldr     r0, [r1, #0x20]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r2, r0
	str     r0, [r1, #0x2c]
branch_2229b24: @ 2229b24 :thumb
	pop     {r4-r6,pc}
@ 0x2229b26


.align 2, 0
.thumb
Function_2229b28: @ 2229b28 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r1, #0x41
	lsl     r1, r1, #2
	mov     r6, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x3c
	bl      Function_223595c
	mov     r0, r6
	mov     r1, r4
	bl      Function_2229980
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_2225964
	mov     r5, r0
	ldr     r1, [r4, #0x14]
	mov     r0, r6
	add     r2, sp, #0x18
	bl      Function_2235508
	ldr     r1, [r4, #0x18]
	mov     r0, r6
	add     r2, sp, #0xc
	bl      Function_2235508
	ldr     r0, [sp, #0x18]
	mov     r1, #0xac
	blx     Division
	mov     r6, r0
	ldr     r0, [sp, #0xc]
	mov     r1, #0xac
	blx     Division
	mov     r7, r0
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xac
	blx     Division
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	mov     r1, #0xac
	blx     Division
	mov     r1, #0xe
	ldsh    r1, [r4, r1]
	mov     r2, r1
	mul     r2, r5
	add     r0, r0, r2
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldrh    r0, [r4, #0x6]
	lsl     r1, r6, #16
	mov     r2, #0xc
	str     r0, [sp, #0x4]
	ldsh    r2, [r4, r2]
	mov     r0, r4
	add     r0, #0xa8
	mov     r3, r2
	mul     r3, r5
	add     r2, r7, r3
	ldr     r3, [sp, #0x8]
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2225bc8
	cmp     r5, #0x0
	ldr     r2, [pc, #0x80] @ 0x2229c4c, (=#0x5c71)
	ble     branch_2229be0
	ldr     r1, [pc, #0x80] @ 0x2229c50, (=#0xe38)
	mov     r0, r4
	add     r0, #0xf0
	mul     r1, r5
	mul     r2, r5
	mov     r3, #0xa
	bl      Function_2225d50
	b       branch_2229bf0
@ 0x2229be0

.thumb
branch_2229be0: @ 2229be0 :thumb
	ldr     r1, [pc, #0x70] @ 0x2229c54, (=#0x3fff)
	mov     r0, r4
	add     r0, #0xf0
	mul     r1, r5
	mul     r2, r5
	mov     r3, #0xa
	bl      Function_2225d50
.thumb
branch_2229bf0: @ 2229bf0 :thumb
	ldr     r0, [r4, #0x20]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_2229c0a
	mov     r6, r4
	add     r6, #0xa8
.thumb
branch_2229bfc: @ 2229bfc :thumb
	mov     r0, r6
	bl      Function_2225c14
	ldr     r0, [r4, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2229bfc
.thumb
branch_2229c0a: @ 2229c0a :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0xff
	beq     branch_2229c14
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
.thumb
branch_2229c14: @ 2229c14 :thumb
	mov     r0, #0xa8
	ldsh    r3, [r4, r0]
	ldr     r1, [r4, #0x38]
	mov     r2, #0xac
	mov     r0, r3
	ldr     r3, [r1, #0x20]
	mul     r0, r2
	ldr     r3, [r3, #0x0]
	ldr     r3, [r3, #0x4]
	add     r0, r0, r3
	str     r0, [r1, #0x28]
	mov     r1, #0xaa
	ldsh    r1, [r4, r1]
	ldr     r0, [r4, #0x38]
	mul     r2, r1
	ldr     r1, [r0, #0x20]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x8]
	add     r1, r2, r1
	str     r1, [r0, #0x2c]
	ldr     r0, [r4, #0x40]
	ldr     r1, [pc, #0x18] @ 0x2229c58, (=#0x2229a6d)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2229c4a

.align 2
.word 0x5c71 @ 0x2229c4c
.word 0xe38 @ 0x2229c50
.word 0x3fff @ 0x2229c54
.word 0x2229a6d @ 0x2229c58



.thumb
Function_2229c5c: @ 2229c5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r1, #0x41
	lsl     r1, r1, #2
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x3c
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	str     r0, [r4, #0x10]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	strh    r0, [r4, #0x6]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	ldr     r2, [pc, #0x130] @ 0x2229de8, (=#0xffff0000)
	mov     r1, #0x0
	and     r2, r0
	lsl     r0, r0, #16
	str     r1, [r4, #0x1c]
	lsr     r2, r2, #16
	str     r2, [r4, #0x20]
	lsr     r0, r0, #16
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	bne     branch_2229cce
	str     r1, [r4, #0x20]
.thumb
branch_2229cce: @ 2229cce :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_2229cd8
	mov     r0, #0xff
	str     r0, [r4, #0x24]
.thumb
branch_2229cd8: @ 2229cd8 :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_222026c
	str     r0, [r4, #0x38]
	mov     r0, r5
	bl      Function_2220250
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_2229d00
	mov     r0, r5
	bl      Function_2220240
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_2220240
	b       branch_2229d0e
@ 0x2229d00

.thumb
branch_2229d00: @ 2229d00 :thumb
	mov     r0, r5
	bl      Function_2220248
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_2220248
.thumb
branch_2229d0e: @ 2229d0e :thumb
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	bne     branch_2229d1a
	bl      Function_2022974
.thumb
branch_2229d1a: @ 2229d1a :thumb
	ldr     r1, [r4, #0x14]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2235508
	ldr     r1, [r4, #0x18]
	mov     r0, r5
	add     r2, sp, #0x8
	bl      Function_2235508
	cmp     r6, #0x0
	bne     branch_2229d3e
	add     r0, sp, #0x14
	bl      Function_2235748
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x14]
	b       branch_2229d48
@ 0x2229d3e

.thumb
branch_2229d3e: @ 2229d3e :thumb
	add     r0, sp, #0x8
	bl      Function_2235748
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0x8]
.thumb
branch_2229d48: @ 2229d48 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, #0xac
	blx     Division
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	mov     r1, #0xac
	blx     Division
	mov     r6, r0
	ldr     r0, [sp, #0x18]
	mov     r1, #0xac
	blx     Division
	mov     r7, r0
	ldr     r0, [sp, #0xc]
	mov     r1, #0xac
	blx     Division
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldrh    r0, [r4, #0x6]
	lsl     r1, r5, #16
	lsl     r2, r6, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsl     r3, r7, #16
	add     r0, #0xa8
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2225bc8
	ldr     r0, [r4, #0x20]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_2229da6
	mov     r6, r4
	add     r6, #0xa8
.thumb
branch_2229d98: @ 2229d98 :thumb
	mov     r0, r6
	bl      Function_2225c14
	ldr     r0, [r4, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2229d98
.thumb
branch_2229da6: @ 2229da6 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0xff
	beq     branch_2229db0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
.thumb
branch_2229db0: @ 2229db0 :thumb
	mov     r0, #0xa8
	ldsh    r3, [r4, r0]
	ldr     r1, [r4, #0x38]
	mov     r2, #0xac
	mov     r0, r3
	ldr     r3, [r1, #0x20]
	mul     r0, r2
	ldr     r3, [r3, #0x0]
	ldr     r3, [r3, #0x4]
	add     r0, r0, r3
	str     r0, [r1, #0x28]
	mov     r1, #0xaa
	ldsh    r1, [r4, r1]
	ldr     r0, [r4, #0x38]
	mul     r2, r1
	ldr     r1, [r0, #0x20]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x8]
	add     r1, r2, r1
	str     r1, [r0, #0x2c]
	ldr     r0, [r4, #0x40]
	ldr     r1, [pc, #0x10] @ 0x2229dec, (=#0x2229a6d)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2229de6

.align 2
.word 0xffff0000 @ 0x2229de8
.word 0x2229a6d @ 0x2229dec



.thumb
Function_2229df0: @ 2229df0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x38]
	bl      Function_2229a50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xa8
	add     r1, #0xcc
	bl      Function_2225ce4
	cmp     r0, #0x0
	bne     branch_2229e2a
	cmp     r4, #0x0
	bne     branch_2229e2a
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	bl      Function_2014724
	ldr     r0, [r5, #0x40]
	mov     r1, r6
	bl      Function_2220220
	mov     r0, r5
	bl      Function_2235e80
	pop     {r4-r6,pc}

branch_2229e2a: @ 2229e2a :thumb
	mov     r1, #0xa8
	ldsh    r1, [r5, r1]
	ldr     r0, [r5, #0x38]
	mov     r2, #0xac
	mov     r3, r1
	ldr     r1, [r0, #0x20]
	mul     r3, r2
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x4]
	add     r1, r3, r1
	str     r1, [r0, #0x28]
	mov     r1, #0xaa
	ldsh    r1, [r5, r1]
	ldr     r0, [r5, #0x38]
	mul     r2, r1
	ldr     r1, [r0, #0x20]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x8]
	add     r1, r2, r1
	str     r1, [r0, #0x2c]
	pop     {r4-r6,pc}
@ 0x2229e54


.thumb
Function_2229e54: @ 2229e54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r1, #0x41
	lsl     r1, r1, #2
	mov     r6, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x3c
	bl      Function_223595c
	mov     r0, r6
	mov     r1, r4
	bl      Function_2229980
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_2225964
	mov     r5, r0
	ldr     r1, [r4, #0x14]
	mov     r0, r6
	add     r2, sp, #0x20
	bl      Function_2235508
	ldr     r1, [r4, #0x18]
	mov     r0, r6
	add     r2, sp, #0x14
	bl      Function_2235508
	ldr     r0, [sp, #0x20]
	mov     r1, #0xac
	blx     Division
	mov     r6, r0
	ldr     r0, [sp, #0x14]
	mov     r1, #0xac
	blx     Division
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x24]
	mov     r1, #0xac
	blx     Division
	mov     r7, r0
	ldr     r0, [sp, #0x18]
	mov     r1, #0xac
	blx     Division
	lsl     r1, r7, #16
	asr     r1, r1, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xe
	ldsh    r1, [r4, r1]
	mov     r3, #0xc
	mov     r2, r1
	mul     r2, r5
	add     r0, r0, r2
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldrh    r0, [r4, #0x6]
	lsl     r2, r6, #16
	mov     r1, r4
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	add     r1, #0xcc
	lsl     r0, r0, #12
	neg     r0, r0
	str     r0, [sp, #0xc]
	ldsh    r6, [r4, r3]
	mov     r0, r4
	add     r0, #0xa8
	mov     r3, r6
	ldr     r6, [sp, #0x10]
	mul     r3, r5
	add     r3, r6, r3
	lsl     r3, r3, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2225c98
	cmp     r5, #0x0
	ldr     r2, [pc, #0x84] @ 0x2229f8c, (=#0x5c71)
	ble     branch_2229f1a
	ldr     r1, [pc, #0x84] @ 0x2229f90, (=#0xe38)
	mov     r0, r4
	add     r0, #0xf0
	mul     r1, r5
	mul     r2, r5
	mov     r3, #0xa
	bl      Function_2225d50
	b       branch_2229f2a
@ 0x2229f1a

.thumb
branch_2229f1a: @ 2229f1a :thumb
	ldr     r1, [pc, #0x78] @ 0x2229f94, (=#0x3fff)
	mov     r0, r4
	add     r0, #0xf0
	mul     r1, r5
	mul     r2, r5
	mov     r3, #0xa
	bl      Function_2225d50
.thumb
branch_2229f2a: @ 2229f2a :thumb
	ldr     r0, [r4, #0x20]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_2229f4a
	mov     r6, r4
	mov     r7, r4
	add     r6, #0xa8
	add     r7, #0xcc
.thumb
branch_2229f3a: @ 2229f3a :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_2225ce4
	ldr     r0, [r4, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2229f3a
.thumb
branch_2229f4a: @ 2229f4a :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0xff
	beq     branch_2229f54
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
.thumb
branch_2229f54: @ 2229f54 :thumb
	mov     r0, #0xa8
	ldsh    r3, [r4, r0]
	ldr     r1, [r4, #0x38]
	mov     r2, #0xac
	mov     r0, r3
	ldr     r3, [r1, #0x20]
	mul     r0, r2
	ldr     r3, [r3, #0x0]
	ldr     r3, [r3, #0x4]
	add     r0, r0, r3
	str     r0, [r1, #0x28]
	mov     r1, #0xaa
	ldsh    r1, [r4, r1]
	ldr     r0, [r4, #0x38]
	mul     r2, r1
	ldr     r1, [r0, #0x20]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x8]
	add     r1, r2, r1
	str     r1, [r0, #0x2c]
	ldr     r0, [r4, #0x40]
	ldr     r1, [pc, #0x18] @ 0x2229f98, (=#0x2229df1)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2229f8a

.align 2
.word 0x5c71 @ 0x2229f8c
.word 0xe38 @ 0x2229f90
.word 0x3fff @ 0x2229f94
.word 0x2229df1 @ 0x2229f98



.thumb
Function_2229f9c: @ 2229f9c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x38]
	bl      Function_2229a50
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x58
	bl      Function_2225ae0
	cmp     r0, #0x0
	bne     branch_2229fd2
	cmp     r4, #0x0
	bne     branch_2229fd2
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	bl      Function_2014724
	ldr     r0, [r5, #0x40]
	mov     r1, r6
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
	pop     {r4-r6,pc}

branch_2229fd2: @ 2229fd2 :thumb
	mov     r0, r5
	add     r0, #0x8c
	ldr     r2, [r0, #0x0]
	mov     r0, #0x5a
	ldsh    r0, [r5, r0]
	mov     r3, #0xac
	mov     r1, r0
	mul     r1, r3
	add     r1, r2, r1
	mov     r2, r5
	add     r2, #0x88
	ldr     r4, [r2, #0x0]
	mov     r2, #0x58
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, #0x38]
	mul     r3, r2
	ldr     r2, [r0, #0x20]
	add     r3, r4, r3
	ldr     r2, [r2, #0x0]
	ldr     r2, [r2, #0x4]
	add     r2, r3, r2
	str     r2, [r0, #0x28]
	ldr     r2, [r5, #0x38]
	ldr     r0, [r2, #0x20]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r2, #0x2c]
	pop     {r4-r6,pc}
@ 0x222a00c


.thumb
Function_222a00c: @ 222a00c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r1, #0x94
	mov     r4, r0
	bl      Function_2235e50
	mov     r5, r0
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x3c
	bl      Function_223595c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2220280
	str     r0, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2220280
	str     r0, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r5, #0x14]
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2220280
	str     r0, [r5, #0x18]
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2220280
	str     r0, [r5, #0x1c]
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_2220280
	str     r0, [r5, #0x20]
	cmp     r0, #0x0
	bne     branch_222a08a
	mov     r0, r4
	bl      Function_2220240
	b       branch_222a090
@ 0x222a08a

.thumb
branch_222a08a: @ 222a08a :thumb
	mov     r0, r4
	bl      Function_2220248
.thumb
branch_222a090: @ 222a090 :thumb
	str     r0, [r5, #0x24]
	mov     r2, r5
	ldr     r1, [r5, #0x24]
	mov     r0, r4
	add     r2, #0x88
	bl      Function_2235508
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	bl      Function_222026c
	str     r0, [r5, #0x38]
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_2220280
	mov     r1, r0
	mov     r0, r4
	bl      Function_2220260
	str     r0, [r5, #0x34]
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xb0] @ 0x222a170, (=#0xffff)
	mul     r0, r1
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     Division
	mov     r4, r0
	ldr     r1, [r5, #0xc]
	ldr     r0, [pc, #0xa0] @ 0x222a170, (=#0xffff)
	mul     r0, r1
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     Division
	mov     r6, r0
	ldr     r1, [r5, #0x8]
	ldr     r0, [pc, #0x90] @ 0x222a170, (=#0xffff)
	mul     r0, r1
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     Division
	mov     r7, r0
	ldr     r1, [r5, #0x10]
	ldr     r0, [pc, #0x80] @ 0x222a170, (=#0xffff)
	mul     r0, r1
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     Division
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x14]
	lsl     r1, r4, #16
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	lsl     r2, r6, #16
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x1c]
	lsl     r3, r7, #16
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0x58
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_2225a5c
	mov     r0, r5
	add     r0, #0x58
	bl      Function_2225ae0
	mov     r0, r5
	add     r0, #0x8c
	ldr     r2, [r0, #0x0]
	mov     r0, #0x5a
	ldsh    r0, [r5, r0]
	mov     r3, #0x58
	mov     r4, #0xac
	mov     r1, r0
	mov     r0, r5
	mul     r1, r4
	ldsh    r3, [r5, r3]
	add     r0, #0x88
	add     r2, r2, r1
	ldr     r1, [r5, #0x38]
	ldr     r0, [r0, #0x0]
	mul     r4, r3
	add     r3, r0, r4
	ldr     r0, [r1, #0x20]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r3, r0
	str     r0, [r1, #0x28]
	ldr     r1, [r5, #0x38]
	ldr     r0, [r1, #0x20]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r2, r0
	str     r0, [r1, #0x2c]
	ldr     r0, [r5, #0x40]
	ldr     r1, [pc, #0xc] @ 0x222a174, (=#0x2229f9d)
	mov     r2, r5
	bl      Function_22201e8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222a170

.word 0xffff @ 0x222a170
.word 0x2229f9d @ 0x222a174



.thumb
Function_222a178: @ 222a178 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_200d3b8
	cmp     r0, #0x0
	ldr     r0, [r4, #0x1c]
	bne     branch_222a19e
	bl      Function_200d0f4
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}

branch_222a19e: @ 222a19e :thumb
	bl      Function_200d330
	ldr     r0, [r4, #0x10]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x222a1aa


.align 2, 0
.thumb
Function_222a1ac: @ 222a1ac :thumb
	push    {r3-r7,lr}
	mov     r1, #0x20
	mov     r5, r0
	mov     r4, r3
	bl      Function_2235e50
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	str     r4, [r7, #0x1c]
	bl      Function_2220280
	lsl     r0, r0, #16
	asr     r6, r0, #16
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	lsl     r0, r0, #16
	asr     r2, r0, #16
	mov     r0, r4
	mov     r1, r6
	bl      Function_200d5dc
	ldr     r0, [r7, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222a1f0, (=#0x222a179)
	mov     r2, r7
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x222a1f0

.word 0x222a179 @ 0x222a1f0



.thumb
Function_222a1f4: @ 222a1f4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222a206
	cmp     r0, #0x1
	beq     branch_222a284
	b       branch_222a31c

branch_222a206: @ 222a206 :thumb
	ldr     r1, [r4, #0x34]
	ldr     r0, [pc, #0x134] @ 0x222a340, (=#0x223a03c)
	lsl     r2, r1, #1
	ldsh    r6, [r0, r2]
	add     r0, r1, #0x1
	str     r0, [r4, #0x34]
	cmp     r6, #0xff
	beq     branch_222a256
	cmp     r6, #0x0
	bne     branch_222a24a
	ldr     r0, [r4, #0x1c]
	bl      Function_200d454
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_222339c
	cmp     r5, r0
	ldr     r0, [r4, #0x4]
	bne     branch_222a23e
	mov     r1, #0x2
	bl      Function_2223428
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_200d460
	b       branch_222a24a

branch_222a23e: @ 222a23e :thumb
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_200d460
branch_222a24a: @ 222a24a :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_200d5dc
	b       branch_222a332

branch_222a256: @ 222a256 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_200d6a4
	mov     r0, r4
	ldr     r2, [pc, #0xe0] @ 0x222a344, (=#0xe38)
	add     r0, #0x20
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2225d50
	mov     r1, #0x7
	ldr     r0, [r4, #0x1c]
	mvn     r1, r1
	mov     r2, #0x10
	bl      Function_200d7e0
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222a332

branch_222a284: @ 222a284 :thumb
	mov     r0, r4
	add     r0, #0x20
	bl      Function_2225da0
	cmp     r0, #0x1
	bne     branch_222a29e
	ldr     r1, [r4, #0x20]
	ldr     r0, [r4, #0x1c]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_200d79c
	b       branch_222a332

branch_222a29e: @ 222a29e :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x5
	ble     branch_222a2ac
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222a332

branch_222a2ac: @ 222a2ac :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x34]
	cmp     r0, #0x5
	bhi     branch_222a332
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r6, #1
	lsl     r2, r1, #0
	lsl     r2, r3, #0
	lsl     r2, r5, #0
	lsl     r2, r7, #0
	lsl     r2, r1, #1
	mov     r0, r4
	ldr     r1, [pc, #0x74] @ 0x222a344, (=#0xe38)
	ldr     r2, [pc, #0x74] @ 0x222a348, (=#0xfffff1c8)
	add     r0, #0x20
	mov     r3, #0x4
	bl      Function_2225d50
	b       branch_222a332
@ 0x222a2dc


.incbin "./baserom/overlay/overlay_0012.bin", 0xa6bc, 0x222a31c - 0x222a2dc


.thumb
branch_222a31c: @ 222a31c :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4-r6,pc}

branch_222a332: @ 222a332 :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_200d330
	ldr     r0, [r4, #0x10]
	bl      Function_200c7ec
	pop     {r4-r6,pc}
@ 0x222a340

.word 0x223a03c @ 0x222a340
.word 0xe38 @ 0x222a344
.word 0xfffff1c8 @ 0x222a348



.thumb
Function_222a34c: @ 222a34c :thumb
	push    {r3-r7,lr}
	mov     r1, #0x38
	mov     r5, r0
	mov     r6, r3
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	str     r6, [r4, #0x1c]
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	mov     r0, r5
	bl      Function_2220248
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_22258e0
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_22258e0
	mov     r2, r0
	ldr     r0, [r4, #0x1c]
	mov     r1, r6
	bl      Function_200d4c4
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	cmp     r0, #0x4
	ldr     r0, [r4, #0x1c]
	bne     branch_222a3ac
	mov     r1, #0x1
	bl      Function_200d364
	b       branch_222a3b2
@ 0x222a3ac

.thumb
branch_222a3ac: @ 222a3ac :thumb
	mov     r1, #0x0
	bl      Function_200d364
.thumb
branch_222a3b2: @ 222a3b2 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_200d460
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	mov     r2, #0xc
	bl      Function_200d5dc
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222a3d8, (=#0x222a1f5)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x222a3d6

.align 2
.word 0x222a1f5 @ 0x222a3d8



.thumb
Function_222a3dc: @ 222a3dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_200d3b8
	cmp     r0, #0x0
	ldr     r0, [r4, #0x1c]
	bne     branch_222a402
	bl      Function_200d0f4
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}

branch_222a402: @ 222a402 :thumb
	bl      Function_200d330
	ldr     r0, [r4, #0x10]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x222a40e


.align 2, 0
.thumb
Function_222a410: @ 222a410 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x38
	mov     r5, r0
	mov     r6, r3
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	mov     r0, r5
	str     r6, [r4, #0x1c]
	bl      Function_2220248
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_22258e0
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_22258e0
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_222a458
	mov     r6, #0x48
	mov     r2, #0x20
	mov     r5, #0x0
	b       branch_222a46e

branch_222a458: @ 222a458 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r7
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222a46a
	mov     r2, #0x7e
	mov     r5, #0x1
	b       branch_222a46e

branch_222a46a: @ 222a46a :thumb
	mov     r2, #0x20
	mov     r5, #0x0
branch_222a46e: @ 222a46e :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, r6
	bl      Function_200d4c4
	ldr     r0, [r4, #0x1c]
	mov     r1, r5
	bl      Function_200d364
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2223428
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_200d460
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222a49c, (=#0x222a3dd)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x222a49a

.align 2
.word 0x222a3dd @ 0x222a49c



.thumb
Function_222a4a0: @ 222a4a0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bhi     branch_222a592
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r5, #0
	lsl     r4, r0, #1
	lsl     r0, r0, #2
	mov     r0, #0xa0
	str     r0, [sp, #0x0]
	mov     r3, #0x70
	mov     r0, #0x1
	str     r3, [sp, #0x4]
	mov     r2, #0x15
	str     r2, [sp, #0x8]
	lsl     r0, r0, #18
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0x24
	add     r1, #0x48
	sub     r2, #0x33
	bl      Function_2225c98
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222a5aa
@ 0x222a4e8


.incbin "./baserom/overlay/overlay_0012.bin", 0xa8c8, 0x222a592 - 0x222a4e8


.thumb
branch_222a592: @ 222a592 :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x10
	pop     {r3-r5,pc}

branch_222a5aa: @ 222a5aa :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_200d330
	ldr     r0, [r4, #0x10]
	bl      Function_200c7ec
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x222a5ba


.incbin "./baserom/overlay/overlay_0012.bin", 0xa99a, 0x222a5c0 - 0x222a5ba


.thumb
Function_222a5c0: @ 222a5c0 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x6c
	mov     r6, r0
	mov     r5, r3
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_223595c
	mov     r1, #0x1d
	str     r5, [r4, #0x1c]
	mov     r0, r5
	mvn     r1, r1
	mov     r2, #0xa0
	bl      Function_200d4c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2223428
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_200d460
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222a600, (=#0x222a4a1)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x222a600

.word 0x222a4a1 @ 0x222a600
.thumb
Function_222a604: @ 222a604 :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_2220280
	cmp     r0, #0x0
	beq     branch_222a61a
	mov     r0, r4
	bl      Function_2226924
	pop     {r4,pc}
@ 0x222a61a

.thumb
branch_222a61a: @ 222a61a :thumb
	mov     r0, r4
	bl      Function_2226954
	pop     {r4,pc}
@ 0x222a622


.align 2, 0
.thumb
Function_222a624: @ 222a624 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x18
	bls     branch_222a632
	b       branch_222a826
@ 0x222a632

.thumb
branch_222a632: @ 222a632 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r6, #0
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r4, r3, #3
	lsl     r4, r3, #3
	lsl     r6, r0, #4
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r0, r4, #4
	lsl     r0, r4, #4
	lsl     r2, r1, #5
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r2, r4, #5
	lsl     r2, r4, #5
	lsl     r4, r1, #6
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r6, r4, #7
	lsl     r4, r4, #6
	lsl     r4, r4, #6
	lsl     r6, r1, #7
	ldr     r0, [r4, #0x34]
	ldr     r1, [pc, #0x1f8] @ 0x222a86c, (=#0xffff1fff)
	cmp     r0, #0x0
	bne     branch_222a6ca
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	mov     r5, r0
	and     r2, r1
	lsr     r1, r0, #13
	orr     r1, r2
	str     r1, [r0, #0x0]
	add     r5, #0x48
	ldrh    r3, [r5, #0x0]
	mov     r2, #0x3f
	mov     r1, #0xf
	bic     r3, r2
	orr     r1, r3
	mov     r3, #0x20
	orr     r1, r3
	strh    r1, [r5, #0x0]
	mov     r5, r0
	add     r5, #0x4a
	ldrh    r6, [r5, #0x0]
	mov     r1, #0x1f
	bic     r6, r2
	orr     r1, r6
	orr     r1, r3
	strh    r1, [r5, #0x0]
	mov     r1, r0
	mov     r2, #0x80
	add     r1, #0x40
	strh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x1bc] @ 0x222a870, (=#0xa0c0)
	add     r0, #0x44
	strh    r1, [r0, #0x0]
	bl      PRNG
	mov     r1, #0x5
	blx 0x20e1f6e
	add     r1, #0x23
	add     sp, #0x4
	str     r1, [r4, #0x3c]
	pop     {r3-r6,pc}
@ 0x222a6ca

.thumb
branch_222a6ca: @ 222a6ca :thumb
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	mov     r5, r0
	and     r2, r1
	lsr     r1, r0, #13
	orr     r1, r2
	str     r1, [r0, #0x0]
	add     r5, #0x48
	ldrh    r3, [r5, #0x0]
	mov     r2, #0x3f
	mov     r1, #0xf
	bic     r3, r2
	orr     r1, r3
	mov     r3, #0x20
	orr     r1, r3
	strh    r1, [r5, #0x0]
	mov     r5, r0
	add     r5, #0x4a
	ldrh    r6, [r5, #0x0]
	mov     r1, #0x1f
	bic     r6, r2
	orr     r1, r6
	orr     r1, r3
	strh    r1, [r5, #0x0]
	mov     r1, r0
	lsl     r2, r3, #10
	add     r1, #0x40
	strh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x16c] @ 0x222a874, (=#0x56c0)
	add     r0, #0x44
	strh    r1, [r0, #0x0]
	bl      PRNG
	mov     r1, #0x5
	blx 0x20e1f6c
	add     r1, #0x23
	add     sp, #0x4
	str     r1, [r4, #0x3c]
	pop     {r3-r6,pc}
@ 0x222a71c


.incbin "./baserom/overlay/overlay_0012.bin", 0xaafc, 0x222a826 - 0x222a71c


.thumb
branch_222a826: @ 222a826 :thumb
	ldr     r1, [r4, #0x3c]
	cmp     r0, r1
	ble     branch_222a868
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x14
	ldr     r0, [r4, #0x1c]
	bge     branch_222a862
	mov     r1, #0x0
	mov     r2, #0x4
	bl      Function_200d5dc
	add     r1, sp, #0x0
	ldr     r0, [r4, #0x1c]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	add     r0, sp, #0x0
	mov     r1, #0x0
	ldsh    r0, [r0, r1]
	cmp     r0, #0x82
	ble     branch_222a858
	ldr     r0, [r4, #0x1c]
	bl      Function_200d3f4
branch_222a858: @ 222a858 :thumb
	ldr     r0, [r4, #0x38]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x38]
	pop     {r3-r6,pc}

branch_222a862: @ 222a862 :thumb
	mov     r1, #0x0
	bl      Function_200d3f4
branch_222a868: @ 222a868 :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222a86c

.word 0xffff1fff @ 0x222a86c
.word 0xa0c0 @ 0x222a870
.word 0x56c0 @ 0x222a874



.thumb
Function_222a878: @ 222a878 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_222a88a
	mov     r0, r4
	bl      Function_222a624
branch_222a88a: @ 222a88a :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	ldrb    r1, [r4, #0x0]
	ldr     r0, [r4, #0x24]
	cmp     r1, r0
	blt     branch_222a8e2
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x222a8f0, (=#0xffff1fff)
	and     r1, r2
	mov     r2, r0
	str     r1, [r0, #0x0]
	add     r2, #0x48
	ldrh    r3, [r2, #0x0]
	mov     r1, #0x3f
	bic     r3, r1
	strh    r3, [r2, #0x0]
	mov     r2, r0
	add     r2, #0x4a
	ldrh    r3, [r2, #0x0]
	bic     r3, r1
	strh    r3, [r2, #0x0]
	mov     r2, r0
	mov     r1, #0x0
	add     r2, #0x40
	strh    r1, [r2, #0x0]
	add     r0, #0x44
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x1c]
	bl      Function_200d3f4
	ldr     r0, [r4, #0xc]
	bl      Function_200c7ec
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}

branch_222a8e2: @ 222a8e2 :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_200d330
	ldr     r0, [r4, #0xc]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x222a8f0

.word 0xffff1fff @ 0x222a8f0



.thumb
Function_222a8f4: @ 222a8f4 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x40
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	str     r0, [r4, #0x24]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r4, #0x28]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r4, #0x2c]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r4, #0x30]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2220280
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x20]
	bl      Function_22202c0
	str     r0, [r4, #0x1c]
	mov     r0, #0x0
	str     r0, [r4, #0x38]
	ldr     r1, [r4, #0x28]
	cmp     r1, #0xff
	beq     branch_222a966
	mov     r0, r5
	bl      Function_2223428
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_200d460
.thumb
branch_222a966: @ 222a966 :thumb
	ldr     r1, [r4, #0x2c]
	cmp     r1, #0xff
	beq     branch_222a972
	ldr     r0, [r4, #0x1c]
	bl      Function_200d474
.thumb
branch_222a972: @ 222a972 :thumb
	mov     r0, r5
	bl      Function_2223364
	cmp     r0, #0x1
	beq     branch_222a9a4
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	cmp     r0, #0x2
	beq     branch_222a994
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	cmp     r0, #0x3
	bne     branch_222a9a4
.thumb
branch_222a994: @ 222a994 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x222a9a4

.thumb
branch_222a9a4: @ 222a9a4 :thumb
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	mov     r7, r0
	mov     r0, r5
	bl      Function_2220240
	mov     r6, r0
	mov     r0, r5
	bl      Function_2220248
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0xff
	beq     branch_222a9f2
	mov     r0, r5
	mov     r1, r6
	bl      Function_2235254
	mov     r6, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2235254
	cmp     r7, #0x3
	bhi     branch_222a9f2
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r0, r2, #2
	lsl     r4, r1, #1
	lsl     r4, r2, #3
	cmp     r6, #0x5
	bls     branch_222a9f4
.thumb
branch_222a9f2: @ 222a9f2 :thumb
	b       branch_222aafe
@ 0x222a9f4

.thumb
branch_222a9f4: @ 222a9f4 :thumb
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r7, #3
	lsl     r4, r7, #3
	lsl     r2, r1, #0
	lsl     r4, r2, #0
	lsl     r6, r3, #0
	lsl     r0, r5, #0
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x14
	bl      Function_200d474
	b       branch_222aafe
@ 0x222aa16


.incbin "./baserom/overlay/overlay_0012.bin", 0xadf6, 0x222aafe - 0x222aa16


.thumb
branch_222aafe: @ 222aafe :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222ab0c, (=#0x222a879)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x222ab0a

.align 2
.word 0x222a879 @ 0x222ab0c



.thumb
Function_222ab10: @ 222ab10 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r2, r0
	ldr     r0, [r6, #0x2c]
	cmp     r0, #0x0
	bne     branch_222ab2c
	ldr     r0, [r6, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r6
	bl      Function_20181c4
	pop     {r4-r6,pc}
@ 0x222ab2c

.thumb
branch_222ab2c: @ 222ab2c :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r6, #0x2c]
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_222ab34: @ 222ab34 :thumb
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_222ab3e
	bl      Function_200d330
.thumb
branch_222ab3e: @ 222ab3e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_222ab34
	ldr     r0, [r6, #0xc]
	bl      Function_200c7ec
	pop     {r4-r6,pc}
@ 0x222ab4e


.align 2, 0


.thumb
Function_222ab50: @ 222ab50 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x34
	mov     r4, r0
	bl      Function_2235e50
	mov     r7, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_223595c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2220280
	cmp     r0, #0x0
	bne     branch_222ab74
	mov     r0, #0x3
	b       branch_222ab7c
@ 0x222ab74

.thumb
branch_222ab74: @ 222ab74 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2220280
.thumb
branch_222ab7c: @ 222ab7c :thumb
	ldr     r5, [pc, #0x34] @ 0x222abb4, (=#0x223b120)
	str     r0, [r7, #0x2c]
	mov     r6, #0x0
	mov     r4, r7
.thumb
branch_222ab84: @ 222ab84 :thumb
	ldr     r0, [r7, #0x4]
	mov     r1, r6
	bl      Function_22202c0
	str     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_222ab98
	ldr     r1, [r5, #0x0]
	bl      Function_200d474
.thumb
branch_222ab98: @ 222ab98 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_222ab84
	ldr     r0, [r7, #0x4]
	ldr     r1, [pc, #0x10] @ 0x222abb8, (=#0x222ab11)
	mov     r2, r7
	bl      Function_22201e8
	mov     r1, r7
	bl      Function_222ab10
	pop     {r3-r7,pc}
@ 0x222abb4

.word 0x223b120 @ 0x222abb4
.word Function_222ab10+1 @ =0x222ab11, 0x222abb8



.thumb
Function_222abbc: @ 222abbc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r4, r0
	ldrb    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_222abd0
	cmp     r0, #0x1
	beq     branch_222ac16
	b       branch_222ac2e

branch_222abd0: @ 222abd0 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      Function_22233ec
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_22266e8
	mov     r6, r0
	ldr     r0, [r5, #0xc]
	bl      Function_221fde4
	mov     r1, #0xc8
	str     r1, [sp, #0x0]
	mov     r3, #0x2
	str     r4, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	str     r6, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, r1
	mov     r1, #0xa0
	mov     r2, #0xb6
	lsl     r3, r3, #16
	bl      Function_222662c
	str     r0, [r5, #0x24]
	ldrb    r0, [r5, #0x8]
	add     sp, #0x14
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	pop     {r3-r6,pc}

branch_222ac16: @ 222ac16 :thumb
	ldr     r0, [r5, #0x0]
	add     r1, r0, #0x1
	str     r1, [r5, #0x0]
	ldr     r0, [r5, #0x4]
	cmp     r1, r0
	blt     branch_222ac3c
	ldr     r0, [r5, #0x24]
	bl      Function_222669c
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
branch_222ac2e: @ 222ac2e :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, r4
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
branch_222ac3c: @ 222ac3c :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222ac40


.thumb
Function_222ac40: @ 222ac40 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x28
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x8
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0x8] @ 0x222ac6c, (=#0x222abbd)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x222ac6c

.word 0x222abbd @ 0x222ac6c



.thumb
Function_222ac70: @ 222ac70 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r1
	str     r0, [sp, #0xc]
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bls     branch_222ac80
	b       branch_222adf2
@ 0x222ac80

.thumb
branch_222ac80: @ 222ac80 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r7, #2
	lsl     r6, r2, #3
	lsl     r0, r6, #4
	ldrb    r0, [r4, #0x4]
	mov     r7, #0x0
	mov     r1, r7
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222ad0a
	ldr     r6, [pc, #0x1b4] @ 0x222ae60, (=#0x223a09e)
	mov     r5, r4
.thumb
branch_222acac: @ 222acac :thumb
	add     r1, sp, #0x10
	ldr     r0, [r5, #0x14]
	add     r1, #0x2
	add     r2, sp, #0x10
	bl      Function_200d550
	ldrb    r1, [r4, #0x4]
	ldrb    r0, [r6, #0x0]
	cmp     r1, r0
	bcc     branch_222acf0
	add     r0, r4, r7
	ldrb    r1, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	ldrb    r2, [r0, #0x1]
	ldrb    r1, [r6, #0x1]
	cmp     r2, r1
	bcc     branch_222acf8
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	ldr     r0, [r5, #0x14]
	bl      Function_200d408
	cmp     r0, #0x1
	ldr     r0, [r5, #0x14]
	bne     branch_222ace8
	mov     r1, #0x0
	bl      Function_200d3f4
	b       branch_222acf8
@ 0x222ace8

.thumb
branch_222ace8: @ 222ace8 :thumb
	mov     r1, #0x1
	bl      Function_200d3f4
	b       branch_222acf8
@ 0x222acf0

.thumb
branch_222acf0: @ 222acf0 :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_200d3f4
.thumb
branch_222acf8: @ 222acf8 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_2220280
	cmp     r7, r0
	blt     branch_222acac
.thumb
branch_222ad0a: @ 222ad0a :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x2d
	bcc     branch_222ada8
	mov     r5, #0x0
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222ad3a
	mov     r6, r4
	mov     r7, #0x1
.thumb
branch_222ad22: @ 222ad22 :thumb
	ldr     r0, [r6, #0x14]
	mov     r1, r7
	bl      Function_200d3f4
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_2220280
	cmp     r5, r0
	blt     branch_222ad22
.thumb
branch_222ad3a: @ 222ad3a :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222ae2c
@ 0x222ad46


.incbin "./baserom/overlay/overlay_0012.bin", 0xb126, 0x222ada8 - 0x222ad46


.thumb
branch_222ada8: @ 222ada8 :thumb
	b       branch_222ae2c
@ 0x222adaa


.incbin "./baserom/overlay/overlay_0012.bin", 0xb18a, 0x222adf2 - 0x222adaa


.thumb
branch_222adf2: @ 222adf2 :thumb
	mov     r5, #0x0
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222ae1a
	mov     r6, r4
	mov     r7, r5
branch_222ae04: @ 222ae04 :thumb
	ldr     r0, [r6, #0x14]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x8]
	mov     r1, r7
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_2220280
	cmp     r5, r0
	blt     branch_222ae04
branch_222ae1a: @ 222ae1a :thumb
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0xc]
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x1c
	pop     {r4-r7,pc}

branch_222ae2c: @ 222ae2c :thumb
	mov     r5, #0x0
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222ae56
	mov     r6, r4
	mov     r7, r5
branch_222ae3e: @ 222ae3e :thumb
	ldr     r0, [r6, #0x14]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [r4, #0x8]
	mov     r1, r7
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_2220280
	cmp     r5, r0
	blt     branch_222ae3e
branch_222ae56: @ 222ae56 :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_200c7ec
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222ae60

.word 0x223a09e @ 0x222ae60


.incbin "./baserom/overlay/overlay_0012.bin", 0xb244, 0x222ae68 - 0x222ae64


.thumb
Function_222ae68: @ 222ae68 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_221fde4
	mov     r1, #0x44
	bl      Function_2018144
	mov     r4, r0
	bne     branch_222ae86
	bl      Function_2022974
.thumb
branch_222ae86: @ 222ae86 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x0]
	str     r5, [r4, #0xc]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0x10]
	str     r0, [r4, #0x8]
	ldr     r1, [sp, #0x0]
	add     r0, sp, #0x8
	bl      Function_222329c
	mov     r1, #0x0
	mvn     r1, r1
	ldr     r0, [r4, #0x8]
	mov     r2, r1
	bl      Function_2235780
	mov     r0, #0xf
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	strb    r0, [r4, #0x6]
	ldrb    r0, [r4, #0x6]
	ldrb    r1, [r4, #0x5]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0xdc] @ 0x222af98, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x14]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222aee2
	ldr     r0, [sp, #0x0]
	bl      Function_221fdd4
	mov     r1, r0
	mov     r0, #0x0
	add     r2, sp, #0x4
	bl      Function_2235350
	b       branch_222aef2
@ 0x222aee2

.thumb
branch_222aee2: @ 222aee2 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_221fdd4
	mov     r1, r0
	mov     r0, #0x1
	add     r2, sp, #0x4
	bl      Function_2235350
.thumb
branch_222aef2: @ 222aef2 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r6, #0x1
	bl      Function_2220280
	cmp     r0, #0x1
	ble     branch_222af2c
	add     r5, r4, #0x4
	add     r7, sp, #0x4
.thumb
branch_222af04: @ 222af04 :thumb
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	add     r2, sp, #0x8
	bl      Function_200ce6c
	str     r0, [r5, #0x14]
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r7, r1]
	ldsh    r2, [r7, r2]
	bl      Function_200d4c4
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      Function_2220280
	cmp     r6, r0
	blt     branch_222af04
.thumb
branch_222af2c: @ 222af2c :thumb
	add     r3, sp, #0x4
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r4, #0x14]
	bl      Function_200d4c4
	mov     r6, #0x0
	ldr     r0, [r4, #0x8]
	mov     r1, r6
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222af86
	mov     r5, r4
	mov     r7, r6
.thumb
branch_222af4e: @ 222af4e :thumb
	add     r1, r4, r6
	mov     r0, #0x0
	strb    r0, [r1, #0x1]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x2
	bl      Function_200d6a4
	mov     r2, #0x20
	sub     r2, r2, r7
	lsl     r2, r2, #16
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	asr     r2, r2, #16
	bl      Function_200d5dc
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      Function_2220280
	cmp     r6, r0
	blt     branch_222af4e
branch_222af86: @ 222af86 :thumb
	mov     r3, #0x1
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x10] @ 0x222af9c, (=#0x222ac71)
	mov     r2, r4
	lsl     r3, r3, #12
	bl      Function_22201cc
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x222af98

.word 0x4000052 @ 0x222af98
.word 0x222ac71 @ 0x222af9c



.thumb
Function_222afa0: @ 222afa0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x5
	bls     branch_222afb0
	b       branch_222b180

branch_222afb0: @ 222afb0 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r4, r5, #1
	lsl     r6, r0, #2
	lsl     r2, r5, #2
	lsl     r4, r0, #4
	lsl     r2, r2, #5
	mov     r0, r4
	add     r0, #0x14
	bl      Function_2225eb8
	cmp     r0, #0x1
	bne     branch_222b020
	mov     r0, r4
	add     r0, #0x38
	bl      Function_2226138
	mov     r2, #0x14
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	mov     r1, #0xc
	bl      Function_2007dec
	mov     r2, #0x16
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	mov     r1, #0xd
	bl      Function_2007dec
	mov     r2, #0x38
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_2008274
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x28]
	bl      Function_2225fd4
	mov     r2, #0x2
	mov     r3, r0
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	add     r2, r2, r3
	bl      Function_2007dec
	add     sp, #0x4
	pop     {r3-r6,pc}

branch_222b020: @ 222b020 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x222b02a


.incbin "./baserom/overlay/overlay_0012.bin", 0xb40a, 0x222b180 - 0x222b02a


.thumb
branch_222b180: @ 222b180 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222b192


.align 2, 0
.thumb
Function_222b194: @ 222b194 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x5c
	bl      Function_2018144
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x0]
	str     r5, [r4, #0xc]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x2]
	ldr     r0, [r4, #0xc]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2223354
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x64
	lsl     r3, r6, #16
	add     r0, #0x14
	mov     r2, r1
	asr     r3, r3, #16
	bl      Function_2225e68
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x38
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2226108
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0xc] @ 0x222b21c, (=#0x222afa1)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222b21a

.align 2
.word 0x222afa1 @ 0x222b21c



.thumb
Function_222b220: @ 222b220 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x4
	bls     branch_222b230
	b       branch_222b448

branch_222b230: @ 222b230 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r5, #1
	lsl     r2, r2, #3
	lsl     r6, r6, #4
	lsl     r2, r3, #6
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2225f6c
	cmp     r0, #0x1
	bne     branch_222b28a
	mov     r2, #0x10
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xc
	bl      Function_2007dec
	mov     r2, #0x12
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xd
	bl      Function_2007dec
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x24]
	bl      Function_2225fd4
	mov     r2, #0x2
	mov     r3, r0
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	add     r2, r2, r3
	bl      Function_2007dec
	add     sp, #0xc
	pop     {r3,r4,pc}

branch_222b28a: @ 222b28a :thumb
	mov     r1, #0x96
	str     r1, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, #0x32
	add     r0, #0x10
	mov     r3, r2
	bl      Function_2225ef0
	ldrb    r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3,r4,pc}
@ 0x222b2ac


.incbin "./baserom/overlay/overlay_0012.bin", 0xb68c, 0x222b448 - 0x222b2ac


.thumb
branch_222b448: @ 222b448 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x222b45a


.align 2, 0
.thumb
Function_222b45c: @ 222b45c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x58
	bl      Function_2018144
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	str     r5, [r4, #0x8]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x2]
	ldr     r0, [r4, #0x8]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_2223354
	str     r0, [r4, #0x4]
	mov     r0, #0x32
	str     r0, [sp, #0x0]
	mov     r1, #0x64
	str     r1, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x10
	mov     r2, #0x96
	mov     r3, r1
	bl      Function_2225ef0
	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0xc] @ 0x222b4c4, (=#0x222b221)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222b4c2

.align 2
.word 0x222b221 @ 0x222b4c4



.thumb
Function_222b4c8: @ 222b4c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r2, r0
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	beq     branch_222b4e2
	cmp     r0, #0x1
	beq     branch_222b5c8
	cmp     r0, #0x2
	bne     branch_222b4e0
	b       branch_222b62a

branch_222b4e0: @ 222b4e0 :thumb
	b       branch_222b65e

branch_222b4e2: @ 222b4e2 :thumb
	ldrb    r3, [r5, #0x0]
	mov     r0, #0x1f
	lsr     r2, r3, #31
	lsl     r1, r3, #31
	sub     r1, r1, r2
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #1
	add     r1, r3, #0x1
	str     r0, [sp, #0xc]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	mov     r0, #0x6
	mul     r0, r1
	ldr     r1, [pc, #0x174] @ 0x222b67c, (=#0x223a102)
	ldsh    r2, [r1, r0]
	ldr     r1, [sp, #0x8]
	sub     r7, r2, r1
	mov     r1, #0xa
	ldsh    r3, [r5, r1]
	ldr     r1, [pc, #0x16c] @ 0x222b680, (=#0x223a100)
	ldsh    r6, [r1, r0]
	mov     r1, #0x8
	ldsh    r2, [r5, r1]
	ldr     r1, [pc, #0x168] @ 0x222b684, (=#0x223a0fe)
	ldsh    r4, [r1, r0]
	lsl     r0, r7, #16
	str     r3, [sp, #0x0]
	add     r1, r2, r4
	lsr     r0, r0, #16
	add     r2, r2, r6
	str     r0, [sp, #0x4]
	mov     r0, r5
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	add     r0, #0x28
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, #0xa
	ldsh    r3, [r5, r0]
	mov     r0, #0x8
	ldsh    r2, [r5, r0]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	sub     r1, r2, r4
	str     r3, [sp, #0x0]
	sub     r2, r2, r6
	str     r0, [sp, #0x4]
	mov     r0, r5
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	add     r0, #0x4c
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2225bc8
	ldr     r0, [sp, #0xc]
	add     r1, r0, #0x1
	mov     r0, #0x6
	mul     r0, r1
	ldr     r1, [pc, #0x114] @ 0x222b67c, (=#0x223a102)
	ldsh    r2, [r1, r0]
	ldr     r1, [sp, #0x8]
	sub     r7, r2, r1
	mov     r1, #0xa
	ldsh    r3, [r5, r1]
	ldr     r1, [pc, #0x10c] @ 0x222b680, (=#0x223a100)
	ldsh    r6, [r1, r0]
	mov     r1, #0x8
	ldsh    r2, [r5, r1]
	ldr     r1, [pc, #0x108] @ 0x222b684, (=#0x223a0fe)
	ldsh    r4, [r1, r0]
	lsl     r0, r7, #16
	str     r3, [sp, #0x0]
	add     r1, r2, r4
	lsr     r0, r0, #16
	add     r2, r2, r6
	str     r0, [sp, #0x4]
	mov     r0, r5
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	add     r0, #0x70
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, #0xa
	ldsh    r3, [r5, r0]
	mov     r0, #0x8
	ldsh    r2, [r5, r0]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	sub     r1, r2, r4
	str     r3, [sp, #0x0]
	sub     r2, r2, r6
	str     r0, [sp, #0x4]
	mov     r0, r5
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	add     r0, #0x94
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2225bc8
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
branch_222b5c8: @ 222b5c8 :thumb
	mov     r0, #0x0
	mov     r7, r5
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	add     r7, #0x28
	mov     r6, r5
	mov     r4, r5
branch_222b5d6: @ 222b5d6 :thumb
	mov     r0, r7
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_222b5ec
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	b       branch_222b5fa

branch_222b5ec: @ 222b5ec :thumb
	mov     r1, #0x28
	mov     r2, #0x2a
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [r4, #0x18]
	bl      Function_200d4c4
branch_222b5fa: @ 222b5fa :thumb
	ldr     r0, [r4, #0x18]
	bl      Function_200d330
	ldr     r0, [sp, #0x14]
	add     r7, #0x24
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x24
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x14]
	cmp     r0, #0x4
	blt     branch_222b5d6
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x4
	bne     branch_222b670
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x9
	bne     branch_222b624
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	b       branch_222b670

branch_222b624: @ 222b624 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x1]
	b       branch_222b670

branch_222b62a: @ 222b62a :thumb
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_222b634
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x4]
branch_222b634: @ 222b634 :thumb
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0xf
	bcs     branch_222b63e
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x5]
branch_222b63e: @ 222b63e :thumb
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_222b650
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0xf
	bne     branch_222b650
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
branch_222b650: @ 222b650 :thumb
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x2c] @ 0x222b688, (=#0x4000052)
	strh    r1, [r0, #0x0]
	b       branch_222b670

branch_222b65e: @ 222b65e :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_222b670: @ 222b670 :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_200c7ec
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222b67a

.align 2
.word 0x223a102 @ 0x222b67c
.word 0x223a100 @ 0x222b680
.word 0x223a0fe @ 0x222b684
.word 0x4000052 @ 0x222b688



.thumb
Function_222b68c: @ 222b68c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x18]
	bl      Function_221fde4
	mov     r1, #0xb8
	bl      Function_2018144
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x0]
	ldr     r0, [sp, #0x18]
	str     r0, [r4, #0xc]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0xa]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, #0xa
	ldsh    r1, [r4, r1]
	sub     r0, r1, r0
	strh    r0, [r4, #0xa]
	ldr     r0, [r4, #0xc]
	bl      Function_22202ec
	str     r0, [r4, #0x14]
	mov     r0, #0x8
	strb    r0, [r4, #0x4]
	mov     r1, #0x6
	strb    r1, [r4, #0x5]
	.hword  0x1fc9 @ sub r1, r1, #0x7
	ldr     r0, [r4, #0xc]
	mov     r2, r1
	bl      Function_2235780
	ldrb    r0, [r4, #0x5]
	ldrb    r1, [r4, #0x4]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x210] @ 0x222b90c, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2223334
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0xc]
	bl      Function_222339c
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2223344
	str     r0, [sp, #0x1c]
	mov     r6, #0x0
	mov     r5, r4
.thumb
branch_222b72a: @ 222b72a :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, r6
	bl      Function_22202c0
	mov     r1, #0x1
	str     r0, [r5, #0x18]
	bl      Function_200d810
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_222b72a
	ldr     r0, [r4, #0xc]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_223525c
	cmp     r0, #0x3
	ldr     r0, [r4, #0x18]
	bne     branch_222b81a
	mov     r1, #0xa
	bl      Function_200d474
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xa
	bl      Function_200d474
	ldr     r0, [r4, #0x20]
	mov     r1, #0x14
	bl      Function_200d474
	ldr     r0, [r4, #0x24]
	mov     r1, #0x14
	bl      Function_200d474
	ldr     r0, [r4, #0x18]
	mov     r1, r7
	bl      Function_200d460
	ldr     r0, [r4, #0x1c]
	mov     r1, r7
	bl      Function_200d460
	ldr     r0, [r4, #0x20]
	mov     r1, r7
	bl      Function_200d460
	ldr     r0, [r4, #0x24]
	mov     r1, r7
	bl      Function_200d460
	ldr     r0, [r4, #0x18]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [r4, #0xc]
	bl      Function_222332c
	mov     r6, r0
	ldr     r0, [sp, #0x18]
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	lsl     r0, r5, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x80
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	mov     r0, r6
	bl      Function_2003b08
	ldr     r0, [r4, #0x20]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [r4, #0xc]
	bl      Function_222332c
	mov     r6, r0
	ldr     r0, [sp, #0x18]
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	lsl     r0, r5, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0xc4
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	mov     r0, r6
	bl      Function_2003b08
	b       branch_222b8fc

branch_222b81a: @ 222b81a :thumb
	mov     r1, #0x14
	bl      Function_200d474
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x14
	bl      Function_200d474
	ldr     r0, [r4, #0x20]
	mov     r1, #0xa
	bl      Function_200d474
	ldr     r0, [r4, #0x24]
	mov     r1, #0xa
	bl      Function_200d474
	ldr     r0, [r4, #0x18]
	add     r1, r7, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x1c]
	add     r1, r7, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x20]
	add     r1, r7, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x24]
	add     r1, r7, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x18]
	mov     r1, r7
	bl      Function_200d460
	ldr     r0, [r4, #0x1c]
	mov     r1, r7
	bl      Function_200d460
	ldr     r0, [r4, #0x20]
	mov     r1, r7
	bl      Function_200d460
	ldr     r0, [r4, #0x24]
	mov     r1, r7
	bl      Function_200d460
	ldr     r0, [r4, #0x18]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [r4, #0xc]
	bl      Function_222332c
	mov     r6, r0
	ldr     r0, [sp, #0x18]
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	lsl     r0, r5, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0xc4
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	mov     r0, r6
	bl      Function_2003b08
	ldr     r0, [r4, #0x20]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [r4, #0xc]
	bl      Function_222332c
	mov     r6, r0
	ldr     r0, [sp, #0x18]
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	lsl     r0, r5, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x80
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	mov     r0, r6
	bl      Function_2003b08
.thumb
branch_222b8fc: @ 222b8fc :thumb
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0x10] @ 0x222b910, (=#0x222b4c9)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x222b90a

.align 2
.word 0x4000052 @ 0x222b90c
.word 0x222b4c9 @ 0x222b910



.thumb
Function_222b914: @ 222b914 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222b926
	cmp     r0, #0x1
	beq     branch_222b980
	b       branch_222b9c0

branch_222b926: @ 222b926 :thumb
	ldrb    r1, [r4, #0x2]
	ldr     r5, [pc, #0xa4] @ 0x222b9d0, (=#0x223a099)
	mov     r2, #0x64
	lsl     r0, r1, #1
	add     r3, r1, r0
	ldr     r0, [pc, #0xa0] @ 0x222b9d4, (=#0x223a09a)
	ldr     r1, [pc, #0xa4] @ 0x222b9d8, (=#0x223a098)
	ldrb    r0, [r0, r3]
	ldrb    r1, [r1, r3]
	ldrb    r3, [r5, r3]
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0xc
	bl      Function_2225e68
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x90] @ 0x222b9dc, (=#0x7fff)
	bne     branch_222b95c
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r4, #0x8]
	mov     r2, #0x6
	mov     r3, r1
	bl      Function_20086fc
	b       branch_222b96a

branch_222b95c: @ 222b95c :thumb
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_20086fc
branch_222b96a: @ 222b96a :thumb
	ldrb    r1, [r4, #0x2]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r4, #0x2]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}

branch_222b980: @ 222b980 :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_2225eb8
	cmp     r0, #0x0
	bne     branch_222b9a8
	ldr     r0, [r4, #0x8]
	bl      Function_20087b4
	cmp     r0, #0x0
	bne     branch_222b9a8
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x4
	ldrb    r0, [r4, #0x0]
	bcs     branch_222b9a4
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222b9a8

branch_222b9a4: @ 222b9a4 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_222b9a8: @ 222b9a8 :thumb
	mov     r1, #0xc
	ldsh    r2, [r4, r1]
	ldr     r0, [r4, #0x8]
	bl      Function_2007dec
	mov     r2, #0xe
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x8]
	mov     r1, #0xd
	bl      Function_2007dec
	pop     {r3-r5,pc}

branch_222b9c0: @ 222b9c0 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}
@ 0x222b9d0

.word 0x223a099 @ 0x222b9d0
.word 0x223a09a @ 0x222b9d4
.word 0x223a098 @ 0x222b9d8
.word 0x7fff @ 0x222b9dc



.thumb
Function_222b9e0: @ 222b9e0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x30
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x1]
	str     r5, [r4, #0x4]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222ba14, (=#0x222b915)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x222ba12

.align 2
.word 0x222b915 @ 0x222ba14



.thumb
Function_222ba18: @ 222ba18 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222ba2c
	cmp     r0, #0x1
	beq     branch_222ba66
	b       branch_222babe

branch_222ba2c: @ 222ba2c :thumb
	ldrb    r1, [r4, #0x1]
	ldr     r2, [pc, #0xa0] @ 0x222bad0, (=#0x223a0e0)
	ldr     r5, [pc, #0xa0] @ 0x222bad4, (=#0x223a0e1)
	lsl     r0, r1, #2
	add     r3, r1, r0
	ldr     r0, [pc, #0xa0] @ 0x222bad8, (=#0x223a0e2)
	ldr     r1, [pc, #0xa0] @ 0x222badc, (=#0x223a0df)
	ldrb    r0, [r0, r3]
	ldrb    r1, [r1, r3]
	ldrb    r2, [r2, r3]
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x222bae0, (=#0x223a0e3)
	ldrb    r0, [r0, r3]
	ldrb    r3, [r5, r3]
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2225ef0
	ldrb    r0, [r4, #0x1]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4,r5,pc}

branch_222ba66: @ 222ba66 :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2225f6c
	cmp     r0, #0x0
	bne     branch_222ba84
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x3
	ldrb    r0, [r4, #0x0]
	bcs     branch_222ba80
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222ba84

branch_222ba80: @ 222ba80 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_222ba84: @ 222ba84 :thumb
	mov     r2, #0x10
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xc
	bl      Function_2007dec
	mov     r2, #0x12
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xd
	bl      Function_2007dec
	mov     r0, #0x2
	mov     r1, #0x4
	ldsh    r0, [r4, r0]
	ldsh    r1, [r4, r1]
	ldr     r2, [r4, #0x24]
	bl      Function_2225fd4
	mov     r2, #0x2
	mov     r3, r0
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	add     r2, r2, r3
	bl      Function_2007dec
	add     sp, #0xc
	pop     {r4,r5,pc}

branch_222babe: @ 222babe :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222bad0

.word 0x223a0e0 @ 0x222bad0
.word 0x223a0e1 @ 0x222bad4
.word 0x223a0e2 @ 0x222bad8
.word 0x223a0df @ 0x222badc
.word 0x223a0e3 @ 0x222bae0



.thumb
Function_222bae4: @ 222bae4 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x34
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	str     r5, [r4, #0x8]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x2]
	ldr     r0, [r4, #0x8]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_2223354
	strh    r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0x8] @ 0x222bb2c, (=#0x222ba19)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x222bb2c

.word 0x222ba19 @ 0x222bb2c



.thumb
Function_222bb30: @ 222bb30 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x5
	bls     branch_222bb40
	b       branch_222bca0

branch_222bb40: @ 222bb40 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r4, r0, #1
	lsl     r6, r0, #2
	lsl     r0, r6, #2
	lsl     r2, r2, #3
	lsl     r0, r2, #4
	ldrb    r1, [r4, #0x1]
	ldr     r2, [pc, #0x184] @ 0x222bce0, (=#0x223a0b8)
	ldr     r5, [pc, #0x184] @ 0x222bce4, (=#0x223a0b9)
	lsl     r0, r1, #2
	add     r3, r1, r0
	ldr     r0, [pc, #0x184] @ 0x222bce8, (=#0x223a0ba)
	ldr     r1, [pc, #0x184] @ 0x222bcec, (=#0x223a0b7)
	ldrb    r0, [r0, r3]
	ldrb    r1, [r1, r3]
	ldrb    r2, [r2, r3]
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x17c] @ 0x222bcf0, (=#0x223a0bb)
	ldrb    r0, [r0, r3]
	ldrb    r3, [r5, r3]
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2225ef0
	ldrb    r0, [r4, #0x1]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4,r5,pc}
@ 0x222bb92


.incbin "./baserom/overlay/overlay_0012.bin", 0xbf72, 0x222bca0 - 0x222bb92


.thumb
branch_222bca0: @ 222bca0 :thumb
	mov     r2, #0x4
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_2007dec
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
	mov     r1, #0xc
	mov     r2, r1
	ldr     r0, [r4, #0xc]
	add     r2, #0xf4
	bl      Function_2007dec
	mov     r1, #0xd
	mov     r2, r1
	ldr     r0, [r4, #0xc]
	add     r2, #0xf3
	bl      Function_2007dec
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222bce0

.word 0x223a0b8 @ 0x222bce0
.word 0x223a0b9 @ 0x222bce4
.word 0x223a0ba @ 0x222bce8
.word 0x223a0b7 @ 0x222bcec
.word 0x223a0bb @ 0x222bcf0



.thumb
Function_222bcf4: @ 222bcf4 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x34
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	str     r5, [r4, #0x8]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x2]
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	strh    r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_2223354
	strh    r0, [r4, #0x6]
	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0x8] @ 0x222bd44, (=#0x222bb31)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x222bd42

.align 2
.word 0x222bb31 @ 0x222bd44



.thumb
Function_222bd48: @ 222bd48 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x4
	bhi     branch_222be32
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r0, #1
	lsl     r0, r4, #1
	lsl     r6, r6, #1
	lsl     r0, r6, #2
	ldr     r0, [r4, #0x8]
	bl      Function_2222354
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc4] @ 0x222be44, (=#0x7fff)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	lsr     r2, r2, #16
	.hword  0x1ecb @ sub r3, r1, #0x3
	bl      Function_2003178
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x10]
	mov     r2, #0x10
	mov     r3, r1
	bl      Function_20086fc
	ldrb    r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3,r4,pc}
@ 0x222bda6


.incbin "./baserom/overlay/overlay_0012.bin", 0xc186, 0x222be32 - 0x222bda6


.thumb
branch_222be32: @ 222be32 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x222be44

.word 0x7fff @ 0x222be44



.thumb
Function_222be48: @ 222be48 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x14
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x8]
	mov     r0, r5
	bl      Function_222332c
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0x8] @ 0x222be7c, (=#0x222bd49)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x222be7a

.align 2
.word 0x222bd49 @ 0x222be7c



.thumb
Function_222be80: @ 222be80 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222be94
	cmp     r0, #0x1
	beq     branch_222bf00
	b       branch_222bf74

branch_222be94: @ 222be94 :thumb
	ldrb    r1, [r4, #0x1]
	ldr     r2, [pc, #0xf0] @ 0x222bf88, (=#0x223a0c2)
	ldr     r5, [pc, #0xf0] @ 0x222bf8c, (=#0x223a0c3)
	lsl     r0, r1, #2
	add     r3, r1, r0
	ldr     r0, [pc, #0xf0] @ 0x222bf90, (=#0x223a0c4)
	ldr     r1, [pc, #0xf0] @ 0x222bf94, (=#0x223a0c1)
	ldrb    r0, [r0, r3]
	ldrb    r1, [r1, r3]
	ldrb    r2, [r2, r3]
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe8] @ 0x222bf98, (=#0x223a0c5)
	ldrb    r0, [r0, r3]
	ldrb    r3, [r5, r3]
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2225ef0
	ldrb    r1, [r4, #0x1]
	ldr     r6, [pc, #0xd8] @ 0x222bf9c, (=#0x223a0a4)
	lsl     r0, r1, #1
	add     r5, r1, r0
	mov     r0, #0x4
	ldsh    r3, [r4, r0]
	ldr     r0, [pc, #0xd4] @ 0x222bfa0, (=#0x223a0a5)
	mov     r1, #0x0
	ldrb    r0, [r0, r5]
	mov     r2, r1
	add     r0, r3, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc8] @ 0x222bfa4, (=#0x223a0a6)
	ldrb    r0, [r0, r5]
	ldrb    r5, [r6, r5]
	str     r0, [sp, #0x4]
	add     r3, r3, r5
	mov     r0, r4
	lsl     r3, r3, #16
	add     r0, #0x34
	asr     r3, r3, #16
	bl      Function_2225bc8
	ldrb    r0, [r4, #0x1]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r6,pc}

branch_222bf00: @ 222bf00 :thumb
	mov     r0, r4
	add     r0, #0x10
	mov     r5, #0x0
	bl      Function_2225f6c
	cmp     r0, #0x0
	bne     branch_222bf10
	.hword  0x1c6d @ add r5, r5, #0x1
branch_222bf10: @ 222bf10 :thumb
	mov     r0, r4
	add     r0, #0x34
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_222bf1e
	.hword  0x1c6d @ add r5, r5, #0x1
branch_222bf1e: @ 222bf1e :thumb
	cmp     r5, #0x2
	blt     branch_222bf44
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x3
	bcc     branch_222bf40
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x3
	bcc     branch_222bf44
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222bf44

branch_222bf40: @ 222bf40 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
branch_222bf44: @ 222bf44 :thumb
	mov     r2, #0x10
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xc
	bl      Function_2007dec
	mov     r2, #0x12
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xd
	bl      Function_2007dec
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x36
	mov     r2, #0x6
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	ldr     r3, [r4, #0x24]
	bl      Function_2226024
	add     sp, #0xc
	pop     {r3-r6,pc}

branch_222bf74: @ 222bf74 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x222bf86

.align 2
.word 0x223a0c2 @ 0x222bf88
.word 0x223a0c3 @ 0x222bf8c
.word 0x223a0c4 @ 0x222bf90
.word 0x223a0c1 @ 0x222bf94
.word 0x223a0c5 @ 0x222bf98
.word 0x223a0a4 @ 0x222bf9c
.word 0x223a0a5 @ 0x222bfa0
.word 0x223a0a6 @ 0x222bfa4



.thumb
Function_222bfa8: @ 222bfa8 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x58
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	str     r5, [r4, #0x8]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_2223354
	strh    r0, [r4, #0x6]
	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0x8] @ 0x222bff0, (=#0x222be81)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x222bff0

.word 0x222be81 @ 0x222bff0



.thumb
Function_222bff4: @ 222bff4 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222c00a
	cmp     r0, #0x1
	beq     branch_222c022
	cmp     r0, #0x2
	beq     branch_222c042
	b       branch_222c084

branch_222c00a: @ 222c00a :thumb
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0xa
	bcc     branch_222c0a0
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222c0a0

branch_222c022: @ 222c022 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_200d3f4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d3f4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      Function_200d810
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222c0a0

branch_222c042: @ 222c042 :thumb
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0xa
	bcc     branch_222c0a0
	ldr     r0, [pc, #0x64] @ 0x222c0b4, (=#0x400004a)
	mov     r1, #0x3f
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1f
	orr     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x58] @ 0x222c0b8, (=#0xffffc0ff)
	lsl     r1, r1, #8
	and     r2, r3
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222c0a0

branch_222c084: @ 222c084 :thumb
	mov     r3, #0x1
	lsl     r3, r3, #26
	ldr     r1, [r3, #0x0]
	ldr     r0, [pc, #0x30] @ 0x222c0bc, (=#0xffff1fff)
	and     r0, r1
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}

branch_222c0a0: @ 222c0a0 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_200d330
	ldr     r0, [r4, #0x10]
	bl      Function_200d330
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	pop     {r4,pc}
@ 0x222c0b4

.word 0x400004a @ 0x222c0b4
.word 0xffffc0ff @ 0x222c0b8
.word 0xffff1fff @ 0x222c0bc



.thumb
Function_222c0c0: @ 222c0c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r1, #0x14
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x4]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_22202c0
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0xa4] @ 0x222c198, (=#0xffff1fff)
	and     r2, r1
	lsr     r1, r0, #11
	orr     r1, r2
	str     r1, [r0, #0x0]
	add     r0, #0x4a
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x3f
	bic     r2, r1
	mov     r1, #0x1f
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x8c] @ 0x222c19c, (=#0xffffc0ff)
	and     r2, r1
	mov     r1, #0x12
	lsl     r1, r1, #8
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2223334
	mov     r7, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2223344
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      Function_222332c
	str     r0, [sp, #0x1c]
	mov     r0, r5
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r1, #0x20
	lsl     r0, r6, #20
	str     r1, [sp, #0x4]
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	add     r1, #0xe0
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	mov     r2, r7
	bl      Function_2003b08
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x14] @ 0x222c1a0, (=#0x222bff5)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x222c196

.align 2
.word 0xffff1fff @ 0x222c198
.word 0xffffc0ff @ 0x222c19c
.word 0x222bff5 @ 0x222c1a0


.thumb
Function_222c1a4: @ 222c1a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bls     branch_222c1b4
	b       branch_222c396
@ 0x222c1b4

.thumb
branch_222c1b4: @ 222c1b4 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r3, #0
	lsl     r0, r6, #4
	lsl     r0, r5, #5
	ldr     r0, [r4, #0xc]
	mov     r1, #0xe
	mov     r2, #0x1
	bl      Function_2007dec
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222c3b2
@ 0x222c1da


.incbin "./baserom/overlay/overlay_0012.bin", 0xc5ba, 0x222c396 - 0x222c1da


.thumb
branch_222c396: @ 222c396 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x10]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x2c
	pop     {r4-r7,pc}

branch_222c3b2: @ 222c3b2 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_200c7ec
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x222c3bc


.incbin "./baserom/overlay/overlay_0012.bin", 0xc79c, 0x222c3c0 - 0x222c3bc


.thumb
Function_222c3c0: @ 222c3c0 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x9c
	str     r0, [sp, #0x0]
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x10]
	bl      Function_22202ec
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x10]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x2]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, #0x2
	ldsh    r1, [r4, r1]
	sub     r0, r1, r0
	strh    r0, [r4, #0x2]
	ldr     r0, [r4, #0x10]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	bl      Function_2223354
	mov     r1, #0x0
	str     r0, [r4, #0x4]
	mvn     r1, r1
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	bl      Function_2235780
	mov     r6, #0x0
	ldr     r1, [pc, #0x78] @ 0x222c49c, (=#0x60c)
	ldr     r0, [pc, #0x78] @ 0x222c4a0, (=#0x4000052)
	mov     r5, r4
	strh    r1, [r0, #0x0]
	mov     r7, r6
.thumb
branch_222c42c: @ 222c42c :thumb
	strb    r7, [r5, #0x18]
	strb    r7, [r5, #0x19]
	ldr     r0, [r4, #0x10]
	mov     r1, r6
	bl      Function_22202c0
	str     r0, [r5, #0x1c]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x1c]
	add     r1, r6, #0x1
	bl      Function_200d474
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x2c
	cmp     r6, #0x3
	blt     branch_222c42c
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	bl      Function_22234a8
	cmp     r0, #0x1
	bne     branch_222c46a
	mov     r0, #0x0
	mvn     r0, r0
	b       branch_222c46c
@ 0x222c46a

.thumb
branch_222c46a: @ 222c46a :thumb
	mov     r0, #0x1
.thumb
branch_222c46c: @ 222c46c :thumb
	strb    r0, [r4, #0x8]
	mov     r6, #0x0
	mov     r5, r4
	mov     r7, #0x8
.thumb
branch_222c474: @ 222c474 :thumb
	ldsb    r0, [r4, r7]
	blx     Function_20e17b4
	mov     r1, r0
	mov     r2, #0xfe
	ldr     r0, [r5, #0x1c]
	lsl     r2, r2, #22
	bl      Function_200d6e8
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x2c
	cmp     r6, #0x3
	blt     branch_222c474
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0x10] @ 0x222c4a4, (=#0x222c1a5)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x222c49a

.align 2
.word 0x60c @ 0x222c49c
.word 0x4000052 @ 0x222c4a0
.word 0x222c1a5 @ 0x222c4a4



.thumb
Function_222c4a8: @ 222c4a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bls     branch_222c4b8
	b       branch_222c5e2

branch_222c4b8: @ 222c4b8 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r7, #0
	lsl     r4, r1, #1
	lsl     r0, r5, #2
	ldr     r0, [r4, #0xc]
	bl      Function_222332c
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2222354
	mov     r2, r0
	mov     r1, #0x0
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	mov     r0, r5
	lsr     r2, r2, #16
	mov     r3, r1
	bl      Function_2003178
	ldrb    r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x222c4fe


.incbin "./baserom/overlay/overlay_0012.bin", 0xc8de, 0x222c5e2 - 0x222c4fe


.thumb
branch_222c5e2: @ 222c5e2 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222c5f4


.incbin "./baserom/overlay/overlay_0012.bin", 0xc9d4, 0x222c5fc - 0x222c5f4


.thumb
Function_222c5fc: @ 222c5fc :thumb
	push    {r3-r7,lr}
	mov     r1, #0xd8
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	str     r5, [r4, #0xc]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	bl      Function_2220278
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_222c62e
	mov     r1, #0x40
	b       branch_222c630

branch_222c62e: @ 222c62e :thumb
	mov     r1, #0xa
branch_222c630: @ 222c630 :thumb
	mov     r2, r4
	mov     r0, r5
	add     r2, #0x14
	add     r3, r4, #0x4
	bl      Function_2235998
	ldr     r0, [r4, #0x4]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222c666
	mov     r5, r4
	mov     r7, r6
branch_222c648: @ 222c648 :thumb
	ldr     r0, [r5, #0x1c]
	mov     r1, r7
	bl      Function_20080c0
	strh    r0, [r5, #0x14]
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r5, #0x16]
	ldr     r0, [r4, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x14
	cmp     r6, r0
	blt     branch_222c648
branch_222c666: @ 222c666 :thumb
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0x8] @ 0x222c674, (=#0x222c4a9)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x222c672

.align 2
.word 0x222c4a9 @ 0x222c674



.thumb
Function_222c678: @ 222c678 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_222c6c2
	mov     r0, r4
	add     r0, #0x40
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_222c696
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_222c696: @ 222c696 :thumb
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_2226138
	mov     r0, r4
	add     r0, #0x64
	bl      Function_2226454
	mov     r1, #0x40
	mov     r2, #0x42
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x18]
	bl      Function_200d4c4
	ldr     r0, [r4, #0x18]
	bl      Function_200d330
	ldr     r0, [r4, #0x10]
	bl      Function_200c7ec
	pop     {r4,pc}

branch_222c6c2: @ 222c6c2 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x222c6d2


.align 2, 0
.thumb
Function_222c6d4: @ 222c6d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0x8c
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	str     r5, [r4, #0xc]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	bl      Function_2220278
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x18]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	cmp     r0, #0x0
	ldr     r0, [r4, #0xc]
	bne     branch_222c718
	bl      Function_2220248
	b       branch_222c71c
@ 0x222c718

.thumb
branch_222c718: @ 222c718 :thumb
	bl      Function_2220240
.thumb
branch_222c71c: @ 222c71c :thumb
	mov     r6, r0
	ldr     r0, [r4, #0xc]
	mov     r1, r6
	bl      Function_22232fc
	str     r0, [r4, #0x14]
	add     r1, r4, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x14]
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, #0x6
	ldsh    r1, [r4, r1]
	sub     r0, r1, r0
	strh    r0, [r4, #0x6]
	ldr     r0, [r4, #0xc]
	mov     r1, r6
	bl      Function_2225964
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	mov     r1, r6
	bl      Function_222598c
	mov     r6, r0
	mov     r0, #0x6
	ldsh    r3, [r4, r0]
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	mov     r2, #0x14
	mov     r0, r6
	mul     r0, r2
	add     r0, r3, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	sub     r2, #0x28
	mul     r2, r7
	add     r2, r1, r2
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x40
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_22233ec
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22233ec
	mov     r5, #0x1
	mov     r3, r5
	lsl     r3, r6
	mov     r1, r0
	mov     r6, r3
	mov     r2, #0x20
	mov     r3, r5
	orr     r6, r2
	lsl     r3, r1
	mov     r1, r6
	orr     r1, r3
	sub     r2, #0x21
	ldr     r0, [r4, #0xc]
	orr     r1, r5
	mov     r3, r2
	bl      Function_22357bc
	mov     r1, #0x1f
	mov     r2, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x64
	mov     r3, r2
	bl      Function_2226424
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      Function_200d810
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0xc] @ 0x222c7dc, (=#0x222c679)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222c7da

.align 2
.word 0x222c679 @ 0x222c7dc



.thumb
Function_222c7e0: @ 222c7e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222c7f2
	cmp     r0, #0x1
	beq     branch_222c832
	b       branch_222c862

branch_222c7f2: @ 222c7f2 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	ldrb    r0, [r4, #0x2]
	bne     branch_222c804
	lsl     r3, r0, #3
	ldr     r0, [pc, #0x7c] @ 0x222c87c, (=#0x223a118)
	ldr     r2, [r0, r3]
	neg     r1, r2
	b       branch_222c80c

branch_222c804: @ 222c804 :thumb
	lsl     r3, r0, #3
	ldr     r0, [pc, #0x74] @ 0x222c87c, (=#0x223a118)
	ldr     r1, [r0, r3]
	neg     r2, r1
branch_222c80c: @ 222c80c :thumb
	ldr     r5, [pc, #0x70] @ 0x222c880, (=#0x223a11c)
	mov     r0, r4
	ldr     r3, [r5, r3]
	add     r0, #0x5c
	bl      Function_2225d50
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x1
	bne     branch_222c824
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
branch_222c824: @ 222c824 :thumb
	ldrb    r1, [r4, #0x1]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_222c832: @ 222c832 :thumb
	mov     r0, r4
	add     r0, #0x5c
	bl      Function_2225da0
	cmp     r0, #0x1
	bne     branch_222c84e
	ldr     r2, [r4, #0x5c]
	ldr     r0, [r4, #0x28]
	lsl     r2, r2, #16
	mov     r1, #0x9
	lsr     r2, r2, #16
	bl      Function_2007dec
	pop     {r3-r5,pc}

branch_222c84e: @ 222c84e :thumb
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x5
	ldrb    r0, [r4, #0x0]
	bcc     branch_222c85c
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}

branch_222c85c: @ 222c85c :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}

branch_222c862: @ 222c862 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}
@ 0x222c87c

.word 0x223a118 @ 0x222c87c
.word 0x223a11c @ 0x222c880



.thumb
Function_222c884: @ 222c884 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222c898
	cmp     r0, #0x1
	beq     branch_222c8bc
	b       branch_222c8e6

branch_222c898: @ 222c898 :thumb
	mov     r0, #0x22
	ldsh    r0, [r4, r0]
	mov     r1, #0x1c
	mov     r2, #0x1e
	str     r0, [sp, #0x0]
	mov     r3, #0x20
	mov     r0, r4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	add     r0, #0x38
	bl      Function_2226108
	ldrb    r0, [r4, #0x0]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4,pc}

branch_222c8bc: @ 222c8bc :thumb
	ldr     r0, [r4, #0x2c]
	add     r1, sp, #0x4
	bl      Function_2235918
	mov     r0, r4
	add     r3, sp, #0x4
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r3, [r4, #0x2c]
	add     r0, #0x38
	bl      Function_222619c
	cmp     r0, #0x0
	bne     branch_222c8f4
	ldrb    r0, [r4, #0x0]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r4,pc}

branch_222c8e6: @ 222c8e6 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_222c8f4: @ 222c8f4 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222c8f8


.thumb
Function_222c8f8: @ 222c8f8 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x70
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x28]
	mov     r1, #0xb
	mov     r2, #0x64
	bl      Function_2007dec
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	strh    r0, [r4, #0x1c]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2220280
	strh    r0, [r4, #0x1e]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2220280
	strh    r0, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2220280
	strh    r0, [r4, #0x22]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2220280
	str     r0, [r4, #0x24]
	cmp     r6, #0x0
	ldr     r0, [r4, #0x4]
	bne     branch_222c982
	ldr     r1, [pc, #0x10] @ 0x222c98c, (=#0x222c7e1)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x222c982

.thumb
branch_222c982: @ 222c982 :thumb
	ldr     r1, [pc, #0xc] @ 0x222c990, (=#0x222c885)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x222c98c

.word 0x222c7e1 @ 0x222c98c
.word 0x222c885 @ 0x222c990



.thumb
Function_222c994: @ 222c994 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r2, r0
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_222c9a6
	cmp     r0, #0x1
	beq     branch_222c9c8
	b       branch_222ca1c

branch_222c9a6: @ 222c9a6 :thumb
	ldr     r2, [r5, #0x48]
	mov     r0, #0xa
	add     r1, r2, #0x2
	str     r0, [sp, #0x0]
	mov     r0, r5
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	add     r0, #0x4c
	asr     r1, r1, #16
	asr     r2, r2, #16
	mov     r3, #0x0
	bl      Function_2226108
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}

branch_222c9c8: @ 222c9c8 :thumb
	mov     r0, r5
	add     r0, #0x4c
	bl      Function_2226138
	cmp     r0, #0x0
	bne     branch_222c9dc
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}

branch_222c9dc: @ 222c9dc :thumb
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, #0x28
branch_222c9e2: @ 222c9e2 :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_222c9f6
	mov     r2, #0x4c
	ldsh    r3, [r5, r2]
	ldsh    r2, [r4, r7]
	mov     r1, #0x0
	add     r2, r3, r2
	bl      Function_2007dec
branch_222c9f6: @ 222c9f6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_222c9e2
	mov     r3, #0x4c
	ldsh    r3, [r5, r3]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_2019184
	mov     r3, #0x4e
	mov     r1, #0x3
	ldsh    r3, [r5, r3]
	ldr     r0, [r5, #0x14]
	mov     r2, r1
	bl      Function_2019184
	pop     {r3-r7,pc}

branch_222ca1c: @ 222ca1c :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x222ca2c


.thumb
Function_222ca2c: @ 222ca2c :thumb
	push    {r3-r7,lr}
	mov     r1, #0x70
	mov     r4, r0
	bl      Function_2235e50
	mov     r7, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_223595c
	ldr     r0, [r7, #0x4]
	mov     r1, #0x1
	bl      Function_2220540
	cmp     r0, #0x46
	bgt     branch_222ca5c
	bge     branch_222ca7e
	cmp     r0, #0x1e
	bgt     branch_222ca56
	beq     branch_222ca8a
	b       branch_222ca90
@ 0x222ca56

.thumb
branch_222ca56: @ 222ca56 :thumb
	cmp     r0, #0x32
	beq     branch_222ca84
	b       branch_222ca90
@ 0x222ca5c

.thumb
branch_222ca5c: @ 222ca5c :thumb
	cmp     r0, #0x6e
	bgt     branch_222ca68
	bge     branch_222ca72
	cmp     r0, #0x5a
	beq     branch_222ca78
	b       branch_222ca90
@ 0x222ca68

.thumb
branch_222ca68: @ 222ca68 :thumb
	cmp     r0, #0x96
	bne     branch_222ca90
	mov     r0, #0x6
	str     r0, [r7, #0x48]
	b       branch_222ca94
@ 0x222ca72

.thumb
branch_222ca72: @ 222ca72 :thumb
	mov     r0, #0x5
	str     r0, [r7, #0x48]
	b       branch_222ca94
@ 0x222ca78

.thumb
branch_222ca78: @ 222ca78 :thumb
	mov     r0, #0x4
	str     r0, [r7, #0x48]
	b       branch_222ca94
@ 0x222ca7e

.thumb
branch_222ca7e: @ 222ca7e :thumb
	mov     r0, #0x3
	str     r0, [r7, #0x48]
	b       branch_222ca94
@ 0x222ca84

.thumb
branch_222ca84: @ 222ca84 :thumb
	mov     r0, #0x2
	str     r0, [r7, #0x48]
	b       branch_222ca94
@ 0x222ca8a

.thumb
branch_222ca8a: @ 222ca8a :thumb
	mov     r0, #0x1
	str     r0, [r7, #0x48]
	b       branch_222ca94
@ 0x222ca90

.thumb
branch_222ca90: @ 222ca90 :thumb
	mov     r0, #0x0
	str     r0, [r7, #0x48]
.thumb
branch_222ca94: @ 222ca94 :thumb
	mov     r5, r7
	mov     r6, #0x0
	mov     r4, r7
	add     r5, #0x28
.thumb
branch_222ca9c: @ 222ca9c :thumb
	ldr     r0, [r7, #0x4]
	mov     r1, r6
	bl      Function_22232fc
	str     r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_222cab0
	mov     r1, r5
	bl      Function_2235918
.thumb
branch_222cab0: @ 222cab0 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_222ca9c
	ldr     r0, [r7, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222cac8, (=#0x222c995)
	mov     r2, r7
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x222cac6

.align 2
.word 0x222c995 @ 0x222cac8



.thumb
Function_222cacc: @ 222cacc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222cae0
	cmp     r0, #0x1
	beq     branch_222cb0e
	b       branch_222cb7c

branch_222cae0: @ 222cae0 :thumb
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x40
	mov     r1, #0x14
	mov     r3, r2
	bl      Function_2226108
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x64
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2226108
	ldrb    r0, [r4, #0x0]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3,r4,pc}

branch_222cb0e: @ 222cb0e :thumb
	mov     r0, r4
	add     r0, #0x40
	bl      Function_2226138
	cmp     r0, #0x0
	bne     branch_222cb22
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222cb72

branch_222cb22: @ 222cb22 :thumb
	mov     r1, #0x2c
	ldsh    r2, [r4, r1]
	mov     r1, #0x40
	ldsh    r1, [r4, r1]
	ldr     r0, [r4, #0x38]
	add     r1, r2, r1
	mov     r2, #0x2e
	ldsh    r3, [r4, r2]
	mov     r2, #0x42
	ldsh    r2, [r4, r2]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     r2, r3, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	mov     r1, #0x40
	ldsh    r2, [r4, r1]
	mov     r1, #0x2c
	ldsh    r1, [r4, r1]
	ldr     r0, [r4, #0x3c]
	sub     r1, r2, r1
	mov     r2, #0x2e
	ldsh    r3, [r4, r2]
	mov     r2, #0x42
	ldsh    r2, [r4, r2]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     r2, r3, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	ldr     r0, [r4, #0x38]
	bl      Function_200d330
	ldr     r0, [r4, #0x3c]
	bl      Function_200d330
branch_222cb72: @ 222cb72 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_200c7ec
	add     sp, #0x4
	pop     {r3,r4,pc}

branch_222cb7c: @ 222cb7c :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222cb8e


.align 2, 0
.thumb
Function_222cb90: @ 222cb90 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x88
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_22202c0
	str     r0, [r4, #0x3c]
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x34]
	mov     r1, r4
	ldr     r0, [r4, #0x30]
	add     r1, #0x28
	bl      Function_2235918
	mov     r1, r4
	ldr     r0, [r4, #0x34]
	add     r1, #0x2c
	bl      Function_2235918
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222cbf8, (=#0x222cacd)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x222cbf8

.word 0x222cacd @ 0x222cbf8



.thumb
Function_222cbfc: @ 222cbfc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	ldr     r2, [r4, #0x38]
	add     r0, #0x8c
	add     r1, #0xb0
	bl      Function_2225d2c
	cmp     r0, #0x0
	bne     branch_222cc28
	ldr     r0, [r4, #0x38]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_2235e80
	pop     {r3-r5,pc}

branch_222cc28: @ 222cc28 :thumb
	mov     r0, r4
	add     r0, #0xd4
	bl      Function_2225da0
	cmp     r0, #0x1
	bne     branch_222cc44
	mov     r1, r4
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	ldr     r0, [r4, #0x38]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_200d79c
branch_222cc44: @ 222cc44 :thumb
	ldr     r0, [r4, #0x38]
	bl      Function_200d330
	ldr     r0, [r4, #0x20]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x222cc52


.align 2, 0
.thumb
Function_222cc54: @ 222cc54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r1, #0xe8
	mov     r6, r0
	mov     r7, r3
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x10
	bl      Function_223595c
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2220280
	strh    r0, [r4, #0xc]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2220280
	strh    r0, [r4, #0xe]
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_2220280
	str     r0, [r4, #0x4]
	mov     r0, r6
	mov     r1, #0x3
	bl      Function_2220280
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_2225964
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x2
	str     r7, [r4, #0x38]
	bl      Function_200d6a4
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232fc
	str     r0, [r4, #0x44]
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232fc
	str     r0, [r4, #0x58]
	mov     r1, r4
	ldr     r0, [r4, #0x44]
	add     r1, #0x40
	bl      Function_2235918
	mov     r1, r4
	ldr     r0, [r4, #0x58]
	add     r1, #0x54
	bl      Function_2235918
	mov     r0, #0x42
	ldsh    r0, [r4, r0]
	mov     r3, #0x54
	str     r0, [sp, #0x0]
	mov     r0, #0x56
	ldsh    r2, [r4, r0]
	mov     r0, #0xe
	ldsh    r0, [r4, r0]
	mov     r1, r0
	mul     r1, r5
	add     r0, r2, r1
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	mov     r1, r4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r2, #0x40
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	ldsh    r3, [r4, r3]
	mov     r0, r4
	ldsh    r2, [r4, r2]
	mov     r12, r3
	mov     r3, #0xc
	ldsh    r3, [r4, r3]
	add     r0, #0x8c
	add     r1, #0xb0
	mov     r7, r3
	mul     r7, r5
	mov     r3, r12
	add     r3, r3, r7
	lsl     r3, r3, #16
	asr     r3, r3, #16
	bl      Function_2225c98
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232b8
	cmp     r0, #0x4
	bne     branch_222cd5c
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232b8
	cmp     r0, #0x2
	bne     branch_222cd5c
	mov     r0, #0x0
	mvn     r0, r0
	mul     r5, r0
.thumb
branch_222cd5c: @ 222cd5c :thumb
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232b8
	cmp     r0, #0x5
	bne     branch_222cd86
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232b8
	cmp     r0, #0x3
	bne     branch_222cd86
	mov     r0, #0x0
	mvn     r0, r0
	mul     r5, r0
.thumb
branch_222cd86: @ 222cd86 :thumb
	cmp     r5, #0x0
	ldr     r2, [pc, #0x54] @ 0x222cde0, (=#0x5c71)
	ble     branch_222cd9e
	ldr     r1, [pc, #0x54] @ 0x222cde4, (=#0xe38)
	mov     r0, r4
	add     r0, #0xd4
	mul     r1, r5
	mul     r2, r5
	mov     r3, #0xa
	bl      Function_2225d50
	b       branch_222cdae
@ 0x222cd9e

.thumb
branch_222cd9e: @ 222cd9e :thumb
	ldr     r1, [pc, #0x48] @ 0x222cde8, (=#0x3fff)
	mov     r0, r4
	add     r0, #0xd4
	mul     r1, r5
	mul     r2, r5
	mov     r3, #0xa
	bl      Function_2225d50
.thumb
branch_222cdae: @ 222cdae :thumb
	mov     r1, r4
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	ldr     r0, [r4, #0x38]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_200d79c
	mov     r0, r4
	mov     r1, r4
	ldr     r2, [r4, #0x38]
	add     r0, #0x8c
	add     r1, #0xb0
	bl      Function_2225d2c
	ldr     r0, [r4, #0x38]
	bl      Function_200d330
	ldr     r0, [r4, #0x14]
	ldr     r1, [pc, #0x14] @ 0x222cdec, (=#0x222cbfd)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222cde0

.word 0x5c71 @ 0x222cde0
.word 0xe38 @ 0x222cde4
.word 0x3fff @ 0x222cde8
.word 0x222cbfd @ 0x222cdec


.thumb
Function_222cdf0: @ 222cdf0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x18]
	cmp     r0, #0x3
	bls     branch_222ce00
	b       branch_222cf6c
@ 0x222ce00

.thumb
branch_222ce00: @ 222ce00 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r6, #0
	lsl     r6, r2, #3
	lsl     r0, r5, #3
	mov     r0, #0x12
	ldsh    r2, [r4, r0]
	mov     r0, #0x96
	mov     r3, #0x3c
	str     r0, [sp, #0x0]
	mov     r1, #0x64
	str     r1, [sp, #0x4]
	mov     r0, #0xc
	mul     r1, r2
	mul     r3, r2
	lsl     r2, r3, #16
	str     r0, [sp, #0x8]
	mov     r0, r4
	lsl     r1, r1, #16
	add     r0, #0x9c
	asr     r1, r1, #16
	asr     r2, r2, #16
	mov     r3, #0x5
	bl      Function_2225ef0
	ldrb    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x18]
	b       branch_222cf8a
@ 0x222ce44


.incbin "./baserom/overlay/overlay_0012.bin", 0xd224, 0x222cf6c - 0x222ce44


.thumb
branch_222cf6c: @ 222cf6c :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x48]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x1c]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_2235e80
	add     sp, #0x1c
	pop     {r4,r5,pc}

branch_222cf8a: @ 222cf8a :thumb
	ldr     r0, [r4, #0x40]
	bl      Function_200d330
	ldr     r0, [r4, #0x28]
	bl      Function_200c7ec
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x222cf9a


.incbin "./baserom/overlay/overlay_0012.bin", 0xd37a, 0x222cfa0 - 0x222cf9a


.thumb
Function_222cfa0: @ 222cfa0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r1, #0xd4
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x18
	bl      Function_223595c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220298
	str     r0, [r4, #0x44]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220298
	mov     r1, #0x0
	str     r0, [r4, #0x48]
	mvn     r1, r1
	ldr     r0, [r4, #0x1c]
	mov     r2, r1
	bl      Function_2235780
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	mov     r1, #0x0
	strb    r1, [r4, #0xc]
	mov     r0, #0x1f
	strb    r0, [r4, #0xd]
	strb    r1, [r4, #0xe]
	strb    r0, [r4, #0xf]
	strb    r0, [r4, #0x10]
	mov     r0, #0x4
	strb    r0, [r4, #0x11]
	mov     r0, r5
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_222d030
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0x48]
	bl      Function_200d3f4
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_200d364
	mov     r0, #0xb3
	strh    r0, [r4, #0x14]
	mov     r0, #0x78
	strh    r0, [r4, #0x16]
	mov     r0, r5
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r4, #0x40]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d460
	mov     r0, #0x0
	mvn     r0, r0
	strh    r0, [r4, #0x12]
	b       branch_222d090
@ 0x222d030

.thumb
branch_222d030: @ 222d030 :thumb
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222d060
	ldr     r0, [r4, #0x48]
	mov     r1, #0x0
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0x44]
	bl      Function_200d3f4
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_200d364
	mov     r0, #0x90
	strh    r0, [r4, #0x14]
	mov     r0, #0x40
	strh    r0, [r4, #0x16]
	b       branch_222d08c
@ 0x222d060

.thumb
branch_222d060: @ 222d060 :thumb
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0x48]
	bl      Function_200d3f4
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_200d364
	mov     r0, #0x4c
	strh    r0, [r4, #0x14]
	mov     r0, #0x78
	strh    r0, [r4, #0x16]
	mov     r0, r5
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r4, #0x40]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d460
.thumb
branch_222d08c: @ 222d08c :thumb
	mov     r0, #0x1
	strh    r0, [r4, #0x12]
.thumb
branch_222d090: @ 222d090 :thumb
	mov     r1, #0x14
	mov     r2, #0x16
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x40]
	bl      Function_200d4c4
	ldr     r0, [r4, #0x40]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_200d810
	mov     r0, #0x12
	ldsh    r0, [r4, r0]
	mov     r3, #0x64
	mov     r1, r0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mul     r1, r3
	lsl     r1, r1, #16
	asr     r1, r1, #16
	str     r3, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x9c
	mov     r2, r1
	bl      Function_2225ef0
	mov     r0, r4
	add     r0, #0x9c
	bl      Function_2225f6c
	mov     r0, r4
	add     r0, #0x9c
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	bl      Function_2225fa4
	ldr     r0, [r4, #0x40]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	bl      Function_200d6e8
	mov     r0, #0x16
	mov     r2, r4
	add     r2, #0xb0
	ldsh    r0, [r4, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x10
	bl      Function_2225fd4
	mov     r2, #0x16
	mov     r3, r0
	ldsh    r2, [r4, r2]
	mov     r1, #0x14
	ldsh    r1, [r4, r1]
	add     r2, r2, r3
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x40]
	asr     r2, r2, #16
	bl      Function_200d4c4
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0xc] @ 0x222d124, (=#0x222cdf1)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x222d122

.align 2
.word 0x222cdf1 @ 0x222d124



.thumb
Function_222d128: @ 222d128 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r4, r1
	str     r0, [sp, #0x10]
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x8
	bls     branch_222d138
	b       branch_222d48c
@ 0x222d138

.thumb
branch_222d138: @ 222d138 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r2, #0
	lsl     r0, r1, #1
	lsl     r2, r4, #2
	lsl     r4, r7, #2
	lsl     r0, r6, #3
	lsl     r4, r6, #5
	lsl     r6, r0, #8
	lsl     r4, r4, #10
	lsl     r4, r5, #11
	ldrb    r1, [r4, #0xc]
	ldr     r2, [pc, #0x314] @ 0x222d470, (=#0x223a0d1)
	ldr     r5, [pc, #0x318] @ 0x222d474, (=#0x223a0d2)
	lsl     r0, r1, #2
	add     r3, r1, r0
	ldr     r0, [pc, #0x314] @ 0x222d478, (=#0x223a0d3)
	ldr     r1, [pc, #0x318] @ 0x222d47c, (=#0x223a0d0)
	ldrb    r0, [r0, r3]
	ldrb    r1, [r1, r3]
	ldrb    r2, [r2, r3]
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30c] @ 0x222d480, (=#0x223a0d4)
	ldrb    r0, [r0, r3]
	ldrb    r3, [r5, r3]
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0xcc
	bl      Function_2225ef0
	ldrb    r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xc]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222d4c6
@ 0x222d18e


.incbin "./baserom/overlay/overlay_0012.bin", 0xd56e, 0x222d470 - 0x222d18e


.word 0x223a0d1 @ 0x222d470
.word 0x223a0d2 @ 0x222d474
.word 0x223a0d3 @ 0x222d478
.word 0x223a0d0 @ 0x222d47c
.word 0x223a0d4 @ 0x222d480

.incbin "./baserom/overlay/overlay_0012.bin", 0xd864, 0x222d48c - 0x222d484


.thumb
branch_222d48c: @ 222d48c :thumb
	mov     r6, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, r6
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222d4b4
	mov     r5, r4
	mov     r7, r6
branch_222d49e: @ 222d49e :thumb
	ldr     r0, [r5, #0x30]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x10]
	mov     r1, r7
	add     r5, #0x4c
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      Function_2220280
	cmp     r6, r0
	blt     branch_222d49e
branch_222d4b4: @ 222d4b4 :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [sp, #0x10]
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x3c
	pop     {r4-r7,pc}

branch_222d4c6: @ 222d4c6 :thumb
	mov     r6, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, r6
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222d532
	mov     r5, r4
	add     r7, sp, #0x14
branch_222d4d8: @ 222d4d8 :thumb
	add     r1, sp, #0x14
	ldr     r0, [r5, #0x30]
	add     r1, #0x2
	add     r2, sp, #0x14
	bl      Function_200d550
	mov     r0, #0x0
	ldsh    r0, [r7, r0]
	cmp     r0, #0x50
	bge     branch_222d4fc
	ldr     r0, [r4, #0x10]
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r5, #0x30]
	bl      Function_200d460
	b       branch_222d522

branch_222d4fc: @ 222d4fc :thumb
	mov     r0, #0x2
	ldsh    r0, [r7, r0]
	cmp     r0, #0x80
	ldr     r0, [r4, #0x10]
	ble     branch_222d514
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r5, #0x30]
	bl      Function_200d460
	b       branch_222d522

branch_222d514: @ 222d514 :thumb
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r5, #0x30]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d460
branch_222d522: @ 222d522 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	add     r5, #0x4c
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      Function_2220280
	cmp     r6, r0
	blt     branch_222d4d8
branch_222d532: @ 222d532 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x4
	bcc     branch_222d566
	mov     r5, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, r5
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222d560
	mov     r6, r4
	mov     r7, r5
branch_222d54a: @ 222d54a :thumb
	ldr     r0, [r6, #0x30]
	bl      Function_200d330
	ldr     r0, [r4, #0x10]
	mov     r1, r7
	add     r6, #0x4c
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_2220280
	cmp     r5, r0
	blt     branch_222d54a
branch_222d560: @ 222d560 :thumb
	ldr     r0, [r4, #0x18]
	bl      Function_200c7ec
branch_222d566: @ 222d566 :thumb
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x222d56a


.align 2, 0
.thumb
Function_222d56c: @ 222d56c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r1
	mov     r1, #0xf0
	str     r0, [sp, #0x0]
	mov     r6, r2
	mov     r7, r3
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, #0x0
	strb    r1, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	strb    r1, [r4, #0x1]
	str     r0, [r4, #0x10]
	str     r6, [r4, #0x18]
	str     r5, [r4, #0x14]
	str     r1, [r4, #0x4]
	mov     r0, #0x10
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	bl      Function_22232fc
	str     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x20]
	ldr     r0, [r4, #0x10]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	bl      Function_2223354
	str     r0, [r4, #0x24]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	bl      Function_22233ec
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      Function_22233ec
	mov     r2, #0x1
	mov     r1, r2
	mov     r3, r0
	lsl     r1, r5
	mov     r5, r2
	lsl     r5, r3
	orr     r1, r5
	orr     r1, r2
	.hword  0x1e92 @ sub r2, r2, #0x2
	ldr     r0, [r4, #0x10]
	mov     r3, r2
	bl      Function_22357bc
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0xb4] @ 0x222d6a8, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	add     r0, sp, #0x4
	bl      Function_222329c
	str     r7, [r4, #0x30]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	mov     r6, #0x1
	bl      Function_2220280
	cmp     r0, #0x1
	ble     branch_222d62e
	mov     r5, r4
	add     r5, #0x4c
	add     r7, sp, #0x4
.thumb
branch_222d612: @ 222d612 :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	mov     r2, r7
	bl      Function_200ce6c
	str     r0, [r5, #0x30]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	add     r5, #0x4c
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      Function_2220280
	cmp     r6, r0
	blt     branch_222d612
.thumb
branch_222d62e: @ 222d62e :thumb
	mov     r6, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, r6
	bl      Function_2220280
	cmp     r0, #0x0
	ble     branch_222d668
	mov     r5, r4
	mov     r7, #0x1
.thumb
branch_222d640: @ 222d640 :thumb
	ldr     r0, [r5, #0x30]
	mov     r1, r7
	bl      Function_200d810
	ldr     r0, [r4, #0x10]
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r5, #0x30]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	add     r5, #0x4c
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      Function_2220280
	cmp     r6, r0
	blt     branch_222d640
.thumb
branch_222d668: @ 222d668 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_221fdd4
	cmp     r0, #0x1
	ldr     r0, [r4, #0x30]
	bne     branch_222d688
	mov     r1, #0xa0
	mov     r2, #0x36
	bl      Function_200d4c4
	ldr     r0, [r4, #0x7c]
	mov     r1, #0x50
	mov     r2, #0x27
	bl      Function_200d4c4
	b       branch_222d69a
@ 0x222d688

.thumb
branch_222d688: @ 222d688 :thumb
	mov     r1, #0x64
	mov     r2, #0x36
	bl      Function_200d4c4
	ldr     r0, [r4, #0x7c]
	mov     r1, #0xb4
	mov     r2, #0x27
	bl      Function_200d4c4
.thumb
branch_222d69a: @ 222d69a :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0xc] @ 0x222d6ac, (=#0x222d129)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x222d6a8

.word 0x4000052 @ 0x222d6a8
.word 0x222d129 @ 0x222d6ac



.thumb
Function_222d6b0: @ 222d6b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_222d6c2
	cmp     r0, #0x1
	beq     branch_222d736
	b       branch_222d76a

branch_222d6c2: @ 222d6c2 :thumb
	ldrb    r0, [r5, #0x6]
	cmp     r0, #0xf
	bcs     branch_222d6cc
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x6]
branch_222d6cc: @ 222d6cc :thumb
	ldrb    r0, [r5, #0x7]
	cmp     r0, #0x0
	beq     branch_222d6d6
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x7]
branch_222d6d6: @ 222d6d6 :thumb
	ldrb    r0, [r5, #0x7]
	ldrb    r1, [r5, #0x6]
	mov     r6, #0x0
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0xd4] @ 0x222d7b8, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldrb    r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x4]
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x0
	ble     branch_222d728
	ldr     r4, [pc, #0xc8] @ 0x222d7bc, (=#0x223a144)
	mov     r7, r5
branch_222d6f4: @ 222d6f4 :thumb
	add     r1, sp, #0x0
	ldr     r0, [r7, #0x14]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	ldrb    r1, [r5, #0x4]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	bcc     branch_222d71c
	add     r0, r5, r6
	ldrb    r1, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	ldrb    r2, [r0, #0x1]
	ldrb    r1, [r4, #0x1]
	cmp     r2, r1
	bcc     branch_222d71c
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
branch_222d71c: @ 222d71c :thumb
	ldrb    r0, [r5, #0x5]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, r0
	blt     branch_222d6f4
branch_222d728: @ 222d728 :thumb
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x2d
	bcc     branch_222d794
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	b       branch_222d794

branch_222d736: @ 222d736 :thumb
	ldrb    r0, [r5, #0x6]
	cmp     r0, #0x0
	beq     branch_222d740
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x6]
branch_222d740: @ 222d740 :thumb
	ldrb    r0, [r5, #0x7]
	cmp     r0, #0xf
	bcs     branch_222d74a
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x7]
branch_222d74a: @ 222d74a :thumb
	ldrb    r0, [r5, #0x6]
	cmp     r0, #0x0
	bne     branch_222d75c
	ldrb    r0, [r5, #0x7]
	cmp     r0, #0xf
	bne     branch_222d75c
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
branch_222d75c: @ 222d75c :thumb
	ldrb    r0, [r5, #0x7]
	ldrb    r1, [r5, #0x6]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x50] @ 0x222d7b8, (=#0x4000052)
	strh    r1, [r0, #0x0]
	b       branch_222d794

branch_222d76a: @ 222d76a :thumb
	ldrb    r0, [r5, #0x5]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222d784
	mov     r4, r5
branch_222d774: @ 222d774 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_200d0f4
	ldrb    r0, [r5, #0x5]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_222d774
branch_222d784: @ 222d784 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, r7
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
	pop     {r3-r7,pc}

branch_222d794: @ 222d794 :thumb
	ldrb    r0, [r5, #0x5]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222d7b0
	mov     r4, r5
branch_222d79e: @ 222d79e :thumb
	ldr     r0, [r4, #0x14]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldrb    r0, [r5, #0x5]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_222d79e
branch_222d7b0: @ 222d7b0 :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_200c7ec
	pop     {r3-r7,pc}
@ 0x222d7b8

.word 0x4000052 @ 0x222d7b8
.word 0x223a144 @ 0x222d7bc



.thumb
Function_222d7c0: @ 222d7c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	str     r3, [sp, #0x0]
	bl      Function_221fde4
	mov     r1, #0x44
	bl      Function_2018144
	mov     r4, r0
	bne     branch_222d7de
	bl      Function_2022974
.thumb
branch_222d7de: @ 222d7de :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x0]
	str     r5, [r4, #0xc]
	str     r6, [r4, #0x10]
	add     r0, sp, #0x4
	mov     r1, r7
	str     r7, [r4, #0x8]
	bl      Function_222329c
	mov     r1, #0x0
	mvn     r1, r1
	ldr     r0, [r4, #0x8]
	mov     r2, r1
	bl      Function_2235780
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2220280
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	strb    r0, [r4, #0x6]
	mov     r0, #0xf
	strb    r0, [r4, #0x7]
	ldrb    r0, [r4, #0x7]
	ldrb    r1, [r4, #0x6]
	mov     r6, #0x1
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x108] @ 0x222d924, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x14]
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x1
	ble     branch_222d840
	add     r5, r4, #0x4
.thumb
branch_222d82a: @ 222d82a :thumb
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	add     r2, sp, #0x4
	bl      Function_200ce6c
	str     r0, [r5, #0x14]
	ldrb    r0, [r4, #0x5]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_222d82a
.thumb
branch_222d840: @ 222d840 :thumb
	mov     r0, r7
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r7
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222d894
	mov     r0, r7
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r7
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222d880
	mov     r0, r7
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r7
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222d880
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_200d364
	b       branch_222d888
@ 0x222d880

.thumb
branch_222d880: @ 222d880 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200d364
.thumb
branch_222d888: @ 222d888 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x80
	mov     r2, #0x50
	bl      Function_200d4c4
	b       branch_222d8d4
@ 0x222d894

.thumb
branch_222d894: @ 222d894 :thumb
	mov     r0, r7
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r7
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222d8c2
	mov     r0, r7
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r7
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222d8c2
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200d364
	b       branch_222d8ca
@ 0x222d8c2

.thumb
branch_222d8c2: @ 222d8c2 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_200d364
.thumb
branch_222d8ca: @ 222d8ca :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x80
	mov     r2, #0x50
	bl      Function_200d4c4
.thumb
branch_222d8d4: @ 222d8d4 :thumb
	ldrb    r0, [r4, #0x5]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222d914
	mov     r5, r4
.thumb
branch_222d8de: @ 222d8de :thumb
	add     r1, r4, r6
	mov     r0, #0x0
	strb    r0, [r1, #0x1]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x8]
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_222d90a
	mov     r2, #0xfe
	ldr     r0, [r5, #0x14]
	ldr     r1, [pc, #0x24] @ 0x222d928, (=#0xbf800000)
	lsl     r2, r2, #22
	bl      Function_200d6e8
.thumb
branch_222d90a: @ 222d90a :thumb
	ldrb    r0, [r4, #0x5]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_222d8de
.thumb
branch_222d914: @ 222d914 :thumb
	ldr     r1, [pc, #0x14] @ 0x222d92c, (=#0x222d6b1)
	ldr     r3, [pc, #0x18] @ 0x222d930, (=#0x44c)
	mov     r0, r7
	mov     r2, r4
	bl      Function_22201cc
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x222d924

.word 0x4000052 @ 0x222d924
.word 0xbf800000 @ 0x222d928
.word 0x222d6b1 @ 0x222d92c
.word 0x44c @ 0x222d930



.thumb
Function_222d934: @ 222d934 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r7, r0
	ldrb    r0, [r4, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x3
	bls     branch_222d946
	b       branch_222daec
@ 0x222d946

.thumb
branch_222d946: @ 222d946 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r7, #0
	lsl     r2, r2, #4
	lsl     r6, r3, #5
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0xf
	bcs     branch_222d964
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x9]
.thumb
branch_222d964: @ 222d964 :thumb
	ldrb    r0, [r4, #0xa]
	cmp     r0, #0x0
	beq     branch_222d96e
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xa]
.thumb
branch_222d96e: @ 222d96e :thumb
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0xf
	bne     branch_222d980
	ldrb    r0, [r4, #0xa]
	cmp     r0, #0x0
	bne     branch_222d980
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_222d980: @ 222d980 :thumb
	ldrb    r0, [r4, #0xa]
	ldrb    r1, [r4, #0x9]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x1bc] @ 0x222db48, (=#0x4000052)
	strh    r1, [r0, #0x0]
	b       branch_222db18
@ 0x222d98e


.incbin "./baserom/overlay/overlay_0012.bin", 0xdd6e, 0x222daec - 0x222d98e


.thumb
branch_222daec: @ 222daec :thumb
	ldrb    r0, [r4, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222db06
	mov     r5, r4
branch_222daf6: @ 222daf6 :thumb
	ldr     r0, [r5, #0x18]
	bl      Function_200d0f4
	ldrb    r0, [r4, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_222daf6
branch_222db06: @ 222db06 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, r7
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r4-r7,pc}

branch_222db18: @ 222db18 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_222db3e
	cmp     r6, #0x0
	bne     branch_222db3e
	ldrb    r0, [r4, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222db3e
	mov     r5, r4
branch_222db2c: @ 222db2c :thumb
	ldr     r0, [r5, #0x18]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldrb    r0, [r4, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_222db2c
branch_222db3e: @ 222db3e :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_200c7ec
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222db48

.word 0x4000052 @ 0x222db48

.incbin "./baserom/overlay/overlay_0012.bin", 0xdf2c, 0x222db60 - 0x222db4c


.thumb
Function_222db60: @ 222db60 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_221fde4
	mov     r1, #0x84
	bl      Function_2018144
	mov     r4, r0
	bne     branch_222db7e
	bl      Function_2022974
.thumb
branch_222db7e: @ 222db7e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x0]
	str     r5, [r4, #0x10]
	str     r6, [r4, #0x14]
	str     r0, [r4, #0x30]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	str     r0, [r4, #0xc]
	add     r0, sp, #0x4
	bl      Function_222329c
	mov     r1, #0x0
	mvn     r1, r1
	ldr     r0, [r4, #0xc]
	mov     r2, r1
	bl      Function_2235780
	mov     r1, #0x0
	strb    r1, [r4, #0x9]
	mov     r0, #0xf
	strb    r0, [r4, #0xa]
	ldrb    r0, [r4, #0xa]
	ldrb    r2, [r4, #0x9]
	lsl     r0, r0, #8
	orr     r2, r0
	ldr     r0, [pc, #0xd4] @ 0x222dc88, (=#0x4000052)
	strh    r2, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	bl      Function_2220280
	strb    r0, [r4, #0x8]
	str     r7, [r4, #0x18]
	ldrb    r0, [r4, #0x8]
	mov     r6, #0x1
	cmp     r0, #0x1
	ble     branch_222dbe2
	add     r5, r4, #0x4
	add     r7, sp, #0x4
.thumb
branch_222dbcc: @ 222dbcc :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	mov     r2, r7
	bl      Function_200ce6c
	str     r0, [r5, #0x18]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_222dbcc
.thumb
branch_222dbe2: @ 222dbe2 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      Function_200d364
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_200d364
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	bl      Function_200d364
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_200d364
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_200d364
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x3
	bl      Function_200d364
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_200d7d4
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_200d7d4
	ldrb    r0, [r4, #0x8]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_222dc58
	ldr     r6, [pc, #0x60] @ 0x222dc8c, (=#0x223a162)
	mov     r5, r4
.thumb
branch_222dc2e: @ 222dc2e :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_200d390
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [r5, #0x18]
	bl      Function_200d4c4
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_200d810
	ldrb    r0, [r4, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, r0
	blt     branch_222dc2e
.thumb
branch_222dc58: @ 222dc58 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x14] @ 0x222dc90, (=#0x222d935)
	ldr     r3, [pc, #0x14] @ 0x222dc94, (=#0x44c)
	mov     r2, r4
	bl      Function_22201cc
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x222dc88

.word 0x4000052 @ 0x222dc88
.word 0x223a162 @ 0x222dc8c
.word 0x222d935 @ 0x222dc90
.word 0x44c @ 0x222dc94



.thumb
Function_222dc98: @ 222dc98 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0xc]
	cmp     r0, #0x7
	bls     branch_222dca8
	b       branch_222de00
@ 0x222dca8

.thumb
branch_222dca8: @ 222dca8 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r1, #0
	lsl     r2, r4, #0
	lsl     r4, r0, #1
	lsl     r2, r6, #1
	lsl     r0, r4, #2
	lsl     r6, r7, #2
	lsl     r6, r4, #3
	lsl     r6, r5, #4
	ldrb    r0, [r4, #0xe]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xe]
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0xa
	bhi     branch_222dce4
	ldrb    r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xc]
	b       branch_222de0e
@ 0x222dcd8


.incbin "./baserom/overlay/overlay_0012.bin", 0xe0b8, 0x222dce4 - 0x222dcd8


.thumb
branch_222dce4: @ 222dce4 :thumb
	b       branch_222de0e
@ 0x222dce6


.incbin "./baserom/overlay/overlay_0012.bin", 0xe0c6, 0x222de00 - 0x222dce6


.thumb
branch_222de00: @ 222de00 :thumb
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x3
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2220220
.thumb
branch_222de0e: @ 222de0e :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_200d330
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222de18


.incbin "./baserom/overlay/overlay_0012.bin", 0xe1f8, 0x222de24 - 0x222de18


.thumb
Function_222de24: @ 222de24 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bhi     branch_222dee0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r6, #0
	lsl     r4, r2, #1
	lsl     r0, r0, #2
	ldrb    r6, [r4, #0x2]
	mov     r3, #0x1
	mov     r2, #0x0
	cmp     r6, #0x0
	ble     branch_222de64
	ldr     r0, [pc, #0xa8] @ 0x222def8, (=#0x514)
	mov     r5, r4
.thumb
branch_222de52: @ 222de52 :thumb
	ldr     r1, [r5, r0]
	cmp     r1, #0x1
	beq     branch_222de5c
	mov     r3, #0x0
	b       branch_222de64
@ 0x222de5c

.thumb
branch_222de5c: @ 222de5c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r2, r6
	blt     branch_222de52
.thumb
branch_222de64: @ 222de64 :thumb
	cmp     r3, #0x1
	bne     branch_222def0
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222def0
@ 0x222de70


.incbin "./baserom/overlay/overlay_0012.bin", 0xe250, 0x222dee0 - 0x222de70


.thumb
branch_222dee0: @ 222dee0 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4-r6,pc}

branch_222def0: @ 222def0 :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_200c7ec
	pop     {r4-r6,pc}
@ 0x222def8

.word 0x514 @ 0x222def8



.thumb
Function_222defc: @ 222defc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r5, r2
	mov     r7, r3
	bl      Function_221fde4
	ldr     r1, [pc, #0x154] @ 0x222e064, (=#0x564)
	bl      Function_2018144
	mov     r6, r0
	bne     branch_222df1a
	bl      Function_2022974
.thumb
branch_222df1a: @ 222df1a :thumb
	mov     r0, #0x0
	strb    r0, [r6, #0x1]
	strb    r0, [r6, #0x0]
	str     r4, [r6, #0xc]
	ldr     r0, [sp, #0x0]
	str     r5, [r6, #0x10]
	str     r0, [r6, #0x8]
	ldr     r1, [sp, #0x0]
	add     r0, sp, #0x1c
	bl      Function_222329c
	mov     r1, #0x0
	mvn     r1, r1
	ldr     r0, [r6, #0x8]
	mov     r2, r1
	bl      Function_2235780
	ldr     r0, [r6, #0x8]
	mov     r1, #0x0
	bl      Function_2220280
	strb    r0, [r6, #0x2]
	mov     r0, #0xc
	strb    r0, [r6, #0x2]
	str     r7, [r6, #0x24]
	mov     r4, #0x0
	ldrb    r0, [r6, #0x2]
	str     r4, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_222e052
	ldr     r0, [pc, #0x110] @ 0x222e068, (=#0x514)
	mov     r5, r6
	add     r0, r6, r0
	str     r0, [sp, #0x10]
	mov     r0, r6
	str     r0, [sp, #0xc]
	add     r0, #0x14
	str     r0, [sp, #0xc]
.thumb
branch_222df66: @ 222df66 :thumb
	cmp     r4, #0x0
	beq     branch_222df76
	ldr     r0, [r6, #0xc]
	ldr     r1, [r6, #0x10]
	add     r2, sp, #0x1c
	bl      Function_200ce6c
	str     r0, [r5, #0x24]
.thumb
branch_222df76: @ 222df76 :thumb
	mov     r1, r5
	ldr     r7, [r5, #0x24]
	add     r1, #0x20
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	bl      PRNG
	mov     r1, #0xa
	blx     Division
	add     r1, #0xa
	mov     r0, r5
	add     r1, r4, r1
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	bl      PRNG
	mov     r1, #0x6
	blx     Division
	mov     r0, r5
	add     r0, #0x23
	strb    r1, [r0, #0x0]
	mov     r0, #0xfe
	lsl     r0, r0, #22
	str     r0, [r5, #0x4c]
	ldr     r0, [r6, #0x8]
	ldr     r1, [pc, #0xb8] @ 0x222e06c, (=#0x223a19a)
	str     r0, [r5, #0x14]
	ldr     r0, [r6, #0xc]
	str     r0, [r5, #0x18]
	ldr     r0, [r6, #0x10]
	str     r0, [r5, #0x1c]
	ldr     r0, [sp, #0x10]
	str     r0, [r5, #0x50]
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #3
	str     r0, [sp, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	bl      PRNG
	ldr     r2, [sp, #0x8]
	mov     r1, #0x6
	ldsh    r1, [r2, r1]
	blx     Division
	ldr     r2, [sp, #0x8]
	mov     r0, #0x2
	ldsh    r0, [r2, r0]
	add     r0, r0, r1
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x14]
	bl      PRNG
	ldr     r2, [sp, #0x8]
	mov     r1, #0x4
	ldsh    r1, [r2, r1]
	blx     Division
	ldr     r2, [pc, #0x74] @ 0x222e06c, (=#0x223a19a)
	ldr     r0, [sp, #0x18]
	ldsh    r0, [r2, r0]
	add     r0, r0, r1
	lsl     r0, r0, #16
	asr     r2, r0, #16
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      Function_200d4c4
	mov     r0, r7
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r1, [r5, #0x4c]
	mov     r0, r7
	mov     r2, r1
	bl      Function_200d6e8
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x48] @ 0x222e070, (=#0x222dc99)
	ldr     r2, [sp, #0xc]
	ldr     r3, [pc, #0x48] @ 0x222e074, (=#0x44b)
	bl      Function_22201cc
	ldr     r0, [sp, #0x4]
	mov     r1, #0x6
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     Division
	ldr     r0, [sp, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x4]
	add     r0, #0x40
	str     r0, [sp, #0xc]
	ldrb    r0, [r6, #0x2]
	add     r5, #0x40
	cmp     r4, r0
	blt     branch_222df66
.thumb
branch_222e052: @ 222e052 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x222e078, (=#0x222de25)
	ldr     r3, [pc, #0x24] @ 0x222e07c, (=#0x44d)
	mov     r2, r6
	bl      Function_22201cc
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x222e062

.align 2
.word 0x564 @ 0x222e064
.word 0x514 @ 0x222e068
.word 0x223a19a @ 0x222e06c
.word 0x222dc99 @ 0x222e070
.word 0x44b @ 0x222e074
.word 0x222de25 @ 0x222e078
.word 0x44d @ 0x222e07c



.thumb
Function_222e080: @ 222e080 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x3
	bhi     branch_222e166
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r4, #0
	lsl     r6, r6, #1
	lsl     r0, r4, #2
	ldr     r0, [r4, #0x8]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_22232fc
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_222e18c
@ 0x222e0c0


.incbin "./baserom/overlay/overlay_0012.bin", 0xe4a0, 0x222e166 - 0x222e0c0


.thumb
branch_222e166: @ 222e166 :thumb
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x34] @ 0x222e1a4, (=#0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2222664
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x14
	pop     {r3-r6,pc}

branch_222e18c: @ 222e18c :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_200d330
	ldr     r0, [r4, #0x20]
	bl      Function_200d330
	ldr     r0, [r4, #0x10]
	bl      Function_200c7ec
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222e1a2

.align 2
.word 0xffff1fff @ 0x222e1a4



.thumb
Function_222e1a8: @ 222e1a8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r1, #0x54
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	add     r1, r4, #0x4
	bl      Function_223595c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_22202c0
	mov     r1, #0x2
	str     r0, [r4, #0x20]
	bl      Function_200d810
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x64] @ 0x222e23c, (=#0xffff1fff)
	and     r2, r1
	lsr     r1, r0, #11
	orr     r1, r2
	str     r1, [r0, #0x0]
	add     r0, #0x4a
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x3f
	bic     r2, r1
	mov     r1, #0x1b
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x222e240, (=#0xffffc0ff)
	and     r2, r1
	mov     r1, #0x17
	lsl     r1, r1, #8
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_22202c0
	mov     r1, #0x1
	str     r0, [r4, #0x24]
	bl      Function_200d810
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x2
	str     r1, [sp, #0x4]
	add     r0, #0x2c
	mov     r3, r2
	bl      Function_2226424
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2222590
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019120
	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0x14] @ 0x222e244, (=#0x222e081)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222e23a

.align 2
.word 0xffff1fff @ 0x222e23c
.word 0xffffc0ff @ 0x222e240
.word 0x222e081 @ 0x222e244



.thumb
Function_222e248: @ 222e248 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200d408
	cmp     r0, #0x1
	bne     branch_222e25a
	mov     r0, r4
	bl      Function_200d330
branch_222e25a: @ 222e25a :thumb
	pop     {r4,pc}
@ 0x222e25c


.thumb
Function_222e25c: @ 222e25c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1c
	ldsh    r0, [r0, r1]
	cmp     r0, #0x0
	bgt     branch_222e280
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x30]
	bl      Function_222e248
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x34]
	bl      Function_222e248
	b       branch_222e286

branch_222e280: @ 222e280 :thumb
	sub     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	strh    r1, [r0, #0x1c]
branch_222e286: @ 222e286 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x28]
	bl      Function_222e248
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x2c]
	bl      Function_222e248
	ldr     r4, [sp, #0x4]
	mov     r6, #0x0
	mov     r7, r6
	mov     r5, r4
branch_222e29e: @ 222e29e :thumb
	mov     r0, #0x1e
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x1e]
	mov     r0, #0x1e
	ldsh    r0, [r4, r0]
	cmp     r0, #0x28
	blt     branch_222e2b8
	ldr     r0, [r5, #0x28]
	mov     r1, #0x0
	bl      Function_200d3f4
	.hword  0x1c76 @ add r6, r6, #0x1
branch_222e2b8: @ 222e2b8 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_222e29e
	cmp     r6, #0x4
	bne     branch_222e2ec
	ldr     r4, [sp, #0x4]
	mov     r5, #0x0
branch_222e2ca: @ 222e2ca :thumb
	ldr     r0, [r4, #0x28]
	bl      Function_200d0f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x4
	blt     branch_222e2ca
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_2220220
	ldr     r0, [sp, #0x4]
	bl      Function_20181c4
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_222e2ec: @ 222e2ec :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x10]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222e2f8


.thumb
Function_222e2f8: @ 222e2f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r1, #0x38
	mov     r5, r0
	mov     r4, r3
	bl      Function_2235e50
	mov     r6, r0
	mov     r0, #0xa
	strh    r0, [r6, #0x1c]
	mov     r0, r5
	mov     r1, r6
	bl      Function_223595c
	ldr     r1, [r6, #0x4]
	add     r0, sp, #0x0
	bl      Function_222329c
	str     r4, [r6, #0x28]
	mov     r0, #0x0
	strh    r0, [r6, #0x1e]
	mov     r7, #0x1
	add     r4, r6, #0x2
	add     r5, r6, #0x4
.thumb
branch_222e328: @ 222e328 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x1e]
	ldr     r0, [r6, #0x8]
	ldr     r1, [r6, #0x10]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	str     r0, [r5, #0x28]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_222e328
	ldr     r0, [r6, #0x28]
	mov     r1, #0x1
	bl      Function_200d7d4
	ldr     r0, [r6, #0x2c]
	mov     r1, #0x1
	bl      Function_200d7d4
	mov     r1, #0x1f
	ldr     r0, [r6, #0x28]
	mvn     r1, r1
	mov     r2, #0x0
	bl      Function_200d5dc
	mov     r1, #0x1f
	ldr     r0, [r6, #0x2c]
	mvn     r1, r1
	mov     r2, #0x20
	bl      Function_200d5dc
	ldr     r0, [r6, #0x30]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_200d5dc
	mov     r1, #0x20
	ldr     r0, [r6, #0x34]
	mov     r2, r1
	bl      Function_200d5dc
	ldr     r0, [r6, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222e38c, (=#0x222e25d)
	mov     r2, r6
	bl      Function_22201e8
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x222e38c

.word 0x222e25d @ 0x222e38c



.thumb
Function_222e390: @ 222e390 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r1
	mov     r4, #0x0
	str     r0, [sp, #0x1c]
	str     r4, [sp, #0x20]
	mov     r6, r5
	mov     r7, r5
branch_222e3a0: @ 222e3a0 :thumb
	mov     r0, #0x22
	ldsh    r0, [r6, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r6, #0x22]
	mov     r0, #0x22
	ldsh    r0, [r6, r0]
	cmp     r0, #0x14
	blt     branch_222e3f2
	ldr     r0, [r7, #0x2c]
	bl      Function_222e248
	mov     r0, #0x22
	ldsh    r0, [r5, r0]
	cmp     r0, #0x6e
	bne     branch_222e3f2
	mov     r1, #0x0
	mvn     r1, r1
	ldr     r0, [r5, #0x4]
	mov     r2, r1
	bl      Function_2235780
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x34]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x38]
	mov     r1, #0x1
	bl      Function_200d810
	mov     r0, #0xf
	str     r0, [r5, #0x54]
	mov     r0, #0x0
	str     r0, [r5, #0x58]
branch_222e3f2: @ 222e3f2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r4, #0x4
	blt     branch_222e3a0
	mov     r0, #0x22
	ldsh    r0, [r5, r0]
	cmp     r0, #0x32
	bne     branch_222e436
	ldr     r0, [r5, #0x4]
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	sub     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	str     r2, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x1ec] @ 0x222e610, (=#0xffff)
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x1ec] @ 0x222e614, (=#0x3ea)
	str     r0, [sp, #0x18]
	ldr     r3, [r5, #0x1c]
	ldr     r0, [r5, #0x18]
	lsl     r3, r3, #20
	lsr     r3, r3, #16
	bl      Function_2226870
	str     r0, [r5, #0x3c]
branch_222e436: @ 222e436 :thumb
	mov     r0, #0x22
	ldsh    r0, [r5, r0]
	cmp     r0, #0x3c
	bne     branch_222e470
	ldr     r0, [r5, #0x4]
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	sub     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	str     r2, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x1b4] @ 0x222e610, (=#0xffff)
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x1b4] @ 0x222e614, (=#0x3ea)
	str     r0, [sp, #0x18]
	ldr     r3, [r5, #0x1c]
	ldr     r0, [r5, #0x18]
	lsl     r3, r3, #20
	lsr     r3, r3, #16
	bl      Function_2226870
	str     r0, [r5, #0x40]
branch_222e470: @ 222e470 :thumb
	mov     r0, #0x22
	ldsh    r0, [r5, r0]
	cmp     r0, #0x46
	bne     branch_222e4aa
	ldr     r0, [r5, #0x4]
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	sub     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	str     r2, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x178] @ 0x222e610, (=#0xffff)
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x178] @ 0x222e614, (=#0x3ea)
	str     r0, [sp, #0x18]
	ldr     r3, [r5, #0x1c]
	ldr     r0, [r5, #0x18]
	lsl     r3, r3, #20
	lsr     r3, r3, #16
	bl      Function_2226870
	str     r0, [r5, #0x44]
branch_222e4aa: @ 222e4aa :thumb
	mov     r0, #0x22
	ldsh    r0, [r5, r0]
	cmp     r0, #0x50
	bne     branch_222e4e4
	ldr     r0, [r5, #0x4]
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	sub     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	str     r2, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x140] @ 0x222e610, (=#0xffff)
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x140] @ 0x222e614, (=#0x3ea)
	str     r0, [sp, #0x18]
	ldr     r3, [r5, #0x1c]
	ldr     r0, [r5, #0x18]
	lsl     r3, r3, #20
	lsr     r3, r3, #16
	bl      Function_2226870
	str     r0, [r5, #0x48]
branch_222e4e4: @ 222e4e4 :thumb
	mov     r0, #0x22
	ldsh    r0, [r5, r0]
	cmp     r0, #0x5a
	bne     branch_222e51e
	ldr     r0, [r5, #0x4]
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	sub     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	str     r2, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x104] @ 0x222e610, (=#0xffff)
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x104] @ 0x222e614, (=#0x3ea)
	str     r0, [sp, #0x18]
	ldr     r3, [r5, #0x1c]
	ldr     r0, [r5, #0x18]
	lsl     r3, r3, #20
	lsr     r3, r3, #16
	bl      Function_2226870
	str     r0, [r5, #0x4c]
branch_222e51e: @ 222e51e :thumb
	mov     r0, #0x22
	ldsh    r0, [r5, r0]
	cmp     r0, #0x64
	bne     branch_222e558
	ldr     r0, [r5, #0x4]
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	sub     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	str     r2, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xcc] @ 0x222e610, (=#0xffff)
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0xcc] @ 0x222e614, (=#0x3ea)
	str     r0, [sp, #0x18]
	ldr     r3, [r5, #0x1c]
	ldr     r0, [r5, #0x18]
	lsl     r3, r3, #20
	lsr     r3, r3, #16
	bl      Function_2226870
	str     r0, [r5, #0x50]
branch_222e558: @ 222e558 :thumb
	mov     r1, #0x22
	ldsh    r0, [r5, r1]
	cmp     r0, #0x6e
	bne     branch_222e592
	sub     r1, #0x23
	ldr     r0, [r5, #0x4]
	mov     r2, r1
	bl      Function_2235780
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x34]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x38]
	mov     r1, #0x1
	bl      Function_200d810
	mov     r0, #0xf
	str     r0, [r5, #0x54]
	mov     r0, #0x0
	str     r0, [r5, #0x58]
branch_222e592: @ 222e592 :thumb
	mov     r0, #0x22
	ldsh    r0, [r5, r0]
	cmp     r0, #0x6e
	blt     branch_222e5ca
	ldr     r0, [r5, #0x54]
	cmp     r0, #0x0
	ble     branch_222e5a4
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x54]
branch_222e5a4: @ 222e5a4 :thumb
	ldr     r0, [r5, #0x58]
	cmp     r0, #0xf
	bge     branch_222e5ae
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x58]
branch_222e5ae: @ 222e5ae :thumb
	ldr     r0, [r5, #0x58]
	ldr     r1, [r5, #0x54]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x60] @ 0x222e618, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x54]
	cmp     r0, #0x0
	bne     branch_222e5ca
	ldr     r0, [r5, #0x58]
	cmp     r0, #0xf
	bne     branch_222e5ca
	mov     r0, #0x4
	str     r0, [sp, #0x20]
branch_222e5ca: @ 222e5ca :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x4
	bne     branch_222e606
	mov     r6, #0x0
	mov     r4, r5
branch_222e5d4: @ 222e5d4 :thumb
	ldr     r0, [r4, #0x2c]
	bl      Function_200d0f4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_222e5d4
	mov     r6, #0x0
	mov     r4, r5
branch_222e5e6: @ 222e5e6 :thumb
	ldr     r0, [r4, #0x3c]
	bl      Function_2226858
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_222e5e6
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
	add     sp, #0x24
	pop     {r4-r7,pc}

branch_222e606: @ 222e606 :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_200c7ec
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x222e610

.word 0xffff @ 0x222e610
.word 0x3ea @ 0x222e614
.word 0x4000052 @ 0x222e618



.thumb
Function_222e61c: @ 222e61c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r1, #0x5c
	str     r0, [sp, #0x0]
	mov     r5, r3
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0xa
	strh    r0, [r4, #0x20]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223595c
	ldr     r1, [r4, #0x4]
	add     r0, sp, #0xc
	bl      Function_222329c
	str     r5, [r4, #0x2c]
	mov     r0, #0x0
	strh    r0, [r4, #0x22]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r7, #0x5
	add     r6, r4, #0x2
	add     r5, r4, #0x4
branch_222e650: @ 222e650 :thumb
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #30
	sub     r2, r2, r1
	mov     r0, #0x1e
	ror     r2, r0
	add     r0, r1, r2
	add     r0, r7, r0
	strh    r0, [r6, #0x22]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	add     r2, sp, #0xc
	bl      Function_200ce6c
	str     r0, [r5, #0x2c]
	ldr     r0, [sp, #0x8]
	.hword  0x1d7f @ add r7, r7, #0x5
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x8]
	cmp     r0, #0x4
	blt     branch_222e650
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_200d7d4
	ldr     r0, [r4, #0x34]
	mov     r1, #0x1
	bl      Function_200d7d4
	ldr     r0, [sp, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20080c0
	mov     r0, r5
	mov     r1, #0x29
	bl      Function_20080c0
	ldr     r0, [sp, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222e6d2
	mov     r7, #0x8c
	b       branch_222e6d4

branch_222e6d2: @ 222e6d2 :thumb
	mov     r7, #0x54
branch_222e6d4: @ 222e6d4 :thumb
	mov     r6, #0x0
	mov     r5, r4
branch_222e6d8: @ 222e6d8 :thumb
	ldr     r0, [r5, #0x2c]
	ldr     r1, [sp, #0x4]
	mov     r2, r7
	bl      Function_200d4c4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_222e6d8
	ldr     r0, [sp, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_223525c
	cmp     r0, #0x3
	ldr     r0, [r4, #0x2c]
	bne     branch_222e71e
	mov     r1, #0xa
	bl      Function_200d474
	ldr     r0, [r4, #0x34]
	mov     r1, #0xa
	bl      Function_200d474
	ldr     r0, [r4, #0x30]
	mov     r1, #0x12
	bl      Function_200d474
	ldr     r0, [r4, #0x38]
	mov     r1, #0x12
	bl      Function_200d474
	b       branch_222e73c

branch_222e71e: @ 222e71e :thumb
	mov     r1, #0x12
	bl      Function_200d474
	ldr     r0, [r4, #0x34]
	mov     r1, #0x12
	bl      Function_200d474
	ldr     r0, [r4, #0x30]
	mov     r1, #0xa
	bl      Function_200d474
	ldr     r0, [r4, #0x38]
	mov     r1, #0xa
	bl      Function_200d474
branch_222e73c: @ 222e73c :thumb
	mov     r1, #0x1f
	ldr     r0, [r4, #0x2c]
	mvn     r1, r1
	mov     r2, #0x0
	bl      Function_200d5dc
	mov     r1, #0x27
	ldr     r0, [r4, #0x38]
	mvn     r1, r1
	mov     r2, #0x4
	bl      Function_200d5dc
	ldr     r0, [r4, #0x34]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_200d5dc
	ldr     r0, [r4, #0x30]
	mov     r1, #0x28
	mov     r2, #0x4
	bl      Function_200d5dc
	ldr     r0, [r4, #0x2c]
	bl      Function_200d43c
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0xc] @ 0x222e780, (=#0x222e391)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x222e77e

.align 2
.word 0x222e391 @ 0x222e780



.thumb
Function_222e784: @ 222e784 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_222e80a
	mov     r0, r4
	add     r0, #0x60
	bl      Function_2225f6c
	cmp     r0, #0x0
	bne     branch_222e7c8
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_2235e80
	add     sp, #0xc
	pop     {r4,r5,pc}

branch_222e7c8: @ 222e7c8 :thumb
	mov     r0, r4
	add     r0, #0x60
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_2225fa4
	ldr     r0, [r4, #0x28]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	bl      Function_200d6e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x58
	mov     r2, #0x5a
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x28]
	ldr     r3, [r4, #0x74]
	bl      Function_222605c
	ldr     r0, [r4, #0x28]
	bl      Function_200d330
	ldr     r0, [r4, #0x3c]
	bl      Function_200d330
	ldr     r0, [r4, #0x50]
	bl      Function_200d330
	ldr     r0, [r4, #0xc]
	bl      Function_200c7ec
branch_222e80a: @ 222e80a :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222e80e


.align 2, 0
.thumb
Function_222e810: @ 222e810 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r1, #0x84
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	mov     r1, #0x1
	str     r0, [r4, #0x24]
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x58
	strh    r0, [r1, #0x0]
	mov     r0, #0x58
	ldsh    r1, [r4, r0]
	mov     r0, r4
	add     r0, #0x5c
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2223354
	mov     r1, r4
	add     r1, #0x5a
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x28]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22202c0
	str     r0, [r4, #0x3c]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_22202c0
	str     r0, [r4, #0x50]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_200d6a4
	mov     r0, r5
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r4, #0x28]
	bl      Function_200d460
	mov     r0, r5
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r4, #0x3c]
	bl      Function_200d460
	mov     r0, r5
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r4, #0x50]
	bl      Function_200d460
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232b8
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	ldr     r0, [r4, #0x28]
	bhi     branch_222e8de
	mov     r1, #0x1e
	bl      Function_200d474
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x32
	bl      Function_200d474
	ldr     r0, [r4, #0x50]
	mov     r1, #0x46
	bl      Function_200d474
	b       branch_222e8f4
@ 0x222e8de

.thumb
branch_222e8de: @ 222e8de :thumb
	mov     r1, #0x3c
	bl      Function_200d474
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x46
	bl      Function_200d474
	ldr     r0, [r4, #0x50]
	mov     r1, #0x32
	bl      Function_200d474
.thumb
branch_222e8f4: @ 222e8f4 :thumb
	mov     r2, #0x14
	mov     r1, #0x64
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x60
	mov     r3, r1
	bl      Function_2225ef0
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222e918, (=#0x222e785)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222e918

.word 0x222e785 @ 0x222e918


.thumb
Function_222e91c: @ 222e91c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222e930
	cmp     r0, #0x1
	beq     branch_222ea2e
	b       branch_222ea7c

branch_222e930: @ 222e930 :thumb
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_222e9aa
	mov     r0, #0x22
	ldsh    r3, [r4, r0]
	mov     r0, #0x20
	ldsh    r1, [r4, r0]
	mov     r0, #0x3
	mov     r2, r1
	str     r3, [sp, #0x0]
	add     r2, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x34
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, #0x22
	ldsh    r1, [r4, r0]
	mov     r0, #0xa4
	ldsh    r0, [r4, r0]
	add     r2, r1, r0
	mov     r0, #0x20
	ldsh    r1, [r4, r0]
	lsl     r0, r2, #16
	asr     r3, r0, #16
	mov     r2, r1
	add     r2, #0x30
	lsl     r2, r2, #16
	str     r3, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x58
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, #0x22
	ldsh    r1, [r4, r0]
	mov     r0, #0xa4
	ldsh    r0, [r4, r0]
	add     r2, r1, r0
	mov     r0, #0x20
	ldsh    r1, [r4, r0]
	lsl     r0, r2, #16
	asr     r3, r0, #16
	mov     r2, r1
	add     r2, #0x30
	lsl     r2, r2, #16
	str     r3, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x7c
	asr     r2, r2, #16
	bl      Function_2225bc8
	b       branch_222ea18

branch_222e9aa: @ 222e9aa :thumb
	mov     r0, #0x22
	ldsh    r3, [r4, r0]
	mov     r0, #0x20
	ldsh    r2, [r4, r0]
	mov     r0, #0x3
	mov     r1, r2
	str     r3, [sp, #0x0]
	add     r1, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsl     r1, r1, #16
	add     r0, #0x34
	asr     r1, r1, #16
	bl      Function_2225bc8
	mov     r0, #0x22
	ldsh    r1, [r4, r0]
	mov     r0, #0xa4
	ldsh    r0, [r4, r0]
	add     r1, r1, r0
	mov     r0, #0x20
	ldsh    r2, [r4, r0]
	lsl     r0, r1, #16
	asr     r3, r0, #16
	mov     r1, r2
	add     r1, #0x30
	lsl     r1, r1, #16
	str     r3, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x58
	asr     r1, r1, #16
	bl      Function_2225bc8
	mov     r0, #0x22
	ldsh    r1, [r4, r0]
	mov     r0, #0xa4
	ldsh    r0, [r4, r0]
	add     r1, r1, r0
	mov     r0, #0x20
	ldsh    r2, [r4, r0]
	lsl     r0, r1, #16
	asr     r3, r0, #16
	mov     r1, r2
	add     r1, #0x30
	lsl     r1, r1, #16
	str     r3, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x7c
	asr     r1, r1, #16
	bl      Function_2225bc8
branch_222ea18: @ 222ea18 :thumb
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xa0
	strb    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222ea8e

branch_222ea2e: @ 222ea2e :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x28]
	add     r0, #0x58
	mov     r5, #0x0
	bl      Function_2225c50
	cmp     r0, #0x0
	bne     branch_222ea40
	.hword  0x1c6d @ add r5, r5, #0x1
branch_222ea40: @ 222ea40 :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x24]
	add     r0, #0x34
	bl      Function_2225c74
	cmp     r0, #0x0
	bne     branch_222ea50
	.hword  0x1c6d @ add r5, r5, #0x1
branch_222ea50: @ 222ea50 :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x30]
	add     r0, #0x7c
	bl      Function_2225c50
	cmp     r0, #0x0
	bne     branch_222ea60
	.hword  0x1c6d @ add r5, r5, #0x1
branch_222ea60: @ 222ea60 :thumb
	cmp     r5, #0x3
	blt     branch_222ea8e
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	ldrb    r0, [r4, #0x0]
	bne     branch_222ea76
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222ea8e

branch_222ea76: @ 222ea76 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222ea8e

branch_222ea7c: @ 222ea7c :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_2235e80
	add     sp, #0x8
	pop     {r3-r5,pc}

branch_222ea8e: @ 222ea8e :thumb
	ldr     r0, [r4, #0x28]
	bl      Function_200d330
	ldr     r0, [r4, #0xc]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222ea9e


.align 2, 0
.thumb
Function_222eaa0: @ 222eaa0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r1, #0xa8
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xa1
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x8
	add     r0, #0xa2
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa3
	strb    r1, [r0, #0x0]
	sub     r1, #0x9
	ldr     r0, [r4, #0x4]
	mov     r2, r1
	bl      Function_2235780
	mov     r0, r4
	add     r0, #0xa2
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa3
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x128] @ 0x222ec10, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x20]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x22]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_22202c0
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x29
	bl      Function_20080c0
	neg     r1, r0
	mov     r0, r4
	add     r0, #0xa4
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2223334
	mov     r7, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2223344
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x4]
	ldr     r5, [r4, #0x28]
	bl      Function_222339c
	mov     r1, r0
	mov     r0, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d460
	ldr     r0, [r5, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      Function_222332c
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x4]
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	lsl     r0, r6, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0xc4
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	mov     r2, r7
	bl      Function_2003b08
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x4]
	ldr     r5, [r4, #0x30]
	bl      Function_222339c
	mov     r1, r0
	mov     r0, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d460
	ldr     r0, [r5, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      Function_222332c
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x4]
	bl      Function_221fde4
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	lsl     r0, r6, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0xc4
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x18]
	mov     r2, r7
	bl      Function_2003b08
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x10] @ 0x222ec14, (=#0x222e91d)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x222ec0e

.align 2
.word 0x4000052 @ 0x222ec10
.word 0x222e91d @ 0x222ec14



.thumb
Function_222ec18: @ 222ec18 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r7, r6
	mov     r4, r1
	mov     r5, r1
branch_222ec28: @ 222ec28 :thumb
	mov     r0, #0x1e
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x1e]
	mov     r0, #0x1e
	ldsh    r0, [r4, r0]
	cmp     r0, #0x20
	blt     branch_222ec50
	ldr     r0, [r5, #0x30]
	bl      Function_222e248
	mov     r0, #0x1e
	ldsh    r0, [r4, r0]
	cmp     r0, #0xa0
	blt     branch_222ec50
	ldr     r0, [r5, #0x30]
	mov     r1, #0x0
	bl      Function_200d3f4
	.hword  0x1c76 @ add r6, r6, #0x1
branch_222ec50: @ 222ec50 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x8
	blt     branch_222ec28
	cmp     r6, #0x8
	bne     branch_222ec84
	ldr     r4, [sp, #0x4]
	mov     r5, #0x0
branch_222ec62: @ 222ec62 :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_200d0f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x8
	blt     branch_222ec62
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_2220220
	ldr     r0, [sp, #0x4]
	bl      Function_20181c4
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_222ec84: @ 222ec84 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x10]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222ec90


.thumb
Function_222ec90: @ 222ec90 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	mov     r1, #0x74
	mov     r6, r0
	mov     r5, r3
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, #0xa
	strh    r0, [r4, #0x1c]
	mov     r0, r6
	mov     r1, r4
	bl      Function_223595c
	ldr     r1, [r4, #0x4]
	add     r0, sp, #0x24
	bl      Function_222329c
	str     r5, [r4, #0x30]
	mov     r6, #0x1
	add     r5, r4, #0x4
	mov     r7, #0x1f
.thumb
branch_222ecbc: @ 222ecbc :thumb
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	add     r2, sp, #0x24
	bl      Function_200ce6c
	str     r0, [r5, #0x30]
	lsr     r1, r6, #31
	lsl     r0, r6, #31
	sub     r0, r0, r1
	ror     r0, r7
	add     r0, r1, r0
	beq     branch_222ecdc
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      Function_200d7d4
.thumb
branch_222ecdc: @ 222ecdc :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x8
	blt     branch_222ecbc
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r7, r0, #16
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [sp, #0x1c]
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x50
	mov     r1, r7
	mov     r2, r6
	mov     r3, r5
	bl      Function_2225bc8
	mov     r7, #0x0
	ldr     r0, [r4, #0x4]
	mov     r6, r7
	str     r7, [sp, #0x14]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_223525c
	cmp     r0, #0x4
	bne     branch_222ed60
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_222ed60: @ 222ed60 :thumb
	mov     r0, r4
	str     r0, [sp, #0x20]
	add     r0, #0x50
	mov     r5, r4
	str     r0, [sp, #0x20]
.thumb
branch_222ed6a: @ 222ed6a :thumb
	ldr     r0, [sp, #0x20]
	bl      Function_2225c14
	str     r0, [sp, #0x18]
	lsr     r2, r7, #31
	lsl     r1, r7, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	beq     branch_222eda2
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_222ed9e
	cmp     r6, #0x8
	bge     branch_222eda2
	mov     r1, #0x50
	mov     r2, #0x52
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r5, #0x30]
	bl      Function_200d4c4
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	b       branch_222eda2
@ 0x222ed9e

.thumb
branch_222ed9e: @ 222ed9e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
.thumb
branch_222eda2: @ 222eda2 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r0, #0x1
	beq     branch_222ed6a
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2223428
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2223428
	mov     r7, r0
	mov     r6, #0x0
	str     r4, [sp, #0xc]
	mov     r5, r4
.thumb
branch_222edc4: @ 222edc4 :thumb
	mov     r0, #0x8
	sub     r0, r0, r6
	str     r0, [sp, #0x8]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0xc]
	strh    r1, [r0, #0x1e]
	ldr     r0, [r4, #0x4]
	bl      Function_221fdd4
	cmp     r0, #0x0
	bne     branch_222ee20
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222ee02
	cmp     r6, #0x4
	ldr     r0, [r5, #0x30]
	bge     branch_222edfa
	mov     r1, r7
	bl      Function_200d460
	b       branch_222ee16
@ 0x222edfa

.thumb
branch_222edfa: @ 222edfa :thumb
	ldr     r1, [sp, #0x10]
	bl      Function_200d460
	b       branch_222ee16
@ 0x222ee02

.thumb
branch_222ee02: @ 222ee02 :thumb
	cmp     r6, #0x4
	ldr     r0, [r5, #0x30]
	blt     branch_222ee10
	mov     r1, r7
	bl      Function_200d460
	b       branch_222ee16
@ 0x222ee10

.thumb
branch_222ee10: @ 222ee10 :thumb
	ldr     r1, [sp, #0x10]
	bl      Function_200d460
.thumb
branch_222ee16: @ 222ee16 :thumb
	ldr     r0, [r5, #0x30]
	ldr     r1, [sp, #0x8]
	bl      Function_200d474
	b       branch_222ee30
@ 0x222ee20

.thumb
branch_222ee20: @ 222ee20 :thumb
	ldr     r0, [r5, #0x30]
	mov     r1, r6
	bl      Function_200d474
	ldr     r0, [r5, #0x30]
	mov     r1, r7
	bl      Function_200d460
.thumb
branch_222ee30: @ 222ee30 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0xc]
	cmp     r6, #0x8
	blt     branch_222edc4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x222ee4c, (=#0x222ec19)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x222ee4c

.word 0x222ec19 @ 0x222ee4c
.thumb
Function_222ee50: @ 222ee50 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r1
	mov     r4, r0
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_222ee66
	cmp     r0, #0x1
	beq     branch_222eef4
	cmp     r0, #0x2
	b       branch_222ef52
@ 0x222ee66

.thumb
branch_222ee66: @ 222ee66 :thumb
	ldr     r0, [r5, #0x28]
	cmp     r0, #0xe
	ble     branch_222eebc
	ldr     r0, [r5, #0x30]
	ldr     r1, [pc, #0x128] @ 0x222ef98, (=#0x3e4ccccd)
	blx     Function_20e1a9c
	str     r0, [r5, #0x30]
	ldr     r0, [r5, #0x2c]
	ldr     r1, [pc, #0x11c] @ 0x222ef98, (=#0x3e4ccccd)
	blx     Function_20e0b00
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x30]
	blx     Function_20e16bc
	ldr     r2, [pc, #0x114] @ 0x222ef9c, (=#0x9999999a)
	ldr     r3, [pc, #0x114] @ 0x222efa0, (=#0x3fc99999)
	blx     Function_20e0e54
	bhi     branch_222eea0
	ldrb    r0, [r5, #0x0]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	ldr     r0, [r5, #0x1c]
	bl      Function_200d3f4
	b       branch_222ef7a
@ 0x222eea0

.thumb
branch_222eea0: @ 222eea0 :thumb
	mov     r0, #0x36
	ldsb    r0, [r5, r0]
	blx     Function_20e17b4
	mov     r1, r0
	ldr     r0, [r5, #0x2c]
	blx     Function_20e18b0
	mov     r1, r0
	ldr     r0, [r5, #0x1c]
	ldr     r2, [r5, #0x30]
	bl      Function_200d6e8
	b       branch_222ef7a
@ 0x222eebc

.thumb
branch_222eebc: @ 222eebc :thumb
	mov     r0, r5
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x35
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x34
	ldrb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0xb8] @ 0x222efa4, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x28]
	b       branch_222ef7a
@ 0x222eef4

.thumb
branch_222eef4: @ 222eef4 :thumb
	ldr     r0, [r5, #0x3c]
	bl      Function_2226848
	cmp     r0, #0x0
	bne     branch_222ef7a
	ldr     r0, [r5, #0x38]
	bl      Function_2226858
	ldr     r0, [r5, #0x3c]
	bl      Function_2226858
	ldr     r0, [r5, #0x24]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	lsl     r3, r4, #20
	str     r2, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r0, [pc, #0x70] @ 0x222efa8, (=#0xffff)
	mov     r2, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x6c] @ 0x222efac, (=#0x44c)
	lsr     r3, r3, #16
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x18]
	bl      Function_2226870
	str     r0, [r5, #0x3c]
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	b       branch_222ef7a
@ 0x222ef52

.thumb
branch_222ef52: @ 222ef52 :thumb
	ldr     r0, [r5, #0x3c]
	bl      Function_2226848
	cmp     r0, #0x0
	bne     branch_222ef7a
	ldr     r0, [r5, #0x20]
	bl      Function_200d330
	ldr     r0, [r5, #0x3c]
	bl      Function_2226858
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
	add     sp, #0x1c
	pop     {r4,r5,pc}

branch_222ef7a: @ 222ef7a :thumb
	ldr     r0, [r5, #0x1c]
	bl      Function_200d330
	ldr     r0, [r5, #0x20]
	bl      Function_200d330
	ldr     r0, [r5, #0x24]
	bl      Function_200d330
	ldr     r0, [r5, #0xc]
	bl      Function_200c7ec
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x222ef96

.align 2
.word 0x3e4ccccd @ 0x222ef98
.word 0x9999999a @ 0x222ef9c
.word 0x3fc99999 @ 0x222efa0
.word 0x4000052 @ 0x222efa4
.word 0xffff @ 0x222efa8
.word 0x44c @ 0x222efac



.thumb
Function_222efb0: @ 222efb0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r1, #0x40
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_22202c0
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_22202c0
	str     r0, [r4, #0x24]
	mov     r6, #0x0
	str     r6, [r4, #0x28]
	mov     r0, r5
	sub     r6, #0x20
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_2225964
	lsl     r0, r0, #16
	asr     r0, r0, #16
	mul     r0, r6
	mov     r6, r0
	mov     r0, #0xfe
	lsl     r0, r0, #22
	str     r0, [r4, #0x2c]
	str     r0, [r4, #0x30]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22234a8
	cmp     r0, #0x1
	bne     branch_222f01a
	mov     r1, #0x0
	mvn     r1, r1
	b       branch_222f01c
@ 0x222f01a

.thumb
branch_222f01a: @ 222f01a :thumb
	mov     r1, #0x1
.thumb
branch_222f01c: @ 222f01c :thumb
	mov     r0, r4
	add     r0, #0x36
	strb    r1, [r0, #0x0]
	add     r1, sp, #0x24
	ldr     r0, [r4, #0x20]
	add     r1, #0x2
	add     r2, sp, #0x24
	bl      Function_200d550
	add     r2, sp, #0x24
	mov     r1, #0x2
	ldsh    r1, [r2, r1]
	mov     r3, #0x0
	ldsh    r2, [r2, r3]
	add     r1, r1, r6
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x1c]
	asr     r1, r1, #16
	bl      Function_200d4c4
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_200d6a4
	mov     r0, #0x36
	ldsb    r0, [r4, r0]
	blx     Function_20e17b4
	mov     r1, r0
	ldr     r0, [r4, #0x2c]
	blx     Function_20e18b0
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x30]
	bl      Function_200d6e8
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	lsl     r3, r6, #20
	str     r2, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x164] @ 0x222f1f8, (=#0xffff)
	mov     r2, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x160] @ 0x222f1fc, (=#0x44c)
	lsr     r3, r3, #16
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x18]
	bl      Function_2226870
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x24]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fde4
	mov     r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	lsl     r3, r6, #20
	str     r2, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x124] @ 0x222f1f8, (=#0xffff)
	mov     r2, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x120] @ 0x222f1fc, (=#0x44c)
	lsr     r3, r3, #16
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x18]
	bl      Function_2226870
	str     r0, [r4, #0x3c]
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_2235254
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldr     r0, [r4, #0x4]
	bl      Function_221fdd4
	mov     r1, r0
	mov     r0, r5
	add     r2, sp, #0x2c
	bl      Function_2235350
	add     r2, sp, #0x28
	ldr     r0, [r4, #0x1c]
	add     r1, sp, #0x28
	add     r2, #0x2
	bl      Function_200d550
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222f138
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	mov     r5, #0x0
	bl      Function_200d460
	ldr     r0, [r4, #0x1c]
	mov     r1, r5
	bl      Function_200d474
	b       branch_222f14a
@ 0x222f138

.thumb
branch_222f138: @ 222f138 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_200d460
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_200d474
	mov     r5, #0x2
.thumb
branch_222f14a: @ 222f14a :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_22232d0
	mov     r7, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_22232c4
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_22232e0
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_22232ec
	ldr     r1, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x0]
	lsl     r0, r7, #16
	lsl     r1, r1, #24
	lsl     r2, r5, #24
	lsl     r3, r3, #24
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2076648
	mov     r2, r0
	add     r5, sp, #0x24
	mov     r3, #0xa
	ldsh    r3, [r5, r3]
	mov     r1, #0x4
	ldsh    r1, [r5, r1]
	add     r2, r3, r2
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x1c]
	asr     r2, r2, #16
	bl      Function_200d4c4
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_200d3f4
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xf
	add     r0, #0x35
	strb    r1, [r0, #0x0]
	sub     r1, #0x10
	ldr     r0, [r4, #0x4]
	mov     r2, r1
	bl      Function_2235780
	mov     r0, r4
	add     r0, #0x34
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	mov     r2, r4
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x1c] @ 0x222f200, (=#0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x1c] @ 0x222f204, (=#0x222ee51)
	bl      Function_22201e8
	mov     r1, r4
	bl      Function_222ee50
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x222f1f6

.align 2
.word 0xffff @ 0x222f1f8
.word 0x44c @ 0x222f1fc
.word 0x4000052 @ 0x222f200
.word Function_222ee50+1 @ =0x222ee51, 0x222f204



.thumb
Function_222f208: @ 222f208 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x58
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222f21c
	cmp     r0, #0x1
	beq     branch_222f262
	b       branch_222f2dc

branch_222f21c: @ 222f21c :thumb
	ldr     r0, [r4, #0x68]
	mov     r1, #0x20
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r0, [r2, #0x78]
	lsl     r0, r0, #16
	asr     r3, r0, #16
	str     r3, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	ldr     r2, [r2, #0x6c]
	mov     r0, r4
	lsl     r2, r2, #16
	ldsh    r1, [r4, r1]
	add     r0, #0x30
	asr     r2, r2, #16
	bl      Function_2225bc8
	ldr     r2, [r4, #0x68]
	ldr     r0, [r4, #0x24]
	lsl     r2, r2, #2
	add     r2, r4, r2
	add     r2, #0x84
	ldr     r2, [r2, #0x0]
	mov     r1, #0x2
	bl      Function_2007dec
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2c
	mov     r2, #0x1
	bl      Function_2007dec
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_222f262: @ 222f262 :thumb
	mov     r0, r4
	add     r0, #0x30
	bl      Function_2225c14
	cmp     r0, #0x0
	bne     branch_222f2c0
	ldr     r0, [r4, #0x68]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x68]
	cmp     r0, #0x2
	ble     branch_222f280
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_222f2b6

branch_222f280: @ 222f280 :thumb
	ldr     r0, [r4, #0x58]
	cmp     r0, #0x0
	bne     branch_222f2b2
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x8
	mov     r2, #0x3
	bl      Function_2220590
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x2
	ldr     r0, [r4, #0x4]
	bne     branch_222f2a6
	bl      Function_221fde4
	mov     r1, r0
	add     r0, sp, #0x8
	bl      Function_22382bc
	b       branch_222f2b2

branch_222f2a6: @ 222f2a6 :thumb
	bl      Function_221fde4
	mov     r1, r0
	add     r0, sp, #0x8
	bl      Function_22380cc
branch_222f2b2: @ 222f2b2 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
branch_222f2b6: @ 222f2b6 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x20]
branch_222f2c0: @ 222f2c0 :thumb
	mov     r2, #0x30
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_2007dec
	mov     r2, #0x32
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_2007dec
	add     sp, #0x58
	pop     {r3-r5,pc}

branch_222f2dc: @ 222f2dc :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2c
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x58
	pop     {r3-r5,pc}
@ 0x222f2f8


.thumb
Function_222f2f8: @ 222f2f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r1, #0x90
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223595c
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	mov     r2, r4
	ldr     r0, [r4, #0x4]
	add     r2, #0x5c
	bl      Function_22353ac
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	mov     r1, r0
	mov     r2, r4
	ldr     r0, [r4, #0x4]
	add     r2, #0x60
	bl      Function_22353ac
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_222f34a
	mov     r1, #0x1
	b       branch_222f34e
@ 0x222f34a

.thumb
branch_222f34a: @ 222f34a :thumb
	mov     r1, #0x0
	mvn     r1, r1
.thumb
branch_222f34e: @ 222f34e :thumb
	mov     r0, r4
	add     r0, #0x54
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_223525c
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_223525c
	cmp     r6, r0
	bne     branch_222f37a
	mov     r0, #0x1
	b       branch_222f37c
@ 0x222f37a

.thumb
branch_222f37a: @ 222f37a :thumb
	mov     r0, #0x0
.thumb
branch_222f37c: @ 222f37c :thumb
	str     r0, [r4, #0x58]
	mov     r1, #0x0
	mov     r0, r5
	str     r1, [r4, #0x68]
	bl      Function_2220280
	mov     r2, r4
	mov     r1, r0
	mov     r0, r5
	add     r2, #0x1c
	add     r3, sp, #0x0
	bl      Function_2235998
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_20080c0
	mov     r1, #0x5e
	ldsh    r2, [r4, r1]
	mov     r3, #0x54
	sub     r0, r0, r2
	ldsh    r2, [r4, r3]
	cmp     r2, #0x0
	ble     branch_222f3ee
	mov     r2, r3
	add     r2, #0xfb
	str     r2, [r4, #0x6c]
	sub     r3, #0xa4
	str     r3, [r4, #0x70]
	mov     r2, #0x5c
	ldsh    r2, [r4, r2]
	str     r2, [r4, #0x74]
	ldsh    r2, [r4, r1]
	add     r2, r2, r0
	str     r2, [r4, #0x78]
	mov     r2, #0x62
	ldsh    r2, [r4, r2]
	add     r2, r2, r0
	str     r2, [r4, #0x7c]
	ldsh    r1, [r4, r1]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xa
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x64] @ 0x222f444, (=#0xfffffd76)
	add     r0, #0x88
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      Function_20080c0
	b       branch_222f42e
@ 0x222f3ee

.thumb
branch_222f3ee: @ 222f3ee :thumb
	mov     r2, r3
	sub     r2, #0xa4
	str     r2, [r4, #0x6c]
	add     r3, #0xfb
	str     r3, [r4, #0x70]
	mov     r2, #0x5c
	ldsh    r2, [r4, r2]
	str     r2, [r4, #0x74]
	ldsh    r2, [r4, r1]
	add     r2, r2, r0
	str     r2, [r4, #0x78]
	mov     r2, #0x62
	ldsh    r2, [r4, r2]
	add     r2, r2, r0
	str     r2, [r4, #0x7c]
	ldsh    r1, [r4, r1]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x28] @ 0x222f444, (=#0xfffffd76)
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xa
	add     r0, #0x88
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      Function_20080c0
.thumb
branch_222f42e: @ 222f42e :thumb
	mov     r1, r4
	add     r1, #0x8c
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x10] @ 0x222f448, (=#0x222f209)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222f442

.align 2
.word 0xfffffd76 @ 0x222f444
.word 0x222f209 @ 0x222f448



.thumb
Function_222f44c: @ 222f44c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r2
	ldr     r2, [sp, #0x10]
	str     r2, [sp, #0x0]
	mov     r2, #0x50
	sub     r2, r2, r3
	mov     r3, r4
	bl      Function_20086d4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222f464


.thumb
Function_222f464: @ 222f464 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bls     branch_222f478
	b       branch_222f59a

branch_222f478: @ 222f478 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r4, #1
	lsl     r4, r4, #2
	lsl     r2, r7, #3
	ldr     r2, [r4, #0x10]
	add     r2, #0x4f
	str     r2, [r4, #0x10]
	cmp     r2, #0x50
	blt     branch_222f4b4
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	add     sp, #0x4
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	ldr     r1, [r4, #0x14]
	mov     r0, #0x1
	eor     r0, r1
	str     r0, [r4, #0x14]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	pop     {r3-r6,pc}

branch_222f4b4: @ 222f4b4 :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_222f4d0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r3, [r4, #0x0]
	ldr     r0, [r4, #0x1c]
	.hword  0x1c9b @ add r3, r3, #0x2
	mov     r1, #0x0
	lsl     r3, r3, #1
	bl      Function_222f44c
	add     sp, #0x4
	pop     {r3-r6,pc}

branch_222f4d0: @ 222f4d0 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r3, [r4, #0x0]
	mov     r1, #0x50
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r4, #0x1c]
	sub     r1, r1, r2
	lsl     r3, r3, #1
	bl      Function_222f44c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222f4e8


.incbin "./baserom/overlay/overlay_0012.bin", 0xf8c8, 0x222f59a - 0x222f4e8


.thumb
branch_222f59a: @ 222f59a :thumb
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r3, [r0, #0x0]
	ldr     r1, [pc, #0x44] @ 0x222f5e8, (=#0xffff1fff)
	and     r1, r3
	mov     r3, r0
	str     r1, [r0, #0x0]
	add     r3, #0x48
	ldrh    r5, [r3, #0x0]
	mov     r1, #0x3f
	bic     r5, r1
	strh    r5, [r3, #0x0]
	mov     r3, r0
	add     r3, #0x4a
	ldrh    r5, [r3, #0x0]
	bic     r5, r1
	mov     r1, r0
	strh    r5, [r3, #0x0]
	mov     r3, #0x0
	add     r1, #0x40
	strh    r3, [r1, #0x0]
	add     r0, #0x44
	strh    r3, [r0, #0x0]
	ldr     r0, [r4, #0x24]
	mov     r1, r2
	bl      Function_2220220
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x18]
	mov     r1, #0x17
	bl      Function_2007dec
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222f5e4


.incbin "./baserom/overlay/overlay_0012.bin", 0xf9c4, 0x222f5e8 - 0x222f5e4


.word 0xffff1fff @ 0x222f5e8



.thumb
Function_222f5ec: @ 222f5ec :thumb
	push    {r4-r6,lr}
	mov     r1, #0x50
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x20
	bl      Function_223595c
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_22232fc
	str     r0, [r4, #0x1c]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_2235254
	cmp     r0, #0x3
	beq     branch_222f62c
	cmp     r0, #0x4
	bne     branch_222f640
.thumb
branch_222f62c: @ 222f62c :thumb
	mov     r0, r5
	bl      Function_222339c
	mov     r1, r0
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #24
	mov     r0, #0x2
	lsr     r1, r1, #24
	bl      Function_2019060
.thumb
branch_222f640: @ 222f640 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r5, r0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x17
	bl      Function_20080c0
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x17
	mov     r2, #0x8
	bl      Function_2007dec
	sub     r6, #0x28
	str     r6, [r4, #0x8]
	add     r5, #0x28
	mov     r6, #0x1
	lsl     r6, r6, #26
	mov     r3, r6
	str     r5, [r4, #0x4]
	mov     r1, #0x0
	str     r1, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	add     r3, #0x48
	str     r0, [r4, #0xc]
	str     r1, [r4, #0x14]
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x60] @ 0x222f6f8, (=#0xffff1fff)
	and     r1, r0
	lsr     r0, r6, #13
	orr     r0, r1
	str     r0, [r6, #0x0]
	ldrh    r2, [r3, #0x0]
	mov     r1, #0x3f
	mov     r0, #0x1f
	bic     r2, r1
	orr     r0, r2
	mov     r2, #0x20
	orr     r0, r2
	strh    r0, [r3, #0x0]
	mov     r3, r6
	add     r3, #0x4a
	ldrh    r5, [r3, #0x0]
	mov     r0, #0x1b
	bic     r5, r1
	orr     r0, r5
	orr     r0, r2
	strh    r0, [r3, #0x0]
	ldr     r2, [r4, #0x8]
	mov     r0, #0xff
	lsl     r1, r2, #8
	add     r2, #0x50
	lsl     r0, r0, #8
	lsl     r2, r2, #24
	and     r1, r0
	lsr     r2, r2, #24
	orr     r2, r1
	mov     r1, r6
	ldr     r5, [r4, #0xc]
	ldr     r3, [r4, #0x4]
	add     r1, #0x40
	strh    r2, [r1, #0x0]
	lsl     r1, r3, #8
	and     r1, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	orr     r0, r1
	add     r6, #0x44
	strh    r0, [r6, #0x0]
	ldr     r0, [r4, #0x24]
	ldr     r1, [pc, #0xc] @ 0x222f6fc, (=#0x222f465)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x222f6f6

.align 2
.word 0xffff1fff @ 0x222f6f8
.word 0x222f465 @ 0x222f6fc



.thumb
Function_222f700: @ 222f700 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r1, #0xe8
	mov     r2, #0xea
	mov     r5, r0
	mov     r0, r4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r3, [r4, #0x8]
	add     r0, #0xc
	bl      Function_2225ba0
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x38
	bl      Function_2226274
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	mov     r1, #0x0
	add     r2, sp, #0x0
branch_222f734: @ 222f734 :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, #0x1
	beq     branch_222f76a
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x3
	blt     branch_222f734
	mov     r2, #0xe8
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2007dec
	mov     r2, #0xea
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	sub     r2, #0x8
	bl      Function_2007dec
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_222f76a: @ 222f76a :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222f76e


.align 2, 0
.thumb
Function_222f770: @ 222f770 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0xf0
	bl      Function_2018144
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [r4, #0x8]
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0xe8
	strh    r0, [r1, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0xea
	strh    r0, [r1, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0xec
	strh    r0, [r1, #0x0]
	mov     r0, #0xea
	ldsh    r1, [r4, r0]
	mov     r0, r4
	add     r0, #0xea
	add     r1, #0x8
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc
	mov     r1, #0x1
	mov     r2, #0x8
	bl      Function_22263a4
	add     r0, sp, #0x20
	mov     r1, #0x1
	mov     r2, #0xa
	bl      Function_22263a4
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	ldr     r1, [r4, #0x18]
	mov     r6, #0x0
	mov     r2, r1
	mul     r2, r0
	str     r2, [r4, #0x18]
	ldr     r1, [sp, #0x2c]
	mov     r5, r4
	mul     r0, r1
	str     r0, [sp, #0x2c]
	mov     r7, #0x64
.thumb
branch_222f808: @ 222f808 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_22202c0
	str     r0, [r5, #0x30]
	mov     r1, r7
	bl      Function_200d474
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      Function_200d810
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_222f808
	mov     r0, #0xea
	ldsh    r1, [r4, r0]
	mov     r0, #0xec
	ldsh    r0, [r4, r0]
	mov     r3, #0xe8
	ldr     r2, [pc, #0x44] @ 0x222f880, (=#0x2225ae1)
	sub     r0, r1, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	ldr     r0, [r4, #0x30]
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x34]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	str     r1, [sp, #0x1c]
	mov     r0, r4
	ldsh    r3, [r4, r3]
	add     r0, #0x38
	add     r1, sp, #0x20
	bl      Function_22261c4
	mov     r1, #0x0
	mvn     r1, r1
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	bl      Function_2235780
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x222f884, (=#0x222f701)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x222f880

.word Function_2225ae0+1 @ =0x2225ae1, 0x222f880
.word 0x222f701 @ 0x222f884



.thumb
Function_222f888: @ 222f888 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x6
	bls     branch_222f898
	b       branch_222f9de

branch_222f898: @ 222f898 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r6, r1, #1
	lsl     r4, r0, #2
	lsl     r4, r3, #2
	lsl     r4, r1, #3
	lsl     r4, r4, #3
	lsl     r0, r1, #4
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2225c14
	cmp     r0, #0x0
	beq     branch_222f8d4
	mov     r2, #0x48
	mov     r3, #0x4a
	mov     r0, r4
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r1, [r4, #0xc]
	add     r0, #0x10
	bl      Function_2225a18
	add     sp, #0x8
	pop     {r3-r5,pc}

branch_222f8d4: @ 222f8d4 :thumb
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r1, #0x10
	mov     r0, r4
	ldsh    r1, [r4, r1]
	add     r0, #0x10
	mov     r3, r2
	bl      Function_2225bc8
	ldr     r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x222f8f4


.incbin "./baserom/overlay/overlay_0012.bin", 0xfcd4, 0x222f9de - 0x222f8f4


.thumb
branch_222f9de: @ 222f9de :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222f9e2


.align 2, 0
.thumb
Function_222f9e4: @ 222f9e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0xf0
	bl      Function_2018144
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [r4, #0xc]
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x48
	strh    r0, [r1, #0x0]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x4a
	strh    r0, [r1, #0x0]
	mov     r1, #0x0
	mov     r0, r4
	str     r1, [sp, #0x0]
	mov     r2, #0x3
	str     r2, [sp, #0x4]
	add     r0, #0x10
	sub     r2, #0x23
	mov     r3, r1
	bl      Function_2225bc8
	mov     r0, r4
	ldr     r2, [pc, #0xb4] @ 0x222faf4, (=#0xe38)
	add     r0, #0x34
	mov     r1, #0x0
	mov     r3, #0x8
	bl      Function_2225d50
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	ldr     r1, [r4, #0x18]
	mov     r2, r1
	mul     r2, r0
	str     r2, [r4, #0x18]
	ldr     r1, [r4, #0x3c]
	mul     r0, r1
	str     r0, [r4, #0x3c]
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	cmp     r6, #0x3
	bne     branch_222fab2
	cmp     r0, #0x3
	bne     branch_222fab2
	mov     r1, #0xa
	mov     r2, r1
	ldr     r0, [r4, #0xc]
	sub     r2, #0x32
	bl      Function_2007dec
	ldr     r0, [r4, #0xc]
	mov     r1, #0xb
	mov     r2, #0x28
	bl      Function_2007dec
	b       branch_222fae6
@ 0x222fab2

.thumb
branch_222fab2: @ 222fab2 :thumb
	cmp     r6, #0x4
	bne     branch_222fad0
	cmp     r0, #0x4
	bne     branch_222fad0
	ldr     r0, [r4, #0xc]
	mov     r1, #0xa
	mov     r2, #0x28
	bl      Function_2007dec
	ldr     r0, [r4, #0xc]
	mov     r1, #0xb
	mov     r2, #0x28
	bl      Function_2007dec
	b       branch_222fae6
@ 0x222fad0

.thumb
branch_222fad0: @ 222fad0 :thumb
	mov     r2, #0x28
	ldr     r0, [r4, #0xc]
	mov     r1, #0xa
	mul     r2, r7
	bl      Function_2007dec
	ldr     r0, [r4, #0xc]
	mov     r1, #0xb
	mov     r2, #0x28
	bl      Function_2007dec
.thumb
branch_222fae6: @ 222fae6 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x222faf8, (=#0x222f889)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222faf4

.word 0xe38 @ 0x222faf4
.word 0x222f889 @ 0x222faf8
.thumb
Function_222fafc: @ 222fafc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r4, [sp, #0x10]
	bl      Function_200ce6c
	str     r0, [r5, #0x0]
	add     r6, r4, #0x4
	add     r3, r5, #0x4
	mov     r2, #0x4
.thumb
branch_222fb14: @ 222fb14 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222fb14
	ldr     r0, [r6, #0x0]
	mov     r2, r5
	str     r0, [r3, #0x0]
	mov     r3, r4
	add     r3, #0x28
	ldmia   r3!, {r0,r1}
	add     r2, #0x28
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x3c
	ldsh    r0, [r4, r0]
	strh    r0, [r5, #0x3c]
	mov     r0, #0x3e
	ldsh    r0, [r4, r0]
	strh    r0, [r5, #0x3e]
	mov     r0, #0x40
	ldsh    r1, [r4, r0]
	mov     r0, r5
	add     r0, #0x40
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	str     r0, [r5, #0x44]
	str     r1, [r5, #0x48]
	ldr     r0, [r5, #0x0]
	bl      Function_200d3f4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_200d460
	pop     {r4-r6,pc}
@ 0x222fb6a


.incbin "./baserom/overlay/overlay_0012.bin", 0xff4a, 0x222fb84 - 0x222fb6a


.thumb
Function_222fb84: @ 222fb84 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0x48]
	cmp     r0, #0x0
	bne     branch_222fb96
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222fb96

.thumb
branch_222fb96: @ 222fb96 :thumb
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	beq     branch_222fba6
	cmp     r0, #0x1
	beq     branch_222fba6
	cmp     r0, #0x2
	beq     branch_222fc28
	b       branch_222fc2e
@ 0x222fba6

.thumb
branch_222fba6: @ 222fba6 :thumb
	add     r0, r4, #0x4
	bl      Function_2225ae0
	cmp     r0, #0x0
	beq     branch_222fbe6
	mov     r0, r4
	add     r0, #0x28
	bl      Function_2225e0c
	mov     r0, #0x3c
	ldsh    r1, [r4, r0]
	ldr     r0, [r4, #0x28]
	add     r0, r1, r0
	str     r0, [r4, #0x1c]
	mov     r1, #0x3e
	ldsh    r2, [r4, r1]
	mov     r1, #0x4
	ldsh    r1, [r4, r1]
	ldr     r0, [r4, #0x0]
	add     r1, r2, r1
	mov     r2, #0x40
	ldsh    r3, [r4, r2]
	mov     r2, #0x6
	ldsh    r2, [r4, r2]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     r2, r3, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	b       branch_222fc2e
@ 0x222fbe6

.thumb
branch_222fbe6: @ 222fbe6 :thumb
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x1
	bge     branch_222fc20
	cmp     r0, #0x0
	bne     branch_222fc0e
	ldr     r1, [r4, #0xc]
	ldr     r2, [pc, #0x40] @ 0x222fc34, (=#0x7fff)
	lsl     r1, r1, #16
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x10]
	lsr     r1, r1, #16
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	mov     r3, r1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x30] @ 0x222fc38, (=#0x71c)
	str     r0, [sp, #0xc]
	add     r0, r4, #0x4
	bl      Function_2225a8c
.thumb
branch_222fc0e: @ 222fc0e :thumb
	ldr     r0, [r4, #0x8]
	ldr     r2, [pc, #0x28] @ 0x222fc3c, (=#0xffff)
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r3, [pc, #0x28] @ 0x222fc40, (=#0xfffff000)
	add     r0, #0x28
	mov     r1, #0x0
	bl      Function_2225df4
.thumb
branch_222fc20: @ 222fc20 :thumb
	ldr     r0, [r4, #0x44]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x44]
	b       branch_222fc2e
@ 0x222fc28

.thumb
branch_222fc28: @ 222fc28 :thumb
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222fc2e

.thumb
branch_222fc2e: @ 222fc2e :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r4,pc}
@ 0x222fc34

.word 0x7fff @ 0x222fc34
.word 0x71c @ 0x222fc38
.word 0xffff @ 0x222fc3c
.word 0xfffff000 @ 0x222fc40



.thumb
Function_222fc44: @ 222fc44 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x6
	bhi     branch_222fcb8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r4, r4, #0
	lsl     r0, r6, #1
	lsl     r6, r0, #2
	lsl     r6, r4, #4
	lsl     r0, r2, #5
	lsl     r0, r2, #6
	mov     r0, r4
	add     r0, #0xc
	bl      Function_222fb84
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	b       branch_222fe1c
@ 0x222fc86


.incbin "./baserom/overlay/overlay_0012.bin", 0x10066, 0x222fcb8 - 0x222fc86


.thumb
branch_222fcb8: @ 222fcb8 :thumb
	b       branch_222fe1c
@ 0x222fcba


.incbin "./baserom/overlay/overlay_0012.bin", 0x1009a, 0x222fe1c - 0x222fcba


.thumb
branch_222fe1c: @ 222fe1c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	pop     {r3-r7,pc}
@ 0x222fe24


.incbin "./baserom/overlay/overlay_0012.bin", 0x10204, 0x222fe30 - 0x222fe24


.thumb
Function_222fe30: @ 222fe30 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x10]
	bl      Function_221fde4
	mov     r1, #0x1
	lsl     r1, r1, #8
	bl      Function_2018144
	mov     r4, r0
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	str     r7, [r4, #0x8]
	mov     r1, #0x8
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_2220240
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_2225964
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #17
	str     r1, [r4, #0xc]
	mov     r1, #0x0
	str     r1, [r4, #0x50]
	ldr     r2, [pc, #0xe8] @ 0x222ff68, (=#0xbfff)
	neg     r0, r0
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0xe4] @ 0x222ff6c, (=#0xffff8000)
	ldr     r0, [pc, #0xe4] @ 0x222ff70, (=#0x71c)
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r4
	lsr     r1, r1, #18
	add     r0, #0x10
	mov     r3, r1
	bl      Function_2225a8c
	ldr     r0, [r4, #0x14]
	ldr     r2, [pc, #0xd4] @ 0x222ff74, (=#0xffff)
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r3, [pc, #0xd4] @ 0x222ff78, (=#0xfffff000)
	add     r0, #0x34
	mov     r1, #0x0
	bl      Function_2225df4
	mov     r0, r4
	ldr     r1, [r4, #0x28]
	add     r0, #0x48
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x54]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_22258e0
	mov     r1, r4
	add     r1, #0x4a
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22258e0
	mov     r1, r4
	add     r1, #0x4c
	strh    r0, [r1, #0x0]
	mov     r1, #0x4a
	mov     r2, #0x4c
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	bl      Function_200d4c4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r1, [r4, #0x0]
	add     r0, sp, #0x14
	bl      Function_222329c
	mov     r0, #0x4a
	ldsh    r0, [r4, r0]
	add     r1, sp, #0x14
	mov     r5, r4
	strh    r0, [r1, #0x0]
	mov     r0, #0x4c
	ldsh    r0, [r4, r0]
	mov     r7, r4
	mov     r6, #0x0
	strh    r0, [r1, #0x2]
	add     r5, #0x58
	add     r7, #0xc
.thumb
branch_222ff16: @ 222ff16 :thumb
	str     r7, [sp, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	add     r3, sp, #0x14
	bl      Function_222fafc
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x4c
	cmp     r6, #0x2
	blt     branch_222ff16
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1f
	bl      Function_2235780
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_200d810
	mov     r6, #0x0
	mov     r5, r4
	mov     r7, #0x1
.thumb
branch_222ff4a: @ 222ff4a :thumb
	ldr     r0, [r5, #0x58]
	mov     r1, r7
	bl      Function_200d810
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x4c
	cmp     r6, #0x2
	blt     branch_222ff4a
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x222ff7c, (=#0x222fc45)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x222ff68

.word 0xbfff @ 0x222ff68
.word 0xffff8000 @ 0x222ff6c
.word 0x71c @ 0x222ff70
.word 0xffff @ 0x222ff74
.word 0xfffff000 @ 0x222ff78
.word 0x222fc45 @ 0x222ff7c



.thumb
Function_222ff80: @ 222ff80 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r2, #0x60
	ldsh    r3, [r4, r2]
	mov     r2, #0x10
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	add     r2, r3, r2
	bl      Function_2007dec
	mov     r2, #0x62
	ldsh    r3, [r4, r2]
	mov     r2, #0x12
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x1
	add     r2, r3, r2
	bl      Function_2007dec
	mov     r1, #0x60
	ldsh    r2, [r4, r1]
	mov     r1, #0x10
	ldsh    r1, [r4, r1]
	ldr     r0, [r4, #0x58]
	add     r1, r2, r1
	mov     r2, #0x62
	ldsh    r3, [r4, r2]
	mov     r2, #0x12
	ldsh    r2, [r4, r2]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     r3, r3, r2
	mov     r2, #0x66
	ldsh    r2, [r4, r2]
	sub     r2, r3, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	mov     r0, r4
	add     r0, #0x34
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2225fa4
	mov     r0, #0x64
	ldsh    r0, [r4, r0]
	blx 0x20e17b6
	mov     r1, r0
	ldr     r0, [pc, #0x28] @ 0x2230014, (=#0x3dcccccd)
	blx 0x20e18b2
	mov     r1, r0
	ldr     r0, [sp, #0x4]
	blx 0x20e0b02
	mov     r1, r0
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x58]
	ldr     r2, [sp, #0x0]
	bl      Function_200d6e8
	mov     r0, #0x64
	ldsh    r1, [r4, r0]
	sub     r0, #0x65
	add     r4, #0x64
	mul     r0, r1
	strh    r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2230012

.align 2
.word 0x3dcccccd @ 0x2230014



.thumb
Function_2230018: @ 2230018 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2230030
	cmp     r0, #0x1
	beq     branch_223006a
	cmp     r0, #0x2
	beq     branch_22300a6
	b       branch_22300b8

branch_2230030: @ 2230030 :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2226138
	mov     r0, r4
	add     r0, #0x34
	bl      Function_2225f6c
	mov     r5, r0
	mov     r0, r4
	bl      Function_222ff80
	cmp     r5, #0x0
	bne     branch_22300b8
	mov     r2, #0xa
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x34
	mov     r1, #0xc
	mov     r3, #0xf
	bl      Function_2225ef0
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_22300b8

branch_223006a: @ 223006a :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2226138
	mov     r0, r4
	add     r0, #0x34
	bl      Function_2225f6c
	mov     r5, r0
	mov     r0, r4
	bl      Function_222ff80
	cmp     r5, #0x0
	bne     branch_22300b8
	mov     r2, #0x60
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	bl      Function_2007dec
	mov     r2, #0x62
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x1
	bl      Function_2007dec
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_22300b8

branch_22300a6: @ 22300a6 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r4,r5,pc}

branch_22300b8: @ 22300b8 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22300c2


.align 2, 0
.thumb
Function_22300c4: @ 22300c4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x68
	bl      Function_2018144
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [r4, #0x5c]
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x60
	strh    r0, [r1, #0x0]
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x1
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x62
	strh    r0, [r1, #0x0]
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x66
	strh    r0, [r1, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x10
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2226108
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x58]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x58]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      Function_200d460
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r1, #0xa
	str     r1, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x34
	mov     r2, #0xc
	mov     r3, r1
	bl      Function_2225ef0
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x64
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1c
	mov     r2, #0xf
	bl      Function_2235780
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2230190, (=#0x2230019)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2230190

.word 0x2230019 @ 0x2230190
.thumb
Function_2230194: @ 2230194 :thumb
	mov     r2, #0x12
	ldsh    r2, [r0, r2]
	mov     r3, #0x10
	ldsh    r0, [r0, r3]
	neg     r2, r2
	lsl     r2, r2, #16
	neg     r0, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	orr     r0, r2
	mov     r2, #0x3
	ldr     r3, [pc, #0x4] @ 0x22301b0, (=#Function_20c4b4c)
	lsl     r2, r2, #8
	bx      r3
@ 0x22301b0

.word Function_20c4b4c @ 0x22301b0



.thumb
Function_22301b4: @ 22301b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	bl      Function_22266c0
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_2230194
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_2225c14
	str     r0, [sp, #0x8]
	mov     r0, #0x14
	ldsh    r4, [r5, r0]
	mov     r0, #0x16
	ldsh    r0, [r5, r0]
	cmp     r4, r0
	bgt     branch_2230254
	ldr     r1, [sp, #0xc]
	lsl     r2, r4, #2
	add     r1, r1, r2
	str     r1, [sp, #0x0]
.thumb
branch_22301e8: @ 22301e8 :thumb
	ldr     r1, [sp, #0x0]
	sub     r0, r0, r4
	ldr     r2, [r1, #0x0]
	lsl     r1, r2, #16
	asr     r1, r1, #16
	str     r1, [sp, #0x4]
	lsr     r1, r2, #16
	lsl     r1, r1, #16
	asr     r7, r1, #16
	mov     r1, #0x1e
	ldsh    r1, [r5, r1]
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	sub     r0, r7, r0
	lsl     r0, r0, #16
	asr     r7, r0, #16
	mov     r0, #0x1c
	ldsh    r1, [r5, r0]
	mov     r0, #0x14
	ldsh    r0, [r5, r0]
	add     r0, #0x28
	sub     r0, r0, r4
	mul     r0, r1
	mov     r1, #0x64
	blx     Division
	ldr     r1, [sp, #0x4]
	sub     r0, r1, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	.hword  0x1e66 @ sub r6, r4, #0x1
	bpl     branch_2230230
	add     r6, #0xc0
.thumb
branch_2230230: @ 2230230 :thumb
	ldr     r0, [sp, #0x4]
	lsl     r1, r7, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	bl      Function_22266e8
	ldr     r1, [sp, #0xc]
	lsl     r2, r6, #2
	str     r0, [r1, r2]
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x16
	ldsh    r0, [r5, r0]
	cmp     r4, r0
	ble     branch_22301e8
.thumb
branch_2230254: @ 2230254 :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223025a


.align 2, 0


.thumb
Function_223025c: @ 223025c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x4
	bhi     branch_22302c4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r7, #0
	lsl     r2, r4, #1
	lsl     r2, r6, #2
	lsl     r2, r2, #3
	mov     r0, r4
	bl      Function_22301b4
	cmp     r0, #0x0
	bne     branch_22302c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1f
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x0
	bl      Function_22357ec
	mov     r1, #0x1f
	mov     r2, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x10
	add     r4, #0x40
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2226424
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22302b2


.incbin "./baserom/overlay/overlay_0012.bin", 0x10692, 0x22302c4 - 0x22302b2


.thumb
branch_22302c4: @ 22302c4 :thumb
	b       branch_22303cc
@ 0x22302c6


.incbin "./baserom/overlay/overlay_0012.bin", 0x106a6, 0x22303cc - 0x22302c6


.thumb
branch_22303cc: @ 22303cc :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22303d0

.thumb
Function_22303d0: @ 22303d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x68
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x68
	mov     r4, r0
	blx     Function_20d5124
	ldr     r1, [pc, #0x14c] @ 0x2230538, (=#0x223025d)
	str     r5, [r4, #0x0]
	mov     r0, r5
	mov     r2, r4
	bl      Function_22201e8
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x12]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, #0x12
	ldsh    r2, [r4, r1]
	sub     r0, r2, r0
	strh    r0, [r4, #0x12]
	mov     r0, #0x10
	ldsh    r0, [r4, r0]
	mov     r2, #0x1
	sub     r0, #0x28
	strh    r0, [r4, #0x10]
	ldsh    r0, [r4, r1]
	mov     r1, #0x6
	sub     r0, #0x28
	strh    r0, [r4, #0x12]
	ldr     r0, [r4, #0xc]
	bl      Function_2007dec
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	mov     r6, r0
	mov     r0, #0x12
	ldsh    r1, [r4, r0]
	sub     r1, #0x8
	strh    r1, [r4, #0x14]
	ldsh    r0, [r4, r0]
	add     r0, #0x58
	strh    r0, [r4, #0x16]
	mov     r0, #0x14
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_223046c
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
.thumb
branch_223046c: @ 223046c :thumb
	mov     r0, #0x16
	ldsh    r0, [r4, r0]
	cmp     r0, #0xc0
	ble     branch_2230478
	mov     r0, #0xc0
	strh    r0, [r4, #0x16]
.thumb
branch_2230478: @ 2230478 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22233ec
	mov     r7, r0
	ldr     r0, [sp, #0x14]
	bl      Function_201ced4
	str     r0, [sp, #0x18]
	ldrh    r0, [r4, #0x10]
	ldrh    r1, [r4, #0x12]
	bl      Function_22266e8
	str     r0, [sp, #0x1c]
	mov     r0, r5
	bl      Function_221fde4
	mov     r1, #0x50
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x18]
	str     r7, [sp, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [pc, #0x90] @ 0x223053c, (=#0x38e)
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x14
	mov     r1, #0x16
	ldsh    r0, [r4, r0]
	ldsh    r1, [r4, r1]
	lsl     r3, r6, #15
	lsl     r0, r0, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_222662c
	str     r0, [r4, #0x18]
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x1c
	mov     r2, #0x50
	mov     r3, r1
	bl      Function_2225bc8
	ldr     r0, [r4, #0x24]
	mov     r1, r0
	mul     r1, r6
	str     r1, [r4, #0x24]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2235254
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	bhi     branch_223052a
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222339c
	mov     r1, r0
	lsl     r0, r5, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	ldr     r0, [r4, #0x0]
	bl      Function_222339c
	mov     r1, r0
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	mov     r0, #0x0
	lsr     r1, r1, #24
	bl      Function_2019060
branch_223052a: @ 223052a :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r4
	bl      Function_223025c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2230536

.align 2
.word Function_223025c+1 @ =0x223025d, 0x2230538
.word 0x38e @ 0x223053c



.thumb
Function_2230540: @ 2230540 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_22305f0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r5, #0
	lsl     r6, r7, #0
	lsl     r2, r0, #2
	mov     r0, r4
	add     r0, #0x38
	bl      Function_2225dc8
	ldr     r2, [r4, #0x38]
	mov     r1, #0x1f
	sub     r1, r1, r2
	lsl     r1, r1, #8
	orr     r2, r1
	ldr     r1, [pc, #0x84] @ 0x22305fc, (=#0x4000052)
	cmp     r0, #0x0
	strh    r2, [r1, #0x0]
	bne     branch_22305f0
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	b       branch_22305f0
@ 0x2230588


.incbin "./baserom/overlay/overlay_0012.bin", 0x10968, 0x22305f0 - 0x2230588


.thumb
branch_22305f0: @ 22305f0 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22305fa

.align 2
.word 0x4000052 @ 0x22305fc



.thumb
Function_2230600: @ 2230600 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_223061c
	cmp     r0, #0x1
	beq     branch_22306a4
	cmp     r0, #0x2
	bne     branch_2230618
	b       branch_2230742

branch_2230618: @ 2230618 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}

branch_223061c: @ 223061c :thumb
	mov     r0, r5
	add     r0, #0x14
	bl      Function_2226138
	mov     r2, #0x38
	mov     r3, #0x3a
	mov     r0, r5
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	ldr     r1, [r5, #0x8]
	add     r0, #0x14
	bl      Function_2225a18
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_2230656
	mov     r3, #0x3a
	ldsh    r4, [r5, r3]
	ldr     r3, [r5, #0x3c]
	mov     r2, #0x38
	sub     r3, r4, r3
	mov     r0, r5
	lsl     r3, r3, #16
	ldsh    r2, [r5, r2]
	ldr     r1, [r5, #0xc]
	add     r0, #0x14
	asr     r3, r3, #16
	bl      Function_22259dc
branch_2230656: @ 2230656 :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_20087b4
	cmp     r0, #0x0
	bne     branch_2230750
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x10
	mov     r3, r2
	bl      Function_20086fc
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_223069a
	ldr     r0, [r5, #0xc]
	bl      Function_2225950
	mov     r1, #0x1
	mov     r4, r1
	lsl     r4, r0
	ldr     r0, [r5, #0x0]
	bl      Function_222332c
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r3, #0x0
	lsl     r2, r4, #16
	str     r3, [sp, #0x4]
	mov     r1, #0x4
	lsr     r2, r2, #16
	str     r3, [sp, #0x8]
	bl      Function_2003178
branch_223069a: @ 223069a :thumb
	ldr     r0, [r5, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	pop     {r4,r5,pc}

branch_22306a4: @ 22306a4 :thumb
	mov     r0, r5
	add     r0, #0x14
	bl      Function_2226138
	mov     r2, #0x38
	mov     r3, #0x3a
	mov     r0, r5
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	ldr     r1, [r5, #0x8]
	add     r0, #0x14
	bl      Function_2225a18
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_22306de
	mov     r3, #0x3a
	ldsh    r4, [r5, r3]
	ldr     r3, [r5, #0x3c]
	mov     r2, #0x38
	sub     r3, r4, r3
	mov     r0, r5
	lsl     r3, r3, #16
	ldsh    r2, [r5, r2]
	ldr     r1, [r5, #0xc]
	add     r0, #0x14
	asr     r3, r3, #16
	bl      Function_22259dc
branch_22306de: @ 22306de :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_20087b4
	cmp     r0, #0x0
	bne     branch_2230750
	mov     r2, #0x38
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      Function_2007dec
	mov     r2, #0x3a
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_2007dec
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_2230738
	ldr     r0, [r5, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_222337c
	cmp     r0, #0x0
	bne     branch_2230722
	ldr     r0, [r5, #0x8]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
branch_2230722: @ 2230722 :thumb
	mov     r2, #0x3a
	ldsh    r3, [r5, r2]
	ldr     r2, [r5, #0x3c]
	mov     r1, #0x38
	sub     r2, r3, r2
	lsl     r2, r2, #16
	ldsh    r1, [r5, r1]
	ldr     r0, [r5, #0xc]
	asr     r2, r2, #16
	bl      Function_200d4c4
branch_2230738: @ 2230738 :thumb
	ldr     r0, [r5, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	pop     {r4,r5,pc}

branch_2230742: @ 2230742 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r5
	bl      Function_20181c4
branch_2230750: @ 2230750 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2230754


.thumb
Function_2230754: @ 2230754 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x50
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x50
	blx     Function_20d5124
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_221fdd4
	str     r0, [r4, #0x4c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x10]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0xa
	add     r0, #0x14
	mov     r1, #0xe
	mov     r3, r2
	bl      Function_2225e68
	mov     r0, r4
	add     r0, #0x38
	mov     r1, #0x0
	mov     r2, #0x10
	mov     r3, #0x8
	bl      Function_2225d78
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0x1f
	bl      Function_2235780
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x4c]
	cmp     r0, #0x1
	ldr     r0, [r4, #0x10]
	bne     branch_22307d4
	ldr     r1, [pc, #0x2c] @ 0x22307f8, (=#0xbfb33333)
	ldr     r2, [pc, #0x2c] @ 0x22307fc, (=#0x3fb33333)
	bl      Function_200d6e8
	b       branch_22307dc
@ 0x22307d4

.thumb
branch_22307d4: @ 22307d4 :thumb
	ldr     r1, [pc, #0x24] @ 0x22307fc, (=#0x3fb33333)
	mov     r2, r1
	bl      Function_200d6e8
.thumb
branch_22307dc: @ 22307dc :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2230800, (=#0x2230541)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x22307f8

.word 0xbfb33333 @ 0x22307f8
.word 0x3fb33333 @ 0x22307fc
.word 0x2230541 @ 0x2230800
.thumb
Function_2230804: @ 2230804 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_221fde4
	mov     r1, #0x40
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x40
	blx     Function_20d5124
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x38]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x3a]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x29
	bl      Function_20080c0
	str     r0, [r4, #0x3c]
	mov     r1, #0x4
	mov     r0, r4
	str     r1, [sp, #0x0]
	add     r0, #0x14
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2226108
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	mov     r1, #0x14
	ldsh    r1, [r4, r1]
	mov     r2, #0x10
	add     r0, r1, r0
	mov     r1, #0x0
	strh    r0, [r4, #0x14]
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r3, r1
	bl      Function_20086fc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22202c0
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2235254
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2235254
	cmp     r5, #0x2
	bne     branch_22308b0
	cmp     r0, #0x4
	beq     branch_22308b8
.thumb
branch_22308b0: @ 22308b0 :thumb
	cmp     r5, #0x5
	bne     branch_22308fe
	cmp     r0, #0x3
	bne     branch_22308fe
.thumb
branch_22308b8: @ 22308b8 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2225950
	mov     r1, #0x1
	mov     r5, r1
	lsl     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222332c
	mov     r3, #0x0
	lsl     r2, r5, #16
	str     r3, [sp, #0x0]
	mov     r1, #0x10
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	lsr     r2, r2, #16
	str     r3, [sp, #0x8]
	bl      Function_2003178
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222337c
	cmp     r0, #0x0
	bne     branch_22308fe
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
branch_22308fe: @ 22308fe :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x223090c, (=#0x2230601)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223090c

.word 0x2230601 @ 0x223090c



.thumb
Function_2230910: @ 2230910 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	mov     r5, #0x0
	cmp     r0, #0x3
	bhi     branch_223098c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r3, #0
	lsl     r4, r0, #1
	lsl     r6, r3, #1
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_2226454
	cmp     r0, #0x1
	bne     branch_223098c
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x20
	str     r0, [r4, #0x44]
	b       branch_223098c
@ 0x223094a


.incbin "./baserom/overlay/overlay_0012.bin", 0x10d2a, 0x223098c - 0x223094a


.thumb
branch_223098c: @ 223098c :thumb
	mov     r0, r5
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2230992


.align 2, 0
.thumb
Function_2230994: @ 2230994 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22309aa
	cmp     r0, #0x1
	beq     branch_22309de
	cmp     r0, #0x2
	beq     branch_22309f0
	pop     {r4-r6,pc}

branch_22309aa: @ 22309aa :thumb
	mov     r0, r4
	bl      Function_2230910
	ldr     r0, [r4, #0x48]
	bl      Function_200d408
	cmp     r0, #0x1
	bne     branch_22309d6
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222337c
	cmp     r0, #0x0
	bne     branch_22309d6
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
branch_22309d6: @ 22309d6 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}

branch_22309de: @ 22309de :thumb
	mov     r0, r4
	bl      Function_2230910
	cmp     r0, #0x0
	beq     branch_2230a88
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}

branch_22309f0: @ 22309f0 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2223428
	mov     r1, r0
	lsl     r0, r5, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	ldr     r0, [r4, #0x0]
	bl      Function_222339c
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, #0x0
	lsr     r1, r1, #24
	bl      Function_2019060
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222337c
	cmp     r0, #0x0
	bne     branch_2230a3e
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
branch_2230a3e: @ 2230a3e :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_221fde4
	mov     r3, r0
	lsl     r0, r5, #24
	mov     r1, #0x1
	lsr     r0, r0, #24
	lsl     r1, r1, #14
	mov     r2, #0x0
	bl      Function_2019690
	ldr     r0, [r4, #0x0]
	bl      Function_2220278
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2019ebc
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_2230a88: @ 2230a88 :thumb
	pop     {r4-r6,pc}
@ 0x2230a8a


.align 2, 0
.thumb
Function_2230a8c: @ 2230a8c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r1, #0x4c
	mov     r7, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r7, [r4, #0x0]
	mov     r0, r7
	bl      Function_222332c
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0x10
	bl      Function_22357ec
	mov     r2, #0x8
	str     r2, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x1c
	mov     r1, #0x0
	mov     r3, #0x10
	bl      Function_2226424
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [r4, #0x10]
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	ldr     r0, [r4, #0x10]
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r5, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	sub     r0, #0x28
	lsl     r0, r0, #16
	asr     r5, r0, #16
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x48]
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2235254
	cmp     r0, #0x5
	beq     branch_2230b1c
	cmp     r0, #0x2
	bne     branch_2230b2e
.thumb
branch_2230b1c: @ 2230b1c :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x1
	bl      Function_200d3f4
	ldr     r0, [r4, #0x48]
	mov     r1, #0x2
	bl      Function_200d460
	b       branch_2230b6a
@ 0x2230b2e

.thumb
branch_2230b2e: @ 2230b2e :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x0]
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	ldr     r0, [r4, #0x0]
	bl      Function_222339c
	mov     r1, r0
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	mov     r0, #0x0
	lsr     r1, r1, #24
	bl      Function_2019060
	ldr     r0, [r4, #0x48]
	mov     r1, #0x0
	bl      Function_200d3f4
.thumb
branch_2230b6a: @ 2230b6a :thumb
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_22233ec
	neg     r1, r5
	lsl     r1, r1, #16
	sub     r6, #0x28
	str     r0, [sp, #0x18]
	lsl     r0, r6, #16
	asr     r0, r0, #16
	neg     r0, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	bl      Function_22266e8
	mov     r6, r0
	mov     r0, r7
	bl      Function_221fde4
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x5
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	str     r6, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r0, r5, #24
	add     r5, #0x50
	lsl     r1, r5, #24
	ldr     r2, [pc, #0x2c] @ 0x2230bd8, (=#0x38e)
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	lsl     r3, r3, #12
	bl      Function_222662c
	mov     r2, #0x1
	str     r0, [r4, #0x14]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x18]
	lsl     r2, r2, #8
	mov     r3, #0x8
	bl      Function_2003a2c
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2230bdc, (=#0x2230995)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2230bd6

.align 2
.word 0x38e @ 0x2230bd8
.word 0x2230995 @ 0x2230bdc



.thumb
Function_2230be0: @ 2230be0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x3
	bhi     branch_2230ce2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r2, #1
	lsl     r4, r2, #2
	lsl     r6, r1, #3
	mov     r0, r4
	add     r0, #0x14
	bl      Function_2225eb8
	cmp     r0, #0x1
	bne     branch_2230c34
	mov     r0, r4
	add     r0, #0x14
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_2225fa4
	ldr     r0, [r4, #0x54]
	blx 0x20e17b4
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	blx 0x20e18b0
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	ldr     r2, [sp, #0x4]
	bl      Function_200d6e8
	b       branch_2230ce2

branch_2230c34: @ 2230c34 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0xa
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x5
	str     r0, [r4, #0x4c]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x14
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2225e68
	b       branch_2230ce2
@ 0x2230c52


.incbin "./baserom/overlay/overlay_0012.bin", 0x11032, 0x2230ce2 - 0x2230c52


.thumb
branch_2230ce2: @ 2230ce2 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2230cec


.thumb
Function_2230cec: @ 2230cec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r1, #0x58
	mov     r5, r0
	mov     r7, r2
	str     r3, [sp, #0x4]
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	str     r7, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_22234a8
	cmp     r0, #0x1
	bne     branch_2230d2c
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x54]
	neg     r6, r7
	b       branch_2230d32
@ 0x2230d2c

.thumb
branch_2230d2c: @ 2230d2c :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x54]
	mov     r6, r7
.thumb
branch_2230d32: @ 2230d32 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_22258e0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_22258e0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x2
	str     r0, [r4, #0x10]
	bl      Function_200d6a4
	mov     r1, #0xfe
	lsl     r1, r1, #22
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	bl      Function_200d6e8
	ldr     r0, [r4, #0x10]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	bl      Function_200d4c4
	mov     r1, #0x28
	mul     r1, r7
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x10]
	asr     r1, r1, #16
	mov     r2, #0x0
	bl      Function_200d5dc
	ldr     r0, [r4, #0x10]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d460
	mov     r1, #0xb
	mvn     r1, r1
	mul     r1, r6
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x10]
	asr     r1, r1, #16
	mov     r2, #0xc
	bl      Function_200d7e0
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	bl      Function_223525c
	cmp     r0, #0x4
	ldr     r0, [r4, #0x10]
	bne     branch_2230dc4
	mov     r1, #0x1
	bl      Function_200d364
	b       branch_2230dca
@ 0x2230dc4

.thumb
branch_2230dc4: @ 2230dc4 :thumb
	mov     r1, #0x0
	bl      Function_200d364
.thumb
branch_2230dca: @ 2230dca :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0xa
	add     r0, #0x14
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2225e68
	cmp     r6, #0x0
	blt     branch_2230df2
	mov     r0, r4
	ldr     r1, [pc, #0x30] @ 0x2230e14, (=#0xff48)
	ldr     r2, [pc, #0x30] @ 0x2230e18, (=#0xe38d)
	add     r0, #0x38
	mov     r3, #0x4
	bl      Function_2225d50
	ldr     r0, [pc, #0x24] @ 0x2230e14, (=#0xff48)
	b       branch_2230e02
@ 0x2230df2

.thumb
branch_2230df2: @ 2230df2 :thumb
	mov     r0, r4
	ldr     r2, [pc, #0x24] @ 0x2230e1c, (=#0x1c71)
	add     r0, #0x38
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2225d50
	mov     r0, #0x0
branch_2230e02: @ 2230e02 :thumb
	str     r0, [r4, #0x50]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x18] @ 0x2230e20, (=#0x2230be1)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2230e12

.align 2
.word 0xff48 @ 0x2230e14
.word 0xe38d @ 0x2230e18
.word 0x1c71 @ 0x2230e1c
.word 0x2230be1 @ 0x2230e20



.thumb
Function_2230e24: @ 2230e24 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	str     r1, [r5, #0x0]
	mov     r6, r3
	mov     r3, #0x8
	mov     r1, #0xa
	mov     r4, r2
	add     r0, r5, #0x4
	mov     r2, r1
	str     r3, [sp, #0x0]
	bl      Function_2225e68
	mov     r0, #0x3
	str     r0, [r5, #0x2c]
	mov     r0, #0x8
	str     r0, [r5, #0x30]
	mov     r0, #0xa
	str     r0, [r5, #0x34]
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x0]
	mov     r2, r6
	bl      Function_200d4c4
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_200d4c4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_2230e8c
	mov     r2, #0xfe
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2230e98, (=#0xbf800000)
	lsl     r2, r2, #22
	bl      Function_200d6e8
.thumb
branch_2230e8c: @ 2230e8c :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      Function_200d3f4
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2230e98

.word 0xbf800000 @ 0x2230e98



.incbin "./baserom/overlay/overlay_0012.bin", 0x1127c, 0x2230ea8 - 0x2230e9c



.thumb
Function_2230ea8: @ 2230ea8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_200d3f4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_200d390
	pop     {r4,pc}
@ 0x2230ebe


.incbin "./baserom/overlay/overlay_0012.bin", 0x1129e, 0x2230f3c - 0x2230ebe


.thumb
Function_2230f3c: @ 2230f3c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x3
	bhi     branch_2231008
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r7, #0
	lsl     r6, r2, #1
	lsl     r6, r6, #1
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x4
	blt     branch_2230f86
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	mov     r2, r4
	mov     r0, #0x38
	add     r2, #0x44
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_2230ea8
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	cmp     r0, #0x4
	blt     branch_2230f86
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
branch_2230f86: @ 2230f86 :thumb
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
	b       branch_2231008
@ 0x2230f8e


.incbin "./baserom/overlay/overlay_0012.bin", 0x1136e, 0x2231008 - 0x2230f8e


.thumb
branch_2231008: @ 2231008 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	pop     {r3-r7,pc}
@ 0x2231010


.thumb
Function_2231010: @ 2231010 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	str     r1, [sp, #0x4]
	mov     r1, #0x4a
	lsl     r1, r1, #2
	mov     r4, r0
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	bl      Function_2235e50
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	str     r4, [r7, #0x0]
	str     r0, [r7, #0x4]
	ldr     r0, [sp, #0x8]
	str     r0, [r7, #0x8]
	mov     r0, r4
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r7, #0x0]
	bl      Function_22232fc
	str     r0, [r7, #0x18]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r7, #0x1c]
	ldr     r0, [r7, #0x18]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r7, #0x1e]
	mov     r0, r7
	mov     r3, #0x1
	add     r0, #0x20
	mov     r1, #0x4
	mov     r2, #0x0
	str     r3, [sp, #0x0]
	bl      Function_2226108
	mov     r0, #0x1e
	ldsh    r4, [r7, r0]
	ldr     r1, [r7, #0x0]
	add     r0, sp, #0x14
	add     r4, #0x10
	mov     r5, #0x0
	bl      Function_222329c
	mov     r0, r5
	mov     r6, r7
	str     r0, [sp, #0x10]
	add     r6, #0x44
.thumb
branch_223107a: @ 223107a :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2231094
	str     r5, [sp, #0x0]
	mov     r2, #0x1c
	lsl     r3, r4, #16
	ldsh    r2, [r7, r2]
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	asr     r3, r3, #16
	bl      Function_2230e24
	b       branch_22310b0
@ 0x2231094

.thumb
branch_2231094: @ 2231094 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	add     r2, sp, #0x14
	bl      Function_200ce6c
	lsl     r3, r4, #16
	mov     r1, r0
	str     r5, [sp, #0x0]
	mov     r2, #0x1c
	ldsh    r2, [r7, r2]
	mov     r0, r6
	asr     r3, r3, #16
	bl      Function_2230e24
.thumb
branch_22310b0: @ 22310b0 :thumb
	mov     r0, #0x1
	eor     r5, r0
	ldr     r0, [sp, #0x10]
	sub     r4, #0xa
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x38
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	blt     branch_223107a
	ldr     r0, [r7, #0x0]
	ldr     r1, [pc, #0x8] @ 0x22310d0, (=#0x2230f3d)
	mov     r2, r7
	bl      Function_22201e8
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x22310d0

.word 0x2230f3d @ 0x22310d0



.thumb
Function_22310d4: @ 22310d4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x6
	bls     branch_22310e4
	b       branch_2231296
@ 0x22310e4

.thumb
branch_22310e4: @ 22310e4 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r6, r1, #1
	lsl     r6, r5, #2
	lsl     r6, r5, #3
	lsl     r6, r1, #4
	lsl     r4, r1, #5
	lsl     r4, r1, #6
	mov     r0, r4
	add     r0, #0x18
	bl      Function_2225c14
	cmp     r0, #0x0
	beq     branch_2231120
	mov     r2, #0x14
	mov     r3, #0x16
	mov     r0, r4
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r1, [r4, #0x10]
	add     r0, #0x18
	bl      Function_2225a18
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2231120

.thumb
branch_2231120: @ 2231120 :thumb
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r1, #0x18
	mov     r0, r4
	ldsh    r1, [r4, r1]
	add     r0, #0x18
	mov     r3, r2
	bl      Function_2225bc8
	ldr     r0, [r4, #0xc]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x2231140


.incbin "./baserom/overlay/overlay_0012.bin", 0x11520, 0x2231296 - 0x2231140


.thumb
branch_2231296: @ 2231296 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22312a0


.incbin "./baserom/overlay/overlay_0012.bin", 0x11680, 0x22312a4 - 0x22312a0


.thumb
Function_22312a4: @ 22312a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r1, #0x94
	mov     r5, r0
	str     r2, [sp, #0x10]
	mov     r6, r3
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	ldr     r0, [sp, #0x10]
	str     r7, [r4, #0x4]
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	str     r0, [r4, #0x3c]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x14]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x16]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r2, [r4, #0x3c]
	mov     r0, r4
	lsl     r2, r2, #4
	neg     r2, r2
	lsl     r2, r2, #16
	add     r0, #0x18
	asr     r2, r2, #16
	mov     r3, r1
	bl      Function_2225bc8
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [r4, #0x40]
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x44
	strh    r0, [r1, #0x0]
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x46
	strh    r0, [r1, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	str     r6, [r4, #0x48]
	bl      Function_200d390
	ldr     r0, [r4, #0x48]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x48]
	mov     r1, #0x1
	bl      Function_200d460
	mov     r0, #0x16
	ldsh    r0, [r4, r0]
	mov     r1, r4
	mov     r2, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x46
	ldsh    r0, [r4, r0]
	mov     r3, #0x44
	add     r1, #0x70
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	lsl     r0, r0, #16
	str     r0, [sp, #0xc]
	mov     r0, r4
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	add     r0, #0x4c
	bl      Function_2225c98
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x223138c, (=#0x22310d5)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223138a

.align 2
.word 0x22310d5 @ 0x223138c



.thumb
Function_2231390: @ 2231390 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_223143a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r6, #0
	lsl     r6, r2, #1
	lsl     r4, r7, #1
	mov     r2, #0x1a
	ldsh    r3, [r4, r2]
	mov     r2, #0x68
	ldsh    r2, [r4, r2]
	mov     r1, #0x18
	ldsh    r1, [r4, r1]
	sub     r2, r3, r2
	mov     r0, r4
	lsl     r2, r2, #16
	ldr     r3, [r4, #0x14]
	add     r0, #0x1c
	asr     r2, r2, #16
	bl      Function_2225b78
	cmp     r0, #0x0
	bne     branch_223143a
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x10
	str     r0, [r4, #0xc]
	b       branch_223143a
@ 0x22313de


.incbin "./baserom/overlay/overlay_0012.bin", 0x117be, 0x223143a - 0x22313de


.thumb
branch_223143a: @ 223143a :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2231444


.thumb
Function_2231444: @ 2231444 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r1, #0x6c
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	mov     r6, r0
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x18]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x1a]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, r4
	add     r1, #0x68
	strh    r0, [r1, #0x0]
	mov     r0, #0x1a
	ldsh    r0, [r4, r0]
	mov     r1, #0x0
	add     r0, #0x8
	strh    r0, [r4, #0x1a]
	ldr     r0, [r4, #0x0]
	bl      Function_22202c0
	str     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
	mov     r0, r4
	add     r0, #0x1c
	mov     r1, #0x2
	mov     r2, #0x10
	bl      Function_22263a4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2235780
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x40
	mov     r3, r2
	bl      Function_2226424
	ldr     r0, [r4, #0x28]
	mov     r2, r4
	mov     r1, r0
	mul     r1, r6
	str     r1, [r4, #0x28]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2231504, (=#0x2231391)
	bl      Function_22201e8
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2231504

.word 0x2231391 @ 0x2231504



.thumb
Function_2231508: @ 2231508 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x38]
	mov     r4, #0x0
	cmp     r0, #0x0
	beq     branch_223151e
	cmp     r0, #0x1
	beq     branch_2231552
	cmp     r0, #0x2
	beq     branch_223157e
	b       branch_2231580

branch_223151e: @ 223151e :thumb
	mov     r0, r5
	add     r0, #0x14
	bl      Function_2225eb8
	cmp     r0, #0x0
	beq     branch_2231538
	mov     r2, #0x16
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, #0x10]
	mov     r1, #0xd
	bl      Function_2007dec
	b       branch_2231580

branch_2231538: @ 2231538 :thumb
	ldr     r0, [r5, #0x38]
	mov     r2, #0xa
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x38]
	mov     r0, #0xc
	add     r5, #0x14
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xf
	mov     r3, r2
	bl      Function_2225e68
	b       branch_2231580

branch_2231552: @ 2231552 :thumb
	mov     r0, r5
	add     r0, #0x14
	bl      Function_2225eb8
	cmp     r0, #0x0
	ldr     r0, [r5, #0x10]
	beq     branch_223156c
	mov     r2, #0x16
	ldsh    r2, [r5, r2]
	mov     r1, #0xd
	bl      Function_2007dec
	b       branch_2231580

branch_223156c: @ 223156c :thumb
	mov     r1, #0xd
	mov     r2, r1
	add     r2, #0xf3
	bl      Function_2007dec
	ldr     r0, [r5, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x38]
	b       branch_2231580

branch_223157e: @ 223157e :thumb
	mov     r4, #0x1
branch_2231580: @ 2231580 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2231584


.thumb
Function_2231584: @ 2231584 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x40]
	mov     r4, #0x0
	cmp     r0, #0x0
	beq     branch_223159c
	cmp     r0, #0x1
	beq     branch_22315e2
	cmp     r0, #0x2
	beq     branch_22315fe
	b       branch_2231600

branch_223159c: @ 223159c :thumb
	mov     r0, r5
	ldr     r1, [r5, #0x3c]
	add     r0, #0x44
	bl      Function_22260a8
	mov     r0, r5
	add     r0, #0x68
	bl      Function_2225c14
	cmp     r0, #0x0
	beq     branch_22315c6
	mov     r2, #0xb4
	mov     r3, #0xb6
	mov     r0, r5
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	ldr     r1, [r5, #0x3c]
	add     r0, #0x68
	bl      Function_22259dc
	b       branch_2231600

branch_22315c6: @ 22315c6 :thumb
	ldr     r0, [r5, #0x40]
	mov     r1, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x40]
	str     r1, [sp, #0x0]
	mov     r0, #0x8
	add     r5, #0x8c
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0xe
	bl      Function_2226424
	b       branch_2231600

branch_22315e2: @ 22315e2 :thumb
	mov     r0, r5
	add     r0, #0x8c
	bl      Function_2226454
	cmp     r0, #0x0
	beq     branch_2231600
	ldr     r0, [r5, #0x3c]
	mov     r1, r4
	bl      Function_200d3f4
	ldr     r0, [r5, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x40]
	b       branch_2231600

branch_22315fe: @ 22315fe :thumb
	mov     r4, #0x1
branch_2231600: @ 2231600 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2231606


.align 2, 0
.thumb
Function_2231608: @ 2231608 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_223161a
	cmp     r0, #0x1
	beq     branch_2231632
	b       branch_2231648

branch_223161a: @ 223161a :thumb
	mov     r0, r4
	bl      Function_2231508
	mov     r0, r4
	bl      Function_2231584
	cmp     r0, #0x0
	beq     branch_2231648
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2231648

branch_2231632: @ 2231632 :thumb
	ldr     r0, [r4, #0x3c]
	bl      Function_200d0f4
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}

branch_2231648: @ 2231648 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x2231650


.thumb
Function_2231650: @ 2231650 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r1, #0xb8
	mov     r6, r0
	mov     r7, r2
	str     r3, [sp, #0x8]
	bl      Function_2235e50
	mov     r4, r0
	str     r6, [r4, #0x0]
	str     r5, [r4, #0x4]
	str     r7, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2225964
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222598c
	mov     r5, r0
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [r4, #0x10]
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r7, r0, #16
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0xa
	add     r0, #0x14
	mov     r2, r1
	mov     r3, #0xf
	bl      Function_2225e68
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	str     r0, [r4, #0x3c]
	bl      Function_200d390
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [sp, #0xc]
	lsl     r0, r0, #5
	add     r1, r7, r0
	mov     r0, r4
	add     r0, #0xb4
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb6
	strh    r6, [r0, #0x0]
	cmp     r5, #0x0
	bge     branch_2231706
	mov     r1, #0x7
	b       branch_2231708
@ 0x2231706

.thumb
branch_2231706: @ 2231706 :thumb
	mov     r1, #0x17
.thumb
branch_2231708: @ 2231708 :thumb
	mvn     r1, r1
	mov     r0, r1
	mul     r0, r5
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x68
	mov     r2, r1
	mov     r3, r1
	bl      Function_2225bc8
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x44
	mov     r1, #0x5
	mov     r2, #0xa
	mov     r3, #0xc
	bl      Function_2225e68
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x2231758, (=#0x4000050)
	mov     r1, #0x0
	mov     r2, #0x3f
	mov     r3, #0x1f
	blx     Function_20bf55c
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x10] @ 0x223175c, (=#0x2231609)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2231756

.align 2
.word 0x4000050 @ 0x2231758
.word 0x2231609 @ 0x223175c



.thumb
Function_2231760: @ 2231760 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	ldr     r1, [r0, #0x68]
	cmp     r1, #0x5
	bhi     branch_2231814
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r0, r4, #0
	lsl     r2, r7, #0
	lsl     r4, r2, #1
	lsl     r6, r5, #1
	lsl     r4, r0, #2
	mov     r2, #0x28
	str     r2, [sp, #0x0]
	mov     r1, #0x8
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	add     r0, #0x18
	mov     r3, r1
	bl      Function_2225bc8
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2231798


.incbin "./baserom/overlay/overlay_0012.bin", 0x11b78, 0x2231814 - 0x2231798


.thumb
branch_2231814: @ 2231814 :thumb
	bl      Function_2022974
	add     sp, #0x8
	pop     {r3,pc}
@ 0x223181c

.thumb
Function_223181c: @ 223181c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x4
	bls     branch_223182c
	b       branch_2231940
@ 0x223182c

.thumb
branch_223182c: @ 223182c :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r4, r4, #0
	lsl     r6, r4, #2
	lsl     r4, r3, #3
	lsl     r6, r5, #3
	ldr     r0, [r4, #0x6c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x6c]
	cmp     r0, #0x4
	ble     branch_2231940
	mov     r0, r4
	bl      Function_2231760
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	b       branch_2231940
@ 0x223185e


.incbin "./baserom/overlay/overlay_0012.bin", 0x11c3e, 0x2231940 - 0x223185e


.thumb
branch_2231940: @ 2231940 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223194a


.incbin "./baserom/overlay/overlay_0012.bin", 0x11d2a, 0x2231950 - 0x223194a


.thumb
Function_2231950: @ 2231950 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x70
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r6, r3
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x4]
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	str     r6, [r4, #0x14]
	mov     r0, r6
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200d460
	mov     r1, r4
	mov     r2, r4
	ldr     r0, [r4, #0x14]
	add     r1, #0x64
	add     r2, #0x66
	bl      Function_200d550
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x22319a8, (=#0x223181d)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x22319a6

.align 2
.word 0x223181d @ 0x22319a8


.thumb
Function_22319ac: @ 22319ac :thumb
	push    {r3,lr}
	add     sp, #-0x8
	ldr     r1, [r0, #0x50]
	cmp     r1, #0x3
	bhi     branch_2231a2e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r4, r3, #0
	lsl     r6, r6, #0
	lsl     r0, r2, #1
	mov     r2, #0x50
	str     r2, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	add     r0, #0x28
	mov     r3, r1
	bl      Function_2225bc8
	add     sp, #0x8
	pop     {r3,pc}
@ 0x22319e0


.incbin "./baserom/overlay/overlay_0012.bin", 0x11dc0, 0x2231a2e - 0x22319e0


.thumb
branch_2231a2e: @ 2231a2e :thumb
	bl      Function_2022974
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2231a36


.align 2, 0


.thumb
Function_2231a38: @ 2231a38 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x6
	bhi     branch_2231b42
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r0, r5, #0
	lsl     r4, r2, #2
	lsl     r0, r6, #3
	lsl     r2, r2, #5
	lsl     r2, r6, #5
	lsl     r0, r4, #6
	ldr     r0, [r4, #0x54]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x54]
	cmp     r0, #0x1
	ble     branch_2231b42
	mov     r0, r4
	bl      Function_22319ac
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x54]
	b       branch_2231c0c
@ 0x2231a7c


.incbin "./baserom/overlay/overlay_0012.bin", 0x11e5c, 0x2231b42 - 0x2231a7c


.thumb
branch_2231b42: @ 2231b42 :thumb
	b       branch_2231c0c
@ 0x2231b44


.incbin "./baserom/overlay/overlay_0012.bin", 0x11f24, 0x2231c0c - 0x2231b44


.thumb
branch_2231c0c: @ 2231c0c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2231c16


.incbin "./baserom/overlay/overlay_0012.bin", 0x11ff6, 0x2231c1c - 0x2231c16


.thumb
Function_2231c1c: @ 2231c1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r1, #0x5c
	mov     r4, r0
	str     r2, [sp, #0x4]
	mov     r7, r3
	bl      Function_2235e50
	mov     r6, r0
	str     r4, [r6, #0x0]
	ldr     r0, [sp, #0x4]
	str     r5, [r6, #0x4]
	str     r0, [r6, #0x8]
	mov     r0, r4
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22232fc
	str     r0, [r6, #0x10]
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2231c4c: @ 2231c4c :thumb
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_22232fc
	str     r0, [r5, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2231c4c
	str     r7, [r6, #0x24]
	mov     r0, r7
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r6, #0x24]
	mov     r1, #0x1
	bl      Function_200d460
	mov     r1, r6
	mov     r2, r6
	ldr     r0, [r6, #0x24]
	add     r1, #0x4c
	add     r2, #0x4e
	bl      Function_200d550
	mov     r1, #0x4c
	ldsh    r2, [r6, r1]
	mov     r0, r6
	add     r0, #0x4c
	sub     r2, #0x28
	strh    r2, [r0, #0x0]
	mov     r2, #0x4e
	ldsh    r3, [r6, r2]
	mov     r0, r6
	add     r0, #0x4e
	sub     r3, #0x28
	strh    r3, [r0, #0x0]
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [r6, #0x24]
	bl      Function_200d4c4
	ldr     r0, [r6, #0x24]
	mov     r1, #0x1
	bl      Function_200d810
	mov     r0, #0xf
	mvn     r0, r0
	str     r0, [r6, #0x54]
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x2231ccc, (=#0x4000050)
	mov     r1, #0x0
	mov     r2, #0x3f
	mov     r3, #0x1f
	blx     Function_20bf55c
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2231cd0, (=#0x2231a39)
	mov     r2, r6
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2231ccc

.word 0x4000050 @ 0x2231ccc
.word 0x2231a39 @ 0x2231cd0



.thumb
Function_2231cd4: @ 2231cd4 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x3c] @ 0x2231d14, (=#0xaaa)
	mov     r4, r0
	mov     r5, r1
	add     r0, #0x10
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_2225d78
	cmp     r5, #0x0
	beq     branch_2231d00
	mov     r0, #0x0
	ldr     r1, [r4, #0x18]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x8]
	mov     r1, #0xa
	mov     r2, #0x10
	bl      Function_2007dec
	b       branch_2231d0c
@ 0x2231d00

.thumb
branch_2231d00: @ 2231d00 :thumb
	mov     r1, #0xa
	mov     r2, r1
	ldr     r0, [r4, #0x8]
	sub     r2, #0x1a
	bl      Function_2007dec
.thumb
branch_2231d0c: @ 2231d0c :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4c]
	str     r0, [r4, #0x50]
	pop     {r3-r5,pc}
@ 0x2231d14

.word 0xaaa @ 0x2231d14



.thumb
Function_2231d18: @ 2231d18 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x4c]
	mov     r5, #0x0
	cmp     r0, #0x3
	bhi     branch_2231e22
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r0, #1
	lsl     r2, r4, #2
	lsl     r4, r5, #3
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2225dc8
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0x10]
	mov     r1, #0x9
	bl      Function_2007dec
	ldr     r0, [r4, #0x50]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x50]
	bpl     branch_2231e22
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	mov     r0, #0xe
	ldsh    r3, [r4, r0]
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	add     r0, r3, #0x2
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	add     r4, #0x24
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r1
	bl      Function_2225bc8
	b       branch_2231e22
@ 0x2231d7a


.incbin "./baserom/overlay/overlay_0012.bin", 0x1215a, 0x2231e22 - 0x2231d7a


.thumb
branch_2231e22: @ 2231e22 :thumb
	mov     r0, r5
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2231e28


.thumb
Function_2231e28: @ 2231e28 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2231e3a
	cmp     r0, #0x1
	beq     branch_2231e6c
	pop     {r4,pc}

branch_2231e3a: @ 2231e3a :thumb
	mov     r0, r4
	bl      Function_2231d18
	cmp     r0, #0x0
	beq     branch_2231e7a
	ldr     r0, [r4, #0x48]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x48]
	cmp     r0, #0x4
	bge     branch_2231e64
	ldr     r1, [r4, #0x54]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r4
	str     r1, [r4, #0x54]
	bl      Function_2231cd4
	mov     r0, r4
	bl      Function_2231d18
	pop     {r4,pc}

branch_2231e64: @ 2231e64 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}

branch_2231e6c: @ 2231e6c :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
branch_2231e7a: @ 2231e7a :thumb
	pop     {r4,pc}
@ 0x2231e7c


.thumb
Function_2231e7c: @ 2231e7c :thumb
	push    {r4-r6,lr}
	mov     r1, #0x58
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x4]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2225964
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220280
	cmp     r0, #0x0
	bne     branch_2231ec8
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_20080c0
	b       branch_2231ee8
@ 0x2231ec8

.thumb
branch_2231ec8: @ 2231ec8 :thumb
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_20080c0
.thumb
branch_2231ee8: @ 2231ee8 :thumb
	strh    r0, [r4, #0xe]
	ldr     r0, [r4, #0x8]
	mov     r1, #0xb
	mov     r2, #0x32
	bl      Function_2007dec
	cmp     r6, #0x1
	bne     branch_2231efc
	mov     r0, #0x0
	b       branch_2231efe
@ 0x2231efc

.thumb
branch_2231efc: @ 2231efc :thumb
	mov     r0, #0x1
.thumb
branch_2231efe: @ 2231efe :thumb
	str     r0, [r4, #0x54]
	ldr     r1, [r4, #0x54]
	mov     r0, r4
	bl      Function_2231cd4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2231f14, (=#0x2231e29)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x2231f14

.word 0x2231e29 @ 0x2231f14



.thumb
Function_2231f18: @ 2231f18 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x38]
	mov     r5, #0x0
	cmp     r0, #0x3
	bhi     branch_2231fd4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r6, #0
	lsl     r0, r3, #1
	lsl     r0, r1, #2
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	add     r0, #0x10
	bl      Function_22260c8
	cmp     r0, #0x0
	beq     branch_2231f60
	mov     r0, r5
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x3c]
	ldr     r2, [r4, #0x40]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r4, #0xc]
	ldr     r3, [r4, #0x24]
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2226024
	b       branch_2231fd4
@ 0x2231f60

.thumb
branch_2231f60: @ 2231f60 :thumb
	ldr     r0, [r4, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x38]
	b       branch_2231fd4
@ 0x2231f68


.incbin "./baserom/overlay/overlay_0012.bin", 0x12348, 0x2231fd4 - 0x2231f68


.thumb
branch_2231fd4: @ 2231fd4 :thumb
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x2231fd8

.thumb
Function_2231fd8: @ 2231fd8 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2231fee
	cmp     r0, #0x1
	beq     branch_2232004
	cmp     r0, #0x2
	beq     branch_2232014
	pop     {r4,pc}
@ 0x2231fee

.thumb
branch_2231fee: @ 2231fee :thumb
	mov     r0, r4
	bl      Function_2231f18
	cmp     r0, #0x0
	beq     branch_2232022
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x10
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x2232004

.thumb
branch_2232004: @ 2232004 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
	bpl     branch_2232022
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2232014

.thumb
branch_2232014: @ 2232014 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
.thumb
branch_2232022: @ 2232022 :thumb
	pop     {r4,pc}
@ 0x2232024


.thumb
Function_2232024: @ 2232024 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x44
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0xa
	add     r0, #0x10
	mov     r2, r1
	mov     r3, #0xf
	bl      Function_2225e68
	mov     r0, #0x4
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2223354
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	str     r0, [r4, #0x3c]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2232080, (=#0x2231fd9)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x223207e

.align 2
.word 0x2231fd9 @ 0x2232080



.thumb
Function_2232084: @ 2232084 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x74]
	mov     r1, #0x64
	blx 0x20e1f6e
	mov     r4, r0
	ldr     r0, [r5, #0x78]
	mov     r1, #0x64
	blx 0x20e1f6c
	mov     r6, r0
	ldr     r0, [r5, #0x70]
	mov     r1, #0x64
	blx 0x20e1f6e
	str     r0, [sp, #0x0]
	mov     r0, r5
	lsl     r1, r4, #16
	lsl     r3, r6, #16
	add     r0, #0x18
	asr     r1, r1, #16
	mov     r2, #0xa
	asr     r3, r3, #16
	bl      Function_2225e68
	ldr     r0, [r5, #0x0]
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2235780
	ldr     r0, [r5, #0x70]
	mov     r1, #0x64
	blx 0x20e1f6c
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #1
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x3c
	mov     r1, #0x10
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_2226424
	mov     r0, #0x0
	str     r0, [r5, #0x64]
	str     r0, [r5, #0x68]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22320ec

.thumb
Function_22320ec: @ 22320ec :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x64]
	mov     r5, #0x0
	cmp     r0, #0x3
	bhi     branch_22321c0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r1, #1
	lsl     r2, r4, #2
	lsl     r0, r7, #2
	mov     r0, r4
	ldr     r1, [r4, #0x14]
	add     r0, #0x18
	bl      Function_22260a8
	cmp     r0, #0x0
	bne     branch_22321c0
	ldr     r0, [r4, #0x78]
	mov     r1, #0x64
	blx 0x20e1f6e
	mov     r6, r0
	ldr     r0, [r4, #0x74]
	mov     r1, #0x64
	blx 0x20e1f6c
	mov     r7, r0
	ldr     r0, [r4, #0x70]
	mov     r1, #0x64
	blx 0x20e1f6e
	str     r0, [sp, #0x0]
	mov     r0, r4
	lsl     r1, r6, #16
	lsl     r3, r7, #16
	add     r0, #0x18
	asr     r1, r1, #16
	mov     r2, #0xa
	asr     r3, r3, #16
	bl      Function_2225e68
	ldr     r0, [r4, #0x64]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x64]
	b       branch_22321c0
@ 0x2232152


.incbin "./baserom/overlay/overlay_0012.bin", 0x12532, 0x22321c0 - 0x2232152


.thumb
branch_22321c0: @ 22321c0 :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22321c4

.thumb
Function_22321c4: @ 22321c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x7c]
	mov     r4, #0x0
	cmp     r1, #0x0
	beq     branch_22321da
	cmp     r1, #0x1
	beq     branch_22321ec
	cmp     r1, #0x2
	beq     branch_2232236
	b       branch_2232238
@ 0x22321da

.thumb
branch_22321da: @ 22321da :thumb
	bl      Function_2232084
	mov     r0, r5
	bl      Function_22320ec
	ldr     r0, [r5, #0x7c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x7c]
	b       branch_2232238
@ 0x22321ec

.thumb
branch_22321ec: @ 22321ec :thumb
	bl      Function_22320ec
	cmp     r0, #0x0
	beq     branch_2232238
	ldr     r0, [r5, #0x6c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x6c]
	bmi     branch_223222c
	ldr     r0, [r5, #0x70]
	mov     r1, #0x3
	blx 0x20e1f6c
	ldr     r1, [r5, #0x70]
	sub     r0, r1, r0
	str     r0, [r5, #0x70]
	ldr     r0, [r5, #0x74]
	mov     r1, #0x3
	blx 0x20e1f6e
	ldr     r1, [r5, #0x74]
	sub     r0, r1, r0
	str     r0, [r5, #0x74]
	ldr     r0, [r5, #0x78]
	mov     r1, #0x3
	blx 0x20e1f6c
	ldr     r1, [r5, #0x78]
	sub     r0, r1, r0
	str     r0, [r5, #0x78]
	mov     r0, r4
	str     r0, [r5, #0x7c]
	b       branch_2232238
@ 0x223222c

.thumb
branch_223222c: @ 223222c :thumb
	ldr     r0, [r5, #0x7c]
	mov     r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x7c]
	b       branch_2232238
@ 0x2232236

.thumb
branch_2232236: @ 2232236 :thumb
	mov     r4, #0x1
.thumb
branch_2232238: @ 2232238 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223223c

.thumb
Function_223223c: @ 223223c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x4
	bls     branch_223224c
	b       branch_223236c
@ 0x223224c

.thumb
branch_223224c: @ 223224c :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r1, #1
	lsl     r6, r5, #2
	lsl     r6, r3, #3
	lsl     r2, r7, #3
	mov     r0, r4
	bl      Function_22321c4
	cmp     r0, #0x0
	beq     branch_223236c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x1e
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x14]
	bl      Function_200d364
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200d390
	mov     r1, #0xfe
	lsl     r1, r1, #22
	ldr     r0, [r4, #0x14]
	mov     r2, r1
	bl      Function_200d6e8
	mov     r1, #0x0
	mov     r2, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x3c
	mov     r3, r2
	bl      Function_2226424
	b       branch_223236c
@ 0x22322a8


.incbin "./baserom/overlay/overlay_0012.bin", 0x12688, 0x223236c - 0x22322a8


.thumb
branch_223236c: @ 223236c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2232376


.align 2, 0
.thumb
Function_2232378: @ 2232378 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x80
	mov     r6, r0
	str     r2, [sp, #0x0]
	mov     r5, r3
	bl      Function_2235e50
	mov     r4, r0
	str     r6, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x4]
	str     r0, [r4, #0x8]
	str     r5, [r4, #0x14]
	mov     r0, r5
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x14]
	mov     r1, #0x4
	bl      Function_200d3cc
	mov     r0, #0x3
	str     r0, [r4, #0x6c]
	mov     r0, #0x19
	lsl     r0, r0, #4
	str     r0, [r4, #0x70]
	ldr     r0, [pc, #0x14] @ 0x22323dc, (=#0x5dc)
	ldr     r1, [pc, #0x14] @ 0x22323e0, (=#0x223223d)
	str     r0, [r4, #0x74]
	mov     r0, #0xfa
	lsl     r0, r0, #2
	str     r0, [r4, #0x78]
	ldr     r0, [r4, #0x0]
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x22323dc

.word 0x5dc @ 0x22323dc
.word 0x223223d @ 0x22323e0



.thumb
Function_22323e4: @ 22323e4 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	ldr     r1, [r0, #0x34]
	cmp     r1, #0x3
	bhi     branch_223242c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r6, r3, #0
	lsl     r6, r0, #0
	lsl     r6, r3, #0
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	mov     r1, #0x6
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	add     r0, #0x10
	mov     r2, r1
	mov     r3, r1
	bl      Function_2225bc8
	add     sp, #0x8
	pop     {r3,pc}
@ 0x223241a


.incbin "./baserom/overlay/overlay_0012.bin", 0x127fa, 0x223242c - 0x223241a


.thumb
branch_223242c: @ 223242c :thumb
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2232430

.thumb
Function_2232430: @ 2232430 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2232446
	cmp     r0, #0x1
	beq     branch_2232454
	cmp     r0, #0x2
	beq     branch_223248c
	pop     {r4,pc}
@ 0x2232446

.thumb
branch_2232446: @ 2232446 :thumb
	mov     r0, r4
	bl      Function_22323e4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2232454

.thumb
branch_2232454: @ 2232454 :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2225c14
	cmp     r0, #0x0
	beq     branch_2232474
	mov     r2, #0xc
	mov     r3, #0xe
	mov     r0, r4
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r1, [r4, #0x8]
	add     r0, #0x10
	bl      Function_2225a18
	pop     {r4,pc}
@ 0x2232474

.thumb
branch_2232474: @ 2232474 :thumb
	ldr     r0, [r4, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x34]
	cmp     r0, #0x4
	bge     branch_2232484
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2232484

.thumb
branch_2232484: @ 2232484 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x223248c

.thumb
branch_223248c: @ 223248c :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      Function_2220220
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x223249c


.thumb
Function_223249c: @ 223249c :thumb
	push    {r3-r5,lr}
	mov     r1, #0x38
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x4]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0xe]
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x22324dc, (=#0x2232431)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x22324dc

.word 0x2232431 @ 0x22324dc



.thumb
Function_22324e0: @ 22324e0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x6
	bhi     branch_2232542
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r2, r5, #0
	lsl     r2, r4, #2
	lsl     r6, r4, #3
	lsl     r4, r4, #4
	lsl     r4, r5, #5
	lsl     r4, r3, #6
	mov     r0, r4
	add     r0, #0x14
	mov     r1, #0x1
	mov     r2, #0x40
	bl      Function_22263a4
	ldr     r1, [r4, #0x20]
	ldr     r0, [r4, #0x8]
	add     sp, #0x8
	mul     r0, r1
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2232526


.incbin "./baserom/overlay/overlay_0012.bin", 0x12906, 0x2232542 - 0x2232526


.thumb
branch_2232542: @ 2232542 :thumb
	b       branch_22326a6
@ 0x2232544


.incbin "./baserom/overlay/overlay_0012.bin", 0x12924, 0x22326a6 - 0x2232544


.thumb
branch_22326a6: @ 22326a6 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22326aa


.align 2, 0
.thumb
Function_22326ac: @ 22326ac :thumb
	push    {r3-r5,lr}
	mov     r1, #0x64
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x4]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2225964
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x12]
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_22232fc
	str     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x3c]
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x3e]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x223271c, (=#0x22324e1)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x223271a

.align 2
.word 0x22324e1 @ 0x223271c



.thumb
Function_2232720: @ 2232720 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x0
	str     r1, [r0, #0x40]
	mov     r1, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0xa
	str     r1, [sp, #0x4]
	mov     r2, #0x2
	str     r2, [sp, #0x8]
	add     r0, #0x1c
	mov     r2, #0x9
	mov     r3, r1
	bl      Function_2225ef0
	add     sp, #0xc
	pop     {pc}
@ 0x2232742


.incbin "./baserom/overlay/overlay_0012.bin", 0x12b22, 0x223283c - 0x2232742


.thumb
Function_223283c: @ 223283c :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r2, #0x0
	str     r2, [r1, #0x0]
	mov     r5, r0
	mov     r1, #0x64
	bl      Function_200d474
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d460
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d3f4
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d390
	mov     r0, r5
	mov     r1, r4
	bl      Function_200d3a4
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200d364
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200d3cc
	mov     r1, #0x37
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_200d34c
	pop     {r3-r5,pc}
@ 0x2232888


.incbin "./baserom/overlay/overlay_0012.bin", 0x12c68, 0x22328b8 - 0x2232888


.thumb
Function_22328b8: @ 22328b8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0
	ldr     r0, [r6, #0xc]
	cmp     r0, #0x5
	bls     branch_22328c6
	b       branch_22329d8
@ 0x22328c6

.thumb
branch_22328c6: @ 22328c6 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r6, r5, #0
	lsl     r6, r4, #1
	lsl     r6, r2, #2
	lsl     r4, r7, #2
	lsl     r2, r4, #3
	mov     r0, r6
	bl      Function_2232720
	ldr     r0, [r6, #0x10]
	mov     r1, r6
	lsl     r2, r0, #2
	add     r0, r6, r2
	add     r1, #0x60
	add     r1, r1, r2
	mov     r2, #0x2
	ldr     r0, [r0, #0x48]
	lsl     r2, r2, #12
	bl      Function_223283c
	ldr     r0, [r6, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0xc]
	b       branch_22329d8
@ 0x2232902


.incbin "./baserom/overlay/overlay_0012.bin", 0x12ce2, 0x22329d8 - 0x2232902


.thumb
branch_22329d8: @ 22329d8 :thumb
	ldr     r0, [r6, #0x8]
	bl      Function_200c7ec
	pop     {r3-r7,pc}
@ 0x22329e0


.thumb
Function_22329e0: @ 22329e0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50
	str     r1, [sp, #0x0]
	mov     r1, #0x90
	mov     r4, r0
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	bl      Function_2235e50
	ldr     r1, [sp, #0x0]
	str     r4, [r0, #0x0]
	str     r1, [r0, #0x4]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x14]
	str     r1, [r0, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	bl      Function_22232fc
	ldr     r1, [sp, #0x14]
	str     r0, [r1, #0x18]
	mov     r1, #0x0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r7, r0, #16
	ldr     r0, [sp, #0x14]
	mov     r1, #0x1
	ldr     r0, [r0, #0x18]
	bl      Function_20080c0
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     r1, #0x44
	str     r0, [sp, #0xc]
	strh    r0, [r1, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	bl      Function_2223354
	ldr     r1, [sp, #0x14]
	add     r1, #0x46
	strh    r0, [r1, #0x0]
	ldr     r1, [sp, #0x14]
	add     r0, sp, #0x1c
	ldr     r1, [r1, #0x0]
	bl      Function_222329c
	ldr     r5, [sp, #0x14]
	mov     r4, #0x0
.thumb
branch_2232a58: @ 2232a58 :thumb
	cmp     r4, #0x0
	bne     branch_2232a60
	ldr     r0, [sp, #0x8]
	b       branch_2232a6a
@ 0x2232a60

.thumb
branch_2232a60: @ 2232a60 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, sp, #0x1c
	bl      Function_200ce6c
.thumb
branch_2232a6a: @ 2232a6a :thumb
	str     r0, [r5, #0x48]
	ldr     r0, [r5, #0x48]
	mov     r1, #0x0
	bl      Function_200d3f4
	lsr     r0, r4, #31
	add     r0, r4, r0
	asr     r1, r0, #1
	ldr     r0, [pc, #0xb4] @ 0x2232b30, (=#0x1555)
	mov     r2, #0x3
	mul     r0, r1
	asr     r0, r0, #4
	lsl     r0, r0, #2
	ldr     r1, [pc, #0xac] @ 0x2232b34, (=#0x20f983c)
	str     r0, [sp, #0x18]
	add     r1, r1, r0
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	lsl     r2, r2, #16
	mov     r3, #0x0
	asr     r1, r0, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r2, r0, r2
	ldr     r0, [pc, #0x98] @ 0x2232b38, (=#0x0)
	adc     r1, r0
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	lsl     r0, r1, #4
	asr     r6, r0, #16
	mov     r2, #0x3
	ldr     r1, [pc, #0x84] @ 0x2232b34, (=#0x20f983c)
	ldr     r0, [sp, #0x18]
	lsl     r2, r2, #16
	ldsh    r0, [r1, r0]
	mov     r3, #0x0
	asr     r1, r0, #31
	blx     Function_20e1f1c
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r0, r0, r2
	ldr     r2, [pc, #0x70] @ 0x2232b38, (=#0x0)
	adc     r1, r2
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	lsl     r0, r0, #4
	asr     r0, r0, #16
	str     r0, [sp, #0x10]
	lsr     r2, r4, #31
	lsl     r1, r4, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	bne     branch_2232af2
	add     r0, r7, r6
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [r5, #0x48]
	mov     r1, #0x1
	bl      Function_200d7d4
	b       branch_2232af8
@ 0x2232af2

.thumb
branch_2232af2: @ 2232af2 :thumb
	sub     r0, r7, r6
	lsl     r0, r0, #16
	asr     r6, r0, #16
.thumb
branch_2232af8: @ 2232af8 :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	sub     r0, r1, r0
	lsl     r0, r0, #16
	asr     r2, r0, #16
	ldr     r0, [r5, #0x48]
	mov     r1, r6
	bl      Function_200d4c4
	cmp     r4, #0x2
	bge     branch_2232b12
	mov     r0, #0x8
	b       branch_2232b14
@ 0x2232b12

.thumb
branch_2232b12: @ 2232b12 :thumb
	mov     r0, #0x0
.thumb
branch_2232b14: @ 2232b14 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r5, #0x78]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2232a58
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0x18] @ 0x2232b3c, (=#0x22328b9)
	ldr     r0, [r0, #0x0]
	ldr     r2, [sp, #0x14]
	bl      Function_22201e8
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x2232b2e

.align 2
.word 0x1555 @ 0x2232b30
.word 0x20f983c @ 0x2232b34
.word 0x0 @ 0x2232b38
.word 0x22328b9 @ 0x2232b3c



.thumb
Function_2232b40: @ 2232b40 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x5
	bhi     branch_2232b80
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r2, r3, #0
	lsl     r2, r7, #1
	lsl     r6, r2, #3
	lsl     r6, r0, #4
	lsl     r2, r5, #4
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x1
	bl      Function_200d390
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2232c9e
@ 0x2232b76


.incbin "./baserom/overlay/overlay_0012.bin", 0x12f56, 0x2232b80 - 0x2232b76


.thumb
branch_2232b80: @ 2232b80 :thumb
	b       branch_2232c9e
@ 0x2232b82


.incbin "./baserom/overlay/overlay_0012.bin", 0x12f62, 0x2232c9e - 0x2232b82


.thumb
branch_2232c9e: @ 2232c9e :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2232ca8


.thumb
Function_2232ca8: @ 2232ca8 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x8c
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r6, r3
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x4]
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x6
	mov     r2, #0x0
	str     r0, [r4, #0x10]
	bl      Function_2007dec
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_22258e0
	mov     r1, r4
	add     r1, #0x88
	strh    r0, [r1, #0x0]
	mov     r0, r5
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_22258e0
	mov     r1, r4
	add     r1, #0x8a
	strh    r0, [r1, #0x0]
	str     r6, [r4, #0x5c]
	mov     r0, r6
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x1
	bl      Function_200d460
	mov     r1, #0x88
	mov     r2, #0x8a
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x5c]
	bl      Function_200d4c4
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2232d34, (=#0x2232b41)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x2232d32

.align 2
.word 0x2232b41 @ 0x2232d34


.incbin "./baserom/overlay/overlay_0012.bin", 0x13118, 0x2233094 - 0x2232d38


.thumb
Function_2233094: @ 2233094 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x6
	bhi     branch_223316e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r0, r6, #0
	lsl     r2, r1, #1
	lsl     r0, r4, #1
	lsl     r6, r6, #1
	lsl     r4, r3, #2
	lsl     r0, r6, #2
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0x10
	bl      Function_2235780
	mov     r2, #0x8
	str     r2, [sp, #0x0]
	mov     r0, r4
	str     r2, [sp, #0x4]
	add     r0, #0x9c
	mov     r1, #0x0
	mov     r3, #0x10
	bl      Function_2226424
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_223316e
@ 0x22330e0


.incbin "./baserom/overlay/overlay_0012.bin", 0x134c0, 0x223316e - 0x22330e0


.thumb
branch_223316e: @ 223316e :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2233178


.thumb
Function_2233178: @ 2233178 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0xd0
	mov     r6, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r6, [r4, #0x0]
	mov     r0, r6
	bl      Function_22202ec
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_222332c
	mov     r1, r4
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	mov     r7, r0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	mov     r0, r7
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r5, r0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r7, r0, #16
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [sp, #0x4]
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r6, r0
	lsl     r0, r0, #16
	str     r5, [r4, #0x14]
	asr     r6, r0, #16
	ldr     r0, [r4, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2223354
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x18]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x18]
	ldr     r1, [sp, #0x0]
	mov     r2, r5
	bl      Function_200d4c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22202c0
	str     r0, [r4, #0x1c]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x1c]
	mov     r1, r7
	mov     r2, r6
	bl      Function_200d4c4
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	mov     r2, #0x28
	bl      Function_200d7e0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_22234a8
	mov     r1, r4
	add     r1, #0xc8
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22234a8
	mov     r1, r4
	add     r1, #0xcc
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_22202c0
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	bl      Function_22202c0
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x22332e4, (=#0x2233095)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22332e4

.word 0x2233095 @ 0x22332e4



.thumb
Function_22332e8: @ 22332e8 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	mov     r2, #0xa
	mov     r4, r0
	add     r0, #0xf8
	mov     r1, #0x19
	mov     r3, r2
	str     r2, [sp, #0x0]
	bl      Function_2225e68
	mov     r0, #0x3a
	ldsh    r0, [r4, r0]
	mov     r1, r4
	mov     r3, #0x38
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x44]
	ldr     r2, [pc, #0x1c] @ 0x2233334, (=#0x2225eb9)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x40]
	add     r1, #0xf8
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x3c]
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, r4
	ldsh    r3, [r4, r3]
	add     r0, #0x48
	bl      Function_22261c4
	add     sp, #0x20
	pop     {r4,pc}
@ 0x2233334

.word Function_2225eb8+1 @ =0x2225eb9, 0x2233334

.incbin "./baserom/overlay/overlay_0012.bin", 0x13718, 0x2233394 - 0x2233338


.thumb
Function_2233394: @ 2233394 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x4
	bhi     branch_223344c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r2, #0
	lsl     r4, r0, #1
	lsl     r0, r5, #1
	lsl     r4, r7, #1
	mov     r0, r4
	bl      Function_22332e8
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_223344c
@ 0x22333c4


.incbin "./baserom/overlay/overlay_0012.bin", 0x137a4, 0x223344c - 0x22333c4


.thumb
branch_223344c: @ 223344c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	pop     {r3-r7,pc}
@ 0x2233454


.thumb
Function_2233454: @ 2233454 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r6, r1
	mov     r1, #0x47
	lsl     r1, r1, #2
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r7, r3
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0x4]
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x38]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x3a]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x29
	bl      Function_20080c0
	mov     r1, #0x3a
	ldsh    r1, [r4, r1]
	sub     r0, r1, r0
	strh    r0, [r4, #0x3a]
	add     r0, sp, #0x4
	mov     r1, r5
	bl      Function_222329c
	mov     r6, #0x0
	mov     r5, r4
.thumb
branch_22334b0: @ 22334b0 :thumb
	cmp     r6, #0x0
	bne     branch_22334c0
	mov     r0, r7
	mov     r1, #0x1
	str     r7, [r5, #0x3c]
	bl      Function_200d364
	b       branch_22334d2
@ 0x22334c0

.thumb
branch_22334c0: @ 22334c0 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	add     r2, sp, #0x4
	bl      Function_200ce6c
	mov     r1, #0x1
	str     r0, [r5, #0x3c]
	bl      Function_200d810
.thumb
branch_22334d2: @ 22334d2 :thumb
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x1
	bl      Function_200d460
	mov     r1, #0x38
	mov     r2, #0x3a
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r5, #0x3c]
	bl      Function_200d4c4
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x2
	bl      Function_200d6a4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_22334b0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2233518, (=#0x2233395)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2233516

.align 2
.word 0x2233395 @ 0x2233518



.thumb
Function_223351c: @ 223351c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r7, #0x0
	mov     r6, r5
	str     r1, [sp, #0x10]
	add     r6, #0x30
	mov     r4, r7
.thumb
branch_223352c: @ 223352c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x32
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x28] @ 0x223356c, (=#0x7fff)
	mov     r0, r6
	mov     r3, r1
	bl      Function_2225a5c
	ldr     r0, [r5, #0x38]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, r0, r4
	str     r0, [r5, #0x38]
	ldr     r1, [r5, #0x48]
	ldr     r0, [sp, #0x10]
	add     r6, #0x24
	mul     r0, r1
	str     r0, [r5, #0x48]
	ldr     r0, [pc, #0x10] @ 0x2233570, (=#0x2aaa)
	add     r5, #0x24
	add     r4, r4, r0
	cmp     r7, #0x6
	blt     branch_223352c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223356a


.align 2


.word 0x7fff @ 0x223356c
.word 0x2aaa @ 0x2233570
.thumb
Function_2233574: @ 2233574 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r6
	str     r0, [sp, #0x0]
	add     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r5, r6
	mov     r4, r6
.thumb
branch_223358a: @ 223358a :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2225ae0
	ldr     r1, [r5, #0x38]
	mov     r2, #0xa
	lsl     r0, r1, #2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x8c] @ 0x2233630, (=#0x20f983c)
	ldr     r3, [r6, #0x14]
	ldsh    r0, [r0, r1]
	lsl     r2, r2, #12
	mul     r2, r3
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx 0x20e1f1e
	mov     r3, r1
	mov     r1, #0x13
	lsl     r1, r1, #4
	mov     r2, #0x30
	mov     r7, r0
	ldsh    r1, [r6, r1]
	ldsh    r2, [r5, r2]
	ldr     r0, [r4, #0x18]
	add     r1, r1, r2
	ldr     r2, [pc, #0x6c] @ 0x2233634, (=#0x132)
	lsl     r1, r1, #16
	ldsh    r2, [r6, r2]
	asr     r1, r1, #16
	mov     r12, r2
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r7, r7, r2
	ldr     r2, [pc, #0x60] @ 0x2233638, (=#0x0)
	adc     r3, r2
	lsl     r2, r3, #20
	lsr     r3, r7, #12
	orr     r3, r2
	lsl     r2, r3, #4
	asr     r2, r2, #16
	mov     r3, r12
	add     r2, r3, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	ldr     r1, [r5, #0x38]
	ldr     r0, [pc, #0x48] @ 0x223363c, (=#0x3fff)
	cmp     r1, r0
	blt     branch_2233606
	ldr     r0, [pc, #0x48] @ 0x2233640, (=#0xbf49)
	cmp     r1, r0
	bgt     branch_2233606
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_200d460
	b       branch_2233616
@ 0x2233606

.thumb
branch_2233606: @ 2233606 :thumb
	ldr     r0, [r6, #0x0]
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r4, #0x18]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d460
.thumb
branch_2233616: @ 2233616 :thumb
	ldr     r0, [sp, #0x0]
	add     r5, #0x24
	add     r0, #0x24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x6
	blt     branch_223358a
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223362e


.align 2


.word 0x20f983c @ 0x2233630
.word 0x132 @ 0x2233634
.word 0x0 @ 0x2233638
.word 0x3fff @ 0x223363c
.word 0xbf49 @ 0x2233640
.thumb
Function_2233644: @ 2233644 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x4
	bhi     branch_223372a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r7, #0
	lsl     r6, r3, #1
	lsl     r2, r1, #2
	lsl     r6, r4, #2
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	mov     r2, #0xf
	bl      Function_2235780
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	add     r0, #0xfe
	add     r0, r4, r0
	mov     r1, #0x1
	mov     r2, #0x10
	mov     r3, #0xf
	bl      Function_2226424
	ldr     r1, [r4, #0x14]
	mov     r0, r4
	bl      Function_223351c
	mov     r0, r4
	bl      Function_2233574
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_223372a
@ 0x223369e


.incbin "./baserom/overlay/overlay_0012.bin", 0x13a7e, 0x223372a - 0x223369e


.thumb
branch_223372a: @ 223372a :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2233734


.thumb
Function_2233734: @ 2233734 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r1
	mov     r1, #0x4d
	lsl     r1, r1, #2
	mov     r4, r0
	str     r2, [sp, #0x0]
	mov     r7, r3
	bl      Function_2235e50
	mov     r6, r0
	str     r4, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	str     r5, [r6, #0x4]
	str     r0, [r6, #0x8]
	mov     r0, r4
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_20080c0
	mov     r1, #0x13
	lsl     r1, r1, #4
	strh    r0, [r6, r1]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20080c0
	ldr     r1, [pc, #0x60] @ 0x22337d8, (=#0x132)
	strh    r0, [r6, r1]
	add     r0, sp, #0x4
	mov     r1, r4
	bl      Function_222329c
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2233786: @ 2233786 :thumb
	cmp     r4, #0x0
	bne     branch_223378e
	str     r7, [r5, #0x18]
	b       branch_223379a
@ 0x223378e

.thumb
branch_223378e: @ 223378e :thumb
	ldr     r0, [r6, #0x4]
	ldr     r1, [r6, #0x8]
	add     r2, sp, #0x4
	bl      Function_200ce6c
	str     r0, [r5, #0x18]
.thumb
branch_223379a: @ 223379a :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_200d390
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2233786
	ldr     r0, [r6, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_2225964
	str     r0, [r6, #0x14]
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xc] @ 0x22337dc, (=#0x2233645)
	mov     r2, r6
	bl      Function_22201e8
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x22337d8

.word 0x132 @ 0x22337d8
.word 0x2233645 @ 0x22337dc



.thumb
Function_22337e0: @ 22337e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	add     r1, sp, #0x8
	mov     r5, r2
	add     r1, #0x2
	add     r2, sp, #0x8
	mov     r6, r0
	mov     r4, r3
	bl      Function_200d550
	add     r0, sp, #0x8
	mov     r1, #0x0
	ldsh    r3, [r0, r1]
	mov     r1, #0x2
	ldsh    r2, [r0, r1]
	lsl     r0, r4, #7
	neg     r0, r0
	add     r0, r3, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	lsl     r1, r2, #16
	lsl     r4, r5, #8
	add     r2, r2, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x3b
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	str     r0, [sp, #0x4]
	mov     r0, r7
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2225bc8
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_200d3f4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2233832


.align 2, 0


.thumb
Function_2233834: @ 2233834 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, r1
	mov     r1, r4
	bl      Function_2225c50
	cmp     r0, #0x0
	beq     branch_22338ee
	add     r1, sp, #0x8
	mov     r0, r4
	add     r1, #0x2
	add     r2, sp, #0x8
	bl      Function_200d550
	add     r1, sp, #0x8
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x0]
	mov     r2, #0xe
	mul     r1, r0
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x84] @ 0x22338f4, (=#0x20f983c)
	lsl     r2, r2, #12
	ldsh    r0, [r0, r1]
	mov     r3, #0x0
	asr     r7, r0, #31
	mov     r1, r7
	str     r0, [sp, #0x4]
	blx 0x20e1f1e
	mov     r3, r0
	mov     r5, r1
	add     r6, sp, #0x8
	mov     r2, #0x0
	ldsh    r2, [r6, r2]
	mov     r6, #0x2
	lsl     r6, r6, #10
	mov     r0, r4
	add     r6, r3, r6
	ldr     r3, [pc, #0x64] @ 0x22338f8, (=#0x0)
	ldr     r1, [sp, #0x0]
	adc     r5, r3
	lsl     r3, r5, #20
	lsr     r5, r6, #12
	orr     r5, r3
	lsl     r3, r5, #4
	asr     r3, r3, #16
	add     r2, r2, r3
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	mov     r2, #0xae
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	lsl     r2, r2, #2
	mov     r3, #0x0
	blx 0x20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	neg     r0, r1
	blx 0x20e17b6
	ldr     r1, [pc, #0x2c] @ 0x22338fc, (=#0x45800000)
	blx 0x20e1304
	mov     r1, r0
	mov     r0, #0xfe
	lsl     r0, r0, #22
	blx 0x20e0b02
	mov     r1, r0
	mov     r0, r4
	mov     r2, r1
	bl      Function_200d6e8
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22338ee

.thumb
branch_22338ee: @ 22338ee :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22338f4

.word 0x20f983c @ 0x22338f4
.word 0x0 @ 0x22338f8
.word 0x45800000 @ 0x22338fc
.thumb
Function_2233900: @ 2233900 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x9d
	mov     r7, r0
	lsl     r1, r1, #2
	ldr     r0, [r7, r1]
	cmp     r0, #0xf
	bge     branch_2233948
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r7, r0]
	add     r2, r0, #0x1
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r7, r0]
	ldr     r0, [r7, r0]
	cmp     r0, #0x6
	ble     branch_2233948
	mov     r2, #0x0
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r7, r0]
	ldr     r1, [r7, r1]
	mov     r3, r7
	lsl     r0, r1, #2
	mov     r2, #0x24
	add     r0, r7, r0
	add     r3, #0x54
	mul     r2, r1
	add     r1, r3, r2
	ldr     r0, [r0, #0x18]
	ldr     r2, [r7, #0x10]
	ldr     r3, [r7, #0x14]
	bl      Function_22337e0
	mov     r0, #0x9d
	lsl     r0, r0, #2
	ldr     r1, [r7, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r7, r0]
.thumb
branch_2233948: @ 2233948 :thumb
	mov     r0, #0x9d
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2233974
	mov     r6, r7
	add     r6, #0x54
	mov     r5, r7
.thumb
branch_223395a: @ 223395a :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, r6
	bl      Function_2233834
	str     r0, [sp, #0x0]
	mov     r0, #0x9d
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x24
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_223395a
.thumb
branch_2233974: @ 2233974 :thumb
	cmp     r0, #0xf
	blt     branch_2233982
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_2233982
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2233982

.thumb
branch_2233982: @ 2233982 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2233986


.align 2, 0


.thumb
Function_2233988: @ 2233988 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0
	mov     r0, r6
	bl      Function_2233900
	cmp     r0, #0x0
	beq     branch_22339ba
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223399c: @ 223399c :thumb
	ldr     r0, [r5, #0x18]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xf
	blt     branch_223399c
	mov     r0, r6
	bl      Function_20181c4
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	bl      Function_2220220
	pop     {r3-r7,pc}

branch_22339ba: @ 22339ba :thumb
	ldr     r0, [r6, #0x8]
	bl      Function_200c7ec
	pop     {r3-r7,pc}
@ 0x22339c2


.align 2, 0
.thumb
Function_22339c4: @ 22339c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r5, r1
	mov     r1, #0x9e
	lsl     r1, r1, #2
	mov     r4, r0
	str     r2, [sp, #0x0]
	mov     r7, r3
	bl      Function_2235e50
	mov     r6, r0
	str     r4, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	str     r5, [r6, #0x4]
	str     r0, [r6, #0x8]
	mov     r0, r4
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	add     r0, sp, #0xc
	mov     r1, r4
	bl      Function_222329c
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2233a18: @ 2233a18 :thumb
	cmp     r4, #0x0
	bne     branch_2233a20
	str     r7, [r5, #0x18]
	b       branch_2233a2c
@ 0x2233a20

.thumb
branch_2233a20: @ 2233a20 :thumb
	ldr     r0, [r6, #0x4]
	ldr     r1, [r6, #0x8]
	add     r2, sp, #0xc
	bl      Function_200ce6c
	str     r0, [r5, #0x18]
.thumb
branch_2233a2c: @ 2233a2c :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r5, #0x18]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r5, #0x18]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r5, #0x18]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	bl      Function_200d4c4
	mov     r0, r4
	mov     r1, #0x3
	blx     Division
	ldr     r0, [r5, #0x18]
	bl      Function_200d364
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xf
	blt     branch_2233a18
	ldr     r0, [r6, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_2225964
	str     r0, [r6, #0x10]
	ldr     r0, [r6, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_222598c
	str     r0, [r6, #0x14]
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2233a9c, (=#0x2233989)
	mov     r2, r6
	bl      Function_22201e8
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x2233a9a

.align 2
.word 0x2233989 @ 0x2233a9c



.thumb
Function_2233aa0: @ 2233aa0 :thumb
	ldr     r1, [r0, #0x2c]
	cmp     r1, #0x0
	beq     branch_2233ab0
	cmp     r1, #0x1
	beq     branch_2233ac4
	cmp     r1, #0x2
	beq     branch_2233ad8
	bx      lr
@ 0x2233ab0

.thumb
branch_2233ab0: @ 2233ab0 :thumb
	ldr     r1, [pc, #0x38] @ 0x2233aec, (=#0x7fff)
	str     r1, [r0, #0x18]
	mov     r1, #0x5
	str     r1, [r0, #0x24]
	mov     r1, #0x1
	lsl     r1, r1, #16
	str     r1, [r0, #0x1c]
	mov     r1, #0x10
	str     r1, [r0, #0x28]
	bx      lr
@ 0x2233ac4

.thumb
branch_2233ac4: @ 2233ac4 :thumb
	ldr     r1, [pc, #0x24] @ 0x2233aec, (=#0x7fff)
	str     r1, [r0, #0x18]
	mov     r1, #0x4
	mvn     r1, r1
	str     r1, [r0, #0x24]
	ldr     r1, [pc, #0x20] @ 0x2233af0, (=#0xffff0000)
	str     r1, [r0, #0x1c]
	mov     r1, #0x10
	str     r1, [r0, #0x28]
	bx      lr
@ 0x2233ad8

.thumb
branch_2233ad8: @ 2233ad8 :thumb
	ldr     r1, [pc, #0x10] @ 0x2233aec, (=#0x7fff)
	str     r1, [r0, #0x18]
	mov     r1, #0xa
	str     r1, [r0, #0x24]
	lsl     r1, r1, #13
	str     r1, [r0, #0x1c]
	mov     r1, #0x10
	str     r1, [r0, #0x28]
	bx      lr
@ 0x2233aea


.align 2


.word 0x7fff @ 0x2233aec
.word 0xffff0000 @ 0x2233af0
.thumb
Function_2233af4: @ 2233af4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      Function_22265e4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x10]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	sub     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r0, #0x58
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bge     branch_2233b1c
	mov     r0, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_2233b1c: @ 2233b1c :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0xc0
	ble     branch_2233b26
	mov     r0, #0xc0
	str     r0, [sp, #0x0]
.thumb
branch_2233b26: @ 2233b26 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x20]
	mvn     r0, r0
	mul     r0, r1
	ldr     r4, [sp, #0x4]
	str     r0, [r5, #0x20]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	cmp     r1, r0
	bge     branch_2233bc6
.thumb
branch_2233b3a: @ 2233b3a :thumb
	mov     r0, #0x2
	tst     r0, r4
	ldr     r1, [r5, #0x1c]
	beq     branch_2233b4a
	ldr     r0, [r5, #0x20]
	lsl     r0, r0, #12
	add     r2, r1, r0
	b       branch_2233b50
@ 0x2233b4a

.thumb
branch_2233b4a: @ 2233b4a :thumb
	ldr     r0, [r5, #0x20]
	lsl     r0, r0, #12
	sub     r2, r1, r0
.thumb
branch_2233b50: @ 2233b50 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	sub     r3, r4, r1
	ldr     r1, [pc, #0x74] @ 0x2233bcc, (=#0x199)
	mul     r1, r3
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x68] @ 0x2233bd0, (=#0x20f983c)
	asr     r3, r2, #31
	ldsh    r0, [r0, r1]
	asr     r1, r0, #31
	blx 0x20e1f1c
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r2, r0, r2
	ldr     r0, [pc, #0x5c] @ 0x2233bd4, (=#0x0)
	adc     r1, r0
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	lsl     r0, r1, #4
	asr     r7, r0, #16
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x24]
	sub     r0, r4, r0
	mul     r0, r1
	mov     r1, #0xa
	blx 0x20e1f6e
	add     r0, r7, r0
	lsl     r0, r0, #16
	ldr     r1, [r5, #0x30]
	asr     r7, r0, #16
	lsl     r0, r1, #16
	lsr     r1, r1, #16
	lsl     r1, r1, #16
	asr     r0, r0, #16
	asr     r1, r1, #16
	.hword  0x1e66 @ sub r6, r4, #0x1
	bpl     branch_2233baa
	add     r6, #0xc0
.thumb
branch_2233baa: @ 2233baa :thumb
	add     r0, r0, r7
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	bl      Function_22266e8
	ldr     r1, [sp, #0x8]
	lsl     r2, r6, #2
	str     r0, [r1, r2]
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2233b3a
.thumb
branch_2233bc6: @ 2233bc6 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2233bca


.align 2


.word 0x199 @ 0x2233bcc
.word 0x20f983c @ 0x2233bd0
.word 0x0 @ 0x2233bd4
.thumb
Function_2233bd8: @ 2233bd8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2233bee
	cmp     r0, #0x1
	beq     branch_2233c02
	cmp     r0, #0x2
	beq     branch_2233c2c
	pop     {r4-r6,pc}
@ 0x2233bee

.thumb
branch_2233bee: @ 2233bee :thumb
	mov     r0, r4
	bl      Function_2233aa0
	mov     r0, r4
	bl      Function_2233af4
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r4-r6,pc}
@ 0x2233c02

.thumb
branch_2233c02: @ 2233c02 :thumb
	ldr     r0, [r4, #0x28]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x28]
	mov     r0, r4
	bl      Function_2233af4
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	bge     branch_2233cd0
	ldr     r0, [r4, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x2c]
	cmp     r0, #0x3
	bge     branch_2233c24
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4-r6,pc}
@ 0x2233c24

.thumb
branch_2233c24: @ 2233c24 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r4-r6,pc}
@ 0x2233c2c

.thumb
branch_2233c2c: @ 2233c2c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222337c
	cmp     r0, #0x0
	bne     branch_2233c48
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2007dec
.thumb
branch_2233c48: @ 2233c48 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_22265f8
	ldr     r0, [r4, #0x4]
	bl      Function_22265c0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2223428
	mov     r1, r0
	lsl     r0, r5, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	ldr     r0, [r4, #0x0]
	bl      Function_222339c
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, #0x0
	lsr     r1, r1, #24
	bl      Function_2019060
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_221fde4
	mov     r3, r0
	lsl     r0, r5, #24
	mov     r1, #0x1
	lsr     r0, r0, #24
	lsl     r1, r1, #14
	mov     r2, #0x0
	bl      Function_2019690
	ldr     r0, [r4, #0x0]
	bl      Function_2220278
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2019ebc
	mov     r0, r4
	bl      Function_20181c4
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_2220220
branch_2233cd0: @ 2233cd0 :thumb
	pop     {r4-r6,pc}
@ 0x2233cd2


.align 2, 0
.thumb
Function_2233cd4: @ 2233cd4 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x34
	mov     r7, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r7, [r4, #0x0]
	mov     r0, r7
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	str     r0, [r4, #0xc]
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_20080c0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	ldr     r0, [r4, #0xc]
	mov     r1, #0x29
	bl      Function_20080c0
	sub     r0, r5, r0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222337c
	cmp     r0, #0x0
	bne     branch_2233d32
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
.thumb
branch_2233d32: @ 2233d32 :thumb
	sub     r6, #0x28
	lsl     r0, r6, #16
	str     r5, [r4, #0x14]
	sub     r5, #0x28
	asr     r0, r0, #16
	neg     r0, r0
	neg     r1, r5
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	str     r5, [r4, #0x10]
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	bl      Function_22266e8
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233ec
	bl      Function_22266f0
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_221fde4
	mov     r2, r0
	ldr     r1, [r4, #0x30]
	mov     r0, r5
	bl      Function_2226544
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	mov     r0, r7
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2235254
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	bhi     branch_2233dba
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22233b0
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_222339c
	mov     r1, r0
	lsl     r0, r5, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	ldr     r0, [r4, #0x0]
	bl      Function_222339c
	mov     r1, r0
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	mov     r0, #0x0
	lsr     r1, r1, #24
	bl      Function_2019060
.thumb
branch_2233dba: @ 2233dba :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2233dc8, (=#0x2233bd9)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x2233dc6

.align 2
.word 0x2233bd9 @ 0x2233dc8


.thumb
Function_2233dcc: @ 2233dcc :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x5
	bls     branch_2233ddc
	b       branch_2233f20
@ 0x2233ddc

.thumb
branch_2233ddc: @ 2233ddc :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r0, r2, #1
	lsl     r2, r1, #2
	lsl     r4, r0, #3
	lsl     r0, r2, #4
	lsl     r0, r5, #4
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xc
	mov     r1, #0x7f
	mov     r3, r2
	bl      Function_2225bc8
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x114] @ 0x2233f24, (=#0xffff1fff)
	and     r1, r0
	lsr     r0, r2, #13
	orr     r0, r1
	str     r0, [r2, #0x0]
	mov     r1, #0x0
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	bl      Function_2235838
	ldr     r1, [pc, #0x104] @ 0x2233f28, (=#0x4000040)
	mov     r0, #0xff
	strh    r0, [r1, #0x0]
	mov     r0, #0xbf
	strh    r0, [r1, #0x4]
	mov     r0, #0x7
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4,r5,pc}
@ 0x2233e3a


.incbin "./baserom/overlay/overlay_0012.bin", 0x1421a, 0x2233f20 - 0x2233e3a


.thumb
branch_2233f20: @ 2233f20 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2233f24

.word 0xffff1fff @ 0x2233f24
.word 0x4000040 @ 0x2233f28


.incbin "./baserom/overlay/overlay_0012.bin", 0x1430c, 0x2233f30 - 0x2233f2c


.thumb
Function_2233f30: @ 2233f30 :thumb
	push    {r4,lr}
	mov     r1, #0x34
	mov     r4, r0
	bl      Function_2235e50
	mov     r2, r0
	ldr     r1, [pc, #0x8] @ 0x2233f48, (=#0x2233dcd)
	mov     r0, r4
	str     r4, [r2, #0x0]
	bl      Function_22201e8
	pop     {r4,pc}
@ 0x2233f48

.word 0x2233dcd @ 0x2233f48



.thumb
Function_2233f4c: @ 2233f4c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x4
	bhi     branch_2233ffc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r5, #0
	lsl     r2, r0, #1
	lsl     r0, r5, #1
	lsl     r4, r7, #1
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0x10
	bl      Function_2235780
	mov     r1, #0x0
	mov     r2, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x14
	mov     r3, r2
	bl      Function_2226424
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2233ffc
@ 0x2233f96


.incbin "./baserom/overlay/overlay_0012.bin", 0x14376, 0x2233ffc - 0x2233f96


.thumb
branch_2233ffc: @ 2233ffc :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2234006


.align 2, 0
.thumb
Function_2234008: @ 2234008 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x3c
	mov     r6, r0
	str     r2, [sp, #0x0]
	mov     r5, r3
	bl      Function_2235e50
	mov     r4, r0
	str     r6, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x4]
	str     r0, [r4, #0x8]
	str     r5, [r4, #0x10]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d390
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2234040, (=#0x2233f4d)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x2234040

.word 0x2233f4d @ 0x2234040



.thumb
Function_2234044: @ 2234044 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x4
	bhi     branch_2234108
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r6, #1
	lsl     r4, r6, #2
	lsl     r0, r4, #4
	lsl     r2, r6, #5
	ldr     r0, [r4, #0x68]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x74]
	asr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r1, [r4, #0x5c]
	ldr     r2, [r4, #0x60]
	ldr     r3, [r4, #0x64]
	mov     r0, r4
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	add     r0, #0x14
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2225ef0
	mov     r1, #0xa
	mov     r2, #0x8
	mov     r0, r4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r3, [r4, #0x10]
	add     r0, #0x38
	bl      Function_222619c
	mov     r0, r4
	ldr     r1, [r4, #0x10]
	add     r0, #0x14
	bl      Function_22260e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x8
	mov     r2, #0xc
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	ldr     r3, [r4, #0x28]
	bl      Function_2226024
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4,r5,pc}
@ 0x22340d2


.incbin "./baserom/overlay/overlay_0012.bin", 0x144b2, 0x2234108 - 0x22340d2


.thumb
branch_2234108: @ 2234108 :thumb
	b       branch_2234210
@ 0x223410a


.incbin "./baserom/overlay/overlay_0012.bin", 0x144ea, 0x2234210 - 0x223410a


.thumb
branch_2234210: @ 2234210 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2234214


.thumb
Function_2234214: @ 2234214 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x78
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2223354
	strh    r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_2220248
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0xa]
	mov     r1, #0xa
	str     r1, [r4, #0x5c]
	mov     r0, #0x7
	str     r0, [r4, #0x60]
	str     r1, [r4, #0x64]
	mov     r0, #0x1e
	str     r0, [r4, #0x68]
	str     r1, [r4, #0x6c]
	mov     r3, #0x1
	ldr     r0, [pc, #0x20] @ 0x2234288, (=#0x40003)
	str     r3, [r4, #0x70]
	str     r0, [r4, #0x74]
	mov     r1, #0x2
	mov     r0, r4
	str     r1, [sp, #0x0]
	add     r0, #0x38
	mov     r2, #0x0
	bl      Function_2226108
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x223428c, (=#0x2234045)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r5,pc}
@ 0x2234286

.align 2
.word 0x40003 @ 0x2234288
.word 0x2234045 @ 0x223428c



.thumb
Function_2234290: @ 2234290 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r4, #0x2c]
	add     r0, #0x8
	bl      Function_2225c50
	cmp     r0, #0x0
	bne     branch_22342ba
	ldr     r0, [r4, #0x2c]
	bl      Function_200d0f4
	mov     r0, r4
	bl      Function_20181c4
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2220220
	pop     {r3-r5,pc}

branch_22342ba: @ 22342ba :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x22342c2


.align 2, 0
.thumb
Function_22342c4: @ 22342c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r1, #0x30
	mov     r5, r0
	bl      Function_2235e50
	mov     r4, r0
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_2220300
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2220240
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_223525c
	cmp     r0, #0x3
	bne     branch_2234308
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220298
	str     r0, [r4, #0x2c]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220298
	bl      Function_200d0f4
	b       branch_223431e
@ 0x2234308

.thumb
branch_2234308: @ 2234308 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220298
	str     r0, [r4, #0x2c]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2220298
	bl      Function_200d0f4
.thumb
branch_223431e: @ 223431e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2225964
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_222598c
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_22258e0
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22258e0
	ldr     r1, [sp, #0x10]
	lsl     r2, r7, #6
	add     r6, r1, r2
	ldr     r1, [sp, #0xc]
	lsl     r1, r1, #4
	neg     r1, r1
	add     r5, r0, r1
	str     r1, [sp, #0x8]
	lsl     r1, r6, #16
	lsl     r2, r5, #16
	ldr     r0, [r4, #0x2c]
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	ldr     r0, [sp, #0x8]
	mov     r2, #0x30
	add     r0, r5, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	mul     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	add     r2, r6, r2
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsl     r1, r6, #16
	lsl     r2, r2, #16
	lsl     r3, r5, #16
	add     r0, #0x8
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_2225bc8
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x223439c, (=#0x2234291)
	mov     r2, r4
	bl      Function_22201e8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223439c

.word 0x2234291 @ 0x223439c



.thumb
Function_22343a0: @ 22343a0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x5
	bls     branch_22343b0
	b       branch_22344cc
@ 0x22343b0

.thumb
branch_22343b0: @ 22343b0 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r4, r4, #0
	lsl     r2, r6, #1
	lsl     r6, r1, #2
	lsl     r0, r2, #3
	lsl     r0, r5, #3
	mov     r1, #0x4
	mov     r0, r4
	str     r1, [sp, #0x0]
	add     r0, #0x40
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2226108
	ldr     r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x22343e2


.incbin "./baserom/overlay/overlay_0012.bin", 0x147c2, 0x22344cc - 0x22343e2


.thumb
branch_22344cc: @ 22344cc :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22344d0


.thumb
Function_22344d0: @ 22344d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x64
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	str     r5, [r4, #0x0]
	bl      Function_2220240
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232fc
	str     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x1a]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2225964
	str     r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, r6
	bl      Function_222598c
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2234524, (=#0x22343a1)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x2234522

.align 2
.word 0x22343a1 @ 0x2234524



.thumb
Function_2234528: @ 2234528 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x4
	bls     branch_2234538
	b       branch_2234648
@ 0x2234538

.thumb
branch_2234538: @ 2234538 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r7, #0
	lsl     r6, r4, #1
	lsl     r4, r0, #3
	lsl     r4, r3, #3
	mov     r0, #0x16
	ldsh    r3, [r4, r0]
	mov     r0, #0x14
	ldsh    r1, [r4, r0]
	ldr     r0, [r4, #0xc]
	mov     r5, #0x4
	lsl     r0, r0, #4
	add     r0, r3, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldr     r2, [r4, #0x8]
	sub     r5, #0x2c
	mul     r5, r2
	add     r2, r1, r5
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x18
	asr     r2, r2, #16
	bl      Function_2225bc8
	ldr     r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x2234584


.incbin "./baserom/overlay/overlay_0012.bin", 0x14964, 0x2234648 - 0x2234584


.thumb
branch_2234648: @ 2234648 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223464c


.thumb
Function_223464c: @ 223464c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x60
	bl      Function_2235e50
	mov     r4, r0
	mov     r0, r5
	str     r5, [r4, #0x0]
	bl      Function_2220248
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_22232fc
	str     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x14]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x16]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2225964
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, r6
	bl      Function_222598c
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x22346a0, (=#0x2234529)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x223469e

.align 2
.word 0x2234529 @ 0x22346a0



.thumb
Function_22346a4: @ 22346a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r7, r1
	mov     r4, r0
	mov     r1, #0xac
	mov     r6, r2
	str     r3, [sp, #0x0]
	bl      Function_2235e50
	str     r4, [r0, #0x0]
	str     r0, [sp, #0x4]
	str     r6, [r0, #0xc]
	mov     r0, r4
	bl      Function_2220240
	mov     r5, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2225964
	ldr     r1, [sp, #0x4]
	str     r0, [r1, #0x10]
	ldr     r1, [r1, #0x0]
	add     r0, sp, #0x8
	bl      Function_222329c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_22258e0
	add     r1, sp, #0x8
	strh    r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22258e0
	add     r1, sp, #0x8
	ldr     r5, [sp, #0x4]
	strh    r0, [r1, #0x2]
	mov     r4, #0x0
.thumb
branch_22346f8: @ 22346f8 :thumb
	cmp     r4, #0x0
	add     r2, sp, #0x8
	bne     branch_2234712
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r0, [r5, #0x14]
	ldsh    r1, [r2, r1]
	mov     r3, r2
	mov     r2, #0x2
	ldsh    r2, [r3, r2]
	bl      Function_200d4c4
	b       branch_223471c
@ 0x2234712

.thumb
branch_2234712: @ 2234712 :thumb
	mov     r0, r7
	mov     r1, r6
	bl      Function_200ce6c
	str     r0, [r5, #0x14]
.thumb
branch_223471c: @ 223471c :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r5, #0x14]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	bl      Function_200d460
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_22346f8
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0xc] @ 0x223474c, (=#0x2234751)
	ldr     r0, [r0, #0x0]
	ldr     r2, [sp, #0x4]
	bl      Function_22201e8
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x223474c

.word 0x2234751 @ 0x223474c



.thumb
Function_2234750: @ 2234750 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x4
	bhi     branch_2234834
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r0, r6, #0
	lsl     r0, r2, #1
	lsl     r2, r0, #2
	lsl     r0, r5, #2
	mov     r2, r4
	ldr     r0, [r4, #0x14]
	ldr     r3, [r4, #0x10]
	add     r1, #0x1c
	add     r2, #0x64
	bl      Function_223483c
	mov     r1, r4
	mov     r2, r4
	ldr     r0, [r4, #0x14]
	add     r1, #0x1c
	add     r2, #0x64
	bl      Function_223489c
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x8
	str     r0, [r4, #0x8]
	b       branch_2234834
@ 0x223479a


.incbin "./baserom/overlay/overlay_0012.bin", 0x14b7a, 0x2234834 - 0x223479a


.thumb
branch_2234834: @ 2234834 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_200c7ec
	pop     {r3-r7,pc}
@ 0x223483c

.thumb
Function_223483c: @ 223483c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r5, r0
	mov     r1, #0x2
	mov     r7, r2
	mov     r4, r3
	bl      Function_200d6a4
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d3f4
	add     r1, sp, #0x8
	mov     r0, r5
	add     r1, #0x2
	add     r2, sp, #0x8
	bl      Function_200d550
	add     r1, sp, #0x8
	mov     r0, #0x0
	ldsh    r3, [r1, r0]
	mov     r0, #0x2
	ldsh    r1, [r1, r0]
	mov     r0, r3
	sub     r0, #0x20
	lsl     r0, r0, #16
	lsl     r2, r4, #4
	asr     r0, r0, #16
	add     r2, r1, r2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r6
	asr     r2, r2, #16
	bl      Function_2225bc8
	mov     r0, #0x20
	mov     r2, #0xa
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2225e68
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223489c


.thumb
Function_223489c: @ 223489c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	mov     r1, r5
	bl      Function_2225c50
	mov     r0, r4
	mov     r1, r5
	bl      Function_22260a8
	cmp     r0, #0x0
	beq     branch_22348ba
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_22348ba: @ 22348ba :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22348c6


.align 2, 0
.thumb
Function_22348c8: @ 22348c8 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x3c
	mov     r6, r0
	mov     r7, r2
	mov     r5, r3
	bl      Function_2235e50
	mov     r4, r0
	str     r6, [r4, #0x0]
	str     r7, [r4, #0xc]
	str     r5, [r4, #0x10]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x10]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r4, #0x10]
	bl      Function_200d43c
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2234914, (=#0x2234919)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r3-r7,pc}
@ 0x2234912

.align 2
.word 0x2234919 @ 0x2234914



.thumb
Function_2234918: @ 2234918 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x4
	bhi     branch_2234a04
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r0, r7, #0
	lsl     r6, r3, #1
	lsl     r4, r3, #2
	lsl     r0, r7, #2
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x14
	mov     r1, #0x0
	mov     r2, #0x10
	mov     r3, #0x14
	bl      Function_2226424
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d3f4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0x14
	bl      Function_2235780
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_2234a04
@ 0x223496c


.incbin "./baserom/overlay/overlay_0012.bin", 0x14d4c, 0x2234a04 - 0x223496c


.thumb
branch_2234a04: @ 2234a04 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2234a0e


.align 2, 0
.thumb
Function_2234a10: @ 2234a10 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r1, #0x54
	mov     r5, r0
	str     r3, [sp, #0xc]
	bl      Function_2235e50
	ldr     r1, [sp, #0x8]
	str     r5, [r0, #0x0]
	str     r0, [sp, #0x14]
	str     r1, [r0, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_2220240
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2225964
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x10]
	ldr     r1, [r1, #0x0]
	add     r0, sp, #0x18
	bl      Function_222329c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_22258e0
	add     r1, sp, #0x18
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_22258e0
	ldr     r7, [sp, #0x14]
	ldr     r6, [sp, #0x14]
	ldr     r5, [sp, #0x14]
	add     r1, sp, #0x18
	add     r7, #0x3c
	add     r6, #0x24
	strh    r0, [r1, #0x2]
	mov     r4, #0x5
	add     r5, #0x14
	add     r7, #0x14
	add     r6, #0x14
.thumb
branch_2234a74: @ 2234a74 :thumb
	cmp     r4, #0x5
	add     r2, sp, #0x18
	bne     branch_2234a8e
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	str     r0, [r5, #0xc]
	ldsh    r1, [r2, r1]
	mov     r3, r2
	mov     r2, #0x2
	ldsh    r2, [r3, r2]
	bl      Function_200d4c4
	b       branch_2234a98
@ 0x2234a8e

.thumb
branch_2234a8e: @ 2234a8e :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	bl      Function_200ce6c
	str     r0, [r5, #0xc]
.thumb
branch_2234a98: @ 2234a98 :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      Function_200d460
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [sp, #0x10]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r2, r7
	mov     r3, r4
	bl      Function_2234ae0
	.hword  0x1f2d @ sub r5, r5, #0x4
	.hword  0x1f3f @ sub r7, r7, #0x4
	.hword  0x1f36 @ sub r6, r6, #0x4
	.hword  0x1e64 @ sub r4, r4, #0x1
	bpl     branch_2234a74
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0xc] @ 0x2234adc, (=#0x2234b65)
	ldr     r0, [r0, #0x0]
	ldr     r2, [sp, #0x14]
	bl      Function_22201e8
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x2234ada

.align 2
.word 0x2234b65 @ 0x2234adc



.thumb
Function_2234ae0: @ 2234ae0 :thumb
	push    {r3-r7,lr}
	mov     r4, r3
	mov     r6, r1
	lsr     r1, r4, #31
	add     r1, r4, r1
	asr     r1, r1, #1
	mov     r5, r0
	mov     r7, r2
	bl      Function_200d364
	lsl     r0, r4, #1
	str     r0, [r7, #0x0]
	mov     r0, #0x10
	add     r1, sp, #0x0
	str     r0, [r6, #0x0]
	mov     r0, r5
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	mov     r1, #0x2
	mov     r6, r1
	add     r2, sp, #0x0
	sub     r6, #0xe
	mul     r6, r4
	ldr     r0, [sp, #0x18]
	ldsh    r3, [r2, r1]
	add     r6, #0x28
	mov     r4, r0
	mul     r4, r6
	add     r0, r3, r4
	mov     r3, #0x0
	strh    r0, [r2, #0x2]
	ldsh    r0, [r2, r3]
	add     r0, #0x28
	strh    r0, [r2, #0x0]
	ldsh    r1, [r2, r1]
	ldsh    r2, [r2, r3]
	mov     r0, r5
	bl      Function_200d4c4
	pop     {r3-r7,pc}
@ 0x2234b34


.thumb
Function_2234b34: @ 2234b34 :thumb
	push    {r3,lr}
	ldr     r3, [r2, #0x0]
	cmp     r3, #0x0
	ble     branch_2234b4a
	.hword  0x1e59 @ sub r1, r3, #0x1
	str     r1, [r2, #0x0]
	bne     branch_2234b60
	mov     r1, #0x1
	bl      Function_200d3f4
	b       branch_2234b60
@ 0x2234b4a

.thumb
branch_2234b4a: @ 2234b4a :thumb
	ldr     r2, [r1, #0x0]
	cmp     r2, #0x0
	ble     branch_2234b56
	.hword  0x1e50 @ sub r0, r2, #0x1
	str     r0, [r1, #0x0]
	b       branch_2234b60
@ 0x2234b56

.thumb
branch_2234b56: @ 2234b56 :thumb
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2234b60

.thumb
branch_2234b60: @ 2234b60 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2234b64

.thumb
Function_2234b64: @ 2234b64 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r1, #0x4]
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2234b76
	cmp     r0, #0x1
	beq     branch_2234ba8
	b       branch_2234bcc
@ 0x2234b76

.thumb
branch_2234b76: @ 2234b76 :thumb
	mov     r6, r1
	mov     r4, r1
	mov     r7, #0x0
	add     r6, #0x3c
	add     r4, #0x24
	mov     r5, r1
.thumb
branch_2234b82: @ 2234b82 :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, r4
	mov     r2, r6
	bl      Function_2234b34
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x6
	blt     branch_2234b82
	cmp     r0, #0x0
	beq     branch_2234bcc
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x4]
	b       branch_2234bcc
@ 0x2234ba8

.thumb
branch_2234ba8: @ 2234ba8 :thumb
	mov     r5, #0x0
	mov     r4, r1
.thumb
branch_2234bac: @ 2234bac :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_200d0f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x6
	blt     branch_2234bac
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x0]
	bl      Function_2220220
	ldr     r0, [sp, #0x0]
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x2234bcc

.thumb
branch_2234bcc: @ 2234bcc :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_200c7ec
	pop     {r3-r7,pc}
@ 0x2234bd6


.align 2, 0


.thumb
Function_2234bd8: @ 2234bd8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r7, #0x0
	mov     r6, r5
	str     r1, [sp, #0x10]
	add     r6, #0x30
	mov     r4, r7
.thumb
branch_2234be8: @ 2234be8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x32
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x28] @ 0x2234c28, (=#0x7fff)
	mov     r0, r6
	mov     r3, r1
	bl      Function_2225a5c
	ldr     r0, [r5, #0x38]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, r0, r4
	str     r0, [r5, #0x38]
	ldr     r1, [r5, #0x48]
	ldr     r0, [sp, #0x10]
	add     r6, #0x24
	mul     r0, r1
	str     r0, [r5, #0x48]
	ldr     r0, [pc, #0x10] @ 0x2234c2c, (=#0x2aaa)
	add     r5, #0x24
	add     r4, r4, r0
	cmp     r7, #0x6
	blt     branch_2234be8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2234c26


.align 2


.word 0x7fff @ 0x2234c28
.word 0x2aaa @ 0x2234c2c
.thumb
Function_2234c30: @ 2234c30 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x0
	mov     r7, r6
	str     r0, [sp, #0x0]
	add     r7, #0x30
	mov     r4, r6
	mov     r5, r6
.thumb
branch_2234c40: @ 2234c40 :thumb
	mov     r0, r7
	bl      Function_2225ae0
	mov     r1, #0x13
	lsl     r1, r1, #4
	mov     r2, #0x30
	ldsh    r1, [r6, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r5, #0x18]
	add     r1, r1, r2
	ldr     r2, [pc, #0x44] @ 0x2234c9c, (=#0x132)
	lsl     r1, r1, #16
	ldsh    r2, [r6, r2]
	asr     r1, r1, #16
	bl      Function_200d4c4
	ldr     r1, [r4, #0x38]
	ldr     r0, [pc, #0x3c] @ 0x2234ca0, (=#0x3fff)
	cmp     r1, r0
	blt     branch_2234c78
	ldr     r0, [pc, #0x38] @ 0x2234ca4, (=#0xbf49)
	cmp     r1, r0
	bgt     branch_2234c78
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_200d460
	b       branch_2234c88
@ 0x2234c78

.thumb
branch_2234c78: @ 2234c78 :thumb
	ldr     r0, [r6, #0x0]
	bl      Function_222339c
	mov     r1, r0
	ldr     r0, [r5, #0x18]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d460
.thumb
branch_2234c88: @ 2234c88 :thumb
	ldr     r0, [sp, #0x0]
	add     r7, #0x24
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x24
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x0]
	cmp     r0, #0x6
	blt     branch_2234c40
	pop     {r3-r7,pc}
@ 0x2234c9a


.align 2


.word 0x132 @ 0x2234c9c
.word 0x3fff @ 0x2234ca0
.word 0xbf49 @ 0x2234ca4
.thumb
Function_2234ca8: @ 2234ca8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x4
	bhi     branch_2234d8e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r7, #0
	lsl     r6, r3, #1
	lsl     r2, r1, #2
	lsl     r6, r4, #2
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	mov     r2, #0xf
	bl      Function_2235780
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	add     r0, #0xfe
	add     r0, r4, r0
	mov     r1, #0x1
	mov     r2, #0x10
	mov     r3, #0xf
	bl      Function_2226424
	ldr     r1, [r4, #0x14]
	mov     r0, r4
	bl      Function_2234bd8
	mov     r0, r4
	bl      Function_2234c30
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2234d8e
@ 0x2234d02


.incbin "./baserom/overlay/overlay_0012.bin", 0x150e2, 0x2234d8e - 0x2234d02


.thumb
branch_2234d8e: @ 2234d8e :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_200c7ec
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2234d98


.thumb
Function_2234d98: @ 2234d98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r1
	mov     r1, #0x4d
	lsl     r1, r1, #2
	mov     r4, r0
	str     r2, [sp, #0x0]
	mov     r7, r3
	bl      Function_2235e50
	mov     r6, r0
	str     r4, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	str     r5, [r6, #0x4]
	str     r0, [r6, #0x8]
	mov     r0, r4
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_22232fc
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_20080c0
	mov     r1, #0x13
	lsl     r1, r1, #4
	strh    r0, [r6, r1]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20080c0
	ldr     r1, [pc, #0x60] @ 0x2234e3c, (=#0x132)
	strh    r0, [r6, r1]
	add     r0, sp, #0x4
	mov     r1, r4
	bl      Function_222329c
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2234dea: @ 2234dea :thumb
	cmp     r4, #0x0
	bne     branch_2234df2
	str     r7, [r5, #0x18]
	b       branch_2234dfe
@ 0x2234df2

.thumb
branch_2234df2: @ 2234df2 :thumb
	ldr     r0, [r6, #0x4]
	ldr     r1, [r6, #0x8]
	add     r2, sp, #0x4
	bl      Function_200ce6c
	str     r0, [r5, #0x18]
.thumb
branch_2234dfe: @ 2234dfe :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, #0x64
	bl      Function_200d474
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_200d390
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2234dea
	ldr     r0, [r6, #0x0]
	bl      Function_2220240
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      Function_2225964
	str     r0, [r6, #0x14]
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2234e40, (=#0x2234ca9)
	mov     r2, r6
	bl      Function_22201e8
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2234e3c

.word 0x132 @ 0x2234e3c
.word 0x2234ca9 @ 0x2234e40
.thumb
Function_2234e44: @ 2234e44 :thumb
	strh    r1, [r0, #0xc]
	strh    r2, [r0, #0xe]
	bx      lr
@ 0x2234e4a


.align 2, 0


.thumb
Function_2234e4c: @ 2234e4c :thumb
	strh    r1, [r0, #0x14]
	strh    r2, [r0, #0x16]
	bx      lr
@ 0x2234e52


.align 2, 0
.thumb
Function_2234e54: @ 2234e54 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r4, r1
	bl      Function_221fde4
	mov     r6, r0
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x3
	bl      Function_2223428
	mov     r1, r0
	lsl     r0, r4, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	lsl     r2, r1, #4
	ldr     r1, [pc, #0x54] @ 0x2234ee4, (=#0x223a1d8)
	mov     r3, r4
	ldr     r1, [r1, r2]
	ldr     r2, [r5, #0x2c]
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	str     r0, [sp, #0x8]
	ldr     r2, [r5, #0x4]
	ldr     r0, [r5, #0x30]
	lsl     r3, r2, #4
	ldr     r2, [pc, #0x3c] @ 0x2234ee8, (=#0x223a1dc)
	ldr     r1, [r5, #0x0]
	ldr     r2, [r2, r3]
	mov     r3, r6
	bl      Function_2003050
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x2c]
	lsr     r1, r1, #24
	bl      Function_2019ebc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	lsl     r2, r1, #4
	ldr     r1, [pc, #0x18] @ 0x2234eec, (=#0x223a1e0)
	mov     r3, r4
	ldr     r1, [r1, r2]
	ldr     r2, [r5, #0x2c]
	bl      Function_2006e60
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2234ee2


.align 2


.word 0x223a1d8 @ 0x2234ee4
.word 0x223a1dc @ 0x2234ee8
.word 0x223a1e0 @ 0x2234eec
.thumb
Function_2234ef0: @ 2234ef0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x18]
	cmp     r0, #0x3
	bhi     branch_2234fac
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r6, r2, #0
	lsl     r6, r5, #0
	lsl     r6, r1, #1
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2234e54
	ldrb    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x18]
	b       branch_2234ffa
@ 0x2234f20


.incbin "./baserom/overlay/overlay_0012.bin", 0x15300, 0x2234fac - 0x2234f20


.thumb
branch_2234fac: @ 2234fac :thumb
	ldr     r0, [pc, #0xa0] @ 0x2235050, (=#0x400004a)
	mov     r1, #0x3f
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1f
	orr     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x94] @ 0x2235054, (=#0xffffc0ff)
	lsl     r1, r1, #8
	and     r2, r3
	orr     r1, r2
	strh    r1, [r0, #0x0]
	mov     r2, #0x0
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x70] @ 0x2235058, (=#0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x1c]
	mov     r1, r5
	bl      Function_2220220
	mov     r0, r4
	bl      Function_2235e80
	pop     {r3-r5,pc}
@ 0x2234ffa

.thumb
branch_2234ffa: @ 2234ffa :thumb
	mov     r3, #0x10
	mov     r0, #0xc
	ldsh    r1, [r4, r3]
	ldsh    r0, [r4, r0]
	mov     r2, #0x0
	add     r0, r1, r0
	strh    r0, [r4, #0x10]
	mov     r0, #0x12
	ldsh    r1, [r4, r0]
	mov     r0, #0xe
	ldsh    r0, [r4, r0]
	add     r0, r1, r0
	strh    r0, [r4, #0x12]
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x2
	bl      Function_2019184
	mov     r3, #0x12
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_2019184
	ldr     r0, [r4, #0x34]
	bl      Function_200d330
	ldr     r0, [r4, #0x38]
	bl      Function_200d330
	ldr     r0, [r4, #0x3c]
	bl      Function_200d330
	ldr     r0, [r4, #0x24]
	bl      Function_200c7ec
	pop     {r3-r5,pc}
@ 0x2235046


.incbin "./baserom/overlay/overlay_0012.bin", 0x15426, 0x2235050 - 0x2235046


.word 0x400004a @ 0x2235050
.word 0xffffc0ff @ 0x2235054
.word 0xffff1fff @ 0x2235058



.thumb
Function_223505c: @ 223505c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x7
	str     r1, [r4, #0x0]
	mov     r5, r0
	mov     r1, #0x0
	bl      Function_2220280
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2220280
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x223507a


.align 2, 0


.thumb
Function_223507c: @ 223507c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r1, #0x44
	mov     r6, r0
	bl      Function_2235e50
	mov     r4, r0
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	bl      Function_223595c
	mov     r2, r4
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_22202c0
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_22202c0
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_22202c0
	str     r0, [r4, #0x3c]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_2223428
	ldr     r0, [r4, #0x34]
	mov     r1, #0x2
	bl      Function_200d460
	ldr     r0, [r4, #0x38]
	mov     r1, #0x2
	bl      Function_200d460
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_22350e6
	mov     r0, r6
	bl      Function_2220240
	b       branch_22350ec
@ 0x22350e6

.thumb
branch_22350e6: @ 22350e6 :thumb
	mov     r0, r6
	bl      Function_2220248
.thumb
branch_22350ec: @ 22350ec :thumb
	mov     r1, r0
	mov     r0, r6
	bl      Function_2235254
	mov     r5, r0
	mov     r0, r6
	bl      Function_221fdd4
	cmp     r0, #0x1
	bne     branch_2235124
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_2223428
	mov     r5, r0
	ldr     r0, [r4, #0x34]
	mov     r1, r5
	bl      Function_200d460
	ldr     r0, [r4, #0x38]
	mov     r1, r5
	bl      Function_200d460
	b       branch_2235148
@ 0x2235124

.thumb
branch_2235124: @ 2235124 :thumb
	cmp     r5, #0x1
	bhi     branch_2235132
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	bl      Function_200d3f4
	b       branch_2235148
@ 0x2235132

.thumb
branch_2235132: @ 2235132 :thumb
	.hword  0x1ee8 @ sub r0, r5, #0x3
	cmp     r0, #0x1
	ldr     r0, [r4, #0x3c]
	bhi     branch_2235142
	mov     r1, #0x3
	bl      Function_200d460
	b       branch_2235148
@ 0x2235142

.thumb
branch_2235142: @ 2235142 :thumb
	mov     r1, #0x1
	bl      Function_200d460
.thumb
branch_2235148: @ 2235148 :thumb
	ldr     r0, [pc, #0x48] @ 0x2235194, (=#0x400004a)
	ldr     r1, [pc, #0x4c] @ 0x2235198, (=#0xffffc0ff)
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x16
	lsl     r1, r1, #8
	orr     r2, r1
	lsr     r1, r0, #13
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x3f
	bic     r2, r1
	mov     r1, #0x1b
	orr     r2, r1
	mov     r1, #0x20
	orr     r2, r1
	strh    r2, [r0, #0x0]
	lsl     r3, r1, #21
	ldr     r2, [r3, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223519c, (=#0xffff1fff)
	and     r2, r0
	lsl     r0, r1, #10
	orr     r0, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x38]
	mov     r1, #0x2
	bl      Function_200d810
	mov     r0, #0x0
	strh    r0, [r4, #0x10]
	strh    r0, [r4, #0x12]
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x14] @ 0x22351a0, (=#0x2234ef1)
	mov     r2, r4
	bl      Function_22201e8
	pop     {r4-r6,pc}
@ 0x2235194

.word 0x400004a @ 0x2235194
.word 0xffffc0ff @ 0x2235198
.word 0xffff1fff @ 0x223519c
.word 0x2234ef1 @ 0x22351a0
.thumb
Function_22351a4: @ 22351a4 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	add     r1, sp, #0x0
	mov     r4, r0
	bl      Function_223505c
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x3
	bl      Function_2234e44
	add     r0, sp, #0x0
	mov     r1, #0xc
	mov     r2, #0x4
	bl      Function_2234e4c
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_223507c
	add     sp, #0x18
	pop     {r4,pc}
@ 0x22351d0

.thumb
Function_22351d0: @ 22351d0 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	add     r1, sp, #0x0
	mov     r4, r0
	bl      Function_223505c
	mov     r1, #0x0
	add     r0, sp, #0x0
	.hword  0x1eca @ sub r2, r1, #0x3
	bl      Function_2234e44
	add     r0, sp, #0x0
	mov     r1, #0xc
	mov     r2, #0x4
	bl      Function_2234e4c
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_223507c
	add     sp, #0x18
	pop     {r4,pc}
@ 0x22351fc

.thumb
Function_22351fc: @ 22351fc :thumb
	push    {r4,lr}
	add     sp, #-0x18
	add     r1, sp, #0x0
	mov     r4, r0
	bl      Function_223505c
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x3
	bl      Function_2234e44
	add     r0, sp, #0x0
	mov     r1, #0xc
	mov     r2, #0x4
	bl      Function_2234e4c
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_223507c
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2235228

.thumb
Function_2235228: @ 2235228 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	add     r1, sp, #0x0
	mov     r4, r0
	bl      Function_223505c
	mov     r1, #0x0
	add     r0, sp, #0x0
	.hword  0x1f8a @ sub r2, r1, #0x6
	bl      Function_2234e44
	add     r0, sp, #0x0
	mov     r1, #0xc
	mov     r2, #0x4
	bl      Function_2234e4c
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_223507c
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2235254

.thumb
Function_2235254: @ 2235254 :thumb
	ldr     r3, [pc, #0x0] @ 0x2235258, (=#0x22232b9)
	bx      r3
@ 0x2235258

.word Function_22232b8+1 @ =0x22232b9, 0x2235258
.thumb
Function_223525c: @ 223525c :thumb
	push    {r4,lr}
	bl      Function_22232b8
	cmp     r0, #0x5
	bhi     branch_2235284
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	mov     r4, #0x3
	b       branch_2235284
@ 0x2235282


.incbin "./baserom/overlay/overlay_0012.bin", 0x15662, 0x2235284 - 0x2235282


.thumb
branch_2235284: @ 2235284 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x2235288

.thumb
Function_2235288: @ 2235288 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_2235290: @ 2235290 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_22232b8
	cmp     r0, r5
	bne     branch_22352a0
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x22352a0

.thumb
branch_22352a0: @ 22352a0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2235290
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22352aa


.align 2, 0


.thumb
Function_22352ac: @ 22352ac :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_22232b8
	mov     r5, r0
	cmp     r5, #0x1
	bls     branch_223530c
	mov     r4, #0x0
.thumb
branch_22352bc: @ 22352bc :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_22232b8
	cmp     r5, #0x5
	bhi     branch_2235300
	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r5, #0
	lsl     r2, r5, #0
	lsl     r2, r1, #0
	lsl     r2, r3, #0
	lsl     r2, r2, #0
	lsl     r2, r4, #0
	cmp     r0, #0x4
	bne     branch_2235300
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x22352e8


.incbin "./baserom/overlay/overlay_0012.bin", 0x156c8, 0x2235300 - 0x22352e8


.thumb
branch_2235300: @ 2235300 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_22352bc
	bl      Function_2022974
	mov     r0, r5
.thumb
branch_223530c: @ 223530c :thumb
	pop     {r4-r6,pc}
@ 0x223530e


.align 2, 0


.thumb
Function_2235310: @ 2235310 :thumb
	push    {r3,lr}
	cmp     r0, #0x5
	bhi     branch_2235346
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	lsl     r6, r2, #0
	lsl     r2, r3, #0
	lsl     r6, r3, #0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2235332


.incbin "./baserom/overlay/overlay_0012.bin", 0x15712, 0x2235346 - 0x2235332


.thumb
branch_2235346: @ 2235346 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223534e


.align 2, 0


.thumb
Function_2235350: @ 2235350 :thumb
	push    {r3-r6}
	add     sp, #-0x30
	ldr     r6, [pc, #0x4c] @ 0x22353a4, (=#0x223a230)
	add     r5, sp, #0x18
	mov     r4, #0xc
.thumb
branch_223535a: @ 223535a :thumb
	ldrh    r3, [r6, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	strh    r3, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_223535a
	ldr     r6, [pc, #0x40] @ 0x22353a8, (=#0x223a248)
	add     r5, sp, #0x0
	mov     r4, #0xc
.thumb
branch_223536c: @ 223536c :thumb
	ldrh    r3, [r6, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	strh    r3, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_223536c
	cmp     r1, #0x0
	beq     branch_2235390
	lsl     r3, r0, #2
	add     r0, sp, #0x0
	add     r1, r0, r3
	ldrh    r0, [r0, r3]
	add     sp, #0x30
	strh    r0, [r2, #0x0]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r2, #0x2]
	pop     {r3-r6}
	bx      lr
@ 0x2235390

.thumb
branch_2235390: @ 2235390 :thumb
	lsl     r3, r0, #2
	add     r0, sp, #0x18
	add     r1, r0, r3
	ldrh    r0, [r0, r3]
	strh    r0, [r2, #0x0]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r2, #0x2]
	add     sp, #0x30
	pop     {r3-r6}
	bx      lr
@ 0x22353a4

.word 0x223a230 @ 0x22353a4
.word 0x223a248 @ 0x22353a8
.thumb
Function_22353ac: @ 22353ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_2235254
	mov     r6, r0
	mov     r0, r5
	bl      Function_221fdd4
	mov     r1, r0
	mov     r0, r6
	mov     r2, r4
	bl      Function_2235350
	pop     {r4-r6,pc}
@ 0x22353ca


.align 2, 0


.thumb
Function_22353cc: @ 22353cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1fc
	add     sp, #-0x1fc
	add     sp, #-0x1fc
	add     sp, #-0x1fc
	add     sp, #-0x114
	mov     r7, r2
	mov     r2, #0x12
	str     r3, [sp, #0x0]
	ldr     r6, [pc, #0x60] @ 0x2235440, (=#0x223a260)
	mov     r5, r0
	mov     r4, r1
	add     r3, sp, #0x4
	lsl     r2, r2, #4
.thumb
branch_22353e8: @ 22353e8 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22353e8
	cmp     r7, #0x1
	bne     branch_223540a
	cmp     r5, #0x0
	beq     branch_22353fe
	cmp     r5, #0x1
	beq     branch_2235402
	b       branch_2235406
@ 0x22353fe

.thumb
branch_22353fe: @ 22353fe :thumb
	mov     r5, #0x6
	b       branch_223540a
@ 0x2235402

.thumb
branch_2235402: @ 2235402 :thumb
	mov     r5, #0x7
	b       branch_223540a
@ 0x2235406

.thumb
branch_2235406: @ 2235406 :thumb
	bl      Function_2022974
.thumb
branch_223540a: @ 223540a :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	add     r1, sp, #0x4
	mul     r0, r5
	add     r0, r1, r0
	ldr     r1, [pc, #0x2c] @ 0x2235444, (=#0x908)
	add     r1, sp
	ldr     r1, [r1, #0x10]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x0]
	add     r2, r1, r2
	mov     r1, #0xc
	mov     r3, r2
	mul     r3, r1
	add     r1, r0, r3
	ldr     r2, [r1, #0x8]
	ldr     r1, [r1, #0x4]
	ldr     r0, [r0, r3]
	str     r0, [r4, #0x0]
	str     r1, [r4, #0x4]
	str     r2, [r4, #0x8]
	add     sp, #0x1fc
	add     sp, #0x1fc
	add     sp, #0x1fc
	add     sp, #0x1fc
	add     sp, #0x114
	pop     {r4-r7,pc}
@ 0x2235440

.word 0x223a260 @ 0x2235440
.word 0x908 @ 0x2235444
.thumb
Function_2235448: @ 2235448 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	bl      Function_22353cc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2235458


.incbin "./baserom/overlay/overlay_0012.bin", 0x15838, 0x22354e8 - 0x2235458


.thumb
Function_22354e8: @ 22354e8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, #0xa
	str     r4, [sp, #0x0]
	bl      Function_22353cc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22354f8


.incbin "./baserom/overlay/overlay_0012.bin", 0x158d8, 0x2235508 - 0x22354f8


.thumb
Function_2235508: @ 2235508 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r6, r2
	bl      Function_2220250
	bl      Function_2014790
	mov     r7, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2235254
	mov     r5, r0
	mov     r0, r4
	bl      Function_221fdd4
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, r7
	bl      Function_2235448
	pop     {r3-r7,pc}
@ 0x2235538


.incbin "./baserom/overlay/overlay_0012.bin", 0x15918, 0x22356e8 - 0x2235538


.thumb
Function_22356e8: @ 22356e8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r6, r2
	bl      Function_2220250
	bl      Function_2014790
	mov     r7, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2235254
	mov     r5, r0
	mov     r0, r4
	bl      Function_221fdd4
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, r7
	bl      Function_22354e8
	pop     {r3-r7,pc}
@ 0x2235718


.incbin "./baserom/overlay/overlay_0012.bin", 0x15af8, 0x2235748 - 0x2235718


.thumb
Function_2235748: @ 2235748 :thumb
	mov     r2, #0x0
	ldr     r1, [pc, #0x8] @ 0x2235754, (=#0x68d0)
	str     r2, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r2, [r0, #0x8]
	bx      lr
@ 0x2235754

.word 0x68d0 @ 0x2235754

.incbin "./baserom/overlay/overlay_0012.bin", 0x15b38, 0x2235760 - 0x2235758


.thumb
Function_2235760: @ 2235760 :thumb
	push    {r3,lr}
	mov     r3, r1
	cmp     r0, #0x0
	bne     branch_2235770
	mov     r0, r3
	bl      Function_2014770
	pop     {r3,pc}
@ 0x2235770

.thumb
branch_2235770: @ 2235770 :thumb
	ldr     r2, [pc, #0x8] @ 0x223577c, (=#0x223a224)
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	pop     {r3,pc}
@ 0x223577c

.word 0x223a224 @ 0x223577c
.thumb
Function_2235780: @ 2235780 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x0
	mvn     r1, r1
	mov     r4, r2
	cmp     r5, r1
	bne     branch_2235790
	mov     r5, #0x1a
branch_2235790: @ 2235790 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r4, r1
	bne     branch_223579a
	mov     r4, #0x5
branch_223579a: @ 223579a :thumb
	mov     r1, #0x2
	bl      Function_22233ec
	mov     r1, #0x1
	mov     r2, r1
	lsl     r2, r0
	orr     r2, r1
	ldr     r0, [pc, #0xc] @ 0x22357b8, (=#0x4000050)
	mov     r1, #0x0
	mov     r3, r5
	str     r4, [sp, #0x0]
	blx     Function_20bf55c
	pop     {r3-r5,pc}
@ 0x22357b6

.align 2
.word 0x4000050 @ 0x22357b8



.thumb
Function_22357bc: @ 22357bc :thumb
	push    {r3-r5,lr}
	mov     r0, #0x0
	mov     r4, r2
	mvn     r0, r0
	mov     r5, r1
	cmp     r4, r0
	bne     branch_22357cc
	mov     r4, #0x1a
branch_22357cc: @ 22357cc :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r3, r0
	bne     branch_22357d6
	mov     r3, #0x5
branch_22357d6: @ 22357d6 :thumb
	ldr     r0, [pc, #0x10] @ 0x22357e8, (=#0x4000050)
	str     r3, [sp, #0x0]
	mov     r1, #0x0
	mov     r2, r5
	mov     r3, r4
	blx     Function_20bf55c
	pop     {r3-r5,pc}
@ 0x22357e6

.align 2
.word 0x4000050 @ 0x22357e8



.thumb
Function_22357ec: @ 22357ec :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x0
	mov     r5, r1
	mvn     r0, r0
	mov     r4, r2
	cmp     r5, r0
	bne     branch_22357fe
	mov     r5, #0x1a
branch_22357fe: @ 22357fe :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2235808
	mov     r4, #0x5
branch_2235808: @ 2235808 :thumb
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_22233ec
	mov     r1, #0x1
	mov     r2, r1
	lsl     r2, r0
	mov     r0, #0x11
	mov     r7, r2
	orr     r7, r0
	mov     r0, r6
	bl      Function_22233ec
	mov     r1, #0x1
	lsl     r1, r0
	ldr     r0, [pc, #0xc] @ 0x2235834, (=#0x4000050)
	mov     r2, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	blx     Function_20bf55c
	pop     {r3-r7,pc}
@ 0x2235834

.word 0x4000050 @ 0x2235834



.thumb
Function_2235838: @ 2235838 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r1, #0x0
	bne     branch_223588c
	mov     r1, #0x1
	bl      Function_22233ec
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_22233ec
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_22233ec
	mov     r2, r0
	mov     r0, #0x1
	mov     r3, r0
	mov     r1, r0
	lsl     r3, r7
	lsl     r0, r2
	lsl     r1, r6
	orr     r0, r3
	orr     r1, r0
	mov     r0, #0x11
	mov     r2, r1
	orr     r2, r0
	ldr     r0, [pc, #0x94] @ 0x223590c, (=#0x4000048)
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x3f
	bic     r1, r0
	orr     r1, r2
	cmp     r4, #0x0
	beq     branch_2235886
	mov     r0, #0x20
	orr     r1, r0
branch_2235886: @ 2235886 :thumb
	ldr     r0, [pc, #0x84] @ 0x223590c, (=#0x4000048)
	strh    r1, [r0, #0x0]
	b       branch_22358d6

branch_223588c: @ 223588c :thumb
	mov     r1, #0x1
	bl      Function_22233ec
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_22233ec
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_22233ec
	mov     r2, r0
	mov     r0, #0x1
	mov     r3, r0
	mov     r1, r0
	lsl     r0, r2
	lsl     r3, r7
	lsl     r1, r6
	orr     r0, r3
	orr     r1, r0
	ldr     r2, [pc, #0x50] @ 0x223590c, (=#0x4000048)
	mov     r3, r1
	mov     r0, #0x11
	orr     r3, r0
	ldrh    r1, [r2, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x2235910, (=#0xffffc0ff)
	and     r1, r0
	lsl     r0, r3, #8
	orr     r1, r0
	cmp     r4, #0x0
	beq     branch_22358d2
	lsr     r0, r2, #13
	orr     r1, r0
branch_22358d2: @ 22358d2 :thumb
	ldr     r0, [pc, #0x38] @ 0x223590c, (=#0x4000048)
	strh    r1, [r0, #0x0]
branch_22358d6: @ 22358d6 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_22233ec
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22233ec
	mov     r1, #0x1
	mov     r2, r1
	lsl     r1, r0
	lsl     r2, r4
	orr     r1, r2
	mov     r3, r1
	ldr     r1, [pc, #0x1c] @ 0x2235914, (=#0x400004a)
	mov     r0, #0x11
	orr     r3, r0
	ldrh    r2, [r1, #0x0]
	mov     r0, #0x3f
	bic     r2, r0
	orr     r2, r3
	mov     r0, #0x20
	orr     r0, r2
	strh    r0, [r1, #0x0]
	pop     {r3-r7,pc}
@ 0x223590a

.align 2
.word 0x4000048 @ 0x223590c
.word 0xffffc0ff @ 0x2235910
.word 0x400004a @ 0x2235914



.thumb
Function_2235918: @ 2235918 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_223592a
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	strh    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x223592a

.thumb
branch_223592a: @ 223592a :thumb
	bl      Function_2008b38
	cmp     r0, #0x0
	bne     branch_223593a
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	strh    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x223593a

.thumb
branch_223593a: @ 223593a :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_20080c0
	strh    r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20080c0
	strh    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x2235950

.thumb
Function_2235950: @ 2235950 :thumb
	ldr     r3, [pc, #0x4] @ 0x2235958, (=#Function_200d550+1)
	add     r2, r1, #0x2
	bx      r3
@ 0x2235956

.align 2
.word Function_200d550+1 @ 0x2235958



.thumb
Function_223595c: @ 223595c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x0
	strb    r1, [r4, #0x0]
	strb    r1, [r4, #0x1]
	strb    r1, [r4, #0x2]
	mov     r5, r0
	strb    r1, [r4, #0x3]
	str     r5, [r4, #0x4]
	bl      Function_2220308
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_22202ec
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_2220300
	str     r0, [r4, #0x10]
	mov     r0, r5
	bl      Function_2220278
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_222332c
	str     r0, [r4, #0x18]
	pop     {r3-r5,pc}
@ 0x2235996


.align 2, 0


.thumb
Function_2235998: @ 2235998 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r1
	mov     r4, r3
	mov     r1, #0x0
	str     r1, [r4, #0x0]
	mov     r1, #0x40
	and     r1, r7
	mov     r6, r0
	mov     r5, r2
	cmp     r1, #0x40
	beq     branch_22359b2
	b       branch_2235ad4
@ 0x22359b2

.thumb
branch_22359b2: @ 22359b2 :thumb
	bl      Function_2220240
	mov     r7, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_22232fc
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	beq     branch_22359f4
	str     r7, [r1, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22359f4: @ 22359f4 :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_22352ac
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	bl      Function_22232fc
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2235a3c
	ldr     r1, [sp, #0x4]
	str     r1, [r0, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235a3c: @ 2235a3c :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_22232b8
	bl      Function_2235310
	mov     r1, r0
	mov     r0, r6
	bl      Function_2235288
	mov     r7, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_22232fc
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	beq     branch_2235a8e
	str     r7, [r1, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235a8e: @ 2235a8e :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_22352ac
	mov     r7, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_22232fc
	ldr     r2, [r4, #0x0]
	mov     r1, #0x14
	mov     r3, r2
	mul     r3, r1
	add     r2, r5, r3
	str     r0, [r2, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r2, r0
	mul     r2, r1
	add     r2, r5, r2
	ldr     r0, [r2, #0x8]
	cmp     r0, #0x0
	beq     branch_2235bb6
	str     r7, [r2, #0x10]
	ldr     r0, [r4, #0x0]
	mul     r1, r0
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2235ad4

.thumb
branch_2235ad4: @ 2235ad4 :thumb
	mov     r1, #0x20
	and     r1, r7
	cmp     r1, #0x20
	bne     branch_2235bd4
	bl      Function_2220240
	mov     r7, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_22352ac
	str     r0, [sp, #0x8]
	cmp     r0, r7
	beq     branch_2235b2e
	ldr     r1, [sp, #0x8]
	mov     r0, r6
	bl      Function_22232fc
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2235b2e
	ldr     r1, [sp, #0x8]
	str     r1, [r0, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235b2e: @ 2235b2e :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_22232b8
	bl      Function_2235310
	mov     r1, r0
	mov     r0, r6
	bl      Function_2235288
	str     r0, [sp, #0x0]
	cmp     r0, r7
	beq     branch_2235b86
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      Function_22232fc
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2235b86
	ldr     r1, [sp, #0x0]
	str     r1, [r0, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235b86: @ 2235b86 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      Function_22352ac
	str     r0, [sp, #0xc]
	cmp     r0, r7
	beq     branch_2235bb6
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	bl      Function_22232fc
	ldr     r2, [r4, #0x0]
	mov     r1, #0x14
	mov     r3, r2
	mul     r3, r1
	add     r2, r5, r3
	str     r0, [r2, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r2, r0
	mul     r2, r1
	add     r2, r5, r2
	ldr     r0, [r2, #0x8]
	cmp     r0, #0x0
	bne     branch_2235bb8
.thumb
branch_2235bb6: @ 2235bb6 :thumb
	b       branch_2235d6e
@ 0x2235bb8

.thumb
branch_2235bb8: @ 2235bb8 :thumb
	ldr     r0, [sp, #0xc]
	str     r0, [r2, #0x10]
	ldr     r0, [r4, #0x0]
	mul     r1, r0
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2235bd4

.thumb
branch_2235bd4: @ 2235bd4 :thumb
	mov     r1, #0x2
	and     r1, r7
	cmp     r1, #0x2
	bne     branch_2235c2e
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232fc
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2235c2e
	mov     r0, r6
	bl      Function_2220240
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235c2e: @ 2235c2e :thumb
	mov     r0, r6
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_2235ca4
	mov     r0, #0x4
	and     r0, r7
	cmp     r0, #0x4
	bne     branch_2235ca4
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_22352ac
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232fc
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2235ca4
	mov     r0, r6
	bl      Function_2220240
	mov     r1, r0
	mov     r0, r6
	bl      Function_22352ac
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235ca4: @ 2235ca4 :thumb
	mov     r0, #0x8
	and     r0, r7
	cmp     r0, #0x8
	bne     branch_2235d00
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232fc
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2235d00
	mov     r0, r6
	bl      Function_2220248
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235d00: @ 2235d00 :thumb
	mov     r0, r6
	bl      Function_2223364
	cmp     r0, #0x1
	bne     branch_2235d6e
	mov     r0, #0x10
	and     r0, r7
	cmp     r0, #0x10
	bne     branch_2235d6e
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r6
	bl      Function_22352ac
	mov     r1, r0
	mov     r0, r6
	bl      Function_22232fc
	ldr     r2, [r4, #0x0]
	mov     r1, #0x14
	mov     r3, r2
	mul     r3, r1
	add     r2, r5, r3
	str     r0, [r2, #0x8]
	ldr     r0, [r4, #0x0]
	mul     r1, r0
	add     r0, r5, r1
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2235d6e
	mov     r0, r6
	bl      Function_2220248
	mov     r1, r0
	mov     r0, r6
	bl      Function_22352ac
	ldr     r2, [r4, #0x0]
	mov     r1, #0x14
	mov     r3, r2
	mul     r3, r1
	add     r2, r5, r3
	str     r0, [r2, #0x10]
	ldr     r0, [r4, #0x0]
	mul     r1, r0
	add     r1, r5, r1
	ldr     r0, [r1, #0x8]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235918
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235d6e: @ 2235d6e :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2235d72


.align 2, 0


.thumb
Function_2235d74: @ 2235d74 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r3
	mov     r1, #0x0
	str     r1, [r4, #0x0]
	mov     r1, #0x2
	and     r1, r6
	mov     r7, r0
	mov     r5, r2
	cmp     r1, #0x2
	bne     branch_2235db4
	ldr     r1, [r4, #0x0]
	bl      Function_22202c0
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0xc]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235950
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235db4: @ 2235db4 :thumb
	mov     r0, #0x4
	and     r0, r6
	cmp     r0, #0x4
	bne     branch_2235de8
	ldr     r1, [r4, #0x0]
	mov     r0, r7
	bl      Function_22202c0
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0xc]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235950
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235de8: @ 2235de8 :thumb
	mov     r0, #0x8
	and     r0, r6
	cmp     r0, #0x8
	bne     branch_2235e1c
	ldr     r1, [r4, #0x0]
	mov     r0, r7
	bl      Function_22202c0
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r3, #0x14
	mov     r1, r0
	mul     r1, r3
	add     r0, r5, r1
	str     r2, [r0, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r1, r5, r1
	ldr     r0, [r1, #0xc]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235950
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235e1c: @ 2235e1c :thumb
	mov     r0, #0x10
	and     r0, r6
	cmp     r0, #0x10
	bne     branch_2235e4c
	ldr     r1, [r4, #0x0]
	mov     r0, r7
	bl      Function_22202c0
	ldr     r2, [r4, #0x0]
	mov     r1, #0x14
	mov     r3, r2
	mul     r3, r1
	add     r2, r5, r3
	str     r0, [r2, #0xc]
	ldr     r0, [r4, #0x0]
	mul     r1, r0
	add     r1, r5, r1
	ldr     r0, [r1, #0xc]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2235950
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2235e4c: @ 2235e4c :thumb
	pop     {r3-r7,pc}
@ 0x2235e4e


.align 2, 0


.thumb
Function_2235e50: @ 2235e50 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	cmp     r4, #0x0
	bne     branch_2235e5e
	bl      Function_2022974
.thumb
branch_2235e5e: @ 2235e5e :thumb
	mov     r0, r4
	bl      Function_221fde4
	mov     r1, r5
	bl      Function_2018144
	mov     r4, r0
	bne     branch_2235e72
	bl      Function_2022974
.thumb
branch_2235e72: @ 2235e72 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r5
	blx     Function_20d5124
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2235e80


.thumb
Function_2235e80: @ 2235e80 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2235e8a
	bl      Function_2022974
branch_2235e8a: @ 2235e8a :thumb
	mov     r0, r4
	bl      Function_20181c4
	pop     {r4,pc}
@ 0x2235e92


.align 2, 0
.thumb
Function_2235e94: @ 2235e94 :thumb
	cmp     r0, #0x1
	blt     branch_2235e9e
	ldr     r1, [pc, #0x10] @ 0x2235eac, (=#0x113)
	cmp     r0, r1
	ble     branch_2235ea2
.thumb
branch_2235e9e: @ 2235e9e :thumb
	mov     r0, #0x4
	b       branch_2235ea8
@ 0x2235ea2

.thumb
branch_2235ea2: @ 2235ea2 :thumb
	cmp     r0, #0xff
	blt     branch_2235ea8
	sub     r0, #0xff
.thumb
branch_2235ea8: @ 2235ea8 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	bx      lr
@ 0x2235eac

.word 0x113 @ 0x2235eac
.thumb
Function_2235eb0: @ 2235eb0 :thumb
	push    {r3-r5}
	add     sp, #-0x2c
	ldr     r5, [pc, #0x34] @ 0x2235eec, (=#0x223ac0c)
	mov     r2, r0
	add     r4, sp, #0x0
	mov     r3, #0x5
.thumb
branch_2235ebc: @ 2235ebc :thumb
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_2235ebc
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	mov     r3, r0
	add     r4, sp, #0x0
.thumb
branch_2235ece: @ 2235ece :thumb
	ldr     r1, [r4, #0x0]
	cmp     r2, r1
	bne     branch_2235edc
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r3-r5}
	bx      lr
@ 0x2235edc

.thumb
branch_2235edc: @ 2235edc :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r3, #0xb
	bcc     branch_2235ece
	add     sp, #0x2c
	pop     {r3-r5}
	bx      lr
@ 0x2235eea


.incbin "./baserom/overlay/overlay_0012.bin", 0x162ca, 0x2235eec - 0x2235eea


.word 0x223ac0c @ 0x2235eec

.incbin "./baserom/overlay/overlay_0012.bin", 0x162d0, 0x2235f8c - 0x2235ef0


.thumb
Function_2235f8c: @ 2235f8c :thumb
	push    {r3,lr}
	bl      Function_2235e94
	mov     r1, #0xc
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x2235f9c, (=#0x223ae10)
	ldr     r0, [r0, r1]
	pop     {r3,pc}
@ 0x2235f9c

.word 0x223ae10 @ 0x2235f9c
.thumb
Function_2235fa0: @ 2235fa0 :thumb
	push    {r3,lr}
	bl      Function_2235e94
	mov     r1, #0xc
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x2235fb0, (=#0x223ae18)
	ldr     r0, [r0, r1]
	pop     {r3,pc}
@ 0x2235fb0

.word 0x223ae18 @ 0x2235fb0

.incbin "./baserom/overlay/overlay_0012.bin", 0x16394, 0x2236690 - 0x2235fb4


.thumb
Function_2236690: @ 2236690 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r1, #0x24
	bl      Function_2018144
	mov     r4, r0
	bne     branch_22366a4
	bl      Function_2022974
.thumb
branch_22366a4: @ 22366a4 :thumb
	ldmia   r5!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_22366c8
	ldr     r0, [pc, #0x30] @ 0x22366ec, (=#0x113)
	bl      Function_2235f8c
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0x28] @ 0x22366ec, (=#0x113)
	bl      Function_2235fa0
	b       branch_22366d6
@ 0x22366c8

.thumb
branch_22366c8: @ 22366c8 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2235f8c
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x4]
	bl      Function_2235fa0
.thumb
branch_22366d6: @ 22366d6 :thumb
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0x20]
	mov     r1, #0x63
	mov     r3, #0x0
	bl      Function_2223818
	str     r0, [r4, #0x18]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22366ea


.incbin "./baserom/overlay/overlay_0012.bin", 0x16aca, 0x22366ec - 0x22366ea


.word 0x113 @ 0x22366ec

.incbin "./baserom/overlay/overlay_0012.bin", 0x16ad0, 0x2236788 - 0x22366f0


.thumb
Function_2236788: @ 2236788 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_223679c
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2237828
.thumb
branch_223679c: @ 223679c :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_223782c
	cmp     r0, #0x1
	bne     branch_22367ac
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22367ac

.thumb
branch_22367ac: @ 22367ac :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22367b0

.thumb
Function_22367b0: @ 22367b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_22367c4
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0x3
	bl      Function_2237828
.thumb
branch_22367c4: @ 22367c4 :thumb
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_223782c
	cmp     r0, #0x1
	bne     branch_22367d4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22367d4

.thumb
branch_22367d4: @ 22367d4 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22367d8

.thumb
Function_22367d8: @ 22367d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_22367ec
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0x5
	bl      Function_2237828
.thumb
branch_22367ec: @ 22367ec :thumb
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_223782c
	cmp     r0, #0x1
	bne     branch_22367fc
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22367fc

.thumb
branch_22367fc: @ 22367fc :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236800

.thumb
Function_2236800: @ 2236800 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_2236814
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0x7
	bl      Function_2237828
.thumb
branch_2236814: @ 2236814 :thumb
	mov     r0, r4
	mov     r1, #0xe
	bl      Function_223782c
	cmp     r0, #0x1
	bne     branch_2236824
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2236824

.thumb
branch_2236824: @ 2236824 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236828

.thumb
Function_2236828: @ 2236828 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_223683c
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0xf
	bl      Function_2237828
.thumb
branch_223683c: @ 223683c :thumb
	mov     r0, r4
	mov     r1, #0x12
	bl      Function_223782c
	cmp     r0, #0x1
	bne     branch_223684c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223684c

.thumb
branch_223684c: @ 223684c :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236850

.thumb
Function_2236850: @ 2236850 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_2236864
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0x13
	bl      Function_2237828
.thumb
branch_2236864: @ 2236864 :thumb
	mov     r0, r4
	mov     r1, #0x1b
	bl      Function_223782c
	cmp     r0, #0x1
	bne     branch_2236874
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2236874

.thumb
branch_2236874: @ 2236874 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236878

.thumb
Function_2236878: @ 2236878 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_223688c
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0x15
	bl      Function_2237828
.thumb
branch_223688c: @ 223688c :thumb
	mov     r0, r4
	mov     r1, #0x16
	bl      Function_223782c
	cmp     r0, #0x1
	bne     branch_223689c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223689c

.thumb
branch_223689c: @ 223689c :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22368a0

.thumb
Function_22368a0: @ 22368a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_22368b4
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0x17
	bl      Function_2237828
.thumb
branch_22368b4: @ 22368b4 :thumb
	mov     r0, r4
	mov     r1, #0x1b
	bl      Function_223782c
	cmp     r0, #0x1
	bne     branch_22368c4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22368c4

.thumb
branch_22368c4: @ 22368c4 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22368c8


.incbin "./baserom/overlay/overlay_0012.bin", 0x16ca8, 0x22368e4 - 0x22368c8


.thumb
Function_22368e4: @ 22368e4 :thumb
	str     r1, [r0, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x10]
	bx      lr
@ 0x22368f0

.thumb
Function_22368f0: @ 22368f0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x22368f4

.thumb
Function_22368f4: @ 22368f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2236f24
	cmp     r0, #0x0
	bne     branch_2236908
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_22368e4
.thumb
branch_2236908: @ 2236908 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223690c

.thumb
Function_223690c: @ 223690c :thumb
	push    {r3,lr}
	mov     r1, #0x3
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236918

.thumb
Function_2236918: @ 2236918 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_22369e8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r3, #1
	lsl     r2, r6, #1
	lsl     r6, r1, #2
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_200d364
	mov     r0, r4
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0xff
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x30]
	add     r2, #0x2
	bl      Function_200d550
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xb4
	add     r1, #0x94
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_2223764
	mov     r1, r4
	add     r1, #0xd8
	str     r0, [r1, #0x0]
	add     r0, sp, #0x0
	bl      Function_2236690
	mov     r1, r4
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_22369f0
@ 0x223698e


.incbin "./baserom/overlay/overlay_0012.bin", 0x16d6e, 0x22369e8 - 0x223698e


.thumb
branch_22369e8: @ 22369e8 :thumb
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_22368e4
.thumb
branch_22369f0: @ 22369f0 :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x22369f6


.align 2, 0


.thumb
Function_22369f8: @ 22369f8 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x22369fc

.thumb
Function_22369fc: @ 22369fc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x0
	bne     branch_2236a3c
	mov     r1, r4
	mov     r2, r4
	ldr     r0, [r4, #0x30]
	add     r1, #0xb8
	add     r2, #0xba
	bl      Function_200d550
	mov     r0, r4
	mov     r1, #0x3c
	add     r0, #0xbc
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xb4
	add     r0, #0xbe
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xa
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xc
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2236a4c
@ 0x2236a3c

.thumb
branch_2236a3c: @ 2236a3c :thumb
	bl      Function_2236f24
	cmp     r0, #0x0
	bne     branch_2236a4c
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_22368e4
.thumb
branch_2236a4c: @ 2236a4c :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236a50

.thumb
Function_2236a50: @ 2236a50 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2236a54

.thumb
Function_2236a54: @ 2236a54 :thumb
	push    {r3,lr}
	mov     r1, #0x8
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236a60

.thumb
Function_2236a60: @ 2236a60 :thumb
	push    {r3,lr}
	mov     r1, #0x9
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236a6c

.thumb
Function_2236a6c: @ 2236a6c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2236a7e
	cmp     r0, #0x1
	beq     branch_2236ab2
	b       branch_2236af4
@ 0x2236a7e

.thumb
branch_2236a7e: @ 2236a7e :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_200d43c
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x2236b10, (=#0x37f)
	mov     r3, #0x1
	mov     r5, r3
	str     r0, [sp, #0x8]
	mov     r0, r4
	lsl     r5, r2
	add     r0, #0xb0
	lsl     r2, r5, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	lsr     r2, r2, #16
	.hword  0x1e9b @ sub r3, r3, #0x2
	bl      Function_2003178
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2236b0a
@ 0x2236ab2

.thumb
branch_2236ab2: @ 2236ab2 :thumb
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_2236b0a
	ldr     r0, [r4, #0x30]
	bl      Function_200d43c
	mov     r2, r0
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x2236b10, (=#0x37f)
	mov     r3, #0x1
	mov     r5, r3
	str     r0, [sp, #0x8]
	mov     r0, r4
	lsl     r5, r2
	add     r0, #0xb0
	lsl     r2, r5, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	lsr     r2, r2, #16
	.hword  0x1e9b @ sub r3, r3, #0x2
	bl      Function_2003178
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2236b0a
@ 0x2236af4

.thumb
branch_2236af4: @ 2236af4 :thumb
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_2236b0a
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_22368e4
.thumb
branch_2236b0a: @ 2236b0a :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2236b10

.word 0x37f @ 0x2236b10
.thumb
Function_2236b14: @ 2236b14 :thumb
	push    {r3,lr}
	mov     r1, #0xb
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236b20

.thumb
Function_2236b20: @ 2236b20 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2236b32
	cmp     r0, #0x1
	beq     branch_2236b72
	b       branch_2236b8e
@ 0x2236b32

.thumb
branch_2236b32: @ 2236b32 :thumb
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0x1
	blt     branch_2236b8e
	add     r1, sp, #0x8
	ldr     r0, [r4, #0x30]
	add     r1, #0x2
	add     r2, sp, #0x8
	bl      Function_200d550
	add     r1, sp, #0x8
	mov     r0, #0x0
	ldsh    r3, [r1, r0]
	mov     r0, #0x2
	ldsh    r1, [r1, r0]
	mov     r0, r3
	add     r0, #0x20
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x48
	mov     r2, r1
	bl      Function_2225bc8
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2236b8e
@ 0x2236b72

.thumb
branch_2236b72: @ 2236b72 :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x30]
	add     r0, #0x48
	bl      Function_2225c50
	cmp     r0, #0x0
	bne     branch_2236b8e
	ldr     r0, [r4, #0x8]
	mov     r1, #0xd
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, r4
	bl      Function_22368e4
.thumb
branch_2236b8e: @ 2236b8e :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2236b94

.thumb
Function_2236b94: @ 2236b94 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2236b98

.thumb
Function_2236b98: @ 2236b98 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x8]
	cmp     r1, #0x0
	beq     branch_2236ba8
	cmp     r1, #0x1
	beq     branch_2236bbe
	b       branch_2236c1e
@ 0x2236ba8

.thumb
branch_2236ba8: @ 2236ba8 :thumb
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      Function_200d364
	ldr     r0, [r5, #0x30]
	mov     r1, #0x0
	bl      Function_200d3cc
	ldr     r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
.thumb
branch_2236bbe: @ 2236bbe :thumb
	ldr     r1, [r5, #0xc]
	mov     r0, #0x6
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x60] @ 0x2236c28, (=#0x223acf2)
	ldr     r1, [pc, #0x60] @ 0x2236c2c, (=#0x223acf4)
	ldsh    r0, [r0, r2]
	ldrh    r1, [r1, r2]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x30]
	bl      Function_200d3cc
	ldr     r0, [r5, #0xc]
	ldr     r4, [pc, #0x54] @ 0x2236c30, (=#0x223abe4)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	mov     r6, #0x0
	mov     r7, #0x75
.thumb
branch_2236be2: @ 2236be2 :thumb
	ldr     r1, [r5, #0xc]
	ldr     r0, [r4, #0x0]
	cmp     r1, r0
	bne     branch_2236bf6
	ldr     r0, [r4, #0x4]
	mov     r1, r7
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2005728
.thumb
branch_2236bf6: @ 2236bf6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, #0x5
	blt     branch_2236be2
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x14
	bgt     branch_2236c0a
	ldr     r0, [sp, #0x0]
	cmp     r0, #0xff
	bne     branch_2236c12
.thumb
branch_2236c0a: @ 2236c0a :thumb
	ldr     r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	b       branch_2236c24
@ 0x2236c12

.thumb
branch_2236c12: @ 2236c12 :thumb
	ldr     r0, [r5, #0x30]
	ldr     r2, [sp, #0x0]
	mov     r1, #0x0
	bl      Function_200d5dc
	b       branch_2236c24
@ 0x2236c1e

.thumb
branch_2236c1e: @ 2236c1e :thumb
	mov     r1, #0xe
	bl      Function_22368e4
.thumb
branch_2236c24: @ 2236c24 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2236c28

.word 0x223acf2 @ 0x2236c28
.word 0x223acf4 @ 0x2236c2c
.word 0x223abe4 @ 0x2236c30
.thumb
Function_2236c34: @ 2236c34 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2236c38

.thumb
Function_2236c38: @ 2236c38 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0xc]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0xc]
	cmp     r1, #0xe
	blt     branch_2236c54
	ldr     r1, [r0, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x8]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	mov     r1, #0x10
	bl      Function_22368e4
.thumb
branch_2236c54: @ 2236c54 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236c58

.thumb
Function_2236c58: @ 2236c58 :thumb
	push    {r3,lr}
	mov     r1, #0x11
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236c64

.thumb
Function_2236c64: @ 2236c64 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2236c74
	cmp     r0, #0x1
	beq     branch_2236c84
	b       branch_2236cec
@ 0x2236c74

.thumb
branch_2236c74: @ 2236c74 :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x3
	blt     branch_2236c7e
	bl      Function_2022974
.thumb
branch_2236c7e: @ 2236c7e :thumb
	ldr     r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
.thumb
branch_2236c84: @ 2236c84 :thumb
	ldr     r1, [r5, #0x18]
	mov     r0, #0x18
	mov     r3, r1
	mul     r3, r0
	ldr     r0, [pc, #0x60] @ 0x2236cf0, (=#0x223ac38)
	ldr     r1, [r5, #0xc]
	add     r0, r0, r3
	lsl     r2, r1, #1
	ldsh    r4, [r2, r0]
	add     r0, r1, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0xb
	bgt     branch_2236ca2
	cmp     r4, #0xff
	bne     branch_2236cc2
.thumb
branch_2236ca2: @ 2236ca2 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x30]
	bl      Function_200d79c
	mov     r0, r5
	mov     r1, #0x12
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2236cc2

.thumb
branch_2236cc2: @ 2236cc2 :thumb
	cmp     r0, #0x5
	bne     branch_2236cce
	ldr     r0, [pc, #0x2c] @ 0x2236cf4, (=#0x5fe)
	mov     r1, #0x75
	bl      Function_2005728
.thumb
branch_2236cce: @ 2236cce :thumb
	ldr     r0, [r5, #0x30]
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d5dc
	ldr     r0, [pc, #0x1c] @ 0x2236cf8, (=#0x1fffe)
	mov     r1, #0x5a
	mul     r0, r4
	lsl     r1, r1, #2
	blx     Division
	mov     r1, r0
	ldr     r0, [r5, #0x30]
	bl      Function_200d7c0
.thumb
branch_2236cec: @ 2236cec :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2236cf0

.word 0x223ac38 @ 0x2236cf0
.word 0x5fe @ 0x2236cf4
.word 0x1fffe @ 0x2236cf8
.thumb
Function_2236cfc: @ 2236cfc :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2236d00

.thumb
Function_2236d00: @ 2236d00 :thumb
	push    {r3,lr}
	mov     r1, #0x14
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236d0c

.thumb
Function_2236d0c: @ 2236d0c :thumb
	push    {r3,lr}
	mov     r1, #0x1b
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236d18

.thumb
Function_2236d18: @ 2236d18 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_2236dec
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r7, #0
	lsl     r0, r0, #2
	lsl     r2, r2, #2
	ldr     r0, [r4, #0x30]
	bl      Function_200d43c
	mov     r1, #0x0
	mov     r3, #0x1
	mov     r2, r0
	mov     r5, r3
	lsl     r5, r2
	lsl     r2, r5, #16
	str     r1, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	str     r1, [sp, #0x8]
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	lsr     r2, r2, #16
	.hword  0x1f9b @ sub r3, r3, #0x6
	bl      Function_2003178
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2236e02
@ 0x2236d6a


.incbin "./baserom/overlay/overlay_0012.bin", 0x1714a, 0x2236dec - 0x2236d6a


.thumb
branch_2236dec: @ 2236dec :thumb
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_2236e02
	mov     r0, r4
	mov     r1, #0x16
	bl      Function_22368e4
.thumb
branch_2236e02: @ 2236e02 :thumb
	mov     r0, #0x1
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x2236e08

.thumb
Function_2236e08: @ 2236e08 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2236e0c

.thumb
Function_2236e0c: @ 2236e0c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_2236e1e
	cmp     r1, #0x1
	beq     branch_2236e50
	b       branch_2236e64
@ 0x2236e1e

.thumb
branch_2236e1e: @ 2236e1e :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_200d43c
	mov     r2, r0
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r3, #0x1
	mov     r5, r3
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r4
	lsl     r5, r2
	add     r0, #0xb0
	lsl     r2, r5, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	lsr     r2, r2, #16
	.hword  0x1f9b @ sub r3, r3, #0x6
	bl      Function_2003178
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2236e6a
@ 0x2236e50

.thumb
branch_2236e50: @ 2236e50 :thumb
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_2236e6a
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2236e6a
@ 0x2236e64

.thumb
branch_2236e64: @ 2236e64 :thumb
	mov     r1, #0x18
	bl      Function_22368e4
.thumb
branch_2236e6a: @ 2236e6a :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2236e70

.thumb
Function_2236e70: @ 2236e70 :thumb
	push    {r3,lr}
	mov     r1, #0x19
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236e7c

.thumb
Function_2236e7c: @ 2236e7c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_2236e8c
	cmp     r1, #0x1
	beq     branch_2236e9a
	b       branch_2236ef2
@ 0x2236e8c

.thumb
branch_2236e8c: @ 2236e8c :thumb
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_2236e9a: @ 2236e9a :thumb
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2236ec2
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	b       branch_2236ede
@ 0x2236ec2

.thumb
branch_2236ec2: @ 2236ec2 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r2, #0xf
	add     r0, #0x21
	strb    r2, [r0, #0x0]
	ldr     r0, [r4, #0x30]
	bl      Function_200d3f4
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_2236ede: @ 2236ede :thumb
	mov     r0, r4
	add     r0, #0x20
	add     r4, #0x21
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0xc] @ 0x2236efc, (=#0x4000052)
	strh    r1, [r0, #0x0]
	b       branch_2236ef8
@ 0x2236ef2

.thumb
branch_2236ef2: @ 2236ef2 :thumb
	mov     r1, #0x1a
	bl      Function_22368e4
.thumb
branch_2236ef8: @ 2236ef8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236efc

.word 0x4000052 @ 0x2236efc
.thumb
Function_2236f00: @ 2236f00 :thumb
	push    {r3,lr}
	mov     r1, #0x1b
	bl      Function_22368e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2236f0c

.thumb
Function_2236f0c: @ 2236f0c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2236f10


.thumb
Function_2236f10: @ 2236f10 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x14]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x2236f20, (=JumpTable_223ac80)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x2236f1e

.align 2
.word JumpTable_223ac80 @ 0x2236f20



.thumb
Function_2236f24: @ 2236f24 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	bls     branch_2236f32
	b       branch_2237132
@ 0x2236f32

.thumb
branch_2236f32: @ 2236f32 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r6, #1
	lsl     r6, r5, #5
	lsl     r2, r2, #7
	mov     r0, #0xba
	ldsh    r0, [r4, r0]
	mov     r1, r4
	mov     r2, #0xb8
	str     r0, [sp, #0x0]
	mov     r0, #0xbe
	ldsh    r0, [r4, r0]
	mov     r3, #0xbc
	add     r1, #0x6c
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	mov     r0, r4
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	add     r0, #0x48
	bl      Function_2225c98
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, r4
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Function_2235eb0
	cmp     r0, #0x1
	bne     branch_223709c
	bl      PRNG
	mov     r1, #0x14
	blx     Division
	add     r1, #0xa
	ldr     r0, [r4, #0x30]
	lsl     r1, r1, #13
	bl      Function_200d7c0
	b       branch_22371ce
@ 0x2236fb4


.incbin "./baserom/overlay/overlay_0012.bin", 0x17394, 0x223709c - 0x2236fb4


.thumb
branch_223709c: @ 223709c :thumb
	b       branch_22371ce
@ 0x223709e


.incbin "./baserom/overlay/overlay_0012.bin", 0x1747e, 0x2237132 - 0x223709e


.thumb
branch_2237132: @ 2237132 :thumb
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x5
	bne     branch_223718c
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xc
	beq     branch_2237188
	cmp     r0, #0xd
	beq     branch_2237188
	ldr     r0, [r4, #0x30]
	bl      Function_200d43c
	mov     r3, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	sub     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	mov     r1, r4
	lsl     r3, r3, #20
	str     r2, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x68] @ 0x22371d4, (=#0xffff)
	add     r1, #0x94
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x64] @ 0x22371d8, (=#0x3ea)
	lsr     r3, r3, #16
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_2226870
	mov     r1, r4
	add     r1, #0xd4
	str     r0, [r1, #0x0]
.thumb
branch_2237188: @ 2237188 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x28]
.thumb
branch_223718c: @ 223718c :thumb
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xf
	ble     branch_22371ce
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xc
	beq     branch_22371c8
	cmp     r0, #0xd
	beq     branch_22371c8
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	bl      Function_2226848
	cmp     r0, #0x1
	beq     branch_22371ce
	add     r4, #0xd4
	ldr     r0, [r4, #0x0]
	bl      Function_2226858
.thumb
branch_22371c8: @ 22371c8 :thumb
	add     sp, #0x1c
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22371ce

.thumb
branch_22371ce: @ 22371ce :thumb
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x22371d4

.word 0xffff @ 0x22371d4
.word 0x3ea @ 0x22371d8

.incbin "./baserom/overlay/overlay_0012.bin", 0x175bc, 0x22371e4 - 0x22371dc


.thumb
Function_22371e4: @ 22371e4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	bls     branch_22371f2
	b       branch_22373de
@ 0x22371f2

.thumb
branch_22371f2: @ 22371f2 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r4, r6, #1
	lsl     r6, r5, #5
	lsl     r6, r7, #6
	mov     r0, #0xba
	ldsh    r0, [r4, r0]
	mov     r1, r4
	mov     r2, #0xb8
	str     r0, [sp, #0x0]
	mov     r0, #0xbe
	ldsh    r0, [r4, r0]
	mov     r3, #0xbc
	add     r1, #0x6c
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	mov     r0, r4
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	add     r0, #0x48
	bl      Function_2225c98
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, r4
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Function_2235eb0
	cmp     r0, #0x1
	bne     branch_223735c
	bl      PRNG
	mov     r1, #0x14
	blx     Division
	add     r1, #0xa
	ldr     r0, [r4, #0x30]
	lsl     r1, r1, #13
	bl      Function_200d7c0
	b       branch_2237466
@ 0x2237274


.incbin "./baserom/overlay/overlay_0012.bin", 0x17654, 0x223735c - 0x2237274


.thumb
branch_223735c: @ 223735c :thumb
	b       branch_2237466
@ 0x223735e


.incbin "./baserom/overlay/overlay_0012.bin", 0x1773e, 0x22373de - 0x223735e


.thumb
branch_22373de: @ 22373de :thumb
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x5
	bne     branch_2237432
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	bl      Function_200d3cc
	ldr     r0, [r4, #0x30]
	bl      Function_200d43c
	mov     r3, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	sub     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	mov     r1, r4
	lsl     r3, r3, #20
	str     r2, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x58] @ 0x223746c, (=#0xffff)
	add     r1, #0x94
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x58] @ 0x2237470, (=#0x3ea)
	lsr     r3, r3, #16
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_2226870
	mov     r1, r4
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x28]
.thumb
branch_2237432: @ 2237432 :thumb
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xf
	ble     branch_2237466
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	bl      Function_2226848
	cmp     r0, #0x1
	beq     branch_2237466
	add     r4, #0xd4
	ldr     r0, [r4, #0x0]
	bl      Function_2226858
	add     sp, #0x1c
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2237466

.thumb
branch_2237466: @ 2237466 :thumb
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x223746c

.word 0xffff @ 0x223746c
.word 0x3ea @ 0x2237470
.thumb
Function_2237474: @ 2237474 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x7
	bls     branch_2237482
	b       branch_22375fa
@ 0x2237482

.thumb
branch_2237482: @ 2237482 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r1, #0
	lsl     r4, r1, #1
	lsl     r4, r7, #1
	lsl     r2, r6, #2
	lsl     r2, r0, #3
	lsl     r0, r6, #3
	lsl     r6, r3, #4
	lsl     r4, r1, #5
	mov     r1, #0x0
	bl      Function_2237e30
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_200d364
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	blt     branch_22374f2
	ldr     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      Function_200d3cc
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2237600
@ 0x22374dc


.incbin "./baserom/overlay/overlay_0012.bin", 0x178bc, 0x22374f2 - 0x22374dc


.thumb
branch_22374f2: @ 22374f2 :thumb
	b       branch_2237600
@ 0x22374f4


.incbin "./baserom/overlay/overlay_0012.bin", 0x178d4, 0x22375fa - 0x22374f4


.thumb
branch_22375fa: @ 22375fa :thumb
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2237600

.thumb
branch_2237600: @ 2237600 :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2237606


.align 2, 0


.thumb
Function_2237608: @ 2237608 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2237618
	cmp     r0, #0x1
	beq     branch_223764c
	b       branch_223767e
@ 0x2237618

.thumb
branch_2237618: @ 2237618 :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_223762e
	ldr     r1, [pc, #0x6c] @ 0x223768c, (=#0xffffe001)
	mov     r0, r4
	add     r0, #0x34
	lsr     r2, r1, #19
	mov     r3, #0xa
	bl      Function_2225d50
	b       branch_223763c
@ 0x223762e

.thumb
branch_223762e: @ 223762e :thumb
	mov     r0, r4
	ldr     r1, [pc, #0x5c] @ 0x2237690, (=#0x1fff)
	ldr     r2, [pc, #0x58] @ 0x223768c, (=#0xffffe001)
	add     r0, #0x34
	mov     r3, #0xa
	bl      Function_2225d50
.thumb
branch_223763c: @ 223763c :thumb
	ldr     r1, [r4, #0x10]
	mov     r0, #0x1
	eor     r0, r1
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2237686
@ 0x223764c

.thumb
branch_223764c: @ 223764c :thumb
	ldr     r1, [r4, #0x34]
	ldr     r0, [r4, #0x30]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_200d79c
	mov     r0, r4
	add     r0, #0x34
	bl      Function_2225da0
	cmp     r0, #0x0
	bne     branch_2237686
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x1
	blt     branch_2237672
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2237686
@ 0x2237672

.thumb
branch_2237672: @ 2237672 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_2237686
@ 0x223767e

.thumb
branch_223767e: @ 223767e :thumb
	mov     r0, #0x0
	add     r4, #0xc4
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2237686

.thumb
branch_2237686: @ 2237686 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223768a


.incbin "./baserom/overlay/overlay_0012.bin", 0x17a6a, 0x223768c - 0x223768a


.word 0xffffe001 @ 0x223768c
.word 0x1fff @ 0x2237690
.thumb
Function_2237694: @ 2237694 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0xff
	bne     branch_22376a6
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22376a6

.thumb
branch_22376a6: @ 22376a6 :thumb
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_22376ca
	add     r1, sp, #0x0
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	add     r1, sp, #0x0
	mov     r0, #0x2
	ldsh    r2, [r1, r0]
	mov     r0, r4
	add     r0, #0xb8
	strh    r2, [r0, #0x0]
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	add     r4, #0xba
	strh    r0, [r4, #0x0]
.thumb
branch_22376ca: @ 22376ca :thumb
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22376d0


.incbin "./baserom/overlay/overlay_0012.bin", 0x17ab0, 0x2237828 - 0x22376d0


.thumb
Function_2237828: @ 2237828 :thumb
	str     r1, [r0, #0x14]
	bx      lr
@ 0x223782c

.thumb
Function_223782c: @ 223782c :thumb
	ldr     r0, [r0, #0x14]
	cmp     r0, r1
	bne     branch_2237836
	mov     r0, #0x1
	bx      lr
@ 0x2237836

.thumb
branch_2237836: @ 2237836 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223783a


.incbin "./baserom/overlay/overlay_0012.bin", 0x17c1a, 0x2237e30 - 0x223783a


.thumb
Function_2237e30: @ 2237e30 :thumb
	str     r1, [r0, #0x24]
	bx      lr
@ 0x2237e34


.incbin "./baserom/overlay/overlay_0012.bin", 0x18214, 0x22380bc - 0x2237e34


.thumb
Function_22380bc: @ 22380bc :thumb
	push    {r3,lr}
	mov     r3, r1
	ldr     r1, [r0, #0x0]
	mov     r2, #0x0
	bl      Function_22380dc
	pop     {r3,pc}
@ 0x22380ca


.align 2, 0


.thumb
Function_22380cc: @ 22380cc :thumb
	push    {r3,lr}
	mov     r3, r1
	ldr     r1, [r0, #0x4]
	mov     r2, #0x1
	bl      Function_22380dc
	pop     {r3,pc}
@ 0x22380da


.align 2, 0


.thumb
Function_22380dc: @ 22380dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	mov     r7, r2
	str     r3, [sp, #0x10]
	bl      Function_20089b0
	ldr     r0, [r5, #0x4]
	lsl     r1, r0, #1
	add     r1, r5, r1
	ldrh    r6, [r1, #0x28]
	add     r1, r5, r0
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	add     r2, r5, r0
	add     r2, #0x38
	str     r1, [sp, #0x1c]
	add     r1, r5, r0
	lsl     r0, r0, #2
	ldrb    r2, [r2, #0x0]
	add     r0, r5, r0
	add     r1, #0x34
	ldr     r0, [r0, #0x3c]
	ldrb    r1, [r1, #0x0]
	str     r2, [sp, #0x18]
	str     r0, [sp, #0x14]
	cmp     r7, #0x0
	beq     branch_2238132
	add     r0, r5, r4
	add     r0, #0x4c
	ldrb    r2, [r0, #0x0]
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_223812e
	mov     r4, #0x0
	b       branch_2238144
@ 0x223812e

.thumb
branch_223812e: @ 223812e :thumb
	mov     r4, #0x2
	b       branch_2238144
@ 0x2238132

.thumb
branch_2238132: @ 2238132 :thumb
	add     r0, r5, r4
	add     r0, #0x4c
	ldrb    r2, [r0, #0x0]
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_2238142
	mov     r4, #0x2
	b       branch_2238144
@ 0x2238142

.thumb
branch_2238142: @ 2238142 :thumb
	mov     r4, #0x0
.thumb
branch_2238144: @ 2238144 :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	lsl     r1, r6, #16
	lsl     r2, r2, #24
	lsl     r3, r4, #24
	str     r0, [sp, #0x8]
	add     r0, sp, #0x28
	lsr     r1, r1, #16
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2075fb4
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	bl      Function_2008a90
	mov     r7, r0
	add     r3, sp, #0x28
	mov     r2, r7
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	bl      Function_20089a0
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldrh    r0, [r7, #0x6]
	str     r0, [sp, #0xc]
	ldr     r3, [r5, #0x0]
	ldrh    r0, [r7, #0x0]
	lsl     r3, r3, #2
	add     r3, r5, r3
	ldr     r3, [r3, #0x8]
	ldrh    r1, [r7, #0x2]
	ldr     r3, [r3, #0x0]
	bl      Function_2013750
	ldr     r1, [r5, #0x0]
	ldr     r3, [sp, #0x18]
	lsl     r1, r1, #2
	add     r1, r5, r1
	lsl     r2, r4, #24
	lsl     r3, r3, #24
	ldrh    r0, [r7, #0x0]
	ldr     r1, [r1, #0x8]
	lsr     r2, r2, #24
	str     r0, [r1, #0x4]
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r7, #0x4]
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r1, [r1, #0x8]
	lsr     r3, r3, #24
	str     r0, [r1, #0x8]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x0]
	lsl     r0, r6, #16
	lsl     r1, r1, #24
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	bl      Function_2076648
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r1, [r1, #0x8]
	str     r0, [r1, #0xc]
	ldr     r0, [r5, #0x0]
	lsl     r1, r0, #2
	add     r1, r5, r1
	ldr     r1, [r1, #0x8]
	add     r0, r5, r0
	ldr     r1, [r1, #0xc]
	add     r0, #0x4c
	lsl     r1, r1, #24
	asr     r7, r1, #24
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_22384cc
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	ldr     r2, [sp, #0x20]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	mov     r1, #0x1
	add     r2, r2, r7
	bl      Function_2007dec
	cmp     r4, #0x2
	bne     branch_22382b8
	ldr     r1, [sp, #0x10]
	mov     r0, #0x93
	bl      Function_2006c24
	add     r1, sp, #0x24
	lsl     r2, r6, #16
	add     r1, #0x2
	lsr     r2, r2, #16
	mov     r4, r0
	bl      Function_2078a80
	add     r1, sp, #0x24
	lsl     r2, r6, #16
	mov     r0, r4
	add     r1, #0x1
	lsr     r2, r2, #16
	bl      Function_2078aa4
	lsl     r2, r6, #16
	mov     r0, r4
	add     r1, sp, #0x24
	lsr     r2, r2, #16
	bl      Function_2078ac8
	mov     r0, r4
	bl      Function_2006ca8
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x24
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r0, #0x18]
	mov     r1, #0x2e
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	ldr     r2, [sp, #0x20]
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r2, #0x24
	ldr     r0, [r0, #0x18]
	mov     r1, #0x14
	str     r2, [sp, #0x20]
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	add     r3, sp, #0x24
	lsl     r0, r0, #2
	mov     r2, #0x1
	add     r0, r5, r0
	ldsb    r2, [r3, r2]
	ldr     r0, [r0, #0x18]
	mov     r1, #0x15
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	mov     r2, #0x24
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	mov     r1, #0x16
	sub     r2, r2, r7
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	add     r3, sp, #0x24
	lsl     r0, r0, #2
	mov     r2, #0x2
	add     r0, r5, r0
	ldsb    r2, [r3, r2]
	ldr     r0, [r0, #0x18]
	mov     r1, #0x29
	bl      Function_2007dec
.thumb
branch_22382b8: @ 22382b8 :thumb
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x22382bc

.thumb
Function_22382bc: @ 22382bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	str     r1, [sp, #0x10]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	bl      Function_2008a0c
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	bl      Function_2008a90
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	lsl     r1, r0, #1
	add     r1, r5, r1
	ldrh    r1, [r1, #0x28]
	lsl     r3, r0, #2
	str     r1, [sp, #0x1c]
	add     r1, r5, r0
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	str     r1, [sp, #0x18]
	add     r1, r5, r0
	add     r1, #0x38
	ldrb    r1, [r1, #0x0]
	add     r0, r5, r0
	add     r0, #0x4c
	str     r1, [sp, #0x14]
	add     r1, r5, r3
	ldr     r7, [r1, #0x3c]
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223830e
	mov     r6, #0x2
	b       branch_2238310
@ 0x223830e

.thumb
branch_223830e: @ 223830e :thumb
	mov     r6, #0x0
.thumb
branch_2238310: @ 2238310 :thumb
	str     r7, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldrh    r0, [r4, #0x6]
	add     r3, r5, r3
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0xc]
	ldr     r3, [r3, #0x8]
	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x2]
	ldr     r3, [r3, #0x0]
	bl      Function_2013750
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x0]
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r1, [r1, #0x8]
	ldr     r3, [sp, #0x14]
	str     r0, [r1, #0x4]
	ldr     r1, [r5, #0x0]
	lsl     r2, r6, #24
	lsl     r1, r1, #2
	add     r1, r5, r1
	lsl     r3, r3, #24
	ldrh    r0, [r4, #0x4]
	ldr     r1, [r1, #0x8]
	lsr     r2, r2, #24
	str     r0, [r1, #0x8]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	lsl     r0, r0, #16
	lsl     r1, r1, #24
	str     r7, [sp, #0x0]
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	lsr     r3, r3, #24
	bl      Function_2076648
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r1, [r1, #0x8]
	str     r0, [r1, #0xc]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	lsl     r4, r0, #2
	add     r0, r5, r0
	add     r0, #0x4c
	ldrb    r0, [r0, #0x0]
	bl      Function_22384cc
	add     r1, r5, r4
	mov     r2, r0
	ldr     r0, [r1, #0x8]
	ldr     r3, [r0, #0xc]
	ldr     r0, [r1, #0x18]
	mov     r1, #0x1
	add     r2, r3, r2
	bl      Function_2007dec
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2238390

.thumb
Function_2238390: @ 2238390 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	bl      Function_20089b0
	mov     r0, #0x75
	add     r2, sp, #0x0
	strh    r0, [r2, #0x4]
	mov     r0, #0xfa
	strh    r0, [r2, #0x8]
	mov     r0, #0x0
	strh    r0, [r2, #0xa]
	strb    r0, [r2, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, r5, r0
	add     r1, #0x4c
	ldrb    r3, [r1, #0x0]
	mov     r1, #0x1
	tst     r1, r3
	beq     branch_22383cc
	mov     r1, #0xf9
	strh    r1, [r2, #0x6]
	mov     r4, #0x87
	b       branch_22383d2
@ 0x22383cc

.thumb
branch_22383cc: @ 22383cc :thumb
	mov     r1, #0xf8
	strh    r1, [r2, #0x6]
	mov     r4, #0x86
.thumb
branch_22383d2: @ 22383d2 :thumb
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	bl      Function_2008a90
	mov     r7, r0
	add     r3, sp, #0x4
	mov     r2, r7
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	bl      Function_20089a0
	ldr     r3, [r5, #0x0]
	ldrh    r0, [r7, #0x0]
	lsl     r3, r3, #2
	add     r3, r5, r3
	ldr     r3, [r3, #0x8]
	ldrh    r1, [r7, #0x2]
	ldr     r3, [r3, #0x0]
	mov     r2, r6
	bl      Function_2013610
	ldr     r2, [r5, #0x0]
	add     r1, sp, #0x0
	lsl     r2, r2, #2
	add     r2, r5, r2
	ldrh    r0, [r1, #0x4]
	ldr     r2, [r2, #0x8]
	str     r0, [r2, #0x4]
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r1, #0x8]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x8]
	mov     r2, r4
	str     r1, [r0, #0x8]
	add     r0, sp, #0x0
	mov     r1, #0x79
	bl      LoadFromNARC
	add     r0, sp, #0x0
	ldrb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x8]
	str     r1, [r0, #0xc]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	lsl     r4, r0, #2
	add     r0, r5, r0
	add     r0, #0x4c
	ldrb    r0, [r0, #0x0]
	bl      Function_22384cc
	add     r2, r5, r4
	ldr     r1, [r2, #0x8]
	ldr     r1, [r1, #0xc]
	add     r4, r1, r0
	ldr     r0, [r2, #0x18]
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_2007dec
	ldr     r1, [r5, #0x0]
	mov     r2, #0x1
	add     r0, r5, r1
	add     r0, #0x4c
	ldrb    r0, [r0, #0x0]
	tst     r0, r2
	beq     branch_22384c6
	lsl     r0, r1, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	mov     r1, #0x2e
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x0
	ldrb    r3, [r2, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, #0x24
	sub     r2, r2, r3
	ldr     r0, [r0, #0x18]
	mov     r1, #0x14
	add     r2, r4, r2
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	mov     r1, #0x15
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	mov     r2, #0x0
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x0
	lsl     r0, r0, #2
	ldrb    r3, [r2, #0x0]
	add     r0, r5, r0
	mov     r2, #0x24
	ldr     r0, [r0, #0x18]
	mov     r1, #0x16
	sub     r2, r2, r3
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	mov     r1, #0x29
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x18]
	mov     r2, #0x0
	bl      Function_2007dec
.thumb
branch_22384c6: @ 22384c6 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22384ca


.align 2, 0


.thumb
Function_22384cc: @ 22384cc :thumb
	cmp     r1, #0x0
	bne     branch_22384d8
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x14] @ 0x22384e8, (=#0x223b0a0)
	ldsh    r0, [r0, r1]
	bx      lr
@ 0x22384d8

.thumb
branch_22384d8: @ 22384d8 :thumb
	mov     r2, #0x6
	mul     r2, r0
	ldr     r0, [pc, #0xc] @ 0x22384ec, (=#0x223b0b8)
	lsl     r1, r1, #1
	add     r0, r0, r2
	ldsh    r0, [r1, r0]
	bx      lr
@ 0x22384e6


.incbin "./baserom/overlay/overlay_0012.bin", 0x188c6, 0x22384e8 - 0x22384e6


.word 0x223b0a0 @ 0x22384e8
.word 0x223b0b8 @ 0x22384ec
.thumb
Function_22384f0: @ 22384f0 :thumb
	ldr     r2, [pc, #0x9c] @ 0x2238590, (=#0x13b)
	cmp     r0, r2
	bhi     branch_223851e
	bcs     branch_223857e
	cmp     r0, #0x7d
	bhi     branch_223850c
	bcs     branch_223857e
	cmp     r0, #0x63
	bhi     branch_2238506
	beq     branch_223857e
	b       branch_223858a
@ 0x2238506

.thumb
branch_2238506: @ 2238506 :thumb
	cmp     r0, #0x78
	beq     branch_223857e
	b       branch_223858a
@ 0x223850c

.thumb
branch_223850c: @ 223850c :thumb
	cmp     r0, #0xc9
	bhi     branch_2238518
	bcs     branch_223857e
	cmp     r0, #0x9f
	beq     branch_223857e
	b       branch_223858a
@ 0x2238518

.thumb
branch_2238518: @ 2238518 :thumb
	cmp     r0, #0xd7
	beq     branch_223857e
	b       branch_223858a
@ 0x223851e

.thumb
branch_223851e: @ 223851e :thumb
	mov     r3, r2
	add     r3, #0x5c
	cmp     r0, r3
	bhi     branch_223855e
	mov     r1, r2
	add     r1, #0x5b
	cmp     r0, r1
	bcc     branch_223853e
	mov     r1, r2
	add     r1, #0x5b
	cmp     r0, r1
	beq     branch_223857e
	add     r2, #0x5c
	cmp     r0, r2
	beq     branch_223857e
	b       branch_223858a
@ 0x223853e

.thumb
branch_223853e: @ 223853e :thumb
	mov     r1, r2
	add     r1, #0x2c
	cmp     r0, r1
	bhi     branch_2238556
	mov     r1, r2
	add     r1, #0x2c
	cmp     r0, r1
	bcs     branch_223857e
	add     r2, #0x14
	cmp     r0, r2
	beq     branch_223857e
	b       branch_223858a
@ 0x2238556

.thumb
branch_2238556: @ 2238556 :thumb
	add     r2, #0x4a
	cmp     r0, r2
	beq     branch_223857e
	b       branch_223858a
@ 0x223855e

.thumb
branch_223855e: @ 223855e :thumb
	mov     r3, r2
	add     r3, #0x99
	cmp     r0, r3
	bhi     branch_2238576
	mov     r1, r2
	add     r1, #0x99
	cmp     r0, r1
	bcs     branch_223857e
	add     r2, #0x98
	cmp     r0, r2
	beq     branch_223857e
	b       branch_223858a
@ 0x2238576

.thumb
branch_2238576: @ 2238576 :thumb
	add     r2, #0xb1
	cmp     r0, r2
	beq     branch_2238582
	b       branch_223858a

branch_223857e: @ 223857e :thumb
	mov     r0, #0x0
	bx      lr

branch_2238582: @ 2238582 :thumb
	cmp     r1, #0x1
	bne     branch_223858a
	mov     r0, #0x0
	bx      lr

branch_223858a: @ 223858a :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223858e

.align 2
.word 0x13b @ 0x2238590


.incbin "./baserom/overlay/overlay_0012.bin", 0x18974, 0x22385cc - 0x2238594


JumpTable_22385cc:
.word Function_2221c50+1 @ =0x2221c51, 0x22385cc
.word Function_2221f44+1 @ =0x2221f45, 0x22385d0
.word Function_22222a4+1 @ =0x22222a5, 0x22385d4
.word Function_2221d50+1 @ =0x2221d51, 0x22385d8
.word Function_222206c+1 @ =0x222206d, 0x22385dc
.word Function_22222b0+1 @ =0x22222b1, 0x22385e0

.incbin "./baserom/overlay/overlay_0012.bin", 0x189c4, 0x223862c - 0x22385e4


JumpTable_223862c:
.word Function_222039c+1 @ =0x222039d, 0x223862c
.word Function_22203a0+1 @ =0x22203a1, 0x2238630
.word Function_22203fc+1 @ =0x22203fd, 0x2238634
.word Function_2220404+1 @ =0x2220405, 0x2238638
.word Function_222040c+1 @ =0x222040d, 0x223863c
.word Function_222044c+1 @ =0x222044d, 0x2238640
.word Function_222235c+1 @ =0x222235d, 0x2238644
.word Function_2222360+1 @ =0x2222361, 0x2238648
.word Function_22226d0+1 @ =0x22226d1, 0x223864c
.word Function_22226e8+1 @ =0x22226e9, 0x2238650
.word Function_222235c+1 @ =0x222235d, 0x2238654
.word Function_222240c+1 @ =0x222240d, 0x2238658
.word Function_22224e4+1 @ =0x22224e5, 0x223865c

.incbin "./baserom/overlay/overlay_0012.bin", 0x18a40, 0x22387d4 - 0x2238660


JumpTable_22387d4:
.word Function_22204c4+1 @ =0x22204c5, 0x22387d4
.word Function_22204e4+1 @ =0x22204e5, 0x22387d8
.word Function_222070c+1 @ =0x222070d, 0x22387dc
.word Function_222074c+1 @ =0x222074d, 0x22387e0
.word Function_2220798+1 @ =0x2220799, 0x22387e4
.word Function_2222950+1 @ =0x2222951, 0x22387e8
.word Function_2221284+1 @ =0x2221285, 0x22387ec
.word Function_2221288+1 @ =0x2221289, 0x22387f0
.word Function_2222cac+1 @ =0x2222cad, 0x22387f4
.word Function_2222cdc+1 @ =0x2222cdd, 0x22387f8
.word Function_2220e14+1 @ =0x2220e15, 0x22387fc
.word Function_2220e44+1 @ =0x2220e45, 0x2238800
.word Function_2220504+1 @ =0x2220505, 0x2238804
.word Function_2220f30+1 @ =0x2220f31, 0x2238808
.word Function_2221064+1 @ =0x2221065, 0x223880c
.word Function_2221098+1 @ =0x2221099, 0x2238810
.word Function_2222724+1 @ =0x2222725, 0x2238814
.word Function_2222774+1 @ =0x2222775, 0x2238818
.word Function_22227cc+1 @ =0x22227cd, 0x223881c
.word Function_2222820+1 @ =0x2222821, 0x2238820
.word Function_2222840+1 @ =0x2222841, 0x2238824
.word Function_2222860+1 @ =0x2222861, 0x2238828
.word Function_2222984+1 @ =0x2222985, 0x223882c
.word Function_22229bc+1 @ =0x22229bd, 0x2238830
.word Function_22229d8+1 @ =0x22229d9, 0x2238834
.word Function_2222b94+1 @ =0x2222b95, 0x2238838
.word Function_2222bf8+1 @ =0x2222bf9, 0x223883c
.word Function_2222ce4+1 @ =0x2222ce5, 0x2238840
.word Function_2222c50+1 @ =0x2222c51, 0x2238844
.word Function_2222c54+1 @ =0x2222c55, 0x2238848
.word Function_2220e70+1 @ =0x2220e71, 0x223884c
.word Function_222128c+1 @ =0x222128d, 0x2238850
.word Function_2221424+1 @ =0x2221425, 0x2238854
.word Function_2220ea8+1 @ =0x2220ea9, 0x2238858
.word Function_22228dc+1 @ =0x22228dd, 0x223885c
.word Function_2222a78+1 @ =0x2222a79, 0x2238860
.word Function_2222af0+1 @ =0x2222af1, 0x2238864
.word Function_222293c+1 @ =0x222293d, 0x2238868
.word Function_2222940+1 @ =0x2222941, 0x223886c
.word Function_2222944+1 @ =0x2222945, 0x2238870
.word Function_2221a4c+1 @ =0x2221a4d, 0x2238874
.word Function_2221a50+1 @ =0x2221a51, 0x2238878
.word Function_2222948+1 @ =0x2222949, 0x223887c
.word Function_222294c+1 @ =0x222294d, 0x2238880
.word Function_2222968+1 @ =0x2222969, 0x2238884
.word Function_2220ed0+1 @ =0x2220ed1, 0x2238888
.word Function_22209a8+1 @ =0x22209a9, 0x223888c
.word Function_2220a3c+1 @ =0x2220a3d, 0x2238890
.word Function_2220b8c+1 @ =0x2220b8d, 0x2238894
.word Function_2220c44+1 @ =0x2220c45, 0x2238898
.word Function_2220cfc+1 @ =0x2220cfd, 0x223889c
.word Function_2220d3c+1 @ =0x2220d3d, 0x22388a0
.word Function_2220d90+1 @ =0x2220d91, 0x22388a4
.word Function_2220de8+1 @ =0x2220de9, 0x22388a8
.word Function_2223160+1 @ =0x2223161, 0x22388ac
.word Function_22230cc+1 @ =0x22230cd, 0x22388b0
.word Function_222144c+1 @ =0x222144d, 0x22388b4
.word Function_22214c4+1 @ =0x22214c5, 0x22388b8
.word Function_2221580+1 @ =0x2221581, 0x22388bc
.word Function_22217b4+1 @ =0x22217b5, 0x22388c0
.word Function_22217e0+1 @ =0x22217e1, 0x22388c4
.word Function_2221a00+1 @ =0x2221a01, 0x22388c8
.word Function_2221a14+1 @ =0x2221a15, 0x22388cc
.word Function_2221a30+1 @ =0x2221a31, 0x22388d0
.word Function_2220f5c+1 @ =0x2220f5d, 0x22388d4
.word Function_22230d4+1 @ =0x22230d5, 0x22388d8
.word Function_2223134+1 @ =0x2223135, 0x22388dc
.word Function_2220524+1 @ =0x2220525, 0x22388e0
.word Function_22206a4+1 @ =0x22206a5, 0x22388e4
.word Function_22206e8+1 @ =0x22206e9, 0x22388e8
.word Function_2220fa0+1 @ =0x2220fa1, 0x22388ec
.word Function_2220ffc+1 @ =0x2220ffd, 0x22388f0
.word Function_2221024+1 @ =0x2221025, 0x22388f4
.word Function_2222ce8+1 @ =0x2222ce9, 0x22388f8
.word Function_2222d84+1 @ =0x2222d85, 0x22388fc
.word Function_2222dcc+1 @ =0x2222dcd, 0x2238900
.word Function_2222e2c+1 @ =0x2222e2d, 0x2238904
.word Function_2222e74+1 @ =0x2222e75, 0x2238908
.word Function_2222ebc+1 @ =0x2222ebd, 0x223890c
.word Function_2222fc8+1 @ =0x2222fc9, 0x2238910
.word Function_222307c+1 @ =0x222307d, 0x2238914
.word Function_22230a8+1 @ =0x22230a9, 0x2238918
.word Function_2221834+1 @ =0x2221835, 0x223891c
.word Function_22219e8+1 @ =0x22219e9, 0x2238920
.word Function_222048c+1 @ =0x222048d, 0x2238924

.incbin "./baserom/overlay/overlay_0012.bin", 0x18d08, 0x2238db0 - 0x2238928


JumpTable_2238db0:
.word Function_22237ec+1 @ =0x22237ed, 0x2238db0
.word Function_22238e0+1 @ =0x22238e1, 0x2238db4
.word Function_2223998+1 @ =0x2223999, 0x2238db8
.word Function_2223a38+1 @ =0x2223a39, 0x2238dbc
.word Function_22239f4+1 @ =0x22239f5, 0x2238dc0
.word Function_2224168+1 @ =0x2224169, 0x2238dc4
.word Function_22241ec+1 @ =0x22241ed, 0x2238dc8
.word Function_2224174+1 @ =0x2224175, 0x2238dcc
.word Function_2224180+1 @ =0x2224181, 0x2238dd0
.word Function_222418c+1 @ =0x222418d, 0x2238dd4
.word Function_2224198+1 @ =0x2224199, 0x2238dd8
.word Function_22241a4+1 @ =0x22241a5, 0x2238ddc
.word Function_22241b0+1 @ =0x22241b1, 0x2238de0
.word Function_22241bc+1 @ =0x22241bd, 0x2238de4
.word Function_22241c8+1 @ =0x22241c9, 0x2238de8
.word Function_22241d4+1 @ =0x22241d5, 0x2238dec
.word Function_22241e0+1 @ =0x22241e1, 0x2238df0
.word Function_2224f14+1 @ =0x2224f15, 0x2238df4
.word Function_2223b98+1 @ =0x2223b99, 0x2238df8
.word Function_2223ac8+1 @ =0x2223ac9, 0x2238dfc
.word Function_2223b30+1 @ =0x2223b31, 0x2238e00
.word Function_2223a7c+1 @ =0x2223a7d, 0x2238e04
.word Function_22238dc+1 @ =0x22238dd, 0x2238e08

.incbin "./baserom/overlay/overlay_0012.bin", 0x191ec, 0x2239e10 - 0x2238e0c


JumpTable_2239e10:
.word Function_222564c+1 @ =0x222564d, 0x2239e10
.word Function_2225670+1 @ =0x2225671, 0x2239e14
.word Function_22256ac+1 @ =0x22256ad, 0x2239e18
.word Function_22256e8+1 @ =0x22256e9, 0x2239e1c
.word Function_2225724+1 @ =0x2225725, 0x2239e20
.word Function_2225784+1 @ =0x2225785, 0x2239e24
.word Function_22257c0+1 @ =0x22257c1, 0x2239e28
.word Function_22257fc+1 @ =0x22257fd, 0x2239e2c
.word Function_2225824+1 @ =0x2225825, 0x2239e30

.incbin "./baserom/overlay/overlay_0012.bin", 0x1a214, 0x2239e68 - 0x2239e34


JumpTable_2239e68:
.word Function_2226b1c+1 @ =0x2226b1d, 0x2239e68
.word Function_222ae68+1 @ =0x222ae69, 0x2239e6c
.word Function_222fe30+1 @ =0x222fe31, 0x2239e70
.word Function_222d56c+1 @ =0x222d56d, 0x2239e74
.word Function_2230cec+1 @ =0x2230ced, 0x2239e78
.word Function_2231010+1 @ =0x2231011, 0x2239e7c
.word Function_22312a4+1 @ =0x22312a5, 0x2239e80
.word Function_2231650+1 @ =0x2231651, 0x2239e84
.word Function_2231950+1 @ =0x2231951, 0x2239e88
.word Function_2231c1c+1 @ =0x2231c1d, 0x2239e8c
.word Function_222777c+1 @ =0x222777d, 0x2239e90
.word Function_2232378+1 @ =0x2232379, 0x2239e94
.word Function_22329e0+1 @ =0x22329e1, 0x2239e98
.word Function_2232ca8+1 @ =0x2232ca9, 0x2239e9c
.word Function_2233454+1 @ =0x2233455, 0x2239ea0
.word Function_2233734+1 @ =0x2233735, 0x2239ea4
.word Function_22339c4+1 @ =0x22339c5, 0x2239ea8
.word Function_222cc54+1 @ =0x222cc55, 0x2239eac
.word Function_2234008+1 @ =0x2234009, 0x2239eb0
.word Function_222d7c0+1 @ =0x222d7c1, 0x2239eb4
.word Function_222db60+1 @ =0x222db61, 0x2239eb8
.word Function_222defc+1 @ =0x222defd, 0x2239ebc
.word Function_222e2f8+1 @ =0x222e2f9, 0x2239ec0
.word Function_222e61c+1 @ =0x222e61d, 0x2239ec4
.word Function_222ec90+1 @ =0x222ec91, 0x2239ec8
.word Function_222a1ac+1 @ =0x222a1ad, 0x2239ecc
.word Function_222a34c+1 @ =0x222a34d, 0x2239ed0
.word Function_222a410+1 @ =0x222a411, 0x2239ed4
.word Function_222a5c0+1 @ =0x222a5c1, 0x2239ed8
.word Function_22346a4+1 @ =0x22346a5, 0x2239edc
.word Function_2234a10+1 @ =0x2234a11, 0x2239ee0
.word Function_22348c8+1 @ =0x22348c9, 0x2239ee4
.word Function_2234d98+1 @ =0x2234d99, 0x2239ee8
.word Function_22269c0+1 @ =0x22269c1, 0x2239eec
.word Function_22269ec+1 @ =0x22269ed, 0x2239ef0
.word Function_2226a3c+1 @ =0x2226a3d, 0x2239ef4
.word Function_2226a88+1 @ =0x2226a89, 0x2239ef8
.word Function_2227408+1 @ =0x2227409, 0x2239efc
.word Function_222b194+1 @ =0x222b195, 0x2239f00
.word Function_222b45c+1 @ =0x222b45d, 0x2239f04
.word Function_222b68c+1 @ =0x222b68d, 0x2239f08
.word Function_222f770+1 @ =0x222f771, 0x2239f0c
.word Function_222f9e4+1 @ =0x222f9e5, 0x2239f10
.word Function_2227534+1 @ =0x2227535, 0x2239f14
.word Function_22300c4+1 @ =0x22300c5, 0x2239f18
.word Function_22303d0+1 @ =0x22303d1, 0x2239f1c
.word Function_222b9e0+1 @ =0x222b9e1, 0x2239f20
.word Function_222bae4+1 @ =0x222bae5, 0x2239f24
.word Function_222bcf4+1 @ =0x222bcf5, 0x2239f28
.word Function_222be48+1 @ =0x222be49, 0x2239f2c
.word Function_2230754+1 @ =0x2230755, 0x2239f30
.word Function_2230804+1 @ =0x2230805, 0x2239f34
.word Function_222bfa8+1 @ =0x222bfa9, 0x2239f38
.word Function_2230a8c+1 @ =0x2230a8d, 0x2239f3c
.word Function_222c0c0+1 @ =0x222c0c1, 0x2239f40
.word Function_222c3c0+1 @ =0x222c3c1, 0x2239f44
.word Function_2231444+1 @ =0x2231445, 0x2239f48
.word Function_222c5fc+1 @ =0x222c5fd, 0x2239f4c
.word Function_2231e7c+1 @ =0x2231e7d, 0x2239f50
.word Function_222c6d4+1 @ =0x222c6d5, 0x2239f54
.word Function_222c8f8+1 @ =0x222c8f9, 0x2239f58
.word Function_222ca2c+1 @ =0x222ca2d, 0x2239f5c
.word Function_223249c+1 @ =0x223249d, 0x2239f60
.word Function_22326ac+1 @ =0x22326ad, 0x2239f64
.word Function_2232024+1 @ =0x2232025, 0x2239f68
.word Function_2233178+1 @ =0x2233179, 0x2239f6c
.word Function_2227828+1 @ =0x2227829, 0x2239f70
.word Function_222797c+1 @ =0x222797d, 0x2239f74
.word Function_2227cbc+1 @ =0x2227cbd, 0x2239f78
.word Function_2226cb0+1 @ =0x2226cb1, 0x2239f7c
.word Function_2233cd4+1 @ =0x2233cd5, 0x2239f80
.word Function_2228168+1 @ =0x2228169, 0x2239f84
.word Function_222cb90+1 @ =0x222cb91, 0x2239f88
.word Function_2228214+1 @ =0x2228215, 0x2239f8c
.word Function_2233f30+1 @ =0x2233f31, 0x2239f90
.word Function_2227f30+1 @ =0x2227f31, 0x2239f94
.word Function_2234214+1 @ =0x2234215, 0x2239f98
.word Function_2226eb0+1 @ =0x2226eb1, 0x2239f9c
.word Function_22271d8+1 @ =0x22271d9, 0x2239fa0
.word Function_22342c4+1 @ =0x22342c5, 0x2239fa4
.word Function_22344d0+1 @ =0x22344d1, 0x2239fa8
.word Function_223464c+1 @ =0x223464d, 0x2239fac
.word Function_222cfa0+1 @ =0x222cfa1, 0x2239fb0
.word Function_22282bc+1 @ =0x22282bd, 0x2239fb4
.word Function_2228394+1 @ =0x2228395, 0x2239fb8
.word Function_2228520+1 @ =0x2228521, 0x2239fbc
.word Function_22287cc+1 @ =0x22287cd, 0x2239fc0
.word Function_2228a0c+1 @ =0x2228a0d, 0x2239fc4
.word Function_222e1a8+1 @ =0x222e1a9, 0x2239fc8
.word Function_2228b40+1 @ =0x2228b41, 0x2239fcc
.word Function_2228c6c+1 @ =0x2228c6d, 0x2239fd0
.word Function_222e810+1 @ =0x222e811, 0x2239fd4
.word Function_222eaa0+1 @ =0x222eaa1, 0x2239fd8
.word Function_2228e00+1 @ =0x2228e01, 0x2239fdc
.word Function_2228ec0+1 @ =0x2228ec1, 0x2239fe0
.word Function_22290dc+1 @ =0x22290dd, 0x2239fe4
.word Function_22291ac+1 @ =0x22291ad, 0x2239fe8
.word Function_2229304+1 @ =0x2229305, 0x2239fec
.word Function_2229b28+1 @ =0x2229b29, 0x2239ff0
.word Function_2229e54+1 @ =0x2229e55, 0x2239ff4
.word Function_2229638+1 @ =0x2229639, 0x2239ff8
.word Function_2229810+1 @ =0x2229811, 0x2239ffc
.word Function_2229908+1 @ =0x2229909, 0x223a000
.word Function_222efb0+1 @ =0x222efb1, 0x223a004
.word Function_222f2f8+1 @ =0x222f2f9, 0x223a008
.word Function_222a00c+1 @ =0x222a00d, 0x223a00c
.word Function_2229c5c+1 @ =0x2229c5d, 0x223a010
.word Function_222a604+1 @ =0x222a605, 0x223a014
.word Function_222a8f4+1 @ =0x222a8f5, 0x223a018
.word Function_222ac40+1 @ =0x222ac41, 0x223a01c
.word Function_2228fb4+1 @ =0x2228fb5, 0x223a020
.word Function_222ab50+1 @ =0x222ab51, 0x223a024
.word Function_222f5ec+1 @ =0x222f5ed, 0x223a028
.word Function_22351a4+1 @ =0x22351a5, 0x223a02c
.word Function_22351d0+1 @ =0x22351d1, 0x223a030
.word Function_22351fc+1 @ =0x22351fd, 0x223a034
.word Function_2235228+1 @ =0x2235229, 0x223a038

.incbin "./baserom/overlay/overlay_0012.bin", 0x1a41c, 0x223ab84 - 0x223a03c


JumpTable_223ab84: @ no reference, yet
.word Function_2236f24+1 @ =0x2236f25, 0x223ab84
.word Function_22371e4+1 @ =0x22371e5, 0x223ab88
.word Function_2237608+1 @ =0x2237609, 0x223ab8c
.word Function_2236f10+1 @ =0x2236f11, 0x223ab90
.word Function_2237694+1 @ =0x2237695, 0x223ab94
.word Function_2237474+1 @ =0x2237475, 0x223ab98
.word Function_2236788+1 @ =0x2236789, 0x223ab9c
.word Function_22367b0+1 @ =0x22367b1, 0x223aba0
.word Function_22367d8+1 @ =0x22367d9, 0x223aba4
.word Function_2236800+1 @ =0x2236801, 0x223aba8
.word Function_2236828+1 @ =0x2236829, 0x223abac
.word Function_2236850+1 @ =0x2236851, 0x223abb0
.word Function_2236878+1 @ =0x2236879, 0x223abb4
.word Function_22368a0+1 @ =0x22368a1, 0x223abb8

.incbin "./baserom/overlay/overlay_0012.bin", 0x1af9c, 0x223ac80 - 0x223abbc


JumpTable_223ac80:
.word Function_22368f0+1 @ =0x22368f1, 0x223ac80
.word Function_22368f4+1 @ =0x22368f5, 0x223ac84
.word Function_223690c+1 @ =0x223690d, 0x223ac88
.word Function_2236918+1 @ =0x2236919, 0x223ac8c
.word Function_22369f8+1 @ =0x22369f9, 0x223ac90
.word Function_22369fc+1 @ =0x22369fd, 0x223ac94
.word Function_2236a50+1 @ =0x2236a51, 0x223ac98
.word Function_2236a54+1 @ =0x2236a55, 0x223ac9c
.word Function_2236a60+1 @ =0x2236a61, 0x223aca0
.word Function_2236a6c+1 @ =0x2236a6d, 0x223aca4
.word Function_2236b14+1 @ =0x2236b15, 0x223aca8
.word Function_2236b20+1 @ =0x2236b21, 0x223acac
.word Function_2236b94+1 @ =0x2236b95, 0x223acb0
.word Function_2236b98+1 @ =0x2236b99, 0x223acb4
.word Function_2236c34+1 @ =0x2236c35, 0x223acb8
.word Function_2236c38+1 @ =0x2236c39, 0x223acbc
.word Function_2236c58+1 @ =0x2236c59, 0x223acc0
.word Function_2236c64+1 @ =0x2236c65, 0x223acc4
.word Function_2236cfc+1 @ =0x2236cfd, 0x223acc8
.word Function_2236d00+1 @ =0x2236d01, 0x223accc
.word Function_2236d0c+1 @ =0x2236d0d, 0x223acd0
.word Function_2236d18+1 @ =0x2236d19, 0x223acd4
.word Function_2236e08+1 @ =0x2236e09, 0x223acd8
.word Function_2236e0c+1 @ =0x2236e0d, 0x223acdc
.word Function_2236e70+1 @ =0x2236e71, 0x223ace0
.word Function_2236e7c+1 @ =0x2236e7d, 0x223ace4
.word Function_2236f00+1 @ =0x2236f01, 0x223ace8
.word Function_2236f0c+1 @ =0x2236f0d, 0x223acec
@ 0x223acf0


.incbin "./baserom/overlay/overlay_0012.bin", 0x1b0d0, 0x223b13f - 0x223acf0


@end 0x223b13f
