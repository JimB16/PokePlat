
/*
0x343000 in arm9.bin
*/

.section .iwram73, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x1
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x52
	lsl     r2, r2, #18
	bl      0x2017fc8
	mov     r0, r5
	mov     r1, #0xc0
	mov     r2, #0x52
	bl      0x200681c
	mov     r1, #0x0
	mov     r2, #0xc0
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x52
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      0x2006840
	ldr     r0, [r0, #0x8]
	str     r0, [r4, #0x4]
	bl      0x2025e44
	mov     r1, #0x0
	str     r0, [r4, #0x8]
	str     r1, [r4, #0xc]
	str     r1, [r4, #0x10]
	str     r1, [r4, #0x14]
	ldr     r0, [r4, #0x8]
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x52
	mov     r3, #0x7
	bl      Function_208712c
	str     r0, [r4, #0x70]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x52
	mov     r2, #0x0
	mov     r3, #0x7
	bl      Function_208712c
	str     r0, [r4, #0x74]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x88
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x89
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x8a
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x8b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, #0x52
	mov     r1, #0x20
	bl      malloc
	mov     r1, r4
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, #0x52
	mov     r1, #0x20
	bl      malloc
	add     r4, #0xbc
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e20

.thumb
Function_21d0e20: @ 21d0e20 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	mov     r6, #0x0
	cmp     r1, #0x5
	bls     branch_21d0e36
	b       branch_21d0f68
@ 0x21d0e36

.thumb
branch_21d0e36: @ 21d0e36 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0e42

Jumppoints_21d0e42:
.hword branch_21d0e4e - Jumppoints_21d0e42 - 2
.hword branch_21d0eb6 - Jumppoints_21d0e42 - 2
.hword branch_21d0efe - Jumppoints_21d0e42 - 2
.hword branch_21d0f24 - Jumppoints_21d0e42 - 2
.hword branch_21d0f4c - Jumppoints_21d0e42 - 2
.hword branch_21d0f66 - Jumppoints_21d0e42 - 2
.thumb
branch_21d0e4e: @ 21d0e4e :thumb
	mov     r0, r6
	mov     r1, r6
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, r6
	bl      0x200f344
	mov     r0, r6
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, r6
	mov     r1, r0
	bl      0x20177bc
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xf0] @ 0x21d0f70, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xf0] @ 0x21d0f74, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, r4
	bl      Function_21d1058
	mov     r0, r4
	bl      Function_21d12c4
	mov     r0, r4
	bl      Function_21d1318
	ldr     r0, [pc, #0xd0] @ 0x21d0f78, (=0x21d0ff1)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      0x201ffd0
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0f68
@ 0x21d0eb6

.thumb
branch_21d0eb6: @ 21d0eb6 :thumb
	bl      Function_21d2318
	cmp     r0, #0x1
	bne     branch_21d0eda
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x2
	str     r0, [r5, #0x0]
.thumb
branch_21d0eda: @ 21d0eda :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21d0f68
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d0f68
@ 0x21d0efe

.thumb
branch_21d0efe: @ 21d0efe :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d0f68
	mov     r0, r4
	bl      Function_21d1300
	mov     r0, r4
	bl      Function_21d1238
	mov     r0, r4
	bl      Function_21d1328
	mov     r0, r6
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r6, #0x1
	b       branch_21d0f68
@ 0x21d0f24

.thumb
branch_21d0f24: @ 21d0f24 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d0f68
	mov     r0, r4
	bl      Function_21d1300
	mov     r0, r4
	bl      Function_21d1238
	mov     r0, r4
	bl      Function_21d1328
	mov     r0, r6
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d0f68
@ 0x21d0f4c

.thumb
branch_21d0f4c: @ 21d0f4c :thumb
	ldr     r0, [r4, #0x14]
	bl      0x2006844
	cmp     r0, #0x1
	bne     branch_21d0f68
	ldr     r0, [r4, #0x14]
	bl      0x2006814
	mov     r0, r6
	str     r0, [r4, #0x14]
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d0f68
@ 0x21d0f66

.thumb
branch_21d0f66: @ 21d0f66 :thumb
	str     r6, [r5, #0x0]
.thumb
branch_21d0f68: @ 21d0f68 :thumb
	mov     r0, r6
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d0f6e


.align 2


.word 0xffffe0ff @ 0x21d0f70
.word 0x4001000 @ 0x21d0f74
.word Function_21d0ff0+1 @ =0x21d0ff1, 0x21d0f78
.thumb
Function_21d0f7c: @ 21d0f7c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      0x200682c
	mov     r4, r0
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	ldr     r5, [r4, #0x0]
	bl      free
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      free
	ldr     r0, [r4, #0x4]
	bl      LoadTrainerDataAdress
	ldr     r1, [r4, #0x70]
	ldr     r1, [r1, #0x18]
	bl      0x2025ee0
	ldr     r0, [r4, #0x4]
	bl      LoadTrainerDataAdress
	ldr     r1, [r4, #0x70]
	ldr     r1, [r1, #0x4]
	bl      SetGender
	ldr     r0, [r4, #0x4]
	bl      0x202783c
	ldr     r1, [r4, #0x74]
	ldr     r1, [r1, #0x18]
	bl      0x202787c
	ldr     r0, [r4, #0x70]
	bl      0x208716c
	ldr     r0, [r4, #0x74]
	bl      0x208716c
	mov     r0, r6
	bl      0x2006830
	mov     r0, r5
	bl      0x201807c
	ldr     r0, [pc, #0x8] @ 0x21d0fe8, (=0x39)
	ldr     r1, [pc, #0xc] @ 0x21d0fec, (=0x21d0f80)
	bl      0x2000ec4
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d0fe8

.word 0x39 @ 0x21d0fe8
.word 0x21d0f80 @ 0x21d0fec
.thumb
Function_21d0ff0: @ 21d0ff0 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d0ff8, (=0x201c2b9)
	ldr     r0, [r0, #0x18]
	bx      r3
@ 0x21d0ff6


.align 2


.word 0x201c2b9 @ 0x21d0ff8
.thumb
Function_21d0ffc: @ 21d0ffc :thumb
	push    {r3,r4}
	ldr     r2, [pc, #0x54] @ 0x21d1054, (=0x21bf6bc)
	mov     r0, #0x0
	ldrh    r1, [r2, #0x20]
	cmp     r1, #0x0
	beq     branch_21d1050
	ldrh    r3, [r2, #0x1c]
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r3, r1
	bcs     branch_21d1050
	ldrh    r2, [r2, #0x1e]
	cmp     r2, #0xc0
	bcs     branch_21d1050
	cmp     r3, #0x80
	bcs     branch_21d1024
	mov     r1, #0x80
	sub     r1, r1, r3
	lsl     r1, r1, #16
	b       branch_21d1028
@ 0x21d1024

.thumb
branch_21d1024: @ 21d1024 :thumb
	sub     r3, #0x80
	lsl     r1, r3, #16
.thumb
branch_21d1028: @ 21d1028 :thumb
	lsr     r3, r1, #16
	cmp     r2, #0x64
	bcs     branch_21d1036
	mov     r1, #0x64
	sub     r1, r1, r2
	lsl     r1, r1, #16
	b       branch_21d103a
@ 0x21d1036

.thumb
branch_21d1036: @ 21d1036 :thumb
	sub     r2, #0x64
	lsl     r1, r2, #16
.thumb
branch_21d103a: @ 21d103a :thumb
	lsr     r4, r1, #16
	mov     r2, r3
	mov     r1, r4
	mul     r2, r3
	mul     r1, r4
	add     r2, r2, r1
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r2, r1
	bgt     branch_21d1050
	mov     r0, #0x1
.thumb
branch_21d1050: @ 21d1050 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x21d1054

.word 0x21bf6bc @ 0x21d1054
.thumb
Function_21d1058: @ 21d1058 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x78
	ldr     r5, [pc, #0x1c0] @ 0x21d1220, (=0x21d392c)
	mov     r4, r0
	add     r3, sp, #0x50
	mov     r2, #0x5
.thumb
branch_21d1064: @ 21d1064 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1064
	add     r0, sp, #0x50
	bl      0x201fe94
	ldr     r0, [r4, #0x0]
	bl      0x2018340
	add     r3, sp, #0x40
	ldr     r5, [pc, #0x1a8] @ 0x21d1224, (=0x21d3810)
	str     r0, [r4, #0x18]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x198] @ 0x21d1228, (=0x21d38d4)
	add     r3, sp, #0x24
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
	mov     r0, #0xf
	strb    r0, [r2, #0x12]
	mov     r0, #0x6
	strb    r0, [r2, #0x13]
	ldr     r0, [r4, #0x18]
	mov     r3, r1
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      0x2019ebc
	mov     r0, #0xe
	add     r2, sp, #0x24
	strb    r0, [r2, #0x12]
	mov     r0, #0x5
	strb    r0, [r2, #0x13]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      0x2019ebc
	mov     r0, #0xd
	add     r2, sp, #0x24
	strb    r0, [r2, #0x12]
	mov     r0, #0x4
	strb    r0, [r2, #0x13]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x2019ebc
	mov     r0, #0xc
	add     r2, sp, #0x24
	strb    r0, [r2, #0x12]
	mov     r1, #0x3
	strb    r1, [r2, #0x13]
	ldr     r0, [r4, #0x18]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x3
	bl      0x2019ebc
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x114] @ 0x21d122c, (=0x3e2)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	mov     r3, #0x4
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x104] @ 0x21d1230, (=0x3d9)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	mov     r3, #0x3
	bl      0x200daa4
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, #0xa0
	bl      0x2002e7c
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, #0xc0
	bl      0x2002e98
	ldr     r5, [pc, #0xe8] @ 0x21d1234, (=0x21d38f0)
	add     r3, sp, #0x8
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0xf
	str     r0, [r3, #0x0]
	add     r0, sp, #0x8
	strb    r1, [r0, #0x12]
	mov     r1, #0x6
	strb    r1, [r0, #0x13]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	bl      0x2019ebc
	mov     r1, #0xe
	add     r0, sp, #0x8
	strb    r1, [r0, #0x12]
	mov     r1, #0x5
	strb    r1, [r0, #0x13]
	ldr     r0, [r4, #0x18]
	add     r2, sp, #0x8
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x5
	bl      0x2019ebc
	mov     r1, #0xd
	add     r0, sp, #0x8
	strb    r1, [r0, #0x12]
	mov     r1, #0x4
	strb    r1, [r0, #0x13]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x6
	add     r2, sp, #0x8
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x6
	bl      0x2019ebc
	mov     r1, #0xc
	add     r0, sp, #0x8
	strb    r1, [r0, #0x12]
	mov     r1, #0x3
	strb    r1, [r0, #0x13]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x7
	add     r2, sp, #0x8
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x7
	bl      0x2019ebc
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, r4
	bl      Function_21d1930
	mov     r0, #0x0
	str     r0, [r4, #0x78]
	add     sp, #0x78
	pop     {r3-r5,pc}
@ 0x21d1220

.word 0x21d392c @ 0x21d1220
.word 0x21d3810 @ 0x21d1224
.word 0x21d38d4 @ 0x21d1228
.word 0x3e2 @ 0x21d122c
.word 0x3d9 @ 0x21d1230
.word 0x21d38f0 @ 0x21d1234
.thumb
Function_21d1238: @ 21d1238 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x7
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	bl      free
	pop     {r4,pc}
@ 0x21d12c4

.thumb
Function_21d12c4: @ 21d12c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [pc, #0x30] @ 0x21d12fc, (=0x185)
	ldr     r3, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	str     r0, [r4, #0x4c]
	bl      0x201d710
	mov     r0, #0x0
	ldr     r3, [r4, #0x0]
	mov     r1, r0
	mov     r2, #0x6
	bl      0x201567c
	str     r0, [r4, #0x60]
	ldr     r0, [r4, #0x0]
	bl      0x200b358
	str     r0, [r4, #0x64]
	mov     r0, #0x0
	str     r0, [r4, #0x50]
	str     r0, [r4, #0x54]
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x21d12fa


.align 2


.word 0x185 @ 0x21d12fc
.thumb
Function_21d1300: @ 21d1300 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x64]
	bl      0x200b3f0
	ldr     r0, [r4, #0x60]
	bl      0x2015760
	ldr     r0, [r4, #0x4c]
	bl      Function_200b190
	pop     {r4,pc}
@ 0x21d1318

.thumb
Function_21d1318: @ 21d1318 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x2015920
	str     r0, [r4, #0x68]
	pop     {r4,pc}
@ 0x21d1326


.align 2, 0


.thumb
Function_21d1328: @ 21d1328 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1330, (=0x2015939)
	ldr     r0, [r0, #0x68]
	bx      r3
@ 0x21d132e


.align 2


.word 0x2015939 @ 0x21d1330
.thumb
Function_21d1334: @ 21d1334 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r3, r0
	mov     r6, r2
	mov     r5, #0x0
	cmp     r4, #0x6
	bhi     branch_21d135e
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d1350

Jumppoints_21d1350:
.hword branch_21d135e - Jumppoints_21d1350 - 2
.hword branch_21d1364 - Jumppoints_21d1350 - 2
.hword branch_21d136a - Jumppoints_21d1350 - 2
.hword branch_21d135e - Jumppoints_21d1350 - 2
.hword branch_21d1370 - Jumppoints_21d1350 - 2
.hword branch_21d1376 - Jumppoints_21d1350 - 2
.hword branch_21d137c - Jumppoints_21d1350 - 2
.thumb
branch_21d135e: @ 21d135e :thumb
	mov     r1, #0x1
	mov     r0, #0x0
	b       branch_21d1380
@ 0x21d1364

.thumb
branch_21d1364: @ 21d1364 :thumb
	mov     r1, #0x2
	mov     r0, r5
	b       branch_21d1380
@ 0x21d136a

.thumb
branch_21d136a: @ 21d136a :thumb
	mov     r1, #0x4
	mov     r0, r5
	b       branch_21d1380
@ 0x21d1370

.thumb
branch_21d1370: @ 21d1370 :thumb
	mov     r1, #0x1
	mov     r0, r1
	b       branch_21d1380
@ 0x21d1376

.thumb
branch_21d1376: @ 21d1376 :thumb
	mov     r1, #0x2
	mov     r0, #0x1
	b       branch_21d1380
@ 0x21d137c

.thumb
branch_21d137c: @ 21d137c :thumb
	mov     r1, #0x4
	mov     r0, #0x1
.thumb
branch_21d1380: @ 21d1380 :thumb
	ldr     r2, [r3, #0x78]
	cmp     r2, #0x3
	bls     branch_21d1388
	b       branch_21d14aa
@ 0x21d1388

.thumb
branch_21d1388: @ 21d1388 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d1394

Jumppoints_21d1394:
.hword branch_21d139c - Jumppoints_21d1394 - 2
.hword branch_21d13f8 - Jumppoints_21d1394 - 2
.hword branch_21d1448 - Jumppoints_21d1394 - 2
.hword branch_21d149c - Jumppoints_21d1394 - 2
.thumb
branch_21d139c: @ 21d139c :thumb
	cmp     r6, #0x0
	bne     branch_21d13e6
	mov     r2, #0x0
	str     r2, [r3, #0x7c]
	mov     r2, r3
	mov     r6, #0x10
	add     r2, #0x80
	str     r6, [r2, #0x0]
	mov     r2, #0x1
	str     r2, [r3, #0x78]
	cmp     r0, #0x0
	bne     branch_21d13c8
	mov     r0, r3
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xf0] @ 0x21d14b0, (=0x4000050)
	ldr     r3, [r3, #0x7c]
	blx     G2x_SetBlendAlpha_
	b       branch_21d13da
@ 0x21d13c8

.thumb
branch_21d13c8: @ 21d13c8 :thumb
	mov     r0, r3
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xe0] @ 0x21d14b4, (=0x4001050)
	ldr     r3, [r3, #0x7c]
	blx     G2x_SetBlendAlpha_
.thumb
branch_21d13da: @ 21d13da :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, #0x1
	bl      0x2019120
	b       branch_21d14aa
@ 0x21d13e6

.thumb
branch_21d13e6: @ 21d13e6 :thumb
	mov     r0, #0x10
	str     r0, [r3, #0x7c]
	mov     r0, r3
	mov     r1, #0x0
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [r3, #0x78]
	b       branch_21d14aa
@ 0x21d13f8

.thumb
branch_21d13f8: @ 21d13f8 :thumb
	mov     r2, r3
	add     r2, #0x80
	ldr     r2, [r2, #0x0]
	cmp     r2, #0x0
	beq     branch_21d1442
	ldr     r2, [r3, #0x7c]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r3, #0x7c]
	mov     r2, r3
	add     r2, #0x80
	ldr     r2, [r2, #0x0]
	.hword  0x1e54 @ sub r4, r2, #0x1
	mov     r2, r3
	add     r2, #0x80
	str     r4, [r2, #0x0]
	cmp     r0, #0x0
	bne     branch_21d142e
	mov     r0, r3
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x88] @ 0x21d14b0, (=0x4000050)
	ldr     r3, [r3, #0x7c]
	blx     G2x_SetBlendAlpha_
	b       branch_21d14aa
@ 0x21d142e

.thumb
branch_21d142e: @ 21d142e :thumb
	mov     r0, r3
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x78] @ 0x21d14b4, (=0x4001050)
	ldr     r3, [r3, #0x7c]
	blx     G2x_SetBlendAlpha_
	b       branch_21d14aa
@ 0x21d1442

.thumb
branch_21d1442: @ 21d1442 :thumb
	mov     r0, #0x3
	str     r0, [r3, #0x78]
	b       branch_21d14aa
@ 0x21d1448

.thumb
branch_21d1448: @ 21d1448 :thumb
	ldr     r2, [r3, #0x7c]
	cmp     r2, #0x0
	beq     branch_21d148c
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r3, #0x7c]
	mov     r2, r3
	add     r2, #0x80
	ldr     r2, [r2, #0x0]
	add     r4, r2, #0x1
	mov     r2, r3
	add     r2, #0x80
	str     r4, [r2, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1478
	mov     r0, r3
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d14b0, (=0x4000050)
	ldr     r3, [r3, #0x7c]
	blx     G2x_SetBlendAlpha_
	b       branch_21d14aa
@ 0x21d1478

.thumb
branch_21d1478: @ 21d1478 :thumb
	mov     r0, r3
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xe
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21d14b4, (=0x4001050)
	ldr     r3, [r3, #0x7c]
	blx     G2x_SetBlendAlpha_
	b       branch_21d14aa
@ 0x21d148c

.thumb
branch_21d148c: @ 21d148c :thumb
	mov     r0, #0x3
	str     r0, [r3, #0x78]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, #0x0
	bl      0x2019120
	b       branch_21d14aa
@ 0x21d149c

.thumb
branch_21d149c: @ 21d149c :thumb
	ldr     r0, [pc, #0x10] @ 0x21d14b0, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x10] @ 0x21d14b4, (=0x4001050)
	mov     r5, #0x1
	strh    r1, [r0, #0x0]
	str     r1, [r3, #0x78]
.thumb
branch_21d14aa: @ 21d14aa :thumb
	mov     r0, r5
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d14b0

.word 0x4000050 @ 0x21d14b0
.word 0x4001050 @ 0x21d14b4
.thumb
Function_21d14b8: @ 21d14b8 :thumb
	mov     r2, r0
	add     r2, #0x90
	ldr     r2, [r2, #0x0]
	cmp     r2, r1
	bge     branch_21d14d2
	mov     r1, r0
	add     r1, #0x90
	ldr     r1, [r1, #0x0]
	add     r0, #0x90
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	bx      lr
@ 0x21d14d2

.thumb
branch_21d14d2: @ 21d14d2 :thumb
	mov     r1, #0x0
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x21d14dc

.thumb
Function_21d14dc: @ 21d14dc :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	lsl     r0, r2, #24
	mov     r4, r1
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	lsl     r1, r4, #24
	mov     r2, #0x0
	ldr     r0, [r5, #0x18]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      0x2019e2c
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x18]
	lsr     r1, r1, #24
	bl      0x2019448
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d150e


.align 2, 0


.thumb
Function_21d1510: @ 21d1510 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	mov     r7, r1
	mov     r4, #0x0
	cmp     r0, #0x0
	beq     branch_21d152a
	cmp     r0, #0x1
	beq     branch_21d15e8
	cmp     r0, #0x2
	beq     branch_21d1602
	b       branch_21d1620
@ 0x21d152a

.thumb
branch_21d152a: @ 21d152a :thumb
	mov     r1, r5
	ldr     r0, [r5, #0x18]
	ldr     r2, [pc, #0xf8] @ 0x21d1628, (=0x21d37ec)
	add     r1, #0x1c
	bl      0x201a8d4
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r4
	add     r0, #0x1c
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	mov     r0, r5
	ldr     r2, [pc, #0xdc] @ 0x21d162c, (=0x3e2)
	add     r0, #0x1c
	mov     r1, r4
	mov     r3, #0x4
	bl      0x200e060
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, r4
	bl      Function_2002ae4
	mov     r0, #0x1
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #10
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x1
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #10
	bl      Function_2023790
	str     r0, [r5, #0x5c]
	ldr     r0, [r5, #0x4c]
	mov     r1, r7
	mov     r2, r6
	bl      Function_200b1b8
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r2, [r5, #0x70]
	mov     r3, r5
	add     r3, #0x84
	ldr     r0, [r5, #0x64]
	ldr     r2, [r2, #0x18]
	ldr     r3, [r3, #0x0]
	mov     r1, r4
	bl      0x200b48c
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r2, [r5, #0x74]
	ldr     r0, [r5, #0x64]
	ldr     r2, [r2, #0x18]
	mov     r3, r4
	bl      0x200b48c
	ldr     r0, [r5, #0x64]
	ldr     r1, [r5, #0x5c]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc
	ldr     r0, [r5, #0x8]
	bl      0x2027ac0
	mov     r3, r4
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [r5, #0x5c]
	add     r0, #0x1c
	mov     r1, #0x1
	bl      0x201d738
	str     r0, [r5, #0x58]
	mov     r0, #0x1
	str     r0, [r5, #0x50]
	b       branch_21d1620
@ 0x21d15e8

.thumb
branch_21d15e8: @ 21d15e8 :thumb
	ldr     r0, [r5, #0x58]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_21d1620
	ldr     r0, [r5, #0x5c]
	bl      Function_20237bc
	mov     r0, #0x2
	str     r0, [r5, #0x50]
	b       branch_21d1620
@ 0x21d1602

.thumb
branch_21d1602: @ 21d1602 :thumb
	cmp     r2, #0x0
	bne     branch_21d1612
	ldr     r0, [pc, #0x28] @ 0x21d1630, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	and     r0, r1
	cmp     r0, #0x1
	bne     branch_21d1620
.thumb
branch_21d1612: @ 21d1612 :thumb
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_201a8fc
	mov     r0, #0x0
	str     r0, [r5, #0x50]
	mov     r4, #0x1
.thumb
branch_21d1620: @ 21d1620 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d1626


.align 2


.word 0x21d37ec @ 0x21d1628
.word 0x3e2 @ 0x21d162c
.word 0x21bf67c @ 0x21d1630
.thumb
Function_21d1634: @ 21d1634 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_21d1640
	ldr     r0, [pc, #0x8] @ 0x21d1644, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d1640: @ 21d1640 :thumb
	pop     {r3,pc}
@ 0x21d1642


.align 2


.word 0x5dc @ 0x21d1644
.thumb
Function_21d1648: @ 21d1648 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x2c]
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_21d1660
	cmp     r0, #0x1
	beq     branch_21d170a
	b       branch_21d1754
@ 0x21d1660

.thumb
branch_21d1660: @ 21d1660 :thumb
	cmp     r1, #0x0
	beq     branch_21d166c
	cmp     r1, #0x1
	beq     branch_21d1674
	cmp     r1, #0x2
	beq     branch_21d167c
branch_21d166c: @ 21d166c :thumb
	ldr     r2, [pc, #0xec] @ 0x21d175c, (=Unknown_21d37c4)
	ldr     r4, [pc, #0xf0] @ 0x21d1760, (=0x21d3840)
	mov     r7, #0x2
	b       branch_21d1682

branch_21d1674: @ 21d1674 :thumb
	ldr     r2, [pc, #0xec] @ 0x21d1764, (=0x21d37dc)
	ldr     r4, [pc, #0xf0] @ 0x21d1768, (=0x21d38a4)
	mov     r7, #0x3
	b       branch_21d1682
@ 0x21d167c

.thumb
branch_21d167c: @ 21d167c :thumb
	ldr     r2, [pc, #0xec] @ 0x21d176c, (=0x21d37cc)
	ldr     r4, [pc, #0xf0] @ 0x21d1770, (=0x21d3954)
	mov     r7, #0x5
.thumb
branch_21d1682: @ 21d1682 :thumb
	mov     r1, r5
	ldr     r0, [r5, #0x18]
	add     r1, #0x30
	bl      0x201a8d4
	ldr     r1, [r5, #0x0]
	mov     r0, r7
	bl      0x2013a04
	mov     r6, #0x0
	str     r0, [r5, #0x44]
	cmp     r7, #0x0
	ble     branch_21d16b0
.thumb
branch_21d169c: @ 21d169c :thumb
	ldr     r0, [r5, #0x44]
	ldr     r1, [r5, #0x4c]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      0x2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r7
	blt     branch_21d169c
.thumb
branch_21d16b0: @ 21d16b0 :thumb
	ldr     r4, [pc, #0xc0] @ 0x21d1774, (=0x21d390c)
	add     r3, sp, #0x4
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x44]
	str     r0, [sp, #0x4]
	lsl     r0, r7, #16
	lsr     r1, r0, #16
	add     r0, sp, #0x4
	strh    r1, [r0, #0x10]
	strh    r1, [r0, #0x12]
	ldr     r0, [pc, #0xa0] @ 0x21d1778, (=0x21d1635)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x30
	str     r0, [sp, #0x10]
	ldr     r3, [r5, #0x0]
	mov     r0, r2
	lsl     r3, r3, #24
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x200112c
	str     r0, [r5, #0x40]
	ldr     r0, [sp, #0x10]
	ldr     r2, [pc, #0x88] @ 0x21d177c, (=0x3d9)
	mov     r1, #0x1
	mov     r3, #0x3
	bl      0x200dc48
	mov     r0, r5
	add     r0, #0x30
	bl      0x201a954
	mov     r0, #0x1
	str     r0, [r5, #0x2c]
	b       branch_21d1754
@ 0x21d170a

.thumb
branch_21d170a: @ 21d170a :thumb
	ldr     r0, [r5, #0x40]
	bl      Function_2001288
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [r5, #0x48]
	cmp     r0, r1
	beq     branch_21d1754
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_21d1724
	cmp     r4, #0x1
	beq     branch_21d1754
.thumb
branch_21d1724: @ 21d1724 :thumb
	mov     r0, r5
	add     r0, #0x30
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r5
	add     r0, #0x30
	bl      Function_201a8fc
	mov     r1, #0x0
	ldr     r0, [r5, #0x40]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [r5, #0x44]
	bl      0x2013a3c
	ldr     r0, [pc, #0x38] @ 0x21d1780, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
.thumb
branch_21d1754: @ 21d1754 :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d175a

.align 2
.word Unknown_21d37c4 @ 0x21d175c
.word 0x21d3840 @ 0x21d1760
.word 0x21d37dc @ 0x21d1764
.word 0x21d38a4 @ 0x21d1768
.word 0x21d37cc @ 0x21d176c
.word 0x21d3954 @ 0x21d1770
.word 0x21d390c @ 0x21d1774
.word 0x21d1635 @ 0x21d1778
.word 0x3d9 @ 0x21d177c
.word 0x5dc @ 0x21d1780



.thumb
Function_21d1784: @ 21d1784 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	str     r1, [sp, #0x10]
	ldr     r1, [r4, #0x54]
	mov     r5, r2
	mov     r6, r3
	mov     r7, #0x0
	cmp     r1, #0x5
	bls     branch_21d179a
	b       branch_21d1914
@ 0x21d179a

.thumb
branch_21d179a: @ 21d179a :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d17a6

Jumppoints_21d17a6:
.hword branch_21d17b2 - Jumppoints_21d17a6 - 2
.hword branch_21d18b0 - Jumppoints_21d17a6 - 2
.hword branch_21d18bc - Jumppoints_21d17a6 - 2
.hword branch_21d18ce - Jumppoints_21d17a6 - 2
.hword branch_21d18ee - Jumppoints_21d17a6 - 2
.hword branch_21d1900 - Jumppoints_21d17a6 - 2
.thumb
branch_21d17b2: @ 21d17b2 :thumb
	mov     r0, r7
	mov     r1, r7
	bl      0x2019120
	mov     r0, #0x1
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #10
	bl      Function_2023790
	str     r0, [r4, #0x5c]
	ldr     r0, [r4, #0x4c]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r4, #0x5c]
	bl      Function_200b1b8
	cmp     r5, #0x1
	add     r0, sp, #0x14
	bne     branch_21d1834
	ldr     r1, [pc, #0x144] @ 0x21d191c, (=Unknown_21d37c4)
	ldrh    r2, [r1, #0x10]
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x12]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x14]
	ldrh    r1, [r1, #0x16]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldr     r0, [r4, #0x5c]
	bl      0x2023c5c
	mov     r1, #0xc
	sub     r2, r1, r0
	add     r1, sp, #0x14
	strb    r2, [r1, #0x2]
	lsl     r0, r0, #1
	strb    r0, [r1, #0x4]
	mov     r1, r4
	ldr     r0, [r4, #0x18]
	add     r1, #0x1c
	add     r2, sp, #0x14
	bl      0x201a8d4
	mov     r1, r7
	mov     r0, #0xc0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x1c
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, r7
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x100] @ 0x21d1920, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x5c]
	add     r0, #0x1c
	mov     r3, r1
	bl      0x201d78c
	b       branch_21d18a4

branch_21d1834: @ 21d1834 :thumb
	ldr     r1, [pc, #0xe4] @ 0x21d191c, (=Unknown_21d37c4)
	cmp     r5, #0x2
	ldrh    r2, [r1, #0x20]
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x22]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x24]
	ldrh    r1, [r1, #0x26]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	bne     branch_21d1866
	ldr     r0, [r4, #0x5c]
	bl      0x2023c5c
	ldr     r2, [sp, #0x30]
	lsr     r1, r2, #31
	add     r1, r2, r1
	asr     r1, r1, #1
	add     r1, r6, r1
	sub     r2, r1, r0
	add     r1, sp, #0x14
	strb    r2, [r1, #0x2]
	lsl     r0, r0, #1
	strb    r0, [r1, #0x4]
	b       branch_21d186c
@ 0x21d1866

.thumb
branch_21d1866: @ 21d1866 :thumb
	ldr     r1, [sp, #0x30]
	strb    r6, [r0, #0x2]
	strb    r1, [r0, #0x4]
.thumb
branch_21d186c: @ 21d186c :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x18]
	add     r1, #0x1c
	add     r2, sp, #0x14
	bl      0x201a8d4
	mov     r1, #0x0
	mov     r0, #0xc0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x1c
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x90] @ 0x21d1924, (=0xf0200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x5c]
	add     r0, #0x1c
	mov     r3, r1
	bl      0x201d78c
.thumb
branch_21d18a4: @ 21d18a4 :thumb
	ldr     r0, [r4, #0x5c]
	bl      Function_20237bc
	mov     r0, #0x1
	str     r0, [r4, #0x54]
	b       branch_21d1914
@ 0x21d18b0

.thumb
branch_21d18b0: @ 21d18b0 :thumb
	add     r0, #0x1c
	bl      0x201a954
	mov     r0, #0x2
	str     r0, [r4, #0x54]
	b       branch_21d1914
@ 0x21d18bc

.thumb
branch_21d18bc: @ 21d18bc :thumb
	mov     r1, r7
	mov     r2, r7
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d1914
	mov     r0, #0x3
	str     r0, [r4, #0x54]
	b       branch_21d1914
@ 0x21d18ce

.thumb
branch_21d18ce: @ 21d18ce :thumb
	ldr     r0, [pc, #0x58] @ 0x21d1928, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	and     r0, r1
	cmp     r0, #0x1
	beq     branch_21d18e2
	mov     r0, #0x2
	and     r0, r1
	cmp     r0, #0x2
	bne     branch_21d1914
.thumb
branch_21d18e2: @ 21d18e2 :thumb
	ldr     r0, [pc, #0x48] @ 0x21d192c, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x4
	str     r0, [r4, #0x54]
	b       branch_21d1914
@ 0x21d18ee

.thumb
branch_21d18ee: @ 21d18ee :thumb
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d1914
	mov     r0, #0x5
	str     r0, [r4, #0x54]
	b       branch_21d1914
@ 0x21d1900

.thumb
branch_21d1900: @ 21d1900 :thumb
	add     r0, #0x1c
	bl      Function_201a8fc
	ldr     r0, [r4, #0x18]
	mov     r1, r7
	bl      0x2019ebc
	mov     r0, r7
	str     r0, [r4, #0x54]
	mov     r7, #0x1
.thumb
branch_21d1914: @ 21d1914 :thumb
	mov     r0, r7
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d191a

.align 2
.word Unknown_21d37c4 @ 0x21d191c
.word 0x10200 @ 0x21d1920
.word 0xf0200 @ 0x21d1924
.word 0x21bf67c @ 0x21d1928
.word 0x5dc @ 0x21d192c



.thumb
Function_21d1930: @ 21d1930 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r5, r0
	str     r1, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x3
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x18]
	mov     r0, #0x7d
	bl      0x2006e3c
	mov     r0, #0x0
	ldr     r3, [r5, #0x0]
	mov     r1, #0x20
	mov     r2, r0
	bl      0x2019690
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x18
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x7
	bl      0x2006e3c
	ldr     r0, [pc, #0x64] @ 0x21d19d8, (=0x20e4c40)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xc
	bne     branch_21d197e
	mov     r1, #0x3
	mov     r4, #0x1b
	b       branch_21d198c
@ 0x21d197e

.thumb
branch_21d197e: @ 21d197e :thumb
	cmp     r0, #0xa
	bne     branch_21d1988
	mov     r1, #0x1
	mov     r4, #0x19
	b       branch_21d198c
@ 0x21d1988

.thumb
branch_21d1988: @ 21d1988 :thumb
	mov     r1, #0x2
	mov     r4, #0x1a
.thumb
branch_21d198c: @ 21d198c :thumb
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x7d
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0xa0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, #0x7d
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	mov     r0, r5
	bl      Function_21d19dc
	mov     r0, r5
	bl      Function_21d1a20
	mov     r0, r5
	bl      Function_21d1b14
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d19d8

.word 0x20e4c40 @ 0x21d19d8
.thumb
Function_21d19dc: @ 21d19dc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	ldr     r5, [pc, #0x38] @ 0x21d1a1c, (=0x21d3850)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x10
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	mov     r0, r3
	add     r0, #0x88
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x5
	bcs     branch_21d1a18
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r3, #0x0]
	lsl     r1, r1, #2
	str     r0, [sp, #0xc]
	ldr     r1, [r2, r1]
	ldr     r2, [r3, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x3
	bl      0x2006e60
.thumb
branch_21d1a18: @ 21d1a18 :thumb
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x21d1a1c

.word 0x21d3850 @ 0x21d1a1c
.thumb
Function_21d1a20: @ 21d1a20 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x68
	ldr     r5, [pc, #0xe8] @ 0x21d1b10, (=0x21d397c)
	mov     r4, r0
	add     r3, sp, #0x10
	mov     r2, #0xb
.thumb
branch_21d1a2c: @ 21d1a2c :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1a2c
	mov     r0, r4
	add     r0, #0x89
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_21d1a9e
	cmp     r1, #0xc
	bcs     branch_21d1a9e
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #3
	str     r0, [sp, #0xc]
	add     r1, sp, #0x10
	ldr     r1, [r1, r2]
	ldr     r2, [r4, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x1
	bl      0x2006e3c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x4]
	add     r1, #0x89
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x7d
	mov     r3, #0xe0
	lsl     r2, r1, #3
	add     r1, sp, #0x14
	ldr     r1, [r1, r2]
	mov     r2, #0x0
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x17
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x1
	bl      0x2006e60
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x7
	bl      Function_21d14dc
.thumb
branch_21d1a9e: @ 21d1a9e :thumb
	mov     r0, r4
	add     r0, #0x8a
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_21d1b0a
	cmp     r1, #0xc
	bcs     branch_21d1b0a
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #3
	str     r0, [sp, #0xc]
	add     r1, sp, #0x10
	ldr     r1, [r1, r2]
	ldr     r2, [r4, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x2
	bl      0x2006e3c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x4]
	add     r1, #0x8a
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x7d
	mov     r3, r0
	lsl     r2, r1, #3
	add     r1, sp, #0x14
	ldr     r1, [r1, r2]
	mov     r2, #0x0
	add     r3, #0x83
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x17
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x2
	bl      0x2006e60
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x8
	bl      Function_21d14dc
.thumb
branch_21d1b0a: @ 21d1b0a :thumb
	add     sp, #0x68
	pop     {r3-r5,pc}
@ 0x21d1b0e


.align 2


.word 0x21d397c @ 0x21d1b10
.thumb
Function_21d1b14: @ 21d1b14 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	ldr     r5, [pc, #0x60] @ 0x21d1b7c, (=0x21d3878)
	mov     r4, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x10
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r0, #0x8b
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x5
	bcs     branch_21d1b76
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	lsl     r1, r1, #2
	str     r0, [sp, #0xc]
	ldr     r1, [r2, r1]
	ldr     r2, [r4, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x7
	bl      0x2006e60
	mov     r0, r4
	add     r0, #0x8b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d1b68
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x3
	bl      Function_21d14dc
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x21d1b68

.thumb
branch_21d1b68: @ 21d1b68 :thumb
	cmp     r0, #0x2
	bne     branch_21d1b76
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x2
	bl      Function_21d14dc
.thumb
branch_21d1b76: @ 21d1b76 :thumb
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x21d1b7a


.align 2


.word 0x21d3878 @ 0x21d1b7c
.thumb
Function_21d1b80: @ 21d1b80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r5, r0
	ldr     r1, [pc, #0x144] @ 0x21d1cd4, (=0x1ab)
	str     r2, [sp, #0x8]
	add     r0, sp, #0x10
	mov     r3, #0x2
	bl      Function_2075fb4
	ldr     r0, [r5, #0x0]
	mov     r1, #0xc8
	bl      malloc
	mov     r7, r0
	ldr     r2, [pc, #0x134] @ 0x21d1cd8, (=0x21d39d4)
	mov     r1, #0x0
	mov     r3, r7
.thumb
branch_21d1ba8: @ 21d1ba8 :thumb
	ldrb    r0, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x64
	blt     branch_21d1ba8
	add     r1, sp, #0x10
	ldrh    r0, [r1, #0x0]
	ldrh    r1, [r1, #0x2]
	ldr     r2, [r5, #0x0]
	bl      0x201363c
	add     r1, sp, #0x10
	mov     r6, r0
	ldrh    r0, [r1, #0x0]
	ldrh    r1, [r1, #0x4]
	ldr     r2, [r5, #0x0]
	bl      0x2013660
	mov     r1, r5
	add     r1, #0xb8
	ldr     r1, [r1, #0x0]
	mov     r2, #0x20
	mov     r4, r0
	blx     MI_CpuCopy32
	ldr     r0, [pc, #0xf8] @ 0x21d1cdc, (=0x6a3c)
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	mov     r2, #0x1
	mov     r3, #0x10
	bl      0x20039f8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x2
	mov     r3, r2
	bl      0x2019cb8
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x2
	mov     r2, r7
	mov     r3, #0xb
	bl      0x20198c0
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x8
	bl      Function_21d14dc
	ldr     r3, [r5, #0x0]
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x32
	ldr     r0, [r5, #0x18]
	mov     r1, #0x2
	mov     r2, r6
	lsl     r3, r3, #6
	bl      0x201958c
	mov     r2, #0x20
	mov     r3, r2
	mov     r0, #0x2
	mov     r1, r4
	add     r3, #0xe0
	bl      0x201972c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x5
	mov     r3, r2
	bl      0x2019cb8
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x5
	mov     r2, r7
	mov     r3, #0xb
	bl      0x20198c0
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0xa
	bl      Function_21d14dc
	ldr     r3, [r5, #0x0]
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x32
	ldr     r0, [r5, #0x18]
	mov     r1, #0x5
	mov     r2, r6
	lsl     r3, r3, #6
	bl      0x201958c
	mov     r0, #0x5
	mov     r1, r4
	mov     r2, #0x20
	lsl     r3, r0, #6
	bl      0x201972c
	mov     r0, r4
	bl      free
	mov     r0, r6
	bl      free
	mov     r0, r7
	bl      free
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d1cd4

.word 0x1ab @ 0x21d1cd4
.word 0x21d39d4 @ 0x21d1cd8
.word 0x6a3c @ 0x21d1cdc
.thumb
Function_21d1ce0: @ 21d1ce0 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x28
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x9
	bl      Function_21d14dc
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x29
	str     r0, [sp, #0x4]
	mov     r0, #0x7d
	mov     r2, #0x4
	mov     r3, #0xe0
	bl      0x2006e84
	ldr     r3, [r4, #0x0]
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r3, #0x6
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x18]
	mov     r0, #0x7d
	bl      0x2006e3c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d1d44

.thumb
Function_21d1d44: @ 21d1d44 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, #0x0
	cmp     r2, #0x0
	bne     branch_21d1d80
	ldr     r0, [r5, #0x18]
	bl      0x20192ec
	cmp     r0, #0x0
	beq     branch_21d1d7c
	cmp     r0, #0x0
	ldr     r0, [r5, #0x18]
	ble     branch_21d1d6e
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_2019184
	b       branch_21d1dc6
@ 0x21d1d6e

.thumb
branch_21d1d6e: @ 21d1d6e :thumb
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	mov     r2, #0x1
	mov     r3, #0x4
	bl      Function_2019184
	b       branch_21d1dc6
@ 0x21d1d7c

.thumb
branch_21d1d7c: @ 21d1d7c :thumb
	mov     r6, #0x1
	b       branch_21d1dc6
@ 0x21d1d80

.thumb
branch_21d1d80: @ 21d1d80 :thumb
	cmp     r2, #0x1
	bne     branch_21d1da6
	ldr     r0, [r5, #0x18]
	bl      0x20192ec
	mov     r1, r6
	sub     r1, #0x30
	cmp     r0, r1
	beq     branch_21d1da2
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x18]
	lsr     r1, r1, #24
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_2019184
	b       branch_21d1dc6
@ 0x21d1da2

.thumb
branch_21d1da2: @ 21d1da2 :thumb
	mov     r6, #0x1
	b       branch_21d1dc6
@ 0x21d1da6

.thumb
branch_21d1da6: @ 21d1da6 :thumb
	cmp     r2, #0x2
	bne     branch_21d1dc6
	ldr     r0, [r5, #0x18]
	bl      0x20192ec
	cmp     r0, #0x0
	beq     branch_21d1dc4
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x18]
	lsr     r1, r1, #24
	mov     r2, #0x1
	mov     r3, #0x4
	bl      Function_2019184
	b       branch_21d1dc6
@ 0x21d1dc4

.thumb
branch_21d1dc4: @ 21d1dc4 :thumb
	mov     r6, #0x1
.thumb
branch_21d1dc6: @ 21d1dc6 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d1dca


.align 2, 0


.thumb
Function_21d1dcc: @ 21d1dcc :thumb
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0x8c
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x8d
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x8e
	strb    r2, [r1, #0x0]
	add     r0, #0x8f
	strb    r2, [r0, #0x0]
	bx      lr
@ 0x21d1de6


.align 2, 0


.thumb
Function_21d1de8: @ 21d1de8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x30
	mov     r4, r0
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1e72
	mov     r0, r4
	add     r0, #0x8d
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1e0a
	mov     r0, r4
	add     r0, #0x8d
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	b       branch_21d1e2a
@ 0x21d1e0a

.thumb
branch_21d1e0a: @ 21d1e0a :thumb
	mov     r0, r4
	add     r0, #0x8c
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x8c
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x8c
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x3
	and     r1, r0
	mov     r0, r4
	add     r0, #0x8c
	strb    r1, [r0, #0x0]
	mov     r1, #0x4
.thumb
branch_21d1e2a: @ 21d1e2a :thumb
	mov     r0, r4
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x21d1ef0, (=0x4000050)
	mov     r1, #0x4
	mov     r2, #0x8
	mov     r3, #0x6
	blx     G2x_SetBlendAlpha_
	ldr     r5, [pc, #0xb0] @ 0x21d1ef4, (=0x21d3800)
	add     r3, sp, #0x20
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r4
	str     r0, [sp, #0xc]
	add     r1, #0x8c
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x7d
	mov     r3, #0x1
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	ldr     r2, [r4, #0x18]
	bl      0x2006e3c
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x21d1e72

.thumb
branch_21d1e72: @ 21d1e72 :thumb
	mov     r0, r4
	add     r0, #0x8f
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1e86
	mov     r0, r4
	add     r0, #0x8f
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	b       branch_21d1ea6
@ 0x21d1e86

.thumb
branch_21d1e86: @ 21d1e86 :thumb
	mov     r0, r4
	add     r0, #0x8e
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x8e
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x8e
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x3
	and     r1, r0
	mov     r0, r4
	add     r0, #0x8e
	strb    r1, [r0, #0x0]
	mov     r1, #0x4
.thumb
branch_21d1ea6: @ 21d1ea6 :thumb
	mov     r0, r4
	add     r0, #0x8f
	strb    r1, [r0, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x21d1ef0, (=0x4000050)
	mov     r1, #0x2
	mov     r2, #0x8
	mov     r3, #0x6
	blx     G2x_SetBlendAlpha_
	ldr     r5, [pc, #0x38] @ 0x21d1ef8, (=0x21d3830)
	add     r3, sp, #0x10
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, r4
	str     r0, [sp, #0xc]
	add     r1, #0x8e
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x7d
	mov     r3, #0x2
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	ldr     r2, [r4, #0x18]
	bl      0x2006e3c
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x21d1eee


.align 2


.word 0x4000050 @ 0x21d1ef0
.word 0x21d3800 @ 0x21d1ef4
.word 0x21d3830 @ 0x21d1ef8
.thumb
Function_21d1efc: @ 21d1efc :thumb
	ldr     r0, [pc, #0x4] @ 0x21d1f04, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x21d1f04

.word 0x4000050 @ 0x21d1f04
.thumb
Function_21d1f08: @ 21d1f08 :thumb
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0x94
	str     r2, [r1, #0x0]
	add     r0, #0x98
	str     r2, [r0, #0x0]
	bx      lr
@ 0x21d1f16


.align 2, 0


.thumb
Function_21d1f18: @ 21d1f18 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x40
	mov     r3, r0
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	beq     branch_21d1f32
	mov     r0, r3
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	b       branch_21d1f42
@ 0x21d1f32

.thumb
branch_21d1f32: @ 21d1f32 :thumb
	mov     r0, r3
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r3
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r1, #0x8
.thumb
branch_21d1f42: @ 21d1f42 :thumb
	mov     r0, r3
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1f58
	ldr     r6, [pc, #0x44] @ 0x21d1f98, (=0x21d38bc)
	add     r5, sp, #0x28
	b       branch_21d1f5c
@ 0x21d1f58

.thumb
branch_21d1f58: @ 21d1f58 :thumb
	ldr     r6, [pc, #0x40] @ 0x21d1f9c, (=0x21d388c)
	add     r5, sp, #0x10
.thumb
branch_21d1f5c: @ 21d1f5c :thumb
	mov     r2, r5
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	mov     r0, r3
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #2
	ldr     r1, [r2, r0]
	cmp     r1, #0xff
	bne     branch_21d1f7c
	mov     r4, #0x1
	b       branch_21d1f92
@ 0x21d1f7c

.thumb
branch_21d1f7c: @ 21d1f7c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r3, #0x0]
	str     r0, [sp, #0xc]
	ldr     r2, [r3, #0x18]
	mov     r0, #0x7d
	mov     r3, #0x1
	bl      0x2006e3c
.thumb
branch_21d1f92: @ 21d1f92 :thumb
	mov     r0, r4
	add     sp, #0x40
	pop     {r4-r6,pc}
@ 0x21d1f98

.word 0x21d38bc @ 0x21d1f98
.word 0x21d388c @ 0x21d1f9c
.thumb
Function_21d1fa0: @ 21d1fa0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_21d2004
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	blx     _s32_div_f
	mov     r3, r0
	ldr     r0, [pc, #0x3c] @ 0x21d2008, (=0x6a3c)
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0xb8
	add     r1, #0xbc
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1
	lsr     r3, r3, #24
	bl      0x20039f8
	mov     r1, r4
	add     r1, #0xbc
	mov     r2, #0x20
	mov     r3, r2
	ldr     r1, [r1, #0x0]
	mov     r0, #0x2
	add     r3, #0xe0
	bl      0x201972c
	add     r4, #0xbc
	mov     r0, #0x5
	ldr     r1, [r4, #0x0]
	mov     r2, #0x20
	lsl     r3, r0, #6
	bl      0x201972c
.thumb
branch_21d2004: @ 21d2004 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d2008

.word 0x6a3c @ 0x21d2008
.thumb
Function_21d200c: @ 21d200c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r7, #0x0
	cmp     r0, #0x6
	bls     branch_21d201c
	b       branch_21d22fc
@ 0x21d201c

.thumb
branch_21d201c: @ 21d201c :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2028

Jumppoints_21d2028:
.hword branch_21d2036 - Jumppoints_21d2028 - 2
.hword branch_21d2084 - Jumppoints_21d2028 - 2
.hword branch_21d2104 - Jumppoints_21d2028 - 2
.hword branch_21d2142 - Jumppoints_21d2028 - 2
.hword branch_21d21e0 - Jumppoints_21d2028 - 2
.hword branch_21d2274 - Jumppoints_21d2028 - 2
.hword branch_21d22f2 - Jumppoints_21d2028 - 2
.thumb
branch_21d2036: @ 21d2036 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r2, r7
	mov     r3, r7
	bl      Function_2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	sub     r3, #0x6b
	bl      Function_2019184
	mov     r0, #0x2
	mov     r1, r7
	bl      Function_2019060
	mov     r0, #0x5
	mov     r1, #0x1
	bl      0x2019120
	mov     r1, r4
	mov     r0, r7
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r1, r4
	mov     r2, #0x8
	add     r1, #0xac
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0x30
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d22fc
@ 0x21d2084

.thumb
branch_21d2084: @ 21d2084 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x20192ec
	ldr     r0, [r4, #0x18]
	mov     r1, #0x5
	bl      0x20192f8
	mov     r1, r4
	add     r1, #0xb0
	ldr     r3, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xac
	ldr     r2, [r1, #0x0]
	lsl     r1, r2, #3
	add     r1, r2, r1
	mov     r2, r3
	mul     r2, r1
	lsl     r1, r3, #3
	add     r1, r3, r1
	mul     r1, r3
	lsr     r3, r1, #31
	add     r3, r1, r3
	asr     r1, r3, #1
	sub     r6, r2, r1
	cmp     r0, #0x58
	bge     branch_21d20ee
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r2, #0x1
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	mov     r1, #0x2
	ldr     r0, [r4, #0x18]
	mov     r3, r1
	bl      Function_2019184
	ldr     r0, [r4, #0x18]
	mov     r1, #0x5
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2019184
	ldr     r0, [r4, #0x18]
	mov     r1, #0x5
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_2019184
	b       branch_21d22fc
@ 0x21d20ee

.thumb
branch_21d20ee: @ 21d20ee :thumb
	mov     r0, #0x5
	mov     r1, r7
	bl      0x2019120
	mov     r0, r4
	mov     r1, r7
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d22fc
@ 0x21d2104

.thumb
branch_21d2104: @ 21d2104 :thumb
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d211e
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	b       branch_21d22fc
@ 0x21d211e

.thumb
branch_21d211e: @ 21d211e :thumb
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r1, r4
	mov     r0, r7
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r1, r4
	mov     r2, #0x9
	add     r1, #0xac
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d22fc
@ 0x21d2142

.thumb
branch_21d2142: @ 21d2142 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x20192ec
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x20192f8
	mov     r0, r4
	add     r0, #0xb0
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xac
	ldr     r2, [r0, #0x0]
	lsl     r0, r2, #3
	add     r0, r2, r0
	lsl     r2, r1, #3
	add     r2, r1, r2
	mul     r0, r1
	mul     r2, r1
	lsr     r1, r2, #31
	add     r1, r2, r1
	sub     r0, #0x68
	asr     r1, r1, #1
	sub     r6, r0, r1
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_21d21aa
	cmp     r6, #0x0
	bgt     branch_21d21aa
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, r7
	bl      Function_2019184
	mov     r1, r4
	mov     r0, r7
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r1, r4
	mov     r2, #0x3
	add     r1, #0xac
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d22fc
@ 0x21d21aa

.thumb
branch_21d21aa: @ 21d21aa :thumb
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r2, #0x1
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa8
	str     r6, [r0, #0x0]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	asr     r6, r6, #1
	cmp     r6, #0x90
	ble     branch_21d21d2
	mov     r6, #0x90
.thumb
branch_21d21d2: @ 21d21d2 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_2019184
	b       branch_21d22fc
@ 0x21d21e0

.thumb
branch_21d21e0: @ 21d21e0 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x20192ec
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x20192f8
	mov     r0, r4
	add     r0, #0xb0
	ldr     r6, [r0, #0x0]
	mov     r1, #0x3
	lsl     r0, r6, #3
	add     r0, r6, r0
	mul     r0, r6
	blx     _s32_div_f
	mov     r1, r4
	add     r1, #0xac
	ldr     r2, [r1, #0x0]
	lsl     r1, r2, #3
	add     r1, r2, r1
	mul     r1, r6
	sub     r6, r1, r0
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_21d2246
	cmp     r6, #0x0
	bgt     branch_21d2246
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, r7
	bl      Function_2019184
	mov     r1, r4
	mov     r0, r7
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r1, r4
	mov     r2, #0x3
	add     r1, #0xac
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d22fc
@ 0x21d2246

.thumb
branch_21d2246: @ 21d2246 :thumb
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	mov     r1, #0x2
	ldr     r0, [r4, #0x18]
	mov     r2, r1
	mov     r3, r1
	bl      Function_2019184
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_2019184
	mov     r0, r4
	add     r0, #0xa8
	str     r6, [r0, #0x0]
	b       branch_21d22fc
@ 0x21d2274

.thumb
branch_21d2274: @ 21d2274 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x20192ec
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x20192f8
	mov     r0, r4
	add     r0, #0xb0
	ldr     r6, [r0, #0x0]
	mov     r1, #0x3
	lsl     r0, r6, #3
	add     r0, r6, r0
	mul     r0, r6
	blx     _s32_div_f
	mov     r1, r4
	add     r1, #0xac
	ldr     r2, [r1, #0x0]
	lsl     r1, r2, #3
	add     r1, r2, r1
	mul     r1, r6
	sub     r6, r1, r0
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_21d22c4
	cmp     r6, #0x0
	bgt     branch_21d22c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, r7
	bl      Function_2019184
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	b       branch_21d22fc
@ 0x21d22c4

.thumb
branch_21d22c4: @ 21d22c4 :thumb
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r2, #0x1
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r3, #0x4
	bl      Function_2019184
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_2019184
	mov     r0, r4
	add     r0, #0xa8
	str     r6, [r0, #0x0]
	b       branch_21d22fc
@ 0x21d22f2

.thumb
branch_21d22f2: @ 21d22f2 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d2308, (=0x1ab)
	mov     r1, r7
	bl      0x2005844
	mov     r7, #0x1
.thumb
branch_21d22fc: @ 21d22fc :thumb
	mov     r0, r4
	bl      Function_21d1fa0
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x21d2306


.align 2


.word 0x1ab @ 0x21d2308
.thumb
Function_21d230c: @ 21d230c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2314, (=0x2019061)
	mov     r0, #0x2
	mov     r1, #0x1
	bx      r3
@ 0x21d2314

.word 0x2019061 @ 0x21d2314
.thumb
Function_21d2318: @ 21d2318 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	mov     r4, r0
	ldr     r1, [r4, #0xc]
	mov     r5, #0x0
	cmp     r1, #0x6d
	bls     branch_21d232a
	bl      branch_21d3240
.thumb
branch_21d232a: @ 21d232a :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d2336

Jumppoints_21d2336:
.hword branch_21d2412 - Jumppoints_21d2336 - 2
.hword branch_21d2452 - Jumppoints_21d2336 - 2
.hword branch_21d246e - Jumppoints_21d2336 - 2
.hword branch_21d248a - Jumppoints_21d2336 - 2
.hword branch_21d24d6 - Jumppoints_21d2336 - 2
.hword branch_21d24e6 - Jumppoints_21d2336 - 2
.hword branch_21d24fa - Jumppoints_21d2336 - 2
.hword branch_21d250e - Jumppoints_21d2336 - 2
.hword branch_21d2558 - Jumppoints_21d2336 - 2
.hword branch_21d2578 - Jumppoints_21d2336 - 2
.hword branch_21d2598 - Jumppoints_21d2336 - 2
.hword branch_21d25d0 - Jumppoints_21d2336 - 2
.hword branch_21d25e0 - Jumppoints_21d2336 - 2
.hword branch_21d25fa - Jumppoints_21d2336 - 2
.hword branch_21d260e - Jumppoints_21d2336 - 2
.hword branch_21d2628 - Jumppoints_21d2336 - 2
.hword branch_21d263c - Jumppoints_21d2336 - 2
.hword branch_21d2656 - Jumppoints_21d2336 - 2
.hword branch_21d266a - Jumppoints_21d2336 - 2
.hword branch_21d2690 - Jumppoints_21d2336 - 2
.hword branch_21d26a0 - Jumppoints_21d2336 - 2
.hword branch_21d26b4 - Jumppoints_21d2336 - 2
.hword branch_21d26f0 - Jumppoints_21d2336 - 2
.hword branch_21d2714 - Jumppoints_21d2336 - 2
.hword branch_21d2744 - Jumppoints_21d2336 - 2
.hword branch_21d2776 - Jumppoints_21d2336 - 2
.hword branch_21d278e - Jumppoints_21d2336 - 2
.hword branch_21d27d0 - Jumppoints_21d2336 - 2
.hword branch_21d27e4 - Jumppoints_21d2336 - 2
.hword branch_21d282e - Jumppoints_21d2336 - 2
.hword branch_21d283e - Jumppoints_21d2336 - 2
.hword branch_21d2852 - Jumppoints_21d2336 - 2
.hword branch_21d288a - Jumppoints_21d2336 - 2
.hword branch_21d289a - Jumppoints_21d2336 - 2
.hword branch_21d28b8 - Jumppoints_21d2336 - 2
.hword branch_21d28d0 - Jumppoints_21d2336 - 2
.hword branch_21d28ea - Jumppoints_21d2336 - 2
.hword branch_21d2904 - Jumppoints_21d2336 - 2
.hword branch_21d291e - Jumppoints_21d2336 - 2
.hword branch_21d2938 - Jumppoints_21d2336 - 2
.hword branch_21d2958 - Jumppoints_21d2336 - 2
.hword branch_21d2978 - Jumppoints_21d2336 - 2
.hword branch_21d298c - Jumppoints_21d2336 - 2
.hword branch_21d29a0 - Jumppoints_21d2336 - 2
.hword branch_21d29c0 - Jumppoints_21d2336 - 2
.hword branch_21d2a06 - Jumppoints_21d2336 - 2
.hword branch_21d2a16 - Jumppoints_21d2336 - 2
.hword branch_21d2a2a - Jumppoints_21d2336 - 2
.hword branch_21d2a5a - Jumppoints_21d2336 - 2
.hword branch_21d2ac6 - Jumppoints_21d2336 - 2
.hword branch_21d2ada - Jumppoints_21d2336 - 2
.hword branch_21d2afe - Jumppoints_21d2336 - 2
.hword branch_21d2b36 - Jumppoints_21d2336 - 2
.hword branch_21d2b70 - Jumppoints_21d2336 - 2
.hword branch_21d2b8a - Jumppoints_21d2336 - 2
.hword branch_21d2bdc - Jumppoints_21d2336 - 2
.hword branch_21d2c00 - Jumppoints_21d2336 - 2
.hword branch_21d2c12 - Jumppoints_21d2336 - 2
.hword branch_21d2c22 - Jumppoints_21d2336 - 2
.hword branch_21d2c3c - Jumppoints_21d2336 - 2
.hword branch_21d2c54 - Jumppoints_21d2336 - 2
.hword branch_21d2c64 - Jumppoints_21d2336 - 2
.hword branch_21d2c76 - Jumppoints_21d2336 - 2
.hword branch_21d2c88 - Jumppoints_21d2336 - 2
.hword branch_21d2cc2 - Jumppoints_21d2336 - 2
.hword branch_21d2cd4 - Jumppoints_21d2336 - 2
.hword branch_21d2ce6 - Jumppoints_21d2336 - 2
.hword branch_21d2d02 - Jumppoints_21d2336 - 2
.hword branch_21d2d7a - Jumppoints_21d2336 - 2
.hword branch_21d2d8c - Jumppoints_21d2336 - 2
.hword branch_21d2da4 - Jumppoints_21d2336 - 2
.hword branch_21d2db6 - Jumppoints_21d2336 - 2
.hword branch_21d2dce - Jumppoints_21d2336 - 2
.hword branch_21d2dee - Jumppoints_21d2336 - 2
.hword branch_21d2e20 - Jumppoints_21d2336 - 2
.hword branch_21d2e40 - Jumppoints_21d2336 - 2
.hword branch_21d2e52 - Jumppoints_21d2336 - 2
.hword branch_21d2e6c - Jumppoints_21d2336 - 2
.hword branch_21d2ed4 - Jumppoints_21d2336 - 2
.hword branch_21d2ee2 - Jumppoints_21d2336 - 2
.hword branch_21d2f02 - Jumppoints_21d2336 - 2
.hword branch_21d2f44 - Jumppoints_21d2336 - 2
.hword branch_21d2f64 - Jumppoints_21d2336 - 2
.hword branch_21d2f7c - Jumppoints_21d2336 - 2
.hword branch_21d2f8e - Jumppoints_21d2336 - 2
.hword branch_21d2fa0 - Jumppoints_21d2336 - 2
.hword branch_21d2fb2 - Jumppoints_21d2336 - 2
.hword branch_21d2fca - Jumppoints_21d2336 - 2
.hword branch_21d2fdc - Jumppoints_21d2336 - 2
.hword branch_21d2fee - Jumppoints_21d2336 - 2
.hword branch_21d3000 - Jumppoints_21d2336 - 2
.hword branch_21d3068 - Jumppoints_21d2336 - 2
.hword branch_21d307a - Jumppoints_21d2336 - 2
.hword branch_21d308c - Jumppoints_21d2336 - 2
.hword branch_21d30d4 - Jumppoints_21d2336 - 2
.hword branch_21d30e2 - Jumppoints_21d2336 - 2
.hword branch_21d30f4 - Jumppoints_21d2336 - 2
.hword branch_21d312e - Jumppoints_21d2336 - 2
.hword branch_21d3142 - Jumppoints_21d2336 - 2
.hword branch_21d315a - Jumppoints_21d2336 - 2
.hword branch_21d316c - Jumppoints_21d2336 - 2
.hword branch_21d317c - Jumppoints_21d2336 - 2
.hword branch_21d3196 - Jumppoints_21d2336 - 2
.hword branch_21d31b0 - Jumppoints_21d2336 - 2
.hword branch_21d31c0 - Jumppoints_21d2336 - 2
.hword branch_21d31f6 - Jumppoints_21d2336 - 2
.hword branch_21d320e - Jumppoints_21d2336 - 2
.hword branch_21d321e - Jumppoints_21d2336 - 2
.hword branch_21d322c - Jumppoints_21d2336 - 2
.hword branch_21d323e - Jumppoints_21d2336 - 2
.thumb
branch_21d2412: @ 21d2412 :thumb
	ldr     r1, [pc, #0x324] @ 0x21d2738, (=0x405)
	mov     r0, #0x2
	mov     r2, #0x1
	bl      0x2004550
	ldr     r0, [pc, #0x318] @ 0x21d2738, (=0x405)
	mov     r1, r5
	bl      0x20055d0
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2452: @ 21d2452 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d251a
	mov     r0, r4
	mov     r1, #0x28
	bl      Function_21d14b8
	cmp     r0, #0x1
	bne     branch_21d251a
	mov     r0, #0x2
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d246e: @ 21d246e :thumb
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d251a
	mov     r0, #0x3
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	bl      branch_21d3240
.thumb
branch_21d248a: @ 21d248a :thumb
	ldr     r0, [pc, #0x2ac] @ 0x21d2738, (=0x405)
	bl      0x200549c
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x89
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, r5
	add     r0, #0x8a
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1a20
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r5
	bl      0x200f174
	mov     r0, #0x4
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d24d6: @ 21d24d6 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d251a
	mov     r0, #0x5
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d24e6: @ 21d24e6 :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d251a
	mov     r0, #0x6
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d24fa: @ 21d24fa :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1d44
	cmp     r0, #0x1
	bne     branch_21d251a
	mov     r0, #0x7
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d250e: @ 21d250e :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1648
	cmp     r0, #0x1
	beq     branch_21d251e
.thumb
branch_21d251a: @ 21d251a :thumb
	bl      branch_21d3240
.thumb
branch_21d251e: @ 21d251e :thumb
	ldr     r0, [r4, #0x48]
	cmp     r0, #0x1
	beq     branch_21d2530
	cmp     r0, #0x2
	beq     branch_21d253c
	cmp     r0, #0x3
	beq     branch_21d2550
	bl      branch_21d3240
.thumb
branch_21d2530: @ 21d2530 :thumb
	mov     r0, #0xa
	str     r0, [r4, #0x10]
	mov     r0, #0x8
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d253c: @ 21d253c :thumb
	mov     r0, #0x1f
	str     r0, [r4, #0x10]
	mov     r0, #0x8
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	bl      branch_21d3240
.thumb
branch_21d2550: @ 21d2550 :thumb
	mov     r0, #0x29
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2558: @ 21d2558 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r5
	mov     r3, r5
	bl      0x200f174
	mov     r0, #0x9
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2578: @ 21d2578 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d267c
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	mov     r0, #0x1
	mov     r1, r5
	bl      0x2019120
	ldr     r0, [r4, #0x10]
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2598: @ 21d2598 :thumb
	mov     r1, r4
	mov     r2, #0x1
	add     r1, #0x88
	strb    r2, [r1, #0x0]
	bl      Function_21d19dc
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x8b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1b14
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0xb
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d25d0: @ 21d25d0 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d267c
	mov     r0, #0xc
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d25e0: @ 21d25e0 :thumb
	mov     r1, #0x12
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	mov     r2, r5
	mov     r3, #0x3
	bl      Function_21d1784
	cmp     r0, #0x1
	bne     branch_21d267c
	mov     r0, #0xd
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d25fa: @ 21d25fa :thumb
	mov     r1, r4
	mov     r2, #0x2
	add     r1, #0x88
	strb    r2, [r1, #0x0]
	bl      Function_21d19dc
	mov     r0, #0xe
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d260e: @ 21d260e :thumb
	mov     r1, #0xc
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	mov     r2, r5
	mov     r3, #0x7
	bl      Function_21d1784
	cmp     r0, #0x1
	bne     branch_21d267c
	mov     r0, #0xf
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2628: @ 21d2628 :thumb
	mov     r1, r4
	mov     r2, #0x3
	add     r1, #0x88
	strb    r2, [r1, #0x0]
	bl      Function_21d19dc
	mov     r0, #0x10
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d263c: @ 21d263c :thumb
	mov     r1, #0xc
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	mov     r2, #0x2
	mov     r3, r1
	bl      Function_21d1784
	cmp     r0, #0x1
	bne     branch_21d267c
	mov     r0, #0x11
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2656: @ 21d2656 :thumb
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d267c
	mov     r0, #0x12
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d266a: @ 21d266a :thumb
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	mov     r1, #0x5
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_21d1784
	cmp     r0, #0x1
	beq     branch_21d2680
.thumb
branch_21d267c: @ 21d267c :thumb
	bl      branch_21d3240
.thumb
branch_21d2680: @ 21d2680 :thumb
	mov     r0, #0x13
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	bl      branch_21d3240
.thumb
branch_21d2690: @ 21d2690 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x14
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d26a0: @ 21d26a0 :thumb
	mov     r1, #0x7
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d279a
	mov     r0, #0x15
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d26b4: @ 21d26b4 :thumb
	ldr     r6, [pc, #0x84] @ 0x21d273c, (=0x21d3864)
	add     r3, sp, #0x1c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x18]
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x68]
	bl      0x2015958
	mov     r0, #0x6
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0x8b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1b14
	mov     r0, #0x16
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d26f0: @ 21d26f0 :thumb
	ldr     r0, [pc, #0x4c] @ 0x21d2740, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_21d2700
	mov     r0, #0x1b
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2700: @ 21d2700 :thumb
	ldr     r0, [r4, #0x68]
	bl      0x20159c0
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	bhi     branch_21d279a
	mov     r0, #0x17
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2714: @ 21d2714 :thumb
	ldr     r0, [r4, #0x68]
	bl      0x20159c0
	cmp     r0, #0x1
	beq     branch_21d2726
	cmp     r0, #0x2
	beq     branch_21d272e
	bl      branch_21d3240
.thumb
branch_21d2726: @ 21d2726 :thumb
	mov     r0, #0x18
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d272e: @ 21d272e :thumb
	mov     r0, #0x1a
	str     r0, [r4, #0xc]
	bl      branch_21d3240
	mov     r8, r8

.word 0x405 @ 0x21d2738
.word 0x21d3864 @ 0x21d273c
.word 0x21bf67c @ 0x21d2740


.thumb
branch_21d2744: @ 21d2744 :thumb
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d279a
	ldr     r0, [r4, #0x68]
	bl      0x2015a54
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x19
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2776: @ 21d2776 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d279a
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	mov     r0, #0x1c
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d278e: @ 21d278e :thumb
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_21d1334
	cmp     r0, #0x1
	beq     branch_21d279e
.thumb
branch_21d279a: @ 21d279a :thumb
	bl      branch_21d3240
.thumb
branch_21d279e: @ 21d279e :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	ldr     r0, [r4, #0x68]
	bl      0x2015a54
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x88
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d19dc
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x8b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1b14
	mov     r0, #0xc
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d27d0: @ 21d27d0 :thumb
	mov     r1, #0x8
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d28ac
	mov     r0, #0x16
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d27e4: @ 21d27e4 :thumb
	mov     r1, r4
	add     r1, #0x88
	strb    r5, [r1, #0x0]
	bl      Function_21d19dc
	mov     r0, r4
	mov     r1, r5
	add     r0, #0x8b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1b14
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r2, r5
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019184
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1d
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d282e: @ 21d282e :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d28ac
	mov     r0, #0x1e
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d283e: @ 21d283e :thumb
	mov     r1, #0x9
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d28ac
	mov     r0, #0x6
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2852: @ 21d2852 :thumb
	mov     r1, r4
	mov     r2, #0x4
	add     r1, #0x88
	strb    r2, [r1, #0x0]
	bl      Function_21d19dc
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x8b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1b14
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x20
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d288a: @ 21d288a :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d28ac
	mov     r0, #0x21
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d289a: @ 21d289a :thumb
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x9
	bl      Function_21d1784
	cmp     r0, #0x1
	beq     branch_21d28b0
.thumb
branch_21d28ac: @ 21d28ac :thumb
	bl      branch_21d3240
.thumb
branch_21d28b0: @ 21d28b0 :thumb
	mov     r0, #0x22
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d28b8: @ 21d28b8 :thumb
	mov     r3, #0x8
	mov     r1, #0xb
	mov     r2, #0x1
	str     r3, [sp, #0x0]
	bl      Function_21d1784
	cmp     r0, #0x1
	bne     branch_21d29c8
	mov     r0, #0x23
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d28d0: @ 21d28d0 :thumb
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0xc
	mov     r2, #0x1
	mov     r3, #0x9
	bl      Function_21d1784
	cmp     r0, #0x1
	bne     branch_21d29c8
	mov     r0, #0x24
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d28ea: @ 21d28ea :thumb
	mov     r1, #0xe
	str     r1, [sp, #0x0]
	mov     r1, #0xd
	mov     r2, #0x1
	mov     r3, #0x5
	bl      Function_21d1784
	cmp     r0, #0x1
	bne     branch_21d29c8
	mov     r0, #0x25
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2904: @ 21d2904 :thumb
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r1, #0xe
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_21d1784
	cmp     r0, #0x1
	bne     branch_21d29c8
	mov     r0, #0x26
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d291e: @ 21d291e :thumb
	mov     r1, #0xc
	str     r1, [sp, #0x0]
	mov     r1, #0xf
	mov     r2, #0x1
	mov     r3, #0x6
	bl      Function_21d1784
	cmp     r0, #0x1
	bne     branch_21d29c8
	mov     r0, #0x27
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2938: @ 21d2938 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r5
	mov     r3, r5
	bl      0x200f174
	mov     r0, #0x28
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2958: @ 21d2958 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d29c8
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1c
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2978: @ 21d2978 :thumb
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_21d1d44
	cmp     r0, #0x1
	bne     branch_21d29c8
	mov     r0, #0x2a
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d298c: @ 21d298c :thumb
	mov     r1, #0x10
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d29c8
	mov     r0, #0x2b
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d29a0: @ 21d29a0 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r2, r5
	mov     r3, r5
	bl      0x200f174
	mov     r0, #0x2c
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d29c0: @ 21d29c0 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	beq     branch_21d29cc
.thumb
branch_21d29c8: @ 21d29c8 :thumb
	bl      branch_21d3240
.thumb
branch_21d29cc: @ 21d29cc :thumb
	mov     r0, r4
	bl      Function_21d1ce0
	mov     r0, r4
	mov     r1, #0x4
	add     r0, #0x8b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1b14
	mov     r0, #0x6
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r3, r5
	bl      0x200f174
	mov     r0, #0x2d
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2a06: @ 21d2a06 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d2ad2
	mov     r0, #0x2e
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2a16: @ 21d2a16 :thumb
	mov     r1, #0x11
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d2ad2
	mov     r0, #0x2f
	str     r0, [r4, #0xc]
	bl      branch_21d3240
.thumb
branch_21d2a2a: @ 21d2a2a :thumb
	bl      Function_21d0ffc
	cmp     r0, #0x1
	bne     branch_21d2a4c
	mov     r0, r4
	mov     r1, r5
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x98
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x18]
	bl      0x2019ebc
	mov     r0, #0x30
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2a4c

.thumb
branch_21d2a4c: @ 21d2a4c :thumb
	ldr     r0, [pc, #0x304] @ 0x21d2d54, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_21d2ad2
	mov     r0, #0x31
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2a5a

.thumb
branch_21d2a5a: @ 21d2a5a :thumb
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d2a70
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	add     r4, #0x98
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3240
@ 0x21d2a70

.thumb
branch_21d2a70: @ 21d2a70 :thumb
	ldr     r6, [pc, #0x2e4] @ 0x21d2d58, (=0x21d37f4)
	add     r3, sp, #0x10
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #2
	ldr     r1, [r2, r0]
	ldr     r0, [pc, #0x2d0] @ 0x21d2d5c, (=0xffff)
	cmp     r1, r0
	bne     branch_21d2a9a
	ldr     r0, [pc, #0x2d0] @ 0x21d2d60, (=0x706)
	bl      Function_2005748
	mov     r0, #0x32
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2a9a

.thumb
branch_21d2a9a: @ 21d2a9a :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r5, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r3, #0x6
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x18]
	mov     r0, #0x7d
	bl      0x2006e3c
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, #0x4
	add     r4, #0x98
	str     r0, [r4, #0x0]
	b       branch_21d3240
@ 0x21d2ac6

.thumb
branch_21d2ac6: @ 21d2ac6 :thumb
	mov     r1, #0x12
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	beq     branch_21d2ad4
.thumb
branch_21d2ad2: @ 21d2ad2 :thumb
	b       branch_21d3240
@ 0x21d2ad4

.thumb
branch_21d2ad4: @ 21d2ad4 :thumb
	mov     r0, #0x2f
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2ada

.thumb
branch_21d2ada: @ 21d2ada :thumb
	mov     r0, #0x1
	mov     r1, #0x10
	mov     r2, r5
	mov     r3, #0xb
	str     r0, [sp, #0x0]
	bl      0x200aae0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x10
	mov     r2, r5
	mov     r3, #0xd
	bl      0x200aae0
	mov     r0, #0x33
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2afe

.thumb
branch_21d2afe: @ 21d2afe :thumb
	mov     r0, #0x1
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2bee
	mov     r0, #0x2
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2bee
	mov     r0, #0x1
	mov     r1, r5
	mov     r2, #0x10
	mov     r3, #0xb
	str     r0, [sp, #0x0]
	bl      0x200aae0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, r5
	mov     r2, #0x10
	mov     r3, #0xd
	bl      0x200aae0
	mov     r0, #0x34
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2b36

.thumb
branch_21d2b36: @ 21d2b36 :thumb
	mov     r0, #0x1
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2bee
	mov     r0, #0x2
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2bee
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, #0x10
	mov     r2, r5
	mov     r3, #0xb
	bl      0x200aae0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, #0x10
	mov     r2, r5
	mov     r3, #0xd
	bl      0x200aae0
	mov     r0, #0x35
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2b70

.thumb
branch_21d2b70: @ 21d2b70 :thumb
	mov     r0, #0x1
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2bee
	mov     r0, #0x2
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2bee
	mov     r0, #0x36
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2b8a

.thumb
branch_21d2b8a: @ 21d2b8a :thumb
	bl      Function_21d1b80
	mov     r0, #0x6
	mov     r1, r5
	bl      0x2019120
	mov     r0, r4
	mov     r1, r5
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x94
	bl      Function_21d200c
	mov     r0, r4
	mov     r1, r5
	add     r0, #0x8b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1b14
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	mov     r1, r5
	mov     r2, r0
	mov     r3, #0xb
	bl      0x200aae0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	mov     r1, r5
	mov     r2, r0
	mov     r3, #0xd
	bl      0x200aae0
	mov     r0, #0x37
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2bdc

.thumb
branch_21d2bdc: @ 21d2bdc :thumb
	mov     r1, r4
	add     r1, #0x94
	bl      Function_21d200c
	mov     r0, #0x1
	bl      0x200ac1c
	cmp     r0, #0x1
	beq     branch_21d2bf0
.thumb
branch_21d2bee: @ 21d2bee :thumb
	b       branch_21d3240
@ 0x21d2bf0

.thumb
branch_21d2bf0: @ 21d2bf0 :thumb
	mov     r0, #0x2
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, #0x38
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2c00

.thumb
branch_21d2c00: @ 21d2c00 :thumb
	mov     r1, r4
	add     r1, #0x94
	bl      Function_21d200c
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, #0x39
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2c12

.thumb
branch_21d2c12: @ 21d2c12 :thumb
	mov     r1, #0x28
	bl      Function_21d14b8
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, #0x3a
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2c22

.thumb
branch_21d2c22: @ 21d2c22 :thumb
	mov     r1, #0x13
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d2cf2
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	mov     r0, #0x3b
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2c3c

.thumb
branch_21d2c3c: @ 21d2c3c :thumb
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, r4
	bl      Function_21d230c
	mov     r0, #0x3c
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2c54

.thumb
branch_21d2c54: @ 21d2c54 :thumb
	mov     r1, #0x1e
	bl      Function_21d14b8
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, #0x3d
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2c64

.thumb
branch_21d2c64: @ 21d2c64 :thumb
	mov     r1, #0x14
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, #0x3e
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2c76

.thumb
branch_21d2c76: @ 21d2c76 :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, #0x3f
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2c88

.thumb
branch_21d2c88: @ 21d2c88 :thumb
	bl      Function_21d1dcc
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x89
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x6
	add     r0, #0x8a
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d1a20
	mov     r2, r5
	mov     r3, r2
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	sub     r3, #0x30
	bl      Function_2019184
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r2, r5
	mov     r3, #0x30
	bl      Function_2019184
	mov     r0, #0x40
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2cc2

.thumb
branch_21d2cc2: @ 21d2cc2 :thumb
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, #0x41
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2cd4

.thumb
branch_21d2cd4: @ 21d2cd4 :thumb
	mov     r1, #0x2
	mov     r2, r5
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d2cf2
	mov     r0, #0x42
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2ce6

.thumb
branch_21d2ce6: @ 21d2ce6 :thumb
	mov     r1, #0x15
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	beq     branch_21d2cf4
.thumb
branch_21d2cf2: @ 21d2cf2 :thumb
	b       branch_21d3240
@ 0x21d2cf4

.thumb
branch_21d2cf4: @ 21d2cf4 :thumb
	mov     r0, r4
	mov     r1, r5
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, #0x43
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2d02

.thumb
branch_21d2d02: @ 21d2d02 :thumb
	ldr     r0, [pc, #0x50] @ 0x21d2d54, (=0x21bf67c)
	mov     r1, #0x1
	ldr     r0, [r0, #0x48]
	and     r1, r0
	cmp     r1, #0x1
	bne     branch_21d2d34
	mov     r0, #0x6
	str     r0, [r4, #0x7c]
	mov     r0, r4
	mov     r1, #0xa
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [r4, #0x78]
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d2d2e
	mov     r0, #0x44
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2d2e

.thumb
branch_21d2d2e: @ 21d2d2e :thumb
	mov     r0, #0x46
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2d34

.thumb
branch_21d2d34: @ 21d2d34 :thumb
	mov     r1, #0x20
	and     r1, r0
	cmp     r1, #0x20
	beq     branch_21d2d44
	mov     r1, #0x10
	and     r0, r1
	cmp     r0, #0x10
	bne     branch_21d2d72
.thumb
branch_21d2d44: @ 21d2d44 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d2d64
	mov     r1, #0x1
	b       branch_21d2d66
@ 0x21d2d52


.align 2


.word 0x21bf67c @ 0x21d2d54
.word 0x21d37f4 @ 0x21d2d58
.word 0xffff @ 0x21d2d5c
.word 0x706 @ 0x21d2d60
.thumb
branch_21d2d64: @ 21d2d64 :thumb
	mov     r1, #0x0
.thumb
branch_21d2d66: @ 21d2d66 :thumb
	mov     r0, r4
	add     r0, #0x84
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x2cc] @ 0x21d303c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d2d72: @ 21d2d72 :thumb
	mov     r0, r4
	bl      Function_21d1de8
	b       branch_21d3240
@ 0x21d2d7a

.thumb
branch_21d2d7a: @ 21d2d7a :thumb
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d2e0a
	mov     r0, #0x45
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2d8c

.thumb
branch_21d2d8c: @ 21d2d8c :thumb
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_21d1d44
	cmp     r0, #0x1
	bne     branch_21d2e0a
	mov     r0, r4
	bl      Function_21d1efc
	mov     r0, #0x48
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2da4

.thumb
branch_21d2da4: @ 21d2da4 :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d2e0a
	mov     r0, #0x47
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2db6

.thumb
branch_21d2db6: @ 21d2db6 :thumb
	mov     r1, #0x2
	mov     r2, r5
	bl      Function_21d1d44
	cmp     r0, #0x1
	bne     branch_21d2e0a
	mov     r0, r4
	bl      Function_21d1efc
	mov     r0, #0x48
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2dce

.thumb
branch_21d2dce: @ 21d2dce :thumb
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d2dda
	mov     r1, #0x16
	b       branch_21d2ddc
@ 0x21d2dda

.thumb
branch_21d2dda: @ 21d2dda :thumb
	mov     r1, #0x17
.thumb
branch_21d2ddc: @ 21d2ddc :thumb
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d2e0a
	mov     r0, #0x49
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2dee

.thumb
branch_21d2dee: @ 21d2dee :thumb
	mov     r1, r5
	mov     r2, r5
	bl      Function_21d1648
	cmp     r0, #0x1
	bne     branch_21d2e0a
	ldr     r1, [r4, #0x48]
	.hword  0x1ea8 @ sub r0, r5, #0x2
	cmp     r1, r0
	beq     branch_21d2e12
	cmp     r1, #0x1
	beq     branch_21d2e0c
	cmp     r1, #0x2
	beq     branch_21d2e12
.thumb
branch_21d2e0a: @ 21d2e0a :thumb
	b       branch_21d3240
@ 0x21d2e0c

.thumb
branch_21d2e0c: @ 21d2e0c :thumb
	mov     r0, #0x4b
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2e12

.thumb
branch_21d2e12: @ 21d2e12 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      0x2019ebc
	mov     r0, #0x4a
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2e20

.thumb
branch_21d2e20: @ 21d2e20 :thumb
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d2e2c
	mov     r1, #0x1
	b       branch_21d2e2e
@ 0x21d2e2c

.thumb
branch_21d2e2c: @ 21d2e2c :thumb
	mov     r1, #0x2
.thumb
branch_21d2e2e: @ 21d2e2e :thumb
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d2f26
	mov     r0, #0x3f
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2e40

.thumb
branch_21d2e40: @ 21d2e40 :thumb
	mov     r1, #0x18
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d2f26
	mov     r0, #0x4c
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2e52

.thumb
branch_21d2e52: @ 21d2e52 :thumb
	add     r0, #0x84
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0x70]
	str     r1, [r0, #0x4]
	ldr     r0, [pc, #0x1e4] @ 0x21d3040, (=0x20f2dac)
	ldr     r1, [r4, #0x70]
	ldr     r2, [r4, #0x0]
	bl      0x20067e8
	str     r0, [r4, #0x14]
	mov     r0, #0x4d
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2e6c

.thumb
branch_21d2e6c: @ 21d2e6c :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d2ea4
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r2, r5
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019184
	b       branch_21d2eb8
@ 0x21d2ea4

.thumb
branch_21d2ea4: @ 21d2ea4 :thumb
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r2, r5
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
.thumb
branch_21d2eb8: @ 21d2eb8 :thumb
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x4e
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2ed4

.thumb
branch_21d2ed4: @ 21d2ed4 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d2f26
	mov     r0, #0x4f
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2ee2

.thumb
branch_21d2ee2: @ 21d2ee2 :thumb
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d2eee
	mov     r1, #0x19
	b       branch_21d2ef0
@ 0x21d2eee

.thumb
branch_21d2eee: @ 21d2eee :thumb
	mov     r1, #0x1a
.thumb
branch_21d2ef0: @ 21d2ef0 :thumb
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d2f26
	mov     r0, #0x50
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2f02

.thumb
branch_21d2f02: @ 21d2f02 :thumb
	mov     r1, r5
	mov     r2, r5
	bl      Function_21d1648
	cmp     r0, #0x1
	bne     branch_21d2f26
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	ldr     r1, [r4, #0x48]
	.hword  0x1ea8 @ sub r0, r5, #0x2
	cmp     r1, r0
	beq     branch_21d2f32
	cmp     r1, #0x1
	beq     branch_21d2f28
	cmp     r1, #0x2
	beq     branch_21d2f32
.thumb
branch_21d2f26: @ 21d2f26 :thumb
	b       branch_21d3240
@ 0x21d2f28

.thumb
branch_21d2f28: @ 21d2f28 :thumb
	mov     r0, #0x52
	str     r0, [r4, #0x10]
	mov     r0, #0x51
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2f32

.thumb
branch_21d2f32: @ 21d2f32 :thumb
	ldr     r0, [r4, #0x70]
	ldr     r0, [r0, #0x18]
	bl      0x20237e8
	mov     r0, #0x3f
	str     r0, [r4, #0x10]
	mov     r0, #0x51
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2f44

.thumb
branch_21d2f44: @ 21d2f44 :thumb
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d2f50
	mov     r1, #0x1
	b       branch_21d2f52
@ 0x21d2f50

.thumb
branch_21d2f50: @ 21d2f50 :thumb
	mov     r1, #0x2
.thumb
branch_21d2f52: @ 21d2f52 :thumb
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d300c
	ldr     r0, [r4, #0x10]
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2f64

.thumb
branch_21d2f64: @ 21d2f64 :thumb
	mov     r1, r4
	mov     r2, #0x1
	add     r1, #0x89
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x8a
	strb    r5, [r1, #0x0]
	bl      Function_21d1a20
	mov     r0, #0x53
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2f7c

.thumb
branch_21d2f7c: @ 21d2f7c :thumb
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d300c
	mov     r0, #0x54
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2f8e

.thumb
branch_21d2f8e: @ 21d2f8e :thumb
	mov     r1, #0x1b
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d300c
	mov     r0, #0x55
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2fa0

.thumb
branch_21d2fa0: @ 21d2fa0 :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d300c
	mov     r0, #0x56
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2fb2

.thumb
branch_21d2fb2: @ 21d2fb2 :thumb
	mov     r1, r4
	mov     r2, #0xa
	add     r1, #0x89
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x8a
	strb    r5, [r1, #0x0]
	bl      Function_21d1a20
	mov     r0, #0x57
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2fca

.thumb
branch_21d2fca: @ 21d2fca :thumb
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d300c
	mov     r0, #0x58
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2fdc

.thumb
branch_21d2fdc: @ 21d2fdc :thumb
	mov     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d300c
	mov     r0, #0x59
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d2fee

.thumb
branch_21d2fee: @ 21d2fee :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1d44
	cmp     r0, #0x1
	bne     branch_21d300c
	mov     r0, #0x5a
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d3000

.thumb
branch_21d3000: @ 21d3000 :thumb
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21d1648
	cmp     r0, #0x1
	beq     branch_21d300e
.thumb
branch_21d300c: @ 21d300c :thumb
	b       branch_21d3240
@ 0x21d300e

.thumb
branch_21d300e: @ 21d300e :thumb
	ldr     r1, [r4, #0x48]
	cmp     r1, #0x5
	bhi     branch_21d3110
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d3020

Jumppoints_21d3020:
.hword branch_21d3240 - Jumppoints_21d3020 - 2
.hword branch_21d302c - Jumppoints_21d3020 - 2
.hword branch_21d3032 - Jumppoints_21d3020 - 2
.hword branch_21d3032 - Jumppoints_21d3020 - 2
.hword branch_21d3032 - Jumppoints_21d3020 - 2
.hword branch_21d3032 - Jumppoints_21d3020 - 2
.thumb
branch_21d302c: @ 21d302c :thumb
	mov     r0, #0x5c
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d3032

.thumb
branch_21d3032: @ 21d3032 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r2, r1, #3
	ldr     r1, [pc, #0xc] @ 0x21d3044, (=0x21d3954)
	b       branch_21d3048
@ 0x21d303a


.align 2


.word 0x5dc @ 0x21d303c
.word 0x20f2dac @ 0x21d3040
.word 0x21d3954 @ 0x21d3044
.thumb
branch_21d3048: @ 21d3048 :thumb
	ldr     r0, [r4, #0x4c]
	ldr     r1, [r1, r2]
	bl      Function_200b1ec
	mov     r6, r0
	ldr     r0, [r4, #0x74]
	mov     r1, r6
	ldr     r0, [r0, #0x18]
	bl      0x2023810
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, #0x5b
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d3068

.thumb
branch_21d3068: @ 21d3068 :thumb
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_21d1d44
	cmp     r0, #0x1
	bne     branch_21d3110
	mov     r0, #0x5f
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d307a

.thumb
branch_21d307a: @ 21d307a :thumb
	ldr     r0, [pc, #0x1cc] @ 0x21d3248, (=0x20f2dac)
	ldr     r1, [r4, #0x74]
	ldr     r2, [r4, #0x0]
	bl      0x20067e8
	str     r0, [r4, #0x14]
	mov     r0, #0x5d
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d308c

.thumb
branch_21d308c: @ 21d308c :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r2, r5
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019184
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x5e
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d30d4

.thumb
branch_21d30d4: @ 21d30d4 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d3110
	mov     r0, #0x5f
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d30e2

.thumb
branch_21d30e2: @ 21d30e2 :thumb
	mov     r1, #0x1d
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d3110
	mov     r0, #0x60
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d30f4

.thumb
branch_21d30f4: @ 21d30f4 :thumb
	mov     r1, r5
	mov     r2, r5
	bl      Function_21d1648
	cmp     r0, #0x1
	bne     branch_21d3110
	ldr     r1, [r4, #0x48]
	.hword  0x1ea8 @ sub r0, r5, #0x2
	cmp     r1, r0
	beq     branch_21d3120
	cmp     r1, #0x1
	beq     branch_21d3112
	cmp     r1, #0x2
	beq     branch_21d3120
.thumb
branch_21d3110: @ 21d3110 :thumb
	b       branch_21d3240
@ 0x21d3112

.thumb
branch_21d3112: @ 21d3112 :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	mov     r0, #0x61
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d3120

.thumb
branch_21d3120: @ 21d3120 :thumb
	ldr     r0, [r4, #0x74]
	ldr     r0, [r0, #0x18]
	bl      0x20237e8
	mov     r0, #0x58
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d312e

.thumb
branch_21d312e: @ 21d312e :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1334
	cmp     r0, #0x1
	beq     branch_21d313c
	b       branch_21d3240
@ 0x21d313c

.thumb
branch_21d313c: @ 21d313c :thumb
	mov     r0, #0x62
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d3142

.thumb
branch_21d3142: @ 21d3142 :thumb
	mov     r1, r4
	mov     r2, #0x1
	add     r1, #0x89
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x8a
	strb    r5, [r1, #0x0]
	bl      Function_21d1a20
	mov     r0, #0x63
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d315a

.thumb
branch_21d315a: @ 21d315a :thumb
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d3240
	mov     r0, #0x64
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d316c

.thumb
branch_21d316c: @ 21d316c :thumb
	mov     r1, #0x1e
	bl      Function_21d14b8
	cmp     r0, #0x1
	bne     branch_21d3240
	mov     r0, #0x65
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d317c

.thumb
branch_21d317c: @ 21d317c :thumb
	mov     r1, #0x1e
	mov     r2, #0x1
	bl      Function_21d1510
	cmp     r0, #0x1
	bne     branch_21d3240
	mov     r0, r5
	mov     r1, #0x32
	bl      0x200564c
	mov     r0, #0x66
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d3196

.thumb
branch_21d3196: @ 21d3196 :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d3240
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	bl      0x2019ebc
	mov     r0, #0x67
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d31b0

.thumb
branch_21d31b0: @ 21d31b0 :thumb
	mov     r1, #0x1e
	bl      Function_21d14b8
	cmp     r0, #0x1
	bne     branch_21d3240
	mov     r0, #0x68
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d31c0

.thumb
branch_21d31c0: @ 21d31c0 :thumb
	mov     r1, r4
	add     r1, #0x84
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_21d31de
	mov     r1, r4
	mov     r2, #0x2
	add     r1, #0x89
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x8a
	strb    r5, [r1, #0x0]
	bl      Function_21d1a20
	b       branch_21d31f0
@ 0x21d31de

.thumb
branch_21d31de: @ 21d31de :thumb
	mov     r1, r4
	mov     r2, #0x6
	add     r1, #0x89
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x8a
	strb    r5, [r1, #0x0]
	bl      Function_21d1a20
.thumb
branch_21d31f0: @ 21d31f0 :thumb
	mov     r0, #0x69
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d31f6

.thumb
branch_21d31f6: @ 21d31f6 :thumb
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_21d1334
	cmp     r0, #0x1
	bne     branch_21d3240
	mov     r0, r4
	bl      Function_21d1f08
	mov     r0, #0x6a
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d320e

.thumb
branch_21d320e: @ 21d320e :thumb
	mov     r1, #0x1e
	bl      Function_21d14b8
	cmp     r0, #0x1
	bne     branch_21d3240
	mov     r0, #0x6b
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d321e

.thumb
branch_21d321e: @ 21d321e :thumb
	bl      Function_21d1f18
	cmp     r0, #0x1
	bne     branch_21d3240
	mov     r0, #0x6c
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d322c

.thumb
branch_21d322c: @ 21d322c :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d324c, (=0x21d3820)
	ldr     r2, [r4, #0x0]
	mov     r1, r5
	bl      0x20067e8
	str     r0, [r4, #0x14]
	mov     r0, #0x6d
	str     r0, [r4, #0xc]
	b       branch_21d3240
@ 0x21d323e

.thumb
branch_21d323e: @ 21d323e :thumb
	mov     r5, #0x1
.thumb
branch_21d3240: @ 21d3240 :thumb
	mov     r0, r5
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x21d3246


.align 2


.word 0x20f2dac @ 0x21d3248
.word 0x21d3820 @ 0x21d324c
.thumb
Function_21d3250: @ 21d3250 :thumb
	push    {r4,lr}
	mov     r2, #0x1
	mov     r4, r0
	mov     r0, #0x3
	mov     r1, #0x53
	lsl     r2, r2, #18
	bl      0x2017fc8
	mov     r0, r4
	mov     r1, #0x28
	mov     r2, #0x53
	bl      0x200681c
	mov     r1, #0x0
	mov     r2, #0x28
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x53
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d3280

.thumb
Function_21d3280: @ 21d3280 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	mov     r6, #0x0
	cmp     r1, #0x5
	bls     branch_21d3296
	b       branch_21d33ea
@ 0x21d3296

.thumb
branch_21d3296: @ 21d3296 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d32a2

Jumppoints_21d32a2:
.hword branch_21d32ae - Jumppoints_21d32a2 - 2
.hword branch_21d3334 - Jumppoints_21d32a2 - 2
.hword branch_21d335a - Jumppoints_21d32a2 - 2
.hword branch_21d3384 - Jumppoints_21d32a2 - 2
.hword branch_21d3396 - Jumppoints_21d32a2 - 2
.hword branch_21d33c8 - Jumppoints_21d32a2 - 2
.thumb
branch_21d32ae: @ 21d32ae :thumb
	mov     r0, r6
	mov     r1, r6
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, r6
	bl      0x200f344
	mov     r0, r6
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, r6
	mov     r1, r0
	bl      0x20177bc
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x110] @ 0x21d33f0, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x110] @ 0x21d33f4, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, r4
	bl      Function_21d342c
	mov     r0, r4
	bl      Function_21d366c
	ldr     r0, [pc, #0xf8] @ 0x21d33f8, (=0x21d3421)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      0x201ffd0
	bl      GetBGPaletteAdress
	mov     r1, r6
	mov     r7, r0
	str     r1, [sp, #0x0]
	ldr     r2, [pc, #0xe4] @ 0x21d33fc, (=0xfffc)
	mov     r1, r7
	mov     r3, #0x7
	bl      0x20039f8
	mov     r2, #0x2
	mov     r0, r7
	mov     r1, r6
	lsl     r2, r2, #8
	blx     0x20c00b4
	mov     r0, #0x3c
	str     r0, [r4, #0x24]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d33ea
@ 0x21d3334

.thumb
branch_21d3334: @ 21d3334 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21d3340
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x24]
	b       branch_21d33ea
@ 0x21d3340

.thumb
branch_21d3340: @ 21d3340 :thumb
	ldr     r0, [pc, #0xbc] @ 0x21d3400, (=0x406)
	bl      0x2004224
	ldr     r1, [pc, #0xb8] @ 0x21d3400, (=0x406)
	mov     r0, #0x4
	mov     r2, #0x1
	bl      0x2004550
	mov     r0, #0x5a
	str     r0, [r4, #0x24]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d33ea
@ 0x21d335a

.thumb
branch_21d335a: @ 21d335a :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21d3366
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x24]
	b       branch_21d33ea
@ 0x21d3366

.thumb
branch_21d3366: @ 21d3366 :thumb
	str     r6, [r4, #0x24]
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r3, r6
	bl      0x200f174
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d33ea
@ 0x21d3384

.thumb
branch_21d3384: @ 21d3384 :thumb
	bl      Function_21d37ac
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d33ea
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d33ea
@ 0x21d3396

.thumb
branch_21d3396: @ 21d3396 :thumb
	bl      Function_21d37ac
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x28
	mov     r3, #0x30
	bl      Function_21d3698
	cmp     r0, #0x1
	bne     branch_21d33ea
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d33ea
@ 0x21d33c8

.thumb
branch_21d33c8: @ 21d33c8 :thumb
	bl      Function_21d37ac
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d33ea
	mov     r0, r4
	bl      Function_21d368c
	mov     r0, r4
	bl      Function_21d35f4
	mov     r0, r6
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r6, #0x1
.thumb
branch_21d33ea: @ 21d33ea :thumb
	mov     r0, r6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d33f0

.word 0xffffe0ff @ 0x21d33f0
.word 0x4001000 @ 0x21d33f4
.word Function_21d3420+1 @ =0x21d3421, 0x21d33f8
.word 0xfffc @ 0x21d33fc
.word 0x406 @ 0x21d3400
.thumb
Function_21d3404: @ 21d3404 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	ldr     r4, [r0, #0x0]
	mov     r0, r5
	bl      0x2006830
	mov     r0, r4
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d341e


.align 2, 0


.thumb
Function_21d3420: @ 21d3420 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3428, (=0x201c2b9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x21d3426


.align 2


.word 0x201c2b9 @ 0x21d3428
.thumb
Function_21d342c: @ 21d342c :thumb
	push    {r3-r5,lr}
	add     sp, #-0xb8
	ldr     r5, [pc, #0x1a4] @ 0x21d35d8, (=0x21d3ac0)
	mov     r4, r0
	add     r3, sp, #0x90
	mov     r2, #0x5
.thumb
branch_21d3438: @ 21d3438 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d3438
	add     r0, sp, #0x90
	bl      0x201fe94
	ldr     r0, [r4, #0x0]
	bl      0x2018340
	add     r3, sp, #0x80
	ldr     r5, [pc, #0x18c] @ 0x21d35dc, (=0x21d3a40)
	str     r0, [r4, #0x4]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x17c] @ 0x21d35e0, (=0x21d3a6c)
	add     r3, sp, #0x64
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r3, [r4, #0x0]
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r5, [pc, #0x14c] @ 0x21d35e4, (=0x21d3a88)
	add     r3, sp, #0x48
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
	ldr     r0, [r4, #0x4]
	mov     r3, r1
	bl      0x20183c4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	bl      0x2006e3c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	bl      0x2006e60
	ldr     r5, [pc, #0x104] @ 0x21d35e8, (=0x21d3a50)
	add     r3, sp, #0x2c
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	mov     r3, #0x1
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	mov     r3, #0x1
	bl      0x2006e60
	ldr     r5, [pc, #0xb8] @ 0x21d35ec, (=0x21d3aa4)
	add     r3, sp, #0x10
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	mov     r3, #0x3
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	mov     r3, #0x3
	bl      0x2006e60
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x88
	mov     r3, r2
	bl      0x2006e84
	mov     r3, #0x40
	mov     r0, #0x7
	str     r3, [sp, #0x0]
	lsl     r0, r0, #6
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x9
	str     r0, [sp, #0x8]
	mov     r0, #0x88
	mov     r2, #0x0
	bl      0x2006e9c
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, #0x20
	bl      0x2002e7c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	mov     r2, #0xc
	ldr     r0, [pc, #0x24] @ 0x21d35f0, (=0x4000050)
	mov     r1, #0x2
	mov     r3, #0x4
	str     r2, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	add     sp, #0xb8
	pop     {r3-r5,pc}
@ 0x21d35d8

.word 0x21d3ac0 @ 0x21d35d8
.word 0x21d3a40 @ 0x21d35dc
.word 0x21d3a6c @ 0x21d35e0
.word 0x21d3a88 @ 0x21d35e4
.word 0x21d3a50 @ 0x21d35e8
.word 0x21d3aa4 @ 0x21d35ec
.word 0x4000050 @ 0x21d35f0
.thumb
Function_21d35f4: @ 21d35f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	ldr     r0, [pc, #0x2c] @ 0x21d3668, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	bl      free
	pop     {r4,pc}
@ 0x21d3666


.align 2


.word 0x4000050 @ 0x21d3668
.thumb
Function_21d366c: @ 21d366c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [pc, #0x14] @ 0x21d3688, (=0x25f)
	ldr     r3, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	str     r0, [r4, #0x8]
	bl      0x201d710
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x21d3688

.word 0x25f @ 0x21d3688
.thumb
Function_21d368c: @ 21d368c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3694, (=0x200b191)
	ldr     r0, [r0, #0x8]
	bx      r3
@ 0x21d3692


.align 2


.word 0x200b191 @ 0x21d3694
.thumb
Function_21d3698: @ 21d3698 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	mov     r7, r1
	mov     r6, #0x0
	cmp     r0, #0x3
	bhi     branch_21d3798
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d36b4

Jumppoints_21d36b4:
.hword branch_21d36bc - Jumppoints_21d36b4 - 2
.hword branch_21d3756 - Jumppoints_21d36b4 - 2
.hword branch_21d3768 - Jumppoints_21d36b4 - 2
.hword branch_21d3782 - Jumppoints_21d36b4 - 2
.thumb
branch_21d36bc: @ 21d36bc :thumb
	mov     r0, #0x2
	mov     r1, r6
	bl      0x2019120
	mov     r0, #0x1
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #10
	bl      Function_2023790
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	mov     r1, r7
	mov     r2, r5
	bl      Function_200b1b8
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0xc0] @ 0x21d37a0, (=0x21d3a38)
	add     r1, #0x10
	bl      0x201a8d4
	mov     r1, r6
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0xc0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x10
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r0, r6
	mov     r1, r5
	mov     r2, r0
	bl      0x2002eb4
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r0, r1, r0
	lsr     r7, r0, #1
	mov     r0, r5
	bl      0x2023c5c
	lsl     r1, r0, #4
	mov     r0, #0xc0
	sub     r0, r0, r1
	lsr     r0, r0, #1
	str     r0, [sp, #0x0]
	mov     r1, r6
	ldr     r0, [pc, #0x80] @ 0x21d37a4, (=0xf0200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x10
	mov     r2, r5
	mov     r3, r7
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, r4
	add     r0, #0x10
	bl      0x201a954
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0xf0
	str     r0, [r4, #0x24]
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_21d3798
@ 0x21d3756

.thumb
branch_21d3756: @ 21d3756 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21d3762
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x24]
	b       branch_21d3798
@ 0x21d3762

.thumb
branch_21d3762: @ 21d3762 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0xc]
	b       branch_21d3798
@ 0x21d3768

.thumb
branch_21d3768: @ 21d3768 :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d37a8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	and     r0, r1
	cmp     r0, #0x1
	beq     branch_21d377c
	mov     r0, #0x2
	and     r0, r1
	cmp     r0, #0x2
	bne     branch_21d3798
.thumb
branch_21d377c: @ 21d377c :thumb
	mov     r0, #0x3
	str     r0, [r4, #0xc]
	b       branch_21d3798
@ 0x21d3782

.thumb
branch_21d3782: @ 21d3782 :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_201a8fc
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      0x2019ebc
	mov     r0, r6
	str     r0, [r4, #0xc]
	mov     r6, #0x1
.thumb
branch_21d3798: @ 21d3798 :thumb
	mov     r0, r6
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d379e


.align 2


.word 0x21d3a38 @ 0x21d37a0
.word 0xf0200 @ 0x21d37a4
.word 0x21bf67c @ 0x21d37a8
.thumb
Function_21d37ac: @ 21d37ac :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x20]
	mov     r2, #0x3
	add     r3, r1, #0x4
	str     r3, [r0, #0x20]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x1
	asr     r3, r3, #4
	bl      Function_2019184
	pop     {r3,pc}
@ 0x21d37c2


.align 2, 0
Unknown_21d37c4: @ 0x21d37c4
.incbin "./baserom/overlay/overlay_0073.bin", 0x2a44, 0x21d3820 - 0x21d37c4


.word Function_21d3250+1 @ =0x21d3251, 0x21d3820
.word Function_21d3280+1 @ =0x21d3281, 0x21d3824
.word Function_21d3404+1 @ =0x21d3405, 0x21d3828
.word 0xffffffff @ 0x21d382c
@ 0x21d3830


.incbin "./baserom/overlay/overlay_0073.bin", 0x2ab0, 0x21d3b00 - 0x21d3830


@end 0x21d3b00




