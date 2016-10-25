

@ 0x19f400 in arm9.bin

.section .iwram10, "ax"


.thumb
Function_221f800: @ 221f800 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x54] @ 0x221f85c, (=#0x221f871)
	ldr     r1, [pc, #0x58] @ 0x221f860, (=#0xbd4)
	ldr     r3, [r5, #0x24]
	mov     r2, #0x64
	bl      0x200679c
	bl      0x201ced0
	ldr     r2, [pc, #0x48] @ 0x221f860, (=#0xbd4)
	mov     r1, #0x0
	mov     r4, r0
	blx 0x20d5124
	ldr     r0, [pc, #0x44] @ 0x221f864, (=#0xb7f)
	str     r5, [r4, #0x0]
	mov     r1, #0x0
	strb    r1, [r4, r0]
	bl      0x202fac0
	ldr     r1, [pc, #0x3c] @ 0x221f868, (=#0xbc8)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_221f858
	ldr     r0, [r4, #0x0]
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_221f858
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_221f858
	bl      0x207d990
	ldr     r1, [pc, #0x20] @ 0x221f86c, (=#0x1d1)
	ldr     r3, [r5, #0x24]
	mov     r2, #0x1
	bl      0x207d688
	ldr     r1, [pc, #0x10] @ 0x221f868, (=#0xbc8)
	str     r0, [r4, r1]
.thumb
branch_221f858: @ 221f858 :thumb
	pop     {r3-r5,pc}
@ 0x221f85a


.align 2


.word 0x221f871 @ 0x221f85c
.word 0xbd4 @ 0x221f860
.word 0xb7f @ 0x221f864
.word 0xbc8 @ 0x221f868
.word 0x1d1 @ 0x221f86c
.thumb
Function_221f870: @ 221f870 :thumb
	push    {r4-r6,lr}
	ldr     r2, [pc, #0x84] @ 0x221f8f8, (=#0xb7f)
	mov     r5, r1
	ldrb    r2, [r5, r2]
	cmp     r2, #0x0
	beq     branch_221f886
	cmp     r2, #0x1
	beq     branch_221f892
	cmp     r2, #0x2
	beq     branch_221f8c4
	b       branch_221f8cc
@ 0x221f886

.thumb
branch_221f886: @ 221f886 :thumb
	mov     r0, r5
	bl      Function_221fb28
	ldr     r1, [pc, #0x68] @ 0x221f8f8, (=#0xb7f)
	strb    r0, [r5, r1]
	b       branch_221f8cc
@ 0x221f892

.thumb
branch_221f892: @ 221f892 :thumb
	mov     r4, #0x2e
	lsl     r4, r4, #6
	mov     r6, r4
.thumb
branch_221f898: @ 221f898 :thumb
	ldrb    r1, [r5, r6]
	ldr     r2, [r5, #0x4]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	blx     r1
	cmp     r0, #0x0
	beq     branch_221f8ae
	ldrb    r1, [r5, r4]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r4]
.thumb
branch_221f8ae: @ 221f8ae :thumb
	cmp     r0, #0x2
	beq     branch_221f898
	ldr     r0, [r5, #0x0]
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_221f8cc
	mov     r0, r5
	bl      Function_221f930
	b       branch_221f8cc
@ 0x221f8c4

.thumb
branch_221f8c4: @ 221f8c4 :thumb
	bl      Function_2220a50
	cmp     r0, #0x1
	beq     branch_221f8f6
.thumb
branch_221f8cc: @ 221f8cc :thumb
	mov     r0, #0x2e
	lsl     r0, r0, #6
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_221f8e6
	mov     r0, r5
	bl      Function_2220c2c
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200c7ec
.thumb
branch_221f8e6: @ 221f8e6 :thumb
	ldr     r0, [r5, #0x0]
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_221f8f6
	ldr     r0, [pc, #0x8] @ 0x221f8fc, (=#0x4000540)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_221f8f6: @ 221f8f6 :thumb
	pop     {r4-r6,pc}
@ 0x221f8f8

.word 0xb7f @ 0x221f8f8
.word 0x4000540 @ 0x221f8fc
.thumb
Function_221f900: @ 221f900 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x24] @ 0x221f92c, (=#0x2222c10)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_221f90a: @ 221f90a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_221f90a
	add     r0, sp, #0x0
	bl      0x201fe94
	mov     r1, #0x6
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #18
	blx 0x20c4b4c
	add     sp, #0x28
	pop     {r4,pc}
@ 0x221f92a


.align 2


.word 0x2222c10 @ 0x221f92c
.thumb
Function_221f930: @ 221f930 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2222a08
	cmp     r0, #0x0
	bne     branch_221f940
	b       branch_221fb08
@ 0x221f940

.thumb
branch_221f940: @ 221f940 :thumb
	ldr     r2, [pc, #0x1c8] @ 0x221fb0c, (=#0xbbc)
	ldr     r0, [r4, r2]
	cmp     r0, #0x8
	bhi     branch_221f9ba
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x221f954

Jumppoints_221f954:
.hword branch_221fb08 - Jumppoints_221f954 - 2
.hword branch_221f966 - Jumppoints_221f954 - 2
.hword branch_221f9a6 - Jumppoints_221f954 - 2
.hword branch_221f9c4 - Jumppoints_221f954 - 2
.hword branch_221fa5c - Jumppoints_221f954 - 2
.hword branch_221fa98 - Jumppoints_221f954 - 2
.hword branch_221fb08 - Jumppoints_221f954 - 2
.hword branch_221fad8 - Jumppoints_221f954 - 2
.hword branch_221fb08 - Jumppoints_221f954 - 2
.thumb
branch_221f966: @ 221f966 :thumb
	mov     r0, r4
	bl      Function_22229d4
	ldr     r2, [pc, #0x1a0] @ 0x221fb10, (=#0xbac)
	mov     r1, #0x0
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r2, [pc, #0x194] @ 0x221fb14, (=#0xb88)
	str     r3, [sp, #0x4]
	add     r0, r4, r2
	str     r3, [sp, #0x8]
	add     r2, #0x2c
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x184] @ 0x221fb18, (=#0xbb8)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x201c3c0
	ldr     r0, [pc, #0x16c] @ 0x221fb0c, (=#0xbbc)
	mov     r1, #0x2
	add     sp, #0xc
	str     r1, [r4, r0]
	pop     {r3,r4,pc}
@ 0x221f9a6

.thumb
branch_221f9a6: @ 221f9a6 :thumb
	mov     r0, r2
	add     r0, #0xc
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_221f9ba
	ldr     r0, [pc, #0x168] @ 0x221fb1c, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_221f9bc
.thumb
branch_221f9ba: @ 221f9ba :thumb
	b       branch_221fb08
@ 0x221f9bc

.thumb
branch_221f9bc: @ 221f9bc :thumb
	mov     r0, #0x3
	add     sp, #0xc
	str     r0, [r4, r2]
	pop     {r3,r4,pc}
@ 0x221f9c4

.thumb
branch_221f9c4: @ 221f9c4 :thumb
	mov     r0, r2
	add     r0, #0x10
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_221f9e0
	mov     r0, r2
	sub     r0, #0x10
	sub     r2, #0x8
	ldr     r0, [r4, r0]
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	bl      0x200b1b8
	b       branch_221f9f0
@ 0x221f9e0

.thumb
branch_221f9e0: @ 221f9e0 :thumb
	mov     r0, r2
	sub     r0, #0x10
	sub     r2, #0x8
	ldr     r0, [r4, r0]
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	bl      0x200b1b8
.thumb
branch_221f9f0: @ 221f9f0 :thumb
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x124] @ 0x221fb20, (=#0xb98)
	mov     r2, #0x0
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x118] @ 0x221fb20, (=#0xb98)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x1
	mov     r3, #0xf
	bl      0x200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r2, [pc, #0x104] @ 0x221fb20, (=#0xb98)
	str     r3, [sp, #0x4]
	add     r0, r4, r2
	str     r3, [sp, #0x8]
	add     r2, #0x1c
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0xec] @ 0x221fb18, (=#0xbb8)
	mov     r2, #0x1f
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xec] @ 0x221fb24, (=#0x2222a68)
	ldr     r0, [r0, #0x24]
	mov     r3, #0xe
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	bl      0x2002054
	mov     r1, #0x2f
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x201c3c0
	ldr     r0, [pc, #0xb8] @ 0x221fb0c, (=#0xbbc)
	mov     r1, #0x4
	add     sp, #0xc
	str     r1, [r4, r0]
	pop     {r3,r4,pc}
@ 0x221fa5c

.thumb
branch_221fa5c: @ 221fa5c :thumb
	ldr     r1, [r4, #0x0]
	add     r0, r2, #0x4
	ldr     r0, [r4, r0]
	ldr     r1, [r1, #0x24]
	bl      0x2002114
	cmp     r0, #0x0
	beq     branch_221fa78
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_221fa88
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x221fa78

.thumb
branch_221fa78: @ 221fa78 :thumb
	ldr     r0, [pc, #0x90] @ 0x221fb0c, (=#0xbbc)
	mov     r1, #0x5
	str     r1, [r4, r0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	add     sp, #0xc
	str     r1, [r4, r0]
	pop     {r3,r4,pc}
@ 0x221fa88

.thumb
branch_221fa88: @ 221fa88 :thumb
	ldr     r0, [pc, #0x80] @ 0x221fb0c, (=#0xbbc)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	add     sp, #0xc
	str     r1, [r4, r0]
	pop     {r3,r4,pc}
@ 0x221fa98

.thumb
branch_221fa98: @ 221fa98 :thumb
	mov     r0, r4
	bl      Function_22229d4
	ldr     r2, [pc, #0x70] @ 0x221fb10, (=#0xbac)
	mov     r1, #0x5
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r2, [pc, #0x60] @ 0x221fb14, (=#0xb88)
	str     r3, [sp, #0x4]
	add     r0, r4, r2
	str     r3, [sp, #0x8]
	add     r2, #0x2c
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x54] @ 0x221fb18, (=#0xbb8)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x201c3c0
	ldr     r0, [pc, #0x3c] @ 0x221fb0c, (=#0xbbc)
	mov     r1, #0x6
	add     sp, #0xc
	str     r1, [r4, r0]
	pop     {r3,r4,pc}
@ 0x221fad8

.thumb
branch_221fad8: @ 221fad8 :thumb
	add     r0, r2, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_221faf0
	ldr     r1, [r4, #0x0]
	ldr     r1, [r1, #0x24]
	bl      0x2002154
	mov     r0, #0x2f
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
.thumb
branch_221faf0: @ 221faf0 :thumb
	ldr     r0, [pc, #0x20] @ 0x221fb14, (=#0xb88)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200e084
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x201c3c0
	ldr     r0, [pc, #0x8] @ 0x221fb0c, (=#0xbbc)
	mov     r1, #0x8
	str     r1, [r4, r0]
.thumb
branch_221fb08: @ 221fb08 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x221fb0c

.word 0xbbc @ 0x221fb0c
.word 0xbac @ 0x221fb10
.word 0xb88 @ 0x221fb14
.word 0xbb8 @ 0x221fb18
.word 0x21bf67c @ 0x221fb1c
.word 0xb98 @ 0x221fb20
.word 0x2222a68 @ 0x221fb24
.thumb
Function_221fb28: @ 221fb28 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0xb0] @ 0x221fbdc, (=#0x4000050)
	mov     r4, r0
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x94] @ 0x221fbe0, (=#0xffffe0ff)
	ldr     r3, [pc, #0x94] @ 0x221fbe4, (=#0x4001000)
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
	bl      Function_221f900
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2018340
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2002f38
	str     r0, [r4, #0x8]
	ldr     r3, [r4, #0x0]
	mov     r2, #0x2
	ldr     r3, [r3, #0x24]
	mov     r1, #0x0
	lsl     r2, r2, #8
	bl      0x2002f70
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	ldr     r0, [pc, #0x54] @ 0x221fbe8, (=#0xb82)
	mov     r3, #0x0
	strb    r3, [r4, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r2, #0x8
	strb    r2, [r4, r1]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r3, [r4, r0]
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_221fbb6
	cmp     r0, #0x1
	beq     branch_221fbbc
	cmp     r0, #0x2
	beq     branch_221fbc2
	b       branch_221fbd8
@ 0x221fbb6

.thumb
branch_221fbb6: @ 221fbb6 :thumb
	ldr     r0, [pc, #0x34] @ 0x221fbec, (=#0x2222ad0)
	str     r0, [r4, #0x4]
	b       branch_221fbd8
@ 0x221fbbc

.thumb
branch_221fbbc: @ 221fbbc :thumb
	ldr     r0, [pc, #0x30] @ 0x221fbf0, (=#0x2222aa8)
	str     r0, [r4, #0x4]
	b       branch_221fbd8
@ 0x221fbc2

.thumb
branch_221fbc2: @ 221fbc2 :thumb
	add     r1, #0x2a
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x3
	bne     branch_221fbce
	ldr     r0, [pc, #0x28] @ 0x221fbf4, (=#0x2222c38)
	b       branch_221fbd0
@ 0x221fbce

.thumb
branch_221fbce: @ 221fbce :thumb
	ldr     r0, [pc, #0x28] @ 0x221fbf8, (=#0x2222ca8)
.thumb
branch_221fbd0: @ 221fbd0 :thumb
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_22227a4
.thumb
branch_221fbd8: @ 221fbd8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x221fbdc

.word 0x4000050 @ 0x221fbdc
.word 0xffffe0ff @ 0x221fbe0
.word 0x4001000 @ 0x221fbe4
.word 0xb82 @ 0x221fbe8
.word 0x2222ad0 @ 0x221fbec
.word 0x2222aa8 @ 0x221fbf0
.word 0x2222c38 @ 0x221fbf4
.word 0x2222ca8 @ 0x221fbf8
.thumb
Function_221fbfc: @ 221fbfc :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x70] @ 0x221fc70, (=#0xb82)
	mov     r4, r0
	ldrb    r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_221fc12
	cmp     r2, #0x1
	beq     branch_221fc1e
	cmp     r2, #0x2
	beq     branch_221fc2a
	b       branch_221fc64
@ 0x221fc12

.thumb
branch_221fc12: @ 221fc12 :thumb
	bl      Function_2221970
	mov     r0, r4
	bl      Function_2221a3c
	b       branch_221fc64
@ 0x221fc1e

.thumb
branch_221fc1e: @ 221fc1e :thumb
	bl      Function_2221e58
	mov     r0, r4
	bl      Function_2222050
	b       branch_221fc64
@ 0x221fc2a

.thumb
branch_221fc2a: @ 221fc2a :thumb
	mov     r2, #0x0
	strb    r2, [r4, r1]
	mov     r2, #0x20
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r2, [r4, r1]
	bl      Function_2221ae4
	mov     r0, r4
	bl      Function_22223c0
	mov     r0, r4
	bl      Function_2222720
	mov     r0, r4
	bl      Function_2221c14
	bl      0x2039734
	ldr     r1, [r4, #0x0]
	mov     r0, #0x0
	ldr     r1, [r1, #0x24]
	bl      0x208c120
	ldr     r0, [pc, #0x18] @ 0x221fc74, (=#0x2220c65)
	mov     r1, r4
	bl      0x2017798
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x221fc64

.thumb
branch_221fc64: @ 221fc64 :thumb
	ldr     r0, [pc, #0x8] @ 0x221fc70, (=#0xb82)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x221fc70

.word 0xb82 @ 0x221fc70
.word 0x2220c65 @ 0x221fc74
.thumb
Function_221fc78: @ 221fc78 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x7c] @ 0x221fcf8, (=#0xb82)
	mov     r4, r0
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_221fc8e
	cmp     r1, #0x1
	beq     branch_221fca2
	cmp     r1, #0x2
	beq     branch_221fcbc
	b       branch_221fcea
@ 0x221fc8e

.thumb
branch_221fc8e: @ 221fc8e :thumb
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2220c94
	mov     r0, r4
	bl      Function_2220e70
	bl      Function_2221004
	b       branch_221fcea
@ 0x221fca2

.thumb
branch_221fca2: @ 221fca2 :thumb
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_22214a0
	mov     r0, r4
	bl      Function_222101c
	bl      0x2039734
	mov     r0, r4
	bl      Function_22217cc
	b       branch_221fcea
@ 0x221fcbc

.thumb
branch_221fcbc: @ 221fcbc :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, #0x0
	ldr     r1, [r1, #0x24]
	bl      0x208c120
	ldr     r0, [pc, #0x34] @ 0x221fcfc, (=#0x2220c65)
	mov     r1, r4
	bl      0x2017798
	ldr     r1, [pc, #0x28] @ 0x221fcf8, (=#0xb82)
	mov     r0, #0x0
	strb    r0, [r4, r1]
	mov     r2, #0x8
	.hword  0x1f88 @ sub r0, r1, #0x6
	strb    r2, [r4, r0]
	.hword  0x1f48 @ sub r0, r1, #0x5
	mov     r2, #0x4
	strb    r2, [r4, r0]
	mov     r0, #0x10
	sub     r1, #0xe
	str     r0, [r4, r1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x221fcea

.thumb
branch_221fcea: @ 221fcea :thumb
	ldr     r0, [pc, #0xc] @ 0x221fcf8, (=#0xb82)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x221fcf6


.align 2


.word 0xb82 @ 0x221fcf8
.word 0x2220c65 @ 0x221fcfc
.thumb
Function_221fd00: @ 221fd00 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0xf4] @ 0x221fdf8, (=#0xb82)
	mov     r5, r0
	ldrb    r1, [r5, r1]
	cmp     r1, #0x0
	beq     branch_221fd16
	cmp     r1, #0x1
	beq     branch_221fd72
	cmp     r1, #0x2
	beq     branch_221fd8a
	b       branch_221fdea
@ 0x221fd16

.thumb
branch_221fd16: @ 221fd16 :thumb
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2220c94
	mov     r0, r5
	bl      Function_2220e70
	mov     r0, r5
	bl      Function_2220f1c
	bl      Function_2221004
	ldr     r2, [r5, #0x0]
	mov     r0, #0x7
	ldr     r1, [r2, #0x0]
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	ldr     r1, [r2, #0x24]
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      0x202f330
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x221fdfc, (=#0xbcc)
	mov     r4, #0x0
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r4, [r5, r0]
.thumb
branch_221fd4e: @ 221fd4e :thumb
	mov     r0, r4
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_221fd6a
	bl      0x2025fcc
	cmp     r0, #0x0
	bne     branch_221fd6a
	mov     r0, #0xbd
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_221fdea
@ 0x221fd6a

.thumb
branch_221fd6a: @ 221fd6a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x8
	blt     branch_221fd4e
	b       branch_221fdea
@ 0x221fd72

.thumb
branch_221fd72: @ 221fd72 :thumb
	mov     r1, #0x1f
	mvn     r1, r1
	mov     r2, r1
	add     r2, #0x10
	bl      Function_22214a0
	mov     r0, r5
	bl      Function_2221588
	bl      0x2039734
	b       branch_221fdea
@ 0x221fd8a

.thumb
branch_221fd8a: @ 221fd8a :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x0
	ldr     r1, [r1, #0x24]
	bl      0x208c120
	ldr     r0, [pc, #0x68] @ 0x221fe00, (=#0x2220c65)
	mov     r1, r5
	bl      0x2017798
	ldr     r2, [pc, #0x58] @ 0x221fdf8, (=#0xb82)
	mov     r0, #0x0
	strb    r0, [r5, r2]
	mov     r3, #0x4
	.hword  0x1f91 @ sub r1, r2, #0x6
	strb    r3, [r5, r1]
	.hword  0x1f51 @ sub r1, r2, #0x5
	mov     r3, #0x2
	strb    r3, [r5, r1]
	mov     r1, #0xc
	sub     r2, #0xe
	str     r1, [r5, r2]
	ldr     r3, [r5, #0x0]
	ldr     r2, [pc, #0x4c] @ 0x221fe04, (=#0x25d)
	ldr     r3, [r3, #0x24]
	mov     r1, #0x1a
	bl      0x200b144
	ldr     r1, [pc, #0x44] @ 0x221fe08, (=#0xbac)
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x200b358
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x5
	ldr     r1, [r1, #0x24]
	lsl     r0, r0, #6
	bl      0x2023790
	ldr     r1, [pc, #0x2c] @ 0x221fe0c, (=#0xbb4)
	str     r0, [r5, r1]
	mov     r0, #0x1
	add     r1, #0x8
	str     r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x221fdea

.thumb
branch_221fdea: @ 221fdea :thumb
	ldr     r0, [pc, #0xc] @ 0x221fdf8, (=#0xb82)
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x221fdf6


.align 2


.word 0xb82 @ 0x221fdf8
.word 0xbcc @ 0x221fdfc
.word 0x2220c65 @ 0x221fe00
.word 0x25d @ 0x221fe04
.word 0xbac @ 0x221fe08
.word 0xbb4 @ 0x221fe0c
.thumb
Function_221fe10: @ 221fe10 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_221fe20
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x221fe20

.thumb
branch_221fe20: @ 221fe20 :thumb
	ldr     r1, [pc, #0x20] @ 0x221fe44, (=#0xb81)
	add     r0, r1, #0x1
	ldrb    r2, [r4, r1]
	ldrb    r0, [r4, r0]
	cmp     r2, r0
	bne     branch_221fe36
	mov     r2, #0x0
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x221fe36

.thumb
branch_221fe36: @ 221fe36 :thumb
	add     r0, r1, #0x1
	ldrb    r0, [r4, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x221fe44

.word 0xb81 @ 0x221fe44
.thumb
Function_221fe48: @ 221fe48 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      0x20192ec
	cmp     r0, #0x18
	bgt     branch_221fee4
	ldr     r1, [pc, #0x1b0] @ 0x222000c, (=#0xb82)
	mov     r2, #0x0
	mov     r0, r1
	strb    r2, [r4, r1]
	sub     r0, #0xa
	strh    r2, [r4, r0]
	sub     r1, #0x8
	strh    r2, [r4, r1]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	mov     r3, #0x18
	bl      0x201c63c
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	sub     r3, #0x18
	bl      0x201c63c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2221188
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2221188
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2221188
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2221188
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2221440
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2221440
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2221440
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2221440
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x221fee4

.thumb
branch_221fee4: @ 221fee4 :thumb
	ldr     r3, [pc, #0x128] @ 0x2220010, (=#0xb74)
	ldr     r0, [r4, #0xc]
	ldr     r3, [r4, r3]
	mov     r1, #0x3
	mov     r2, #0x2
	bl      0x201c63c
	ldr     r3, [pc, #0x11c] @ 0x2220010, (=#0xb74)
	ldr     r0, [r4, #0xc]
	ldr     r3, [r4, r3]
	mov     r1, #0x2
	mov     r2, #0x1
	bl      0x201c63c
	ldr     r3, [pc, #0x108] @ 0x222000c, (=#0xb82)
	mov     r1, #0x0
	ldrb    r0, [r4, r3]
	mov     r2, r3
	sub     r2, #0xe
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r3]
	ldr     r5, [r4, r2]
	ldrb    r2, [r4, r3]
	mov     r3, r5
	mov     r0, r4
	mul     r3, r2
	mov     r2, #0x1
	lsl     r2, r2, #8
	sub     r2, r3, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	mov     r3, r1
	bl      Function_2221188
	ldr     r2, [pc, #0xe4] @ 0x2220010, (=#0xb74)
	mov     r1, #0x1
	ldr     r3, [r4, r2]
	add     r2, #0xe
	mov     r5, r3
	ldrb    r2, [r4, r2]
	mov     r0, r4
	mov     r3, #0x0
	mul     r5, r2
	mov     r2, r1
	add     r2, #0xff
	sub     r2, r5, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0xc4] @ 0x2220010, (=#0xb74)
	mov     r1, #0x2
	ldr     r3, [r4, r2]
	add     r2, #0xe
	mov     r5, r3
	ldrb    r2, [r4, r2]
	mov     r0, r4
	mov     r3, #0x0
	mul     r5, r2
	mov     r2, r1
	add     r2, #0xfe
	sub     r2, r2, r5
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0xa4] @ 0x2220010, (=#0xb74)
	mov     r1, #0x3
	ldr     r3, [r4, r2]
	add     r2, #0xe
	mov     r5, r3
	ldrb    r2, [r4, r2]
	mov     r0, r4
	mov     r3, #0x0
	mul     r5, r2
	mov     r2, r1
	add     r2, #0xfd
	sub     r2, r2, r5
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0x84] @ 0x2220010, (=#0xb74)
	mov     r1, #0x0
	ldr     r3, [r4, r2]
	add     r2, #0xe
	mov     r5, r3
	ldrb    r2, [r4, r2]
	mov     r0, r4
	mov     r3, r1
	mul     r5, r2
	mov     r2, #0x1
	lsl     r2, r2, #8
	sub     r2, r5, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x64] @ 0x2220010, (=#0xb74)
	mov     r1, #0x1
	ldr     r3, [r4, r2]
	add     r2, #0xe
	mov     r5, r3
	ldrb    r2, [r4, r2]
	mov     r0, r4
	mov     r3, #0x0
	mul     r5, r2
	mov     r2, r1
	add     r2, #0xff
	sub     r2, r5, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x44] @ 0x2220010, (=#0xb74)
	mov     r1, #0x2
	ldr     r3, [r4, r2]
	add     r2, #0xe
	mov     r5, r3
	ldrb    r2, [r4, r2]
	mov     r0, r4
	mov     r3, #0x0
	mul     r5, r2
	mov     r2, r1
	add     r2, #0xfe
	sub     r2, r2, r5
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x24] @ 0x2220010, (=#0xb74)
	mov     r0, r4
	ldr     r3, [r4, r2]
	add     r2, #0xe
	ldrb    r2, [r4, r2]
	mov     r4, r3
	mov     r1, #0x3
	mul     r4, r2
	mov     r2, r1
	add     r2, #0xfd
	sub     r2, r2, r4
	lsl     r2, r2, #16
	asr     r2, r2, #16
	mov     r3, #0x0
	bl      Function_2221440
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222000c

.word 0xb82 @ 0x222000c
.word 0xb74 @ 0x2220010
.thumb
Function_2220014: @ 2220014 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_22218bc
	cmp     r0, #0x0
	bne     branch_2220030
	ldr     r0, [pc, #0x1ec] @ 0x2220210, (=#0xb82)
	ldrb    r1, [r5, r0]
	cmp     r1, #0x18
	bls     branch_2220030
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2220030

.thumb
branch_2220030: @ 2220030 :thumb
	ldr     r0, [pc, #0x1dc] @ 0x2220210, (=#0xb82)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2220050
	ldr     r0, [r5, #0x0]
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_222004a
	ldr     r0, [pc, #0x1d0] @ 0x2220214, (=#0x715)
	bl      0x2005748
	b       branch_2220050
@ 0x222004a

.thumb
branch_222004a: @ 222004a :thumb
	ldr     r0, [pc, #0x1cc] @ 0x2220218, (=#0x852)
	bl      0x2005748
.thumb
branch_2220050: @ 2220050 :thumb
	ldr     r0, [pc, #0x1bc] @ 0x2220210, (=#0xb82)
	ldrb    r1, [r5, r0]
	cmp     r1, #0x18
	bne     branch_22200ec
	ldr     r0, [r5, #0xc]
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r3, #0x18
	bl      0x201c63c
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	sub     r3, #0x18
	bl      0x201c63c
	mov     r1, #0x3
	ldr     r0, [r5, #0xc]
	mov     r2, r1
	mov     r3, #0x0
	bl      0x201c63c
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      0x201c63c
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_2221188
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2221188
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2221188
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2221188
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_2221440
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2221440
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2221440
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2221440
	b       branch_2220204
@ 0x22200ec

.thumb
branch_22200ec: @ 22200ec :thumb
	bcc     branch_22200f0
	b       branch_2220204
@ 0x22200f0

.thumb
branch_22200f0: @ 22200f0 :thumb
	.hword  0x1f80 @ sub r0, r0, #0x6
	ldsb    r4, [r5, r0]
	bl      0x201d2e8
	mov     r1, r4
	blx 0x20e1f6c
	lsr     r0, r4, #31
	add     r0, r4, r0
	asr     r0, r0, #1
	sub     r0, r1, r0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [pc, #0x110] @ 0x222021c, (=#0xb7d)
	ldsb    r4, [r5, r0]
	bl      0x201d2e8
	mov     r1, r4
	blx 0x20e1f6c
	lsr     r0, r4, #31
	add     r0, r4, r0
	asr     r0, r0, #1
	sub     r0, r1, r0
	lsl     r0, r0, #16
	asr     r4, r0, #16
	cmp     r6, #0x0
	bge     branch_2220130
	ldr     r0, [pc, #0xf4] @ 0x2220220, (=#0xb78)
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	blt     branch_222013c
.thumb
branch_2220130: @ 2220130 :thumb
	cmp     r6, #0x0
	ble     branch_2220146
	ldr     r0, [pc, #0xe8] @ 0x2220220, (=#0xb78)
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2220146
.thumb
branch_222013c: @ 222013c :thumb
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r6
	lsl     r0, r0, #16
	asr     r6, r0, #16
.thumb
branch_2220146: @ 2220146 :thumb
	cmp     r4, #0x0
	bge     branch_2220152
	ldr     r0, [pc, #0xd8] @ 0x2220224, (=#0xb7a)
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	blt     branch_222015e
.thumb
branch_2220152: @ 2220152 :thumb
	cmp     r4, #0x0
	ble     branch_2220168
	ldr     r0, [pc, #0xcc] @ 0x2220224, (=#0xb7a)
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2220168
.thumb
branch_222015e: @ 222015e :thumb
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r4
	lsl     r0, r0, #16
	asr     r4, r0, #16
.thumb
branch_2220168: @ 2220168 :thumb
	mov     r3, r6
	ldr     r0, [r5, #0xc]
	mov     r1, #0x3
	mov     r2, #0x0
	add     r3, #0x18
	bl      0x201c63c
	mov     r3, r6
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	mov     r2, #0x0
	sub     r3, #0x18
	bl      0x201c63c
	mov     r1, #0x3
	ldr     r0, [r5, #0xc]
	mov     r2, r1
	mov     r3, r4
	bl      0x201c63c
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, r4
	bl      0x201c63c
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r6
	mov     r3, r4
	bl      Function_2221188
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	mov     r3, r4
	bl      Function_2221188
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r6
	mov     r3, r4
	bl      Function_2221188
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r6
	mov     r3, r4
	bl      Function_2221188
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r6
	mov     r3, r4
	bl      Function_2221440
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	mov     r3, r4
	bl      Function_2221440
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r6
	mov     r3, r4
	bl      Function_2221440
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r6
	mov     r3, r4
	bl      Function_2221440
	ldr     r0, [pc, #0x20] @ 0x2220220, (=#0xb78)
	strh    r6, [r5, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r4, [r5, r0]
.thumb
branch_2220204: @ 2220204 :thumb
	ldr     r0, [pc, #0x8] @ 0x2220210, (=#0xb82)
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2220210

.word 0xb82 @ 0x2220210
.word 0x715 @ 0x2220214
.word 0x852 @ 0x2220218
.word 0xb7d @ 0x222021c
.word 0xb78 @ 0x2220220
.word 0xb7a @ 0x2220224
.thumb
Function_2220228: @ 2220228 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0x110] @ 0x2220340, (=#0xb82)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x8
	bne     branch_2220250
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x100] @ 0x2220344, (=#0x7fff)
	ldr     r0, [r0, #0x24]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
.thumb
branch_2220250: @ 2220250 :thumb
	ldr     r0, [pc, #0xec] @ 0x2220340, (=#0xb82)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x8
	bcc     branch_222026c
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_222026c
	ldr     r0, [pc, #0xe4] @ 0x2220348, (=#0xb7f)
	mov     r1, #0x2
	strb    r1, [r4, r0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x222026c

.thumb
branch_222026c: @ 222026c :thumb
	ldr     r0, [pc, #0xd0] @ 0x2220340, (=#0xb82)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222027a
	ldr     r0, [pc, #0xd4] @ 0x222034c, (=#0x719)
	bl      0x2005748
.thumb
branch_222027a: @ 222027a :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	mov     r2, #0x1
	mov     r3, #0x10
	bl      0x201c63c
	mov     r1, #0x2
	ldr     r0, [r4, #0xc]
	mov     r2, r1
	mov     r3, #0x10
	bl      0x201c63c
	ldr     r2, [pc, #0xac] @ 0x2220340, (=#0xb82)
	mov     r1, #0x0
	ldrb    r0, [r4, r2]
	mov     r3, r1
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r2]
	ldrb    r2, [r4, r2]
	mov     r0, r4
	lsl     r2, r2, #4
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0x90] @ 0x2220340, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x1
	mov     r3, #0x0
	lsl     r2, r2, #4
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0x78] @ 0x2220340, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #20
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0x68] @ 0x2220340, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x3
	mov     r3, #0x0
	lsl     r2, r2, #20
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0x54] @ 0x2220340, (=#0xb82)
	mov     r1, #0x0
	ldrb    r2, [r4, r2]
	mov     r0, r4
	mov     r3, r1
	lsl     r2, r2, #4
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x40] @ 0x2220340, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x1
	mov     r3, #0x0
	lsl     r2, r2, #4
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x28] @ 0x2220340, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #20
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x18] @ 0x2220340, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x3
	mov     r3, #0x0
	lsl     r2, r2, #20
	asr     r2, r2, #16
	bl      Function_2221440
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x222033e


.align 2


.word 0xb82 @ 0x2220340
.word 0x7fff @ 0x2220344
.word 0xb7f @ 0x2220348
.word 0x719 @ 0x222034c
.thumb
Function_2220350: @ 2220350 :thumb
	ldr     r1, [pc, #0x8] @ 0x222035c, (=#0xb81)
	mov     r2, #0x10
	strb    r2, [r0, r1]
	mov     r0, #0x2
	bx      lr
@ 0x222035a


.align 2


.word 0xb81 @ 0x222035c
.thumb
Function_2220360: @ 2220360 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2220ad0
	cmp     r0, #0x1
	ldr     r0, [r4, #0x0]
	bne     branch_2220384
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	ldr     r0, [pc, #0x24] @ 0x222039c, (=#0xb7e)
	bne     branch_222037e
	mov     r1, #0x0
	strb    r1, [r4, r0]
	b       branch_2220398
@ 0x222037e

.thumb
branch_222037e: @ 222037e :thumb
	mov     r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2220398
@ 0x2220384

.thumb
branch_2220384: @ 2220384 :thumb
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	ldr     r0, [pc, #0x10] @ 0x222039c, (=#0xb7e)
	bne     branch_2220394
	mov     r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2220398
@ 0x2220394

.thumb
branch_2220394: @ 2220394 :thumb
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_2220398: @ 2220398 :thumb
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x222039c

.word 0xb7e @ 0x222039c
.thumb
Function_22203a0: @ 22203a0 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x14] @ 0x22203b8, (=#0xb7e)
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_22203b0
	bl      Function_22203bc
	pop     {r3,pc}
@ 0x22203b0

.thumb
branch_22203b0: @ 22203b0 :thumb
	bl      Function_22204c0
	pop     {r3,pc}
@ 0x22203b6


.align 2


.word 0xb7e @ 0x22203b8
.thumb
Function_22203bc: @ 22203bc :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0xf0] @ 0x22204b0, (=#0xb82)
	mov     r4, r0
	ldrb    r3, [r4, r3]
	mov     r1, #0x2
	ldr     r0, [r4, #0xc]
	lsl     r5, r3, #1
	ldr     r3, [pc, #0xe8] @ 0x22204b4, (=#0x2222a7c)
	mov     r2, r1
	ldrb    r3, [r3, r5]
	bl      0x201c63c
	ldr     r3, [pc, #0xd8] @ 0x22204b0, (=#0xb82)
	ldr     r0, [r4, #0xc]
	ldrb    r3, [r4, r3]
	mov     r1, #0x3
	mov     r2, #0x2
	lsl     r5, r3, #1
	ldr     r3, [pc, #0xd0] @ 0x22204b4, (=#0x2222a7c)
	ldrb    r3, [r3, r5]
	bl      0x201c63c
	ldr     r2, [pc, #0xc4] @ 0x22204b0, (=#0xb82)
	mov     r1, #0x0
	ldrb    r2, [r4, r2]
	mov     r0, r4
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xc4] @ 0x22204b8, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, r1
	bl      Function_2221188
	ldr     r2, [pc, #0xb0] @ 0x22204b0, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x1
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xb0] @ 0x22204b8, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	bl      Function_2221188
	ldr     r2, [pc, #0x9c] @ 0x22204b0, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x9c] @ 0x22204b8, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	bl      Function_2221188
	ldr     r2, [pc, #0x88] @ 0x22204b0, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x3
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x88] @ 0x22204b8, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	bl      Function_2221188
	ldr     r2, [pc, #0x74] @ 0x22204b0, (=#0xb82)
	mov     r1, #0x0
	ldrb    r2, [r4, r2]
	mov     r0, r4
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x74] @ 0x22204b8, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, r1
	bl      Function_2221440
	ldr     r2, [pc, #0x60] @ 0x22204b0, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x1
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x60] @ 0x22204b8, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	bl      Function_2221440
	ldr     r2, [pc, #0x4c] @ 0x22204b0, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x4c] @ 0x22204b8, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	bl      Function_2221440
	ldr     r2, [pc, #0x38] @ 0x22204b0, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x3
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x38] @ 0x22204b8, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	bl      Function_2221440
	ldr     r0, [pc, #0x24] @ 0x22204b0, (=#0xb82)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2220496
	ldr     r0, [pc, #0x28] @ 0x22204bc, (=#0x853)
	bl      0x2005748
.thumb
branch_2220496: @ 2220496 :thumb
	ldr     r0, [pc, #0x18] @ 0x22204b0, (=#0xb82)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x5
	bne     branch_22204a6
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22204a6

.thumb
branch_22204a6: @ 22204a6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22204ae


.align 2


.word 0xb82 @ 0x22204b0
.word 0x2222a7c @ 0x22204b4
.word 0x2222a7d @ 0x22204b8
.word 0x853 @ 0x22204bc
.thumb
Function_22204c0: @ 22204c0 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x120] @ 0x22205e4, (=#0xb82)
	mov     r4, r0
	ldrb    r3, [r4, r3]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	lsl     r5, r3, #1
	ldr     r3, [pc, #0x118] @ 0x22205e8, (=#0x2222a7c)
	mov     r2, #0x1
	ldrb    r3, [r3, r5]
	bl      0x201c63c
	ldr     r3, [pc, #0x108] @ 0x22205e4, (=#0xb82)
	ldr     r0, [r4, #0xc]
	ldrb    r3, [r4, r3]
	mov     r1, #0x3
	mov     r2, #0x1
	lsl     r5, r3, #1
	ldr     r3, [pc, #0x100] @ 0x22205e8, (=#0x2222a7c)
	ldrb    r3, [r3, r5]
	bl      0x201c63c
	ldr     r2, [pc, #0xf4] @ 0x22205e4, (=#0xb82)
	mov     r1, #0x0
	ldrb    r2, [r4, r2]
	mov     r0, r4
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xf4] @ 0x22205ec, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, r1
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0xdc] @ 0x22205e4, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x1
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xd8] @ 0x22205ec, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0xc0] @ 0x22205e4, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xc0] @ 0x22205ec, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0xa8] @ 0x22205e4, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x3
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xa4] @ 0x22205ec, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221188
	ldr     r2, [pc, #0x8c] @ 0x22205e4, (=#0xb82)
	mov     r1, #0x0
	ldrb    r2, [r4, r2]
	mov     r0, r4
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x8c] @ 0x22205ec, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, r1
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x74] @ 0x22205e4, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x1
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x70] @ 0x22205ec, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x58] @ 0x22205e4, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x58] @ 0x22205ec, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r2, [pc, #0x40] @ 0x22205e4, (=#0xb82)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x3
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x3c] @ 0x22205ec, (=#0x2222a7d)
	ldrb    r2, [r2, r3]
	mov     r3, #0x0
	neg     r2, r2
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_2221440
	ldr     r0, [pc, #0x24] @ 0x22205e4, (=#0xb82)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22205ca
	ldr     r0, [pc, #0x28] @ 0x22205f0, (=#0x853)
	bl      0x2005748
.thumb
branch_22205ca: @ 22205ca :thumb
	ldr     r0, [pc, #0x18] @ 0x22205e4, (=#0xb82)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x5
	bne     branch_22205da
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22205da

.thumb
branch_22205da: @ 22205da :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22205e2


.align 2


.word 0xb82 @ 0x22205e4
.word 0x2222a7c @ 0x22205e8
.word 0x2222a7d @ 0x22205ec
.word 0x853 @ 0x22205f0
.thumb
Function_22205f4: @ 22205f4 :thumb
	ldr     r1, [pc, #0x8] @ 0x2220600, (=#0xb81)
	mov     r2, #0x10
	strb    r2, [r0, r1]
	mov     r0, #0x2
	bx      lr
@ 0x22205fe


.align 2


.word 0xb81 @ 0x2220600
.thumb
Function_2220604: @ 2220604 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x80] @ 0x222068c, (=#0xb82)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2220648
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x1
	lsl     r0, r0, #26
	mov     r3, r0
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x6c] @ 0x2220690, (=#0xffff1fff)
	add     r3, #0x48
	and     r2, r1
	lsr     r1, r0, #13
	orr     r1, r2
	str     r1, [r0, #0x0]
	ldrh    r5, [r3, #0x0]
	mov     r2, #0x3f
	mov     r1, #0x1f
	bic     r5, r2
	orr     r5, r1
	mov     r1, #0x20
	orr     r1, r5
	strh    r1, [r3, #0x0]
	add     r0, #0x4a
	ldrh    r3, [r0, #0x0]
	mov     r1, #0x1d
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x0]
.thumb
branch_2220648: @ 2220648 :thumb
	ldr     r3, [pc, #0x40] @ 0x222068c, (=#0xb82)
	ldrb    r1, [r4, r3]
	cmp     r1, #0x10
	bne     branch_2220668
	mov     r0, #0x0
	mov     r1, #0x20
	strb    r0, [r4, r3]
	.hword  0x1e58 @ sub r0, r3, #0x1
	strb    r1, [r4, r0]
	lsl     r2, r1, #21
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2220690, (=#0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2220668

.thumb
branch_2220668: @ 2220668 :thumb
	mov     r2, #0x47
	sub     r2, r2, r1
	add     r1, #0x48
	lsl     r1, r1, #24
	mov     r6, #0xff
	ldr     r0, [pc, #0x20] @ 0x2220694, (=#0x4000040)
	lsl     r5, r2, #8
	lsl     r2, r6, #8
	and     r2, r5
	lsr     r1, r1, #24
	strh    r6, [r0, #0x0]
	orr     r1, r2
	strh    r1, [r0, #0x4]
	ldrb    r0, [r4, r3]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r3]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222068c

.word 0xb82 @ 0x222068c
.word 0xffff1fff @ 0x2220690
.word 0x4000040 @ 0x2220694
.thumb
Function_2220698: @ 2220698 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x22206d0, (=#0x71a)
	bl      0x2005748
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d364
	ldr     r0, [pc, #0xc] @ 0x22206d4, (=#0xb81)
	mov     r1, #0x20
	strb    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22206d0

.word 0x71a @ 0x22206d0
.word 0xb81 @ 0x22206d4
.thumb
Function_22206d8: @ 22206d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x22206f8, (=#0x71a)
	bl      0x2005748
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x200d3f4
	ldr     r0, [pc, #0xc] @ 0x22206fc, (=#0xb81)
	mov     r1, #0x40
	strb    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22206f8

.word 0x71a @ 0x22206f8
.word 0xb81 @ 0x22206fc
.thumb
Function_2220700: @ 2220700 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2222a08
	cmp     r0, #0x0
	bne     branch_2220718
	ldr     r1, [pc, #0x184] @ 0x2220894, (=#0xb81)
	mov     r0, #0x1
	add     sp, #0xc
	strb    r0, [r4, r1]
	pop     {r3,r4,pc}
@ 0x2220718

.thumb
branch_2220718: @ 2220718 :thumb
	mov     r0, #0xbd
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_2220730
	sub     r0, #0x10
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2220730
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2220730

.thumb
branch_2220730: @ 2220730 :thumb
	ldr     r0, [pc, #0x164] @ 0x2220898, (=#0xbbc)
	ldr     r1, [r4, r0]
	cmp     r1, #0x5
	bne     branch_222073e
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x222073e

.thumb
branch_222073e: @ 222073e :thumb
	cmp     r1, #0x6
	beq     branch_2220758
	cmp     r1, #0x5
	beq     branch_2220758
	cmp     r1, #0x7
	beq     branch_2220758
	cmp     r1, #0x8
	beq     branch_2220758
	mov     r1, #0x7
	str     r1, [r4, r0]
	mov     r1, #0xff
	sub     r0, #0x3a
	strb    r1, [r4, r0]
.thumb
branch_2220758: @ 2220758 :thumb
	ldr     r0, [pc, #0x140] @ 0x222089c, (=#0xb82)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_222076a
	cmp     r1, #0x1
	beq     branch_22207a8
	cmp     r1, #0x2
	beq     branch_2220842
	b       branch_2220860
@ 0x222076a

.thumb
branch_222076a: @ 222076a :thumb
	mov     r0, r4
	bl      Function_22229d4
	ldr     r2, [pc, #0x12c] @ 0x22208a0, (=#0xbac)
	mov     r1, #0x8
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r2, [pc, #0x120] @ 0x22208a4, (=#0xb88)
	str     r3, [sp, #0x4]
	add     r0, r4, r2
	str     r3, [sp, #0x8]
	add     r2, #0x2c
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x110] @ 0x22208a8, (=#0xbb8)
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_2222a28
	ldr     r0, [pc, #0xfc] @ 0x222089c, (=#0xb82)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2220884
@ 0x22207a8

.thumb
branch_22207a8: @ 22207a8 :thumb
	add     r2, r0, #0x2
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r1, [r4, #0x0]
	add     r2, r4, r2
	str     r2, [sp, #0x0]
	add     r0, r4, r0
	str     r0, [sp, #0x4]
	ldr     r2, [r1, #0x0]
	mov     r0, #0x7
	add     r1, #0x2c
	lsl     r0, r0, #6
	ldr     r0, [r2, r0]
	mov     r2, #0x0
	ldrb    r1, [r1, #0x0]
	mov     r3, r2
	bl      0x202f41c
	cmp     r0, #0x2
	bne     branch_22207e4
	ldr     r2, [pc, #0xd0] @ 0x22208a0, (=#0xbac)
	mov     r1, #0x6
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	ldr     r0, [pc, #0xcc] @ 0x22208ac, (=#0x61b)
	bl      0x2005748
	b       branch_22207f6
@ 0x22207e4

.thumb
branch_22207e4: @ 22207e4 :thumb
	cmp     r0, #0x3
	bne     branch_2220884
	ldr     r2, [pc, #0xb4] @ 0x22208a0, (=#0xbac)
	mov     r1, #0x7
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	bl      0x200b1b8
.thumb
branch_22207f6: @ 22207f6 :thumb
	mov     r0, r4
	bl      Function_2222a48
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x9c] @ 0x22208a4, (=#0xb88)
	mov     r2, #0x0
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r2, [pc, #0x8c] @ 0x22208a4, (=#0xb88)
	str     r3, [sp, #0x4]
	add     r0, r4, r2
	str     r3, [sp, #0x8]
	add     r2, #0x2c
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x7c] @ 0x22208a8, (=#0xbb8)
	mov     r2, #0x0
	str     r0, [r4, r1]
	mov     r0, r1
	sub     r0, #0x37
	strb    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0x36
	ldrb    r0, [r4, r0]
	sub     r1, #0x36
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r1]
	b       branch_2220884
@ 0x2220842

.thumb
branch_2220842: @ 2220842 :thumb
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1e41 @ sub r1, r0, #0x1
	strb    r2, [r4, r1]
	ldrb    r1, [r4, r1]
	cmp     r1, #0x1e
	bls     branch_2220884
	mov     r2, #0x0
	.hword  0x1e41 @ sub r1, r0, #0x1
	strb    r2, [r4, r1]
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2220884
@ 0x2220860

.thumb
branch_2220860: @ 2220860 :thumb
	.hword  0x1d80 @ add r0, r0, #0x6
	add     r0, r4, r0
	mov     r1, #0x0
	bl      0x200e084
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x201c3c0
	ldr     r0, [pc, #0x28] @ 0x222089c, (=#0xb82)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r1, #0x15
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r4, r0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2220884

.thumb
branch_2220884: @ 2220884 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x201c3c0
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2220892


.align 2


.word 0xb81 @ 0x2220894
.word 0xbbc @ 0x2220898
.word 0xb82 @ 0x222089c
.word 0xbac @ 0x22208a0
.word 0xb88 @ 0x22208a4
.word 0xbb8 @ 0x22208a8
.word 0x61b @ 0x22208ac
.thumb
Function_22208b0: @ 22208b0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0x80] @ 0x2220938, (=#0xb82)
	mov     r4, r0
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_22208c4
	cmp     r1, #0x1
	beq     branch_2220910
	b       branch_2220926
@ 0x22208c4

.thumb
branch_22208c4: @ 22208c4 :thumb
	bl      Function_22229d4
	ldr     r2, [pc, #0x70] @ 0x222093c, (=#0xbac)
	mov     r1, #0x9
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r2, [pc, #0x64] @ 0x2220940, (=#0xb88)
	str     r3, [sp, #0x4]
	add     r0, r4, r2
	str     r3, [sp, #0x8]
	add     r2, #0x2c
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x54] @ 0x2220944, (=#0xbb8)
	str     r0, [r4, r1]
	mov     r0, #0x3e
	bl      0x20364f0
	ldr     r0, [pc, #0x50] @ 0x2220948, (=#0xbc8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2220906
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
.thumb
branch_2220906: @ 2220906 :thumb
	ldr     r0, [pc, #0x30] @ 0x2220938, (=#0xb82)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_222092a
@ 0x2220910

.thumb
branch_2220910: @ 2220910 :thumb
	mov     r0, #0x3e
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_222092a
	ldr     r0, [pc, #0x1c] @ 0x2220938, (=#0xb82)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2220926

.thumb
branch_2220926: @ 2220926 :thumb
	bl      0x2022974
.thumb
branch_222092a: @ 222092a :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x201c3c0
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2220938

.word 0xb82 @ 0x2220938
.word 0xbac @ 0x222093c
.word 0xb88 @ 0x2220940
.word 0xbb8 @ 0x2220944
.word 0xbc8 @ 0x2220948
.thumb
Function_222094c: @ 222094c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_2220ad0
	cmp     r0, #0x1
	ldr     r0, [r4, #0x0]
	bne     branch_222098e
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_222097a
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	ldr     r0, [r4, #0x8]
	mov     r2, #0x40
	mov     r3, r1
	bl      0x2003120
	b       branch_22209be
@ 0x222097a

.thumb
branch_222097a: @ 222097a :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	mov     r2, #0x40
	mov     r3, r1
	bl      0x2003120
	b       branch_22209be
@ 0x222098e

.thumb
branch_222098e: @ 222098e :thumb
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_22209aa
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	mov     r2, #0x40
	mov     r3, r1
	bl      0x2003120
	b       branch_22209be
@ 0x22209aa

.thumb
branch_22209aa: @ 22209aa :thumb
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	ldr     r0, [r4, #0x8]
	mov     r2, #0x40
	mov     r3, r1
	bl      0x2003120
.thumb
branch_22209be: @ 22209be :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      0x200387c
	ldr     r0, [pc, #0x10] @ 0x22209d8, (=#0x71b)
	bl      0x2005748
	ldr     r0, [pc, #0xc] @ 0x22209dc, (=#0xb81)
	mov     r1, #0x40
	strb    r1, [r4, r0]
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22209d8

.word 0x71b @ 0x22209d8
.word 0xb81 @ 0x22209dc
.thumb
Function_22209e0: @ 22209e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x44] @ 0x2220a2c, (=#0xb82)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22209f2
	ldr     r0, [pc, #0x40] @ 0x2220a30, (=#0x719)
	bl      0x2005748
.thumb
branch_22209f2: @ 22209f2 :thumb
	ldr     r1, [pc, #0x38] @ 0x2220a2c, (=#0xb82)
	ldrb    r0, [r4, r1]
	cmp     r0, #0x10
	bne     branch_2220a08
	mov     r0, #0x0
	strb    r0, [r4, r1]
	mov     r2, #0x40
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r2, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2220a08

.thumb
branch_2220a08: @ 2220a08 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r1]
	ldrb    r2, [r4, r1]
	mov     r1, #0x10
	mov     r0, r4
	sub     r1, r1, r2
	lsl     r1, r1, #16
	asr     r1, r1, #16
	bl      Function_2222340
	ldr     r1, [pc, #0xc] @ 0x2220a2c, (=#0xb82)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_2221c48
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2220a2a


.align 2


.word 0xb82 @ 0x2220a2c
.word 0x719 @ 0x2220a30
.thumb
Function_2220a34: @ 2220a34 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x1
	ldr     r1, [r1, #0x24]
	bl      0x208c120
	ldr     r0, [pc, #0x8] @ 0x2220a4c, (=#0xb7f)
	mov     r1, #0x2
	strb    r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2220a4c

.word 0xb7f @ 0x2220a4c
.thumb
Function_2220a50: @ 2220a50 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_2220a62
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2220a62

.thumb
branch_2220a62: @ 2220a62 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, r4
	bl      Function_2222a48
	ldr     r0, [r4, #0x0]
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2220a9a
	mov     r0, r4
	bl      Function_2220dcc
	mov     r0, r4
	bl      Function_2220dfc
	mov     r0, r4
	bl      Function_2220e30
	mov     r0, r4
	bl      Function_22218f4
	mov     r0, r4
	bl      Function_222146c
	b       branch_2220aa6
@ 0x2220a9a

.thumb
branch_2220a9a: @ 2220a9a :thumb
	mov     r0, r4
	bl      Function_2221a10
	mov     r0, r4
	bl      Function_22223e8
.thumb
branch_2220aa6: @ 2220aa6 :thumb
	mov     r0, r4
	bl      Function_2220be8
	bl      0x201dc3c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      0x2002fa0
	ldr     r0, [r4, #0x8]
	bl      0x2002f54
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	add     r0, #0x2b
	strb    r1, [r0, #0x0]
	mov     r0, r5
	bl      0x20067d0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2220ad0

.thumb
Function_2220ad0: @ 2220ad0 :thumb
	push    {r3,lr}
	bl      0x203608c
	bl      0x20362f4
	cmp     r0, #0x3
	bhi     branch_2220afa
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2220aea

Jumppoints_2220aea:
.hword branch_2220af2 - Jumppoints_2220aea - 2
.hword branch_2220af6 - Jumppoints_2220aea - 2
.hword branch_2220af2 - Jumppoints_2220aea - 2
.hword branch_2220af6 - Jumppoints_2220aea - 2
.thumb
branch_2220af2: @ 2220af2 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2220af6

.thumb
branch_2220af6: @ 2220af6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2220afa

.thumb
branch_2220afa: @ 2220afa :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2220afe


.align 2, 0


.thumb
Function_2220b00: @ 2220b00 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x40
	ldr     r1, [r1, #0x24]
	mov     r4, r2
	bl      0x201dbec
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x200c6e4
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	bl      0x200c704
	mov     r1, #0x65
	lsl     r1, r1, #2
	add     r2, sp, #0x18
	ldr     r3, [pc, #0x68] @ 0x2220b98, (=#0x2222bf0)
	str     r0, [r5, r1]
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r3, [pc, #0x54] @ 0x2220b9c, (=#0x2222abc)
	add     r2, sp, #0x4
	ldmia   r3!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r6
	str     r0, [r2, #0x0]
	mov     r0, #0x65
	lsl     r0, r0, #2
	str     r4, [sp, #0x4]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	mov     r2, r7
	mov     r3, #0x10
	bl      0x200c73c
	mov     r1, #0x19
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c7c0
	mov     r1, #0x19
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0x0]
	bl      0x200cb30
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2220b96


.align 2


.word 0x2222bf0 @ 0x2220b98
.word 0x2222abc @ 0x2220b9c
.thumb
Function_2220ba0: @ 2220ba0 :thumb
	push    {lr}
	add     sp, #-0x34
	mov     r2, r0
	mov     r0, #0x0
	add     r3, sp, #0x0
	strh    r0, [r3, #0x0]
	strh    r0, [r3, #0x2]
	strh    r0, [r3, #0x4]
	strh    r0, [r3, #0x6]
	ldr     r3, [r1, #0x14]
	str     r3, [sp, #0x8]
	ldr     r3, [r1, #0x18]
	str     r3, [sp, #0xc]
	mov     r3, #0x1
	str     r3, [sp, #0x10]
	ldr     r3, [r1, #0x0]
	str     r3, [sp, #0x14]
	ldr     r3, [r1, #0x4]
	str     r3, [sp, #0x18]
	ldr     r3, [r1, #0x8]
	str     r3, [sp, #0x1c]
	ldr     r3, [r1, #0xc]
	str     r3, [sp, #0x20]
	ldr     r1, [r1, #0x10]
	str     r1, [sp, #0x2c]
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x30]
	ldr     r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r2, r1]
	add     r2, sp, #0x0
	bl      0x200ce6c
	add     sp, #0x34
	pop     {pc}
@ 0x2220be8

.thumb
Function_2220be8: @ 2220be8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_2220c12
	mov     r7, #0x21
	mov     r5, r6
	lsl     r7, r7, #4
.thumb
branch_2220bfe: @ 2220bfe :thumb
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200d0f4
	ldr     r0, [r6, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	bcc     branch_2220bfe
.thumb
branch_2220c12: @ 2220c12 :thumb
	mov     r1, #0x19
	lsl     r1, r1, #4
	ldr     r0, [r6, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r6, r1]
	bl      0x200d0b0
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      0x200c8d4
	pop     {r3-r7,pc}
@ 0x2220c2c

.thumb
Function_2220c2c: @ 2220c2c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_2220c60
	mov     r7, #0x66
	lsl     r7, r7, #2
	mov     r6, r7
	add     r6, #0x78
.thumb
branch_2220c44: @ 2220c44 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r7]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #12
	bl      0x2021e2c
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [r5, r6]
	cmp     r4, r0
	bcc     branch_2220c44
.thumb
branch_2220c60: @ 2220c60 :thumb
	pop     {r3-r7,pc}
@ 0x2220c62


.align 2, 0


.thumb
Function_2220c64: @ 2220c64 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      0x201c2b8
	ldr     r0, [r4, #0x8]
	bl      0x2003694
	bl      0x201dcac
	bl      0x200c800
	ldr     r3, [pc, #0xc] @ 0x2220c8c, (=#0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x2220c90, (=#0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x2220c8a


.align 2


.word 0x27e0000 @ 0x2220c8c
.word 0x3ff8 @ 0x2220c90
.thumb
Function_2220c94: @ 2220c94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x80
	mov     r5, r0
	ldr     r0, [pc, #0x114] @ 0x2220db0, (=#0xba8)
	mov     r4, r1
	ldr     r6, [pc, #0x114] @ 0x2220db4, (=#0x2222a88)
	str     r4, [r5, r0]
	add     r3, sp, #0x70
	mov     r7, r2
	mov     r2, r3
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	str     r4, [sp, #0x7c]
	bl      0x2018368
	ldr     r6, [pc, #0xfc] @ 0x2220db8, (=#0x2222b2c)
	add     r3, sp, #0x54
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0xc]
	mov     r1, #0x3
	bl      0x2019ebc
	mov     r1, #0x3
	mov     r3, r1
	ldr     r0, [r5, #0xc]
	mov     r2, #0x0
	add     r3, #0xfd
	bl      0x201c63c
	ldr     r6, [pc, #0xcc] @ 0x2220dbc, (=#0x2222b64)
	add     r3, sp, #0x38
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x2019ebc
	mov     r3, #0xff
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	mov     r2, #0x0
	mvn     r3, r3
	bl      0x201c63c
	ldr     r6, [pc, #0x98] @ 0x2220dc0, (=#0x2222b80)
	add     r3, sp, #0x1c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      0x2019ebc
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff0c
	cmp     r7, #0x1
	bne     branch_2220d64
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x18
	bl      0x2019184
.thumb
branch_2220d64: @ 2220d64 :thumb
	cmp     r4, #0x0
	bne     branch_2220dac
	ldr     r4, [pc, #0x58] @ 0x2220dc4, (=#0x2222bb8)
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r3, r1
	bl      0x20183c4
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r0, [pc, #0x34] @ 0x2220dc8, (=#0xbc8)
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_2220da4
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	add     sp, #0x80
	pop     {r3-r7,pc}
@ 0x2220da4

.thumb
branch_2220da4: @ 2220da4 :thumb
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff0c
.thumb
branch_2220dac: @ 2220dac :thumb
	add     sp, #0x80
	pop     {r3-r7,pc}
@ 0x2220db0

.word 0xba8 @ 0x2220db0
.word 0x2222a88 @ 0x2220db4
.word 0x2222b2c @ 0x2220db8
.word 0x2222b64 @ 0x2220dbc
.word 0x2222b80 @ 0x2220dc0
.word 0x2222bb8 @ 0x2220dc4
.word 0xbc8 @ 0x2220dc8
.thumb
Function_2220dcc: @ 2220dcc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x2220df4, (=#0xb94)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2220de0
	sub     r0, #0xc
	add     r0, r4, r0
	bl      0x201a8fc
.thumb
branch_2220de0: @ 2220de0 :thumb
	ldr     r0, [pc, #0x14] @ 0x2220df8, (=#0xba4)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2220df0
	sub     r0, #0xc
	add     r0, r4, r0
	bl      0x201a8fc
.thumb
branch_2220df0: @ 2220df0 :thumb
	pop     {r4,pc}
@ 0x2220df2


.align 2


.word 0xb94 @ 0x2220df4
.word 0xba4 @ 0x2220df8
.thumb
Function_2220dfc: @ 2220dfc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x2220e28, (=#0xbb4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2220e0c
	bl      0x20237bc
.thumb
branch_2220e0c: @ 2220e0c :thumb
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2220e1a
	bl      0x200b3f0
.thumb
branch_2220e1a: @ 2220e1a :thumb
	ldr     r0, [pc, #0x10] @ 0x2220e2c, (=#0xbac)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2220e26
	bl      0x200b190
.thumb
branch_2220e26: @ 2220e26 :thumb
	pop     {r4,pc}
@ 0x2220e28

.word 0xbb4 @ 0x2220e28
.word 0xbac @ 0x2220e2c
.thumb
Function_2220e30: @ 2220e30 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      0x201ff0c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [pc, #0x14] @ 0x2220e6c, (=#0xba8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2220e64
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x2019044
.thumb
branch_2220e64: @ 2220e64 :thumb
	ldr     r0, [r4, #0xc]
	bl      0x20181c4
	pop     {r4,pc}
@ 0x2220e6c

.word 0xba8 @ 0x2220e6c
.thumb
Function_2220e70: @ 2220e70 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x6c
	ldr     r1, [r1, #0x24]
	bl      0x2006c24
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r2, [r5, #0x0]
	mov     r3, #0x1
	ldr     r2, [r2, #0x24]
	mov     r4, r0
	str     r2, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	ldr     r0, [r0, #0x24]
	mov     r3, #0x1
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x24]
	mov     r3, r1
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	ldr     r0, [r0, #0x24]
	mov     r3, r1
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	bl      0x200710c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x24]
	mov     r3, r2
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      0x2007130
	mov     r1, #0x0
	ldr     r0, [r5, #0x8]
	mov     r2, r1
	mov     r3, #0xa0
	bl      0x2003070
	ldr     r1, [pc, #0x10] @ 0x2220f18, (=#0x18c6)
	mov     r0, #0x1
	bl      0x201975c
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2220f18

.word 0x18c6 @ 0x2220f18
.thumb
Function_2220f1c: @ 2220f1c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [pc, #0xd4] @ 0x2220ff8, (=#0xba8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2220f40
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2220f40
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2220f40
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2220f44
.thumb
branch_2220f40: @ 2220f40 :thumb
	bl      0x2022974
.thumb
branch_2220f44: @ 2220f44 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x24]
	mov     r2, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	mov     r3, #0xf
	bl      0x200dd0c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0xf0
	mov     r3, #0x20
	bl      0x2003070
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1f
	ldr     r0, [r0, #0x24]
	mov     r3, #0xe
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	bl      0x200daa4
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0xe0
	mov     r3, #0x20
	bl      0x2003070
	ldr     r2, [r4, #0x0]
	mov     r1, #0x1a
	ldr     r2, [r2, #0x24]
	mov     r0, #0x0
	lsl     r1, r1, #4
	bl      0x2002e7c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0xd0
	mov     r3, #0x20
	bl      0x2003070
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0x38] @ 0x2220ffc, (=#0xb88)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0xc]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0x18] @ 0x2221000, (=#0xb98)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0xc]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2220ff8

.word 0xba8 @ 0x2220ff8
.word 0xb88 @ 0x2220ffc
.word 0xb98 @ 0x2221000
.thumb
Function_2221004: @ 2221004 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x10] @ 0x2221018, (=#0x4000050)
	mov     r3, #0x8
	mov     r1, #0x2
	mov     r2, #0x1c
	str     r3, [sp, #0x0]
	blx 0x20bf55c
	pop     {r3,pc}
@ 0x2221016


.align 2


.word 0x4000050 @ 0x2221018
.thumb
Function_222101c: @ 222101c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r4, [pc, #0xc8] @ 0x22210ec, (=#0x2222b14)
	add     r3, sp, #0x0
	mov     r6, r0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, r2
	mov     r0, r6
	mov     r2, #0x15
	bl      Function_2220b00
	mov     r0, r6
	bl      Function_22210f4
	ldr     r4, [pc, #0xa8] @ 0x22210f0, (=#0x2222db4)
	mov     r7, #0x0
	mov     r5, r6
.thumb
branch_222104a: @ 222104a :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2220ba0
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x1c
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0xc
	bcc     branch_222104a
	mov     r1, #0x0
	mov     r2, #0xff
	mov     r0, r6
	mvn     r2, r2
	mov     r3, r1
	bl      Function_2221188
	mov     r2, #0xff
	mov     r0, r6
	mov     r1, #0x1
	mvn     r2, r2
	mov     r3, #0x0
	bl      Function_2221188
	mov     r1, #0x2
	mov     r2, r1
	mov     r0, r6
	add     r2, #0xfe
	mov     r3, #0x0
	bl      Function_2221188
	mov     r1, #0x3
	mov     r2, r1
	mov     r0, r6
	add     r2, #0xfd
	mov     r3, #0x0
	bl      Function_2221188
	mov     r0, r6
	bl      Function_22212ac
	mov     r0, #0x21
	mov     r1, #0xc
	lsl     r0, r0, #4
	str     r1, [r6, r0]
	mov     r0, r6
	bl      Function_22213b8
	mov     r1, #0x0
	mov     r2, #0xff
	mov     r0, r6
	mvn     r2, r2
	mov     r3, r1
	bl      Function_2221440
	mov     r2, #0xff
	mov     r0, r6
	mov     r1, #0x1
	mvn     r2, r2
	mov     r3, #0x0
	bl      Function_2221440
	mov     r1, #0x2
	mov     r2, r1
	mov     r0, r6
	add     r2, #0xfe
	mov     r3, #0x0
	bl      Function_2221440
	mov     r1, #0x3
	mov     r2, r1
	mov     r0, r6
	add     r2, #0xfd
	mov     r3, #0x0
	bl      Function_2221440
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22210ea


.align 2


.word 0x2222b14 @ 0x22210ec
.word 0x2222db4 @ 0x22210f0
.thumb
Function_22210f4: @ 22210f4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x1b
	ldr     r1, [r1, #0x24]
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x2221184, (=#0xb807)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0xd0
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x54] @ 0x2221184, (=#0xb807)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, #0x6c
	mov     r3, #0x8
	bl      0x200cc9c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2221184, (=#0xb807)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0xcf
	bl      0x200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2221184, (=#0xb807)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0xd1
	bl      0x200ce54
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2221182


.align 2


.word 0xb807 @ 0x2221184
.thumb
Function_2221188: @ 2221188 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r4, [pc, #0x54] @ 0x22211e4, (=#0x2222a64)
	str     r2, [sp, #0x0]
	ldrb    r5, [r4, #0x0]
	str     r3, [sp, #0x4]
	add     r3, sp, #0x8
	strb    r5, [r3, #0x0]
	ldrb    r5, [r4, #0x1]
	add     r2, sp, #0x8
	mov     r7, #0x0
	strb    r5, [r3, #0x1]
	ldrb    r5, [r4, #0x2]
	ldrb    r4, [r4, #0x3]
	add     r6, r0, r1
	strb    r5, [r3, #0x2]
	strb    r4, [r3, #0x3]
	ldrb    r2, [r2, r1]
	mov     r4, r7
	lsl     r2, r2, #2
	add     r5, r0, r2
.thumb
branch_22211b2: @ 22211b2 :thumb
	ldr     r1, [pc, #0x34] @ 0x22211e8, (=#0xb64)
	mov     r0, #0x66
	ldrb    r1, [r6, r1]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r2, r1, r4
	ldr     r1, [sp, #0x0]
	add     r1, r1, r2
	ldr     r2, [pc, #0x28] @ 0x22211ec, (=#0xb68)
	lsl     r1, r1, #16
	ldrb    r3, [r6, r2]
	ldr     r2, [sp, #0x4]
	asr     r1, r1, #16
	add     r2, r2, r3
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      0x200d4c4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x13
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x3
	bcc     branch_22211b2
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22211e4

.word 0x2222a64 @ 0x22211e4
.word 0xb64 @ 0x22211e8
.word 0xb68 @ 0x22211ec
.thumb
Function_22211f0: @ 22211f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r0, r1
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r7, r3
	bl      0x207a0f8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r5, #0x0
	ldr     r0, [sp, #0x4]
	mov     r4, r5
	cmp     r0, #0x0
	ble     branch_22212a8
	lsl     r0, r7, #2
	add     r6, r6, r0
.thumb
branch_2221216: @ 2221216 :thumb
	lsl     r0, r4, #2
	add     r1, r6, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x200d364
	ldr     r0, [sp, #0x8]
	cmp     r0, r4
	bls     branch_222129c
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222129c
	mov     r0, r7
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_222129c
	mov     r0, r7
	bl      0x208e9f0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x6
	bne     branch_2221270
	lsl     r0, r5, #2
	add     r1, r6, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x3
	bl      0x200d364
	b       branch_2221296
@ 0x2221270

.thumb
branch_2221270: @ 2221270 :thumb
	cmp     r0, #0x7
	beq     branch_2221286
	lsl     r0, r5, #2
	add     r1, r6, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x2
	bl      0x200d364
	b       branch_2221296
@ 0x2221286

.thumb
branch_2221286: @ 2221286 :thumb
	lsl     r0, r5, #2
	add     r1, r6, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x200d364
.thumb
branch_2221296: @ 2221296 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
.thumb
branch_222129c: @ 222129c :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [sp, #0x4]
	cmp     r4, r0
	blt     branch_2221216
.thumb
branch_22212a8: @ 22212a8 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22212ac

.thumb
Function_22212ac: @ 22212ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x0]
	mov     r1, r2
	add     r1, #0x29
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	ldr     r1, [r2, #0x4]
	bne     branch_22212d6
	mov     r2, #0x6
	mov     r3, #0x0
	bl      Function_22211f0
	ldr     r1, [r4, #0x0]
	mov     r2, #0x6
	ldr     r1, [r1, #0x8]
	mov     r0, r4
	mov     r3, r2
	bl      Function_22211f0
	pop     {r4,pc}
@ 0x22212d6

.thumb
branch_22212d6: @ 22212d6 :thumb
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_22211f0
	ldr     r1, [r4, #0x0]
	mov     r2, #0x3
	ldr     r1, [r1, #0xc]
	mov     r0, r4
	mov     r3, r2
	bl      Function_22211f0
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0x8]
	mov     r2, #0x3
	mov     r3, #0x6
	bl      Function_22211f0
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0x10]
	mov     r2, #0x3
	mov     r3, #0x9
	bl      Function_22211f0
	pop     {r4,pc}
@ 0x222130a


.align 2, 0


.thumb
Function_222130c: @ 222130c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r4, r0
	mov     r0, #0x0
	mov     r5, r4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r7, r2
	add     r5, #0x10
	mov     r6, r1
	ldr     r0, [r4, #0xc]
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x2
	bl      0x201a870
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r7
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [pc, #0x64] @ 0x22213ac, (=#0xb44)
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x10]
	mov     r0, #0x65
	str     r5, [sp, #0x14]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200d9b0
	str     r0, [sp, #0x18]
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x4c] @ 0x22213b0, (=#0xb807)
	bl      0x200d04c
	mov     r1, #0x3e
	lsl     r2, r6, #4
	lsl     r1, r1, #4
	sub     r1, r1, r2
	lsl     r1, r1, #5
	str     r0, [sp, #0x1c]
	mov     r0, #0x0
	str     r1, [sp, #0x24]
	mov     r1, #0x2
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x2c]
	str     r0, [sp, #0x34]
	mov     r0, #0x1
	str     r1, [sp, #0x30]
	str     r0, [sp, #0x38]
	ldr     r0, [r4, #0x0]
	lsl     r6, r6, #2
	ldr     r0, [r0, #0x24]
	str     r0, [sp, #0x3c]
	ldr     r0, [pc, #0x24] @ 0x22213b4, (=#0xb48)
	add     r4, r4, r0
	add     r0, sp, #0x10
	bl      0x20127e8
	str     r0, [r4, r6]
	ldr     r0, [r4, r6]
	mov     r1, #0x0
	bl      0x2012a60
	mov     r0, r5
	bl      0x201a8fc
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x22213ac

.word 0xb44 @ 0x22213ac
.word 0xb807 @ 0x22213b0
.word 0xb48 @ 0x22213b4
.thumb
Function_22213b8: @ 22213b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x8
	ldr     r1, [r1, #0x24]
	bl      0x2012744
	ldr     r1, [pc, #0x6c] @ 0x2221434, (=#0xb44)
	str     r0, [r4, r1]
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0x14]
	mov     r1, #0x0
	bl      Function_222130c
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0x18]
	mov     r1, #0x2
	bl      Function_222130c
	ldr     r2, [r4, #0x0]
	mov     r0, r2
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2221406
	ldr     r2, [r2, #0x1c]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222130c
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0x20]
	mov     r1, #0x3
	bl      Function_222130c
	pop     {r4,pc}
@ 0x2221406

.thumb
branch_2221406: @ 2221406 :thumb
	ldr     r2, [r2, #0x14]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222130c
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0x18]
	mov     r1, #0x3
	bl      Function_222130c
	ldr     r0, [pc, #0x18] @ 0x2221438, (=#0xb4c)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x20129d0
	ldr     r0, [pc, #0x14] @ 0x222143c, (=#0xb54)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x20129d0
	pop     {r4,pc}
@ 0x2221432


.align 2


.word 0xb44 @ 0x2221434
.word 0xb4c @ 0x2221438
.word 0xb54 @ 0x222143c
.thumb
Function_2221440: @ 2221440 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, r2
	mov     r2, r3
	mov     r4, r0
	lsl     r0, r5, #2
	add     r0, r4, r0
	ldr     r3, [pc, #0x18] @ 0x2221468, (=#0xb48)
	add     r4, r4, r5
	mov     r5, r3
	ldr     r0, [r0, r3]
	add     r5, #0x24
	add     r3, #0x28
	ldrb    r5, [r4, r5]
	ldrb    r3, [r4, r3]
	add     r1, r1, r5
	add     r2, r2, r3
	bl      0x20128c4
	pop     {r3-r5,pc}
@ 0x2221468

.word 0xb48 @ 0x2221468
.thumb
Function_222146c: @ 222146c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2221496
	ldr     r6, [pc, #0x1c] @ 0x2221498, (=#0xb48)
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2221480: @ 2221480 :thumb
	ldr     r0, [r5, r6]
	bl      0x2012870
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	bcc     branch_2221480
	ldr     r0, [pc, #0xc] @ 0x222149c, (=#0xb44)
	ldr     r0, [r7, r0]
	bl      0x20127bc
.thumb
branch_2221496: @ 2221496 :thumb
	pop     {r3-r7,pc}
@ 0x2221498

.word 0xb48 @ 0x2221498
.word 0xb44 @ 0x222149c
.thumb
Function_22214a0: @ 22214a0 :thumb
	push    {r3-r6}
	ldr     r3, [r0, #0x0]
	add     r3, #0x29
	ldrb    r3, [r3, #0x0]
	cmp     r3, #0x1
	ldr     r3, [pc, #0xd8] @ 0x2221584, (=#0xb64)
	bne     branch_222152a
	mov     r4, #0x14
	mov     r5, r1
	strb    r4, [r0, r3]
	add     r5, #0x92
	add     r4, r3, #0x4
	strb    r5, [r0, r4]
	mov     r5, #0x51
	add     r4, r3, #0x1
	strb    r5, [r0, r4]
	mov     r5, r1
	add     r5, #0xa2
	add     r4, r3, #0x5
	strb    r5, [r0, r4]
	mov     r5, #0x80
	add     r4, r3, #0x2
	strb    r5, [r0, r4]
	mov     r5, r2
	add     r5, #0x2c
	add     r4, r3, #0x6
	strb    r5, [r0, r4]
	mov     r5, #0xbd
	add     r4, r3, #0x3
	strb    r5, [r0, r4]
	mov     r5, r2
	add     r5, #0x3c
	add     r4, r3, #0x7
	strb    r5, [r0, r4]
	mov     r4, r3
	mov     r5, #0xb
	add     r4, #0x8
	strb    r5, [r0, r4]
	mov     r5, r1
	mov     r4, r3
	add     r5, #0x78
	add     r4, #0xc
	strb    r5, [r0, r4]
	mov     r4, r3
	mov     r5, #0x4c
	add     r4, #0x9
	strb    r5, [r0, r4]
	mov     r4, r3
	add     r1, #0x88
	add     r4, #0xd
	strb    r1, [r0, r4]
	mov     r1, r3
	mov     r4, #0x77
	add     r1, #0xa
	strb    r4, [r0, r1]
	mov     r4, r2
	mov     r1, r3
	add     r4, #0x12
	add     r1, #0xe
	strb    r4, [r0, r1]
	mov     r1, r3
	mov     r4, #0xb8
	add     r1, #0xb
	strb    r4, [r0, r1]
	add     r2, #0x22
	add     r3, #0xf
	strb    r2, [r0, r3]
	pop     {r3-r6}
	bx      lr
@ 0x222152a

.thumb
branch_222152a: @ 222152a :thumb
	mov     r4, #0x18
	strb    r4, [r0, r3]
	mov     r4, r1
	add     r4, #0xa0
	lsl     r4, r4, #24
	lsr     r4, r4, #24
	add     r5, r3, #0x4
	strb    r4, [r0, r5]
	mov     r6, #0x51
	add     r5, r3, #0x1
	strb    r6, [r0, r5]
	add     r5, r3, #0x5
	strb    r4, [r0, r5]
	mov     r5, #0x88
	add     r4, r3, #0x2
	strb    r5, [r0, r4]
	mov     r4, r2
	add     r4, #0x30
	lsl     r4, r4, #24
	lsr     r4, r4, #24
	add     r5, r3, #0x6
	strb    r4, [r0, r5]
	mov     r6, #0xc1
	add     r5, r3, #0x3
	strb    r6, [r0, r5]
	add     r5, r3, #0x7
	strb    r4, [r0, r5]
	mov     r4, r3
	mov     r5, #0xf
	add     r4, #0x8
	strb    r5, [r0, r4]
	mov     r4, r3
	add     r1, #0x86
	add     r4, #0xc
	strb    r1, [r0, r4]
	mov     r1, r3
	mov     r4, #0x80
	add     r1, #0xa
	strb    r4, [r0, r1]
	add     r2, #0x16
	add     r3, #0xe
	strb    r2, [r0, r3]
	pop     {r3-r6}
	bx      lr
@ 0x2221582


.align 2


.word 0xb64 @ 0x2221584
.thumb
Function_2221588: @ 2221588 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r4, [pc, #0xd4] @ 0x2221664, (=#0x2222ae4)
	add     r3, sp, #0x0
	mov     r6, r0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, r2
	mov     r0, r6
	mov     r2, #0x17
	bl      Function_2220b00
	mov     r0, r6
	bl      Function_22210f4
	mov     r0, r6
	bl      Function_222166c
	ldr     r4, [pc, #0xb0] @ 0x2221668, (=#0x2222db4)
	mov     r7, #0x0
	mov     r5, r6
.thumb
branch_22215bc: @ 22215bc :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2220ba0
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x1c
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0xe
	bcc     branch_22215bc
	mov     r1, #0x0
	mov     r2, #0xff
	mov     r0, r6
	mvn     r2, r2
	mov     r3, r1
	bl      Function_2221188
	mov     r2, #0xff
	mov     r0, r6
	mov     r1, #0x1
	mvn     r2, r2
	mov     r3, #0x0
	bl      Function_2221188
	mov     r1, #0x2
	mov     r2, r1
	mov     r0, r6
	add     r2, #0xfe
	mov     r3, #0x0
	bl      Function_2221188
	mov     r1, #0x3
	mov     r2, r1
	mov     r0, r6
	add     r2, #0xfd
	mov     r3, #0x0
	bl      Function_2221188
	mov     r0, r6
	bl      Function_22212ac
	mov     r0, r6
	bl      Function_22216e0
	mov     r0, r6
	bl      Function_22213b8
	mov     r1, #0x0
	mov     r2, #0xff
	mov     r0, r6
	mvn     r2, r2
	mov     r3, r1
	bl      Function_2221440
	mov     r2, #0xff
	mov     r0, r6
	mov     r1, #0x1
	mvn     r2, r2
	mov     r3, #0x0
	bl      Function_2221440
	mov     r1, #0x2
	mov     r2, r1
	mov     r0, r6
	add     r2, #0xfe
	mov     r3, #0x0
	bl      Function_2221440
	mov     r1, #0x3
	mov     r2, r1
	mov     r0, r6
	add     r2, #0xfd
	mov     r3, #0x0
	bl      Function_2221440
	mov     r0, #0x21
	mov     r1, #0xe
	lsl     r0, r0, #4
	str     r1, [r6, r0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2221662


.align 2


.word 0x2222ae4 @ 0x2221664
.word 0x2222db4 @ 0x2221668
.thumb
Function_222166c: @ 222166c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x6c
	ldr     r1, [r1, #0x24]
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x22216dc, (=#0xb808)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x5
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x22216dc, (=#0xb808)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x6
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x22216dc, (=#0xb808)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x7
	bl      0x200ce54
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22216da


.align 2


.word 0xb808 @ 0x22216dc
.thumb
Function_22216e0: @ 22216e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	ldr     r0, [r4, #0x0]
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_2221722
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x80
	mov     r2, #0x48
	bl      0x200d4c4
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x200d364
	pop     {r4,pc}
@ 0x2221722

.thumb
branch_2221722: @ 2221722 :thumb
	bl      Function_2220ad0
	cmp     r0, #0x1
	ldr     r0, [r4, #0x0]
	bne     branch_2221770
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2221752
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x30
	mov     r2, #0x48
	bl      0x200d4c4
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd0
	mov     r2, #0x48
	bl      0x200d4c4
	b       branch_22217b2
@ 0x2221752

.thumb
branch_2221752: @ 2221752 :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd0
	mov     r2, #0x48
	bl      0x200d4c4
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x30
	mov     r2, #0x48
	bl      0x200d4c4
	b       branch_22217b2
@ 0x2221770

.thumb
branch_2221770: @ 2221770 :thumb
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2221796
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd0
	mov     r2, #0x48
	bl      0x200d4c4
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x30
	mov     r2, #0x48
	bl      0x200d4c4
	b       branch_22217b2
@ 0x2221796

.thumb
branch_2221796: @ 2221796 :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x30
	mov     r2, #0x48
	bl      0x200d4c4
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd0
	mov     r2, #0x48
	bl      0x200d4c4
.thumb
branch_22217b2: @ 22217b2 :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d364
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x200d364
	pop     {r4,pc}
@ 0x22217cc

.thumb
Function_22217cc: @ 22217cc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x4
	ldr     r0, [r0, #0x24]
	mov     r3, r1
	bl      0x2024220
	ldr     r1, [pc, #0xbc] @ 0x22218a4, (=#0xb58)
	ldr     r2, [pc, #0xbc] @ 0x22218a8, (=#0x4000060)
	str     r0, [r4, r1]
	ldrh    r1, [r2, #0x0]
	ldr     r0, [pc, #0xbc] @ 0x22218ac, (=#0xffffcfff)
	and     r1, r0
	mov     r0, #0x8
	orr     r0, r1
	strh    r0, [r2, #0x0]
	bl      0x2014000
	ldr     r0, [r4, #0x0]
	mov     r1, #0x12
	ldr     r0, [r0, #0x24]
	lsl     r1, r1, #10
	bl      0x2018144
	mov     r2, #0xb6
	lsl     r2, r2, #4
	str     r0, [r4, r2]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r3, #0x12
	ldr     r0, [r0, #0x24]
	ldr     r1, [pc, #0x94] @ 0x22218b0, (=#0x222194d)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x94] @ 0x22218b4, (=#0x2221929)
	ldr     r2, [r4, r2]
	lsl     r3, r3, #10
	bl      0x2014014
	ldr     r1, [pc, #0x90] @ 0x22218b8, (=#0xb5c)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	bl      0x2014784
	mov     r2, r0
	mov     r0, #0x1
	mov     r1, #0xe1
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      0x20206bc
	ldr     r2, [r4, #0x0]
	mov     r0, #0x3d
	ldr     r2, [r2, #0x24]
	mov     r1, #0x2
	bl      0x20144c4
	mov     r1, r0
	ldr     r0, [pc, #0x68] @ 0x22218b8, (=#0xb5c)
	mov     r2, #0xa
	ldr     r0, [r4, r0]
	mov     r3, #0x1
	bl      0x20144cc
	mov     r1, #0x0
	ldr     r0, [pc, #0x5c] @ 0x22218b8, (=#0xb5c)
	mov     r2, r1
	ldr     r0, [r4, r0]
	mov     r3, r1
	bl      0x20146f4
	ldr     r0, [pc, #0x50] @ 0x22218b8, (=#0xb5c)
	mov     r2, #0x0
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	mov     r3, r2
	bl      0x20146f4
	ldr     r0, [pc, #0x40] @ 0x22218b8, (=#0xb5c)
	mov     r2, #0x0
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	mov     r3, r2
	bl      0x20146f4
	ldr     r0, [pc, #0x34] @ 0x22218b8, (=#0xb5c)
	mov     r2, #0x0
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	mov     r3, r2
	bl      0x20146f4
	ldr     r0, [pc, #0x24] @ 0x22218b8, (=#0xb5c)
	mov     r2, #0x0
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	mov     r3, r2
	bl      0x20146f4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22218a2


.align 2


.word 0xb58 @ 0x22218a4
.word 0x4000060 @ 0x22218a8
.word 0xffffcfff @ 0x22218ac
.word 0x222194d @ 0x22218b0
.word 0x2221929 @ 0x22218b4
.word 0xb5c @ 0x22218b8
.thumb
Function_22218bc: @ 22218bc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_22218ce
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22218ce

.thumb
branch_22218ce: @ 22218ce :thumb
	bl      0x20241b4
	ldr     r0, [pc, #0x1c] @ 0x22218f0, (=#0xb5c)
	ldr     r0, [r4, r0]
	bl      0x2014710
	cmp     r0, #0x0
	bne     branch_22218e2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22218e2

.thumb
branch_22218e2: @ 22218e2 :thumb
	bl      0x201469c
	bl      0x20146c0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22218ee


.align 2


.word 0xb5c @ 0x22218f0
.thumb
Function_22218f4: @ 22218f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_222191c
	ldr     r0, [pc, #0x1c] @ 0x2221920, (=#0xb5c)
	ldr     r0, [r4, r0]
	bl      0x201411c
	mov     r0, #0xb6
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0xc] @ 0x2221924, (=#0xb58)
	ldr     r0, [r4, r0]
	bl      0x20242c4
.thumb
branch_222191c: @ 222191c :thumb
	pop     {r4,pc}
@ 0x222191e


.align 2


.word 0xb5c @ 0x2221920
.word 0xb58 @ 0x2221924
.thumb
Function_2221928: @ 2221928 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x2221948, (=#0x2100dec)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bl      0x20145b4
	cmp     r4, #0x0
	bne     branch_2221940
	bl      0x2022974
.thumb
branch_2221940: @ 2221940 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x2221946


.align 2


.word 0x2100dec @ 0x2221948
.thumb
Function_222194c: @ 222194c :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x222196c, (=#0x2100df4)
	mov     r2, #0x1
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bl      0x20145f4
	cmp     r4, #0x0
	bne     branch_2221964
	bl      0x2022974
.thumb
branch_2221964: @ 2221964 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x222196a


.align 2


.word 0x2100df4 @ 0x222196c
.thumb
Function_2221970: @ 2221970 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x64
	ldr     r5, [pc, #0x88] @ 0x2221a00, (=#0x2222a98)
	add     r3, sp, #0x54
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x78] @ 0x2221a04, (=#0x2222b9c)
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r5, [pc, #0x54] @ 0x2221a08, (=#0x2222b48)
	add     r3, sp, #0x1c
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r5, [pc, #0x30] @ 0x2221a0c, (=#0x2222bd4)
	add     r3, sp, #0x0
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	add     sp, #0x64
	pop     {r4,r5,pc}
@ 0x22219fe


.align 2


.word 0x2222a98 @ 0x2221a00
.word 0x2222b9c @ 0x2221a04
.word 0x2222b48 @ 0x2221a08
.word 0x2222bd4 @ 0x2221a0c
.thumb
Function_2221a10: @ 2221a10 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1e
	mov     r1, #0x0
	bl      0x201ff0c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	bl      0x20181c4
	pop     {r4,pc}
@ 0x2221a3c

.thumb
Function_2221a3c: @ 2221a3c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x14
	ldr     r1, [r1, #0x24]
	bl      0x2006c24
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	mov     r3, #0x3
	ldr     r1, [r1, #0x24]
	mov     r4, r0
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r1, #0xf
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x11
	ldr     r0, [r0, #0x24]
	mov     r3, #0x3
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	bl      0x200710c
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0x24]
	mov     r1, #0x10
	bl      0x2006cb8
	add     r1, sp, #0x10
	mov     r6, r0
	blx 0x20a71b0
	ldr     r2, [sp, #0x10]
	mov     r0, #0x3
	ldr     r1, [r2, #0xc]
	ldr     r2, [r2, #0x8]
	mov     r3, #0x0
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	bl      0x201972c
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x30] @ 0x2221adc, (=#0x4e4)
	ldr     r1, [r1, #0xc]
	add     r0, r5, r0
	add     r1, #0x60
	mov     r2, #0x60
	blx 0x20d50b8
	mov     r0, r6
	bl      0x20181c4
	ldr     r0, [r5, #0x0]
	mov     r2, #0xa9
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x1c] @ 0x2221ae0, (=#0x424)
	add     r1, r5, r2
	add     r2, #0xc0
	ldr     r0, [r0, #0x24]
	add     r2, r5, r2
	add     r3, r5, r3
	bl      0x2081940
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2221adc

.word 0x4e4 @ 0x2221adc
.word 0x424 @ 0x2221ae0
.thumb
Function_2221ae4: @ 2221ae4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r6, [pc, #0xcc] @ 0x2221bb8, (=#0x2222a70)
	mov     r4, #0x0
	mov     r7, r5
.thumb
branch_2221af0: @ 2221af0 :thumb
	cmp     r4, #0x0
	beq     branch_2221af8
	cmp     r4, #0x3
	bne     branch_2221b00
.thumb
branch_2221af8: @ 2221af8 :thumb
	mov     r0, #0xa9
	lsl     r0, r0, #2
	add     r1, r5, r0
	b       branch_2221b16
@ 0x2221b00

.thumb
branch_2221b00: @ 2221b00 :thumb
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldrh    r0, [r7, r0]
	cmp     r0, #0x0
	bne     branch_2221b10
	ldr     r0, [pc, #0xb0] @ 0x2221bbc, (=#0x424)
	add     r1, r5, r0
	b       branch_2221b16
@ 0x2221b10

.thumb
branch_2221b10: @ 2221b10 :thumb
	mov     r0, #0xd9
	lsl     r0, r0, #2
	add     r1, r5, r0
.thumb
branch_2221b16: @ 2221b16 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x10
	str     r0, [sp, #0x14]
	mov     r0, #0x6
	str     r0, [sp, #0x18]
	ldrb    r2, [r6, #0x0]
	ldrb    r3, [r6, #0x1]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x20198e8
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldrh    r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_2221ba2
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	add     r0, r4, #0x3
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldrb    r2, [r6, #0x0]
	ldrb    r3, [r6, #0x1]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x2019e2c
	cmp     r4, #0x3
	bcs     branch_2221b6e
	ldr     r0, [r5, #0x0]
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_2221b7c
.thumb
branch_2221b6e: @ 2221b6e :thumb
	cmp     r4, #0x3
	bcc     branch_2221b90
	ldr     r0, [r5, #0x0]
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2221b90
.thumb
branch_2221b7c: @ 2221b7c :thumb
	ldr     r1, [pc, #0x40] @ 0x2221bc0, (=#0x504)
	add     r3, r4, #0x3
	lsl     r3, r3, #21
	mov     r0, #0x2
	add     r1, r5, r1
	mov     r2, #0x20
	lsr     r3, r3, #16
	bl      0x201972c
	b       branch_2221ba2
@ 0x2221b90

.thumb
branch_2221b90: @ 2221b90 :thumb
	ldr     r1, [pc, #0x30] @ 0x2221bc4, (=#0x4e4)
	add     r3, r4, #0x3
	lsl     r3, r3, #21
	mov     r0, #0x2
	add     r1, r5, r1
	mov     r2, #0x20
	lsr     r3, r3, #16
	bl      0x201972c
.thumb
branch_2221ba2: @ 2221ba2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x18
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0x6
	bcc     branch_2221af0
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2221bb8

.word 0x2222a70 @ 0x2221bb8
.word 0x424 @ 0x2221bbc
.word 0x504 @ 0x2221bc0
.word 0x4e4 @ 0x2221bc4
.thumb
Function_2221bc8: @ 2221bc8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	str     r1, [sp, #0x0]
	mov     r1, r2
	bl      0x2019fe4
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2221be6
	mov     r7, #0x10
	b       branch_2221be8
@ 0x2221be6

.thumb
branch_2221be6: @ 2221be6 :thumb
	mov     r7, #0x0
.thumb
branch_2221be8: @ 2221be8 :thumb
	mov     r5, #0x0
.thumb
branch_2221bea: @ 2221bea :thumb
	lsl     r0, r5, #5
	add     r0, r7, r0
	lsl     r4, r0, #1
	ldr     r0, [sp, #0x0]
	lsl     r1, r5, #5
	add     r0, r0, r1
	add     r1, r6, r4
	mov     r2, #0x20
	blx 0x20d50b8
	add     r0, r6, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx 0x20d5124
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x18
	bcc     branch_2221bea
	pop     {r3-r7,pc}
@ 0x2221c14

.thumb
Function_2221c14: @ 2221c14 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x28] @ 0x2221c40, (=#0x544)
	mov     r4, r0
	add     r1, r4, r1
	mov     r2, #0x1
	bl      Function_2221bc8
	ldr     r1, [pc, #0x20] @ 0x2221c44, (=#0x844)
	mov     r0, r4
	add     r1, r4, r1
	mov     r2, #0x2
	bl      Function_2221bc8
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x201c3c0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x201c3c0
	pop     {r4,pc}
@ 0x2221c40

.word 0x544 @ 0x2221c40
.word 0x844 @ 0x2221c44
.thumb
Function_2221c48: @ 2221c48 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2221ca8
	mov     r0, #0x20
	sub     r6, r0, r4
	ldr     r1, [pc, #0xac] @ 0x2221d0c, (=#0x544)
	str     r4, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	add     r1, r5, r1
	str     r1, [sp, #0x8]
	mov     r3, #0x0
	str     r3, [sp, #0xc]
	lsl     r2, r6, #24
	str     r3, [sp, #0x10]
	mov     r1, #0x10
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	lsr     r2, r2, #24
	bl      0x20198e8
	ldr     r0, [pc, #0x8c] @ 0x2221d10, (=#0x844)
	lsl     r2, r6, #24
	str     r4, [sp, #0x0]
	mov     r1, #0x18
	str     r1, [sp, #0x4]
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	mov     r3, #0x0
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, #0x10
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	lsr     r2, r2, #24
	bl      0x20198e8
	b       branch_2221cf6
@ 0x2221ca8

.thumb
branch_2221ca8: @ 2221ca8 :thumb
	ldr     r2, [pc, #0x60] @ 0x2221d0c, (=#0x544)
	mov     r0, #0x10
	str     r4, [sp, #0x0]
	mov     r1, #0x18
	sub     r6, r0, r4
	str     r1, [sp, #0x4]
	add     r2, r5, r2
	str     r2, [sp, #0x8]
	lsl     r2, r6, #24
	lsr     r2, r2, #24
	str     r2, [sp, #0xc]
	mov     r2, #0x0
	str     r2, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	mov     r3, r2
	bl      0x20198e8
	ldr     r1, [pc, #0x3c] @ 0x2221d10, (=#0x844)
	mov     r2, #0x0
	str     r4, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	add     r1, r5, r1
	str     r1, [sp, #0x8]
	lsl     r1, r6, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r1, #0x10
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	mov     r3, r2
	bl      0x20198e8
.thumb
branch_2221cf6: @ 2221cf6 :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      0x201c3c0
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x2221d0a


.align 2


.word 0x544 @ 0x2221d0c
.word 0x844 @ 0x2221d10
.thumb
Function_2221d14: @ 2221d14 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, r1
	str     r1, [sp, #0x0]
	mov     r5, r2
	bl      0x207a0f8
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x18
	mul     r0, r5
	add     r0, r4, r0
	mov     r6, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_2221d34: @ 2221d34 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, r6
	bhi     branch_2221d56
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      0x2079d8c
	mov     r1, #0x18
	mov     r2, r6
	mul     r2, r1
	ldr     r1, [sp, #0x4]
	add     r2, r1, r2
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	b       branch_2221e30
@ 0x2221d56

.thumb
branch_2221d56: @ 2221d56 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x18
	mov     r2, r6
	mul     r2, r1
	ldr     r1, [sp, #0x4]
	mov     r4, r0
	add     r7, r1, r2
	bl      0x2079d80
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x86
	lsl     r1, r1, #2
	strh    r0, [r7, r1]
	mov     r0, r1
	ldrh    r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_2221e30
	mov     r0, #0x18
	mov     r1, r6
	mul     r1, r0
	ldr     r0, [sp, #0x4]
	mov     r2, #0x0
	add     r5, r0, r1
	mov     r0, r4
	mov     r1, #0x4c
	bl      GetPkmnData
	ldr     r1, [pc, #0x9c] @ 0x2221e40, (=#0x223)
	mov     r2, #0x0
	strb    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0xa3
	bl      GetPkmnData
	ldr     r1, [pc, #0x94] @ 0x2221e44, (=#0x21a)
	mov     r2, #0x0
	strh    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0xa4
	bl      GetPkmnData
	mov     r1, #0x87
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x22
	lsl     r1, r1, #4
	strb    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x68] @ 0x2221e48, (=#0x21e)
	mov     r2, #0x0
	strh    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0xa2
	bl      GetPkmnData
	mov     r1, #0x89
	lsl     r1, r1, #2
	strb    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x50] @ 0x2221e4c, (=#0x225)
	mov     r2, #0x0
	strb    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0xb0
	bl      GetPkmnData
	cmp     r0, #0x1
	bne     branch_2221e10
	mov     r1, #0x0
	b       branch_2221e12
@ 0x2221e10

.thumb
branch_2221e10: @ 2221e10 :thumb
	mov     r1, #0x1
.thumb
branch_2221e12: @ 2221e12 :thumb
	ldr     r0, [pc, #0x3c] @ 0x2221e50, (=#0x222)
	strb    r1, [r7, r0]
	mov     r0, r4
	bl      0x2075d6c
	ldr     r1, [pc, #0x34] @ 0x2221e54, (=#0x221)
	strb    r0, [r5, r1]
	mov     r0, r4
	bl      0x208e9f0
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r0, #0x8a
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2221e30: @ 2221e30 :thumb
	add     r0, r6, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	cmp     r6, #0x3
	bcs     branch_2221e3c
	b       branch_2221d34
@ 0x2221e3c

.thumb
branch_2221e3c: @ 2221e3c :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2221e40

.word 0x223 @ 0x2221e40
.word 0x21a @ 0x2221e44
.word 0x21e @ 0x2221e48
.word 0x225 @ 0x2221e4c
.word 0x222 @ 0x2221e50
.word 0x221 @ 0x2221e54
.thumb
Function_2221e58: @ 2221e58 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x85
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x90
	blx 0x20d5124
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0x4]
	mov     r2, #0x0
	bl      Function_2221d14
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0xc]
	mov     r2, #0x3
	bl      Function_2221d14
	pop     {r4,pc}
@ 0x2221e84

.thumb
Function_2221e84: @ 2221e84 :thumb
	push    {r4,lr}
	mov     r3, r0
	mov     r2, r1
	mov     r0, #0x18
	mul     r2, r0
	ldr     r1, [pc, #0x58] @ 0x2221ee8, (=#0x21a)
	add     r4, r3, r2
	ldrh    r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_2221e9c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2221e9c

.thumb
branch_2221e9c: @ 2221e9c :thumb
	add     r1, #0xe
	ldr     r1, [r4, r1]
	cmp     r1, #0x7
	beq     branch_2221eac
	cmp     r1, #0x0
	beq     branch_2221eac
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x2221eac

.thumb
branch_2221eac: @ 2221eac :thumb
	mov     r1, #0x87
	add     r2, r3, r2
	lsl     r1, r1, #2
	ldrh    r1, [r2, r1]
	mov     r2, #0x30
	bl      0x208c104
	cmp     r0, #0x4
	bhi     branch_2221ee4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2221eca

Jumppoints_2221eca:
.hword branch_2221ee4 - Jumppoints_2221eca - 2
.hword branch_2221ee0 - Jumppoints_2221eca - 2
.hword branch_2221edc - Jumppoints_2221eca - 2
.hword branch_2221ed8 - Jumppoints_2221eca - 2
.hword branch_2221ed4 - Jumppoints_2221eca - 2
.thumb
branch_2221ed4: @ 2221ed4 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2221ed8

.thumb
branch_2221ed8: @ 2221ed8 :thumb
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2221edc

.thumb
branch_2221edc: @ 2221edc :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2221ee0

.thumb
branch_2221ee0: @ 2221ee0 :thumb
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x2221ee4

.thumb
branch_2221ee4: @ 2221ee4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2221ee8

.word 0x21a @ 0x2221ee8
.thumb
Function_2221eec: @ 2221eec :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0x0]
	mov     r0, r1
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x144] @ 0x2222044, (=#0x2222c6c)
	add     r7, r0, r1
	lsl     r0, r7, #2
	add     r4, r5, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0xa
	mul     r1, r0
	str     r4, [sp, #0x4]
	add     r6, r2, r1
.thumb
branch_2221f10: @ 2221f10 :thumb
	mov     r1, #0x1c
	mov     r2, r7
	mul     r2, r1
	ldr     r1, [pc, #0x130] @ 0x2222048, (=#0x2222f3c)
	mov     r0, r5
	add     r1, r1, r2
	bl      Function_2220ba0
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldrb    r1, [r6, #0x0]
	ldrb    r2, [r6, #0x1]
	ldr     r0, [r4, r0]
	bl      0x200d4c4
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	str     r0, [sp, #0x8]
	cmp     r0, #0x5
	bcc     branch_2221f10
	ldr     r0, [sp, #0x0]
	mov     r2, #0x86
	mov     r1, #0x18
	mov     r6, r0
	mul     r6, r1
	add     r3, r5, r6
	lsl     r2, r2, #2
	ldrh    r0, [r3, r2]
	cmp     r0, #0x0
	bne     branch_2221f78
	mov     r5, #0x0
	mov     r4, r2
	mov     r6, r5
	sub     r4, #0x80
.thumb
branch_2221f5e: @ 2221f5e :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	ldr     r0, [r0, r4]
	bl      0x200d3f4
	ldr     r0, [sp, #0x4]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x4]
	cmp     r5, #0x5
	bcc     branch_2221f5e
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2221f78

.thumb
branch_2221f78: @ 2221f78 :thumb
	ldr     r1, [sp, #0x0]
	mov     r4, #0x14
	mul     r4, r1
	mov     r1, r2
	sub     r1, #0x80
	add     r7, r5, r1
	mov     r1, r2
	add     r1, #0xd
	add     r2, #0xb
	ldrb    r1, [r3, r1]
	ldrb    r2, [r3, r2]
	bl      0x2079edc
	mov     r1, r0
	ldr     r0, [r7, r4]
	bl      0x200d41c
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2221e84
	mov     r1, r0
	ldr     r0, [r7, r4]
	bl      0x200d364
	ldr     r1, [pc, #0xa0] @ 0x222204c, (=#0x21e)
	add     r0, r5, r6
	ldrh    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_2221fc2
	add     r0, r5, r4
	sub     r1, #0x82
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      0x200d3f4
	b       branch_2221fe8
@ 0x2221fc2

.thumb
branch_2221fc2: @ 2221fc2 :thumb
	bl      0x207d2d0
	cmp     r0, #0x1
	bne     branch_2221fda
	mov     r0, #0x67
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x200d364
	b       branch_2221fe8
@ 0x2221fda

.thumb
branch_2221fda: @ 2221fda :thumb
	mov     r0, #0x67
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x200d364
.thumb
branch_2221fe8: @ 2221fe8 :thumb
	mov     r0, #0x89
	add     r1, r5, r6
	lsl     r0, r0, #2
	ldrb    r1, [r1, r0]
	cmp     r1, #0x0
	bne     branch_2222002
	add     r1, r5, r4
	sub     r0, #0x84
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	b       branch_222200e
@ 0x2222002

.thumb
branch_2222002: @ 2222002 :thumb
	add     r1, r5, r4
	sub     r0, #0x84
	ldr     r0, [r1, r0]
	mov     r1, #0x2
	bl      0x200d364
.thumb
branch_222200e: @ 222200e :thumb
	mov     r3, #0x8a
	add     r0, r5, r6
	lsl     r3, r3, #2
	ldr     r0, [r0, r3]
	cmp     r0, #0x7
	bne     branch_222202a
	add     r0, r5, r4
	sub     r3, #0x84
	ldr     r0, [r0, r3]
	mov     r1, #0x0
	bl      0x200d3f4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222202a

.thumb
branch_222202a: @ 222202a :thumb
	mov     r0, r3
	add     r1, r5, r4
	sub     r0, #0x84
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x8]
	mov     r2, #0x18
	mul     r2, r1
	add     r1, r5, r2
	ldr     r1, [r1, r3]
	bl      0x200d364
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2222044

.word 0x2222c6c @ 0x2222044
.word 0x2222f3c @ 0x2222048
.word 0x21e @ 0x222204c
.thumb
Function_2222050: @ 2222050 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r5, [pc, #0x58] @ 0x22220b0, (=#0x2222afc)
	add     r3, sp, #0x0
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, r2
	mov     r0, r4
	mov     r2, #0x1f
	bl      Function_2220b00
	mov     r0, r4
	bl      Function_22220b4
	mov     r0, r4
	bl      Function_222216c
	mov     r0, r4
	bl      Function_2222208
	mov     r0, r4
	bl      Function_22222a4
	mov     r5, #0x0
.thumb
branch_222208c: @ 222208c :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2221eec
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x6
	bcc     branch_222208c
	mov     r0, r4
	mov     r1, #0x10
	bl      Function_2222340
	mov     r0, #0x21
	mov     r1, #0x1e
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22220ae


.align 2


.word 0x2222afc @ 0x22220b0
.thumb
Function_22220b4: @ 22220b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x13
	ldr     r1, [r1, #0x24]
	bl      0x2006c24
	mov     r7, r0
	bl      0x2079fd0
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x88] @ 0x2222164, (=#0xb808)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r7
	bl      0x200cd0c
	bl      0x2079fd8
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x70] @ 0x2222168, (=#0xb809)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r7
	bl      0x200ce24
	bl      0x2079fe4
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x2222168, (=#0xb809)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r7
	bl      0x200ce54
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_222212c: @ 222212c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2222168, (=#0xb809)
	mov     r1, #0x65
	add     r0, r4, r0
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	mov     r3, #0x85
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	lsl     r3, r3, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r3, [r6, r3]
	mov     r2, r7
	bl      0x200cc3c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x18
	cmp     r4, #0x6
	bcc     branch_222212c
	mov     r0, r7
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2222164

.word 0xb808 @ 0x2222164
.word 0xb809 @ 0x2222168
.thumb
Function_222216c: @ 222216c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x14
	ldr     r1, [r1, #0x24]
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x22221fc, (=#0xb80f)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x14
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x58] @ 0x2222200, (=#0xb809)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x15
	bl      0x200cd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x2222204, (=#0xb80a)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x13
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x2222204, (=#0xb80a)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x12
	bl      0x200ce54
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22221fa


.align 2


.word 0xb80f @ 0x22221fc
.word 0xb809 @ 0x2222200
.word 0xb80a @ 0x2222204
.thumb
Function_2222208: @ 2222208 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x27
	ldr     r1, [r1, #0x24]
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x2222298, (=#0xb810)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x40
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x58] @ 0x222229c, (=#0xb80a)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x41
	bl      0x200cd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x22222a0, (=#0xb80b)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x3f
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x22222a0, (=#0xb80b)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x3e
	bl      0x200ce54
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2222296


.align 2


.word 0xb810 @ 0x2222298
.word 0xb80a @ 0x222229c
.word 0xb80b @ 0x22222a0
.thumb
Function_22222a4: @ 22222a4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x14
	ldr     r1, [r1, #0x24]
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x2222334, (=#0xb811)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x2
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x54] @ 0x2222338, (=#0xb80b)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x8
	bl      0x200cd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x222233c, (=#0xb80c)
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x1
	bl      0x200ce24
	mov     r3, #0x0
	mov     r1, #0x19
	ldr     r0, [pc, #0x24] @ 0x222233c, (=#0xb80c)
	str     r3, [sp, #0x0]
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200ce54
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2222332


.align 2


.word 0xb811 @ 0x2222334
.word 0xb80b @ 0x2222338
.word 0xb80c @ 0x222233c
.thumb
Function_2222340: @ 2222340 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r7, r1
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_222235a
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	lsl     r0, r7, #19
	b       branch_2222364
@ 0x222235a

.thumb
branch_222235a: @ 222235a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	lsl     r0, r7, #3
	neg     r0, r0
	lsl     r0, r0, #16
.thumb
branch_2222364: @ 2222364 :thumb
	asr     r7, r0, #16
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	mov     r1, #0xa
	ldr     r2, [pc, #0x4c] @ 0x22223bc, (=#0x2222c6c)
	mul     r1, r0
	add     r0, r2, r1
	str     r0, [sp, #0x4]
.thumb
branch_2222376: @ 2222376 :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	ldr     r4, [sp, #0x4]
	add     r1, r1, r0
	lsl     r0, r1, #2
	add     r0, r1, r0
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r5, r0, r1
.thumb
branch_222238a: @ 222238a :thumb
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x66
	lsl     r0, r0, #2
	add     r1, r7, r1
	lsl     r1, r1, #16
	ldrb    r2, [r4, #0x1]
	ldr     r0, [r5, r0]
	asr     r1, r1, #16
	bl      0x200d4c4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x5
	blt     branch_222238a
	ldr     r0, [sp, #0x4]
	add     r0, #0xa
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x3
	blt     branch_2222376
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22223bc

.word 0x2222c6c @ 0x22223bc
.thumb
Function_22223c0: @ 22223c0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	ldr     r4, [pc, #0x1c] @ 0x22223e4, (=#0x2222cf4)
	mov     r6, #0x0
	add     r5, #0x10
.thumb
branch_22223cc: @ 22223cc :thumb
	ldr     r0, [r7, #0xc]
	mov     r1, r5
	mov     r2, r4
	bl      0x201a8d4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r6, #0x18
	bcc     branch_22223cc
	pop     {r3-r7,pc}
@ 0x22223e2


.align 2


.word 0x2222cf4 @ 0x22223e4
.thumb
Function_22223e8: @ 22223e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x10
.thumb
branch_22223f0: @ 22223f0 :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x18
	bcc     branch_22223f0
	pop     {r3-r5,pc}
@ 0x2222400

.thumb
Function_2222400: @ 2222400 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	ldr     r4, [sp, #0x3c]
	mov     r5, r0
	mov     r7, r5
	lsl     r0, r4, #6
	add     r7, #0x10
	str     r0, [sp, #0x1c]
	str     r1, [sp, #0x10]
	str     r3, [sp, #0x14]
	ldr     r6, [sp, #0x38]
	cmp     r4, #0x3
	ldr     r0, [r5, #0x0]
	bcs     branch_2222428
	ldr     r0, [r0, #0x4]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x18]
	b       branch_2222432
@ 0x2222428

.thumb
branch_2222428: @ 2222428 :thumb
	ldr     r0, [r0, #0xc]
	.hword  0x1ee1 @ sub r1, r4, #0x3
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x18]
.thumb
branch_2222432: @ 2222432 :thumb
	mov     r1, r4
	ldr     r0, [sp, #0x10]
	add     r1, #0x8
	bl      0x200b1ec
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	bl      0x2076b10
	mov     r2, r0
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	bl      0x200b5cc
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x20]
	mov     r1, r6
	bl      0x200c388
	ldr     r0, [sp, #0x20]
	bl      0x20237bc
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x7c] @ 0x22224e4, (=#0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	mov     r3, r1
	add     r0, r7, r0
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, #0x18
	mul     r0, r4
	add     r2, r5, r0
	ldr     r0, [pc, #0x68] @ 0x22224e8, (=#0x222)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_22224e0
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldrb    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_22224b8
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1b
	mov     r2, r6
	bl      0x200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	mov     r2, r6
	add     r0, r7, r0
	mov     r3, #0x40
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22224b8

.thumb
branch_22224b8: @ 22224b8 :thumb
	cmp     r0, #0x1
	bne     branch_22224e0
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1c
	mov     r2, r6
	bl      0x200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x22224ec, (=#0x50600)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	mov     r3, #0x40
	add     r0, r7, r0
	str     r1, [sp, #0xc]
	bl      0x201d78c
.thumb
branch_22224e0: @ 22224e0 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22224e4

.word 0xf0e00 @ 0x22224e4
.word 0x222 @ 0x22224e8
.word 0x50600 @ 0x22224ec
.thumb
Function_22224f0: @ 22224f0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	ldr     r3, [sp, #0x24]
	mov     r4, r0
	lsl     r5, r3, #2
	.hword  0x1c6d @ add r5, r5, #0x1
	mov     r1, #0x0
	add     r0, #0x10
	lsl     r5, r5, #4
	str     r1, [sp, #0x0]
	add     r0, r0, r5
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, r2
	mov     r2, #0x18
	mul     r2, r3
	add     r3, r4, r2
	mov     r2, #0x22
	lsl     r2, r2, #4
	ldrb    r2, [r3, r2]
	mov     r1, #0x1
	mov     r3, #0x3
	bl      0x200c648
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2222528

.thumb
Function_2222528: @ 2222528 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r1, [sp, #0x24]
	mov     r5, r0
	lsl     r0, r1, #2
	mov     r7, r2
	mov     r2, r5
	.hword  0x1c80 @ add r0, r0, #0x2
	mov     r6, r1
	add     r2, #0x10
	lsl     r0, r0, #4
	add     r4, r2, r0
	mov     r0, #0x18
	mul     r6, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0x40] @ 0x2222590, (=#0x21a)
	add     r2, r5, r6
	ldrh    r1, [r2, r1]
	mov     r0, r7
	mov     r2, #0x3
	mov     r3, #0x1
	bl      0x200c5bc
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, r4
	mov     r3, #0x18
	bl      0x200c578
	mov     r1, #0x87
	str     r4, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	add     r2, r5, r6
	lsl     r1, r1, #2
	ldrh    r1, [r2, r1]
	mov     r0, r7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      0x200c5bc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222258e


.align 2


.word 0x21a @ 0x2222590
.thumb
Function_2222594: @ 2222594 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	lsl     r0, r1, #2
	mov     r2, r5
	.hword  0x1cc0 @ add r0, r0, #0x3
	add     r2, #0x10
	lsl     r0, r0, #4
	add     r4, r2, r0
	mov     r0, #0x18
	mov     r6, r1
	mul     r6, r0
	mov     r0, #0x87
	lsl     r0, r0, #2
	add     r7, r5, r0
	.hword  0x1e80 @ sub r0, r0, #0x2
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	ldrh    r0, [r0, r6]
	ldrh    r1, [r7, r6]
	mov     r2, #0x30
	bl      0x208c104
	cmp     r0, #0x4
	bhi     branch_2222622
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22225d2

Jumppoints_22225d2:
.hword branch_2222622 - Jumppoints_22225d2 - 2
.hword branch_222260c - Jumppoints_22225d2 - 2
.hword branch_22225f4 - Jumppoints_22225d2 - 2
.hword branch_22225dc - Jumppoints_22225d2 - 2
.hword branch_22225dc - Jumppoints_22225d2 - 2
.thumb
branch_22225dc: @ 22225dc :thumb
	ldrb    r3, [r4, #0x9]
	ldr     r1, [pc, #0x98] @ 0x2222678, (=#0x4f6)
	mov     r0, #0x1
	lsl     r3, r3, #4
	add     r3, #0x9
	lsl     r3, r3, #17
	add     r1, r5, r1
	mov     r2, #0x4
	lsr     r3, r3, #16
	bl      0x201972c
	b       branch_2222622
@ 0x22225f4

.thumb
branch_22225f4: @ 22225f4 :thumb
	ldrb    r3, [r4, #0x9]
	ldr     r1, [pc, #0x84] @ 0x222267c, (=#0x516)
	mov     r0, #0x1
	lsl     r3, r3, #4
	add     r3, #0x9
	lsl     r3, r3, #17
	add     r1, r5, r1
	mov     r2, #0x4
	lsr     r3, r3, #16
	bl      0x201972c
	b       branch_2222622
@ 0x222260c

.thumb
branch_222260c: @ 222260c :thumb
	ldrb    r3, [r4, #0x9]
	ldr     r1, [pc, #0x70] @ 0x2222680, (=#0x536)
	mov     r0, #0x1
	lsl     r3, r3, #4
	add     r3, #0x9
	lsl     r3, r3, #17
	add     r1, r5, r1
	mov     r2, #0x4
	lsr     r3, r3, #16
	bl      0x201972c
.thumb
branch_2222622: @ 2222622 :thumb
	ldr     r0, [sp, #0x8]
	ldrh    r1, [r7, r6]
	ldrh    r0, [r0, r6]
	mov     r2, #0x30
	bl      0x208c0bc
	mov     r5, r0
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201ae78
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x9
	mov     r2, #0x0
	mov     r3, #0x3
	bl      0x201ae78
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	mov     r3, #0x5
	bl      0x201ae78
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2222676


.align 2


.word 0x4f6 @ 0x2222678
.word 0x516 @ 0x222267c
.word 0x536 @ 0x2222680
.thumb
Function_2222684: @ 2222684 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	ldr     r6, [sp, #0x2c]
	mov     r5, r7
	str     r1, [sp, #0x8]
	add     r5, #0x10
	lsl     r4, r6, #6
	add     r0, r5, r4
	mov     r1, #0x0
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x10]
	bl      0x201ada4
	add     r0, r5, r4
	add     r0, #0x10
	mov     r1, #0x0
	bl      0x201ada4
	add     r0, r5, r4
	add     r0, #0x20
	mov     r1, #0x0
	bl      0x201ada4
	add     r0, r5, r4
	add     r0, #0x30
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r0, r7
	str     r6, [sp, #0x4]
	bl      Function_2222400
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r0, r7
	str     r6, [sp, #0x4]
	bl      Function_22224f0
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r0, r7
	str     r6, [sp, #0x4]
	bl      Function_2222528
	mov     r0, r7
	mov     r1, r6
	bl      Function_2222594
	add     r0, r5, r4
	bl      0x201a9a4
	add     r0, r5, r4
	add     r0, #0x10
	bl      0x201a9a4
	add     r0, r5, r4
	add     r0, #0x20
	bl      0x201a9a4
	add     r0, r5, r4
	add     r0, #0x30
	bl      0x201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x222271e


.align 2, 0


.thumb
Function_2222720: @ 2222720 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldr     r3, [r6, #0x0]
	ldr     r2, [pc, #0x74] @ 0x22227a0, (=#0x1c5)
	ldr     r3, [r3, #0x24]
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      0x200b144
	ldr     r3, [r6, #0x0]
	str     r0, [sp, #0x10]
	ldr     r3, [r3, #0x24]
	mov     r0, #0xf
	mov     r1, #0xe
	mov     r2, #0x0
	bl      0x200c440
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x200b358
	ldr     r1, [r6, #0x0]
	str     r0, [sp, #0x8]
	ldr     r1, [r1, #0x24]
	mov     r0, #0x20
	bl      0x2023790
	mov     r7, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2222760: @ 2222760 :thumb
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222277a
	ldr     r1, [sp, #0x10]
	str     r7, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r0, r6
	str     r4, [sp, #0x4]
	bl      Function_2222684
.thumb
branch_222277a: @ 222277a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x6
	bcc     branch_2222760
	mov     r0, r7
	bl      0x20237bc
	ldr     r0, [sp, #0x10]
	bl      0x200b190
	ldr     r0, [sp, #0xc]
	bl      0x200c560
	ldr     r0, [sp, #0x8]
	bl      0x200b3f0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x222279e


.align 2


.word 0x1c5 @ 0x22227a0
.thumb
Function_22227a4: @ 22227a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2222828
	bl      0x203608c
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	mov     r0, r4
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      0x203a2dc
	cmp     r0, #0x1
	bne     branch_2222820
	mov     r0, #0x1
	mov     r7, r5
	eor     r7, r0
	mov     r0, #0x34
	ldr     r1, [r4, #0x0]
	mul     r0, r7
	add     r0, r1, r0
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	bl      0x20793ac
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x10
	bl      0x2018144
	mov     r5, r0
	mov     r0, r7
	bl      0x20362f4
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x14]
	mov     r1, r5
	mov     r2, #0x8
	bl      0x2023df0
	ldr     r1, [sp, #0x10]
	ldr     r3, [r4, #0x24]
	mov     r0, r5
	mov     r2, r6
	bl      0x202c174
	mov     r6, r0
	mov     r0, r5
	bl      0x20181c4
	b       branch_22229be
@ 0x2222820

.thumb
branch_2222820: @ 2222820 :thumb
	bl      0x203895c
	cmp     r0, #0x4
	bls     branch_222282a
.thumb
branch_2222828: @ 2222828 :thumb
	b       branch_22229ce
@ 0x222282a

.thumb
branch_222282a: @ 222282a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2222836

Jumppoints_2222836:
.hword branch_22229ba - Jumppoints_2222836 - 2
.hword branch_2222840 - Jumppoints_2222836 - 2
.hword branch_222288c - Jumppoints_2222836 - 2
.hword branch_22228d8 - Jumppoints_2222836 - 2
.hword branch_2222924 - Jumppoints_2222836 - 2
.thumb
branch_2222840: @ 2222840 :thumb
	mov     r0, #0x1
	mov     r7, r5
	eor     r7, r0
	mov     r0, #0x34
	ldr     r1, [r4, #0x0]
	mul     r0, r7
	add     r0, r1, r0
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	bl      0x20793ac
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x10
	bl      0x2018144
	mov     r5, r0
	mov     r0, r7
	bl      0x20362f4
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x14]
	mov     r1, r5
	mov     r2, #0x8
	bl      0x2023df0
	ldr     r1, [sp, #0x14]
	ldr     r3, [r4, #0x24]
	mov     r0, r5
	mov     r2, r6
	bl      0x202bfcc
	mov     r6, r0
	mov     r0, r5
	bl      0x20181c4
	b       branch_22229be
@ 0x222288c

.thumb
branch_222288c: @ 222288c :thumb
	mov     r0, #0x1
	mov     r7, r5
	eor     r7, r0
	mov     r0, #0x34
	ldr     r1, [r4, #0x0]
	mul     r0, r7
	add     r0, r1, r0
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	bl      0x20793ac
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x10
	bl      0x2018144
	mov     r5, r0
	mov     r0, r7
	bl      0x20362f4
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x14]
	mov     r1, r5
	mov     r2, #0x8
	bl      0x2023df0
	ldr     r1, [sp, #0x18]
	ldr     r3, [r4, #0x24]
	mov     r0, r5
	mov     r2, r6
	bl      0x202c00c
	mov     r6, r0
	mov     r0, r5
	bl      0x20181c4
	b       branch_22229be
@ 0x22228d8

.thumb
branch_22228d8: @ 22228d8 :thumb
	mov     r0, #0x1
	mov     r7, r5
	eor     r7, r0
	mov     r0, #0x34
	ldr     r1, [r4, #0x0]
	mul     r0, r7
	add     r0, r1, r0
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	bl      0x20793ac
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x10
	bl      0x2018144
	mov     r5, r0
	mov     r0, r7
	bl      0x20362f4
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x14]
	mov     r1, r5
	mov     r2, #0x8
	bl      0x2023df0
	ldr     r1, [sp, #0x1c]
	ldr     r3, [r4, #0x24]
	mov     r0, r5
	mov     r2, r6
	bl      0x202c0ac
	mov     r6, r0
	mov     r0, r5
	bl      0x20181c4
	b       branch_22229be
@ 0x2222924

.thumb
branch_2222924: @ 2222924 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x10
	bl      0x2018144
	mov     r5, r0
	ldr     r0, [r4, #0x24]
	mov     r1, #0x10
	bl      0x2018144
	mov     r7, r0
	bl      Function_2220ad0
	cmp     r0, #0x1
	ldr     r0, [r4, #0x0]
	bne     branch_222296e
	add     r0, #0x5d
	ldrb    r0, [r0, #0x0]
	bl      0x20793ac
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	add     r0, #0xc5
	ldrb    r0, [r0, #0x0]
	bl      0x20793ac
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	mov     r2, #0x8
	bl      0x2023df0
	ldr     r0, [r4, #0x20]
	mov     r1, r7
	mov     r2, #0x8
	bl      0x2023df0
	b       branch_2222998
@ 0x222296e

.thumb
branch_222296e: @ 222296e :thumb
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	bl      0x20793ac
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	bl      0x20793ac
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	mov     r2, #0x8
	bl      0x2023df0
	ldr     r0, [r4, #0x1c]
	mov     r1, r7
	mov     r2, #0x8
	bl      0x2023df0
.thumb
branch_2222998: @ 2222998 :thumb
	str     r6, [sp, #0x0]
	ldr     r0, [r4, #0x24]
	mov     r1, r7
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	mov     r0, r5
	bl      0x202c04c
	mov     r6, r0
	mov     r0, r5
	bl      0x20181c4
	mov     r0, r7
	bl      0x20181c4
	b       branch_22229be
@ 0x22229ba

.thumb
branch_22229ba: @ 22229ba :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22229be

.thumb
branch_22229be: @ 22229be :thumb
	mov     r0, #0x52
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r6
	mov     r2, #0x4
	bl      0x202b758
.thumb
branch_22229ce: @ 22229ce :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22229d2


.align 2, 0


.thumb
Function_22229d4: @ 22229d4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2222a04, (=#0xb88)
	mov     r2, #0x0
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x10] @ 0x2222a04, (=#0xb88)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x1
	mov     r3, #0xf
	bl      0x200e060
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2222a02


.align 2


.word 0xb88 @ 0x2222a04
.thumb
Function_2222a08: @ 2222a08 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r1, [r0, #0x0]
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2222a20
	bl      0x202f250
	cmp     r0, #0x0
	bne     branch_2222a24
.thumb
branch_2222a20: @ 2222a20 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2222a24

.thumb
branch_2222a24: @ 2222a24 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2222a28

.thumb
Function_2222a28: @ 2222a28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2222a44, (=#0xbc4)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_2222a42
	sub     r0, #0x3c
	add     r0, r4, r0
	mov     r1, #0x1
	bl      0x200e7fc
	ldr     r1, [pc, #0x4] @ 0x2222a44, (=#0xbc4)
	str     r0, [r4, r1]
.thumb
branch_2222a42: @ 2222a42 :thumb
	pop     {r4,pc}
@ 0x2222a44

.word 0xbc4 @ 0x2222a44
.thumb
Function_2222a48: @ 2222a48 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x2222a60, (=#0xbc4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2222a5e
	bl      0x200eba0
	ldr     r0, [pc, #0x4] @ 0x2222a60, (=#0xbc4)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_2222a5e: @ 2222a5e :thumb
	pop     {r4,pc}
@ 0x2222a60

.word 0xbc4 @ 0x2222a60
@ 0x2222a64


.incbin "./baserom/overlay/overlay_0010.bin", 0x3264, 0x22232a0 - 0x2222a64


@end 0x22232a0




