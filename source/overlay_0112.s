

.section .iwram112, "ax"


.thumb
Function_225c700: @ 225c700 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      0x2006840
	mov     r2, #0x5
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x6b
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r1, #0x27
	mov     r0, r4
	lsl     r1, r1, #4
	mov     r2, #0x6b
	bl      0x200681c
	mov     r2, #0x27
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r4, r0
	blx 0x20d5124
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6b
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x4]
	mov     r0, r4
	add     r0, #0x8
	bl      Function_225c9bc
	mov     r0, #0x53
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x8
	mov     r2, #0x6b
	bl      Function_225cc64
	ldr     r0, [r4, #0x4]
	mov     r1, r4
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r2, #0x6b
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, r2
	add     r0, #0xe9
	add     r2, #0xe1
	ldr     r3, [r4, #0x0]
	add     r0, r4, r0
	add     r1, #0x8
	add     r2, r4, r2
	bl      Function_225cda8
	ldr     r0, [r5, #0x8]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r2, #0x6b
	str     r2, [sp, #0x4]
	mov     r0, r2
	add     r0, #0xf5
	add     r2, #0xe1
	ldr     r3, [r4, #0x0]
	add     r0, r4, r0
	add     r1, #0x8
	add     r2, r4, r2
	bl      Function_225cfc0
	mov     r0, #0x59
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x8
	mov     r2, #0x6b
	bl      Function_225d1ec
	mov     r0, #0x2
	lsl     r0, r0, #8
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x8
	mov     r2, #0x6b
	bl      Function_225d57c
	ldr     r0, [pc, #0x10] @ 0x225c7c0, (=0x225c965)
	mov     r1, r4
	bl      0x2017798
	bl      0x20177a4
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225c7c0

.word 0x225c965 @ 0x225c7c0
.thumb
Function_225c7c4: @ 225c7c4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	mov     r0, r6
	bl      0x2006840
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bls     branch_225c7e2
	b       branch_225c8ea
@ 0x225c7e2

.thumb
branch_225c7e2: @ 225c7e2 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225c7ee

Jumppoints_225c7ee:
.hword branch_225c7f8 - Jumppoints_225c7ee - 2
.hword branch_225c81e - Jumppoints_225c7ee - 2
.hword branch_225c82e - Jumppoints_225c7ee - 2
.hword branch_225c8bc - Jumppoints_225c7ee - 2
.hword branch_225c8dc - Jumppoints_225c7ee - 2
.thumb
branch_225c7f8: @ 225c7f8 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x6b
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r6, #0x8]
	mov     r1, #0x1
	bl      0x222e31c
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225c8ea
@ 0x225c81e

.thumb
branch_225c81e: @ 225c81e :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225c8ea
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225c8ea
@ 0x225c82e

.thumb
branch_225c82e: @ 225c82e :thumb
	ldr     r0, [pc, #0xc8] @ 0x225c8f8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_225c84a
	ldr     r0, [r6, #0x8]
	bl      0x222e12c
	cmp     r0, #0x1
	beq     branch_225c84a
	bl      0x2231760
	cmp     r0, #0x1
	bne     branch_225c860
.thumb
branch_225c84a: @ 225c84a :thumb
	ldr     r0, [r6, #0x8]
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_225c85a
	ldr     r0, [r6, #0x8]
	bl      0x222e2a4
.thumb
branch_225c85a: @ 225c85a :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_225c8ea
@ 0x225c860

.thumb
branch_225c860: @ 225c860 :thumb
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	add     r0, r4, r0
	bl      Function_225cdfc
	cmp     r0, #0x1
	bne     branch_225c87e
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_225d718
.thumb
branch_225c87e: @ 225c87e :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r1, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_225cfd8
	cmp     r0, #0x1
	bne     branch_225c89a
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r4, r0
	mov     r1, #0x2
	bl      Function_225d718
.thumb
branch_225c89a: @ 225c89a :thumb
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x0]
	ldr     r2, [r6, #0x8]
	add     r0, r4, r0
	mov     r3, #0x6b
	bl      Function_225d304
	cmp     r0, #0x1
	bne     branch_225c8ea
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r4, r0
	mov     r1, #0x3
	bl      Function_225d718
	b       branch_225c8ea
@ 0x225c8bc

.thumb
branch_225c8bc: @ 225c8bc :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x6b
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225c8ea
@ 0x225c8dc

.thumb
branch_225c8dc: @ 225c8dc :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225c8ea
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x225c8ea

.thumb
branch_225c8ea: @ 225c8ea :thumb
	ldr     r1, [r6, #0x8]
	mov     r0, r4
	bl      Function_225c970
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225c8f8

.word 0x21bf67c @ 0x225c8f8
.thumb
Function_225c8fc: @ 225c8fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, r5
	bl      0x2006840
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_225d6dc
	mov     r0, #0x55
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225cdf8
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225cfd4
	mov     r0, #0x59
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225d2d0
	mov     r0, #0x53
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225cc84
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	add     r4, #0x8
	mov     r0, r4
	bl      Function_225c9f4
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x6b
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225c962


.align 2, 0


.thumb
Function_225c964: @ 225c964 :thumb
	ldr     r3, [pc, #0x4] @ 0x225c96c, (=0x225ca21)
	add     r0, #0x8
	bx      r3
@ 0x225c96a


.align 2


.word 0x225ca21 @ 0x225c96c
.thumb
Function_225c970: @ 225c970 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x55
	mov     r5, r0
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0x8
	mov     r2, r5
	add     r1, r5, r1
	add     r2, #0x8
	bl      Function_225ce60
	mov     r1, #0x16
	str     r4, [sp, #0x0]
	lsl     r1, r1, #4
	add     r0, r5, r1
	sub     r1, #0x14
	mov     r2, r5
	ldr     r3, [r5, #0x0]
	add     r1, r5, r1
	add     r2, #0x8
	bl      Function_225d004
	mov     r0, #0x59
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225d3e0
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r5, r0
	bl      Function_225d700
	add     r5, #0x8
	mov     r0, r5
	bl      Function_225ca14
	pop     {r3-r5,pc}
@ 0x225c9bc

.thumb
Function_225c9bc: @ 225c9bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xa9
	mov     r4, r1
	bl      0x2006c24
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x30
	mov     r1, r4
	bl      0x201dbec
	ldr     r0, [pc, #0x18] @ 0x225c9f0, (=0x225d858)
	bl      0x201fe94
	mov     r0, r5
	mov     r1, r4
	bl      Function_225ca34
	mov     r0, r5
	mov     r1, r4
	bl      Function_225cb98
	pop     {r3-r5,pc}
@ 0x225c9ee


.align 2


.word 0x225d858 @ 0x225c9f0
.thumb
Function_225c9f4: @ 225c9f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      0x2006ca8
	bl      0x201dc3c
	mov     r0, r4
	bl      Function_225cb60
	mov     r0, r4
	bl      Function_225cc38
	pop     {r4,pc}
@ 0x225ca14

.thumb
Function_225ca14: @ 225ca14 :thumb
	ldr     r3, [pc, #0x4] @ 0x225ca1c, (=0x20219f9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225ca1a


.align 2


.word 0x20219f9 @ 0x225ca1c
.thumb
Function_225ca20: @ 225ca20 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      0x201c2b8
	bl      0x200a858
	bl      0x201dcac
	pop     {r3,pc}
@ 0x225ca32


.align 2, 0


.thumb
Function_225ca34: @ 225ca34 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [pc, #0x114] @ 0x225cb50, (=0x225d834)
	mov     r7, r1
	bl      0x2018368
	mov     r0, r7
	bl      0x2018340
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x108] @ 0x225cb54, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x0
	ldr     r6, [pc, #0x100] @ 0x225cb58, (=0x225d8c0)
	ldr     r4, [pc, #0x100] @ 0x225cb5c, (=0x225d844)
	str     r0, [sp, #0x10]
.thumb
branch_225ca5c: @ 225ca5c :thumb
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
	ldr     r0, [sp, #0x10]
	add     r6, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x10]
	cmp     r0, #0x5
	blt     branch_225ca5c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x5
	str     r7, [sp, #0x4]
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2007130
	mov     r1, #0x5
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, r7
	bl      0x2002e98
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r7, [sp, #0xc]
	lsl     r0, r0, #6
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r3, r1
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r7, [sp, #0xc]
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x3
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r7, [sp, #0xc]
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x4
	mov     r3, #0x2
	bl      0x200710c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x5
	str     r7, [sp, #0x4]
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r2, #0x4
	mov     r3, r1
	bl      0x2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r7, [sp, #0xc]
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x2
	mov     r3, #0x4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r7, [sp, #0xc]
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x6
	mov     r3, #0x4
	bl      0x200710c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225cb50

.word 0x225d834 @ 0x225cb50
.word 0x21bf6dc @ 0x225cb54
.word 0x225d8c0 @ 0x225cb58
.word 0x225d844 @ 0x225cb5c
.thumb
Function_225cb60: @ 225cb60 :thumb
	push    {r4-r6,lr}
	ldr     r5, [pc, #0x2c] @ 0x225cb90, (=0x225d844)
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_225cb68: @ 225cb68 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_225cb68
	ldr     r0, [r6, #0x0]
	bl      0x20181c4
	ldr     r0, [pc, #0x10] @ 0x225cb94, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	pop     {r4-r6,pc}
@ 0x225cb8e


.align 2


.word 0x225d844 @ 0x225cb90
.word 0x21bf6dc @ 0x225cb94
.thumb
Function_225cb98: @ 225cb98 :thumb
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
	ldr     r0, [pc, #0x74] @ 0x225cc30, (=0x225d814)
	ldr     r1, [pc, #0x74] @ 0x225cc34, (=0x200010)
	mov     r2, #0x10
	bl      0x201e88c
	mov     r0, #0x20
	mov     r1, r6
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	ldr     r1, [pc, #0x5c] @ 0x225cc34, (=0x200010)
	mov     r0, #0x1
	bl      0x200966c
	mov     r0, #0x1
	bl      0x2009704
	mov     r1, r5
	mov     r0, #0x20
	add     r1, #0x8
	mov     r2, r6
	bl      0x20095c4
	str     r0, [r5, #0x4]
	mov     r0, r5
	mov     r2, #0x1
	add     r0, #0x8
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	mov     r7, #0x13
	mov     r4, #0x0
	lsl     r7, r7, #4
.thumb
branch_225cc04: @ 225cc04 :thumb
	mov     r0, #0x20
	mov     r1, r4
	mov     r2, r6
	bl      0x2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225cc04
	bl      0x2039734
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225cc30

.word 0x225d814 @ 0x225cc30
.word 0x200010 @ 0x225cc34
.thumb
Function_225cc38: @ 225cc38 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      0x2021964
	mov     r6, #0x13
	mov     r4, #0x0
	lsl     r6, r6, #4
.thumb
branch_225cc48: @ 225cc48 :thumb
	ldr     r0, [r5, r6]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225cc48
	bl      0x201e958
	bl      0x201f8b4
	bl      0x200a878
	pop     {r4-r6,pc}
@ 0x225cc64

.thumb
Function_225cc64: @ 225cc64 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x5
	str     r2, [sp, #0x0]
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	mov     r1, #0x5
	mov     r2, #0x0
	add     r3, r4, #0x4
	bl      0x20071d0
	str     r0, [r4, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225cc82


.align 2, 0


.thumb
Function_225cc84: @ 225cc84 :thumb
	ldr     r3, [pc, #0x4] @ 0x225cc8c, (=0x20181c5)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225cc8a


.align 2


.word 0x20181c5 @ 0x225cc8c
.thumb
Function_225cc90: @ 225cc90 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	ldr     r0, [r0, #0x4]
	mov     r4, r1
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	add     r1, r2, #0x6
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	add     r2, r3, #0x5
	lsl     r2, r2, #24
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	add     r3, sp, #0x18
	mov     r1, #0x3
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldrb    r3, [r3, #0x10]
	ldr     r0, [r4, #0x0]
	lsr     r2, r2, #24
	lsl     r3, r3, #1
	.hword  0x1d1b @ add r3, r3, #0x4
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x225cce8

.thumb
Function_225cce8: @ 225cce8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r0
	mov     r5, r1
	ldr     r0, [sp, #0x38]
	mov     r1, #0x3
	mov     r7, r2
	mov     r6, r3
	blx 0x20e2178
	str     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x38]
	mov     r1, #0x3
	blx 0x20e2178
	ldr     r1, [sp, #0x44]
	cmp     r1, #0x0
	beq     branch_225cd0e
	.hword  0x1c80 @ add r0, r0, #0x2
.thumb
branch_225cd0e: @ 225cd0e :thumb
	ldr     r1, [sp, #0x3c]
	cmp     r1, #0x1
	bne     branch_225cd16
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_225cd16: @ 225cd16 :thumb
	ldr     r1, [r4, #0x4]
	lsl     r2, r6, #1
	add     r6, r2, #0x4
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r2, r1
	add     r2, #0xc
	str     r2, [sp, #0x8]
	ldr     r2, [sp, #0x1c]
	lsl     r0, r0, #25
	lsl     r2, r2, #25
	lsr     r2, r2, #24
	str     r2, [sp, #0xc]
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	ldrh    r0, [r1, #0x0]
	lsl     r4, r7, #1
	add     r4, #0x15
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	ldrh    r0, [r1, #0x2]
	lsl     r2, r4, #24
	lsl     r3, r6, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x20198e8
	ldr     r0, [sp, #0x48]
	cmp     r0, #0x0
	beq     branch_225cd7c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	lsl     r2, r4, #24
	lsl     r3, r6, #24
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x2019e2c
	b       branch_225cd9a
@ 0x225cd7c

.thumb
branch_225cd7c: @ 225cd7c :thumb
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x0
	beq     branch_225cd9a
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x3
	str     r1, [sp, #0x8]
	lsl     r2, r4, #24
	lsl     r3, r6, #24
	ldr     r0, [r5, #0x0]
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x2019e2c
.thumb
branch_225cd9a: @ 225cd9a :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	bl      0x201c3c0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x225cda6


.align 2, 0


.thumb
Function_225cda8: @ 225cda8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [sp, #0x1c]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      0x222eb48
	mov     r1, #0x0
	strb    r1, [r5, #0x0]
	mov     r1, #0x3c
	str     r0, [sp, #0x0]
	blx 0x20e2178
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	mov     r0, #0x0
	strb    r0, [r5, #0x2]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x28
	blx 0x20e2178
	str     r0, [r5, #0x8]
	mov     r0, #0x1
	strb    r0, [r5, #0x4]
	mov     r0, #0x0
	strh    r0, [r5, #0x6]
	strb    r0, [r5, #0x5]
	ldr     r2, [sp, #0x18]
	mov     r0, r5
	mov     r1, r7
	bl      Function_225cdfc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_225ce60
	pop     {r3-r7,pc}
@ 0x225cdf6


.align 2, 0


.thumb
Function_225cdf8: @ 225cdf8 :thumb
	bx      lr
@ 0x225cdfa


.align 2, 0


.thumb
Function_225cdfc: @ 225cdfc :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	add     r1, sp, #0x8
	mov     r6, r2
	mov     r4, #0x0
	bl      0x2231c10
	cmp     r0, #0x0
	bne     branch_225ce18
	add     sp, #0xc
	mov     r0, r4
	pop     {r3-r6,pc}
@ 0x225ce18

.thumb
branch_225ce18: @ 225ce18 :thumb
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x1
	bne     branch_225ce26
	mov     r0, r4
	strb    r0, [r5, #0x4]
	mov     r4, #0x1
	strb    r4, [r5, #0x5]
.thumb
branch_225ce26: @ 225ce26 :thumb
	mov     r0, r6
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      0x22314bc
	add     r0, sp, #0x4
	mov     r1, r5
	add     r2, sp, #0x0
	bl      0x22314bc
	add     r0, sp, #0x0
	ldrb    r2, [r0, #0x2]
	ldr     r1, [r5, #0x8]
	cmp     r2, r1
	bcs     branch_225ce50
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x0
	bne     branch_225ce50
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225ce58
.thumb
branch_225ce50: @ 225ce50 :thumb
	mov     r4, #0x1
	strb    r4, [r5, #0x5]
	ldr     r0, [sp, #0x4]
	str     r0, [r5, #0x0]
.thumb
branch_225ce58: @ 225ce58 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225ce5e


.align 2, 0


.thumb
Function_225ce60: @ 225ce60 :thumb
	push    {r3,lr}
	ldrb    r3, [r0, #0x4]
	cmp     r3, #0x1
	bne     branch_225ce6e
	bl      Function_225ce74
	pop     {r3,pc}
@ 0x225ce6e

.thumb
branch_225ce6e: @ 225ce6e :thumb
	bl      Function_225ce88
	pop     {r3,pc}
@ 0x225ce74

.thumb
Function_225ce74: @ 225ce74 :thumb
	ldrh    r1, [r0, #0x6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x6]
	ldrh    r1, [r0, #0x6]
	cmp     r1, #0x10
	bls     branch_225ce84
	mov     r1, #0x0
	strh    r1, [r0, #0x6]
.thumb
branch_225ce84: @ 225ce84 :thumb
	bx      lr
@ 0x225ce86


.align 2, 0


.thumb
Function_225ce88: @ 225ce88 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r0
	str     r1, [sp, #0x10]
	str     r2, [sp, #0x14]
	ldrb    r1, [r4, #0x1]
	mov     r0, #0x3c
	ldrb    r2, [r4, #0x2]
	mul     r0, r1
	ldrb    r1, [r4, #0x0]
	add     r2, r2, r0
	mov     r0, #0xe1
	lsl     r0, r0, #4
	mul     r0, r1
	ldr     r1, [r4, #0x8]
	add     r0, r2, r0
	blx 0x20e2178
	ldrb    r1, [r4, #0x5]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_225cf36
	mov     r2, #0x0
	strh    r2, [r4, #0x6]
	strb    r2, [r4, #0x5]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	str     r2, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r3, #0x5
	bl      0x2019cb8
	ldr     r0, [sp, #0x14]
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	bl      0x201c3c0
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
.thumb
branch_225cee2: @ 225cee2 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x3
	sub     r6, r1, r0
	mov     r0, #0xa
	mov     r7, r6
	mul     r7, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	mov     r4, #0x0
	str     r0, [sp, #0x20]
.thumb
branch_225cef6: @ 225cef6 :thumb
	mov     r0, #0x9
	sub     r3, r0, r4
	add     r0, r3, r7
	cmp     r0, r5
	bcc     branch_225cf22
	cmp     r0, r5
	bne     branch_225cf08
	mov     r2, #0x1
	b       branch_225cf12
@ 0x225cf08

.thumb
branch_225cf08: @ 225cf08 :thumb
	cmp     r6, #0x3
	bne     branch_225cf10
	mov     r2, #0x2
	b       branch_225cf12
@ 0x225cf10

.thumb
branch_225cf10: @ 225cf10 :thumb
	mov     r2, #0x0
.thumb
branch_225cf12: @ 225cf12 :thumb
	ldr     r0, [sp, #0x20]
	lsl     r3, r3, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	lsr     r3, r3, #24
	bl      Function_225cc90
.thumb
branch_225cf22: @ 225cf22 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0xa
	blt     branch_225cef6
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x4
	blt     branch_225cee2
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225cf36

.thumb
branch_225cf36: @ 225cf36 :thumb
	cmp     r5, #0x28
	bcs     branch_225cfb8
	ldrh    r1, [r4, #0x6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldrh    r6, [r4, #0x6]
	mov     r1, #0x1b
	lsr     r3, r6, #31
	lsl     r2, r6, #27
	sub     r2, r2, r3
	ror     r2, r1
	mov     r1, #0xa
	add     r7, r3, r2
	blx 0x20e2178
	str     r1, [sp, #0x18]
	mov     r0, r5
	mov     r1, #0xa
	blx 0x20e2178
	cmp     r7, #0x0
	bne     branch_225cf9e
	ldr     r2, [r4, #0x8]
	mov     r1, #0x1e
	mul     r1, r2
	lsr     r4, r1, #2
	mov     r2, #0x6
	mov     r5, #0x0
.thumb
branch_225cf6e: @ 225cf6e :thumb
	add     r1, r5, #0x1
	mov     r3, r4
	mul     r3, r1
	cmp     r3, r6
	bls     branch_225cf80
	ldr     r1, [pc, #0x40] @ 0x225cfbc, (=0x225d824)
	lsl     r2, r5, #2
	ldr     r2, [r1, r2]
	b       branch_225cf86
@ 0x225cf80

.thumb
branch_225cf80: @ 225cf80 :thumb
	mov     r5, r1
	cmp     r1, #0x4
	blt     branch_225cf6e
.thumb
branch_225cf86: @ 225cf86 :thumb
	lsl     r0, r0, #24
	ldr     r3, [sp, #0x18]
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	lsr     r3, r3, #24
	bl      Function_225cc90
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225cf9e

.thumb
branch_225cf9e: @ 225cf9e :thumb
	cmp     r7, #0x10
	bne     branch_225cfb8
	lsl     r0, r0, #24
	ldr     r3, [sp, #0x18]
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x3
	lsr     r3, r3, #24
	bl      Function_225cc90
.thumb
branch_225cfb8: @ 225cfb8 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225cfbc

.word 0x225d824 @ 0x225cfbc
.thumb
Function_225cfc0: @ 225cfc0 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r2
	mov     r2, r3
	ldr     r3, [sp, #0x8]
	bl      Function_225d08c
	pop     {r3,pc}
@ 0x225cfd2


.align 2, 0


.thumb
Function_225cfd4: @ 225cfd4 :thumb
	bx      lr
@ 0x225cfd6


.align 2, 0


.thumb
Function_225cfd8: @ 225cfd8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r5, #0x0
	bl      0x2231c54
	cmp     r0, #0x0
	beq     branch_225cffe
	cmp     r0, #0x1
	beq     branch_225cff2
	cmp     r0, #0x2
	beq     branch_225cff8
	b       branch_225cffe
@ 0x225cff2

.thumb
branch_225cff2: @ 225cff2 :thumb
	mov     r5, #0x1
	strh    r5, [r4, #0x2]
	b       branch_225cffe
@ 0x225cff8

.thumb
branch_225cff8: @ 225cff8 :thumb
	mov     r0, #0x3
	strh    r0, [r4, #0x2]
	mov     r5, #0x1
.thumb
branch_225cffe: @ 225cffe :thumb
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x225d002


.align 2, 0


.thumb
Function_225d004: @ 225d004 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x4
	bhi     branch_225d086
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225d01c

Jumppoints_225d01c:
.hword branch_225d086 - Jumppoints_225d01c - 2
.hword branch_225d026 - Jumppoints_225d01c - 2
.hword branch_225d032 - Jumppoints_225d01c - 2
.hword branch_225d058 - Jumppoints_225d01c - 2
.hword branch_225d064 - Jumppoints_225d01c - 2
.thumb
branch_225d026: @ 225d026 :thumb
	mov     r0, #0x2
	strh    r0, [r4, #0x2]
	mov     r0, #0x0
	add     sp, #0x4
	strh    r0, [r4, #0x0]
	pop     {r3,r4,pc}
@ 0x225d032

.thumb
branch_225d032: @ 225d032 :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0x0]
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [sp, #0x10]
	bl      Function_225d144
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x0]
	ldsh    r1, [r4, r0]
	cmp     r1, #0x20
	blt     branch_225d086
	add     sp, #0x4
	strh    r0, [r4, #0x2]
	pop     {r3,r4,pc}
@ 0x225d058

.thumb
branch_225d058: @ 225d058 :thumb
	mov     r0, #0x4
	strh    r0, [r4, #0x2]
	mov     r0, #0x0
	add     sp, #0x4
	strh    r0, [r4, #0x0]
	pop     {r3,r4,pc}
@ 0x225d064

.thumb
branch_225d064: @ 225d064 :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0x0]
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [sp, #0x10]
	bl      Function_225d164
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x0]
	ldsh    r1, [r4, r0]
	cmp     r1, #0x20
	blt     branch_225d086
	strh    r0, [r4, #0x2]
.thumb
branch_225d086: @ 225d086 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225d08a


.align 2, 0


.thumb
Function_225d08c: @ 225d08c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	str     r0, [sp, #0x14]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	mov     r6, r2
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r3, [sp, #0x1c]
	str     r2, [sp, #0xc]
	mov     r0, r1
	str     r1, [sp, #0x18]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r3, #0x15
	ldr     r7, [sp, #0x50]
	bl      0x2019cb8
	mov     r5, #0x0
	str     r5, [sp, #0x2c]
.thumb
branch_225d0ba: @ 225d0ba :thumb
	ldr     r0, [sp, #0x2c]
	mov     r4, #0x0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x34]
.thumb
branch_225d0c4: @ 225d0c4 :thumb
	mov     r0, r6
	add     r1, r4, r5
	bl      0x2231c18
	cmp     r0, #0x0
	beq     branch_225d12e
	mov     r0, r6
	add     r1, r4, r5
	bl      0x2231c24
	str     r0, [sp, #0x28]
	mov     r0, r6
	add     r1, r4, r5
	bl      0x2231c30
	str     r0, [sp, #0x24]
	mov     r0, r6
	add     r1, r4, r5
	bl      0x2231c3c
	str     r0, [sp, #0x20]
	mov     r0, r6
	add     r1, r4, r5
	bl      0x2231c48
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x1c]
	add     r1, r4, r5
	bl      0x222e924
	cmp     r7, #0x2
	bne     branch_225d10e
	ldr     r1, [sp, #0x30]
	cmp     r1, #0x1
	bne     branch_225d10e
	mov     r1, #0x0
	b       branch_225d110
@ 0x225d10e

.thumb
branch_225d10e: @ 225d10e :thumb
	mov     r1, r7
.thumb
branch_225d110: @ 225d110 :thumb
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x28]
	lsl     r2, r4, #24
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x24]
	ldr     r3, [sp, #0x34]
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x20]
	lsr     r2, r2, #24
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	bl      Function_225cce8
.thumb
branch_225d12e: @ 225d12e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_225d0c4
	ldr     r0, [sp, #0x2c]
	.hword  0x1d6d @ add r5, r5, #0x5
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x2c]
	cmp     r0, #0x4
	blt     branch_225d0ba
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x225d144

.thumb
Function_225d144: @ 225d144 :thumb
	push    {r3-r5,lr}
	ldr     r5, [sp, #0x10]
	mov     r4, #0x7
	tst     r4, r5
	bne     branch_225d162
	lsr     r5, r5, #3
	mov     r4, #0x1
	tst     r4, r5
	bne     branch_225d15a
	mov     r4, #0x2
	b       branch_225d15c
@ 0x225d15a

.thumb
branch_225d15a: @ 225d15a :thumb
	mov     r4, #0x0
.thumb
branch_225d15c: @ 225d15c :thumb
	str     r4, [sp, #0x0]
	bl      Function_225d08c
.thumb
branch_225d162: @ 225d162 :thumb
	pop     {r3-r5,pc}
@ 0x225d164

.thumb
Function_225d164: @ 225d164 :thumb
	push    {r3-r5,lr}
	ldr     r5, [sp, #0x10]
	mov     r4, #0x7
	tst     r4, r5
	bne     branch_225d17e
	lsr     r4, r5, #3
	mov     r5, #0x1
	tst     r4, r5
	beq     branch_225d178
	mov     r5, #0x0
.thumb
branch_225d178: @ 225d178 :thumb
	str     r5, [sp, #0x0]
	bl      Function_225d08c
.thumb
branch_225d17e: @ 225d17e :thumb
	pop     {r3-r5,pc}
@ 0x225d180

.thumb
Function_225d180: @ 225d180 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	mov     r4, #0x0
.thumb
branch_225d18c: @ 225d18c :thumb
	mov     r0, r6
	mov     r1, r7
	mov     r2, r4
	bl      0x2231d00
	mov     r1, r0
	cmp     r1, #0x14
	beq     branch_225d1b0
	ldr     r0, [sp, #0x0]
	bl      0x222e924
	cmp     r0, #0x1
	bne     branch_225d1ac
	mov     r0, #0x9
	strb    r0, [r5, r4]
	b       branch_225d1b0
@ 0x225d1ac

.thumb
branch_225d1ac: @ 225d1ac :thumb
	mov     r0, #0x5
	strb    r0, [r5, r4]
.thumb
branch_225d1b0: @ 225d1b0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_225d18c
	pop     {r3-r7,pc}
@ 0x225d1b8

.thumb
Function_225d1b8: @ 225d1b8 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	lsl     r6, r2, #5
	ldr     r7, [r1, #0xc]
	str     r0, [sp, #0x0]
	mov     r5, r4
	add     r6, #0xa
.thumb
branch_225d1c6: @ 225d1c6 :thumb
	ldr     r2, [sp, #0x0]
	mov     r0, #0xf
	ldrb    r2, [r2, r4]
	add     r1, r6, r5
	mov     r3, #0x4
	lsl     r2, r2, #1
	add     r2, #0xe0
	add     r2, r7, r2
	bl      0x201dc68
	cmp     r0, #0x0
	bne     branch_225d1e2
	bl      0x2022974
.thumb
branch_225d1e2: @ 225d1e2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225d1c6
	pop     {r3-r7,pc}
@ 0x225d1ec


.thumb
Function_225d1ec: @ 225d1ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, #0x3
	mov     r5, r0
	ldr     r6, [pc, #0xcc] @ 0x225d2c4, (=Unknown_225d804)
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	str     r2, [sp, #0x1c]
	mov     r4, #0x0
	str     r0, [sp, #0x20]
	lsl     r7, r7, #8
	add     r5, #0x60
branch_225d204: @ 225d204 :thumb
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	mov     r2, r4
	bl      Function_225d408
	ldrb    r0, [r6, #0x0]
	mov     r1, r5
	mov     r2, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	add     r0, r4, #0x7
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	bl      0x201a9a4
	ldr     r0, [sp, #0x20]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x20
	str     r0, [sp, #0x20]
	add     r7, #0x3c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_225d204
	mov     r0, #0x1
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #8
	bl      0x2023790
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x14]
	add     r1, #0x90
	str     r0, [r1, #0x0]
	mov     r1, #0x5
	ldr     r0, [sp, #0x18]
	lsl     r1, r1, #6
	ldr     r0, [r0, r1]
	ldr     r3, [sp, #0x1c]
	mov     r1, #0x0
	add     r2, #0x98
	bl      0x20071ec
	ldr     r1, [sp, #0x14]
	mov     r2, #0x4
	add     r1, #0x94
	str     r0, [r1, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r0, #0x0
	add     r1, #0x98
	ldr     r1, [r1, #0x0]
	mov     r3, #0xfa
	ldr     r1, [r1, #0xc]
	add     r1, #0xee
	bl      0x201972c
	ldr     r1, [sp, #0x14]
	ldr     r3, [pc, #0x2c] @ 0x225d2c8, (=0x11a)
	add     r1, #0x98
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	ldr     r1, [r1, #0xc]
	mov     r2, #0x4
	add     r1, #0xee
	bl      0x201972c
	ldr     r1, [sp, #0x14]
	ldr     r3, [pc, #0x1c] @ 0x225d2cc, (=0x13a)
	add     r1, #0x98
	str     r1, [sp, #0x14]
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	ldr     r1, [r1, #0xc]
	mov     r2, #0x4
	add     r1, #0xee
	bl      0x201972c
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225d2c4

.word Unknown_225d804 @ 0x225d2c4
.word 0x11a @ 0x225d2c8
.word 0x13a @ 0x225d2cc



.thumb
Function_225d2d0: @ 225d2d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      0x20181c4
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      0x20237bc
	mov     r4, r5
	mov     r6, #0x0
	add     r4, #0x60
.thumb
branch_225d2ec: @ 225d2ec :thumb
	mov     r0, r4
	bl      0x201a8fc
	mov     r0, r5
	bl      Function_225d44c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r5, #0x20
	cmp     r6, #0x3
	blt     branch_225d2ec
	pop     {r4-r6,pc}
@ 0x225d304

.thumb
Function_225d304: @ 225d304 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r6, r0
	mov     r5, r1
	mov     r0, r2
	add     r1, sp, #0x14
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	bl      0x222e934
	mov     r0, #0x2
	mov     r4, r6
	ldr     r7, [pc, #0xbc] @ 0x225d3dc, (=0x225d810)
	str     r0, [sp, #0xc]
	add     r4, #0x40
.thumb
branch_225d322: @ 225d322 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225d358
	mov     r0, r4
	bl      Function_225d4e4
	cmp     r0, #0x1
	bne     branch_225d358
	ldr     r0, [sp, #0xc]
	add     r1, r0, #0x1
	cmp     r1, #0x3
	bge     branch_225d352
	mov     r0, r6
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r3, r4
	str     r0, [sp, #0x0]
	lsl     r0, r1, #5
	ldr     r1, [r4, #0x8]
	ldr     r2, [r7, #0x4]
	add     r0, r6, r0
	add     r3, #0x1c
	bl      Function_225d460
.thumb
branch_225d352: @ 225d352 :thumb
	mov     r0, r4
	bl      Function_225d4dc
.thumb
branch_225d358: @ 225d358 :thumb
	ldr     r0, [sp, #0xc]
	sub     r4, #0x20
	.hword  0x1f3f @ sub r7, r7, #0x4
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0xc]
	bpl     branch_225d322
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_225d3d6
	mov     r0, r5
	bl      0x2231c60
	cmp     r0, #0x1
	bne     branch_225d3d6
	add     r7, sp, #0x14
.thumb
branch_225d376: @ 225d376 :thumb
	mov     r0, r5
	bl      0x2231c78
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	mov     r3, r6
	str     r0, [sp, #0x0]
	add     r3, #0x90
	ldr     r3, [r3, #0x0]
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      0x2231c94
	cmp     r0, #0x1
	bne     branch_225d3c6
	ldr     r3, [sp, #0x4]
	add     r0, sp, #0x10
	mov     r1, r5
	mov     r2, r4
	bl      Function_225d180
	mov     r0, r6
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r2, #0x15
	str     r0, [sp, #0x0]
	mov     r0, r6
	add     r6, #0x90
	ldr     r1, [r6, #0x0]
	lsl     r2, r2, #4
	add     r3, sp, #0x10
	bl      Function_225d460
	mov     r0, r5
	bl      0x2231c04
	add     sp, #0x28
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225d3c6

.thumb
branch_225d3c6: @ 225d3c6 :thumb
	mov     r0, r5
	bl      0x2231c04
	mov     r0, r5
	bl      0x2231c60
	cmp     r0, #0x1
	beq     branch_225d376
.thumb
branch_225d3d6: @ 225d3d6 :thumb
	mov     r0, #0x0
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x225d3dc

.word 0x225d810 @ 0x225d3dc
.thumb
Function_225d3e0: @ 225d3e0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, r6
	mov     r7, #0x0
	add     r4, #0x60
	mov     r5, r6
.thumb
branch_225d3ec: @ 225d3ec :thumb
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x1
	bne     branch_225d3fa
	mov     r0, r5
	mov     r1, r4
	bl      Function_225d4f8
.thumb
branch_225d3fa: @ 225d3fa :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x20
	add     r4, #0x10
	add     r5, #0x20
	cmp     r7, #0x3
	blt     branch_225d3ec
	pop     {r3-r7,pc}
@ 0x225d408

.thumb
Function_225d408: @ 225d408 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strh    r0, [r5, #0x2]
	mov     r0, #0x1
	mov     r4, r1
	mov     r6, r2
	lsl     r0, r0, #8
	mov     r1, r3
	bl      0x2023790
	str     r0, [r5, #0x8]
	add     r0, r6, #0x7
	strb    r0, [r5, #0x1]
	mov     r3, #0x0
	add     r5, #0xc
	str     r3, [sp, #0x0]
	mov     r0, #0xb4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, #0x3
	bl      0x201a7e8
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225d44a


.align 2, 0


.thumb
Function_225d44c: @ 225d44c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      0x20237bc
	add     r4, #0xc
	mov     r0, r4
	bl      0x201a8fc
	pop     {r4,pc}
@ 0x225d460

.thumb
Function_225d460: @ 225d460 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r7, r1
	mov     r6, r2
	mov     r4, r3
	bl      0x2023810
	mov     r0, #0x1
	strb    r0, [r5, #0x0]
	mov     r2, #0x0
	strh    r2, [r5, #0x2]
	strh    r6, [r5, #0x4]
	mov     r1, r7
	bl      0x2002d7c
	strh    r0, [r5, #0x6]
	mov     r0, #0x1
	ldrh    r1, [r5, #0x6]
	lsl     r0, r0, #8
	add     r0, r1, r0
	strh    r0, [r5, #0x6]
	mov     r0, #0x5a
	ldrh    r1, [r5, #0x6]
	lsl     r0, r0, #4
	cmp     r1, r0
	bls     branch_225d49c
	bl      0x2022974
.thumb
branch_225d49c: @ 225d49c :thumb
	mov     r0, r5
	add     r0, #0xc
	mov     r1, #0x0
	bl      0x201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [r5, #0x8]
	add     r0, #0xc
	mov     r1, #0x1
	bl      0x201d738
	ldrb    r0, [r4, #0x0]
	ldr     r1, [sp, #0x20]
	strb    r0, [r5, #0x1c]
	ldrb    r0, [r4, #0x1]
	strb    r0, [r5, #0x1d]
	ldrb    r0, [r4, #0x2]
	strb    r0, [r5, #0x1e]
	ldrb    r0, [r4, #0x3]
	strb    r0, [r5, #0x1f]
	mov     r0, r5
	ldrb    r2, [r5, #0x1]
	add     r0, #0x1c
	bl      Function_225d1b8
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225d4dc

.thumb
Function_225d4dc: @ 225d4dc :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x225d4e2


.align 2, 0


.thumb
Function_225d4e4: @ 225d4e4 :thumb
	ldrh    r1, [r0, #0x2]
	mov     r3, #0x1
	add     r2, r1, #0x1
	ldrh    r1, [r0, #0x4]
	cmp     r2, r1
	bgt     branch_225d4f4
	strh    r2, [r0, #0x2]
	mov     r3, #0x0
.thumb
branch_225d4f4: @ 225d4f4 :thumb
	mov     r0, r3
	bx      lr
@ 0x225d4f8

.thumb
Function_225d4f8: @ 225d4f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldrh    r0, [r5, #0x6]
	str     r1, [sp, #0x1c]
	str     r0, [sp, #0x20]
	ldrh    r1, [r5, #0x2]
	ldr     r0, [sp, #0x20]
	mul     r0, r1
	ldrh    r1, [r5, #0x4]
	blx 0x20e1f6c
	mov     r4, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	cmp     r4, r0
	bge     branch_225d522
	mov     r0, #0xff
	sub     r7, r0, r4
	mov     r6, #0x0
	b       branch_225d530
@ 0x225d522

.thumb
branch_225d522: @ 225d522 :thumb
	sub     r6, r4, r0
	ldr     r0, [sp, #0x20]
	mov     r7, #0x0
	sub     r4, r0, r4
	cmp     r4, #0xff
	ble     branch_225d530
	mov     r4, #0xff
.thumb
branch_225d530: @ 225d530 :thumb
	mov     r0, #0xff
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r0, #0x5a
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r1, r7, #16
	lsl     r2, r6, #16
	str     r0, [sp, #0x4]
	lsr     r1, r1, #16
	str     r1, [sp, #0x8]
	mov     r3, #0x0
	lsl     r1, r4, #16
	str     r3, [sp, #0xc]
	lsr     r1, r1, #16
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, #0xf
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [r5, #0x18]
	lsr     r2, r2, #16
	bl      0x201ae08
	ldr     r0, [sp, #0x1c]
	bl      0x201a9a4
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225d57a


.align 2, 0


.thumb
Function_225d57c: @ 225d57c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	str     r1, [sp, #0x18]
	str     r2, [sp, #0x1c]
	mov     r1, #0x0
	mov     r2, #0x70
	str     r0, [sp, #0x14]
	blx 0x20d5124
	ldr     r2, [pc, #0x13c] @ 0x225d6cc, (=0x28d)
	ldr     r3, [sp, #0x1c]
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      0x200b144
	str     r0, [sp, #0x38]
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x80
	bl      0x2023790
	str     r0, [sp, #0x34]
	mov     r0, #0x0
	str     r0, [sp, #0x3c]
	ldr     r0, [pc, #0x124] @ 0x225d6d0, (=0x225d968)
	ldr     r5, [pc, #0x124] @ 0x225d6d4, (=0x225d880)
	str     r0, [sp, #0x28]
	ldr     r0, [pc, #0x124] @ 0x225d6d8, (=0x225d960)
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0x20]
	add     r0, #0x40
	str     r0, [sp, #0x20]
.thumb
branch_225d5bc: @ 225d5bc :thumb
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x28]
	ldrh    r1, [r1, #0x0]
	ldr     r0, [sp, #0x20]
	ldr     r2, [r2, #0x0]
	bl      Function_225d73c
	ldrb    r0, [r5, #0x1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x2]
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x3]
	str     r0, [sp, #0x8]
	ldrb    r0, [r5, #0x6]
	str     r0, [sp, #0xc]
	ldrh    r0, [r5, #0x4]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	ldrb    r3, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x201a7e8
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x3c]
	ldr     r2, [sp, #0x34]
	bl      0x200b1b8
	ldr     r0, [sp, #0x34]
	bl      0x2023c5c
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	ldrb    r6, [r5, #0x8]
	bl      0x2023c3c
	ldr     r1, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	bl      0x2023790
	mov     r4, r0
	ldr     r0, [sp, #0x30]
	mov     r7, #0x0
	cmp     r0, #0x0
	bls     branch_225d68a
.thumb
branch_225d620: @ 225d620 :thumb
	ldr     r1, [sp, #0x34]
	mov     r0, r4
	mov     r2, r7
	bl      0x2023c9c
	ldrb    r0, [r5, #0x9]
	cmp     r0, #0x0
	beq     branch_225d63a
	cmp     r0, #0x1
	beq     branch_225d640
	cmp     r0, #0x2
	beq     branch_225d656
	b       branch_225d666
@ 0x225d63a

.thumb
branch_225d63a: @ 225d63a :thumb
	ldrb    r0, [r5, #0x7]
	str     r0, [sp, #0x2c]
	b       branch_225d666
@ 0x225d640

.thumb
branch_225d640: @ 225d640 :thumb
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      0x2002eb4
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r1, [r5, #0x7]
	lsr     r0, r0, #1
	sub     r0, r1, r0
	str     r0, [sp, #0x2c]
	b       branch_225d666
@ 0x225d656

.thumb
branch_225d656: @ 225d656 :thumb
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      0x2002eb4
	ldrb    r1, [r5, #0x7]
	sub     r0, r1, r0
	str     r0, [sp, #0x2c]
.thumb
branch_225d666: @ 225d666 :thumb
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	ldr     r3, [sp, #0x2c]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	mov     r2, r4
	bl      0x201d78c
	ldr     r0, [sp, #0x30]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x10
	cmp     r7, r0
	bcc     branch_225d620
.thumb
branch_225d68a: @ 225d68a :thumb
	mov     r0, r4
	bl      0x20237bc
	ldr     r0, [sp, #0x14]
	bl      0x201a9a4
	ldr     r0, [sp, #0x28]
	add     r5, #0x10
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x24]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x20]
	add     r0, #0xc
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	add     r0, #0x10
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x3c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x3c]
	cmp     r0, #0x4
	blt     branch_225d5bc
	ldr     r0, [sp, #0x34]
	bl      0x20237bc
	ldr     r0, [sp, #0x38]
	bl      0x200b190
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x225d6ca


.align 2


.word 0x28d @ 0x225d6cc
.word 0x225d968 @ 0x225d6d0
.word 0x225d880 @ 0x225d6d4
.word 0x225d960 @ 0x225d6d8
.thumb
Function_225d6dc: @ 225d6dc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r5
	mov     r6, #0x0
	add     r4, #0x40
.thumb
branch_225d6e6: @ 225d6e6 :thumb
	mov     r0, r5
	bl      0x201a8fc
	mov     r0, r4
	bl      Function_225d75c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x10
	add     r4, #0xc
	cmp     r6, #0x4
	blt     branch_225d6e6
	pop     {r4-r6,pc}
@ 0x225d6fe


.align 2, 0


.thumb
Function_225d700: @ 225d700 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x40
.thumb
branch_225d708: @ 225d708 :thumb
	mov     r0, r5
	bl      Function_225d784
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x4
	blt     branch_225d708
	pop     {r3-r5,pc}
@ 0x225d718

.thumb
Function_225d718: @ 225d718 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x4
	bcc     branch_225d726
	bl      0x2022974
.thumb
branch_225d726: @ 225d726 :thumb
	cmp     r4, #0x0
	bne     branch_225d72e
	bl      0x2022974
.thumb
branch_225d72e: @ 225d72e :thumb
	mov     r0, #0xc
	add     r5, #0x40
	mul     r0, r4
	add     r0, r5, r0
	bl      Function_225d778
	pop     {r3-r5,pc}
@ 0x225d73c

.thumb
Function_225d73c: @ 225d73c :thumb
	mov     r3, #0x0
	strb    r3, [r0, #0x0]
	strb    r3, [r0, #0x1]
	strb    r3, [r0, #0x2]
	strb    r3, [r0, #0x3]
	strb    r3, [r0, #0x4]
	strb    r3, [r0, #0x5]
	strb    r3, [r0, #0x6]
	strb    r3, [r0, #0x7]
	strb    r3, [r0, #0x8]
	strb    r3, [r0, #0x9]
	strb    r3, [r0, #0xa]
	strb    r3, [r0, #0xb]
	strh    r1, [r0, #0x6]
	str     r2, [r0, #0x8]
	bx      lr
@ 0x225d75c

.thumb
Function_225d75c: @ 225d75c :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strb    r1, [r0, #0x4]
	strb    r1, [r0, #0x5]
	strb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]
	strb    r1, [r0, #0x8]
	strb    r1, [r0, #0x9]
	strb    r1, [r0, #0xa]
	strb    r1, [r0, #0xb]
	bx      lr
@ 0x225d778

.thumb
Function_225d778: @ 225d778 :thumb
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x2]
	bx      lr
@ 0x225d782


.align 2, 0


.thumb
Function_225d784: @ 225d784 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x1c
	bls     branch_225d794
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_225d794: @ 225d794 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225d800
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_225d7aa
	ldr     r0, [r4, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x2005748
.thumb
branch_225d7aa: @ 225d7aa :thumb
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x2
	bcs     branch_225d7ba
	lsl     r1, r0, #4
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r3, r0, #1
	b       branch_225d7d0
@ 0x225d7ba

.thumb
branch_225d7ba: @ 225d7ba :thumb
	cmp     r0, #0xe
	bcs     branch_225d7c2
	mov     r3, #0x10
	b       branch_225d7d0
@ 0x225d7c2

.thumb
branch_225d7c2: @ 225d7c2 :thumb
	sub     r0, #0xe
	lsl     r0, r0, #4
	mov     r1, #0xe
	blx 0x20e1f6c
	mov     r1, #0x10
	sub     r3, r1, r0
.thumb
branch_225d7d0: @ 225d7d0 :thumb
	mov     r1, #0xe
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	mov     r0, #0x19
	lsl     r3, r3, #24
	str     r0, [sp, #0x0]
	add     r0, sp, #0x4
	add     r1, r4, #0x4
	mov     r2, #0x1
	lsr     r3, r3, #24
	bl      0x200393c
	add     r0, r4, #0x4
	mov     r1, #0x2
	blx 0x20c2c54
	ldrh    r1, [r4, #0x6]
	add     r0, r4, #0x4
	mov     r2, #0x2
	blx 0x20c00b4
	ldrh    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2]
branch_225d800: @ 225d800 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225d804



Unknown_225d804: @ 0x225d804
.incbin "./baserom/overlay/overlay_0112.bin", 0x1104, 0x225d980 - 0x225d804


@end 0x225d980



