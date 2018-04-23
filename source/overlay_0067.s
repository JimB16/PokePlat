
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram67, "ax"


.thumb
Function_225c700: @ 225c700 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, #0x3
	mov     r1, #0x70
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #10
	mov     r2, #0x70
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0x1
	mov     r1, #0x0
	lsl     r2, r2, #10
	mov     r5, r0
	blx     Call_FillMemWithValue
	mov     r0, r4
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xd8] @ 0x225c810, (=0x497)
	str     r0, [r5, #0x0]
	mov     r0, #0xb
	mov     r2, #0x0
	bl      Function_2004550
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r0, r5
	mov     r1, #0x70
	bl      Function_225ce30
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x13
	str     r0, [sp, #0x4]
	mov     r0, #0x1b
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0xb0] @ 0x225c814, (=0x2a2)
	str     r0, [sp, #0x14]
	mov     r0, #0x70
	str     r0, [sp, #0x18]
	mov     r0, r5
	ldr     r1, [r5, #0xc]
	add     r0, #0x40
	mov     r2, #0x1
	bl      Function_225d188
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x13
	str     r0, [sp, #0x4]
	mov     r0, #0x1b
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0x88] @ 0x225c818, (=0x2b7)
	str     r0, [sp, #0x14]
	mov     r0, #0x70
	str     r0, [sp, #0x18]
	mov     r0, r5
	ldr     r1, [r5, #0xc]
	add     r0, #0x70
	mov     r2, #0x1
	bl      Function_225d188
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x17
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0x60] @ 0x225c818, (=0x2b7)
	str     r0, [sp, #0x14]
	mov     r0, #0x70
	str     r0, [sp, #0x18]
	mov     r0, r5
	ldr     r1, [r5, #0xc]
	add     r0, #0xa0
	mov     r2, #0x0
	bl      Function_225d188
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r3, #0x87
	str     r2, [sp, #0x4]
	mov     r0, #0x16
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	lsl     r3, r3, #2
	str     r3, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r3, #0x86
	str     r0, [sp, #0x14]
	mov     r0, #0x70
	str     r0, [sp, #0x18]
	mov     r0, r5
	ldr     r1, [r5, #0xc]
	add     r0, #0x10
	bl      Function_225d188
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0x15
	bl      Function_225d37c
	ldr     r0, [pc, #0x1c] @ 0x225c81c, (=0x225ce29)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x225c80e


.align 2


.word 0x497 @ 0x225c810
.word 0x2a2 @ 0x225c814
.word 0x2b7 @ 0x225c818
.word 0x225ce29 @ 0x225c81c
.thumb
Function_225c820: @ 225c820 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r4, r1
	bl      LoadOverlayData1c
	mov     r5, r0
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0xf
	bls     branch_225c83e
	b       branch_225cb06
@ 0x225c83e

.thumb
branch_225c83e: @ 225c83e :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225c84a

Jumppoints_225c84a:
.hword branch_225c86a - Jumppoints_225c84a - 2
.hword branch_225c888 - Jumppoints_225c84a - 2
.hword branch_225c898 - Jumppoints_225c84a - 2
.hword branch_225c8ca - Jumppoints_225c84a - 2
.hword branch_225c8f8 - Jumppoints_225c84a - 2
.hword branch_225c920 - Jumppoints_225c84a - 2
.hword branch_225c954 - Jumppoints_225c84a - 2
.hword branch_225cad8 - Jumppoints_225c84a - 2
.hword branch_225caf8 - Jumppoints_225c84a - 2
.hword branch_225c9a2 - Jumppoints_225c84a - 2
.hword branch_225c9fe - Jumppoints_225c84a - 2
.hword branch_225ca32 - Jumppoints_225c84a - 2
.hword branch_225ca60 - Jumppoints_225c84a - 2
.hword branch_225ca88 - Jumppoints_225c84a - 2
.hword branch_225ca96 - Jumppoints_225c84a - 2
.hword branch_225caba - Jumppoints_225c84a - 2
.thumb
branch_225c86a: @ 225c86a :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x298] @ 0x225cb10, (=0xffff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c888

.thumb
branch_225c888: @ 225c888 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225c8e2
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c898

.thumb
branch_225c898: @ 225c898 :thumb
	ldr     r0, [r6, #0x8]
	cmp     r0, #0x0
	bne     branch_225c8c4
	mov     r0, r5
	add     r0, #0x70
	mov     r1, #0x11
	bl      Function_225d210
	mov     r0, #0x70
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	ldr     r1, [pc, #0x264] @ 0x225cb14, (=Unknown_225d3ec)
	mov     r2, #0x1f
	mov     r3, #0xe
	bl      Function_2002100
	add     r5, #0xd0
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c8c4

.thumb
branch_225c8c4: @ 225c8c4 :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c8ca

.thumb
branch_225c8ca: @ 225c8ca :thumb
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x70
	bl      Function_2002114
	cmp     r0, #0x0
	beq     branch_225c8e4
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_225c8ea
.thumb
branch_225c8e2: @ 225c8e2 :thumb
	b       branch_225cb0a
@ 0x225c8e4

.thumb
branch_225c8e4: @ 225c8e4 :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c8ea

.thumb
branch_225c8ea: @ 225c8ea :thumb
	add     r5, #0x40
	mov     r0, r5
	bl      Function_225d294
	mov     r0, #0x7
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c8f8

.thumb
branch_225c8f8: @ 225c8f8 :thumb
	ldr     r0, [r6, #0x4]
	bl      0x222e3bc
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_203878c
	mov     r0, r5
	add     r0, #0x70
	mov     r1, #0x17
	bl      Function_225d210
	add     r5, #0x70
	mov     r0, r5
	bl      Function_225d2ec
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c920

.thumb
branch_225c920: @ 225c920 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_225c930
	bl      Function_203881c
	cmp     r0, #0x0
	beq     branch_225c93c
.thumb
branch_225c930: @ 225c930 :thumb
	add     r5, #0x70
	mov     r0, r5
	bl      Function_225d310
	mov     r0, #0x9
	str     r0, [r4, #0x0]
.thumb
branch_225c93c: @ 225c93c :thumb
	bl      Function_2038804
	cmp     r0, #0x1
	beq     branch_225c946
	b       branch_225cb0a
@ 0x225c946

.thumb
branch_225c946: @ 225c946 :thumb
	ldr     r0, [r6, #0x4]
	bl      0x222f16c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c954

.thumb
branch_225c954: @ 225c954 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_225c964
	bl      Function_203881c
	cmp     r0, #0x0
	beq     branch_225c970
.thumb
branch_225c964: @ 225c964 :thumb
	mov     r0, r5
	add     r0, #0x70
	bl      Function_225d310
	mov     r0, #0x9
	str     r0, [r4, #0x0]
.thumb
branch_225c970: @ 225c970 :thumb
	bl      Function_2038294
	cmp     r0, #0x0
	beq     branch_225ca76
	mov     r0, r5
	add     r0, #0x70
	bl      Function_225d310
	ldr     r0, [r5, #0x0]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x2c
	bl      Function_202cfec
	bl      Function_20138ec
	ldr     r2, [r6, #0xc]
	str     r0, [r2, #0x0]
	str     r1, [r2, #0x4]
	mov     r0, #0x1
	str     r0, [r6, #0x10]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c9a2

.thumb
branch_225c9a2: @ 225c9a2 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_225c9be
	bl      Function_20382f8
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	ldr     r1, [r7, #0x4]
	bl      0x22316f4
	str     r0, [sp, #0xc]
	ldr     r7, [r7, #0x0]
	b       branch_225c9cc
@ 0x225c9be

.thumb
branch_225c9be: @ 225c9be :thumb
	bl      0x22326dc
	bl      0x223270c
	mov     r7, r0
	mov     r0, #0x20
	str     r0, [sp, #0xc]
.thumb
branch_225c9cc: @ 225c9cc :thumb
	ldr     r0, [r6, #0x4]
	bl      0x222f198
	mov     r0, r5
	add     r0, #0x40
	bl      Function_225d294
	mov     r0, r5
	add     r0, #0x70
	bl      Function_225d294
	mov     r0, r5
	add     r0, #0xa0
	mov     r1, r7
	bl      Function_225d3d0
	add     r5, #0xa0
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_225d210
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225c9fe

.thumb
branch_225c9fe: @ 225c9fe :thumb
	ldr     r0, [pc, #0x118] @ 0x225cb18, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_225ca76
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_225ca2c
	bl      Function_20382f8
	mov     r1, r0
	ldmia   r1!, {r0,r1}
	bl      0x2231718
	cmp     r0, #0x0
	bne     branch_225ca26
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225ca26

.thumb
branch_225ca26: @ 225ca26 :thumb
	mov     r0, #0xe
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225ca2c

.thumb
branch_225ca2c: @ 225ca2c :thumb
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225ca32

.thumb
branch_225ca32: @ 225ca32 :thumb
	mov     r0, r5
	add     r0, #0xa0
	bl      Function_225d294
	mov     r0, r5
	add     r0, #0x40
	mov     r1, #0x58
	bl      Function_225d210
	mov     r0, #0x70
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	ldr     r1, [pc, #0xc8] @ 0x225cb14, (=Unknown_225d3ec)
	mov     r2, #0x1f
	mov     r3, #0xe
	bl      Function_2002100
	add     r5, #0xd0
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225ca60

.thumb
branch_225ca60: @ 225ca60 :thumb
	add     r5, #0xd0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x70
	bl      Function_2002114
	cmp     r0, #0x0
	beq     branch_225ca78
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_225ca82
.thumb
branch_225ca76: @ 225ca76 :thumb
	b       branch_225cb0a
@ 0x225ca78

.thumb
branch_225ca78: @ 225ca78 :thumb
	bl      Function_20387e8
	mov     r0, #0xd
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225ca82

.thumb
branch_225ca82: @ 225ca82 :thumb
	mov     r0, #0xe
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225ca88

.thumb
branch_225ca88: @ 225ca88 :thumb
	bl      Function_2036780
	cmp     r0, #0x0
	bne     branch_225cb0a
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225ca96

.thumb
branch_225ca96: @ 225ca96 :thumb
	mov     r0, r5
	add     r0, #0x40
	bl      Function_225d294
	mov     r0, r5
	add     r0, #0x70
	bl      Function_225d294
	add     r5, #0xa0
	mov     r0, r5
	bl      Function_225d294
	bl      Function_20387e8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225caba

.thumb
branch_225caba: @ 225caba :thumb
	bl      Function_2036780
	cmp     r0, #0x0
	bne     branch_225cb0a
	mov     r0, r5
	add     r0, #0x40
	bl      Function_225d294
	add     r5, #0x70
	mov     r0, r5
	bl      Function_225d294
	mov     r0, #0x7
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225cad8

.thumb
branch_225cad8: @ 225cad8 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cb0a
@ 0x225caf8

.thumb
branch_225caf8: @ 225caf8 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225cb0a
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225cb06

.thumb
branch_225cb06: @ 225cb06 :thumb
	bl      ErrorHandling
branch_225cb0a: @ 225cb0a :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225cb10

.word 0xffff @ 0x225cb10
.word Unknown_225d3ec @ 0x225cb14
.word RAM_21bf67c @ 0x225cb18



.thumb
Function_225cb1c: @ 225cb1c :thumb
	push    {r4,lr}
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225cb4c
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd8
	str     r1, [r0, #0x0]
.thumb
branch_225cb4c: @ 225cb4c :thumb
	mov     r0, r4
	add     r0, #0x40
	bl      Function_225d330
	mov     r0, r4
	add     r0, #0x70
	bl      Function_225d330
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_225d330
	mov     r0, r4
	add     r0, #0x10
	bl      Function_225d330
	mov     r0, r4
	bl      Function_225d154
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      free
	mov     r0, #0x70
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225cb8a


.align 2, 0


.thumb
Function_225cb8c: @ 225cb8c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x70
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #10
	mov     r2, #0x70
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0x1
	mov     r1, #0x0
	lsl     r2, r2, #10
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	ldr     r0, [r0, #0x0]
	mov     r1, #0x70
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_225ce30
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x13
	str     r0, [sp, #0x4]
	mov     r0, #0x1b
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x84] @ 0x225cc64, (=0x2b7)
	str     r0, [sp, #0x14]
	mov     r0, #0x70
	str     r0, [sp, #0x18]
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	add     r0, #0x40
	mov     r2, #0x1
	bl      Function_225d188
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x17
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x5c] @ 0x225cc64, (=0x2b7)
	str     r0, [sp, #0x14]
	mov     r0, #0x70
	str     r0, [sp, #0x18]
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	add     r0, #0xa0
	mov     r2, #0x0
	bl      Function_225d188
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r3, #0x87
	str     r2, [sp, #0x4]
	mov     r0, #0x16
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	lsl     r3, r3, #2
	str     r3, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r3, #0x86
	str     r0, [sp, #0x14]
	mov     r0, #0x70
	str     r0, [sp, #0x18]
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	add     r0, #0x10
	bl      Function_225d188
	mov     r0, r4
	add     r0, #0x10
	mov     r1, #0x15
	bl      Function_225d37c
	bl      Function_2039734
	ldr     r0, [pc, #0x14] @ 0x225cc68, (=0x225ce29)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x225cc64

.word 0x2b7 @ 0x225cc64
.word Function_225ce28+1 @ =0x225ce29, 0x225cc68
.thumb
Function_225cc6c: @ 225cc6c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r4, r1
	bl      LoadOverlayData1c
	mov     r5, r0
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0xa
	bls     branch_225cc8a
	b       branch_225cdb6
@ 0x225cc8a

.thumb
branch_225cc8a: @ 225cc8a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225cc96

Jumppoints_225cc96:
.hword branch_225ccac - Jumppoints_225cc96 - 2
.hword branch_225ccca - Jumppoints_225cc96 - 2
.hword branch_225ccd8 - Jumppoints_225cc96 - 2
.hword branch_225cd0e - Jumppoints_225cc96 - 2
.hword branch_225cd1e - Jumppoints_225cc96 - 2
.hword branch_225cd38 - Jumppoints_225cc96 - 2
.hword branch_225cd42 - Jumppoints_225cc96 - 2
.hword branch_225cd5e - Jumppoints_225cc96 - 2
.hword branch_225cd72 - Jumppoints_225cc96 - 2
.hword branch_225cd80 - Jumppoints_225cc96 - 2
.hword branch_225cda0 - Jumppoints_225cc96 - 2
.thumb
branch_225ccac: @ 225ccac :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x100] @ 0x225cdbc, (=0xffff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225ccca

.thumb
branch_225ccca: @ 225ccca :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225cdb6
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225ccd8

.thumb
branch_225ccd8: @ 225ccd8 :thumb
	mov     r0, r5
	add     r0, #0x40
	mov     r1, #0x1a
	bl      Function_225d210
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_225ccf2
	bl      Function_203881c
	cmp     r0, #0x0
	beq     branch_225cd00
.thumb
branch_225ccf2: @ 225ccf2 :thumb
	mov     r0, #0x5
	add     r5, #0x40
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_225d2ec
	b       branch_225cdb6
@ 0x225cd00

.thumb
branch_225cd00: @ 225cd00 :thumb
	mov     r0, #0x3
	add     r5, #0x40
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_225d2ec
	b       branch_225cdb6
@ 0x225cd0e

.thumb
branch_225cd0e: @ 225cd0e :thumb
	bl      0x2232c8c
	mov     r0, #0xe1
	lsl     r0, r0, #2
	str     r0, [r5, #0x8]
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225cd1e

.thumb
branch_225cd1e: @ 225cd1e :thumb
	ldr     r0, [r5, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x8]
	bl      0x2232cb8
	cmp     r0, #0x0
	bne     branch_225cd32
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_225cdb6
.thumb
branch_225cd32: @ 225cd32 :thumb
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225cd38

.thumb
branch_225cd38: @ 225cd38 :thumb
	bl      Function_20387e8
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225cd42

.thumb
branch_225cd42: @ 225cd42 :thumb
	bl      Function_2036780
	cmp     r0, #0x0
	bne     branch_225cdb6
	add     r5, #0x70
	mov     r0, r5
	bl      Function_225d310
	ldr     r0, [r6, #0x4]
	bl      0x222f198
	mov     r0, #0x7
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225cd5e

.thumb
branch_225cd5e: @ 225cd5e :thumb
	mov     r0, r5
	add     r0, #0x40
	mov     r1, #0x1b
	bl      Function_225d210
	mov     r0, #0x5a
	str     r0, [r5, #0x8]
	mov     r0, #0x8
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225cd72

.thumb
branch_225cd72: @ 225cd72 :thumb
	ldr     r0, [r5, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x8]
	bne     branch_225cdb6
	mov     r0, #0x9
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225cd80

.thumb
branch_225cd80: @ 225cd80 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225cdb6
@ 0x225cda0

.thumb
branch_225cda0: @ 225cda0 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225cdb6
	add     r5, #0x40
	mov     r0, r5
	bl      Function_225d310
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x225cdb6

.thumb
branch_225cdb6: @ 225cdb6 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225cdbc

.word 0xffff @ 0x225cdbc
.thumb
Function_225cdc0: @ 225cdc0 :thumb
	push    {r4,lr}
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225cdf0
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd8
	str     r1, [r0, #0x0]
.thumb
branch_225cdf0: @ 225cdf0 :thumb
	mov     r0, r4
	add     r0, #0x40
	bl      Function_225d330
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_225d330
	mov     r0, r4
	add     r0, #0x10
	bl      Function_225d330
	mov     r0, r4
	bl      Function_225d154
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      free
	mov     r0, #0x70
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225ce26


.align 2, 0


.thumb
Function_225ce28: @ 225ce28 :thumb
	ldr     r3, [pc, #0x0] @ 0x225ce2c, (=0x225d17d)
	bx      r3
@ 0x225ce2c

.word 0x225d17d @ 0x225ce2c
.thumb
Function_225ce30: @ 225ce30 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x10]
	mov     r6, r1
	ldr     r0, [pc, #0x268] @ 0x225d0a4, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x268] @ 0x225d0a8, (=0x4001050)
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x268] @ 0x225d0ac, (=0x225d410)
	bl      GX_SetBanks
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_201975c
	ldr     r0, [pc, #0x25c] @ 0x225d0b0, (=0x225d400)
	bl      SetGraphicsModes
	mov     r0, r6
	bl      Function_2018340
	ldr     r1, [sp, #0x10]
	ldr     r4, [pc, #0x254] @ 0x225d0b4, (=0x225d438)
	ldr     r5, [pc, #0x254] @ 0x225d0b8, (=0x225d3f4)
	str     r0, [r1, #0xc]
	mov     r7, #0x0
.thumb
branch_225ce66: @ 225ce66 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x20
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_2019690
	ldr     r0, [sp, #0x10]
	ldr     r1, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2019ebc
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x1c
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x3
	blt     branch_225ce66
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	lsl     r0, r0, #24
	mov     r1, #0x6
	lsr     r4, r0, #24
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, r6
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x16
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, r6
	bl      LoadFromNARC_PlFont2
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	str     r6, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xe
	bl      Function_200daa4
	str     r4, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [sp, #0x10]
	str     r6, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	mov     r2, r1
	mov     r3, #0xd
	bl      Function_200dd0c

	mov     r0, #0x16
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	mov     r0, #Wifip2pmatch_Narc
	mov     r1, #0x3
	mov     r3, r2
	str     r6, [sp, #0x4]
	bl      Call_LoadFromNARC_RLCN

	mov     r0, #0x16
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r0, #Wifip2pmatch_Narc
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, #0x0
	str     r6, [sp, #0x4]
	bl      Call_LoadFromNARC_RLCN
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	str     r6, [sp, #0xc]
	ldr     r2, [r2, #0xc]
	mov     r0, #0x5c
	mov     r1, #0x2
	bl      LoadFromNARC_RGCN
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	str     r6, [sp, #0xc]
	ldr     r2, [r2, #0xc]
	mov     r0, #0x5c
	mov     r1, #0xa
	mov     r3, #0x4
	bl      LoadFromNARC_RGCN
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	str     r6, [sp, #0xc]
	ldr     r2, [r2, #0xc]
	mov     r0, #0x5c
	mov     r1, #0x5
	bl      LoadFromNARC_RCSN
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	str     r6, [sp, #0xc]
	ldr     r2, [r2, #0xc]
	mov     r0, #0x5c
	mov     r1, #0xb
	mov     r3, #0x4
	bl      LoadFromNARC_RCSN
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c

	mov     r0, #Wifip2pmatch_Narc
	mov     r1, r6
	bl      LoadFromNARC_8
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x10]
	mov     r2, #0xcb
	add     r0, #0xd4
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x4
	add     r2, sp, #0x38
	mov     r3, r6
	bl      Function_20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	add     r1, #0xdc
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	ldr     r0, [sp, #0x38]
	mov     r2, #0x57
	ldr     r1, [sp, #0x10]
	lsl     r2, r2, #2
	add     r1, r1, r2
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	mov     r1, #0x57
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	add     r0, #0xdc
	str     r0, [sp, #0x14]
.thumb
branch_225cfde: @ 225cfde :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #5
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x30]
.thumb
branch_225cff0: @ 225cff0 :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x15
	blt     branch_225cffa
	bl      ErrorHandling
.thumb
branch_225cffa: @ 225cffa :thumb
	ldr     r0, [sp, #0x30]
	mov     r7, #0x1
	add     r6, r0, #0x2
	ldr     r0, [sp, #0x18]
	add     r4, r0, #0x2
	ldr     r0, [sp, #0x14]
	add     r5, r0, #0x2
	ldr     r0, [sp, #0x20]
	asr     r0, r0, #8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x34]
.thumb
branch_225d012: @ 225d012 :thumb
	mov     r0, r6
	add     r0, #0xdc
	ldrh    r0, [r0, #0x0]
	ldr     r3, [sp, #0x34]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_200393c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_225d012
	ldr     r0, [sp, #0x18]
	add     r0, #0x20
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	beq     branch_225d05e
	mov     r0, #0x3
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #8
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x20]
	cmp     r1, r0
	blt     branch_225cff0
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_225cff0
@ 0x225d05e

.thumb
branch_225d05e: @ 225d05e :thumb
	ldr     r0, [sp, #0x14]
	add     r0, #0x20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x3
	blt     branch_225cfde
	mov     r1, #0x57
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x2a
	lsl     r1, r1, #4
	blx     DC_FlushRange
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x30] @ 0x225d0bc, (=0x225d0c1)
	add     r1, #0xd4
	mov     r2, #0x14
	bl      AddTaskToTaskList2
	ldr     r1, [sp, #0x10]
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r1, [sp, #0x10]
	bl      Call_FS_CloseFile
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x225d0a4

.word 0x4000050 @ 0x225d0a4
.word 0x4001050 @ 0x225d0a8
.word 0x225d410 @ 0x225d0ac
.word 0x225d400 @ 0x225d0b0
.word 0x225d438 @ 0x225d0b4
.word 0x225d3f4 @ 0x225d0b8
.word 0x225d0c1 @ 0x225d0bc
.thumb
Function_225d0c0: @ 225d0c0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_225d148
	ldr     r0, [pc, #0x80] @ 0x225d14c, (=0x32b)
	mov     r1, #0x1
	ldrb    r2, [r4, r0]
	eor     r2, r1
	strb    r2, [r4, r0]
	ldrb    r2, [r4, r0]
	tst     r1, r2
	bne     branch_225d148
	.hword  0x1ec0 @ sub r0, r0, #0x3
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GX_LoadBGPltt
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GXS_LoadBGPltt
	ldr     r0, [pc, #0x48] @ 0x225d150, (=0x32a)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_225d12c
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x15
	blt     branch_225d148
	mov     r2, #0x13
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r2, [r4, r0]
	mov     r1, #0x1
	eor     r1, r2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x225d12c

.thumb
branch_225d12c: @ 225d12c :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	bge     branch_225d148
	mov     r2, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r1, [r4, r0]
	eor     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_225d148: @ 225d148 :thumb
	pop     {r4,pc}
@ 0x225d14a


.align 2


.word 0x32b @ 0x225d14c
.word 0x32a @ 0x225d150
.thumb
Function_225d154: @ 225d154 :thumb
	push    {r4-r6,lr}
	ldr     r5, [pc, #0x20] @ 0x225d178, (=0x225d3f4)
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_225d15c: @ 225d15c :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0xc]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_225d15c
	ldr     r0, [r6, #0xc]
	bl      free
	pop     {r4-r6,pc}
@ 0x225d178

.word 0x225d3f4 @ 0x225d178
.thumb
Function_225d17c: @ 225d17c :thumb
	ldr     r3, [pc, #0x4] @ 0x225d184, (=Function_201c2b8+1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x225d182

.align 2
.word Function_201c2b8+1 @ 0x225d184



.thumb
Function_225d188: @ 225d188 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r4, [sp, #0x48]
	mov     r5, r0
	str     r3, [sp, #0x14]
	mov     r0, r4
	mov     r7, r1
	mov     r6, r2
	bl      Function_200b358
	str     r0, [r5, #0x0]
	ldr     r2, [sp, #0x14]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r4
	bl      LoadFromNARC_9
	str     r0, [r5, #0x4]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r4
	bl      Function_2023790
	str     r0, [r5, #0x18]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r4
	bl      Function_2023790
	str     r0, [r5, #0x1c]
	ldr     r0, [sp, #0x44]
	str     r6, [r5, #0x20]
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	str     r0, [r5, #0x28]
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	ldr     r0, [sp, #0x34]
	ldr     r3, [sp, #0x30]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x38]
	add     r5, #0x8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x3c]
	lsl     r3, r3, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x40]
	mov     r1, r5
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r7
	mov     r2, #0x1
	lsr     r3, r3, #24
	bl      Function_201a7e8
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225d210

.thumb
Function_225d210: @ 225d210 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x2c]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225d230
	ldr     r0, [r5, #0x2c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_225d230: @ 225d230 :thumb
	mov     r0, r5
	add     r0, #0x8
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0x1c]
	mov     r1, r4
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x18]
	ldr     r2, [r5, #0x1c]
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [r5, #0x18]
	add     r0, #0x8
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	bne     branch_225d27a
	mov     r0, r5
	add     r0, #0x8
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xe
	bl      Function_200dc48
	b       branch_225d288
@ 0x225d27a

.thumb
branch_225d27a: @ 225d27a :thumb
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x8
	mov     r2, r1
	mov     r3, #0xd
	bl      Function_200e060
.thumb
branch_225d288: @ 225d288 :thumb
	add     r5, #0x8
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225d294

.thumb
Function_225d294: @ 225d294 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225d2b0
	ldr     r0, [r4, #0x2c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_225d2b0: @ 225d2b0 :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	bne     branch_225d2ca
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x1
	bl      Function_200dc9c
	add     r4, #0x8
	mov     r0, r4
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x225d2ca

.thumb
branch_225d2ca: @ 225d2ca :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_225d2d6
	mov     r0, r4
	bl      Function_225d310
.thumb
branch_225d2d6: @ 225d2d6 :thumb
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x1
	bl      Function_200e084
	add     r4, #0x8
	mov     r0, r4
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x225d2ea


.align 2, 0


.thumb
Function_225d2ec: @ 225d2ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x1
	bne     branch_225d30c
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_225d300
	bl      ErrorHandling
.thumb
branch_225d300: @ 225d300 :thumb
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x1
	bl      Function_200e7fc
	str     r0, [r4, #0x24]
.thumb
branch_225d30c: @ 225d30c :thumb
	pop     {r4,pc}
@ 0x225d30e


.align 2, 0


.thumb
Function_225d310: @ 225d310 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x1
	bne     branch_225d32e
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_225d324
	bl      ErrorHandling
.thumb
branch_225d324: @ 225d324 :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_200eba0
	mov     r0, #0x0
	str     r0, [r4, #0x24]
.thumb
branch_225d32e: @ 225d32e :thumb
	pop     {r4,pc}
@ 0x225d330

.thumb
Function_225d330: @ 225d330 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225d34c
	ldr     r0, [r4, #0x2c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_225d34c: @ 225d34c :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_225d358
	mov     r0, r4
	bl      Function_225d310
.thumb
branch_225d358: @ 225d358 :thumb
	mov     r0, r4
	add     r0, #0x8
	bl      Function_201a8fc
	ldr     r0, [r4, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r4, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r4, #0x4]
	bl      Function_200b190
	ldr     r0, [r4, #0x0]
	bl      Function_200b3f0
	pop     {r4,pc}
@ 0x225d37a


.align 2, 0


.thumb
Function_225d37c: @ 225d37c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r5, r1
	add     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	ldr     r2, [r4, #0x1c]
	mov     r1, r5
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x1c]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [r4, #0x18]
	mov     r2, r0
	mov     r3, #0xb0
	bl      Function_2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x225d3cc, (=0xf0e00)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x18]
	add     r0, #0x8
	mov     r1, #0x1
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225d3ca


.align 2


.word 0xf0e00 @ 0x225d3cc
.thumb
Function_225d3d0: @ 225d3d0 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r3,pc}



Unknown_225d3ec: @ 0x225d3ec
.incbin "./baserom/overlay/overlay_0067.bin", 0xcec, 0x225d4a0 - 0x225d3ec


@end 0x225d4a0




