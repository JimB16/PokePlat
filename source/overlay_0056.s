

.section .iwram56, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2256292
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_2256292
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22561e2

Jumppoints_22561e2:
.hword branch_22561ea - Jumppoints_22561e2 - 2
.hword branch_2256212 - Jumppoints_22561e2 - 2
.hword branch_2256268 - Jumppoints_22561e2 - 2
.hword branch_2256292 - Jumppoints_22561e2 - 2
.thumb
branch_22561ea: @ 22561ea :thumb
	bl      Function_2256508
	mov     r0, r4
	bl      Function_2256294
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, r4
	bl      Function_225710c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225717c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2256212

.thumb
branch_2256212: @ 2256212 :thumb
	mov     r0, r4
	bl      Function_2256634
	mov     r0, r4
	bl      Function_2256704
	mov     r0, #0x1
	mov     r1, #0x4
	bl      0x2002bec
	mov     r1, #0x72
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x14]
	add     r1, r4, r1
	bl      Function_22562ec
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
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
	mov     r0, r4
	bl      Function_2257100
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2256268

.thumb
branch_2256268: @ 2256268 :thumb
	mov     r0, r4
	bl      Function_225712c
	mov     r0, r4
	bl      Function_2257098
	mov     r0, r4
	bl      Function_22569e0
	mov     r0, r4
	bl      Function_2256d04
	mov     r0, r4
	bl      Function_22568e0
	mov     r0, r4
	bl      Function_22571d0
	ldr     r0, [r4, #0x28]
	bl      0x20219f8
.thumb
branch_2256292: @ 2256292 :thumb
	pop     {r4,pc}
@ 0x2256294

.thumb
Function_2256294: @ 2256294 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0xa1
	lsl     r1, r1, #2
	mov     r4, r0
	mov     r2, #0x0
	mov     r0, r1
	str     r2, [r4, r1]
	sub     r0, #0x10
	strh    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xe
	strh    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xc
	strh    r2, [r4, r0]
	sub     r1, #0xa
	mov     r0, #0x4
	strh    r2, [r4, r1]
	bl      0x200b358
	str     r0, [r4, #0x18]
	ldr     r2, [pc, #0x24] @ 0x22562e8, (=0x27b)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x4
	bl      0x200b144
	str     r0, [r4, #0x1c]
	mov     r0, #0x4
	mov     r3, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x4a
	mov     r1, #0x3
	mov     r2, #0x1
	add     r3, #0x24
	bl      0x2006f6c
	str     r0, [r4, #0x20]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22562e6


.align 2


.word 0x27b @ 0x22562e8
.thumb
Function_22562ec: @ 22562ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r0
	mov     r0, #0xa0
	str     r0, [sp, #0x20]
	mov     r0, #0xd0
	str     r0, [sp, #0x1c]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0xe4] @ 0x22563e4, (=0x265)
	mov     r5, r1
	mov     r4, #0x0
	mov     r6, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_2256308: @ 2256308 :thumb
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x20]
	add     r2, r4, #0x4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r2, r2, #24
	str     r0, [sp, #0x10]
	mov     r0, r7
	mov     r1, r5
	lsr     r2, r2, #24
	mov     r3, #0x1
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	bl      0x201a954
	ldr     r0, [sp, #0x18]
	add     r2, r4, #0x4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	mov     r1, r5
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r2, r2, #24
	str     r0, [sp, #0x10]
	mov     r0, r7
	add     r1, #0x10
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	add     r0, #0x10
	bl      0x201a954
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	add     r2, r4, #0x4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r1, r5
	lsl     r2, r2, #24
	str     r0, [sp, #0x10]
	mov     r0, r7
	add     r1, #0x20
	lsr     r2, r2, #24
	mov     r3, #0xc
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x20
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	add     r0, #0x20
	bl      0x201a954
	ldr     r0, [sp, #0x20]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x10
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	add     r6, #0x8
	add     r0, #0x87
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	add     r5, #0x38
	add     r0, #0x8
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	add     r0, #0x1e
	str     r0, [sp, #0x14]
	cmp     r4, #0x3
	blt     branch_2256308
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22563e4

.word 0x265 @ 0x22563e4
.thumb
Function_22563e8: @ 22563e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_22563ee: @ 22563ee :thumb
	mov     r0, r5
	add     r0, #0x10
	bl      0x201a8fc
	mov     r0, r5
	bl      0x201a8fc
	mov     r0, r5
	add     r0, #0x20
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x38
	cmp     r4, #0x3
	blt     branch_22563ee
	pop     {r3-r5,pc}
@ 0x225640e


.align 2, 0


.thumb
Function_2256410: @ 2256410 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0xa6
	mov     r2, #0x4
	ldr     r0, [pc, #0x44] @ 0x2256460, (=0x22561c1)
	lsl     r1, r1, #2
	mov     r3, r2
	bl      0x200679c
	mov     r6, r0
	bl      0x201ced0
	mov     r4, r0
	str     r5, [r4, #0xc]
	ldr     r0, [r5, #0x8]
	str     r0, [r4, #0x14]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x7c]
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0xc]
	bl      0x2025e38
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	mov     r1, #0xa5
	str     r0, [r4, #0x0]
	lsl     r1, r1, #2
	str     r6, [r4, r1]
	add     r5, #0x80
	ldr     r2, [r5, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2256464, (=0x4dc)
	sub     r1, #0x24
	ldr     r0, [r2, r0]
	str     r0, [r4, r1]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x225645e


.align 2


.word Function_22561c0+1 @ =0x22561c1, 0x2256460
.word 0x4dc @ 0x2256464
.thumb
Function_2256468: @ 2256468 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x2
	bne     branch_22564de
	ldr     r0, [r6, #0x14]
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	bl      0x2002c28
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	mov     r7, #0x55
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_225649c: @ 225649c :thumb
	ldr     r0, [r5, r7]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225649c
	ldr     r0, [r6, #0x28]
	bl      0x2021964
	ldr     r0, [r6, #0x1c]
	bl      0x200b190
	ldr     r0, [r6, #0x18]
	bl      0x200b3f0
	mov     r0, #0x72
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      Function_22563e8
	ldr     r0, [sp, #0x0]
	bl      Function_22564e4
	ldr     r0, [r6, #0x20]
	bl      0x20181c4
	mov     r0, #0xa5
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x20067d0
	pop     {r3-r7,pc}
@ 0x22564de

.thumb
branch_22564de: @ 22564de :thumb
	bl      0x2022974
	pop     {r3-r7,pc}
@ 0x22564e4

.thumb
Function_22564e4: @ 22564e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019044
	pop     {r4,pc}
@ 0x2256508

.thumb
Function_2256508: @ 2256508 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	mov     r4, r0
	bl      Function_22564e4
	ldr     r5, [pc, #0x110] @ 0x2256624, (=0x22572d4)
	add     r3, sp, #0x64
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	ldr     r5, [pc, #0xe4] @ 0x2256628, (=0x225729c)
	add     r3, sp, #0x48
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
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019ebc
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	ldr     r5, [pc, #0xb8] @ 0x225662c, (=0x2257280)
	add     r3, sp, #0x2c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x6
	bl      0x2019ebc
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	ldr     r5, [pc, #0x8c] @ 0x2256630, (=0x22572b8)
	add     r3, sp, #0x10
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
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x60
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x4
	mov     r0, #0x4a
	mov     r3, r1
	str     r2, [sp, #0x4]
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0x4a
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, #0x7
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x4
	mov     r0, #0x4a
	mov     r2, r4
	mov     r3, #0x7
	str     r1, [sp, #0xc]
	bl      0x2006e60
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x205d8cc
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x2256622


.align 2


.word 0x22572d4 @ 0x2256624
.word 0x225729c @ 0x2256628
.word 0x2257280 @ 0x225662c
.word 0x22572b8 @ 0x2256630
.thumb
Function_2256634: @ 2256634 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r1, r6
	mov     r0, #0xa
	add     r1, #0x2c
	mov     r2, #0x4
	bl      0x20095c4
	mov     r7, #0x55
	str     r0, [r6, #0x28]
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_2256650: @ 2256650 :thumb
	mov     r0, #0x1
	mov     r1, r4
	mov     r2, #0x4
	bl      0x2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2256650
	ldr     r0, [pc, #0x98] @ 0x2256700, (=0x3e7)
	mov     r1, #0x4a
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r2, #0x5
	mov     r3, #0x1
	bl      0x200985c
	mov     r1, #0x59
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	ldr     r0, [pc, #0x78] @ 0x2256700, (=0x3e7)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, #0x4
	sub     r1, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [r6, r1]
	mov     r1, #0x4a
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x5a
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	ldr     r0, [pc, #0x54] @ 0x2256700, (=0x3e7)
	sub     r1, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	mov     r1, #0x4a
	mov     r2, #0x6
	mov     r3, #0x1
	bl      0x2009918
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	ldr     r0, [pc, #0x34] @ 0x2256700, (=0x3e7)
	sub     r1, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	mov     r1, #0x4a
	mov     r2, #0x7
	mov     r3, #0x1
	bl      0x2009918
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r6, r1]
	sub     r1, #0xc
	ldr     r0, [r6, r1]
	bl      0x200a3dc
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a640
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22566fe


.align 2


.word 0x3e7 @ 0x2256700
.thumb
Function_2256704: @ 2256704 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	ldr     r1, [pc, #0xd0] @ 0x22567dc, (=0x3e7)
	mov     r5, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r3, #0x55
	str     r0, [sp, #0x10]
	lsl     r3, r3, #2
	ldr     r2, [r5, r3]
	str     r2, [sp, #0x14]
	add     r2, r3, #0x4
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r3
	add     r2, #0x8
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r3
	add     r2, #0xc
	ldr     r2, [r5, r2]
	add     r3, #0x20
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r5, r3
	mov     r2, r1
	mov     r3, r1
	bl      0x20093b4
	ldr     r0, [r5, #0x28]
	mov     r4, #0x0
	str     r0, [sp, #0x2c]
	mov     r0, #0x5d
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	lsl     r0, r0, #12
	mov     r7, #0x3f
	str     r4, [sp, #0x3c]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	strh    r4, [r0, #0x20]
	mov     r0, #0x2
	str     r0, [sp, #0x54]
	mov     r0, #0x4
	ldr     r6, [pc, #0x6c] @ 0x22567e0, (=Unknown_2257238)
	str     r4, [sp, #0x50]
	str     r0, [sp, #0x58]
	lsl     r7, r7, #24
branch_2256778: @ 2256778 :thumb
	mov     r0, #0x3a
	lsl     r0, r0, #14
	str     r0, [sp, #0x34]
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	ble     branch_2256794
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, r7
	blx 0x20e0b00
	b       branch_22567a0
@ 0x2256794

.thumb
branch_2256794: @ 2256794 :thumb
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, r7
	blx 0x20e1a9c
.thumb
branch_22567a0: @ 22567a0 :thumb
	blx 0x20e1740
	mov     r1, #0x3
	lsl     r1, r1, #18
	add     r0, r0, r1
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x2021d6c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_2256778
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x22567dc

.word 0x3e7 @ 0x22567dc
.word Unknown_2257238 @ 0x22567e0



.thumb
Function_22567e4: @ 22567e4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x1e
	bne     branch_22567ec
	mov     r1, #0x0
branch_22567ec: @ 22567ec :thumb
	mov     r0, r1
	bx      lr
@ 0x22567f0

.thumb
Function_22567f0: @ 22567f0 :thumb
	add     r0, r0, r1
	cmp     r0, #0x1e
	blt     branch_22567f8
	sub     r0, #0x1e
.thumb
branch_22567f8: @ 22567f8 :thumb
	bx      lr
@ 0x22567fa


.align 2, 0


.thumb
Function_22567fc: @ 22567fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r3, r1
	mov     r5, r0
	mov     r4, r3
	mov     r0, #0x38
	mul     r4, r0
	mov     r0, #0x7e
	mov     r6, r2
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [r6, #0x10]
	mov     r2, #0x8
	str     r0, [r1, r4]
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldr     r2, [r5, #0x24]
	mov     r7, #0x0
	add     r2, #0xc
	str     r2, [sp, #0x8]
	str     r7, [sp, #0xc]
	ldr     r2, [r1, r4]
	mov     r1, #0x18
	mul     r1, r2
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, #0x30
	str     r0, [sp, #0x18]
	lsl     r3, r3, #27
	ldr     r0, [r5, #0x14]
	mov     r1, #0x7
	mov     r2, r7
	lsr     r3, r3, #24
	bl      0x20198e8
	mov     r0, #0x72
	lsl     r0, r0, #2
	add     r7, r5, r0
	add     r0, r7, r4
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x1c]
	add     r0, r0, r4
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r5, r5, r0
	add     r0, r5, r4
	mov     r1, #0x0
	bl      0x201ada4
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x22568dc, (=0x10200)
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r2, [r6, #0x0]
	add     r0, r7, r4
	bl      0x201d78c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x44] @ 0x22568dc, (=0x10200)
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	ldr     r2, [r6, #0x4]
	add     r0, r0, r4
	mov     r1, #0x1
	bl      0x201d78c
	add     r0, r7, r4
	bl      0x201a9a4
	ldr     r0, [sp, #0x1c]
	add     r0, r0, r4
	bl      0x201a9a4
	ldr     r2, [r6, #0x8]
	cmp     r2, #0x0
	beq     branch_22568d2
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x22568dc, (=0x10200)
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	str     r3, [sp, #0xc]
	bl      0x201d78c
.thumb
branch_22568d2: @ 22568d2 :thumb
	add     r0, r5, r4
	bl      0x201a9a4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22568dc

.word 0x10200 @ 0x22568dc
.thumb
Function_22568e0: @ 22568e0 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x27
	mov     r5, r0
	lsl     r1, r1, #4
	mov     r0, r1
	ldr     r2, [r5, r1]
	add     r1, #0x8
	add     r0, #0xdc
	ldrh    r1, [r5, r1]
	ldr     r0, [r2, r0]
	bl      Function_22567f0
	mov     r6, r0
	mov     r0, #0x27
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	add     r0, #0xd8
	ldr     r7, [r1, r0]
	cmp     r7, #0x3
	ble     branch_225690a
	mov     r7, #0x3
.thumb
branch_225690a: @ 225690a :thumb
	mov     r0, #0x9e
	lsl     r0, r0, #2
	ldrh    r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r1, r0
	beq     branch_2256928
	mov     r0, r5
	bl      Function_2257100
	mov     r0, #0x9e
	lsl     r0, r0, #2
	ldrh    r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_2256928: @ 2256928 :thumb
	mov     r0, #0xa1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_2256992
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2256960
.thumb
branch_2256938: @ 2256938 :thumb
	mov     r2, #0x27
	lsl     r2, r2, #4
	mov     r3, #0x1c
	ldr     r2, [r5, r2]
	mul     r3, r6
	mov     r0, r5
	mov     r1, r4
	add     r2, r2, r3
	bl      Function_22567fc
	mov     r0, #0x27
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_22567e4
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r6, r0
	cmp     r4, r7
	blt     branch_2256938
.thumb
branch_2256960: @ 2256960 :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x7
	bl      0x2019fe4
	mov     r1, #0x6
	lsl     r1, r1, #8
	blx 0x20c2c54
	ldr     r0, [r5, #0x14]
	mov     r1, #0x7
	bl      0x2019fe4
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x6
	ldr     r0, [r5, #0x14]
	mov     r1, #0x7
	lsl     r3, r3, #8
	bl      0x2019460
	mov     r0, #0xa1
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2256992: @ 2256992 :thumb
	pop     {r3-r7,pc}
@ 0x2256994

.thumb
Function_2256994: @ 2256994 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x3a
	lsl     r0, r0, #14
	str     r0, [sp, #0x0]
	cmp     r1, #0x0
	ble     branch_22569b6
	lsl     r0, r1, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_22569c4
@ 0x22569b6

.thumb
branch_22569b6: @ 22569b6 :thumb
	lsl     r0, r1, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_22569c4: @ 22569c4 :thumb
	blx 0x20e1740
	mov     r1, #0x3
	lsl     r1, r1, #18
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      0x2021c50
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22569e0

.thumb
Function_22569e0: @ 22569e0 :thumb
	push    {r4,lr}
	mov     r1, #0x27
	mov     r4, r0
	lsl     r1, r1, #4
	mov     r0, r1
	ldr     r2, [r4, r1]
	add     r0, #0xd8
	ldr     r2, [r2, r0]
	add     r0, r1, #0x4
	strh    r2, [r4, r0]
	ldrh    r0, [r4, r0]
	cmp     r0, #0x3
	bls     branch_2256a14
	add     r0, r1, #0x6
	ldrh    r0, [r4, r0]
	cmp     r0, #0x3
	bhi     branch_2256a14
	mov     r0, r1
	mov     r2, #0x1
	add     r0, #0xa
	strh    r2, [r4, r0]
	add     r0, r1, #0x4
	ldrh    r0, [r4, r0]
	add     r1, #0x8
	.hword  0x1ec0 @ sub r0, r0, #0x3
	strh    r0, [r4, r1]
.thumb
branch_2256a14: @ 2256a14 :thumb
	mov     r1, #0x1a
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	add     r1, #0xda
	ldrh    r1, [r4, r1]
	bl      0x2021cac
	ldr     r0, [pc, #0x40] @ 0x2256a64, (=0x27a)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2256a56
	mov     r0, r4
	bl      Function_2257184
	cmp     r0, #0x1
	bne     branch_2256a56
	mov     r1, #0x9e
	lsl     r1, r1, #2
	ldrh    r2, [r4, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldrh    r1, [r4, r1]
	mov     r0, #0x60
	mul     r0, r2
	.hword  0x1ec9 @ sub r1, r1, #0x3
	blx 0x20e1f6c
	mov     r1, r0
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	add     r1, #0x30
	bl      Function_2256994
.thumb
branch_2256a56: @ 2256a56 :thumb
	mov     r0, #0x9d
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2256a62


.align 2


.word 0x27a @ 0x2256a64
.thumb
Function_2256a68: @ 2256a68 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x140] @ 0x2256bb0, (=0x2257264)
	bl      0x2022644
	mov     r7, r0
	mov     r0, r5
	bl      Function_2257174
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r7, r0
	beq     branch_2256a9e
	cmp     r7, #0x0
	beq     branch_2256a92
	cmp     r7, #0x1
	beq     branch_2256ac4
	cmp     r7, #0x5
	beq     branch_2256afa
	b       branch_2256b04
@ 0x2256a92

.thumb
branch_2256a92: @ 2256a92 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_225718c
	cmp     r4, #0x1
	beq     branch_2256aa0
.thumb
branch_2256a9e: @ 2256a9e :thumb
	b       branch_2256bac
@ 0x2256aa0

.thumb
branch_2256aa0: @ 2256aa0 :thumb
	mov     r0, #0x9e
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2256aba
	ldr     r0, [pc, #0x108] @ 0x2256bb4, (=0x5e5)
	bl      0x2005748
	mov     r0, #0x9e
	lsl     r0, r0, #2
	ldrh    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r5, r0]
.thumb
branch_2256aba: @ 2256aba :thumb
	mov     r0, #0x71
	.hword  0x1eb9 @ sub r1, r7, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2256bac
@ 0x2256ac4

.thumb
branch_2256ac4: @ 2256ac4 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_225718c
	cmp     r4, #0x1
	bne     branch_2256bac
	mov     r0, #0x9e
	lsl     r0, r0, #2
	ldrh    r1, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldrh    r0, [r5, r0]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r1, r0
	bge     branch_2256af0
	ldr     r0, [pc, #0xd0] @ 0x2256bb4, (=0x5e5)
	bl      0x2005748
	mov     r0, #0x9e
	lsl     r0, r0, #2
	ldrh    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, r0]
.thumb
branch_2256af0: @ 2256af0 :thumb
	mov     r0, #0x71
	.hword  0x1eb9 @ sub r1, r7, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2256bac
@ 0x2256afa

.thumb
branch_2256afa: @ 2256afa :thumb
	mov     r0, #0x71
	.hword  0x1eb9 @ sub r1, r7, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2256bac
@ 0x2256b04

.thumb
branch_2256b04: @ 2256b04 :thumb
	ldr     r0, [pc, #0xb0] @ 0x2256bb8, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_2256bac
	mov     r2, #0x27
	lsl     r2, r2, #4
	mov     r1, r2
	ldr     r0, [r5, r2]
	add     r1, #0xd8
	ldr     r3, [r0, r1]
	.hword  0x1e79 @ sub r1, r7, #0x1
	cmp     r3, r1
	blt     branch_2256ba4
	mov     r1, r2
	add     r1, #0xdc
	add     r2, #0x8
	ldr     r0, [r0, r1]
	ldrh    r1, [r5, r2]
	add     r1, r1, r7
	.hword  0x1e89 @ sub r1, r1, #0x2
	bl      Function_22567f0
	mov     r1, #0x1c
	mov     r4, #0x0
	mul     r1, r0
	mov     r6, r4
	str     r1, [sp, #0x0]
.thumb
branch_2256b3a: @ 2256b3a :thumb
	mov     r0, r4
	bl      0x2033f3c
	cmp     r0, #0x0
	beq     branch_2256b76
	ldr     r1, [r5, #0x4]
	add     r0, #0x50
	add     r1, r1, r6
	ldrb    r1, [r1, #0xd]
	cmp     r1, #0x2
	bne     branch_2256b76
	mov     r1, #0x27
	lsl     r1, r1, #4
	ldr     r2, [r5, r1]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	add     r1, r1, r2
	ldr     r1, [r1, #0xc]
	cmp     r0, r1
	bne     branch_2256b76
	ldr     r0, [pc, #0x50] @ 0x2256bb4, (=0x5e5)
	bl      0x2005748
	mov     r1, #0x18
	ldr     r2, [r5, #0x4]
	mul     r1, r4
	mov     r0, #0x1
	add     r1, r2, r1
	strb    r0, [r1, #0xf]
	b       branch_2256b7e
@ 0x2256b76

.thumb
branch_2256b76: @ 2256b76 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x18
	cmp     r4, #0xa
	blt     branch_2256b3a
.thumb
branch_2256b7e: @ 2256b7e :thumb
	bl      0x2033f9c
	bl      0x2025f20
	mov     r1, #0x27
	lsl     r1, r1, #4
	ldr     r2, [r5, r1]
	ldr     r1, [sp, #0x0]
	add     r1, r2, r1
	ldr     r1, [r1, #0xc]
	cmp     r1, r0
	bne     branch_2256ba4
	ldr     r0, [pc, #0x1c] @ 0x2256bb4, (=0x5e5)
	bl      0x2005748
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x2256bbc, (=0x4bf)
	mov     r2, #0x1
	strb    r2, [r1, r0]
.thumb
branch_2256ba4: @ 2256ba4 :thumb
	mov     r0, #0x71
	.hword  0x1eb9 @ sub r1, r7, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2256bac: @ 2256bac :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2256bb0

.word 0x2257264 @ 0x2256bb0
.word 0x5e5 @ 0x2256bb4
.word 0x21bf6bc @ 0x2256bb8
.word 0x4bf @ 0x2256bbc
.thumb
Function_2256bc0: @ 2256bc0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldr     r0, [pc, #0xb8] @ 0x2256c80, (=0x2257250)
	bl      0x2022644
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [sp, #0x0]
	cmp     r0, r1
	beq     branch_2256c70
	cmp     r0, #0x0
	bne     branch_2256c3a
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225717c
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	bl      0x20227a4
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r7, r0]
	ldr     r1, [sp, #0x4]
	bl      Function_2256994
	mov     r0, #0x9d
	lsl     r0, r0, #2
	ldrh    r0, [r7, r0]
	cmp     r0, #0x3
	bls     branch_2256c78
	.hword  0x1e84 @ sub r4, r0, #0x2
	mov     r0, #0x60
	mov     r1, r4
	blx 0x20e1f6c
	mov     r1, #0x0
	cmp     r4, #0x0
	ble     branch_2256c78
	ldr     r5, [sp, #0x4]
	mov     r2, r1
	mov     r3, r1
.thumb
branch_2256c16: @ 2256c16 :thumb
	mov     r6, r2
	add     r6, #0x30
	cmp     r5, r6
	bcc     branch_2256c2e
	add     r6, r3, r0
	add     r6, #0x30
	cmp     r5, r6
	bcs     branch_2256c2e
	mov     r0, #0x9e
	lsl     r0, r0, #2
	strh    r1, [r7, r0]
	b       branch_2256c78
@ 0x2256c2e

.thumb
branch_2256c2e: @ 2256c2e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, r2, r0
	add     r3, r3, r0
	cmp     r1, r4
	blt     branch_2256c16
	b       branch_2256c78
@ 0x2256c3a

.thumb
branch_2256c3a: @ 2256c3a :thumb
	mov     r1, #0x27
	lsl     r1, r1, #4
	mov     r0, r1
	ldr     r2, [r7, r1]
	add     r0, #0xd8
	ldr     r2, [r2, r0]
	ldr     r0, [sp, #0x0]
	cmp     r2, r0
	blt     branch_2256c78
	mov     r0, r1
	sub     r0, #0xac
	ldr     r2, [r7, r0]
	ldr     r0, [sp, #0x0]
	.hword  0x1e43 @ sub r3, r0, #0x1
	cmp     r2, r3
	bne     branch_2256c78
	sub     r1, #0x74
	add     r2, r7, r1
	mov     r0, #0x38
	mov     r1, r3
	mul     r1, r0
	ldr     r0, [r2, r1]
	cmp     r0, #0x5
	bge     branch_2256c78
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
	b       branch_2256c78
@ 0x2256c70

.thumb
branch_2256c70: @ 2256c70 :thumb
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_225717c
.thumb
branch_2256c78: @ 2256c78 :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2256c7e


.align 2


.word 0x2257250 @ 0x2256c80
.thumb
Function_2256c84: @ 2256c84 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x74] @ 0x2256cfc, (=0x21bf67c)
	mov     r4, r0
	ldr     r3, [r1, #0x44]
	mov     r1, #0x2
	lsl     r1, r1, #8
	mov     r2, r3
	tst     r2, r1
	beq     branch_2256cc6
	mov     r1, #0x0
	bl      Function_225718c
	ldr     r0, [pc, #0x5c] @ 0x2256cfc, (=0x21bf67c)
	mov     r1, #0x2
	ldr     r0, [r0, #0x4c]
	lsl     r1, r1, #8
	tst     r0, r1
	beq     branch_2256cf8
	mov     r0, r1
	add     r0, #0x78
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2256cf8
	mov     r0, r1
	add     r0, #0x78
	ldrh    r0, [r4, r0]
	add     r1, #0x78
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, r1]
	ldr     r0, [pc, #0x40] @ 0x2256d00, (=0x5e5)
	bl      0x2005748
	pop     {r4,pc}
@ 0x2256cc6

.thumb
branch_2256cc6: @ 2256cc6 :thumb
	lsr     r1, r1, #1
	tst     r1, r3
	beq     branch_2256cf8
	mov     r1, #0x1
	bl      Function_225718c
	ldr     r0, [pc, #0x28] @ 0x2256cfc, (=0x21bf67c)
	ldr     r1, [r0, #0x4c]
	mov     r0, #0x1
	lsl     r0, r0, #8
	tst     r0, r1
	beq     branch_2256cf8
	mov     r0, #0x9e
	lsl     r0, r0, #2
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldrh    r1, [r4, r1]
	ldrh    r2, [r4, r0]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	cmp     r2, r1
	bge     branch_2256cf8
	add     r1, r2, #0x1
	strh    r1, [r4, r0]
	ldr     r0, [pc, #0xc] @ 0x2256d00, (=0x5e5)
	bl      0x2005748
.thumb
branch_2256cf8: @ 2256cf8 :thumb
	pop     {r4,pc}
@ 0x2256cfa


.align 2


.word 0x21bf67c @ 0x2256cfc
.word 0x5e5 @ 0x2256d00
.thumb
Function_2256d04: @ 2256d04 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, #0x0
	mvn     r4, r4
	bl      0x20509a4
	cmp     r0, #0x0
	bne     branch_2256d3a
	mov     r0, r5
	bl      Function_2256a68
	mov     r6, r0
	mov     r0, r5
	bl      Function_2256bc0
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	bne     branch_2256d3a
	cmp     r4, r0
	bne     branch_2256d3a
	mov     r0, r5
	bl      Function_2256c84
.thumb
branch_2256d3a: @ 2256d3a :thumb
	mov     r2, #0x27
	lsl     r2, r2, #4
	mov     r0, r2
	ldr     r1, [r5, r2]
	add     r0, #0xd8
	ldr     r0, [r1, r0]
	.hword  0x1e63 @ sub r3, r4, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r2
	add     r0, #0x10
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	sub     r2, #0xa8
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x24]
	add     r2, r5, r2
	bl      Function_2256d64
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2256d62


.align 2, 0


.thumb
Function_2256d64: @ 2256d64 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x40]
	str     r1, [sp, #0x20]
	mov     r5, r2
	mov     r1, #0x0
	str     r0, [sp, #0x40]
	ldr     r4, [sp, #0x44]
	cmp     r0, #0x3
	ble     branch_2256d7e
	mov     r0, #0x3
	str     r0, [sp, #0x40]
.thumb
branch_2256d7e: @ 2256d7e :thumb
	ldr     r2, [sp, #0x40]
	mov     r0, #0x0
	cmp     r2, #0x0
	ble     branch_2256da4
	mov     r2, r5
.thumb
branch_2256d88: @ 2256d88 :thumb
	cmp     r3, r0
	beq     branch_2256d96
	ldr     r6, [r2, #0x34]
	cmp     r6, #0x0
	beq     branch_2256d96
	.hword  0x1e76 @ sub r6, r6, #0x1
	str     r6, [r2, #0x34]
.thumb
branch_2256d96: @ 2256d96 :thumb
	ldr     r6, [r2, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, r1, r6
	ldr     r6, [sp, #0x40]
	add     r2, #0x38
	cmp     r0, r6
	blt     branch_2256d88
.thumb
branch_2256da4: @ 2256da4 :thumb
	cmp     r1, #0x0
	bne     branch_2256db4
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2256db4
	add     sp, #0x28
	str     r1, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2256db4

.thumb
branch_2256db4: @ 2256db4 :thumb
	ldr     r0, [sp, #0x40]
	str     r1, [r4, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2256e2a
	ldr     r0, [sp, #0x20]
	mov     r7, r4
	add     r0, #0xc
	str     r0, [sp, #0x20]
.thumb
branch_2256dc6: @ 2256dc6 :thumb
	ldr     r1, [r5, #0x34]
	lsl     r3, r7, #24
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [sp, #0x24]
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	lsr     r3, r3, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x24]
	ldr     r1, [r5, #0x30]
	lsl     r2, r0, #3
	mov     r0, #0x18
	mul     r0, r1
	add     r0, r2, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	mov     r0, #0x20
	str     r0, [sp, #0x14]
	mov     r0, #0x30
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x7
	mov     r2, #0x0
	bl      0x20198e8
	ldr     r3, [sp, #0x24]
	add     r1, r4, #0x4
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x48] @ 0x2256e58, (=0x2257244)
	lsl     r1, r1, #24
	ldr     r0, [sp, #0x1c]
	ldr     r3, [r3, r6]
	lsr     r1, r1, #24
	mov     r2, #0x3
	bl      0x2019184
	ldr     r0, [sp, #0x40]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x38
	add     r7, #0x8
	cmp     r4, r0
	blt     branch_2256dc6
.thumb
branch_2256e2a: @ 2256e2a :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x7
	bl      0x2019fe4
	mov     r1, #0x6
	lsl     r1, r1, #8
	blx 0x20c2c54
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x7
	bl      0x2019fe4
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x6
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x7
	lsl     r3, r3, #8
	bl      0x2019460
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2256e58

.word 0x2257244 @ 0x2256e58
.thumb
Function_2256e5c: @ 2256e5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r4, #0x0
	ldr     r0, [sp, #0x28]
	mov     r5, r1
	mov     r7, r2
	str     r3, [sp, #0x8]
	str     r4, [sp, #0xc]
	bl      0x2025f20
	cmp     r5, r0
	beq     branch_2256e80
	mov     r0, r6
	mov     r1, r5
	bl      0x20280e0
	mov     r4, r0
.thumb
branch_2256e80: @ 2256e80 :thumb
	cmp     r4, #0x0
	ble     branch_2256ee0
	cmp     r4, #0x1
	bne     branch_2256e94
	ldr     r2, [sp, #0x28]
	mov     r0, r7
	mov     r1, #0x0
	bl      0x200b498
	b       branch_2256ed2
@ 0x2256e94

.thumb
branch_2256e94: @ 2256e94 :thumb
	cmp     r4, #0x2
	blt     branch_2256ed2
	.hword  0x1ea5 @ sub r5, r4, #0x2
	mov     r0, #0xa
	mov     r1, #0x59
	bl      0x2023790
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	bl      0x2027fbc
	mov     r1, r0
	mov     r0, r4
	bl      0x2023d28
	mov     r0, r6
	mov     r1, r5
	bl      0x2027fc4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r4
	mov     r3, r1
	bl      0x200b48c
	mov     r0, r4
	bl      0x20237bc
.thumb
branch_2256ed2: @ 2256ed2 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r7
	mov     r2, #0xd0
	mov     r3, #0x59
	bl      0x200b29c
	str     r0, [sp, #0xc]
.thumb
branch_2256ee0: @ 2256ee0 :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256ee6


.align 2, 0


.thumb
Function_2256ee8: @ 2256ee8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r6, r2
	ldr     r2, [r7, #0x4]
	ldr     r0, [pc, #0xd0] @ 0x2256fc4, (=0x4d8)
	str     r1, [sp, #0x4]
	mov     r1, #0x27
	ldr     r0, [r2, r0]
	lsl     r1, r1, #4
	str     r0, [sp, #0xc]
	mov     r0, r1
	ldr     r4, [r7, r1]
	add     r0, #0xd8
	ldr     r0, [r4, r0]
	str     r3, [sp, #0x8]
	cmp     r0, #0x1e
	bne     branch_2256f10
	add     r1, #0xdc
	b       branch_2256f12
@ 0x2256f10

.thumb
branch_2256f10: @ 2256f10 :thumb
	add     r1, #0xd8
.thumb
branch_2256f12: @ 2256f12 :thumb
	add     r5, r4, r1
	ldr     r1, [r5, #0x0]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r4, r0
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_2256f26
	bl      0x20237bc
.thumb
branch_2256f26: @ 2256f26 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2256f38
	bl      0x20237bc
.thumb
branch_2256f38: @ 2256f38 :thumb
	ldr     r0, [sp, #0x8]
	bl      0x2025ef0
	mov     r1, r0
	ldr     r2, [r5, #0x0]
	mov     r0, #0x1c
	mul     r0, r2
	ldr     r0, [r4, r0]
	bl      0x2023d28
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1c
	mov     r2, r0
	mul     r2, r1
	add     r0, r4, r2
	ldrh    r2, [r6, #0x0]
	strh    r2, [r0, #0x14]
	ldrh    r2, [r6, #0x2]
	strh    r2, [r0, #0x16]
	ldrh    r2, [r6, #0x4]
	strh    r2, [r0, #0x18]
	ldrh    r2, [r6, #0x6]
	strh    r2, [r0, #0x1a]
	ldr     r0, [r5, #0x0]
	mul     r1, r0
	ldr     r0, [sp, #0x4]
	add     r1, r4, r1
	str     r0, [r1, #0xc]
	ldr     r0, [sp, #0x8]
	bl      0x2025f30
	ldr     r2, [r5, #0x0]
	mov     r1, #0x1c
	mul     r1, r2
	add     r1, r4, r1
	str     r0, [r1, #0x10]
	mov     r0, r6
	mov     r1, #0x59
	bl      0x2014b34
	ldr     r2, [r5, #0x0]
	mov     r1, #0x1c
	mul     r1, r2
	add     r1, r4, r1
	str     r0, [r1, #0x4]
	ldr     r0, [r7, #0x10]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	ldr     r2, [r7, #0x18]
	ldr     r3, [r7, #0x1c]
	bl      Function_2256e5c
	ldr     r2, [r5, #0x0]
	mov     r1, #0x1c
	mul     r1, r2
	add     r1, r4, r1
	str     r0, [r1, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0xd3
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x1e
	bne     branch_2256fc0
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_2256fc0: @ 2256fc0 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256fc4

.word 0x4d8 @ 0x2256fc4
.thumb
Function_2256fc8: @ 2256fc8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, r1
	str     r1, [sp, #0x0]
	mov     r7, r2
	bl      0x2014bbc
	cmp     r0, #0x0
	bne     branch_2256fde
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256fde

.thumb
branch_2256fde: @ 2256fde :thumb
	mov     r1, #0x27
	lsl     r1, r1, #4
	ldr     r0, [r6, r1]
	add     r1, #0xd8
	ldr     r1, [r0, r1]
	mov     r4, #0x0
	cmp     r1, #0x0
	ble     branch_2257018
	mov     r5, r4
.thumb
branch_2256ff0: @ 2256ff0 :thumb
	add     r1, r0, r5
	ldr     r0, [r1, #0xc]
	cmp     r7, r0
	bne     branch_2257004
	ldr     r0, [sp, #0x0]
	add     r1, #0x14
	bl      0x2014c88
	cmp     r0, #0x0
	bne     branch_2257018
.thumb
branch_2257004: @ 2257004 :thumb
	mov     r0, #0x27
	lsl     r0, r0, #4
	mov     r1, #0xd2
	ldr     r0, [r6, r0]
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x1c
	cmp     r4, r1
	blt     branch_2256ff0
.thumb
branch_2257018: @ 2257018 :thumb
	mov     r0, #0x27
	lsl     r0, r0, #4
	ldr     r1, [r6, r0]
	add     r0, #0xd8
	ldr     r0, [r1, r0]
	cmp     r4, r0
	beq     branch_225702e
	cmp     r0, #0x0
	beq     branch_225702e
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225702e

.thumb
branch_225702e: @ 225702e :thumb
	mov     r0, #0x1c
	mul     r0, r4
	add     r1, r1, r0
	ldr     r0, [r1, #0xc]
	cmp     r7, r0
	beq     branch_2257042
	ldr     r0, [sp, #0x0]
	add     r1, #0x14
	bl      0x2014c88
.thumb
branch_2257042: @ 2257042 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2257046


.align 2, 0


.thumb
Function_2257048: @ 2257048 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r1, #0x9e
	mov     r4, r0
	lsl     r1, r1, #2
	ldrh    r0, [r4, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldrh    r1, [r4, r1]
	mov     r5, #0x0
	.hword  0x1ec9 @ sub r1, r1, #0x3
	cmp     r0, r1
	bne     branch_2257062
	mov     r5, #0x1
.thumb
branch_2257062: @ 2257062 :thumb
	mov     r1, r3
	mov     r0, r4
	mov     r3, r6
	bl      Function_2256ee8
	ldr     r1, [pc, #0x24] @ 0x2257094, (=0x27a)
	ldrh    r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_225708a
	cmp     r5, #0x0
	beq     branch_225708a
	mov     r0, r1
	sub     r0, #0xa
	ldr     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0xce
	ldr     r0, [r2, r0]
	.hword  0x1ec2 @ sub r2, r0, #0x3
	.hword  0x1e88 @ sub r0, r1, #0x2
	strh    r2, [r4, r0]
.thumb
branch_225708a: @ 225708a :thumb
	mov     r0, r4
	bl      Function_2257100
	pop     {r4-r6,pc}
@ 0x2257092


.align 2


.word 0x27a @ 0x2257094
.thumb
Function_2257098: @ 2257098 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      0x20509a4
	cmp     r0, #0x0
	bne     branch_22570fc
	mov     r4, #0x0
.thumb
branch_22570a8: @ 22570a8 :thumb
	mov     r0, r4
	bl      0x2033f3c
	mov     r2, r0
	beq     branch_22570da
	mov     r6, r2
	add     r6, #0x50
	mov     r7, r6
	add     r7, #0x8
	ldr     r2, [r2, #0x50]
	mov     r0, r5
	mov     r1, r7
	bl      Function_2256fc8
	cmp     r0, #0x0
	beq     branch_22570da
	mov     r0, r4
	bl      0x2033fb0
	mov     r1, r0
	ldr     r3, [r6, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      Function_2257048
.thumb
branch_22570da: @ 22570da :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x10
	blt     branch_22570a8
	ldr     r0, [r5, #0x8]
	bl      0x205c028
	mov     r4, r0
	beq     branch_22570fc
	ldr     r0, [r5, #0x10]
	bl      0x2025f20
	mov     r3, r0
	ldr     r1, [r5, #0x10]
	mov     r0, r5
	mov     r2, r4
	bl      Function_2257048
.thumb
branch_22570fc: @ 22570fc :thumb
	pop     {r3-r7,pc}
@ 0x22570fe


.align 2, 0


.thumb
Function_2257100: @ 2257100 :thumb
	mov     r1, #0xa1
	mov     r2, #0x1
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	bx      lr
@ 0x225710a


.align 2, 0


.thumb
Function_225710c: @ 225710c :thumb
	mov     r1, #0xa2
	mov     r2, #0x0
	lsl     r1, r1, #2
	strb    r2, [r0, r1]
	mov     r3, #0x8
	add     r2, r1, #0x2
	strb    r3, [r0, r2]
	mov     r3, #0x4
	add     r2, r1, #0x3
	strb    r3, [r0, r2]
	add     r2, r1, #0x2
	ldrb    r2, [r0, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r2, [r0, r1]
	bx      lr
@ 0x225712a


.align 2, 0


.thumb
Function_225712c: @ 225712c :thumb
	mov     r2, #0xa2
	mov     r1, #0x0
	lsl     r2, r2, #2
	strb    r1, [r0, r2]
	ldr     r1, [pc, #0x38] @ 0x2257170, (=0x21bf6bc)
	ldrh    r3, [r1, #0x20]
	cmp     r3, #0x0
	beq     branch_2257142
	mov     r1, #0x1
	strb    r1, [r0, r2]
	bx      lr
@ 0x2257142

.thumb
branch_2257142: @ 2257142 :thumb
	ldrh    r1, [r1, #0x22]
	cmp     r1, #0x0
	beq     branch_2257166
	add     r1, r2, #0x1
	ldsb    r1, [r0, r1]
	.hword  0x1e4b @ sub r3, r1, #0x1
	add     r1, r2, #0x1
	strb    r3, [r0, r1]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	bge     branch_225716e
	mov     r1, #0x1
	strb    r1, [r0, r2]
	add     r1, r2, #0x3
	ldrb    r3, [r0, r1]
	add     r1, r2, #0x1
	strb    r3, [r0, r1]
	bx      lr
@ 0x2257166

.thumb
branch_2257166: @ 2257166 :thumb
	add     r1, r2, #0x2
	ldrb    r3, [r0, r1]
	add     r1, r2, #0x1
	strb    r3, [r0, r1]
.thumb
branch_225716e: @ 225716e :thumb
	bx      lr
@ 0x2257170

.word 0x21bf6bc @ 0x2257170
.thumb
Function_2257174: @ 2257174 :thumb
	mov     r1, #0xa2
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x225717c

.thumb
Function_225717c: @ 225717c :thumb
	mov     r2, #0xa3
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	bx      lr
@ 0x2257184

.thumb
Function_2257184: @ 2257184 :thumb
	mov     r1, #0xa3
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x225718c

.thumb
Function_225718c: @ 225718c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x66
	mov     r5, r1
	lsl     r0, r0, #2
	add     r4, r7, r0
	lsl     r6, r5, #2
	ldr     r0, [r4, r6]
	bl      0x2021e74
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r6]
	bl      0x2021e24
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bhi     branch_22571b8
	add     r0, r5, #0x4
	cmp     r1, r0
	beq     branch_22571c0
.thumb
branch_22571b8: @ 22571b8 :thumb
	ldr     r0, [r4, r6]
	add     r1, r5, #0x4
	bl      0x2021d6c
.thumb
branch_22571c0: @ 22571c0 :thumb
	lsl     r0, r5, #1
	add     r1, r7, r0
	mov     r0, #0x29
	mov     r2, #0x1
	lsl     r0, r0, #4
	strh    r2, [r1, r0]
	pop     {r3-r7,pc}
@ 0x22571ce


.align 2, 0


.thumb
Function_22571d0: @ 22571d0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, r6
.thumb
branch_22571da: @ 22571da :thumb
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2021e74
	mov     r1, #0x29
	lsl     r1, r1, #4
	ldrh    r1, [r4, r1]
	cmp     r1, #0x1
	bne     branch_2257206
	cmp     r0, #0x1
	bcc     branch_22571fe
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cc8
.thumb
branch_22571fe: @ 22571fe :thumb
	mov     r0, #0x29
	lsl     r0, r0, #4
	strh    r7, [r4, r0]
	b       branch_225722c
@ 0x2257206

.thumb
branch_2257206: @ 2257206 :thumb
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2021d3c
	cmp     r0, #0x0
	bne     branch_225722c
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      0x2021e50
.thumb
branch_225722c: @ 225722c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, #0x2
	blt     branch_22571da
	pop     {r3-r7,pc}
@ 0x2257238


Unknown_2257238: @ 0x2257238
.incbin "./baserom/overlay/overlay_0056.bin", 0x1078, 0x2257300 - 0x2257238


@end 0x2257300




