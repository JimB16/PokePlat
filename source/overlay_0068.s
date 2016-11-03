

.section .iwram68, "ax"


.thumb
Function_225c700: @ 225c700 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      0x2006840
	mov     r2, #0x5
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x7a
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r1, #0xa3
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x7a
	bl      0x200681c
	mov     r2, #0xa3
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx 0x20d5124
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x7a
	bl      Function_225c91c
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r1, [r5, #0x4]
	add     r0, r4, r0
	mov     r2, #0x7a
	bl      Function_225cb70
	mov     r0, #0x9a
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x0]
	add     r0, r4, r0
	mov     r1, r4
	mov     r3, #0x7a
	bl      Function_225d128
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x2
	blt     branch_225c762
	bl      0x2022974
.thumb
branch_225c762: @ 225c762 :thumb
	mov     r1, #0x7a
	str     r1, [sp, #0x0]
	mov     r3, r5
	ldr     r5, [r5, #0x8]
	mov     r0, r1
	lsl     r6, r5, #2
	ldr     r5, [pc, #0x20] @ 0x225c790, (=0x225deb0)
	add     r0, #0xfe
	add     r1, #0xca
	ldr     r5, [r5, r6]
	add     r0, r4, r0
	add     r1, r4, r1
	mov     r2, r4
	blx     r5
	ldr     r0, [pc, #0x14] @ 0x225c794, (=0x225c915)
	mov     r1, r4
	bl      0x2017798
	bl      0x20177a4
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225c790

.word 0x225deb0 @ 0x225c790
.word 0x225c915 @ 0x225c794
.thumb
Function_225c798: @ 225c798 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      0x200682c
	mov     r7, r0
	mov     r0, r5
	bl      0x2006840
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x4
	bhi     branch_225c896
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225c7c0

Jumppoints_225c7c0:
.hword branch_225c7ca - Jumppoints_225c7c0 - 2
.hword branch_225c7f0 - Jumppoints_225c7c0 - 2
.hword branch_225c800 - Jumppoints_225c7c0 - 2
.hword branch_225c85e - Jumppoints_225c7c0 - 2
.hword branch_225c87e - Jumppoints_225c7c0 - 2
.thumb
branch_225c7ca: @ 225c7ca :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x7a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      0x222e31c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c896
@ 0x225c7f0

.thumb
branch_225c7f0: @ 225c7f0 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225c896
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c896
@ 0x225c800

.thumb
branch_225c800: @ 225c800 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225c830
	ldr     r0, [r5, #0x4]
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_225c820
	ldr     r0, [r5, #0x4]
	bl      0x222e2a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c896
@ 0x225c820

.thumb
branch_225c820: @ 225c820 :thumb
	bl      0x2231760
	cmp     r0, #0x1
	bne     branch_225c830
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c896
@ 0x225c830

.thumb
branch_225c830: @ 225c830 :thumb
	mov     r1, #0x7a
	str     r5, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r5, [r5, #0x8]
	mov     r0, r1
	lsl     r6, r5, #2
	ldr     r5, [pc, #0x64] @ 0x225c8a4, (=0x225dea8)
	mov     r3, #0x9a
	add     r0, #0xfe
	add     r1, #0xca
	lsl     r3, r3, #2
	ldr     r5, [r5, r6]
	add     r0, r7, r0
	add     r1, r7, r1
	mov     r2, r7
	add     r3, r7, r3
	blx     r5
	cmp     r0, #0x1
	bne     branch_225c896
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c896
@ 0x225c85e

.thumb
branch_225c85e: @ 225c85e :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x7a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c896
@ 0x225c87e

.thumb
branch_225c87e: @ 225c87e :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225c896
	mov     r0, #0x9a
	lsl     r0, r0, #2
	add     r0, r7, r0
	bl      Function_225d2a0
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225c896

.thumb
branch_225c896: @ 225c896 :thumb
	mov     r0, r7
	bl      Function_225c980
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225c8a2


.align 2


.word 0x225dea8 @ 0x225c8a4
.thumb
Function_225c8a8: @ 225c8a8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, r5
	bl      0x2006840
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	ldr     r3, [r6, #0x8]
	mov     r1, #0x5e
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x40] @ 0x225c910, (=0x225dea0)
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x34
	ldr     r3, [r3, r6]
	add     r1, r4, r1
	mov     r2, r4
	blx     r3
	mov     r0, #0x9a
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x7a
	bl      Function_225d178
	mov     r0, #0x51
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225cbc0
	mov     r0, r4
	bl      Function_225c960
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x7a
	bl      0x201807c
	mov     r0, #0x0
	bl      0x20057bc
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225c90e


.align 2


.word 0x225dea0 @ 0x225c910
.thumb
Function_225c914: @ 225c914 :thumb
	ldr     r3, [pc, #0x0] @ 0x225c918, (=0x225c98d)
	bx      r3
@ 0x225c918

.word 0x225c98d @ 0x225c918
.thumb
Function_225c91c: @ 225c91c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r0, r1
	bl      0x2025e44
	mov     r6, r0
	mov     r0, #0xba
	mov     r1, r4
	bl      0x2006c24
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x20
	mov     r1, r4
	bl      0x201dbec
	ldr     r0, [pc, #0x18] @ 0x225c95c, (=0x225ddc0)
	bl      0x201fe94
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_225c9a0
	mov     r0, r5
	mov     r1, r4
	bl      Function_225cab4
	pop     {r4-r6,pc}
@ 0x225c95a


.align 2


.word 0x225ddc0 @ 0x225c95c
.thumb
Function_225c960: @ 225c960 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      0x2006ca8
	bl      0x201dc3c
	mov     r0, r4
	bl      Function_225ca8c
	mov     r0, r4
	bl      Function_225cb44
	pop     {r4,pc}
@ 0x225c980

.thumb
Function_225c980: @ 225c980 :thumb
	ldr     r3, [pc, #0x4] @ 0x225c988, (=0x20219f9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225c986


.align 2


.word 0x20219f9 @ 0x225c988
.thumb
Function_225c98c: @ 225c98c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      0x201c2b8
	bl      0x200a858
	bl      0x201dcac
	pop     {r3,pc}
@ 0x225c99e


.align 2, 0


.thumb
Function_225c9a0: @ 225c9a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [pc, #0xd4] @ 0x225ca7c, (=0x225dd48)
	mov     r7, r2
	str     r1, [sp, #0x10]
	bl      0x2018368
	mov     r0, r7
	bl      0x2018340
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0xc4] @ 0x225ca80, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x0
	ldr     r6, [pc, #0xbc] @ 0x225ca84, (=0x225de18)
	ldr     r4, [pc, #0xc0] @ 0x225ca88, (=0x225dd68)
	str     r0, [sp, #0x14]
.thumb
branch_225c9ca: @ 225c9ca :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x20
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r2, #0x0
	mov     r3, r7
	bl      0x2019690
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x2019ebc
	ldr     r0, [sp, #0x14]
	add     r6, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x14]
	cmp     r0, #0x4
	blt     branch_225c9ca
	mov     r0, #0x0
	mov     r1, #0x80
	mov     r2, r7
	bl      0x2002e98
	ldr     r0, [sp, #0x10]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, #0x5
	bl      0x200dd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x6
	bl      0x200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r7, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, #0xa9
	mov     r1, #0x2
	mov     r3, #0x4
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r7, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, #0xa9
	mov     r1, #0x6
	mov     r3, #0x4
	bl      0x2006e60
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xa9
	mov     r2, #0x4
	mov     r3, r1
	str     r7, [sp, #0x4]
	bl      0x2006e84
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225ca7a


.align 2


.word 0x225dd48 @ 0x225ca7c
.word 0x21bf6dc @ 0x225ca80
.word 0x225de18 @ 0x225ca84
.word 0x225dd68 @ 0x225ca88
.thumb
Function_225ca8c: @ 225ca8c :thumb
	push    {r4-r6,lr}
	ldr     r5, [pc, #0x20] @ 0x225cab0, (=0x225dd68)
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_225ca94: @ 225ca94 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225ca94
	ldr     r0, [r6, #0x0]
	bl      0x20181c4
	pop     {r4-r6,pc}
@ 0x225cab0

.word 0x225dd68 @ 0x225cab0
.thumb
Function_225cab4: @ 225cab4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	blx 0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x1f
	str     r3, [sp, #0xc]
	mov     r2, r0
	str     r6, [sp, #0x10]
	bl      0x200a784
	mov     r1, #0x10
	ldr     r0, [pc, #0x64] @ 0x225cb40, (=0x225dd58)
	mov     r2, r1
	bl      0x201e88c
	mov     r0, #0x20
	mov     r1, r6
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	mov     r0, #0x1
	mov     r1, #0x10
	bl      0x200966c
	mov     r0, #0x1
	bl      0x2009704
	mov     r1, r5
	mov     r0, #0x20
	add     r1, #0x8
	mov     r2, r6
	bl      0x20095c4
	mov     r7, #0x13
	str     r0, [r5, #0x4]
	mov     r4, #0x0
	lsl     r7, r7, #4
.thumb
branch_225cb12: @ 225cb12 :thumb
	mov     r0, #0x20
	mov     r1, r4
	mov     r2, r6
	bl      0x2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225cb12
	bl      0x2039734
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225cb3e


.align 2


.word 0x225dd58 @ 0x225cb40
.thumb
Function_225cb44: @ 225cb44 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      0x2021964
	mov     r6, #0x13
	mov     r4, #0x0
	lsl     r6, r6, #4
.thumb
branch_225cb54: @ 225cb54 :thumb
	ldr     r0, [r5, r6]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225cb54
	bl      0x201e958
	bl      0x201f8b4
	bl      0x200a878
	pop     {r4-r6,pc}
@ 0x225cb70

.thumb
Function_225cb70: @ 225cb70 :thumb
	push    {r3-r7,lr}
	ldr     r4, [pc, #0x48] @ 0x225cbbc, (=0x225dd9c)
	str     r0, [sp, #0x0]
	mov     r7, r2
	str     r1, [r0, #0x30]
	mov     r6, #0x0
	mov     r5, r0
.thumb
branch_225cb7e: @ 225cb7e :thumb
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r7
	bl      0x200b144
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	stmia   r5!, {r0}
	cmp     r6, #0x9
	blt     branch_225cb7e
	mov     r0, r7
	bl      0x200b358
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x24]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r7
	bl      0x2023790
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x28]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r7
	bl      0x2023790
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x2c]
	pop     {r3-r7,pc}
@ 0x225cbbc

.word 0x225dd9c @ 0x225cbbc
.thumb
Function_225cbc0: @ 225cbc0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225cbc8: @ 225cbc8 :thumb
	ldr     r0, [r5, #0x0]
	bl      0x200b190
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x9
	blt     branch_225cbc8
	ldr     r0, [r6, #0x24]
	bl      0x200b3f0
	ldr     r0, [r6, #0x28]
	bl      0x20237bc
	ldr     r0, [r6, #0x2c]
	bl      0x20237bc
	pop     {r4-r6,pc}
@ 0x225cbea


.align 2, 0


.thumb
Function_225cbec: @ 225cbec :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x9
	bcc     branch_225cbfc
	bl      0x2022974
.thumb
branch_225cbfc: @ 225cbfc :thumb
	lsl     r0, r4, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x2c]
	mov     r1, r6
	bl      0x200b1b8
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r5, #0x2c]
	bl      0x200c388
	ldr     r0, [r5, #0x28]
	pop     {r4-r6,pc}
@ 0x225cc16


.align 2, 0


.thumb
Function_225cc18: @ 225cc18 :thumb
	push    {r4,lr}
	mov     r2, r1
	mov     r4, r0
	cmp     r2, #0x3c
	bcc     branch_225cc2a
	bcs     branch_225cc28
	bl      0x2022974
.thumb
branch_225cc28: @ 225cc28 :thumb
	mov     r2, #0x0
.thumb
branch_225cc2a: @ 225cc2a :thumb
	cmp     r2, #0x32
	bcs     branch_225cc38
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225cbec
	pop     {r4,pc}
@ 0x225cc38

.thumb
branch_225cc38: @ 225cc38 :thumb
	mov     r0, r4
	mov     r1, #0x2
	sub     r2, #0x32
	bl      Function_225cbec
	pop     {r4,pc}
@ 0x225cc44

.thumb
Function_225cc44: @ 225cc44 :thumb
	push    {r3-r5,lr}
	mov     r3, r1
	mov     r4, r0
	mov     r5, r2
	cmp     r3, #0x3c
	bcc     branch_225cc58
	bcs     branch_225cc56
	bl      0x2022974
.thumb
branch_225cc56: @ 225cc56 :thumb
	mov     r3, #0x0
.thumb
branch_225cc58: @ 225cc58 :thumb
	cmp     r3, #0x32
	bcs     branch_225cc68
	mov     r0, r4
	add     r1, r5, #0x3
	mov     r2, r3
	bl      Function_225cbec
	pop     {r3-r5,pc}
@ 0x225cc68

.thumb
branch_225cc68: @ 225cc68 :thumb
	sub     r3, #0x32
	mov     r0, r4
	add     r1, r5, #0x6
	mov     r2, r3
	bl      Function_225cbec
	pop     {r3-r5,pc}
@ 0x225cc76


.align 2, 0


.thumb
Function_225cc78: @ 225cc78 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r0, r7
	mov     r4, r1
	bl      0x2025e6c
	mov     r6, r0
	ldr     r0, [r5, #0x30]
	bl      0x222e3bc
	mov     r1, r6
	mov     r2, r7
	bl      0x222e640
	ldr     r0, [r5, #0x24]
	mov     r1, r4
	mov     r2, r6
	bl      0x200b498
	mov     r0, r6
	bl      0x20181c4
	pop     {r3-r7,pc}
@ 0x225cca8

.thumb
Function_225cca8: @ 225cca8 :thumb
	push    {r3,lr}
	ldr     r3, [sp, #0x8]
	bl      Function_225ccd0
	pop     {r3,pc}
@ 0x225ccb2


.align 2, 0


.thumb
Function_225ccb4: @ 225ccb4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x14]
	str     r4, [sp, #0x4]
	bl      Function_225ce48
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225ccc8

.thumb
Function_225ccc8: @ 225ccc8 :thumb
	ldr     r3, [pc, #0x0] @ 0x225cccc, (=0x225d02d)
	bx      r3
@ 0x225cccc

.word 0x225d02d @ 0x225cccc
.thumb
Function_225ccd0: @ 225ccd0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	mov     r5, r0
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	mov     r6, r3
	mov     r4, r2
	mov     r2, #0x0
	str     r6, [sp, #0x4]
	add     r0, #0xc0
	ldr     r0, [r4, r0]
	mov     r1, #0xc7
	mov     r3, r2
	bl      0x2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x5
	str     r6, [sp, #0xc]
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0xc8
	bl      0x20070e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x5
	str     r6, [sp, #0xc]
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	ldr     r2, [r4, #0x0]
	mov     r1, #0xc9
	bl      0x200710c
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x13
	str     r6, [sp, #0x8]
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	add     r1, #0x10
	ldr     r1, [r4, r1]
	mov     r2, #0xcd
	mov     r3, #0x0
	bl      0x2009a4c
	str     r0, [r5, #0x18]
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r1, #0x4d
	str     r6, [sp, #0xc]
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0xc
	ldr     r1, [r4, r1]
	mov     r2, #0xcc
	mov     r3, #0x0
	bl      0x2009b04
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x18]
	bl      0x200a3dc
	cmp     r0, #0x0
	bne     branch_225cd6c
	bl      0x2022974
.thumb
branch_225cd6c: @ 225cd6c :thumb
	ldr     r0, [r5, #0x1c]
	bl      0x200a640
	cmp     r0, #0x0
	bne     branch_225cd7a
	bl      0x2022974
.thumb
branch_225cd7a: @ 225cd7a :thumb
	ldr     r0, [r5, #0x18]
	bl      0x2009d4c
	ldr     r0, [r5, #0x1c]
	bl      0x2009d4c
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r1, #0x4e
	str     r6, [sp, #0x8]
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x8
	ldr     r1, [r4, r1]
	mov     r2, #0xce
	mov     r3, #0x0
	bl      0x2009bc4
	str     r0, [r5, #0x20]
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r1, #0x4f
	str     r6, [sp, #0x8]
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	mov     r2, #0xcf
	mov     r3, #0x0
	bl      0x2009bc4
	str     r0, [r5, #0x24]
	mov     r0, #0x0
	add     r2, sp, #0x2c
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r1, #0x14
	mov     r2, r1
	str     r1, [sp, #0x0]
	sub     r2, #0x15
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r2, #0x13
	str     r0, [sp, #0x10]
	lsl     r2, r2, #4
	ldr     r3, [r4, r2]
	str     r3, [sp, #0x14]
	add     r3, r2, #0x4
	ldr     r3, [r4, r3]
	str     r3, [sp, #0x18]
	mov     r3, r2
	add     r3, #0x8
	ldr     r3, [r4, r3]
	add     r2, #0xc
	str     r3, [sp, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, r1
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x4c
	mov     r2, r1
	bl      0x20093b4
	ldr     r0, [r4, #0x4]
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	mov     r0, #0x0
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	add     r0, sp, #0x2c
	str     r6, [sp, #0x48]
	bl      0x2021b90
	mov     r1, #0x0
	str     r0, [r5, #0x14]
	bl      0x2021cac
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x14] @ 0x225ce44, (=0x225dd40)
	mov     r1, r5
	bl      0x201a8d4
	add     r5, #0x2c
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	bl      Function_225db8c
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x225ce44

.word 0x225dd40 @ 0x225ce44
.thumb
Function_225ce48: @ 225ce48 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r5, r3
	ldrh    r3, [r4, #0x28]
	mov     r6, r1
	cmp     r3, #0xa
	bls     branch_225ce58
	b       branch_225d014
@ 0x225ce58

.thumb
branch_225ce58: @ 225ce58 :thumb
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x225ce64

Jumppoints_225ce64:
.hword branch_225ce7a - Jumppoints_225ce64 - 2
.hword branch_225ce96 - Jumppoints_225ce64 - 2
.hword branch_225cea6 - Jumppoints_225ce64 - 2
.hword branch_225cec8 - Jumppoints_225ce64 - 2
.hword branch_225ceee - Jumppoints_225ce64 - 2
.hword branch_225cf16 - Jumppoints_225ce64 - 2
.hword branch_225cf6e - Jumppoints_225ce64 - 2
.hword branch_225cfa4 - Jumppoints_225ce64 - 2
.hword branch_225cfd4 - Jumppoints_225ce64 - 2
.hword branch_225cffa - Jumppoints_225ce64 - 2
.hword branch_225d004 - Jumppoints_225ce64 - 2
.thumb
branch_225ce7a: @ 225ce7a :thumb
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x5e
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, #0x1
	strh    r0, [r4, #0x2a]
	mov     r0, #0xa
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225ce96

.thumb
branch_225ce96: @ 225ce96 :thumb
	mov     r1, r2
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	bl      Function_225d304
	mov     r0, #0x2
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225cea6

.thumb
branch_225cea6: @ 225cea6 :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_225d330
	cmp     r0, #0x0
	beq     branch_225cebc
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_225cec2
	b       branch_225d018
@ 0x225cebc

.thumb
branch_225cebc: @ 225cebc :thumb
	mov     r0, #0x3
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225cec2

.thumb
branch_225cec2: @ 225cec2 :thumb
	mov     r0, #0x9
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225cec8

.thumb
branch_225cec8: @ 225cec8 :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	bne     branch_225ced2
	mov     r2, #0x5c
	b       branch_225ced4
@ 0x225ced2

.thumb
branch_225ced2: @ 225ced2 :thumb
	mov     r2, #0x5d
.thumb
branch_225ced4: @ 225ced4 :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, #0x4
	strh    r0, [r4, #0x2a]
	mov     r0, #0xa
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225ceee

.thumb
branch_225ceee: @ 225ceee :thumb
	bl      Function_225d06c
	mov     r0, r4
	add     r0, #0x2c
	mov     r1, r6
	bl      Function_225dc40
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d218
	mov     r0, r4
	bl      Function_225d0f8
	mov     r0, r4
	bl      Function_225d11c
	mov     r0, #0x5
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225cf16

.thumb
branch_225cf16: @ 225cf16 :thumb
	ldr     r0, [pc, #0x104] @ 0x225d01c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_225cf2e
	ldr     r0, [pc, #0xfc] @ 0x225d020, (=0x5dc)
	bl      0x2005748
	ldrh    r0, [r4, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225cf2e

.thumb
branch_225cf2e: @ 225cf2e :thumb
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_225cf4a
	ldr     r0, [r4, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bmi     branch_225cf66
	mov     r0, #0x5e
	lsl     r0, r0, #4
	bl      0x2005748
	ldr     r0, [r4, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x10]
	b       branch_225cf66
@ 0x225cf4a

.thumb
branch_225cf4a: @ 225cf4a :thumb
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_225cf66
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x3
	bge     branch_225cf66
	mov     r0, #0x5e
	lsl     r0, r0, #4
	bl      0x2005748
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
.thumb
branch_225cf66: @ 225cf66 :thumb
	mov     r0, r4
	bl      Function_225d0f8
	b       branch_225d018
@ 0x225cf6e

.thumb
branch_225cf6e: @ 225cf6e :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [r4, #0x30]
	ldr     r0, [r0, #0x4]
	ldr     r2, [r4, #0x10]
	bl      0x222e5d8
	ldr     r0, [r4, #0x10]
	bl      0x22333e4
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x60
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d218
	mov     r0, r5
	bl      Function_225d284
	ldr     r0, [pc, #0x88] @ 0x225d024, (=0x565)
	bl      0x2005748
	mov     r0, #0x7
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225cfa4

.thumb
branch_225cfa4: @ 225cfa4 :thumb
	bl      0x2233434
	cmp     r0, #0x1
	beq     branch_225d018
	ldr     r0, [pc, #0x78] @ 0x225d028, (=0x5e4)
	bl      0x2005748
	mov     r0, r5
	bl      Function_225d2a0
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x61
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, #0x8
	strh    r0, [r4, #0x2a]
	mov     r0, #0xa
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225cfd4

.thumb
branch_225cfd4: @ 225cfd4 :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	bne     branch_225cfde
	mov     r2, #0x62
	b       branch_225cfe0
@ 0x225cfde

.thumb
branch_225cfde: @ 225cfde :thumb
	mov     r2, #0x63
.thumb
branch_225cfe0: @ 225cfe0 :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, #0x9
	strh    r0, [r4, #0x2a]
	mov     r0, #0xa
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225cffa

.thumb
branch_225cffa: @ 225cffa :thumb
	mov     r0, r5
	bl      Function_225d2cc
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225d004

.thumb
branch_225d004: @ 225d004 :thumb
	mov     r0, r5
	bl      Function_225d2b4
	cmp     r0, #0x1
	bne     branch_225d018
	ldrh    r0, [r4, #0x2a]
	strh    r0, [r4, #0x28]
	b       branch_225d018
@ 0x225d014

.thumb
branch_225d014: @ 225d014 :thumb
	bl      0x2022974
.thumb
branch_225d018: @ 225d018 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225d01c

.word 0x21bf67c @ 0x225d01c
.word 0x5dc @ 0x225d020
.word 0x565 @ 0x225d024
.word 0x5e4 @ 0x225d028
.thumb
Function_225d02c: @ 225d02c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x2c
	mov     r4, r2
	bl      Function_225dc24
	mov     r0, r5
	bl      0x201a8fc
	ldr     r0, [r5, #0x14]
	bl      0x2021bd4
	ldr     r0, [r5, #0x18]
	bl      0x200a4e4
	ldr     r0, [r5, #0x1c]
	bl      0x200a6dc
	mov     r7, #0x13
	mov     r6, #0x0
	lsl     r7, r7, #4
.thumb
branch_225d056: @ 225d056 :thumb
	ldr     r0, [r4, r7]
	ldr     r1, [r5, #0x18]
	bl      0x2009d68
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_225d056
	pop     {r3-r7,pc}
@ 0x225d06a


.align 2, 0


.thumb
Function_225d06c: @ 225d06c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	add     r0, #0x2c
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_225dc58
	mov     r3, #0x0
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x60] @ 0x225d0f4, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	add     r0, #0x2c
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_225dc58
	mov     r2, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x225d0f4, (=0x10200)
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	add     r0, #0x2c
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_225dc58
	mov     r2, r0
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x225d0f4, (=0x10200)
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	bl      0x201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225d0f4

.word 0x10200 @ 0x225d0f4
.thumb
Function_225d0f8: @ 225d0f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r2, [r4, #0x10]
	mov     r1, #0xc
	ldr     r3, [pc, #0xc] @ 0x225d118, (=0x225dd78)
	mul     r1, r2
	ldr     r0, [r4, #0x14]
	add     r1, r3, r1
	bl      0x2021c50
	pop     {r4,pc}
@ 0x225d116


.align 2


.word 0x225dd78 @ 0x225d118
.thumb
Function_225d11c: @ 225d11c :thumb
	ldr     r3, [pc, #0x4] @ 0x225d124, (=0x2021cc9)
	ldr     r0, [r0, #0x14]
	mov     r1, #0x1
	bx      r3
@ 0x225d124

.word 0x2021cc9 @ 0x225d124
.thumb
Function_225d128: @ 225d128 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x0]
	mov     r1, r5
	mov     r4, r2
	mov     r6, r3
	add     r1, #0x8
	mov     r2, #0x1
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x8
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r6
	bl      0x2023790
	str     r0, [r5, #0x18]
	mov     r0, r4
	bl      0x2025e44
	bl      0x2027ac0
	str     r0, [r5, #0x4]
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225d178

.thumb
Function_225d178: @ 225d178 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_225d196
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_225d196: @ 225d196 :thumb
	mov     r0, r5
	bl      Function_225d2a0
	ldr     r0, [r5, #0x18]
	bl      0x20237bc
	mov     r0, r5
	add     r0, #0x8
	bl      0x201a8fc
	mov     r0, r5
	mov     r1, r4
	bl      Function_225d348
	pop     {r3-r5,pc}
@ 0x225d1b4

.thumb
Function_225d1b4: @ 225d1b4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_225d1d4
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_225d1d4: @ 225d1d4 :thumb
	mov     r0, r5
	add     r0, #0x8
	mov     r1, #0xf
	bl      0x201ada4
	ldr     r0, [r5, #0x18]
	mov     r1, r4
	bl      0x2023810
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x225d214, (=0x1020f)
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x18]
	add     r0, #0x8
	bl      0x201d78c
	str     r0, [r5, #0x0]
	add     r5, #0x8
	mov     r1, #0x1
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0x5
	bl      0x200e060
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225d214

.word 0x1020f @ 0x225d214
.thumb
Function_225d218: @ 225d218 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_225d238
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_225d238: @ 225d238 :thumb
	mov     r0, r5
	add     r0, #0x8
	mov     r1, #0xf
	bl      0x201ada4
	ldr     r0, [r5, #0x18]
	mov     r1, r4
	bl      0x2023810
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x225d280, (=0x1020f)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x18]
	add     r0, #0x8
	bl      0x201d78c
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x8
	mov     r2, r1
	mov     r3, #0x5
	bl      0x200e060
	add     r5, #0x8
	mov     r0, r5
	bl      0x201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225d27e


.align 2


.word 0x1020f @ 0x225d280
.thumb
Function_225d284: @ 225d284 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_225d292
	bl      0x2022974
.thumb
branch_225d292: @ 225d292 :thumb
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x1
	bl      0x200e7fc
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x225d2a0

.thumb
Function_225d2a0: @ 225d2a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_225d2b2
	bl      0x200eba0
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
.thumb
branch_225d2b2: @ 225d2b2 :thumb
	pop     {r4,pc}
@ 0x225d2b4

.thumb
Function_225d2b4: @ 225d2b4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_225d2c8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225d2c8

.thumb
branch_225d2c8: @ 225d2c8 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225d2cc

.thumb
Function_225d2cc: @ 225d2cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_225d2e8
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_225d2e8: @ 225d2e8 :thumb
	mov     r0, r4
	bl      Function_225d2a0
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x1
	bl      0x200e084
	add     r4, #0x8
	mov     r0, r4
	bl      0x201ad10
	pop     {r4,pc}
@ 0x225d302


.align 2, 0


.thumb
Function_225d304: @ 225d304 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0x20]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_225d318
	bl      0x2022974
.thumb
branch_225d318: @ 225d318 :thumb
	str     r6, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x225d32c, (=Unknown_225dd38)
	mov     r2, #0x1f
	mov     r3, #0x6
	bl      0x2002100
	str     r0, [r5, #0x20]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225d32c

.word Unknown_225dd38 @ 0x225d32c



.thumb
Function_225d330: @ 225d330 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_225d346
	mov     r1, #0x0
	str     r1, [r4, #0x20]
.thumb
branch_225d346: @ 225d346 :thumb
	pop     {r4,pc}
@ 0x225d348

.thumb
Function_225d348: @ 225d348 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_225d35a
	bl      0x2002154
	mov     r0, #0x0
	str     r0, [r4, #0x20]
.thumb
branch_225d35a: @ 225d35a :thumb
	pop     {r4,pc}
@ 0x225d35c

.thumb
Function_225d35c: @ 225d35c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	bl      Function_225d388
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225d36c

.thumb
Function_225d36c: @ 225d36c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x14]
	str     r4, [sp, #0x4]
	bl      Function_225d478
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225d380

.thumb
Function_225d380: @ 225d380 :thumb
	ldr     r3, [pc, #0x0] @ 0x225d384, (=0x225d869)
	bx      r3
@ 0x225d384

.word 0x225d869 @ 0x225d384
.thumb
Function_225d388: @ 225d388 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x80
	str     r1, [sp, #0x0]
	mov     r6, r2
	add     r1, #0xc0
	str     r0, [sp, #0x30]
	str     r0, [sp, #0x4]
	ldr     r0, [r6, r1]
	mov     r2, #0x0
	str     r3, [sp, #0x18]
	mov     r1, #0xc7
	mov     r3, r2
	bl      0x2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	str     r3, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	ldr     r2, [r6, #0x0]
	mov     r1, #0xc8
	bl      0x20070e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	str     r3, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	ldr     r2, [r6, #0x0]
	mov     r1, #0xca
	bl      0x200710c
	ldr     r4, [pc, #0x90] @ 0x225d474, (=0x225dde8)
	ldr     r5, [sp, #0x10]
	mov     r7, #0x0
.thumb
branch_225d3e6: @ 225d3e6 :thumb
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      0x201a8d4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r7, #0x6
	blt     branch_225d3e6
	mov     r3, #0xc1
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x6d
	lsl     r3, r3, #10
	bl      Function_225d89c
	ldr     r0, [sp, #0x30]
	ldr     r3, [sp, #0x10]
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	mov     r1, #0xc8
	mov     r2, #0x0
	add     r3, #0x84
	bl      0x20071b4
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x30]
	add     r1, #0x80
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	add     r0, #0x88
	bl      Function_225db8c
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x30]
	add     r0, #0xa8
	mov     r1, #0x0
	bl      Function_225db8c
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0x4]
	add     r1, #0xc8
	bl      0x222f144
	cmp     r0, #0x0
	bne     branch_225d464
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	ldr     r1, [r1, #0x4]
	add     r0, #0xc8
	bl      Function_225dccc
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0x4]
	add     r1, #0xc8
	bl      0x222f124
.thumb
branch_225d464: @ 225d464 :thumb
	ldr     r0, [sp, #0x10]
	add     r0, #0xdc
	str     r0, [sp, #0x10]
	bl      Function_225dc74
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x225d472


.align 2


.word 0x225dde8 @ 0x225d474
.thumb
Function_225d478: @ 225d478 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r2, [sp, #0x14]
	ldr     r2, [sp, #0x44]
	mov     r4, r0
	str     r2, [sp, #0x44]
	mov     r2, r4
	add     r2, #0x60
	ldrh    r2, [r2, #0x0]
	mov     r7, r1
	mov     r5, r3
	ldr     r6, [sp, #0x40]
	cmp     r2, #0x16
	bls     branch_225d496
	b       branch_225d85c
@ 0x225d496

.thumb
branch_225d496: @ 225d496 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x225d4a2

Jumppoints_225d4a2:
.hword branch_225d4d0 - Jumppoints_225d4a2 - 2
.hword branch_225d4fe - Jumppoints_225d4a2 - 2
.hword branch_225d51c - Jumppoints_225d4a2 - 2
.hword branch_225d54a - Jumppoints_225d4a2 - 2
.hword branch_225d578 - Jumppoints_225d4a2 - 2
.hword branch_225d5d0 - Jumppoints_225d4a2 - 2
.hword branch_225d5e2 - Jumppoints_225d4a2 - 2
.hword branch_225d622 - Jumppoints_225d4a2 - 2
.hword branch_225d646 - Jumppoints_225d4a2 - 2
.hword branch_225d66c - Jumppoints_225d4a2 - 2
.hword branch_225d68c - Jumppoints_225d4a2 - 2
.hword branch_225d6a8 - Jumppoints_225d4a2 - 2
.hword branch_225d6c6 - Jumppoints_225d4a2 - 2
.hword branch_225d6d6 - Jumppoints_225d4a2 - 2
.hword branch_225d704 - Jumppoints_225d4a2 - 2
.hword branch_225d722 - Jumppoints_225d4a2 - 2
.hword branch_225d750 - Jumppoints_225d4a2 - 2
.hword branch_225d77e - Jumppoints_225d4a2 - 2
.hword branch_225d7e0 - Jumppoints_225d4a2 - 2
.hword branch_225d7f2 - Jumppoints_225d4a2 - 2
.hword branch_225d804 - Jumppoints_225d4a2 - 2
.hword branch_225d826 - Jumppoints_225d4a2 - 2
.hword branch_225d832 - Jumppoints_225d4a2 - 2
.thumb
branch_225d4d0: @ 225d4d0 :thumb
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225d4dc
	mov     r2, #0x67
	b       branch_225d4de
@ 0x225d4dc

.thumb
branch_225d4dc: @ 225d4dc :thumb
	mov     r2, #0x69
.thumb
branch_225d4de: @ 225d4de :thumb
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d4fe

.thumb
branch_225d4fe: @ 225d4fe :thumb
	add     r0, #0x88
	bl      Function_225dc40
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d51c

.thumb
branch_225d51c: @ 225d51c :thumb
	ldr     r0, [pc, #0x328] @ 0x225d848, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_225d528
	b       branch_225d860
@ 0x225d528

.thumb
branch_225d528: @ 225d528 :thumb
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0x68
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d54a

.thumb
branch_225d54a: @ 225d54a :thumb
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225d556
	mov     r2, #0x6b
	b       branch_225d558
@ 0x225d556

.thumb
branch_225d556: @ 225d556 :thumb
	mov     r2, #0x6c
.thumb
branch_225d558: @ 225d558 :thumb
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0x4
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d578

.thumb
branch_225d578: @ 225d578 :thumb
	ldr     r0, [r6, #0x4]
	bl      0x222e3bc
	add     r1, sp, #0x20
	bl      0x222e908
	ldr     r0, [r6, #0x4]
	bl      0x222e338
	mov     r1, r0
	ldr     r0, [r6, #0x4]
	bl      0x222e924
	add     r1, sp, #0x20
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x44]
	ldr     r3, [sp, #0x14]
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x2ac] @ 0x225d84c, (=0x90a00)
	mov     r2, r7
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0x2ac] @ 0x225d850, (=0xd0e00)
	str     r1, [sp, #0xc]
	mov     r1, r4
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r1, #0x88
	bl      Function_225d8f0
	mov     r1, r4
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xc8
	mov     r3, #0x1
	bl      Function_225da30
	mov     r0, #0x17
	lsl     r0, r0, #6
	bl      0x2005748
	mov     r0, #0x5
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d5d0

.thumb
branch_225d5d0: @ 225d5d0 :thumb
	ldr     r1, [sp, #0x14]
	bl      Function_225da74
	cmp     r0, #0x1
	bne     branch_225d65a
	mov     r0, #0x6
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d5e2

.thumb
branch_225d5e2: @ 225d5e2 :thumb
	ldr     r0, [pc, #0x264] @ 0x225d848, (=0x21bf67c)
	mov     r1, #0x1
	ldr     r0, [r0, #0x48]
	tst     r0, r1
	beq     branch_225d65a
	mov     r0, r4
	add     r0, #0xa8
	ldr     r2, [r0, #0x0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	cmp     r2, r0
	beq     branch_225d600
	mov     r0, #0x7
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d600

.thumb
branch_225d600: @ 225d600 :thumb
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0x70
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0x14
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d622

.thumb
branch_225d622: @ 225d622 :thumb
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0x6f
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d218
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x44]
	mov     r0, r5
	bl      Function_225d304
	mov     r0, #0x8
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d646

.thumb
branch_225d646: @ 225d646 :thumb
	ldr     r1, [sp, #0x44]
	mov     r0, r5
	bl      Function_225d330
	cmp     r0, #0x0
	beq     branch_225d65c
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_225d664
.thumb
branch_225d65a: @ 225d65a :thumb
	b       branch_225d860
@ 0x225d65c

.thumb
branch_225d65c: @ 225d65c :thumb
	mov     r0, #0x9
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d664

.thumb
branch_225d664: @ 225d664 :thumb
	mov     r0, #0x14
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d66c

.thumb
branch_225d66c: @ 225d66c :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x44]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0xa
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d68c

.thumb
branch_225d68c: @ 225d68c :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225d72c
	ldr     r2, [sp, #0x14]
	ldr     r3, [sp, #0x44]
	mov     r0, r4
	mov     r1, r7
	bl      Function_225db3c
	mov     r0, #0xb
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d6a8

.thumb
branch_225d6a8: @ 225d6a8 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [sp, #0x44]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0xc
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d6c6

.thumb
branch_225d6c6: @ 225d6c6 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225d72c
	mov     r0, #0xd
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d6d6

.thumb
branch_225d6d6: @ 225d6d6 :thumb
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225d6e2
	mov     r2, #0x71
	b       branch_225d6e4
@ 0x225d6e2

.thumb
branch_225d6e2: @ 225d6e2 :thumb
	mov     r2, #0x73
.thumb
branch_225d6e4: @ 225d6e4 :thumb
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0xe
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d704

.thumb
branch_225d704: @ 225d704 :thumb
	add     r0, #0xa8
	bl      Function_225dc40
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0xf
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d722

.thumb
branch_225d722: @ 225d722 :thumb
	ldr     r0, [pc, #0x124] @ 0x225d848, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_225d72e
.thumb
branch_225d72c: @ 225d72c :thumb
	b       branch_225d860
@ 0x225d72e

.thumb
branch_225d72e: @ 225d72e :thumb
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0x72
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0x10
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d750

.thumb
branch_225d750: @ 225d750 :thumb
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225d75c
	mov     r2, #0x75
	b       branch_225d75e
@ 0x225d75c

.thumb
branch_225d75c: @ 225d75c :thumb
	mov     r2, #0x76
.thumb
branch_225d75e: @ 225d75e :thumb
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0x11
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d77e

.thumb
branch_225d77e: @ 225d77e :thumb
	ldr     r0, [r6, #0x0]
	bl      0x2030ec4
	mov     r5, r0
	bl      0x2030ed0
	str     r0, [sp, #0x18]
	mov     r0, r5
	bl      0x2030ed4
	str     r0, [sp, #0x1c]
	ldr     r0, [r6, #0x4]
	bl      0x222e338
	mov     r1, r0
	ldr     r0, [r6, #0x4]
	bl      0x222e924
	add     r1, sp, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x44]
	ldr     r3, [sp, #0x14]
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0xa4] @ 0x225d854, (=0xb0c00)
	mov     r2, r7
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0xa4] @ 0x225d858, (=0xf0e00)
	str     r1, [sp, #0xc]
	mov     r1, r4
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r1, #0xa8
	bl      Function_225d8f0
	mov     r1, r4
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	add     r1, #0xdc
	mov     r3, #0x2
	bl      Function_225da30
	mov     r0, #0x17
	lsl     r0, r0, #6
	bl      0x2005748
	mov     r0, #0x12
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d7e0

.thumb
branch_225d7e0: @ 225d7e0 :thumb
	ldr     r1, [sp, #0x14]
	bl      Function_225da74
	cmp     r0, #0x1
	bne     branch_225d860
	mov     r0, #0x13
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d7f2

.thumb
branch_225d7f2: @ 225d7f2 :thumb
	ldr     r0, [pc, #0x54] @ 0x225d848, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_225d860
	mov     r0, #0x14
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d804

.thumb
branch_225d804: @ 225d804 :thumb
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0x78
	bl      Function_225cbec
	mov     r1, r0
	mov     r0, r5
	bl      Function_225d1b4
	mov     r0, r4
	mov     r1, #0x15
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	mov     r0, #0x16
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d826

.thumb
branch_225d826: @ 225d826 :thumb
	mov     r0, r5
	bl      Function_225d2cc
	add     sp, #0x28
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225d832

.thumb
branch_225d832: @ 225d832 :thumb
	mov     r0, r5
	bl      Function_225d2b4
	cmp     r0, #0x1
	bne     branch_225d860
	mov     r0, r4
	add     r0, #0x62
	ldrh    r0, [r0, #0x0]
	add     r4, #0x60
	strh    r0, [r4, #0x0]
	b       branch_225d860
@ 0x225d848

.word 0x21bf67c @ 0x225d848
.word 0x90a00 @ 0x225d84c
.word 0xd0e00 @ 0x225d850
.word 0xb0c00 @ 0x225d854
.word 0xf0e00 @ 0x225d858
.thumb
branch_225d85c: @ 225d85c :thumb
	bl      0x2022974
.thumb
branch_225d860: @ 225d860 :thumb
	mov     r0, #0x0
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x225d866


.align 2, 0


.thumb
Function_225d868: @ 225d868 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x88
	bl      Function_225dc24
	mov     r0, r5
	add     r0, #0xa8
	bl      Function_225dc24
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      0x20181c4
	mov     r0, r5
	mov     r4, #0x0
	add     r0, #0x80
	str     r4, [r0, #0x0]
.thumb
branch_225d88c: @ 225d88c :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x6
	blt     branch_225d88c
	pop     {r3-r5,pc}
@ 0x225d89c

.thumb
Function_225d89c: @ 225d89c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r7, r2
	mov     r1, #0x0
	mov     r5, r0
	mov     r4, r3
	bl      0x201ada4
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, r7
	bl      Function_225cbec
	mov     r6, r0
	mov     r0, #0x1
	mov     r1, r6
	mov     r2, #0x0
	bl      0x2002d7c
	mov     r3, r0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r4, #0x90
	mov     r0, #0x0
	sub     r3, r4, r3
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	lsr     r3, r3, #1
	bl      0x201d78c
	mov     r0, r5
	bl      0x201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225d8ee


.align 2, 0


.thumb
Function_225d8f0: @ 225d8f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	str     r1, [sp, #0x20]
	add     r0, #0x10
	mov     r1, #0x0
	str     r2, [sp, #0x10]
	ldr     r7, [sp, #0x38]
	ldr     r4, [sp, #0x40]
	bl      0x201ada4
	mov     r0, r6
	add     r0, #0x50
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x0
	bl      Function_225dc58
	mov     r3, #0x0
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r6
	str     r4, [sp, #0x8]
	add     r0, #0x10
	mov     r1, #0x1
	str     r3, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x1
	bl      Function_225dc58
	mov     r2, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r6
	str     r4, [sp, #0x8]
	mov     r3, #0x0
	add     r0, #0x10
	mov     r1, #0x1
	str     r3, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x2
	bl      Function_225dc58
	mov     r2, r0
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r6
	str     r4, [sp, #0x8]
	mov     r3, #0x0
	add     r0, #0x10
	mov     r1, #0x1
	str     r3, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x20]
	ldr     r1, [r7, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r1, r0
	bne     branch_225da1c
	ldr     r0, [r7, #0x4]
	cmp     r0, #0x3
	bcs     branch_225da1c
	ldr     r0, [sp, #0x48]
	cmp     r0, #0x1
	bne     branch_225d996
	ldr     r0, [sp, #0x44]
	str     r0, [sp, #0x14]
	b       branch_225d998
@ 0x225d996

.thumb
branch_225d996: @ 225d996 :thumb
	str     r4, [sp, #0x14]
.thumb
branch_225d998: @ 225d998 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x3c]
	mov     r1, #0x0
	bl      Function_225cc78
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	mov     r2, #0x6e
	bl      Function_225cbec
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, #0x1
	mov     r2, #0x0
	bl      0x2002d7c
	str     r0, [sp, #0x1c]
	mov     r1, #0x0
	ldr     r3, [sp, #0x1c]
	mov     r5, #0x60
	sub     r5, r5, r3
	lsr     r3, r5, #31
	add     r3, r5, r3
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	mov     r0, r6
	str     r1, [sp, #0xc]
	add     r0, #0x50
	mov     r1, #0x1
	asr     r3, r3, #1
	bl      0x201d78c
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r7, #0x4]
	bl      Function_225dc58
	mov     r5, r0
	mov     r0, #0x1
	mov     r1, r5
	mov     r2, #0x0
	bl      0x2002d7c
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r4, #0x68
	sub     r4, r4, r3
	lsr     r3, r4, #31
	add     r3, r4, r3
	mov     r0, r6
	asr     r3, r3, #1
	str     r1, [sp, #0xc]
	add     r0, #0x50
	mov     r1, #0x1
	mov     r2, r5
	add     r3, #0x60
	bl      0x201d78c
.thumb
branch_225da1c: @ 225da1c :thumb
	mov     r0, r6
	add     r0, #0x50
	bl      0x201a9a4
	add     r6, #0x10
	mov     r0, r6
	bl      0x201a9a4
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225da30

.thumb
Function_225da30: @ 225da30 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	lsl     r0, r3, #24
	mov     r4, #0x0
	lsr     r0, r0, #24
	str     r1, [sp, #0x0]
	str     r4, [r6, #0x64]
	mov     r5, r6
	str     r0, [sp, #0x4]
.thumb
branch_225da44: @ 225da44 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x68]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	mov     r2, #0x50
	bl      Function_225dca4
	str     r0, [r5, #0x74]
	add     r0, r4, #0x2
	lsl     r7, r0, #4
	ldr     r1, [sp, #0x4]
	add     r0, r6, r7
	bl      0x201c2b4
	add     r0, r6, r7
	mov     r1, #0x0
	bl      0x201ada4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_225da44
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225da74

.thumb
Function_225da74: @ 225da74 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r6, r0
	ldr     r0, [r6, #0x64]
	cmp     r0, #0x14
	blt     branch_225da86
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225da86

.thumb
branch_225da86: @ 225da86 :thumb
	add     r1, r0, #0x1
	mov     r0, #0x50
	str     r1, [r6, #0x64]
	mul     r0, r1
	mov     r1, #0x14
	blx 0x20e1f6c
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x20]
	str     r6, [sp, #0x18]
.thumb
branch_225da9e: @ 225da9e :thumb
	ldr     r0, [sp, #0x18]
	ldr     r2, [r0, #0x74]
	ldr     r0, [r0, #0x68]
	cmp     r0, r2
	bne     branch_225dab0
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_225db18
@ 0x225dab0

.thumb
branch_225dab0: @ 225dab0 :thumb
	ldr     r1, [sp, #0x24]
	cmp     r2, r1
	blt     branch_225dabe
	sub     r4, r1, r0
	mov     r2, r1
	ldr     r1, [sp, #0x18]
	b       branch_225dac2
@ 0x225dabe

.thumb
branch_225dabe: @ 225dabe :thumb
	ldr     r1, [sp, #0x18]
	sub     r4, r2, r0
.thumb
branch_225dac2: @ 225dac2 :thumb
	mov     r5, #0x0
	str     r2, [r1, #0x68]
	cmp     r4, #0x0
	ble     branch_225db0c
	ldr     r1, [sp, #0x20]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1c89 @ add r1, r1, #0x2
	lsl     r7, r1, #4
	str     r0, [sp, #0x28]
.thumb
branch_225dad4: @ 225dad4 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, r6
	add     r0, r0, r5
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x10
	str     r0, [sp, #0x14]
	add     r1, #0x84
	ldr     r1, [r1, #0x0]
	add     r0, r6, r7
	ldr     r1, [r1, #0x14]
	mov     r2, #0xf7
	mov     r3, #0x10
	bl      0x201addc
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r4
	blt     branch_225dad4
.thumb
branch_225db0c: @ 225db0c :thumb
	ldr     r0, [sp, #0x20]
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #4
	add     r0, r6, r0
	bl      0x201a9a4
.thumb
branch_225db18: @ 225db18 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, #0x3
	blt     branch_225da9e
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x3
	bne     branch_225db34
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225db34

.thumb
branch_225db34: @ 225db34 :thumb
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x225db3a


.align 2, 0


.thumb
Function_225db3c: @ 225db3c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r7, r0
	str     r4, [sp, #0x8]
	mov     r0, #0x5
	str     r3, [sp, #0xc]
	lsl     r0, r0, #6
	ldr     r0, [r2, r0]
	str     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	mov     r1, #0xcb
	mov     r3, r4
	bl      0x200710c
	mov     r5, r7
	mov     r6, r4
.thumb
branch_225db62: @ 225db62 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      0x201ada4
	mov     r0, r5
	bl      0x201a954
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x6
	blt     branch_225db62
	ldr     r1, [sp, #0x10]
	ldr     r3, [pc, #0xc] @ 0x225db88, (=0x50600)
	mov     r0, r7
	mov     r2, #0x77
	bl      Function_225d89c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225db88

.word 0x50600 @ 0x225db88
.thumb
Function_225db8c: @ 225db8c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x1
	mov     r7, r2
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	mov     r1, r7
	bl      0x2023790
	str     r0, [r5, #0x10]
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_225dba4: @ 225dba4 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r7
	bl      0x2023790
	str     r0, [r4, #0x14]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x3
	blt     branch_225dba4
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_225dbc2
	mov     r6, #0x0
	b       branch_225dbc4
@ 0x225dbc2

.thumb
branch_225dbc2: @ 225dbc2 :thumb
	mov     r6, #0x4
.thumb
branch_225dbc4: @ 225dbc4 :thumb
	add     r0, r6, #0x2
	bl      0x2233454
	str     r0, [r5, #0x8]
	add     r0, r6, #0x1
	bl      0x2233454
	str     r0, [r5, #0x0]
	mov     r0, r6
	bl      0x2233454
	str     r0, [r5, #0x4]
	add     r0, r6, #0x3
	bl      0x2233454
	str     r0, [r5, #0xc]
	cmp     r0, #0x1
	bne     branch_225dc20
	mov     r0, r6
	bl      0x2233538
	mov     r4, r0
	bne     branch_225dbf6
	bl      0x2022974
.thumb
branch_225dbf6: @ 225dbf6 :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      0x2023d28
	mov     r4, #0x0
	add     r7, r6, #0x1
.thumb
branch_225dc02: @ 225dc02 :thumb
	add     r0, r7, r4
	bl      0x2233538
	mov     r6, r0
	bne     branch_225dc10
	bl      0x2022974
.thumb
branch_225dc10: @ 225dc10 :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, r6
	bl      0x2023d28
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_225dc02
.thumb
branch_225dc20: @ 225dc20 :thumb
	pop     {r3-r7,pc}
@ 0x225dc22


.align 2, 0


.thumb
Function_225dc24: @ 225dc24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	bl      0x20237bc
	mov     r4, #0x0
.thumb
branch_225dc30: @ 225dc30 :thumb
	ldr     r0, [r5, #0x14]
	bl      0x20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_225dc30
	pop     {r3-r5,pc}
@ 0x225dc40

.thumb
Function_225dc40: @ 225dc40 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldr     r0, [r2, #0xc]
	cmp     r0, #0x0
	bne     branch_225dc54
	mov     r0, r1
	ldr     r1, [r2, #0x0]
	bl      Function_225cc18
	pop     {r3,pc}
@ 0x225dc54

.thumb
branch_225dc54: @ 225dc54 :thumb
	ldr     r0, [r2, #0x10]
	pop     {r3,pc}
@ 0x225dc58

.thumb
Function_225dc58: @ 225dc58 :thumb
	push    {r3,lr}
	mov     r3, r0
	ldr     r0, [r3, #0xc]
	cmp     r0, #0x0
	bne     branch_225dc6c
	mov     r0, r1
	ldr     r1, [r3, #0x0]
	bl      Function_225cc44
	pop     {r3,pc}
@ 0x225dc6c

.thumb
branch_225dc6c: @ 225dc6c :thumb
	lsl     r0, r2, #2
	add     r0, r3, r0
	ldr     r0, [r0, #0x14]
	pop     {r3,pc}
@ 0x225dc74

.thumb
Function_225dc74: @ 225dc74 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, #0x0
	str     r6, [r5, #0xc]
	mov     r4, r5
	str     r6, [r5, #0x10]
	add     r4, #0xc
	mov     r7, r6
.thumb
branch_225dc84: @ 225dc84 :thumb
	mov     r0, r6
	add     r0, #0x8
	bl      0x2233454
	str     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	add     r0, r1, r0
	adc     r2, r7
	str     r0, [r4, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r2, [r4, #0x4]
	cmp     r6, #0x3
	blt     branch_225dc84
	pop     {r3-r7,pc}
@ 0x225dca4

.thumb
Function_225dca4: @ 225dca4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x3
	bcc     branch_225dcb4
	bl      0x2022974
.thumb
branch_225dcb4: @ 225dcb4 :thumb
	lsl     r2, r4, #2
	mov     r1, #0x0
	ldr     r2, [r5, r2]
	mov     r0, r6
	mov     r3, r1
	blx 0x20e1f1c
	ldr     r2, [r5, #0xc]
	ldr     r3, [r5, #0x10]
	blx 0x20e1ed4
	pop     {r4-r6,pc}
@ 0x225dccc

.thumb
Function_225dccc: @ 225dccc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r2, r6
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_225dcda: @ 225dcda :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_225dcda
	mov     r4, r6
	mov     r5, #0x0
	add     r4, #0xc
.thumb
branch_225dce8: @ 225dce8 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      0x222e374
	mov     r7, r0
	beq     branch_225dd2a
	bl      0x222e850
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r1, sp, #0x8
	bl      0x222e908
	ldr     r1, [sp, #0x4]
	mov     r0, #0x0
	bl      0x22335c0
	cmp     r0, #0x1
	bne     branch_225dd2a
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x3
	bcs     branch_225dd2a
	lsl     r1, r0, #2
	ldr     r0, [r6, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, r1]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	add     r2, r0, #0x1
	ldr     r0, [pc, #0x10] @ 0x225dd34, (=0x0)
	str     r2, [r4, #0x0]
	adc     r1, r0
	str     r1, [r4, #0x4]
branch_225dd2a: @ 225dd2a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x14
	blt     branch_225dce8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225dd34

.word 0x0 @ 0x225dd34



Unknown_225dd38: @ 0x225dd38
.incbin "./baserom/overlay/overlay_0068.bin", 0x1638, 0x225dec0 - 0x225dd38


@end 0x225dec0




