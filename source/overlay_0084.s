
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram84, "ax"


.thumb
Function_223b5a0: @ 223b5a0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x194] @ 0x223b758, (=0xffffe0ff)
	ldr     r3, [pc, #0x198] @ 0x223b75c, (=0x4001000)
	and     r2, r1
	str     r2, [r0, #0x0]
	ldr     r2, [r3, #0x0]
	add     r0, #0x50
	and     r1, r2
	str     r1, [r3, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	add     r3, #0x50
	strh    r1, [r3, #0x0]
	mov     r1, #0x6
	mov     r0, #0x3
	lsl     r2, r1, #15
	bl      0x2017fc8
	ldr     r1, [pc, #0x17c] @ 0x223b760, (=0x4a4)
	mov     r0, r5
	mov     r2, #0x6
	bl      0x200681c
	ldr     r2, [pc, #0x170] @ 0x223b760, (=0x4a4)
	mov     r1, #0x0
	mov     r4, r0
	blx     0x20d5124
	mov     r0, r5
	bl      0x2006840
	mov     r1, r4
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_223b9ac
	mov     r0, #0x6
	bl      0x2018340
	str     r0, [r4, #0x0]
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      0x2025f30
	ldr     r1, [pc, #0x148] @ 0x223b764, (=0x425)
	mov     r3, #0x0
	strb    r0, [r4, r1]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x3
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, r4
	bl      Function_223beac
	mov     r0, r4
	bl      Function_223bdb4
	mov     r0, r4
	bl      Function_223c158
	mov     r0, r4
	bl      Function_223be24
	mov     r0, r4
	bl      Function_223c720
	bl      Function_223ba3c
	ldr     r0, [r4, #0x0]
	bl      Function_223ba5c
	mov     r0, r4
	bl      Function_223bc1c
	mov     r0, r4
	bl      Function_223d0bc
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	mov     r0, r4
	bl      Function_223f040
	mov     r0, #0x1
	bl      0x2002b20
	mov     r0, r4
	bl      Function_223f1f8
	mov     r0, r4
	bl      Function_223f25c
	mov     r0, r4
	bl      Function_223f2fc
	mov     r0, r4
	bl      Function_223f438
	mov     r0, r4
	bl      Function_223fa88
	mov     r0, r4
	bl      Function_223f7d4
	mov     r0, r4
	bl      Function_223bfbc
	mov     r0, r4
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	mov     r0, r3
	mov     r1, r3
	add     r0, #0xa
	add     r1, #0x8
	add     r0, r0, r2
	add     r1, r1, r2
	add     r2, r3, r2
	ldrb    r2, [r2, #0xd]
	bl      Function_223c194
	mov     r0, r4
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	mov     r0, r3
	mov     r1, r3
	add     r0, #0xa
	add     r1, #0x8
	add     r0, r0, r2
	add     r1, r1, r2
	add     r2, r3, r2
	ldrb    r2, [r2, #0xd]
	mov     r3, #0x9
	bl      Function_223c1d0
	mov     r0, r4
	bl      Function_22403f4
	mov     r0, r4
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	add     r2, r3, r2
	ldrh    r1, [r2, #0xa]
	ldrh    r2, [r2, #0x8]
	mov     r0, r4
	bl      Function_223c224
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	add     r0, #0xfc
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_223b73a
	mov     r0, r4
	bl      Function_2240328
branch_223b73a: @ 223b73a :thumb
	ldr     r0, [pc, #0x2c] @ 0x223b768, (=0x223ba15)
	mov     r1, r4
	bl      0x2017798
	mov     r1, #0x0
	mov     r0, #0x33
	mov     r2, r1
	bl      0x2004550
	bl      0x20397e4
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223b756

.align 2
.word 0xffffe0ff @ 0x223b758
.word 0x4001000 @ 0x223b75c
.word 0x4a4 @ 0x223b760
.word 0x425 @ 0x223b764
.word 0x223ba15 @ 0x223b768



.thumb
Function_223b76c: @ 223b76c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	bl      0x200682c
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x18
	bhi     branch_223b7c2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223b788

Jumppoints_223b788:
.hword branch_223b7ba - Jumppoints_223b788 - 2
.hword branch_223b7f2 - Jumppoints_223b788 - 2
.hword branch_223b7fa - Jumppoints_223b788 - 2
.hword branch_223b836 - Jumppoints_223b788 - 2
.hword branch_223b844 - Jumppoints_223b788 - 2
.hword branch_223b8e0 - Jumppoints_223b788 - 2
.hword branch_223b8e0 - Jumppoints_223b788 - 2
.hword branch_223b84c - Jumppoints_223b788 - 2
.hword branch_223b854 - Jumppoints_223b788 - 2
.hword branch_223b85c - Jumppoints_223b788 - 2
.hword branch_223b864 - Jumppoints_223b788 - 2
.hword branch_223b86c - Jumppoints_223b788 - 2
.hword branch_223b874 - Jumppoints_223b788 - 2
.hword branch_223b87c - Jumppoints_223b788 - 2
.hword branch_223b884 - Jumppoints_223b788 - 2
.hword branch_223b88c - Jumppoints_223b788 - 2
.hword branch_223b894 - Jumppoints_223b788 - 2
.hword branch_223b89c - Jumppoints_223b788 - 2
.hword branch_223b8a4 - Jumppoints_223b788 - 2
.hword branch_223b8ac - Jumppoints_223b788 - 2
.hword branch_223b8b4 - Jumppoints_223b788 - 2
.hword branch_223b8bc - Jumppoints_223b788 - 2
.hword branch_223b8c4 - Jumppoints_223b788 - 2
.hword branch_223b8cc - Jumppoints_223b788 - 2
.hword branch_223b8d4 - Jumppoints_223b788 - 2
.thumb
branch_223b7ba: @ 223b7ba :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	beq     branch_223b7c4
.thumb
branch_223b7c2: @ 223b7c2 :thumb
	b       branch_223b8e0
@ 0x223b7c4

.thumb
branch_223b7c4: @ 223b7c4 :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_223b7d8
	mov     r0, #0x10
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b7d8

.thumb
branch_223b7d8: @ 223b7d8 :thumb
	cmp     r0, #0x1
	bne     branch_223b7e2
	mov     r0, #0xe
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b7e2

.thumb
branch_223b7e2: @ 223b7e2 :thumb
	cmp     r0, #0x3
	bne     branch_223b7ec
	mov     r0, #0x17
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b7ec

.thumb
branch_223b7ec: @ 223b7ec :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b7f2

.thumb
branch_223b7f2: @ 223b7f2 :thumb
	bl      Function_223c51c
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b7fa

.thumb
branch_223b7fa: @ 223b7fa :thumb
	bl      Function_223d0fc
	mov     r0, r5
	bl      Function_223c920
	cmp     r0, #0x1
	bne     branch_223b8e0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_223b81c
	mov     r0, #0x10
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b81c

.thumb
branch_223b81c: @ 223b81c :thumb
	cmp     r0, #0x1
	bne     branch_223b826
	mov     r0, #0xe
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b826

.thumb
branch_223b826: @ 223b826 :thumb
	cmp     r0, #0x3
	bne     branch_223b830
	mov     r0, #0x17
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b830

.thumb
branch_223b830: @ 223b830 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b836

.thumb
branch_223b836: @ 223b836 :thumb
	bl      Function_223d2f8
	cmp     r0, #0x1
	bne     branch_223b8e0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b844

.thumb
branch_223b844: @ 223b844 :thumb
	bl      Function_223d730
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b84c

.thumb
branch_223b84c: @ 223b84c :thumb
	bl      Function_223df0c
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b854

.thumb
branch_223b854: @ 223b854 :thumb
	bl      Function_223dff8
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b85c

.thumb
branch_223b85c: @ 223b85c :thumb
	bl      Function_223e01c
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b864

.thumb
branch_223b864: @ 223b864 :thumb
	bl      Function_223e158
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b86c

.thumb
branch_223b86c: @ 223b86c :thumb
	bl      Function_223e18c
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b874

.thumb
branch_223b874: @ 223b874 :thumb
	bl      Function_223d8ec
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b87c

.thumb
branch_223b87c: @ 223b87c :thumb
	bl      Function_223da04
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b884

.thumb
branch_223b884: @ 223b884 :thumb
	bl      Function_223e27c
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b88c

.thumb
branch_223b88c: @ 223b88c :thumb
	bl      Function_223e36c
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b894

.thumb
branch_223b894: @ 223b894 :thumb
	bl      Function_223e3bc
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b89c

.thumb
branch_223b89c: @ 223b89c :thumb
	bl      Function_223e588
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8a4

.thumb
branch_223b8a4: @ 223b8a4 :thumb
	bl      Function_223e5c4
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8ac

.thumb
branch_223b8ac: @ 223b8ac :thumb
	bl      Function_223e7a8
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8b4

.thumb
branch_223b8b4: @ 223b8b4 :thumb
	bl      Function_223e7cc
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8bc

.thumb
branch_223b8bc: @ 223b8bc :thumb
	bl      Function_223e920
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8c4

.thumb
branch_223b8c4: @ 223b8c4 :thumb
	bl      Function_223e9b0
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8cc

.thumb
branch_223b8cc: @ 223b8cc :thumb
	bl      Function_223ea18
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8d4

.thumb
branch_223b8d4: @ 223b8d4 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_223b8e0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b8e0

.thumb
branch_223b8e0: @ 223b8e0 :thumb
	mov     r0, r5
	bl      Function_223d014
	mov     r0, r5
	bl      Function_2240e5c
	mov     r0, r5
	bl      Function_2240abc
	add     r5, #0xdc
	ldr     r0, [r5, #0x0]
	bl      0x200c7ec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223b8fe


.align 2, 0


.thumb
Function_223b900: @ 223b900 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	bl      Function_2240a88
	mov     r0, r4
	bl      Function_223c4e0
	mov     r0, r4
	bl      Function_223bf68
	add     r0, r4, #0x4
	bl      Function_223f1dc
	ldr     r0, [r4, #0x0]
	bl      Function_223bbc4
	bl      0x201e530
	bl      0x201dc3c
	mov     r0, r4
	bl      Function_223fb50
	mov     r0, r4
	bl      Function_223f238
	mov     r0, r4
	bl      Function_223f800
	mov     r0, r4
	bl      Function_223c178
	mov     r0, #0xfe
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20237bc
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x200b190
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200b190
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200b190
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x200c560
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	add     r4, #0xd4
	ldr     r0, [r4, #0x0]
	bl      0x2006ca8
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x6
	bl      0x201807c
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b9aa


.align 2, 0


.thumb
Function_223b9ac: @ 223b9ac :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x207d990
	mov     r1, r4
	add     r1, #0xc8
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      LoadTrainerDataAdress
	mov     r1, r4
	add     r1, #0xcc
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2025e44
	add     r4, #0xd0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x223b9e4

.thumb
Function_223b9e4: @ 223b9e4 :thumb
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldr     r3, [pc, #0x4] @ 0x223b9f0, (=0x202d835)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x223b9ee


.align 2


.word 0x202d835 @ 0x223b9f0
.thumb
Function_223b9f4: @ 223b9f4 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_223b9e4
	bl      0x202d9cc
	strb    r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x223ba04

.thumb
Function_223ba04: @ 223ba04 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_223b9e4
	mov     r1, r4
	bl      0x202d9ec
	pop     {r4,pc}
@ 0x223ba14

.thumb
Function_223ba14: @ 223ba14 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      0x201c2b8
	bl      0x201dcac
	bl      0x200c800
	ldr     r3, [pc, #0xc] @ 0x223ba34, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x223ba38, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x223ba32


.align 2


.word 0x27e0000 @ 0x223ba34
.word 0x3ff8 @ 0x223ba38
.thumb
Function_223ba3c: @ 223ba3c :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223ba58, (=0x224100c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223ba46: @ 223ba46 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223ba46
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223ba58

.word 0x224100c @ 0x223ba58
.thumb
Function_223ba5c: @ 223ba5c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xd4
	ldr     r5, [pc, #0x140] @ 0x223bba4, (=0x2240ec0)
	add     r3, sp, #0xc4
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x130] @ 0x223bba8, (=0x2240ee4)
	add     r3, sp, #0xa8
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0x10c] @ 0x223bbac, (=0x2240f00)
	add     r3, sp, #0x8c
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
	bl      0x20183c4
	ldr     r5, [pc, #0xf0] @ 0x223bbb0, (=0x2240f38)
	add     r3, sp, #0x70
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r5, [pc, #0xcc] @ 0x223bbb4, (=0x2240f8c)
	add     r3, sp, #0x54
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
	bl      0x20183c4
	ldr     r5, [pc, #0xb0] @ 0x223bbb8, (=0x2240f1c)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x8c] @ 0x223bbbc, (=0x2240f54)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x70] @ 0x223bbc0, (=0x2240f70)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x1
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x9
	mov     r3, #0x80
	bl      0x201c718
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0xc
	mov     r3, #0x50
	bl      0x201c718
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x6
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6
	bl      0x2019690
	add     sp, #0xd4
	pop     {r4,r5,pc}
@ 0x223bba2


.align 2


.word 0x2240ec0 @ 0x223bba4
.word 0x2240ee4 @ 0x223bba8
.word 0x2240f00 @ 0x223bbac
.word 0x2240f38 @ 0x223bbb0
.word 0x2240f8c @ 0x223bbb4
.word 0x2240f1c @ 0x223bbb8
.word 0x2240f54 @ 0x223bbbc
.word 0x2240f70 @ 0x223bbc0
.thumb
Function_223bbc4: @ 223bbc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x1b
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	mov     r0, #0x6
	mov     r1, r4
	bl      0x2018238
	pop     {r4,pc}
@ 0x223bc1a


.align 2, 0


.thumb
Function_223bc1c: @ 223bc1c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0xd
	mov     r1, #0x6
	bl      0x2006c24
	mov     r1, r4
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0xb
	mov     r3, #0x1
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0xe
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0xd
	mov     r3, #0x3
	bl      0x200710c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc
	mov     r3, r2
	bl      0x2007130
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xd4
	mov     r3, #0x1a
	ldr     r0, [r0, #0x0]
	mov     r1, #0x16
	mov     r2, #0x0
	lsl     r3, r3, #4
	bl      0x2007130
	mov     r1, #0x16
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x6
	bl      0x2002e98
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0xe0] @ 0x223bdac, (=0x3f7)
	mov     r3, #0xe
	bl      0x200daa4
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0xc4] @ 0x223bdb0, (=0x3d9)
	mov     r1, #0x0
	mov     r3, #0xc
	bl      0x200dd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0xf
	mov     r3, #0x5
	bl      0x20070e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x10
	mov     r2, #0x4
	bl      0x2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0x11
	mov     r3, #0x5
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0x20
	mov     r3, #0x7
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0x21
	mov     r3, #0x7
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0x13
	mov     r3, #0x4
	bl      0x20070e8
	mov     r3, #0x40
	str     r3, [sp, #0x0]
	mov     r0, #0x6
	add     r4, #0xd4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x12
	mov     r2, #0x4
	bl      0x2007130
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223bdac

.word 0x3f7 @ 0x223bdac
.word 0x3d9 @ 0x223bdb0
.thumb
Function_223bdb4: @ 223bdb4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0x7
	mov     r3, #0x6
	bl      0x200b144
	mov     r1, #0x45
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x6
	bl      0x200c440
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x6
	bl      0x200b358
	mov     r2, #0x46
	lsl     r2, r2, #2
	str     r0, [r4, r2]
	mov     r0, #0x0
	mov     r1, #0x1a
	add     r2, #0x70
	mov     r3, #0x6
	bl      0x200b144
	mov     r1, #0x47
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r2, [pc, #0x24] @ 0x223be20, (=0x287)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x6
	bl      0x200b144
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x20
	mov     r0, r1
	mov     r1, #0x6
	bl      0x2023790
	mov     r1, #0xfe
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x223be1e


.align 2


.word 0x287 @ 0x223be20
.thumb
Function_223be24: @ 223be24 :thumb
	push    {r4,r5}
	ldr     r2, [pc, #0x30] @ 0x223be58, (=0x424)
	mov     r1, #0x0
	strb    r1, [r0, r2]
	mov     r4, r2
	mov     r3, #0xc
.thumb
branch_223be30: @ 223be30 :thumb
	mov     r2, r0
	add     r2, #0xc4
	ldr     r5, [r2, #0x0]
	mov     r2, r1
	mul     r2, r3
	add     r2, r5, r2
	ldr     r2, [r2, #0x4]
	cmp     r2, #0x0
	beq     branch_223be48
	ldrb    r2, [r0, r4]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r0, r4]
.thumb
branch_223be48: @ 223be48 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, #0x8
	bcc     branch_223be30
	pop     {r4,r5}
	bx      lr
@ 0x223be56


.align 2


.word 0x424 @ 0x223be58
.thumb
Function_223be5c: @ 223be5c :thumb
	push    {r3,r4}
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r4, r0, #0x4
	add     r0, #0x64
	ldrb    r3, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r3
	cmp     r2, #0x0
	ldr     r2, [r4, r0]
	bne     branch_223be7a
	lsl     r0, r1, #2
	ldrh    r0, [r2, r0]
	pop     {r3,r4}
	bx      lr
@ 0x223be7a

.thumb
branch_223be7a: @ 223be7a :thumb
	lsl     r0, r1, #2
	add     r0, r2, r0
	ldrh    r0, [r0, #0x2]
	pop     {r3,r4}
	bx      lr
@ 0x223be84

.thumb
Function_223be84: @ 223be84 :thumb
	mov     r3, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [pc, #0x4] @ 0x223be90, (=0x200b1b9)
	bx      r3
@ 0x223be8e


.align 2


.word 0x200b1b9 @ 0x223be90
.thumb
Function_223be94: @ 223be94 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, r2
	bl      0x207d268
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	bl      0x200b1b8
	pop     {r3-r5,pc}
@ 0x223beac

.thumb
Function_223beac: @ 223beac :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r5, #0x0
	add     r0, #0x64
	strb    r5, [r0, #0x0]
	mov     r0, r7
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r6, r0, #0x4
	ldr     r0, [r0, #0x6c]
	cmp     r0, #0x0
	bne     branch_223beea
	mov     r3, #0x1
	mov     r2, r5
	mov     r1, #0xc
.thumb
branch_223bece: @ 223bece :thumb
	mov     r0, r5
	mul     r0, r1
	add     r4, r6, r0
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_223bf64
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	strh    r3, [r4, #0x4]
	lsr     r5, r0, #16
	strh    r2, [r4, #0x6]
	cmp     r5, #0x8
	bcc     branch_223bece
	pop     {r3-r7,pc}
@ 0x223beea

.thumb
branch_223beea: @ 223beea :thumb
	mov     r0, #0xc
	mul     r0, r5
	add     r4, r6, r0
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_223bf2e
	mov     r0, r7
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r4, #0x8]
	add     r2, sp, #0x0
	ldr     r0, [r0, #0x6c]
	add     r2, #0x1
	add     r3, sp, #0x0
	bl      0x207d9b4
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x0
	bne     branch_223bf18
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x1]
.thumb
branch_223bf18: @ 223bf18 :thumb
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x1]
	strh    r0, [r4, #0x4]
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x0]
	strh    r0, [r4, #0x6]
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x8
	bcc     branch_223beea
.thumb
branch_223bf2e: @ 223bf2e :thumb
	mov     r0, r7
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x6c]
	bl      0x207d9c4
	mov     r1, #0x0
	mov     r3, #0xc
.thumb
branch_223bf3e: @ 223bf3e :thumb
	mov     r2, r1
	mul     r2, r3
	add     r4, r6, r2
	ldr     r2, [r6, r2]
	cmp     r2, #0x0
	beq     branch_223bf64
	ldrb    r2, [r4, #0x8]
	cmp     r0, r2
	bne     branch_223bf5a
	mov     r2, r7
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	add     r2, #0x64
	strb    r1, [r2, #0x0]
.thumb
branch_223bf5a: @ 223bf5a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x8
	bcc     branch_223bf3e
.thumb
branch_223bf64: @ 223bf64 :thumb
	pop     {r3-r7,pc}
@ 0x223bf66


.align 2, 0


.thumb
Function_223bf68: @ 223bf68 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	ldr     r0, [r1, #0x6c]
	cmp     r0, #0x0
	beq     branch_223bfba
	add     r7, r1, #0x4
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_223bf7c: @ 223bf7c :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223bfa4
	mov     r0, r6
	add     r0, #0xc4
	ldrh    r2, [r5, #0x4]
	ldrh    r3, [r5, #0x6]
	ldr     r0, [r0, #0x0]
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldrb    r1, [r5, #0x8]
	ldr     r0, [r0, #0x6c]
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x207d9c8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x8
	bcc     branch_223bf7c
.thumb
branch_223bfa4: @ 223bfa4 :thumb
	add     r6, #0xc4
	ldr     r1, [r6, #0x0]
	ldr     r0, [r1, #0x6c]
	add     r1, #0x64
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mul     r1, r2
	add     r1, r7, r1
	ldrb    r1, [r1, #0x8]
	bl      0x207d9d4
.thumb
branch_223bfba: @ 223bfba :thumb
	pop     {r3-r7,pc}
@ 0x223bfbc

.thumb
Function_223bfbc: @ 223bfbc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r4, r2, r0
	ldrb    r1, [r4, #0x8]
	ldr     r0, [pc, #0x17c] @ 0x223c154, (=0x2241118)
	ldrb    r0, [r0, r1]
	mov     r1, #0x6
	.hword  0x1cc0 @ add r0, r0, #0x3
	bl      0x2013a04
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	sub     r1, #0x4c
	mov     r2, #0x20
	mov     r3, r2
	ldr     r1, [r5, r1]
	sub     r3, #0x23
	bl      0x2013a4c
	ldrb    r3, [r4, #0x8]
	cmp     r3, #0x3
	bne     branch_223c086
	ldr     r0, [pc, #0x154] @ 0x223c154, (=0x2241118)
	mov     r6, #0x0
	ldrb    r0, [r0, r3]
	cmp     r0, #0x0
	bls     branch_223c056
	str     r6, [sp, #0x0]
	mov     r7, r5
.thumb
branch_223c00a: @ 223c00a :thumb
	ldr     r0, [r4, #0x0]
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	ldrh    r2, [r0, r2]
	add     r1, r0, r1
	cmp     r2, #0x0
	beq     branch_223c056
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x0
	beq     branch_223c056
	mov     r0, #0x12
	mov     r1, #0x59
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r7, r1]
	mov     r3, #0x6
	bl      Function_223be94
	mov     r0, #0x16
	mov     r1, #0x59
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r7, r1]
	mov     r2, r6
	bl      0x2013a6c
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r4, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x108] @ 0x223c154, (=0x2241118)
	.hword  0x1c76 @ add r6, r6, #0x1
	ldrb    r0, [r0, r1]
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, r0
	bcc     branch_223c00a
.thumb
branch_223c056: @ 223c056 :thumb
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	sub     r1, #0x4c
	mov     r2, #0x20
	mov     r3, r2
	ldr     r1, [r5, r1]
	sub     r3, #0x22
	bl      0x2013a4c
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	sub     r1, #0x4c
	mov     r2, #0x20
	mov     r3, r2
	ldr     r1, [r5, r1]
	sub     r3, #0x23
	bl      0x2013a4c
	add     r0, r6, #0x3
	add     sp, #0x8
	strb    r0, [r4, #0x9]
	pop     {r3-r7,pc}
@ 0x223c086

.thumb
branch_223c086: @ 223c086 :thumb
	ldr     r0, [pc, #0xcc] @ 0x223c154, (=0x2241118)
	mov     r6, #0x0
	ldrb    r0, [r0, r3]
	cmp     r0, #0x0
	bls     branch_223c0e0
	str     r6, [sp, #0x4]
	mov     r7, r5
.thumb
branch_223c094: @ 223c094 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	add     r0, r2, r0
	ldrh    r2, [r2, r1]
	cmp     r2, #0x0
	beq     branch_223c0e0
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	beq     branch_223c0e0
	mov     r0, #0x47
	mov     r1, #0x59
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r7, r1]
	mov     r3, #0x6
	bl      Function_223be84
	mov     r0, #0x16
	mov     r1, #0x59
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r7, r1]
	mov     r2, r6
	bl      0x2013a6c
	ldr     r0, [sp, #0x4]
	ldrb    r3, [r4, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x7c] @ 0x223c154, (=0x2241118)
	.hword  0x1c76 @ add r6, r6, #0x1
	ldrb    r0, [r0, r3]
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, r0
	bcc     branch_223c094
.thumb
branch_223c0e0: @ 223c0e0 :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	beq     branch_223c138
	cmp     r3, #0x4
	bne     branch_223c108
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	sub     r1, #0x4c
	mov     r2, #0x20
	mov     r3, r2
	ldr     r1, [r5, r1]
	sub     r3, #0x22
	bl      0x2013a4c
	b       branch_223c11c
@ 0x223c108

.thumb
branch_223c108: @ 223c108 :thumb
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	sub     r1, #0x4c
	mov     r2, #0x29
	mov     r3, r2
	ldr     r1, [r5, r1]
	sub     r3, #0x2b
	bl      0x2013a4c
.thumb
branch_223c11c: @ 223c11c :thumb
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	sub     r1, #0x4c
	mov     r2, #0x20
	mov     r3, r2
	ldr     r1, [r5, r1]
	sub     r3, #0x23
	bl      0x2013a4c
	add     r0, r6, #0x3
	add     sp, #0x8
	strb    r0, [r4, #0x9]
	pop     {r3-r7,pc}
@ 0x223c138

.thumb
branch_223c138: @ 223c138 :thumb
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	sub     r1, #0x4c
	mov     r2, #0x20
	mov     r3, r2
	ldr     r1, [r5, r1]
	sub     r3, #0x23
	bl      0x2013a4c
	add     r0, r6, #0x2
	strb    r0, [r4, #0x9]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223c154

.word 0x2241118 @ 0x223c154
.thumb
Function_223c158: @ 223c158 :thumb
	push    {r3-r7,lr}
	mov     r6, #0x59
	mov     r5, r0
	mov     r4, #0x0
	mov     r7, #0x12
	lsl     r6, r6, #2
.thumb
branch_223c164: @ 223c164 :thumb
	mov     r0, r7
	mov     r1, #0x6
	bl      0x2023790
	str     r0, [r5, r6]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xa5
	bcc     branch_223c164
	pop     {r3-r7,pc}
@ 0x223c178

.thumb
Function_223c178: @ 223c178 :thumb
	push    {r4-r6,lr}
	mov     r6, #0x59
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_223c182: @ 223c182 :thumb
	ldr     r0, [r5, r6]
	bl      0x20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xa5
	bcc     branch_223c182
	pop     {r4-r6,pc}
@ 0x223c192


.align 2, 0


.thumb
Function_223c194: @ 223c194 :thumb
	push    {r4,r5}
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	cmp     r2, #0x8
	bls     branch_223c1a4
	mov     r5, #0x7
	b       branch_223c1aa
@ 0x223c1a4

.thumb
branch_223c1a4: @ 223c1a4 :thumb
	.hword  0x1e53 @ sub r3, r2, #0x1
	lsl     r3, r3, #24
	lsr     r5, r3, #24
.thumb
branch_223c1aa: @ 223c1aa :thumb
	ldrh    r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_223c1bc
	.hword  0x1e54 @ sub r4, r2, #0x1
	add     r3, r3, r5
	cmp     r3, r4
	ble     branch_223c1bc
	sub     r3, r4, r5
	strh    r3, [r0, #0x0]
.thumb
branch_223c1bc: @ 223c1bc :thumb
	ldrh    r3, [r0, #0x0]
	ldrh    r0, [r1, #0x0]
	.hword  0x1e52 @ sub r2, r2, #0x1
	add     r0, r3, r0
	cmp     r0, r2
	blt     branch_223c1cc
	sub     r0, r2, r3
	strh    r0, [r1, #0x0]
.thumb
branch_223c1cc: @ 223c1cc :thumb
	pop     {r4,r5}
	bx      lr
@ 0x223c1d0

.thumb
Function_223c1d0: @ 223c1d0 :thumb
	push    {r3-r6}
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	cmp     r2, #0x8
	bls     branch_223c1e0
	mov     r5, #0x7
	b       branch_223c1e6
@ 0x223c1e0

.thumb
branch_223c1e0: @ 223c1e0 :thumb
	.hword  0x1e54 @ sub r4, r2, #0x1
	lsl     r4, r4, #24
	lsr     r5, r4, #24
.thumb
branch_223c1e6: @ 223c1e6 :thumb
	ldrh    r6, [r1, #0x0]
	asr     r4, r3, #1
	add     r3, r4, #0x2
	cmp     r6, r3
	blt     branch_223c21e
	sub     r6, r6, r4
	mov     r3, #0x0
	.hword  0x1eb6 @ sub r6, r6, #0x2
	bmi     branch_223c21e
	.hword  0x1e52 @ sub r2, r2, #0x1
.thumb
branch_223c1fa: @ 223c1fa :thumb
	ldrh    r6, [r0, #0x0]
	add     r6, r6, r5
	cmp     r2, r6
	beq     branch_223c21e
	ldrh    r6, [r1, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #24
	.hword  0x1e76 @ sub r6, r6, #0x1
	strh    r6, [r1, #0x0]
	ldrh    r6, [r0, #0x0]
	lsr     r3, r3, #24
	.hword  0x1c76 @ add r6, r6, #0x1
	strh    r6, [r0, #0x0]
	ldrh    r6, [r1, #0x0]
	sub     r6, r6, r4
	.hword  0x1eb6 @ sub r6, r6, #0x2
	cmp     r3, r6
	ble     branch_223c1fa
.thumb
branch_223c21e: @ 223c21e :thumb
	pop     {r3-r6}
	bx      lr
@ 0x223c222


.align 2, 0


.thumb
Function_223c224: @ 223c224 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	ldr     r6, [pc, #0x7c] @ 0x223c2a8, (=0x2240fa8)
	add     r5, sp, #0x0
	mov     r4, r0
	mov     r3, r1
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x0]
	add     r0, r4, #0x4
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x64
	ldrb    r5, [r0, #0x0]
	mov     r0, #0xc
	mov     r6, r5
	mul     r6, r0
	add     r1, r1, r6
	ldrb    r5, [r1, #0xd]
	add     r1, sp, #0x0
	strh    r5, [r1, #0x10]
	mov     r5, r4
	str     r4, [sp, #0x1c]
	add     r5, #0xc4
	ldr     r5, [r5, #0x0]
	mov     r6, r5
	add     r6, #0x64
	ldrb    r6, [r6, #0x0]
	mul     r0, r6
	add     r0, r5, r0
	ldrb    r0, [r0, #0xc]
	add     r0, #0xfd
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_223c288
	mov     r0, #0x23
	b       branch_223c28a
@ 0x223c288

.thumb
branch_223c288: @ 223c288 :thumb
	mov     r0, #0x0
.thumb
branch_223c28a: @ 223c28a :thumb
	strb    r0, [r1, #0x15]
	mov     r1, r3
	add     r0, sp, #0x0
	mov     r3, #0x6
	bl      0x200112c
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     r0, r4, #0x4
	bl      0x201a9a4
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x223c2a6


.align 2


.word 0x2240fa8 @ 0x223c2a8
.thumb
Function_223c2ac: @ 223c2ac :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x13
	mov     r4, r2
	bl      0x2001504
	mov     r5, r0
	cmp     r4, #0x1
	beq     branch_223c334
	ldr     r0, [pc, #0xdc] @ 0x223c39c, (=0x482)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223c2cc
	cmp     r0, #0x1
	beq     branch_223c2d4
	b       branch_223c2dc
@ 0x223c2cc

.thumb
branch_223c2cc: @ 223c2cc :thumb
	ldr     r0, [pc, #0xd0] @ 0x223c3a0, (=0x6cc)
	bl      0x2005748
	b       branch_223c2e2
@ 0x223c2d4

.thumb
branch_223c2d4: @ 223c2d4 :thumb
	ldr     r0, [pc, #0xcc] @ 0x223c3a4, (=0x6cd)
	bl      0x2005748
	b       branch_223c2e2
@ 0x223c2dc

.thumb
branch_223c2dc: @ 223c2dc :thumb
	ldr     r0, [pc, #0xc8] @ 0x223c3a8, (=0x6ce)
	bl      0x2005748
.thumb
branch_223c2e2: @ 223c2e2 :thumb
	ldr     r0, [pc, #0xb8] @ 0x223c39c, (=0x482)
	mov     r1, #0x3
	ldrb    r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	ldr     r0, [pc, #0xac] @ 0x223c39c, (=0x482)
	strb    r1, [r5, r0]
	add     r0, #0x10
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223c308
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	bl      0x200d3b8
	cmp     r0, #0x0
	bne     branch_223c334
.thumb
branch_223c308: @ 223c308 :thumb
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3cc
	mov     r0, r5
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	mov     r2, r1
	add     r2, #0x64
	ldrb    r3, [r2, #0x0]
	mov     r2, #0xc
	add     r0, #0xe0
	mul     r2, r3
	add     r1, r1, r2
	ldrb    r1, [r1, #0xc]
	ldr     r0, [r0, #0x0]
	add     r1, #0x8
	bl      0x200d364
.thumb
branch_223c334: @ 223c334 :thumb
	ldr     r0, [pc, #0x74] @ 0x223c3ac, (=0x47a)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_223c398
	mov     r0, r5
	add     r0, #0x14
	mov     r1, #0x0
	bl      0x201ada4
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r7, r1
	beq     branch_223c378
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	lsl     r7, r7, #2
	add     r4, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r6, r1
	mul     r6, r0
	ldr     r1, [r4, r6]
	mov     r0, r5
	ldrh    r1, [r1, r7]
	bl      Function_223f528
	ldr     r1, [r4, r6]
	mov     r0, r5
	ldrh    r1, [r1, r7]
	bl      Function_2240ad8
	b       branch_223c388
@ 0x223c378

.thumb
branch_223c378: @ 223c378 :thumb
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_223f528
	ldr     r1, [pc, #0x2c] @ 0x223c3b0, (=0xffff)
	mov     r0, r5
	bl      Function_2240ad8
.thumb
branch_223c388: @ 223c388 :thumb
	ldr     r0, [pc, #0x28] @ 0x223c3b4, (=0x479)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_223c398
	add     r5, #0x14
	mov     r0, r5
	bl      0x201a9a4
.thumb
branch_223c398: @ 223c398 :thumb
	pop     {r3-r7,pc}
@ 0x223c39a


.align 2


.word 0x482 @ 0x223c39c
.word 0x6cc @ 0x223c3a0
.word 0x6cd @ 0x223c3a4
.word 0x6ce @ 0x223c3a8
.word 0x47a @ 0x223c3ac
.word 0xffff @ 0x223c3b0
.word 0x479 @ 0x223c3b4
.thumb
Function_223c3b8: @ 223c3b8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r1, #0x13
	str     r0, [sp, #0x0]
	mov     r7, r2
	bl      0x2001504
	mov     r4, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r6, r2, r0
	ldr     r0, [pc, #0xf8] @ 0x223c4d4, (=0x47a)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_223c3f6
	.hword  0x1c80 @ add r0, r0, #0x2
	ldr     r0, [r4, r0]
	cmp     r0, r5
	bne     branch_223c3f6
	ldr     r0, [sp, #0x0]
	mov     r1, #0x8
	mov     r2, #0x0
	mov     r3, #0x9
	bl      0x200147c
	b       branch_223c402
@ 0x223c3f6

.thumb
branch_223c3f6: @ 223c3f6 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x200147c
.thumb
branch_223c402: @ 223c402 :thumb
	ldrb    r0, [r6, #0x8]
	cmp     r0, #0x7
	bne     branch_223c434
	mov     r0, #0x2
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_223c4d0
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_223c4d0
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      0x207d3fc
	ldr     r2, [r6, #0x0]
	lsl     r1, r5, #2
	ldrh    r1, [r2, r1]
	cmp     r1, r0
	bne     branch_223c4d0
	mov     r0, r4
	mov     r1, r7
	bl      Function_223fa44
	pop     {r3-r7,pc}
@ 0x223c434

.thumb
branch_223c434: @ 223c434 :thumb
	cmp     r0, #0x3
	bne     branch_223c460
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_223c44a
	mov     r0, r4
	mov     r1, r7
	bl      Function_223f9f0
	pop     {r3-r7,pc}
@ 0x223c44a

.thumb
branch_223c44a: @ 223c44a :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r5, r0
	beq     branch_223c4d0
	ldr     r2, [r6, #0x0]
	lsl     r1, r5, #2
	add     r1, r2, r1
	mov     r0, r4
	mov     r2, r7
	bl      Function_223f8d0
	pop     {r3-r7,pc}
@ 0x223c460

.thumb
branch_223c460: @ 223c460 :thumb
	cmp     r0, #0x4
	bne     branch_223c48c
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_223c476
	mov     r0, r4
	mov     r1, r7
	bl      Function_223f9f0
	pop     {r3-r7,pc}
@ 0x223c476

.thumb
branch_223c476: @ 223c476 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r5, r0
	beq     branch_223c4d0
	ldr     r2, [r6, #0x0]
	lsl     r1, r5, #2
	add     r1, r2, r1
	mov     r0, r4
	mov     r2, r7
	bl      Function_223f94c
	pop     {r3-r7,pc}
@ 0x223c48c

.thumb
branch_223c48c: @ 223c48c :thumb
	mov     r0, #0x2
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_223c4d0
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_223c4d0
	ldr     r0, [pc, #0x38] @ 0x223c4d4, (=0x47a)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_223c4be
	.hword  0x1c80 @ add r0, r0, #0x2
	ldr     r0, [r4, r0]
	cmp     r0, r5
	bne     branch_223c4be
	ldr     r2, [r6, #0x0]
	lsl     r1, r5, #2
	add     r1, r2, r1
	ldrh    r1, [r1, #0x2]
	ldr     r3, [pc, #0x24] @ 0x223c4d8, (=0x80900)
	mov     r0, r4
	mov     r2, r7
	bl      Function_223f81c
	pop     {r3-r7,pc}
@ 0x223c4be

.thumb
branch_223c4be: @ 223c4be :thumb
	ldr     r2, [r6, #0x0]
	lsl     r1, r5, #2
	add     r1, r2, r1
	ldrh    r1, [r1, #0x2]
	ldr     r3, [pc, #0x14] @ 0x223c4dc, (=0x10200)
	mov     r0, r4
	mov     r2, r7
	bl      Function_223f81c
.thumb
branch_223c4d0: @ 223c4d0 :thumb
	pop     {r3-r7,pc}
@ 0x223c4d2


.align 2


.word 0x47a @ 0x223c4d4
.word 0x80900 @ 0x223c4d8
.word 0x10200 @ 0x223c4dc
.thumb
Function_223c4e0: @ 223c4e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mov     r1, r3
	mul     r2, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	add     r1, #0xa
	ldr     r0, [r4, r0]
	add     r3, #0x8
	add     r1, r1, r2
	add     r2, r3, r2
	bl      0x2001384
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	mov     r0, #0x57
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x223c51c

.thumb
Function_223c51c: @ 223c51c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223d0fc
	mov     r0, r4
	bl      Function_223ed14
	cmp     r0, #0x1
	bne     branch_223c532
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223c532

.thumb
branch_223c532: @ 223c532 :thumb
	mov     r0, r4
	bl      Function_223c750
	cmp     r0, #0x1
	bne     branch_223c540
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x223c540

.thumb
branch_223c540: @ 223c540 :thumb
	mov     r0, r4
	bl      Function_223cd40
	cmp     r0, #0x1
	bne     branch_223c54e
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x223c54e

.thumb
branch_223c54e: @ 223c54e :thumb
	mov     r0, r4
	bl      Function_223c5b8
	cmp     r0, #0x1
	bne     branch_223c59c
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2240b34
	mov     r0, r4
	add     r0, #0x14
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r4
	add     r0, #0x14
	bl      0x201acf4
	mov     r0, r4
	bl      Function_223d5ac
	mov     r0, r4
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r2, r0
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x3
	bne     branch_223c598
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223d7e8
.thumb
branch_223c598: @ 223c598 :thumb
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x223c59c

.thumb
branch_223c59c: @ 223c59c :thumb
	cmp     r0, #0x2
	bne     branch_223c5aa
	mov     r0, r4
	bl      Function_223d2a0
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c5aa

.thumb
branch_223c5aa: @ 223c5aa :thumb
	cmp     r0, #0x3
	bne     branch_223c5b2
	mov     r0, #0x18
	pop     {r4,pc}
@ 0x223c5b2

.thumb
branch_223c5b2: @ 223c5b2 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223c5b6


.align 2, 0


.thumb
Function_223c5b8: @ 223c5b8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r4, r2, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r4, #0x6
	add     r2, r4, #0x4
	bl      0x20014dc
	ldr     r0, [pc, #0x134] @ 0x223c714, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_223c5fc
	mov     r0, r5
	bl      Function_223d244
	cmp     r0, #0x1
	bne     branch_223c5fc
	ldr     r0, [pc, #0x124] @ 0x223c718, (=0x5dc)
	bl      0x2005748
	add     sp, #0x4
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x223c5fc

.thumb
branch_223c5fc: @ 223c5fc :thumb
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2001288
	mov     r6, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	add     r1, sp, #0x0
	ldr     r0, [r5, r0]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      0x20014dc
	add     r0, sp, #0x0
	ldrh    r2, [r0, #0x0]
	ldrh    r0, [r4, #0x4]
	cmp     r0, r2
	beq     branch_223c638
	.hword  0x1e52 @ sub r2, r2, #0x1
	mov     r0, r5
	lsl     r2, r2, #4
	add     r0, #0xf0
	add     r2, #0x18
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb1
	asr     r2, r2, #16
	bl      0x200d4c4
.thumb
branch_223c638: @ 223c638 :thumb
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x2]
	strh    r1, [r4, #0x6]
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	bne     branch_223c674
	mov     r0, r5
	bl      Function_223d1f4
	cmp     r0, #0x1
	bne     branch_223c674
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0x2]
	ldrh    r1, [r1, #0x0]
	mov     r0, #0x57
	lsl     r0, r0, #2
	add     r1, r2, r1
	lsl     r1, r1, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #16
	bl      0x20014f8
	mov     r6, r0
	mov     r0, #0x49
	mov     r1, #0x1
	lsl     r0, r0, #4
	strb    r1, [r5, r0]
.thumb
branch_223c674: @ 223c674 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_223c6aa
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r6, r0
	bne     branch_223c6e8
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x20014f0
	cmp     r0, #0x1
	bne     branch_223c69a
	mov     r0, r5
	mov     r1, #0x24
	bl      Function_223eb08
	b       branch_223c70e
@ 0x223c69a

.thumb
branch_223c69a: @ 223c69a :thumb
	cmp     r0, #0x2
	bne     branch_223c70e
	mov     r1, #0x23
	mov     r0, r5
	mvn     r1, r1
	bl      Function_223eb08
	b       branch_223c70e
@ 0x223c6aa

.thumb
branch_223c6aa: @ 223c6aa :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bne     branch_223c6be
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x223c6be

.thumb
branch_223c6be: @ 223c6be :thumb
	ldr     r0, [pc, #0x58] @ 0x223c718, (=0x5dc)
	bl      0x2005748
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	add     r0, #0x66
	strh    r1, [r0, #0x0]
	add     r5, #0xc4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x208c120
	add     sp, #0x4
	mov     r0, #0x3
	pop     {r3-r6,pc}
@ 0x223c6e8

.thumb
branch_223c6e8: @ 223c6e8 :thumb
	ldr     r0, [pc, #0x2c] @ 0x223c718, (=0x5dc)
	bl      0x2005748
	ldr     r0, [r4, #0x0]
	lsl     r2, r6, #2
	ldrh    r1, [r0, r2]
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     sp, #0x4
	add     r0, #0x66
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	add     r0, r0, r2
	ldrh    r1, [r0, #0x2]
	ldr     r0, [pc, #0x14] @ 0x223c71c, (=0x48a)
	strh    r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x223c70e

.thumb
branch_223c70e: @ 223c70e :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223c714

.word 0x21bf67c @ 0x223c714
.word 0x5dc @ 0x223c718
.word 0x48a @ 0x223c71c
.thumb
Function_223c720: @ 223c720 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x223c748, (=0x424)
	ldrb    r2, [r4, r0]
	mov     r0, #0xa
	mov     r1, r2
	mul     r1, r0
	mov     r0, #0x5a
	sub     r0, r0, r1
	add     r1, r2, #0x1
	blx     _s32_div_f
	add     r1, r0, #0x6
	ldr     r0, [pc, #0x10] @ 0x223c74c, (=0x427)
	strb    r1, [r4, r0]
	ldrb    r1, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x223c748

.word 0x424 @ 0x223c748
.word 0x427 @ 0x223c74c
.thumb
Function_223c750: @ 223c750 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xdc] @ 0x223c834, (=0x21bf67c)
	ldr     r1, [r0, #0x4c]
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_223c7c4
	ldr     r0, [pc, #0xd8] @ 0x223c838, (=0x424)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223c76a
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223c76a

.thumb
branch_223c76a: @ 223c76a :thumb
	ldr     r0, [pc, #0xd0] @ 0x223c83c, (=0x6ca)
	bl      0x2005748
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223c794
	ldr     r1, [pc, #0xc0] @ 0x223c840, (=0x429)
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r1, #0x4f
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	b       branch_223c7a4
@ 0x223c794

.thumb
branch_223c794: @ 223c794 :thumb
	ldr     r1, [pc, #0xa0] @ 0x223c838, (=0x424)
	ldrb    r0, [r4, r1]
	.hword  0x1e42 @ sub r2, r0, #0x1
	add     r0, r1, #0x5
	strb    r2, [r4, r0]
	ldrb    r0, [r4, r1]
	add     r1, #0x54
	.hword  0x1e40 @ sub r0, r0, #0x1
.thumb
branch_223c7a4: @ 223c7a4 :thumb
	strb    r0, [r4, r1]
	mov     r0, r4
	bl      Function_2240b68
	ldr     r0, [pc, #0x94] @ 0x223c844, (=0x42a)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_223c848
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      0x201c3c0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223c7c4

.thumb
branch_223c7c4: @ 223c7c4 :thumb
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_223c82e
	ldr     r0, [pc, #0x6c] @ 0x223c838, (=0x424)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223c7d6
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223c7d6

.thumb
branch_223c7d6: @ 223c7d6 :thumb
	ldr     r0, [pc, #0x64] @ 0x223c83c, (=0x6ca)
	bl      0x2005748
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x54] @ 0x223c838, (=0x424)
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	add     r2, r0, #0x1
	ldrb    r0, [r4, r1]
	cmp     r2, r0
	bge     branch_223c806
	add     r0, r1, #0x5
	strb    r2, [r4, r0]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r1, #0x54
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r1]
	b       branch_223c810
@ 0x223c806

.thumb
branch_223c806: @ 223c806 :thumb
	add     r0, r1, #0x5
	mov     r2, #0x0
	strb    r2, [r4, r0]
	add     r1, #0x54
	strb    r2, [r4, r1]
.thumb
branch_223c810: @ 223c810 :thumb
	mov     r0, r4
	bl      Function_2240b68
	ldr     r0, [pc, #0x2c] @ 0x223c844, (=0x42a)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_223c848
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      0x201c3c0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223c82e

.thumb
branch_223c82e: @ 223c82e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223c832


.align 2


.word 0x21bf67c @ 0x223c834
.word 0x424 @ 0x223c838
.word 0x6ca @ 0x223c83c
.word 0x429 @ 0x223c840
.word 0x42a @ 0x223c844
.thumb
Function_223c848: @ 223c848 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c89c
	ldr     r0, [pc, #0x10] @ 0x223c864, (=0x42d)
	mov     r1, #0x3
	strb    r1, [r4, r0]
	add     r1, r0, #0x3
	ldrb    r2, [r4, r1]
	mov     r1, #0x80
	.hword  0x1cc0 @ add r0, r0, #0x3
	bic     r2, r1
	strb    r2, [r4, r0]
	pop     {r4,pc}
@ 0x223c864

.word 0x42d @ 0x223c864
.thumb
Function_223c868: @ 223c868 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x28] @ 0x223c894, (=0x42a)
	mov     r4, r0
	ldrb    r2, [r4, r1]
	cmp     r2, #0x2
	beq     branch_223c87a
	bl      Function_223c89c
	b       branch_223c880
@ 0x223c87a

.thumb
branch_223c87a: @ 223c87a :thumb
	mov     r2, #0x2
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
.thumb
branch_223c880: @ 223c880 :thumb
	ldr     r0, [pc, #0x14] @ 0x223c898, (=0x42d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	add     r1, r0, #0x3
	ldrb    r2, [r4, r1]
	mov     r1, #0x80
	.hword  0x1cc0 @ add r0, r0, #0x3
	orr     r1, r2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x223c894

.word 0x42a @ 0x223c894
.word 0x42d @ 0x223c898
.thumb
Function_223c89c: @ 223c89c :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x7c] @ 0x223c91c, (=0x429)
	mov     r4, r0
	add     r1, r4, r1
	mov     r2, #0x0
	strb    r2, [r1, #0x2]
	strb    r2, [r1, #0x3]
	strb    r2, [r1, #0x5]
	ldrb    r3, [r1, #0x7]
	mov     r2, #0xf
	bic     r3, r2
	strb    r3, [r1, #0x7]
	ldrb    r3, [r1, #0x7]
	mov     r2, #0x70
	bic     r3, r2
	strb    r3, [r1, #0x7]
	bl      Function_223c4e0
	add     r0, r4, #0x4
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r4
	add     r0, #0x14
	mov     r1, #0x0
	bl      0x201ada4
	add     r0, r4, #0x4
	bl      0x201a9a4
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r1, r4
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	add     r1, #0x64
	ldrb    r1, [r1, #0x0]
	mov     r2, #0x0
	bl      Function_223f3ac
	mov     r0, r4
	add     r4, #0xc4
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	add     r1, #0x64
	ldrb    r1, [r1, #0x0]
	bl      Function_223cf20
	pop     {r4,pc}
@ 0x223c91c

.word 0x429 @ 0x223c91c
.thumb
Function_223c920: @ 223c920 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x12c] @ 0x223ca54, (=0x429)
	add     r4, r5, r0
	bl      0x202278c
	cmp     r0, #0x0
	bne     branch_223c93c
	ldrb    r1, [r4, #0x7]
	mov     r0, #0x70
	bic     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r4, #0x7]
.thumb
branch_223c93c: @ 223c93c :thumb
	mov     r0, r5
	bl      Function_223ce08
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_223c952
	ldrb    r0, [r4, #0x0]
	cmp     r6, r0
	beq     branch_223c95e
.thumb
branch_223c952: @ 223c952 :thumb
	ldrb    r1, [r4, #0x7]
	mov     r0, #0xf
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strb    r0, [r4, #0x7]
.thumb
branch_223c95e: @ 223c95e :thumb
	mov     r0, r5
	bl      Function_223ca5c
	cmp     r0, #0x0
	bne     branch_223c9f2
	ldrb    r0, [r4, #0x7]
	lsl     r0, r0, #25
	lsr     r0, r0, #29
	cmp     r0, #0x1
	bne     branch_223c9f2
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_223c9f2
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r4, #0x0]
	add     r0, #0x64
	strb    r1, [r0, #0x0]
	lsl     r0, r6, #24
	ldrb    r1, [r4, #0x0]
	lsr     r0, r0, #24
	cmp     r1, r0
	bls     branch_223c9aa
	mov     r2, #0x0
	strb    r2, [r4, #0x1]
	strb    r2, [r4, #0x2]
	ldrb    r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_223cf20
	ldrb    r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_223f3ac
	b       branch_223c9ce
@ 0x223c9aa

.thumb
branch_223c9aa: @ 223c9aa :thumb
	cmp     r1, r0
	bcs     branch_223c9ca
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r2, #0x0
	strb    r2, [r4, #0x2]
	ldrb    r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_223cf20
	ldrb    r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_223f3ac
	b       branch_223c9ce
@ 0x223c9ca

.thumb
branch_223c9ca: @ 223c9ca :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x1]
.thumb
branch_223c9ce: @ 223c9ce :thumb
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	strb    r0, [r4, #0x0]
	ldrb    r2, [r4, #0x7]
	mov     r1, #0xf
	bic     r2, r1
	strb    r2, [r4, #0x7]
	ldrb    r2, [r4, #0x7]
	mov     r1, #0x70
	bic     r2, r1
	strb    r2, [r4, #0x7]
	mov     r1, #0x0
	strb    r1, [r4, #0x4]
	ldr     r1, [pc, #0x6c] @ 0x223ca58, (=0x478)
	strb    r0, [r5, r1]
	mov     r0, r5
	bl      Function_2240b68
.thumb
branch_223c9f2: @ 223c9f2 :thumb
	mov     r0, r5
	bl      Function_223cbd8
	mov     r6, r0
	mov     r0, r5
	bl      Function_223ce60
	mov     r7, r0
	mov     r0, r5
	bl      Function_2240b80
	cmp     r6, #0x1
	bne     branch_223ca4e
	cmp     r7, #0x1
	bne     branch_223ca4e
	ldrb    r0, [r4, #0x7]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_223ca4e
	mov     r0, r5
	bl      Function_2240b50
	cmp     r0, #0x1
	bne     branch_223ca4e
	ldrb    r0, [r4, #0x7]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_223ca40
	ldrb    r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_223cf20
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	bl      0x201c3c0
.thumb
branch_223ca40: @ 223ca40 :thumb
	add     r5, #0xfc
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223ca4e

.thumb
branch_223ca4e: @ 223ca4e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223ca52


.align 2


.word 0x429 @ 0x223ca54
.word 0x478 @ 0x223ca58
.thumb
Function_223ca5c: @ 223ca5c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x160] @ 0x223cbc4, (=0x21bf67c)
	ldr     r1, [pc, #0x164] @ 0x223cbc8, (=0x429)
	ldr     r2, [r0, #0x48]
	mov     r0, #0x20
	add     r4, r5, r1
	tst     r0, r2
	beq     branch_223cb14
	.hword  0x1f48 @ sub r0, r1, #0x5
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_223ca7a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223ca7a

.thumb
branch_223ca7a: @ 223ca7a :thumb
	ldr     r0, [pc, #0x150] @ 0x223cbcc, (=0x6ca)
	bl      0x2005748
	mov     r1, r5
	add     r1, #0xc4
	ldr     r3, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xe0
	ldrb    r2, [r4, #0x0]
	mov     r1, #0xc
	ldr     r0, [r0, #0x0]
	mul     r1, r2
	add     r1, r3, r1
	ldrb    r1, [r1, #0xc]
	bl      0x200d364
	ldrb    r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_223cf20
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	bl      0x201c3c0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r4, #0x0]
	add     r0, #0x64
	strb    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223caca
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x0]
	ldr     r0, [pc, #0x10c] @ 0x223cbd0, (=0x478)
	ldrb    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	b       branch_223cad8
@ 0x223caca

.thumb
branch_223caca: @ 223caca :thumb
	ldr     r0, [pc, #0x108] @ 0x223cbd4, (=0x424)
	ldrb    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, #0x0]
	ldrb    r1, [r5, r0]
	add     r0, #0x54
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_223cad8: @ 223cad8 :thumb
	strb    r1, [r5, r0]
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x1]
	ldrb    r1, [r4, #0x7]
	mov     r0, #0x70
	bic     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r4, #0x7]
	ldrb    r1, [r4, #0x7]
	mov     r0, #0xf
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strb    r0, [r4, #0x7]
	ldrb    r1, [r4, #0x7]
	mov     r0, #0x80
	bic     r1, r0
	strb    r1, [r4, #0x7]
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x3
	beq     branch_223cb0a
	mov     r0, #0x4
	strb    r0, [r4, #0x4]
.thumb
branch_223cb0a: @ 223cb0a :thumb
	mov     r0, r5
	bl      Function_2240b68
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223cb14

.thumb
branch_223cb14: @ 223cb14 :thumb
	mov     r0, #0x10
	tst     r0, r2
	beq     branch_223cbbe
	.hword  0x1f48 @ sub r0, r1, #0x5
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_223cb26
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223cb26

.thumb
branch_223cb26: @ 223cb26 :thumb
	ldr     r0, [pc, #0xa4] @ 0x223cbcc, (=0x6ca)
	bl      0x2005748
	mov     r1, r5
	add     r1, #0xc4
	ldr     r3, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xe0
	ldrb    r2, [r4, #0x0]
	mov     r1, #0xc
	ldr     r0, [r0, #0x0]
	mul     r1, r2
	add     r1, r3, r1
	ldrb    r1, [r1, #0xc]
	bl      0x200d364
	ldrb    r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_223cf20
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	bl      0x201c3c0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r4, #0x0]
	add     r0, #0x64
	strb    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x0]
	ldr     r1, [pc, #0x6c] @ 0x223cbd4, (=0x424)
	add     r2, r0, #0x1
	ldrb    r0, [r5, r1]
	cmp     r2, r0
	bge     branch_223cb7c
	mov     r0, r1
	strb    r2, [r4, #0x0]
	add     r0, #0x54
	ldrb    r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	b       branch_223cb80
@ 0x223cb7c

.thumb
branch_223cb7c: @ 223cb7c :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
.thumb
branch_223cb80: @ 223cb80 :thumb
	add     r1, #0x54
	strb    r0, [r5, r1]
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r2, [r4, #0x7]
	mov     r1, #0x70
	bic     r2, r1
	mov     r1, #0x10
	orr     r1, r2
	strb    r1, [r4, #0x7]
	ldrb    r2, [r4, #0x7]
	mov     r1, #0xf
	bic     r2, r1
	orr     r0, r2
	strb    r0, [r4, #0x7]
	ldrb    r1, [r4, #0x7]
	mov     r0, #0x80
	bic     r1, r0
	strb    r1, [r4, #0x7]
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x3
	beq     branch_223cbb4
	mov     r0, #0x4
	strb    r0, [r4, #0x4]
.thumb
branch_223cbb4: @ 223cbb4 :thumb
	mov     r0, r5
	bl      Function_2240b68
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223cbbe

.thumb
branch_223cbbe: @ 223cbbe :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223cbc2


.align 2


.word 0x21bf67c @ 0x223cbc4
.word 0x429 @ 0x223cbc8
.word 0x6ca @ 0x223cbcc
.word 0x478 @ 0x223cbd0
.word 0x424 @ 0x223cbd4
.thumb
Function_223cbd8: @ 223cbd8 :thumb
	push    {r4-r6,lr}
	ldr     r1, [pc, #0x160] @ 0x223cd3c, (=0x429)
	mov     r5, r0
	add     r4, r5, r1
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_223cbf2
	cmp     r1, #0x1
	beq     branch_223cbfe
	cmp     r1, #0x2
	bne     branch_223cbf0
	b       branch_223cd34
@ 0x223cbf0

.thumb
branch_223cbf0: @ 223cbf0 :thumb
	b       branch_223cd38
@ 0x223cbf2

.thumb
branch_223cbf2: @ 223cbf2 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_223cd38
@ 0x223cbfe

.thumb
branch_223cbfe: @ 223cbfe :thumb
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x8
	bcs     branch_223cc0e
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x3]
	bl      Function_223f2fc
	b       branch_223cd38
@ 0x223cc0e

.thumb
branch_223cc0e: @ 223cc0e :thumb
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223cc42
	mov     r1, r5
	add     r1, #0xc4
	ldr     r3, [r1, #0x0]
	mov     r1, r3
	add     r1, #0x64
	ldrb    r6, [r1, #0x0]
	mov     r1, #0xc
	mov     r2, r6
	mul     r2, r1
	mov     r1, r3
	add     r1, #0xa
	add     r3, #0x8
	add     r1, r1, r2
	add     r2, r3, r2
	bl      0x2001384
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      0x2013a3c
.thumb
branch_223cc42: @ 223cc42 :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r4, #0x0]
	add     r0, #0x64
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	mov     r2, r1
	add     r2, #0x64
	ldrb    r3, [r2, #0x0]
	mov     r2, #0xc
	add     r0, #0xe0
	mul     r2, r3
	add     r1, r1, r2
	ldrb    r1, [r1, #0xc]
	ldr     r0, [r0, #0x0]
	bl      0x200d364
	mov     r0, r5
	bl      Function_223f438
	mov     r1, r5
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	add     r1, #0x64
	ldrb    r1, [r1, #0x0]
	mov     r2, #0x1
	bl      Function_223f3ac
	mov     r0, r5
	bl      Function_223bfbc
	mov     r0, r5
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	mov     r0, r3
	mov     r1, r3
	add     r0, #0xa
	add     r1, #0x8
	add     r0, r0, r2
	add     r1, r1, r2
	add     r2, r3, r2
	ldrb    r2, [r2, #0xd]
	bl      Function_223c194
	mov     r0, r5
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	mov     r0, r3
	mov     r1, r3
	add     r0, #0xa
	add     r1, #0x8
	add     r0, r0, r2
	add     r1, r1, r2
	add     r2, r3, r2
	ldrb    r2, [r2, #0xd]
	mov     r3, #0x9
	bl      Function_223c1d0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x64
	ldrb    r2, [r0, #0x0]
	mov     r0, #0xc
	mov     r3, r2
	mul     r3, r0
	add     r2, r1, r3
	ldrh    r1, [r2, #0xa]
	ldrh    r2, [r2, #0x8]
	mov     r0, r5
	bl      Function_223c224
	mov     r0, r5
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r0, r5
	mov     r3, r2
	add     r3, #0x64
	ldrb    r6, [r3, #0x0]
	mov     r3, #0xc
	add     r0, #0xf0
	mul     r3, r6
	add     r2, r2, r3
	ldrh    r2, [r2, #0x8]
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb1
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #4
	add     r2, #0x18
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      0x200d4c4
	add     r5, #0xf0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223cd34

.thumb
branch_223cd34: @ 223cd34 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223cd38

.thumb
branch_223cd38: @ 223cd38 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223cd3c

.word 0x429 @ 0x223cd3c
.thumb
Function_223cd40: @ 223cd40 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223cdb0
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_223cd54
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223cd54

.thumb
branch_223cd54: @ 223cd54 :thumb
	ldr     r2, [pc, #0x50] @ 0x223cda8, (=0x424)
	ldrb    r1, [r4, r2]
	cmp     r1, #0x1
	bne     branch_223cd60
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223cd60

.thumb
branch_223cd60: @ 223cd60 :thumb
	mov     r1, r4
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	add     r1, #0x64
	ldrb    r3, [r1, #0x0]
	lsl     r1, r0, #24
	lsr     r1, r1, #24
	cmp     r3, r1
	bne     branch_223cd7a
	mov     r3, #0x2
	add     r1, r2, #0x6
	strb    r3, [r4, r1]
	b       branch_223cd8c
@ 0x223cd7a

.thumb
branch_223cd7a: @ 223cd7a :thumb
	cmp     r3, r1
	bls     branch_223cd86
	mov     r3, #0x0
	add     r1, r2, #0x6
	strb    r3, [r4, r1]
	b       branch_223cd8c
@ 0x223cd86

.thumb
branch_223cd86: @ 223cd86 :thumb
	mov     r3, #0x1
	add     r1, r2, #0x6
	strb    r3, [r4, r1]
.thumb
branch_223cd8c: @ 223cd8c :thumb
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	ldr     r0, [pc, #0x18] @ 0x223cdac, (=0x429)
	strb    r1, [r4, r0]
	add     r0, #0x4f
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_2240b68
	mov     r0, r4
	bl      Function_223c868
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223cda8

.word 0x424 @ 0x223cda8
.word 0x429 @ 0x223cdac
.thumb
Function_223cdb0: @ 223cdb0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x223cdf8, (=0x424)
	ldrb    r0, [r5, r0]
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x3c] @ 0x223cdfc, (=0x22410cc)
	ldr     r0, [r0, r1]
	bl      0x2022664
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223cdf2
	ldr     r1, [pc, #0x30] @ 0x223ce00, (=0xfffe)
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x28] @ 0x223ce04, (=0x21bf6bc)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r3, #0x1c]
	ldrh    r3, [r3, #0x1e]
	mov     r1, #0x4
	bl      0x201c784
	cmp     r0, #0x0
	bne     branch_223cdf2
	mov     r0, #0x0
	add     sp, #0x8
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x223cdf2

.thumb
branch_223cdf2: @ 223cdf2 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223cdf8

.word 0x424 @ 0x223cdf8
.word 0x22410cc @ 0x223cdfc
.word 0xfffe @ 0x223ce00
.word 0x21bf6bc @ 0x223ce04
.thumb
Function_223ce08: @ 223ce08 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x223ce50, (=0x424)
	ldrb    r0, [r5, r0]
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x3c] @ 0x223ce54, (=0x22410cc)
	ldr     r0, [r0, r1]
	bl      0x2022644
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223ce4a
	ldr     r1, [pc, #0x30] @ 0x223ce58, (=0xfffe)
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x28] @ 0x223ce5c, (=0x21bf6bc)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r3, #0x1c]
	ldrh    r3, [r3, #0x1e]
	mov     r1, #0x4
	bl      0x201c784
	cmp     r0, #0x0
	bne     branch_223ce4a
	mov     r0, #0x0
	add     sp, #0x8
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x223ce4a

.thumb
branch_223ce4a: @ 223ce4a :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223ce50

.word 0x424 @ 0x223ce50
.word 0x22410cc @ 0x223ce54
.word 0xfffe @ 0x223ce58
.word 0x21bf6bc @ 0x223ce5c
.thumb
Function_223ce60: @ 223ce60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xa8] @ 0x223cf10, (=0x429)
	add     r4, r5, r0
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x4
	bhi     branch_223cf06
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223ce7a

Jumppoints_223ce7a:
.hword branch_223ce84 - Jumppoints_223ce7a - 2
.hword branch_223ce9c - Jumppoints_223ce7a - 2
.hword branch_223ceec - Jumppoints_223ce7a - 2
.hword branch_223cefa - Jumppoints_223ce7a - 2
.hword branch_223cefe - Jumppoints_223ce7a - 2
.thumb
branch_223ce84: @ 223ce84 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x5]
	ldrb    r1, [r4, #0x7]
	mov     r0, #0x80
	orr     r0, r1
	strb    r0, [r4, #0x7]
	ldrb    r0, [r4, #0x0]
	strb    r0, [r4, #0x6]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_223cf06
@ 0x223ce9c

.thumb
branch_223ce9c: @ 223ce9c :thumb
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x3
	bne     branch_223cf06
	ldr     r0, [pc, #0x70] @ 0x223cf14, (=0x5e4)
	bl      0x2005748
	ldrb    r1, [r4, #0x6]
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_223cf20
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	bl      0x201c3c0
	ldrb    r0, [r4, #0x6]
	lsl     r3, r0, #1
	ldr     r0, [pc, #0x58] @ 0x223cf18, (=0x424)
	ldrb    r0, [r5, r0]
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x54] @ 0x223cf1c, (=0x22410c8)
	ldr     r2, [r0, r1]
	mov     r0, r5
	ldrb    r1, [r2, r3]
	.hword  0x1c5b @ add r3, r3, #0x1
	ldrb    r2, [r2, r3]
	lsl     r1, r1, #3
	add     r1, #0x14
	lsl     r2, r2, #3
	add     r2, #0x14
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2240e24
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_223cf06
@ 0x223ceec

.thumb
branch_223ceec: @ 223ceec :thumb
	ldrb    r1, [r4, #0x5]
	cmp     r1, #0x7
	bne     branch_223cf06
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223cefa

.thumb
branch_223cefa: @ 223cefa :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223cefe

.thumb
branch_223cefe: @ 223cefe :thumb
	mov     r0, #0x3
	strb    r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223cf06

.thumb
branch_223cf06: @ 223cf06 :thumb
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223cf10

.word 0x429 @ 0x223cf10
.word 0x5e4 @ 0x223cf14
.word 0x424 @ 0x223cf18
.word 0x22410c8 @ 0x223cf1c
.thumb
Function_223cf20: @ 223cf20 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r5, r1
	mov     r1, #0x4
	mov     r6, r2
	bl      0x2019fe4
	mov     r7, r0
	ldr     r0, [pc, #0x74] @ 0x223cfa8, (=0x424)
	ldrb    r0, [r4, r0]
	add     r4, #0xc4
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x70] @ 0x223cfac, (=0x22410c8)
	ldr     r1, [r0, r1]
	lsl     r0, r5, #1
	add     r2, r1, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0xc
	mul     r0, r5
	add     r0, r1, r0
	ldrb    r3, [r0, #0xc]
	lsl     r0, r6, #2
	add     r1, r6, r0
	lsr     r5, r3, #1
	mov     r0, #0x96
	mul     r0, r5
	mov     r5, #0x1
	and     r5, r3
	mov     r3, #0xf
	mul     r3, r5
	add     r0, r0, r3
	add     r0, #0x1e
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r4, #0x0
	mov     r12, r0
.thumb
branch_223cf6c: @ 223cf6c :thumb
	mov     r0, #0x1e
	mov     r1, r4
	mul     r1, r0
	mov     r0, r12
	mov     r3, #0x0
	add     r5, r0, r1
.thumb
branch_223cf78: @ 223cf78 :thumb
	ldrb    r6, [r2, #0x1]
	mov     r0, #0x2
	add     r1, r3, r5
	lsl     r0, r0, #12
	add     r1, r1, r0
	add     r6, r4, r6
	lsl     r6, r6, #5
	ldrb    r0, [r2, #0x0]
	add     r6, r3, r6
	add     r0, r0, r6
	lsl     r0, r0, #1
	strh    r1, [r7, r0]
	add     r0, r3, #0x1
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	cmp     r3, #0x5
	bcc     branch_223cf78
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x5
	bcc     branch_223cf6c
	pop     {r3-r7,pc}
@ 0x223cfa6


.align 2


.word 0x424 @ 0x223cfa8
.word 0x22410c8 @ 0x223cfac
.thumb
Function_223cfb0: @ 223cfb0 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	bl      0x2019fe4
	mov     r12, r0
	mov     r1, r4
	mov     r0, #0x6
	mul     r1, r0
	ldr     r0, [pc, #0x48] @ 0x223d010, (=0x276)
	mov     r4, #0x3
	add     r0, r1, r0
	lsl     r0, r0, #16
	mov     r6, #0x0
	lsr     r7, r0, #16
	lsl     r4, r4, #12
.thumb
branch_223cfd4: @ 223cfd4 :thumb
	mov     r0, #0x1e
	mul     r0, r6
	add     r2, r7, r0
	add     r0, r6, #0x7
	lsl     r3, r0, #6
	mov     r0, r12
	mov     r1, #0x0
	add     r3, r0, r3
.thumb
branch_223cfe4: @ 223cfe4 :thumb
	add     r0, r1, r2
	lsl     r5, r1, #1
	add     r0, r0, r4
	add     r5, r3, r5
	strh    r0, [r5, #0x1a]
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, #0x6
	bcc     branch_223cfe4
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r6, #0x6
	bcc     branch_223cfd4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x4
	ldr     r0, [r0, #0x0]
	bl      0x201c3c0
	pop     {r3-r7,pc}
@ 0x223d00e


.align 2


.word 0x276 @ 0x223d010
.thumb
Function_223d014: @ 223d014 :thumb
	push    {r4,lr}
	mov     r1, #0x49
	mov     r4, r0
	lsl     r1, r1, #4
	ldrb    r2, [r4, r1]
	cmp     r2, #0x3
	bhi     branch_223d0b0
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223d02e

Jumppoints_223d02e:
.hword branch_223d0b0 - Jumppoints_223d02e - 2
.hword branch_223d036 - Jumppoints_223d02e - 2
.hword branch_223d05e - Jumppoints_223d02e - 2
.hword branch_223d08a - Jumppoints_223d02e - 2
.thumb
branch_223d036: @ 223d036 :thumb
	mov     r1, #0x80
	mov     r2, #0x50
	bl      Function_2240e24
	ldr     r0, [pc, #0x74] @ 0x223d0b4, (=0x5e4)
	bl      0x2005748
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_223cfb0
	ldr     r0, [pc, #0x68] @ 0x223d0b8, (=0x491)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r1, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x223d05e

.thumb
branch_223d05e: @ 223d05e :thumb
	add     r2, r1, #0x1
	ldrb    r2, [r4, r2]
	cmp     r2, #0x3
	bne     branch_223d07e
	mov     r1, #0x1
	bl      Function_223cfb0
	mov     r0, #0x49
	lsl     r0, r0, #4
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x223d07e

.thumb
branch_223d07e: @ 223d07e :thumb
	add     r0, r1, #0x1
	ldrb    r0, [r4, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	pop     {r4,pc}
@ 0x223d08a

.thumb
branch_223d08a: @ 223d08a :thumb
	add     r2, r1, #0x1
	ldrb    r2, [r4, r2]
	cmp     r2, #0x2
	bne     branch_223d0a6
	mov     r1, #0x0
	bl      Function_223cfb0
	mov     r0, #0x49
	mov     r1, #0x0
	lsl     r0, r0, #4
	strb    r1, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x223d0a6

.thumb
branch_223d0a6: @ 223d0a6 :thumb
	add     r0, r1, #0x1
	ldrb    r0, [r4, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
.thumb
branch_223d0b0: @ 223d0b0 :thumb
	pop     {r4,pc}
@ 0x223d0b2


.align 2


.word 0x5e4 @ 0x223d0b4
.word 0x491 @ 0x223d0b8
.thumb
Function_223d0bc: @ 223d0bc :thumb
	push    {r3-r7,lr}
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_223cfb0
	ldr     r0, [pc, #0x30] @ 0x223d0f8, (=0x424)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_223d0ee
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_223d0ee
	ldr     r6, [pc, #0x20] @ 0x223d0f8, (=0x424)
	mov     r7, r4
.thumb
branch_223d0d8: @ 223d0d8 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_223cf20
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldrb    r0, [r5, r6]
	cmp     r4, r0
	bcc     branch_223d0d8
.thumb
branch_223d0ee: @ 223d0ee :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	bl      0x201c3c0
	pop     {r3-r7,pc}
@ 0x223d0f8

.word 0x424 @ 0x223d0f8
.thumb
Function_223d0fc: @ 223d0fc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0xec] @ 0x223d1f0, (=0x481)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_223d1de
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x3
	bhi     branch_223d1d0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223d11e

Jumppoints_223d11e:
.hword branch_223d126 - Jumppoints_223d11e - 2
.hword branch_223d126 - Jumppoints_223d11e - 2
.hword branch_223d17c - Jumppoints_223d11e - 2
.hword branch_223d17c - Jumppoints_223d11e - 2
.thumb
branch_223d126: @ 223d126 :thumb
	mov     r0, r4
	add     r0, #0xe8
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      0x200d550
	add     r3, sp, #0x0
	mov     r1, #0x2
	ldsh    r0, [r3, r1]
	mov     r2, #0x0
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r3, #0x2]
	mov     r0, r4
	add     r0, #0xe8
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r0, #0x0]
	bl      0x200d4c4
	mov     r0, r4
	add     r0, #0xec
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      0x200d550
	add     r3, sp, #0x0
	mov     r1, #0x2
	ldsh    r0, [r3, r1]
	mov     r2, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r3, #0x2]
	mov     r0, r4
	add     r0, #0xec
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r0, #0x0]
	bl      0x200d4c4
	b       branch_223d1d0
@ 0x223d17c

.thumb
branch_223d17c: @ 223d17c :thumb
	mov     r0, r4
	add     r0, #0xe8
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      0x200d550
	add     r3, sp, #0x0
	mov     r1, #0x2
	ldsh    r0, [r3, r1]
	mov     r2, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r3, #0x2]
	mov     r0, r4
	add     r0, #0xe8
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r0, #0x0]
	bl      0x200d4c4
	mov     r0, r4
	add     r0, #0xec
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      0x200d550
	add     r3, sp, #0x0
	mov     r1, #0x2
	ldsh    r0, [r3, r1]
	mov     r2, #0x0
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r3, #0x2]
	mov     r0, r4
	add     r0, #0xec
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r0, #0x0]
	bl      0x200d4c4
.thumb
branch_223d1d0: @ 223d1d0 :thumb
	mov     r1, #0x12
	lsl     r1, r1, #6
	ldrb    r0, [r4, r1]
	add     r2, r0, #0x1
	mov     r0, #0x3
	and     r0, r2
	strb    r0, [r4, r1]
.thumb
branch_223d1de: @ 223d1de :thumb
	ldr     r1, [pc, #0x10] @ 0x223d1f0, (=0x481)
	ldrb    r0, [r4, r1]
	add     r2, r0, #0x1
	mov     r0, #0x3
	and     r0, r2
	strb    r0, [r4, r1]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d1ee


.align 2


.word 0x481 @ 0x223d1f0
.thumb
Function_223d1f4: @ 223d1f4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [pc, #0x3c] @ 0x223d238, (=0x2240e98)
	bl      0x2022664
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d230
	ldr     r1, [pc, #0x30] @ 0x223d23c, (=0xfffe)
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x2c] @ 0x223d240, (=0x21bf6bc)
	ldr     r0, [r4, #0x0]
	ldrh    r2, [r3, #0x1c]
	ldrh    r3, [r3, #0x1e]
	mov     r1, #0x4
	bl      0x201c784
	cmp     r0, #0x0
	beq     branch_223d22a
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d22a

.thumb
branch_223d22a: @ 223d22a :thumb
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d230

.thumb
branch_223d230: @ 223d230 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223d236


.align 2


.word 0x2240e98 @ 0x223d238
.word 0xfffe @ 0x223d23c
.word 0x21bf6bc @ 0x223d240
.thumb
Function_223d244: @ 223d244 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r4, r2, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldrh    r2, [r4, #0x6]
	ldrh    r1, [r4, #0x4]
	ldr     r0, [r5, r0]
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      0x20014f8
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_223d278
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223d278

.thumb
branch_223d278: @ 223d278 :thumb
	add     r5, #0xc4
	ldr     r0, [r5, #0x0]
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223d288
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223d288

.thumb
branch_223d288: @ 223d288 :thumb
	ldrb    r0, [r4, #0x8]
	add     r0, #0xfd
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bls     branch_223d298
	mov     r0, #0x1
	b       branch_223d29a
@ 0x223d298

.thumb
branch_223d298: @ 223d298 :thumb
	mov     r0, #0x0
.thumb
branch_223d29a: @ 223d29a :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x223d2a0

.thumb
Function_223d2a0: @ 223d2a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r3, r2, r0
	ldr     r1, [pc, #0x38] @ 0x223d2f0, (=0x47a)
	mov     r0, #0x1
	strb    r0, [r4, r1]
	ldrh    r2, [r3, #0x6]
	ldrh    r0, [r3, #0x4]
	add     r2, r2, r0
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	mov     r0, #0x57
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r0, r0, #2
	ldrb    r1, [r4, r1]
	ldr     r0, [r4, r0]
	bl      0x20014f8
	ldr     r1, [pc, #0x20] @ 0x223d2f4, (=0x47c)
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_223fe18
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20013ac
	mov     r0, r4
	bl      Function_223d4e8
	pop     {r4,pc}
@ 0x223d2ee


.align 2


.word 0x47a @ 0x223d2f0
.word 0x47c @ 0x223d2f4
.thumb
Function_223d2f8: @ 223d2f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	bl      Function_223ee30
	cmp     r0, #0x1
	bne     branch_223d30c
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x223d30c

.thumb
branch_223d30c: @ 223d30c :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r4, r2, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r4, #0x6
	add     r2, r4, #0x4
	bl      0x20014dc
	mov     r0, r5
	bl      Function_223d1f4
	cmp     r0, #0x1
	bne     branch_223d34e
	ldr     r0, [pc, #0xec] @ 0x223d424, (=0x5dc)
	bl      0x2005748
	mov     r0, r5
	bl      Function_223d42c
	mov     r1, #0x49
	mov     r0, #0x1
	lsl     r1, r1, #4
	add     sp, #0x4
	strb    r0, [r5, r1]
	pop     {r3-r6,pc}
@ 0x223d34e

.thumb
branch_223d34e: @ 223d34e :thumb
	ldr     r0, [pc, #0xd8] @ 0x223d428, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_223d36a
	ldr     r0, [pc, #0xc8] @ 0x223d424, (=0x5dc)
	bl      0x2005748
	mov     r0, r5
	bl      Function_223d42c
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x223d36a

.thumb
branch_223d36a: @ 223d36a :thumb
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2001288
	mov     r6, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	add     r1, sp, #0x0
	ldr     r0, [r5, r0]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      0x20014dc
	add     r0, sp, #0x0
	ldrh    r2, [r0, #0x0]
	ldrh    r0, [r4, #0x4]
	cmp     r0, r2
	beq     branch_223d3a6
	.hword  0x1e52 @ sub r2, r2, #0x1
	mov     r0, r5
	lsl     r2, r2, #4
	add     r0, #0xf4
	add     r2, #0x10
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb1
	asr     r2, r2, #16
	bl      0x200d4c4
.thumb
branch_223d3a6: @ 223d3a6 :thumb
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x2]
	strh    r1, [r4, #0x6]
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x4]
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_223d3e6
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r6, r0
	bne     branch_223d40a
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x20014f0
	cmp     r0, #0x1
	bne     branch_223d3d6
	mov     r0, r5
	mov     r1, #0x24
	bl      Function_223eb08
	b       branch_223d41c
@ 0x223d3d6

.thumb
branch_223d3d6: @ 223d3d6 :thumb
	cmp     r0, #0x2
	bne     branch_223d41c
	mov     r1, #0x23
	mov     r0, r5
	mvn     r1, r1
	bl      Function_223eb08
	b       branch_223d41c
@ 0x223d3e6

.thumb
branch_223d3e6: @ 223d3e6 :thumb
	ldr     r0, [pc, #0x3c] @ 0x223d424, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0x38] @ 0x223d428, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223d3fe
	mov     r0, r5
	bl      Function_223d42c
	b       branch_223d404
@ 0x223d3fe

.thumb
branch_223d3fe: @ 223d3fe :thumb
	mov     r0, r5
	bl      Function_223d484
.thumb
branch_223d404: @ 223d404 :thumb
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x223d40a

.thumb
branch_223d40a: @ 223d40a :thumb
	ldr     r0, [pc, #0x18] @ 0x223d424, (=0x5dc)
	bl      0x2005748
	mov     r0, r5
	bl      Function_223d42c
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x223d41c

.thumb
branch_223d41c: @ 223d41c :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223d422


.align 2


.word 0x5dc @ 0x223d424
.word 0x21bf67c @ 0x223d428
.thumb
Function_223d42c: @ 223d42c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r2, r0
	ldrh    r2, [r0, #0x6]
	ldrh    r1, [r0, #0x4]
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	ldr     r1, [pc, #0x34] @ 0x223d480, (=0x47b)
	ldrb    r1, [r4, r1]
	cmp     r1, r2
	beq     branch_223d478
	.hword  0x1e52 @ sub r2, r2, #0x1
	cmp     r1, r2
	beq     branch_223d478
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      0x207cdec
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	mov     r0, r4
	bl      Function_223bfbc
.thumb
branch_223d478: @ 223d478 :thumb
	mov     r0, r4
	bl      Function_223d484
	pop     {r4,pc}
@ 0x223d480

.word 0x47b @ 0x223d480
.thumb
Function_223d484: @ 223d484 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r4, r2, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r4, #0x6
	add     r2, r4, #0x4
	bl      0x2001384
	mov     r0, #0x57
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x30] @ 0x223d4e0, (=0x47b)
	ldrh    r1, [r4, #0x6]
	ldrb    r2, [r5, r0]
	ldrh    r0, [r4, #0x4]
	add     r1, r1, r0
	cmp     r2, r1
	bge     branch_223d4c0
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x4]
.thumb
branch_223d4c0: @ 223d4c0 :thumb
	ldr     r0, [pc, #0x20] @ 0x223d4e4, (=0x47a)
	mov     r2, #0x0
	strb    r2, [r5, r0]
	add     r1, r0, #0x1
	strb    r2, [r5, r1]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r2, [r5, r0]
	ldrh    r1, [r4, #0x6]
	ldrh    r2, [r4, #0x4]
	mov     r0, r5
	bl      Function_223c224
	mov     r0, r5
	bl      Function_223d4e8
	pop     {r3-r5,pc}
@ 0x223d4e0

.word 0x47b @ 0x223d4e0
.word 0x47a @ 0x223d4e4
.thumb
Function_223d4e8: @ 223d4e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r2, r2, r0
	ldr     r0, [pc, #0xa4] @ 0x223d5a4, (=0x47a)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223d554
	ldrh    r2, [r2, #0x4]
	mov     r0, r4
	add     r0, #0xf0
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #4
	add     r2, #0x18
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb1
	asr     r2, r2, #16
	bl      0x200d4c4
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	ldr     r0, [pc, #0x70] @ 0x223d5a8, (=0x424)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_223d5a2
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	add     r4, #0xec
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	pop     {r4,pc}
@ 0x223d554

.thumb
branch_223d554: @ 223d554 :thumb
	ldrh    r2, [r2, #0x4]
	mov     r0, r4
	add     r0, #0xf4
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #4
	add     r2, #0x10
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb1
	asr     r2, r2, #16
	bl      0x200d4c4
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	ldr     r0, [pc, #0x20] @ 0x223d5a8, (=0x424)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_223d5a2
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	add     r4, #0xec
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
.thumb
branch_223d5a2: @ 223d5a2 :thumb
	pop     {r4,pc}
@ 0x223d5a4

.word 0x47a @ 0x223d5a4
.word 0x424 @ 0x223d5a8
.thumb
Function_223d5ac: @ 223d5ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0

	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #ITEMDATA_LOADDATA
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	mov     r2, #0x6
	bl      LoadFromNARC_ItemData
	mov     r7, r0

	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	mov     r1, r0
	add     r1, #0x64
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mul     r1, r2
	add     r1, r0, r1
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	ldrb    r6, [r1, #0xc]
	cmp     r0, #0x0
	beq     branch_223d5e4
	b       branch_223d6f2
@ 0x223d5e4

.thumb
branch_223d5e4: @ 223d5e4 :thumb
	cmp     r6, #0x4
	bne     branch_223d5f0
	mov     r1, #0x9
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223d5f0: @ 223d5f0 :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x76
	ldrh    r1, [r1, #0x0]
	lsl     r1, r1, #16
	lsr     r2, r1, #17
	ldr     r1, [pc, #0x120] @ 0x223d724, (=0xfffe)
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bhi     branch_223d628
	mov     r1, r0
	add     r1, #0x64
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mul     r1, r2
	add     r0, r0, r1
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x5
	bne     branch_223d6a2
	mov     r1, #0x2
	add     r0, sp, #0x0
	strb    r1, [r0, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	b       branch_223d6a2
@ 0x223d628

.thumb
branch_223d628: @ 223d628 :thumb
	mov     r0, r7
	mov     r1, #0x6
	bl      0x207d014
	cmp     r0, #0x0
	beq     branch_223d6a2
	mov     r0, r5
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	ldr     r2, [pc, #0xec] @ 0x223d728, (=0x1c2)
	mov     r0, r1
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	cmp     r0, r2
	bne     branch_223d65c
	mov     r2, r1
	add     r2, #0x76
	ldrh    r2, [r2, #0x0]
	lsl     r2, r2, #31
	lsr     r2, r2, #31
	cmp     r2, #0x1
	bne     branch_223d65c
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, r4]
	b       branch_223d6a0
@ 0x223d65c

.thumb
branch_223d65c: @ 223d65c :thumb
	mov     r2, r1
	add     r2, #0x64
	ldrb    r3, [r2, #0x0]
	mov     r2, #0xc
	mul     r2, r3
	add     r2, r1, r2
	ldrb    r3, [r2, #0xc]
	cmp     r3, #0x5
	bne     branch_223d676
	mov     r1, #0x2
	add     r0, sp, #0x0
	strb    r1, [r0, r4]
	b       branch_223d6a0
@ 0x223d676

.thumb
branch_223d676: @ 223d676 :thumb
	ldr     r2, [pc, #0xb4] @ 0x223d72c, (=0x1c1)
	cmp     r0, r2
	bne     branch_223d684
	mov     r1, #0x4
	add     r0, sp, #0x0
	strb    r1, [r0, r4]
	b       branch_223d6a0
@ 0x223d684

.thumb
branch_223d684: @ 223d684 :thumb
	cmp     r3, #0x4
	bne     branch_223d69a
	ldr     r0, [r1, #0x70]
	bl      0x2068b50
	cmp     r0, #0x1
	bne     branch_223d69a
	mov     r1, #0x3
	add     r0, sp, #0x0
	strb    r1, [r0, r4]
	b       branch_223d6a0
@ 0x223d69a

.thumb
branch_223d69a: @ 223d69a :thumb
	mov     r1, #0x0
	add     r0, sp, #0x0
	strb    r1, [r0, r4]
.thumb
branch_223d6a0: @ 223d6a0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223d6a2: @ 223d6a2 :thumb
	mov     r0, r7
	mov     r1, #0x3
	bl      0x207d014
	cmp     r0, #0x0
	bne     branch_223d6c0
	mov     r0, #0x8
	add     r1, sp, #0x0
	strb    r0, [r1, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r6, #0x3
	beq     branch_223d6c0
	mov     r0, #0x5
	strb    r0, [r1, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223d6c0: @ 223d6c0 :thumb
	mov     r0, r7
	mov     r1, #0x4
	bl      0x207d014
	cmp     r0, #0x0
	beq     branch_223d708
	mov     r0, r5
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      0x207d3fc
	mov     r1, r5
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	add     r1, #0x66
	ldrh    r1, [r1, #0x0]
	cmp     r1, r0
	bne     branch_223d6e8
	mov     r1, #0x7
	b       branch_223d6ea
@ 0x223d6e8

.thumb
branch_223d6e8: @ 223d6e8 :thumb
	mov     r1, #0x6
.thumb
branch_223d6ea: @ 223d6ea :thumb
	add     r0, sp, #0x0
	strb    r1, [r0, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	b       branch_223d708
@ 0x223d6f2

.thumb
branch_223d6f2: @ 223d6f2 :thumb
	add     r0, #0xfc
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_223d708
	mov     r1, #0xa
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r1, #0x9
	strb    r1, [r0, #0x1]
	.hword  0x1ca4 @ add r4, r4, #0x2
.thumb
branch_223d708: @ 223d708 :thumb
	add     r2, r4, #0x1
	lsl     r2, r2, #24
	mov     r0, #0xb
	add     r1, sp, #0x0
	strb    r0, [r1, r4]
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_223fb70
	mov     r0, r7
	bl      0x20181c4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223d724

.word 0xfffe @ 0x223d724
.word 0x1c2 @ 0x223d728
.word 0x1c1 @ 0x223d72c
.thumb
Function_223d730: @ 223d730 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_223ef4c
	cmp     r0, #0x1
	bne     branch_223d740
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x223d740

.thumb
branch_223d740: @ 223d740 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2001be0
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_223d774
	mov     r0, r5
	bl      Function_223d1f4
	cmp     r0, #0x1
	bne     branch_223d774
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2001d44
	mov     r4, r0
	mov     r0, #0x49
	mov     r1, #0x1
	lsl     r0, r0, #4
	strb    r1, [r5, r0]
.thumb
branch_223d774: @ 223d774 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223d7aa
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_223d7dc
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2001dc8
	cmp     r0, #0x1
	bne     branch_223d79a
	mov     r0, r5
	mov     r1, #0x12
	bl      Function_223eb08
	b       branch_223d7e2
@ 0x223d79a

.thumb
branch_223d79a: @ 223d79a :thumb
	cmp     r0, #0x2
	bne     branch_223d7e2
	mov     r1, #0x11
	mov     r0, r5
	mvn     r1, r1
	bl      Function_223eb08
	b       branch_223d7e2
@ 0x223d7aa

.thumb
branch_223d7aa: @ 223d7aa :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2240b34
	mov     r0, r5
	bl      Function_223fd84
	mov     r0, r5
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r2, r0
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x3
	bne     branch_223d7d8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_223d7e8
.thumb
branch_223d7d8: @ 223d7d8 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223d7dc

.thumb
branch_223d7dc: @ 223d7dc :thumb
	mov     r0, r5
	blx     r4
	pop     {r3-r5,pc}
@ 0x223d7e2

.thumb
branch_223d7e2: @ 223d7e2 :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x223d7e6


.align 2, 0


.thumb
Function_223d7e8: @ 223d7e8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_223d816
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x44] @ 0x223d844, (=0x2241064)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20198c0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	b       branch_223d838
@ 0x223d816

.thumb
branch_223d816: @ 223d816 :thumb
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x24] @ 0x223d848, (=0x2241096)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20198c0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
.thumb
branch_223d838: @ 223d838 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      0x201c3c0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223d844

.word 0x2241064 @ 0x223d844
.word 0x2241096 @ 0x223d848
.thumb
Function_223d84c: @ 223d84c :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x4] @ 0x223d854, (=0x2241034)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x223d854

.word 0x2241034 @ 0x223d854
.thumb
Function_223d858: @ 223d858 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_223fd84
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	mov     r2, r1
	bl      0x207cff0
	mov     r1, r0
	lsl     r1, r1, #16
	mov     r0, #0x2
	lsr     r1, r1, #16
	bl      0x20683f4
	mov     r1, r0
	beq     branch_223d8d8
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x70]
	blx     r1
	mov     r3, r0
	beq     branch_223d8d8
	mov     r0, #0x6
	mov     r2, r4
	str     r0, [sp, #0x0]
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0xfe
	add     r2, #0x66
	add     r0, #0xcc
	lsl     r1, r1, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	bl      0x207cd34
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	ldr     r2, [pc, #0x24] @ 0x223d8e4, (=0x3d9)
	add     r0, #0x64
	mov     r1, #0x0
	mov     r3, #0xc
	bl      0x200e060
	mov     r0, r4
	bl      Function_22400a0
	ldr     r1, [pc, #0x18] @ 0x223d8e8, (=0x426)
	add     sp, #0x4
	strb    r0, [r4, r1]
	mov     r0, #0xc
	pop     {r3,r4,pc}
@ 0x223d8d8

.thumb
branch_223d8d8: @ 223d8d8 :thumb
	mov     r0, r4
	bl      Function_223d94c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d8e2


.align 2


.word 0x3d9 @ 0x223d8e4
.word 0x426 @ 0x223d8e8
.thumb
Function_223d8ec: @ 223d8ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x4c] @ 0x223d940, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223d93c
	ldr     r0, [pc, #0x44] @ 0x223d944, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_223d90e
	ldr     r0, [pc, #0x40] @ 0x223d948, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_223d93c
.thumb
branch_223d90e: @ 223d90e :thumb
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_223d938
	mov     r0, #0x17
	pop     {r4,pc}
@ 0x223d938

.thumb
branch_223d938: @ 223d938 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d93c

.thumb
branch_223d93c: @ 223d93c :thumb
	mov     r0, #0xc
	pop     {r4,pc}
@ 0x223d940

.word 0x426 @ 0x223d940
.word 0x21bf67c @ 0x223d944
.word 0x21bf6bc @ 0x223d948
.thumb
Function_223d94c: @ 223d94c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r2, r2, r0
	ldr     r1, [pc, #0x88] @ 0x223d9ec, (=0x483)
	mov     r0, #0x0
	strb    r0, [r4, r1]
	ldrb    r0, [r2, #0x8]
	cmp     r0, #0x3
	bne     branch_223d976
	ldr     r2, [pc, #0x80] @ 0x223d9f0, (=0x223da15)
	add     r0, r1, #0x1
	str     r2, [r4, r0]
	mov     r0, #0xd
	pop     {r4,pc}
@ 0x223d976

.thumb
branch_223d976: @ 223d976 :thumb
	mov     r0, r4
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	sub     r1, #0x8b
	ldr     r0, [r2, #0x0]
	add     r2, #0x66
	ldrh    r2, [r2, #0x0]
	ldr     r1, [r4, r1]
	mov     r3, #0x6
	bl      0x207cc10
	cmp     r0, #0x1
	bne     branch_223d9b6
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	ldr     r2, [pc, #0x54] @ 0x223d9f4, (=0x3d9)
	add     r0, #0x64
	mov     r1, #0x0
	mov     r3, #0xc
	bl      0x200e060
	mov     r0, r4
	bl      Function_22400a0
	ldr     r1, [pc, #0x48] @ 0x223d9f8, (=0x426)
	strb    r0, [r4, r1]
	mov     r0, #0xc
	pop     {r4,pc}
@ 0x223d9b6

.thumb
branch_223d9b6: @ 223d9b6 :thumb
	mov     r1, r4
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	add     r1, #0x66
	ldrh    r1, [r1, #0x0]
	bl      Function_223dbf4
	cmp     r0, #0x1
	bne     branch_223d9d4
	ldr     r1, [pc, #0x30] @ 0x223d9fc, (=0x223ddd1)
	ldr     r0, [pc, #0x30] @ 0x223da00, (=0x484)
	str     r1, [r4, r0]
	mov     r0, #0xd
	pop     {r4,pc}
@ 0x223d9d4

.thumb
branch_223d9d4: @ 223d9d4 :thumb
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x208c120
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x18
	pop     {r4,pc}
@ 0x223d9ea


.align 2


.word 0x483 @ 0x223d9ec
.word 0x223da15 @ 0x223d9f0
.word 0x3d9 @ 0x223d9f4
.word 0x426 @ 0x223d9f8
.word 0x223ddd1 @ 0x223d9fc
.word 0x484 @ 0x223da00
.thumb
Function_223da04: @ 223da04 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x223da10, (=0x484)
	ldr     r1, [r0, r1]
	blx     r1
	pop     {r3,pc}
@ 0x223da0e


.align 2


.word 0x484 @ 0x223da10
.thumb
Function_223da14: @ 223da14 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x1c8] @ 0x223dbe0, (=0x483)
	mov     r4, r0
	ldrb    r2, [r4, r1]
	cmp     r2, #0x3
	bls     branch_223da22
	b       branch_223dbdc
@ 0x223da22

.thumb
branch_223da22: @ 223da22 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223da2e

Jumppoints_223da2e:
.hword branch_223da36 - Jumppoints_223da2e - 2
.hword branch_223daac - Jumppoints_223da2e - 2
.hword branch_223db0c - Jumppoints_223da2e - 2
.hword branch_223db26 - Jumppoints_223da2e - 2
.thumb
branch_223da36: @ 223da36 :thumb
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	bl      0x207d268
	mov     r5, r0
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	mov     r2, r5
	bl      0x200b630
	mov     r0, r5
	bl      0x207d28c
	cmp     r0, #0x1
	bne     branch_223da70
	mov     r0, #0x45
	mov     r2, #0xfe
	lsl     r0, r0, #2
	lsl     r2, r2, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r4, r2]
	mov     r1, #0x3b
	bl      0x200b1b8
	b       branch_223da82
@ 0x223da70

.thumb
branch_223da70: @ 223da70 :thumb
	mov     r0, #0x45
	mov     r2, #0xfe
	lsl     r0, r0, #2
	lsl     r2, r2, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r4, r2]
	mov     r1, #0x3a
	bl      0x200b1b8
.thumb
branch_223da82: @ 223da82 :thumb
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	ldr     r2, [pc, #0x154] @ 0x223dbe4, (=0x3d9)
	add     r0, #0x64
	mov     r1, #0x0
	mov     r3, #0xc
	bl      0x200e060
	mov     r0, r4
	bl      Function_22400a0
	ldr     r1, [pc, #0x144] @ 0x223dbe8, (=0x426)
	strb    r0, [r4, r1]
	mov     r0, #0x1
	add     r1, #0x5d
	strb    r0, [r4, r1]
	b       branch_223dbdc
@ 0x223daac

.thumb
branch_223daac: @ 223daac :thumb
	sub     r1, #0x5d
	ldrb    r0, [r4, r1]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223db6e
	ldr     r0, [pc, #0x130] @ 0x223dbec, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_223daca
	ldr     r0, [pc, #0x12c] @ 0x223dbf0, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_223db6e
.thumb
branch_223daca: @ 223daca :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3c
	bl      0x200b1ec
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      0x200c388
	mov     r0, r5
	bl      0x20237bc
	mov     r0, r4
	bl      Function_22400a0
	ldr     r1, [pc, #0xe4] @ 0x223dbe8, (=0x426)
	strb    r0, [r4, r1]
	mov     r0, #0x2
	add     r1, #0x5d
	strb    r0, [r4, r1]
	b       branch_223dbdc
@ 0x223db0c

.thumb
branch_223db0c: @ 223db0c :thumb
	sub     r1, #0x5d
	ldrb    r0, [r4, r1]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223dbdc
	mov     r0, r4
	bl      Function_2240120
	ldr     r0, [pc, #0xc0] @ 0x223dbe0, (=0x483)
	mov     r1, #0x3
	strb    r1, [r4, r0]
	b       branch_223dbdc
@ 0x223db26

.thumb
branch_223db26: @ 223db26 :thumb
	bl      Function_223ef4c
	cmp     r0, #0x1
	beq     branch_223dbdc
	mov     r0, r4
	bl      Function_223d1f4
	cmp     r0, #0x1
	bne     branch_223db50
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	mov     r2, #0x6
	bl      0x2002134
	mov     r1, #0x49
	mov     r2, #0x1
	lsl     r1, r1, #4
	strb    r2, [r4, r1]
	b       branch_223db5c
@ 0x223db50

.thumb
branch_223db50: @ 223db50 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      0x2002114
.thumb
branch_223db5c: @ 223db5c :thumb
	cmp     r0, #0x0
	beq     branch_223db70
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223dbb6
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_223db8e
.thumb
branch_223db6e: @ 223db6e :thumb
	b       branch_223dbdc
@ 0x223db70

.thumb
branch_223db70: @ 223db70 :thumb
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x208c120
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223d7e8
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x18
	pop     {r3-r5,pc}
@ 0x223db8e

.thumb
branch_223db8e: @ 223db8e :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2001dc8
	cmp     r0, #0x1
	bne     branch_223dba6
	mov     r0, r4
	mov     r1, #0x12
	bl      Function_223eb08
	b       branch_223dbdc
@ 0x223dba6

.thumb
branch_223dba6: @ 223dba6 :thumb
	cmp     r0, #0x2
	bne     branch_223dbdc
	mov     r1, #0x11
	mov     r0, r4
	mvn     r1, r1
	bl      Function_223eb08
	b       branch_223dbdc
@ 0x223dbb6

.thumb
branch_223dbb6: @ 223dbb6 :thumb
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223d7e8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223dbdc

.thumb
branch_223dbdc: @ 223dbdc :thumb
	mov     r0, #0xd
	pop     {r3-r5,pc}
@ 0x223dbe0

.word 0x483 @ 0x223dbe0
.word 0x3d9 @ 0x223dbe4
.word 0x426 @ 0x223dbe8
.word 0x21bf67c @ 0x223dbec
.word 0x21bf6bc @ 0x223dbf0
.thumb
Function_223dbf4: @ 223dbf4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x46
	mov     r2, r4
	lsl     r0, r0, #2
	add     r2, #0xcc
	mov     r5, r1
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	mov     r2, r5
	bl      0x200b70c
	cmp     r5, #0x44
	bne     branch_223dc3c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x40
	bl      0x200b1ec
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223ba04
	ldr     r0, [pc, #0x60] @ 0x223dc98, (=0x488)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	b       branch_223dc7a
@ 0x223dc3c

.thumb
branch_223dc3c: @ 223dc3c :thumb
	cmp     r5, #0x45
	bne     branch_223dc5e
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3f
	bl      0x200b1ec
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_223ba04
	ldr     r0, [pc, #0x40] @ 0x223dc98, (=0x488)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	b       branch_223dc7a
@ 0x223dc5e

.thumb
branch_223dc5e: @ 223dc5e :thumb
	cmp     r5, #0x4d
	beq     branch_223dc6a
	cmp     r5, #0x4c
	beq     branch_223dc6a
	cmp     r5, #0x4f
	bne     branch_223dc76
.thumb
branch_223dc6a: @ 223dc6a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223dc9c
	mov     r5, r0
	b       branch_223dc7a
@ 0x223dc76

.thumb
branch_223dc76: @ 223dc76 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223dc7a

.thumb
branch_223dc7a: @ 223dc7a :thumb
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      0x200c388
	mov     r0, r5
	bl      0x20237bc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223dc96


.align 2


.word 0x488 @ 0x223dc98
.thumb
Function_223dc9c: @ 223dc9c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_223b9e4
	bl      0x202d9d8
	cmp     r0, #0x0
	bne     branch_223dcc2
	ldr     r0, [pc, #0x44] @ 0x223dcf4, (=0x488)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3e
	bl      0x200b1ec
	pop     {r3-r5,pc}
@ 0x223dcc2

.thumb
branch_223dcc2: @ 223dcc2 :thumb
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x6
	bl      0x207cff0
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_223b9f4
	ldr     r0, [pc, #0x18] @ 0x223dcf4, (=0x488)
	mov     r1, #0x1
	strh    r1, [r4, r0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	bl      0x2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3d
	bl      0x200b1ec
	pop     {r3-r5,pc}
@ 0x223dcf4

.word 0x488 @ 0x223dcf4
.thumb
Function_223dcf8: @ 223dcf8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r3, r1
	mul     r3, r0
	add     r1, r2, r3
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0xb4] @ 0x223ddcc, (=0x488)
	ldr     r0, [r1, #0x4]
	ldrb    r1, [r1, #0xd]
	add     r2, #0x66
	ldrh    r2, [r2, #0x0]
	ldrh    r3, [r4, r3]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	bl      0x207d658
	mov     r0, r4
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mov     r1, r3
	mul     r2, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	add     r1, #0xa
	ldr     r0, [r4, r0]
	add     r3, #0x8
	add     r1, r1, r2
	add     r2, r3, r2
	bl      0x2001384
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	mov     r0, r4
	bl      Function_223bfbc
	mov     r0, r4
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	mov     r0, r3
	mov     r1, r3
	add     r0, #0xa
	add     r1, #0x8
	add     r0, r0, r2
	add     r1, r1, r2
	add     r2, r3, r2
	ldrb    r2, [r2, #0xd]
	bl      Function_223c194
	mov     r0, r4
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	mov     r0, r3
	mov     r1, r3
	add     r0, #0xa
	add     r1, #0x8
	add     r0, r0, r2
	add     r1, r1, r2
	add     r2, r3, r2
	ldrb    r2, [r2, #0xd]
	mov     r3, #0x9
	bl      Function_223c1d0
	mov     r0, r4
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	add     r2, r3, r2
	ldrh    r1, [r2, #0xa]
	ldrh    r2, [r2, #0x8]
	mov     r0, r4
	bl      Function_223c224
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ddcc

.word 0x488 @ 0x223ddcc
.thumb
Function_223ddd0: @ 223ddd0 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x90] @ 0x223de64, (=0x483)
	mov     r4, r0
	ldrb    r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_223dde6
	cmp     r2, #0x1
	beq     branch_223de0e
	cmp     r2, #0x2
	beq     branch_223de3e
	b       branch_223de5e
@ 0x223dde6

.thumb
branch_223dde6: @ 223dde6 :thumb
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	ldr     r2, [pc, #0x74] @ 0x223de68, (=0x3d9)
	add     r0, #0x64
	mov     r1, #0x0
	mov     r3, #0xc
	bl      0x200e060
	mov     r0, r4
	bl      Function_22400a0
	ldr     r1, [pc, #0x68] @ 0x223de6c, (=0x426)
	strb    r0, [r4, r1]
	mov     r0, #0x1
	add     r1, #0x5d
	strb    r0, [r4, r1]
	b       branch_223de5e
@ 0x223de0e

.thumb
branch_223de0e: @ 223de0e :thumb
	sub     r1, #0x5d
	ldrb    r0, [r4, r1]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223de5e
	ldr     r0, [pc, #0x54] @ 0x223de70, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_223de2c
	ldr     r0, [pc, #0x4c] @ 0x223de74, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_223de5e
.thumb
branch_223de2c: @ 223de2c :thumb
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      0x200e084
	ldr     r0, [pc, #0x2c] @ 0x223de64, (=0x483)
	mov     r1, #0x2
	strb    r1, [r4, r0]
	b       branch_223de5e
@ 0x223de3e

.thumb
branch_223de3e: @ 223de3e :thumb
	.hword  0x1d49 @ add r1, r1, #0x5
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_223de4a
	bl      Function_223dcf8
.thumb
branch_223de4a: @ 223de4a :thumb
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223de5e

.thumb
branch_223de5e: @ 223de5e :thumb
	mov     r0, #0xd
	pop     {r4,pc}
@ 0x223de62


.align 2


.word 0x483 @ 0x223de64
.word 0x3d9 @ 0x223de68
.word 0x426 @ 0x223de6c
.word 0x21bf67c @ 0x223de70
.word 0x21bf6bc @ 0x223de74
.thumb
Function_223de78: @ 223de78 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223fd84
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x208c120
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x18
	pop     {r4,pc}
@ 0x223de96


.align 2, 0


.thumb
Function_223de98: @ 223de98 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223fd84
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x208c120
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x18
	pop     {r4,pc}
@ 0x223deb6


.align 2, 0


.thumb
Function_223deb8: @ 223deb8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223fd84
	ldr     r0, [pc, #0x44] @ 0x223df08, (=0x488)
	mov     r1, #0x1
	strh    r1, [r4, r0]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r3, #0x6
	mov     r0, r2
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r2, r0
	ldr     r0, [r1, #0x4]
	ldrb    r1, [r1, #0xd]
	add     r2, #0x66
	ldrh    r2, [r2, #0x0]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	bl      0x207d748
	cmp     r0, #0x1
	bne     branch_223def6
	mov     r0, r4
	bl      Function_223fff0
	mov     r0, #0x8
	pop     {r4,pc}
@ 0x223def6

.thumb
branch_223def6: @ 223def6 :thumb
	mov     r0, r4
	bl      Function_223fe94
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2240cf0
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x223df08

.word 0x488 @ 0x223df08
.thumb
Function_223df0c: @ 223df0c :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0xd8] @ 0x223dfe8, (=0x488)
	mov     r4, r0
	add     r1, r4, r2
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r2, [r4, r2]
	bl      Function_223efd0
	cmp     r0, #0x1
	bne     branch_223df2a
	mov     r0, r4
	bl      Function_223ff44
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x223df2a

.thumb
branch_223df2a: @ 223df2a :thumb
	mov     r0, r4
	bl      Function_223d1f4
	cmp     r0, #0x1
	bne     branch_223df4e
	mov     r0, r4
	bl      Function_223fff0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2240d3c
	mov     r0, #0x49
	mov     r1, #0x1
	lsl     r0, r0, #4
	strb    r1, [r4, r0]
	mov     r0, #0x8
	pop     {r4,pc}
@ 0x223df4e

.thumb
branch_223df4e: @ 223df4e :thumb
	ldr     r1, [pc, #0x98] @ 0x223dfe8, (=0x488)
	add     r0, r4, r1
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r1, [r4, r1]
	bl      0x208c15c
	cmp     r0, #0x0
	beq     branch_223df9a
	cmp     r0, #0x1
	beq     branch_223df68
	cmp     r0, #0x2
	beq     branch_223df80
	b       branch_223df9a
@ 0x223df68

.thumb
branch_223df68: @ 223df68 :thumb
	mov     r0, r4
	mov     r1, #0x12
	bl      Function_223eb08
	mov     r0, r4
	bl      Function_223ff44
	ldr     r0, [pc, #0x74] @ 0x223dfec, (=0x638)
	bl      0x2005748
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x223df80

.thumb
branch_223df80: @ 223df80 :thumb
	mov     r1, #0x11
	mov     r0, r4
	mvn     r1, r1
	bl      Function_223eb08
	mov     r0, r4
	bl      Function_223ff44
	ldr     r0, [pc, #0x58] @ 0x223dfec, (=0x638)
	bl      0x2005748
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x223df9a

.thumb
branch_223df9a: @ 223df9a :thumb
	ldr     r0, [pc, #0x54] @ 0x223dff0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223dfbc
	mov     r0, r4
	bl      Function_223fff0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2240d3c
	ldr     r0, [pc, #0x40] @ 0x223dff4, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x8
	pop     {r4,pc}
@ 0x223dfbc

.thumb
branch_223dfbc: @ 223dfbc :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223dfe2
	mov     r0, r4
	bl      Function_223ffc0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2240d3c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	ldr     r0, [pc, #0x18] @ 0x223dff4, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223dfe2

.thumb
branch_223dfe2: @ 223dfe2 :thumb
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x223dfe6


.align 2


.word 0x488 @ 0x223dfe8
.word 0x638 @ 0x223dfec
.word 0x21bf67c @ 0x223dff0
.word 0x5dc @ 0x223dff4
.thumb
Function_223dff8: @ 223dff8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x223e018, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223e012
	mov     r0, r4
	bl      Function_2240120
	mov     r0, #0x9
	pop     {r4,pc}
@ 0x223e012

.thumb
branch_223e012: @ 223e012 :thumb
	mov     r0, #0x8
	pop     {r4,pc}
@ 0x223e016


.align 2


.word 0x426 @ 0x223e018
.thumb
Function_223e01c: @ 223e01c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_223ef4c
	cmp     r0, #0x1
	bne     branch_223e030
	add     sp, #0x8
	mov     r0, #0x9
	pop     {r3-r5,pc}
@ 0x223e030

.thumb
branch_223e030: @ 223e030 :thumb
	mov     r0, r5
	bl      Function_223d1f4
	cmp     r0, #0x1
	bne     branch_223e052
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, #0x6
	bl      0x2002134
	mov     r1, #0x49
	mov     r2, #0x1
	lsl     r1, r1, #4
	strb    r2, [r5, r1]
	b       branch_223e05e
@ 0x223e052

.thumb
branch_223e052: @ 223e052 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      0x2002114
.thumb
branch_223e05e: @ 223e05e :thumb
	cmp     r0, #0x0
	beq     branch_223e072
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223e128
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_223e100
	b       branch_223e148
@ 0x223e072

.thumb
branch_223e072: @ 223e072 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x35
	bl      0x200b1ec
	mov     r4, r0
	ldr     r0, [pc, #0xcc] @ 0x223e150, (=0x488)
	ldsh    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_223e0a0
	mov     r2, r5
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, #0x46
	add     r2, #0x66
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b70c
	b       branch_223e0b6
@ 0x223e0a0

.thumb
branch_223e0a0: @ 223e0a0 :thumb
	mov     r2, r5
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, #0x46
	add     r2, #0x66
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b77c
.thumb
branch_223e0b6: @ 223e0b6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, #0x46
	ldr     r2, [pc, #0x90] @ 0x223e150, (=0x488)
	str     r1, [sp, #0x4]
	lsl     r0, r0, #2
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r5
	bl      Function_22400a0
	ldr     r1, [pc, #0x5c] @ 0x223e154, (=0x426)
	add     sp, #0x8
	strb    r0, [r5, r1]
	mov     r0, #0xa
	pop     {r3-r5,pc}
@ 0x223e100

.thumb
branch_223e100: @ 223e100 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2001dc8
	cmp     r0, #0x1
	bne     branch_223e118
	mov     r0, r5
	mov     r1, #0x12
	bl      Function_223eb08
	b       branch_223e148
@ 0x223e118

.thumb
branch_223e118: @ 223e118 :thumb
	cmp     r0, #0x2
	bne     branch_223e148
	mov     r1, #0x11
	mov     r0, r5
	mvn     r1, r1
	bl      Function_223eb08
	b       branch_223e148
@ 0x223e128

.thumb
branch_223e128: @ 223e128 :thumb
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, r5
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2240b34
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223e148

.thumb
branch_223e148: @ 223e148 :thumb
	mov     r0, #0x9
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223e14e


.align 2


.word 0x488 @ 0x223e150
.word 0x426 @ 0x223e154
.thumb
Function_223e158: @ 223e158 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x223e184, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_223e16c
	mov     r0, #0xa
	pop     {r4,pc}
@ 0x223e16c

.thumb
branch_223e16c: @ 223e16c :thumb
	ldr     r0, [pc, #0x18] @ 0x223e188, (=0x479)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_223dcf8
	add     r4, #0x64
	mov     r0, r4
	bl      0x201a9a4
	mov     r0, #0xb
	pop     {r4,pc}
@ 0x223e184

.word 0x426 @ 0x223e184
.word 0x479 @ 0x223e188
.thumb
Function_223e18c: @ 223e18c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x40] @ 0x223e1d4, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223e1d0
	ldr     r0, [pc, #0x38] @ 0x223e1d8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_223e1ae
	ldr     r0, [pc, #0x34] @ 0x223e1dc, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_223e1d0
.thumb
branch_223e1ae: @ 223e1ae :thumb
	ldr     r0, [pc, #0x30] @ 0x223e1e0, (=0x479)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r4
	add     r0, #0x64
	bl      0x200e084
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e1d0

.thumb
branch_223e1d0: @ 223e1d0 :thumb
	mov     r0, #0xb
	pop     {r4,pc}
@ 0x223e1d4

.word 0x426 @ 0x223e1d4
.word 0x21bf67c @ 0x223e1d8
.word 0x21bf6bc @ 0x223e1dc
.word 0x479 @ 0x223e1e0
.thumb
Function_223e1e4: @ 223e1e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	add     r0, #0xc8
	add     r1, #0x66
	ldrh    r1, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x207d404
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20013ac
	mov     r0, r4
	bl      Function_223fd84
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e21e


.align 2, 0


.thumb
Function_223e220: @ 223e220 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x207d404
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20013ac
	mov     r0, r4
	bl      Function_223fd84
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e252


.align 2, 0


.thumb
Function_223e254: @ 223e254 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223fd84
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x208c120
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223d7e8
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x18
	pop     {r4,pc}
@ 0x223e27a


.align 2, 0


.thumb
Function_223e27c: @ 223e27c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_223d0fc
	mov     r0, r5
	bl      Function_223ed14
	cmp     r0, #0x1
	bne     branch_223e292
	mov     r0, #0xe
	pop     {r3-r5,pc}
@ 0x223e292

.thumb
branch_223e292: @ 223e292 :thumb
	mov     r0, r5
	bl      Function_223c750
	cmp     r0, #0x1
	bne     branch_223e2a0
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x223e2a0

.thumb
branch_223e2a0: @ 223e2a0 :thumb
	mov     r0, r5
	bl      Function_223cd40
	cmp     r0, #0x1
	bne     branch_223e2ae
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x223e2ae

.thumb
branch_223e2ae: @ 223e2ae :thumb
	mov     r0, r5
	bl      Function_223c5b8
	cmp     r0, #0x1
	bne     branch_223e34e
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	mov     r2, #0x6
	bl      0x207cff0
	cmp     r0, #0x0
	beq     branch_223e338
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r5
	ldr     r2, [pc, #0x88] @ 0x223e364, (=0x3d9)
	add     r0, #0x64
	mov     r1, #0x0
	mov     r3, #0xc
	bl      0x200e060
	mov     r2, r5
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, #0x46
	add     r2, #0x66
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b70c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2e
	bl      0x200b1ec
	mov     r4, r0
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r5
	bl      Function_22400a0
	ldr     r1, [pc, #0x3c] @ 0x223e368, (=0x426)
	strb    r0, [r5, r1]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2240b34
	mov     r0, #0xf
	pop     {r3-r5,pc}
@ 0x223e338

.thumb
branch_223e338: @ 223e338 :thumb
	add     r5, #0xc4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x208c120
	mov     r0, #0x18
	pop     {r3-r5,pc}
@ 0x223e34e

.thumb
branch_223e34e: @ 223e34e :thumb
	cmp     r0, #0x3
	bne     branch_223e360
	add     r5, #0xc4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x18
	pop     {r3-r5,pc}
@ 0x223e360

.thumb
branch_223e360: @ 223e360 :thumb
	mov     r0, #0xe
	pop     {r3-r5,pc}
@ 0x223e364

.word 0x3d9 @ 0x223e364
.word 0x426 @ 0x223e368
.thumb
Function_223e36c: @ 223e36c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x3c] @ 0x223e3b0, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223e3ac
	ldr     r0, [pc, #0x34] @ 0x223e3b4, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_223e38e
	ldr     r0, [pc, #0x30] @ 0x223e3b8, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_223e3ac
.thumb
branch_223e38e: @ 223e38e :thumb
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	mov     r0, #0xe
	pop     {r4,pc}
@ 0x223e3ac

.thumb
branch_223e3ac: @ 223e3ac :thumb
	mov     r0, #0xf
	pop     {r4,pc}
@ 0x223e3b0

.word 0x426 @ 0x223e3b0
.word 0x21bf67c @ 0x223e3b4
.word 0x21bf6bc @ 0x223e3b8
.thumb
Function_223e3bc: @ 223e3bc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_223d0fc
	mov     r0, r5
	bl      Function_223ed14
	cmp     r0, #0x1
	bne     branch_223e3d6
	add     sp, #0x8
	mov     r0, #0x10
	pop     {r3-r5,pc}
@ 0x223e3d6

.thumb
branch_223e3d6: @ 223e3d6 :thumb
	mov     r0, r5
	bl      Function_223c750
	cmp     r0, #0x1
	bne     branch_223e3e6
	add     sp, #0x8
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x223e3e6

.thumb
branch_223e3e6: @ 223e3e6 :thumb
	mov     r0, r5
	bl      Function_223cd40
	cmp     r0, #0x1
	bne     branch_223e3f6
	add     sp, #0x8
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x223e3f6

.thumb
branch_223e3f6: @ 223e3f6 :thumb
	mov     r0, r5
	bl      Function_223c5b8
	cmp     r0, #0x1
	beq     branch_223e402
	b       branch_223e566
@ 0x223e402

.thumb
branch_223e402: @ 223e402 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2240248
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r5
	ldr     r2, [pc, #0x160] @ 0x223e578, (=0x3d9)
	add     r0, #0x64
	mov     r1, #0x0
	mov     r3, #0xc
	bl      0x200e060
	mov     r2, r5
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, #0x46
	add     r2, #0x66
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b70c
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2240b34
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	mov     r2, #0x6
	bl      0x207cff0
	ldr     r1, [pc, #0x128] @ 0x223e57c, (=0x48c)
	mov     r2, #0x6
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	bl      0x207cff0
	cmp     r0, #0x0
	bne     branch_223e474
	ldr     r1, [pc, #0x10c] @ 0x223e57c, (=0x48c)
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_223e4aa
.thumb
branch_223e474: @ 223e474 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4a
	bl      0x200b1ec
	mov     r4, r0
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r5
	bl      Function_22400a0
	ldr     r1, [pc, #0xdc] @ 0x223e580, (=0x426)
	add     sp, #0x8
	strb    r0, [r5, r1]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x223e4aa

.thumb
branch_223e4aa: @ 223e4aa :thumb
	mov     r2, #0x1
	.hword  0x1f08 @ sub r0, r1, #0x4
	strh    r2, [r5, r0]
	ldr     r0, [r5, r1]
	mov     r3, #0x6
	lsr     r0, r0, #1
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r2, r0
	ldr     r0, [r1, #0x4]
	ldrb    r1, [r1, #0xd]
	add     r2, #0x66
	ldrh    r2, [r2, #0x0]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	bl      0x207d748
	cmp     r0, #0x1
	bne     branch_223e530
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4c
	bl      0x200b1ec
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x90] @ 0x223e584, (=0x488)
	mov     r0, #0x46
	ldsh    r3, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r0, r0, #2
	ldr     r2, [r5, r2]
	ldr     r0, [r5, r0]
	mul     r2, r3
	mov     r3, #0x6
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r5
	bl      Function_22400a0
	ldr     r1, [pc, #0x58] @ 0x223e580, (=0x426)
	add     sp, #0x8
	strb    r0, [r5, r1]
	mov     r0, #0x13
	pop     {r3-r5,pc}
@ 0x223e530

.thumb
branch_223e530: @ 223e530 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4b
	bl      0x200b1ec
	mov     r4, r0
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r5
	bl      Function_22400a0
	ldr     r1, [pc, #0x20] @ 0x223e580, (=0x426)
	add     sp, #0x8
	strb    r0, [r5, r1]
	mov     r0, #0x11
	pop     {r3-r5,pc}
@ 0x223e566

.thumb
branch_223e566: @ 223e566 :thumb
	cmp     r0, #0x3
	bne     branch_223e570
	add     sp, #0x8
	mov     r0, #0x18
	pop     {r3-r5,pc}
@ 0x223e570

.thumb
branch_223e570: @ 223e570 :thumb
	mov     r0, #0x10
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223e576


.align 2


.word 0x3d9 @ 0x223e578
.word 0x48c @ 0x223e57c
.word 0x426 @ 0x223e580
.word 0x488 @ 0x223e584
.thumb
Function_223e588: @ 223e588 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x223e5bc, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223e5b8
	ldr     r0, [pc, #0x24] @ 0x223e5c0, (=0x48a)
	ldrh    r1, [r4, r0]
	cmp     r1, #0x63
	bls     branch_223e5a4
	mov     r1, #0x63
	strh    r1, [r4, r0]
.thumb
branch_223e5a4: @ 223e5a4 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2240148
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240cf0
	mov     r0, #0x12
	pop     {r4,pc}
@ 0x223e5b8

.thumb
branch_223e5b8: @ 223e5b8 :thumb
	mov     r0, #0x11
	pop     {r4,pc}
@ 0x223e5bc

.word 0x426 @ 0x223e5bc
.word 0x48a @ 0x223e5c0
.thumb
Function_223e5c4: @ 223e5c4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r2, [pc, #0x1c4] @ 0x223e790, (=0x488)
	mov     r4, r0
	add     r1, r4, r2
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r2, [r4, r2]
	bl      Function_223efd0
	cmp     r0, #0x1
	bne     branch_223e5e8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240148
	add     sp, #0x8
	mov     r0, #0x12
	pop     {r3-r5,pc}
@ 0x223e5e8

.thumb
branch_223e5e8: @ 223e5e8 :thumb
	mov     r0, r4
	bl      Function_223d1f4
	cmp     r0, #0x1
	bne     branch_223e668
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2240d3c
	mov     r0, r4
	add     r0, #0x74
	mov     r1, #0x1
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4c
	bl      0x200b1ec
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x168] @ 0x223e790, (=0x488)
	mov     r0, #0x46
	ldsh    r3, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r0, r0, #2
	ldr     r2, [r4, r2]
	ldr     r0, [r4, r0]
	mul     r2, r3
	mov     r3, #0x6
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      0x200c388
	mov     r0, r5
	bl      0x20237bc
	mov     r0, r4
	bl      Function_22400a0
	ldr     r1, [pc, #0x138] @ 0x223e794, (=0x426)
	add     sp, #0x8
	strb    r0, [r4, r1]
	mov     r0, #0x1
	add     r1, #0x6a
	strb    r0, [r4, r1]
	mov     r0, #0x13
	pop     {r3-r5,pc}
@ 0x223e668

.thumb
branch_223e668: @ 223e668 :thumb
	ldr     r1, [pc, #0x124] @ 0x223e790, (=0x488)
	add     r0, r4, r1
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r1, [r4, r1]
	bl      0x208c15c
	cmp     r0, #0x0
	beq     branch_223e6bc
	cmp     r0, #0x1
	beq     branch_223e682
	cmp     r0, #0x2
	beq     branch_223e69e
	b       branch_223e6bc
@ 0x223e682

.thumb
branch_223e682: @ 223e682 :thumb
	mov     r0, r4
	mov     r1, #0x12
	bl      Function_223eb08
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240148
	ldr     r0, [pc, #0x104] @ 0x223e798, (=0x638)
	bl      0x2005748
	add     sp, #0x8
	mov     r0, #0x12
	pop     {r3-r5,pc}
@ 0x223e69e

.thumb
branch_223e69e: @ 223e69e :thumb
	mov     r1, #0x11
	mov     r0, r4
	mvn     r1, r1
	bl      Function_223eb08
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240148
	ldr     r0, [pc, #0xe4] @ 0x223e798, (=0x638)
	bl      0x2005748
	add     sp, #0x8
	mov     r0, #0x12
	pop     {r3-r5,pc}
@ 0x223e6bc

.thumb
branch_223e6bc: @ 223e6bc :thumb
	ldr     r0, [pc, #0xdc] @ 0x223e79c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223e73c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2240d3c
	mov     r0, r4
	add     r0, #0x74
	mov     r1, #0x1
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4c
	bl      0x200b1ec
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x94] @ 0x223e790, (=0x488)
	mov     r0, #0x46
	ldsh    r3, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r0, r0, #2
	ldr     r2, [r4, r2]
	ldr     r0, [r4, r0]
	mul     r2, r3
	mov     r3, #0x6
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      0x200c388
	mov     r0, r5
	bl      0x20237bc
	mov     r0, r4
	bl      Function_22400a0
	ldr     r1, [pc, #0x64] @ 0x223e794, (=0x426)
	strb    r0, [r4, r1]
	ldr     r0, [pc, #0x6c] @ 0x223e7a0, (=0x5dc)
	bl      0x2005748
	add     sp, #0x8
	mov     r0, #0x13
	pop     {r3-r5,pc}
@ 0x223e73c

.thumb
branch_223e73c: @ 223e73c :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223e788
	ldr     r0, [pc, #0x60] @ 0x223e7a4, (=0x48c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_2240d3c
	mov     r0, r4
	add     r0, #0x84
	mov     r1, #0x1
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x74
	mov     r1, #0x1
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	ldr     r0, [pc, #0x20] @ 0x223e7a0, (=0x5dc)
	bl      0x2005748
	add     sp, #0x8
	mov     r0, #0x10
	pop     {r3-r5,pc}
@ 0x223e788

.thumb
branch_223e788: @ 223e788 :thumb
	mov     r0, #0x12
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223e78e


.align 2


.word 0x488 @ 0x223e790
.word 0x426 @ 0x223e794
.word 0x638 @ 0x223e798
.word 0x21bf67c @ 0x223e79c
.word 0x5dc @ 0x223e7a0
.word 0x48c @ 0x223e7a4
.thumb
Function_223e7a8: @ 223e7a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x223e7c8, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223e7c2
	mov     r0, r4
	bl      Function_2240120
	mov     r0, #0x14
	pop     {r4,pc}
@ 0x223e7c2

.thumb
branch_223e7c2: @ 223e7c2 :thumb
	mov     r0, #0x13
	pop     {r4,pc}
@ 0x223e7c6


.align 2


.word 0x426 @ 0x223e7c8
.thumb
Function_223e7cc: @ 223e7cc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_223ef4c
	cmp     r0, #0x1
	bne     branch_223e7e0
	add     sp, #0x8
	mov     r0, #0x14
	pop     {r3-r5,pc}
@ 0x223e7e0

.thumb
branch_223e7e0: @ 223e7e0 :thumb
	mov     r0, r5
	bl      Function_223d1f4
	cmp     r0, #0x1
	bne     branch_223e802
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, #0x6
	bl      0x2002134
	mov     r1, #0x49
	mov     r2, #0x1
	lsl     r1, r1, #4
	strb    r2, [r5, r1]
	b       branch_223e80e
@ 0x223e802

.thumb
branch_223e802: @ 223e802 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      0x2002114
.thumb
branch_223e80e: @ 223e80e :thumb
	cmp     r0, #0x0
	beq     branch_223e822
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223e8de
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_223e8b6
	b       branch_223e90e
@ 0x223e822

.thumb
branch_223e822: @ 223e822 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4d
	bl      0x200b1ec
	mov     r4, r0
	ldr     r0, [pc, #0xe0] @ 0x223e914, (=0x488)
	ldsh    r0, [r5, r0]
	cmp     r0, #0x1
	ble     branch_223e850
	mov     r2, r5
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, #0x46
	add     r2, #0x66
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b77c
	b       branch_223e866
@ 0x223e850

.thumb
branch_223e850: @ 223e850 :thumb
	mov     r2, r5
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, #0x46
	add     r2, #0x66
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b70c
.thumb
branch_223e866: @ 223e866 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, #0x46
	ldr     r2, [pc, #0xa4] @ 0x223e914, (=0x488)
	str     r1, [sp, #0x4]
	ldsh    r3, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r0, r0, #2
	ldr     r2, [r5, r2]
	ldr     r0, [r5, r0]
	mul     r2, r3
	mov     r3, #0x6
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r5
	bl      Function_22400a0
	ldr     r1, [pc, #0x68] @ 0x223e918, (=0x426)
	add     sp, #0x8
	strb    r0, [r5, r1]
	mov     r0, #0x15
	pop     {r3-r5,pc}
@ 0x223e8b6

.thumb
branch_223e8b6: @ 223e8b6 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2001dc8
	cmp     r0, #0x1
	bne     branch_223e8ce
	mov     r0, r5
	mov     r1, #0x12
	bl      Function_223eb08
	b       branch_223e90e
@ 0x223e8ce

.thumb
branch_223e8ce: @ 223e8ce :thumb
	cmp     r0, #0x2
	bne     branch_223e90e
	mov     r1, #0x11
	mov     r0, r5
	mvn     r1, r1
	bl      Function_223eb08
	b       branch_223e90e
@ 0x223e8de

.thumb
branch_223e8de: @ 223e8de :thumb
	ldr     r0, [pc, #0x3c] @ 0x223e91c, (=0x48c)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x84
	mov     r1, #0x1
	bl      0x200dc9c
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, r5
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2240b34
	add     sp, #0x8
	mov     r0, #0x10
	pop     {r3-r5,pc}
@ 0x223e90e

.thumb
branch_223e90e: @ 223e90e :thumb
	mov     r0, #0x14
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223e914

.word 0x488 @ 0x223e914
.word 0x426 @ 0x223e918
.word 0x48c @ 0x223e91c
.thumb
Function_223e920: @ 223e920 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x78] @ 0x223e9a0, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_223e934
	mov     r0, #0x15
	pop     {r4,pc}
@ 0x223e934

.thumb
branch_223e934: @ 223e934 :thumb
	ldr     r0, [pc, #0x6c] @ 0x223e9a4, (=0x644)
	bl      0x2005748
	ldr     r1, [pc, #0x6c] @ 0x223e9a8, (=0x488)
	mov     r0, r4
	ldsh    r2, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r0, #0xcc
	ldr     r1, [r4, r1]
	ldr     r0, [r0, #0x0]
	mul     r1, r2
	bl      0x2025f94
	ldr     r0, [pc, #0x58] @ 0x223e9a8, (=0x488)
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223e974
	mov     r0, r4
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x75
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xff
	beq     branch_223e980
	mov     r0, r1
	add     r0, #0x75
	ldrb    r0, [r0, #0x0]
	add     r1, #0x75
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, #0x0]
	b       branch_223e980
@ 0x223e974

.thumb
branch_223e974: @ 223e974 :thumb
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	add     r0, #0x75
	strb    r1, [r0, #0x0]
.thumb
branch_223e980: @ 223e980 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240248
	ldr     r0, [pc, #0x20] @ 0x223e9ac, (=0x479)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_223dcf8
	add     r4, #0x64
	mov     r0, r4
	bl      0x201a9a4
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x223e9a0

.word 0x426 @ 0x223e9a0
.word 0x644 @ 0x223e9a4
.word 0x488 @ 0x223e9a8
.word 0x479 @ 0x223e9ac
.thumb
Function_223e9b0: @ 223e9b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x223ea08, (=0x426)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223ea04
	ldr     r0, [pc, #0x48] @ 0x223ea0c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_223e9d2
	ldr     r0, [pc, #0x44] @ 0x223ea10, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_223ea04
.thumb
branch_223e9d2: @ 223e9d2 :thumb
	ldr     r0, [pc, #0x40] @ 0x223ea14, (=0x479)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	add     r0, #0x13
	str     r1, [r4, r0]
	mov     r0, r4
	add     r0, #0x84
	mov     r1, #0x1
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240b34
	mov     r0, #0x10
	pop     {r4,pc}
@ 0x223ea04

.thumb
branch_223ea04: @ 223ea04 :thumb
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x223ea08

.word 0x426 @ 0x223ea08
.word 0x21bf67c @ 0x223ea0c
.word 0x21bf6bc @ 0x223ea10
.word 0x479 @ 0x223ea14
.thumb
Function_223ea18: @ 223ea18 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_223d0fc
	mov     r0, r4
	bl      Function_223ed14
	cmp     r0, #0x1
	bne     branch_223ea32
	add     sp, #0x4
	mov     r0, #0x17
	pop     {r3,r4,pc}
@ 0x223ea32

.thumb
branch_223ea32: @ 223ea32 :thumb
	mov     r0, r4
	bl      Function_223c750
	cmp     r0, #0x1
	bne     branch_223ea42
	add     sp, #0x4
	mov     r0, #0x2
	pop     {r3,r4,pc}
@ 0x223ea42

.thumb
branch_223ea42: @ 223ea42 :thumb
	mov     r0, r4
	bl      Function_223cd40
	cmp     r0, #0x1
	bne     branch_223ea52
	add     sp, #0x4
	mov     r0, #0x2
	pop     {r3,r4,pc}
@ 0x223ea52

.thumb
branch_223ea52: @ 223ea52 :thumb
	mov     r0, r4
	bl      Function_223c5b8
	cmp     r0, #0x1
	bne     branch_223eae4
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x64
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mul     r1, r2
	add     r1, r0, r1
	ldrb    r1, [r1, #0xc]
	cmp     r1, #0x0
	bne     branch_223eacc
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	mov     r1, #0x6
	mov     r2, r1
	bl      0x207cff0
	cmp     r0, #0xd
	beq     branch_223eacc
	mov     r3, #0x6
	mov     r2, r4
	str     r3, [sp, #0x0]
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0xfe
	add     r2, #0x66
	add     r0, #0xcc
	lsl     r1, r1, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	.hword  0x1fdb @ sub r3, r3, #0x7
	bl      0x207cd34
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	ldr     r2, [pc, #0x4c] @ 0x223eb00, (=0x3d9)
	add     r0, #0x64
	mov     r1, #0x0
	mov     r3, #0xc
	bl      0x200e060
	mov     r0, r4
	bl      Function_22400a0
	ldr     r1, [pc, #0x40] @ 0x223eb04, (=0x426)
	add     sp, #0x4
	strb    r0, [r4, r1]
	mov     r0, #0xc
	pop     {r3,r4,pc}
@ 0x223eacc

.thumb
branch_223eacc: @ 223eacc :thumb
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x208c120
	add     sp, #0x4
	mov     r0, #0x18
	pop     {r3,r4,pc}
@ 0x223eae4

.thumb
branch_223eae4: @ 223eae4 :thumb
	cmp     r0, #0x3
	bne     branch_223eaf8
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	add     sp, #0x4
	mov     r0, #0x18
	pop     {r3,r4,pc}
@ 0x223eaf8

.thumb
branch_223eaf8: @ 223eaf8 :thumb
	mov     r0, #0x17
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223eafe


.align 2


.word 0x3d9 @ 0x223eb00
.word 0x426 @ 0x223eb04
.thumb
Function_223eb08: @ 223eb08 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r5, r1
	mov     r1, #0x7
	bl      0x2019ffc
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     r0, r0, r5
	lsl     r0, r0, #16
	asr     r5, r0, #16
	mov     r0, #0x5a
	lsl     r0, r0, #2
	cmp     r5, r0
	blt     branch_223eb30
	sub     r0, r5, r0
	lsl     r0, r0, #16
	asr     r5, r0, #16
	b       branch_223eb3a
@ 0x223eb30

.thumb
branch_223eb30: @ 223eb30 :thumb
	cmp     r5, #0x0
	bge     branch_223eb3a
	add     r0, r5, r0
	lsl     r0, r0, #16
	asr     r5, r0, #16
.thumb
branch_223eb3a: @ 223eb3a :thumb
	lsl     r3, r5, #16
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	mov     r2, #0x0
	lsr     r3, r3, #16
	bl      0x201c660
	ldr     r0, [pc, #0x4] @ 0x223eb50, (=0x49a)
	strh    r5, [r4, r0]
	pop     {r3-r5,pc}
@ 0x223eb4e


.align 2


.word 0x49a @ 0x223eb50
.thumb
Function_223eb54: @ 223eb54 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x10] @ 0x223eb68, (=0x2240ea8)
	bl      0x20226dc
	cmp     r0, #0x1
	bne     branch_223eb64
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223eb64

.thumb
branch_223eb64: @ 223eb64 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223eb68

.word 0x2240ea8 @ 0x223eb68
.thumb
Function_223eb6c: @ 223eb6c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x10] @ 0x223eb80, (=0x2240eb4)
	bl      0x2022684
	cmp     r0, #0x1
	bne     branch_223eb7c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223eb7c

.thumb
branch_223eb7c: @ 223eb7c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223eb80

.word 0x2240eb4 @ 0x223eb80
.thumb
Function_223eb84: @ 223eb84 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      Function_223eb54
	cmp     r0, #0x1
	bne     branch_223ebb2
	ldr     r1, [pc, #0x164] @ 0x223ecf8, (=0x492)
	mov     r0, #0x1
	strb    r0, [r5, r1]
	mov     r2, #0x0
	add     r0, r1, #0x6
	strh    r2, [r5, r0]
	add     r0, r1, #0x2
	str     r2, [r5, r0]
	mov     r0, r1
	ldr     r2, [pc, #0x154] @ 0x223ecfc, (=0x21bf6bc)
	add     r0, #0xc
	ldrh    r3, [r2, #0x1c]
	add     r1, #0xe
	strh    r3, [r5, r0]
	ldrh    r0, [r2, #0x1e]
	strh    r0, [r5, r1]
.thumb
branch_223ebb2: @ 223ebb2 :thumb
	ldr     r0, [pc, #0x144] @ 0x223ecf8, (=0x492)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_223ebbc
	b       branch_223ecf2
@ 0x223ebbc

.thumb
branch_223ebbc: @ 223ebbc :thumb
	bl      Function_223eb6c
	cmp     r0, #0x1
	beq     branch_223ebc6
	b       branch_223ece4
@ 0x223ebc6

.thumb
branch_223ebc6: @ 223ebc6 :thumb
	mov     r3, #0x50
	ldr     r1, [pc, #0x134] @ 0x223ed00, (=0x49e)
	str     r3, [sp, #0x0]
	ldr     r4, [pc, #0x12c] @ 0x223ecfc, (=0x21bf6bc)
	ldrh    r0, [r5, r1]
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r1, [r5, r1]
	ldrh    r2, [r4, #0x1c]
	mov     r7, #0x80
	ldrh    r4, [r4, #0x1e]
	sub     r1, r3, r1
	sub     r0, r7, r0
	sub     r2, r7, r2
	sub     r3, r3, r4
	bl      0x201d4cc
	mov     r4, r0
	mov     r0, #0x50
	lsl     r1, r4, #1
	bl      0x201d580
	lsl     r0, r0, #8
	mov     r1, #0xb6
	blx     _s32_div_f
	ldr     r1, [pc, #0x108] @ 0x223ed04, (=0x49a)
	asr     r3, r0, #8
	ldsh    r2, [r5, r1]
	add     r0, r5, r1
	add     r2, r2, r3
	strh    r2, [r0, #0x0]
	ldsh    r1, [r5, r1]
	cmp     r1, #0x0
	bge     branch_223ec18
	mov     r1, #0x0
	ldsh    r2, [r0, r1]
	mov     r1, r7
	add     r1, #0xe8
	add     r1, r2, r1
	strh    r1, [r0, #0x0]
	b       branch_223ec28
@ 0x223ec18

.thumb
branch_223ec18: @ 223ec18 :thumb
	mov     r2, r7
	add     r2, #0xe8
	cmp     r1, r2
	blt     branch_223ec28
	mov     r1, #0x0
	ldsh    r1, [r0, r1]
	sub     r1, r1, r2
	strh    r1, [r0, #0x0]
.thumb
branch_223ec28: @ 223ec28 :thumb
	ldr     r3, [pc, #0xd8] @ 0x223ed04, (=0x49a)
	ldr     r0, [r5, #0x0]
	ldrh    r3, [r5, r3]
	mov     r1, #0x7
	mov     r2, #0x0
	bl      0x201c660
	ldr     r0, [pc, #0xd0] @ 0x223ed08, (=0x1f6)
	mov     r1, r6
	blx     _s32_div_f
	mov     r6, r0
	cmp     r4, #0x0
	ble     branch_223ec8c
	ldr     r0, [pc, #0xc4] @ 0x223ed0c, (=0x498)
	ldsh    r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_223ec66
	mov     r0, r4
	mov     r1, r6
	blx     _s32_div_f
	ldr     r1, [pc, #0xb4] @ 0x223ed0c, (=0x498)
	strh    r0, [r5, r1]
	mov     r0, r4
	mov     r1, r6
	blx     _s32_div_f
	ldr     r0, [pc, #0xac] @ 0x223ed10, (=0x494)
	str     r1, [r5, r0]
	b       branch_223ecd4
@ 0x223ec66

.thumb
branch_223ec66: @ 223ec66 :thumb
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	mov     r1, r6
	add     r0, r0, r4
	blx     _s32_div_f
	ldr     r1, [pc, #0x98] @ 0x223ed0c, (=0x498)
	ldsh    r2, [r5, r1]
	add     r0, r2, r0
	strh    r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	mov     r1, r6
	add     r0, r0, r4
	blx     _s32_div_f
	ldr     r0, [pc, #0x88] @ 0x223ed10, (=0x494)
	str     r1, [r5, r0]
	b       branch_223ecd4
@ 0x223ec8c

.thumb
branch_223ec8c: @ 223ec8c :thumb
	bge     branch_223ecd4
	ldr     r0, [pc, #0x7c] @ 0x223ed0c, (=0x498)
	ldsh    r1, [r5, r0]
	cmp     r1, #0x0
	ble     branch_223ecb0
	mov     r0, r4
	mov     r1, r6
	blx     _s32_div_f
	ldr     r1, [pc, #0x6c] @ 0x223ed0c, (=0x498)
	strh    r0, [r5, r1]
	mov     r0, r4
	mov     r1, r6
	blx     _s32_div_f
	ldr     r0, [pc, #0x64] @ 0x223ed10, (=0x494)
	str     r1, [r5, r0]
	b       branch_223ecd4
@ 0x223ecb0

.thumb
branch_223ecb0: @ 223ecb0 :thumb
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	mov     r1, r6
	add     r0, r0, r4
	blx     _s32_div_f
	ldr     r1, [pc, #0x4c] @ 0x223ed0c, (=0x498)
	ldsh    r2, [r5, r1]
	add     r0, r2, r0
	strh    r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	mov     r1, r6
	add     r0, r0, r4
	blx     _s32_div_f
	ldr     r0, [pc, #0x3c] @ 0x223ed10, (=0x494)
	str     r1, [r5, r0]
.thumb
branch_223ecd4: @ 223ecd4 :thumb
	ldr     r1, [pc, #0x24] @ 0x223ecfc, (=0x21bf6bc)
	ldr     r0, [pc, #0x28] @ 0x223ed00, (=0x49e)
	ldrh    r2, [r1, #0x1c]
	strh    r2, [r5, r0]
	ldrh    r1, [r1, #0x1e]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r5, r0]
	b       branch_223ecee
@ 0x223ece4

.thumb
branch_223ece4: @ 223ece4 :thumb
	ldr     r0, [pc, #0x10] @ 0x223ecf8, (=0x492)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	.hword  0x1d80 @ add r0, r0, #0x6
	strh    r1, [r5, r0]
.thumb
branch_223ecee: @ 223ecee :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223ecf2

.thumb
branch_223ecf2: @ 223ecf2 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223ecf6


.align 2


.word 0x492 @ 0x223ecf8
.word 0x21bf6bc @ 0x223ecfc
.word 0x49e @ 0x223ed00
.word 0x49a @ 0x223ed04
.word 0x1f6 @ 0x223ed08
.word 0x498 @ 0x223ed0c
.word 0x494 @ 0x223ed10
.thumb
Function_223ed14: @ 223ed14 :thumb
	push    {r4,lr}
	mov     r1, #0x24
	mov     r4, r0
	bl      Function_223eb84
	ldr     r1, [pc, #0x40] @ 0x223ed60, (=0x498)
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	ble     branch_223ed42
	mov     r0, r4
	mov     r1, #0x40
	bl      Function_223ed64
	cmp     r0, #0x1
	ldr     r0, [pc, #0x2c] @ 0x223ed60, (=0x498)
	bne     branch_223ed3a
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	b       branch_223ed3c
@ 0x223ed3a

.thumb
branch_223ed3a: @ 223ed3a :thumb
	mov     r1, #0x0
.thumb
branch_223ed3c: @ 223ed3c :thumb
	strh    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223ed42

.thumb
branch_223ed42: @ 223ed42 :thumb
	bge     branch_223ed5e
	mov     r0, r4
	mov     r1, #0x80
	bl      Function_223ed64
	cmp     r0, #0x1
	ldr     r0, [pc, #0x10] @ 0x223ed60, (=0x498)
	bne     branch_223ed58
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_223ed5a
@ 0x223ed58

.thumb
branch_223ed58: @ 223ed58 :thumb
	mov     r1, #0x0
.thumb
branch_223ed5a: @ 223ed5a :thumb
	strh    r1, [r4, r0]
	mov     r0, #0x1
.thumb
branch_223ed5e: @ 223ed5e :thumb
	pop     {r4,pc}
@ 0x223ed60

.word 0x498 @ 0x223ed60
.thumb
Function_223ed64: @ 223ed64 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r0
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r5, #0xc
	mov     r0, r3
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	mov     r2, r0
	mul     r2, r5
	add     r0, r3, r2
	ldrh    r0, [r0, #0xa]
	add     r3, sp, #0x10
	strh    r0, [r3, #0x2]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r2, r0
	add     r2, #0x64
	ldrb    r2, [r2, #0x0]
	mul     r5, r2
	add     r0, r0, r5
	ldrh    r0, [r0, #0x8]
	strh    r0, [r3, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	add     r0, sp, #0x10
	str     r1, [sp, #0x4]
	add     r0, #0x2
	str     r0, [sp, #0x8]
	add     r0, sp, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldrh    r2, [r3, #0x2]
	ldrh    r3, [r3, #0x0]
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2001408
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x64
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mov     r5, r2
	mul     r5, r1
	add     r1, sp, #0x10
	add     r2, r0, r5
	ldrh    r3, [r1, #0x2]
	ldrh    r0, [r2, #0xa]
	cmp     r3, r0
	bne     branch_223ede2
	ldrh    r1, [r1, #0x0]
	ldrh    r0, [r2, #0x8]
	cmp     r1, r0
	bne     branch_223ede2
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x223ede2

.thumb
branch_223ede2: @ 223ede2 :thumb
	add     r2, sp, #0x10
	ldrh    r2, [r2, #0x0]
	mov     r0, r4
	add     r0, #0xf0
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #4
	add     r2, #0x18
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb1
	asr     r2, r2, #16
	bl      0x200d4c4
	mov     r0, r4
	add     r0, #0xc4
	ldr     r6, [r0, #0x0]
	add     r2, sp, #0x10
	mov     r0, r6
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	ldrh    r5, [r2, #0x2]
	mov     r1, #0xc
	mov     r3, r0
	mul     r3, r1
	add     r0, r6, r3
	strh    r5, [r0, #0xa]
	add     r4, #0xc4
	ldr     r3, [r4, #0x0]
	ldrh    r2, [r2, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	mul     r1, r0
	add     r0, r3, r1
	strh    r2, [r0, #0x8]
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x223ee2e


.align 2, 0


.thumb
Function_223ee30: @ 223ee30 :thumb
	push    {r4,lr}
	mov     r1, #0x24
	mov     r4, r0
	bl      Function_223eb84
	ldr     r1, [pc, #0x40] @ 0x223ee7c, (=0x498)
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	ble     branch_223ee5e
	mov     r0, r4
	mov     r1, #0x40
	bl      Function_223ee80
	cmp     r0, #0x1
	ldr     r0, [pc, #0x2c] @ 0x223ee7c, (=0x498)
	bne     branch_223ee56
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	b       branch_223ee58
@ 0x223ee56

.thumb
branch_223ee56: @ 223ee56 :thumb
	mov     r1, #0x0
.thumb
branch_223ee58: @ 223ee58 :thumb
	strh    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223ee5e

.thumb
branch_223ee5e: @ 223ee5e :thumb
	bge     branch_223ee7a
	mov     r0, r4
	mov     r1, #0x80
	bl      Function_223ee80
	cmp     r0, #0x1
	ldr     r0, [pc, #0x10] @ 0x223ee7c, (=0x498)
	bne     branch_223ee74
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_223ee76
@ 0x223ee74

.thumb
branch_223ee74: @ 223ee74 :thumb
	mov     r1, #0x0
.thumb
branch_223ee76: @ 223ee76 :thumb
	strh    r1, [r4, r0]
	mov     r0, #0x1
.thumb
branch_223ee7a: @ 223ee7a :thumb
	pop     {r4,pc}
@ 0x223ee7c

.word 0x498 @ 0x223ee7c
.thumb
Function_223ee80: @ 223ee80 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r0
	add     r0, #0xc4
	ldr     r3, [r0, #0x0]
	mov     r5, #0xc
	mov     r0, r3
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	mov     r2, r0
	mul     r2, r5
	add     r0, r3, r2
	ldrh    r0, [r0, #0xa]
	add     r3, sp, #0x10
	strh    r0, [r3, #0x2]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r2, r0
	add     r2, #0x64
	ldrb    r2, [r2, #0x0]
	mul     r5, r2
	add     r0, r0, r5
	ldrh    r0, [r0, #0x8]
	strh    r0, [r3, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	add     r0, sp, #0x10
	str     r1, [sp, #0x4]
	add     r0, #0x2
	str     r0, [sp, #0x8]
	add     r0, sp, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldrh    r2, [r3, #0x2]
	ldrh    r3, [r3, #0x0]
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2001408
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x64
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mov     r5, r2
	mul     r5, r1
	add     r1, sp, #0x10
	add     r2, r0, r5
	ldrh    r3, [r1, #0x2]
	ldrh    r0, [r2, #0xa]
	cmp     r3, r0
	bne     branch_223eefe
	ldrh    r1, [r1, #0x0]
	ldrh    r0, [r2, #0x8]
	cmp     r1, r0
	bne     branch_223eefe
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x223eefe

.thumb
branch_223eefe: @ 223eefe :thumb
	add     r2, sp, #0x10
	ldrh    r2, [r2, #0x0]
	mov     r0, r4
	add     r0, #0xf4
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #4
	add     r2, #0x10
	lsl     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb1
	asr     r2, r2, #16
	bl      0x200d4c4
	mov     r0, r4
	add     r0, #0xc4
	ldr     r6, [r0, #0x0]
	add     r2, sp, #0x10
	mov     r0, r6
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	ldrh    r5, [r2, #0x2]
	mov     r1, #0xc
	mov     r3, r0
	mul     r3, r1
	add     r0, r6, r3
	strh    r5, [r0, #0xa]
	add     r4, #0xc4
	ldr     r3, [r4, #0x0]
	ldrh    r2, [r2, #0x0]
	mov     r0, r3
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	mul     r1, r0
	add     r0, r3, r1
	strh    r2, [r0, #0x8]
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x223ef4a


.align 2, 0


.thumb
Function_223ef4c: @ 223ef4c :thumb
	push    {r4,lr}
	mov     r1, #0x12
	mov     r4, r0
	bl      Function_223eb84
	ldr     r1, [pc, #0x40] @ 0x223ef98, (=0x498)
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	ble     branch_223ef7a
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_223ef9c
	cmp     r0, #0x1
	ldr     r0, [pc, #0x2c] @ 0x223ef98, (=0x498)
	bne     branch_223ef72
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	b       branch_223ef74
@ 0x223ef72

.thumb
branch_223ef72: @ 223ef72 :thumb
	mov     r1, #0x0
.thumb
branch_223ef74: @ 223ef74 :thumb
	strh    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223ef7a

.thumb
branch_223ef7a: @ 223ef7a :thumb
	bge     branch_223ef96
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_223ef9c
	cmp     r0, #0x1
	ldr     r0, [pc, #0x10] @ 0x223ef98, (=0x498)
	bne     branch_223ef90
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_223ef92
@ 0x223ef90

.thumb
branch_223ef90: @ 223ef90 :thumb
	mov     r1, #0x0
.thumb
branch_223ef92: @ 223ef92 :thumb
	strh    r1, [r4, r0]
	mov     r0, #0x1
.thumb
branch_223ef96: @ 223ef96 :thumb
	pop     {r4,pc}
@ 0x223ef98

.word 0x498 @ 0x223ef98
.thumb
Function_223ef9c: @ 223ef9c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r6, r1
	bl      0x2001dc4
	mov     r4, r0
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      0x2001d44
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2001dc4
	cmp     r4, r0
	beq     branch_223efcc
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223efcc

.thumb
branch_223efcc: @ 223efcc :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223efd0

.thumb
Function_223efd0: @ 223efd0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x12
	mov     r5, r0
	mov     r6, r2
	bl      Function_223eb84
	ldr     r7, [pc, #0x58] @ 0x223f038, (=0x498)
	mov     r1, #0x0
	ldsh    r2, [r5, r7]
	ldsh    r3, [r4, r1]
	cmp     r2, #0x0
	ble     branch_223f010
	.hword  0x1e50 @ sub r0, r2, #0x1
	strh    r0, [r5, r7]
	ldsh    r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldsh    r0, [r4, r1]
	cmp     r0, r6
	ble     branch_223effe
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_223effe: @ 223effe :thumb
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	cmp     r1, r3
	beq     branch_223f034
	ldr     r0, [pc, #0x34] @ 0x223f03c, (=0x638)
	bl      0x2005748
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223f010

.thumb
branch_223f010: @ 223f010 :thumb
	bge     branch_223f034
	add     r0, r2, #0x1
	strh    r0, [r5, r7]
	ldsh    r0, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	bgt     branch_223f024
	strh    r6, [r4, #0x0]
.thumb
branch_223f024: @ 223f024 :thumb
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	cmp     r1, r3
	beq     branch_223f034
	ldr     r0, [pc, #0xc] @ 0x223f03c, (=0x638)
	bl      0x2005748
	mov     r0, #0x1
.thumb
branch_223f034: @ 223f034 :thumb
	pop     {r3-r7,pc}
@ 0x223f036


.align 2


.word 0x498 @ 0x223f038
.word 0x638 @ 0x223f03c
.thumb
Function_223f040: @ 223f040 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	str     r0, [sp, #0x4]
	mov     r0, #0x12
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, r4, #0x4
	mov     r2, #0x2
	mov     r3, #0xe
	bl      0x201a7e8
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x144] @ 0x223f1bc, (=0x133)
	mov     r1, r4
	str     r0, [sp, #0x10]
	mov     r2, #0x0
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	mov     r3, r2
	bl      0x201a7e8
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x128] @ 0x223f1c0, (=0x1f3)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x24
	mov     r2, #0x2
	mov     r3, #0x0
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x108] @ 0x223f1c4, (=0x25f)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x34
	mov     r2, #0x0
	mov     r3, #0x6
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0xd
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xe8] @ 0x223f1c4, (=0x25f)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x44
	mov     r2, #0x0
	mov     r3, #0x6
	bl      0x201a7e8
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xc8] @ 0x223f1c8, (=0x297)
	mov     r1, r4
	str     r0, [sp, #0x10]
	mov     r2, #0x0
	ldr     r0, [r4, #0x0]
	add     r1, #0x54
	mov     r3, r2
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xac] @ 0x223f1cc, (=0x2af)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x64
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x8c] @ 0x223f1d0, (=0x337)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x74
	mov     r2, #0x0
	mov     r3, #0x13
	bl      0x201a7e8
	mov     r3, #0x1
	mov     r1, r4
	str     r3, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x6c] @ 0x223f1d4, (=0x367)
	add     r1, #0x84
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x0
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x7
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x54] @ 0x223f1d8, (=0x387)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x94
	mov     r2, #0x0
	mov     r3, #0x18
	bl      0x201a7e8
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x30] @ 0x223f1d8, (=0x387)
	mov     r2, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r4, #0xa4
	mov     r1, r4
	mov     r3, #0x1
	bl      0x201a7e8
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f1ba


.align 2


.word 0x133 @ 0x223f1bc
.word 0x1f3 @ 0x223f1c0
.word 0x25f @ 0x223f1c4
.word 0x297 @ 0x223f1c8
.word 0x2af @ 0x223f1cc
.word 0x337 @ 0x223f1d0
.word 0x367 @ 0x223f1d4
.word 0x387 @ 0x223f1d8
.thumb
Function_223f1dc: @ 223f1dc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223f1e2: @ 223f1e2 :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	bl      0x201a8fc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xb
	bcc     branch_223f1e2
	pop     {r3-r5,pc}
@ 0x223f1f6


.align 2, 0


.thumb
Function_223f1f8: @ 223f1f8 :thumb
	push    {r3-r7,lr}
	ldr     r2, [pc, #0x34] @ 0x223f230, (=0x18b)
	mov     r5, r0
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x6
	bl      0x200b144
	ldr     r7, [pc, #0x28] @ 0x223f234, (=0x404)
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_223f20e: @ 223f20e :thumb
	mov     r0, r6
	mov     r1, r4
	bl      0x200b1ec
	lsl     r1, r4, #2
	add     r1, r5, r1
	str     r0, [r1, r7]
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x8
	bcc     branch_223f20e
	mov     r0, r6
	bl      0x200b190
	pop     {r3-r7,pc}
@ 0x223f22e


.align 2


.word 0x18b @ 0x223f230
.word 0x404 @ 0x223f234
.thumb
Function_223f238: @ 223f238 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x1c] @ 0x223f258, (=0x404)
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223f240: @ 223f240 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      0x20237bc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x8
	bcc     branch_223f240
	pop     {r4-r6,pc}
@ 0x223f256


.align 2


.word 0x404 @ 0x223f258
.thumb
Function_223f25c: @ 223f25c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, #0x0
	mov     r6, #0xd
	mov     r7, #0x1
.thumb
branch_223f268: @ 223f268 :thumb
	str     r6, [sp, #0x0]
	ldr     r2, [pc, #0x4c] @ 0x223f2b8, (=0x1ff)
	str     r7, [sp, #0x4]
	add     r2, r4, r2
	lsl     r2, r2, #16
	lsl     r3, r4, #24
	str     r7, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x2019cb8
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	ldr     r2, [pc, #0x2c] @ 0x223f2bc, (=0x223)
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	add     r2, r4, r2
	str     r0, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r4, #24
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x2019cb8
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xc
	bcc     branch_223f268
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223f2b6


.align 2


.word 0x1ff @ 0x223f2b8
.word 0x223 @ 0x223f2bc
.thumb
Function_223f2c0: @ 223f2c0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r2
	mov     r2, r0
	mov     r6, r1
	bl      0x2002d7c
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x223f2f8, (=0x10200)
	lsr     r3, r3, #1
	add     r5, #0x24
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r6
	sub     r3, r4, r3
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223f2f6


.align 2


.word 0x10200 @ 0x223f2f8
.thumb
Function_223f2fc: @ 223f2fc :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x24
	mov     r1, #0x0
	bl      0x201ada4
	mov     r2, r4
	add     r2, #0xc4
	ldr     r6, [r2, #0x0]
	ldr     r1, [pc, #0x7c] @ 0x223f38c, (=0x429)
	mov     r2, r6
	add     r2, #0x64
	ldrb    r3, [r2, #0x0]
	mov     r2, #0xc
	add     r0, r4, r1
	mov     r5, r3
	mul     r5, r2
	add     r3, r6, r5
	ldrb    r3, [r3, #0xc]
	lsl     r3, r3, #2
	add     r5, r4, r3
	mov     r3, r1
	sub     r3, #0x25
	ldr     r7, [r5, r3]
	ldrb    r3, [r0, #0x0]
	sub     r1, #0x25
	mov     r5, r3
	mul     r5, r2
	add     r3, r6, r5
	ldrb    r3, [r3, #0xc]
	lsl     r3, r3, #2
	add     r3, r4, r3
	ldr     r1, [r3, r1]
	ldrb    r3, [r0, #0x1]
	ldrb    r0, [r0, #0x3]
	cmp     r3, #0x0
	bne     branch_223f35e
	mul     r2, r0
	add     r2, #0x92
	lsl     r0, r2, #16
	lsr     r5, r0, #16
	mov     r2, r5
	sub     r2, #0x60
	lsl     r2, r2, #16
	mov     r0, r4
	lsr     r2, r2, #16
	bl      Function_223f2c0
	b       branch_223f376
@ 0x223f35e

.thumb
branch_223f35e: @ 223f35e :thumb
	mul     r2, r0
	mov     r0, #0x92
	sub     r0, r0, r2
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r2, r5
	add     r2, #0x60
	lsl     r2, r2, #16
	mov     r0, r4
	lsr     r2, r2, #16
	bl      Function_223f2c0
.thumb
branch_223f376: @ 223f376 :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_223f2c0
	add     r4, #0x24
	mov     r0, r4
	bl      0x201accc
	pop     {r3-r7,pc}
@ 0x223f38a


.align 2


.word 0x429 @ 0x223f38c
.thumb
Function_223f390: @ 223f390 :thumb
	push    {r3-r5,lr}
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	mov     r1, #0x15
	mov     r2, #0x6
	bl      0x2006cb8
	mov     r1, r5
	mov     r4, r0
	blx     0x20a7164
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223f3ac

.thumb
Function_223f3ac: @ 223f3ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r1
	add     r1, sp, #0x18
	mov     r5, r0
	mov     r6, r2
	bl      Function_223f390
	mov     r7, r0
	cmp     r6, #0x1
	bne     branch_223f3d8
	mov     r0, r5
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r4
	add     r0, r1, r0
	ldrb    r0, [r0, #0xc]
	lsl     r0, r0, #5
	add     r0, #0x10
	lsl     r0, r0, #24
	b       branch_223f3e8
@ 0x223f3d8

.thumb
branch_223f3d8: @ 223f3d8 :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r4
	add     r0, r1, r0
	ldrb    r0, [r0, #0xc]
	lsl     r0, r0, #29
.thumb
branch_223f3e8: @ 223f3e8 :thumb
	lsr     r2, r0, #24
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	ldr     r1, [pc, #0x40] @ 0x223f434, (=0x427)
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldrb    r1, [r5, r1]
	mov     r3, r1
	mul     r3, r4
	add     r0, r0, r3
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0xa
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	ldr     r1, [r1, #0x14]
	add     r0, #0x54
	mov     r3, #0x0
	bl      0x201addc
	add     r5, #0x54
	mov     r0, r5
	bl      0x201a9a4
	mov     r0, #0x6
	mov     r1, r7
	bl      0x2018238
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223f434

.word 0x427 @ 0x223f434
.thumb
Function_223f438: @ 223f438 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	add     r1, sp, #0x1c
	bl      Function_223f390
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r0, #0x54
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r0, [pc, #0x8c] @ 0x223f4e0, (=0x424)
	mov     r4, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bls     branch_223f4cc
	mov     r7, #0x1
	mov     r6, r5
	lsl     r7, r7, #8
	add     r6, #0x54
.thumb
branch_223f462: @ 223f462 :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x64
	ldrb    r1, [r1, #0x0]
	cmp     r4, r1
	bne     branch_223f482
	mov     r1, #0xc
	mul     r1, r4
	add     r0, r0, r1
	ldrb    r0, [r0, #0xc]
	lsl     r0, r0, #5
	add     r0, #0x10
	lsl     r0, r0, #24
	b       branch_223f48c
@ 0x223f482

.thumb
branch_223f482: @ 223f482 :thumb
	mov     r1, #0xc
	mul     r1, r4
	add     r0, r0, r1
	ldrb    r0, [r0, #0xc]
	lsl     r0, r0, #29
.thumb
branch_223f48c: @ 223f48c :thumb
	lsr     r2, r0, #24
	str     r7, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x223f4e4, (=0x427)
	ldrb    r3, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r5, r0]
	mov     r1, r0
	mul     r1, r4
	add     r0, r3, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0xa
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	ldr     r1, [r1, #0x14]
	mov     r3, #0x0
	bl      0x201addc
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [pc, #0x18] @ 0x223f4e0, (=0x424)
	ldrb    r0, [r5, r0]
	cmp     r4, r0
	bcc     branch_223f462
.thumb
branch_223f4cc: @ 223f4cc :thumb
	add     r5, #0x54
	mov     r0, r5
	bl      0x201a9a4
	ldr     r1, [sp, #0x18]
	mov     r0, #0x6
	bl      0x2018238
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x223f4e0

.word 0x424 @ 0x223f4e0
.word 0x427 @ 0x223f4e4
.thumb
Function_223f4e8: @ 223f4e8 :thumb
	push    {r3-r5,lr}
	lsl     r1, r1, #16
	mov     r4, r2
	lsr     r1, r1, #16
	mov     r2, #0x0
	mov     r5, r0
	bl      Function_223be5c
	mov     r2, r0
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x200b70c
	pop     {r3-r5,pc}
@ 0x223f508

.thumb
Function_223f508: @ 223f508 :thumb
	push    {r3-r5,lr}
	lsl     r1, r1, #16
	mov     r4, r2
	lsr     r1, r1, #16
	mov     r2, #0x0
	mov     r5, r0
	bl      Function_223be5c
	mov     r2, r0
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x200b77c
	pop     {r3-r5,pc}
@ 0x223f528

.thumb
Function_223f528: @ 223f528 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x223f57c, (=0xffff)
	mov     r6, r1
	cmp     r6, r0
	beq     branch_223f54a
	mov     r0, #0x82
	mov     r1, #0x6
	bl      0x2023790
	mov     r1, r6
	mov     r2, #0x6
	mov     r4, r0
	bl      0x207cfc8
	b       branch_223f558
@ 0x223f54a

.thumb
branch_223f54a: @ 223f54a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5e
	bl      0x200b1ec
	mov     r4, r0
.thumb
branch_223f558: @ 223f558 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x223f580, (=0xf0e00)
	add     r5, #0x14
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x28
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223f57c

.word 0xffff @ 0x223f57c
.word 0xf0e00 @ 0x223f580
.thumb
Function_223f584: @ 223f584 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r5
	mov     r0, r1
	add     r4, #0x14
	bl      0x207d268
	str     r0, [sp, #0x10]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x62
	bl      0x200b1ec
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x220] @ 0x223f7d0, (=0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x56
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1f4] @ 0x223f7d0, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, r6
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x59
	bl      0x200b1ec
	mov     r6, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c8] @ 0x223f7d0, (=0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r3, #0x60
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x57
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x19c] @ 0x223f7d0, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, r6
	mov     r3, #0x60
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x58
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x16c] @ 0x223f7d0, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, r6
	mov     r3, #0x60
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	bl      0x20790dc
	mov     r7, r0
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5a
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r7
	mov     r3, #0x2
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x108] @ 0x223f7d0, (=0xf0e00)
	mov     r2, #0xfe
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r3, #0x30
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2
	bl      0x20790c4
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	cmp     r7, #0x1
	bhi     branch_223f6fa
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x18
	bl      0x200b1ec
	b       branch_223f706
@ 0x223f6fa

.thumb
branch_223f6fa: @ 223f6fa :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5b
	bl      0x200b1ec
.thumb
branch_223f706: @ 223f706 :thumb
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, r7
	mov     r3, #0x3
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x90] @ 0x223f7d0, (=0xf0e00)
	mov     r2, #0xfe
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r3, #0xa0
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	mov     r1, #0x4
	bl      0x20790c4
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	bne     branch_223f770
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x18
	bl      0x200b1ec
	b       branch_223f77c
@ 0x223f770

.thumb
branch_223f770: @ 223f770 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5b
	bl      0x200b1ec
.thumb
branch_223f77c: @ 223f77c :thumb
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, r7
	mov     r3, #0x3
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x223f7d0, (=0xf0e00)
	mov     r2, #0xfe
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r3, #0xa0
	bl      0x201d78c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223f7ce


.align 2


.word 0xf0e00 @ 0x223f7d0
.thumb
Function_223f7d4: @ 223f7d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x26
	bl      0x200b1ec
	mov     r1, #0xff
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x25
	bl      0x200b1ec
	mov     r1, #0x1
	lsl     r1, r1, #10
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x223f7fe


.align 2, 0


.thumb
Function_223f800: @ 223f800 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xff
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20237bc
	mov     r0, #0x1
	lsl     r0, r0, #10
	ldr     r0, [r4, r0]
	bl      0x20237bc
	pop     {r4,pc}
@ 0x223f81a


.align 2, 0


.thumb
Function_223f81c: @ 223f81c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r1, [sp, #0x10]
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r4, r2
	mov     r1, r0
	add     r1, #0x64
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mov     r6, r3
	mul     r1, r2
	add     r0, r0, r1
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x3
	str     r4, [sp, #0x0]
	bne     branch_223f858
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r6, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	add     r0, r5, #0x4
	mov     r3, #0x73
	bl      0x201d78c
	b       branch_223f86e
@ 0x223f858

.thumb
branch_223f858: @ 223f858 :thumb
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r6, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	add     r0, r5, #0x4
	mov     r3, #0x6d
	bl      0x201d78c
.thumb
branch_223f86e: @ 223f86e :thumb
	mov     r0, #0xa
	mov     r1, #0x6
	bl      0x2023790
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x10]
	mov     r3, #0x3
	bl      0x200b60c
	mov     r0, #0x46
	mov     r2, #0x1
	lsl     r0, r0, #2
	lsl     r2, r2, #10
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	mov     r1, r7
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r0
	bl      0x2002d7c
	mov     r3, r0
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r4, #0x86
	str     r6, [sp, #0x8]
	mov     r1, #0x0
	add     r0, r5, #0x4
	mov     r2, r7
	sub     r3, r4, r3
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r7
	bl      0x20237bc
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223f8ce


.align 2, 0


.thumb
Function_223f8d0: @ 223f8d0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r4, r2
	mov     r5, r0
	mov     r0, #0x69
	ldrh    r2, [r6, #0x0]
	lsl     r0, r0, #2
	cmp     r2, r0
	bcs     branch_223f91a
	mov     r1, r0
	sub     r1, #0x5d
	sub     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	add     r3, r5, #0x4
	str     r3, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	add     r3, r4, #0x5
	str     r3, [sp, #0xc]
	sub     r0, #0x94
	ldr     r0, [r5, r0]
	mov     r3, r1
	bl      0x200c648
	lsl     r2, r4, #16
	ldrh    r1, [r6, #0x2]
	ldr     r3, [pc, #0x38] @ 0x223f948, (=0x10200)
	mov     r0, r5
	lsr     r2, r2, #16
	bl      Function_223f81c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223f91a

.thumb
branch_223f91a: @ 223f91a :thumb
	.hword  0x1e41 @ sub r1, r0, #0x1
	sub     r1, r2, r1
	add     r2, r5, #0x4
	str     r2, [sp, #0x0]
	mov     r2, #0x10
	str     r2, [sp, #0x4]
	add     r2, r4, #0x5
	str     r2, [sp, #0x8]
	sub     r0, #0x94
	lsl     r1, r1, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #16
	mov     r2, #0x2
	mov     r3, #0x1
	bl      0x200c5bc
	mov     r0, r5
	mov     r1, r4
	bl      Function_223f9b0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223f946


.align 2


.word 0x10200 @ 0x223f948
.thumb
Function_223f94c: @ 223f94c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	mov     r6, r2
	bl      0x207d344
	mov     r1, #0x2
	mov     r2, r0
	str     r1, [sp, #0x0]
	add     r0, r5, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r0, r6, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	.hword  0x1c52 @ add r2, r2, #0x1
	mov     r3, r1
	bl      0x200c648
	lsl     r2, r6, #16
	ldrh    r1, [r4, #0x2]
	ldr     r3, [pc, #0xc] @ 0x223f990, (=0x10200)
	mov     r0, r5
	lsr     r2, r2, #16
	bl      Function_223f81c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223f98e


.align 2


.word 0x10200 @ 0x223f990
.thumb
Function_223f994: @ 223f994 :thumb
	push    {r3-r5,lr}
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	mov     r1, #0x26
	mov     r2, #0x6
	bl      0x2006cb8
	mov     r1, r5
	mov     r4, r0
	blx     0x20a7164
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223f9b0

.thumb
Function_223f9b0: @ 223f9b0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r4, r1
	add     r1, sp, #0x18
	mov     r5, r0
	bl      Function_223f994
	mov     r6, r0
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r1, r4, #16
	str     r0, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	lsr     r1, r1, #16
	str     r1, [sp, #0xc]
	mov     r1, #0x18
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	add     r0, r5, #0x4
	ldr     r1, [r1, #0x14]
	mov     r2, #0x28
	bl      0x201addc
	mov     r0, #0x6
	mov     r1, r6
	bl      0x2018238
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x223f9f0

.thumb
Function_223f9f0: @ 223f9f0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x45
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x29
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	mov     r1, #0x0
	lsl     r3, r4, #16
	str     r0, [sp, #0x4]
	add     r0, r5, #0x4
	mov     r2, r1
	lsr     r3, r3, #16
	bl      0x201ae78
	mov     r1, #0x0
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x223fa40, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	add     r0, r5, #0x4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223fa3e


.align 2


.word 0x10200 @ 0x223fa40
.thumb
Function_223fa44: @ 223fa44 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r4, r1
	add     r1, sp, #0x18
	mov     r5, r0
	bl      Function_223f994
	mov     r6, r0
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r1, #0x60
	str     r1, [sp, #0x8]
	lsl     r1, r4, #16
	lsr     r1, r1, #16
	str     r1, [sp, #0xc]
	mov     r1, #0x28
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	add     r0, r5, #0x4
	ldr     r1, [r1, #0x14]
	mov     r3, r2
	bl      0x201addc
	mov     r0, #0x6
	mov     r1, r6
	bl      0x2018238
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x223fa86


.align 2, 0


.thumb
Function_223fa88: @ 223fa88 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200b1ec
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x10
	ldr     r0, [r4, r1]
	mov     r1, #0x6
	bl      0x200b1ec
	mov     r1, #0x4a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x14
	ldr     r0, [r4, r1]
	mov     r1, #0x10
	bl      0x200b1ec
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r0, [r4, r1]
	mov     r1, #0x5f
	bl      0x200b1ec
	mov     r1, #0x13
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x60
	bl      0x200b1ec
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x20
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x200b1ec
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x24
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	bl      0x200b1ec
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x28
	ldr     r0, [r4, r1]
	mov     r1, #0x12
	bl      0x200b1ec
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	sub     r1, #0x2c
	ldr     r0, [r4, r1]
	mov     r1, #0x3
	bl      0x200b1ec
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x30
	ldr     r0, [r4, r1]
	mov     r1, #0x4
	bl      0x200b1ec
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x34
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      0x200b1ec
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x38
	ldr     r0, [r4, r1]
	mov     r1, #0x8
	bl      0x200b1ec
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x223fb50

.thumb
Function_223fb50: @ 223fb50 :thumb
	push    {r4-r6,lr}
	mov     r6, #0x49
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_223fb5a: @ 223fb5a :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      0x20237bc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xc
	bcc     branch_223fb5a
	pop     {r4-r6,pc}
@ 0x223fb70

.thumb
Function_223fb70: @ 223fb70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r6, r1
	mov     r1, r0
	add     r1, #0x64
	mov     r7, r2
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mul     r1, r2
	add     r0, r0, r1
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x4
	bne     branch_223fbc0
	lsl     r0, r7, #1
	mov     r3, #0x17
	sub     r1, r3, r0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x8
	lsl     r0, r0, #24
	str     r1, [sp, #0x4]
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x1cc] @ 0x223fd78, (=0x337)
	mov     r1, r5
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, #0xb4
	mov     r2, #0x0
	bl      0x201a7e8
	mov     r0, #0x4
	str     r0, [sp, #0x14]
	b       branch_223fbf0
@ 0x223fbc0

.thumb
branch_223fbc0: @ 223fbc0 :thumb
	lsl     r0, r7, #1
	mov     r1, #0x17
	sub     r1, r1, r0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x7
	lsl     r0, r0, #24
	str     r1, [sp, #0x4]
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x19c] @ 0x223fd78, (=0x337)
	mov     r1, r5
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, #0xb4
	mov     r2, #0x0
	mov     r3, #0x18
	bl      0x201a7e8
	mov     r0, #0x3
	str     r0, [sp, #0x14]
.thumb
branch_223fbf0: @ 223fbf0 :thumb
	mov     r0, r7
	mov     r1, #0x6
	bl      0x2013a04
	mov     r1, #0x55
	lsl     r1, r1, #2
	mov     r4, #0x0
	str     r0, [r5, r1]
	cmp     r7, #0x0
	ble     branch_223fc2c
.thumb
branch_223fc04: @ 223fc04 :thumb
	ldrb    r0, [r6, r4]
	bl      Function_223d84c
	ldrb    r1, [r6, r4]
	mov     r2, r0
	mov     r0, #0x55
	lsl     r1, r1, #2
	add     r3, r5, r1
	mov     r1, #0x49
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r3, r1]
	bl      0x2013a6c
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r7
	blt     branch_223fc04
.thumb
branch_223fc2c: @ 223fc2c :thumb
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, r5
	add     r0, #0xb4
	str     r0, [sp, #0x20]
	add     r0, sp, #0x1c
	strb    r1, [r0, #0x8]
	mov     r1, #0x1
	strb    r1, [r0, #0x9]
	strb    r7, [r0, #0xa]
	ldrb    r2, [r0, #0xb]
	mov     r1, #0xf
	bic     r2, r1
	strb    r2, [r0, #0xb]
	ldrb    r2, [r0, #0xb]
	mov     r1, #0x30
	bic     r2, r1
	strb    r2, [r0, #0xb]
	cmp     r7, #0x4
	ldrb    r2, [r0, #0xb]
	bcc     branch_223fc68
	mov     r1, #0xc0
	bic     r2, r1
	mov     r1, #0x40
	orr     r1, r2
	strb    r1, [r0, #0xb]
	b       branch_223fc6e
@ 0x223fc68

.thumb
branch_223fc68: @ 223fc68 :thumb
	mov     r1, #0xc0
	bic     r2, r1
	strb    r2, [r0, #0xb]
.thumb
branch_223fc6e: @ 223fc6e :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x1c
	mov     r1, #0x8
	mov     r3, r2
	bl      0x2001af4
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r3, #0xc
	mov     r0, r2
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	mov     r1, r0
	mul     r1, r3
	add     r0, r2, r1
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x3
	bne     branch_223fcd8
	mov     r0, r5
	add     r0, #0x14
	mov     r1, #0x0
	bl      0x201ada4
	mov     r1, r5
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	add     r1, #0x66
	ldrh    r1, [r1, #0x0]
	bl      Function_223f584
	mov     r0, r5
	add     r0, #0x14
	bl      0x201a9a4
	mov     r1, r5
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	add     r1, #0x66
	ldrh    r1, [r1, #0x0]
	mov     r2, #0x1
	bl      Function_2240d5c
	b       branch_223fd5e
@ 0x223fcd8

.thumb
branch_223fcd8: @ 223fcd8 :thumb
	ldr     r0, [sp, #0x14]
	add     r4, r5, #0x4
	lsl     r6, r0, #4
	ldr     r2, [pc, #0x9c] @ 0x223fd7c, (=0x3d9)
	add     r0, r4, r6
	mov     r1, #0x1
	bl      0x200e060
	add     r0, r4, r6
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2a
	bl      0x200b1ec
	str     r0, [sp, #0x18]
	mov     r0, #0x38
	mov     r1, #0x6
	bl      0x2023790
	mov     r7, r0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	add     r0, r1, #0x4
	add     r1, #0x64
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	mul     r1, r2
	add     r1, r0, r1
	ldrh    r2, [r1, #0x6]
	ldrh    r1, [r1, #0x4]
	mov     r0, r5
	add     r1, r2, r1
	.hword  0x1e49 @ sub r1, r1, #0x1
	mov     r2, #0x0
	bl      Function_223f4e8
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x18]
	mov     r1, r7
	bl      0x200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	add     r0, r4, r6
	mov     r1, #0x1
	mov     r2, r7
	str     r3, [sp, #0x8]
	bl      0x201d738
	mov     r0, r7
	bl      0x20237bc
	ldr     r0, [sp, #0x18]
	bl      0x20237bc
	add     r0, r4, r6
	bl      0x201a9a4
.thumb
branch_223fd5e: @ 223fd5e :thumb
	mov     r0, r5
	ldr     r2, [pc, #0x1c] @ 0x223fd80, (=0x3f7)
	add     r0, #0xb4
	mov     r1, #0x1
	mov     r3, #0xe
	bl      0x200dc48
	add     r5, #0xb4
	mov     r0, r5
	bl      0x201a9a4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x223fd78

.word 0x337 @ 0x223fd78
.word 0x3d9 @ 0x223fd7c
.word 0x3f7 @ 0x223fd80
.thumb
Function_223fd84: @ 223fd84 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r2, r0
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x4
	bne     branch_223fda2
	mov     r1, #0x4
	b       branch_223fda4
@ 0x223fda2

.thumb
branch_223fda2: @ 223fda2 :thumb
	mov     r1, #0x3
.thumb
branch_223fda4: @ 223fda4 :thumb
	cmp     r0, #0x3
	beq     branch_223fdba
	lsl     r6, r1, #4
	add     r4, r5, #0x4
	add     r0, r4, r6
	mov     r1, #0x1
	bl      0x200e084
	add     r0, r4, r6
	bl      0x201ad10
.thumb
branch_223fdba: @ 223fdba :thumb
	mov     r0, r5
	add     r0, #0xb4
	mov     r1, #0x1
	bl      0x200dc9c
	mov     r0, r5
	add     r0, #0xb4
	bl      0x201ad10
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2001bc4
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	mov     r0, r5
	add     r0, #0xb4
	bl      0x201a8fc
	mov     r0, r5
	add     r0, #0x14
	mov     r1, #0x0
	bl      0x201ada4
	mov     r1, r5
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	add     r1, #0x66
	ldrh    r1, [r1, #0x0]
	bl      Function_223f528
	mov     r0, r5
	add     r0, #0x14
	bl      0x201a9a4
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_2240d5c
	pop     {r4-r6,pc}
@ 0x223fe18

.thumb
Function_223fe18: @ 223fe18 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, #0x14
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2d
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x82
	mov     r1, #0x6
	bl      0x2023790
	ldr     r1, [pc, #0x4c] @ 0x223fe8c, (=0x47b)
	mov     r4, r0
	ldrb    r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x0
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_223f4e8
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, r6
	bl      0x200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x223fe90, (=0xf0e00)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x14
	mov     r3, #0x28
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     r5, #0x14
	mov     r0, r5
	bl      0x201a9a4
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r6
	bl      0x20237bc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223fe8c

.word 0x47b @ 0x223fe8c
.word 0xf0e00 @ 0x223fe90
.thumb
Function_223fe94: @ 223fe94 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r2, [pc, #0xa0] @ 0x223ff3c, (=0x3f7)
	mov     r5, r0
	add     r0, #0x94
	mov     r1, #0x1
	mov     r3, #0xe
	bl      0x200dc48
	mov     r0, r5
	bl      Function_223ff44
	mov     r0, r5
	ldr     r2, [pc, #0x90] @ 0x223ff40, (=0x3d9)
	add     r0, #0x34
	mov     r1, #0x1
	mov     r3, #0xc
	bl      0x200e060
	mov     r0, r5
	add     r0, #0x34
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x34
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x38
	mov     r1, #0x6
	bl      0x2023790
	mov     r4, r0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r2, r0
	ldrh    r2, [r1, #0x6]
	ldrh    r1, [r1, #0x4]
	mov     r0, r5
	add     r1, r2, r1
	.hword  0x1e49 @ sub r1, r1, #0x1
	mov     r2, #0x0
	bl      Function_223f4e8
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, r6
	bl      0x200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x34
	mov     r1, #0x1
	mov     r2, r4
	str     r3, [sp, #0x8]
	bl      0x201d738
	add     r5, #0x34
	mov     r0, r5
	bl      0x201a9a4
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r6
	bl      0x20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223ff3a


.align 2


.word 0x3f7 @ 0x223ff3c
.word 0x3d9 @ 0x223ff40
.thumb
Function_223ff44: @ 223ff44 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x94
	mov     r0, r4
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x54
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x4c] @ 0x223ffbc, (=0x488)
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, #0x3
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xfe
	str     r1, [sp, #0x8]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r3, #0x10
	bl      0x201d738
	mov     r0, r4
	bl      0x201a9a4
	mov     r0, r6
	bl      0x20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223ffba


.align 2


.word 0x488 @ 0x223ffbc
.thumb
Function_223ffc0: @ 223ffc0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x34
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r4
	add     r0, #0x94
	mov     r1, #0x1
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x34
	bl      0x201ad10
	mov     r0, r4
	add     r0, #0x94
	bl      0x201ad10
	add     r4, #0x14
	mov     r0, r4
	bl      0x201a9a4
	pop     {r4,pc}
@ 0x223fff0

.thumb
Function_223fff0: @ 223fff0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r2, [pc, #0x9c] @ 0x2240094, (=0x3d9)
	mov     r5, r0
	add     r0, #0x64
	mov     r1, #0x1
	mov     r3, #0xc
	bl      0x200e060
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      0x200b1ec
	mov     r4, r0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r2, r0, #0x4
	add     r0, #0x64
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r2, r0
	ldr     r0, [pc, #0x68] @ 0x2240098, (=0x488)
	ldsh    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_2240046
	ldrh    r2, [r1, #0x6]
	ldrh    r1, [r1, #0x4]
	mov     r0, r5
	add     r1, r2, r1
	.hword  0x1e49 @ sub r1, r1, #0x1
	mov     r2, #0x0
	bl      Function_223f4e8
	b       branch_2240056
@ 0x2240046

.thumb
branch_2240046: @ 2240046 :thumb
	ldrh    r2, [r1, #0x6]
	ldrh    r1, [r1, #0x4]
	mov     r0, r5
	add     r1, r2, r1
	.hword  0x1e49 @ sub r1, r1, #0x1
	mov     r2, #0x0
	bl      Function_223f508
.thumb
branch_2240056: @ 2240056 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, #0x46
	ldr     r2, [pc, #0x38] @ 0x2240098, (=0x488)
	str     r1, [sp, #0x4]
	lsl     r0, r0, #2
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r5
	bl      Function_22400a0
	ldr     r1, [pc, #0xc] @ 0x224009c, (=0x426)
	strb    r0, [r5, r1]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2240094

.word 0x3d9 @ 0x2240094
.word 0x488 @ 0x2240098
.word 0x426 @ 0x224009c
.thumb
Function_22400a0: @ 22400a0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x1
	bl      0x2002ac8
	mov     r0, #0x0
	bl      0x2002ae4
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bl      0x2027ac0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x22400dc, (=0x22400e1)
	mov     r2, #0xfe
	str     r0, [sp, #0x8]
	lsl     r2, r2, #2
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0x64
	mov     r1, #0x1
	bl      0x201d738
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22400da


.align 2


.word 0x22400e1 @ 0x22400dc
.thumb
Function_22400e0: @ 22400e0 :thumb
	push    {r3,lr}
	cmp     r1, #0x4
	bhi     branch_2240118
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22400f2

Jumppoints_22400f2:
.hword branch_2240118 - Jumppoints_22400f2 - 2
.hword branch_22400fc - Jumppoints_22400f2 - 2
.hword branch_2240102 - Jumppoints_22400f2 - 2
.hword branch_2240108 - Jumppoints_22400f2 - 2
.hword branch_2240110 - Jumppoints_22400f2 - 2
.thumb
branch_22400fc: @ 22400fc :thumb
	bl      0x20057e0
	pop     {r3,pc}
@ 0x2240102

.thumb
branch_2240102: @ 2240102 :thumb
	bl      0x20061e4
	pop     {r3,pc}
@ 0x2240108

.thumb
branch_2240108: @ 2240108 :thumb
	ldr     r0, [pc, #0x10] @ 0x224011c, (=0x60d)
	bl      0x2005748
	b       branch_2240118
@ 0x2240110

.thumb
branch_2240110: @ 2240110 :thumb
	ldr     r0, [pc, #0x8] @ 0x224011c, (=0x60d)
	bl      0x20057d4
	pop     {r3,pc}
@ 0x2240118

.thumb
branch_2240118: @ 2240118 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224011c

.word 0x60d @ 0x224011c
.thumb
Function_2240120: @ 2240120 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2240140, (=0x2241150)
	ldr     r2, [pc, #0x14] @ 0x2240144, (=0x3f7)
	mov     r3, #0xe
	bl      0x2002100
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2240140

.word 0x2241150 @ 0x2240140
.word 0x3f7 @ 0x2240144
.thumb
Function_2240148: @ 2240148 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x74
	cmp     r1, #0x0
	bne     branch_2240162
	ldr     r2, [pc, #0xe4] @ 0x224023c, (=0x3f7)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xe
	bl      0x200dc48
.thumb
branch_2240162: @ 2240162 :thumb
	mov     r0, r4
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x50
	bl      0x200b1ec
	mov     r3, #0x2
	mov     r6, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0xbc] @ 0x2240240, (=0x488)
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xfe
	str     r1, [sp, #0x8]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r3, r1
	bl      0x201d738
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x51
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x6c] @ 0x2240244, (=0x48c)
	mov     r0, #0x46
	ldr     r3, [r5, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldsh    r2, [r5, r2]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mul     r2, r3
	mov     r1, #0x0
	mov     r3, #0x6
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r1, #0xfe
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      0x2002d7c
	mov     r3, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xfe
	str     r1, [sp, #0x8]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r5, #0x60
	mov     r0, r4
	sub     r3, r5, r3
	bl      0x201d738
	mov     r0, r4
	bl      0x201a9a4
	mov     r0, r6
	bl      0x20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224023c

.word 0x3f7 @ 0x224023c
.word 0x488 @ 0x2240240
.word 0x48c @ 0x2240244
.thumb
Function_2240248: @ 2240248 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x84
	cmp     r1, #0x0
	bne     branch_2240294
	mov     r0, r4
	mov     r1, #0xf
	bl      0x201ada4
	ldr     r2, [pc, #0xc4] @ 0x2240324, (=0x3f7)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xe
	bl      0x200dc48
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4e
	bl      0x200b1ec
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r6
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      0x201d738
	mov     r0, r6
	bl      0x20237bc
	b       branch_22402a6
@ 0x2240294

.thumb
branch_2240294: @ 2240294 :thumb
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r3, #0x10
	mov     r0, r4
	mov     r1, #0xf
	mov     r2, #0x0
	str     r3, [sp, #0x4]
	bl      0x201ae78
.thumb
branch_22402a6: @ 22402a6 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4f
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      0x2025f74
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, #0x6
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r1, #0xfe
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      0x2002d7c
	mov     r3, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xfe
	str     r1, [sp, #0x8]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r5, #0x50
	mov     r0, r4
	sub     r3, r5, r3
	bl      0x201d738
	mov     r0, r4
	bl      0x201a9a4
	mov     r0, r6
	bl      0x20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2240322


.align 2


.word 0x3f7 @ 0x2240324
.thumb
Function_2240328: @ 2240328 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r5
	add     r4, #0xa4
	mov     r0, r4
	mov     r1, #0xf
	bl      0x201ada4
	ldr     r2, [pc, #0xb4] @ 0x22403f0, (=0x3f7)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xe
	bl      0x200dc48
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6c
	bl      0x200b1ec
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r6
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      0x201d738
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6d
	bl      0x200b1ec
	mov     r6, r0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x202ab28
	bl      0x202ac98
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, #0x3
	bl      0x200b60c
	mov     r0, #0x46
	mov     r1, #0xfe
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r0, r6
	bl      0x20237bc
	mov     r1, #0xfe
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      0x2002d7c
	mov     r3, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xfe
	str     r1, [sp, #0x8]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r5, #0x58
	mov     r0, r4
	sub     r3, r5, r3
	bl      0x201d738
	mov     r0, r4
	bl      0x201a9a4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22403f0

.word 0x3f7 @ 0x22403f0
.thumb
Function_22403f4: @ 22403f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x20
	mov     r1, #0x6
	bl      0x201dbec
	mov     r0, r4
	bl      Function_2240424
	mov     r0, r4
	bl      Function_22404c0
	mov     r0, r4
	bl      Function_2240950
	pop     {r4,pc}
@ 0x2240424

.thumb
Function_2240424: @ 2240424 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4c
	ldr     r3, [pc, #0x88] @ 0x22404b4, (=0x2241178)
	add     r2, sp, #0x34
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x6
	bl      0x200c6e4
	mov     r1, r4
	add     r1, #0xd8
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	bl      0x200c704
	mov     r1, r4
	add     r1, #0xdc
	add     r2, sp, #0x14
	ldr     r5, [pc, #0x60] @ 0x22404b8, (=0x2241190)
	str     r0, [r1, #0x0]
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	ldr     r6, [pc, #0x50] @ 0x22404bc, (=0x2241164)
	stmia   r2!, {r0,r1}
	add     r5, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r3
	str     r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r3, #0x20
	bl      0x200c73c
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0xc
	bl      0x200c7c0
	mov     r0, r4
	add     r0, #0xd8
	add     r4, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	add     r2, sp, #0x34
	bl      0x200cb30
	add     sp, #0x4c
	pop     {r3-r6,pc}
@ 0x22404b2


.align 2


.word 0x2241178 @ 0x22404b4
.word 0x2241190 @ 0x22404b8
.word 0x2241164 @ 0x22404bc
.thumb
Function_22404c0: @ 22404c0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x37c] @ 0x2240844, (=0x425)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_22404d4
	mov     r3, #0x2
	mov     r4, #0x3
	b       branch_22404d8
@ 0x22404d4

.thumb
branch_22404d4: @ 22404d4 :thumb
	mov     r3, #0x6
	mov     r4, #0x7
.thumb
branch_22404d8: @ 22404d8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x364] @ 0x2240848, (=0xc0f9)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x348] @ 0x224084c, (=0xc0fa)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x19
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x328] @ 0x2240850, (=0xc0fb)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x1c
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x308] @ 0x2240854, (=0xc0fc)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x1f
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2e8] @ 0x2240858, (=0xc0fd)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0xa
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c8] @ 0x224085c, (=0xc0fe)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x24
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	lsl     r0, r0, #8
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x3e
	mov     r3, #0x4
	bl      0x200cbdc
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x27c] @ 0x2240860, (=0xc0ff)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x10
	bl      0x200cbdc
	ldr     r0, [pc, #0x268] @ 0x2240864, (=0xc101)
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x207c948
	ldr     r0, [pc, #0x254] @ 0x2240868, (=0xc102)
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x207cac4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x214] @ 0x2240848, (=0xc0f9)
	mov     r1, r5
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, r4
	bl      0x200cd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1f0] @ 0x224084c, (=0xc0fa)
	mov     r1, r5
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x14
	bl      0x200cd0c
	mov     r0, #0x0
	mov     r1, #0x2
	bl      0x207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1c8] @ 0x2240854, (=0xc0fc)
	mov     r1, r5
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x10
	bl      0x200cc9c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1a8] @ 0x2240858, (=0xc0fd)
	mov     r1, r5
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x3e
	mov     r3, #0xa
	bl      0x200cc9c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r3, [pc, #0x188] @ 0x224085c, (=0xc0fe)
	mov     r2, #0x1
	bl      0x207c97c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x168] @ 0x2240850, (=0xc0fb)
	mov     r1, r5
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x25
	bl      0x200cd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x140] @ 0x2240848, (=0xc0f9)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x1
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x124] @ 0x224084c, (=0xc0fa)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x18
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x108] @ 0x2240850, (=0xc0fb)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x1b
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xec] @ 0x2240854, (=0xc0fc)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x1e
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x2240858, (=0xc0fd)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x9
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x224085c, (=0xc0fe)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x23
	bl      0x200ce24
	bl      0x207cf40
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x94] @ 0x2240860, (=0xc0ff)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x10
	bl      0x200ce0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xc1
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x3e
	mov     r3, #0x5
	bl      0x200ce0c
	mov     r3, #0x0
	mov     r1, r5
	mov     r2, r5
	ldr     r0, [pc, #0x40] @ 0x2240848, (=0xc0f9)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	bl      0x200ce54
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x224084c, (=0xc0fa)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x17
	bl      0x200ce54
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2240850, (=0xc0fb)
	b       branch_224086c
@ 0x2240844

.word 0x425 @ 0x2240844
.word 0xc0f9 @ 0x2240848
.word 0xc0fa @ 0x224084c
.word 0xc0fb @ 0x2240850
.word 0xc0fc @ 0x2240854
.word 0xc0fd @ 0x2240858
.word 0xc0fe @ 0x224085c
.word 0xc0ff @ 0x2240860
.word 0xc101 @ 0x2240864
.word 0xc102 @ 0x2240868
.thumb
branch_224086c: @ 224086c :thumb
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x1a
	bl      0x200ce54
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb0] @ 0x224093c, (=0xc0fc)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x1d
	bl      0x200ce54
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x94] @ 0x2240940, (=0xc0fd)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x8
	bl      0x200ce54
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x78] @ 0x2240944, (=0xc0fe)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xd8
	add     r1, #0xdc
	add     r2, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r3, #0x22
	bl      0x200ce54
	bl      0x207cf44
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x2240948, (=0xc0ff)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x10
	bl      0x200ce3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xc1
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x3e
	mov     r3, #0x6
	bl      0x200ce3c
	mov     r0, r5
	add     r0, #0xd8
	add     r5, #0xdc
	ldr     r2, [pc, #0x20] @ 0x224094c, (=0xc101)
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x0]
	mov     r3, r2
	bl      0x207c9ec
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224093a


.align 2


.word 0xc0fc @ 0x224093c
.word 0xc0fd @ 0x2240940
.word 0xc0fe @ 0x2240944
.word 0xc0ff @ 0x2240948
.word 0xc101 @ 0x224094c
.thumb
Function_2240950: @ 2240950 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r4, [pc, #0x124] @ 0x2240a7c, (=0x22411b0)
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_224095c: @ 224095c :thumb
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, r4
	bl      0x200ce6c
	mov     r1, r6
	add     r1, #0xe0
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [r1, #0x0]
	add     r4, #0x34
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0xc
	bcc     branch_224095c
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	add     r0, #0xfc
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_22409ce
	mov     r0, r5
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
.thumb
branch_22409ce: @ 22409ce :thumb
	ldr     r0, [pc, #0xb0] @ 0x2240a80, (=0x424)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_22409ee
	mov     r0, r5
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, r5
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
.thumb
branch_22409ee: @ 22409ee :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2240d3c
	mov     r0, r5
	add     r0, #0xc4
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	mov     r2, r1
	add     r2, #0x64
	ldrb    r3, [r2, #0x0]
	mov     r2, #0xc
	add     r0, #0xe0
	mul     r2, r3
	add     r1, r1, r2
	ldrb    r1, [r1, #0xc]
	ldr     r0, [r0, #0x0]
	bl      0x200d364
	mov     r1, r5
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	add     r1, #0x64
	ldrb    r1, [r1, #0x0]
	bl      Function_2240c30
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r2, #0x61
	bl      0x200d4c4
	mov     r0, r5
	add     r0, #0xc4
	ldr     r2, [r0, #0x0]
	mov     r0, r5
	mov     r3, r2
	add     r3, #0x64
	ldrb    r4, [r3, #0x0]
	mov     r3, #0xc
	add     r0, #0xf0
	mul     r3, r4
	add     r2, r2, r3
	ldrh    r2, [r2, #0x8]
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb1
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #4
	add     r2, #0x18
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      0x200d4c4
	ldr     r4, [pc, #0x24] @ 0x2240a84, (=0x2241158)
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, r2
	add     r5, #0xe0
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x2
	ldr     r0, [r0, #0x0]
	bl      0x2021c80
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2240a7c

.word 0x22411b0 @ 0x2240a7c
.word 0x424 @ 0x2240a80
.word 0x2241158 @ 0x2240a84
.thumb
Function_2240a88: @ 2240a88 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2240a90: @ 2240a90 :thumb
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	bl      0x200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xc
	bcc     branch_2240a90
	mov     r0, r6
	mov     r1, r6
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      0x200d0b0
	add     r6, #0xd8
	ldr     r0, [r6, #0x0]
	bl      0x200c8d4
	pop     {r4-r6,pc}
@ 0x2240abc

.thumb
Function_2240abc: @ 2240abc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2240ac2: @ 2240ac2 :thumb
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	bl      0x200d330
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xc
	bcc     branch_2240ac2
	pop     {r3-r5,pc}
@ 0x2240ad6


.align 2, 0


.thumb
Function_2240ad8: @ 2240ad8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      0x207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2240b2c, (=0xc0ff)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x10
	bl      0x200d948
	mov     r0, r4
	mov     r1, #0x2
	bl      0x207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2240b30, (=0xc0fc)
	mov     r2, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xd8
	add     r5, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x0]
	bl      0x200d97c
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2240b2a


.align 2


.word 0xc0ff @ 0x2240b2c
.word 0xc0fc @ 0x2240b30
.thumb
Function_2240b34: @ 2240b34 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	mov     r4, r1
	bl      0x200d41c
	add     r5, #0xe4
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      0x200d41c
	pop     {r3-r5,pc}
@ 0x2240b4e


.align 2, 0


.thumb
Function_2240b50: @ 2240b50 :thumb
	ldr     r1, [pc, #0x10] @ 0x2240b64, (=0x454)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_2240b5c
	mov     r0, #0x1
	b       branch_2240b5e
@ 0x2240b5c

.thumb
branch_2240b5c: @ 2240b5c :thumb
	mov     r0, #0x0
.thumb
branch_2240b5e: @ 2240b5e :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x2240b64

.word 0x454 @ 0x2240b64
.thumb
Function_2240b68: @ 2240b68 :thumb
	ldr     r1, [pc, #0xc] @ 0x2240b78, (=0x457)
	mov     r2, #0x0
	strb    r2, [r0, r1]
	ldr     r3, [pc, #0xc] @ 0x2240b7c, (=0x2240c49)
	mov     r2, #0x1
	.hword  0x1ec9 @ sub r1, r1, #0x3
	strb    r2, [r0, r1]
	bx      r3
@ 0x2240b78

.word 0x457 @ 0x2240b78
.word 0x2240c49 @ 0x2240b7c
.thumb
Function_2240b80: @ 2240b80 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x10] @ 0x2240b94, (=0x454)
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2240b92
	cmp     r1, #0x1
	bne     branch_2240b92
	bl      Function_2240b98
.thumb
branch_2240b92: @ 2240b92 :thumb
	pop     {r3,pc}
@ 0x2240b94

.word 0x454 @ 0x2240b94
.thumb
Function_2240b98: @ 2240b98 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r2, [pc, #0x6c] @ 0x2240c24, (=0x455)
	ldrb    r0, [r4, r2]
	cmp     r0, #0x0
	bne     branch_2240bd0
	add     r1, r2, #0x2
	ldrb    r1, [r4, r1]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r3, r4, r1
	add     r1, r2, #0x3
	ldr     r1, [r3, r1]
	sub     r0, r0, r1
	str     r0, [sp, #0x0]
	b       branch_2240be2
@ 0x2240bd0

.thumb
branch_2240bd0: @ 2240bd0 :thumb
	add     r1, r2, #0x2
	ldrb    r1, [r4, r1]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r3, r4, r1
	add     r1, r2, #0x3
	ldr     r1, [r3, r1]
	add     r0, r0, r1
	str     r0, [sp, #0x0]
.thumb
branch_2240be2: @ 2240be2 :thumb
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x0]
	bl      0x2021c50
	ldr     r1, [pc, #0x34] @ 0x2240c28, (=0x457)
	ldrb    r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r1]
	ldrb    r0, [r4, r1]
	cmp     r0, #0x8
	bne     branch_2240c20
	add     r1, #0x21
	ldrb    r1, [r4, r1]
	mov     r0, r4
	bl      Function_2240c30
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x0]
	bl      0x2021c50
	ldr     r0, [pc, #0x10] @ 0x2240c2c, (=0x454)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_2240c20: @ 2240c20 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2240c24

.word 0x455 @ 0x2240c24
.word 0x457 @ 0x2240c28
.word 0x454 @ 0x2240c2c
.thumb
Function_2240c30: @ 2240c30 :thumb
	ldr     r2, [pc, #0x10] @ 0x2240c44, (=0x427)
	ldrb    r3, [r0, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
	ldrb    r0, [r0, r2]
	mul     r1, r0
	add     r0, r3, r1
	.hword  0x1d80 @ add r0, r0, #0x6
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x2240c44

.word 0x427 @ 0x2240c44
.thumb
Function_2240c48: @ 2240c48 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r1, [pc, #0x80] @ 0x2240ce4, (=0x478)
	str     r0, [r2, #0x0]
	ldrb    r1, [r4, r1]
	mov     r0, r4
	bl      Function_2240c30
	lsl     r1, r0, #12
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bge     branch_2240c82
	sub     r0, r0, r1
	mov     r1, #0x64
	blx     _s32_div_f
	mov     r2, #0x0
	b       branch_2240c8c
@ 0x2240c82

.thumb
branch_2240c82: @ 2240c82 :thumb
	sub     r0, r1, r0
	mov     r1, #0x64
	blx     _s32_div_f
	mov     r2, #0x1
.thumb
branch_2240c8c: @ 2240c8c :thumb
	ldr     r1, [pc, #0x58] @ 0x2240ce8, (=0x455)
	mov     r3, #0x28
	strb    r2, [r4, r1]
	mov     r5, r0
	ldr     r1, [pc, #0x54] @ 0x2240cec, (=0x458)
	mov     r2, #0x0
	mul     r5, r3
	str     r2, [r4, r1]
	add     r3, r1, #0x4
	str     r5, [r4, r3]
	mov     r3, #0x19
	mov     r5, r0
	mul     r5, r3
	mov     r3, r1
	add     r3, #0x8
	str     r5, [r4, r3]
	mov     r3, #0xf
	mov     r5, r0
	mul     r5, r3
	mov     r3, r1
	add     r3, #0xc
	str     r5, [r4, r3]
	mov     r3, #0xa
	mov     r5, r0
	mul     r5, r3
	mov     r3, r1
	add     r3, #0x10
	str     r5, [r4, r3]
	mov     r3, #0x7
	mov     r5, r0
	mul     r5, r3
	mov     r3, r1
	add     r3, #0x14
	str     r5, [r4, r3]
	lsl     r3, r0, #1
	add     r3, r0, r3
	mov     r0, r1
	add     r0, #0x18
	str     r3, [r4, r0]
	add     r1, #0x1c
	str     r2, [r4, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2240ce2


.align 2


.word 0x478 @ 0x2240ce4
.word 0x455 @ 0x2240ce8
.word 0x458 @ 0x2240cec
.thumb
Function_2240cf0: @ 2240cf0 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_2240d16
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r1, #0xdc
	mov     r2, #0x9c
	bl      0x200d4c4
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xdc
	mov     r2, #0xb4
	bl      0x200d4c4
	b       branch_2240d32
@ 0x2240d16

.thumb
branch_2240d16: @ 2240d16 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r1, #0xa2
	mov     r2, #0x6c
	bl      0x200d4c4
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa2
	mov     r2, #0x84
	bl      0x200d4c4
.thumb
branch_2240d32: @ 2240d32 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2240d3c
	pop     {r4,pc}
@ 0x2240d3c

.thumb
Function_2240d3c: @ 2240d3c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      0x200d3f4
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x200d3f4
	pop     {r3-r5,pc}
@ 0x2240d5a


.align 2, 0


.thumb
Function_2240d5c: @ 2240d5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x42
	lsl     r0, r0, #2
	mov     r4, r2
	mov     r6, r1
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x200d3f4
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x200d3f4
	cmp     r4, #0x0
	beq     branch_2240e18
	mov     r0, r6
	bl      0x207d268
	mov     r1, #0x3
	mov     r4, r0
	bl      0x20790c4
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r4
	mov     r1, #0x1
	bl      0x20790c4
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	bl      0x207c944
	mov     r7, r0
	mov     r0, r6
	bl      0x207c908
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x68] @ 0x2240e1c, (=0xc101)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, r7
	bl      0x200d948
	mov     r0, r6
	bl      0x207c92c
	mov     r1, r0
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	.hword  0x1d89 @ add r1, r1, #0x6
	bl      0x200d41c
	bl      0x207cac0
	mov     r6, r0
	mov     r0, r4
	bl      0x207ca90
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2240e20, (=0xc102)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, r6
	bl      0x200d948
	mov     r0, r4
	bl      0x207caa8
	mov     r1, r0
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	.hword  0x1d89 @ add r1, r1, #0x6
	bl      0x200d41c
.thumb
branch_2240e18: @ 2240e18 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2240e1c

.word 0xc101 @ 0x2240e1c
.word 0xc102 @ 0x2240e20
.thumb
Function_2240e24: @ 2240e24 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0xf8
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r6, r2
	bl      0x200d3f4
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      0x200d4c4
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3cc
	add     r5, #0xf8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      0x200d364
	pop     {r4-r6,pc}
@ 0x2240e5c

.thumb
Function_2240e5c: @ 2240e5c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	bl      0x200d408
	cmp     r0, #0x1
	bne     branch_2240e92
	mov     r0, r4
	add     r0, #0xf8
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #12
	bl      0x200d34c
	mov     r0, r4
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	bl      0x200d3e0
	cmp     r0, #0x2
	bne     branch_2240e92
	add     r4, #0xf8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
branch_2240e92: @ 2240e92 :thumb
	pop     {r4,pc}
@ 0x2240e94


.incbin "./baserom/overlay/overlay_0084.bin", 0x58f4, 0x2240fac - 0x2240e94


.word Function_223c2ac+1 @ =0x223c2ad, 0x2240fac
.word Function_223c3b8+1 @ =0x223c3b9, 0x2240fb0

.incbin "./baserom/overlay/overlay_0084.bin", 0x5a14, 0x2241034 - 0x2240fb4


.word Function_223d858+1 @ =0x223d859, 0x2241034
.word Function_223d858+1 @ =0x223d859, 0x2241038
.word Function_223d858+1 @ =0x223d859, 0x224103c
.word Function_223d858+1 @ =0x223d859, 0x2241040
.word Function_223d858+1 @ =0x223d859, 0x2241044
.word Function_223deb8+1 @ =0x223deb9, 0x2241048
.word Function_223e1e4+1 @ =0x223e1e5, 0x224104c
.word Function_223e220+1 @ =0x223e221, 0x2241050
.word Function_223e254+1 @ =0x223e255, 0x2241054
.word Function_223de78+1 @ =0x223de79, 0x2241058
.word Function_223de98+1 @ =0x223de99, 0x224105c
@ 0x2241060


.incbin "./baserom/overlay/overlay_0084.bin", 0x5ac0, 0x2241440 - 0x2241060


@end 0x2241440




