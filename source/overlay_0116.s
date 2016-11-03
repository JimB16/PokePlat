

.section .iwram116, "ax"


.thumb
Function_2260440: @ 2260440 :thumb
	push    {r4,lr}
	ldr     r1, [r2, #0x0]
	ldr     r0, [r2, #0x4]
	mov     r4, r3
	str     r1, [r4, #0x14]
	str     r0, [r4, #0x18]
	bl      0x201d2dc
	mov     r0, r4
	bl      Function_22617d4
	pop     {r4,pc}
@ 0x2260458


.thumb
Function_2260458: @ 2260458 :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x2260460, (=0x22617dd)
	bx      r3
@ 0x226045e

.align 2
.word 0x22617dd @ 0x2260460



.thumb
Function_2260464: @ 2260464 :thumb
	ldr     r1, [r3, #0x4]
	lsl     r0, r0, #2
	add     r1, r1, r0
	ldr     r2, [r2, #0x0]
	ldr     r0, [pc, #0x4] @ 0x2260474, (=0x2b9c)
	str     r2, [r1, r0]
	bx      lr
@ 0x2260472


.align 2


.word 0x2b9c @ 0x2260474
.thumb
Function_2260478: @ 2260478 :thumb
	lsl     r0, r0, #3
	ldr     r1, [r2, #0x0]
	add     r0, r3, r0
	str     r1, [r0, #0x24]
	bx      lr
@ 0x2260482


.align 2, 0


.thumb
Function_2260484: @ 2260484 :thumb
	bx      lr
@ 0x2260486


.align 2, 0


.thumb
Function_2260488: @ 2260488 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x226048c

.thumb
Function_226048c: @ 226048c :thumb
	mov     r0, #0x8
	bx      lr
@ 0x2260490

.thumb
Function_2260490: @ 2260490 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x2260494

.thumb
Function_2260494: @ 2260494 :thumb
	mov     r0, #0x8
	bx      lr
@ 0x2260498

.thumb
Function_2260498: @ 2260498 :thumb
	mov     r0, #0x20
	bx      lr
@ 0x226049c

.thumb
Function_226049c: @ 226049c :thumb
	ldr     r0, [pc, #0x0] @ 0x22604a0, (=Jumptable_2267740)
	bx      lr
@ 0x22604a0

.word Jumptable_2267740 @ 0x22604a0



.thumb
Function_22604a4: @ 22604a4 :thumb
	mov     r0, #0x5
	bx      lr
@ 0x22604a8


.thumb
Function_22604a8: @ 22604a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_226049c
	mov     r4, r0
	bl      Function_22604a4
	mov     r1, r0
	mov     r0, r4
	mov     r2, r5
	bl      0x2032798
	pop     {r3-r5,pc}
@ 0x22604c2


.align 2, 0


.thumb
Function_22604c4: @ 22604c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0xb8
	mov     r5, r0
	bl      0x201d2d0
	mov     r1, r5
	add     r1, #0x80
	str     r0, [r1, #0x0]
	mov     r0, r5
	bl      Function_22612cc
	ldr     r0, [pc, #0x358] @ 0x2260834, (=0x2261795)
	mov     r1, r5
	bl      0x2017798
	bl      0x20177a4
	mov     r0, #0x20
	mov     r1, #0x6a
	bl      0x201dbec
	ldr     r1, [pc, #0x348] @ 0x2260838, (=0x200010)
	mov     r0, #0x1
	bl      0x200966c
	mov     r0, #0x1
	bl      0x2009704
	bl      0x2039734
	mov     r0, #0x6a
	bl      0x20394a8
	add     r1, sp, #0x24
	mov     r4, r0
	blx     0x20a71b0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x24]
	ldr     r0, [r5, #0x5c]
	ldr     r1, [r1, #0xc]
	mov     r2, #0x2
	mov     r3, #0xe0
	bl      0x2002fbc
	mov     r0, r4
	bl      0x20181c4
	bl      0x2032e64
	mov     r4, r0
	bl      0x203608c
	str     r0, [r5, #0x44]
	mov     r0, r5
	bl      Function_22604a8
	mov     r0, r5
	bl      Function_22617c4
	cmp     r0, #0x1
	bne     branch_226054e
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x48
	bl      Function_2262a44
	str     r0, [r5, #0x0]
.thumb
branch_226054e: @ 226054e :thumb
	mov     r2, r5
	ldr     r1, [r5, #0x44]
	mov     r0, r4
	add     r2, #0x48
	bl      Function_2262a8c
	str     r0, [r5, #0x4]
	ldrb    r2, [r5, #0x14]
	ldr     r1, [pc, #0x2dc] @ 0x226083c, (=0x2bb4)
	str     r2, [r0, r1]
	mov     r0, r5
	add     r0, #0x80
	ldr     r3, [r0, #0x0]
	ldr     r2, [r5, #0x4]
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r3, [r2, r0]
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	mov     r0, r5
	bl      Function_22628b8
	mov     r0, r5
	bl      Function_22622c8
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	bl      Function_22625a8
	ldr     r0, [r5, #0x4]
	bl      Function_2261d70
	ldr     r0, [r5, #0x4]
	bl      Function_2261d08
	ldr     r0, [r5, #0x4]
	bl      Function_2262724
	ldr     r0, [r5, #0x4]
	bl      Function_2262840
	ldr     r1, [r5, #0x44]
	mov     r0, r5
	bl      Function_2264680
	mov     r1, r0
	mov     r0, r5
	bl      Function_2262034
	ldr     r4, [pc, #0x288] @ 0x2260840, (=0x2267918)
	add     r3, sp, #0x38
	mov     r2, #0x10
.thumb
branch_22605ba: @ 22605ba :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22605ba
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r4, [sp, #0xc]
	add     r0, sp, #0x38
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r0, [sp, #0x10]
	add     r0, #0x6c
	mov     r7, r4
	mov     r6, r4
	str     r0, [sp, #0x10]
.thumb
branch_22605d8: @ 22605d8 :thumb
	mov     r0, #0xb5
	ldr     r2, [sp, #0x8]
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	ldr     r1, [r5, #0x48]
	ldr     r2, [r2, #0x0]
	add     r0, r0, r4
	bl      Function_22618a8
	mov     r0, #0xb5
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	ldrb    r1, [r5, #0x14]
	add     r0, r0, r4
	bl      Function_22618b4
	ldr     r1, [r5, #0x4]
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	ldr     r2, [pc, #0x23c] @ 0x2260844, (=0xbc8)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x23c] @ 0x2260848, (=0xbd8)
	ldr     r3, [sp, #0x8]
	add     r0, r1, r0
	add     r1, r1, r2
	ldr     r2, [r5, #0x48]
	ldr     r3, [r3, #0x4]
	add     r0, r0, r4
	add     r1, r1, r4
	bl      0x2017164
	mov     r0, #0xb5
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	ldr     r2, [pc, #0x220] @ 0x2260848, (=0xbd8)
	add     r0, r0, r4
	add     r1, r1, r2
	add     r1, r1, r4
	bl      0x201727c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x214] @ 0x2260848, (=0xbd8)
	add     r0, r1, r0
	add     r0, r0, r4
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, #0xb5
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     r0, r0, r4
	mov     r1, #0x0
	bl      0x2017348
	ldrb    r0, [r5, #0x14]
	ldr     r1, [sp, #0xc]
	cmp     r0, #0x0
	ldr     r0, [sp, #0xc]
	lsl     r2, r1, #31
	lsr     r0, r0, #31
	sub     r2, r2, r0
	mov     r1, #0x1f
	ror     r2, r1
	add     r0, r0, r2
	beq     branch_22606a6
	cmp     r7, #0x0
	ble     branch_226067a
	mov     r0, r6
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2260688
@ 0x226067a

.thumb
branch_226067a: @ 226067a :thumb
	mov     r0, r6
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2260688: @ 2260688 :thumb
	ldr     r1, [r5, #0x4]
	add     r1, r1, r4
	str     r1, [sp, #0x14]
	blx     0x20e1740
	mov     r1, #0xd3
	ldr     r2, [sp, #0x14]
	lsl     r1, r1, #4
	ldr     r1, [r2, r1]
	add     r2, r1, r0
	mov     r0, #0xd3
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #4
	str     r2, [r1, r0]
	b       branch_22606e6
@ 0x22606a6

.thumb
branch_22606a6: @ 22606a6 :thumb
	cmp     r7, #0x0
	ble     branch_22606bc
	mov     r0, r6
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22606ca
@ 0x22606bc

.thumb
branch_22606bc: @ 22606bc :thumb
	mov     r0, r6
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22606ca: @ 22606ca :thumb
	ldr     r1, [r5, #0x4]
	add     r1, r1, r4
	str     r1, [sp, #0x18]
	blx     0x20e1740
	mov     r1, #0xd3
	ldr     r2, [sp, #0x18]
	lsl     r1, r1, #4
	ldr     r1, [r2, r1]
	sub     r2, r1, r0
	mov     r0, #0xd3
	ldr     r1, [sp, #0x18]
	lsl     r0, r0, #4
	str     r2, [r1, r0]
.thumb
branch_22606e6: @ 22606e6 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x8
	bge     branch_2260730
	add     r1, r0, #0x1
	mov     r0, #0x5
	mul     r0, r1
	cmp     r0, #0x0
	ble     branch_2260708
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2260716
@ 0x2260708

.thumb
branch_2260708: @ 2260708 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2260716: @ 2260716 :thumb
	ldr     r1, [r5, #0x4]
	add     r1, r1, r4
	str     r1, [sp, #0x1c]
	blx     0x20e1740
	ldr     r2, [sp, #0x1c]
	ldr     r1, [pc, #0x128] @ 0x226084c, (=0xd38)
	ldr     r1, [r2, r1]
	add     r2, r1, r0
	ldr     r1, [sp, #0x1c]
	ldr     r0, [pc, #0x120] @ 0x226084c, (=0xd38)
	str     r2, [r1, r0]
	b       branch_226076c
@ 0x2260730

.thumb
branch_2260730: @ 2260730 :thumb
	cmp     r7, #0x0
	ble     branch_2260746
	mov     r0, r6
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2260754
@ 0x2260746

.thumb
branch_2260746: @ 2260746 :thumb
	mov     r0, r6
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2260754: @ 2260754 :thumb
	ldr     r1, [r5, #0x4]
	add     r1, r1, r4
	str     r1, [sp, #0x20]
	blx     0x20e1740
	ldr     r2, [sp, #0x20]
	ldr     r1, [pc, #0xe8] @ 0x226084c, (=0xd38)
	ldr     r1, [r2, r1]
	sub     r2, r1, r0
	ldr     r1, [sp, #0x20]
	ldr     r0, [pc, #0xe0] @ 0x226084c, (=0xd38)
	str     r2, [r1, r0]
.thumb
branch_226076c: @ 226076c :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1d7f @ add r7, r7, #0x5
	add     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0x83
	lsl     r0, r0, #2
	add     r4, r4, r0
	mov     r0, #0x5
	lsl     r0, r0, #12
	add     r6, r6, r0
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x8
	bge     branch_226078c
	b       branch_22605d8
@ 0x226078c

.thumb
branch_226078c: @ 226078c :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xc0] @ 0x2260850, (=0x944)
	mov     r2, #0x47
	add     r0, r1, r0
	ldr     r1, [r5, #0x48]
	bl      Function_22618a8
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xb0] @ 0x2260850, (=0x944)
	add     r0, r1, r0
	ldrb    r1, [r5, #0x14]
	bl      Function_22618b4
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xa4] @ 0x2260850, (=0x944)
	add     r0, r1, r0
	mov     r1, #0x0
	bl      0x2017348
	ldr     r3, [pc, #0xa0] @ 0x2260854, (=0x22677a4)
	add     r2, sp, #0x28
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [r5, #0x44]
	mov     r0, r5
	bl      Function_2264680
	lsl     r1, r0, #2
	add     r0, sp, #0x28
	ldr     r2, [r0, r1]
	mov     r0, #0x45
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r1, [r5, #0x48]
	bl      Function_22618a8
	mov     r0, #0x45
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldrb    r1, [r5, #0x14]
	bl      Function_22618b4
	mov     r0, #0x32
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	ldr     r1, [r5, #0x48]
	mov     r2, #0x33
	bl      Function_22618a8
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x2260858, (=0x52c)
	mov     r2, #0x39
	add     r0, r1, r0
	ldr     r1, [r5, #0x48]
	bl      Function_22618a8
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x50] @ 0x226085c, (=0x738)
	mov     r2, #0x37
	add     r0, r1, r0
	ldr     r1, [r5, #0x48]
	bl      Function_22618a8
	mov     r0, #0x32
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	ldrb    r1, [r5, #0x14]
	bl      Function_22618b4
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2260858, (=0x52c)
	add     r0, r1, r0
	ldrb    r1, [r5, #0x14]
	bl      Function_22618b4
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x28] @ 0x226085c, (=0x738)
	b       branch_2260860
@ 0x2260834

.word 0x2261795 @ 0x2260834
.word 0x200010 @ 0x2260838
.word 0x2bb4 @ 0x226083c
.word 0x2267918 @ 0x2260840
.word 0xbc8 @ 0x2260844
.word 0xbd8 @ 0x2260848
.word 0xd38 @ 0x226084c
.word 0x944 @ 0x2260850
.word 0x22677a4 @ 0x2260854
.word 0x52c @ 0x2260858
.word 0x738 @ 0x226085c
.thumb
branch_2260860: @ 2260860 :thumb
	add     r0, r1, r0
	ldrb    r1, [r5, #0x14]
	bl      Function_22618b4
	mov     r6, #0x32
	ldr     r4, [r5, #0x4]
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x6c
	lsl     r6, r6, #4
	str     r0, [sp, #0x4]
	add     r0, r4, r6
	add     r1, r4, r6
	ldr     r2, [r5, #0x48]
	add     r0, #0x88
	add     r1, #0x78
	mov     r3, #0x35
	bl      0x2017164
	add     r0, r4, r6
	mov     r1, r0
	add     r1, #0x88
	bl      0x201727c
	add     r0, r4, r6
	add     r0, #0x88
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x6c
	str     r0, [sp, #0x4]
	add     r0, r4, r6
	add     r1, r4, r6
	ldr     r2, [r5, #0x48]
	add     r0, #0x9c
	add     r1, #0x78
	mov     r3, #0x34
	bl      0x2017164
	add     r0, r4, r6
	add     r0, #0x9c
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x6c
	str     r0, [sp, #0x4]
	add     r0, r4, r6
	add     r1, r4, r6
	ldr     r2, [r5, #0x48]
	add     r0, #0xb0
	add     r1, #0x78
	mov     r3, #0x3a
	bl      0x2017164
	add     r0, r4, r6
	add     r0, #0xb0
	mov     r1, #0x0
	bl      0x2017240
	ldr     r4, [r5, #0x4]
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r6, [pc, #0xb0] @ 0x22609a0, (=0x52c)
	add     r0, #0x6c
	str     r0, [sp, #0x4]
	add     r0, r4, r6
	add     r1, r4, r6
	ldr     r2, [r5, #0x48]
	add     r0, #0x88
	add     r1, #0x78
	mov     r3, #0x38
	bl      0x2017164
	add     r0, r4, r6
	mov     r1, r0
	add     r1, #0x88
	bl      0x201727c
	add     r0, r4, r6
	add     r0, #0x88
	mov     r1, #0x0
	bl      0x2017240
	ldr     r4, [r5, #0x4]
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r6, [pc, #0x84] @ 0x22609a4, (=0x738)
	add     r0, #0x6c
	str     r0, [sp, #0x4]
	add     r0, r4, r6
	add     r1, r4, r6
	ldr     r2, [r5, #0x48]
	add     r0, #0x88
	add     r1, #0x78
	mov     r3, #0x36
	bl      0x2017164
	add     r0, r4, r6
	mov     r1, r0
	add     r1, #0x88
	bl      0x201727c
	add     r0, r4, r6
	add     r0, #0x88
	mov     r1, #0x0
	bl      0x2017240
	ldrb    r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_226096c
	mov     r1, #0xbe
	ldr     r0, [pc, #0x54] @ 0x22609a8, (=0xffff8000)
	ldr     r2, [r5, #0x4]
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r2, [r5, #0x4]
	ldr     r1, [pc, #0x50] @ 0x22609ac, (=0x504)
	str     r0, [r2, r1]
	mov     r1, r6
	ldr     r2, [r5, #0x4]
	sub     r1, #0x28
	str     r0, [r2, r1]
	ldr     r2, [r5, #0x4]
	ldr     r1, [pc, #0x44] @ 0x22609b0, (=0x91c)
	str     r0, [r2, r1]
.thumb
branch_226096c: @ 226096c :thumb
	ldr     r0, [r5, #0x54]
	bl      0x200d9b0
	mov     r1, #0x6a
	bl      0x225cad4
	mov     r1, r5
	add     r1, #0x84
	str     r0, [r1, #0x0]
	mov     r1, #0x2
	ldr     r0, [r5, #0x5c]
	mov     r2, #0x0
	lsl     r3, r1, #8
	bl      0x2003070
	add     r5, #0x88
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	cmp     r0, #0x0
	beq     branch_226099a
	mov     r0, #0x6a
	bl      0x21d1e74
.thumb
branch_226099a: @ 226099a :thumb
	add     sp, #0xb8
	pop     {r3-r7,pc}
@ 0x226099e


.align 2


.word 0x52c @ 0x22609a0
.word 0x738 @ 0x22609a4
.word 0xffff8000 @ 0x22609a8
.word 0x504 @ 0x22609ac
.word 0x91c @ 0x22609b0
.thumb
Function_22609b4: @ 22609b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r2, #0x65
	mov     r4, r0
	mov     r0, #0x3
	mov     r1, #0x6a
	lsl     r2, r2, #12
	bl      0x2017fc8
	mov     r0, r4
	mov     r1, #0xd0
	mov     r2, #0x6a
	bl      0x200681c
	mov     r1, #0x0
	mov     r2, #0xd0
	str     r0, [sp, #0x4]
	blx     0x20d5124
	mov     r0, r4
	bl      0x2006840
	ldr     r1, [sp, #0x4]
	ldr     r6, [sp, #0x4]
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, #0xff
.thumb
branch_22609ee: @ 22609ee :thumb
	mov     r0, r6
	add     r0, #0xbc
	str     r7, [r0, #0x0]
	mov     r0, r4
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_2260a06
	mov     r0, r5
	add     r0, #0xbc
	str     r4, [r0, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
.thumb
branch_2260a06: @ 2260a06 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x4
	blt     branch_22609ee
	ldr     r0, [sp, #0x4]
	add     r0, #0x88
	ldr     r3, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	str     r3, [sp, #0x0]
	ldr     r1, [r3, #0x38]
	ldr     r2, [r3, #0x34]
	add     r0, #0x8c
	ldr     r3, [r3, #0x3c]
	str     r0, [sp, #0x4]
	bl      0x225c700
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2260a2c

.thumb
Function_2260a2c: @ 2260a2c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x0
	bne     branch_2260ac6
	cmp     r6, #0x0
	bne     branch_2260ac6
	ldr     r3, [pc, #0x108] @ 0x2260b48, (=0x1fd4)
	mov     r0, #0x0
	mov     r2, #0xc3
	str     r0, [r5, r3]
	add     r1, r3, #0x4
	lsl     r2, r2, #2
	str     r0, [r5, r1]
	ldr     r1, [r5, r2]
	cmp     r1, #0x0
	beq     branch_2260a82
	mov     r0, #0x45
	lsl     r0, r0, #2
	mov     r1, #0xfe
	add     r0, r5, r0
	lsl     r1, r1, #22
	bl      Function_226452c
	ldr     r4, [pc, #0xe8] @ 0x2260b4c, (=0x2267788)
	add     r3, sp, #0x18
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4d
	str     r0, [r3, #0x0]
	mov     r0, r2
	ldr     r2, [pc, #0xdc] @ 0x2260b50, (=0x1fc8)
	lsl     r1, r1, #4
	add     r1, r5, r1
	add     r2, r5, r2
	blx     0x20bc2cc
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2260a82

.thumb
branch_2260a82: @ 2260a82 :thumb
	add     r1, r2, #0x4
	str     r0, [r5, r1]
	add     r2, #0x8
	str     r0, [r5, r2]
	add     r1, r3, #0x4
	ldr     r2, [r5, r1]
	ldr     r1, [r5, r3]
	ldr     r3, [pc, #0xc0] @ 0x2260b54, (=0x3ff0a3d7)
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_226432c
	ldr     r0, [pc, #0xb0] @ 0x2260b58, (=0x1fd8)
	ldr     r2, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0xac] @ 0x2260b5c, (=0x3e6147ae)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_226432c
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2260ac6

.thumb
branch_2260ac6: @ 2260ac6 :thumb
	ldr     r0, [pc, #0x98] @ 0x2260b60, (=0x1fcc)
	mov     r1, #0x28
	ldr     r0, [r5, r0]
	asr     r7, r0, #12
	mov     r0, #0x64
	sub     r0, r0, r7
	blx     _s32_div_f
	blx     0x20e17b4
	ldr     r0, [pc, #0x6c] @ 0x2260b48, (=0x1fd4)
	cmp     r7, #0x5f
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_2260aea
	str     r4, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r6, [r5, r0]
.thumb
branch_2260aea: @ 2260aea :thumb
	ldr     r3, [pc, #0x6c] @ 0x2260b58, (=0x1fd8)
	mov     r1, r4
	ldr     r0, [r5, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	lsl     r0, r0, #30
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	mov     r2, r6
	bl      Function_226432c
	ldr     r3, [pc, #0x54] @ 0x2260b64, (=0x226777c)
	add     r2, sp, #0xc
	ldmia   r3!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, #0x4d
	str     r0, [r2, #0x0]
	ldr     r2, [pc, #0x30] @ 0x2260b50, (=0x1fc8)
	lsl     r1, r1, #4
	mov     r0, r7
	add     r1, r5, r1
	add     r2, r5, r2
	blx     0x20bc2cc
	ldr     r0, [pc, #0x3c] @ 0x2260b68, (=0x572)
	bl      0x20057d4
	cmp     r0, #0x0
	bne     branch_2260b3a
	ldr     r0, [pc, #0x30] @ 0x2260b68, (=0x572)
	bl      0x2005748
.thumb
branch_2260b3a: @ 2260b3a :thumb
	ldr     r0, [pc, #0xc] @ 0x2260b48, (=0x1fd4)
	str     r4, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r6, [r5, r0]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2260b46


.align 2


.word 0x1fd4 @ 0x2260b48
.word 0x2267788 @ 0x2260b4c
.word 0x1fc8 @ 0x2260b50
.word 0x3ff0a3d7 @ 0x2260b54
.word 0x1fd8 @ 0x2260b58
.word 0x3e6147ae @ 0x2260b5c
.word 0x1fcc @ 0x2260b60
.word 0x226777c @ 0x2260b64
.word 0x572 @ 0x2260b68
.thumb
Function_2260b6c: @ 2260b6c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xcc
	ldr     r3, [pc, #0x178] @ 0x2260cec, (=0x2267998)
	mov     r5, r0
	add     r2, sp, #0xc
	mov     r1, #0x60
.thumb
branch_2260b78: @ 2260b78 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2260b78
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	bl      0x200d3e0
	mov     r7, r0
	ldr     r1, [r5, #0xc]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r7, r0
	lsl     r1, r0, #2
	add     r0, sp, #0xc
	ldsh    r4, [r0, r1]
	add     r0, sp, #0xc
	add     r0, #0x2
	ldsh    r6, [r0, r1]
	cmp     r4, #0x0
	bne     branch_2260bb8
	cmp     r6, #0x0
	bne     branch_2260bb8
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_2260a2c
	b       branch_2260bf0
@ 0x2260bb8

.thumb
branch_2260bb8: @ 2260bb8 :thumb
	mov     r1, r4
	mov     r2, r6
	mov     r0, r5
	add     r1, #0x80
	add     r2, #0x80
	bl      Function_2260a2c
	cmp     r4, #0x0
	beq     branch_2260bde
	add     r4, #0x58
	add     r6, #0x80
	lsl     r1, r4, #16
	lsl     r2, r6, #16
	mov     r0, r5
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_226493c
	b       branch_2260bf0
@ 0x2260bde

.thumb
branch_2260bde: @ 2260bde :thumb
	add     r4, #0x80
	add     r6, #0x80
	lsl     r1, r4, #16
	lsl     r2, r6, #16
	mov     r0, r5
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_226493c
.thumb
branch_2260bf0: @ 2260bf0 :thumb
	cmp     r7, #0x0
	bne     branch_2260c00
	ldr     r0, [r5, #0x8]
	cmp     r0, r7
	beq     branch_2260c00
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
.thumb
branch_2260c00: @ 2260c00 :thumb
	str     r7, [r5, #0x8]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x2
	bne     branch_2260c76
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	bl      0x200d37c
	cmp     r0, #0x2
	beq     branch_2260c76
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x80
	mov     r2, #0x64
	bl      0x200d4c4
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      0x200d370
	mov     r0, #0xa9
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2266fec
	mov     r0, #0xad
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2266fec
	mov     r3, #0x5
	mov     r1, #0x0
	ldr     r0, [pc, #0xa4] @ 0x2260cf0, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x4
	mvn     r3, r3
	mov     r1, #0x0
	ldr     r0, [pc, #0x8c] @ 0x2260cf0, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
.thumb
branch_2260c76: @ 2260c76 :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x3
	bne     branch_2260cdc
	cmp     r7, #0xb
	bne     branch_2260cdc
	mov     r1, #0x0
	str     r1, [r5, #0x8]
	mov     r0, r5
	str     r1, [r5, #0xc]
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	bl      0x200d3f4
	mov     r0, #0xa9
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2266fec
	mov     r0, #0xad
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2266fec
	mov     r3, #0x5
	mov     r1, #0x0
	ldr     r0, [pc, #0x44] @ 0x2260cf0, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x4
	mvn     r3, r3
	mov     r1, #0x0
	ldr     r0, [pc, #0x2c] @ 0x2260cf0, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	add     sp, #0xcc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2260cdc

.thumb
branch_2260cdc: @ 2260cdc :thumb
	add     r5, #0xf0
	ldr     r0, [r5, #0x0]
	bl      0x200d33c
	mov     r0, #0x0
	add     sp, #0xcc
	pop     {r4-r7,pc}
@ 0x2260cea


.align 2


.word 0x2267998 @ 0x2260cec
.word 0x3f4ccccd @ 0x2260cf0
.thumb
Function_2260cf4: @ 2260cf4 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	bl      0x200682c
	mov     r4, r0
	bl      Function_22617e4
	cmp     r0, #0x0
	beq     branch_2260d18
	cmp     r0, #0x1
	beq     branch_2260d10
	cmp     r0, #0x2
	beq     branch_2260d14
	b       branch_2260d18
@ 0x2260d10

.thumb
branch_2260d10: @ 2260d10 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2260d14

.thumb
branch_2260d14: @ 2260d14 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2260d18

.thumb
branch_2260d18: @ 2260d18 :thumb
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x14
	bls     branch_2260d20
	b       branch_22610b8
@ 0x2260d20

.thumb
branch_2260d20: @ 2260d20 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2260d2c

Jumppoints_2260d2c:
.hword branch_2260d56 - Jumppoints_2260d2c - 2
.hword branch_2260d74 - Jumppoints_2260d2c - 2
.hword branch_2260d8c - Jumppoints_2260d2c - 2
.hword branch_2260dbe - Jumppoints_2260d2c - 2
.hword branch_2260ddc - Jumppoints_2260d2c - 2
.hword branch_2260dee - Jumppoints_2260d2c - 2
.hword branch_2260e0e - Jumppoints_2260d2c - 2
.hword branch_2260e44 - Jumppoints_2260d2c - 2
.hword branch_2260e52 - Jumppoints_2260d2c - 2
.hword branch_2260e6a - Jumppoints_2260d2c - 2
.hword branch_2260e92 - Jumppoints_2260d2c - 2
.hword branch_2260ee6 - Jumppoints_2260d2c - 2
.hword branch_2260f0e - Jumppoints_2260d2c - 2
.hword branch_2260f26 - Jumppoints_2260d2c - 2
.hword branch_2260f68 - Jumppoints_2260d2c - 2
.hword branch_2260f96 - Jumppoints_2260d2c - 2
.hword branch_2260faa - Jumppoints_2260d2c - 2
.hword branch_2260fc6 - Jumppoints_2260d2c - 2
.hword branch_226102a - Jumppoints_2260d2c - 2
.hword branch_2261094 - Jumppoints_2260d2c - 2
.hword branch_22610b8 - Jumppoints_2260d2c - 2
.thumb
branch_2260d56: @ 2260d56 :thumb
	mov     r0, r4
	add     r0, #0x8c
	mov     r1, #0x6a
	bl      0x225c820
	mov     r1, r4
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260d74

.thumb
branch_2260d74: @ 2260d74 :thumb
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      0x225c8bc
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x2
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260d8c

.thumb
branch_2260d8c: @ 2260d8c :thumb
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      0x225c8cc
	strb    r0, [r4, #0x14]
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      0x225c838
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_22604c4
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260dbe

.thumb
branch_2260dbe: @ 2260dbe :thumb
	mov     r0, #0x1b
	bl      Function_2261768
	mov     r5, r0
	ldr     r1, [r4, #0x4]
	mov     r0, r4
	bl      Function_22620ac
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260ddc

.thumb
branch_2260ddc: @ 2260ddc :thumb
	bl      0x200f2ac
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x5
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260dee

.thumb
branch_2260dee: @ 2260dee :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2261f70
	ldr     r0, [r4, #0x4]
	bl      Function_2265470
	ldr     r0, [r4, #0x4]
	bl      Function_2265a1c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x6
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260e0e

.thumb
branch_2260e0e: @ 2260e0e :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2260b6c
	mov     r5, r0
	beq     branch_2260e36
	mov     r0, r4
	bl      Function_22617c4
	cmp     r0, #0x1
	bne     branch_2260e36
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	str     r0, [r4, #0x18]
	mov     r0, #0x16
	add     r1, #0x14
	mov     r2, #0x8
	bl      0x20359dc
.thumb
branch_2260e36: @ 2260e36 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x7
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260e44

.thumb
branch_2260e44: @ 2260e44 :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, #0x8
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260e52

.thumb
branch_2260e52: @ 2260e52 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      0x225cb8c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x9
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260e6a

.thumb
branch_2260e6a: @ 2260e6a :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      0x225cbe0
	mov     r5, r0
	beq     branch_2260e84
	ldr     r0, [r4, #0x4]
	bl      Function_2262264
	ldr     r0, [r4, #0x4]
	bl      Function_2262004
.thumb
branch_2260e84: @ 2260e84 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xa
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260e92

.thumb
branch_2260e92: @ 2260e92 :thumb
	ldr     r5, [r4, #0xc]
	cmp     r5, #0x0
	beq     branch_2260ea8
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x248] @ 0x22610e4, (=0x2ae4)
	ldr     r1, [r1, r0]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	cmp     r1, r0
	bge     branch_2260ea8
	mov     r5, #0x0
.thumb
branch_2260ea8: @ 2260ea8 :thumb
	cmp     r5, #0x0
	bne     branch_2260ed8
	mov     r0, r4
	bl      Function_22617c4
	cmp     r0, #0x1
	bne     branch_2260ed2
	ldr     r0, [r4, #0x0]
	bl      Function_2262a74
	cmp     r0, #0x0
	bne     branch_2260ed2
	ldr     r0, [pc, #0x224] @ 0x22610e8, (=0x571)
	mov     r1, #0x0
	bl      0x20057a4
	mov     r1, #0x0
	mov     r0, #0x17
	mov     r2, r1
	bl      0x20359dc
.thumb
branch_2260ed2: @ 2260ed2 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2263b30
.thumb
branch_2260ed8: @ 2260ed8 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0xb
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260ee6

.thumb
branch_2260ee6: @ 2260ee6 :thumb
	ldr     r0, [pc, #0x204] @ 0x22610ec, (=0x573)
	mov     r1, #0x0
	bl      0x20057a4
	ldr     r0, [pc, #0x1f8] @ 0x22610e8, (=0x571)
	mov     r1, #0x0
	bl      0x20057a4
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      0x225cbb0
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xc
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260f0e

.thumb
branch_2260f0e: @ 2260f0e :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      0x225cbe0
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0xd
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260f26

.thumb
branch_2260f26: @ 2260f26 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x1c4] @ 0x22610f0, (=0x2af0)
	ldr     r0, [r1, r0]
	mov     r1, #0xa
	blx     _s32_div_f
	mov     r1, #0x64
	mul     r1, r0
	ldr     r0, [pc, #0x1bc] @ 0x22610f4, (=0x186a0)
	str     r1, [r4, #0x1c]
	cmp     r1, r0
	bcc     branch_2260f40
	str     r0, [r4, #0x1c]
.thumb
branch_2260f40: @ 2260f40 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x1b4] @ 0x22610f8, (=0x2b94)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2260f4e
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
.thumb
branch_2260f4e: @ 2260f4e :thumb
	mov     r1, r4
	mov     r0, #0x19
	add     r1, #0x1c
	mov     r2, #0x8
	bl      0x20359dc
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xe
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260f68

.thumb
branch_2260f68: @ 2260f68 :thumb
	mov     r1, #0x0
	mov     r0, r1
	mov     r3, r1
	mov     r5, r4
.thumb
branch_2260f70: @ 2260f70 :thumb
	ldr     r2, [r5, #0x24]
	cmp     r2, #0x0
	beq     branch_2260f78
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_2260f78: @ 2260f78 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r5, #0x8
	cmp     r3, #0x4
	blt     branch_2260f70
	ldr     r2, [r4, #0x4]
	ldr     r2, [r2, #0x4]
	cmp     r0, r2
	bne     branch_2260f8a
	mov     r1, #0x1
.thumb
branch_2260f8a: @ 2260f8a :thumb
	mov     r0, r4
	mov     r2, #0xf
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260f96

.thumb
branch_2260f96: @ 2260f96 :thumb
	mov     r0, #0x1a
	bl      Function_2261768
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x10
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260faa

.thumb
branch_2260faa: @ 2260faa :thumb
	bl      0x200f2ac
	mov     r5, r0
	beq     branch_2260fb8
	mov     r0, r4
	bl      Function_22610fc
.thumb
branch_2260fb8: @ 2260fb8 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x11
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2260fc6

.thumb
branch_2260fc6: @ 2260fc6 :thumb
	mov     r6, #0x0
	mov     r5, r4
.thumb
branch_2260fca: @ 2260fca :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2264680
	cmp     r0, #0xff
	beq     branch_2260ff2
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r2, [r5, #0x24]
	add     r1, #0xa0
	str     r2, [r1, #0x0]
	add     r1, r4, r0
	add     r1, #0xa0
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x1
	bhi     branch_2260ff2
	add     r1, r4, r0
	add     r1, #0xa0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
.thumb
branch_2260ff2: @ 2260ff2 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x8
	cmp     r6, #0x4
	blt     branch_2260fca
	mov     r1, r4
	add     r1, #0x94
	ldrb    r1, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xa0
	bl      0x225c9a8
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x8c
	add     r1, #0xa0
	mov     r2, #0x6a
	bl      0x225c8ec
	mov     r1, r4
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x12
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x226102a

.thumb
branch_226102a: @ 226102a :thumb
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      0x225c9a0
	mov     r5, r0
	beq     branch_2261086
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      0x225c9a4
	mov     r6, r0
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      0x225c904
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	cmp     r6, #0x0
	beq     branch_2261086
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_2261244
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_226178c
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	cmp     r0, #0x0
	beq     branch_22610ca
	bl      0x21d1f18
	b       branch_22610ca
@ 0x2261086

.thumb
branch_2261086: @ 2261086 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x13
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x2261094

.thumb
branch_2261094: @ 2261094 :thumb
	mov     r0, #0x1b
	bl      0x20364f0
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	cmp     r0, #0x0
	beq     branch_22610aa
	bl      0x21d1f18
.thumb
branch_22610aa: @ 22610aa :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x14
	mov     r3, r7
	bl      Function_226178c
	b       branch_22610ca
@ 0x22610b8

.thumb
branch_22610b8: @ 22610b8 :thumb
	mov     r0, #0x1b
	bl      0x2036540
	cmp     r0, #0x1
	bne     branch_22610c6
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22610c6

.thumb
branch_22610c6: @ 22610c6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22610ca

.thumb
branch_22610ca: @ 22610ca :thumb
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x3
	blt     branch_22610e0
	cmp     r0, #0x10
	bge     branch_22610e0
	ldr     r0, [r4, #0x4]
	bl      Function_2261f08
	mov     r0, r4
	bl      Function_2261940
.thumb
branch_22610e0: @ 22610e0 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22610e4

.word 0x2ae4 @ 0x22610e4
.word 0x571 @ 0x22610e8
.word 0x573 @ 0x22610ec
.word 0x2af0 @ 0x22610f0
.word 0x186a0 @ 0x22610f4
.word 0x2b94 @ 0x22610f8
.thumb
Function_22610fc: @ 22610fc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	bl      0x201dc3c
	bl      0x201e530
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      0x201d2dc
	ldr     r0, [r5, #0x4]
	bl      Function_2261f3c
	ldr     r0, [r5, #0x4]
	bl      Function_2261df0
	ldr     r0, [r5, #0x4]
	bl      Function_2261e40
	ldr     r0, [r5, #0x4]
	bl      Function_226281c
	ldr     r0, [r5, #0x4]
	bl      Function_22628ac
	mov     r0, #0x45
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	add     r0, r1, r0
	bl      Function_226192c
	mov     r0, #0x32
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_226192c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xd4] @ 0x226122c, (=0x52c)
	add     r0, r1, r0
	bl      Function_226192c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xcc] @ 0x2261230, (=0x738)
	add     r0, r1, r0
	bl      Function_226192c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xc8] @ 0x2261234, (=0x944)
	add     r0, r1, r0
	bl      Function_226192c
	mov     r0, #0xea
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, r5
	add     r1, #0x6c
	bl      0x20171a0
	mov     r0, #0xef
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, r5
	add     r1, #0x6c
	bl      0x20171a0
	mov     r0, #0x3d
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, r5
	add     r1, #0x6c
	bl      0x20171a0
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x90] @ 0x2261238, (=0x5b4)
	add     r0, r1, r0
	mov     r1, r5
	add     r1, #0x6c
	bl      0x20171a0
	mov     r0, #0x1f
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, r5
	add     r1, #0x6c
	bl      0x20171a0
	mov     r7, #0x0
	mov     r6, r5
	mov     r4, r7
	add     r6, #0x6c
.thumb
branch_22611c8: @ 22611c8 :thumb
	mov     r0, #0xb5
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     r0, r0, r4
	bl      Function_226192c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x60] @ 0x226123c, (=0xbd8)
	add     r0, r1, r0
	add     r0, r0, r4
	mov     r1, r6
	bl      0x20171a0
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x58] @ 0x2261240, (=0xbec)
	add     r0, r1, r0
	add     r0, r0, r4
	mov     r1, r6
	bl      0x20171a0
	mov     r0, #0x83
	lsl     r0, r0, #2
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, r4, r0
	cmp     r7, #0x8
	blt     branch_22611c8
	mov     r0, r5
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      0x225cb38
	mov     r0, r5
	bl      Function_226139c
	mov     r0, r5
	bl      Function_22617c4
	cmp     r0, #0x1
	bne     branch_226121e
	ldr     r0, [r5, #0x0]
	bl      Function_2262a6c
.thumb
branch_226121e: @ 226121e :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_2262c64
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	str     r0, [r5, #0x4]
	pop     {r3-r7,pc}
@ 0x226122c

.word 0x52c @ 0x226122c
.word 0x738 @ 0x2261230
.word 0x944 @ 0x2261234
.word 0x5b4 @ 0x2261238
.word 0xbd8 @ 0x226123c
.word 0xbec @ 0x2261240
.thumb
Function_2261244: @ 2261244 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x8]
	str     r1, [r0, #0x10]
	mov     r2, r0
	strb    r1, [r0, #0x1c]
	add     r2, #0x1c
	strb    r1, [r2, #0x1]
	strb    r1, [r2, #0x2]
	strb    r1, [r2, #0x3]
	strb    r1, [r2, #0x4]
	strb    r1, [r2, #0x5]
	strb    r1, [r2, #0x6]
	strb    r1, [r2, #0x7]
	ldr     r3, [pc, #0x4] @ 0x2261268, (=0x20d5124)
	add     r0, #0x24
	mov     r2, #0x20
	bx      r3
@ 0x2261268

.word 0x20d5124 @ 0x2261268
.thumb
Function_226126c: @ 226126c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r6, r0
	cmp     r1, #0x0
	bne     branch_22612ac
	bl      0x200682c
	bl      Function_22617e4
	mov     r4, r0
	mov     r0, r6
	bl      0x2006830
	mov     r0, #0x6a
	bl      0x201807c
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20388f4
	cmp     r4, #0x0
	beq     branch_226129e
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x226129e

.thumb
branch_226129e: @ 226129e :thumb
	mov     r0, #0xe7
	bl      0x20364f0
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22612c8
@ 0x22612ac

.thumb
branch_22612ac: @ 22612ac :thumb
	mov     r0, #0xe7
	bl      0x2036540
	cmp     r0, #0x1
	beq     branch_22612c4
	bl      0x2035e18
	mov     r4, r0
	bl      0x2032e64
	cmp     r4, r0
	bge     branch_22612c8
.thumb
branch_22612c4: @ 22612c4 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22612c8

.thumb
branch_22612c8: @ 22612c8 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22612cc

.thumb
Function_22612cc: @ 22612cc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0xa4
	mov     r1, #0x6a
	bl      0x2006c24
	str     r0, [r4, #0x48]
	mov     r0, #0x9e
	mov     r1, #0x6a
	bl      0x2006c24
	str     r0, [r4, #0x4c]
	mov     r0, #0x6a
	bl      0x2018340
	str     r0, [r4, #0x58]
	mov     r0, #0x6a
	bl      0x2002f38
	str     r0, [r4, #0x5c]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r0, #0x6a
	mov     r2, #0x1
	mov     r3, r1
	bl      0x2024220
	str     r0, [r4, #0x60]
	mov     r0, #0x6a
	bl      0x20203ac
	str     r0, [r4, #0x64]
	mov     r0, r4
	bl      Function_2261c88
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x1
	bl      0x2003858
	mov     r2, #0x2
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x6a
	bl      0x2002f70
	mov     r1, #0x1
	ldr     r0, [r4, #0x5c]
	lsl     r2, r1, #9
	mov     r3, #0x6a
	bl      0x2002f70
	mov     r1, #0x2
	ldr     r0, [r4, #0x5c]
	lsl     r2, r1, #8
	mov     r3, #0x6a
	bl      0x2002f70
	mov     r2, #0x2
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x3
	lsl     r2, r2, #8
	mov     r3, #0x6a
	bl      0x2002f70
	ldr     r0, [r4, #0x58]
	bl      Function_2261494
	mov     r0, r4
	bl      Function_22616cc
	ldr     r0, [pc, #0x2c] @ 0x2261390, (=0x4000060)
	ldr     r1, [pc, #0x30] @ 0x2261394, (=0xffffcfff)
	ldrh    r2, [r0, #0x0]
	mov     r3, r2
	and     r3, r1
	mov     r2, #0x8
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2261398, (=0x22677b4)
	blx     0x20bfd2c
	add     r4, #0x6c
	mov     r0, r4
	mov     r1, #0x6a
	mov     r2, #0x20
	bl      0x20182cc
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2261390

.word 0x4000060 @ 0x2261390
.word 0xffffcfff @ 0x2261394
.word 0x22677b4 @ 0x2261398
.thumb
Function_226139c: @ 226139c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff74
	ldr     r0, [r4, #0x58]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x58]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0x58]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x58]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r4, #0x58]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r4, #0x58]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0x58]
	mov     r1, #0x7
	bl      0x2019044
	ldr     r0, [r4, #0x58]
	bl      0x20181c4
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	bl      0x2002fa0
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x1
	bl      0x2002fa0
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x2
	bl      0x2002fa0
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x3
	bl      0x2002fa0
	ldr     r0, [r4, #0x5c]
	bl      0x2002f54
	ldr     r0, [r4, #0x48]
	bl      0x2006ca8
	ldr     r0, [r4, #0x4c]
	bl      0x2006ca8
	ldr     r0, [r4, #0x60]
	bl      0x20242c4
	ldr     r0, [r4, #0x64]
	bl      0x20203b8
	ldr     r0, [r4, #0x50]
	ldr     r1, [r4, #0x54]
	bl      0x200d0b0
	ldr     r0, [r4, #0x50]
	bl      0x200c8d4
	ldr     r0, [pc, #0x14] @ 0x2261488, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	ldr     r2, [pc, #0xc] @ 0x226148c, (=0x4000060)
	ldr     r0, [pc, #0x10] @ 0x2261490, (=0xcff7)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	pop     {r4,pc}
@ 0x2261488

.word 0x21bf6dc @ 0x2261488
.word 0x4000060 @ 0x226148c
.word 0xcff7 @ 0x2261490
.thumb
Function_2261494: @ 2261494 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x11c
	mov     r4, r0
	bl      0x201ff00
	ldr     r5, [pc, #0x210] @ 0x22616b0, (=0x2267794)
	add     r3, sp, #0x2c
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x200] @ 0x22616b4, (=0x2267810)
	add     r3, sp, #0x4
	mov     r2, #0x5
.thumb
branch_22614b8: @ 22614b8 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22614b8
	add     r0, sp, #0x4
	bl      0x201fe94
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
	ldr     r5, [pc, #0x1b8] @ 0x22616b8, (=0x2267838)
	add     r3, sp, #0xac
	mov     r2, #0xe
.thumb
branch_2261504: @ 2261504 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2261504
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, r4
	mov     r1, #0x1
	add     r2, sp, #0xc8
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	add     r2, sp, #0xe4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x3
	add     r2, sp, #0x100
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019ebc
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019ebc
	ldr     r5, [pc, #0x144] @ 0x22616bc, (=0x22678a8)
	add     r3, sp, #0x3c
	mov     r2, #0xe
.thumb
branch_226157a: @ 226157a :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_226157a
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x7
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, r4
	mov     r1, #0x4
	add     r2, sp, #0x3c
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x5
	add     r2, sp, #0x58
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0x74
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x7
	add     r2, sp, #0x90
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019ebc
	mov     r0, r4
	mov     r1, #0x6
	bl      0x2019ebc
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019ebc
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x7
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6a
	bl      0x2019690
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r0, [pc, #0x3c] @ 0x22616c0, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x22616c4, (=0x4000050)
	mov     r1, #0x0
	mov     r2, #0x1e
	mov     r3, #0x7
	blx     0x20bf55c
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x22616c8, (=0x4001050)
	mov     r1, #0x0
	mov     r2, #0x11
	mov     r3, #0x7
	blx     0x20bf55c
	add     sp, #0x11c
	pop     {r4,r5,pc}
@ 0x22616b0

.word 0x2267794 @ 0x22616b0
.word 0x2267810 @ 0x22616b4
.word 0x2267838 @ 0x22616b8
.word 0x22678a8 @ 0x22616bc
.word 0x21bf6dc @ 0x22616c0
.word 0x4000050 @ 0x22616c4
.word 0x4001050 @ 0x22616c8
.thumb
Function_22616cc: @ 22616cc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4c
	mov     r4, r0
	mov     r0, #0x6a
	bl      0x200c6e4
	add     r2, sp, #0x2c
	ldr     r5, [pc, #0x80] @ 0x226175c, (=0x22677f0)
	str     r0, [r4, #0x50]
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	ldr     r6, [pc, #0x70] @ 0x2261760, (=0x22677c4)
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
	bl      0x200c73c
	ldr     r3, [pc, #0x54] @ 0x2261764, (=0x22677d8)
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x50]
	bl      0x200c704
	str     r0, [r4, #0x54]
	ldr     r0, [r4, #0x50]
	ldr     r1, [r4, #0x54]
	mov     r2, #0xff
	bl      0x200c7c0
	cmp     r0, #0x0
	bne     branch_2261736
	bl      ErrorHandling
.thumb
branch_2261736: @ 2261736 :thumb
	ldr     r0, [r4, #0x50]
	ldr     r1, [r4, #0x54]
	add     r2, sp, #0x0
	bl      0x200cb30
	cmp     r0, #0x0
	bne     branch_2261748
	bl      ErrorHandling
.thumb
branch_2261748: @ 2261748 :thumb
	ldr     r0, [r4, #0x50]
	bl      0x200c738
	mov     r2, #0x1
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	add     sp, #0x4c
	pop     {r3-r6,pc}
@ 0x226175c

.word 0x22677f0 @ 0x226175c
.word 0x22677c4 @ 0x2261760
.word 0x22677d8 @ 0x2261764
.thumb
Function_2261768: @ 2261768 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x6a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x226178a


.align 2, 0


.thumb
Function_226178c: @ 226178c :thumb
	cmp     r1, #0x0
	beq     branch_2261792
	str     r2, [r3, #0x0]
.thumb
branch_2261792: @ 2261792 :thumb
	bx      lr
@ 0x2261794

.thumb
Function_2261794: @ 2261794 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x201dcac
	bl      0x200c800
	ldr     r0, [r4, #0x5c]
	bl      0x2003694
	ldr     r0, [r4, #0x58]
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x22617bc, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x22617c0, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x22617ba


.align 2


.word 0x27e0000 @ 0x22617bc
.word 0x3ff8 @ 0x22617c0
.thumb
Function_22617c4: @ 22617c4 :thumb
	ldr     r0, [r0, #0x44]
	cmp     r0, #0x0
	bne     branch_22617ce
	mov     r0, #0x1
	bx      lr
@ 0x22617ce

.thumb
branch_22617ce: @ 22617ce :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22617d2


.align 2, 0


.thumb
Function_22617d4: @ 22617d4 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x8]
	bx      lr
@ 0x22617da


.align 2, 0


.thumb
Function_22617dc: @ 22617dc :thumb
	mov     r1, #0x1
	str     r1, [r0, #0xc]
	bx      lr
@ 0x22617e2


.align 2, 0


.thumb
Function_22617e4: @ 22617e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x8c
	bl      0x225ca54
	cmp     r0, #0x1
	bne     branch_226186a
	mov     r0, r4
	add     r0, #0x7c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2261816
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_2261808
	bl      0x200f2c0
.thumb
branch_2261808: @ 2261808 :thumb
	mov     r0, #0x0
	bl      0x200f370
	mov     r0, #0x1
	add     r4, #0x7c
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2261816

.thumb
branch_2261816: @ 2261816 :thumb
	mov     r0, r4
	add     r0, #0x8c
	bl      0x225ca98
	cmp     r0, #0x0
	bne     branch_2261826
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2261826

.thumb
branch_2261826: @ 2261826 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_226183c
	bl      Function_2262264
	ldr     r0, [r4, #0x4]
	bl      Function_2262004
	mov     r0, r4
	bl      Function_22610fc
.thumb
branch_226183c: @ 226183c :thumb
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2261852
	bl      0x225c904
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xb8
	str     r1, [r0, #0x0]
.thumb
branch_2261852: @ 2261852 :thumb
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2261866
	bl      0x225c838
	mov     r0, #0x0
	add     r4, #0x9c
	str     r0, [r4, #0x0]
.thumb
branch_2261866: @ 2261866 :thumb
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x226186a

.thumb
branch_226186a: @ 226186a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226186e


.align 2, 0


.thumb
Function_2261870: @ 2261870 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x6c]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_22618a4
	blx     0x20af480
	mov     r0, #0x1c
	mov     r1, r6
	mov     r2, #0x3
	blx     0x20b275c
	mov     r0, #0x19
	mov     r1, r4
	mov     r2, #0xc
	blx     0x20b275c
	mov     r0, r5
	add     r0, #0x60
	blx     0x20af4ec
	mov     r0, r5
	blx     0x20afefc
.thumb
branch_22618a4: @ 22618a4 :thumb
	pop     {r4-r6,pc}
@ 0x22618a6


.align 2, 0


.thumb
Function_22618a8: @ 22618a8 :thumb
	push    {r3,lr}
	add     r0, #0x78
	mov     r3, #0x6a
	bl      0x20170d8
	pop     {r3,pc}
@ 0x22618b4

.thumb
Function_22618b4: @ 22618b4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r1, r4
	add     r1, #0x78
	bl      0x2017258
	mov     r1, #0x0
	ldr     r2, [pc, #0x60] @ 0x2261928, (=0xfffec000)
	mov     r0, r4
	mov     r3, r1
	bl      0x2017350
	cmp     r5, #0x0
	bne     branch_22618e2
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	b       branch_22618f0
@ 0x22618e2

.thumb
branch_22618e2: @ 22618e2 :thumb
	mov     r1, #0x6
	lsl     r1, r1, #10
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
.thumb
branch_22618f0: @ 22618f0 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2017348
	mov     r2, #0x1e
	lsl     r2, r2, #4
	mov     r0, #0x0
	ldr     r3, [pc, #0x28] @ 0x2261928, (=0xfffec000)
	str     r0, [r4, r2]
	add     r1, r2, #0x4
	str     r3, [r4, r1]
	mov     r1, r2
	add     r1, #0x8
	str     r0, [r4, r1]
	mov     r1, r2
	add     r1, #0x1c
	str     r0, [r4, r1]
	mov     r1, r2
	add     r1, #0x20
	str     r0, [r4, r1]
	mov     r1, r2
	add     r1, #0xc
	str     r0, [r4, r1]
	mov     r0, #0x1
	add     r2, #0x10
	str     r0, [r4, r2]
	pop     {r3-r5,pc}
@ 0x2261926


.align 2


.word 0xfffec000 @ 0x2261928
.thumb
Function_226192c: @ 226192c :thumb
	mov     r1, #0x1f
	ldr     r3, [pc, #0xc] @ 0x226193c, (=0x2017111)
	mov     r2, #0x0
	lsl     r1, r1, #4
	str     r2, [r0, r1]
	add     r0, #0x78
	bx      r3
@ 0x226193a


.align 2


.word 0x2017111 @ 0x226193c
.thumb
Function_2261940: @ 2261940 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	bl      0x20241b4
	bl      0x20203ec
	ldr     r4, [pc, #0x2b4] @ 0x2261c04, (=0x2267a6c)
	add     r3, sp, #0x18
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r2
	blx     0x20bd3e4
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	mov     r0, #0x0
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	blx     0x20af51c
	ldr     r1, [pc, #0x288] @ 0x2261c08, (=0x7fff)
	mov     r0, #0x0
	blx     0x20af558
	ldr     r0, [pc, #0x280] @ 0x2261c08, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     0x20af56c
	ldr     r0, [pc, #0x278] @ 0x2261c08, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     0x20af590
	mov     r7, #0x0
	mov     r4, r7
.thumb
branch_226199c: @ 226199c :thumb
	mov     r0, #0xb5
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	add     r6, r0, r4
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	mov     r1, #0x1b
	mov     r2, #0x1e
	lsl     r1, r1, #4
	lsl     r2, r2, #4
	mov     r0, r6
	add     r1, r6, r1
	add     r2, r6, r2
	bl      Function_2261870
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	mov     r0, #0x12
	add     r1, sp, #0x14
	mov     r2, #0x1
	blx     0x20b275c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x238] @ 0x2261c0c, (=0xbd8)
	add     r0, r1, r0
	mov     r1, #0x1
	add     r0, r0, r4
	lsl     r1, r1, #12
	bl      0x20171cc
	mov     r0, #0x83
	lsl     r0, r0, #2
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, r4, r0
	cmp     r7, #0x8
	blt     branch_226199c
	ldr     r1, [r5, #0x4]
	sub     r0, #0xfc
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2261a00
	cmp     r0, #0x1
	beq     branch_2261a40
	cmp     r0, #0x2
	beq     branch_2261a74
	b       branch_2261aa8
@ 0x2261a00

.thumb
branch_2261a00: @ 2261a00 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x1
	bl      0x2017348
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x200] @ 0x2261c10, (=0x52c)
	add     r0, r1, r0
	mov     r1, #0x0
	bl      0x2017348
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x1f8] @ 0x2261c14, (=0x738)
	add     r0, r1, r0
	mov     r1, #0x0
	bl      0x2017348
	mov     r0, #0xea
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	add     r2, r1, r0
	ldr     r0, [pc, #0x1e8] @ 0x2261c18, (=0x514)
	ldr     r1, [r1, r0]
	mov     r0, #0x14
	mul     r0, r1
	mov     r1, #0x1
	add     r0, r2, r0
	lsl     r1, r1, #12
	bl      0x20171cc
	b       branch_2261aa8
@ 0x2261a40

.thumb
branch_2261a40: @ 2261a40 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      0x2017348
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x1c0] @ 0x2261c10, (=0x52c)
	add     r0, r1, r0
	mov     r1, #0x1
	bl      0x2017348
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x1b8] @ 0x2261c14, (=0x738)
	add     r0, r1, r0
	mov     r1, #0x0
	bl      0x2017348
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x1b4] @ 0x2261c1c, (=0x5b4)
	add     r0, r1, r0
	mov     r1, #0x1
	lsl     r1, r1, #12
	bl      0x2017204
	b       branch_2261aa8
@ 0x2261a74

.thumb
branch_2261a74: @ 2261a74 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      0x2017348
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x18c] @ 0x2261c10, (=0x52c)
	add     r0, r1, r0
	mov     r1, #0x0
	bl      0x2017348
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x184] @ 0x2261c14, (=0x738)
	add     r0, r1, r0
	mov     r1, #0x1
	bl      0x2017348
	mov     r0, #0x1f
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, #0x1
	lsl     r1, r1, #12
	bl      0x2017204
.thumb
branch_2261aa8: @ 2261aa8 :thumb
	mov     r0, #0x32
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #4
	add     r4, r1, r0
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r1, [r1, r0]
	add     r0, #0xfc
	mov     r6, r1
	mov     r1, #0x0
	mul     r6, r0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	mov     r2, #0x1b
	lsl     r2, r2, #4
	add     r1, r4, r2
	add     r2, #0x30
	add     r0, r4, r6
	add     r2, r4, r2
	bl      Function_2261870
	mov     r2, #0x1
	str     r2, [sp, #0x10]
	mov     r0, #0x12
	add     r1, sp, #0x10
	blx     0x20b275c
	mov     r0, #0x45
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	add     r4, r1, r0
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	mov     r2, #0x1b
	lsl     r2, r2, #4
	add     r1, r4, r2
	add     r2, #0x30
	mov     r0, r4
	add     r2, r4, r2
	bl      Function_2261870
	mov     r2, #0x1
	str     r2, [sp, #0xc]
	mov     r0, #0x12
	add     r1, sp, #0xc
	blx     0x20b275c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x10c] @ 0x2261c20, (=0x944)
	add     r4, r1, r0
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	mov     r2, #0x1b
	lsl     r2, r2, #4
	add     r1, r4, r2
	add     r2, #0x30
	mov     r0, r4
	add     r2, r4, r2
	bl      Function_2261870
	mov     r2, #0x1
	str     r2, [sp, #0x8]
	mov     r0, #0x12
	add     r1, sp, #0x8
	blx     0x20b275c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xe4] @ 0x2261c24, (=0x1fac)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2261ba6
	ldr     r0, [pc, #0xe0] @ 0x2261c28, (=0x1dbc)
	add     r4, r1, r0
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	mov     r2, #0x1b
	lsl     r2, r2, #4
	add     r1, r4, r2
	add     r2, #0x30
	mov     r0, r4
	add     r2, r4, r2
	bl      Function_2261870
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x12
	add     r1, sp, #0x4
	blx     0x20b275c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xb8] @ 0x2261c2c, (=0x1fa8)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2261ba6
	ldr     r0, [pc, #0xb4] @ 0x2261c30, (=0x1e44)
	add     r0, r1, r0
	mov     r1, #0x1
	lsl     r1, r1, #12
	bl      0x2017204
	mov     r4, r0
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xa8] @ 0x2261c34, (=0x1e58)
	add     r0, r1, r0
	mov     r1, #0x1
	lsl     r1, r1, #12
	bl      0x2017204
	cmp     r4, #0x0
	beq     branch_2261ba6
	cmp     r0, #0x0
	beq     branch_2261ba6
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x88] @ 0x2261c2c, (=0x1fa8)
	mov     r2, #0x0
	str     r2, [r1, r0]
.thumb
branch_2261ba6: @ 2261ba6 :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x2261c38, (=0x1da0)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2261bf0
	ldr     r0, [pc, #0x88] @ 0x2261c3c, (=0x1bb0)
	add     r4, r1, r0
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	mov     r2, #0x1b
	lsl     r2, r2, #4
	add     r1, r4, r2
	add     r2, #0x30
	mov     r0, r4
	add     r2, r4, r2
	bl      Function_2261870
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r0, #0x12
	add     r1, sp, #0x0
	blx     0x20b275c
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x60] @ 0x2261c40, (=0x1d9c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2261bf0
	ldr     r0, [pc, #0x5c] @ 0x2261c44, (=0x1c4c)
	add     r0, r1, r0
	mov     r1, #0x1
	lsl     r1, r1, #12
	bl      0x20171cc
.thumb
branch_2261bf0: @ 2261bf0 :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20241bc
	ldr     r0, [r5, #0x54]
	bl      0x200c7ec
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2261c02


.align 2


.word 0x2267a6c @ 0x2261c04
.word 0x7fff @ 0x2261c08
.word 0xbd8 @ 0x2261c0c
.word 0x52c @ 0x2261c10
.word 0x738 @ 0x2261c14
.word 0x514 @ 0x2261c18
.word 0x5b4 @ 0x2261c1c
.word 0x944 @ 0x2261c20
.word 0x1fac @ 0x2261c24
.word 0x1dbc @ 0x2261c28
.word 0x1fa8 @ 0x2261c2c
.word 0x1e44 @ 0x2261c30
.word 0x1e58 @ 0x2261c34
.word 0x1da0 @ 0x2261c38
.word 0x1bb0 @ 0x2261c3c
.word 0x1d9c @ 0x2261c40
.word 0x1c4c @ 0x2261c44
.thumb
Function_2261c48: @ 2261c48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x2261c84, (=0x514)
	mov     r4, r1
	ldr     r1, [r5, r0]
	cmp     r4, r1
	beq     branch_2261c82
	mov     r2, #0x32
	lsl     r2, r2, #4
	add     r0, r5, r2
	add     r2, #0x88
	add     r3, r5, r2
	mov     r2, #0x14
	mul     r2, r1
	add     r1, r3, r2
	bl      0x2017288
	ldr     r0, [pc, #0x18] @ 0x2261c84, (=0x514)
	mov     r1, #0x32
	lsl     r1, r1, #4
	str     r4, [r5, r0]
	add     r0, r5, r1
	add     r1, #0x88
	add     r2, r5, r1
	mov     r1, #0x14
	mul     r1, r4
	add     r1, r2, r1
	bl      0x201727c
.thumb
branch_2261c82: @ 2261c82 :thumb
	pop     {r3-r5,pc}
@ 0x2261c84

.word 0x514 @ 0x2261c84
.thumb
Function_2261c88: @ 2261c88 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r6, [pc, #0x40] @ 0x2261cd0, (=0x2267a60)
	mov     r4, r0
	ldmia   r6!, {r0,r1}
	add     r5, sp, #0x8
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	mov     r2, #0xb6
	add     r7, sp, #0x14
	mov     r3, #0x0
	str     r3, [r7, #0x0]
	str     r3, [r7, #0x4]
	str     r3, [r7, #0x8]
	str     r0, [r5, #0x0]
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x64]
	lsl     r2, r2, #4
	str     r0, [sp, #0x4]
	mov     r0, r7
	bl      0x2020784
	mov     r1, #0xfa
	ldr     r0, [pc, #0x18] @ 0x2261cd4, (=0xffc18000)
	ldr     r2, [r4, #0x64]
	lsl     r1, r1, #14
	bl      0x20206bc
	ldr     r0, [r4, #0x64]
	bl      0x20203d4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2261cce


.align 2


.word 0x2267a60 @ 0x2261cd0
.word 0xffc18000 @ 0x2261cd4
.thumb
Function_2261cd8: @ 2261cd8 :thumb
	push    {r3,r4}
	strh    r1, [r0, #0x0]
	strh    r2, [r0, #0x2]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	str     r1, [r0, #0x8]
	str     r3, [r0, #0x10]
	mov     r2, #0x2
	str     r2, [r0, #0x2c]
	str     r1, [r0, #0x30]
	ldr     r1, [sp, #0x8]
	ldr     r4, [sp, #0xc]
	str     r1, [r0, #0xc]
	str     r4, [r0, #0x14]
	str     r4, [r0, #0x18]
	str     r4, [r0, #0x1c]
	str     r4, [r0, #0x20]
	.hword  0x1ed1 @ sub r1, r2, #0x3
	str     r1, [r0, #0x24]
	str     r1, [r0, #0x28]
	pop     {r3,r4}
	bx      lr
@ 0x2261d06


.align 2, 0


.thumb
Function_2261d08: @ 2261d08 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	ldr     r1, [r0, #0x14]
	str     r0, [sp, #0x8]
	ldr     r0, [r1, #0x8]
	mov     r6, #0x0
	ldr     r7, [r1, #0xc]
	ldr     r5, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r4, r6
.thumb
branch_2261d1c: @ 2261d1c :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x2261d6c, (=0x232e)
	lsl     r1, r4, #16
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	asr     r1, r1, #16
	mov     r2, #0x14
	mov     r3, #0x1
	bl      Function_2261cd8
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	add     r2, sp, #0x10
	bl      0x200ce6c
	mov     r1, #0x3
	str     r0, [r5, #0x40]
	bl      0x200d430
	mov     r0, r6
	mov     r1, #0xb
	blx     _s32_div_f
	ldr     r0, [r5, #0x40]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x200d364
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x24
	blt     branch_2261d1c
	mov     r1, #0x0
	ldr     r0, [sp, #0x8]
	mov     r2, r1
	bl      Function_2261e0c
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x2261d6c

.word 0x232e @ 0x2261d6c
.thumb
Function_2261d70: @ 2261d70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	mov     r5, r0
	ldr     r1, [r5, #0x14]
	add     r4, sp, #0xc
	ldr     r0, [r1, #0x8]
	ldr     r7, [r1, #0xc]
	ldr     r1, [pc, #0x68] @ 0x2261de8, (=0x2267a58)
	str     r0, [sp, #0x8]
	ldrh    r2, [r1, #0x0]
	add     r0, sp, #0xc
	mov     r6, #0x0
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x2]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x4]
	ldrh    r1, [r1, #0x6]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
.thumb
branch_2261d96: @ 2261d96 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x2261dec, (=0x232c)
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldsh    r1, [r4, r1]
	add     r0, sp, #0x14
	mov     r2, #0xe0
	mov     r3, #0x1
	bl      Function_2261cd8
	mov     r0, #0x0
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	add     r2, sp, #0x14
	bl      0x200ce6c
	mov     r1, r5
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bl      0x200d33c
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d430
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_2261d96
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x2261de8

.word 0x2267a58 @ 0x2261de8
.word 0x232c @ 0x2261dec
.thumb
Function_2261df0: @ 2261df0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2261df6: @ 2261df6 :thumb
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bl      0x200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2261df6
	pop     {r3-r5,pc}
@ 0x2261e0a


.align 2, 0


.thumb
Function_2261e0c: @ 2261e0c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_2261e14: @ 2261e14 :thumb
	ldr     r0, [r5, #0x40]
	mov     r1, r6
	bl      0x200d3f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x24
	blt     branch_2261e14
	pop     {r4-r6,pc}
@ 0x2261e26


.align 2, 0


.thumb
Function_2261e28: @ 2261e28 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2261e2e: @ 2261e2e :thumb
	ldr     r0, [r5, #0x40]
	bl      0x200d33c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x24
	blt     branch_2261e2e
	pop     {r3-r5,pc}
@ 0x2261e3e


.align 2, 0


.thumb
Function_2261e40: @ 2261e40 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2261e46: @ 2261e46 :thumb
	ldr     r0, [r5, #0x40]
	bl      0x200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x24
	blt     branch_2261e46
	pop     {r3-r5,pc}
@ 0x2261e56


.align 2, 0


.thumb
Function_2261e58: @ 2261e58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r4, [pc, #0x40] @ 0x2261ea0, (=0x2267ad0)
	mov     r6, r2
	add     r2, sp, #0x0
	mov     r5, r0
	mov     r3, r1
	mov     r7, r2
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	lsl     r0, r3, #1
	add     r0, r5, r0
	add     r0, #0xf4
	lsl     r4, r6, #3
	ldrh    r0, [r0, #0x0]
	ldr     r1, [r7, r4]
	lsl     r6, r0, #2
	add     r0, r5, r6
	ldr     r0, [r0, #0x1c]
	bl      0x200d364
	add     r0, r5, r6
	add     r1, sp, #0x4
	ldr     r0, [r0, #0x28]
	ldr     r1, [r1, r4]
	bl      0x200d364
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2261e9e


.align 2


.word 0x2267ad0 @ 0x2261ea0
.thumb
Function_2261ea4: @ 2261ea4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	ldr     r3, [pc, #0x58] @ 0x2261f04, (=0x2267a90)
	add     r2, sp, #0x0
	mov     r5, r0
	mov     r4, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	lsl     r0, r4, #1
	add     r0, r5, r0
	add     r0, #0xf4
	ldrh    r0, [r0, #0x0]
	lsl     r6, r0, #2
	add     r0, r5, r6
	ldr     r0, [r0, #0x1c]
	bl      0x200d37c
	mov     r4, r0
	add     r0, r5, r6
	ldr     r0, [r0, #0x28]
	bl      0x200d37c
	mov     r2, #0x0
	add     r3, sp, #0x0
.thumb
branch_2261ee0: @ 2261ee0 :thumb
	ldr     r1, [r3, #0x0]
	cmp     r4, r1
	bne     branch_2261ef2
	ldr     r1, [r3, #0x4]
	cmp     r0, r1
	bne     branch_2261ef2
	add     sp, #0x20
	mov     r0, r2
	pop     {r4-r6,pc}
@ 0x2261ef2

.thumb
branch_2261ef2: @ 2261ef2 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, #0x4
	blt     branch_2261ee0
	bl      ErrorHandling
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x2261f04

.word 0x2267a90 @ 0x2261f04
.thumb
Function_2261f08: @ 2261f08 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2261f38
	mov     r5, r6
.thumb
branch_2261f16: @ 2261f16 :thumb
	ldr     r0, [r6, #0x0]
	cmp     r4, r0
	beq     branch_2261f30
	ldr     r0, [r5, #0x1c]
	bl      0x200d33c
	ldr     r0, [r5, #0x28]
	bl      0x200d33c
	ldr     r0, [r5, #0x34]
	bl      0x200d33c
	.hword  0x1d2d @ add r5, r5, #0x4
.thumb
branch_2261f30: @ 2261f30 :thumb
	ldr     r0, [r6, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2261f16
.thumb
branch_2261f38: @ 2261f38 :thumb
	pop     {r4-r6,pc}
@ 0x2261f3a


.align 2, 0


.thumb
Function_2261f3c: @ 2261f3c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2261f6c
	mov     r5, r6
.thumb
branch_2261f4a: @ 2261f4a :thumb
	ldr     r0, [r6, #0x0]
	cmp     r4, r0
	beq     branch_2261f64
	ldr     r0, [r5, #0x1c]
	bl      0x200d0f4
	ldr     r0, [r5, #0x28]
	bl      0x200d0f4
	ldr     r0, [r5, #0x34]
	bl      0x200d0f4
	.hword  0x1d2d @ add r5, r5, #0x4
.thumb
branch_2261f64: @ 2261f64 :thumb
	ldr     r0, [r6, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2261f4a
.thumb
branch_2261f6c: @ 2261f6c :thumb
	pop     {r4-r6,pc}
@ 0x2261f6e


.align 2, 0


.thumb
Function_2261f70: @ 2261f70 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [pc, #0x84] @ 0x2261ffc, (=0x1fe0)
	add     r0, r5, r0
	bl      0x201a7a0
	mov     r1, #0x13
	str     r1, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	lsl     r0, r1, #4
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x14]
	ldr     r1, [pc, #0x64] @ 0x2261ffc, (=0x1fe0)
	ldr     r0, [r0, #0x10]
	add     r1, r5, r1
	mov     r2, #0x7
	mov     r3, #0x2
	bl      0x201a7e8
	ldr     r0, [pc, #0x58] @ 0x2261ffc, (=0x1fe0)
	mov     r1, #0xff
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r2, [pc, #0x50] @ 0x2262000, (=0x19a)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x6a
	bl      0x200b144
	mov     r1, #0x0
	mov     r6, r0
	bl      0x200b1ec
	mov     r4, r0
	mov     r1, #0x0
	ldr     r0, [pc, #0x34] @ 0x2261ffc, (=0x1fe0)
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r0, r5, r0
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      0x201d738
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r6
	bl      0x200b190
	ldr     r0, [pc, #0x18] @ 0x2261ffc, (=0x1fe0)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0xb4
	mov     r3, #0xd
	bl      0x200dc48
	ldr     r0, [pc, #0x8] @ 0x2261ffc, (=0x1fe0)
	add     r0, r5, r0
	bl      0x201a954
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2261ffc

.word 0x1fe0 @ 0x2261ffc
.word 0x19a @ 0x2262000
.thumb
Function_2262004: @ 2262004 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x2262030, (=0x1fe0)
	add     r0, r4, r0
	bl      0x201a7cc
	cmp     r0, #0x1
	bne     branch_226202e
	ldr     r0, [pc, #0x18] @ 0x2262030, (=0x1fe0)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x10] @ 0x2262030, (=0x1fe0)
	add     r0, r4, r0
	bl      0x201acf4
	ldr     r0, [pc, #0x8] @ 0x2262030, (=0x1fe0)
	add     r0, r4, r0
	bl      0x201a8fc
.thumb
branch_226202e: @ 226202e :thumb
	pop     {r4,pc}
@ 0x2262030

.word 0x1fe0 @ 0x2262030
.thumb
Function_2262034: @ 2262034 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	ldr     r0, [r7, #0x5c]
	mov     r4, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x14
	ldr     r2, [pc, #0x44] @ 0x2262088, (=0x2267f20)
	mul     r0, r1
	mov     r5, r4
	add     r6, r2, r0
.thumb
branch_226204a: @ 226204a :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	add     r0, r4, #0x1
	lsl     r0, r0, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r0, [r7, #0x4]
	mov     r2, #0x49
	ldr     r1, [r0, #0x4]
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r6, r0
	add     r0, r5, r0
	sub     r0, #0x4c
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa4
	lsl     r0, r0, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	mov     r3, #0x6a
	bl      0x2002fec
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_226204a
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2262088

.word 0x2267f20 @ 0x2262088
.thumb
Function_226208c: @ 226208c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r2, r0
	bl      0x2002d7c
	mov     r4, r0
	mov     r0, r5
	bl      0x201c294
	lsl     r0, r0, #3
	sub     r1, r0, r4
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	pop     {r3-r5,pc}
@ 0x22620ac

.thumb
Function_22620ac: @ 22620ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	str     r0, [sp, #0x18]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r5, r1
	ldr     r3, [pc, #0x198] @ 0x2262254, (=0x2267af0)
	str     r0, [sp, #0x24]
	add     r2, sp, #0x34
	mov     r1, #0x24
.thumb
branch_22620c0: @ 22620c0 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_22620c0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x2
	beq     branch_22620dc
	cmp     r0, #0x3
	beq     branch_22620f8
	cmp     r0, #0x4
	beq     branch_2262114
	b       branch_2262130
@ 0x22620dc

.thumb
branch_22620dc: @ 22620dc :thumb
	ldr     r2, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	ldr     r0, [r2, #0x0]
	ldr     r2, [r2, #0x10]
	mov     r1, #0x4f
	mov     r3, #0x7
	bl      0x200710c
	b       branch_2262134
@ 0x22620f8

.thumb
branch_22620f8: @ 22620f8 :thumb
	ldr     r2, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	ldr     r0, [r2, #0x0]
	ldr     r2, [r2, #0x10]
	mov     r1, #0x50
	mov     r3, #0x7
	bl      0x200710c
	b       branch_2262134
@ 0x2262114

.thumb
branch_2262114: @ 2262114 :thumb
	ldr     r2, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	ldr     r0, [r2, #0x0]
	ldr     r2, [r2, #0x10]
	mov     r1, #0x51
	mov     r3, #0x7
	bl      0x200710c
	b       branch_2262134
@ 0x2262130

.thumb
branch_2262130: @ 2262130 :thumb
	bl      ErrorHandling
.thumb
branch_2262134: @ 2262134 :thumb
	ldr     r0, [r5, #0x4]
	mov     r6, #0x0
	cmp     r0, #0x0
	bgt     branch_226213e
	b       branch_2262250
@ 0x226213e

.thumb
branch_226213e: @ 226213e :thumb
	ldr     r0, [pc, #0x118] @ 0x2262258, (=0x1ff0)
	str     r6, [sp, #0x1c]
	add     r4, r5, r0
	ldr     r0, [sp, #0x18]
	add     r0, #0x8c
	str     r0, [sp, #0x18]
.thumb
branch_226214a: @ 226214a :thumb
	ldr     r0, [r5, #0x0]
	cmp     r6, r0
	beq     branch_2262246
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	bl      0x225c7a4
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	bl      0x225c7cc
	str     r0, [sp, #0x2c]
	mov     r0, r4
	bl      0x201a7a0
	ldr     r1, [r5, #0x4]
	mov     r0, #0x18
	mov     r2, r1
	mul     r2, r0
	add     r0, sp, #0x34
	add     r1, r0, r2
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x7
	add     r7, r1, r0
	mov     r0, #0x2b
	mvn     r0, r0
	ldsh    r0, [r7, r0]
	mov     r3, r2
	sub     r3, #0x37
	str     r0, [sp, #0x20]
	mov     r0, #0x29
	mvn     r0, r0
	ldsh    r0, [r7, r0]
	mov     r1, r4
	str     r0, [sp, #0x30]
	mov     r0, #0x2d
	mvn     r0, r0
	ldsh    r0, [r7, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x24]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldsh    r3, [r7, r3]
	ldr     r0, [r5, #0x14]
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x10]
	lsr     r3, r3, #24
	bl      0x201a7e8
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0x30]
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x24]
	mov     r1, #0xff
	add     r0, r0, r2
	str     r0, [sp, #0x24]
	mov     r0, r4
	bl      0x201ada4
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x6a
	bl      0x2025f04
	mov     r7, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_226208c
	mov     r3, r0
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_2262216
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x226225c, (=0x5060f)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r2, r7
	bl      0x201d7e0
	b       branch_2262232
@ 0x2262216

.thumb
branch_2262216: @ 2262216 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2262260, (=0x1020f)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r2, r7
	bl      0x201d7e0
.thumb
branch_2262232: @ 2262232 :thumb
	mov     r0, r7
	bl      0x20237bc
	mov     r0, r4
	bl      0x201a954
	ldr     r0, [sp, #0x1c]
	add     r4, #0x10
	add     r0, #0x8
	str     r0, [sp, #0x1c]
.thumb
branch_2262246: @ 2262246 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	bge     branch_2262250
	b       branch_226214a
@ 0x2262250

.thumb
branch_2262250: @ 2262250 :thumb
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x2262254

.word 0x2267af0 @ 0x2262254
.word 0x1ff0 @ 0x2262258
.word 0x5060f @ 0x226225c
.word 0x1020f @ 0x2262260
.thumb
Function_2262264: @ 2262264 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_22622a6
	ldr     r0, [pc, #0x50] @ 0x22622c4, (=0x1ff0)
	mov     r7, #0x1
	add     r5, r6, r0
.thumb
branch_2262278: @ 2262278 :thumb
	ldr     r0, [r6, #0x0]
	cmp     r4, r0
	beq     branch_226229e
	mov     r0, r5
	bl      0x201a7cc
	cmp     r0, #0x1
	bne     branch_226229c
	mov     r0, r5
	mov     r1, r7
	bl      0x200dc9c
	mov     r0, r5
	bl      0x201acf4
	mov     r0, r5
	bl      0x201a8fc
.thumb
branch_226229c: @ 226229c :thumb
	add     r5, #0x10
.thumb
branch_226229e: @ 226229e :thumb
	ldr     r0, [r6, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2262278
.thumb
branch_22622a6: @ 22622a6 :thumb
	ldr     r2, [r6, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	ldr     r0, [r2, #0x0]
	ldr     r2, [r2, #0x10]
	mov     r1, #0x4e
	mov     r3, #0x7
	bl      0x200710c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22622c4

.word 0x1ff0 @ 0x22622c4
.thumb
Function_22622c8: @ 22622c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r4, [r0, #0x48]
	ldr     r5, [r0, #0x54]
	ldr     r6, [r0, #0x50]
	ldr     r7, [r0, #0x5c]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2ac] @ 0x226258c, (=0x2328)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x54
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x298] @ 0x226258c, (=0x2328)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x53
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x284] @ 0x226258c, (=0x2328)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x52
	bl      0x200ce54
	str     r4, [sp, #0x0]
	mov     r0, #0x55
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x264] @ 0x226258c, (=0x2328)
	mov     r1, #0x3
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r2, r6
	mov     r3, r5
	bl      0x200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x250] @ 0x2262590, (=0x232b)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x1d
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x23c] @ 0x2262590, (=0x232b)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x1c
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x228] @ 0x2262590, (=0x232b)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x1b
	bl      0x200ce54
	str     r4, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x208] @ 0x2262590, (=0x232b)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r2, r6
	mov     r3, r5
	bl      0x200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1f4] @ 0x2262594, (=0x232c)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0xd
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1e0] @ 0x2262594, (=0x232c)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0xc
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1cc] @ 0x2262594, (=0x232c)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0xb
	bl      0x200ce54
	str     r4, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x1ac] @ 0x2262594, (=0x232c)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r2, r6
	mov     r3, r5
	bl      0x200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x198] @ 0x2262598, (=0x232d)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x15
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x184] @ 0x2262598, (=0x232d)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x14
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x170] @ 0x2262598, (=0x232d)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x13
	bl      0x200ce54
	str     r4, [sp, #0x0]
	mov     r0, #0x16
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x150] @ 0x2262598, (=0x232d)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r2, r6
	mov     r3, r5
	bl      0x200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x13c] @ 0x226259c, (=0x232e)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x11
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x128] @ 0x226259c, (=0x232e)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x10
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x114] @ 0x226259c, (=0x232e)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0xf
	bl      0x200ce54
	str     r4, [sp, #0x0]
	mov     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xf4] @ 0x226259c, (=0x232e)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r2, r6
	mov     r3, r5
	bl      0x200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe0] @ 0x22625a0, (=0x232a)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x19
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xcc] @ 0x22625a0, (=0x232a)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x18
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x22625a0, (=0x232a)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x17
	bl      0x200ce54
	str     r4, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x94] @ 0x22625a0, (=0x232a)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r2, r6
	mov     r3, r5
	bl      0x200cdc4
	mov     r0, #0xab
	mov     r1, #0x6a
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x78] @ 0x22625a4, (=0x232f)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x15
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x22625a4, (=0x232f)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x16
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x22625a4, (=0x232f)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x17
	bl      0x200ce54
	str     r4, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x2c] @ 0x22625a4, (=0x232f)
	mov     r2, r6
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r3, r5
	bl      0x200cdc4
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x226258c

.word 0x2328 @ 0x226258c
.word 0x232b @ 0x2262590
.word 0x232c @ 0x2262594
.word 0x232d @ 0x2262598
.word 0x232e @ 0x226259c
.word 0x232a @ 0x22625a0
.word 0x232f @ 0x22625a4
.thumb
Function_22625a8: @ 22625a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50
	mov     r6, r1
	ldr     r1, [r6, #0x14]
	str     r0, [sp, #0x8]
	ldr     r0, [r1, #0x8]
	mov     r4, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [r1, #0xc]
	str     r4, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	bgt     branch_22625c6
	b       branch_22626dc
@ 0x22625c6

.thumb
branch_22625c6: @ 22625c6 :thumb
	str     r6, [sp, #0xc]
	mov     r7, r4
	mov     r5, r6
.thumb
branch_22625cc: @ 22625cc :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, #0xff
	add     r1, #0xf4
	strh    r0, [r1, #0x0]
	ldr     r0, [r6, #0x0]
	cmp     r4, r0
	beq     branch_22626cc
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	add     r1, #0xf4
	strh    r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xf8] @ 0x22626e0, (=0x2328)
	mov     r2, #0x6
	str     r0, [sp, #0x4]
	ldr     r1, [r6, #0x4]
	add     r0, sp, #0x1c
	mul     r2, r1
	ldr     r1, [pc, #0xf0] @ 0x22626e4, (=0x2267a78)
	mov     r3, #0x2
	add     r1, r1, r2
	add     r2, r7, r1
	mov     r1, #0x5
	mvn     r1, r1
	ldsh    r1, [r2, r1]
	mov     r2, #0xf0
	bl      Function_2261cd8
	mov     r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	add     r2, sp, #0x1c
	bl      0x200ce6c
	str     r0, [r5, #0x1c]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc4] @ 0x22626e0, (=0x2328)
	mov     r2, #0x6
	str     r0, [sp, #0x4]
	ldr     r1, [r6, #0x4]
	add     r0, sp, #0x1c
	mul     r2, r1
	ldr     r1, [pc, #0xbc] @ 0x22626e4, (=0x2267a78)
	mov     r3, #0x2
	add     r1, r1, r2
	add     r2, r7, r1
	mov     r1, #0x5
	mvn     r1, r1
	ldsh    r1, [r2, r1]
	mov     r2, #0xf0
	bl      Function_2261cd8
	mov     r0, #0x2
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	add     r2, sp, #0x1c
	bl      0x200ce6c
	str     r0, [r5, #0x28]
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      Function_2264680
	mov     r1, r0
	ldr     r0, [r5, #0x28]
	bl      0x200d430
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x80] @ 0x22626e0, (=0x2328)
	mov     r2, #0x6
	str     r0, [sp, #0x4]
	ldr     r1, [r6, #0x4]
	add     r0, sp, #0x1c
	mul     r2, r1
	ldr     r1, [pc, #0x78] @ 0x22626e4, (=0x2267a78)
	mov     r3, #0x2
	add     r1, r1, r2
	add     r2, r7, r1
	mov     r1, #0x5
	mvn     r1, r1
	ldsh    r1, [r2, r1]
	mov     r2, #0xf0
	bl      Function_2261cd8
	mov     r0, #0x3
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	add     r2, sp, #0x1c
	bl      0x200ce6c
	str     r0, [r5, #0x34]
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      Function_2264680
	mov     r1, r0
	ldr     r0, [r5, #0x34]
	bl      0x200d430
	ldr     r0, [r5, #0x34]
	mov     r1, #0x5
	bl      0x200d364
	ldr     r0, [r5, #0x1c]
	bl      0x200d33c
	ldr     r0, [r5, #0x28]
	bl      0x200d33c
	ldr     r0, [r5, #0x34]
	bl      0x200d33c
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2261e58
	ldr     r0, [sp, #0x10]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x10]
.thumb
branch_22626cc: @ 22626cc :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0x4]
	cmp     r4, r0
	bge     branch_22626dc
	b       branch_22625cc
@ 0x22626dc

.thumb
branch_22626dc: @ 22626dc :thumb
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x22626e0

.word 0x2328 @ 0x22626e0
.word 0x2267a78 @ 0x22626e4
.thumb
Function_22626e8: @ 22626e8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x3c
	ldr     r0, [r0, #0x14]
	mov     r3, #0x1
	ldr     r4, [r0, #0x8]
	ldr     r5, [r0, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2262720, (=0x232b)
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	bl      Function_2261cd8
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, r5
	add     r2, sp, #0x8
	bl      0x200ce6c
	mov     r4, r0
	bl      0x200d33c
	mov     r0, r4
	add     sp, #0x3c
	pop     {r4,r5,pc}
@ 0x226271e


.align 2


.word 0x232b @ 0x2262720
.thumb
Function_2262724: @ 2262724 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	add     r7, sp, #0xc
	ldr     r6, [r0, #0x8]
	ldr     r4, [r0, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
.thumb
branch_2262736: @ 2262736 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xd8] @ 0x2262814, (=0x232a)
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r1
	mov     r3, #0x1
	bl      Function_2261cd8
	mov     r0, #0x2
	str     r0, [sp, #0x38]
	mov     r0, #0x14
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      0x200ce6c
	mov     r1, r5
	add     r1, #0xe8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d364
	mov     r0, r5
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      0x200d330
	mov     r0, r5
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	bl      0x200d430
	mov     r0, r5
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d810
	mov     r0, r5
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x74] @ 0x2262818, (=0x2328)
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r1
	mov     r3, #0x2
	bl      Function_2261cd8
	mov     r0, #0x2
	str     r0, [sp, #0x38]
	mov     r0, #0x14
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      0x200ce6c
	mov     r1, r5
	add     r1, #0xe0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	bl      0x200d364
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	bl      0x200d330
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d430
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d810
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
	ldr     r0, [sp, #0x8]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x2
	blt     branch_2262736
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x2262812


.align 2


.word 0x232a @ 0x2262814
.word 0x2328 @ 0x2262818
.thumb
Function_226281c: @ 226281c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2262822: @ 2262822 :thumb
	mov     r0, r5
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      0x200d0f4
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	bl      0x200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_2262822
	pop     {r3-r5,pc}
@ 0x2262840

.thumb
Function_2262840: @ 2262840 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x3c
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	mov     r1, #0x80
	ldr     r6, [r0, #0x8]
	ldr     r4, [r0, #0xc]
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x22628a8, (=0x232f)
	mov     r2, r1
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	mov     r3, #0x1
	bl      Function_2261cd8
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, r4
	add     r2, sp, #0x8
	bl      0x200ce6c
	mov     r1, r5
	add     r1, #0xf0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d364
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	bl      0x200d330
	add     r5, #0xf0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	bl      0x200d430
	add     sp, #0x3c
	pop     {r3-r6,pc}
@ 0x22628a6


.align 2


.word 0x232f @ 0x22628a8
.thumb
Function_22628ac: @ 22628ac :thumb
	ldr     r3, [pc, #0x4] @ 0x22628b4, (=0x200d0f5)
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x22628b4

.word 0x200d0f5 @ 0x22628b4
.thumb
Function_22628b8: @ 22628b8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r5, [r0, #0x58]
	ldr     r4, [r0, #0x48]
	ldr     r6, [r0, #0x5c]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x48
	mov     r2, r5
	mov     r3, #0x4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x4b
	mov     r2, r5
	mov     r3, #0x5
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x4a
	mov     r2, r5
	mov     r3, #0x4
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, r5
	mov     r3, #0x5
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x4d
	mov     r2, r5
	mov     r3, #0x6
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x4e
	mov     r2, r5
	mov     r3, #0x7
	bl      0x200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xa0
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0xa4
	mov     r2, #0x49
	mov     r3, #0x6a
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, r5
	mov     r3, #0x3
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, r5
	mov     r3, #0x1
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, r5
	mov     r3, #0x3
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x9
	mov     r2, r5
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6a
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, r5
	mov     r3, #0x2
	bl      0x200710c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0xa4
	mov     r2, #0x6
	mov     r3, #0x6a
	bl      0x2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0xe
	mov     r2, #0x7
	mov     r3, #0x6a
	bl      0x2003050
	bl      0x200daa0
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0x26
	mov     r3, #0x6a
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6a
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x7
	mov     r2, #0xb4
	mov     r3, #0xd
	bl      0x200daa4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2262a44

.thumb
Function_2262a44: @ 2262a44 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x6a
	mov     r1, #0x10
	bl      0x2018144
	mov     r3, r0
	mov     r2, #0x10
	mov     r1, #0x0
.thumb
branch_2262a58: @ 2262a58 :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2262a58
	mov     r1, #0x4b
	str     r5, [r0, #0x4]
	lsl     r1, r1, #4
	strh    r1, [r0, #0x8]
	str     r4, [r0, #0xc]
	pop     {r3-r5,pc}
@ 0x2262a6c

.thumb
Function_2262a6c: @ 2262a6c :thumb
	ldr     r3, [pc, #0x0] @ 0x2262a70, (=0x20181c5)
	bx      r3
@ 0x2262a70

.word 0x20181c5 @ 0x2262a70
.thumb
Function_2262a74: @ 2262a74 :thumb
	mov     r1, #0x8
	ldsh    r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strh    r2, [r0, #0x8]
	ldsh    r0, [r0, r1]
	cmp     r0, #0x0
	ble     branch_2262a86
	mov     r0, #0x1
	bx      lr
@ 0x2262a86

.thumb
branch_2262a86: @ 2262a86 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2262a8a


.align 2, 0


.thumb
Function_2262a8c: @ 2262a8c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	ldr     r1, [pc, #0x44] @ 0x2262ad8, (=0x2bbc)
	mov     r0, #0x6a
	mov     r7, r2
	bl      0x2018144
	ldr     r2, [pc, #0x38] @ 0x2262ad8, (=0x2bbc)
	mov     r4, r0
	mov     r1, #0x0
	blx     0x20d5124
	str     r5, [r4, #0x4]
	ldr     r3, [pc, #0x30] @ 0x2262adc, (=0x2bb8)
	str     r6, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	str     r7, [r4, #0x14]
	mov     r1, r3
	str     r0, [r4, r3]
	sub     r1, #0xcc
	ldr     r2, [r4, r1]
	ldr     r1, [pc, #0x20] @ 0x2262ae0, (=0x2228)
	str     r2, [r4, r1]
	mov     r2, r3
	sub     r2, #0xcc
	add     r2, r4, r2
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [r4, r1]
	sub     r3, #0x24
	str     r0, [r4, r3]
	mov     r0, r4
	bl      Function_2262ae4
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2262ad8

.word 0x2bbc @ 0x2262ad8
.word 0x2bb8 @ 0x2262adc
.word 0x2228 @ 0x2262ae0
.thumb
Function_2262ae4: @ 2262ae4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r2, [pc, #0x15c] @ 0x2262c48, (=0x1fc8)
	mov     r7, r0
	mov     r0, #0x0
	mov     r3, #0x19
	str     r0, [r7, r2]
	add     r1, r2, #0x4
	lsl     r3, r3, #14
	str     r3, [r7, r1]
	add     r2, #0x8
	mov     r3, #0x31
	ldr     r1, [pc, #0x14c] @ 0x2262c4c, (=0x51c)
	str     r0, [r7, r2]
	str     r0, [r7, r1]
	add     r2, r1, #0x4
	str     r0, [r7, r2]
	lsl     r3, r3, #4
	str     r0, [r7, r3]
	add     r2, r3, #0x4
	str     r0, [r7, r2]
	.hword  0x1f09 @ sub r1, r1, #0x4
	str     r0, [r7, r1]
	.hword  0x1f19 @ sub r1, r3, #0x4
	sub     r3, #0x6c
	str     r0, [r7, r1]
	add     r0, r7, r3
	bl      Function_2266fec
	mov     r0, #0xad
	lsl     r0, r0, #2
	add     r0, r7, r0
	bl      Function_2266fec
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r7, r0
	bl      Function_2266fec
	mov     r0, #0x13
	lsl     r0, r0, #6
	add     r0, r7, r0
	bl      Function_2266fec
	ldr     r0, [pc, #0x110] @ 0x2262c50, (=0xad4)
	add     r0, r7, r0
	bl      Function_2266fec
	ldr     r0, [pc, #0x10c] @ 0x2262c54, (=0xae4)
	add     r0, r7, r0
	bl      Function_2266fec
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0xce
	lsl     r0, r0, #4
	add     r6, r7, r0
	add     r0, #0x10
	add     r4, r7, r0
	mov     r0, #0xb5
	lsl     r0, r0, #4
	add     r5, r7, r0
.thumb
branch_2262b60: @ 2262b60 :thumb
	mov     r0, r6
	bl      Function_2266fec
	mov     r0, r4
	bl      Function_2266fec
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xe4] @ 0x2262c58, (=0x3f4ccccd)
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0x5
	bl      Function_226432c
	mov     r1, #0x0
	mov     r0, #0x4
	mvn     r0, r0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc8] @ 0x2262c58, (=0x3f4ccccd)
	mov     r2, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	.hword  0x1f4b @ sub r3, r1, #0x5
	bl      Function_226432c
	mov     r0, #0x83
	lsl     r0, r0, #2
	add     r6, r6, r0
	add     r4, r4, r0
	add     r5, r5, r0
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x8
	blt     branch_2262b60
	mov     r3, #0x5
	ldr     r0, [pc, #0xa4] @ 0x2262c5c, (=0x3ff0a3d7)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x4
	mvn     r3, r3
	mov     r1, #0x0
	ldr     r0, [pc, #0x88] @ 0x2262c5c, (=0x3ff0a3d7)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x5
	mov     r1, #0x0
	ldr     r0, [pc, #0x6c] @ 0x2262c58, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r7, r0
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x4
	mvn     r3, r3
	mov     r1, #0x0
	ldr     r0, [pc, #0x54] @ 0x2262c58, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r7, r0
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x5
	mov     r1, #0x0
	ldr     r0, [pc, #0x40] @ 0x2262c5c, (=0x3ff0a3d7)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x2262c60, (=0x944)
	mov     r2, r1
	add     r0, r7, r0
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x4
	mvn     r3, r3
	mov     r1, #0x0
	ldr     r0, [pc, #0x24] @ 0x2262c58, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2262c60, (=0x944)
	mov     r2, r1
	add     r0, r7, r0
	str     r1, [sp, #0x8]
	bl      Function_226432c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2262c48

.word 0x1fc8 @ 0x2262c48
.word 0x51c @ 0x2262c4c
.word 0xad4 @ 0x2262c50
.word 0xae4 @ 0x2262c54
.word 0x3f4ccccd @ 0x2262c58
.word 0x3ff0a3d7 @ 0x2262c5c
.word 0x944 @ 0x2262c60
.thumb
Function_2262c64: @ 2262c64 :thumb
	ldr     r3, [pc, #0x0] @ 0x2262c68, (=0x20181c5)
	bx      r3
@ 0x2262c68

.word 0x20181c5 @ 0x2262c68
.thumb
Function_2262c6c: @ 2262c6c :thumb
	ldr     r1, [pc, #0x10] @ 0x2262c80, (=0x1fcc)
	ldr     r0, [r0, r1]
	asr     r0, r0, #12
	cmp     r0, #0x2d
	bgt     branch_2262c7a
	mov     r0, #0x1
	bx      lr
@ 0x2262c7a

.thumb
branch_2262c7a: @ 2262c7a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2262c7e


.align 2


.word 0x1fcc @ 0x2262c80
.thumb
Function_2262c84: @ 2262c84 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x2c] @ 0x2262cb4, (=0x1fcc)
	ldr     r1, [r0, r1]
	asr     r1, r1, #12
	cmp     r1, #0x4b
	bge     branch_2262c9c
	cmp     r1, #0x3d
	ble     branch_2262c9c
	mov     r1, #0x1
	bl      Function_2261c48
	pop     {r3,pc}
@ 0x2262c9c

.thumb
branch_2262c9c: @ 2262c9c :thumb
	cmp     r1, #0x3c
	bge     branch_2262cac
	cmp     r1, #0x2e
	ble     branch_2262cac
	mov     r1, #0x2
	bl      Function_2261c48
	pop     {r3,pc}
@ 0x2262cac

.thumb
branch_2262cac: @ 2262cac :thumb
	mov     r1, #0x0
	bl      Function_2261c48
	pop     {r3,pc}
@ 0x2262cb4

.word 0x1fcc @ 0x2262cb4
.thumb
Function_2262cb8: @ 2262cb8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x6a
	mov     r1, #0x30
	bl      0x2018144
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r4, r0
	blx     0x20d5124
	mov     r1, r5
	add     r1, #0xf4
	lsl     r0, r6, #1
	ldrh    r2, [r1, r0]
	lsl     r2, r2, #2
	add     r2, r5, r2
	ldr     r2, [r2, #0x1c]
	str     r2, [r4, #0xc]
	ldrh    r0, [r1, r0]
	mov     r2, #0x1
	mov     r1, r4
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x28]
	lsl     r2, r2, #12
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x14]
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x2262d04, (=0x2263159)
	bl      0x200d9e8
	pop     {r4-r6,pc}
@ 0x2262d02


.align 2


.word 0x2263159 @ 0x2262d04
.thumb
Function_2262d08: @ 2262d08 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x4c] @ 0x2262d58, (=0x29d0)
	add     r3, r0, r2
	mov     r2, #0x44
	mul     r2, r1
	add     r3, r3, r2
	ldr     r2, [r3, #0x30]
	cmp     r2, #0x1
	beq     branch_2262d56
	ldr     r4, [pc, #0x40] @ 0x2262d5c, (=0x2bb4)
	ldr     r2, [r0, r4]
	sub     r4, #0xac
	str     r2, [r3, #0x40]
	mov     r2, #0x1
	add     r5, r0, r4
	lsl     r4, r1, #2
	str     r2, [r3, #0x30]
	add     r4, r5, r4
	str     r4, [r3, #0x2c]
	ldr     r4, [r4, #0x0]
	lsl     r1, r1, #1
	add     r1, r0, r1
	str     r4, [r3, #0x28]
	add     r1, #0xf4
	ldrh    r1, [r1, #0x0]
	lsl     r2, r2, #12
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldr     r1, [r1, #0x34]
	str     r1, [r3, #0xc]
	mov     r1, #0x0
	str     r1, [r3, #0x0]
	str     r1, [r3, #0x4]
	ldr     r0, [r0, #0x14]
	mov     r1, r3
	str     r0, [r3, #0x3c]
	ldr     r0, [pc, #0xc] @ 0x2262d60, (=0x226323d)
	bl      0x200d9e8
.thumb
branch_2262d56: @ 2262d56 :thumb
	pop     {r3-r5,pc}
@ 0x2262d58

.word 0x29d0 @ 0x2262d58
.word 0x2bb4 @ 0x2262d5c
.word 0x226323d @ 0x2262d60
.thumb
Function_2262d64: @ 2262d64 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x44] @ 0x2262dac, (=0x29d0)
	add     r3, r0, r2
	mov     r2, #0x44
	mul     r2, r1
	add     r1, r3, r2
	ldr     r2, [r1, #0x30]
	cmp     r2, #0x1
	beq     branch_2262da8
	ldr     r3, [pc, #0x38] @ 0x2262db0, (=0x2bb4)
	ldr     r2, [r0, r3]
	sub     r3, #0xc8
	str     r2, [r1, #0x40]
	mov     r2, #0x1
	str     r2, [r1, #0x30]
	add     r3, r0, r3
	str     r3, [r1, #0x2c]
	ldr     r3, [r3, #0x0]
	lsl     r2, r2, #12
	str     r3, [r1, #0x28]
	ldr     r3, [pc, #0x24] @ 0x2262db4, (=0x1bb0)
	add     r3, r0, r3
	str     r3, [r1, #0x34]
	ldr     r3, [pc, #0x24] @ 0x2262db8, (=0x1dbc)
	add     r3, r0, r3
	str     r3, [r1, #0x38]
	mov     r3, #0x0
	str     r3, [r1, #0x0]
	str     r3, [r1, #0x4]
	ldr     r0, [r0, #0x14]
	str     r0, [r1, #0x3c]
	ldr     r0, [pc, #0x18] @ 0x2262dbc, (=0x2263435)
	bl      0x200d9e8
.thumb
branch_2262da8: @ 2262da8 :thumb
	pop     {r3,pc}
@ 0x2262daa


.align 2


.word 0x29d0 @ 0x2262dac
.word 0x2bb4 @ 0x2262db0
.word 0x1bb0 @ 0x2262db4
.word 0x1dbc @ 0x2262db8
.word 0x2263435 @ 0x2262dbc
.thumb
Function_2262dc0: @ 2262dc0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6a
	mov     r1, #0x7c
	bl      0x2018144
	mov     r1, #0x0
	mov     r2, #0x7c
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r1, r5, r0
	str     r1, [r4, #0xc]
	mov     r1, #0x32
	lsl     r1, r1, #4
	add     r1, r5, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, r4
	str     r1, [r4, #0x10]
	add     r0, r5, r0
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x50] @ 0x2262e40, (=0x1fc8)
	add     r2, #0x20
	add     r3, r5, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, #0x0
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0x44] @ 0x2262e44, (=0x2bb4)
	ldr     r0, [r5, r0]
	str     r0, [r4, #0x74]
	ldr     r0, [r5, #0x14]
	str     r0, [r4, #0x78]
	mov     r0, r5
	bl      Function_2261c48
	mov     r0, #0xea
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x2017240
	ldr     r0, [pc, #0x2c] @ 0x2262e48, (=0x5b4)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x2017240
	mov     r0, #0x1f
	lsl     r0, r0, #6
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x2017240
	mov     r2, #0x1
	ldr     r0, [pc, #0x18] @ 0x2262e4c, (=0x2262e51)
	mov     r1, r4
	lsl     r2, r2, #12
	bl      0x200d9e8
	pop     {r3-r5,pc}
@ 0x2262e3e


.align 2


.word 0x1fc8 @ 0x2262e40
.word 0x2bb4 @ 0x2262e44
.word 0x5b4 @ 0x2262e48
.word 0x2262e51 @ 0x2262e4c
.thumb
Function_2262e50: @ 2262e50 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x28]
	lsl     r0, r0, #4
	asr     r5, r0, #16
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2262e70
	ldr     r0, [r4, #0x78]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2262e80
.thumb
branch_2262e70: @ 2262e70 :thumb
	mov     r0, r6
	bl      0x200da58
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2262e80

.thumb
branch_2262e80: @ 2262e80 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x3
	bls     branch_2262e88
	b       branch_22630e0
@ 0x2262e88

.thumb
branch_2262e88: @ 2262e88 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2262e94

Jumppoints_2262e94:
.hword branch_2262e9c - Jumppoints_2262e94 - 2
.hword branch_2262f4e - Jumppoints_2262e94 - 2
.hword branch_226306a - Jumppoints_2262e94 - 2
.hword branch_22630ac - Jumppoints_2262e94 - 2
.thumb
branch_2262e9c: @ 2262e9c :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_2262ef0
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x3
	mov     r0, r4
	lsl     r2, r2, #14
	add     r0, #0x44
	add     r2, r1, r2
	mov     r3, #0x4
	bl      Function_2264764
	cmp     r5, #0x0
	ldr     r1, [r4, #0x10]
	ble     branch_2262ed8
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x5c
	add     r2, r1, r2
	mov     r3, #0x4
	bl      Function_2264764
	b       branch_2262f3a
@ 0x2262ed8

.thumb
branch_2262ed8: @ 2262ed8 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x5c
	sub     r2, r1, r2
	mov     r3, #0x4
	bl      Function_2264764
	b       branch_2262f3a
@ 0x2262ef0

.thumb
branch_2262ef0: @ 2262ef0 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x3
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x44
	add     r2, r1, r2
	mov     r3, #0x8
	bl      Function_2264764
	cmp     r5, #0x0
	ldr     r1, [r4, #0x10]
	ble     branch_2262f24
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x5c
	sub     r2, r1, r2
	mov     r3, #0x8
	bl      Function_2264764
	b       branch_2262f3a
@ 0x2262f24

.thumb
branch_2262f24: @ 2262f24 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x5c
	add     r2, r1, r2
	mov     r3, #0x4
	bl      Function_2264764
.thumb
branch_2262f3a: @ 2262f3a :thumb
	ldr     r0, [pc, #0x204] @ 0x2263140, (=0x60b)
	bl      0x2005748
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x2262f4e

.thumb
branch_2262f4e: @ 2262f4e :thumb
	mov     r0, r4
	add     r0, #0x44
	bl      Function_2264774
	mov     r7, r0
	mov     r0, r4
	add     r0, #0x5c
	bl      Function_2264774
	mov     r6, r0
	mov     r0, #0x79
	ldr     r2, [r4, #0x44]
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	add     r1, r0, #0x4
	ldr     r3, [r4, #0x5c]
	ldr     r2, [r4, #0x10]
	cmp     r7, #0x0
	str     r3, [r2, r1]
	beq     branch_2262f7c
	cmp     r6, #0x0
	bne     branch_2262f7e
.thumb
branch_2262f7c: @ 2262f7c :thumb
	b       branch_226313c
@ 0x2262f7e

.thumb
branch_2262f7e: @ 2262f7e :thumb
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_2263018
	ldr     r1, [r4, #0xc]
	mov     r2, #0x1
	str     r2, [r1, #0x0]
	ldr     r1, [r4, #0x10]
	sub     r0, #0x54
	add     r0, r1, r0
	bl      Function_2266fec
	mov     r0, #0x1a
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_2266fec
	mov     r3, #0x5
	mov     r1, #0x0
	ldr     r0, [pc, #0x19c] @ 0x2263144, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	bl      Function_226432c
	mov     r3, #0x4
	mvn     r3, r3
	mov     r1, #0x0
	ldr     r0, [pc, #0x188] @ 0x2263144, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	bl      Function_226432c
	mov     r0, #0x79
	mov     r2, #0x3
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x44
	sub     r2, r1, r2
	mov     r3, #0x8
	bl      Function_2264764
	cmp     r5, #0x0
	ldr     r1, [r4, #0x10]
	ble     branch_2263000
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x5c
	add     r2, r1, r2
	mov     r3, #0x8
	bl      Function_2264764
	b       branch_2263060
@ 0x2263000

.thumb
branch_2263000: @ 2263000 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x5c
	sub     r2, r1, r2
	mov     r3, #0x8
	bl      Function_2264764
	b       branch_2263060
@ 0x2263018

.thumb
branch_2263018: @ 2263018 :thumb
	ldr     r1, [r4, #0x10]
	mov     r2, #0x3
	ldr     r1, [r1, r0]
	mov     r0, r4
	lsl     r2, r2, #14
	add     r0, #0x44
	sub     r2, r1, r2
	mov     r3, #0x4
	bl      Function_2264764
	cmp     r5, #0x0
	ldr     r1, [r4, #0x10]
	ble     branch_226304a
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x5c
	sub     r2, r1, r2
	mov     r3, #0x4
	bl      Function_2264764
	b       branch_2263060
@ 0x226304a

.thumb
branch_226304a: @ 226304a :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #16
	add     r0, #0x5c
	add     r2, r1, r2
	mov     r3, #0x4
	bl      Function_2264764
.thumb
branch_2263060: @ 2263060 :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x226306a

.thumb
branch_226306a: @ 226306a :thumb
	mov     r0, r4
	add     r0, #0x44
	bl      Function_2264774
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x5c
	bl      Function_2264774
	mov     r1, #0x79
	ldr     r3, [r4, #0x44]
	ldr     r2, [r4, #0x10]
	lsl     r1, r1, #2
	str     r3, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r3, [r4, #0x5c]
	ldr     r2, [r4, #0x10]
	cmp     r5, #0x0
	str     r3, [r2, r1]
	beq     branch_226313c
	cmp     r0, #0x0
	beq     branch_226313c
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_22630a2
	ldr     r0, [pc, #0xa8] @ 0x2263148, (=0x631)
	bl      0x2005748
.thumb
branch_22630a2: @ 22630a2 :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x22630ac

.thumb
branch_22630ac: @ 22630ac :thumb
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_22630d8
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x8
	bne     branch_22630be
	ldr     r0, [pc, #0x90] @ 0x226314c, (=0x575)
	bl      0x2005748
.thumb
branch_22630be: @ 22630be :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x28
	blt     branch_226313c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x22630d8

.thumb
branch_22630d8: @ 22630d8 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     sp, #0xc
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x22630e0

.thumb
branch_22630e0: @ 22630e0 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x8]
	bne     branch_226310a
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x2d
	blt     branch_226313c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x48] @ 0x2263140, (=0x60b)
	bl      0x2005748
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r7,pc}
@ 0x226310a

.thumb
branch_226310a: @ 226310a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0xa
	blt     branch_226313c
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	beq     branch_226311c
	ldr     r2, [pc, #0x34] @ 0x2263150, (=0xffff8000)
	b       branch_226311e
@ 0x226311c

.thumb
branch_226311c: @ 226311c :thumb
	ldr     r2, [pc, #0x34] @ 0x2263154, (=0xfffec000)
.thumb
branch_226311e: @ 226311e :thumb
	mov     r0, #0x79
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	mov     r0, #0x7a
	ldr     r1, [r4, #0x10]
	mov     r2, #0x0
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	mov     r0, r6
	bl      0x200da58
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_226313c: @ 226313c :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2263140

.word 0x60b @ 0x2263140
.word 0x3f4ccccd @ 0x2263144
.word 0x631 @ 0x2263148
.word 0x575 @ 0x226314c
.word 0xffff8000 @ 0x2263150
.word 0xfffec000 @ 0x2263154
.thumb
Function_2263158: @ 2263158 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	bl      0x200d3e0
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2263178
	ldr     r0, [r4, #0x2c]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2263188
.thumb
branch_2263178: @ 2263178 :thumb
	mov     r0, r5
	bl      0x200da58
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2263188

.thumb
branch_2263188: @ 2263188 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2263194
	cmp     r0, #0x1
	beq     branch_22631d8
	b       branch_2263204
@ 0x2263194

.thumb
branch_2263194: @ 2263194 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      0x200d638
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_22631bc
	mov     r2, #0x2
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	lsl     r2, r2, #16
	add     r0, #0x14
	add     r2, r1, r2
	mov     r3, #0x10
	bl      Function_2264764
	b       branch_22631ce
@ 0x22631bc

.thumb
branch_22631bc: @ 22631bc :thumb
	mov     r2, #0x2
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	lsl     r2, r2, #16
	add     r0, #0x14
	sub     r2, r1, r2
	mov     r3, #0x4
	bl      Function_2264764
.thumb
branch_22631ce: @ 22631ce :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x22631d8

.thumb
branch_22631d8: @ 22631d8 :thumb
	mov     r0, r4
	add     r0, #0x14
	bl      Function_2264774
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      0x200d638
	ldr     r0, [r4, #0xc]
	ldr     r1, [sp, #0x4]
	ldr     r2, [r4, #0x14]
	bl      0x200d614
	cmp     r5, #0x0
	beq     branch_2263236
	ldr     r0, [r4, #0x0]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2263204

.thumb
branch_2263204: @ 2263204 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x8]
	bne     branch_2263222
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x23
	blt     branch_2263236
	ldr     r0, [r4, #0x4]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2263222

.thumb
branch_2263222: @ 2263222 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0xa
	blt     branch_2263236
	mov     r0, r5
	bl      0x200da58
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_2263236: @ 2263236 :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x226323a


.align 2, 0


.thumb
Function_226323c: @ 226323c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2263256
	ldr     r0, [r4, #0x3c]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2263264
.thumb
branch_2263256: @ 2263256 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	mov     r0, r5
	bl      0x200da58
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2263264

.thumb
branch_2263264: @ 2263264 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x5
	bls     branch_226326c
	b       branch_22633f6
@ 0x226326c

.thumb
branch_226326c: @ 226326c :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2263278

Jumppoints_2263278:
.hword branch_2263284 - Jumppoints_2263278 - 2
.hword branch_22632f8 - Jumppoints_2263278 - 2
.hword branch_226332a - Jumppoints_2263278 - 2
.hword branch_2263340 - Jumppoints_2263278 - 2
.hword branch_2263370 - Jumppoints_2263278 - 2
.hword branch_22633c0 - Jumppoints_2263278 - 2
.thumb
branch_2263284: @ 2263284 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7
	bl      0x200d364
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x200d474
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x200d6a4
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      0x200d788
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x178] @ 0x2263428, (=0x45800000)
	bls     branch_22632c4
	ldr     r1, [sp, #0x0]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22632d2
@ 0x22632c4

.thumb
branch_22632c4: @ 22632c4 :thumb
	ldr     r1, [sp, #0x0]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22632d2: @ 22632d2 :thumb
	blx     0x20e1740
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x2
	add     r0, #0x10
	lsl     r2, r2, #12
	mov     r3, #0x2
	bl      Function_2264764
	ldr     r1, [r4, #0x2c]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r1, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      0x200d430
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22632f8: @ 22632f8 :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2264774
	mov     r5, r0
	ldr     r0, [r4, #0x10]
	blx     0x20e17b4
	ldr     r1, [pc, #0x11c] @ 0x2263428, (=0x45800000)
	blx     _fdiv
	mov     r2, r0
	mov     r1, #0xfe
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #22
	bl      0x200d6e8
	cmp     r5, #0x0
	bne     branch_2263320
	b       branch_2263424
@ 0x2263320

.thumb
branch_2263320: @ 2263320 :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x226332a

.thumb
branch_226332a: @ 226332a :thumb
	mov     r0, r4
	mov     r1, #0x2
	ldr     r2, [pc, #0xfc] @ 0x226342c, (=0x666)
	add     r0, #0x10
	lsl     r1, r1, #12
	mov     r3, #0x4
	bl      Function_2264764
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2263340: @ 2263340 :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2264774
	mov     r5, r0
	ldr     r0, [r4, #0x10]
	blx     0x20e17b4
	ldr     r1, [pc, #0xd4] @ 0x2263428, (=0x45800000)
	blx     _fdiv
	mov     r2, r0
	mov     r1, #0xfe
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #22
	bl      0x200d6e8
	cmp     r5, #0x0
	beq     branch_2263424
	ldr     r0, [r4, #0x0]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2263370

.thumb
branch_2263370: @ 2263370 :thumb
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x28]
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_2263380
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_22633aa
@ 0x2263380

.thumb
branch_2263380: @ 2263380 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2263396
	mov     r0, r4
	ldr     r1, [pc, #0xa0] @ 0x226342c, (=0x666)
	ldr     r2, [pc, #0xa4] @ 0x2263430, (=0xccd)
	add     r0, #0x10
	mov     r3, #0x2
	bl      Function_2264764
	b       branch_22633a4
@ 0x2263396

.thumb
branch_2263396: @ 2263396 :thumb
	ldr     r1, [pc, #0x98] @ 0x2263430, (=0xccd)
	mov     r0, r4
	add     r0, #0x10
	lsr     r2, r1, #1
	mov     r3, #0x4
	bl      Function_2264764
.thumb
branch_22633a4: @ 22633a4 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22633aa: @ 22633aa :thumb
	ldr     r0, [r4, #0x2c]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x2c]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2263424
	mov     r0, #0xff
	add     sp, #0x8
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x22633c0

.thumb
branch_22633c0: @ 22633c0 :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_2264774
	mov     r5, r0
	ldr     r0, [r4, #0x10]
	blx     0x20e17b4
	ldr     r1, [pc, #0x54] @ 0x2263428, (=0x45800000)
	blx     _fdiv
	mov     r2, r0
	mov     r1, #0xfe
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #22
	bl      0x200d6e8
	cmp     r5, #0x0
	beq     branch_2263424
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	mov     r0, #0x1
	eor     r0, r1
	add     sp, #0x8
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x22633f6

.thumb
branch_22633f6: @ 22633f6 :thumb
	mov     r1, #0xfe
	lsl     r1, r1, #22
	ldr     r0, [r4, #0xc]
	mov     r2, r1
	bl      0x200d6e8
	ldr     r0, [r4, #0xc]
	mov     r1, #0x5
	bl      0x200d364
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x200d474
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x200d6a4
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	mov     r0, r5
	bl      0x200da58
.thumb
branch_2263424: @ 2263424 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2263428

.word 0x45800000 @ 0x2263428
.word 0x666 @ 0x226342c
.word 0xccd @ 0x2263430
.thumb
Function_2263434: @ 2263434 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r7, r0
	ldr     r6, [r4, #0x34]
	ldr     r5, [r4, #0x38]
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2263454
	ldr     r2, [r4, #0x3c]
	mov     r0, r2
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_226349e
.thumb
branch_2263454: @ 2263454 :thumb
	mov     r0, r6
	bl      Function_226192c
	mov     r0, r5
	bl      Function_226192c
	ldr     r1, [r4, #0x3c]
	mov     r0, r6
	add     r0, #0x88
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	add     r6, #0x9c
	mov     r0, r6
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	mov     r0, r5
	add     r0, #0x88
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	add     r5, #0x9c
	mov     r0, r5
	add     r1, #0x24
	bl      0x20171a0
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	mov     r0, r7
	bl      0x200da58
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226349e

.thumb
branch_226349e: @ 226349e :thumb
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r0, #0x0]
	.hword  0x1e4b @ sub r3, r1, #0x1
	bmi     branch_22634aa
	cmp     r3, #0x4
	ble     branch_22634ac
.thumb
branch_22634aa: @ 22634aa :thumb
	mov     r3, #0x0
.thumb
branch_22634ac: @ 22634ac :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x5
	bls     branch_22634b4
	b       branch_2263722
@ 0x22634b4

.thumb
branch_22634b4: @ 22634b4 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22634c0

Jumppoints_22634c0:
.hword branch_22634cc - Jumppoints_22634c0 - 2
.hword branch_22634ec - Jumppoints_22634c0 - 2
.hword branch_22635a0 - Jumppoints_22634c0 - 2
.hword branch_22635c0 - Jumppoints_22634c0 - 2
.hword branch_226369c - Jumppoints_22634c0 - 2
.hword branch_22636c8 - Jumppoints_22634c0 - 2
.thumb
branch_22634cc: @ 22634cc :thumb
	ldr     r1, [r2, #0x0]
	ldr     r2, [pc, #0x29c] @ 0x226376c, (=0x2267bd4)
	lsl     r3, r3, #3
	ldr     r2, [r2, r3]
	mov     r0, r6
	bl      Function_22618a8
	ldr     r1, [r4, #0x40]
	mov     r0, r6
	bl      Function_22618b4
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x22634ec

.thumb
branch_22634ec: @ 22634ec :thumb
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r2
	add     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, r6
	ldr     r2, [r2, #0x0]
	add     r0, #0x88
	add     r1, #0x78
	mov     r3, #0x27
	bl      0x2017164
	mov     r1, r6
	ldr     r2, [r4, #0x3c]
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r2
	add     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r2, [r2, #0x0]
	add     r0, #0x9c
	add     r1, #0x78
	mov     r3, #0x28
	bl      0x2017164
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x88
	bl      0x201727c
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x9c
	bl      0x201727c
	mov     r0, r6
	add     r0, #0x88
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, r6
	add     r0, #0x9c
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, r6
	mov     r1, #0x0
	bl      0x2017348
	mov     r0, #0x7b
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	sub     r0, #0x5c
	add     r0, r6, r0
	bl      Function_2266fec
	mov     r0, #0x1a
	lsl     r0, r0, #4
	add     r0, r6, r0
	bl      Function_2266fec
	mov     r3, #0x5
	mov     r1, #0x0
	ldr     r0, [pc, #0x1fc] @ 0x2263770, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x4
	mvn     r3, r3
	mov     r1, #0x0
	ldr     r0, [pc, #0x1e8] @ 0x2263770, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r6
	mov     r2, r1
	bl      Function_226432c
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x22635a0

.thumb
branch_22635a0: @ 22635a0 :thumb
	ldr     r1, [r2, #0x0]
	ldr     r2, [pc, #0x1d0] @ 0x2263774, (=0x2267bd8)
	lsl     r3, r3, #3
	ldr     r2, [r2, r3]
	mov     r0, r5
	bl      Function_22618a8
	ldr     r1, [r4, #0x40]
	mov     r0, r5
	bl      Function_22618b4
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x22635c0

.thumb
branch_22635c0: @ 22635c0 :thumb
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r2
	add     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	ldr     r2, [r2, #0x0]
	add     r0, #0x88
	add     r1, #0x78
	mov     r3, #0x29
	bl      0x2017164
	mov     r1, r5
	ldr     r2, [r4, #0x3c]
	mov     r0, #0x6a
	str     r0, [sp, #0x0]
	mov     r0, r2
	add     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, r5
	ldr     r2, [r2, #0x0]
	add     r0, #0x9c
	add     r1, #0x78
	mov     r3, #0x2a
	bl      0x2017164
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x88
	bl      0x201727c
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x9c
	bl      0x201727c
	mov     r0, r5
	add     r0, #0x88
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, r5
	add     r0, #0x9c
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2017348
	mov     r0, #0x7b
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	sub     r0, #0x5c
	add     r0, r5, r0
	bl      Function_2266fec
	mov     r0, #0x1a
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_2266fec
	mov     r3, #0x5
	mov     r1, #0x0
	ldr     r0, [pc, #0x128] @ 0x2263770, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r1
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r3, #0x4
	mvn     r3, r3
	mov     r1, #0x0
	ldr     r0, [pc, #0x114] @ 0x2263770, (=0x3f4ccccd)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r5
	mov     r2, r1
	bl      Function_226432c
	ldr     r0, [r4, #0x40]
	cmp     r0, #0x0
	beq     branch_2263692
	mov     r1, #0x0
	ldr     r2, [pc, #0x104] @ 0x2263778, (=0xffff8000)
	mov     r0, r6
	mov     r3, r1
	bl      0x2017350
	mov     r1, #0x0
	ldr     r2, [pc, #0xf8] @ 0x2263778, (=0xffff8000)
	mov     r0, r5
	mov     r3, r1
	bl      0x2017350
	mov     r0, #0x79
	ldr     r1, [pc, #0xec] @ 0x2263778, (=0xffff8000)
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	str     r1, [r5, r0]
.thumb
branch_2263692: @ 2263692 :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x226369c

.thumb
branch_226369c: @ 226369c :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2263768
	mov     r0, r6
	mov     r1, #0x1
	bl      0x2017348
	mov     r0, r5
	mov     r1, #0x0
	bl      0x2017348
	mov     r0, #0x7b
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	ldr     r0, [r4, #0x0]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r7,pc}
@ 0x22636c8

.thumb
branch_22636c8: @ 22636c8 :thumb
	cmp     r1, #0x0
	bne     branch_22636d2
	mov     r0, #0xff
	str     r0, [r4, #0x0]
	b       branch_2263718
@ 0x22636d2

.thumb
branch_22636d2: @ 22636d2 :thumb
	ldr     r0, [r4, #0x28]
	cmp     r0, r1
	beq     branch_2263718
	mov     r0, r6
	bl      Function_226192c
	mov     r0, r5
	bl      Function_226192c
	ldr     r1, [r4, #0x3c]
	mov     r0, r6
	add     r0, #0x88
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	add     r6, #0x9c
	mov     r0, r6
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	mov     r0, r5
	add     r0, #0x88
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	add     r5, #0x9c
	mov     r0, r5
	add     r1, #0x24
	bl      0x20171a0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_2263718: @ 2263718 :thumb
	ldr     r0, [r4, #0x2c]
	add     sp, #0xc
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x28]
	pop     {r4-r7,pc}
@ 0x2263722

.thumb
branch_2263722: @ 2263722 :thumb
	mov     r0, r6
	bl      Function_226192c
	mov     r0, r5
	bl      Function_226192c
	ldr     r1, [r4, #0x3c]
	mov     r0, r6
	add     r0, #0x88
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	add     r6, #0x9c
	mov     r0, r6
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	mov     r0, r5
	add     r0, #0x88
	add     r1, #0x24
	bl      0x20171a0
	ldr     r1, [r4, #0x3c]
	add     r5, #0x9c
	mov     r0, r5
	add     r1, #0x24
	bl      0x20171a0
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	mov     r0, r7
	bl      0x200da58
.thumb
branch_2263768: @ 2263768 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226376c

.word 0x2267bd4 @ 0x226376c
.word 0x3f4ccccd @ 0x2263770
.word 0x2267bd8 @ 0x2263774
.word 0xffff8000 @ 0x2263778
.thumb
Function_226377c: @ 226377c :thumb
	push    {r3,r4}
	add     sp, #-0x8
	ldr     r3, [pc, #0x28] @ 0x22637ac, (=0x2267b38)
	add     r2, sp, #0x0
	ldrh    r4, [r3, #0x10]
	add     r1, sp, #0x0
	strh    r4, [r2, #0x0]
	ldrh    r4, [r3, #0x12]
	strh    r4, [r2, #0x2]
	ldrh    r4, [r3, #0x14]
	ldrh    r3, [r3, #0x16]
	strh    r4, [r2, #0x4]
	strh    r3, [r2, #0x6]
	ldr     r3, [pc, #0x18] @ 0x22637b0, (=0x2af0)
	.hword  0x1f1a @ sub r2, r3, #0x4
	ldr     r2, [r0, r2]
	ldr     r4, [r0, r3]
	lsl     r2, r2, #1
	ldrh    r1, [r1, r2]
	add     r1, r4, r1
	str     r1, [r0, r3]
	add     sp, #0x8
	pop     {r3,r4}
	bx      lr
@ 0x22637ac

.word 0x2267b38 @ 0x22637ac
.word 0x2af0 @ 0x22637b0
.thumb
Function_22637b4: @ 22637b4 :thumb
	push    {r3,r4}
	add     sp, #-0x8
	ldr     r3, [pc, #0x2c] @ 0x22637e8, (=0x2267b38)
	add     r1, sp, #0x0
	ldrh    r4, [r3, #0x18]
	add     r2, sp, #0x0
	strh    r4, [r1, #0x0]
	ldrh    r4, [r3, #0x1a]
	strh    r4, [r1, #0x2]
	ldrh    r4, [r3, #0x1c]
	ldrh    r3, [r3, #0x1e]
	strh    r4, [r1, #0x4]
	ldr     r4, [pc, #0x1c] @ 0x22637ec, (=0x2af0)
	strh    r3, [r1, #0x6]
	.hword  0x1f23 @ sub r3, r4, #0x4
	ldr     r3, [r0, r3]
	ldr     r1, [r0, r4]
	.hword  0x1e5b @ sub r3, r3, #0x1
	lsl     r3, r3, #1
	ldrh    r2, [r2, r3]
	add     r1, r1, r2
	str     r1, [r0, r4]
	add     sp, #0x8
	pop     {r3,r4}
	bx      lr
@ 0x22637e6


.align 2


.word 0x2267b38 @ 0x22637e8
.word 0x2af0 @ 0x22637ec
.thumb
Function_22637f0: @ 22637f0 :thumb
	ldr     r2, [pc, #0x68] @ 0x226385c, (=0x2b18)
	ldr     r1, [pc, #0x6c] @ 0x2263860, (=0x10d)
	ldr     r3, [r0, r2]
	cmp     r3, r1
	bgt     branch_226380a
	bge     branch_226382a
	cmp     r3, #0x0
	bgt     branch_2263804
	beq     branch_226384a
	b       branch_2263850
@ 0x2263804

.thumb
branch_2263804: @ 2263804 :thumb
	cmp     r3, #0x77
	beq     branch_2263822
	b       branch_2263850
@ 0x226380a

.thumb
branch_226380a: @ 226380a :thumb
	ldr     r1, [pc, #0x58] @ 0x2263864, (=0x239)
	cmp     r3, r1
	bgt     branch_226381a
	bge     branch_226383a
	sub     r1, #0x96
	cmp     r3, r1
	beq     branch_2263832
	b       branch_2263850
@ 0x226381a

.thumb
branch_226381a: @ 226381a :thumb
	add     r1, #0x96
	cmp     r3, r1
	beq     branch_2263842
	b       branch_2263850
@ 0x2263822

.thumb
branch_2263822: @ 2263822 :thumb
	mov     r1, #0x1
	sub     r2, #0x30
	str     r1, [r0, r2]
	b       branch_2263850
@ 0x226382a

.thumb
branch_226382a: @ 226382a :thumb
	mov     r1, #0x2
	sub     r2, #0x30
	str     r1, [r0, r2]
	b       branch_2263850
@ 0x2263832

.thumb
branch_2263832: @ 2263832 :thumb
	mov     r1, #0x3
	sub     r2, #0x30
	str     r1, [r0, r2]
	b       branch_2263850
@ 0x226383a

.thumb
branch_226383a: @ 226383a :thumb
	mov     r1, #0x4
	sub     r2, #0x30
	str     r1, [r0, r2]
	b       branch_2263850
@ 0x2263842

.thumb
branch_2263842: @ 2263842 :thumb
	mov     r1, #0x5
	sub     r2, #0x30
	str     r1, [r0, r2]
	b       branch_2263850
@ 0x226384a

.thumb
branch_226384a: @ 226384a :thumb
	mov     r1, #0x0
	sub     r2, #0x30
	str     r1, [r0, r2]
.thumb
branch_2263850: @ 2263850 :thumb
	ldr     r2, [pc, #0x8] @ 0x226385c, (=0x2b18)
	ldr     r3, [pc, #0x14] @ 0x2263868, (=0x226386d)
	ldr     r1, [r0, r2]
	sub     r2, #0x2c
	add     r2, r0, r2
	bx      r3
@ 0x226385c

.word 0x2b18 @ 0x226385c
.word 0x10d @ 0x2263860
.word 0x239 @ 0x2263864
.word Function_226386c+1 @ =0x226386d, 0x2263868
.thumb
Function_226386c: @ 226386c :thumb
	ldr     r0, [pc, #0x4c] @ 0x22638bc, (=0x257)
	cmp     r1, r0
	bgt     branch_2263884
	bge     branch_226389c
	cmp     r1, #0x0
	bgt     branch_226387c
	beq     branch_22638b4
	b       branch_22638b8
@ 0x226387c

.thumb
branch_226387c: @ 226387c :thumb
	lsr     r0, r0, #1
	cmp     r1, r0
	beq     branch_2263896
	b       branch_22638b8
@ 0x2263884

.thumb
branch_2263884: @ 2263884 :thumb
	ldr     r0, [pc, #0x38] @ 0x22638c0, (=0x383)
	cmp     r1, r0
	bgt     branch_226388e
	beq     branch_22638a4
	b       branch_22638b8
@ 0x226388e

.thumb
branch_226388e: @ 226388e :thumb
	ldr     r0, [pc, #0x34] @ 0x22638c4, (=0x4af)
	cmp     r1, r0
	beq     branch_22638ac
	b       branch_22638b8
@ 0x2263896

.thumb
branch_2263896: @ 2263896 :thumb
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	bx      lr
@ 0x226389c

.thumb
branch_226389c: @ 226389c :thumb
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x22638a4

.thumb
branch_22638a4: @ 22638a4 :thumb
	mov     r0, #0x3
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x22638ac

.thumb
branch_22638ac: @ 22638ac :thumb
	mov     r0, #0x4
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x22638b4

.thumb
branch_22638b4: @ 22638b4 :thumb
	mov     r0, #0x0
	str     r0, [r2, #0x0]
.thumb
branch_22638b8: @ 22638b8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22638bc

.word 0x257 @ 0x22638bc
.word 0x383 @ 0x22638c0
.word 0x4af @ 0x22638c4
.thumb
Function_22638c8: @ 22638c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_22639a4
	ldr     r0, [pc, #0xcc] @ 0x22639a8, (=0x2b08)
	mov     r7, r5
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	mov     r6, r5
.thumb
branch_22638e2: @ 22638e2 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r4, r0
	beq     branch_2263992
	ldr     r0, [pc, #0xc0] @ 0x22639ac, (=0x2b9c)
	ldr     r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_22638fa
	cmp     r0, #0x1
	beq     branch_226393a
	cmp     r0, #0x2
	beq     branch_226397a
	b       branch_2263992
@ 0x22638fa

.thumb
branch_22638fa: @ 22638fa :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2261ea4
	cmp     r0, #0x1
	beq     branch_2263910
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2261e58
.thumb
branch_2263910: @ 2263910 :thumb
	mov     r1, #0x2b
	lsl     r1, r1, #8
	ldsh    r1, [r6, r1]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	bl      Function_226386c
	cmp     r0, #0x0
	beq     branch_226392a
	mov     r0, r5
	mov     r1, r4
	bl      Function_2262d08
.thumb
branch_226392a: @ 226392a :thumb
	mov     r0, #0x2b
	lsl     r0, r0, #8
	ldsh    r0, [r6, r0]
	add     r1, r0, #0x1
	mov     r0, #0x2b
	lsl     r0, r0, #8
	strh    r1, [r6, r0]
	b       branch_2263992
@ 0x226393a

.thumb
branch_226393a: @ 226393a :thumb
	ldr     r0, [pc, #0x74] @ 0x22639b0, (=0x2afe)
	mov     r1, #0x0
	strh    r1, [r5, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r6, r0]
	ldr     r0, [pc, #0x60] @ 0x22639a8, (=0x2b08)
	str     r1, [r7, r0]
	ldr     r0, [pc, #0x68] @ 0x22639b4, (=0x21a4)
	str     r1, [r5, r0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2261ea4
	cmp     r0, #0x3
	beq     branch_2263992
	ldr     r0, [pc, #0x5c] @ 0x22639b8, (=0x2bb8)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2263992
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_2261e58
	mov     r0, r5
	mov     r1, r4
	bl      Function_2262cb8
	ldr     r0, [pc, #0x44] @ 0x22639b8, (=0x2bb8)
	mov     r1, #0x1
	str     r1, [r5, r0]
	b       branch_2263992
@ 0x226397a

.thumb
branch_226397a: @ 226397a :thumb
	ldr     r0, [pc, #0x3c] @ 0x22639b8, (=0x2bb8)
	mov     r1, #0x0
	str     r1, [r5, r0]
	sub     r0, #0xba
	strh    r1, [r5, r0]
	mov     r0, #0x2b
	lsl     r0, r0, #8
	strh    r1, [r6, r0]
	add     r0, #0x8
	str     r1, [r7, r0]
	ldr     r0, [pc, #0x1c] @ 0x22639ac, (=0x2b9c)
	str     r1, [r7, r0]
.thumb
branch_2263992: @ 2263992 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, r0
	blt     branch_22638e2
.thumb
branch_22639a4: @ 22639a4 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22639a8

.word 0x2b08 @ 0x22639a8
.word 0x2b9c @ 0x22639ac
.word 0x2afe @ 0x22639b0
.word 0x21a4 @ 0x22639b4
.word 0x2bb8 @ 0x22639b8
.thumb
Function_22639bc: @ 22639bc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r1, [pc, #0x15c] @ 0x2263b20, (=0x2b9c)
	ldr     r2, [r4, #0x0]
	add     r3, r4, r1
	lsl     r2, r2, #2
	ldr     r5, [r3, r2]
	cmp     r5, #0x3
	bls     branch_22639d0
	b       branch_2263b1c
@ 0x22639d0

.thumb
branch_22639d0: @ 22639d0 :thumb
	add     r5, r5, r5
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
@ 0x22639dc

Jumppoints_22639dc:
.hword branch_22639e4 - Jumppoints_22639dc - 2
.hword branch_2263a56 - Jumppoints_22639dc - 2
.hword branch_2263a90 - Jumppoints_22639dc - 2
.hword branch_2263aee - Jumppoints_22639dc - 2
.thumb
branch_22639e4: @ 22639e4 :thumb
	mov     r1, #0x0
	bl      Function_2262c6c
	cmp     r0, #0x0
	beq     branch_2263a2c
	ldr     r0, [pc, #0x134] @ 0x2263b24, (=0x2afc)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	mov     r0, r4
	bl      Function_2262dc0
	mov     r0, r4
	bl      Function_2263db8
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x11c] @ 0x2263b20, (=0x2b9c)
	lsl     r0, r0, #2
	mov     r2, #0x1
	add     r0, r4, r0
	str     r2, [r0, r1]
	add     r2, r4, r1
	ldr     r1, [r4, #0x0]
	mov     r0, #0x18
	lsl     r1, r1, #2
	add     r1, r2, r1
	mov     r2, #0x4
	bl      0x20359dc
	ldr     r0, [pc, #0x108] @ 0x2263b28, (=0x2b18)
	mov     r1, #0x0
	str     r1, [r4, r0]
	sub     r0, #0x1a
	strh    r1, [r4, r0]
	ldr     r0, [pc, #0x104] @ 0x2263b2c, (=0x21a4)
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x2263a2c

.thumb
branch_2263a2c: @ 2263a2c :thumb
	mov     r0, r4
	bl      Function_2262c84
	mov     r0, r4
	bl      Function_2263ba0
	mov     r0, r4
	bl      Function_2263e20
	mov     r0, r4
	bl      Function_226377c
	mov     r0, #0x2b
	lsl     r0, r0, #8
	add     r2, r4, r0
	ldr     r0, [r4, #0x0]
	lsl     r1, r0, #1
	ldsh    r0, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r2, r1]
	pop     {r3-r5,pc}
@ 0x2263a56

.thumb
branch_2263a56: @ 2263a56 :thumb
	mov     r0, r1
	sub     r0, #0xa0
	ldsh    r0, [r4, r0]
	add     r2, r0, #0x1
	mov     r0, r1
	sub     r0, #0xa0
	strh    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xa0
	ldsh    r0, [r4, r0]
	cmp     r0, #0x5a
	blt     branch_2263a78
	ldr     r0, [r4, #0x0]
	mov     r2, #0x2
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r2, [r0, r1]
.thumb
branch_2263a78: @ 2263a78 :thumb
	ldr     r1, [pc, #0xac] @ 0x2263b28, (=0x2b18)
	mov     r2, #0x0
	mov     r0, r1
	str     r2, [r4, r1]
	sub     r0, #0x1a
	strh    r2, [r4, r0]
	ldr     r0, [r4, #0x0]
	sub     r1, #0x18
	lsl     r0, r0, #1
	add     r0, r4, r0
	strh    r2, [r0, r1]
	pop     {r3-r5,pc}
@ 0x2263a90

.thumb
branch_2263a90: @ 2263a90 :thumb
	mov     r0, r1
	sub     r0, #0xa0
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2263ae8
	mov     r2, r1
	mov     r0, #0x0
	sub     r2, #0x84
	str     r0, [r4, r2]
	mov     r2, r1
	sub     r2, #0x9e
	strh    r0, [r4, r2]
	mov     r2, r1
	sub     r2, #0xa0
	strh    r0, [r4, r2]
	ldr     r2, [r4, #0x0]
	lsl     r2, r2, #1
	add     r3, r4, r2
	mov     r2, r1
	sub     r2, #0x9c
	strh    r0, [r3, r2]
	mov     r0, r1
	sub     r0, #0xa4
	ldr     r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xa8
	ldr     r0, [r4, r0]
	cmp     r2, r0
	beq     branch_2263ace
	sub     r1, #0xa8
	str     r2, [r4, r1]
.thumb
branch_2263ace: @ 2263ace :thumb
	mov     r0, r4
	bl      Function_2262ae4
	ldr     r1, [pc, #0x48] @ 0x2263b20, (=0x2b9c)
	mov     r0, #0x18
	add     r2, r4, r1
	ldr     r1, [r4, #0x0]
	lsl     r1, r1, #2
	add     r1, r2, r1
	mov     r2, #0x4
	bl      0x20359dc
	pop     {r3-r5,pc}
@ 0x2263ae8

.thumb
branch_2263ae8: @ 2263ae8 :thumb
	mov     r0, #0x0
	str     r0, [r3, r2]
	pop     {r3-r5,pc}
@ 0x2263aee

.thumb
branch_2263aee: @ 2263aee :thumb
	mov     r2, r1
	sub     r2, #0xa0
	ldsh    r2, [r4, r2]
	add     r3, r2, #0x1
	mov     r2, r1
	sub     r2, #0xa0
	strh    r3, [r4, r2]
	mov     r2, r1
	sub     r2, #0xa0
	ldsh    r2, [r4, r2]
	cmp     r2, #0x1d
	bcc     branch_2263b1c
	mov     r2, #0x0
	sub     r1, #0xa0
	strh    r2, [r4, r1]
	bl      Function_2262ae4
	ldr     r0, [r4, #0x0]
	mov     r2, #0x0
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x4] @ 0x2263b20, (=0x2b9c)
	str     r2, [r1, r0]
.thumb
branch_2263b1c: @ 2263b1c :thumb
	pop     {r3-r5,pc}
@ 0x2263b1e


.align 2


.word 0x2b9c @ 0x2263b20
.word 0x2afc @ 0x2263b24
.word 0x2b18 @ 0x2263b28
.word 0x21a4 @ 0x2263b2c
.thumb
Function_2263b30: @ 2263b30 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x60] @ 0x2263b94, (=0x2ae4)
	mov     r4, r0
	ldr     r2, [r4, r1]
	mov     r1, #0x4b
	lsl     r1, r1, #4
	cmp     r2, r1
	bge     branch_2263b90
	bl      Function_22639bc
	mov     r0, r4
	bl      Function_22638c8
	mov     r0, r4
	bl      Function_22637f0
	cmp     r0, #0x1
	bne     branch_2263b68
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	bl      Function_2262d64
	mov     r0, r4
	bl      Function_22637b4
	ldr     r0, [pc, #0x34] @ 0x2263b98, (=0x574)
	bl      0x2005748
.thumb
branch_2263b68: @ 2263b68 :thumb
	mov     r0, r4
	bl      Function_2263de8
	ldr     r1, [pc, #0x2c] @ 0x2263b9c, (=0x2b18)
	ldr     r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, r1
	sub     r0, #0x34
	ldr     r0, [r4, r0]
	add     r2, r0, #0x1
	mov     r0, r1
	sub     r0, #0x34
	str     r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0x1a
	ldsh    r0, [r4, r0]
	sub     r1, #0x1a
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, r1]
.thumb
branch_2263b90: @ 2263b90 :thumb
	pop     {r4,pc}
@ 0x2263b92


.align 2


.word 0x2ae4 @ 0x2263b94
.word 0x574 @ 0x2263b98
.word 0x2b18 @ 0x2263b9c
.thumb
Function_2263ba0: @ 2263ba0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r5, r0
	add     r0, sp, #0x10
	add     r1, sp, #0xc
	bl      0x20227a4
	ldr     r0, [pc, #0x1cc] @ 0x2263d7c, (=0x2b84)
	mov     r1, #0x0
	str     r1, [r5, r0]
	add     r0, #0x30
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2263bc8
	ldr     r0, [pc, #0x1c0] @ 0x2263d80, (=0x2267b40)
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	bl      0x20227dc
	b       branch_2263bd2
@ 0x2263bc8

.thumb
branch_2263bc8: @ 2263bc8 :thumb
	ldr     r0, [pc, #0x1b8] @ 0x2263d84, (=0x2267b38)
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	bl      0x20227dc
.thumb
branch_2263bd2: @ 2263bd2 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2263c76
	ldr     r3, [pc, #0x1ac] @ 0x2263d88, (=0x1fd4)
	mov     r0, #0x0
	mov     r2, #0xc3
	str     r0, [r5, r3]
	add     r1, r3, #0x4
	lsl     r2, r2, #2
	str     r0, [r5, r1]
	ldr     r1, [r5, r2]
	cmp     r1, #0x0
	beq     branch_2263c32
	mov     r0, #0x45
	lsl     r0, r0, #2
	mov     r1, #0xfe
	add     r0, r5, r0
	lsl     r1, r1, #22
	bl      Function_226452c
	mov     r0, #0x32
	lsl     r0, r0, #4
	mov     r1, #0x3f
	add     r0, r5, r0
	lsl     r1, r1, #24
	bl      Function_226452c
	ldr     r4, [pc, #0x180] @ 0x2263d8c, (=0x2267b60)
	add     r3, sp, #0x20
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4d
	str     r0, [r3, #0x0]
	mov     r0, r2
	ldr     r2, [pc, #0x170] @ 0x2263d90, (=0x1fc8)
	lsl     r1, r1, #4
	add     r1, r5, r1
	add     r2, r5, r2
	blx     0x20bc2cc
	ldr     r0, [pc, #0x150] @ 0x2263d7c, (=0x2b84)
	mov     r1, #0x1
	add     sp, #0x2c
	str     r1, [r5, r0]
	pop     {r3-r6,pc}
@ 0x2263c32

.thumb
branch_2263c32: @ 2263c32 :thumb
	add     r1, r2, #0x4
	str     r0, [r5, r1]
	add     r2, #0x8
	str     r0, [r5, r2]
	add     r1, r3, #0x4
	ldr     r2, [r5, r1]
	ldr     r1, [r5, r3]
	ldr     r3, [pc, #0x150] @ 0x2263d94, (=0x3ff0a3d7)
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_226432c
	ldr     r0, [pc, #0x140] @ 0x2263d98, (=0x1fd8)
	ldr     r2, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x13c] @ 0x2263d9c, (=0x3e6147ae)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_226432c
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x2263c76

.thumb
branch_2263c76: @ 2263c76 :thumb
	ldr     r0, [pc, #0x128] @ 0x2263da0, (=0x1fcc)
	mov     r1, #0x28
	ldr     r0, [r5, r0]
	asr     r4, r0, #12
	mov     r0, #0x64
	sub     r0, r0, r4
	blx     _s32_div_f
	blx     0x20e17b4
	mov     r6, r0
	cmp     r4, #0x5f
	blt     branch_2263c92
	ldr     r6, [pc, #0x110] @ 0x2263da4, (=0x3dcccccd)
.thumb
branch_2263c92: @ 2263c92 :thumb
	mov     r0, r6
	blx     0x20e16bc
	ldr     r2, [pc, #0x10c] @ 0x2263da8, (=0xc28f5c29)
	ldr     r3, [pc, #0x110] @ 0x2263dac, (=0x3fcc28f5)
	blx     0x20e0d24
	bcc     branch_2263ca6
	ldr     r4, [pc, #0xf8] @ 0x2263d9c, (=0x3e6147ae)
	b       branch_2263cbe
@ 0x2263ca6

.thumb
branch_2263ca6: @ 2263ca6 :thumb
	mov     r0, r6
	blx     0x20e16bc
	mov     r2, r0
	mov     r3, r1
	ldr     r0, [pc, #0xf4] @ 0x2263da8, (=0xc28f5c29)
	ldr     r1, [pc, #0xf8] @ 0x2263dac, (=0x3fcc28f5)
	blx     _dsub
	blx     _d2f
	mov     r4, r0
.thumb
branch_2263cbe: @ 2263cbe :thumb
	ldr     r0, [pc, #0xc8] @ 0x2263d88, (=0x1fd4)
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_2263cd0
	ldr     r1, [sp, #0x10]
	str     r1, [r5, r0]
	ldr     r1, [sp, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_2263cd0: @ 2263cd0 :thumb
	ldr     r3, [pc, #0xc4] @ 0x2263d98, (=0x1fd8)
	ldr     r0, [r5, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	lsl     r0, r0, #30
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	bl      Function_226432c
	ldr     r3, [pc, #0xa4] @ 0x2263d98, (=0x1fd8)
	ldr     r0, [r5, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	bl      Function_226432c
	ldr     r4, [pc, #0x9c] @ 0x2263db0, (=0x2267b6c)
	add     r3, sp, #0x14
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4d
	str     r0, [r3, #0x0]
	mov     r0, r2
	ldr     r2, [pc, #0x6c] @ 0x2263d90, (=0x1fc8)
	lsl     r1, r1, #4
	add     r1, r5, r1
	add     r2, r5, r2
	blx     0x20bc2cc
	ldr     r0, [pc, #0x4c] @ 0x2263d7c, (=0x2b84)
	mov     r2, #0x1
	mov     r1, r0
	str     r2, [r5, r0]
	add     r1, #0x10
	ldr     r1, [r5, r1]
	cmp     r1, #0x0
	bne     branch_2263d42
	add     r0, #0x10
	str     r2, [r5, r0]
.thumb
branch_2263d42: @ 2263d42 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2263d6a
	ldr     r0, [pc, #0x68] @ 0x2263db4, (=0x572)
	bl      0x20057d4
	cmp     r0, #0x0
	bne     branch_2263d58
	ldr     r0, [pc, #0x60] @ 0x2263db4, (=0x572)
	bl      0x2005748
.thumb
branch_2263d58: @ 2263d58 :thumb
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	mov     r0, r5
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_226493c
.thumb
branch_2263d6a: @ 2263d6a :thumb
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x18] @ 0x2263d88, (=0x1fd4)
	str     r1, [r5, r0]
	ldr     r1, [sp, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x2263d7a


.align 2


.word 0x2b84 @ 0x2263d7c
.word 0x2267b40 @ 0x2263d80
.word 0x2267b38 @ 0x2263d84
.word 0x1fd4 @ 0x2263d88
.word 0x2267b60 @ 0x2263d8c
.word 0x1fc8 @ 0x2263d90
.word 0x3ff0a3d7 @ 0x2263d94
.word 0x1fd8 @ 0x2263d98
.word 0x3e6147ae @ 0x2263d9c
.word 0x1fcc @ 0x2263da0
.word 0x3dcccccd @ 0x2263da4
.word 0xc28f5c29 @ 0x2263da8
.word 0x3fcc28f5 @ 0x2263dac
.word 0x2267b6c @ 0x2263db0
.word 0x572 @ 0x2263db4
.thumb
Function_2263db8: @ 2263db8 :thumb
	ldr     r2, [pc, #0x28] @ 0x2263de4, (=0x2b20)
	mov     r3, #0x0
	mov     r1, r2
	strh    r3, [r0, r2]
	sub     r1, #0x40
	str     r3, [r0, r1]
	mov     r1, r2
	add     r1, #0x64
	str     r3, [r0, r1]
	mov     r1, r2
	add     r1, #0x68
	str     r3, [r0, r1]
	mov     r1, r2
	add     r1, #0x6c
	str     r3, [r0, r1]
	mov     r1, r2
	add     r1, #0x70
	str     r3, [r0, r1]
	sub     r2, #0x34
	str     r3, [r0, r2]
	bx      lr
@ 0x2263de2


.align 2


.word 0x2b20 @ 0x2263de4
.thumb
Function_2263de8: @ 2263de8 :thumb
	ldr     r2, [pc, #0x2c] @ 0x2263e18, (=0x2afe)
	ldsh    r1, [r0, r2]
	cmp     r1, #0x95
	blt     branch_2263e16
	mov     r1, r2
	sub     r1, #0xa
	ldr     r3, [r0, r1]
	cmp     r3, #0x8
	beq     branch_2263e16
	.hword  0x1f91 @ sub r1, r2, #0x6
	str     r3, [r0, r1]
	mov     r1, r2
	sub     r1, #0xa
	ldr     r1, [r0, r1]
	add     r3, r1, #0x1
	mov     r1, r2
	sub     r1, #0xa
	str     r3, [r0, r1]
	mov     r1, #0x0
	strh    r1, [r0, r2]
	ldr     r1, [pc, #0x8] @ 0x2263e1c, (=0x21a4)
	mov     r2, #0x1
	str     r2, [r0, r1]
.thumb
branch_2263e16: @ 2263e16 :thumb
	bx      lr
@ 0x2263e18

.word 0x2afe @ 0x2263e18
.word 0x21a4 @ 0x2263e1c
.thumb
Function_2263e20: @ 2263e20 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	ldr     r1, [pc, #0x318] @ 0x2264140, (=0x2267b38)
	mov     r5, r0
	ldrh    r3, [r1, #0x20]
	add     r0, sp, #0x18
	add     r2, sp, #0x18
	strh    r3, [r0, #0x0]
	ldrh    r3, [r1, #0x22]
	strh    r3, [r0, #0x2]
	ldrh    r3, [r1, #0x24]
	ldrh    r1, [r1, #0x26]
	strh    r3, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldr     r1, [pc, #0x304] @ 0x2264144, (=0x2ae0)
	ldr     r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0x40
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2263e50
	b       branch_2263f94
@ 0x2263e50

.thumb
branch_2263e50: @ 2263e50 :thumb
	mov     r0, r1
	add     r0, #0x42
	ldsh    r0, [r5, r0]
	cmp     r0, #0x9
	bge     branch_2263ec8
	cmp     r0, #0x8
	bgt     branch_2263eb2
	mov     r0, r1
	add     r0, #0x74
	ldr     r7, [r5, r0]
	mov     r0, r1
	add     r0, #0x8c
	add     r1, #0x74
	ldr     r6, [r5, r0]
	add     r0, r5, r1
	bl      Function_22646fc
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x2d0] @ 0x2264148, (=0x2b6c)
	add     r0, r5, r0
	bl      Function_22646fc
	ldr     r2, [pc, #0x2cc] @ 0x226414c, (=0x2b54)
	ldr     r1, [r5, r2]
	add     r2, #0x18
	sub     r1, r1, r7
	lsl     r1, r1, #4
	asr     r1, r1, #16
	str     r1, [sp, #0xc]
	ldr     r1, [r5, r2]
	sub     r1, r1, r6
	lsl     r1, r1, #4
	asr     r4, r1, #16
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x1
	beq     branch_2263e9c
	cmp     r0, #0x1
	bne     branch_2263f2c
.thumb
branch_2263e9c: @ 2263e9c :thumb
	ldr     r1, [pc, #0x2ac] @ 0x226414c, (=0x2b54)
	ldr     r0, [r5, r1]
	sub     r0, r0, r7
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0x18
	ldr     r0, [r5, r0]
	add     r1, #0x18
	sub     r0, r0, r6
	str     r0, [r5, r1]
	b       branch_2263f2c
@ 0x2263eb2

.thumb
branch_2263eb2: @ 2263eb2 :thumb
	mov     r0, r1
	add     r0, #0x74
	ldr     r0, [r5, r0]
	add     r1, #0x8c
	lsl     r0, r0, #4
	asr     r0, r0, #16
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	lsl     r0, r0, #4
	asr     r4, r0, #16
	b       branch_2263f2c
@ 0x2263ec8

.thumb
branch_2263ec8: @ 2263ec8 :thumb
	mov     r0, r1
	add     r0, #0x44
	ldr     r7, [r5, r0]
	mov     r0, r1
	add     r0, #0x5c
	add     r1, #0x44
	ldr     r6, [r5, r0]
	add     r0, r5, r1
	bl      Function_22646fc
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x270] @ 0x2264150, (=0x2b3c)
	add     r0, r5, r0
	bl      Function_22646fc
	ldr     r2, [pc, #0x26c] @ 0x2264154, (=0x2b24)
	ldr     r1, [r5, r2]
	add     r2, #0x18
	sub     r1, r1, r7
	lsl     r1, r1, #4
	asr     r1, r1, #16
	str     r1, [sp, #0xc]
	ldr     r1, [r5, r2]
	sub     r1, r1, r6
	lsl     r1, r1, #4
	asr     r4, r1, #16
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x1
	beq     branch_2263f06
	cmp     r0, #0x1
	bne     branch_2263f2c
.thumb
branch_2263f06: @ 2263f06 :thumb
	ldr     r0, [pc, #0x250] @ 0x2264158, (=0x2b88)
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_2263f2c
	mov     r1, #0x1
	str     r1, [r5, r0]
	mov     r1, r0
	sub     r1, #0x64
	ldr     r1, [r5, r1]
	sub     r2, r1, r7
	mov     r1, r0
	sub     r1, #0x64
	str     r2, [r5, r1]
	mov     r1, r0
	sub     r1, #0x4c
	ldr     r1, [r5, r1]
	sub     r0, #0x4c
	sub     r1, r1, r6
	str     r1, [r5, r0]
.thumb
branch_2263f2c: @ 2263f2c :thumb
	ldr     r0, [pc, #0x22c] @ 0x226415c, (=0x3ff0a3d7)
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r3, [sp, #0xc]
	add     r0, r5, r0
	mov     r2, r1
	bl      Function_226432c
	mov     r1, #0x0
	ldr     r0, [pc, #0x218] @ 0x2264160, (=0x3f4ccccd)
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r3, [sp, #0xc]
	add     r0, r5, r0
	mov     r2, r1
	bl      Function_226432c
	cmp     r0, #0x0
	beq     branch_2263f7e
	ldr     r4, [pc, #0x200] @ 0x2264164, (=0x2267b90)
	add     r3, sp, #0x38
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4d
	str     r0, [r3, #0x0]
	mov     r0, r2
	ldr     r2, [pc, #0x1f4] @ 0x2264168, (=0x1fc8)
	lsl     r1, r1, #4
	add     r1, r5, r1
	add     r2, r5, r2
	blx     0x20bc2cc
.thumb
branch_2263f7e: @ 2263f7e :thumb
	ldr     r0, [pc, #0x1ec] @ 0x226416c, (=0x2b22)
	add     sp, #0x44
	ldsh    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, r0]
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r5, r1]
	.hword  0x1e80 @ sub r0, r0, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r5, r0]
	pop     {r4-r7,pc}
@ 0x2263f94

.thumb
branch_2263f94: @ 2263f94 :thumb
	ldr     r0, [r5, r1]
	add     r1, #0xc
	ldr     r1, [r5, r1]
	lsl     r1, r1, #1
	ldsh    r1, [r2, r1]
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_2263fb2
	ldr     r0, [pc, #0x19c] @ 0x2264144, (=0x2ae0)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r1, #0x1
	add     r0, #0xac
	str     r1, [r5, r0]
.thumb
branch_2263fb2: @ 2263fb2 :thumb
	ldr     r1, [pc, #0x1bc] @ 0x2264170, (=0x2b84)
	ldr     r2, [r5, r1]
	cmp     r2, #0x0
	bne     branch_2264028
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_2264028
	mov     r0, r1
	sub     r0, #0x48
	ldr     r0, [r5, r0]
	sub     r1, #0x60
	lsl     r0, r0, #4
	asr     r4, r0, #16
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	lsl     r0, r0, #4
	asr     r6, r0, #16
	ldr     r0, [pc, #0x184] @ 0x226415c, (=0x3ff0a3d7)
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r6
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r1, #0x0
	ldr     r0, [pc, #0x170] @ 0x2264160, (=0x3f4ccccd)
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r6
	str     r1, [sp, #0x8]
	bl      Function_226432c
	cmp     r0, #0x0
	beq     branch_2264098
	ldr     r4, [pc, #0x168] @ 0x2264174, (=0x2267b78)
	add     r3, sp, #0x2c
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4d
	str     r0, [r3, #0x0]
	mov     r0, r2
	ldr     r2, [pc, #0x14c] @ 0x2264168, (=0x1fc8)
	lsl     r1, r1, #4
	add     r1, r5, r1
	add     r2, r5, r2
	blx     0x20bc2cc
	b       branch_2264098
@ 0x2264028

.thumb
branch_2264028: @ 2264028 :thumb
	cmp     r2, #0x1
	bne     branch_2264098
	ldr     r1, [pc, #0x128] @ 0x2264158, (=0x2b88)
	ldr     r0, [r5, r1]
	cmp     r0, #0x1
	bne     branch_2264098
	mov     r0, r1
	sub     r0, #0x4c
	ldr     r0, [r5, r0]
	sub     r1, #0x64
	lsl     r0, r0, #4
	asr     r4, r0, #16
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	lsl     r0, r0, #4
	asr     r6, r0, #16
	ldr     r0, [pc, #0x110] @ 0x226415c, (=0x3ff0a3d7)
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r6
	str     r1, [sp, #0x8]
	bl      Function_226432c
	mov     r1, #0x0
	ldr     r0, [pc, #0xfc] @ 0x2264160, (=0x3f4ccccd)
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r6
	str     r1, [sp, #0x8]
	bl      Function_226432c
	cmp     r0, #0x0
	beq     branch_2264098
	ldr     r4, [pc, #0xfc] @ 0x2264178, (=0x2267b84)
	add     r3, sp, #0x20
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4d
	str     r0, [r3, #0x0]
	mov     r0, r2
	ldr     r2, [pc, #0xd8] @ 0x2264168, (=0x1fc8)
	lsl     r1, r1, #4
	add     r1, r5, r1
	add     r2, r5, r2
	blx     0x20bc2cc
.thumb
branch_2264098: @ 2264098 :thumb
	ldr     r1, [pc, #0xe0] @ 0x226417c, (=0x2b90)
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_22640b2
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_22640b0
	sub     r1, #0x8
	ldr     r0, [r5, r1]
	cmp     r0, #0x1
	beq     branch_22640b2
.thumb
branch_22640b0: @ 22640b0 :thumb
	b       branch_226430c
@ 0x22640b2

.thumb
branch_22640b2: @ 22640b2 :thumb
	bl      0x201d2d0
	mov     r4, r0
	bl      PRNG
	mov     r6, r0
	mov     r0, r4
	bl      0x201d2dc
	mov     r0, r6
	mov     r1, #0x64
	blx     _u32_div_f
	ldr     r0, [pc, #0xb0] @ 0x2264180, (=0x2aec)
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	lsl     r7, r0, #5
	ldr     r0, [pc, #0xac] @ 0x2264184, (=0x2267c8c)
	mov     r3, r1
	ldr     r2, [r0, r7]
	ldr     r0, [pc, #0xa8] @ 0x2264188, (=0x2267c88)
	add     r0, r0, r7
.thumb
branch_22640e0: @ 22640e0 :thumb
	cmp     r4, r2
	blt     branch_22640f2
	add     r6, r3, r0
	ldr     r6, [r6, #0xc]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, r2, r6
	add     r3, #0x8
	cmp     r1, #0x3
	blt     branch_22640e0
.thumb
branch_22640f2: @ 22640f2 :thumb
	ldr     r0, [pc, #0x94] @ 0x2264188, (=0x2267c88)
	lsl     r1, r1, #3
	add     r0, r0, r7
	ldr     r6, [r1, r0]
	ldr     r1, [pc, #0x6c] @ 0x2264168, (=0x1fc8)
	ldr     r0, [r5, r1]
	add     r1, #0x8
	lsl     r0, r0, #4
	ldr     r1, [r5, r1]
	asr     r7, r0, #16
	lsl     r0, r1, #4
	asr     r0, r0, #16
	cmp     r1, #0x0
	bne     branch_2264128
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r0, r0, #31
	sub     r0, r0, r1
	mov     r4, #0x1f
	ror     r0, r4
	add     r0, r1, r0
	beq     branch_2264124
	mov     r4, #0x1
	b       branch_226413a
@ 0x2264124

.thumb
branch_2264124: @ 2264124 :thumb
	sub     r4, #0x20
	b       branch_226413a
@ 0x2264128

.thumb
branch_2264128: @ 2264128 :thumb
	cmp     r0, #0x0
	blt     branch_2264130
	mov     r0, #0x1
	b       branch_2264134
@ 0x2264130

.thumb
branch_2264130: @ 2264130 :thumb
	mov     r0, #0x0
	mvn     r0, r0
.thumb
branch_2264134: @ 2264134 :thumb
	neg     r0, r0
	lsl     r0, r0, #16
	asr     r4, r0, #16
.thumb
branch_226413a: @ 226413a :thumb
	ldr     r0, [pc, #0x2c] @ 0x2264168, (=0x1fc8)
	b       branch_226418c
@ 0x226413e


.align 2


.word 0x2267b38 @ 0x2264140
.word 0x2ae0 @ 0x2264144
.word 0x2b6c @ 0x2264148
.word 0x2b54 @ 0x226414c
.word 0x2b3c @ 0x2264150
.word 0x2b24 @ 0x2264154
.word 0x2b88 @ 0x2264158
.word 0x3ff0a3d7 @ 0x226415c
.word 0x3f4ccccd @ 0x2264160
.word 0x2267b90 @ 0x2264164
.word 0x1fc8 @ 0x2264168
.word 0x2b22 @ 0x226416c
.word 0x2b84 @ 0x2264170
.word 0x2267b78 @ 0x2264174
.word 0x2267b84 @ 0x2264178
.word 0x2b90 @ 0x226417c
.word 0x2aec @ 0x2264180
.word 0x2267c8c @ 0x2264184
.word 0x2267c88 @ 0x2264188
.thumb
branch_226418c: @ 226418c :thumb
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_22641ac
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r0, r0, #31
	sub     r0, r0, r2
	mov     r1, #0x1f
	ror     r0, r1
	add     r0, r2, r0
	beq     branch_22641a8
	mov     r1, #0x1
	b       branch_22641c6
@ 0x22641a8

.thumb
branch_22641a8: @ 22641a8 :thumb
	sub     r1, #0x20
	b       branch_22641c6
@ 0x22641ac

.thumb
branch_22641ac: @ 22641ac :thumb
	cmp     r7, #0x0
	blt     branch_22641b4
	mov     r1, #0x1
	b       branch_22641b8
@ 0x22641b4

.thumb
branch_22641b4: @ 22641b4 :thumb
	mov     r1, #0x0
	mvn     r1, r1
.thumb
branch_22641b8: @ 22641b8 :thumb
	cmp     r4, #0x0
	bge     branch_22641c6
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r1
	lsl     r0, r0, #16
	asr     r1, r0, #16
.thumb
branch_22641c6: @ 22641c6 :thumb
	ldr     r0, [pc, #0x148] @ 0x2264310, (=0x2aec)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_22641d0
	mov     r1, #0x0
.thumb
branch_22641d0: @ 22641d0 :thumb
	mov     r0, r6
	mul     r0, r1
	lsl     r0, r0, #16
	asr     r7, r0, #16
	mov     r0, r6
	mul     r0, r4
	lsl     r0, r0, #16
	asr     r6, r0, #16
	mov     r0, #0x14
	mov     r2, r1
	mul     r2, r0
	mul     r0, r4
	lsl     r0, r0, #16
	asr     r4, r0, #16
	ldr     r0, [pc, #0x124] @ 0x2264314, (=0x2b98)
	lsl     r1, r2, #16
	strh    r7, [r5, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	asr     r1, r1, #16
	strh    r6, [r5, r0]
	cmp     r1, #0x0
	ble     branch_226420e
	lsl     r0, r1, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226421c
@ 0x226420e

.thumb
branch_226420e: @ 226420e :thumb
	lsl     r0, r1, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_226421c: @ 226421c :thumb
	blx     0x20e1740
	mov     r2, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xf0] @ 0x2264318, (=0x2b54)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_226469c
	cmp     r4, #0x0
	ble     branch_2264248
	lsl     r0, r4, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2264256
@ 0x2264248

.thumb
branch_2264248: @ 2264248 :thumb
	lsl     r0, r4, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2264256: @ 2264256 :thumb
	blx     0x20e1740
	mov     r2, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x226431c, (=0x2b6c)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_226469c
	cmp     r7, #0x0
	ble     branch_2264282
	lsl     r0, r7, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2264290
@ 0x2264282

.thumb
branch_2264282: @ 2264282 :thumb
	lsl     r0, r7, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2264290: @ 2264290 :thumb
	blx     0x20e1740
	mov     r2, r0
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x84] @ 0x2264320, (=0x2b24)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_226469c
	cmp     r6, #0x0
	ble     branch_22642bc
	lsl     r0, r6, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22642ca
@ 0x22642bc

.thumb
branch_22642bc: @ 22642bc :thumb
	lsl     r0, r6, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22642ca: @ 22642ca :thumb
	blx     0x20e1740
	mov     r2, r0
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x2264324, (=0x2b3c)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_226469c
	ldr     r0, [pc, #0x44] @ 0x2264328, (=0x2b20)
	mov     r1, #0x16
	strh    r1, [r5, r0]
	mov     r1, #0x0
	add     r2, r0, #0x2
	strh    r1, [r5, r2]
	.hword  0x1f02 @ sub r2, r0, #0x4
	strh    r7, [r5, r2]
	.hword  0x1e82 @ sub r2, r0, #0x2
	strh    r6, [r5, r2]
	mov     r2, r0
	add     r2, #0x64
	str     r1, [r5, r2]
	mov     r2, r0
	add     r2, #0x6c
	str     r1, [r5, r2]
	mov     r2, r0
	add     r2, #0x68
	str     r1, [r5, r2]
	mov     r1, #0x1
	add     r0, #0x70
	str     r1, [r5, r0]
.thumb
branch_226430c: @ 226430c :thumb
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x2264310

.word 0x2aec @ 0x2264310
.word 0x2b98 @ 0x2264314
.word 0x2b54 @ 0x2264318
.word 0x2b6c @ 0x226431c
.word 0x2b24 @ 0x2264320
.word 0x2b3c @ 0x2264324
.word 0x2b20 @ 0x2264328
.thumb
Function_226432c: @ 226432c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r5, r0
	ldr     r0, [sp, #0x64]
	mov     r4, r1
	mov     r6, r3
	mov     r7, r2
	blx     0x20e16bc
	str     r0, [sp, #0x10]
	sub     r0, r4, r6
	str     r1, [sp, #0x4]
	blx     0x20e01b8
	mov     r2, r0
	mov     r3, r1
	ldr     r0, [pc, #0x1c4] @ 0x2264514, (=0x147ae148)
	ldr     r1, [pc, #0x1c8] @ 0x2264518, (=0x3f7547ae)
	blx     0x20e0234
	mov     r2, r0
	mov     r3, r1
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x4]
	blx     0x20e0234
	blx     _d2f
	mov     r6, r0
	ldr     r0, [sp, #0x64]
	blx     0x20e16bc
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x60]
	mov     r4, r1
	sub     r0, r7, r0
	blx     0x20e01b8
	mov     r2, r0
	mov     r3, r1
	ldr     r0, [pc, #0x19c] @ 0x226451c, (=0x55555555)
	ldr     r1, [pc, #0x1a0] @ 0x2264520, (=0x3f755555)
	blx     0x20e0234
	mov     r2, r0
	mov     r3, r1
	ldr     r0, [sp, #0x14]
	mov     r1, r4
	blx     0x20e0234
	blx     _d2f
	mov     r4, r0
	ldr     r0, [sp, #0x68]
	cmp     r0, #0x0
	beq     branch_22643e0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	str     r6, [r5, r0]
	add     r1, r0, #0x4
	str     r4, [r5, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	mov     r2, #0x8
	str     r2, [r5, r1]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	blx     _fdiv
	mov     r1, #0x81
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	ldr     r0, [r5, r0]
	blx     _fdiv
	mov     r1, #0x82
	lsl     r1, r1, #2
	str     r0, [r5, r1]
.thumb
branch_22643e0: @ 22643e0 :thumb
	mov     r0, r6
	mov     r1, r6
	blx     0x20e18b0
	mov     r7, r0
	mov     r0, r4
	mov     r1, r4
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, r7
	blx     _fadd
	mov     r1, #0x0
	mov     r7, r0
	blx     0x20e1108
	ldr     r0, [pc, #0x120] @ 0x2264524, (=0x45800000)
	bls     branch_2264418
	mov     r1, r7
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2264426
@ 0x2264418

.thumb
branch_2264418: @ 2264418 :thumb
	mov     r1, r7
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2264426: @ 2264426 :thumb
	blx     0x20e1740
	blx     0x20bcff0
	mov     r7, r0
	blx     0x20e17b4
	ldr     r1, [pc, #0xec] @ 0x2264524, (=0x45800000)
	blx     _fdiv
	str     r0, [sp, #0x18]
	blx     0x20e16bc
	mov     r2, r0
	mov     r0, #0x0
	mov     r3, r1
	mov     r1, r0
	blx     0x20e1020
	beq     branch_226450e
	mov     r0, r7
	blx     0x20bd838
	str     r0, [sp, #0x1c]
	str     r1, [sp, #0xc]
	mov     r0, r7
	blx     0x20bd8d0
	str     r0, [sp, #0x20]
	mov     r7, r1
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0xc]
	blx     0x20e1844
	ldr     r1, [pc, #0xbc] @ 0x2264528, (=0x4f800000)
	blx     _fdiv
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x20]
	mov     r1, r7
	blx     0x20e1844
	ldr     r1, [pc, #0xac] @ 0x2264528, (=0x4f800000)
	blx     _fdiv
	mov     r7, r0
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x18]
	blx     _fdiv
	str     r0, [sp, #0x28]
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	str     r7, [sp, #0x3c]
	blx     0x20e18b0
	str     r0, [sp, #0x40]
	ldr     r1, [sp, #0x28]
	mov     r0, r6
	blx     0x20e18b0
	mov     r2, #0x19
	str     r0, [sp, #0x44]
	mov     r0, #0x0
	lsl     r2, r2, #4
	str     r0, [sp, #0x48]
	add     r0, r5, r2
	add     r2, #0x10
	add     r1, sp, #0x3c
	add     r2, r5, r2
	bl      Function_226700c
	mov     r1, #0x15
	lsl     r1, r1, #4
	add     r0, r5, r1
	add     r1, #0x40
	add     r1, r5, r1
	bl      Function_22671ec
	mov     r1, #0x1a
	lsl     r1, r1, #4
	add     r0, r5, r1
	sub     r1, #0x10
	add     r1, r5, r1
	bl      Function_2266ffc
	mov     r1, #0x15
	lsl     r1, r1, #4
	add     r0, r5, r1
	add     r1, #0x60
	add     r1, r5, r1
	bl      Function_2267728
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_2267160
	mov     r7, #0x19
	lsl     r7, r7, #4
	add     r3, sp, #0x2c
	add     r4, r5, r7
	mov     r6, r0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, r2
	add     r0, r5, r7
	mov     r2, r6
	bl      Function_22671b8
	add     sp, #0x4c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x226450e

.thumb
branch_226450e: @ 226450e :thumb
	mov     r0, #0x0
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x2264514

.word 0x147ae148 @ 0x2264514
.word 0x3f7547ae @ 0x2264518
.word 0x55555555 @ 0x226451c
.word 0x3f755555 @ 0x2264520
.word 0x45800000 @ 0x2264524
.word 0x4f800000 @ 0x2264528
.thumb
Function_226452c: @ 226452c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r1, #0x7f
	lsl     r1, r1, #2
	mov     r5, r0
	add     r0, r1, #0x4
	ldr     r4, [r5, r1]
	ldr     r0, [r5, r0]
	add     r1, #0x8
	str     r0, [sp, #0x0]
	ldr     r1, [r5, r1]
	mov     r0, r4
	blx     0x20e1a9c
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	add     r1, #0xc
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	blx     0x20e1a9c
	mov     r1, #0x2
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x8
	ldr     r0, [r5, r0]
	sub     r1, #0x8
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, r1]
	mov     r0, r4
	mov     r1, r4
	blx     0x20e18b0
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r0
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, r6
	blx     _fadd
	mov     r1, #0x0
	mov     r6, r0
	blx     0x20e1108
	ldr     r0, [pc, #0xe8] @ 0x2264678, (=0x45800000)
	bls     branch_22645a4
	mov     r1, r6
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22645b2
@ 0x22645a4

.thumb
branch_22645a4: @ 22645a4 :thumb
	mov     r1, r6
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22645b2: @ 22645b2 :thumb
	blx     0x20e1740
	blx     0x20bcff0
	mov     r6, r0
	blx     0x20e17b4
	ldr     r1, [pc, #0xb4] @ 0x2264678, (=0x45800000)
	blx     _fdiv
	str     r0, [sp, #0x4]
	blx     0x20e16bc
	mov     r2, r0
	mov     r0, #0x0
	mov     r3, r1
	mov     r1, r0
	blx     0x20e1020
	beq     branch_2264672
	mov     r0, r6
	blx     0x20bd838
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r7, r1
	blx     0x20bd8d0
	str     r0, [sp, #0xc]
	mov     r6, r1
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	blx     0x20e1844
	ldr     r1, [pc, #0x84] @ 0x226467c, (=0x4f800000)
	blx     _fdiv
	mov     r7, r0
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	blx     0x20e1844
	ldr     r1, [pc, #0x74] @ 0x226467c, (=0x4f800000)
	blx     _fdiv
	mov     r6, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	blx     _fdiv
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	str     r6, [sp, #0x10]
	blx     0x20e18b0
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r1, r7
	blx     0x20e18b0
	mov     r2, #0x19
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	lsl     r2, r2, #4
	str     r0, [sp, #0x1c]
	add     r0, r5, r2
	add     r2, #0x10
	add     r1, sp, #0x10
	add     r2, r5, r2
	bl      Function_226700c
	mov     r1, #0x15
	lsl     r1, r1, #4
	add     r0, r5, r1
	add     r1, #0x40
	add     r1, r5, r1
	bl      Function_22671ec
	mov     r1, #0x1a
	lsl     r1, r1, #4
	add     r0, r5, r1
	sub     r1, #0x10
	add     r1, r5, r1
	bl      Function_2266ffc
	mov     r1, #0x15
	lsl     r1, r1, #4
	add     r0, r5, r1
	add     r1, #0x60
	add     r1, r5, r1
	bl      Function_2267728
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2264672

.thumb
branch_2264672: @ 2264672 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2264678

.word 0x45800000 @ 0x2264678
.word 0x4f800000 @ 0x226467c
.thumb
Function_2264680: @ 2264680 :thumb
	mov     r3, #0x0
.thumb
branch_2264682: @ 2264682 :thumb
	mov     r2, r0
	add     r2, #0xbc
	ldr     r2, [r2, #0x0]
	cmp     r1, r2
	bne     branch_2264690
	mov     r0, r3
	bx      lr
@ 0x2264690

.thumb
branch_2264690: @ 2264690 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, #0x4
	blt     branch_2264682
	mov     r0, #0xff
	bx      lr
@ 0x226469c

.thumb
Function_226469c: @ 226469c :thumb
	push    {r3-r7,lr}
	ldr     r4, [sp, #0x18]
	mov     r5, r0
	mov     r7, r2
	mov     r0, r3
	mov     r6, r1
	lsl     r2, r4, #12
	str     r3, [sp, #0x0]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     0x20e1f1c
	mov     r2, r0
	sub     r0, r7, r6
	mov     r7, #0x2
	mov     r3, #0x0
	lsl     r7, r7, #10
	add     r2, r2, r7
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r2, r2, #12
	orr     r2, r1
	sub     r2, r0, r2
	asr     r1, r2, #31
	lsr     r0, r2, #19
	lsl     r1, r1, #13
	orr     r1, r0
	lsl     r0, r2, #13
	add     r0, r0, r7
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, r4
	mul     r1, r4
	lsl     r1, r1, #12
	blx     0x20bcfd0
	str     r6, [r5, #0x0]
	ldr     r1, [sp, #0x0]
	str     r6, [r5, #0x4]
	str     r1, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	str     r4, [r5, #0x14]
	pop     {r3-r7,pc}
@ 0x22646fa


.align 2, 0


.thumb
Function_22646fc: @ 22646fc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r6, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	lsl     r2, r6, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     0x20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsr     r4, r2, #12
	lsl     r0, r1, #20
	mov     r2, r6
	orr     r4, r0
	ldr     r0, [r5, #0xc]
	mul     r2, r6
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     0x20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	lsl     r1, r2, #2
	blx     0x20bcfd0
	ldr     r1, [r5, #0x4]
	add     r0, r4, r0
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	bgt     branch_226475c
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x226475c

.thumb
branch_226475c: @ 226475c :thumb
	str     r1, [r5, #0x10]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2264762


.align 2, 0


.thumb
Function_2264764: @ 2264764 :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0xc]
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	str     r3, [r0, #0x14]
	bx      lr
@ 0x2264774

.thumb
Function_2264774: @ 2264774 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x14]
	ldr     r0, [r5, #0x10]
	cmp     r0, r2
	blt     branch_2264784
	mov     r4, #0x1
	b       branch_226478c
@ 0x2264784

.thumb
branch_2264784: @ 2264784 :thumb
	mov     r2, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x10]
	mov     r4, #0x0
.thumb
branch_226478c: @ 226478c :thumb
	ldr     r0, [r5, #0xc]
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     0x20e1f1c
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r1, [r5, #0x14]
	lsl     r1, r1, #12
	blx     0x20bcfd0
	ldr     r1, [r5, #0x4]
	add     r0, r0, r1
	str     r0, [r5, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22647ba


.align 2, 0


.thumb
Function_22647bc: @ 22647bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x74
	ldr     r3, [pc, #0x168] @ 0x226492c, (=0x2267d74)
	mov     r6, r0
	mov     r0, #0x1
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x18]
	add     r2, sp, #0x3c
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r3, [pc, #0x154] @ 0x2264930, (=0x2267d8c)
	add     r2, sp, #0x24
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_22647fe
	ldr     r0, [sp, #0x4]
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2264820
.thumb
branch_22647fe: @ 22647fe :thumb
	ldr     r5, [sp, #0x4]
	mov     r4, #0x0
.thumb
branch_2264802: @ 2264802 :thumb
	ldr     r0, [r5, #0x8]
	bl      0x200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_2264802
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, r6
	bl      0x200da58
	add     sp, #0x74
	pop     {r4-r7,pc}
@ 0x2264820

.thumb
branch_2264820: @ 2264820 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_226482e
	cmp     r0, #0x1
	beq     branch_2264898
	b       branch_226490a
@ 0x226482e

.thumb
branch_226482e: @ 226482e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r7, sp, #0x3c
	mov     r6, r0
	mov     r5, r0
	str     r0, [sp, #0x10]
	add     r6, #0x14
	add     r4, sp, #0x24
	add     r5, #0x2c
.thumb
branch_2264842: @ 2264842 :thumb
	ldr     r0, [sp, #0x10]
	add     r1, sp, #0x20
	ldr     r0, [r0, #0x8]
	add     r2, sp, #0x1c
	bl      0x200d638
	ldr     r1, [sp, #0x20]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r2, [r7, #0x0]
	ldr     r3, [pc, #0xdc] @ 0x2264934, (=0x4cd)
	mov     r0, r6
	add     r2, r1, r2
	bl      Function_226469c
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r2, [r4, #0x0]
	ldr     r3, [pc, #0xcc] @ 0x2264938, (=0x333)
	mov     r0, r5
	add     r2, r1, r2
	bl      Function_226469c
	ldr     r0, [sp, #0x10]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x8]
	add     r6, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x30
	str     r0, [sp, #0x8]
	cmp     r0, #0x3
	blt     branch_2264842
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	add     sp, #0x74
	str     r1, [r0, #0x4]
	pop     {r4-r7,pc}
@ 0x2264898

.thumb
branch_2264898: @ 2264898 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	ldr     r7, [sp, #0x4]
	ldr     r6, [sp, #0x4]
	str     r0, [sp, #0x14]
	add     r0, #0x14
	str     r0, [sp, #0x14]
	add     r4, sp, #0x54
	add     r7, #0x2c
	mov     r5, r6
.thumb
branch_22648ae: @ 22648ae :thumb
	ldr     r0, [sp, #0x14]
	bl      Function_22646fc
	str     r0, [r4, #0x0]
	mov     r0, r7
	bl      Function_22646fc
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x8]
	ldr     r1, [r6, #0x14]
	ldr     r2, [r6, #0x2c]
	bl      0x200d614
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22648d4
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_22648d8
.thumb
branch_22648d4: @ 22648d4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x18]
.thumb
branch_22648d8: @ 22648d8 :thumb
	ldr     r0, [r5, #0x8]
	bl      0x200d330
	ldr     r0, [sp, #0x14]
	add     r4, #0x8
	add     r0, #0x30
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	add     r7, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x30
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0xc]
	cmp     r0, #0x3
	blt     branch_22648ae
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_2264928
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	add     sp, #0x74
	str     r1, [r0, #0x4]
	pop     {r4-r7,pc}
@ 0x226490a

.thumb
branch_226490a: @ 226490a :thumb
	ldr     r4, [sp, #0x4]
	mov     r5, #0x0
.thumb
branch_226490e: @ 226490e :thumb
	ldr     r0, [r4, #0x8]
	bl      0x200d0f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_226490e
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, r6
	bl      0x200da58
.thumb
branch_2264928: @ 2264928 :thumb
	add     sp, #0x74
	pop     {r4-r7,pc}
@ 0x226492c

.word 0x2267d74 @ 0x226492c
.word 0x2267d8c @ 0x2264930
.word 0x4cd @ 0x2264934
.word 0x333 @ 0x2264938
.thumb
Function_226493c: @ 226493c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [sp, #0x0]
	ldr     r1, [pc, #0x8c] @ 0x22649d4, (=0x2490)
	mov     r5, r2
	mov     r0, #0x0
.thumb
branch_226494c: @ 226494c :thumb
	ldr     r2, [r3, r1]
	cmp     r2, #0x1
	beq     branch_22649c8
	mov     r1, #0xa8
	mul     r1, r0
	str     r1, [sp, #0xc]
	ldr     r1, [sp, #0x0]
	mov     r7, #0x0
	ldr     r3, [r1, #0x14]
	mov     r2, r1
	ldr     r1, [sp, #0xc]
	mov     r6, r7
	add     r4, r2, r1
	ldr     r2, [pc, #0x70] @ 0x22649d8, (=0x2534)
	mov     r1, r2
	str     r3, [r4, r2]
	sub     r1, #0xa0
	str     r7, [r4, r1]
	ldr     r1, [sp, #0x0]
	sub     r2, #0xa4
	add     r1, r1, r2
	str     r1, [sp, #0x10]
	mov     r2, r1
	ldr     r1, [sp, #0xc]
	mov     r3, #0x1
	str     r3, [r2, r1]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	mul     r1, r0
	str     r1, [sp, #0x8]
.thumb
branch_2264988: @ 2264988 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r5
	bl      Function_22626e8
	ldr     r1, [pc, #0x48] @ 0x22649dc, (=0x2498)
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x8]
	add     r1, r6, r5
	add     r0, r0, r1
	mov     r1, #0x3
	blx     _s32_div_f
	ldr     r0, [pc, #0x38] @ 0x22649dc, (=0x2498)
	ldr     r0, [r4, r0]
	bl      0x200d364
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r6, r6, r5
	cmp     r7, #0x3
	blt     branch_2264988
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	ldr     r0, [pc, #0x24] @ 0x22649e0, (=0x22647bd)
	add     r1, r2, r1
	mov     r2, #0x1
	lsl     r2, r2, #12
	bl      0x200d9e8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22649c8

.thumb
branch_22649c8: @ 22649c8 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, #0xa8
	cmp     r0, #0x8
	blt     branch_226494c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22649d4

.word 0x2490 @ 0x22649d4
.word 0x2534 @ 0x22649d8
.word 0x2498 @ 0x22649dc
.word 0x22647bd @ 0x22649e0
.thumb
Function_22649e4: @ 22649e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r0
	ldr     r0, [r1, #0x0]
	str     r1, [sp, #0x0]
	ldr     r5, [r0, #0x14]
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2264a00
	add     r5, #0x34
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_2264a18
.thumb
branch_2264a00: @ 2264a00 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x10]
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      0x200da58
	ldr     r0, [sp, #0x0]
	bl      0x20181c4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2264a18

.thumb
branch_2264a18: @ 2264a18 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_2264a2c
	cmp     r0, #0x1
	beq     branch_2264a3a
	cmp     r0, #0x2
	bne     branch_2264a2a
	b       branch_2264c8a
@ 0x2264a2a

.thumb
branch_2264a2a: @ 2264a2a :thumb
	b       branch_2264fc2
@ 0x2264a2c

.thumb
branch_2264a2c: @ 2264a2c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	ldr     r0, [r0, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x4]
.thumb
branch_2264a3a: @ 2264a3a :thumb
	ldr     r3, [pc, #0x33c] @ 0x2264d78, (=0x2267d60)
	add     r2, sp, #0x1c
	mov     r1, #0xa
.thumb
branch_2264a40: @ 2264a40 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2264a40
	ldr     r0, [sp, #0x0]
	mov     r5, #0x0
	ldr     r0, [r0, #0xc]
	mov     r6, #0x3f
	lsl     r1, r0, #2
	add     r0, sp, #0x1c
	ldsh    r0, [r0, r1]
	str     r5, [sp, #0xc]
	lsl     r6, r6, #24
	str     r0, [sp, #0x18]
	add     r0, sp, #0x1c
	add     r0, #0x2
	ldsh    r0, [r0, r1]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	str     r5, [r0, #0x8]
	mov     r4, r0
	ldr     r0, [sp, #0x18]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
.thumb
branch_2264a7a: @ 2264a7a :thumb
	lsr     r2, r5, #31
	lsl     r1, r5, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	mov     r0, r4
	add     r1, r2, r1
	add     r0, #0x3a
	strb    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x3
	blx     _s32_div_f
	mov     r7, r1
	mov     r0, #0x6
	sub     r0, r0, r7
	lsl     r0, r0, #16
	asr     r1, r0, #16
	mov     r0, r4
	add     r0, #0x42
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x44
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	ldr     r0, [r0, #0x40]
	mov     r1, #0x3
	str     r0, [r4, #0x14]
	mov     r0, r5
	blx     _s32_div_f
	mov     r1, #0x1e
	mul     r1, r0
	str     r1, [r4, #0x3c]
	mov     r0, r1
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     _s32_div_f
	str     r1, [r4, #0x3c]
	mov     r1, r4
	add     r1, #0x40
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	lsl     r0, r7, #1
	neg     r1, r0
	mov     r0, r4
	add     r0, #0x46
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_2264af8
	ldr     r0, [sp, #0x8]
	blx     0x20e17fc
	mov     r1, r0
	mov     r0, r6
	blx     _fadd
	b       branch_2264b04
@ 0x2264af8

.thumb
branch_2264af8: @ 2264af8 :thumb
	ldr     r0, [sp, #0x8]
	blx     0x20e17fc
	mov     r1, r6
	blx     0x20e1a9c
.thumb
branch_2264b04: @ 2264b04 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x20]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2264b20
	ldr     r0, [sp, #0x4]
	blx     0x20e17fc
	mov     r1, r0
	mov     r0, r6
	blx     _fadd
	b       branch_2264b2c
@ 0x2264b20

.thumb
branch_2264b20: @ 2264b20 :thumb
	ldr     r0, [sp, #0x4]
	blx     0x20e17fc
	mov     r1, r6
	blx     0x20e1a9c
.thumb
branch_2264b2c: @ 2264b2c :thumb
	blx     0x20e1740
	str     r0, [r4, #0x24]
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	str     r0, [r4, #0x34]
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x28]
	mov     r1, r4
	str     r0, [r4, #0x2c]
	add     r1, #0x38
	strb    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x39
	mov     r0, #0x1
	strb    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x3b
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0xb4
	bne     branch_2264b64
	mov     r1, r4
	add     r1, #0x38
	mov     r0, #0x2
	strb    r0, [r1, #0x0]
.thumb
branch_2264b64: @ 2264b64 :thumb
	ldr     r1, [r4, #0x3c]
	ldr     r0, [pc, #0x214] @ 0x2264d7c, (=0x10e)
	cmp     r1, r0
	blt     branch_2264b78
	cmp     r1, #0x5a
	bgt     branch_2264b78
	mov     r1, r4
	add     r1, #0x38
	mov     r0, #0x1
	strb    r0, [r1, #0x0]
.thumb
branch_2264b78: @ 2264b78 :thumb
	mov     r0, #0x42
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2264b90
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, r6
	blx     _fadd
	b       branch_2264b9c
@ 0x2264b90

.thumb
branch_2264b90: @ 2264b90 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r6
	blx     0x20e1a9c
.thumb
branch_2264b9c: @ 2264b9c :thumb
	blx     0x20e1740
	mov     r7, r0
	ldr     r0, [r4, #0x3c]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	asr     r1, r0, #31
	asr     r3, r7, #31
	mov     r2, r7
	blx     0x20e1f1c
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r2, r0, r2
	ldr     r0, [pc, #0x1c0] @ 0x2264d80, (=0x0)
	adc     r1, r0
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x30]
	mov     r0, #0x44
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2264be0
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, r6
	blx     _fadd
	b       branch_2264bec
@ 0x2264be0

.thumb
branch_2264be0: @ 2264be0 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r6
	blx     0x20e1a9c
.thumb
branch_2264bec: @ 2264bec :thumb
	blx     0x20e1740
	mov     r7, r0
	ldr     r0, [r4, #0x3c]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	asr     r1, r0, #31
	asr     r3, r7, #31
	mov     r2, r7
	blx     0x20e1f1c
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r2, r0, r2
	ldr     r0, [pc, #0x170] @ 0x2264d80, (=0x0)
	adc     r1, r0
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x34]
	mov     r0, #0x40
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2264c30
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, r6
	blx     _fadd
	b       branch_2264c3c
@ 0x2264c30

.thumb
branch_2264c30: @ 2264c30 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r6
	blx     0x20e1a9c
.thumb
branch_2264c3c: @ 2264c3c :thumb
	blx     0x20e1740
	ldr     r1, [r4, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x28]
	ldr     r1, [r4, #0x20]
	mov     r12, r0
	add     r1, r2, r1
	ldr     r7, [r4, #0x30]
	ldr     r3, [r4, #0x18]
	add     r1, r7, r1
	add     r1, r3, r1
	ldr     r3, [r4, #0x2c]
	ldr     r2, [r4, #0x24]
	ldr     r7, [r4, #0x34]
	add     r2, r3, r2
	add     r2, r7, r2
	mov     r3, r12
	add     r2, r3, r2
	mov     r3, #0xe
	ldr     r0, [r4, #0x14]
	lsl     r3, r3, #16
	bl      0x200d650
	ldr     r0, [sp, #0xc]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r4, #0x34
	str     r0, [sp, #0xc]
	cmp     r5, #0x24
	bge     branch_2264c7e
	b       branch_2264a7a
@ 0x2264c7e

.thumb
branch_2264c7e: @ 2264c7e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x4]
	b       branch_2264fda
@ 0x2264c8a

.thumb
branch_2264c8a: @ 2264c8a :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_2264ca8
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r1, [r0, #0x8]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2261e0c
	ldr     r0, [pc, #0xe0] @ 0x2264d84, (=0x573)
	bl      0x2005748
.thumb
branch_2264ca8: @ 2264ca8 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x1e
	ble     branch_2264cd4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	ldr     r0, [r0, #0xc]
	ldr     r1, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0xc]
	mov     r1, #0x5
	blx     _s32_div_f
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1
	str     r1, [r0, #0xc]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2261e0c
	b       branch_2264fac
@ 0x2264cd4

.thumb
branch_2264cd4: @ 2264cd4 :thumb
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	mov     r4, #0x3f
	str     r1, [r0, #0x8]
	mov     r0, #0x0
	ldr     r5, [sp, #0x0]
	str     r0, [sp, #0x10]
	lsl     r4, r4, #24
.thumb
branch_2264ce4: @ 2264ce4 :thumb
	mov     r0, #0x46
	ldsh    r0, [r5, r0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x46
	strh    r1, [r0, #0x0]
	mov     r0, #0x46
	ldsh    r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_2264cfa
	b       branch_2264f9e
@ 0x2264cfa

.thumb
branch_2264cfa: @ 2264cfa :thumb
	mov     r0, r5
	add     r0, #0x3a
	ldrb    r0, [r0, #0x0]
	add     r0, #0xa
	cmp     r1, r0
	blt     branch_2264db2
	cmp     r1, r0
	bne     branch_2264d12
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      0x200d364
.thumb
branch_2264d12: @ 2264d12 :thumb
	mov     r0, #0x46
	ldsh    r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x3a
	ldrb    r0, [r0, #0x0]
	add     r0, #0x12
	cmp     r1, r0
	bne     branch_2264d2c
	mov     r1, r5
	add     r1, #0x39
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	b       branch_2264d4a
@ 0x2264d2c

.thumb
branch_2264d2c: @ 2264d2c :thumb
	lsr     r2, r1, #31
	lsl     r1, r1, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	beq     branch_2264d4a
	mov     r0, r5
	add     r0, #0x39
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r5
	add     r0, #0x39
	strb    r1, [r0, #0x0]
.thumb
branch_2264d4a: @ 2264d4a :thumb
	mov     r1, r5
	add     r1, #0x39
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r5, #0x14]
	bl      0x200d3f4
	mov     r0, r5
	add     r0, #0x3b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2264d6a
	cmp     r0, #0x1
	beq     branch_2264d70
	cmp     r0, #0x2
	beq     branch_2264d8c
	b       branch_2264d92
@ 0x2264d6a

.thumb
branch_2264d6a: @ 2264d6a :thumb
	ldr     r0, [pc, #0x1c] @ 0x2264d88, (=0xfffff000)
	str     r0, [r5, #0x28]
	b       branch_2264d92
@ 0x2264d70

.thumb
branch_2264d70: @ 2264d70 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	b       branch_2264d92
@ 0x2264d76


.align 2


.word 0x2267d60 @ 0x2264d78
.word 0x10e @ 0x2264d7c
.word 0x0 @ 0x2264d80
.word 0x573 @ 0x2264d84
.word 0xfffff000 @ 0x2264d88
.thumb
branch_2264d8c: @ 2264d8c :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r5, #0x28]
.thumb
branch_2264d92: @ 2264d92 :thumb
	mov     r0, r5
	add     r0, #0x3b
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x3b
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x3b
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x3
	blx     _s32_div_f
	mov     r0, r5
	add     r0, #0x3b
	strb    r1, [r0, #0x0]
.thumb
branch_2264db2: @ 2264db2 :thumb
	mov     r0, #0x46
	ldsh    r1, [r5, r0]
	cmp     r1, #0x5
	ble     branch_2264dfa
	mov     r0, r5
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2264dec
	cmp     r0, #0x1
	beq     branch_2264ddc
	cmp     r0, #0x2
	bne     branch_2264dfa
	add     r0, r1, #0x5
	mov     r1, #0x6
	blx     _s32_div_f
	mov     r1, r5
	add     r1, #0x40
	strh    r0, [r1, #0x0]
	b       branch_2264dfa
@ 0x2264ddc

.thumb
branch_2264ddc: @ 2264ddc :thumb
	add     r0, r1, #0x5
	mov     r1, #0x6
	blx     _s32_div_f
	mov     r1, r5
	add     r1, #0x40
	strh    r0, [r1, #0x0]
	b       branch_2264dfa
@ 0x2264dec

.thumb
branch_2264dec: @ 2264dec :thumb
	add     r0, r1, #0x5
	mov     r1, #0x7
	blx     _s32_div_f
	mov     r1, r5
	add     r1, #0x40
	strh    r0, [r1, #0x0]
.thumb
branch_2264dfa: @ 2264dfa :thumb
	mov     r0, r5
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2264e58
	cmp     r0, #0x1
	beq     branch_2264e32
	cmp     r0, #0x2
	bne     branch_2264e32
	mov     r0, #0x46
	ldsh    r0, [r5, r0]
	mov     r1, #0x1e
	add     r2, r0, #0x5
	sub     r2, r1, r2
	asr     r1, r2, #2
	lsr     r1, r1, #29
	add     r1, r2, r1
	add     r2, r0, #0x7
	mov     r0, #0x1e
	sub     r2, r0, r2
	asr     r0, r2, #2
	lsr     r0, r0, #29
	add     r0, r2, r0
	lsl     r1, r1, #13
	lsl     r0, r0, #13
	asr     r1, r1, #16
	asr     r0, r0, #16
	b       branch_2264e7c
@ 0x2264e32

.thumb
branch_2264e32: @ 2264e32 :thumb
	mov     r0, #0x46
	ldsh    r0, [r5, r0]
	mov     r1, #0x1e
	add     r2, r0, #0x5
	sub     r2, r1, r2
	asr     r1, r2, #2
	lsr     r1, r1, #29
	add     r1, r2, r1
	add     r2, r0, #0x6
	mov     r0, #0x1e
	sub     r2, r0, r2
	asr     r0, r2, #2
	lsr     r0, r0, #29
	add     r0, r2, r0
	lsl     r1, r1, #13
	lsl     r0, r0, #13
	asr     r1, r1, #16
	asr     r0, r0, #16
	b       branch_2264e7c
@ 0x2264e58

.thumb
branch_2264e58: @ 2264e58 :thumb
	mov     r0, #0x46
	ldsh    r0, [r5, r0]
	mov     r1, #0x1e
	add     r2, r0, #0x5
	sub     r2, r1, r2
	asr     r1, r2, #2
	lsr     r1, r1, #29
	add     r1, r2, r1
	add     r2, r0, #0x4
	mov     r0, #0x1e
	sub     r2, r0, r2
	asr     r0, r2, #2
	lsr     r0, r0, #29
	add     r0, r2, r0
	lsl     r1, r1, #13
	lsl     r0, r0, #13
	asr     r1, r1, #16
	asr     r0, r0, #16
.thumb
branch_2264e7c: @ 2264e7c :thumb
	cmp     r1, #0x0
	ble     branch_2264e88
	mov     r2, #0x42
	ldsh    r2, [r5, r2]
	add     r2, r2, r1
	b       branch_2264e8e
@ 0x2264e88

.thumb
branch_2264e88: @ 2264e88 :thumb
	mov     r1, #0x42
	ldsh    r1, [r5, r1]
	add     r2, r1, #0x1
.thumb
branch_2264e8e: @ 2264e8e :thumb
	mov     r1, r5
	add     r1, #0x42
	strh    r2, [r1, #0x0]
	cmp     r0, #0x0
	ble     branch_2264ea0
	mov     r1, #0x44
	ldsh    r1, [r5, r1]
	add     r1, r1, r0
	b       branch_2264ea6
@ 0x2264ea0

.thumb
branch_2264ea0: @ 2264ea0 :thumb
	mov     r0, #0x44
	ldsh    r0, [r5, r0]
	add     r1, r0, #0x1
.thumb
branch_2264ea6: @ 2264ea6 :thumb
	mov     r0, r5
	add     r0, #0x44
	strh    r1, [r0, #0x0]
	mov     r0, #0x42
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2264ec4
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, r4
	blx     _fadd
	b       branch_2264ed0
@ 0x2264ec4

.thumb
branch_2264ec4: @ 2264ec4 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r4
	blx     0x20e1a9c
.thumb
branch_2264ed0: @ 2264ed0 :thumb
	blx     0x20e1740
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r2, r0, r2
	ldr     r0, [pc, #0xf4] @ 0x2264fe8, (=0x0)
	adc     r1, r0
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x30]
	mov     r0, #0x44
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2264f14
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, r4
	blx     _fadd
	b       branch_2264f20
@ 0x2264f14

.thumb
branch_2264f14: @ 2264f14 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r4
	blx     0x20e1a9c
.thumb
branch_2264f20: @ 2264f20 :thumb
	blx     0x20e1740
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r2, r0, r2
	ldr     r0, [pc, #0xa4] @ 0x2264fe8, (=0x0)
	adc     r1, r0
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x34]
	mov     r0, #0x40
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2264f64
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, r4
	blx     _fadd
	b       branch_2264f70
@ 0x2264f64

.thumb
branch_2264f64: @ 2264f64 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r4
	blx     0x20e1a9c
.thumb
branch_2264f70: @ 2264f70 :thumb
	blx     0x20e1740
	ldr     r1, [r5, #0x1c]
	add     r7, r1, r0
	str     r7, [r5, #0x1c]
	ldr     r2, [r5, #0x28]
	ldr     r1, [r5, #0x20]
	ldr     r3, [r5, #0x30]
	add     r1, r2, r1
	add     r1, r3, r1
	ldr     r6, [r5, #0x18]
	ldr     r3, [r5, #0x2c]
	ldr     r2, [r5, #0x24]
	add     r1, r6, r1
	add     r2, r3, r2
	ldr     r6, [r5, #0x34]
	mov     r3, #0xe
	add     r2, r6, r2
	ldr     r0, [r5, #0x14]
	add     r2, r7, r2
	lsl     r3, r3, #16
	bl      0x200d650
.thumb
branch_2264f9e: @ 2264f9e :thumb
	ldr     r0, [sp, #0x10]
	add     r5, #0x34
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x24
	bge     branch_2264fac
	b       branch_2264ce4
@ 0x2264fac

.thumb
branch_2264fac: @ 2264fac :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x10]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2264fda
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x4]
	b       branch_2264fda
@ 0x2264fc2

.thumb
branch_2264fc2: @ 2264fc2 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_2261e0c
	ldr     r0, [sp, #0x0]
	bl      0x20181c4
	mov     r0, r4
	bl      0x200da58
.thumb
branch_2264fda: @ 2264fda :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_2261e28
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2264fe6


.align 2


.word 0x0 @ 0x2264fe8
.thumb
Function_2264fec: @ 2264fec :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r1, [pc, #0x20] @ 0x2265014, (=0x764)
	mov     r0, #0x6a
	bl      0x2018144
	mov     r1, r0
	mov     r2, #0x1
	str     r5, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [pc, #0x10] @ 0x2265018, (=0x22649e5)
	lsl     r2, r2, #12
	str     r4, [r1, #0x10]
	bl      0x200d9e8
	pop     {r3-r5,pc}
@ 0x2265012


.align 2


.word 0x764 @ 0x2265014
.word 0x22649e5 @ 0x2265018
.thumb
Function_226501c: @ 226501c :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	ldr     r5, [r4, #0xc]
	ldr     r6, [r4, #0x14]
	ldr     r7, [r4, #0x10]
	cmp     r1, #0x0
	beq     branch_226510a
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_22650fe
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2265040

Jumppoints_2265040:
.hword branch_2265048 - Jumppoints_2265040 - 2
.hword branch_226508e - Jumppoints_2265040 - 2
.hword branch_22650a0 - Jumppoints_2265040 - 2
.hword branch_22650b8 - Jumppoints_2265040 - 2
.thumb
branch_2265048: @ 2265048 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bge     branch_2265054
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_226505e
@ 0x2265054

.thumb
branch_2265054: @ 2265054 :thumb
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_226505e: @ 226505e :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r4, [r5, #0x0]
	ldr     r3, [r6, #0x0]
	mov     r0, r7
	add     r3, r4, r3
	lsl     r3, r3, #24
	mov     r2, #0x1
	lsr     r3, r3, #24
	bl      0x2003a2c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r4, [r5, #0x0]
	ldr     r3, [r6, #0x0]
	mov     r0, r7
	add     r3, r4, r3
	lsl     r3, r3, #24
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x2003a2c
	pop     {r3-r7,pc}
@ 0x226508e

.thumb
branch_226508e: @ 226508e :thumb
	mov     r1, #0x1
	bl      0x2017348
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x22650a0

.thumb
branch_22650a0: @ 22650a0 :thumb
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x1
	bne     branch_226510a
	ldr     r0, [r4, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x28]
	cmp     r0, #0xf
	blt     branch_226510a
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x22650b8

.thumb
branch_22650b8: @ 22650b8 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	ble     branch_22650c4
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22650ce
@ 0x22650c4

.thumb
branch_22650c4: @ 22650c4 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22650ce: @ 22650ce :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r4, [r5, #0x0]
	ldr     r3, [r6, #0x0]
	mov     r0, r7
	add     r3, r4, r3
	lsl     r3, r3, #24
	mov     r2, #0x1
	lsr     r3, r3, #24
	bl      0x2003a2c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r4, [r5, #0x0]
	ldr     r3, [r6, #0x0]
	mov     r0, r7
	add     r3, r4, r3
	lsl     r3, r3, #24
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x2003a2c
	pop     {r3-r7,pc}
@ 0x22650fe

.thumb
branch_22650fe: @ 22650fe :thumb
	mov     r1, #0x0
	str     r1, [r4, #0x50]
	str     r1, [r4, #0x4]
	str     r1, [r4, #0x0]
	bl      0x2017348
.thumb
branch_226510a: @ 226510a :thumb
	pop     {r3-r7,pc}
@ 0x226510c

.thumb
Function_226510c: @ 226510c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	ldr     r0, [pc, #0x144] @ 0x2265258, (=0x2267d08)
	add     r3, sp, #0x20
	ldrh    r1, [r0, #0x0]
	add     r6, sp, #0x14
	ldr     r2, [pc, #0x140] @ 0x226525c, (=0x2267d40)
	strh    r1, [r6, #0x4]
	ldrh    r1, [r0, #0x2]
	mov     r4, r3
	add     r7, sp, #0x18
	strh    r1, [r6, #0x6]
	ldrh    r1, [r0, #0x4]
	ldrh    r0, [r0, #0x6]
	strh    r1, [r6, #0x8]
	strh    r0, [r6, #0xa]
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_226513e
	b       branch_2265252
@ 0x226513e

.thumb
branch_226513e: @ 226513e :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_226514e
	cmp     r0, #0x1
	beq     branch_22651be
	cmp     r0, #0x2
	beq     branch_22651d6
	b       branch_2265236
@ 0x226514e

.thumb
branch_226514e: @ 226514e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r5, [sp, #0x8]
.thumb
branch_2265154: @ 2265154 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_2265188
	add     r1, sp, #0x14
	add     r1, #0x2
	add     r2, sp, #0x14
	bl      0x200d550
	mov     r0, #0x0
	ldsh    r1, [r6, r0]
	ldsh    r0, [r7, r0]
	cmp     r1, r0
	ble     branch_2265188
	.hword  0x1f88 @ sub r0, r1, #0x6
	strh    r0, [r6, #0x0]
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [sp, #0xc]
	bl      0x200d4c4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_2265188: @ 2265188 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	blt     branch_2265154
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_226523e
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_226523e
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_226523e
	beq     branch_226523e
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	str     r0, [r5, #0x50]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_226523e
@ 0x22651be

.thumb
branch_22651be: @ 22651be :thumb
	ldr     r0, [r5, #0x50]
	cmp     r0, #0x1
	bne     branch_226523e
	ldr     r0, [r5, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x28]
	cmp     r0, #0xf
	blt     branch_226523e
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_226523e
@ 0x22651d6

.thumb
branch_22651d6: @ 22651d6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r7, r5
.thumb
branch_22651dc: @ 22651dc :thumb
	ldr     r0, [r7, #0x8]
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_226520c
	add     r1, sp, #0x14
	add     r1, #0x2
	add     r2, sp, #0x14
	bl      0x200d550
	mov     r0, #0x0
	ldsh    r0, [r6, r0]
	cmp     r0, #0xe0
	bge     branch_226520c
	.hword  0x1d80 @ add r0, r0, #0x6
	strh    r0, [r6, #0x0]
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [sp, #0x0]
	bl      0x200d4c4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_226520c: @ 226520c :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	blt     branch_22651dc
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_226523e
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_226523e
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_226523e
	beq     branch_226523e
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_226523e
@ 0x2265236

.thumb
branch_2265236: @ 2265236 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x50]
	str     r0, [r5, #0x4]
	str     r0, [r5, #0x0]
.thumb
branch_226523e: @ 226523e :thumb
	mov     r4, #0x0
.thumb
branch_2265240: @ 2265240 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_226524a
	bl      0x200d33c
.thumb
branch_226524a: @ 226524a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2265240
.thumb
branch_2265252: @ 2265252 :thumb
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2265256


.align 2


.word 0x2267d08 @ 0x2265258
.word 0x2267d40 @ 0x226525c
.thumb
Function_2265260: @ 2265260 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_22652f2
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2265278
	cmp     r0, #0x1
	beq     branch_22652b2
	b       branch_22652d2
@ 0x2265278

.thumb
branch_2265278: @ 2265278 :thumb
	mov     r7, #0x0
	ldr     r4, [sp, #0x0]
	mov     r5, r7
.thumb
branch_226527e: @ 226527e :thumb
	ldr     r6, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x28
	blx     _s32_div_f
	mov     r0, r6
	add     r0, #0x88
	bl      0x2017240
	mov     r0, r6
	mov     r1, #0x1
	bl      0x2017348
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x14
	cmp     r7, #0x8
	blt     branch_226527e
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4c]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x22652b2

.thumb
branch_22652b2: @ 22652b2 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x50]
	cmp     r0, #0x1
	bne     branch_22652f2
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4c]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	cmp     r1, #0xf
	str     r1, [r0, #0x4c]
	blt     branch_22652f2
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x22652d2

.thumb
branch_22652d2: @ 22652d2 :thumb
	mov     r5, #0x0
	ldr     r4, [sp, #0x0]
	mov     r6, r5
.thumb
branch_22652d8: @ 22652d8 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r6
	bl      0x2017348
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x8
	blt     branch_22652d8
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x50]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x0]
.thumb
branch_22652f2: @ 22652f2 :thumb
	pop     {r3-r7,pc}
@ 0x22652f4

.thumb
Function_22652f4: @ 22652f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_226534a
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_226530a
	cmp     r0, #0x1
	beq     branch_2265320
	b       branch_226533c
@ 0x226530a

.thumb
branch_226530a: @ 226530a :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x8]
	add     r1, #0x54
	bl      Function_2264fec
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2265320

.thumb
branch_2265320: @ 2265320 :thumb
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x1
	bne     branch_226534a
	ldr     r0, [r4, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x28]
	cmp     r0, #0xf
	blt     branch_226534a
	mov     r0, #0x1
	str     r0, [r4, #0x54]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x226533c

.thumb
branch_226533c: @ 226533c :thumb
	ldr     r0, [r4, #0x54]
	cmp     r0, #0x0
	bne     branch_226534a
	mov     r0, #0x0
	str     r0, [r4, #0x50]
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x0]
.thumb
branch_226534a: @ 226534a :thumb
	pop     {r4,pc}
@ 0x226534c

.thumb
Function_226534c: @ 226534c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x99
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r5, [r4, r0]
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2265368
	add     r5, #0x34
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_2265370
.thumb
branch_2265368: @ 2265368 :thumb
	mov     r0, r6
	bl      0x200da58
	pop     {r4-r6,pc}
@ 0x2265370

.thumb
branch_2265370: @ 2265370 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x5
	bhi     branch_226540c
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2265384

Jumppoints_2265384:
.hword branch_226540c - Jumppoints_2265384 - 2
.hword branch_22653fc - Jumppoints_2265384 - 2
.hword branch_22653dc - Jumppoints_2265384 - 2
.hword branch_22653c2 - Jumppoints_2265384 - 2
.hword branch_22653a4 - Jumppoints_2265384 - 2
.hword branch_2265390 - Jumppoints_2265384 - 2
.thumb
branch_2265390: @ 2265390 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_22653a4
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r1, #0x0
	add     r0, #0x4c
	str     r1, [r4, r0]
.thumb
branch_22653a4: @ 22653a4 :thumb
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22653c2
	ldr     r0, [pc, #0xb8] @ 0x2265468, (=0x60f)
	bl      0x2005748
	mov     r0, #0x5d
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x0
	add     r0, #0x4c
	str     r1, [r4, r0]
.thumb
branch_22653c2: @ 22653c2 :thumb
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22653dc
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	mov     r0, #0x52
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_22653dc: @ 22653dc :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22653fc
	ldr     r0, [pc, #0x84] @ 0x226546c, (=0x571)
	bl      0x2005748
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
.thumb
branch_22653fc: @ 22653fc :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_2265434
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x58]
	b       branch_2265434
@ 0x226540c

.thumb
branch_226540c: @ 226540c :thumb
	ldr     r1, [r4, #0x0]
	cmp     r0, r1
	beq     branch_2265434
	mov     r2, #0x1
	mov     r0, r4
	mov     r1, #0x52
	str     r2, [r4, #0x58]
	add     r0, #0xd0
	lsl     r1, r1, #2
	str     r2, [r0, #0x0]
	mov     r0, r1
	str     r2, [r4, r1]
	add     r0, #0x78
	str     r2, [r4, r0]
	add     r1, #0xf0
	str     r2, [r4, r1]
	ldr     r0, [pc, #0x3c] @ 0x226546c, (=0x571)
	mov     r1, #0x0
	bl      0x20057a4
.thumb
branch_2265434: @ 2265434 :thumb
	mov     r0, r4
	add     r0, #0x8
	bl      Function_226501c
	mov     r0, r4
	add     r0, #0x80
	bl      Function_226510c
	mov     r0, r4
	add     r0, #0xf8
	bl      Function_2265260
	mov     r0, #0x17
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_226510c
	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22652f4
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2265468

.word 0x60f @ 0x2265468
.word 0x571 @ 0x226546c
.thumb
Function_2265470: @ 2265470 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r1, [r4, #0x14]
	ldr     r0, [pc, #0x144] @ 0x22655c0, (=0x248c)
	mov     r6, #0x0
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x144] @ 0x22655c4, (=0x2ae8)
	add     r1, r4, r0
	ldr     r0, [pc, #0x144] @ 0x22655c8, (=0x222c)
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	ldr     r2, [r1, #0x0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r2, [r4, r1]
	add     r5, r4, r0
.thumb
branch_2265492: @ 2265492 :thumb
	mov     r1, #0x0
	str     r1, [r5, #0x0]
	str     r1, [r5, #0x4]
	cmp     r6, #0x4
	bhi     branch_2265540
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22654a8

Jumppoints_22654a8:
.hword branch_22654b2 - Jumppoints_22654a8 - 2
.hword branch_22654ce - Jumppoints_22654a8 - 2
.hword branch_2265528 - Jumppoints_22654a8 - 2
.hword branch_2265542 - Jumppoints_22654a8 - 2
.hword branch_226559c - Jumppoints_22654a8 - 2
.thumb
branch_22654b2: @ 22654b2 :thumb
	ldr     r0, [pc, #0x118] @ 0x22655cc, (=0x944)
	add     r0, r4, r0
	str     r0, [r5, #0x8]
	mov     r0, #0x42
	lsl     r0, r0, #2
	add     r1, r4, r0
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, #0xc]
	add     r0, r4, r0
	str     r0, [r5, #0x14]
	ldr     r0, [r4, #0x14]
	ldr     r0, [r0, #0x14]
	str     r0, [r5, #0x10]
	b       branch_226559e
@ 0x22654ce

.thumb
branch_22654ce: @ 22654ce :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x4
	str     r0, [r5, #0x8]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	str     r0, [r5, #0xc]
	str     r1, [r5, #0x10]
	mov     r0, r4
	str     r1, [r5, #0x14]
	add     r0, #0xd0
	add     r1, sp, #0x4
	ldr     r0, [r0, #0x0]
	add     r1, #0x2
	bl      0x200d550
	mov     r0, r4
	add     r0, #0xd0
	add     r2, sp, #0x0
	mov     r1, #0x6
	ldsh    r1, [r2, r1]
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe0
	bl      0x200d4c4
	mov     r0, r4
	add     r0, #0xd4
	add     r1, sp, #0x4
	ldr     r0, [r0, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x4
	bl      0x200d550
	mov     r0, r4
	add     r0, #0xd4
	add     r2, sp, #0x0
	mov     r1, #0x6
	ldsh    r1, [r2, r1]
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe0
	bl      0x200d4c4
	b       branch_226559e
@ 0x2265528

.thumb
branch_2265528: @ 2265528 :thumb
	mov     r0, #0xb5
	lsl     r0, r0, #4
	add     r2, r4, r0
	mov     r0, #0x83
	mov     r3, r5
	lsl     r0, r0, #2
.thumb
branch_2265534: @ 2265534 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r2, [r3, #0x8]
	add     r2, r2, r0
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r1, #0x8
	blt     branch_2265534
.thumb
branch_2265540: @ 2265540 :thumb
	b       branch_226559e
@ 0x2265542

.thumb
branch_2265542: @ 2265542 :thumb
	str     r1, [r5, #0x8]
	mov     r0, r4
	str     r1, [r5, #0xc]
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	str     r0, [r5, #0x10]
	mov     r0, r4
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	add     r1, #0x2
	str     r0, [r5, #0x14]
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x0
	bl      0x200d550
	mov     r0, r4
	add     r0, #0xd8
	add     r2, sp, #0x0
	mov     r1, #0x2
	ldsh    r1, [r2, r1]
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe0
	bl      0x200d4c4
	mov     r0, r4
	add     r0, #0xdc
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      0x200d550
	mov     r0, r4
	add     r0, #0xdc
	add     r2, sp, #0x0
	mov     r1, #0x2
	ldsh    r1, [r2, r1]
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe0
	bl      0x200d4c4
	b       branch_226559e
@ 0x226559c

.thumb
branch_226559c: @ 226559c :thumb
	str     r4, [r5, #0x8]
.thumb
branch_226559e: @ 226559e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x5
	bge     branch_22655a8
	b       branch_2265492
@ 0x22655a8

.thumb
branch_22655a8: @ 22655a8 :thumb
	ldr     r1, [pc, #0x24] @ 0x22655d0, (=0x2228)
	mov     r2, #0x1
	ldr     r0, [pc, #0x24] @ 0x22655d4, (=0x226534d)
	add     r1, r4, r1
	lsl     r2, r2, #12
	bl      0x200d9e8
	ldr     r1, [pc, #0x20] @ 0x22655d8, (=0x2488)
	str     r0, [r4, r1]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22655be


.align 2


.word 0x248c @ 0x22655c0
.word 0x2ae8 @ 0x22655c4
.word 0x222c @ 0x22655c8
.word 0x944 @ 0x22655cc
.word 0x2228 @ 0x22655d0
.word 0x226534d @ 0x22655d4
.word 0x2488 @ 0x22655d8
.thumb
Function_22655dc: @ 22655dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r1, #0x57
	mov     r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	str     r0, [sp, #0x8]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x4]
	mov     r0, r1
	add     r0, #0x14
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2265604
	cmp     r0, #0x1
	beq     branch_2265642
	cmp     r0, #0x2
	beq     branch_22656e6
	b       branch_22656f4
@ 0x2265604

.thumb
branch_2265604: @ 2265604 :thumb
	add     r1, #0x24
	mov     r2, #0xa
	add     r0, r5, r1
	mov     r1, #0x0
	lsl     r2, r2, #14
	mov     r3, #0xa
	bl      Function_2264764
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r2, #0x5
	add     r0, r5, r0
	mov     r1, #0x0
	lsl     r2, r2, #16
	mov     r3, #0xa
	bl      Function_2264764
	mov     r0, #0x1b
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x124] @ 0x2265750, (=0xfffb0000)
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r3, #0xa
	bl      Function_2264764
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	b       branch_22656f4
@ 0x2265642

.thumb
branch_2265642: @ 2265642 :thumb
	add     r1, #0x24
	mov     r7, #0x0
	add     r6, r5, r1
	add     r4, sp, #0xc
.thumb
branch_226564a: @ 226564a :thumb
	mov     r0, r6
	bl      Function_2264774
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x18
	stmia   r4!, {r0}
	cmp     r7, #0x3
	blt     branch_226564a
	mov     r0, #0x5f
	lsl     r0, r0, #2
	mov     r2, #0x3
	ldr     r0, [r5, r0]
	lsl     r3, r2, #7
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x7
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0x1c
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x5
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0x34
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x6
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0x1c
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x1
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0x34
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x2
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      0x201c63c
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_22656f4
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_22656f4
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_22656f4
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	b       branch_22656f4
@ 0x22656e6

.thumb
branch_22656e6: @ 22656e6 :thumb
	mov     r0, r1
	mov     r2, #0x1
	add     r0, #0x1c
	str     r2, [r5, r0]
	mov     r0, #0x0
	add     r1, #0x14
	str     r0, [r5, r1]
.thumb
branch_22656f4: @ 22656f4 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x6
	bge     branch_2265702
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	b       branch_2265706
@ 0x2265702

.thumb
branch_2265702: @ 2265702 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x6
.thumb
branch_2265706: @ 2265706 :thumb
	str     r1, [r0, #0x0]
	mov     r1, #0x0
	ldr     r3, [sp, #0x8]
	str     r1, [sp, #0x0]
	ldr     r4, [r3, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r3, [r3, #0x0]
	ldr     r0, [r5, r0]
	add     r3, r4, r3
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x14]
	mov     r2, #0x1
	lsr     r3, r3, #24
	bl      0x2003a2c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x8]
	mov     r0, #0x5f
	ldr     r4, [r3, #0x0]
	ldr     r3, [sp, #0x4]
	lsl     r0, r0, #2
	ldr     r3, [r3, #0x0]
	ldr     r0, [r5, r0]
	add     r3, r4, r3
	mov     r1, #0x1
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x14]
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x2003a2c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x226574e


.align 2


.word 0xfffb0000 @ 0x2265750
.thumb
Function_2265754: @ 2265754 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r1, #0x57
	mov     r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	str     r0, [sp, #0x8]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x4]
	mov     r0, r1
	add     r0, #0x14
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_226577c
	cmp     r0, #0x1
	beq     branch_22657ba
	cmp     r0, #0x2
	beq     branch_226585e
	b       branch_226586a
@ 0x226577c

.thumb
branch_226577c: @ 226577c :thumb
	add     r1, #0x24
	add     r0, r5, r1
	mov     r1, #0xa
	lsl     r1, r1, #14
	mov     r2, #0x0
	mov     r3, #0xa
	bl      Function_2264764
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r1, #0x5
	add     r0, r5, r0
	lsl     r1, r1, #16
	mov     r2, #0x0
	mov     r3, #0xa
	bl      Function_2264764
	mov     r0, #0x1b
	lsl     r0, r0, #4
	ldr     r1, [pc, #0x120] @ 0x22658c4, (=0xfffb0000)
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0xa
	bl      Function_2264764
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	b       branch_226586a
@ 0x22657ba

.thumb
branch_22657ba: @ 22657ba :thumb
	add     r1, #0x24
	mov     r7, #0x0
	add     r6, r5, r1
	add     r4, sp, #0xc
.thumb
branch_22657c2: @ 22657c2 :thumb
	mov     r0, r6
	bl      Function_2264774
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x18
	stmia   r4!, {r0}
	cmp     r7, #0x3
	blt     branch_22657c2
	mov     r0, #0x5f
	lsl     r0, r0, #2
	mov     r2, #0x3
	ldr     r0, [r5, r0]
	lsl     r3, r2, #7
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x7
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0x1c
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x5
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0x34
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x6
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0x1c
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x1
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0x34
	ldr     r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	mov     r1, #0x2
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      0x201c63c
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_226586a
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_226586a
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_226586a
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	b       branch_226586a
@ 0x226585e

.thumb
branch_226585e: @ 226585e :thumb
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x1c
	str     r2, [r5, r0]
	add     r1, #0x14
	str     r2, [r5, r1]
.thumb
branch_226586a: @ 226586a :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x4
	ble     branch_2265878
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	b       branch_226587c
@ 0x2265878

.thumb
branch_2265878: @ 2265878 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
.thumb
branch_226587c: @ 226587c :thumb
	str     r1, [r0, #0x0]
	mov     r1, #0x0
	ldr     r3, [sp, #0x8]
	str     r1, [sp, #0x0]
	ldr     r4, [r3, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r3, [r3, #0x0]
	ldr     r0, [r5, r0]
	add     r3, r4, r3
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x14]
	mov     r2, #0x1
	lsr     r3, r3, #24
	bl      0x2003a2c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x8]
	mov     r0, #0x5f
	ldr     r4, [r3, #0x0]
	ldr     r3, [sp, #0x4]
	lsl     r0, r0, #2
	ldr     r3, [r3, #0x0]
	ldr     r0, [r5, r0]
	add     r3, r4, r3
	mov     r1, #0x1
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x14]
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x2003a2c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22658c4

.word 0xfffb0000 @ 0x22658c4
.thumb
Function_22658c8: @ 22658c8 :thumb
	cmp     r0, #0xa
	bhi     branch_2265916
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22658d8

Jumppoints_22658d8:
.hword branch_2265916 - Jumppoints_22658d8 - 2
.hword branch_22658ee - Jumppoints_22658d8 - 2
.hword branch_22658f2 - Jumppoints_22658d8 - 2
.hword branch_22658f6 - Jumppoints_22658d8 - 2
.hword branch_22658fa - Jumppoints_22658d8 - 2
.hword branch_22658fe - Jumppoints_22658d8 - 2
.hword branch_2265902 - Jumppoints_22658d8 - 2
.hword branch_2265906 - Jumppoints_22658d8 - 2
.hword branch_226590a - Jumppoints_22658d8 - 2
.hword branch_226590e - Jumppoints_22658d8 - 2
.hword branch_2265912 - Jumppoints_22658d8 - 2
.thumb
branch_22658ee: @ 22658ee :thumb
	mov     r0, #0x1c
	bx      lr
@ 0x22658f2

.thumb
branch_22658f2: @ 22658f2 :thumb
	mov     r0, #0xe
	bx      lr
@ 0x22658f6

.thumb
branch_22658f6: @ 22658f6 :thumb
	mov     r0, #0xc
	bx      lr
@ 0x22658fa

.thumb
branch_22658fa: @ 22658fa :thumb
	mov     r0, #0xa
	bx      lr
@ 0x22658fe

.thumb
branch_22658fe: @ 22658fe :thumb
	mov     r0, #0x9
	bx      lr
@ 0x2265902

.thumb
branch_2265902: @ 2265902 :thumb
	mov     r0, #0x20
	bx      lr
@ 0x2265906

.thumb
branch_2265906: @ 2265906 :thumb
	mov     r0, #0xe
	bx      lr
@ 0x226590a

.thumb
branch_226590a: @ 226590a :thumb
	mov     r0, #0xc
	bx      lr
@ 0x226590e

.thumb
branch_226590e: @ 226590e :thumb
	mov     r0, #0xb
	bx      lr
@ 0x2265912

.thumb
branch_2265912: @ 2265912 :thumb
	mov     r0, #0xb
	bx      lr
@ 0x2265916

.thumb
branch_2265916: @ 2265916 :thumb
	mov     r0, #0x9
	bx      lr
@ 0x226591a


.align 2, 0


.thumb
Function_226591c: @ 226591c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x56
	mov     r6, r1
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r4, [r0, #0x0]
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2265940
	mov     r1, #0x5f
	lsl     r1, r1, #2
	ldr     r0, [r6, r1]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2265948
.thumb
branch_2265940: @ 2265940 :thumb
	mov     r0, r5
	bl      0x200da58
	pop     {r3-r7,pc}
@ 0x2265948

.thumb
branch_2265948: @ 2265948 :thumb
	mov     r0, r1
	sub     r0, #0x8
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_22659dc
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_2265960
	mov     r0, r6
	bl      Function_22655dc
.thumb
branch_2265960: @ 2265960 :thumb
	mov     r1, #0x59
	lsl     r1, r1, #2
	ldr     r0, [r6, r1]
	cmp     r0, #0x0
	bne     branch_22659f6
	cmp     r4, #0x0
	beq     branch_22659f6
	cmp     r4, #0x8
	bge     branch_22659f6
	mov     r2, r4
	mov     r0, #0x28
	mul     r2, r0
	str     r2, [sp, #0x0]
	ldr     r2, [pc, #0x8c] @ 0x2265a08, (=0x2267da4)
	ldr     r3, [sp, #0x0]
	mov     r7, #0x0
	ldr     r3, [r2, r3]
	ldr     r4, [pc, #0x88] @ 0x2265a0c, (=0x2267da8)
	str     r3, [r6, r1]
	add     r3, r1, #0x4
	str     r7, [r6, r3]
	ldr     r3, [sp, #0x0]
	lsl     r0, r0, #3
	ldr     r3, [r4, r3]
	mov     r5, r6
	.hword  0x1e5b @ sub r3, r3, #0x1
	str     r3, [r6, r0]
	ldr     r3, [pc, #0x78] @ 0x2265a10, (=0x2267dac)
	ldr     r0, [sp, #0x0]
	ldr     r3, [r3, r0]
	mov     r0, r1
	sub     r0, #0x20
	str     r3, [r6, r0]
	add     r0, r3, #0x5
	sub     r1, #0x1c
	str     r0, [r6, r1]
	ldr     r0, [sp, #0x0]
	add     r4, r2, r0
.thumb
branch_22659ac: @ 22659ac :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [r5, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      0x200d430
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x18]
	bl      0x200d430
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x50
	cmp     r7, #0x2
	blt     branch_22659ac
	ldr     r1, [pc, #0x44] @ 0x2265a14, (=0x2267dc8)
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x44] @ 0x2265a18, (=0x1001)
	ldr     r0, [r1, r0]
	mov     r1, r6
	bl      0x200d9e8
	b       branch_22659f6
@ 0x22659dc

.thumb
branch_22659dc: @ 22659dc :thumb
	bne     branch_22659f6
	mov     r0, r1
	sub     r0, #0x18
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_22659f6
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r6, r0]
	cmp     r0, #0x1
	bne     branch_22659f6
	mov     r0, r6
	bl      Function_2265754
.thumb
branch_22659f6: @ 22659f6 :thumb
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	cmp     r1, #0x0
	beq     branch_2265a04
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r6, r0]
.thumb
branch_2265a04: @ 2265a04 :thumb
	pop     {r3-r7,pc}
@ 0x2265a06


.align 2


.word 0x2267da4 @ 0x2265a08
.word 0x2267da8 @ 0x2265a0c
.word 0x2267dac @ 0x2265a10
.word 0x2267dc8 @ 0x2265a14
.word 0x1001 @ 0x2265a18
.thumb
Function_2265a1c: @ 2265a1c :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x6c] @ 0x2265a90, (=0x2af4)
	ldr     r6, [pc, #0x70] @ 0x2265a94, (=0x2030)
	add     r1, r4, r0
	ldr     r0, [pc, #0x70] @ 0x2265a98, (=0x2188)
	str     r1, [r4, r0]
	mov     r1, #0x42
	lsl     r1, r1, #2
	add     r3, r4, r1
	add     r2, r0, #0x4
	str     r3, [r4, r2]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r2, r4, r1
	mov     r1, r0
	add     r1, #0x8
	str     r2, [r4, r1]
	mov     r1, r0
	ldr     r2, [r4, #0x14]
	add     r1, #0x24
	str     r2, [r4, r1]
	mov     r2, r0
	mov     r1, #0x0
	add     r2, #0xc
	str     r1, [r4, r2]
	mov     r2, r0
	add     r2, #0x18
	str     r1, [r4, r2]
	add     r0, #0x1c
	str     r1, [r4, r0]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r4
	add     r0, #0xa0
.thumb
branch_2265a60: @ 2265a60 :thumb
	mov     r5, r2
	add     r5, #0xe8
	ldr     r5, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r5, [r3, r6]
	mov     r5, r2
	add     r5, #0xe0
	ldr     r5, [r5, #0x0]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r5, [r3, r0]
	add     r3, #0x50
	cmp     r1, #0x2
	blt     branch_2265a60
	ldr     r1, [pc, #0x18] @ 0x2265a94, (=0x2030)
	mov     r2, #0x1
	ldr     r0, [pc, #0x1c] @ 0x2265a9c, (=0x226591d)
	add     r1, r4, r1
	lsl     r2, r2, #12
	bl      0x200d9e8
	ldr     r1, [pc, #0x14] @ 0x2265aa0, (=0x2184)
	str     r0, [r4, r1]
	pop     {r4-r6,pc}
@ 0x2265a8e


.align 2


.word 0x2af4 @ 0x2265a90
.word 0x2030 @ 0x2265a94
.word 0x2188 @ 0x2265a98
.word 0x226591d @ 0x2265a9c
.word 0x2184 @ 0x2265aa0
.thumb
Function_2265aa4: @ 2265aa4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2265ac2
	mov     r1, #0x5f
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2265acc
.thumb
branch_2265ac2: @ 2265ac2 :thumb
	mov     r0, r5
	bl      0x200da58
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2265acc

.thumb
branch_2265acc: @ 2265acc :thumb
	mov     r0, r1
	sub     r0, #0x14
	ldr     r0, [r4, r0]
	cmp     r0, #0x4
	bls     branch_2265ad8
	b       branch_2265d78
@ 0x2265ad8

.thumb
branch_2265ad8: @ 2265ad8 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2265ae4

Jumppoints_2265ae4:
.hword branch_2265aee - Jumppoints_2265ae4 - 2
.hword branch_2265c5e - Jumppoints_2265ae4 - 2
.hword branch_2265ca6 - Jumppoints_2265ae4 - 2
.hword branch_2265cec - Jumppoints_2265ae4 - 2
.hword branch_2265d32 - Jumppoints_2265ae4 - 2
.thumb
branch_2265aee: @ 2265aee :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	mov     r0, #0x80
	strh    r0, [r4, #0x14]
	mov     r0, #0xa0
	strh    r0, [r4, #0x16]
	mov     r0, #0x40
	str     r0, [r4, #0x18]
	mov     r0, #0x18
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xa8
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	add     r0, #0xb4
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xa0
	add     r0, #0xb6
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x40
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x18
	add     r0, #0xbc
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r3, #0x1
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	lsl     r3, r3, #20
	bl      0x200d67c
	ldrh    r0, [r4, #0x8]
	bl      0x201d250
	mov     r1, #0x14
	ldsh    r1, [r4, r1]
	lsl     r2, r1, #12
	ldr     r1, [r4, #0x18]
	mul     r0, r1
	add     r5, r2, r0
	ldrh    r0, [r4, #0x8]
	bl      0x201d264
	mov     r1, #0x16
	ldsh    r1, [r4, r1]
	mov     r3, #0x1
	lsl     r3, r3, #20
	lsl     r2, r1, #12
	ldr     r1, [r4, #0x1c]
	mul     r0, r1
	add     r6, r2, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, r6
	bl      0x200d650
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22658c8
	mov     r2, #0x2d
	mov     r3, r0
	mov     r0, r4
	lsl     r2, r2, #14
	add     r0, #0x20
	mov     r1, r5
	add     r2, r5, r2
	bl      Function_2264764
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22658c8
	mov     r2, #0x6
	mov     r3, r0
	mov     r0, r4
	lsl     r2, r2, #14
	add     r0, #0x38
	mov     r1, r6
	sub     r2, r6, r2
	bl      Function_2264764
	mov     r0, r4
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	lsl     r3, r3, #20
	bl      0x200d67c
	mov     r0, r4
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	mov     r1, #0xb4
	ldsh    r1, [r4, r1]
	lsl     r2, r1, #12
	mov     r1, r4
	add     r1, #0xb8
	ldr     r1, [r1, #0x0]
	mul     r0, r1
	add     r6, r2, r0
	mov     r0, r4
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d264
	mov     r1, #0xb6
	ldsh    r1, [r4, r1]
	mov     r3, #0x1
	lsl     r3, r3, #20
	lsl     r2, r1, #12
	mov     r1, r4
	add     r1, #0xbc
	ldr     r1, [r1, #0x0]
	mul     r0, r1
	sub     r5, r2, r0
	mov     r0, r4
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	mov     r2, r5
	bl      0x200d650
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22658c8
	mov     r2, #0x2d
	mov     r3, r0
	mov     r0, r4
	lsl     r2, r2, #14
	add     r0, #0xc0
	mov     r1, r6
	sub     r2, r6, r2
	bl      Function_2264764
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22658c8
	mov     r2, #0x6
	mov     r3, r0
	mov     r0, r4
	lsl     r2, r2, #14
	add     r0, #0xd8
	mov     r1, r5
	add     r2, r5, r2
	bl      Function_2264764
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2265c5e: @ 2265c5e :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2265fd4
	mov     r1, #0x52
	lsl     r1, r1, #2
	mov     r5, r0
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	cmp     r5, #0x0
	beq     branch_2265d7e
	cmp     r0, #0x0
	beq     branch_2265d7e
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     sp, #0x8
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x2265ca6

.thumb
branch_2265ca6: @ 2265ca6 :thumb
	sub     r1, #0x38
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r1, #0x52
	lsl     r1, r1, #2
	mov     r5, r0
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2265d8c
	cmp     r5, #0x0
	beq     branch_2265d7e
	cmp     r0, #0x0
	beq     branch_2265d7e
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     sp, #0x8
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x2265cec

.thumb
branch_2265cec: @ 2265cec :thumb
	sub     r1, #0x38
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x52
	lsl     r1, r1, #2
	mov     r5, r0
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	cmp     r5, #0x0
	beq     branch_2265d7e
	cmp     r0, #0x0
	beq     branch_2265d7e
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     sp, #0x8
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x2265d32

.thumb
branch_2265d32: @ 2265d32 :thumb
	sub     r1, #0x38
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2265fd4
	mov     r1, #0x52
	lsl     r1, r1, #2
	mov     r5, r0
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2265d8c
	cmp     r5, #0x0
	beq     branch_2265d7e
	cmp     r0, #0x0
	beq     branch_2265d7e
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     sp, #0x8
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x2265d78

.thumb
branch_2265d78: @ 2265d78 :thumb
	mov     r0, r5
	bl      0x200da58
.thumb
branch_2265d7e: @ 2265d7e :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2265d82


.align 2, 0


.thumb
Function_2265d84: @ 2265d84 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2265d8a


.align 2, 0


.thumb
Function_2265d8c: @ 2265d8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_2265da4
	cmp     r0, #0x1
	beq     branch_2265e2c
	b       branch_2265e56
@ 0x2265da4

.thumb
branch_2265da4: @ 2265da4 :thumb
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	lsl     r3, r3, #20
	bl      0x200d67c
	cmp     r6, #0x0
	bne     branch_2265dd2
	mov     r0, r4
	ldr     r6, [sp, #0x4]
	bl      Function_22658c8
	mov     r2, #0x2d
	mov     r3, r0
	mov     r0, r5
	lsl     r2, r2, #14
	add     r0, #0x20
	mov     r1, r6
	sub     r2, r6, r2
	bl      Function_2264764
	b       branch_2265dec
@ 0x2265dd2

.thumb
branch_2265dd2: @ 2265dd2 :thumb
	mov     r0, r4
	ldr     r6, [sp, #0x4]
	bl      Function_22658c8
	mov     r2, #0x2d
	mov     r3, r0
	mov     r0, r5
	lsl     r2, r2, #14
	add     r0, #0x20
	mov     r1, r6
	add     r2, r6, r2
	bl      Function_2264764
.thumb
branch_2265dec: @ 2265dec :thumb
	cmp     r7, #0x2
	bne     branch_2265e0c
	mov     r0, r4
	ldr     r6, [sp, #0x0]
	bl      Function_22658c8
	mov     r2, #0x6
	mov     r3, r0
	mov     r0, r5
	lsl     r2, r2, #14
	add     r0, #0x38
	mov     r1, r6
	sub     r2, r6, r2
	bl      Function_2264764
	b       branch_2265e26
@ 0x2265e0c

.thumb
branch_2265e0c: @ 2265e0c :thumb
	mov     r0, r4
	ldr     r6, [sp, #0x0]
	bl      Function_22658c8
	mov     r2, #0x6
	mov     r3, r0
	mov     r0, r5
	lsl     r2, r2, #14
	add     r0, #0x38
	mov     r1, r6
	add     r2, r6, r2
	bl      Function_2264764
.thumb
branch_2265e26: @ 2265e26 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_2265e2c: @ 2265e2c :thumb
	mov     r0, r5
	add     r0, #0x20
	bl      Function_2264774
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x38
	bl      Function_2264774
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r5, #0x38]
	lsl     r3, r3, #20
	bl      0x200d650
	cmp     r4, #0x0
	beq     branch_2265e5c
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2265e56

.thumb
branch_2265e56: @ 2265e56 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2265e5c

.thumb
branch_2265e5c: @ 2265e5c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2265e62


.align 2, 0


.thumb
Function_2265e64: @ 2265e64 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r6, r3
	cmp     r0, #0x0
	beq     branch_2265e78
	cmp     r0, #0x1
	beq     branch_2265ee8
	b       branch_2265f10
@ 0x2265e78

.thumb
branch_2265e78: @ 2265e78 :thumb
	cmp     r2, #0x0
	bne     branch_2265e96
	mov     r0, r4
	bl      Function_22658c8
	mov     r3, r0
	mov     r0, r5
	mov     r1, #0x4d
	mov     r2, #0x2
	add     r0, #0x20
	lsl     r1, r1, #14
	lsl     r2, r2, #18
	bl      Function_2264764
	b       branch_2265eac
@ 0x2265e96

.thumb
branch_2265e96: @ 2265e96 :thumb
	mov     r0, r4
	bl      Function_22658c8
	mov     r3, r0
	mov     r0, r5
	mov     r2, #0x2
	ldr     r1, [pc, #0x74] @ 0x2265f18, (=0xfffc2000)
	add     r0, #0x20
	lsl     r2, r2, #18
	bl      Function_2264764
.thumb
branch_2265eac: @ 2265eac :thumb
	cmp     r6, #0x2
	bne     branch_2265eca
	mov     r0, r4
	bl      Function_22658c8
	mov     r3, r0
	mov     r0, r5
	mov     r1, #0xa
	mov     r2, #0x22
	add     r0, #0x38
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	bl      Function_2264764
	b       branch_2265ee2
@ 0x2265eca

.thumb
branch_2265eca: @ 2265eca :thumb
	mov     r0, r4
	bl      Function_22658c8
	mov     r3, r0
	mov     r0, r5
	mov     r1, #0xa
	mov     r2, #0x2e
	add     r0, #0x38
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	bl      Function_2264764
.thumb
branch_2265ee2: @ 2265ee2 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_2265ee8: @ 2265ee8 :thumb
	mov     r0, r5
	add     r0, #0x20
	bl      Function_2264774
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x38
	bl      Function_2264774
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r5, #0x38]
	lsl     r3, r3, #20
	bl      0x200d650
	cmp     r4, #0x0
	beq     branch_2265f14
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2265f10

.thumb
branch_2265f10: @ 2265f10 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2265f14

.thumb
branch_2265f14: @ 2265f14 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2265f18

.word 0xfffc2000 @ 0x2265f18
.thumb
Function_2265f1c: @ 2265f1c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r6, r3
	cmp     r0, #0x0
	beq     branch_2265f30
	cmp     r0, #0x1
	beq     branch_2265fa0
	b       branch_2265fc8
@ 0x2265f30

.thumb
branch_2265f30: @ 2265f30 :thumb
	cmp     r2, #0x0
	bne     branch_2265f4e
	mov     r0, r4
	bl      Function_22658c8
	mov     r3, r0
	mov     r0, r5
	mov     r1, #0x4d
	mov     r2, #0x2
	add     r0, #0x20
	lsl     r1, r1, #14
	lsl     r2, r2, #18
	bl      Function_2264764
	b       branch_2265f64
@ 0x2265f4e

.thumb
branch_2265f4e: @ 2265f4e :thumb
	mov     r0, r4
	bl      Function_22658c8
	mov     r3, r0
	mov     r0, r5
	mov     r2, #0x2
	ldr     r1, [pc, #0x74] @ 0x2265fd0, (=0xfffc2000)
	add     r0, #0x20
	lsl     r2, r2, #18
	bl      Function_2264764
.thumb
branch_2265f64: @ 2265f64 :thumb
	cmp     r6, #0x2
	bne     branch_2265f82
	mov     r0, r4
	bl      Function_22658c8
	mov     r3, r0
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x12
	add     r0, #0x38
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	bl      Function_2264764
	b       branch_2265f9a
@ 0x2265f82

.thumb
branch_2265f82: @ 2265f82 :thumb
	mov     r0, r4
	bl      Function_22658c8
	mov     r3, r0
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x1e
	add     r0, #0x38
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	bl      Function_2264764
.thumb
branch_2265f9a: @ 2265f9a :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_2265fa0: @ 2265fa0 :thumb
	mov     r0, r5
	add     r0, #0x20
	bl      Function_2264774
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x38
	bl      Function_2264774
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r5, #0x38]
	lsl     r3, r3, #20
	bl      0x200d650
	cmp     r4, #0x0
	beq     branch_2265fcc
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2265fc8

.thumb
branch_2265fc8: @ 2265fc8 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2265fcc

.thumb
branch_2265fcc: @ 2265fcc :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2265fd0

.word 0xfffc2000 @ 0x2265fd0
.thumb
Function_2265fd4: @ 2265fd4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r5, r2
	mov     r6, r3
	cmp     r0, #0x0
	beq     branch_2265fea
	cmp     r0, #0x1
	beq     branch_2265ff6
	b       branch_226609a
@ 0x2265fea

.thumb
branch_2265fea: @ 2265fea :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	strh    r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_2265ff6: @ 2265ff6 :thumb
	mov     r0, r1
	bl      Function_22658c8
	mov     r1, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	blx     _s32_div_f
	mov     r1, #0x8
	ldsh    r2, [r4, r1]
	add     r0, r2, r0
	strh    r0, [r4, #0x8]
	mov     r0, #0x5a
	ldsh    r1, [r4, r1]
	lsl     r0, r0, #2
	cmp     r1, r0
	blt     branch_226601c
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
.thumb
branch_226601c: @ 226601c :thumb
	mov     r3, #0x1
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	lsl     r3, r3, #20
	bl      0x200d67c
	cmp     r5, #0x0
	ldrh    r0, [r4, #0x8]
	bne     branch_2266048
	bl      0x201d250
	mov     r1, #0x14
	ldsh    r1, [r4, r1]
	lsl     r2, r1, #12
	ldr     r1, [r4, #0x18]
	mul     r0, r1
	sub     r5, r2, r0
	ldrh    r0, [r4, #0x8]
	bl      0x201d264
	b       branch_226605e
@ 0x2266048

.thumb
branch_2266048: @ 2266048 :thumb
	bl      0x201d250
	mov     r1, #0x14
	ldsh    r1, [r4, r1]
	lsl     r2, r1, #12
	ldr     r1, [r4, #0x18]
	mul     r0, r1
	add     r5, r2, r0
	ldrh    r0, [r4, #0x8]
	bl      0x201d264
.thumb
branch_226605e: @ 226605e :thumb
	mov     r1, #0x16
	ldsh    r1, [r4, r1]
	mov     r3, #0x1
	lsl     r3, r3, #20
	lsl     r2, r1, #12
	ldr     r1, [r4, #0x1c]
	mul     r0, r1
	sub     r2, r2, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      0x200d650
	mov     r0, #0x8
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22660a0
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
	cmp     r0, r6
	blt     branch_2266094
	ldr     r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2266094

.thumb
branch_2266094: @ 2266094 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22660a0
@ 0x226609a

.thumb
branch_226609a: @ 226609a :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22660a0

.thumb
branch_22660a0: @ 22660a0 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22660a6


.align 2, 0


.thumb
Function_22660a8: @ 22660a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r3, [pc, #0x50] @ 0x2266100, (=0x2267d20)
	add     r2, sp, #0xc
	mov     r5, r0
	mov     r4, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_22660d2
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_22660dc
.thumb
branch_22660d2: @ 22660d2 :thumb
	mov     r0, r5
	bl      0x200da58
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22660dc

.thumb
branch_22660dc: @ 22660dc :thumb
	mov     r1, r0
	sub     r1, #0x14
	ldr     r1, [r4, r1]
	cmp     r1, #0x4
	bls     branch_22660e8
	b       branch_2266442
@ 0x22660e8

.thumb
branch_22660e8: @ 22660e8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22660f4

Jumppoints_22660f4:
.hword branch_2266104 - Jumppoints_22660f4 - 2
.hword branch_226623c - Jumppoints_22660f4 - 2
.hword branch_22662be - Jumppoints_22660f4 - 2
.hword branch_226633a - Jumppoints_22660f4 - 2
.hword branch_22663b6 - Jumppoints_22660f4 - 2

.align 2


.word 0x2267d20 @ 0x2266100
.thumb
branch_2266104: @ 2266104 :thumb
	sub     r0, #0x3c
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_226620c
	mov     r5, r4
.thumb
branch_2266112: @ 2266112 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x8]
	mov     r0, #0x80
	strh    r0, [r5, #0x14]
	mov     r0, #0xa0
	strh    r0, [r5, #0x16]
	mov     r0, #0x40
	str     r0, [r5, #0x18]
	mov     r0, #0x18
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r1, r5
	add     r1, #0xa8
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb4
	mov     r0, #0x80
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb6
	mov     r0, #0xa0
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb8
	mov     r0, #0x40
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xbc
	mov     r0, #0x18
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #20
	bl      0x200d67c
	ldrh    r0, [r5, #0x8]
	bl      0x201d250
	mov     r1, #0x14
	ldsh    r1, [r5, r1]
	lsl     r6, r1, #12
	ldr     r1, [r5, #0x18]
	mov     r7, r1
	mul     r7, r0
	ldrh    r0, [r5, #0x8]
	bl      0x201d264
	mov     r1, #0x16
	ldsh    r1, [r5, r1]
	lsl     r3, r1, #12
	ldr     r1, [r5, #0x1c]
	mov     r2, r1
	mul     r2, r0
	add     r2, r3, r2
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, r6, r7
	lsl     r3, r3, #20
	bl      0x200d650
	mov     r0, r5
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #20
	bl      0x200d67c
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	mov     r1, #0xb4
	ldsh    r1, [r5, r1]
	lsl     r6, r1, #12
	mov     r1, r5
	add     r1, #0xb8
	ldr     r1, [r1, #0x0]
	mov     r7, r1
	mul     r7, r0
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d264
	mov     r1, #0xb6
	mov     r2, r5
	ldsh    r1, [r5, r1]
	add     r2, #0xbc
	ldr     r2, [r2, #0x0]
	lsl     r1, r1, #12
	mul     r0, r2
	sub     r2, r1, r0
	mov     r0, r5
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, r6, r7
	lsl     r3, r3, #20
	bl      0x200d650
	ldr     r0, [sp, #0x0]
	add     r5, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	blt     branch_2266112
.thumb
branch_226620c: @ 226620c :thumb
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	ldr     r0, [r4, #0x50]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_226623c: @ 226623c :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	mov     r2, #0x1
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x14]
	str     r2, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266310
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266310
	cmp     r0, #0x0
	beq     branch_2266310
	cmp     r2, #0x0
	beq     branch_2266310
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	ldr     r0, [r4, #0x50]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_22662be: @ 22662be :thumb
	mov     r3, #0x1
	mov     r1, #0x51
	mov     r0, r4
	str     r3, [sp, #0xc]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	bl      Function_2265fd4
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2265d8c
	mov     r1, #0x52
	str     r0, [sp, #0x14]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266310
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266310
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266310
	cmp     r0, #0x0
	bne     branch_2266312
.thumb
branch_2266310: @ 2266310 :thumb
	b       branch_2266448
@ 0x2266312

.thumb
branch_2266312: @ 2266312 :thumb
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_226633a: @ 226633a :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r2, #0x1
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	mov     r0, r4
	str     r2, [sp, #0x14]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r3, #0x2
	bl      Function_2265d8c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266448
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266448
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266448
	cmp     r0, #0x0
	beq     branch_2266448
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_22663b6: @ 22663b6 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2265fd4
	mov     r2, #0x1
	mov     r1, #0x52
	str     r0, [sp, #0xc]
	mov     r0, r4
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r3, #0x2
	bl      Function_2265d8c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266448
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266448
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266448
	cmp     r0, #0x0
	beq     branch_2266448
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	beq     branch_226642e
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, #0x1
	add     r1, #0x1c
	add     sp, #0x1c
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x226642e

.thumb
branch_226642e: @ 226642e :thumb
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x1c
	ldr     r0, [r4, r0]
	add     r1, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	add     sp, #0x1c
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x2266442

.thumb
branch_2266442: @ 2266442 :thumb
	mov     r0, r5
	bl      0x200da58
.thumb
branch_2266448: @ 2266448 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x226644c

.thumb
Function_226644c: @ 226644c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r3, [pc, #0x50] @ 0x22664a4, (=0x2267d10)
	add     r2, sp, #0xc
	mov     r5, r0
	mov     r4, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2266476
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_2266480
.thumb
branch_2266476: @ 2266476 :thumb
	mov     r0, r5
	bl      0x200da58
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2266480

.thumb
branch_2266480: @ 2266480 :thumb
	mov     r1, r0
	sub     r1, #0x14
	ldr     r1, [r4, r1]
	cmp     r1, #0x4
	bls     branch_226648c
	b       branch_22667e8
@ 0x226648c

.thumb
branch_226648c: @ 226648c :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2266498

Jumppoints_2266498:
.hword branch_22664a8 - Jumppoints_2266498 - 2
.hword branch_22665e0 - Jumppoints_2266498 - 2
.hword branch_2266662 - Jumppoints_2266498 - 2
.hword branch_22666e0 - Jumppoints_2266498 - 2
.hword branch_226675c - Jumppoints_2266498 - 2

.align 2


.word 0x2267d10 @ 0x22664a4
.thumb
branch_22664a8: @ 22664a8 :thumb
	sub     r0, #0x3c
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_22665b0
	mov     r5, r4
.thumb
branch_22664b6: @ 22664b6 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x8]
	mov     r0, #0x80
	strh    r0, [r5, #0x14]
	mov     r0, #0xa0
	strh    r0, [r5, #0x16]
	mov     r0, #0x40
	str     r0, [r5, #0x18]
	mov     r0, #0x18
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r1, r5
	add     r1, #0xa8
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb4
	mov     r0, #0x80
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb6
	mov     r0, #0xa0
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb8
	mov     r0, #0x40
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xbc
	mov     r0, #0x18
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #20
	bl      0x200d67c
	ldrh    r0, [r5, #0x8]
	bl      0x201d250
	mov     r1, #0x14
	ldsh    r1, [r5, r1]
	lsl     r6, r1, #12
	ldr     r1, [r5, #0x18]
	mov     r7, r1
	mul     r7, r0
	ldrh    r0, [r5, #0x8]
	bl      0x201d264
	mov     r1, #0x16
	ldsh    r1, [r5, r1]
	lsl     r3, r1, #12
	ldr     r1, [r5, #0x1c]
	mov     r2, r1
	mul     r2, r0
	add     r2, r3, r2
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, r6, r7
	lsl     r3, r3, #20
	bl      0x200d650
	mov     r0, r5
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #20
	bl      0x200d67c
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	mov     r1, #0xb4
	ldsh    r1, [r5, r1]
	lsl     r6, r1, #12
	mov     r1, r5
	add     r1, #0xb8
	ldr     r1, [r1, #0x0]
	mov     r7, r1
	mul     r7, r0
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d264
	mov     r1, #0xb6
	mov     r2, r5
	ldsh    r1, [r5, r1]
	add     r2, #0xbc
	ldr     r2, [r2, #0x0]
	lsl     r1, r1, #12
	mul     r0, r2
	sub     r2, r1, r0
	mov     r0, r5
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, r6, r7
	lsl     r3, r3, #20
	bl      0x200d650
	ldr     r0, [sp, #0x0]
	add     r5, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	blt     branch_22664b6
.thumb
branch_22665b0: @ 22665b0 :thumb
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	ldr     r0, [r4, #0x50]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_22665e0: @ 22665e0 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	mov     r2, #0x1
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x14]
	str     r2, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_22666b6
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_22666b6
	cmp     r0, #0x0
	beq     branch_22666b6
	cmp     r2, #0x0
	beq     branch_22666b6
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	ldr     r0, [r4, #0x50]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266662: @ 2266662 :thumb
	mov     r0, #0x1
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265fd4
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2265d8c
	mov     r1, #0x52
	str     r0, [sp, #0x14]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_22666b6
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_22666b6
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_22666b6
	cmp     r0, #0x0
	bne     branch_22666b8
.thumb
branch_22666b6: @ 22666b6 :thumb
	b       branch_22667ee
@ 0x22666b8

.thumb
branch_22666b8: @ 22666b8 :thumb
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_22666e0: @ 22666e0 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r2, #0x1
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	mov     r0, r4
	str     r2, [sp, #0x14]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r3, #0x2
	bl      Function_2265d8c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_22667ee
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_22667ee
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_22667ee
	cmp     r0, #0x0
	beq     branch_22667ee
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_226675c: @ 226675c :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265fd4
	mov     r2, #0x1
	mov     r1, #0x52
	str     r0, [sp, #0xc]
	mov     r0, r4
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r3, #0x2
	bl      Function_2265d8c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_22667ee
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_22667ee
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_22667ee
	cmp     r0, #0x0
	beq     branch_22667ee
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	beq     branch_22667d4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, #0x1
	add     r1, #0x1c
	add     sp, #0x1c
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x22667d4

.thumb
branch_22667d4: @ 22667d4 :thumb
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x1c
	ldr     r0, [r4, r0]
	add     r1, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	add     sp, #0x1c
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x22667e8

.thumb
branch_22667e8: @ 22667e8 :thumb
	mov     r0, r5
	bl      0x200da58
.thumb
branch_22667ee: @ 22667ee :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22667f2


.align 2, 0


.thumb
Function_22667f4: @ 22667f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r3, [pc, #0x54] @ 0x2266850, (=0x2267d30)
	add     r2, sp, #0xc
	mov     r5, r0
	mov     r4, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_226681e
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_2266828
.thumb
branch_226681e: @ 226681e :thumb
	mov     r0, r5
	bl      0x200da58
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2266828

.thumb
branch_2266828: @ 2266828 :thumb
	mov     r1, r0
	sub     r1, #0x14
	ldr     r1, [r4, r1]
	cmp     r1, #0x6
	bls     branch_2266834
	b       branch_2266be6
@ 0x2266834

.thumb
branch_2266834: @ 2266834 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2266840

Jumppoints_2266840:
.hword branch_2266854 - Jumppoints_2266840 - 2
.hword branch_226698c - Jumppoints_2266840 - 2
.hword branch_2266a0e - Jumppoints_2266840 - 2
.hword branch_2266a88 - Jumppoints_2266840 - 2
.hword branch_2266ab4 - Jumppoints_2266840 - 2
.hword branch_2266b30 - Jumppoints_2266840 - 2
.hword branch_2266b9a - Jumppoints_2266840 - 2

.align 2


.word 0x2267d30 @ 0x2266850
.thumb
branch_2266854: @ 2266854 :thumb
	sub     r0, #0x3c
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_226695c
	mov     r5, r4
.thumb
branch_2266862: @ 2266862 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x8]
	mov     r0, #0x80
	strh    r0, [r5, #0x14]
	mov     r0, #0xa0
	strh    r0, [r5, #0x16]
	mov     r0, #0x40
	str     r0, [r5, #0x18]
	mov     r0, #0x18
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r1, r5
	add     r1, #0xa8
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb4
	mov     r0, #0x80
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb6
	mov     r0, #0xa0
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb8
	mov     r0, #0x40
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xbc
	mov     r0, #0x18
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #20
	bl      0x200d67c
	ldrh    r0, [r5, #0x8]
	bl      0x201d250
	mov     r1, #0x14
	ldsh    r1, [r5, r1]
	lsl     r6, r1, #12
	ldr     r1, [r5, #0x18]
	mov     r7, r1
	mul     r7, r0
	ldrh    r0, [r5, #0x8]
	bl      0x201d264
	mov     r1, #0x16
	ldsh    r1, [r5, r1]
	lsl     r3, r1, #12
	ldr     r1, [r5, #0x1c]
	mov     r2, r1
	mul     r2, r0
	add     r2, r3, r2
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, r6, r7
	lsl     r3, r3, #20
	bl      0x200d650
	mov     r0, r5
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #20
	bl      0x200d67c
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	mov     r1, #0xb4
	ldsh    r1, [r5, r1]
	lsl     r6, r1, #12
	mov     r1, r5
	add     r1, #0xb8
	ldr     r1, [r1, #0x0]
	mov     r7, r1
	mul     r7, r0
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d264
	mov     r1, #0xb6
	mov     r2, r5
	ldsh    r1, [r5, r1]
	add     r2, #0xbc
	ldr     r2, [r2, #0x0]
	lsl     r1, r1, #12
	mul     r0, r2
	sub     r2, r1, r0
	mov     r0, r5
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, r6, r7
	lsl     r3, r3, #20
	bl      0x200d650
	ldr     r0, [sp, #0x0]
	add     r5, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	blt     branch_2266862
.thumb
branch_226695c: @ 226695c :thumb
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	ldr     r0, [r4, #0x50]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_226698c: @ 226698c :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	mov     r2, #0x1
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x14]
	str     r2, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266aa0
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266aa0
	cmp     r0, #0x0
	beq     branch_2266aa0
	cmp     r2, #0x0
	beq     branch_2266aa0
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	ldr     r0, [r4, #0x50]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266a0e: @ 2266a0e :thumb
	mov     r3, #0x1
	mov     r1, #0x51
	mov     r0, r4
	str     r3, [sp, #0xc]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	bl      Function_2265fd4
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2265d8c
	mov     r1, #0x52
	str     r0, [sp, #0x14]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266aa0
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266aa0
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266aa0
	cmp     r0, #0x0
	beq     branch_2266aa0
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266a88: @ 2266a88 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r3, r2
	bl      Function_2265fd4
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2266aa2
.thumb
branch_2266aa0: @ 2266aa0 :thumb
	b       branch_2266bec
@ 0x2266aa2

.thumb
branch_2266aa2: @ 2266aa2 :thumb
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266ab4: @ 2266ab4 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r2, #0x1
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	mov     r0, r4
	str     r2, [sp, #0x14]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r3, #0x2
	bl      Function_2265d8c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266bec
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266bec
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266bec
	cmp     r0, #0x0
	beq     branch_2266bec
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266b30: @ 2266b30 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2265fd4
	mov     r2, #0x1
	mov     r1, #0x52
	str     r0, [sp, #0xc]
	mov     r0, r4
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r3, #0x2
	bl      Function_2265d8c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266bec
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266bec
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266bec
	cmp     r0, #0x0
	beq     branch_2266bec
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266b9a: @ 2266b9a :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r3, r2
	bl      Function_2265fd4
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_2266bec
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	beq     branch_2266bd2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, #0x1
	add     r1, #0x1c
	add     sp, #0x1c
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x2266bd2

.thumb
branch_2266bd2: @ 2266bd2 :thumb
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x1c
	ldr     r0, [r4, r0]
	add     r1, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	add     sp, #0x1c
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x2266be6

.thumb
branch_2266be6: @ 2266be6 :thumb
	mov     r0, r5
	bl      0x200da58
.thumb
branch_2266bec: @ 2266bec :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2266bf0

.thumb
Function_2266bf0: @ 2266bf0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r3, [pc, #0x54] @ 0x2266c4c, (=0x2267d50)
	add     r2, sp, #0xc
	mov     r5, r0
	mov     r4, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2266c1a
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_2266c24
.thumb
branch_2266c1a: @ 2266c1a :thumb
	mov     r0, r5
	bl      0x200da58
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2266c24

.thumb
branch_2266c24: @ 2266c24 :thumb
	mov     r1, r0
	sub     r1, #0x14
	ldr     r1, [r4, r1]
	cmp     r1, #0x6
	bls     branch_2266c30
	b       branch_2266fe2
@ 0x2266c30

.thumb
branch_2266c30: @ 2266c30 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2266c3c

Jumppoints_2266c3c:
.hword branch_2266c50 - Jumppoints_2266c3c - 2
.hword branch_2266d88 - Jumppoints_2266c3c - 2
.hword branch_2266e0a - Jumppoints_2266c3c - 2
.hword branch_2266e84 - Jumppoints_2266c3c - 2
.hword branch_2266eb0 - Jumppoints_2266c3c - 2
.hword branch_2266f2c - Jumppoints_2266c3c - 2
.hword branch_2266f96 - Jumppoints_2266c3c - 2

.align 2


.word 0x2267d50 @ 0x2266c4c
.thumb
branch_2266c50: @ 2266c50 :thumb
	sub     r0, #0x3c
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2266d58
	mov     r5, r4
.thumb
branch_2266c5e: @ 2266c5e :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x8]
	mov     r0, #0x80
	strh    r0, [r5, #0x14]
	mov     r0, #0xa0
	strh    r0, [r5, #0x16]
	mov     r0, #0x40
	str     r0, [r5, #0x18]
	mov     r0, #0x18
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r1, r5
	add     r1, #0xa8
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb4
	mov     r0, #0x80
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb6
	mov     r0, #0xa0
	strh    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb8
	mov     r0, #0x40
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xbc
	mov     r0, #0x18
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #20
	bl      0x200d67c
	ldrh    r0, [r5, #0x8]
	bl      0x201d250
	mov     r1, #0x14
	ldsh    r1, [r5, r1]
	lsl     r6, r1, #12
	ldr     r1, [r5, #0x18]
	mov     r7, r1
	mul     r7, r0
	ldrh    r0, [r5, #0x8]
	bl      0x201d264
	mov     r1, #0x16
	ldsh    r1, [r5, r1]
	lsl     r3, r1, #12
	ldr     r1, [r5, #0x1c]
	mov     r2, r1
	mul     r2, r0
	add     r2, r3, r2
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, r6, r7
	lsl     r3, r3, #20
	bl      0x200d650
	mov     r0, r5
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #20
	bl      0x200d67c
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	mov     r1, #0xb4
	ldsh    r1, [r5, r1]
	lsl     r6, r1, #12
	mov     r1, r5
	add     r1, #0xb8
	ldr     r1, [r1, #0x0]
	mov     r7, r1
	mul     r7, r0
	mov     r0, r5
	add     r0, #0xa8
	ldrh    r0, [r0, #0x0]
	bl      0x201d264
	mov     r1, #0xb6
	mov     r2, r5
	ldsh    r1, [r5, r1]
	add     r2, #0xbc
	ldr     r2, [r2, #0x0]
	lsl     r1, r1, #12
	mul     r0, r2
	sub     r2, r1, r0
	mov     r0, r5
	add     r0, #0xa0
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, r6, r7
	lsl     r3, r3, #20
	bl      0x200d650
	ldr     r0, [sp, #0x0]
	add     r5, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	blt     branch_2266c5e
.thumb
branch_2266d58: @ 2266d58 :thumb
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	ldr     r0, [r4, #0x50]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266d88: @ 2266d88 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	mov     r2, #0x1
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x14]
	str     r2, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266e9c
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266e9c
	cmp     r0, #0x0
	beq     branch_2266e9c
	cmp     r2, #0x0
	beq     branch_2266e9c
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	ldr     r0, [r4, #0x50]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266e0a: @ 2266e0a :thumb
	mov     r3, #0x1
	mov     r1, #0x51
	mov     r0, r4
	str     r3, [sp, #0xc]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	bl      Function_2265fd4
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2265d8c
	mov     r1, #0x52
	str     r0, [sp, #0x14]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2265f1c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266e9c
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266e9c
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266e9c
	cmp     r0, #0x0
	beq     branch_2266e9c
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266e84: @ 2266e84 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r3, r2
	bl      Function_2265fd4
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2266e9e
.thumb
branch_2266e9c: @ 2266e9c :thumb
	b       branch_2266fe8
@ 0x2266e9e

.thumb
branch_2266e9e: @ 2266e9e :thumb
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266eb0: @ 2266eb0 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2265e64
	mov     r1, #0x51
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf0
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2265d8c
	mov     r2, #0x1
	mov     r1, #0x52
	str     r0, [sp, #0x10]
	mov     r0, r4
	str     r2, [sp, #0x14]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r3, #0x2
	bl      Function_2265d8c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266fe8
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266fe8
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266fe8
	cmp     r0, #0x0
	beq     branch_2266fe8
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266f2c: @ 2266f2c :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2265fd4
	mov     r2, #0x1
	mov     r1, #0x52
	str     r0, [sp, #0xc]
	mov     r0, r4
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     r0, #0x50
	mov     r3, #0x2
	bl      Function_2265d8c
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	cmp     r1, #0x0
	beq     branch_2266fe8
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_2266fe8
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2266fe8
	cmp     r0, #0x0
	beq     branch_2266fe8
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0xf0
	bl      Function_2265d84
	mov     r0, r4
	bl      Function_2265d84
	mov     r0, r4
	add     r0, #0x50
	bl      Function_2265d84
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2266f96: @ 2266f96 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	mov     r0, r4
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	add     r0, #0xa0
	mov     r3, r2
	bl      Function_2265fd4
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_2266fe8
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_2265d84
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	cmp     r0, #0x8
	beq     branch_2266fce
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, #0x1
	add     r1, #0x1c
	add     sp, #0x1c
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x2266fce

.thumb
branch_2266fce: @ 2266fce :thumb
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x1c
	ldr     r0, [r4, r0]
	add     r1, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	add     sp, #0x1c
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x2266fe2

.thumb
branch_2266fe2: @ 2266fe2 :thumb
	mov     r0, r5
	bl      0x200da58
.thumb
branch_2266fe8: @ 2266fe8 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2266fec

.thumb
Function_2266fec: @ 2266fec :thumb
	mov     r1, #0xfe
	lsl     r1, r1, #22
	str     r1, [r0, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	bx      lr
@ 0x2266ffc

.thumb
Function_2266ffc: @ 2266ffc :thumb
	mov     r3, r0
	mov     r2, r1
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	bx      lr
@ 0x226700a


.align 2, 0


.thumb
Function_226700c: @ 226700c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r4, r2
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	blx     0x20e18b0
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x4]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, r7
	blx     0x20e1a9c
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	ldr     r1, [r4, #0x8]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, r7
	blx     0x20e1a9c
	mov     r7, r0
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0xc]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, r7
	blx     0x20e1a9c
	str     r0, [r6, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r1, [r4, #0xc]
	blx     0x20e18b0
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x4]
	blx     0x20e18b0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x0]
	blx     0x20e18b0
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	blx     _fadd
	mov     r1, r0
	mov     r0, r7
	blx     _fadd
	mov     r7, r0
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0x8]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, r7
	blx     0x20e1a9c
	str     r0, [r6, #0x4]
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0x4]
	blx     0x20e18b0
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	ldr     r1, [r4, #0x0]
	blx     0x20e18b0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x8]
	blx     0x20e18b0
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0xc]
	blx     0x20e18b0
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	blx     0x20e1a9c
	mov     r1, r0
	ldr     r0, [sp, #0x4]
	blx     _fadd
	mov     r1, r0
	mov     r0, r7
	blx     _fadd
	str     r0, [r6, #0x8]
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0x0]
	blx     0x20e18b0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0xc]
	blx     0x20e18b0
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, r7
	blx     _fadd
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	ldr     r1, [r4, #0x4]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, r7
	blx     0x20e1a9c
	mov     r1, r0
	ldr     r0, [sp, #0xc]
	blx     _fadd
	str     r0, [r6, #0xc]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x226711a


.align 2, 0


.thumb
Function_226711c: @ 226711c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r1, r0
	blx     _fadd
	mov     r4, r0
	ldr     r0, [r5, #0x8]
	mov     r1, r0
	blx     _fadd
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r0
	blx     0x20e18b0
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r0
	blx     _fadd
	mov     r1, r0
	mov     r0, r7
	blx     _fadd
	mov     r1, r0
	mov     r0, r6
	blx     _fadd
	mov     r1, r0
	mov     r0, r4
	blx     _fadd
	pop     {r3-r7,pc}
@ 0x2267160

.thumb
Function_2267160: @ 2267160 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_226711c
	mov     r1, #0x0
	blx     0x20e1108
	bls     branch_226718a
	mov     r0, r4
	bl      Function_226711c
	mov     r1, r0
	ldr     r0, [pc, #0x38] @ 0x22671b4, (=0x45800000)
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22671a0
@ 0x226718a

.thumb
branch_226718a: @ 226718a :thumb
	mov     r0, r4
	bl      Function_226711c
	mov     r1, r0
	ldr     r0, [pc, #0x20] @ 0x22671b4, (=0x45800000)
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22671a0: @ 22671a0 :thumb
	blx     0x20e1740
	blx     0x20bcff0
	blx     0x20e17b4
	ldr     r1, [pc, #0x4] @ 0x22671b4, (=0x45800000)
	blx     _fdiv
	pop     {r4,pc}
@ 0x22671b4

.word 0x45800000 @ 0x22671b4
.thumb
Function_22671b8: @ 22671b8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	blx     _fdiv
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	blx     _fdiv
	str     r0, [r5, #0x4]
	ldr     r0, [r4, #0x8]
	mov     r1, r6
	blx     _fdiv
	str     r0, [r5, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, r6
	blx     _fdiv
	str     r0, [r5, #0xc]
	pop     {r4-r6,pc}
@ 0x22671ea


.align 2, 0


.thumb
Function_22671ec: @ 22671ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r0
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x8]
	mov     r1, r0
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0xc]
	mov     r1, r0
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0xc]
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0xc]
	ldr     r1, [r5, #0x4]
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x0]
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x0]
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	mov     r7, r0
	ldr     r0, [r5, #0xc]
	ldr     r1, [r5, #0x0]
	blx     0x20e18b0
	blx     0x20e16bc
	mov     r3, r1
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, #0x0
	lsl     r1, r1, #30
	blx     0x20e0234
	blx     _d2f
	mov     r5, r0
	ldr     r0, [sp, #0xc]
	blx     0x20e16bc
	mov     r3, r1
	mov     r2, r0
	ldr     r1, [pc, #0xd8] @ 0x22673f8, (=0x3ff00000)
	mov     r0, #0x0
	blx     _dsub
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x4]
	mov     r0, r6
	blx     0x20e16bc
	mov     r2, r0
	mov     r3, r1
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x4]
	blx     _dsub
	blx     _d2f
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	blx     _fadd
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x18]
	mov     r1, r7
	blx     0x20e1a9c
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	blx     0x20e1a9c
	str     r0, [r4, #0x10]
	mov     r0, r6
	blx     0x20e16bc
	mov     r3, r1
	mov     r2, r0
	ldr     r1, [pc, #0x88] @ 0x22673f8, (=0x3ff00000)
	mov     r0, #0x0
	blx     _dsub
	mov     r6, r0
	ldr     r0, [sp, #0x8]
	mov     r5, r1
	blx     0x20e16bc
	mov     r2, r0
	mov     r3, r1
	mov     r0, r6
	mov     r1, r5
	blx     _dsub
	blx     _d2f
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	blx     _fadd
	str     r0, [r4, #0x18]
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldr     r0, [sp, #0x18]
	mov     r1, r7
	blx     _fadd
	str     r0, [r4, #0x20]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	blx     0x20e1a9c
	str     r0, [r4, #0x24]
	ldr     r0, [sp, #0x8]
	blx     0x20e16bc
	mov     r3, r1
	mov     r2, r0
	ldr     r1, [pc, #0x38] @ 0x22673f8, (=0x3ff00000)
	mov     r0, #0x0
	blx     _dsub
	mov     r6, r0
	ldr     r0, [sp, #0xc]
	mov     r5, r1
	blx     0x20e16bc
	mov     r2, r0
	mov     r3, r1
	mov     r0, r6
	mov     r1, r5
	blx     _dsub
	blx     _d2f
	str     r0, [r4, #0x28]
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	str     r0, [r4, #0x30]
	str     r0, [r4, #0x34]
	str     r0, [r4, #0x38]
	mov     r0, #0xfe
	lsl     r0, r0, #22
	str     r0, [r4, #0x3c]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22673f6


.align 2


.word 0x3ff00000 @ 0x22673f8
.thumb
Function_22673fc: @ 22673fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x318] @ 0x2267724, (=0x45800000)
	bls     branch_2267420
	ldr     r1, [r5, #0x0]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226742e
@ 0x2267420

.thumb
branch_2267420: @ 2267420 :thumb
	ldr     r1, [r5, #0x0]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_226742e: @ 226742e :thumb
	blx     0x20e1740
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x2e4] @ 0x2267724, (=0x45800000)
	bls     branch_2267452
	ldr     r1, [r5, #0x4]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2267460
@ 0x2267452

.thumb
branch_2267452: @ 2267452 :thumb
	ldr     r1, [r5, #0x4]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2267460: @ 2267460 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x2b4] @ 0x2267724, (=0x45800000)
	bls     branch_2267484
	ldr     r1, [r5, #0x8]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2267492
@ 0x2267484

.thumb
branch_2267484: @ 2267484 :thumb
	ldr     r1, [r5, #0x8]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2267492: @ 2267492 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x280] @ 0x2267724, (=0x45800000)
	bls     branch_22674b6
	ldr     r1, [r5, #0xc]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22674c4
@ 0x22674b6

.thumb
branch_22674b6: @ 22674b6 :thumb
	ldr     r1, [r5, #0xc]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22674c4: @ 22674c4 :thumb
	blx     0x20e1740
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x250] @ 0x2267724, (=0x45800000)
	bls     branch_22674e8
	ldr     r1, [r5, #0x10]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22674f6
@ 0x22674e8

.thumb
branch_22674e8: @ 22674e8 :thumb
	ldr     r1, [r5, #0x10]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22674f6: @ 22674f6 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x21c] @ 0x2267724, (=0x45800000)
	bls     branch_226751a
	ldr     r1, [r5, #0x14]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2267528
@ 0x226751a

.thumb
branch_226751a: @ 226751a :thumb
	ldr     r1, [r5, #0x14]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2267528: @ 2267528 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x14]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x1ec] @ 0x2267724, (=0x45800000)
	bls     branch_226754c
	ldr     r1, [r5, #0x18]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226755a
@ 0x226754c

.thumb
branch_226754c: @ 226754c :thumb
	ldr     r1, [r5, #0x18]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_226755a: @ 226755a :thumb
	blx     0x20e1740
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x1b8] @ 0x2267724, (=0x45800000)
	bls     branch_226757e
	ldr     r1, [r5, #0x1c]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226758c
@ 0x226757e

.thumb
branch_226757e: @ 226757e :thumb
	ldr     r1, [r5, #0x1c]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_226758c: @ 226758c :thumb
	blx     0x20e1740
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0x20]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x188] @ 0x2267724, (=0x45800000)
	bls     branch_22675b0
	ldr     r1, [r5, #0x20]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22675be
@ 0x22675b0

.thumb
branch_22675b0: @ 22675b0 :thumb
	ldr     r1, [r5, #0x20]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22675be: @ 22675be :thumb
	blx     0x20e1740
	str     r0, [r4, #0x20]
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x154] @ 0x2267724, (=0x45800000)
	bls     branch_22675e2
	ldr     r1, [r5, #0x24]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22675f0
@ 0x22675e2

.thumb
branch_22675e2: @ 22675e2 :thumb
	ldr     r1, [r5, #0x24]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22675f0: @ 22675f0 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x24]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x124] @ 0x2267724, (=0x45800000)
	bls     branch_2267614
	ldr     r1, [r5, #0x28]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2267622
@ 0x2267614

.thumb
branch_2267614: @ 2267614 :thumb
	ldr     r1, [r5, #0x28]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2267622: @ 2267622 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x28]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0xf0] @ 0x2267724, (=0x45800000)
	bls     branch_2267646
	ldr     r1, [r5, #0x2c]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2267654
@ 0x2267646

.thumb
branch_2267646: @ 2267646 :thumb
	ldr     r1, [r5, #0x2c]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2267654: @ 2267654 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x2c]
	ldr     r0, [r5, #0x30]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0xc0] @ 0x2267724, (=0x45800000)
	bls     branch_2267678
	ldr     r1, [r5, #0x30]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2267686
@ 0x2267678

.thumb
branch_2267678: @ 2267678 :thumb
	ldr     r1, [r5, #0x30]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_2267686: @ 2267686 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x30]
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x8c] @ 0x2267724, (=0x45800000)
	bls     branch_22676aa
	ldr     r1, [r5, #0x34]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22676b8
@ 0x22676aa

.thumb
branch_22676aa: @ 22676aa :thumb
	ldr     r1, [r5, #0x34]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22676b8: @ 22676b8 :thumb
	blx     0x20e1740
	str     r0, [r4, #0x34]
	ldr     r0, [r5, #0x38]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x5c] @ 0x2267724, (=0x45800000)
	bls     branch_22676dc
	ldr     r1, [r5, #0x38]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22676ea
@ 0x22676dc

.thumb
branch_22676dc: @ 22676dc :thumb
	ldr     r1, [r5, #0x38]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_22676ea: @ 22676ea :thumb
	blx     0x20e1740
	str     r0, [r4, #0x38]
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x0
	blx     0x20e1108
	ldr     r0, [pc, #0x28] @ 0x2267724, (=0x45800000)
	bls     branch_226770e
	ldr     r1, [r5, #0x3c]
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226771c
@ 0x226770e

.thumb
branch_226770e: @ 226770e :thumb
	ldr     r1, [r5, #0x3c]
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_226771c: @ 226771c :thumb
	blx     0x20e1740
	str     r0, [r4, #0x3c]
	pop     {r3-r5,pc}
@ 0x2267724

.word 0x45800000 @ 0x2267724
.thumb
Function_2267728: @ 2267728 :thumb
	push    {r4,lr}
	add     sp, #-0x40
	mov     r4, r1
	add     r1, sp, #0x0
	bl      Function_22673fc
	add     r0, sp, #0x0
	mov     r1, r4
	blx     0x20bc4a0
	add     sp, #0x40
	pop     {r4,pc}
@ 0x2267740


Jumptable_2267740: @ 0x2267740
.word Function_2260440+1 @ =0x2260441, 0x2267740
.word Function_226048c+1 @ =0x226048d, 0x2267744
.word 0x0 @ 0x2267748
.word Function_2260458+1 @ =0x2260459, 0x226774c
.word Function_2260488+1 @ =0x2260489, 0x2267750
.word 0x0 @ 0x2267754
.word Function_2260464+1 @ =0x2260465, 0x2267758
.word Function_2260490+1 @ =0x2260491, 0x226775c
.word 0x0 @ 0x2267760
.word Function_2260478+1 @ =0x2260479, 0x2267764
.word Function_2260494+1 @ =0x2260495, 0x2267768
.word 0x0 @ 0x226776c
.word Function_2260484+1 @ =0x2260485, 0x2267770
.word Function_2260498+1 @ =0x2260499, 0x2267774
@ 0x2267778


.incbin "./baserom/overlay/overlay_0116.bin", 0x7338, 0x2268060 - 0x2267778


@end 0x2268060




