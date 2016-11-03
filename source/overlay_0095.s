

.section .iwram95, "ax"


.thumb
Function_2246c20: @ 2246c20 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_2246c30
	b       branch_2246dca

branch_2246c30: @ 2246c30 :thumb
	mov     r0, #0x3
	mov     r1, #0x39
	lsl     r2, r0, #15
	bl      0x2017fc8
	mov     r0, #0x3
	mov     r1, #0x3a
	lsl     r2, r0, #15
	bl      0x2017fc8
	bl      Function_2247688
	ldr     r1, [pc, #0x184] @ 0x2246dd0, (=0x492)
	mov     r0, #0x3
	mov     r2, #0x1
	bl      0x2004550
	mov     r1, #0x56
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x39
	bl      0x200681c
	mov     r4, r0
	bne     branch_2246c64
	b       branch_2246dc4
@ 0x2246c64

.thumb
branch_2246c64: @ 2246c64 :thumb
	mov     r0, r5
	bl      0x2006840
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x39
	bl      0x2018340
	str     r0, [r4, #0x8]
	mov     r0, #0x19
	lsl     r0, r0, #4
	mov     r1, #0x39
	bl      0x2023790
	str     r0, [r4, #0x14]
	ldr     r2, [pc, #0x14c] @ 0x2246dd4, (=0x15e)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x39
	bl      0x200b144
	str     r0, [r4, #0x10]
	mov     r0, #0x39
	bl      0x200b358
	str     r0, [r4, #0xc]
	ldr     r2, [r4, #0x0]
	ldr     r0, [r2, #0x10]
	cmp     r0, #0x1
	beq     branch_2246cac
	cmp     r0, #0x2
	beq     branch_2246cde
	cmp     r0, #0x4
	beq     branch_2246cea
	b       branch_2246d02
@ 0x2246cac

.thumb
branch_2246cac: @ 2246cac :thumb
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	ldr     r2, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x4]
	mov     r1, #0x1
	bl      0x200b5cc
	ldr     r2, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x8]
	mov     r1, #0x2
	bl      0x200b498
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_2246dec
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	b       branch_2246d02
@ 0x2246cde

.thumb
branch_2246cde: @ 2246cde :thumb
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	b       branch_2246d02
@ 0x2246cea

.thumb
branch_2246cea: @ 2246cea :thumb
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x4]
	mov     r1, #0x1
	bl      0x200b5cc
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_2246dec
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r4, r1]
.thumb
branch_2246d02: @ 2246d02 :thumb
	blx     0x20a7944
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x7f
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r1, #0x39
	str     r1, [sp, #0x10]
	mov     r1, #0x80
	mov     r2, r0
	bl      0x200a784
	mov     r1, r4
	mov     r0, #0x40
	add     r1, #0x1c
	mov     r2, #0x39
	bl      0x20095c4
	str     r0, [r4, #0x18]
	mov     r0, r4
	mov     r2, #0x3a
	add     r0, #0x1c
	mov     r1, #0x0
	lsl     r2, r2, #14
	bl      0x200964c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	bl      0x2074570
	mov     r1, #0x53
	lsl     r1, r1, #2
	strh    r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x70
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	bl      0x2074570
	ldr     r1, [pc, #0x78] @ 0x2246dd8, (=0x14e)
	mov     r2, #0x0
	strh    r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	ldr     r0, [r0, #0x4]
	bl      0x2074570
	mov     r1, #0x15
	lsl     r1, r1, #4
	strh    r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x70
	ldr     r0, [r0, #0x4]
	mov     r2, #0x0
	bl      0x2074570
	ldr     r1, [pc, #0x5c] @ 0x2246ddc, (=0x152)
	strh    r0, [r4, r1]
	mov     r0, #0x0
	.hword  0x1c89 @ add r1, r1, #0x2
	str     r0, [r4, r1]
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2246de0, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x3c] @ 0x2246de4, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2246de8, (=0x2246f0d)
	mov     r1, r4
	mov     r2, #0x1
	bl      0x200da20
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	add     r1, #0x10
	str     r0, [r4, r1]
.thumb
branch_2246dc4: @ 2246dc4 :thumb
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x2246dca

.thumb
branch_2246dca: @ 2246dca :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2246dd0

.word 0x492 @ 0x2246dd0
.word 0x15e @ 0x2246dd4
.word 0x14e @ 0x2246dd8
.word 0x152 @ 0x2246ddc
.word 0xffffe0ff @ 0x2246de0
.word 0x4001000 @ 0x2246de4
.word 0x2246f0d @ 0x2246de8
.thumb
Function_2246dec: @ 2246dec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      0x2074570
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1c
	bl      0x20759cc
	cmp     r0, #0x0
	bne     branch_2246e16
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2246e16

.thumb
branch_2246e16: @ 2246e16 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246e1a


.align 2, 0


.thumb
Function_2246e1c: @ 2246e1c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	blx     0x20c3d98
	mov     r6, r0
	mov     r0, r5
	bl      0x200682c
	mov     r4, r0
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200da58
	bl      0x2039794
	ldr     r0, [r4, #0xc]
	bl      0x200b3f0
	ldr     r0, [r4, #0x10]
	bl      0x200b190
	ldr     r0, [r4, #0x14]
	bl      0x20237bc
	ldr     r0, [r4, #0x8]
	bl      0x20181c4
	ldr     r0, [r4, #0x18]
	bl      0x2021964
	bl      0x200a878
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x39
	bl      0x201807c
	mov     r0, #0x3a
	bl      0x201807c
	mov     r0, r6
	blx     0x20c3dac
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2246e7a


.align 2, 0


.thumb
Function_2246e7c: @ 2246e7c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r3, [r4, #0x4]
	cmp     r3, #0x7
	bcs     branch_2246ef8
	ldr     r1, [r4, #0x0]
	ldr     r6, [pc, #0x6c] @ 0x2246efc, (=0x224be98)
	lsl     r2, r3, #4
	ldr     r1, [r1, #0x10]
	ldr     r6, [r6, r2]
	tst     r1, r6
	beq     branch_2246ee8
	mov     r1, #0x55
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_2246eb0
	ldr     r1, [pc, #0x58] @ 0x2246f00, (=0x224be8c)
	ldr     r1, [r1, r2]
	blx     r1
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r4, r1]
.thumb
branch_2246eb0: @ 2246eb0 :thumb
	ldr     r2, [r4, #0x4]
	mov     r0, #0x55
	lsl     r3, r2, #4
	ldr     r2, [pc, #0x4c] @ 0x2246f04, (=0x224be90)
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r2, r3]
	mov     r1, r5
	blx     r2
	cmp     r0, #0x0
	beq     branch_2246ef0
	ldr     r1, [r4, #0x4]
	mov     r0, #0x55
	lsl     r2, r1, #4
	ldr     r1, [pc, #0x38] @ 0x2246f08, (=0x224be94)
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r1, r2]
	blx     r1
	mov     r0, #0x55
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	str     r1, [r5, #0x0]
	b       branch_2246ef0
@ 0x2246ee8

.thumb
branch_2246ee8: @ 2246ee8 :thumb
	add     r0, r3, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_2246ef0: @ 2246ef0 :thumb
	bl      Function_2247694
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2246ef8

.thumb
branch_2246ef8: @ 2246ef8 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2246efc

.word 0x224be98 @ 0x2246efc
.word 0x224be8c @ 0x2246f00
.word 0x224be90 @ 0x2246f04
.word 0x224be94 @ 0x2246f08
.thumb
Function_2246f0c: @ 2246f0c :thumb
	push    {r3,lr}
	ldr     r0, [r1, #0x18]
	bl      0x20219f8
	bl      0x200a858
	ldr     r3, [pc, #0xc] @ 0x2246f28, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x2246f2c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x2246f26


.align 2


.word 0x27e0000 @ 0x2246f28
.word 0x3ff8 @ 0x2246f2c
.thumb
Function_2246f30: @ 2246f30 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x39
	mov     r6, r1
	mov     r1, r0
	add     r1, #0xc7
	bl      0x2018144
	mov     r4, r0
	ldr     r0, [pc, #0xac] @ 0x2246ff4, (=0x0)
	str     r0, [r5, #0x0]
	beq     branch_2246fec
	mov     r0, #0x5d
	mov     r1, #0x6
	add     r2, sp, #0x4
	mov     r3, #0x39
	bl      0x2006f88
	mov     r7, r0
	beq     branch_2246f6a
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #0x60
	blx     MIi_CpuClear16
	mov     r0, r7
	bl      0x20181c4
.thumb
branch_2246f6a: @ 2246f6a :thumb
	mov     r1, r4
	mov     r0, #0x0
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xe8
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xf0
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xf4
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xe4
	str     r5, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xfc
	str     r6, [r1, #0x0]
	mov     r3, r4
	mov     r2, r0
.thumb
branch_2246f9a: @ 2246f9a :thumb
	mov     r1, r3
	add     r1, #0xc4
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r2, [r1, #0x0]
	cmp     r0, #0x8
	blt     branch_2246f9a
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x2246ff8, (=0x4000050)
	mov     r1, #0x4
	mov     r2, #0xc
	mov     r3, #0x10
	blx     0x20bf55c
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2246ffc, (=0x4001050)
	mov     r1, #0x4
	mov     r2, #0xc
	mov     r3, #0x10
	blx     0x20bf55c
	ldr     r0, [pc, #0x34] @ 0x2247000, (=0x2247061)
	mov     r1, r4
	mov     r2, #0x14
	bl      0x200da3c
	mov     r1, r4
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2246fec
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_2246fec: @ 2246fec :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2246ff2


.align 2


.word 0x0 @ 0x2246ff4
.word 0x4000050 @ 0x2246ff8
.word 0x4001050 @ 0x2246ffc
.word 0x2247061 @ 0x2247000
.thumb
Function_2247004: @ 2247004 :thumb
	mov     r1, r0
	add     r1, #0xe4
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_2247016
	mov     r1, #0x1
	add     r0, #0xe8
	str     r1, [r0, #0x0]
.thumb
branch_2247016: @ 2247016 :thumb
	bx      lr
@ 0x2247018

.thumb
Function_2247018: @ 2247018 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_224705e
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_224702a: @ 224702a :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224703c
	mov     r0, r6
	mov     r1, r4
	bl      Function_2247224
.thumb
branch_224703c: @ 224703c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_224702a
	mov     r0, r6
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	bl      0x200da58
	mov     r0, r6
	bl      0x20181c4
.thumb
branch_224705e: @ 224705e :thumb
	pop     {r4-r6,pc}
@ 0x2247060

.thumb
Function_2247060: @ 2247060 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22470de
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bgt     branch_224709c
	ldr     r0, [pc, #0xb8] @ 0x2247144, (=0x6ae)
	bl      0x2005748
	mov     r0, r4
	mov     r1, #0x1e
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_2247170
.thumb
branch_224709c: @ 224709c :thumb
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2247140
	blx     0x20c096c
	blx     0x20c0bbc
	mov     r0, r4
	mov     r1, #0x60
	blx     0x20c2c54
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #12
	mov     r2, #0x60
	blx     0x20c0a0c
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #12
	mov     r2, #0x60
	blx     0x20c0bd4
	blx     0x20c0a7c
	blx     0x20c0c38
	mov     r0, #0x0
	add     r4, #0xec
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x22470de

.thumb
branch_22470de: @ 22470de :thumb
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2247120
	blx     0x20c096c
	blx     0x20c0bbc
	mov     r0, r4
	mov     r1, #0x60
	blx     0x20c2c54
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #12
	mov     r2, #0x60
	blx     0x20c0a0c
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #12
	mov     r2, #0x60
	blx     0x20c0bd4
	blx     0x20c0a7c
	blx     0x20c0c38
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xec
	str     r1, [r0, #0x0]
.thumb
branch_2247120: @ 2247120 :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2247140
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      0x20181c4
	mov     r0, r5
	bl      0x200da58
.thumb
branch_2247140: @ 2247140 :thumb
	pop     {r3-r5,pc}
@ 0x2247142


.align 2


.word 0x6ae @ 0x2247144
.thumb
Function_2247148: @ 2247148 :thumb
	push    {r3,r4}
	cmp     r1, #0x0
	blt     branch_2247158
	cmp     r1, #0x60
	bge     branch_2247158
	mov     r4, #0x0
	lsl     r1, r1, #1
	strh    r4, [r0, r1]
.thumb
branch_2247158: @ 2247158 :thumb
	cmp     r2, #0x0
	blt     branch_2247164
	cmp     r2, #0x60
	bge     branch_2247164
	lsl     r1, r2, #1
	strh    r3, [r0, r1]
.thumb
branch_2247164: @ 2247164 :thumb
	mov     r1, #0x1
	add     r0, #0xec
	str     r1, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x224716e


.align 2, 0


.thumb
Function_2247170: @ 2247170 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224721c
	mov     r0, #0x39
	mov     r1, #0x18
	bl      0x2018144
	mov     r4, r0
	beq     branch_224721c
	mov     r0, r5
	str     r5, [r4, #0x0]
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_22471a2
	mov     r0, #0x0
	mvn     r0, r0
	b       branch_22471a4
@ 0x22471a2

.thumb
branch_22471a2: @ 22471a2 :thumb
	mov     r0, #0xf
.thumb
branch_22471a4: @ 22471a4 :thumb
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x2
	str     r0, [r4, #0x8]
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	str     r0, [r4, #0x10]
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r2, #0xa
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x5c] @ 0x2247220, (=0x2247255)
	bl      0x200d9e8
	mov     r1, r5
	add     r1, #0xf8
	ldr     r1, [r1, #0x0]
	lsl     r1, r1, #2
	add     r1, r5, r1
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2247216
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x8
	blt     branch_224721c
	mov     r0, #0x0
	add     r5, #0xf8
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x2247216

.thumb
branch_2247216: @ 2247216 :thumb
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_224721c: @ 224721c :thumb
	pop     {r3-r5,pc}
@ 0x224721e


.align 2


.word 0x2247255 @ 0x2247220
.thumb
Function_2247224: @ 2247224 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r5
	lsl     r4, r1, #2
	add     r6, #0xc4
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	beq     branch_2247252
	bl      0x201ced0
	bl      0x20181c4
	ldr     r0, [r6, r4]
	bl      0x200da58
	mov     r0, #0x0
	str     r0, [r6, r4]
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	add     r5, #0xf4
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_2247252: @ 2247252 :thumb
	pop     {r4-r6,pc}
@ 0x2247254

.thumb
Function_2247254: @ 2247254 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0xc]
	add     r1, r0, #0x1
	str     r1, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	blt     branch_22472bc
	mov     r3, #0x0
	str     r3, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x1
	bne     branch_2247294
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	add     r2, r1, #0x1
	cmp     r2, #0xf
	blt     branch_2247286
	bl      Function_2247148
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x10]
	bl      Function_2247224
	pop     {r4,pc}
@ 0x2247286

.thumb
branch_2247286: @ 2247286 :thumb
	ldr     r3, [pc, #0x38] @ 0x22472c0, (=0x7fff)
	bl      Function_2247148
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2247294

.thumb
branch_2247294: @ 2247294 :thumb
	ldr     r2, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	cmp     r2, #0x0
	bge     branch_22472ae
	mov     r1, r2
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_2247148
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x10]
	bl      Function_2247224
	pop     {r4,pc}
@ 0x22472ae

.thumb
branch_22472ae: @ 22472ae :thumb
	ldr     r3, [pc, #0x10] @ 0x22472c0, (=0x7fff)
	add     r1, r2, #0x1
	bl      Function_2247148
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_22472bc: @ 22472bc :thumb
	pop     {r4,pc}
@ 0x22472be


.align 2


.word 0x7fff @ 0x22472c0
.thumb
Function_22472c4: @ 22472c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r0, #0x39
	mov     r1, #0x24
	mov     r7, r2
	str     r3, [sp, #0x4]
	ldr     r5, [sp, #0x28]
	bl      0x2018144
	mov     r4, r0
	ldr     r0, [pc, #0x44] @ 0x2247324, (=0x1)
	str     r0, [r5, #0x0]
	beq     branch_224731c
	ldr     r1, [sp, #0x0]
	str     r1, [r4, #0x0]
	str     r6, [r4, #0x8]
	ldr     r1, [sp, #0x4]
	str     r7, [r4, #0xc]
	str     r1, [r4, #0x10]
	ldr     r1, [sp, #0x20]
	str     r1, [r4, #0x14]
	cmp     r6, r7
	bge     branch_22472f8
	mov     r0, #0x0
.thumb
branch_22472f8: @ 22472f8 :thumb
	str     r0, [r4, #0x18]
	ldr     r0, [sp, #0x24]
	mov     r2, #0x0
	str     r0, [r4, #0x1c]
	str     r5, [r4, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2247328, (=0x224732d)
	mov     r1, r4
	str     r2, [r5, #0x0]
	bl      0x200da04
	str     r0, [r4, #0x20]
	cmp     r0, #0x0
	bne     branch_224731c
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_224731c: @ 224731c :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2247322


.align 2


.word 0x1 @ 0x2247324
.word 0x224732d @ 0x2247328
.thumb
Function_224732c: @ 224732c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	mul     r1, r0
	asr     r2, r1, #12
	asr     r1, r2, #4
	lsr     r1, r1, #27
	add     r1, r2, r1
	asr     r2, r1, #5
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x0
	beq     branch_224734e
	cmp     r1, #0x1
	beq     branch_2247364
	b       branch_2247378
@ 0x224734e

.thumb
branch_224734e: @ 224734e :thumb
	ldr     r1, [r4, #0xc]
	add     r0, r0, r2
	cmp     r0, r1
	bge     branch_224735a
	str     r0, [r4, #0x8]
	b       branch_2247378
@ 0x224735a

.thumb
branch_224735a: @ 224735a :thumb
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_2247378
@ 0x2247364

.thumb
branch_2247364: @ 2247364 :thumb
	ldr     r1, [r4, #0xc]
	sub     r0, r0, r2
	cmp     r0, r1
	ble     branch_2247370
	str     r0, [r4, #0x8]
	b       branch_2247378
@ 0x2247370

.thumb
branch_2247370: @ 2247370 :thumb
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_2247378: @ 2247378 :thumb
	mov     r0, r4
	bl      Function_22473a0
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2247394
	mov     r0, r4
	bl      Function_22476c8
	mov     r0, r5
	bl      0x200da58
	pop     {r3-r5,pc}
@ 0x2247394

.thumb
branch_2247394: @ 2247394 :thumb
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	pop     {r3-r5,pc}
@ 0x224739e


.align 2, 0


.thumb
Function_22473a0: @ 22473a0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	add     r2, sp, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x8]
	mov     r3, #0x80
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x1c]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x24] @ 0x22473e4, (=Unknown_224be74)
	ldr     r0, [r0, r1]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	bl      0x2019348
	ldr     r0, [r4, #0x1c]
	add     r2, sp, #0x4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x10] @ 0x22473e4, (=Unknown_224be74)
	mov     r3, #0x80
	ldr     r0, [r0, r1]
	mov     r1, #0x6
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	bl      0x2019348
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x22473e4

.word Unknown_224be74 @ 0x22473e4



.thumb
Function_22473e8: @ 22473e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r5, r0
	ldr     r0, [sp, #0x58]
	mov     r4, r1
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_2247400
	mov     r6, #0x19
	lsl     r6, r6, #8
	b       branch_2247404
@ 0x2247400

.thumb
branch_2247400: @ 2247400 :thumb
	mov     r6, #0x32
	lsl     r6, r6, #6
.thumb
branch_2247404: @ 2247404 :thumb
	mov     r0, #0x39
	mov     r1, r6
	bl      0x2018184
	mov     r7, r0
	beq     branch_22474aa
	ldr     r3, [pc, #0xbc] @ 0x22474d0, (=0x224be7c)
	add     r2, sp, #0x24
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	cmp     r4, #0x0
	ldr     r0, [r5, #0x0]
	bne     branch_2247426
	ldr     r4, [r0, #0x0]
	b       branch_2247428
@ 0x2247426

.thumb
branch_2247426: @ 2247426 :thumb
	ldr     r4, [r0, #0x4]
.thumb
branch_2247428: @ 2247428 :thumb
	mov     r0, r4
	bl      0x2073d20
	str     r0, [sp, #0x20]
	add     r0, sp, #0x34
	mov     r1, r4
	mov     r2, #0x2
	mov     r3, #0x0
	bl      0x2075f0c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      0x2074570
	str     r0, [sp, #0x1c]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	lsl     r0, r0, #16
	ldr     r1, [sp, #0x58]
	lsr     r0, r0, #16
	cmp     r1, #0x0
	beq     branch_2247462
	ldr     r1, [sp, #0x2c]
	lsl     r1, r1, #1
	str     r1, [sp, #0x2c]
.thumb
branch_2247462: @ 2247462 :thumb
	ldr     r1, [sp, #0x1c]
	str     r7, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x58]
	mov     r2, #0x39
	str     r1, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	add     r1, sp, #0x24
	ldrh    r0, [r1, #0x10]
	ldrh    r1, [r1, #0x12]
	add     r3, sp, #0x24
	bl      0x2013720
	mov     r0, r7
	mov     r1, r6
	blx     0x20c2c54
	ldr     r1, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r1, r1, #24
	ldr     r0, [r5, #0x8]
	lsr     r1, r1, #24
	mov     r2, r7
	mov     r3, r6
	bl      0x201958c
	ldr     r1, [sp, #0x20]
	mov     r0, r4
	bl      0x2073d48
	mov     r0, r7
	bl      0x20181c4
.thumb
branch_22474aa: @ 22474aa :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x4
	bcc     branch_22474b4
	mov     r2, #0x4
	b       branch_22474b6
@ 0x22474b4

.thumb
branch_22474b4: @ 22474b4 :thumb
	mov     r2, #0x0
.thumb
branch_22474b6: @ 22474b6 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x39
	ldr     r3, [sp, #0x18]
	str     r0, [sp, #0x4]
	add     r1, sp, #0x24
	ldrh    r0, [r1, #0x10]
	ldrh    r1, [r1, #0x14]
	lsl     r3, r3, #5
	bl      0x2006e84
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x22474d0

.word 0x224be7c @ 0x22474d0
.thumb
Function_22474d4: @ 22474d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r4, r2
	mov     r6, r3
	cmp     r1, #0x0
	bne     branch_22474e6
	ldr     r1, [pc, #0x80] @ 0x2247564, (=0x106)
	b       branch_22474f6
@ 0x22474e6

.thumb
branch_22474e6: @ 22474e6 :thumb
	mov     r1, #0x52
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_22474f4
	sub     r1, #0x41
	b       branch_22474f6
@ 0x22474f4

.thumb
branch_22474f4: @ 22474f4 :thumb
	sub     r1, #0x42
.thumb
branch_22474f6: @ 22474f6 :thumb
	mov     r0, #0x39
	str     r0, [sp, #0x0]
	mov     r0, #0x7
	mov     r2, #0x0
	add     r3, sp, #0x1c
	bl      0x2006f6c
	mov     r7, r0
	beq     branch_224755e
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	ldr     r2, [sp, #0x38]
	add     r0, #0xc
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x20
	ldr     r3, [sp, #0x3c]
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	lsl     r1, r4, #24
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r5, #0x8]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x20198e8
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r0, r6, #24
	ldr     r2, [sp, #0x38]
	ldr     r3, [sp, #0x3c]
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	lsl     r1, r4, #24
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r5, #0x8]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x2019e2c
	mov     r0, r7
	bl      0x20181c4
.thumb
branch_224755e: @ 224755e :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2247562


.align 2


.word 0x106 @ 0x2247564
.thumb
Function_2247568: @ 2247568 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	mov     r6, r3
	mov     r0, #0x3a
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r1, r2
	mov     r0, r4
	mov     r2, #0x1
	add     r3, #0x8
	bl      0x2006fa0
	str     r0, [r5, #0x0]
	mov     r0, #0x3a
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1
	add     r3, #0xc
	bl      0x2006fbc
	str     r0, [r5, #0x4]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224759e


.align 2, 0


.thumb
Function_22475a0: @ 22475a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22475b2
	bl      0x20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_22475b2: @ 22475b2 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22475c0
	bl      0x20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
.thumb
branch_22475c0: @ 22475c0 :thumb
	pop     {r4,pc}
@ 0x22475c2


.align 2, 0


.thumb
Function_22475c4: @ 22475c4 :thumb
	str     r2, [r0, #0x0]
	str     r3, [r0, #0x8]
	ldr     r2, [r1, #0x8]
	str     r2, [r0, #0xc]
	ldr     r1, [r1, #0xc]
	ldr     r2, [sp, #0x0]
	str     r1, [r0, #0x10]
	mov     r1, r0
	add     r1, #0x20
	strb    r2, [r1, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x18]
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x22475e4

.thumb
Function_22475e4: @ 22475e4 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	ldr     r0, [r0, #0x18]
	str     r0, [sp, #0x0]
	lsl     r0, r2, #12
	str     r0, [sp, #0x8]
	lsl     r0, r3, #12
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x28]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x18]
	mov     r0, #0x39
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x0
	bl      0x2021b90
	mov     r4, r0
	beq     branch_2247620
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #12
	bl      0x2021ce4
.thumb
branch_2247620: @ 2247620 :thumb
	mov     r0, r4
	add     sp, #0x20
	pop     {r4,pc}
@ 0x2247626


.align 2, 0


.thumb
Function_2247628: @ 2247628 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x224762c

.thumb
Function_224762c: @ 224762c :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2247630

.thumb
Function_2247630: @ 2247630 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x2247634

.thumb
Function_2247634: @ 2247634 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x224763a


.align 2, 0


.thumb
Function_224763c: @ 224763c :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x2247642


.align 2, 0


.thumb
Function_2247644: @ 2247644 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x224764a


.align 2, 0


.thumb
Function_224764c: @ 224764c :thumb
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x2247654

.thumb
Function_2247654: @ 2247654 :thumb
	ldr     r1, [pc, #0x4] @ 0x224765c, (=0x14e)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x224765a


.align 2


.word 0x14e @ 0x224765c
.thumb
Function_2247660: @ 2247660 :thumb
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x2247668

.thumb
Function_2247668: @ 2247668 :thumb
	ldr     r1, [pc, #0x4] @ 0x2247670, (=0x152)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x224766e


.align 2


.word 0x152 @ 0x2247670
.thumb
Function_2247674: @ 2247674 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r3, [pc, #0x4] @ 0x224767c, (=0x2027b51)
	ldr     r0, [r0, #0x14]
	bx      r3
@ 0x224767c

.word 0x2027b51 @ 0x224767c
.thumb
Function_2247680: @ 2247680 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x2247686


.align 2, 0


.thumb
Function_2247688: @ 2247688 :thumb
	ldr     r0, [pc, #0x4] @ 0x2247690, (=0x224c2e0)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2247690

.word 0x224c2e0 @ 0x2247690
.thumb
Function_2247694: @ 2247694 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x28] @ 0x22476c0, (=0x224c2e0)
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_22476bc
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_22476b6
	ldr     r5, [pc, #0x1c] @ 0x22476c4, (=0x224c2e4)
.thumb
branch_22476a6: @ 22476a6 :thumb
	ldr     r0, [r5, #0x0]
	bl      0x20181c4
	ldr     r0, [r6, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_22476a6
.thumb
branch_22476b6: @ 22476b6 :thumb
	ldr     r0, [pc, #0x8] @ 0x22476c0, (=0x224c2e0)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
.thumb
branch_22476bc: @ 22476bc :thumb
	pop     {r4-r6,pc}
@ 0x22476be


.align 2


.word 0x224c2e0 @ 0x22476c0
.word 0x224c2e4 @ 0x22476c4
.thumb
Function_22476c8: @ 22476c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x22476e8, (=0x224c2e0)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x20
	blt     branch_22476d8
	bl      ErrorHandling
.thumb
branch_22476d8: @ 22476d8 :thumb
	ldr     r0, [pc, #0xc] @ 0x22476e8, (=0x224c2e0)
	ldr     r2, [r0, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x8] @ 0x22476ec, (=0x224c2e4)
	lsl     r1, r2, #2
	str     r4, [r0, r1]
	pop     {r4,pc}
@ 0x22476e8

.word 0x224c2e0 @ 0x22476e8
.word 0x224c2e4 @ 0x22476ec
.thumb
Function_22476f0: @ 22476f0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, r1
	mov     r0, #0x3a
	mov     r1, #0x20
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      0x2018144
	mov     r6, r0
	beq     branch_2247736
	ldr     r3, [sp, #0x0]
	mov     r1, r4
	mov     r2, r5
	bl      Function_2247af0
	mov     r1, #0x8c
	mov     r0, #0x3a
	mul     r1, r7
	bl      0x2018144
	str     r0, [r6, #0x18]
	mov     r4, #0x0
	str     r7, [r6, #0x1c]
	cmp     r7, #0x0
	bls     branch_2247736
	mov     r5, r4
.thumb
branch_2247726: @ 2247726 :thumb
	ldr     r0, [r6, #0x18]
	add     r0, r0, r5
	bl      Function_2247868
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8c
	cmp     r4, r7
	bcc     branch_2247726
.thumb
branch_2247736: @ 2247736 :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x224773a


.align 2, 0


.thumb
Function_224773c: @ 224773c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_224775c
	mov     r4, r6
.thumb
branch_224774a: @ 224774a :thumb
	ldr     r0, [r5, #0x18]
	add     r0, r0, r4
	bl      Function_224789c
	ldr     r0, [r5, #0x1c]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8c
	cmp     r6, r0
	bcc     branch_224774a
.thumb
branch_224775c: @ 224775c :thumb
	ldr     r0, [r5, #0x18]
	bl      0x20181c4
	mov     r0, r5
	bl      Function_2247b5c
	mov     r0, r5
	bl      0x20181c4
	pop     {r4-r6,pc}
@ 0x2247770

.thumb
Function_2247770: @ 2247770 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r1, #0x0
	mov     r5, r0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	bl      0x20203ec
	ldr     r0, [r5, #0x1c]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_22477a6
	mov     r4, r6
.thumb
branch_224778e: @ 224778e :thumb
	ldr     r0, [r5, #0x18]
	add     r0, r0, r4
	ldr     r1, [r0, #0x64]
	cmp     r1, #0x0
	beq     branch_224779c
	bl      Function_22477b8
.thumb
branch_224779c: @ 224779c :thumb
	ldr     r0, [r5, #0x1c]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8c
	cmp     r6, r0
	bcc     branch_224778e
.thumb
branch_22477a6: @ 22477a6 :thumb
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     0x20b275c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22477b6


.align 2, 0


.thumb
Function_22477b8: @ 22477b8 :thumb
	push    {r4,lr}
	add     sp, #-0x50
	mov     r4, r0
	add     r0, sp, #0x2c
	blx     0x20bb4c8
	mov     r0, r4
	add     r0, #0x80
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x98] @ 0x2247864, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x8
	bl      0x20bb5ac
	add     r1, sp, #0x2c
	add     r0, sp, #0x8
	mov     r2, r1
	blx     0x20bb8ec
	mov     r0, r4
	add     r0, #0x82
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x70] @ 0x2247864, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x8
	bl      0x20bb5c8
	add     r1, sp, #0x2c
	add     r0, sp, #0x8
	mov     r2, r1
	blx     0x20bb8ec
	mov     r0, r4
	add     r0, #0x84
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x4c] @ 0x2247864, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x8
	bl      0x20bb5e4
	add     r1, sp, #0x2c
	add     r0, sp, #0x8
	mov     r2, r1
	blx     0x20bb8ec
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1f
	beq     branch_2247850
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	str     r0, [sp, #0x4]
	blx     0x20af5b4
.thumb
branch_2247850: @ 2247850 :thumb
	mov     r1, r4
	add     r0, r4, #0x4
	add     r4, #0x74
	add     r1, #0x68
	add     r2, sp, #0x2c
	mov     r3, r4
	bl      0x201ca74
	add     sp, #0x50
	pop     {r4,pc}
@ 0x2247864

.word 0x20f983c @ 0x2247864
.thumb
Function_2247868: @ 2247868 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x64]
	mov     r2, r0
	str     r1, [r0, #0x0]
	add     r2, #0x84
	strh    r1, [r2, #0x0]
	mov     r2, #0x84
	ldsh    r3, [r0, r2]
	mov     r2, r0
	add     r2, #0x82
	strh    r3, [r2, #0x0]
	mov     r2, #0x82
	ldsh    r3, [r0, r2]
	mov     r2, r0
	add     r2, #0x80
	strh    r3, [r2, #0x0]
	mov     r2, #0x1
	lsl     r2, r2, #12
	str     r2, [r0, #0x7c]
	str     r2, [r0, #0x78]
	str     r2, [r0, #0x74]
	str     r1, [r0, #0x70]
	str     r1, [r0, #0x6c]
	str     r1, [r0, #0x68]
	bx      lr
@ 0x224789a


.align 2, 0


.thumb
Function_224789c: @ 224789c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22478b0
	bl      0x20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	str     r0, [r4, #0x64]
.thumb
branch_22478b0: @ 22478b0 :thumb
	pop     {r4,pc}
@ 0x22478b2


.align 2, 0


.thumb
Function_22478b4: @ 22478b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r4, [r0, #0x18]
	mov     r6, r1
	mov     r0, #0x8c
	mul     r6, r0
	mov     r7, r2
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r1, r3
	mov     r0, r7
	mov     r2, #0x0
	mov     r3, #0x3a
	add     r5, r4, r6
	bl      0x2006fe8
	str     r0, [r4, r6]
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	bl      0x2006b58
	mov     r1, r0
	ldr     r0, [r4, r6]
	blx     0x20c2c54
	ldr     r0, [r4, r6]
	cmp     r0, #0x0
	beq     branch_2247950
	blx     0x20b3c0c
	str     r0, [r5, #0x58]
	cmp     r0, #0x0
	beq     branch_2247918
	mov     r2, r0
	add     r2, #0x8
	beq     branch_224790c
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_224790c
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_224790e
@ 0x224790c

.thumb
branch_224790c: @ 224790c :thumb
	mov     r1, #0x0
.thumb
branch_224790e: @ 224790e :thumb
	cmp     r1, #0x0
	beq     branch_2247918
	ldr     r1, [r1, #0x0]
	add     r0, r0, r1
	b       branch_224791a
@ 0x2247918

.thumb
branch_2247918: @ 2247918 :thumb
	mov     r0, #0x0
.thumb
branch_224791a: @ 224791a :thumb
	str     r0, [r5, #0x5c]
	ldr     r0, [r5, #0x0]
	blx     0x20b3c1c
	str     r0, [r5, #0x60]
	bl      0x201cbcc
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x60]
	bl      0x201cbb0
	ldr     r1, [r5, #0x5c]
	add     r0, r5, #0x4
	blx     0x20ae608
	ldr     r0, [sp, #0x20]
	mov     r1, #0x1f
	str     r0, [r5, #0x68]
	ldr     r0, [sp, #0x24]
	str     r0, [r5, #0x6c]
	ldr     r0, [sp, #0x28]
	str     r0, [r5, #0x70]
	mov     r0, r5
	add     r0, #0x88
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r0, [r5, #0x64]
.thumb
branch_2247950: @ 2247950 :thumb
	mov     r0, r5
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2247956


.align 2, 0


.thumb
Function_2247958: @ 2247958 :thumb
	mov     r2, r0
	add     r2, #0x68
	mov     r3, r1
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x2247968

.thumb
Function_2247968: @ 2247968 :thumb
	mov     r3, r1
	mov     r2, r0
	ldmia   r3!, {r0,r1}
	add     r2, #0x68
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x2247978

.thumb
Function_2247978: @ 2247978 :thumb
	mov     r2, r0
	add     r2, #0x80
	ldrh    r2, [r2, #0x0]
	strh    r2, [r1, #0x0]
	mov     r2, r0
	add     r2, #0x82
	ldrh    r2, [r2, #0x0]
	add     r0, #0x84
	strh    r2, [r1, #0x2]
	ldrh    r0, [r0, #0x0]
	strh    r0, [r1, #0x4]
	bx      lr
@ 0x2247990

.thumb
Function_2247990: @ 2247990 :thumb
	ldrh    r3, [r1, #0x0]
	mov     r2, r0
	add     r2, #0x80
	strh    r3, [r2, #0x0]
	mov     r2, r0
	ldrh    r3, [r1, #0x2]
	add     r2, #0x82
	add     r0, #0x84
	strh    r3, [r2, #0x0]
	ldrh    r1, [r1, #0x4]
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x22479a8

.thumb
Function_22479a8: @ 22479a8 :thumb
	str     r1, [r0, #0x64]
	bx      lr
@ 0x22479ac

.thumb
Function_22479ac: @ 22479ac :thumb
	push    {r3,lr}
	mov     r2, r0
	add     r2, #0x88
	str     r1, [r2, #0x0]
	cmp     r1, #0x1f
	ldr     r0, [r0, #0x5c]
	beq     branch_22479c6
	mov     r2, #0x1f
	mov     r1, #0x0
	lsl     r2, r2, #16
	blx     0x20b2d8c
	pop     {r3,pc}
@ 0x22479c6

.thumb
branch_22479c6: @ 22479c6 :thumb
	mov     r2, #0x1f
	mov     r1, #0x1
	lsl     r2, r2, #16
	blx     0x20b2d8c
	pop     {r3,pc}
@ 0x22479d2


.align 2, 0


.thumb
Function_22479d4: @ 22479d4 :thumb
	str     r1, [r0, #0x74]
	str     r1, [r0, #0x78]
	str     r1, [r0, #0x7c]
	bx      lr
@ 0x22479dc

.thumb
Function_22479dc: @ 22479dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4c
	mov     r4, r0
	add     r0, sp, #0x28
	blx     0x20bb4c8
	mov     r0, r4
	add     r0, #0x80
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x9c] @ 0x2247a8c, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x4
	bl      0x20bb5ac
	add     r1, sp, #0x28
	add     r0, sp, #0x4
	mov     r2, r1
	blx     0x20bb8ec
	mov     r0, r4
	add     r0, #0x82
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x74] @ 0x2247a8c, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x4
	bl      0x20bb5c8
	add     r1, sp, #0x28
	add     r0, sp, #0x4
	mov     r2, r1
	blx     0x20bb8ec
	mov     r0, r4
	add     r0, #0x84
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x50] @ 0x2247a8c, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x4
	bl      0x20bb5e4
	add     r1, sp, #0x28
	add     r0, sp, #0x4
	mov     r2, r1
	blx     0x20bb8ec
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	bl      0x20203ec
	mov     r1, r4
	ldr     r0, [r4, #0x5c]
	add     r4, #0x74
	add     r1, #0x68
	add     r2, sp, #0x28
	mov     r3, r4
	bl      0x201ced8
	mov     r4, r0
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     0x20b275c
	mov     r0, r4
	add     sp, #0x4c
	pop     {r3,r4,pc}
@ 0x2247a8c

.word 0x20f983c @ 0x2247a8c
.thumb
Function_2247a90: @ 2247a90 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r2, r0
	mov     r4, r1
	ldr     r1, [r2, #0x0]
	add     r0, sp, #0x0
	bl      0x2020abc
	add     r2, sp, #0x0
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2247aae


.align 2, 0


.thumb
Function_2247ab0: @ 2247ab0 :thumb
	ldr     r3, [pc, #0x8] @ 0x2247abc, (=0x20209d5)
	mov     r2, r0
	mov     r0, r1
	ldr     r1, [r2, #0x0]
	bx      r3
@ 0x2247aba


.align 2


.word 0x20209d5 @ 0x2247abc
.thumb
Function_2247ac0: @ 2247ac0 :thumb
	ldr     r3, [pc, #0x8] @ 0x2247acc, (=0x20209f9)
	mov     r2, r0
	mov     r0, r1
	ldr     r1, [r2, #0x0]
	bx      r3
@ 0x2247aca


.align 2


.word 0x20209f9 @ 0x2247acc
.thumb
Function_2247ad0: @ 2247ad0 :thumb
	ldr     r3, [pc, #0x8] @ 0x2247adc, (=0x2020855)
	mov     r2, r0
	mov     r0, r1
	ldr     r1, [r2, #0x0]
	bx      r3
@ 0x2247ada


.align 2


.word 0x2020855 @ 0x2247adc
.thumb
Function_2247ae0: @ 2247ae0 :thumb
	ldr     r3, [pc, #0x8] @ 0x2247aec, (=0x2020911)
	mov     r2, r0
	mov     r0, r1
	ldr     r1, [r2, #0x0]
	bx      r3
@ 0x2247aea


.align 2


.word 0x2020911 @ 0x2247aec
.thumb
Function_2247af0: @ 2247af0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x3a
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      0x20203ac
	str     r0, [r5, #0x0]
	str     r4, [r5, #0x4]
	str     r6, [r5, #0x8]
	mov     r1, #0x4b
	mov     r2, r5
	str     r7, [r5, #0xc]
	mov     r0, #0x0
	strh    r0, [r5, #0x10]
	strh    r0, [r5, #0x12]
	strh    r0, [r5, #0x14]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0x38] @ 0x2247b58, (=0xfa4)
	str     r0, [sp, #0x8]
	add     r0, r5, #0x4
	lsl     r1, r1, #14
	add     r2, #0x10
	bl      0x20206d0
	mov     r1, #0x0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x14]
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0xc
	bl      0x2020680
	ldr     r0, [r5, #0x0]
	bl      0x20203d4
	mov     r1, #0xfa
	ldr     r2, [r5, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #14
	bl      0x20206bc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2247b56


.align 2


.word 0xfa4 @ 0x2247b58
.thumb
Function_2247b5c: @ 2247b5c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x20203e0
	ldr     r0, [r4, #0x0]
	bl      0x20203b8
	pop     {r4,pc}
@ 0x2247b6c

.thumb
Function_2247b6c: @ 2247b6c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3a
	mov     r1, #0x84
	bl      0x2018144
	mov     r4, r0
	beq     branch_2247bc2
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2247628
	str     r0, [r4, #0x54]
	mov     r0, #0x3a
	bl      0x200762c
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r1, #0x3a
	bl      0x2023790
	str     r0, [r4, #0x68]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r1, #0x3a
	bl      0x2023790
	str     r0, [r4, #0x6c]
	mov     r0, #0x0
	str     r0, [r4, #0x78]
	str     r0, [r4, #0x7c]
	mov     r0, #0x93
	mov     r1, #0x3a
	bl      0x2006c24
	mov     r1, r4
	add     r1, #0x80
	str     r0, [r1, #0x0]
.thumb
branch_2247bc2: @ 2247bc2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2247bc6


.align 2, 0


.thumb
Function_2247bc8: @ 2247bc8 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2247c30
	bl      Function_22483c4
	mov     r0, r4
	bl      Function_2248490
	mov     r0, r4
	bl      Function_2248340
	ldr     r0, [r4, #0x68]
	bl      0x20237bc
	ldr     r0, [r4, #0x6c]
	bl      0x20237bc
	ldr     r0, [r4, #0x70]
	bl      Function_224773c
	ldr     r0, [r4, #0x54]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x54]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0x54]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	add     r0, #0x58
	bl      0x201a8fc
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      0x2006ca8
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2247c24
	bl      0x2007dc8
.thumb
branch_2247c24: @ 2247c24 :thumb
	ldr     r0, [r4, #0xc]
	bl      0x2007b6c
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_2247c30: @ 2247c30 :thumb
	pop     {r4,pc}
@ 0x2247c32


.align 2, 0


.thumb
Function_2247c34: @ 2247c34 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	mov     r5, r0
	cmp     r2, #0x4
	bcs     branch_2247c62
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x24] @ 0x2247c68, (=0x224bf04)
	add     r1, r5, #0x4
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_2247c58
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_2247c58: @ 2247c58 :thumb
	mov     r0, r5
	bl      Function_2247c6c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247c62

.thumb
branch_2247c62: @ 2247c62 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2247c66


.align 2


.word 0x224bf04 @ 0x2247c68
.thumb
Function_2247c6c: @ 2247c6c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	blx     0x20bfab8
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	blx     0x20b2628
	blx     0x20a73c0
	ldr     r0, [r4, #0xc]
	bl      0x2008a94
	ldr     r0, [r4, #0xc]
	bl      0x2007768
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r0, #0x12
	add     r1, sp, #0x0
	blx     0x20b275c
	ldr     r0, [r4, #0x70]
	bl      Function_2247770
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2247cb2


.align 2, 0


.thumb
Function_2247cb4: @ 2247cb4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	ldr     r0, [pc, #0x1f4] @ 0x2247eb0, (=0x224bf5c)
	bl      0x201fe94
	ldr     r2, [pc, #0x1f0] @ 0x2247eb4, (=0x4000304)
	ldr     r0, [pc, #0x1f4] @ 0x2247eb8, (=0xffff7fff)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x1f0] @ 0x2247ebc, (=0x224bf14)
	bl      0x2018368
	ldr     r0, [r4, #0x54]
	ldr     r2, [pc, #0x1ec] @ 0x2247ec0, (=0x224bf24)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x54]
	ldr     r2, [pc, #0x1e4] @ 0x2247ec4, (=0x224bf40)
	mov     r1, #0x2
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x54]
	ldr     r2, [pc, #0x1d8] @ 0x2247ec4, (=0x224bf40)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	ldr     r2, [pc, #0x1c8] @ 0x2247ec8, (=0x4000008)
	mov     r0, #0x3
	ldrh    r3, [r2, #0x0]
	mov     r1, #0x1
	bic     r3, r0
	mov     r0, r3
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x54]
	mov     r3, r1
	bl      0x20196c0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x54]
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2019cb8
	ldr     r0, [r4, #0x0]
	bl      Function_2247674
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x54]
	mov     r1, #0x1
	mov     r2, #0x6d
	mov     r3, #0x2
	bl      0x200dd0c
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r0, [r4, #0x54]
	add     r1, #0x58
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0xf
	bl      0x201ada4
	mov     r3, #0x20
	str     r3, [sp, #0x0]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	mov     r1, #0x7
	mov     r2, #0x0
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x54]
	mov     r0, #0x5d
	mov     r1, #0x16
	mov     r3, #0x2
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x54]
	mov     r0, #0x5d
	mov     r1, #0x15
	mov     r3, #0x2
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x17
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x54]
	mov     r0, #0x5d
	mov     r1, #0x16
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x54]
	mov     r0, #0x5d
	mov     r1, #0x15
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x17
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	ldr     r0, [r4, #0x54]
	mov     r1, #0x1
	bl      0x2019448
	mov     r0, r4
	bl      Function_2248174
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	mov     r3, r1
	bl      Function_22476f0
	str     r0, [r4, #0x70]
	mov     r0, r4
	bl      Function_2248240
	str     r0, [r4, #0x10]
	mov     r1, #0x0
	mov     r0, #0x6a
	str     r1, [sp, #0x0]
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x88] @ 0x2247ecc, (=0x73800)
	mov     r2, #0x5d
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r4, #0x70]
	mov     r3, #0x1b
	bl      Function_22478b4
	ldr     r2, [pc, #0x7c] @ 0x2247ed0, (=0x224befc)
	str     r0, [r4, #0x74]
	ldrh    r3, [r2, #0x0]
	add     r0, sp, #0x14
	add     r1, sp, #0x14
	strh    r3, [r0, #0x0]
	ldrh    r3, [r2, #0x2]
	ldrh    r2, [r2, #0x4]
	strh    r3, [r0, #0x2]
	strh    r2, [r0, #0x4]
	ldr     r0, [r4, #0x74]
	bl      Function_2247990
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, r4
	bl      Function_224829c
	ldr     r0, [pc, #0x50] @ 0x2247ed4, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	bl      0x2039734
	mov     r0, #0x1
	mov     r1, #0x39
	bl      0x20397c8
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x2247eb0

.word 0x224bf5c @ 0x2247eb0
.word 0x4000304 @ 0x2247eb4
.word 0xffff7fff @ 0x2247eb8
.word 0x224bf14 @ 0x2247ebc
.word 0x224bf24 @ 0x2247ec0
.word 0x224bf40 @ 0x2247ec4
.word 0x4000008 @ 0x2247ec8
.word 0x73800 @ 0x2247ecc
.word 0x224befc @ 0x2247ed0
.word 0x4000050 @ 0x2247ed4
.thumb
Function_2247ed8: @ 2247ed8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	bne     branch_2247efe
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2247efe
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      0x2021d6c
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2247efe

.thumb
branch_2247efe: @ 2247efe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2247f02


.align 2, 0


.thumb
Function_2247f04: @ 2247f04 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_2247f3e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2247f1e

Jumppoints_2247f1e:
.hword branch_2247f28 - Jumppoints_2247f1e - 2
.hword branch_2247f34 - Jumppoints_2247f1e - 2
.hword branch_2247fa8 - Jumppoints_2247f1e - 2
.hword branch_2248058 - Jumppoints_2247f1e - 2
.hword branch_2248078 - Jumppoints_2247f1e - 2
.thumb
branch_2247f28: @ 2247f28 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2248088
@ 0x2247f34

.thumb
branch_2247f34: @ 2247f34 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0xa
	bgt     branch_2247f40
.thumb
branch_2247f3e: @ 2247f3e :thumb
	b       branch_2248088
@ 0x2247f40

.thumb
branch_2247f40: @ 2247f40 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2247630
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_224762c
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2247680
	cmp     r0, #0x1
	bne     branch_2247f60
	mov     r1, #0x0
	mov     r6, #0x2
	b       branch_2247f64
@ 0x2247f60

.thumb
branch_2247f60: @ 2247f60 :thumb
	mov     r1, #0x4
	mov     r6, #0x3
.thumb
branch_2247f64: @ 2247f64 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r2, [r4, #0x68]
	bl      0x200b1b8
	ldr     r1, [r4, #0x6c]
	ldr     r2, [r4, #0x68]
	mov     r0, r7
	bl      0x200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [r4, #0x6c]
	add     r0, #0x58
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x6d
	mov     r2, #0x2
	bl      0x200e010
	mov     r0, r4
	add     r0, #0x58
	bl      0x201a954
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r6, [r5, #0x0]
	b       branch_2248088
@ 0x2247fa8

.thumb
branch_2247fa8: @ 2247fa8 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x3c
	ble     branch_2248088
	ldr     r0, [r4, #0x0]
	bl      Function_2247630
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_224762c
	mov     r7, r0
	ldr     r2, [r4, #0x68]
	mov     r0, r6
	mov     r1, #0x1
	bl      0x200b1b8
	ldr     r1, [r4, #0x6c]
	ldr     r2, [r4, #0x68]
	mov     r0, r7
	bl      0x200c388
	ldr     r0, [r4, #0x0]
	bl      Function_2247634
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      0x2074570
	cmp     r0, #0x0
	bne     branch_2248024
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      0x2007b98
	ldr     r0, [r4, #0x0]
	bl      Function_224764c
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x10
	mov     r3, #0x1
	bl      0x2078a4c
	ldr     r0, [r4, #0x0]
	bl      Function_224764c
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2247654
	mov     r2, r0
	add     r1, sp, #0x10
	lsl     r2, r2, #24
	ldrb    r1, [r1, #0x0]
	mov     r0, r6
	lsr     r2, r2, #24
	bl      0x200590c
.thumb
branch_2248024: @ 2248024 :thumb
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0xf
	bl      0x201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [r4, #0x6c]
	add     r0, #0x58
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, r4
	add     r0, #0x58
	bl      0x201accc
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2248088
@ 0x2248058

.thumb
branch_2248058: @ 2248058 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x3c
	ble     branch_2248088
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2248088
@ 0x2248078

.thumb
branch_2248078: @ 2248078 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x14
	ble     branch_2248088
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2248088

.thumb
branch_2248088: @ 2248088 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224808e


.align 2, 0


.thumb
Function_2248090: @ 2248090 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x4
	bhi     branch_224816a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22480aa

Jumppoints_22480aa:
.hword branch_22480b4 - Jumppoints_22480aa - 2
.hword branch_22480ce - Jumppoints_22480aa - 2
.hword branch_22480f4 - Jumppoints_22480aa - 2
.hword branch_2248120 - Jumppoints_22480aa - 2
.hword branch_2248152 - Jumppoints_22480aa - 2
.thumb
branch_22480b4: @ 22480b4 :thumb
	ldr     r0, [pc, #0xb8] @ 0x2248170, (=0x6a8)
	bl      0x2005748
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x10
	mov     r3, #0xc
	bl      Function_2248364
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224816a
@ 0x22480ce

.thumb
branch_22480ce: @ 22480ce :thumb
	bl      Function_22483b4
	cmp     r0, #0x0
	beq     branch_224816a
	ldr     r0, [r5, #0x10]
	bl      0x2007dc8
	ldr     r0, [r5, #0x40]
	mov     r1, #0x0
	bl      0x2021d6c
	ldr     r0, [r5, #0x40]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224816a
@ 0x22480f4

.thumb
branch_22480f4: @ 22480f4 :thumb
	ldr     r0, [r5, #0x40]
	bl      0x2021fd0
	cmp     r0, #0x0
	bne     branch_224816a
	ldr     r0, [r5, #0x74]
	mov     r1, #0x1
	bl      Function_22479a8
	mov     r1, #0x10
	mov     r0, r5
	mov     r2, #0x0
	mov     r3, r1
	bl      Function_2248364
	mov     r0, r5
	bl      Function_2248420
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224816a
@ 0x2248120

.thumb
branch_2248120: @ 2248120 :thumb
	bl      Function_224847c
	cmp     r0, #0x2
	bge     branch_2248132
	mov     r0, r5
	bl      Function_224846c
	cmp     r0, #0x1
	bne     branch_224816a
.thumb
branch_2248132: @ 2248132 :thumb
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224816a
@ 0x2248152

.thumb
branch_2248152: @ 2248152 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224816a
	mov     r0, r5
	bl      Function_224846c
	cmp     r0, #0x0
	beq     branch_224816a
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224816a

.thumb
branch_224816a: @ 224816a :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2248170

.word 0x6a8 @ 0x2248170
.thumb
Function_2248174: @ 2248174 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0x98] @ 0x224821c, (=0x4000060)
	ldr     r2, [pc, #0x98] @ 0x2248220, (=0xffffcffd)
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r1, r2, #0x2
	and     r3, r1
	mov     r1, #0x10
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r1, [pc, #0x88] @ 0x2248224, (=0xcffb)
	and     r1, r3
	strh    r1, [r0, #0x0]
	add     r1, r2, #0x2
	ldrh    r3, [r0, #0x0]
	lsr     r2, r2, #17
	and     r3, r1
	mov     r1, #0x8
	orr     r1, r3
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x6c] @ 0x2248228, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x68] @ 0x224822c, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	ldr     r3, [pc, #0x58] @ 0x2248230, (=0x2100dec)
	mov     r0, #0x1
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	lsl     r0, r0, #14
	mov     r2, r1
	blx     r3
	ldr     r3, [pc, #0x4c] @ 0x2248234, (=0x2100df4)
	mov     r4, r0
	ldr     r3, [r3, #0x0]
	mov     r0, #0x80
	mov     r1, #0x0
	mov     r2, #0x1
	blx     r3
	ldr     r2, [pc, #0x44] @ 0x2248238, (=0x7fff0000)
	mov     r6, r0
	and     r2, r4
	lsl     r1, r4, #16
	lsr     r2, r2, #16
	ldr     r0, [r5, #0xc]
	lsr     r1, r1, #13
	lsl     r2, r2, #4
	bl      0x2008a78
	ldr     r2, [pc, #0x34] @ 0x224823c, (=0xffff0000)
	lsl     r1, r6, #16
	and     r2, r6
	lsr     r2, r2, #16
	ldr     r0, [r5, #0xc]
	lsr     r1, r1, #13
	lsl     r2, r2, #3
	bl      0x2008a84
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224821c

.word 0x4000060 @ 0x224821c
.word 0xffffcffd @ 0x2248220
.word 0xcffb @ 0x2248224
.word 0x4000540 @ 0x2248228
.word 0xbfff0000 @ 0x224822c
.word 0x2100dec @ 0x2248230
.word 0x2100df4 @ 0x2248234
.word 0x7fff0000 @ 0x2248238
.word 0xffff0000 @ 0x224823c
.thumb
Function_2248240: @ 2248240 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2247634
	mov     r4, r0
	add     r0, sp, #0x10
	mov     r1, r4
	mov     r2, #0x2
	mov     r3, #0x0
	bl      0x2075f0c
	ldr     r0, [r5, #0x0]
	bl      Function_224764c
	mov     r2, r0
	mov     r0, r5
	add     r0, #0x80
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	add     r1, #0x14
	mov     r3, #0x1
	bl      0x20789bc
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x0
	bl      0x20765c4
	mov     r3, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, r5
	str     r1, [sp, #0x4]
	add     r0, #0x14
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0xc]
	add     r3, #0x50
	add     r1, sp, #0x10
	mov     r2, #0x80
	bl      0x2007c34
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x224829c

.thumb
Function_224829c: @ 224829c :thumb
	push    {r4,lr}
	add     sp, #-0x70
	mov     r4, r0
	add     r0, #0x44
	mov     r1, #0x5d
	mov     r2, #0x7
	mov     r3, #0x8
	bl      Function_2247568
	add     r0, sp, #0x5c
	blx     0x20a81d0
	add     r0, sp, #0x38
	blx     0x20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	add     r0, sp, #0x38
	str     r0, [sp, #0x10]
	mov     r0, #0x5d
	mov     r1, #0x9
	bl      0x2006f00
	mov     r0, #0x3a
	str     r0, [sp, #0x0]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x2006ee0
	mov     r0, #0x2
	mov     r1, r4
	str     r0, [sp, #0x0]
	add     r0, sp, #0x14
	add     r1, #0x44
	add     r2, sp, #0x38
	add     r3, sp, #0x5c
	bl      Function_22475c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	mov     r2, #0x80
	mov     r3, #0x64
	bl      Function_22475e4
	str     r0, [r4, #0x3c]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	mov     r2, #0x80
	mov     r3, #0x5a
	bl      Function_22475e4
	str     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      0x2021e80
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      0x2021cac
	add     sp, #0x70
	pop     {r4,pc}
@ 0x2248340

.thumb
Function_2248340: @ 2248340 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2248348: @ 2248348 :thumb
	ldr     r0, [r5, #0x3c]
	cmp     r0, #0x0
	beq     branch_2248352
	bl      0x2021bd4
.thumb
branch_2248352: @ 2248352 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_2248348
	add     r6, #0x44
	mov     r0, r6
	bl      Function_22475a0
	pop     {r4-r6,pc}
@ 0x2248364

.thumb
Function_2248364: @ 2248364 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x3a
	mov     r1, #0x14
	str     r2, [sp, #0x0]
	mov     r7, r3
	bl      0x2018144
	mov     r4, r0
	beq     branch_22483aa
	str     r5, [r4, #0x0]
	lsl     r0, r6, #12
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	lsl     r1, r0, #12
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	sub     r0, r1, r0
	mov     r1, r7
	blx     _s32_div_f
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x18] @ 0x22483ac, (=0x22483e5)
	str     r7, [r4, #0x10]
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200da04
	str     r0, [r5, #0x78]
	ldr     r0, [pc, #0xc] @ 0x22483b0, (=0x4000050)
	mov     r1, #0x1
	mov     r2, r6
	blx     0x20bf578
.thumb
branch_22483aa: @ 22483aa :thumb
	pop     {r3-r7,pc}
@ 0x22483ac

.word 0x22483e5 @ 0x22483ac
.word 0x4000050 @ 0x22483b0
.thumb
Function_22483b4: @ 22483b4 :thumb
	ldr     r0, [r0, #0x78]
	cmp     r0, #0x0
	bne     branch_22483be
	mov     r0, #0x1
	bx      lr
@ 0x22483be

.thumb
branch_22483be: @ 22483be :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22483c2


.align 2, 0


.thumb
Function_22483c4: @ 22483c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x78]
	cmp     r0, #0x0
	beq     branch_22483e0
	bl      0x201ced0
	bl      Function_22476c8
	ldr     r0, [r4, #0x78]
	bl      0x200da58
	mov     r0, #0x0
	str     r0, [r4, #0x78]
.thumb
branch_22483e0: @ 22483e0 :thumb
	pop     {r4,pc}
@ 0x22483e2


.align 2, 0


.thumb
Function_22483e4: @ 22483e4 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x10]
	cmp     r0, #0x0
	ble     branch_2248406
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	add     r2, r1, r0
	str     r2, [r4, #0x4]
	ldr     r0, [pc, #0x20] @ 0x224841c, (=0x4000050)
	mov     r1, #0x1
	asr     r2, r2, #12
	blx     0x20bf578
	pop     {r4,pc}
@ 0x2248406

.thumb
branch_2248406: @ 2248406 :thumb
	ldr     r2, [r4, #0x8]
	ldr     r0, [pc, #0x10] @ 0x224841c, (=0x4000050)
	mov     r1, #0x1
	asr     r2, r2, #12
	blx     0x20bf578
	ldr     r0, [r4, #0x0]
	bl      Function_22483c4
	pop     {r4,pc}
@ 0x224841a


.align 2


.word 0x4000050 @ 0x224841c
.thumb
Function_2248420: @ 2248420 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3a
	mov     r1, #0x30
	bl      0x2018144
	mov     r4, r0
	beq     branch_2248460
	str     r5, [r4, #0x0]
	ldr     r0, [r5, #0x74]
	mov     r1, r4
	str     r0, [r4, #0x4]
	add     r1, #0x8
	bl      Function_2247958
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x14
	bl      Function_2247978
	ldr     r0, [pc, #0x18] @ 0x2248464, (=0x2f60)
	mov     r2, #0x0
	str     r0, [r4, #0x1c]
	str     r2, [r4, #0x20]
	strh    r2, [r4, #0x2c]
	str     r2, [r4, #0x24]
	ldr     r0, [pc, #0x10] @ 0x2248468, (=0x22484b1)
	mov     r1, r4
	str     r2, [r4, #0x28]
	bl      0x200d9e8
	str     r0, [r5, #0x7c]
.thumb
branch_2248460: @ 2248460 :thumb
	pop     {r3-r5,pc}
@ 0x2248462


.align 2


.word 0x2f60 @ 0x2248464
.word 0x22484b1 @ 0x2248468
.thumb
Function_224846c: @ 224846c :thumb
	ldr     r0, [r0, #0x7c]
	cmp     r0, #0x0
	bne     branch_2248476
	mov     r0, #0x1
	bx      lr
@ 0x2248476

.thumb
branch_2248476: @ 2248476 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224847a


.align 2, 0


.thumb
Function_224847c: @ 224847c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x7c]
	cmp     r0, #0x0
	beq     branch_224848c
	bl      0x201ced0
	ldr     r0, [r0, #0x20]
	pop     {r3,pc}
@ 0x224848c

.thumb
branch_224848c: @ 224848c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2248490

.thumb
Function_2248490: @ 2248490 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x0
	beq     branch_22484ac
	bl      0x201ced0
	bl      0x20181c4
	ldr     r0, [r4, #0x7c]
	bl      0x200da58
	mov     r0, #0x0
	str     r0, [r4, #0x7c]
.thumb
branch_22484ac: @ 22484ac :thumb
	pop     {r4,pc}
@ 0x22484ae


.align 2, 0


.thumb
Function_22484b0: @ 22484b0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_2248524
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0xc]
	ldr     r1, [r4, #0x1c]
	cmp     r1, #0x0
	blt     branch_22484d2
	mov     r0, #0x1e
	lsl     r0, r0, #6
	sub     r0, r1, r0
	str     r0, [r4, #0x1c]
	b       branch_2248524
@ 0x22484d2

.thumb
branch_22484d2: @ 22484d2 :thumb
	mov     r0, #0x1e
	lsl     r0, r0, #6
	sub     r0, r1, r0
	str     r0, [r4, #0x1c]
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0xa8] @ 0x2248588, (=0xffffc000)
	cmp     r1, r0
	bgt     branch_2248524
	str     r0, [r4, #0xc]
	ldr     r1, [r4, #0x1c]
	mov     r0, #0x2c
	mul     r0, r1
	mov     r1, #0x64
	blx     _s32_div_f
	neg     r1, r0
	mov     r0, #0xfa
	lsl     r0, r0, #4
	str     r1, [r4, #0x1c]
	cmp     r1, r0
	bge     branch_2248500
	mov     r0, #0x1
	str     r0, [r4, #0x24]
.thumb
branch_2248500: @ 2248500 :thumb
	ldr     r0, [pc, #0x88] @ 0x224858c, (=0x5e6)
	bl      0x2005748
	ldr     r0, [r4, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x20]
	cmp     r0, #0x1
	beq     branch_2248516
	cmp     r0, #0x3
	beq     branch_224851c
	b       branch_2248524
@ 0x2248516

.thumb
branch_2248516: @ 2248516 :thumb
	mov     r0, #0xb0
	strh    r0, [r4, #0x2c]
	b       branch_2248524
@ 0x224851c

.thumb
branch_224851c: @ 224851c :thumb
	mov     r0, #0x2c
	ldsh    r0, [r4, r0]
	add     r0, #0x50
	strh    r0, [r4, #0x2c]
.thumb
branch_2248524: @ 2248524 :thumb
	mov     r0, #0x14
	mov     r2, #0x2c
	ldsh    r3, [r4, r0]
	ldsh    r0, [r4, r2]
	mov     r1, r4
	add     r1, #0x14
	add     r0, r3, r0
	strh    r0, [r4, #0x14]
	mov     r0, #0x18
	ldsh    r3, [r4, r0]
	ldsh    r0, [r4, r2]
	sub     r0, r3, r0
	strh    r0, [r4, #0x18]
	ldr     r0, [r4, #0x4]
	bl      Function_2247990
	mov     r2, #0x2c
	ldsh    r3, [r4, r2]
	ldr     r5, [r4, #0x8]
	mov     r1, r4
	lsl     r0, r3, #2
	add     r0, r3, r0
	add     r0, r5, r0
	str     r0, [r4, #0x8]
	ldsh    r2, [r4, r2]
	ldr     r3, [r4, #0x10]
	add     r1, #0x8
	lsl     r0, r2, #2
	add     r0, r2, r0
	add     r0, r3, r0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	bl      Function_2247968
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_2248586
	mov     r0, #0x2c
	ldsh    r0, [r4, r0]
	sub     r0, #0xe
	strh    r0, [r4, #0x2c]
	ldr     r0, [r4, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x28]
	cmp     r0, #0x1e
	ble     branch_2248586
	ldr     r0, [r4, #0x0]
	bl      Function_2248490
.thumb
branch_2248586: @ 2248586 :thumb
	pop     {r3-r5,pc}
@ 0x2248588

.word 0xffffc000 @ 0x2248588
.word 0x5e6 @ 0x224858c
.thumb
Function_2248590: @ 2248590 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x5b
	mov     r5, r0
	mov     r0, #0x3a
	lsl     r1, r1, #2
	bl      0x2018144
	mov     r4, r0
	beq     branch_22485f2
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2247628
	mov     r1, r4
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	mov     r0, #0x16
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	bl      0x201d35c
	mov     r1, r4
	add     r1, #0xbc
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0xd0
	str     r2, [r0, #0x0]
	mov     r0, #0x5a
	lsl     r0, r0, #2
	str     r2, [r4, r0]
	ldr     r0, [pc, #0xc] @ 0x22485f8, (=0x2248e01)
	mov     r1, r4
	bl      0x200da3c
.thumb
branch_22485f2: @ 22485f2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22485f6


.align 2


.word 0x2248e01 @ 0x22485f8
.thumb
Function_22485fc: @ 22485fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	blx     0x20c3d98
	mov     r4, r0
	cmp     r5, #0x0
	beq     branch_2248648
	mov     r0, r5
	bl      Function_2248b3c
	mov     r0, r5
	bl      Function_2248c98
	mov     r0, r5
	bl      Function_2248dc4
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224862a
	bl      0x200da58
.thumb
branch_224862a: @ 224862a :thumb
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2248638
	bl      Function_22490a4
.thumb
branch_2248638: @ 2248638 :thumb
	mov     r0, r5
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      0x201d318
	mov     r0, r5
	bl      0x20181c4
.thumb
branch_2248648: @ 2248648 :thumb
	mov     r0, r4
	blx     0x20c3dac
	pop     {r3-r5,pc}
@ 0x2248650

.thumb
Function_2248650: @ 2248650 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	mov     r5, r0
	cmp     r2, #0x4
	bcs     branch_224867e
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x24] @ 0x2248684, (=0x224bf9c)
	add     r1, r5, #0x4
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_2248674
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_2248674: @ 2248674 :thumb
	mov     r0, r5
	bl      Function_2248688
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224867e

.thumb
branch_224867e: @ 224867e :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2248682


.align 2


.word 0x224bf9c @ 0x2248684
.thumb
Function_2248688: @ 2248688 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22486a8
	blx     0x20bfab8
	add     r4, #0xd4
	ldr     r0, [r4, #0x0]
	bl      Function_2247770
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
.thumb
branch_22486a8: @ 22486a8 :thumb
	pop     {r4,pc}
@ 0x22486aa


.align 2, 0


.thumb
Function_22486ac: @ 22486ac :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_22488a4
	mov     r0, r4
	bl      Function_2248b84
	mov     r0, r4
	bl      Function_2248ca8
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22486de


.align 2, 0


.thumb
Function_22486e0: @ 22486e0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_22486f0
	cmp     r1, #0x1
	beq     branch_2248706
	b       branch_224871e
@ 0x22486f0

.thumb
branch_22486f0: @ 22486f0 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224871e
	ldr     r0, [pc, #0x28] @ 0x2248724, (=0x224c364)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224871e
@ 0x2248706

.thumb
branch_2248706: @ 2248706 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2248724, (=0x224c364)
	ldr     r2, [r1, #0x0]
	cmp     r2, #0x1e
	bge     branch_2248712
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, #0x0]
.thumb
branch_2248712: @ 2248712 :thumb
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224871e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224871e

.thumb
branch_224871e: @ 224871e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248722


.align 2


.word 0x224c364 @ 0x2248724
.thumb
Function_2248728: @ 2248728 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x4
	bhi     branch_22487ce
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2248740

Jumppoints_2248740:
.hword branch_224874a - Jumppoints_2248740 - 2
.hword branch_2248756 - Jumppoints_2248740 - 2
.hword branch_224879a - Jumppoints_2248740 - 2
.hword branch_22487b0 - Jumppoints_2248740 - 2
.hword branch_22487c6 - Jumppoints_2248740 - 2
.thumb
branch_224874a: @ 224874a :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22487ce
@ 0x2248756

.thumb
branch_2248756: @ 2248756 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x8
	ble     branch_22487ce
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r2, #0x1f
	mov     r3, #0x18
	bl      Function_22490d0
	mov     r0, r4
	bl      Function_2249154
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_22479ac
	add     r4, #0xd8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22479a8
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22487ce
@ 0x224879a

.thumb
branch_224879a: @ 224879a :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2249500
	cmp     r0, #0x0
	beq     branch_22487ce
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22487ce
@ 0x22487b0

.thumb
branch_22487b0: @ 22487b0 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_22494f4
	cmp     r0, #0x0
	beq     branch_22487ce
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22487ce
@ 0x22487c6

.thumb
branch_22487c6: @ 22487c6 :thumb
	bl      Function_2248df4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22487ce

.thumb
branch_22487ce: @ 22487ce :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22487d2


.align 2, 0


.thumb
Function_22487d4: @ 22487d4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x4
	bhi     branch_224889a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22487ee

Jumppoints_22487ee:
.hword branch_22487f8 - Jumppoints_22487ee - 2
.hword branch_224880e - Jumppoints_22487ee - 2
.hword branch_224882c - Jumppoints_22487ee - 2
.hword branch_2248848 - Jumppoints_22487ee - 2
.hword branch_224888c - Jumppoints_22487ee - 2
.thumb
branch_22487f8: @ 22487f8 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_224950c
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224889a
@ 0x224880e

.thumb
branch_224880e: @ 224880e :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x2
	ble     branch_224889a
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	bl      Function_2247004
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224889a
@ 0x224882c

.thumb
branch_224882c: @ 224882c :thumb
	mov     r1, r4
	add     r1, #0xc8
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_224889a
	mov     r1, #0x59
	lsl     r1, r1, #2
	add     r1, r4, r1
	bl      Function_2248fac
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224889a
@ 0x2248848

.thumb
branch_2248848: @ 2248848 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x28
	bge     branch_224885e
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x28
	bne     branch_224885e
	mov     r0, #0x6b
	lsl     r0, r0, #4
	bl      0x2005748
.thumb
branch_224885e: @ 224885e :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_22494f4
	cmp     r0, #0x0
	beq     branch_224889a
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x24] @ 0x22488a0, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224889a
@ 0x224888c

.thumb
branch_224888c: @ 224888c :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224889a
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224889a

.thumb
branch_224889a: @ 224889a :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22488a0

.word 0x7fff @ 0x22488a0
.thumb
Function_22488a4: @ 22488a4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0x274] @ 0x2248b20, (=0x224bff4)
	bl      0x201fe94
	ldr     r2, [pc, #0x270] @ 0x2248b24, (=0x4000304)
	ldr     r0, [pc, #0x274] @ 0x2248b28, (=0xffff7fff)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x270] @ 0x2248b2c, (=0x224bf8c)
	bl      0x2018368
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x268] @ 0x2248b30, (=0x224bfbc)
	mov     r1, #0x2
	mov     r3, #0x1
	bl      0x20183c4
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x258] @ 0x2248b30, (=0x224bfbc)
	mov     r1, #0x6
	mov     r3, #0x1
	bl      0x20183c4
	blx     0x20c3d98
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x244] @ 0x2248b34, (=0x224bfd8)
	mov     r1, #0x3
	mov     r3, #0x2
	bl      0x20183c4
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x234] @ 0x2248b34, (=0x224bfd8)
	mov     r1, #0x7
	mov     r3, #0x2
	bl      0x20183c4
	mov     r0, r5
	blx     0x20c3dac
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	mov     r1, #0x2
	ldr     r2, [r2, #0x0]
	mov     r0, #0x5d
	mov     r3, r1
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x5d
	mov     r1, #0x2
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, r4
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x5d
	mov     r3, #0x2
	bl      0x2006e60
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x5d
	mov     r3, #0x6
	bl      0x2006e60
	ldr     r0, [r4, #0x0]
	bl      Function_2247644
	mov     r5, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	ldr     r0, [pc, #0x184] @ 0x2248b38, (=0x224bf84)
	lsl     r1, r5, #1
	ldrh    r5, [r0, r1]
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r3, r5
	bl      0x2006e9c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, r5
	bl      0x2006e9c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x5d
	mov     r1, #0x5
	mov     r3, #0x3
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x5d
	mov     r1, #0x5
	mov     r3, #0x7
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x5d
	mov     r1, #0x4
	mov     r3, #0x3
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x5d
	mov     r1, #0x4
	mov     r3, #0x7
	bl      0x2006e60
	mov     r0, #0x3a
	mov     r1, #0x60
	bl      0x2018144
	mov     r5, r0
	beq     branch_2248aaa
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, #0x60
	blx     MIi_CpuClear32
	mov     r0, r5
	mov     r1, #0x60
	blx     0x20c2c54
	blx     0x20c096c
	blx     0x20c0bbc
	mov     r1, #0x6
	mov     r0, r5
	lsl     r1, r1, #12
	mov     r2, #0x60
	blx     0x20c0a0c
	mov     r1, #0x6
	mov     r0, r5
	lsl     r1, r1, #12
	mov     r2, #0x60
	blx     0x20c0bd4
	blx     0x20c0a7c
	blx     0x20c0c38
	mov     r0, r5
	bl      0x20181c4
.thumb
branch_2248aaa: @ 2248aaa :thumb
	mov     r0, r4
	add     r0, #0xc0
	mov     r3, #0xff
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	mov     r2, #0x3
	mvn     r3, r3
	bl      0x2019184
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, r4
	add     r0, #0xc0
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	mov     r3, #0x0
	bl      0x2019184
	mov     r0, r4
	add     r0, #0xc8
	mov     r1, #0x1
	bl      Function_2246f30
	mov     r1, r4
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, #0x4a
	lsl     r0, r0, #2
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xd0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0xc0
	mov     r1, #0x12
	mov     r2, #0x1
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #6
	lsl     r2, r2, #12
	mov     r3, #0x1
	bl      Function_22472c4
	add     r4, #0xcc
	str     r0, [r4, #0x0]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2248b20

.word 0x224bff4 @ 0x2248b20
.word 0x4000304 @ 0x2248b24
.word 0xffff7fff @ 0x2248b28
.word 0x224bf8c @ 0x2248b2c
.word 0x224bfbc @ 0x2248b30
.word 0x224bfd8 @ 0x2248b34
.word 0x224bf84 @ 0x2248b38
.thumb
Function_2248b3c: @ 2248b3c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2248b52
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	bl      Function_2247018
.thumb
branch_2248b52: @ 2248b52 :thumb
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      0x2019044
	add     r4, #0xc0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	bl      0x2019044
	pop     {r4,pc}
@ 0x2248b82


.align 2, 0


.thumb
Function_2248b84: @ 2248b84 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0xd0] @ 0x2248c64, (=0x4000060)
	ldr     r1, [pc, #0xd0] @ 0x2248c68, (=0xffffcffd)
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0xc0] @ 0x2248c6c, (=0xcffb)
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x8
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x2248c70, (=0x224bfac)
	blx     0x20bfd2c
	mov     r1, #0x0
	ldr     r0, [pc, #0xa0] @ 0x2248c74, (=0x43ff)
	ldr     r2, [pc, #0xa4] @ 0x2248c78, (=0x7fff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x9c] @ 0x2248c7c, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x9c] @ 0x2248c80, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	ldr     r1, [pc, #0x80] @ 0x2248c84, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	mov     r3, r1
	bl      Function_22476f0
	mov     r1, r4
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x68] @ 0x2248c88, (=0xfffc8800)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r4
	str     r1, [sp, #0xc]
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	mov     r2, #0x5d
	mov     r3, #0x1b
	bl      Function_22478b4
	mov     r1, r4
	add     r1, #0xd8
	str     r0, [r1, #0x0]
	ldr     r1, [pc, #0x4c] @ 0x2248c8c, (=0xebe0)
	ldr     r0, [pc, #0x50] @ 0x2248c90, (=0x224c364)
	strh    r1, [r0, #0x4]
	mov     r1, #0x0
	strh    r1, [r0, #0x6]
	strh    r1, [r0, #0x8]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x44] @ 0x2248c94, (=0x224c368)
	bl      Function_2247ab0
	add     r4, #0xd8
	mov     r1, #0x7
	ldr     r0, [r4, #0x0]
	lsl     r1, r1, #10
	bl      Function_22479d4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2248c64

.word 0x4000060 @ 0x2248c64
.word 0xffffcffd @ 0x2248c68
.word 0xcffb @ 0x2248c6c
.word 0x224bfac @ 0x2248c70
.word 0x43ff @ 0x2248c74
.word 0x7fff @ 0x2248c78
.word 0x4000540 @ 0x2248c7c
.word 0xbfff0000 @ 0x2248c80
.word 0x4000008 @ 0x2248c84
.word 0xfffc8800 @ 0x2248c88
.word 0xebe0 @ 0x2248c8c
.word 0x224c364 @ 0x2248c90
.word 0x224c368 @ 0x2248c94
.thumb
Function_2248c98: @ 2248c98 :thumb
	push    {r3,lr}
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2248ca6
	bl      Function_224773c
.thumb
branch_2248ca6: @ 2248ca6 :thumb
	pop     {r3,pc}
@ 0x2248ca8

.thumb
Function_2248ca8: @ 2248ca8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x74
	mov     r7, r0
	add     r0, #0xc
	mov     r1, #0x5d
	mov     r2, #0xb
	mov     r3, #0xc
	bl      Function_2247568
	add     r0, sp, #0x60
	blx     0x20a81d0
	add     r0, sp, #0x3c
	blx     0x20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	add     r0, sp, #0x3c
	str     r0, [sp, #0x10]
	mov     r0, #0x5d
	mov     r1, #0xd
	bl      0x2006f00
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	add     r0, sp, #0x3c
	str     r0, [sp, #0x10]
	mov     r0, #0x5d
	mov     r1, #0xd
	mov     r2, #0x1
	bl      0x2006f00
	mov     r0, #0x3a
	str     r0, [sp, #0x0]
	add     r0, sp, #0x60
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0xe
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x2006ee0
	mov     r0, #0x3a
	str     r0, [sp, #0x0]
	add     r0, sp, #0x60
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0xe
	mov     r2, #0x2
	mov     r3, #0x0
	bl      0x2006ee0
	mov     r0, #0x1
	mov     r1, r7
	str     r0, [sp, #0x0]
	add     r0, sp, #0x18
	add     r1, #0xc
	add     r2, sp, #0x3c
	add     r3, sp, #0x60
	bl      Function_22475c4
	ldr     r0, [pc, #0x88] @ 0x2248dc0, (=0x35947d1)
	bl      0x201d318
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r4, r7
.thumb
branch_2248d42: @ 2248d42 :thumb
	bl      0x201d35c
	mov     r1, #0xe8
	blx     _u32_div_f
	mov     r6, r1
	add     r6, #0xc
	bl      0x201d35c
	mov     r1, #0x71
	lsl     r1, r1, #2
	blx     _u32_div_f
	mov     r5, r1
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	sub     r5, #0x1c
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	add     r1, sp, #0x18
	mov     r2, r6
	mov     r3, r5
	bl      Function_22475e4
	str     r0, [r4, #0x1c]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r5, #0x38
	ldr     r0, [r7, #0x0]
	add     r1, sp, #0x18
	mov     r2, r6
	mov     r3, r5
	bl      Function_22475e4
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      0x2021d6c
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	bl      0x2021d6c
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [sp, #0x14]
	add     r4, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x14
	blt     branch_2248d42
	add     sp, #0x74
	pop     {r4-r7,pc}
@ 0x2248dbe


.align 2


.word 0x35947d1 @ 0x2248dc0
.thumb
Function_2248dc4: @ 2248dc4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2248dcc: @ 2248dcc :thumb
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_2248dd6
	bl      0x2021bd4
.thumb
branch_2248dd6: @ 2248dd6 :thumb
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	beq     branch_2248de0
	bl      0x2021bd4
.thumb
branch_2248de0: @ 2248de0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x14
	blt     branch_2248dcc
	add     r6, #0xc
	mov     r0, r6
	bl      Function_22475a0
	pop     {r4-r6,pc}
@ 0x2248df2


.align 2, 0


.thumb
Function_2248df4: @ 2248df4 :thumb
	mov     r1, #0x5a
	mov     r2, #0x1
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	bx      lr
@ 0x2248dfe


.align 2, 0


.thumb
Function_2248e00: @ 2248e00 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5a
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2248e54
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	add     r0, #0xc0
	mov     r3, #0xff
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	mov     r2, #0x3
	mvn     r3, r3
	bl      0x2019184
	add     r4, #0xc0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      0x2019184
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	ldr     r2, [pc, #0x10] @ 0x2248e58, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, r5
	bl      0x200da58
.thumb
branch_2248e54: @ 2248e54 :thumb
	pop     {r3-r5,pc}
@ 0x2248e56


.align 2


.word 0x4000304 @ 0x2248e58
.thumb
Function_2248e5c: @ 2248e5c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r5, [r2, #0x4]
	mov     r0, r2
	str     r1, [r0, #0x0]
	mov     r1, #0x52
	mov     r7, #0x0
	lsl     r1, r1, #2
	str     r7, [r0, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [sp, #0x0]
	str     r7, [r0, r1]
	mov     r4, r2
	mov     r6, r2
.thumb
branch_2248e78: @ 2248e78 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x1c]
	bl      0x2021d28
	mov     r2, r6
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, #0x58
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [r2, #0x0]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x8
	add     r6, #0xc
	cmp     r7, #0x14
	blt     branch_2248e78
	ldr     r0, [pc, #0x20] @ 0x2248ec0, (=0x2248ec5)
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	bl      0x200d9e8
	ldr     r1, [sp, #0x0]
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2248ebc
	ldr     r0, [sp, #0x0]
	bl      0x20181c4
.thumb
branch_2248ebc: @ 2248ebc :thumb
	pop     {r3-r7,pc}
@ 0x2248ebe


.align 2


.word 0x2248ec5 @ 0x2248ec0
.thumb
Function_2248ec4: @ 2248ec4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r1, #0x52
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	cmp     r0, #0xc
	ble     branch_2248ef8
	mov     r0, #0x0
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x14
	bge     branch_2248ef8
	lsl     r0, r0, #2
	mov     r2, #0x1
	add     r0, r5, r0
	str     r2, [r0, #0x8]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x4
	str     r2, [r5, r0]
.thumb
branch_2248ef8: @ 2248ef8 :thumb
	mov     r0, #0x0
	mov     r7, r5
	str     r0, [sp, #0x4]
	mov     r6, r5
	str     r5, [sp, #0x0]
	mov     r4, r0
	add     r7, #0x58
.thumb
branch_2248f06: @ 2248f06 :thumb
	mov     r1, #0x21
	ldr     r2, [r6, #0x5c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	mov     r1, #0x6a
	mov     r0, r6
	lsl     r1, r1, #14
	add     r0, #0x5c
	str     r2, [r6, #0x5c]
	cmp     r2, r1
	blt     branch_2248f46
	mov     r1, #0x71
	ldr     r2, [r0, #0x0]
	lsl     r1, r1, #14
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2248f46
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	add     r0, r0, r4
	ldr     r0, [r0, #0x1c]
	bl      0x2021cac
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	add     r0, r0, r4
	ldr     r0, [r0, #0x20]
	bl      0x2021cac
.thumb
branch_2248f46: @ 2248f46 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	add     r0, r0, r4
	ldr     r0, [r0, #0x1c]
	bl      0x2021c50
	mov     r2, r6
	add     r2, #0x58
	add     r3, sp, #0x8
	ldmia   r2!, {r0,r1}
	mov     r12, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0xe
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	mov     r1, r12
	add     r0, r0, r4
	ldr     r0, [r0, #0x20]
	bl      0x2021c50
	ldr     r0, [sp, #0x0]
	add     r6, #0xc
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r4, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0xc
	str     r0, [sp, #0x4]
	cmp     r0, #0x14
	blt     branch_2248f06
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2248f92


.align 2, 0


.thumb
Function_2248f94: @ 2248f94 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2248faa
	bl      0x201ced0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      0x200da58
.thumb
branch_2248faa: @ 2248faa :thumb
	pop     {r4,pc}
@ 0x2248fac

.thumb
Function_2248fac: @ 2248fac :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r1, #0x17
	mov     r6, r0
	mov     r0, #0x3a
	lsl     r1, r1, #4
	bl      0x2018144
	mov     r4, r0
	beq     branch_2249018
	str     r6, [r4, #0x0]
	add     r6, #0xc0
	mov     r0, #0x55
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x20192f8
	lsl     r1, r0, #12
	mov     r0, #0x56
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      0x20192f8
	mov     r1, #0x57
	lsl     r0, r0, #12
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r2, #0x0
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x8
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0xc
	str     r5, [r4, r0]
	add     r1, #0x10
	str     r2, [r4, r1]
	ldr     r0, [pc, #0x14] @ 0x224901c, (=0x2249021)
	mov     r1, r4
	bl      0x200da04
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_2249018
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_2249018: @ 2249018 :thumb
	pop     {r4-r6,pc}
@ 0x224901a


.align 2


.word 0x2249021 @ 0x224901c
.thumb
Function_2249020: @ 2249020 :thumb
	push    {r4-r6,lr}
	mov     r3, #0x59
	mov     r4, r1
	lsl     r3, r3, #2
	mov     r0, #0x2
	ldr     r1, [r4, r3]
	lsl     r0, r0, #20
	cmp     r1, r0
	bge     branch_22490a2
	.hword  0x1f18 @ sub r0, r3, #0x4
	ldr     r1, [r4, r0]
	mov     r0, r3
	sub     r0, #0x44
	add     r1, r1, r0
	.hword  0x1f18 @ sub r0, r3, #0x4
	str     r1, [r4, r0]
	mov     r5, r3
	ldr     r1, [r4, r3]
	ldr     r0, [r4, r0]
	sub     r5, #0xc
	add     r0, r1, r0
	str     r0, [r4, r3]
	mov     r0, r3
	sub     r0, #0x10
	ldr     r5, [r4, r5]
	ldr     r3, [r4, r3]
	ldr     r0, [r4, r0]
	sub     r3, r5, r3
	mov     r1, #0x2
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      0x2019184
	mov     r5, #0x55
	lsl     r5, r5, #2
	mov     r3, r5
	ldr     r0, [r4, r5]
	add     r3, #0x8
	add     r5, #0x10
	ldr     r6, [r4, r3]
	ldr     r3, [r4, r5]
	mov     r1, #0x6
	sub     r3, r6, r3
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      0x2019184
	mov     r1, #0x59
	lsl     r1, r1, #2
	mov     r0, #0x2
	ldr     r2, [r4, r1]
	lsl     r0, r0, #18
	cmp     r2, r0
	blt     branch_22490a2
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22490a2
	add     r1, #0x8
	ldr     r0, [r4, #0x0]
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_2248e5c
.thumb
branch_22490a2: @ 22490a2 :thumb
	pop     {r4-r6,pc}
@ 0x22490a4

.thumb
Function_22490a4: @ 22490a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	beq     branch_22490ce
	bl      0x201ced0
	mov     r4, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r2, #0x0
	str     r2, [r1, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_2248f94
	mov     r0, r4
	bl      0x20181c4
	mov     r0, r5
	bl      0x200da58
.thumb
branch_22490ce: @ 22490ce :thumb
	pop     {r3-r5,pc}
@ 0x22490d0

.thumb
Function_22490d0: @ 22490d0 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r0, #0x3a
	mov     r1, #0x14
	mov     r7, r2
	mov     r6, r3
	bl      0x2018144
	mov     r4, r0
	beq     branch_2249110
	lsl     r0, r5, #12
	str     r0, [r4, #0x0]
	lsl     r1, r7, #12
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	sub     r0, r1, r0
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	mov     r1, r5
	str     r0, [r4, #0x10]
	bl      Function_22479ac
	ldr     r0, [pc, #0xc] @ 0x2249114, (=0x2249119)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
.thumb
branch_2249110: @ 2249110 :thumb
	pop     {r3-r7,pc}
@ 0x2249112


.align 2


.word 0x2249119 @ 0x2249114
.thumb
Function_2249118: @ 2249118 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0x0
	ble     branch_224913a
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	add     r1, r1, r0
	str     r1, [r4, #0x0]
	ldr     r0, [r4, #0x10]
	asr     r1, r1, #12
	bl      Function_22479ac
	pop     {r3-r5,pc}
@ 0x224913a

.thumb
branch_224913a: @ 224913a :thumb
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	asr     r1, r1, #12
	bl      Function_22479ac
	mov     r0, r4
	bl      0x20181c4
	mov     r0, r5
	bl      0x200da58
	pop     {r3-r5,pc}
@ 0x2249152


.align 2, 0


.thumb
Function_2249154: @ 2249154 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0xdc
	add     r0, #0xd8
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	add     r1, #0x8
	bl      Function_2247958
	mov     r0, r5
	add     r0, #0xd8
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	add     r1, #0x20
	bl      Function_2247978
	mov     r3, r4
	add     r3, #0x8
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	add     r2, #0x14
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r5
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x4]
	mov     r0, r5
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	add     r5, #0xdc
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x28]
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x84] @ 0x2249224, (=0xffff8000)
	sub     r0, r0, r1
	mov     r1, #0x1e
	blx     _s32_div_f
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r2, #0x1
	mov     r1, #0x1e
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r1, #0x0
	str     r1, [r4, #0x38]
	str     r1, [r4, #0x3c]
	str     r1, [r4, #0x40]
	mov     r0, r4
	str     r1, [r4, #0x44]
	add     r0, #0x54
	strh    r1, [r0, #0x0]
	mov     r0, r4
	lsl     r2, r2, #14
	add     r0, #0x56
	strh    r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x5a
	strh    r1, [r0, #0x0]
	str     r1, [r4, #0x7c]
	mov     r2, r4
	mov     r0, r1
.thumb
branch_22491d8: @ 22491d8 :thumb
	mov     r3, r2
	add     r3, #0x5c
	strh    r0, [r3, #0x0]
	mov     r3, r2
	add     r3, #0x5e
	strh    r0, [r3, #0x0]
	mov     r3, r2
	add     r3, #0x60
	strh    r0, [r3, #0x0]
	mov     r3, r2
	add     r3, #0x62
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	strh    r0, [r3, #0x0]
	cmp     r1, #0x3
	blt     branch_22491d8
	mov     r1, #0xd
	str     r0, [r4, #0x78]
	mov     r0, r4
	lsl     r1, r1, #8
	mov     r2, #0x1e
	bl      Function_224922c
	mov     r1, #0x29
	mov     r2, #0x5
	mov     r0, r4
	lsl     r1, r1, #12
	lsl     r2, r2, #14
	mov     r3, #0x1e
	bl      Function_2249268
	ldr     r0, [pc, #0x10] @ 0x2249228, (=0x2249425)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	pop     {r3-r5,pc}
@ 0x2249222


.align 2


.word 0xffff8000 @ 0x2249224
.word 0x2249425 @ 0x2249228
.thumb
Function_224922c: @ 224922c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	beq     branch_224925a
	mov     r0, #0x56
	ldsh    r0, [r5, r0]
	mov     r1, r6
	sub     r0, r4, r0
	blx     _s32_div_f
	mov     r1, r5
	add     r1, #0x5a
	strh    r0, [r1, #0x0]
	mov     r0, #0x56
	ldsh    r1, [r5, r0]
	mov     r0, #0x5a
	ldsh    r0, [r5, r0]
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0x56
	strh    r1, [r0, #0x0]
	b       branch_224925e
@ 0x224925a

.thumb
branch_224925a: @ 224925a :thumb
	add     r0, #0x56
	strh    r4, [r0, #0x0]
.thumb
branch_224925e: @ 224925e :thumb
	mov     r0, r5
	add     r0, #0x58
	strh    r4, [r0, #0x0]
	str     r6, [r5, #0x74]
	pop     {r4-r6,pc}
@ 0x2249268

.thumb
Function_2249268: @ 2249268 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	beq     branch_22492a0
	ldr     r0, [r5, #0x38]
	mov     r1, r7
	sub     r0, r4, r0
	blx     _s32_div_f
	str     r0, [r5, #0x40]
	ldr     r0, [r5, #0x3c]
	mov     r1, r7
	sub     r0, r6, r0
	blx     _s32_div_f
	str     r0, [r5, #0x44]
	ldr     r1, [r5, #0x38]
	ldr     r0, [r5, #0x40]
	add     r0, r1, r0
	str     r0, [r5, #0x38]
	ldr     r1, [r5, #0x3c]
	ldr     r0, [r5, #0x44]
	add     r0, r1, r0
	str     r0, [r5, #0x3c]
	str     r4, [r5, #0x48]
	str     r6, [r5, #0x4c]
.thumb
branch_22492a0: @ 22492a0 :thumb
	str     r7, [r5, #0x50]
	pop     {r3-r7,pc}
@ 0x22492a4

.thumb
Function_22492a4: @ 22492a4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	beq     branch_22492ca
	lsl     r0, r4, #3
	str     r0, [sp, #0x0]
	add     r1, r5, r0
	mov     r0, #0x5c
	ldsh    r0, [r1, r0]
	mov     r1, r7
	sub     r0, r6, r0
	blx     _s32_div_f
	ldr     r1, [sp, #0x0]
	add     r1, r5, r1
	add     r1, #0x5e
	strh    r0, [r1, #0x0]
.thumb
branch_22492ca: @ 22492ca :thumb
	lsl     r1, r4, #3
	add     r0, r5, r1
	add     r0, #0x60
	strh    r6, [r0, #0x0]
	add     r0, r5, r1
	add     r0, #0x62
	strh    r7, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x22492da


.align 2, 0


.thumb
Function_22492dc: @ 22492dc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x74]
	cmp     r0, #0x0
	beq     branch_2249308
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x74]
	beq     branch_22492fe
	mov     r0, #0x56
	ldsh    r1, [r5, r0]
	mov     r0, #0x5a
	ldsh    r0, [r5, r0]
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0x56
	strh    r1, [r0, #0x0]
	b       branch_2249308
@ 0x22492fe

.thumb
branch_22492fe: @ 22492fe :thumb
	mov     r0, #0x58
	ldsh    r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x56
	strh    r1, [r0, #0x0]
.thumb
branch_2249308: @ 2249308 :thumb
	mov     r0, #0x54
	ldsh    r1, [r5, r0]
	mov     r0, #0x56
	ldsh    r0, [r5, r0]
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0x54
	strh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x54
	ldrh    r0, [r0, #0x0]
	mov     r1, #0xb6
	blx     _s32_div_f
	mov     r4, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	cmp     r4, r0
	blt     branch_2249330
	sub     r4, r4, r0
.thumb
branch_2249330: @ 2249330 :thumb
	ldr     r0, [r5, #0x50]
	cmp     r0, #0x0
	beq     branch_2249356
	ldr     r1, [r5, #0x38]
	ldr     r0, [r5, #0x40]
	add     r0, r1, r0
	str     r0, [r5, #0x38]
	ldr     r1, [r5, #0x3c]
	ldr     r0, [r5, #0x44]
	add     r0, r1, r0
	str     r0, [r5, #0x3c]
	ldr     r0, [r5, #0x50]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x50]
	bne     branch_2249356
	ldr     r0, [r5, #0x48]
	str     r0, [r5, #0x38]
	ldr     r0, [r5, #0x4c]
	str     r0, [r5, #0x3c]
.thumb
branch_2249356: @ 2249356 :thumb
	lsl     r0, r4, #16
	ldr     r6, [r5, #0x38]
	lsr     r0, r0, #16
	bl      0x201d1d4
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r3, #0x2
	mov     r6, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r6
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	ldr     r2, [r5, #0x8]
	orr     r1, r0
	add     r0, r2, r1
	str     r0, [r5, #0x14]
	lsl     r0, r4, #16
	ldr     r6, [r5, #0x3c]
	lsr     r0, r0, #16
	bl      0x201d15c
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r4, #0x2
	mov     r3, #0x0
	lsl     r4, r4, #10
	add     r4, r0, r4
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r4, #12
	ldr     r2, [r5, #0x10]
	orr     r1, r0
	add     r0, r2, r1
	str     r0, [r5, #0x1c]
	mov     r0, #0x22
	ldsh    r1, [r5, r0]
	mov     r0, #0x56
	ldsh    r0, [r5, r0]
	mov     r2, #0x5e
	mov     r6, #0x60
	add     r0, r1, r0
	strh    r0, [r5, #0x22]
	mov     r0, r5
	mov     r1, #0x5c
.thumb
branch_22493be: @ 22493be :thumb
	mov     r4, r0
	add     r4, #0x62
	ldrh    r4, [r4, #0x0]
	cmp     r4, #0x0
	beq     branch_22493f6
	mov     r4, r0
	add     r4, #0x62
	ldrh    r4, [r4, #0x0]
	.hword  0x1e67 @ sub r7, r4, #0x1
	mov     r4, r0
	add     r4, #0x62
	strh    r7, [r4, #0x0]
	mov     r4, r0
	add     r4, #0x62
	ldrh    r4, [r4, #0x0]
	cmp     r4, #0x0
	bne     branch_22493ea
	ldsh    r7, [r0, r6]
	mov     r4, r0
	add     r4, #0x5c
	strh    r7, [r4, #0x0]
	b       branch_22493f6
@ 0x22493ea

.thumb
branch_22493ea: @ 22493ea :thumb
	ldsh    r7, [r0, r1]
	ldsh    r4, [r0, r2]
	add     r7, r7, r4
	mov     r4, r0
	add     r4, #0x5c
	strh    r7, [r4, #0x0]
.thumb
branch_22493f6: @ 22493f6 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0x8
	cmp     r3, #0x3
	blt     branch_22493be
	mov     r0, #0x20
	ldsh    r1, [r5, r0]
	mov     r0, #0x5c
	ldsh    r0, [r5, r0]
	add     r0, r1, r0
	strh    r0, [r5, #0x20]
	mov     r0, #0x22
	ldsh    r1, [r5, r0]
	mov     r0, #0x64
	ldsh    r0, [r5, r0]
	add     r0, r1, r0
	strh    r0, [r5, #0x22]
	mov     r0, #0x24
	ldsh    r1, [r5, r0]
	mov     r0, #0x6c
	ldsh    r0, [r5, r0]
	add     r0, r1, r0
	strh    r0, [r5, #0x24]
	pop     {r3-r7,pc}
@ 0x2249424

.thumb
Function_2249424: @ 2249424 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2249484
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x18]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bgt     branch_2249484
	mov     r1, #0x2
	lsl     r1, r1, #8
	str     r1, [r4, #0x30]
	mov     r0, #0x0
	lsl     r1, r1, #5
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x3c
	bl      Function_2249268
	ldr     r2, [pc, #0x30] @ 0x22494a0, (=0xfffff800)
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x1e
	bl      Function_22492a4
	mov     r0, #0x1
	str     r0, [r4, #0x7c]
	ldr     r1, [pc, #0x24] @ 0x22494a4, (=0x22494a9)
	mov     r0, r5
	bl      0x201cecc
.thumb
branch_2249484: @ 2249484 :thumb
	mov     r0, r4
	bl      Function_22492dc
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	bl      Function_2247968
	ldr     r0, [r4, #0x0]
	add     r4, #0x20
	mov     r1, r4
	bl      Function_2247990
	pop     {r3-r5,pc}
@ 0x22494a0

.word 0xfffff800 @ 0x22494a0
.word 0x22494a9 @ 0x22494a4
.thumb
Function_22494a8: @ 22494a8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x78]
	cmp     r0, #0x0
	bne     branch_22494f2
	ldr     r1, [r4, #0x2c]
	ldr     r0, [r4, #0x30]
	add     r1, r1, r0
	str     r1, [r4, #0x2c]
	ldr     r0, [r4, #0x28]
	add     r0, r0, r1
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_22492dc
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	bl      Function_2247968
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x20
	bl      Function_2247990
	ldr     r0, [r4, #0x0]
	bl      Function_22479dc
	cmp     r0, #0x0
	bne     branch_22494f2
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_22479a8
	mov     r0, #0x1
	str     r0, [r4, #0x78]
.thumb
branch_22494f2: @ 22494f2 :thumb
	pop     {r4,pc}
@ 0x22494f4

.thumb
Function_22494f4: @ 22494f4 :thumb
	push    {r3,lr}
	bl      0x201ced0
	ldr     r0, [r0, #0x78]
	pop     {r3,pc}
@ 0x22494fe


.align 2, 0


.thumb
Function_2249500: @ 2249500 :thumb
	push    {r3,lr}
	bl      0x201ced0
	ldr     r0, [r0, #0x7c]
	pop     {r3,pc}
@ 0x224950a


.align 2, 0


.thumb
Function_224950c: @ 224950c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      0x201ced0
	mov     r4, r0
	mov     r1, #0x0
	str     r1, [r4, #0x78]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x4]
	ldrh    r1, [r0, #0x4]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2247ad0
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x0
	bl      Function_2247ab0
	ldr     r1, [pc, #0x5c] @ 0x2249594, (=0x58cc)
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r1, [r4, #0x2c]
	sub     r0, r1, r0
	str     r0, [r4, #0x28]
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x14
	add     r0, #0x80
	str     r3, [r0, #0x0]
	ldr     r0, [r4, #0x28]
	mov     r2, r1
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_2249268
	mov     r2, #0x56
	ldsh    r2, [r4, r2]
	mov     r0, r4
	mov     r1, #0x1
	neg     r2, r2
	mov     r3, #0x1e
	bl      Function_22492a4
	mov     r1, #0x2
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xfe
	mov     r3, #0x32
	bl      Function_22492a4
	mov     r1, #0x2
	ldr     r0, [r4, #0x0]
	lsl     r1, r1, #12
	bl      Function_22479d4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_22479a8
	ldr     r1, [pc, #0xc] @ 0x2249598, (=0x224959d)
	mov     r0, r5
	bl      0x201cecc
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2249594

.word 0x58cc @ 0x2249594
.word 0x224959d @ 0x2249598
.thumb
Function_224959c: @ 224959c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_22492dc
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22495dc
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x18]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22495dc
	ldr     r1, [pc, #0x1c] @ 0x22495f4, (=0x22495f9)
	mov     r0, r5
	bl      0x201cecc
.thumb
branch_22495dc: @ 22495dc :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	bl      Function_2247968
	ldr     r0, [r4, #0x0]
	add     r4, #0x20
	mov     r1, r4
	bl      Function_2247990
	pop     {r3-r5,pc}
@ 0x22495f2


.align 2


.word 0x22495f9 @ 0x22495f4
.thumb
Function_22495f8: @ 22495f8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_22492dc
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x6e
	ble     branch_224963a
	ldr     r1, [r4, #0x28]
	ldr     r0, [pc, #0x30] @ 0x2249650, (=0xfffc5800)
	sub     r0, r0, r1
	mov     r1, #0x35
	blx     _s32_div_f
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x35
	add     r0, #0x80
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0x20] @ 0x2249654, (=0x2249659)
	mov     r0, r5
	bl      0x201cecc
.thumb
branch_224963a: @ 224963a :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	bl      Function_2247968
	ldr     r0, [r4, #0x0]
	add     r4, #0x20
	mov     r1, r4
	bl      Function_2247990
	pop     {r3-r5,pc}
@ 0x2249650

.word 0xfffc5800 @ 0x2249650
.word 0x2249659 @ 0x2249654
.thumb
Function_2249658: @ 2249658 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_22492dc
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2249698
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x18]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2249698
	ldr     r1, [pc, #0x1c] @ 0x22496b0, (=0x22496b5)
	mov     r0, r5
	bl      0x201cecc
.thumb
branch_2249698: @ 2249698 :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	bl      Function_2247968
	ldr     r0, [r4, #0x0]
	add     r4, #0x20
	mov     r1, r4
	bl      Function_2247990
	pop     {r3-r5,pc}
@ 0x22496ae


.align 2


.word 0x22496b5 @ 0x22496b0
.thumb
Function_22496b4: @ 22496b4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_22492dc
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	ble     branch_22496e6
	mov     r0, #0x2
	lsl     r0, r0, #16
	str     r0, [r4, #0x2c]
	ldr     r1, [pc, #0x1c] @ 0x22496fc, (=0x2249701)
	mov     r0, r5
	bl      0x201cecc
.thumb
branch_22496e6: @ 22496e6 :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	bl      Function_2247968
	ldr     r0, [r4, #0x0]
	add     r4, #0x20
	mov     r1, r4
	bl      Function_2247990
	pop     {r3-r5,pc}
@ 0x22496fc

.word 0x2249701 @ 0x22496fc
.thumb
Function_2249700: @ 2249700 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x78]
	cmp     r0, #0x0
	bne     branch_224973c
	mov     r0, r4
	bl      Function_22492dc
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x18]
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	bl      Function_2247968
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x20
	bl      Function_2247990
	ldr     r0, [r4, #0x0]
	bl      Function_22479dc
	cmp     r0, #0x0
	bne     branch_224973c
	mov     r0, #0x1
	str     r0, [r4, #0x78]
.thumb
branch_224973c: @ 224973c :thumb
	pop     {r4,pc}
@ 0x224973e


.align 2, 0


.thumb
Function_2249740: @ 2249740 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3a
	mov     r1, #0xa4
	bl      0x2018144
	mov     r4, r0
	beq     branch_224976a
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2247628
	str     r0, [r4, #0x24]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	mov     r0, r4
	add     r0, #0x34
	bl      Function_2249c28
.thumb
branch_224976a: @ 224976a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x224976e


.align 2, 0


.thumb
Function_2249770: @ 2249770 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_224979e
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, r4
	bl      Function_2249a68
	mov     r0, r4
	bl      Function_2249b80
	mov     r0, r4
	bl      Function_2249c10
	mov     r0, r4
	add     r0, #0x34
	bl      Function_2249c30
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_224979e: @ 224979e :thumb
	pop     {r4,pc}
@ 0x22497a0

.thumb
Function_22497a0: @ 22497a0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	mov     r5, r0
	cmp     r2, #0x2
	bcs     branch_22497ce
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x24] @ 0x22497d4, (=0x224c01c)
	add     r1, r5, #0x4
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_22497c4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_22497c4: @ 22497c4 :thumb
	mov     r0, r5
	bl      Function_22497d8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22497ce

.thumb
branch_22497ce: @ 22497ce :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22497d2


.align 2


.word 0x224c01c @ 0x22497d4
.thumb
Function_22497d8: @ 22497d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_22497f4
	blx     0x20bfab8
	ldr     r0, [r4, #0x28]
	bl      Function_2247770
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
.thumb
branch_22497f4: @ 22497f4 :thumb
	pop     {r4,pc}
@ 0x22497f6


.align 2, 0


.thumb
Function_22497f8: @ 22497f8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2249910
	mov     r0, r4
	bl      Function_2249a80
	mov     r0, r4
	bl      Function_2249b90
	mov     r2, #0x0
	ldr     r0, [pc, #0x24] @ 0x2249838, (=0x2249f39)
	mov     r1, r4
	str     r2, [r4, #0xc]
	bl      0x200da3c
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x14] @ 0x224983c, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2249836


.align 2


.word 0x2249f39 @ 0x2249838
.word 0x7fff @ 0x224983c
.thumb
Function_2249840: @ 2249840 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x4
	bhi     branch_22498fc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224985a

Jumppoints_224985a:
.hword branch_2249864 - Jumppoints_224985a - 2
.hword branch_2249870 - Jumppoints_224985a - 2
.hword branch_224989a - Jumppoints_224985a - 2
.hword branch_22498c4 - Jumppoints_224985a - 2
.hword branch_22498ee - Jumppoints_224985a - 2
.thumb
branch_2249864: @ 2249864 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22498fc
@ 0x2249870

.thumb
branch_2249870: @ 2249870 :thumb
	ldr     r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	cmp     r0, #0xa
	ble     branch_22498fc
	ldr     r0, [pc, #0x88] @ 0x2249904, (=0x6ac)
	bl      0x2005748
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x34
	bl      Function_2249c44
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x1
	bl      Function_22479a8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22498fc
@ 0x224989a

.thumb
branch_224989a: @ 224989a :thumb
	mov     r0, r5
	add     r0, #0x34
	bl      Function_2249cf0
	cmp     r0, #0x0
	beq     branch_22498fc
	ldr     r0, [pc, #0x60] @ 0x2249908, (=0x6ad)
	bl      0x2005748
	ldr     r0, [r5, #0x20]
	mov     r1, #0x3
	bl      0x2021d6c
	ldr     r0, [r5, #0x20]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22498fc
@ 0x22498c4

.thumb
branch_22498c4: @ 22498c4 :thumb
	ldr     r0, [r5, #0x20]
	bl      0x2021fd0
	cmp     r0, #0x0
	bne     branch_22498fc
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x2c] @ 0x224990c, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22498fc
@ 0x22498ee

.thumb
branch_22498ee: @ 22498ee :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_22498fc
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x22498fc

.thumb
branch_22498fc: @ 22498fc :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2249902


.align 2


.word 0x6ac @ 0x2249904
.word 0x6ad @ 0x2249908
.word 0x7fff @ 0x224990c
.thumb
Function_2249910: @ 2249910 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [pc, #0x13c] @ 0x2249a54, (=0x224c060)
	bl      0x201fe94
	ldr     r2, [pc, #0x138] @ 0x2249a58, (=0x4000304)
	ldr     r0, [pc, #0x13c] @ 0x2249a5c, (=0xffff7fff)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x138] @ 0x2249a60, (=0x224c024)
	bl      0x2018368
	ldr     r0, [r4, #0x24]
	ldr     r2, [pc, #0x134] @ 0x2249a64, (=0x224c044)
	mov     r1, #0x3
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x24]
	ldr     r2, [pc, #0x128] @ 0x2249a64, (=0x224c044)
	mov     r1, #0x7
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x0]
	bl      Function_2247644
	cmp     r0, #0x3
	bhi     branch_2249962
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224995a

Jumppoints_224995a:
.hword branch_2249962 - Jumppoints_224995a - 2
.hword branch_224996e - Jumppoints_224995a - 2
.hword branch_224997a - Jumppoints_224995a - 2
.hword branch_2249986 - Jumppoints_224995a - 2
.thumb
branch_2249962: @ 2249962 :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r7, #0x10
	mov     r6, #0x11
	mov     r5, #0x0
	b       branch_2249990
@ 0x224996e

.thumb
branch_224996e: @ 224996e :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r7, #0x10
	mov     r6, #0x11
	mov     r5, #0x20
	b       branch_2249990
@ 0x224997a

.thumb
branch_224997a: @ 224997a :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r7, #0x10
	mov     r6, #0x11
	mov     r5, #0x40
	b       branch_2249990
@ 0x2249986

.thumb
branch_2249986: @ 2249986 :thumb
	mov     r0, #0x18
	str     r0, [sp, #0x10]
	mov     r7, #0x19
	mov     r6, #0x1a
	mov     r5, #0x0
.thumb
branch_2249990: @ 2249990 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x24]
	mov     r0, #0x5d
	mov     r1, r7
	mov     r3, #0x3
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x24]
	mov     r0, #0x5d
	mov     r1, r7
	mov     r3, #0x7
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r4, #0x24]
	mov     r0, #0x5d
	mov     r3, #0x3
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r4, #0x24]
	mov     r0, #0x5d
	mov     r3, #0x7
	bl      0x2006e60
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r1, r6
	mov     r3, r5
	bl      0x2006e9c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r1, r6
	mov     r2, #0x4
	mov     r3, r5
	bl      0x2006e9c
	mov     r1, #0x3
	mov     r3, r1
	ldr     r0, [r4, #0x24]
	mov     r2, r1
	add     r3, #0xfd
	bl      0x2019184
	ldr     r0, [r4, #0x24]
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      0x2019184
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2249a54

.word 0x224c060 @ 0x2249a54
.word 0x4000304 @ 0x2249a58
.word 0xffff7fff @ 0x2249a5c
.word 0x224c024 @ 0x2249a60
.word 0x224c044 @ 0x2249a64
.thumb
Function_2249a68: @ 2249a68 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x24]
	mov     r1, #0x7
	bl      0x2019044
	pop     {r4,pc}
@ 0x2249a7e


.align 2, 0


.thumb
Function_2249a80: @ 2249a80 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x24
	mov     r4, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0xc4] @ 0x2249b54, (=0x4000060)
	ldr     r1, [pc, #0xc4] @ 0x2249b58, (=0xffffcffd)
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0xb4] @ 0x2249b5c, (=0xcffb)
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x8
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x98] @ 0x2249b60, (=0x224c034)
	blx     0x20bfd2c
	mov     r1, #0x0
	ldr     r0, [pc, #0x94] @ 0x2249b64, (=0x43ff)
	ldr     r2, [pc, #0x98] @ 0x2249b68, (=0x7fff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x90] @ 0x2249b6c, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x90] @ 0x2249b70, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	ldr     r1, [pc, #0x74] @ 0x2249b74, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	mov     r3, r1
	bl      Function_22476f0
	str     r0, [r4, #0x28]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r2, #0x5d
	mov     r3, #0x1b
	bl      Function_22478b4
	ldr     r1, [pc, #0x4c] @ 0x2249b78, (=0x18e3)
	str     r0, [r4, #0x2c]
	add     r0, sp, #0x10
	strh    r1, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x10
	bl      Function_2247ab0
	ldr     r0, [r4, #0x28]
	ldr     r1, [pc, #0x38] @ 0x2249b7c, (=0x7d2)
	bl      Function_2247ae0
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x18
	bl      Function_2247a90
	add     sp, #0x24
	pop     {r3,r4,pc}
@ 0x2249b52


.align 2


.word 0x4000060 @ 0x2249b54
.word 0xffffcffd @ 0x2249b58
.word 0xcffb @ 0x2249b5c
.word 0x224c034 @ 0x2249b60
.word 0x43ff @ 0x2249b64
.word 0x7fff @ 0x2249b68
.word 0x4000540 @ 0x2249b6c
.word 0xbfff0000 @ 0x2249b70
.word 0x4000008 @ 0x2249b74
.word 0x18e3 @ 0x2249b78
.word 0x7d2 @ 0x2249b7c
.thumb
Function_2249b80: @ 2249b80 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x28]
	cmp     r0, #0x0
	beq     branch_2249b8c
	bl      Function_224773c
.thumb
branch_2249b8c: @ 2249b8c :thumb
	pop     {r3,pc}
@ 0x2249b8e


.align 2, 0


.thumb
Function_2249b90: @ 2249b90 :thumb
	push    {r4,lr}
	add     sp, #-0x70
	mov     r4, r0
	add     r0, #0x10
	mov     r1, #0x5d
	mov     r2, #0x7
	mov     r3, #0x8
	bl      Function_2247568
	add     r0, sp, #0x5c
	blx     0x20a81d0
	add     r0, sp, #0x38
	blx     0x20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	add     r0, sp, #0x38
	str     r0, [sp, #0x10]
	mov     r0, #0x5d
	mov     r1, #0x9
	bl      0x2006f00
	mov     r0, #0x3a
	str     r0, [sp, #0x0]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x2006ee0
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	add     r0, sp, #0x14
	add     r1, #0x10
	add     r2, sp, #0x38
	add     r3, sp, #0x5c
	bl      Function_22475c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	mov     r2, #0x80
	mov     r3, #0x60
	bl      Function_22475e4
	mov     r1, #0x0
	str     r0, [r4, #0x20]
	bl      0x2021cac
	add     sp, #0x70
	pop     {r4,pc}
@ 0x2249c0e


.align 2, 0


.thumb
Function_2249c10: @ 2249c10 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_2249c1e
	bl      0x2021bd4
.thumb
branch_2249c1e: @ 2249c1e :thumb
	add     r4, #0x10
	mov     r0, r4
	bl      Function_22475a0
	pop     {r4,pc}
@ 0x2249c28

.thumb
Function_2249c28: @ 2249c28 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2249c2e


.align 2, 0


.thumb
Function_2249c30: @ 2249c30 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2249c42
	bl      0x200da58
	mov     r0, #0x0
	str     r0, [r4, #0x4]
.thumb
branch_2249c42: @ 2249c42 :thumb
	pop     {r4,pc}
@ 0x2249c44

.thumb
Function_2249c44: @ 2249c44 :thumb
	push    {r4,lr}
	mov     r4, r1
	str     r0, [r4, #0x0]
	ldr     r1, [r0, #0x2c]
	ldr     r2, [pc, #0x84] @ 0x2249cd4, (=0xffffd870)
	str     r1, [r4, #0xc]
	ldr     r0, [r0, #0x28]
	ldr     r1, [pc, #0x84] @ 0x2249cd8, (=0xfff50e00)
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	str     r1, [r4, #0x14]
	mov     r1, #0xe2
	lsl     r1, r1, #12
	str     r1, [r4, #0x18]
	mov     r1, r4
	add     r1, #0x6c
	strh    r2, [r1, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0x70] @ 0x2249cdc, (=0xfffff550)
	add     r1, #0x6e
	strh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x6c] @ 0x2249ce0, (=0x134c4)
	str     r1, [r4, #0x3c]
	ldr     r1, [pc, #0x6c] @ 0x2249ce4, (=0xffff4d56)
	str     r1, [r4, #0x40]
	str     r0, [r4, #0x60]
	str     r0, [r4, #0x64]
	mov     r1, #0x2
	str     r0, [r4, #0x68]
	lsl     r1, r1, #12
	strh    r1, [r4, #0x34]
	ldr     r1, [pc, #0x60] @ 0x2249ce8, (=0xffffe000)
	strh    r1, [r4, #0x36]
	strh    r0, [r4, #0x38]
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x34
	bl      Function_2247990
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x54]
	mov     r0, #0x4a
	lsl     r0, r0, #10
	str     r0, [r4, #0x44]
	mov     r0, #0x63
	lsl     r0, r0, #10
	str     r0, [r4, #0x48]
	mov     r0, #0x0
	str     r0, [r4, #0x5c]
	mov     r0, r4
	bl      Function_2249d38
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x28
	bl      Function_2247968
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x34
	bl      Function_2247978
	ldr     r0, [pc, #0x24] @ 0x2249cec, (=0x2249e05)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2249cd2


.align 2


.word 0xffffd870 @ 0x2249cd4
.word 0xfff50e00 @ 0x2249cd8
.word 0xfffff550 @ 0x2249cdc
.word 0x134c4 @ 0x2249ce0
.word 0xffff4d56 @ 0x2249ce4
.word 0xffffe000 @ 0x2249ce8
.word 0x2249e05 @ 0x2249cec
.thumb
Function_2249cf0: @ 2249cf0 :thumb
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_2249cfa
	mov     r0, #0x1
	bx      lr
@ 0x2249cfa

.thumb
branch_2249cfa: @ 2249cfa :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2249cfe


.align 2, 0


.thumb
Function_2249d00: @ 2249d00 :thumb
	push    {r3-r7,lr}
	ldr     r4, [sp, #0x18]
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	cmp     r4, #0x0
	beq     branch_2249d36
	ldr     r0, [r5, #0x44]
	sub     r0, r1, r0
	mov     r1, r4
	blx     _s32_div_f
	str     r0, [r5, #0x4c]
	ldr     r0, [r5, #0x48]
	mov     r1, r4
	sub     r0, r6, r0
	blx     _s32_div_f
	str     r0, [r5, #0x50]
	ldr     r0, [r5, #0x54]
	mov     r1, r4
	sub     r0, r7, r0
	blx     _s32_div_f
	str     r0, [r5, #0x58]
	ldr     r0, [sp, #0x18]
	str     r0, [r5, #0x5c]
.thumb
branch_2249d36: @ 2249d36 :thumb
	pop     {r3-r7,pc}
@ 0x2249d38

.thumb
Function_2249d38: @ 2249d38 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x6c
	ldrh    r0, [r0, #0x0]
	mov     r1, #0xb6
	blx     _s32_div_f
	mov     r4, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	cmp     r4, r0
	blt     branch_2249d52
	sub     r4, r4, r0
.thumb
branch_2249d52: @ 2249d52 :thumb
	mov     r0, #0x6c
	ldsh    r1, [r5, r0]
	mov     r0, #0x6e
	ldsh    r0, [r5, r0]
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0x6c
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x5c]
	cmp     r0, #0x0
	beq     branch_2249d8c
	ldr     r1, [r5, #0x44]
	ldr     r0, [r5, #0x4c]
	add     r0, r1, r0
	str     r0, [r5, #0x44]
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x50]
	add     r0, r1, r0
	str     r0, [r5, #0x48]
	ldr     r1, [r5, #0x54]
	ldr     r0, [r5, #0x58]
	add     r1, r1, r0
	str     r1, [r5, #0x54]
	ldr     r0, [r5, #0xc]
	bl      Function_22479d4
	ldr     r0, [r5, #0x5c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x5c]
.thumb
branch_2249d8c: @ 2249d8c :thumb
	lsl     r0, r4, #16
	ldr     r6, [r5, #0x44]
	lsr     r0, r0, #16
	bl      0x201d1d4
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x1c]
	lsl     r0, r4, #16
	ldr     r6, [r5, #0x48]
	lsr     r0, r0, #16
	bl      0x201d15c
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x20]
	mov     r1, r5
	str     r3, [r5, #0x24]
	mov     r0, #0x34
	ldsh    r2, [r5, r0]
	mov     r0, #0x3
	lsl     r0, r0, #8
	add     r0, r2, r0
	strh    r0, [r5, #0x34]
	ldr     r0, [r5, #0xc]
	add     r1, #0x34
	bl      Function_2247990
	mov     r0, r5
	mov     r1, r5
	add     r5, #0x28
	add     r0, #0x1c
	add     r1, #0x10
	mov     r2, r5
	blx     0x20bd17c
	pop     {r4-r6,pc}
@ 0x2249e02


.align 2, 0


.thumb
Function_2249e04: @ 2249e04 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x68]
	cmp     r1, #0x3c
	bge     branch_2249e14
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x68]
.thumb
branch_2249e14: @ 2249e14 :thumb
	ldr     r1, [r4, #0x60]
	cmp     r1, #0x4
	bls     branch_2249e1c
	b       branch_2249f2c
@ 0x2249e1c

.thumb
branch_2249e1c: @ 2249e1c :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2249e28

Jumppoints_2249e28:
.hword branch_2249e32 - Jumppoints_2249e28 - 2
.hword branch_2249e66 - Jumppoints_2249e28 - 2
.hword branch_2249ea4 - Jumppoints_2249e28 - 2
.hword branch_2249eea - Jumppoints_2249e28 - 2
.hword branch_2249f1a - Jumppoints_2249e28 - 2
.thumb
branch_2249e32: @ 2249e32 :thumb
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x3c]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x40]
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_2249d38
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x28
	bl      Function_2247968
	ldr     r0, [r4, #0xc]
	bl      Function_22479dc
	cmp     r0, #0x0
	beq     branch_2249f2c
	ldr     r0, [r4, #0x60]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	pop     {r3,r4,pc}
@ 0x2249e66

.thumb
branch_2249e66: @ 2249e66 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_22479dc
	cmp     r0, #0x0
	bne     branch_2249e80
	ldr     r0, [r4, #0x0]
	bl      Function_2249f30
	ldr     r0, [r4, #0x60]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	pop     {r3,r4,pc}
@ 0x2249e80

.thumb
branch_2249e80: @ 2249e80 :thumb
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x3c]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x40]
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_2249d38
	ldr     r0, [r4, #0xc]
	add     r4, #0x28
	mov     r1, r4
	bl      Function_2247968
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2249ea4

.thumb
branch_2249ea4: @ 2249ea4 :thumb
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x3c]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x40]
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_2249d38
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x28
	bl      Function_2247968
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x3c
	blt     branch_2249f2c
	mov     r1, #0x2
	lsl     r1, r1, #10
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, r1
	lsr     r3, r1, #2
	bl      Function_2249d00
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	ldr     r0, [r4, #0x60]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	pop     {r3,r4,pc}
@ 0x2249eea

.thumb
branch_2249eea: @ 2249eea :thumb
	mov     r0, r4
	bl      Function_2249d38
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x28
	bl      Function_2247968
	ldr     r0, [r4, #0x64]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x64]
	cmp     r0, #0xc
	blt     branch_2249f2c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_22479a8
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	ldr     r0, [r4, #0x60]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	pop     {r3,r4,pc}
@ 0x2249f1a

.thumb
branch_2249f1a: @ 2249f1a :thumb
	ldr     r1, [r4, #0x64]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x64]
	cmp     r1, #0x8
	ble     branch_2249f2c
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	bl      0x200da58
.thumb
branch_2249f2c: @ 2249f2c :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2249f30

.thumb
Function_2249f30: @ 2249f30 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0xc]
	bx      lr
@ 0x2249f36


.align 2, 0


.thumb
Function_2249f38: @ 2249f38 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_2249f84
	mov     r3, #0x0
	ldr     r1, [pc, #0x3c] @ 0x2249f88, (=0x1150)
	str     r3, [r4, #0xc]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	strh    r3, [r0, #0x2]
	strh    r3, [r0, #0x4]
	mov     r1, #0x3
	ldr     r0, [r4, #0x24]
	mov     r2, r1
	bl      0x2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x24]
	mov     r1, #0x7
	add     r3, #0xfd
	bl      0x2019184
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x0
	bl      Function_2247ac0
	ldr     r2, [pc, #0x14] @ 0x2249f8c, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, r5
	bl      0x200da58
.thumb
branch_2249f84: @ 2249f84 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2249f88

.word 0x1150 @ 0x2249f88
.word 0x4000304 @ 0x2249f8c
.thumb
Function_2249f90: @ 2249f90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3a
	mov     r1, #0x24
	bl      0x2018144
	mov     r4, r0
	beq     branch_2249fae
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2247628
	str     r0, [r4, #0xc]
.thumb
branch_2249fae: @ 2249fae :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2249fb2


.align 2, 0


.thumb
Function_2249fb4: @ 2249fb4 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2249fc4
	bl      Function_224a320
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_2249fc4: @ 2249fc4 :thumb
	pop     {r4,pc}
@ 0x2249fc6


.align 2, 0


.thumb
Function_2249fc8: @ 2249fc8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	mov     r5, r0
	cmp     r2, #0x2
	bcs     branch_2249ff0
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x1c] @ 0x2249ff4, (=0x224c088)
	add     r1, r5, #0x4
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_2249fec
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_2249fec: @ 2249fec :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2249ff0

.thumb
branch_2249ff0: @ 2249ff0 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2249ff4

.word 0x224c088 @ 0x2249ff4
.thumb
Function_2249ff8: @ 2249ff8 :thumb
	push    {lr}
	add     sp, #-0xc
	bl      Function_224a10c
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0xc] @ 0x224a01c, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x224a01c

.word 0x7fff @ 0x224a01c
.thumb
Function_224a020: @ 224a020 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224a038
	cmp     r0, #0x1
	beq     branch_224a06a
	cmp     r0, #0x2
	beq     branch_224a096
	b       branch_224a0a4
@ 0x224a038

.thumb
branch_224a038: @ 224a038 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224a0a4
	ldr     r0, [pc, #0x68] @ 0x224a0ac, (=0xffe80000)
	mov     r2, #0x0
	str     r0, [r5, #0x10]
	mov     r0, #0x5
	lsl     r0, r0, #16
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x60] @ 0x224a0b0, (=0x5999)
	mov     r1, r5
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x60] @ 0x224a0b4, (=0xffffddde)
	str     r0, [r5, #0x1c]
	mov     r0, #0x3c
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x5c] @ 0x224a0b8, (=0x224a0c5)
	str     r2, [r5, #0x20]
	bl      0x200da04
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a0a4
@ 0x224a06a

.thumb
branch_224a06a: @ 224a06a :thumb
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	beq     branch_224a0a4
	ldr     r0, [pc, #0x48] @ 0x224a0bc, (=0x6a9)
	bl      0x2005748
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x38] @ 0x224a0c0, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a0a4
@ 0x224a096

.thumb
branch_224a096: @ 224a096 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224a0a4
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224a0a4

.thumb
branch_224a0a4: @ 224a0a4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224a0aa


.align 2


.word 0xffe80000 @ 0x224a0ac
.word 0x5999 @ 0x224a0b0
.word 0xffffddde @ 0x224a0b4
.word 0x224a0c5 @ 0x224a0b8
.word 0x6a9 @ 0x224a0bc
.word 0x7fff @ 0x224a0c0
.thumb
Function_224a0c4: @ 224a0c4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_224a0f2
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x18]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x1c]
	add     r2, r1, r0
	str     r2, [r4, #0x14]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	asr     r1, r1, #12
	asr     r2, r2, #12
	bl      Function_224a358
	pop     {r3-r5,pc}
@ 0x224a0f2

.thumb
branch_224a0f2: @ 224a0f2 :thumb
	mov     r1, #0x2f
	mvn     r1, r1
	ldr     r0, [r4, #0xc]
	mov     r2, r1
	bl      Function_224a358
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	mov     r0, r5
	bl      0x200da58
	pop     {r3-r5,pc}
@ 0x224a10a


.align 2, 0


.thumb
Function_224a10c: @ 224a10c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0x1f0] @ 0x224a304, (=0x224c0f4)
	bl      0x201fe94
	ldr     r2, [pc, #0x1ec] @ 0x224a308, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x1e8] @ 0x224a30c, (=0x224c090)
	bl      0x2018368
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x1e4] @ 0x224a310, (=0x224c0a0)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x1d8] @ 0x224a310, (=0x224c0a0)
	mov     r1, #0x5
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x1d0] @ 0x224a314, (=0x224c0bc)
	mov     r1, #0x2
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x1c8] @ 0x224a318, (=0x224c0d8)
	mov     r1, #0x3
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x1bc] @ 0x224a318, (=0x224c0d8)
	mov     r1, #0x7
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x13
	mov     r3, #0x3
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x13
	mov     r3, #0x7
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x12
	mov     r3, #0x3
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x12
	mov     r3, #0x7
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x14
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x14
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	mov     r0, #0xc8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r4, #0xc]
	mov     r2, #0x0
	mov     r3, r1
	bl      0x20196c0
	mov     r0, #0xc8
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r3, #0x1
	bl      0x20196c0
	mov     r0, #0xc8
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x1
	bl      0x20196c0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	mov     r3, #0xe
	bl      Function_22473e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x5
	mov     r3, #0xe
	bl      Function_22473e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	mov     r2, #0x2
	mov     r3, #0xf
	bl      Function_22473e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x40
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	mov     r2, #0xc8
	bl      0x2019cb8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x40
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x5
	mov     r2, #0xc8
	bl      0x2019cb8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x40
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	mov     r2, #0xc8
	bl      0x2019cb8
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	mov     r3, #0xe
	bl      Function_22474d4
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x5
	mov     r3, #0xe
	bl      Function_22474d4
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	mov     r3, #0xf
	bl      Function_22474d4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x2019448
	ldr     r0, [r4, #0xc]
	mov     r1, #0x5
	bl      0x2019448
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2019448
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x30] @ 0x224a31c, (=0xfffffe80)
	mov     r1, #0x50
	bl      Function_224a358
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x10
	pop     {r4,pc}
@ 0x224a304

.word 0x224c0f4 @ 0x224a304
.word 0x4000304 @ 0x224a308
.word 0x224c090 @ 0x224a30c
.word 0x224c0a0 @ 0x224a310
.word 0x224c0bc @ 0x224a314
.word 0x224c0d8 @ 0x224a318
.word 0xfffffe80 @ 0x224a31c
.thumb
Function_224a320: @ 224a320 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x5
	bl      0x2019044
	pop     {r4,pc}
@ 0x224a356


.align 2, 0


.thumb
Function_224a358: @ 224a358 :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0x30] @ 0x224a38c, (=0x1ff)
	mov     r4, r1
	mov     r6, r2
	and     r4, r3
	mov     r5, r0
	mov     r1, #0x2
	mov     r2, #0x3
	and     r3, r6
	bl      0x2019184
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, r4
	bl      0x2019184
	add     r4, #0xc0
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x3
	mov     r3, r4
	bl      0x2019184
	pop     {r4-r6,pc}
@ 0x224a38a


.align 2


.word 0x1ff @ 0x224a38c
.thumb
Function_224a390: @ 224a390 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3a
	mov     r1, #0xb0
	bl      0x2018144
	mov     r4, r0
	beq     branch_224a3c4
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2247628
	str     r0, [r4, #0x24]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0xc]
	mov     r0, r4
	add     r0, #0x34
	bl      Function_224a848
	ldr     r0, [pc, #0x8] @ 0x224a3c8, (=0x224ab51)
	mov     r1, r4
	bl      0x2017798
.thumb
branch_224a3c4: @ 224a3c4 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x224a3c8

.word 0x224ab51 @ 0x224a3c8
.thumb
Function_224a3cc: @ 224a3cc :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_224a3fa
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, r4
	bl      Function_224a678
	mov     r0, r4
	bl      Function_224a7a0
	mov     r0, r4
	bl      Function_224a830
	mov     r0, r4
	add     r0, #0x34
	bl      Function_224a850
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_224a3fa: @ 224a3fa :thumb
	pop     {r4,pc}
@ 0x224a3fc

.thumb
Function_224a3fc: @ 224a3fc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	mov     r5, r0
	cmp     r2, #0x2
	bcs     branch_224a424
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x1c] @ 0x224a428, (=0x224c11c)
	add     r1, r5, #0x4
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_224a420
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_224a420: @ 224a420 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224a424

.thumb
branch_224a424: @ 224a424 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224a428

.word 0x224c11c @ 0x224a428
.thumb
Function_224a42c: @ 224a42c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_224a518
	mov     r0, r4
	bl      Function_224a690
	mov     r0, r4
	bl      Function_224a7b0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x10] @ 0x224a460, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224a45e


.align 2


.word 0x7fff @ 0x224a460
.thumb
Function_224a464: @ 224a464 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x3
	bhi     branch_224a50a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224a47e

Jumppoints_224a47e:
.hword branch_224a486 - Jumppoints_224a47e - 2
.hword branch_224a4a6 - Jumppoints_224a47e - 2
.hword branch_224a4d0 - Jumppoints_224a47e - 2
.hword branch_224a4fc - Jumppoints_224a47e - 2
.thumb
branch_224a486: @ 224a486 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224a50a
	ldr     r0, [r5, #0x20]
	mov     r1, #0x3
	bl      0x2021d6c
	ldr     r0, [r5, #0x20]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a50a
@ 0x224a4a6

.thumb
branch_224a4a6: @ 224a4a6 :thumb
	ldr     r0, [r5, #0x20]
	bl      0x2021fd0
	cmp     r0, #0x0
	bne     branch_224a50a
	ldr     r0, [pc, #0x5c] @ 0x224a510, (=0x6ab)
	bl      0x2005748
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x34
	bl      Function_224a864
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x1
	bl      Function_22479a8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a50a
@ 0x224a4d0

.thumb
branch_224a4d0: @ 224a4d0 :thumb
	add     r5, #0x34
	mov     r0, r5
	bl      Function_224a924
	cmp     r0, #0x0
	beq     branch_224a50a
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x28] @ 0x224a514, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a50a
@ 0x224a4fc

.thumb
branch_224a4fc: @ 224a4fc :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224a50a
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224a50a

.thumb
branch_224a50a: @ 224a50a :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224a510

.word 0x6ab @ 0x224a510
.word 0x7fff @ 0x224a514
.thumb
Function_224a518: @ 224a518 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [pc, #0x148] @ 0x224a668, (=0x224c160)
	bl      0x201fe94
	ldr     r2, [pc, #0x144] @ 0x224a66c, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x140] @ 0x224a670, (=0x224c124)
	bl      0x2018368
	ldr     r0, [r4, #0x24]
	ldr     r2, [pc, #0x13c] @ 0x224a674, (=0x224c144)
	mov     r1, #0x3
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x24]
	ldr     r2, [pc, #0x130] @ 0x224a674, (=0x224c144)
	mov     r1, #0x7
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x0]
	bl      Function_2247644
	cmp     r0, #0x3
	bhi     branch_224a56a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224a562

Jumppoints_224a562:
.hword branch_224a56a - Jumppoints_224a562 - 2
.hword branch_224a576 - Jumppoints_224a562 - 2
.hword branch_224a582 - Jumppoints_224a562 - 2
.hword branch_224a58e - Jumppoints_224a562 - 2
.thumb
branch_224a56a: @ 224a56a :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r7, #0x10
	mov     r6, #0x11
	mov     r5, #0x0
	b       branch_224a598
@ 0x224a576

.thumb
branch_224a576: @ 224a576 :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r7, #0x10
	mov     r6, #0x11
	mov     r5, #0x20
	b       branch_224a598
@ 0x224a582

.thumb
branch_224a582: @ 224a582 :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r7, #0x10
	mov     r6, #0x11
	mov     r5, #0x40
	b       branch_224a598
@ 0x224a58e

.thumb
branch_224a58e: @ 224a58e :thumb
	mov     r0, #0x18
	str     r0, [sp, #0x10]
	mov     r7, #0x19
	mov     r6, #0x1a
	mov     r5, #0x0
.thumb
branch_224a598: @ 224a598 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x24]
	mov     r0, #0x5d
	mov     r1, r7
	mov     r3, #0x3
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x24]
	mov     r0, #0x5d
	mov     r1, r7
	mov     r3, #0x7
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r4, #0x24]
	mov     r0, #0x5d
	mov     r3, #0x3
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r4, #0x24]
	mov     r0, #0x5d
	mov     r3, #0x7
	bl      0x2006e60
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r1, r6
	mov     r3, r5
	bl      0x2006e9c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r1, r6
	mov     r2, #0x4
	mov     r3, r5
	bl      0x2006e9c
	mov     r1, #0x3
	ldr     r0, [r4, #0x24]
	mov     r2, r1
	mov     r3, #0x0
	bl      0x2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x24]
	mov     r1, #0x7
	add     r3, #0xfd
	bl      0x2019184
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	bl      0x2039734
	mov     r0, #0x1
	mov     r1, #0x39
	bl      0x20397c8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224a668

.word 0x224c160 @ 0x224a668
.word 0x4000304 @ 0x224a66c
.word 0x224c124 @ 0x224a670
.word 0x224c144 @ 0x224a674
.thumb
Function_224a678: @ 224a678 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x24]
	mov     r1, #0x7
	bl      0x2019044
	pop     {r4,pc}
@ 0x224a68e


.align 2, 0


.thumb
Function_224a690: @ 224a690 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x24
	mov     r4, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0xd0] @ 0x224a770, (=0x4000060)
	ldr     r1, [pc, #0xd0] @ 0x224a774, (=0xffffcffd)
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0xc0] @ 0x224a778, (=0xcffb)
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x8
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x224a77c, (=0x224c134)
	blx     0x20bfd2c
	mov     r1, #0x0
	ldr     r0, [pc, #0xa0] @ 0x224a780, (=0x43ff)
	ldr     r2, [pc, #0xa4] @ 0x224a784, (=0x7fff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x9c] @ 0x224a788, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x9c] @ 0x224a78c, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	ldr     r1, [pc, #0x80] @ 0x224a790, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	mov     r3, r1
	bl      Function_22476f0
	str     r0, [r4, #0x28]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r2, #0x5d
	mov     r3, #0x1b
	bl      Function_22478b4
	ldr     r1, [pc, #0x58] @ 0x224a794, (=0x18e3)
	str     r0, [r4, #0x2c]
	add     r0, sp, #0x10
	strh    r1, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x10
	bl      Function_2247ab0
	ldr     r1, [pc, #0x48] @ 0x224a798, (=0x1150)
	add     r0, sp, #0x10
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x10
	bl      Function_2247ac0
	ldr     r0, [r4, #0x28]
	ldr     r1, [pc, #0x3c] @ 0x224a79c, (=0x7d2)
	bl      Function_2247ae0
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x18
	bl      Function_2247a90
	add     sp, #0x24
	pop     {r3,r4,pc}
@ 0x224a770

.word 0x4000060 @ 0x224a770
.word 0xffffcffd @ 0x224a774
.word 0xcffb @ 0x224a778
.word 0x224c134 @ 0x224a77c
.word 0x43ff @ 0x224a780
.word 0x7fff @ 0x224a784
.word 0x4000540 @ 0x224a788
.word 0xbfff0000 @ 0x224a78c
.word 0x4000008 @ 0x224a790
.word 0x18e3 @ 0x224a794
.word 0x1150 @ 0x224a798
.word 0x7d2 @ 0x224a79c
.thumb
Function_224a7a0: @ 224a7a0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x28]
	cmp     r0, #0x0
	beq     branch_224a7ac
	bl      Function_224773c
.thumb
branch_224a7ac: @ 224a7ac :thumb
	pop     {r3,pc}
@ 0x224a7ae


.align 2, 0


.thumb
Function_224a7b0: @ 224a7b0 :thumb
	push    {r4,lr}
	add     sp, #-0x70
	mov     r4, r0
	add     r0, #0x10
	mov     r1, #0x5d
	mov     r2, #0x7
	mov     r3, #0x8
	bl      Function_2247568
	add     r0, sp, #0x5c
	blx     0x20a81d0
	add     r0, sp, #0x38
	blx     0x20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	add     r0, sp, #0x38
	str     r0, [sp, #0x10]
	mov     r0, #0x5d
	mov     r1, #0x9
	bl      0x2006f00
	mov     r0, #0x3a
	str     r0, [sp, #0x0]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x2006ee0
	mov     r0, #0x1
	mov     r1, r4
	str     r0, [sp, #0x0]
	add     r0, sp, #0x14
	add     r1, #0x10
	add     r2, sp, #0x38
	add     r3, sp, #0x5c
	bl      Function_22475c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	mov     r2, #0x80
	mov     r3, #0x60
	bl      Function_22475e4
	mov     r1, #0x0
	str     r0, [r4, #0x20]
	bl      0x2021cac
	add     sp, #0x70
	pop     {r4,pc}
@ 0x224a82e


.align 2, 0


.thumb
Function_224a830: @ 224a830 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_224a83e
	bl      0x2021bd4
.thumb
branch_224a83e: @ 224a83e :thumb
	add     r4, #0x10
	mov     r0, r4
	bl      Function_22475a0
	pop     {r4,pc}
@ 0x224a848

.thumb
Function_224a848: @ 224a848 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	bx      lr
@ 0x224a84e


.align 2, 0


.thumb
Function_224a850: @ 224a850 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_224a862
	bl      0x200da58
	mov     r0, #0x0
	str     r0, [r4, #0x4]
.thumb
branch_224a862: @ 224a862 :thumb
	pop     {r4,pc}
@ 0x224a864

.thumb
Function_224a864: @ 224a864 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	str     r0, [r4, #0x0]
	ldr     r1, [r0, #0x2c]
	ldr     r2, [pc, #0x94] @ 0x224a904, (=0xffffd870)
	str     r1, [r4, #0xc]
	ldr     r0, [r0, #0x28]
	ldr     r1, [pc, #0x90] @ 0x224a908, (=0x3d6c00)
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	str     r1, [r4, #0x14]
	ldr     r1, [pc, #0x8c] @ 0x224a90c, (=0xffe44000)
	str     r1, [r4, #0x18]
	mov     r1, r4
	add     r1, #0x78
	strh    r2, [r1, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0x84] @ 0x224a910, (=0xfffff550)
	add     r1, #0x7a
	strh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x80] @ 0x224a914, (=0xfffef2c6)
	str     r1, [r4, #0x3c]
	ldr     r1, [pc, #0x80] @ 0x224a918, (=0x936d)
	str     r1, [r4, #0x40]
	str     r0, [r4, #0x6c]
	str     r0, [r4, #0x70]
	mov     r1, #0x2
	str     r0, [r4, #0x74]
	lsl     r1, r1, #12
	strh    r1, [r4, #0x34]
	ldr     r1, [pc, #0x74] @ 0x224a91c, (=0xffffe000)
	strh    r1, [r4, #0x36]
	strh    r0, [r4, #0x38]
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x34
	bl      Function_2247990
	mov     r3, #0x2
	lsl     r3, r3, #8
	mov     r1, #0x4a
	mov     r2, #0x63
	str     r3, [r4, #0x5c]
	lsl     r0, r3, #2
	str     r0, [r4, #0x44]
	str     r0, [r4, #0x48]
	mov     r0, #0x0
	str     r0, [r4, #0x68]
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r4
	lsl     r1, r1, #10
	lsl     r2, r2, #10
	lsl     r3, r3, #3
	bl      Function_224a934
	mov     r0, r4
	bl      Function_224a978
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x28
	bl      Function_2247968
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x34
	bl      Function_2247978
	ldr     r0, [pc, #0x2c] @ 0x224a920, (=0x224aa71)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r4, #0x4]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224a902


.align 2


.word 0xffffd870 @ 0x224a904
.word 0x3d6c00 @ 0x224a908
.word 0xffe44000 @ 0x224a90c
.word 0xfffff550 @ 0x224a910
.word 0xfffef2c6 @ 0x224a914
.word 0x936d @ 0x224a918
.word 0xffffe000 @ 0x224a91c
.word 0x224aa71 @ 0x224a920
.thumb
Function_224a924: @ 224a924 :thumb
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_224a92e
	mov     r0, #0x1
	bx      lr
@ 0x224a92e

.thumb
branch_224a92e: @ 224a92e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224a932


.align 2, 0


.thumb
Function_224a934: @ 224a934 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [sp, #0x18]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_224a974
	ldr     r0, [r5, #0x44]
	ldr     r1, [sp, #0x0]
	sub     r0, r4, r0
	blx     _s32_div_f
	str     r0, [r5, #0x4c]
	ldr     r0, [r5, #0x48]
	ldr     r1, [sp, #0x0]
	sub     r0, r6, r0
	blx     _s32_div_f
	str     r0, [r5, #0x50]
	ldr     r0, [r5, #0x5c]
	ldr     r1, [sp, #0x0]
	sub     r0, r7, r0
	blx     _s32_div_f
	str     r0, [r5, #0x60]
	str     r4, [r5, #0x54]
	str     r6, [r5, #0x58]
	ldr     r0, [sp, #0x18]
	str     r7, [r5, #0x64]
	str     r0, [r5, #0x68]
.thumb
branch_224a974: @ 224a974 :thumb
	pop     {r3-r7,pc}
@ 0x224a976


.align 2, 0


.thumb
Function_224a978: @ 224a978 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xec] @ 0x224aa6c, (=0x224c2c0)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224aa5a
	mov     r0, r5
	add     r0, #0x78
	ldrh    r0, [r0, #0x0]
	mov     r1, #0xb6
	blx     _s32_div_f
	mov     r4, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	cmp     r4, r0
	blt     branch_224a99c
	sub     r4, r4, r0
.thumb
branch_224a99c: @ 224a99c :thumb
	mov     r0, #0x78
	ldsh    r1, [r5, r0]
	mov     r0, #0x7a
	ldsh    r0, [r5, r0]
	sub     r1, r1, r0
	mov     r0, r5
	add     r0, #0x78
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x68]
	cmp     r0, #0x0
	beq     branch_224a9e4
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x68]
	beq     branch_224a9d0
	ldr     r1, [r5, #0x44]
	ldr     r0, [r5, #0x4c]
	add     r0, r1, r0
	str     r0, [r5, #0x44]
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x50]
	add     r0, r1, r0
	str     r0, [r5, #0x48]
	ldr     r1, [r5, #0x5c]
	ldr     r0, [r5, #0x60]
	add     r0, r1, r0
	b       branch_224a9da
@ 0x224a9d0

.thumb
branch_224a9d0: @ 224a9d0 :thumb
	ldr     r0, [r5, #0x54]
	str     r0, [r5, #0x44]
	ldr     r0, [r5, #0x58]
	str     r0, [r5, #0x48]
	ldr     r0, [r5, #0x64]
.thumb
branch_224a9da: @ 224a9da :thumb
	str     r0, [r5, #0x5c]
	ldr     r0, [r5, #0xc]
	ldr     r1, [r5, #0x5c]
	bl      Function_22479d4
.thumb
branch_224a9e4: @ 224a9e4 :thumb
	lsl     r0, r4, #16
	ldr     r6, [r5, #0x44]
	lsr     r0, r0, #16
	bl      0x201d1d4
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x1c]
	lsl     r0, r4, #16
	ldr     r6, [r5, #0x48]
	lsr     r0, r0, #16
	bl      0x201d15c
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x20]
	mov     r1, r5
	str     r3, [r5, #0x24]
	mov     r0, #0x34
	ldsh    r2, [r5, r0]
	mov     r0, #0x3
	lsl     r0, r0, #8
	sub     r0, r2, r0
	strh    r0, [r5, #0x34]
	ldr     r0, [r5, #0xc]
	add     r1, #0x34
	bl      Function_2247990
	mov     r0, r5
	mov     r1, r5
	add     r5, #0x28
	add     r0, #0x1c
	add     r1, #0x10
	mov     r2, r5
	blx     0x20bd17c
	pop     {r4-r6,pc}
@ 0x224aa5a

.thumb
branch_224aa5a: @ 224aa5a :thumb
	mov     r2, r5
	add     r2, #0x10
	ldmia   r2!, {r0,r1}
	add     r5, #0x28
	stmia   r5!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x224aa6a


.align 2


.word 0x224c2c0 @ 0x224aa6c
.thumb
Function_224aa70: @ 224aa70 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x74]
	cmp     r1, #0x46
	bge     branch_224aa7e
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x74]
.thumb
branch_224aa7e: @ 224aa7e :thumb
	ldr     r1, [r4, #0x6c]
	cmp     r1, #0x3
	bhi     branch_224ab44
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224aa90

Jumppoints_224aa90:
.hword branch_224aa98 - Jumppoints_224aa90 - 2
.hword branch_224aabe - Jumppoints_224aa90 - 2
.hword branch_224aaf8 - Jumppoints_224aa90 - 2
.hword branch_224ab32 - Jumppoints_224aa90 - 2
.thumb
branch_224aa98: @ 224aa98 :thumb
	mov     r0, r4
	bl      Function_224a978
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x28
	bl      Function_2247968
	ldr     r0, [r4, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x74]
	cmp     r0, #0xc
	blt     branch_224ab44
	mov     r0, #0x0
	str     r0, [r4, #0x74]
	ldr     r0, [r4, #0x6c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x6c]
	pop     {r4,pc}
@ 0x224aabe

.thumb
branch_224aabe: @ 224aabe :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_22479dc
	cmp     r0, #0x0
	bne     branch_224aad6
	ldr     r0, [r4, #0x0]
	bl      Function_224ab48
	ldr     r0, [r4, #0x6c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x6c]
	pop     {r4,pc}
@ 0x224aad6

.thumb
branch_224aad6: @ 224aad6 :thumb
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x3c]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x40]
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_224a978
	ldr     r0, [r4, #0xc]
	add     r4, #0x28
	mov     r1, r4
	bl      Function_2247968
	pop     {r4,pc}
@ 0x224aaf8

.thumb
branch_224aaf8: @ 224aaf8 :thumb
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x3c]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x40]
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_224a978
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x28
	bl      Function_2247968
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x46
	blt     branch_224ab44
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_22479a8
	mov     r0, #0x0
	str     r0, [r4, #0x70]
	ldr     r0, [r4, #0x6c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x6c]
	pop     {r4,pc}
@ 0x224ab32

.thumb
branch_224ab32: @ 224ab32 :thumb
	ldr     r1, [r4, #0x70]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x70]
	cmp     r1, #0x8
	ble     branch_224ab44
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	bl      0x200da58
.thumb
branch_224ab44: @ 224ab44 :thumb
	pop     {r4,pc}
@ 0x224ab46


.align 2, 0


.thumb
Function_224ab48: @ 224ab48 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0xc]
	bx      lr
@ 0x224ab4e


.align 2, 0


.thumb
Function_224ab50: @ 224ab50 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_224ab6e
	blx     0x20bfab8
	ldr     r0, [r4, #0x28]
	bl      Function_2247770
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
.thumb
branch_224ab6e: @ 224ab6e :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_224abb0
	ldr     r1, [pc, #0x3c] @ 0x224abb4, (=0xeeb0)
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	mov     r1, #0x3
	mov     r3, r1
	ldr     r0, [r4, #0x24]
	mov     r2, r1
	add     r3, #0xfd
	bl      0x2019184
	ldr     r0, [r4, #0x24]
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      0x2019184
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x0
	bl      Function_2247ac0
	ldr     r2, [pc, #0x14] @ 0x224abb8, (=0x4000304)
	ldr     r0, [pc, #0x14] @ 0x224abbc, (=0xffff7fff)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
.thumb
branch_224abb0: @ 224abb0 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x224abb4

.word 0xeeb0 @ 0x224abb4
.word 0x4000304 @ 0x224abb8
.word 0xffff7fff @ 0x224abbc
.thumb
Function_224abc0: @ 224abc0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3a
	mov     r1, #0x3c
	bl      0x2018144
	mov     r4, r0
	beq     branch_224abee
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2247628
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x30]
	str     r0, [r4, #0x34]
	str     r0, [r4, #0x38]
.thumb
branch_224abee: @ 224abee :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x224abf2


.align 2, 0


.thumb
Function_224abf4: @ 224abf4 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_224ac28
	bl      Function_224b050
	mov     r0, r4
	bl      Function_224b194
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_224ac0e
	bl      Function_224b308
.thumb
branch_224ac0e: @ 224ac0e :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_224ac18
	bl      Function_224b258
.thumb
branch_224ac18: @ 224ac18 :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_224ac22
	bl      Function_224b3bc
.thumb
branch_224ac22: @ 224ac22 :thumb
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_224ac28: @ 224ac28 :thumb
	pop     {r4,pc}
@ 0x224ac2a


.align 2, 0


.thumb
Function_224ac2c: @ 224ac2c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	mov     r5, r0
	cmp     r2, #0x3
	bcs     branch_224ac5a
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x24] @ 0x224ac60, (=0x224c190)
	add     r1, r5, #0x4
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_224ac50
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_224ac50: @ 224ac50 :thumb
	mov     r0, r5
	bl      Function_224ac64
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224ac5a

.thumb
branch_224ac5a: @ 224ac5a :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224ac5e


.align 2


.word 0x224c190 @ 0x224ac60
.thumb
Function_224ac64: @ 224ac64 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_224ac96
	mov     r0, #0x2a
	ldsh    r1, [r4, r0]
	mov     r0, #0x1
	lsl     r0, r0, #12
	add     r0, r1, r0
	strh    r0, [r4, #0x2a]
	mov     r1, r4
	ldr     r0, [r4, #0x24]
	add     r1, #0x28
	bl      Function_2247990
	blx     0x20bfab8
	ldr     r0, [r4, #0x20]
	bl      Function_2247770
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
.thumb
branch_224ac96: @ 224ac96 :thumb
	pop     {r4,pc}
@ 0x224ac98

.thumb
Function_224ac98: @ 224ac98 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_224ae1c
	mov     r0, r4
	bl      Function_224b084
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0xc] @ 0x224acc4, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224acc4

.word 0x7fff @ 0x224acc4
.thumb
Function_224acc8: @ 224acc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x6
	bhi     branch_224ad92
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x224ace0

Jumppoints_224ace0:
.hword branch_224acee - Jumppoints_224ace0 - 2
.hword branch_224ad0c - Jumppoints_224ace0 - 2
.hword branch_224ad26 - Jumppoints_224ace0 - 2
.hword branch_224ad38 - Jumppoints_224ace0 - 2
.hword branch_224ad50 - Jumppoints_224ace0 - 2
.hword branch_224ad74 - Jumppoints_224ace0 - 2
.hword branch_224ad88 - Jumppoints_224ace0 - 2
.thumb
branch_224acee: @ 224acee :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224ad92
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, r4
	add     r4, #0x30
	mov     r1, r4
	bl      Function_224b274
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224ad92
@ 0x224ad0c

.thumb
branch_224ad0c: @ 224ad0c :thumb
	ldr     r1, [r4, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x8]
	cmp     r1, #0x8
	ble     branch_224ad92
	add     r4, #0x34
	mov     r1, r4
	bl      Function_224b1a8
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224ad92
@ 0x224ad26

.thumb
branch_224ad26: @ 224ad26 :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	bne     branch_224ad92
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	bne     branch_224ad92
	add     r0, r1, #0x1
	str     r0, [r5, #0x0]
	b       branch_224ad92
@ 0x224ad38

.thumb
branch_224ad38: @ 224ad38 :thumb
	mov     r1, #0x0
	add     r0, #0x14
	mvn     r1, r1
	bl      Function_2246f30
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224ad92
@ 0x224ad50

.thumb
branch_224ad50: @ 224ad50 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x1e
	ble     branch_224ad92
	mov     r0, r4
	add     r0, #0x38
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1f
	mov     r2, #0x0
	mov     r3, #0x28
	bl      Function_224b324
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224ad92
@ 0x224ad74

.thumb
branch_224ad74: @ 224ad74 :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	bne     branch_224ad92
	ldr     r0, [r4, #0x10]
	bl      Function_2247004
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224ad92
@ 0x224ad88

.thumb
branch_224ad88: @ 224ad88 :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_224ad92
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224ad92

.thumb
branch_224ad92: @ 224ad92 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224ad96


.align 2, 0


.thumb
Function_224ad98: @ 224ad98 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224adb0
	cmp     r0, #0x1
	beq     branch_224add8
	cmp     r0, #0x2
	beq     branch_224ae02
	b       branch_224ae16
@ 0x224adb0

.thumb
branch_224adb0: @ 224adb0 :thumb
	mov     r0, #0x4a
	lsl     r0, r0, #2
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	str     r3, [sp, #0x4]
	add     r0, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	lsl     r1, r3, #12
	lsl     r2, r3, #10
	bl      Function_22472c4
	str     r0, [r5, #0x18]
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224ae16
@ 0x224add8

.thumb
branch_224add8: @ 224add8 :thumb
	ldr     r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	cmp     r0, #0xd
	ble     branch_224ae16
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224ae16
@ 0x224ae02

.thumb
branch_224ae02: @ 224ae02 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224ae16
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_224ae16
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224ae16

.thumb
branch_224ae16: @ 224ae16 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224ae1c

.thumb
Function_224ae1c: @ 224ae1c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0x210] @ 0x224b034, (=0x224c1f4)
	bl      0x201fe94
	ldr     r2, [pc, #0x20c] @ 0x224b038, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x208] @ 0x224b03c, (=0x224c19c)
	bl      0x2018368
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x204] @ 0x224b040, (=0x224c1bc)
	mov     r1, #0x2
	mov     r3, #0x1
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x1f8] @ 0x224b040, (=0x224c1bc)
	mov     r1, #0x6
	mov     r3, #0x1
	bl      0x20183c4
	blx     0x20c3d98
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x1e8] @ 0x224b044, (=0x224c1d8)
	mov     r1, #0x3
	mov     r3, #0x2
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x1dc] @ 0x224b044, (=0x224c1d8)
	mov     r1, #0x7
	mov     r3, #0x2
	bl      0x20183c4
	mov     r0, r5
	blx     0x20c3dac
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	mov     r1, #0x2
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r3, r1
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x2
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r3, #0x2
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r3, #0x6
	bl      0x2006e60
	ldr     r0, [r4, #0x0]
	bl      Function_2247644
	mov     r5, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	ldr     r0, [pc, #0x13c] @ 0x224b048, (=0x224c188)
	lsl     r1, r5, #1
	ldrh    r5, [r0, r1]
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r3, r5
	bl      0x2006e9c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, r5
	bl      0x2006e9c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x5
	mov     r3, #0x3
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x5
	mov     r3, #0x7
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x4
	mov     r3, #0x3
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x5d
	mov     r1, #0x4
	mov     r3, #0x7
	bl      0x2006e60
	mov     r0, #0x3a
	mov     r1, #0x60
	bl      0x2018144
	mov     r5, r0
	beq     branch_224aff2
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, #0x60
	blx     MIi_CpuClear32
	mov     r0, r5
	mov     r1, #0x60
	blx     0x20c2c54
	blx     0x20c096c
	blx     0x20c0bbc
	mov     r1, #0x6
	mov     r0, r5
	lsl     r1, r1, #12
	mov     r2, #0x60
	blx     0x20c0a0c
	mov     r1, #0x6
	mov     r0, r5
	lsl     r1, r1, #12
	mov     r2, #0x60
	blx     0x20c0bd4
	blx     0x20c0a7c
	blx     0x20c0c38
	mov     r0, r5
	bl      0x20181c4
.thumb
branch_224aff2: @ 224aff2 :thumb
	ldr     r0, [r4, #0xc]
	ldr     r3, [pc, #0x54] @ 0x224b04c, (=0xfffffe80)
	mov     r1, #0x2
	mov     r2, #0x3
	bl      0x2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	sub     r3, #0xc3
	bl      0x2019184
	mov     r1, #0x3
	ldr     r0, [r4, #0xc]
	mov     r2, r1
	mov     r3, #0x43
	bl      0x2019184
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224b034

.word 0x224c1f4 @ 0x224b034
.word 0x4000304 @ 0x224b038
.word 0x224c19c @ 0x224b03c
.word 0x224c1bc @ 0x224b040
.word 0x224c1d8 @ 0x224b044
.word 0x224c188 @ 0x224b048
.word 0xfffffe80 @ 0x224b04c
.thumb
Function_224b050: @ 224b050 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_224b060
	ldr     r0, [r4, #0x10]
	bl      Function_2247018
.thumb
branch_224b060: @ 224b060 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7
	bl      0x2019044
	pop     {r4,pc}
@ 0x224b082


.align 2, 0


.thumb
Function_224b084: @ 224b084 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0xd4] @ 0x224b168, (=0x4000060)
	ldr     r1, [pc, #0xd4] @ 0x224b16c, (=0xffffcffd)
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0xc4] @ 0x224b170, (=0xcffb)
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x8
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xa8] @ 0x224b174, (=0x224c1ac)
	blx     0x20bfd2c
	mov     r1, #0x0
	ldr     r0, [pc, #0xa4] @ 0x224b178, (=0x43ff)
	ldr     r2, [pc, #0xa8] @ 0x224b17c, (=0x7fff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0xa0] @ 0x224b180, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0xa0] @ 0x224b184, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	ldr     r1, [pc, #0x84] @ 0x224b188, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	mov     r3, r1
	bl      Function_22476f0
	str     r0, [r4, #0x20]
	mov     r1, #0x0
	mov     r0, #0x23
	str     r1, [sp, #0x0]
	lsl     r0, r0, #14
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x20]
	mov     r2, #0x5d
	mov     r3, #0x1b
	bl      Function_22478b4
	str     r0, [r4, #0x24]
	ldr     r0, [pc, #0x54] @ 0x224b18c, (=0x224c370)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	ldr     r0, [r4, #0x20]
	ldr     r1, [pc, #0x4c] @ 0x224b190, (=0x224c370)
	bl      Function_2247ab0
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	bl      Function_2247ad0
	mov     r1, #0x2
	ldr     r0, [r4, #0x24]
	lsl     r1, r1, #12
	bl      Function_22479d4
	ldr     r0, [r4, #0x24]
	add     r4, #0x28
	mov     r1, r4
	bl      Function_2247978
	add     sp, #0x10
	pop     {r4,pc}
@ 0x224b166


.align 2


.word 0x4000060 @ 0x224b168
.word 0xffffcffd @ 0x224b16c
.word 0xcffb @ 0x224b170
.word 0x224c1ac @ 0x224b174
.word 0x43ff @ 0x224b178
.word 0x7fff @ 0x224b17c
.word 0x4000540 @ 0x224b180
.word 0xbfff0000 @ 0x224b184
.word 0x4000008 @ 0x224b188
.word 0x224c370 @ 0x224b18c
.word 0x224c370 @ 0x224b190
.thumb
Function_224b194: @ 224b194 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_224b1a6
	bl      Function_224773c
	mov     r0, #0x0
	str     r0, [r4, #0x20]
.thumb
branch_224b1a6: @ 224b1a6 :thumb
	pop     {r4,pc}
@ 0x224b1a8

.thumb
Function_224b1a8: @ 224b1a8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x3a
	mov     r1, #0x24
	bl      0x2018144
	mov     r4, r0
	beq     branch_224b1e8
	str     r6, [r4, #0x0]
	ldr     r0, [r6, #0xc]
	mov     r1, r4
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x28] @ 0x224b1ec, (=0xffe80000)
	mov     r2, #0x0
	str     r0, [r4, #0xc]
	asr     r0, r0, #1
	str     r0, [r4, #0x10]
	ldr     r0, [pc, #0x20] @ 0x224b1f0, (=0x9999)
	str     r0, [r4, #0x14]
	mov     r0, #0x28
	str     r0, [r4, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x224b1f4, (=0x224b1f9)
	str     r5, [r4, #0x1c]
	bl      0x200da04
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_224b1e8
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_224b1e8: @ 224b1e8 :thumb
	pop     {r4-r6,pc}
@ 0x224b1ea


.align 2


.word 0xffe80000 @ 0x224b1ec
.word 0x9999 @ 0x224b1f0
.word 0x224b1f9 @ 0x224b1f4
.thumb
Function_224b1f8: @ 224b1f8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_224b238
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	mov     r2, #0x3
	add     r0, r1, r0
	str     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	ldr     r3, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	asr     r3, r3, #12
	bl      0x2019184
	ldr     r3, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      0x2019184
	ldr     r0, [r4, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224b238

.thumb
branch_224b238: @ 224b238 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      0x2019184
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0xc0
	bl      0x2019184
	mov     r0, r5
	bl      Function_224b258
	pop     {r3-r5,pc}
@ 0x224b258

.thumb
Function_224b258: @ 224b258 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_224b272
	bl      0x201ced0
	ldr     r1, [r0, #0x1c]
	mov     r2, #0x0
	str     r2, [r1, #0x0]
	bl      Function_22476c8
	mov     r0, r4
	bl      0x200da58
.thumb
branch_224b272: @ 224b272 :thumb
	pop     {r4,pc}
@ 0x224b274

.thumb
Function_224b274: @ 224b274 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x3a
	mov     r1, #0x1c
	bl      0x2018144
	mov     r4, r0
	beq     branch_224b2c0
	str     r5, [r4, #0x0]
	ldr     r0, [r6, #0x24]
	mov     r1, r4
	str     r0, [r4, #0x8]
	add     r1, #0xc
	bl      Function_2247958
	mov     r0, #0x32
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #12
	sub     r1, r0, r1
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	str     r0, [r4, #0x18]
	mov     r0, #0x10
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x18] @ 0x224b2c4, (=0x224b2c9)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_224b2c0
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_224b2c0: @ 224b2c0 :thumb
	pop     {r4-r6,pc}
@ 0x224b2c2


.align 2


.word 0x224b2c9 @ 0x224b2c4
.thumb
Function_224b2c8: @ 224b2c8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_224b2ee
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x18]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x8]
	add     r1, #0xc
	bl      Function_2247968
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x224b2ee

.thumb
branch_224b2ee: @ 224b2ee :thumb
	mov     r0, #0x32
	lsl     r0, r0, #12
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	add     r4, #0xc
	mov     r1, r4
	bl      Function_2247968
	mov     r0, r5
	bl      Function_224b308
	pop     {r3-r5,pc}
@ 0x224b306


.align 2, 0


.thumb
Function_224b308: @ 224b308 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_224b322
	bl      0x201ced0
	ldr     r1, [r0, #0x0]
	mov     r2, #0x0
	str     r2, [r1, #0x0]
	bl      0x20181c4
	mov     r0, r4
	bl      0x200da58
.thumb
branch_224b322: @ 224b322 :thumb
	pop     {r4,pc}
@ 0x224b324

.thumb
Function_224b324: @ 224b324 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r0, #0x3a
	mov     r1, #0x18
	str     r2, [sp, #0x4]
	mov     r7, r3
	ldr     r5, [sp, #0x20]
	bl      0x2018144
	mov     r4, r0
	beq     branch_224b37c
	str     r5, [r4, #0x0]
	lsl     r0, r6, #12
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	lsl     r1, r0, #12
	str     r1, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	sub     r0, r1, r0
	mov     r1, r7
	blx     _s32_div_f
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x10]
	mov     r1, r6
	str     r0, [r4, #0x14]
	bl      Function_22479ac
	ldr     r0, [pc, #0x20] @ 0x224b384, (=0x224b389)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_224b380
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224b37c

.thumb
branch_224b37c: @ 224b37c :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_224b380: @ 224b380 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224b384

.word 0x224b389 @ 0x224b384
.thumb
Function_224b388: @ 224b388 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #0x10]
	cmp     r0, #0x0
	ble     branch_224b3a8
	ldr     r2, [r1, #0x4]
	ldr     r0, [r1, #0x8]
	add     r2, r2, r0
	str     r2, [r1, #0x4]
	ldr     r0, [r1, #0x14]
	asr     r1, r2, #12
	bl      Function_22479ac
	pop     {r4,pc}
@ 0x224b3a8

.thumb
branch_224b3a8: @ 224b3a8 :thumb
	ldr     r0, [r1, #0x14]
	ldr     r1, [r1, #0xc]
	asr     r1, r1, #12
	bl      Function_22479ac
	mov     r0, r4
	bl      Function_224b3bc
	pop     {r4,pc}
@ 0x224b3ba


.align 2, 0


.thumb
Function_224b3bc: @ 224b3bc :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_224b3d6
	bl      0x201ced0
	ldr     r1, [r0, #0x0]
	mov     r2, #0x0
	str     r2, [r1, #0x0]
	bl      0x20181c4
	mov     r0, r4
	bl      0x200da58
.thumb
branch_224b3d6: @ 224b3d6 :thumb
	pop     {r4,pc}
@ 0x224b3d8

.thumb
Function_224b3d8: @ 224b3d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3a
	mov     r1, #0x88
	bl      0x2018144
	mov     r4, r0
	beq     branch_224b434
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2247628
	str     r0, [r4, #0x58]
	mov     r0, #0x3a
	bl      0x200762c
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r1, #0x3a
	bl      0x2023790
	str     r0, [r4, #0x6c]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r1, #0x3a
	bl      0x2023790
	str     r0, [r4, #0x70]
	mov     r1, #0x0
	mov     r0, r4
	str     r1, [r4, #0x7c]
	add     r0, #0x80
	str     r1, [r0, #0x0]
	str     r1, [r4, #0x74]
	mov     r0, #0x93
	mov     r1, #0x3a
	bl      0x2006c24
	mov     r1, r4
	add     r1, #0x84
	str     r0, [r1, #0x0]
.thumb
branch_224b434: @ 224b434 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x224b438

.thumb
Function_224b438: @ 224b438 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_224b498
	bl      Function_224bc10
	mov     r0, r4
	bl      Function_224bb8c
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_224bce8
	ldr     r0, [r4, #0x6c]
	bl      0x20237bc
	ldr     r0, [r4, #0x70]
	bl      0x20237bc
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	beq     branch_224b468
	bl      Function_224773c
.thumb
branch_224b468: @ 224b468 :thumb
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	add     r0, #0x5c
	bl      0x201a8fc
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_224b482
	bl      0x2007dc8
.thumb
branch_224b482: @ 224b482 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      0x2006ca8
	ldr     r0, [r4, #0x10]
	bl      0x2007b6c
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_224b498: @ 224b498 :thumb
	pop     {r4,pc}
@ 0x224b49a


.align 2, 0


.thumb
Function_224b49c: @ 224b49c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	mov     r5, r0
	cmp     r2, #0x4
	bcs     branch_224b4ca
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x24] @ 0x224b4d0, (=0x224c224)
	add     r1, r5, #0x4
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_224b4c0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_224b4c0: @ 224b4c0 :thumb
	mov     r0, r5
	bl      Function_224b4d4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224b4ca

.thumb
branch_224b4ca: @ 224b4ca :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224b4ce


.align 2


.word 0x224c224 @ 0x224b4d0
.thumb
Function_224b4d4: @ 224b4d4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	blx     0x20bfab8
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	blx     0x20b2628
	blx     0x20a73c0
	ldr     r0, [r4, #0x10]
	bl      0x2008a94
	ldr     r0, [r4, #0x10]
	bl      0x2007768
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r0, #0x12
	add     r1, sp, #0x0
	blx     0x20b275c
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	beq     branch_224b512
	bl      Function_2247770
.thumb
branch_224b512: @ 224b512 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224b51e


.align 2, 0


.thumb
Function_224b520: @ 224b520 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	ldr     r0, [pc, #0x1a8] @ 0x224b6d0, (=0x224c27c)
	bl      0x201fe94
	ldr     r2, [pc, #0x1a4] @ 0x224b6d4, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x1a0] @ 0x224b6d8, (=0x224c234)
	bl      0x2018368
	ldr     r0, [r4, #0x58]
	ldr     r2, [pc, #0x19c] @ 0x224b6dc, (=0x224c244)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x58]
	ldr     r2, [pc, #0x194] @ 0x224b6e0, (=0x224c260)
	mov     r1, #0x2
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	ldr     r2, [pc, #0x184] @ 0x224b6e4, (=0x4000008)
	mov     r0, #0x3
	ldrh    r3, [r2, #0x0]
	mov     r1, #0x1
	bic     r3, r0
	mov     r0, r3
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x58]
	mov     r3, r1
	bl      0x20196c0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2019cb8
	ldr     r0, [r4, #0x0]
	bl      Function_2247674
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	mov     r2, #0x6d
	mov     r3, #0x2
	bl      0x200dd0c
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r0, [r4, #0x58]
	add     r1, #0x5c
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0xf
	bl      0x201ada4
	mov     r3, #0x20
	str     r3, [sp, #0x0]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	mov     r1, #0x7
	mov     r2, #0x0
	bl      0x2006e84
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      0x2019448
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x58]
	mov     r0, #0x5d
	mov     r1, #0x16
	mov     r3, #0x2
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x58]
	mov     r0, #0x5d
	mov     r1, #0x15
	mov     r3, #0x2
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3a
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0x17
	mov     r3, r2
	bl      0x2006e84
	mov     r0, r4
	bl      Function_224b9c0
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	mov     r3, r1
	bl      Function_22476f0
	str     r0, [r4, #0x74]
	mov     r0, r4
	bl      Function_224ba8c
	mov     r1, #0x6
	mov     r2, #0x1
	str     r0, [r4, #0x14]
	bl      0x2007dec
	mov     r1, #0x0
	mov     r0, #0x13
	str     r1, [sp, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x1e
	lsl     r0, r0, #14
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r4, #0x74]
	mov     r2, #0x5d
	mov     r3, #0x1b
	bl      Function_22478b4
	ldr     r2, [pc, #0x70] @ 0x224b6e8, (=0x224c21c)
	str     r0, [r4, #0x78]
	ldrh    r3, [r2, #0x0]
	add     r0, sp, #0x14
	add     r1, sp, #0x14
	strh    r3, [r0, #0x0]
	ldrh    r3, [r2, #0x2]
	ldrh    r2, [r2, #0x4]
	strh    r3, [r0, #0x2]
	strh    r2, [r0, #0x4]
	ldr     r0, [r4, #0x78]
	bl      Function_2247990
	mov     r0, r4
	bl      Function_224bae8
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x224b6ec, (=0x4000050)
	mov     r1, #0x1
	mov     r2, #0x4
	mov     r3, #0x10
	blx     0x20bf55c
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x224b6d0

.word 0x224c27c @ 0x224b6d0
.word 0x4000304 @ 0x224b6d4
.word 0x224c234 @ 0x224b6d8
.word 0x224c244 @ 0x224b6dc
.word 0x224c260 @ 0x224b6e0
.word 0x4000008 @ 0x224b6e4
.word 0x224c21c @ 0x224b6e8
.word 0x4000050 @ 0x224b6ec
.thumb
Function_224b6f0: @ 224b6f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	bne     branch_224b716
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224b716
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      0x2021d6c
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224b716

.thumb
branch_224b716: @ 224b716 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224b71a


.align 2, 0


.thumb
Function_224b71c: @ 224b71c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x4
	bhi     branch_224b816
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224b736

Jumppoints_224b736:
.hword branch_224b740 - Jumppoints_224b736 - 2
.hword branch_224b74e - Jumppoints_224b736 - 2
.hword branch_224b77c - Jumppoints_224b736 - 2
.hword branch_224b7a4 - Jumppoints_224b736 - 2
.hword branch_224b806 - Jumppoints_224b736 - 2
.thumb
branch_224b740: @ 224b740 :thumb
	mov     r1, r4
	add     r1, #0x80
	bl      Function_224bc6c
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_224b74e: @ 224b74e :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224b816
	ldr     r0, [r4, #0x44]
	mov     r1, #0x2
	bl      0x2021d6c
	ldr     r0, [r4, #0x44]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [r4, #0x78]
	mov     r1, #0x0
	bl      Function_22479a8
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224b816
@ 0x224b77c

.thumb
branch_224b77c: @ 224b77c :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0xa
	ble     branch_224b816
	ldr     r0, [r4, #0x14]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      0x2007dec
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0x0
	mov     r3, #0xc
	bl      Function_224bbb0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_224b816
@ 0x224b7a4

.thumb
branch_224b7a4: @ 224b7a4 :thumb
	bl      Function_224bc00
	cmp     r0, #0x0
	beq     branch_224b816
	ldr     r0, [r4, #0x0]
	bl      Function_224763c
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      0x2074570
	cmp     r0, #0x0
	bne     branch_224b7fa
	ldr     r0, [r4, #0x0]
	bl      Function_2247660
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	mov     r3, #0x1
	bl      0x2078a4c
	ldr     r0, [r4, #0x0]
	bl      Function_2247660
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2247668
	mov     r2, r0
	add     r1, sp, #0x0
	lsl     r2, r2, #24
	ldrb    r1, [r1, #0x0]
	mov     r0, r6
	lsr     r2, r2, #24
	bl      0x200590c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      0x2007b98
.thumb
branch_224b7fa: @ 224b7fa :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224b816
@ 0x224b806

.thumb
branch_224b806: @ 224b806 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x1e
	ble     branch_224b816
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x224b816

.thumb
branch_224b816: @ 224b816 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224b81c

.thumb
Function_224b81c: @ 224b81c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x5
	bhi     branch_224b858
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224b836

Jumppoints_224b836:
.hword branch_224b842 - Jumppoints_224b836 - 2
.hword branch_224b84e - Jumppoints_224b836 - 2
.hword branch_224b8cc - Jumppoints_224b836 - 2
.hword branch_224b92e - Jumppoints_224b836 - 2
.hword branch_224b94e - Jumppoints_224b836 - 2
.hword branch_224b978 - Jumppoints_224b836 - 2
.thumb
branch_224b842: @ 224b842 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224b986
@ 0x224b84e

.thumb
branch_224b84e: @ 224b84e :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0xa
	bgt     branch_224b85a
.thumb
branch_224b858: @ 224b858 :thumb
	b       branch_224b986
@ 0x224b85a

.thumb
branch_224b85a: @ 224b85a :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2247630
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_224762c
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2247680
	cmp     r0, #0x1
	bne     branch_224b87a
	mov     r1, #0x2
	mov     r6, r1
	b       branch_224b87e
@ 0x224b87a

.thumb
branch_224b87a: @ 224b87a :thumb
	mov     r1, #0x5
	mov     r6, #0x3
.thumb
branch_224b87e: @ 224b87e :thumb
	ldr     r0, [sp, #0xc]
	ldr     r2, [r4, #0x6c]
	bl      0x200b1b8
	ldr     r1, [r4, #0x70]
	ldr     r2, [r4, #0x6c]
	mov     r0, r7
	bl      0x200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [r4, #0x70]
	add     r0, #0x5c
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0x6d
	mov     r2, #0x2
	bl      0x200e010
	mov     r0, r4
	add     r0, #0x5c
	bl      0x201a954
	ldr     r0, [pc, #0xd0] @ 0x224b98c, (=0x484)
	bl      0x2006150
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	str     r6, [r5, #0x0]
	b       branch_224b986
@ 0x224b8cc

.thumb
branch_224b8cc: @ 224b8cc :thumb
	mov     r1, #0x3c
	bl      Function_224b990
	cmp     r0, #0x0
	beq     branch_224b986
	ldr     r0, [r4, #0x0]
	bl      Function_2247630
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_224762c
	mov     r7, r0
	ldr     r2, [r4, #0x6c]
	mov     r0, r6
	mov     r1, #0x3
	bl      0x200b1b8
	ldr     r1, [r4, #0x70]
	ldr     r2, [r4, #0x6c]
	mov     r0, r7
	bl      0x200c388
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0xf
	bl      0x201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [r4, #0x70]
	add     r0, #0x5c
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, r4
	add     r0, #0x5c
	bl      0x201accc
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224b986
@ 0x224b92e

.thumb
branch_224b92e: @ 224b92e :thumb
	mov     r1, #0x3c
	bl      Function_224b990
	cmp     r0, #0x0
	beq     branch_224b986
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224b986
@ 0x224b94e

.thumb
branch_224b94e: @ 224b94e :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0xa
	ble     branch_224b986
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3a
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      0x200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224b986
@ 0x224b978

.thumb
branch_224b978: @ 224b978 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_224b986
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b986

.thumb
branch_224b986: @ 224b986 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224b98c

.word 0x484 @ 0x224b98c
.thumb
Function_224b990: @ 224b990 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_224b9a2
	bl      0x20061e4
	str     r0, [r5, #0xc]
.thumb
branch_224b9a2: @ 224b9a2 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, r4
	bge     branch_224b9b0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224b9b0

.thumb
branch_224b9b0: @ 224b9b0 :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_224b9ba
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224b9ba

.thumb
branch_224b9ba: @ 224b9ba :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224b9be


.align 2, 0


.thumb
Function_224b9c0: @ 224b9c0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0x98] @ 0x224ba68, (=0x4000060)
	ldr     r2, [pc, #0x98] @ 0x224ba6c, (=0xffffcffd)
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r1, r2, #0x2
	and     r3, r1
	mov     r1, #0x10
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r1, [pc, #0x88] @ 0x224ba70, (=0xcffb)
	and     r1, r3
	strh    r1, [r0, #0x0]
	add     r1, r2, #0x2
	ldrh    r3, [r0, #0x0]
	lsr     r2, r2, #17
	and     r3, r1
	mov     r1, #0x8
	orr     r1, r3
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x6c] @ 0x224ba74, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x68] @ 0x224ba78, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	ldr     r3, [pc, #0x58] @ 0x224ba7c, (=0x2100dec)
	mov     r0, #0x1
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	lsl     r0, r0, #14
	mov     r2, r1
	blx     r3
	ldr     r3, [pc, #0x4c] @ 0x224ba80, (=0x2100df4)
	mov     r4, r0
	ldr     r3, [r3, #0x0]
	mov     r0, #0x80
	mov     r1, #0x0
	mov     r2, #0x1
	blx     r3
	ldr     r2, [pc, #0x44] @ 0x224ba84, (=0x7fff0000)
	mov     r6, r0
	and     r2, r4
	lsl     r1, r4, #16
	lsr     r2, r2, #16
	ldr     r0, [r5, #0x10]
	lsr     r1, r1, #13
	lsl     r2, r2, #4
	bl      0x2008a78
	ldr     r2, [pc, #0x34] @ 0x224ba88, (=0xffff0000)
	lsl     r1, r6, #16
	and     r2, r6
	lsr     r2, r2, #16
	ldr     r0, [r5, #0x10]
	lsr     r1, r1, #13
	lsl     r2, r2, #3
	bl      0x2008a84
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224ba68

.word 0x4000060 @ 0x224ba68
.word 0xffffcffd @ 0x224ba6c
.word 0xcffb @ 0x224ba70
.word 0x4000540 @ 0x224ba74
.word 0xbfff0000 @ 0x224ba78
.word 0x2100dec @ 0x224ba7c
.word 0x2100df4 @ 0x224ba80
.word 0x7fff0000 @ 0x224ba84
.word 0xffff0000 @ 0x224ba88
.thumb
Function_224ba8c: @ 224ba8c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_224763c
	mov     r4, r0
	add     r0, sp, #0x10
	mov     r1, r4
	mov     r2, #0x2
	mov     r3, #0x0
	bl      0x2075f0c
	ldr     r0, [r5, #0x0]
	bl      Function_2247660
	mov     r2, r0
	mov     r0, r5
	add     r0, #0x84
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	add     r1, #0x18
	mov     r3, #0x1
	bl      0x20789bc
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x0
	bl      0x20765c4
	mov     r3, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, r5
	str     r1, [sp, #0x4]
	add     r0, #0x18
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	add     r3, #0x50
	add     r1, sp, #0x10
	mov     r2, #0x80
	bl      0x2007c34
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x224bae8

.thumb
Function_224bae8: @ 224bae8 :thumb
	push    {r4,lr}
	add     sp, #-0x70
	mov     r4, r0
	add     r0, #0x48
	mov     r1, #0x5d
	mov     r2, #0x7
	mov     r3, #0x8
	bl      Function_2247568
	add     r0, sp, #0x5c
	blx     0x20a81d0
	add     r0, sp, #0x38
	blx     0x20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x3a
	str     r0, [sp, #0xc]
	add     r0, sp, #0x38
	str     r0, [sp, #0x10]
	mov     r0, #0x5d
	mov     r1, #0x9
	bl      0x2006f00
	mov     r0, #0x3a
	str     r0, [sp, #0x0]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x4]
	mov     r0, #0x5d
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x2006ee0
	mov     r0, #0x2
	mov     r1, r4
	str     r0, [sp, #0x0]
	add     r0, sp, #0x14
	add     r1, #0x48
	add     r2, sp, #0x38
	add     r3, sp, #0x5c
	bl      Function_22475c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	mov     r2, #0x80
	mov     r3, #0x64
	bl      Function_22475e4
	str     r0, [r4, #0x40]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	mov     r2, #0x80
	mov     r3, #0x5a
	bl      Function_22475e4
	str     r0, [r4, #0x44]
	mov     r1, #0x1
	bl      0x2021e80
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      0x2021cac
	add     sp, #0x70
	pop     {r4,pc}
@ 0x224bb8c

.thumb
Function_224bb8c: @ 224bb8c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_224bb94: @ 224bb94 :thumb
	ldr     r0, [r5, #0x40]
	cmp     r0, #0x0
	beq     branch_224bb9e
	bl      0x2021bd4
.thumb
branch_224bb9e: @ 224bb9e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_224bb94
	add     r6, #0x48
	mov     r0, r6
	bl      Function_22475a0
	pop     {r4-r6,pc}
@ 0x224bbb0

.thumb
Function_224bbb0: @ 224bbb0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x3a
	mov     r1, #0x14
	str     r2, [sp, #0x0]
	mov     r7, r3
	bl      0x2018144
	mov     r4, r0
	beq     branch_224bbf6
	str     r5, [r4, #0x0]
	lsl     r0, r6, #12
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	lsl     r1, r0, #12
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	sub     r0, r1, r0
	mov     r1, r7
	blx     _s32_div_f
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x18] @ 0x224bbf8, (=0x224bc31)
	str     r7, [r4, #0x10]
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200da04
	str     r0, [r5, #0x7c]
	ldr     r0, [pc, #0xc] @ 0x224bbfc, (=0x4000050)
	mov     r1, #0x1
	mov     r2, r6
	blx     0x20bf578
.thumb
branch_224bbf6: @ 224bbf6 :thumb
	pop     {r3-r7,pc}
@ 0x224bbf8

.word 0x224bc31 @ 0x224bbf8
.word 0x4000050 @ 0x224bbfc
.thumb
Function_224bc00: @ 224bc00 :thumb
	ldr     r0, [r0, #0x7c]
	cmp     r0, #0x0
	bne     branch_224bc0a
	mov     r0, #0x1
	bx      lr
@ 0x224bc0a

.thumb
branch_224bc0a: @ 224bc0a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224bc0e


.align 2, 0


.thumb
Function_224bc10: @ 224bc10 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x0
	beq     branch_224bc2c
	bl      0x201ced0
	bl      Function_22476c8
	ldr     r0, [r4, #0x7c]
	bl      0x200da58
	mov     r0, #0x0
	str     r0, [r4, #0x7c]
.thumb
branch_224bc2c: @ 224bc2c :thumb
	pop     {r4,pc}
@ 0x224bc2e


.align 2, 0


.thumb
Function_224bc30: @ 224bc30 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x10]
	cmp     r0, #0x0
	ble     branch_224bc52
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	add     r2, r1, r0
	str     r2, [r4, #0x4]
	ldr     r0, [pc, #0x20] @ 0x224bc68, (=0x4000050)
	mov     r1, #0x1
	asr     r2, r2, #12
	blx     0x20bf578
	pop     {r4,pc}
@ 0x224bc52

.thumb
branch_224bc52: @ 224bc52 :thumb
	ldr     r2, [r4, #0x8]
	ldr     r0, [pc, #0x10] @ 0x224bc68, (=0x4000050)
	mov     r1, #0x1
	asr     r2, r2, #12
	blx     0x20bf578
	ldr     r0, [r4, #0x0]
	bl      Function_224bc10
	pop     {r4,pc}
@ 0x224bc66


.align 2


.word 0x4000050 @ 0x224bc68
.thumb
Function_224bc6c: @ 224bc6c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x3a
	mov     r1, #0x44
	bl      0x2018144
	mov     r4, r0
	beq     branch_224bcda
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	str     r6, [r4, #0x0]
	ldr     r0, [r5, #0x74]
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x78]
	str     r0, [r4, #0x14]
	str     r5, [r4, #0x8]
	ldr     r0, [pc, #0x50] @ 0x224bce0, (=0x18cc)
	str     r1, [r4, #0x18]
	str     r0, [r4, #0x1c]
	mov     r0, #0x14
	str     r0, [r4, #0x20]
	mov     r0, #0x1
	lsl     r0, r0, #12
	strh    r0, [r4, #0x3a]
	str     r1, [r4, #0x40]
	ldr     r0, [r4, #0x14]
	bl      Function_22479ac
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_22479a8
	mov     r1, r4
	ldr     r0, [r4, #0x14]
	add     r1, #0x24
	bl      Function_2247958
	mov     r1, r4
	ldr     r0, [r4, #0x14]
	add     r1, #0x34
	bl      Function_2247978
	ldr     r0, [pc, #0x20] @ 0x224bce4, (=0x224bd5d)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_224bcde
	mov     r0, r4
	bl      0x20181c4
	pop     {r4-r6,pc}
@ 0x224bcda

.thumb
branch_224bcda: @ 224bcda :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x0]
.thumb
branch_224bcde: @ 224bcde :thumb
	pop     {r4-r6,pc}
@ 0x224bce0

.word 0x18cc @ 0x224bce0
.word 0x224bd5d @ 0x224bce4
.thumb
Function_224bce8: @ 224bce8 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_224bd02
	bl      0x201ced0
	ldr     r1, [r0, #0x0]
	mov     r2, #0x0
	str     r2, [r1, #0x0]
	bl      0x20181c4
	mov     r0, r4
	bl      0x200da58
.thumb
branch_224bd02: @ 224bd02 :thumb
	pop     {r4,pc}
@ 0x224bd04

.thumb
Function_224bd04: @ 224bd04 :thumb
	mov     r1, r0
	ldr     r0, [r1, #0x40]
	cmp     r0, #0x0
	beq     branch_224bd26
	mov     r0, #0x3a
	ldsh    r2, [r1, r0]
	mov     r0, #0x3c
	ldsh    r0, [r1, r0]
	add     r0, r2, r0
	strh    r0, [r1, #0x3a]
	ldr     r0, [r1, #0x40]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #0x40]
	bne     branch_224bd26
	mov     r0, #0x3e
	ldsh    r0, [r1, r0]
	strh    r0, [r1, #0x3a]
.thumb
branch_224bd26: @ 224bd26 :thumb
	mov     r0, #0x36
	ldsh    r2, [r1, r0]
	mov     r0, #0x3a
	ldsh    r0, [r1, r0]
	ldr     r3, [pc, #0xc] @ 0x224bd3c, (=0x2247991)
	add     r0, r2, r0
	strh    r0, [r1, #0x36]
	ldr     r0, [r1, #0x14]
	add     r1, #0x34
	bx      r3
@ 0x224bd3a


.align 2


.word Function_2247990+1 @ =0x2247991, 0x224bd3c
.thumb
Function_224bd40: @ 224bd40 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	beq     branch_224bd58
	mov     r0, #0x3a
	ldsh    r0, [r5, r0]
	sub     r0, r1, r0
	mov     r1, r4
	blx     _s32_div_f
	strh    r0, [r5, #0x3c]
	str     r4, [r5, #0x40]
.thumb
branch_224bd58: @ 224bd58 :thumb
	pop     {r3-r5,pc}
@ 0x224bd5a


.align 2, 0


.thumb
Function_224bd5c: @ 224bd5c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_224bd04
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x5
	bhi     branch_224be6a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224bd7a

Jumppoints_224bd7a:
.hword branch_224bd86 - Jumppoints_224bd7a - 2
.hword branch_224bdb6 - Jumppoints_224bd7a - 2
.hword branch_224bdce - Jumppoints_224bd7a - 2
.hword branch_224bde4 - Jumppoints_224bd7a - 2
.hword branch_224be2c - Jumppoints_224bd7a - 2
.hword branch_224be5a - Jumppoints_224bd7a - 2
.thumb
branch_224bd86: @ 224bd86 :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_224bda6
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x20]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x20]
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	asr     r1, r1, #12
	bl      Function_22479ac
	pop     {r3-r5,pc}
@ 0x224bda6

.thumb
branch_224bda6: @ 224bda6 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1f
	bl      Function_22479ac
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x224bdb6

.thumb
branch_224bdb6: @ 224bdb6 :thumb
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #6
	mov     r2, #0x1e
	bl      Function_224bd40
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x224bdce

.thumb
branch_224bdce: @ 224bdce :thumb
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0xa
	ble     branch_224be6a
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x224bde4

.thumb
branch_224bde4: @ 224bde4 :thumb
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x30]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	mov     r0, #0x1e
	ldr     r1, [r4, #0x30]
	lsl     r0, r0, #6
	sub     r0, r1, r0
	str     r0, [r4, #0x30]
	mov     r1, r4
	ldr     r0, [r4, #0x14]
	add     r1, #0x24
	bl      Function_2247968
	ldr     r1, [r4, #0x28]
	ldr     r0, [pc, #0x68] @ 0x224be6c, (=0xffff5000)
	cmp     r1, r0
	bge     branch_224be6a
	ldr     r0, [pc, #0x64] @ 0x224be70, (=0x5e6)
	bl      0x2005748
	mov     r0, #0x0
	ldr     r1, [r4, #0x30]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x10
	mov     r3, #0x8
	bl      Function_224bbb0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x224be2c

.thumb
branch_224be2c: @ 224be2c :thumb
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x30]
	add     r1, r1, r0
	mov     r0, #0x13
	lsl     r0, r0, #12
	str     r1, [r4, #0x28]
	cmp     r1, r0
	blt     branch_224be3e
	str     r0, [r4, #0x28]
.thumb
branch_224be3e: @ 224be3e :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x14]
	add     r1, #0x24
	bl      Function_2247968
	mov     r0, #0x13
	ldr     r1, [r4, #0x28]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_224be6a
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x224be5a

.thumb
branch_224be5a: @ 224be5a :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_224bc00
	cmp     r0, #0x0
	beq     branch_224be6a
	mov     r0, r5
	bl      Function_224bce8
.thumb
branch_224be6a: @ 224be6a :thumb
	pop     {r3-r5,pc}
@ 0x224be6c

.word 0xffff5000 @ 0x224be6c
.word 0x5e6 @ 0x224be70



Unknown_224be74: @ 0x224be74
.incbin "./baserom/overlay/overlay_0095.bin", 0x5254, 0x224be8c - 0x224be74


.word Function_2247b6c+1 @ =0x2247b6d, 0x224be8c
.word Function_2247c34+1 @ =0x2247c35, 0x224be90
.word Function_2247bc8+1 @ =0x2247bc9, 0x224be94
.word 0x3 @ 0x224be98
.word Function_2248590+1 @ =0x2248591, 0x224be9c
.word Function_2248650+1 @ =0x2248651, 0x224bea0
.word Function_22485fc+1 @ =0x22485fd, 0x224bea4
.word 0x3 @ 0x224bea8
.word Function_2249740+1 @ =0x2249741, 0x224beac
.word Function_22497a0+1 @ =0x22497a1, 0x224beb0
.word Function_2249770+1 @ =0x2249771, 0x224beb4
.word 0x3 @ 0x224beb8
.word Function_2249f90+1 @ =0x2249f91, 0x224bebc
.word Function_2249fc8+1 @ =0x2249fc9, 0x224bec0
.word Function_2249fb4+1 @ =0x2249fb5, 0x224bec4
.word 0x1 @ 0x224bec8
.word Function_224a390+1 @ =0x224a391, 0x224becc
.word Function_224a3fc+1 @ =0x224a3fd, 0x224bed0
.word Function_224a3cc+1 @ =0x224a3cd, 0x224bed4
.word 0x5 @ 0x224bed8
.word Function_224abc0+1 @ =0x224abc1, 0x224bedc
.word Function_224ac2c+1 @ =0x224ac2d, 0x224bee0
.word Function_224abf4+1 @ =0x224abf5, 0x224bee4
.word 0x5 @ 0x224bee8
.word Function_224b3d8+1 @ =0x224b3d9, 0x224beec
.word Function_224b49c+1 @ =0x224b49d, 0x224bef0
.word Function_224b438+1 @ =0x224b439, 0x224bef4
.word 0x5 @ 0x224bef8
.word 0xf0000000 @ 0x224befc
.word 0x0 @ 0x224bf00
.word Function_2247cb4+1 @ =0x2247cb5, 0x224bf04
.word Function_2247ed8+1 @ =0x2247ed9, 0x224bf08
.word Function_2247f04+1 @ =0x2247f05, 0x224bf0c
.word Function_2248090+1 @ =0x2248091, 0x224bf10

.incbin "./baserom/overlay/overlay_0095.bin", 0x52f4, 0x224c01c - 0x224bf14


.word Function_22497f8+1 @ =0x22497f9, 0x224c01c
.word Function_2249840+1 @ =0x2249841, 0x224c020

.incbin "./baserom/overlay/overlay_0095.bin", 0x5404, 0x224c088 - 0x224c024


.word Function_2249ff8+1 @ =0x2249ff9, 0x224c088
.word Function_224a020+1 @ =0x224a021, 0x224c08c

.incbin "./baserom/overlay/overlay_0095.bin", 0x5470, 0x224c11c - 0x224c090


.word Function_224a42c+1 @ =0x224a42d, 0x224c11c
.word Function_224a464+1 @ =0x224a465, 0x224c120

.incbin "./baserom/overlay/overlay_0095.bin", 0x5504, 0x224c224 - 0x224c124


.word Function_224b520+1 @ =0x224b521, 0x224c224
.word Function_224b6f0+1 @ =0x224b6f1, 0x224c228
.word Function_224b71c+1 @ =0x224b71d, 0x224c22c
.word Function_224b81c+1 @ =0x224b81d, 0x224c230
@ 0x224c234


.incbin "./baserom/overlay/overlay_0095.bin", 0x5614, 0x224c2e0 - 0x224c234


@end 0x224c2e0




