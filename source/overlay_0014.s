
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram14, "ax"




thumb_func_start Function_221fc20
Function_221fc20: @ 221fc20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, #0xd5
	str     r2, [sp, #0x4]
	mov     r5, r1
	lsl     r0, r0, #2          @ =0x354
	mov     r2, r3
	add     r3, r5, r0
	mov     r0, #0x0
	mov     r1, r0
branch_221fc36: @ 221fc36 :thumb
	strb    r1, [r3, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x1c
	bcc     branch_221fc36

	mov     r7, #0x0
	mov     r0, #100
branch_221fc42: @ 221fc42 :thumb
	mov     r3, #0x1
	tst     r3, r2
	beq     branch_221fc52
	mov     r3, #0xd6
	add     r4, r5, r1
	lsl     r3, r3, #2              @ =0x358 BattleData_MoveScore
	strb    r0, [r4, r3]
	b       branch_221fc5a

branch_221fc52: @ 221fc52 :thumb
	mov     r3, #0xd6
	add     r4, r5, r1
	lsl     r3, r3, #2              @ =0x358 BattleData_MoveScore
	strb    r7, [r4, r3]
branch_221fc5a: @ 221fc5a :thumb
	lsl     r2, r2, #23
	.hword  0x1c49 @ add r1, r1, #0x1
	lsr     r2, r2, #24
	cmp     r1, #0x4
	blt     branch_221fc42

	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x0
	bl      Function_16_2254a6c
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	mov     r4, #0x0
branch_221fc7c: @ 221fc7c :thumb
	mov     r0, r4
	bl      Function_20787cc
	tst     r0, r7
	beq     branch_221fc90
	mov     r0, #0xd6
	add     r2, r5, r4
	mov     r1, #0x0
	lsl     r0, r0, #2              @ =0x358 BattleData_MoveScore
	strb    r1, [r2, r0]
branch_221fc90: @ 221fc90 :thumb
	mov     r0, r6
	bl      Function_16_GetRandomNr
	lsr     r1, r0, #31
	lsl     r2, r0, #28
	sub     r2, r2, r1
	mov     r0, #28
	ror     r2, r0
	add     r1, r1, r2
	mov     r0, #100
	sub     r2, r0, r1
	mov     r0, #0xdb
	add     r1, r5, r4
	lsl     r0, r0, #2          @ =0x36c
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r2, [r1, r0]
	cmp     r4, #0x4
	blt     branch_221fc7c
	mov     r2, #0xf3
	mov     r0, #0x0
	lsl     r2, r2, #2          @ =0x3cc BattleData_3cc
	strb    r0, [r5, r2]

	mov     r0, #0x1
	ldr     r1, [r6, #0x2c]
	lsl     r0, r0, #8
	tst     r1, r0
	beq     branch_221fcca
	lsl     r0, r0, #21
	b       branch_221fcd6

branch_221fcca: @ 221fcca :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x34
	mul     r1, r0
	add     r0, r6, r1
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
branch_221fcd6: @ 221fcd6 :thumb
	sub     r2, #0x6c
	str     r0, [r5, r2]
	ldr     r1, [r6, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_221fcee
	mov     r1, #0x36
	lsl     r1, r1, #4          @ =0x360
	ldr     r2, [r5, r1]
	mov     r0, #0x80
	orr     r0, r2
	str     r0, [r5, r1]
branch_221fcee: @ 221fcee :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
thumb_func_end Function_221fc20


thumb_func_start Function_14_221fcf4
Function_14_221fcf4: @ 221fcf4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r2, r1
	mov     r1, #0xd9
	ldr     r4, [r5, #0x30]
	lsl     r1, r1, #2              @ =0x364
	ldrb    r6, [r4, r1]
	mov     r3, #0x10
	tst     r3, r6
	bne     branch_221fd26
	add     r1, #0x6b
	strb    r2, [r4, r1]
	mov     r1, r4
	bl      Function_16_2257028
	mov     r2, #0x3d
	lsl     r2, r2, #4          @ =0x3d0
	strb    r0, [r4, r2]
	.hword  0x1e52 @ sub r2, r2, #0x1
	ldrb    r2, [r4, r2]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0xf
	bl      Function_221fc20
branch_221fd26: @ 221fd26 :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_221fd38
	mov     r0, r5
	mov     r1, r4
	bl      Function_221fd44
	pop     {r4-r6,pc}

branch_221fd38: @ 221fd38 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_221fe38
	pop     {r4-r6,pc}
thumb_func_end Function_14_221fcf4


thumb_func_start Function_221fd44
Function_221fd44: @ 221fd44 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r5, r1
	bl      Function_2222c88
	mov     r0, #0x36
	lsl     r0, r0, #4          @ =0x360
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_221fd9a

	mov     r6, r0
	add     r4, r0, #0x5
branch_221fd5e: @ 221fd5e :thumb
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_221fd80

	mov     r0, #0xd9
	lsl     r0, r0, #2              @ =0x364
	ldrb    r1, [r5, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_221fd78

	mov     r0, #0xd5
	mov     r1, #0x0
	lsl     r0, r0, #2              @ =0x354
	strb    r1, [r5, r0]
branch_221fd78: @ 221fd78 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      AIHandler

branch_221fd80: @ 221fd80 :thumb
	ldr     r0, [r5, r6]
	mov     r1, #0x0
	lsr     r0, r0, #1
	str     r0, [r5, r6]
	ldrb    r0, [r5, r4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r4]
	ldr     r0, [pc, #0xa0] @ 0x221fe30, (=0x355)
	strb    r1, [r5, r0]
	add     r0, #0xb
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_221fd5e
branch_221fd9a: @ 221fd9a :thumb
	mov     r3, #0xd9
	lsl     r3, r3, #2              @ =0x364
	ldrb    r1, [r5, r3]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_221fdaa
	mov     r0, #0x4
	b       branch_221fe1c

branch_221fdaa: @ 221fdaa :thumb
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_221fdb4
	mov     r0, #0x5
	b       branch_221fe1c

branch_221fdb4: @ 221fdb4 :thumb
	mov     r0, r3
	sub     r0, #0xc
	ldsb    r0, [r5, r0]
	add     r1, sp, #0x4
	mov     r4, #0x1
	strb    r0, [r1, #0x4]
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	add     r3, #0x6b
	ldrb    r3, [r5, r3]
	mov     r0, #0xc0
	mov     r2, r4
	mul     r0, r3
	add     r0, r5, r0
	add     r3, r0, #0x2
branch_221fdd2: @ 221fdd2 :thumb
	ldr     r0, [pc, #0x60] @ 0x221fe34, (=0x2d4c)
	ldrh    r0, [r3, r0]
	cmp     r0, #0x0
	beq     branch_221fe04
	mov     r0, #0xd6
	add     r6, r5, r2
	lsl     r0, r0, #2          @ =0x358 BattleData_MoveScore
	ldsb    r6, [r6, r0]
	ldrb    r0, [r1, #0x4]
	cmp     r0, r6
	bne     branch_221fdf8
	add     r0, sp, #0x8
	strb    r6, [r0, r4]
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	mov     r7, r4
	lsr     r4, r0, #24
	add     r0, sp, #0x4
	strb    r2, [r0, r7]
branch_221fdf8: @ 221fdf8 :thumb
	ldrb    r0, [r1, #0x4]
	cmp     r0, r6
	bge     branch_221fe04
	strb    r6, [r1, #0x4]
	mov     r4, #0x1
	strb    r2, [r1, #0x0]
branch_221fe04: @ 221fe04 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x4
	blt     branch_221fdd2
	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	mov     r1, r4
	blx     _s32_div_f
	add     r0, sp, #0x4
	ldrb    r0, [r0, r1]
branch_221fe1c: @ 221fe1c :thumb
	mov     r2, #0x3d
	lsl     r2, r2, #4          @ =0x3d0
	sub     r1, r2, #0x1
	ldrb    r1, [r5, r1]
	ldrb    r3, [r5, r2]
	add     r2, #0xa
	add     r1, r5, r1
	strb    r3, [r1, r2]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x221fe30

.word 0x355 @ 0x221fe30
.word 0x2d4c @ 0x221fe34
thumb_func_end Function_221fd44



thumb_func_start Function_221fe38
Function_221fe38: @ 221fe38 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r0, sp, #0x18
	mov     r5, r1
	str     r0, [sp, #0x4]
	add     r0, sp, #0x20
	str     r5, [sp, #0x8]
	str     r0, [sp, #0x0]
branch_221fe4e: @ 221fe4e :thumb
	ldr     r0, [pc, #0x214] @ 0x2220064, (=BattleData_3cf)
	ldrb    r2, [r5, r0]
	ldr     r0, [sp, #0xc]
	cmp     r0, r2
	beq     branch_221fe62
	ldr     r1, [pc, #0x20c] @ 0x2220068, (=BattleData_CurHP)
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_221fe70
branch_221fe62: @ 221fe62 :thumb
	mov     r1, #0x0
	ldr     r0, [sp, #0x4]
	mvn     r1, r1
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	b       branch_221ff90

branch_221fe70: @ 221fe70 :thumb
	mov     r0, r7
	mov     r1, r5
	mov     r3, #0xf
	bl      Function_221fc20
	mov     r1, #0x3d
	ldr     r0, [sp, #0xc]
	lsl     r1, r1, #4          @ =0x3d0
	strb    r0, [r5, r1]
	.hword  0x1e49 @ sub r1, r1, #0x1
	mov     r2, #0x1
	ldrb    r1, [r5, r1]
	and     r0, r2
	and     r1, r2
	cmp     r0, r1
	beq     branch_221fe98
	mov     r0, r7
	mov     r1, r5
	bl      Function_2222c88
branch_221fe98: @ 221fe98 :thumb
	ldr     r0, [pc, #0x1d0] @ 0x222006c, (=0x365)
	mov     r2, #0x0
	mov     r1, r0
	strb    r2, [r5, r0]
	sub     r1, #0x10
	strb    r2, [r5, r1]
	.hword  0x1f40 @ sub r0, r0, #0x5
	ldr     r4, [r5, r0]
	cmp     r4, #0x0
	beq     branch_221fee2

	ldr     r6, [pc, #0x1bc] @ 0x222006c, (=0x365)
branch_AIMoveLoop: @ 221feae :thumb
	mov     r0, #0x1
	tst     r0, r4
	beq     branch_221fed0

	mov     r0, #0xd9
	lsl     r0, r0, #2              @ =0x364
	ldrb    r1, [r5, r0]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_221fec8

	mov     r0, #0xd5
	mov     r1, #0x0
	lsl     r0, r0, #2              @ =0x354
	strb    r1, [r5, r0]
branch_221fec8: @ 221fec8 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      AIHandler
branch_221fed0: @ 221fed0 :thumb
	ldrb    r0, [r5, r6]
	asr     r4, r4, #1
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r6]
	ldr     r0, [pc, #0x194] @ 0x2220070, (=0x355)
	cmp     r4, #0x0
	strb    r1, [r5, r0]
	bne     branch_AIMoveLoop

branch_221fee2: @ 221fee2 :thumb
	mov     r2, #0xd9
	lsl     r2, r2, #2              @ =0x364
	ldrb    r1, [r5, r2]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_221fef6
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	strb    r1, [r0, #0x0]
	b       branch_221ff90

branch_221fef6: @ 221fef6 :thumb
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_221ff04
	ldr     r0, [sp, #0x4]
	mov     r1, #0x5
	strb    r1, [r0, #0x0]
	b       branch_221ff90

branch_221ff04: @ 221ff04 :thumb
	mov     r0, r2
	sub     r0, #0xc
	ldsb    r1, [r5, r0]
	add     r0, sp, #0x10
	add     r2, #0x6b
	strb    r1, [r0, #0x4]
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	ldrb    r3, [r5, r2]
	mov     r2, #0xc0
	mov     r4, #0x1
	mul     r2, r3
	add     r2, r5, r2
	mov     r1, r4
	.hword  0x1c92 @ add r2, r2, #0x2
branch_221ff22: @ 221ff22 :thumb
	ldr     r3, [pc, #0x150] @ 0x2220074, (=0x2d4c)
	ldrh    r3, [r2, r3]
	cmp     r3, #0x0
	beq     branch_221ff4e
	mov     r3, #0xd6
	add     r6, r5, r1
	lsl     r3, r3, #2          @ =0x358 BattleData_MoveScore
	ldsb    r3, [r6, r3]
	ldrb    r6, [r0, #0x4]
	cmp     r6, r3
	bne     branch_221ff42
	add     r6, sp, #0x14
	strb    r3, [r6, r4]
	add     r6, sp, #0x10
	strb    r1, [r6, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
branch_221ff42: @ 221ff42 :thumb
	ldrb    r6, [r0, #0x4]
	cmp     r6, r3
	bge     branch_221ff4e
	strb    r3, [r0, #0x4]
	strb    r1, [r0, #0x0]
	mov     r4, #0x1
branch_221ff4e: @ 221ff4e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x4
	blt     branch_221ff22

	mov     r0, r7
	bl      Function_16_GetRandomNr
	mov     r1, r4
	blx     _s32_div_f
	add     r0, sp, #0x10
	ldrb    r1, [r0, r1]
	ldr     r0, [sp, #0x4]
	strb    r1, [r0, #0x0]

	add     r0, sp, #0x10
	ldrb    r1, [r0, #0x4]
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]

	ldr     r0, [pc, #0xf0] @ 0x2220064, (=BattleData_3cf)
	ldrb    r1, [r5, r0]
	mov     r0, #0x2
	eor     r1, r0
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	bne     branch_221ff90

	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldsh    r0, [r0, r1]
	cmp     r0, #0x64
	bge     branch_221ff90

	ldr     r0, [sp, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r0, #0x0]
branch_221ff90: @ 221ff90 :thumb
	ldr     r0, [sp, #0x8]
	add     r0, #0xc0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x4
	bge     branch_221ffae
	b       branch_221fe4e

branch_221ffae: @ 221ffae :thumb
	mov     r1, #0x10
	add     r0, sp, #0x10
	ldsh    r1, [r0, r1]
	mov     r2, #0x0
	mov     r6, #0x1
	strb    r2, [r0, #0xc]
	add     r2, sp, #0x20
	mov     r4, r6
	add     r2, #0x2
branch_221ffc0: @ 221ffc0 :thumb
	mov     r0, #0x0
	ldsh    r3, [r2, r0]
	cmp     r1, r3
	bne     branch_221ffce
	add     r0, sp, #0x1c
	strb    r4, [r0, r6]
	.hword  0x1c76 @ add r6, r6, #0x1
branch_221ffce: @ 221ffce :thumb
	cmp     r1, r3
	bge     branch_221ffda
	add     r0, sp, #0x10
	mov     r1, r3
	strb    r4, [r0, #0xc]
	mov     r6, #0x1
branch_221ffda: @ 221ffda :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r4, #0x4
	blt     branch_221ffc0

	mov     r0, r7
	bl      Function_16_GetRandomNr
	mov     r1, r6
	blx     _s32_div_f
	add     r0, sp, #0x1c
	ldrb    r3, [r0, r1]
	ldr     r0, [pc, #0x70] @ 0x2220064, (=BattleData_3cf)
	ldrb    r1, [r5, r0]
	add     r2, r5, r1
	mov     r1, r0
	add     r1, #0xb
	strb    r3, [r2, r1]
	ldrb    r2, [r5, r0]
	mov     r1, r0
	add     r1, #0xb
	add     r3, r5, r2
	ldrb    r1, [r3, r1]
	add     r3, sp, #0x18
	add     r0, #0x17
	ldsb    r4, [r3, r1]
	mov     r3, #0xc0
	mul     r3, r2
	add     r3, r5, r3
	lsl     r2, r4, #1
	add     r3, r3, r2
	ldr     r2, [pc, #0x58] @ 0x2220074, (=0x2d4c)
	ldrh    r6, [r3, r2]
	lsl     r2, r6, #4
	add     r2, r5, r2
	ldrh    r2, [r2, r0]
	mov     r0, #0x2
	lsl     r0, r0, #8
	cmp     r2, r0
	bne     branch_222003e
	mov     r0, r7
	bl      Function_16_223e208
	cmp     r0, #0x0
	bne     branch_222003e
	ldr     r0, [pc, #0x2c] @ 0x2220064, (=BattleData_3cf)
	ldrb    r2, [r5, r0]
	add     r0, #0xb
	add     r1, r5, r2
	strb    r2, [r1, r0]
branch_222003e: @ 222003e :thumb
	cmp     r6, #0xae
	bne     branch_222005c

	ldr     r2, [pc, #0x20] @ 0x2220064, (=BattleData_3cf)
	mov     r0, r5
	ldrb    r2, [r5, r2]
	mov     r1, r6
	bl      HasPkmnGhostType
	cmp     r0, #0x0
	bne     branch_222005c

	ldr     r0, [pc, #0x10] @ 0x2220064, (=BattleData_3cf)
	ldrb    r2, [r5, r0]
	add     r0, #0xb
	add     r1, r5, r2
	strb    r2, [r1, r0]
branch_222005c: @ 222005c :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2220064

.word BattleData_3cf @ 0x2220064
.word BattleData_CurHP @ 0x2220068
.word 0x365 @ 0x222006c
.word 0x355 @ 0x2220070
.word 0x2d4c @ 0x2220074
thumb_func_end Function_221fe38



thumb_func_start AIHandler
AIHandler: @ 2220078 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0xd5
	mov     r5, r1
	lsl     r0, r0, #2          @ =0x354
	ldrb    r0, [r5, r0]
	cmp     r0, #0x2
	beq     branch_222015e

	mov     r6, #0xd9
	lsl     r6, r6, #2          @ =0x364
	mov     r4, r6
	sub     r4, #0x10
branch_2220090: @ 2220090 :thumb
	cmp     r0, #0x0
	beq     branch_222009c
	cmp     r0, #0x1
	beq     branch_22200dc
	cmp     r0, #0x2
	b       branch_2220154

branch_222009c: @ 222009c :thumb
    @ load the start offset of the Trainer_AI-routine
	ldr     r1, [pc, #0xc0] @ 0x2220160, (=0x365)  @ load type of trainer (AI)
	ldr     r0, [pc, #0xc4] @ 0x2220164, (=BattleData_AIScriptPtr) @ load start of AI-Script
	ldrb    r1, [r5, r1]
	ldr     r0, [r5, r0]
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	ldr     r0, [pc, #0xbc] @ 0x2220168, (=BattleData_2138)
	str     r1, [r5, r0]

	ldr     r0, [pc, #0xbc] @ 0x222016c, (=BattleData_3cf)
	ldrb    r1, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r3, r5, r0
	ldr     r0, [pc, #0xb8] @ 0x2220170, (=0x355)
	ldrb    r2, [r5, r0]
	ldr     r0, [pc, #0xb8] @ 0x2220174, (=0x2d6c)
	add     r1, r3, r2
	ldrb    r0, [r1, r0]

	cmp     r0, #0x0
	bne     branch_22200c8
	mov     r1, #0x0
	b       branch_22200d0

branch_22200c8: @ 22200c8 :thumb
	lsl     r0, r2, #1
	add     r1, r3, r0
	ldr     r0, [pc, #0xa8] @ 0x2220178, (=0x2d4c)
	ldrh    r1, [r1, r0]
branch_22200d0: @ 22200d0 :thumb
	ldr     r0, [pc, #0xa8] @ 0x222017c, (=0x356)
	strh    r1, [r5, r0]
	ldrb    r0, [r5, r4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r4]
	b       branch_2220154

branch_22200dc: @ 22200dc :thumb
	ldr     r0, [pc, #0x9c] @ 0x222017c, (=0x356)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_22200fe

	ldr     r3, [pc, #0x80] @ 0x2220168, (=BattleData_2138)
	ldr     r2, [pc, #0x7c] @ 0x2220164, (=BattleData_AIScriptPtr)
	ldr     r3, [r5, r3]
	ldr     r2, [r5, r2]
	lsl     r3, r3, #2
	ldr     r2, [r2, r3]
	mov     r0, r7
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x88] @ 0x2220180, (=Jumptable_222eeac)
	mov     r1, r5
	ldr     r2, [r2, r3]
	blx     r2
	b       branch_2220114

branch_22200fe: @ 22200fe :thumb
	ldr     r0, [pc, #0x70] @ 0x2220170, (=0x355)
	mov     r1, #0x0
	ldrb    r0, [r5, r0]
	add     r2, r5, r0
	mov     r0, #0xd6
	lsl     r0, r0, #2          @ =0x358 BattleData_MoveScore
	strb    r1, [r2, r0]
	ldrb    r1, [r5, r6]
	mov     r0, #0x1
	orr     r0, r1
	strb    r0, [r5, r6]
branch_2220114: @ 2220114 :thumb
	mov     r0, #0xd9
	lsl     r0, r0, #2          @ =0x364
	ldrb    r1, [r5, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2220154

	ldr     r0, [pc, #0x4c] @ 0x2220170, (=0x355)
	ldrb    r0, [r5, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x48] @ 0x2220170, (=0x355)
	strb    r1, [r5, r0]
	ldrb    r0, [r5, r0]
	cmp     r0, #0x4
	bcs     branch_2220146

	mov     r0, #0xd9
	lsl     r0, r0, #2          @ =0x364
	ldrb    r1, [r5, r0]
	mov     r0, #0x8
	tst     r0, r1
	bne     branch_2220146

	mov     r0, #0xd5
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x354
	strb    r1, [r5, r0]
	b       branch_222014c

branch_2220146: @ 2220146 :thumb
	ldrb    r0, [r5, r4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r4]
branch_222014c: @ 222014c :thumb
	ldrb    r1, [r5, r6]
	mov     r0, #0xfe
	and     r0, r1
	strb    r0, [r5, r6]
branch_2220154: @ 2220154 :thumb
	mov     r0, #0xd5
	lsl     r0, r0, #2              @ =0x354
	ldrb    r0, [r5, r0]
	cmp     r0, #0x2
	bne     branch_2220090
branch_222015e: @ 222015e :thumb
	pop     {r3-r7,pc}
@ 0x2220160

.pool
.word 0x365 @ 0x2220160
.word BattleData_AIScriptPtr @ 0x2220164
.word BattleData_2138 @ 0x2220168
.word BattleData_3cf @ 0x222016c
.word 0x355 @ 0x2220170
.word 0x2d6c @ 0x2220174
.word 0x2d4c @ 0x2220178
.word 0x356 @ 0x222017c
.word Jumptable_222eeac @ 0x2220180
thumb_func_end AIHandler



thumb_func_start AICmd_RandomJumpLt
AICmd_RandomJumpLt: @ 2220184 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r6
	bl      Function_16_GetRandomNr
	lsr     r2, r0, #31
	lsl     r1, r0, #24
	sub     r1, r1, r2
	mov     r0, #24
	ror     r1, r0
	add     r0, r2, r1

	cmp     r0, r4
	bge     branch_22201c0
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_22201c0: @ 22201c0 :thumb

	pop     {r3-r7,pc}
thumb_func_end AICmd_RandomJumpLt


thumb_func_start AICmd_RandomJumpGt
AICmd_RandomJumpGt: @ 22201c4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r6
	bl      Function_16_GetRandomNr
	lsr     r2, r0, #31
	lsl     r1, r0, #24
	sub     r1, r1, r2
	mov     r0, #0x18
	ror     r1, r0
	add     r0, r2, r1

	cmp     r0, r4
	ble     branch_2220200
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220200: @ 2220200 :thumb
	pop     {r3-r7,pc}
thumb_func_end AICmd_RandomJumpGt


thumb_func_start AICmd_RandomJumpEq
AICmd_RandomJumpEq: @ 2220204 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r6
	bl      Function_16_GetRandomNr
	lsr     r2, r0, #31
	lsl     r1, r0, #24
	sub     r1, r1, r2
	mov     r0, #0x18
	ror     r1, r0
	add     r0, r2, r1

	cmp     r4, r0
	bne     branch_2220240
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220240: @ 2220240 :thumb
	pop     {r3-r7,pc}
thumb_func_end AICmd_RandomJumpEq


thumb_func_start AICmd_RandomJumpNe
AICmd_RandomJumpNe: @ 2220244 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r6
	bl      Function_16_GetRandomNr
	lsr     r2, r0, #31
	lsl     r1, r0, #24
	sub     r1, r1, r2
	mov     r0, #24
	ror     r1, r0
	add     r0, r2, r1

	cmp     r4, r0
	beq     branch_2220280
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220280: @ 2220280 :thumb
	pop     {r3-r7,pc}
thumb_func_end AICmd_RandomJumpNe


thumb_func_start AICmd_AddScore
AICmd_AddScore: @ 2220284 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r2, #0xd6
	lsl     r2, r2, #2          @ =0x358 BattleData_MoveScore
	sub     r3, r2, #0x3        @ =0x355 BattleData_CurrentMove
	ldrb    r5, [r4, r3]
	add     r1, r4, r2
	ldsb    r3, [r1, r5]
	add     r0, r3, r0
	strb    r0, [r1, r5]

	sub     r0, r2, #0x3
	ldrb    r2, [r4, r0]
	ldsb    r0, [r1, r2]

	cmp     r0, #0x0
	bge     branch_22202b4
	mov     r0, #0x0
	strb    r0, [r1, r2]
branch_22202b4: @ 22202b4 :thumb

	pop     {r3-r5,pc}
thumb_func_end AICmd_AddScore


thumb_func_start AICmd_HPLt
AICmd_HPLt: @ 22202b8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot

	mov     r1, #0xc0
	mul     r1, r0
	ldr     r3, =BattleData_CurHP
	add     r2, r5, r1
	ldr     r1, [r2, r3]
	mov     r0, #100
	mul     r0, r1
	add     r1, r3, #0x4
	ldr     r1, [r2, r1]
	blx     _u32_div_f
	cmp     r0, r6
	bhs     branch_2220308

	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220308: @ 2220308 :thumb

	pop     {r3-r7,pc}
@ 0x222030a

.align 2
.pool
thumb_func_end AICmd_HPLt



thumb_func_start AICmd_HPGt
AICmd_HPGt: @ 2220310 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r3, =BattleData_CurHP
	add     r2, r5, r1
	ldr     r1, [r2, r3]
	mov     r0, #100
	mul     r0, r1
	add     r1, r3, #0x4
	ldr     r1, [r2, r1]
	blx     _u32_div_f
	cmp     r0, r6
	bls     branch_2220360
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220360: @ 2220360 :thumb
	pop     {r3-r7,pc}
@ 0x2220362

.align 2
.pool
thumb_func_end AICmd_HPGt



thumb_func_start AICmd_HPEq
AICmd_HPEq: @ 2220368 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r3, =BattleData_CurHP
	add     r2, r5, r1
	ldr     r1, [r2, r3]
	mov     r0, #100
	mul     r0, r1
	add     r1, r3, #0x4
	ldr     r1, [r2, r1]
	blx     _u32_div_f
	cmp     r0, r6
	bne     branch_22203b8

	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_22203b8: @ 22203b8 :thumb
	pop     {r3-r7,pc}
@ 0x22203ba

.align 2
.pool
thumb_func_end AICmd_HPEq



thumb_func_start AICmd_HPNe
AICmd_HPNe: @ 22203c0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r3, =BattleData_CurHP
	add     r2, r5, r1
	ldr     r1, [r2, r3]
	mov     r0, #100
	mul     r0, r1
	add     r1, r3, #0x4
	ldr     r1, [r2, r1]
	blx     _u32_div_f
	cmp     r0, r6
	beq     branch_2220410

	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220410: @ 2220410 :thumb
	pop     {r3-r7,pc}
@ 0x2220412

.align 2
.pool
thumb_func_end AICmd_HPNe



thumb_func_start AICmd_9
AICmd_9: @ 2220418 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, =BattleData_StatusEffect
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	tst     r0, r6
	beq     branch_222045c
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_222045c: @ 222045c :thumb
	pop     {r3-r7,pc}
@ 0x222045e

.align 2
.pool
thumb_func_end AICmd_9



.thumb
AICmd_a: @ 2220464 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, =BattleData_StatusEffect
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	tst     r0, r6
	bne     branch_22204a8
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_22204a8: @ 22204a8 :thumb
	pop     {r3-r7,pc}
@ 0x22204aa

.align 2
.pool



.thumb
AICmd_b: @ 22204b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, =BattleData_2db0
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	tst     r0, r6
	beq     branch_22204f4
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_22204f4: @ 22204f4 :thumb
	pop     {r3-r7,pc}
@ 0x22204f6

.align 2
.pool



.thumb
AICmd_c: @ 22204fc :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, =BattleData_2db0
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	tst     r0, r6
	bne     branch_2220540
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220540: @ 2220540 :thumb
	pop     {r3-r7,pc}
@ 0x2220542

.align 2
.pool



.thumb
AICmd_d: @ 2220548 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	mov     r0, #0xb7
	add     r1, r5, r1
	lsl     r0, r0, #6              @ =0x2dc0
	ldr     r0, [r1, r0]
	tst     r0, r6
	beq     branch_222058e
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_222058e: @ 222058e :thumb
	pop     {r3-r7,pc}
@ 0x2220590


.thumb
AICmd_e: @ 2220590 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	mov     r0, #0xb7
	add     r1, r5, r1
	lsl     r0, r0, #6                  @ =0x2dc0
	ldr     r0, [r1, r0]
	tst     r0, r6
	bne     branch_22205d6
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_22205d6: @ 22205d6 :thumb
	pop     {r3-r7,pc}
@ 0x22205d8


.thumb
AICmd_f: @ 22205d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	str     r0, [sp, #0x0]

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	mov     r0, r7
	bl      Function_16_223e208
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2              @ =0x1bc
	ldr     r0, [r1, r0]
	tst     r0, r6
	beq     branch_2220626
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2220626: @ 2220626 :thumb
	pop     {r3-r7,pc}
@ 0x2220628


.thumb
AICmd_10: @ 2220628 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	str     r0, [sp, #0x0]
	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	mov     r0, r7
	bl      Function_16_223e208
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2              @ =0x1bc
	ldr     r0, [r1, r0]
	tst     r0, r6
	bne     branch_2220676
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2220676: @ 2220676 :thumb
	pop     {r3-r7,pc}
@ 0x2220678


.thumb
AICmd_11: @ 2220678 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r1, r0

	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35C
	ldr     r0, [r5, r0]
	cmp     r0, r4
	bge     branch_22206a4
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_22206a4: @ 22206a4 :thumb
	pop     {r3-r5,pc}
@ 0x22206a6


.align 2, 0
.thumb
AICmd_12: @ 22206a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r1, r0

	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35C
	ldr     r0, [r5, r0]
	cmp     r0, r4
	ble     branch_22206d4
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_22206d4: @ 22206d4 :thumb
	pop     {r3-r5,pc}
@ 0x22206d6


.align 2, 0
.thumb
AICmd_13: @ 22206d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord

	mov     r1, r0
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ r0 = 0x35c
	ldr     r0, [r5, r0]
	cmp     r0, r4
	bne     branch_2220704
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2220704: @ 2220704 :thumb
	pop     {r3-r5,pc}
@ 0x2220706


.align 2, 0
.thumb
AICmd_14: @ 2220708 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord

	mov     r1, r0
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	ldr     r0, [r5, r0]
	cmp     r0, r4
	beq     branch_2220734
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2220734: @ 2220734 :thumb
	pop     {r3-r5,pc}
@ 0x2220736


.align 2, 0
.thumb
AICmd_15: @ 2220738 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord

	mov     r1, r0
	mov     r0, #0xd7
	lsl     r0, r0, #2              @ =0x35c
	ldr     r0, [r5, r0]
	tst     r0, r4
	beq     branch_2220764
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2220764: @ 2220764 :thumb
	pop     {r3-r5,pc}
@ 0x2220766


.align 2, 0
.thumb
AICmd_16: @ 2220768 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r1, r0

	mov     r0, #0xd7
	lsl     r0, r0, #2          @ r0=0x35c
	ldr     r0, [r5, r0]
	tst     r0, r4
	bne     branch_2220794
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2220794: @ 2220794 :thumb
	pop     {r3-r5,pc}
@ 0x2220796


@ 0x17, ?, BranchOffset
thumb_func_start AICmd_MoveEq
AICmd_MoveEq: @ 2220798 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord

	mov     r1, r0
	ldr     r0, =BattleData_CurrentMoveID
	ldrh    r0, [r5, r0] @ r5=22C2A4C
	cmp     r0, r4
	bne     branch_22207c2
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_22207c2: @ 22207c2 :thumb
	pop     {r3-r5,pc}
@ 0x22207c4

.pool
thumb_func_end AICmd_MoveEq



thumb_func_start AICmd_MoveNe
AICmd_MoveNe: @ 22207c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord

	mov     r1, r0
	ldr     r0, =BattleData_CurrentMoveID
	ldrh    r0, [r5, r0]
	cmp     r0, r4
	beq     branch_22207f2
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_22207f2: @ 22207f2 :thumb
	pop     {r3-r5,pc}
@ 0x22207f4

.pool
thumb_func_end AICmd_MoveNe



.thumb
AICmd_19: @ 22207f8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, r4
	bl      Function_2222d10
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2220848
	mov     r6, #0xd7
	mov     r7, r1
	lsl     r6, r6, #2          @ =0x35c
branch_222082a: @ 222082a :thumb
	ldr     r1, [r5, r6]
	cmp     r1, r0
	bne     branch_222083a
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      AIHandler_AddToPointer
	pop     {r3-r7,pc}

branch_222083a: @ 222083a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r0, r5
	mov     r1, r4
	bl      Function_2222d10
	cmp     r0, r7
	bne     branch_222082a
branch_2220848: @ 2220848 :thumb
	pop     {r3-r7,pc}
@ 0x222084a


.align 2, 0
.thumb
AICmd_1a: @ 222084c :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, r4
	bl      Function_2222d10
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2220892
	mov     r6, #0xd7
	mov     r7, r1
	lsl     r6, r6, #2          @ =0x35c
branch_222087e: @ 222087e :thumb
	ldr     r1, [r5, r6]
	cmp     r1, r0
	beq     branch_222089a
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r0, r5
	mov     r1, r4
	bl      Function_2222d10
	cmp     r0, r7
	bne     branch_222087e
branch_2220892: @ 2220892 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_222089a: @ 222089a :thumb
	pop     {r3-r7,pc}
@ 0x222089c


.thumb
AICmd_1b: @ 222089c :thumb
	push    {r3-r7,lr}
	mov     r6, r1

	mov     r0, r6
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r6
	bl      AIHandler_LoadWord
	ldr     r1, [pc, #0x44] @ 0x22208f4, (=BattleData_3cf)
	mov     r12, r0
	ldrb    r2, [r6, r1]
	mov     r1, #0xc0
	mov     r0, #0x0
	mul     r1, r2
	add     r3, r6, r1
	ldr     r7, [pc, #0x38] @ 0x22208f8, (=0x2d4c)
	mov     r1, r3
	mov     r2, r0
branch_22208c2: @ 22208c2 :thumb
	ldrh    r4, [r1, r7]
	cmp     r4, #0x0
	beq     branch_22208da
	ldr     r4, [pc, #0x2c] @ 0x22208f8, (=0x2d4c)
	add     r5, r3, r2
	ldrh    r4, [r5, r4]
	lsl     r4, r4, #4
	add     r5, r6, r4
	ldr     r4, [pc, #0x28] @ 0x22208fc, (=0x3e1)
	ldrb    r4, [r5, r4]
	cmp     r4, #0x0
	bne     branch_22208e4
branch_22208da: @ 22208da :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, #0x4
	blt     branch_22208c2
branch_22208e4: @ 22208e4 :thumb
	cmp     r0, #0x4
	bge     branch_22208f0
	mov     r0, r6
	mov     r1, r12
	bl      AIHandler_AddToPointer
branch_22208f0: @ 22208f0 :thumb
	pop     {r3-r7,pc}
@ 0x22208f2

.align 2
.word BattleData_3cf @ 0x22208f4
.word 0x2d4c @ 0x22208f8
.word 0x3e1 @ 0x22208fc



.thumb
AICmd_1c: @ 2220900 :thumb
	push    {r3-r7,lr}
	mov     r6, r1

	mov     r0, r6
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r6
	bl      AIHandler_LoadWord
	ldr     r1, [pc, #0x44] @ 0x2220958, (=BattleData_3cf)
	mov     r12, r0

	ldrb    r2, [r6, r1]
	mov     r1, #0xc0
	mov     r0, #0x0
	mul     r1, r2
	add     r3, r6, r1
	ldr     r7, [pc, #0x38] @ 0x222095c, (=0x2d4c)
	mov     r1, r3
	mov     r2, r0
branch_2220926: @ 2220926 :thumb
	ldrh    r4, [r1, r7]
	cmp     r4, #0x0
	beq     branch_222093e

	ldr     r4, [pc, #0x2c] @ 0x222095c, (=0x2d4c)
	add     r5, r3, r2
	ldrh    r4, [r5, r4]
	lsl     r4, r4, #4
	add     r5, r6, r4
	ldr     r4, [pc, #0x28] @ 0x2220960, (=0x3e1)
	ldrb    r4, [r5, r4]
	cmp     r4, #0x0
	bne     branch_2220948
branch_222093e: @ 222093e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, #0x4
	blt     branch_2220926
branch_2220948: @ 2220948 :thumb
	cmp     r0, #0x4
	bne     branch_2220954
	mov     r0, r6
	mov     r1, r12
	bl      AIHandler_AddToPointer
branch_2220954: @ 2220954 :thumb

	pop     {r3-r7,pc}
@ 0x2220956

.align 2
.word BattleData_3cf @ 0x2220958
.word 0x2d4c @ 0x222095c
.word 0x3e1 @ 0x2220960



thumb_func_start AICmd_GetRoundNr
AICmd_GetRoundNr: @ 2220964 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, #0x15
	lsl     r0, r0, #4          @ =0x150 BattleData_RoundNr
	ldr     r1, [r4, r0]
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35C
	str     r1, [r4, r0]

	pop     {r4,pc}
thumb_func_end AICmd_GetRoundNr


thumb_func_start AICmd_GetType
AICmd_GetType: @ 2220980 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	cmp     r0, #0x8
	bls     branch_222099a
	b       branch_2220aa4

branch_222099a: @ 222099a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22209a6

Jumppoints_22209a6:
.hword branch_22209ce - Jumppoints_22209a6 - 2 @ 0x0
.hword branch_22209b8 - Jumppoints_22209a6 - 2 @ 0x1
.hword branch_22209fc - Jumppoints_22209a6 - 2 @ 0x2
.hword branch_22209e6 - Jumppoints_22209a6 - 2 @ 0x3
.hword branch_2220a14 - Jumppoints_22209a6 - 2 @ 0x4
.hword branch_2220a46 - Jumppoints_22209a6 - 2 @ 0x5
.hword branch_2220a28 - Jumppoints_22209a6 - 2 @ 0x6
.hword branch_2220a84 - Jumppoints_22209a6 - 2 @ 0x7
.hword branch_2220a66 - Jumppoints_22209a6 - 2 @ 0x8

branch_22209b8: @ 22209b8 :thumb
	ldr     r1, [pc, #0xf0] @ 0x2220aac, (=BattleData_3cf)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r3-r5,pc}

branch_22209ce: @ 22209ce :thumb
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r3-r5,pc}

branch_22209e6: @ 22209e6 :thumb
	ldr     r1, [pc, #0xc4] @ 0x2220aac, (=BattleData_3cf)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1

	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r3-r5,pc}

branch_22209fc: @ 22209fc :thumb
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1

	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r3-r5,pc}

branch_2220a14: @ 2220a14 :thumb
	ldr     r0, [pc, #0x98] @ 0x2220ab0, (=0x356)
	ldrh    r1, [r4, r0]
	lsl     r1, r1, #4
	add     r2, r4, r1

	mov     r1, r0
	add     r1, #0x8c               @ =0x3e2
	ldrb    r1, [r2, r1]

	.hword  0x1d80 @ add r0, r0, #0x6 @ =0x35c
	str     r1, [r4, r0]
	pop     {r3-r5,pc}

branch_2220a28: @ 2220a28 :thumb
	ldr     r1, [pc, #0x80] @ 0x2220aac, (=BattleData_3cf)
	mov     r0, r5
	ldrb    r1, [r4, r1]
	bl      Function_16_223e258
	mov     r1, r0
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r3-r5,pc}

branch_2220a46: @ 2220a46 :thumb
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r1, [r4, r1]
	mov     r0, r5
	bl      Function_16_223e258
	mov     r1, r0
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r3-r5,pc}

branch_2220a66: @ 2220a66 :thumb
	ldr     r1, [pc, #0x44] @ 0x2220aac, (=BattleData_3cf)
	mov     r0, r5
	ldrb    r1, [r4, r1]
	bl      Function_16_223e258
	mov     r1, r0
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r3-r5,pc}

branch_2220a84: @ 2220a84 :thumb
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r1, [r4, r1]
	mov     r0, r5
	bl      Function_16_223e258
	mov     r1, r0
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r3-r5,pc}

branch_2220aa4: @ 2220aa4 :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x2220aaa

.align 2
.word BattleData_3cf @ 0x2220aac
.word 0x356 @ 0x2220ab0
thumb_func_end AICmd_GetType



.thumb
AICmd_52: @ 2220ab4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r4, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r4, r0
	beq     branch_2220afc
	mov     r0, r5
	mov     r1, r6
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r4, r0
	bne     branch_2220b06
branch_2220afc: @ 2220afc :thumb
	mov     r0, #0xd7
	mov     r1, #0x1
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r4-r6,pc}

branch_2220b06: @ 2220b06 :thumb
	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r4-r6,pc}
@ 0x2220b10


.thumb
AICmd_1f: @ 2220b10 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, =BattleData_CurrentMoveID
	ldrh    r1, [r4, r0]
	lsl     r1, r1, #4
	add     r2, r4, r1
	mov     r1, r0
	add     r1, #0x8b           @ =0x3e1
	ldrb    r1, [r2, r1]

	.hword  0x1d80 @ add r0, r0, #0x6 @ =0x35c
	str     r1, [r4, r0]

	pop     {r4,pc}
@ 0x2220b30

.pool



.thumb
AICmd_20: @ 2220b34 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r6, r1
	str     r0, [sp, #0x18]

	mov     r0, r6
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r6
	bl      AIHandler_LoadWord

	ldr     r2, [pc, #0x104] @ 0x2220c50, (=0x356)
	str     r0, [sp, #0x1c]
	ldrh    r3, [r6, r2]
	add     r2, #0x88
	ldr     r1, [pc, #0x100] @ 0x2220c54, (=Unknown_222ee90)
	lsl     r7, r3, #4
	add     r3, r6, r7
	ldrh    r3, [r3, r2]
	ldr     r2, [pc, #0xfc] @ 0x2220c58, (=0xffff)
	mov     r0, #0x0
branch_2220b5e: @ 2220b5e :thumb
	ldrh    r4, [r1, #0x0]
	cmp     r3, r4
	beq     branch_2220b6e
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r4, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r2
	bne     branch_2220b5e
branch_2220b6e: @ 2220b6e :thumb
	ldr     r2, [pc, #0xec] @ 0x2220c5c, (=Unknown_222ee78)
	ldr     r4, [pc, #0xe4] @ 0x2220c58, (=0xffff)
	mov     r1, #0x0
branch_2220b74: @ 2220b74 :thumb
	ldrh    r5, [r2, #0x0]
	cmp     r3, r5
	beq     branch_2220b84
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r5, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r5, r4
	bne     branch_2220b74
branch_2220b84: @ 2220b84 :thumb
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xd4] @ 0x2220c5c, (=Unknown_222ee78)
	ldrh    r1, [r1, r2]
	ldr     r2, [pc, #0xcc] @ 0x2220c58, (=0xffff)
	cmp     r1, r2
	bne     branch_2220ba4
	ldr     r1, [pc, #0xcc] @ 0x2220c60, (=0x3e1)
	add     r3, r6, r7
	ldrb    r1, [r3, r1]
	cmp     r1, #0x1
	bls     branch_2220c42
	lsl     r1, r0, #1
	ldr     r0, [pc, #0xb4] @ 0x2220c54, (=Unknown_222ee90)
	ldrh    r0, [r0, r1]
	cmp     r0, r2
	bne     branch_2220c42
branch_2220ba4: @ 2220ba4 :thumb

	ldr     r7, [pc, #0xbc] @ 0x2220c64, (=BattleData_3cf)
	mov     r4, #0x0
	add     r5, sp, #0x20
branch_2220baa: @ 2220baa :thumb
	ldrb    r1, [r6, r7]
	mov     r2, r4
	mov     r0, r6
	add     r2, #0xa
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	strb    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x6
	blt     branch_2220baa

	ldr     r0, [pc, #0xa0] @ 0x2220c64, (=BattleData_3cf)
	ldrb    r4, [r6, r0]
	mov     r0, #0xc0
	mov     r5, r4
	mul     r5, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_16_2255a4c
	add     r1, sp, #0x28
	str     r1, [sp, #0x0]
	ldr     r3, [pc, #0x8c] @ 0x2220c68, (=0x2db8)
	add     r1, r6, r5
	ldrh    r1, [r1, r3]
	mov     r2, r4
	str     r1, [sp, #0x4]
	add     r1, sp, #0x20
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r6, r0
	mov     r0, r3
	add     r0, #0x14
	ldr     r0, [r1, r0]
	sub     r3, #0x6c
	lsl     r0, r0, #10
	lsr     r0, r0, #29
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x1c]
	add     r3, r6, r3
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	add     r3, r3, r5
	bl      Function_2222d7c
	ldr     r0, [pc, #0x5c] @ 0x2220c6c, (=0x355)
	add     r1, sp, #0x28
	ldrb    r0, [r6, r0]
	mov     r3, #0x0
	lsl     r0, r0, #2
	ldr     r2, [r1, r0]
branch_2220c18: @ 2220c18 :thumb
	ldr     r0, [r1, #0x0]
	cmp     r0, r2
	bgt     branch_2220c26
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r3, #0x4
	blt     branch_2220c18
branch_2220c26: @ 2220c26 :thumb
	cmp     r3, #0x4
	bne     branch_2220c36
	mov     r0, #0xd7
	mov     r1, #0x2
	lsl     r0, r0, #2          @ =0x35c
	add     sp, #0x38
	str     r1, [r6, r0]
	pop     {r3-r7,pc}

branch_2220c36: @ 2220c36 :thumb
	mov     r0, #0xd7
	mov     r1, #0x1
	lsl     r0, r0, #2          @ =0x35c
	add     sp, #0x38
	str     r1, [r6, r0]
	pop     {r3-r7,pc}

branch_2220c42: @ 2220c42 :thumb
	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r6, r0]
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2220c4e

.align 2
.word 0x356 @ 0x2220c50
.word Unknown_222ee90 @ 0x2220c54
.word 0xffff @ 0x2220c58
.word Unknown_222ee78 @ 0x2220c5c
.word 0x3e1 @ 0x2220c60
.word BattleData_3cf @ 0x2220c64
.word 0x2db8 @ 0x2220c68
.word 0x355 @ 0x2220c6c



.thumb
AICmd_21: @ 2220c70 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0
	lsl     r1, r1, #24

	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	lsl     r0, r0, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0xc] @ 0x2220ca0, (=BattleData_307c)
	ldrh    r1, [r1, r0]
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x2220c9e

.align 2
.word BattleData_307c @ 0x2220ca0



thumb_func_start AICmd_HasType
AICmd_HasType: @ 2220ca4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r1, r0

	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	ldr     r0, [r5, r0]
	cmp     r4, r0
	bne     branch_2220cd0
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2220cd0: @ 2220cd0 :thumb

	pop     {r3-r5,pc}
thumb_func_end AICmd_HasType


.align 2, 0
.thumb
AICmd_23: @ 2220cd4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord

	mov     r1, r0
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	ldr     r0, [r5, r0]
	cmp     r4, r0
	beq     branch_2220d00
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2220d00: @ 2220d00 :thumb

	pop     {r3-r5,pc}
@ 0x2220d02


.align 2, 0
.thumb
AICmd_24: @ 2220d04 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r3, =BattleData_3cf
	mov     r0, r6
	ldrb    r2, [r5, r3]
	.hword  0x1c5b @ add r3, r3, #0x1       @ =0x3d0
	ldrb    r3, [r5, r3]
	mov     r1, r5
	bl      Function_16_2252ec8
	cmp     r4, r0
	bne     branch_2220d42
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220d42: @ 2220d42 :thumb
	pop     {r3-r7,pc}
@ 0x2220d44

.pool



.thumb
AICmd_25: @ 2220d48 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r3, =BattleData_3cf
	mov     r0, r6
	ldrb    r2, [r5, r3]
	.hword  0x1c5b @ add r3, r3, #0x1       @ =0x3d0
	ldrb    r3, [r5, r3]
	mov     r1, r5
	bl      Function_16_2252ec8
	cmp     r4, r0
	beq     branch_2220d86
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2220d86: @ 2220d86 :thumb
	pop     {r3-r7,pc}
@ 0x2220d88

.pool



.thumb
AICmd_26: @ 2220d8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r2, r0

	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]

	lsl     r1, r2, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_16_223df20
	str     r0, [sp, #0xc]
	ldr     r1, [r7, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2220de6
	ldr     r0, [sp, #0x0]
	add     r1, r5, r0
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	ldr     r1, [sp, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, r7
	bl      Function_16_223e258
	add     r1, r5, r0
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x4]
	b       branch_2220df2

branch_2220de6: @ 2220de6 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r5, r0
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
branch_2220df2: @ 2220df2 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	mov     r4, #0x0
	bl      Function_16_223df60
	cmp     r0, #0x0
	ble     branch_2220e5c
branch_2220e00: @ 2220e00 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	ldr     r1, [sp, #0x8]
	mov     r6, r0
	cmp     r4, r1
	beq     branch_2220e4e
	ldr     r1, [sp, #0x4]
	cmp     r4, r1
	beq     branch_2220e4e

	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2220e4e

	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2220e4e

	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, =0x1ee
	cmp     r0, r1
	beq     branch_2220e4e
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	ldr     r0, [r5, r0]
	add     r1, r0, #0x1
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
branch_2220e4e: @ 2220e4e :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_16_223df60
	cmp     r4, r0
	blt     branch_2220e00
branch_2220e5c: @ 2220e5c :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2220e60

.pool



.thumb
AICmd_27: @ 2220e68 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, =BattleData_CurrentMoveID
	ldrh    r1, [r4, r0]
	.hword  0x1d80 @ add r0, r0, #0x6       @ =0x35c
	str     r1, [r4, r0]

	pop     {r4,pc}
@ 0x2220e7e

.align 2
.pool



.thumb
AICmd_28: @ 2220e84 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, =BattleData_CurrentMoveID
	ldrh    r1, [r4, r0]
	lsl     r1, r1, #4
	add     r2, r4, r1
	mov     r1, r0
	add     r1, #0x88
	ldrh    r1, [r2, r1]
	.hword  0x1d80 @ add r0, r0, #0x6       @ 0x35c
	str     r1, [r4, r0]

	pop     {r4,pc}
@ 0x2220ea4

.pool



thumb_func_start AICmd_GetAbility
AICmd_GetAbility: @ 2220ea8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	lsl     r1, r7, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	mov     r3, #0xb7
	mov     r2, #0x2
	mov     r0, #0xc0
	mov     r6, r1
	mul     r6, r0
	add     r0, r5, r6
	lsl     r3, r3, #6              @ =0x2dc0
	ldr     r4, [r0, r3]
	lsl     r2, r2, #20
	tst     r2, r4
	beq     branch_2220eea
	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r3-r7,pc}

branch_2220eea: @ 2220eea :thumb
	ldr     r2, =BattleData_3cf
	ldrb    r4, [r5, r2]
	cmp     r4, r1
	beq     branch_2220f72
	cmp     r7, #0x3
	beq     branch_2220f72
	add     r4, r5, r1
	mov     r1, r2
	sub     r1, #0x3f
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_2220f08
	sub     r2, #0x73 @ =0x35c
	str     r1, [r5, r2]
	pop     {r3-r7,pc}

branch_2220f08: @ 2220f08 :thumb
	mov     r1, r3
	sub     r1, #0x59
	ldrb    r1, [r0, r1]
	cmp     r1, #0x17
	beq     branch_2220f1a
	cmp     r1, #0x2a
	beq     branch_2220f1a
	cmp     r1, #0x47
	bne     branch_2220f22
branch_2220f1a: @ 2220f1a :thumb
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r3-r7,pc}

branch_2220f22: @ 2220f22 :thumb
	sub     r3, #0x80
	add     r7, r5, r3
	ldrh    r0, [r7, r6]
	mov     r1, #PKMNBASEDATA_ABILITY1
	bl      GetPkmnBaseData1
	mov     r4, r0

	ldrh    r0, [r7, r6]
	mov     r1, #PKMNBASEDATA_ABILITY2
	bl      GetPkmnBaseData1
	mov     r6, r0

	cmp     r4, #0x0
	beq     branch_2220f5e
	cmp     r6, #0x0
	beq     branch_2220f5e

	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2220f56
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r4, [r5, r0]
	pop     {r3-r7,pc}

branch_2220f56: @ 2220f56 :thumb
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r6, [r5, r0]
	pop     {r3-r7,pc}

branch_2220f5e: @ 2220f5e :thumb
	cmp     r4, #0x0
	beq     branch_2220f6a
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r4, [r5, r0]
	pop     {r3-r7,pc}

branch_2220f6a: @ 2220f6a :thumb
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r6, [r5, r0]
	pop     {r3-r7,pc}

branch_2220f72: @ 2220f72 :thumb
	ldr     r0, =BattleData_Ability
	add     r1, r5, r6
	ldrb    r1, [r1, r0]
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x2220f80

.pool
thumb_func_end AICmd_GetAbility



.thumb
AICmd_53: @ 2220f88 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	mov     r2, #0x2
	mov     r12, r1
	add     r6, r5, r1
	mov     r1, #0xb7
	lsl     r1, r1, #6              @ =0x2dc0
	ldr     r3, [r6, r1]
	lsl     r2, r2, #20
	tst     r2, r3
	beq     branch_2220fc8
	mov     r4, #0x0
	b       branch_2221034

branch_2220fc8: @ 2220fc8 :thumb
	cmp     r4, #0x0
	beq     branch_2220fd0
	cmp     r4, #0x2
	bne     branch_2221030
branch_2220fd0: @ 2220fd0 :thumb
	mov     r1, #0x39
	add     r2, r5, r0
	lsl     r1, r1, #4
	ldrb    r4, [r2, r1]
	cmp     r4, #0x0
	beq     branch_2220fe2
	sub     r1, #0x34
	str     r4, [r5, r1]
	b       branch_2221034

branch_2220fe2: @ 2220fe2 :thumb
	mov     r1, r12
	add     r2, r5, r1
	ldr     r1, =BattleData_Ability
	ldrb    r4, [r2, r1]
	cmp     r4, #0x17
	beq     branch_2221034
	cmp     r4, #0x2a
	beq     branch_2221034
	cmp     r4, #0x47
	beq     branch_2221034
	sub     r1, #0x27
	add     r6, r5, r1
	mov     r1, #0xc0
	mul     r1, r0
	ldrh    r0, [r6, r1]

	str     r1, [sp, #0x0]
	mov     r1, #PKMNBASEDATA_ABILITY1
	bl      GetPkmnBaseData1
	mov     r4, r0

	ldr     r0, [sp, #0x0]
	mov     r1, #PKMNBASEDATA_ABILITY2
	ldrh    r0, [r6, r0]
	bl      GetPkmnBaseData1

	cmp     r4, #0x0
	beq     branch_2221028
	cmp     r0, #0x0
	beq     branch_2221028
	cmp     r4, r7
	beq     branch_2221024
	cmp     r0, r7
	bne     branch_2221034
branch_2221024: @ 2221024 :thumb
	mov     r4, #0x0
	b       branch_2221034

branch_2221028: @ 2221028 :thumb
	cmp     r4, #0x0
	bne     branch_2221034
	mov     r4, r0
	b       branch_2221034

branch_2221030: @ 2221030 :thumb
	sub     r1, #0x59
	ldrb    r4, [r6, r1]
branch_2221034: @ 2221034 :thumb
	cmp     r4, #0x0
	bne     branch_2221042
	mov     r0, #0xd7
	mov     r1, #0x2
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r3-r7,pc}

branch_2221042: @ 2221042 :thumb
	cmp     r4, r7
	bne     branch_2221050
	mov     r0, #0xd7
	mov     r1, #0x1
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r3-r7,pc}

branch_2221050: @ 2221050 :thumb
	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x222105a

.align 2
.pool



.thumb
AICmd_2a: @ 2221060 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	mov     r0, #0x0
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [sp, #0x10]
	str     r0, [r5, r1]
	mov     r4, r0
branch_222107c: @ 222107c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x84] @ 0x2221108, (=BattleData_3cf)
	ldrb    r2, [r5, r0]
	mov     r0, #0xc0
	mul     r0, r2
	add     r0, r5, r0
	add     r1, r4, r0
	ldr     r0, [pc, #0x7c] @ 0x222110c, (=0x2d4c)
	ldrh    r6, [r1, r0]
	mov     r0, r7
	mov     r1, r5
	mov     r3, r6
	bl      Function_222327c
	mov     r3, r0
	cmp     r6, #0x0
	beq     branch_22210f8
	ldr     r0, [pc, #0x64] @ 0x2221108, (=BattleData_3cf)
	mov     r1, r5
	ldrb    r0, [r5, r0]
	mov     r2, r6
	str     r0, [sp, #0x0]
	mov     r0, #0x3d
	lsl     r0, r0, #4          @ =0x3d0
	ldrb    r0, [r5, r0]
	str     r0, [sp, #0x4]
	mov     r0, #0x28
	str     r0, [sp, #0x8]
	add     r0, sp, #0x14
	str     r0, [sp, #0xc]
	mov     r0, r7
	bl      Function_16_2254fa8
	cmp     r0, #0x78
	bne     branch_22210c8
	mov     r0, #0x50
	b       branch_22210de

branch_22210c8: @ 22210c8 :thumb
	cmp     r0, #0xf0
	bne     branch_22210d0
	mov     r0, #0xa0
	b       branch_22210de

branch_22210d0: @ 22210d0 :thumb
	cmp     r0, #0x1e
	bne     branch_22210d8
	mov     r0, #0x14
	b       branch_22210de

branch_22210d8: @ 22210d8 :thumb
	cmp     r0, #0xf
	bne     branch_22210de
	mov     r0, #0xa
branch_22210de: @ 22210de :thumb
	ldr     r2, [sp, #0x14]
	ldr     r1, [pc, #0x2c] @ 0x2221110, (=0x140808)
	tst     r1, r2
	beq     branch_22210e8
	mov     r0, #0x0
branch_22210e8: @ 22210e8 :thumb
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	ldr     r1, [r5, r1]
	cmp     r1, r0
	bcs     branch_22210f8
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r5, r1]
branch_22210f8: @ 22210f8 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	blt     branch_222107c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2221108

.word BattleData_3cf @ 0x2221108
.word 0x2d4c @ 0x222110c
.word 0x140808 @ 0x2221110



.thumb
AICmd_2b: @ 2221114 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x10]

	mov     r0, #0x0
	str     r0, [sp, #0x14]

	ldr     r3, [pc, #0x68] @ 0x22211a4, (=BattleData_3cf)
	mov     r0, r5
	ldrb    r6, [r4, r3]
	sub     r3, #0x79 @ =0x356
	ldrh    r3, [r4, r3]
	mov     r1, r4
	mov     r2, r6
	bl      Function_222327c

	mov     r2, #0x3d
	str     r6, [sp, #0x0]
	lsl     r2, r2, #4          @ =0x3d0
	mov     r3, r0
	ldrb    r0, [r4, r2]
	sub     r2, #0x7a @ =0x356
	mov     r1, r4
	str     r0, [sp, #0x4]

	mov     r0, #0x28
	str     r0, [sp, #0x8]

	add     r0, sp, #0x14
	str     r0, [sp, #0xc]

	ldrh    r2, [r4, r2]
	mov     r0, r5
	bl      Function_16_2254fa8
	cmp     r0, #0x78
	bne     branch_2221172
	mov     r0, #0x50
	b       branch_2221188

branch_2221172: @ 2221172 :thumb
	cmp     r0, #0xf0
	bne     branch_222117a
	mov     r0, #0xa0
	b       branch_2221188

branch_222117a: @ 222117a :thumb
	cmp     r0, #0x1e
	bne     branch_2221182
	mov     r0, #0x14
	b       branch_2221188

branch_2221182: @ 2221182 :thumb
	cmp     r0, #0xf
	bne     branch_2221188
	mov     r0, #0xa
branch_2221188: @ 2221188 :thumb
	ldr     r2, [sp, #0x14]
	ldr     r1, [pc, #0x1c] @ 0x22211a8, (=0x140808)
	tst     r1, r2
	beq     branch_2221192
	mov     r0, #0x0
branch_2221192: @ 2221192 :thumb
	cmp     r0, r7
	bne     branch_222119e
	ldr     r1, [sp, #0x10]
	mov     r0, r4
	bl      AIHandler_AddToPointer
branch_222119e: @ 222119e :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22211a2

.align 2
.word BattleData_3cf @ 0x22211a4
.word 0x140808 @ 0x22211a8



.thumb
AICmd_2c: @ 22211ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	str     r1, [sp, #0x0]

	mov     r0, r1
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, [sp, #0x0]
	bl      AIHandler_LoadWord
	mov     r4, r0

	ldr     r0, [sp, #0x0]
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x10]

	ldr     r0, [sp, #0x0]
	bl      AIHandler_LoadWord
	str     r0, [sp, #0xc]

	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r6, r0
	ldr     r1, [r7, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2221206
	ldr     r0, [sp, #0x0]
	add     r1, r0, r6
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	mov     r1, r6
	str     r0, [sp, #0x8]
	mov     r0, r7
	bl      Function_16_223e258
	ldr     r1, [sp, #0x0]
	add     r1, r1, r0
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x4]
	b       branch_2221212

branch_2221206: @ 2221206 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r0, r6
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
branch_2221212: @ 2221212 :thumb
	mov     r0, r7
	mov     r1, r6
	bl      Function_16_223df20
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r1, r6
	mov     r5, #0x0
	bl      Function_16_223df60
	cmp     r0, #0x0
	ble     branch_2221294
branch_222122a: @ 222122a :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	ldr     r1, [sp, #0x8]
	mov     r4, r0
	cmp     r5, r1
	beq     branch_2221286
	ldr     r1, [sp, #0x4]
	cmp     r5, r1
	beq     branch_2221286

	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2221286

	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2221286

	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, =0x1ee
	cmp     r0, r1
	beq     branch_2221286

	mov     r0, r4
	mov     r1, #PKMNDATA_STATUSEFFECT
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x10]
	tst     r0, r1
	beq     branch_2221286

	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	bl      AIHandler_AddToPointer
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_2221286: @ 2221286 :thumb
	mov     r0, r7
	mov     r1, r6
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_16_223df60
	cmp     r5, r0
	blt     branch_222122a
branch_2221294: @ 2221294 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2221298

.pool



.thumb
AICmd_2d: @ 22212a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, r1
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	ldr     r0, [sp, #0x0]
	bl      AIHandler_LoadWord
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	bl      AIHandler_LoadWord
	str     r0, [sp, #0xc]
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r6, r0
	ldr     r1, [r7, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22212fa
	ldr     r0, [sp, #0x0]
	add     r1, r0, r6
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	mov     r1, r6
	str     r0, [sp, #0x8]
	mov     r0, r7
	bl      Function_16_223e258
	ldr     r1, [sp, #0x0]
	add     r1, r1, r0
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x4]
	b       branch_2221306

branch_22212fa: @ 22212fa :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r0, r6
	ldr     r0, =BattleData_219c
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
branch_2221306: @ 2221306 :thumb
	mov     r0, r7
	mov     r1, r6
	bl      Function_16_223df20
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r1, r6
	mov     r5, #0x0
	bl      Function_16_223df60
	cmp     r0, #0x0
	ble     branch_2221388
branch_222131e: @ 222131e :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	ldr     r1, [sp, #0x8]
	mov     r4, r0
	cmp     r5, r1
	beq     branch_222137a
	ldr     r1, [sp, #0x4]
	cmp     r5, r1
	beq     branch_222137a

	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222137a

	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222137a

	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, =0x1ee
	cmp     r0, r1
	beq     branch_222137a

	mov     r0, r4
	mov     r1, #PKMNDATA_STATUSEFFECT
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x10]
	tst     r0, r1
	bne     branch_222137a
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	bl      AIHandler_AddToPointer
	add     sp, #0x18
	pop     {r3-r7,pc}

branch_222137a: @ 222137a :thumb
	mov     r0, r7
	mov     r1, r6
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_16_223df60
	cmp     r5, r0
	blt     branch_222131e
branch_2221388: @ 2221388 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222138c

.pool



.thumb
AICmd_2e: @ 2221394 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]

	mov     r1, #0x6
	lsl     r1, r1, #6          @ =0x180 BattleData_Weather
	ldr     r2, [r4, r1]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_22213b8
	mov     r1, #0x2
	str     r1, [r4, r0]
branch_22213b8: @ 22213b8 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	mov     r0, #0xc
	tst     r0, r1
	beq     branch_22213cc
	mov     r0, #0xd7
	mov     r1, #0x3
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
branch_22213cc: @ 22213cc :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_22213e0
	mov     r0, #0xd7
	mov     r1, #0x1
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
branch_22213e0: @ 22213e0 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	mov     r0, #0xc0
	tst     r0, r1
	beq     branch_22213f4
	mov     r0, #0xd7
	mov     r1, #0x4
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
branch_22213f4: @ 22213f4 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	tst     r0, r1
	beq     branch_222140a
	mov     r0, #0xd7
	mov     r1, #0x5
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
branch_222140a: @ 222140a :thumb
	pop     {r4,pc}
@ 0x222140c


.thumb
AICmd_2f: @ 222140c :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r1, r0

	ldr     r0, =BattleData_CurrentMoveID
	ldrh    r2, [r5, r0]
	add     r0, #0x88           @ =0x3de
	lsl     r2, r2, #4
	add     r2, r5, r2
	ldrh    r0, [r2, r0]

	cmp     r4, r0
	bne     branch_222143e
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_222143e: @ 222143e :thumb
	pop     {r3-r5,pc}
@ 0x2221440

.pool



.thumb
AICmd_30: @ 2221444 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r1, r0
	ldr     r0, =BattleData_CurrentMoveID
	ldrh    r2, [r5, r0]
	add     r0, #0x88
	lsl     r2, r2, #4
	add     r2, r5, r2
	ldrh    r0, [r2, r0]
	cmp     r4, r0
	beq     branch_2221476
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2221476: @ 2221476 :thumb
	pop     {r3-r5,pc}
@ 0x2221478

.pool



thumb_func_start AICmd_StatLvlLt
AICmd_StatLvlLt: @ 222147c :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	str     r0, [sp, #0x0]

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	add     r0, r5, r1
	add     r1, r0, r6
	ldr     r0, =BattleData_StatLevel
	ldsb    r0, [r1, r0]
	cmp     r0, r7
	bge     branch_22214ca
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_22214ca: @ 22214ca :thumb
	pop     {r3-r7,pc}
@ 0x22214cc

.pool
thumb_func_end AICmd_StatLvlLt



thumb_func_start AICmd_StatLvlGt
AICmd_StatLvlGt: @ 22214d0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	str     r0, [sp, #0x0]

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	add     r0, r5, r1
	add     r1, r0, r6
	ldr     r0, =BattleData_StatLevel
	ldsb    r0, [r1, r0]
	cmp     r0, r7
	ble     branch_222151e
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_222151e: @ 222151e :thumb
	pop     {r3-r7,pc}
@ 0x2221520

.pool
thumb_func_end AICmd_StatLvlGt



thumb_func_start AICmd_StatLvlEq
AICmd_StatLvlEq: @ 2221524 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	str     r0, [sp, #0x0]

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	add     r0, r5, r1
	add     r1, r0, r6
	ldr     r0, =BattleData_StatLevel
	ldsb    r0, [r1, r0]
	cmp     r7, r0
	bne     branch_2221572
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2221572: @ 2221572 :thumb
	pop     {r3-r7,pc}
@ 0x2221574

.pool
thumb_func_end AICmd_StatLvlEq



thumb_func_start AICmd_StatLvlNe
AICmd_StatLvlNe: @ 2221578 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r7, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	str     r0, [sp, #0x0]

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	add     r0, r5, r1
	add     r1, r0, r6
	ldr     r0, =BattleData_StatLevel
	ldsb    r0, [r1, r0]
	cmp     r7, r0
	beq     branch_22215c6
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_22215c6: @ 22215c6 :thumb
	pop     {r3-r7,pc}
@ 0x22215c8

.pool
thumb_func_end AICmd_StatLvlNe



.thumb
AICmd_35: @ 22215cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r6, r1
	str     r0, [sp, #0x14]

	mov     r0, r6
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r6
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r6
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x1c]

	cmp     r4, #0x1
	bne     branch_22215fe
	ldr     r0, [pc, #0xe0] @ 0x22216d4, (=0x355)
	ldrb    r1, [r6, r0]
	add     r0, #0x17
	add     r1, r6, r1
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x18]
	b       branch_2221602

branch_22215fe: @ 22215fe :thumb
	mov     r0, #0x64
	str     r0, [sp, #0x18]
branch_2221602: @ 2221602 :thumb
	ldr     r2, [pc, #0xd4] @ 0x22216d8, (=0x356)
	ldr     r1, [pc, #0xd4] @ 0x22216dc, (=Unknown_222ee90)
	ldrh    r3, [r6, r2]
	add     r2, #0x88
	mov     r0, #0x0
	lsl     r7, r3, #4
	add     r3, r6, r7
	ldrh    r3, [r3, r2]
	ldr     r2, [pc, #0xcc] @ 0x22216e0, (=0xffff)
branch_2221614: @ 2221614 :thumb
	ldrh    r4, [r1, #0x0]
	cmp     r3, r4
	beq     branch_2221624
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r4, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r2
	bne     branch_2221614
branch_2221624: @ 2221624 :thumb
	ldr     r2, [pc, #0xbc] @ 0x22216e4, (=Unknown_222ee78)
	ldr     r4, [pc, #0xb8] @ 0x22216e0, (=0xffff)
	mov     r1, #0x0
branch_222162a: @ 222162a :thumb
	ldrh    r5, [r2, #0x0]
	cmp     r3, r5
	beq     branch_222163a
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r5, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r5, r4
	bne     branch_222162a
branch_222163a: @ 222163a :thumb
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xa4] @ 0x22216e4, (=Unknown_222ee78)
	ldrh    r1, [r1, r2]
	ldr     r2, [pc, #0x9c] @ 0x22216e0, (=0xffff)
	cmp     r1, r2
	bne     branch_222165a
	ldr     r1, [pc, #0xa0] @ 0x22216e8, (=0x3e1)
	add     r3, r6, r7
	ldrb    r1, [r3, r1]
	cmp     r1, #0x1
	bls     branch_22216d0
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x88] @ 0x22216dc, (=Unknown_222ee90)
	ldrh    r0, [r0, r1]
	cmp     r0, r2
	bne     branch_22216d0
branch_222165a: @ 222165a :thumb
	ldr     r7, [pc, #0x90] @ 0x22216ec, (=BattleData_3cf)
	mov     r4, #0x0
	add     r5, sp, #0x20
branch_2221660: @ 2221660 :thumb
	ldrb    r1, [r6, r7]
	mov     r2, r4
	mov     r0, r6
	add     r2, #0xa
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	strb    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x6
	blt     branch_2221660
	ldr     r0, [pc, #0x70] @ 0x22216ec, (=BattleData_3cf)
	ldrb    r4, [r6, r0]
	mov     r0, r6
	mov     r1, r4
	bl      Function_16_2255a4c
	add     r1, sp, #0x20
	str     r1, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r3, [pc, #0x5c] @ 0x22216f0, (=0x2dcc)
	add     r4, r6, r0
	ldr     r0, [r4, r3]
	ldr     r2, [pc, #0x40] @ 0x22216d8, (=0x356)
	lsl     r0, r0, #10
	lsr     r0, r0, #29
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	sub     r3, #0x14
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	ldrh    r2, [r6, r2]
	ldrh    r3, [r4, r3]
	ldr     r0, [sp, #0x14]
	mov     r1, r6
	bl      Function_2222e84
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r2, [r6, r1]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r6, r1
	ldr     r1, [pc, #0x30] @ 0x22216f4, (=BattleData_CurHP)
	ldr     r1, [r2, r1]
	cmp     r1, r0
	bhi     branch_22216d0
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	bl      AIHandler_AddToPointer
branch_22216d0: @ 22216d0 :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x22216d4

.word 0x355 @ 0x22216d4
.word 0x356 @ 0x22216d8
.word Unknown_222ee90 @ 0x22216dc
.word 0xffff @ 0x22216e0
.word Unknown_222ee78 @ 0x22216e4
.word 0x3e1 @ 0x22216e8
.word BattleData_3cf @ 0x22216ec
.word 0x2dcc @ 0x22216f0
.word BattleData_CurHP @ 0x22216f4



.thumb
AICmd_36: @ 22216f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r6, r1
	str     r0, [sp, #0x14]

	mov     r0, r6
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r6
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r6
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x1c]

	cmp     r4, #0x1
	bne     branch_222172a
	ldr     r0, [pc, #0xe0] @ 0x2221800, (=0x355)
	ldrb    r1, [r6, r0]
	add     r0, #0x17
	add     r1, r6, r1
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x18]
	b       branch_222172e

branch_222172a: @ 222172a :thumb
	mov     r0, #0x64
	str     r0, [sp, #0x18]
branch_222172e: @ 222172e :thumb
	ldr     r2, [pc, #0xd4] @ 0x2221804, (=0x356)
	ldr     r1, [pc, #0xd4] @ 0x2221808, (=Unknown_222ee90)
	ldrh    r3, [r6, r2]
	add     r2, #0x88
	mov     r0, #0x0
	lsl     r7, r3, #4
	add     r3, r6, r7
	ldrh    r3, [r3, r2]
	ldr     r2, [pc, #0xcc] @ 0x222180c, (=0xffff)
branch_2221740: @ 2221740 :thumb
	ldrh    r4, [r1, #0x0]
	cmp     r3, r4
	beq     branch_2221750
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r4, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r2
	bne     branch_2221740
branch_2221750: @ 2221750 :thumb
	ldr     r2, [pc, #0xbc] @ 0x2221810, (=Unknown_222ee78)
	ldr     r4, [pc, #0xb8] @ 0x222180c, (=0xffff)
	mov     r1, #0x0
branch_2221756: @ 2221756 :thumb
	ldrh    r5, [r2, #0x0]
	cmp     r3, r5
	beq     branch_2221766
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r5, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r5, r4
	bne     branch_2221756
branch_2221766: @ 2221766 :thumb
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xa4] @ 0x2221810, (=Unknown_222ee78)
	ldrh    r1, [r1, r2]
	ldr     r2, [pc, #0x9c] @ 0x222180c, (=0xffff)
	cmp     r1, r2
	bne     branch_2221786
	ldr     r1, [pc, #0xa0] @ 0x2221814, (=0x3e1)
	add     r3, r6, r7
	ldrb    r1, [r3, r1]
	cmp     r1, #0x1
	bls     branch_22217fc
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x88] @ 0x2221808, (=Unknown_222ee90)
	ldrh    r0, [r0, r1]
	cmp     r0, r2
	bne     branch_22217fc
branch_2221786: @ 2221786 :thumb
	ldr     r7, [pc, #0x90] @ 0x2221818, (=BattleData_3cf)
	mov     r4, #0x0
	add     r5, sp, #0x20
branch_222178c: @ 222178c :thumb
	ldrb    r1, [r6, r7]
	mov     r2, r4
	mov     r0, r6
	add     r2, #0xa
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	strb    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x6
	blt     branch_222178c
	ldr     r0, [pc, #0x70] @ 0x2221818, (=BattleData_3cf)
	ldrb    r4, [r6, r0]
	mov     r0, r6
	mov     r1, r4
	bl      Function_16_2255a4c
	add     r1, sp, #0x20
	str     r1, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r3, [pc, #0x5c] @ 0x222181c, (=0x2dcc)
	add     r4, r6, r0
	ldr     r0, [r4, r3]
	ldr     r2, [pc, #0x40] @ 0x2221804, (=0x356)
	lsl     r0, r0, #10
	lsr     r0, r0, #29
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	sub     r3, #0x14
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	ldrh    r2, [r6, r2]
	ldrh    r3, [r4, r3]
	ldr     r0, [sp, #0x14]
	mov     r1, r6
	bl      Function_2222e84
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r2, [r6, r1]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r6, r1
	ldr     r1, [pc, #0x30] @ 0x2221820, (=BattleData_CurHP)
	ldr     r1, [r2, r1]
	cmp     r1, r0
	bls     branch_22217fc
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	bl      AIHandler_AddToPointer
branch_22217fc: @ 22217fc :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2221800

.word 0x355 @ 0x2221800
.word 0x356 @ 0x2221804
.word Unknown_222ee90 @ 0x2221808
.word 0xffff @ 0x222180c
.word Unknown_222ee78 @ 0x2221810
.word 0x3e1 @ 0x2221814
.word BattleData_3cf @ 0x2221818
.word 0x2dcc @ 0x222181c
.word BattleData_CurHP @ 0x2221820



.thumb
AICmd_37: @ 2221824 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	cmp     r6, #0x0
	beq     branch_22218b4
	cmp     r6, #0x1
	beq     branch_2221860
	cmp     r6, #0x3
	beq     branch_2221886
	pop     {r3-r7,pc}

branch_2221860: @ 2221860 :thumb
	mov     r2, #0xc0
	mul     r2, r0
	ldr     r0, =BattleData_Move
	mov     r1, #0x0
	add     r3, r5, r2
branch_222186a: @ 222186a :thumb
	ldrh    r2, [r3, r0]
	cmp     r4, r2
	beq     branch_2221878
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x4
	blt     branch_222186a
branch_2221878: @ 2221878 :thumb
	cmp     r1, #0x4
	bge     branch_22218d8
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
	pop     {r3-r7,pc}

branch_2221886: @ 2221886 :thumb
	mov     r1, #0xc0
	mul     r1, r0
	add     r0, r5, r1
	ldr     r1, =BattleData_CurHP
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_22218d8
	ldr     r1, =BattleData_Move
	mov     r3, #0x0
branch_2221898: @ 2221898 :thumb
	ldrh    r2, [r0, r1]
	cmp     r4, r2
	beq     branch_22218a6
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, #0x4
	blt     branch_2221898
branch_22218a6: @ 22218a6 :thumb
	cmp     r3, #0x4
	bge     branch_22218d8
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
	pop     {r3-r7,pc}

branch_22218b4: @ 22218b4 :thumb
	lsl     r0, r0, #3
	add     r3, r5, r0
	mov     r0, #0x37
	mov     r1, #0x0
	lsl     r0, r0, #4 @ =0x370
branch_22218be: @ 22218be :thumb
	ldrh    r2, [r3, r0]
	cmp     r4, r2
	beq     branch_22218cc
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x4
	blt     branch_22218be
branch_22218cc: @ 22218cc :thumb
	cmp     r1, #0x4
	bge     branch_22218d8
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_22218d8: @ 22218d8 :thumb
	pop     {r3-r7,pc}
@ 0x22218da

.align 2
.pool



.thumb
AICmd_38: @ 22218e4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	cmp     r6, #0x0
	beq     branch_2221974
	cmp     r6, #0x1
	beq     branch_2221920
	cmp     r6, #0x3
	beq     branch_2221946
	pop     {r3-r7,pc}

branch_2221920: @ 2221920 :thumb
	mov     r2, #0xc0
	mul     r2, r0
	ldr     r0, [pc, #0x74] @ 0x222199c, (=0x2d4c)
	mov     r1, #0x0
	add     r3, r5, r2
branch_222192a: @ 222192a :thumb
	ldrh    r2, [r3, r0]
	cmp     r4, r2
	beq     branch_2221938
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x4
	blt     branch_222192a
branch_2221938: @ 2221938 :thumb
	cmp     r1, #0x4
	bne     branch_2221998
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
	pop     {r3-r7,pc}

branch_2221946: @ 2221946 :thumb
	mov     r1, #0xc0
	mul     r1, r0
	add     r0, r5, r1
	ldr     r1, [pc, #0x50] @ 0x22219a0, (=BattleData_CurHP)
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2221998
	ldr     r1, [pc, #0x44] @ 0x222199c, (=0x2d4c)
	mov     r3, #0x0
branch_2221958: @ 2221958 :thumb
	ldrh    r2, [r0, r1]
	cmp     r4, r2
	beq     branch_2221966
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, #0x4
	blt     branch_2221958
branch_2221966: @ 2221966 :thumb
	cmp     r3, #0x4
	bne     branch_2221998
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
	pop     {r3-r7,pc}

branch_2221974: @ 2221974 :thumb
	lsl     r0, r0, #3
	add     r3, r5, r0
	mov     r0, #0x37
	mov     r1, #0x0
	lsl     r0, r0, #4          @ =0x370
branch_222197e: @ 222197e :thumb
	ldrh    r2, [r3, r0]
	cmp     r4, r2
	beq     branch_222198c
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x4
	blt     branch_222197e
branch_222198c: @ 222198c :thumb
	cmp     r1, #0x4
	bne     branch_2221998
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2221998: @ 2221998 :thumb
	pop     {r3-r7,pc}
@ 0x222199a

.align 2
.word 0x2d4c @ 0x222199c
.word BattleData_CurHP @ 0x22219a0



.thumb
AICmd_39: @ 22219a4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	cmp     r6, #0x0
	beq     branch_2221a0c
	cmp     r6, #0x1
	bne     branch_2221a3c
	mov     r2, #0xc0
	mul     r2, r0
	add     r0, r5, r2
	ldr     r2, [pc, #0x5c] @ 0x2221a40, (=0x3de)
	ldr     r3, [pc, #0x60] @ 0x2221a44, (=0x2d4c)
	mov     r1, #0x0
branch_22219e6: @ 22219e6 :thumb
	ldrh    r6, [r0, r3]
	cmp     r6, #0x0
	beq     branch_22219f6
	lsl     r6, r6, #4
	add     r6, r5, r6
	ldrh    r6, [r6, r2]
	cmp     r4, r6
	beq     branch_22219fe
branch_22219f6: @ 22219f6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r1, #0x4
	blt     branch_22219e6
branch_22219fe: @ 22219fe :thumb
	cmp     r1, #0x4
	bge     branch_2221a3c
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
	pop     {r3-r7,pc}

branch_2221a0c: @ 2221a0c :thumb
	ldr     r2, [pc, #0x30] @ 0x2221a40, (=0x3de)
	lsl     r0, r0, #3
	mov     r3, r2
	mov     r1, #0x0
	add     r0, r5, r0
	sub     r3, #0x6e
branch_2221a18: @ 2221a18 :thumb
	ldrh    r6, [r0, r3]
	cmp     r6, #0x0
	beq     branch_2221a28
	lsl     r6, r6, #4
	add     r6, r5, r6
	ldrh    r6, [r6, r2]
	cmp     r4, r6
	beq     branch_2221a30
branch_2221a28: @ 2221a28 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r1, #0x4
	blt     branch_2221a18
branch_2221a30: @ 2221a30 :thumb
	cmp     r1, #0x4
	bge     branch_2221a3c
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2221a3c: @ 2221a3c :thumb
	pop     {r3-r7,pc}
@ 0x2221a3e

.align 2
.word 0x3de @ 0x2221a40
.word 0x2d4c @ 0x2221a44



.thumb
AICmd_3a: @ 2221a48 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	cmp     r6, #0x0
	beq     branch_2221ab0
	cmp     r6, #0x1
	bne     branch_2221ae0
	mov     r2, #0xc0
	mul     r2, r0
	add     r0, r5, r2
	ldr     r2, [pc, #0x5c] @ 0x2221ae4, (=0x3de)
	ldr     r3, [pc, #0x60] @ 0x2221ae8, (=0x2d4c)
	mov     r1, #0x0
branch_2221a8a: @ 2221a8a :thumb
	ldrh    r6, [r0, r3]
	cmp     r6, #0x0
	beq     branch_2221a9a
	lsl     r6, r6, #4
	add     r6, r5, r6
	ldrh    r6, [r6, r2]
	cmp     r4, r6
	beq     branch_2221aa2
branch_2221a9a: @ 2221a9a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r1, #0x4
	blt     branch_2221a8a
branch_2221aa2: @ 2221aa2 :thumb
	cmp     r1, #0x4
	bne     branch_2221ae0
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
	pop     {r3-r7,pc}

branch_2221ab0: @ 2221ab0 :thumb
	ldr     r2, [pc, #0x30] @ 0x2221ae4, (=0x3de)
	lsl     r0, r0, #3
	mov     r3, r2
	mov     r1, #0x0
	add     r0, r5, r0
	sub     r3, #0x6e
branch_2221abc: @ 2221abc :thumb
	ldrh    r6, [r0, r3]
	cmp     r6, #0x0
	beq     branch_2221acc
	lsl     r6, r6, #4
	add     r6, r5, r6
	ldrh    r6, [r6, r2]
	cmp     r4, r6
	beq     branch_2221ad4
branch_2221acc: @ 2221acc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r1, #0x4
	blt     branch_2221abc
branch_2221ad4: @ 2221ad4 :thumb
	cmp     r1, #0x4
	bne     branch_2221ae0
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2221ae0: @ 2221ae0 :thumb
	pop     {r3-r7,pc}
@ 0x2221ae2

.align 2
.word 0x3de @ 0x2221ae4
.word 0x2d4c @ 0x2221ae8



.thumb
AICmd_3b: @ 2221aec :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	cmp     r4, #0x0
	beq     branch_2221b24
	cmp     r4, #0x1
	beq     branch_2221b3e
	pop     {r3-r7,pc}

branch_2221b24: @ 2221b24 :thumb
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x2c] @ 0x2221b58, (=0x2dc8)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	lsl     r0, r0, #29
	lsr     r0, r0, #29
	beq     branch_2221b56
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
	pop     {r3-r7,pc}

branch_2221b3e: @ 2221b3e :thumb
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x14] @ 0x2221b58, (=0x2dc8)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	lsl     r0, r0, #26
	lsr     r0, r0, #29
	beq     branch_2221b56
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2221b56: @ 2221b56 :thumb
	pop     {r3-r7,pc}
@ 0x2221b58

.word 0x2dc8 @ 0x2221b58



.thumb
AICmd_3c: @ 2221b5c :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r5, r0

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0

	cmp     r5, #0x0
	beq     branch_2221b82
	cmp     r5, #0x1
	beq     branch_2221ba0
	pop     {r3-r5,pc}

branch_2221b82: @ 2221b82 :thumb
	ldr     r2, [pc, #0x3c] @ 0x2221bc0, (=0x356)
	ldrh    r0, [r4, r2]
	add     r2, #0x79
	ldrb    r3, [r4, r2]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r4, r2
	ldr     r2, [pc, #0x30] @ 0x2221bc4, (=BattleData_2de8)
	ldrh    r2, [r3, r2]
	cmp     r0, r2
	bne     branch_2221bbc
	mov     r0, r4
	bl      AIHandler_AddToPointer
	pop     {r3-r5,pc}

branch_2221ba0: @ 2221ba0 :thumb
	ldr     r2, [pc, #0x1c] @ 0x2221bc0, (=0x356)
	ldrh    r0, [r4, r2]
	add     r2, #0x79
	ldrb    r3, [r4, r2]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r4, r2
	ldr     r2, [pc, #0x18] @ 0x2221bc8, (=0x2dec)
	ldrh    r2, [r3, r2]
	cmp     r0, r2
	bne     branch_2221bbc
	mov     r0, r4
	bl      AIHandler_AddToPointer
branch_2221bbc: @ 2221bbc :thumb
	pop     {r3-r5,pc}
@ 0x2221bbe

.align 2
.word 0x356 @ 0x2221bc0
.word BattleData_2de8 @ 0x2221bc4
.word 0x2dec @ 0x2221bc8



.thumb
AICmd_3d: @ 2221bcc :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r1, #0xd9
	lsl     r1, r1, #2          @ =0x364
	ldrb    r2, [r4, r1]
	mov     r0, #0xb
	orr     r0, r2
	strb    r0, [r4, r1]

	pop     {r4,pc}
@ 0x2221be6


thumb_func_start AICmd_3e
AICmd_3e: @ 2221be8 :thumb
	bx      lr
thumb_func_end AICmd_3e


thumb_func_start AICmd_3f
AICmd_3f: @ 2221bec :thumb
	bx      lr
thumb_func_end AICmd_3f


.align 2, 0
.thumb
AICmd_40: @ 2221bf0 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0

	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x2221c20, (=0x2db8)
	add     r1, r4, r1
	ldrh    r1, [r1, r0]
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x2221c20

.word 0x2db8 @ 0x2221c20



.thumb
AICmd_41: @ 2221c24 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0

	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	ldr     r1, [pc, #0x3c] @ 0x2221c80, (=BattleData_3cf)
	mov     r2, r0
	ldrb    r0, [r4, r1]
	cmp     r0, r2
	beq     branch_2221c64
	lsl     r2, r2, #1
	add     r2, r4, r2
	sub     r1, #0x3b
	ldrh    r1, [r2, r1]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_16_225b0fc
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r4,pc}

branch_2221c64: @ 2221c64 :thumb
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0x18] @ 0x2221c84, (=0x2db8)
	mov     r0, r4
	ldrh    r1, [r2, r1]
	mov     r2, #0x1
	bl      Function_16_225b0fc
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2221c7e

.align 2
.word BattleData_3cf @ 0x2221c80
.word 0x2db8 @ 0x2221c84



.thumb
AICmd_55: @ 2221c88 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r7, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r6, r0
	ldr     r0, [pc, #0x2c] @ 0x2221ce8, (=BattleData_3cf)
	mov     r1, #0x1
	mov     r3, r6
	ldrb    r2, [r5, r0]
	and     r3, r1
	and     r1, r2
	cmp     r3, r1
	bne     branch_2221cd2
	mov     r0, #0xc0
	mul     r0, r6
	add     r1, r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2221cec, (=0x2db8)
	b       branch_2221cd8

branch_2221cd2: @ 2221cd2 :thumb
	lsl     r1, r6, #1
	add     r1, r5, r1
	sub     r0, #0x3b
branch_2221cd8: @ 2221cd8 :thumb
	ldrh    r0, [r1, r0]
	cmp     r0, r4
	bne     branch_2221ce6
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2221ce6: @ 2221ce6 :thumb
	pop     {r3-r7,pc}
@ 0x2221ce8

.word BattleData_3cf @ 0x2221ce8
.word 0x2db8 @ 0x2221cec



.thumb
AICmd_56: @ 2221cf0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r1, r0

	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r0, [r5, r0]
	tst     r0, r4
	beq     branch_2221d1c
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2221d1c: @ 2221d1c :thumb
	pop     {r3-r5,pc}
@ 0x2221d1e


.align 2, 0
.thumb
AICmd_57: @ 2221d20 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r4, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	mov     r0, r7
	bl      Function_16_223e208
	cmp     r4, #0x4
	beq     branch_2221d5e
	mov     r1, #0x1
	lsl     r1, r1, #10
	cmp     r4, r1
	beq     branch_2221d74
	pop     {r3-r7,pc}

branch_2221d5e: @ 2221d5e :thumb
	lsl     r0, r0, #3
	add     r1, r5, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #30
	lsr     r1, r0, #30
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r5, r0]
	pop     {r3-r7,pc}

branch_2221d74: @ 2221d74 :thumb
	lsl     r0, r0, #3
	add     r2, r5, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	sub     r1, #0xa4
	lsl     r0, r0, #28
	lsr     r0, r0, #30
	str     r0, [r5, r1]
	pop     {r3-r7,pc}
@ 0x2221d88


.thumb
AICmd_58: @ 2221d88 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	str     r1, [sp, #0x0]

	mov     r0, r1
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, [sp, #0x0]
	bl      AIHandler_LoadWord
	mov     r4, r0

	ldr     r0, [sp, #0x0]
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x8]

	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	mov     r4, #0x0
	bl      Function_16_223df60
	cmp     r0, #0x0
	ble     branch_2221e10
	ldr     r0, [sp, #0x0]
	add     r0, r0, r6
	str     r0, [sp, #0x4]
branch_2221dc8: @ 2221dc8 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_16_223dfac
	ldr     r2, [sp, #0x4]
	ldr     r1, [pc, #0x3c] @ 0x2221e14, (=BattleData_219c)
	str     r0, [sp, #0xc]
	ldrb    r1, [r2, r1]
	cmp     r4, r1
	beq     branch_2221e02

	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0

	ldr     r0, [sp, #0xc]
	mov     r1, #PKMNDATA_MAXHP
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r7, r0
	beq     branch_2221e02

	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	bl      AIHandler_AddToPointer
	add     sp, #0x10
	pop     {r3-r7,pc}

branch_2221e02: @ 2221e02 :thumb
	mov     r0, r5
	mov     r1, r6
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_16_223df60
	cmp     r4, r0
	blt     branch_2221dc8
branch_2221e10: @ 2221e10 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2221e14

.word BattleData_219c @ 0x2221e14



.thumb
AICmd_59: @ 2221e18 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]

	mov     r0, r1
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, [sp, #0x4]
	bl      AIHandler_LoadWord
	mov     r4, r0

	ldr     r0, [sp, #0x4]
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x10]

	lsl     r1, r4, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r7, #0x0
	bl      Function_16_223df60
	cmp     r0, #0x0
	ble     branch_2221eb2
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	add     r0, r1, r0
	str     r0, [sp, #0xc]
branch_2221e5a: @ 2221e5a :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r2, r7
	bl      Function_16_223dfac
	mov     r5, r0
	ldr     r1, [sp, #0xc]
	ldr     r0, [pc, #0x4c] @ 0x2221eb8, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	cmp     r7, r0
	beq     branch_2221ea4

	mov     r4, #0x0
branch_2221e72: @ 2221e72 :thumb
	mov     r1, r4
	mov     r0, r5

	add     r1, #0x3a
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	mov     r6, r0

	mov     r0, r5
	add     r1, #0x42
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r6, r0
	beq     branch_2221e9a
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	bl      AIHandler_AddToPointer
	b       branch_2221ea0

branch_2221e9a: @ 2221e9a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2221e72
branch_2221ea0: @ 2221ea0 :thumb
	cmp     r4, #0x4
	bne     branch_2221eb2
branch_2221ea4: @ 2221ea4 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_16_223df60
	cmp     r7, r0
	blt     branch_2221e5a
branch_2221eb2: @ 2221eb2 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2221eb6

.align 2
.word BattleData_219c @ 0x2221eb8



.thumb
AICmd_5a: @ 2221ebc :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0

	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	mov     r0, r4
	bl      Function_16_2258b80
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2221eea


.align 2, 0
.thumb
AICmd_5b: @ 2221eec :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r1, [pc, #0x18] @ 0x2221f14, (=BattleData_3cf)
	mov     r0, #0xc0
	ldrb    r2, [r4, r1]
	mul     r0, r2
	add     r2, r4, r0
	mov     r0, r1
	sub     r0, #0x7a
	ldrb    r0, [r4, r0]
	sub     r1, #0x73
	add     r2, r2, r0
	ldr     r0, [pc, #0x8] @ 0x2221f18, (=0x2d6c)
	ldrb    r0, [r2, r0]
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2221f14

.word BattleData_3cf @ 0x2221f14
.word 0x2d6c @ 0x2221f18



.thumb
AICmd_5c: @ 2221f1c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r5, r0

	mov     r0, r4
	bl      AIHandler_LoadWord
	lsl     r1, r5, #24
	mov     r7, r0

	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r5, r0
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_16_2256128
	mov     r1, #0xc0
	mul     r1, r5
	add     r2, r4, r1
	ldr     r1, [pc, #0x1c] @ 0x2221f74, (=0x2dcc)
	ldr     r1, [r2, r1]
	lsl     r1, r1, #19
	lsr     r2, r1, #29
	sub     r1, r0, #0x1
	cmp     r2, r1
	bcc     branch_2221f70
	cmp     r0, #0x1
	ble     branch_2221f70
	mov     r0, r4
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2221f70: @ 2221f70 :thumb
	pop     {r3-r7,pc}
@ 0x2221f72

.align 2
.word 0x2dcc @ 0x2221f74



.thumb
AICmd_5d: @ 2221f78 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, [pc, #0x10] @ 0x2221f98, (=0x356)
	ldrh    r1, [r4, r0]
	lsl     r1, r1, #4
	add     r2, r4, r1
	mov     r1, r0
	add     r1, #0x8a
	ldrb    r1, [r2, r1]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x2221f98

.word 0x356 @ 0x2221f98



.thumb
AICmd_5e: @ 2221f9c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r0, [r4, r1]
	lsl     r0, r0, #1
	add     r2, r4, r0
	ldr     r0, [pc, #0x14] @ 0x2221fc8, (=BattleData_307c)
	ldrh    r0, [r2, r0]
	lsl     r0, r0, #4
	add     r2, r4, r0
	mov     r0, r1
	add     r0, #0x10
	ldrb    r0, [r2, r0]
	sub     r1, #0x74
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2221fc6

.align 2
.word BattleData_307c @ 0x2221fc8



.thumb
AICmd_5f: @ 2221fcc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]

	mov     r0, r1
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, [sp, #0x8]
	bl      AIHandler_LoadWord
	mov     r1, r0

	lsl     r1, r1, #24
	ldr     r0, [sp, #0x8]
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	str     r0, [sp, #0x10]

	ldr     r0, [sp, #0x4]
	bl      Function_16_223df1c
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_222200a
	add     r2, sp, #0x24
branch_2222000: @ 2222000 :thumb
	ldr     r0, [sp, #0x14]
	stmia   r2!, {r1}
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, r0
	blt     branch_2222000
branch_222200a: @ 222200a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x0
	ble     branch_2222064
	add     r6, sp, #0x24
	str     r6, [sp, #0x20]
.thumb
branch_222201c: @ 222201c :thumb
	ldr     r0, [sp, #0xc]
	add     r7, r0, #0x1
	ldr     r0, [sp, #0x14]
	cmp     r7, r0
	bge     branch_2222056
	ldr     r0, [sp, #0x20]
	lsl     r1, r7, #2
	add     r5, r0, r1
.thumb
branch_222202c: @ 222202c :thumb
	ldr     r0, [r6, #0x0]
	ldr     r4, [r5, #0x0]
	str     r0, [sp, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x18]
	mov     r3, r4
	bl      Function_16_2252ec8
	cmp     r0, #0x0
	beq     branch_222204c
	ldr     r0, [sp, #0x18]
	str     r4, [r6, #0x0]
	str     r0, [r5, #0x0]
.thumb
branch_222204c: @ 222204c :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, r0
	blt     branch_222202c
.thumb
branch_2222056: @ 2222056 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x1c]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_222201c
.thumb
branch_2222064: @ 2222064 :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, #0x0
	cmp     r1, #0x0
	ble     branch_222208c
	add     r3, sp, #0x24
branch_222206e: @ 222206e :thumb
	ldr     r2, [r3, #0x0]
	ldr     r1, [sp, #0x10]
	cmp     r1, r2
	bne     branch_2222082
	mov     r2, #0xd7
	ldr     r1, [sp, #0x8]
	lsl     r2, r2, #2          @ =0x35c
	str     r0, [r1, r2]
	add     sp, #0x34
	pop     {r4-r7,pc}

branch_2222082: @ 2222082 :thumb
	ldr     r1, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, r1
	blt     branch_222206e
branch_222208c: @ 222208c :thumb
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2222090


.thumb
AICmd_60: @ 2222090 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0

	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0x15
	lsl     r1, r1, #4          @ =0x150 BattleData_RoundNr
	ldr     r2, [r4, r1]
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x22220c8, (=0x2dd4)
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	sub     r1, r2, r0
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x22220c8

.word 0x2dd4 @ 0x22220c8



.thumb
AICmd_61: @ 22220cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x1c]

	mov     r0, r1
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	ldr     r0, [sp, #0x1c]
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x30]

	ldr     r0, [sp, #0x1c]
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x2c]

	mov     r4, #0x0
	ldr     r1, [pc, #0x160] @ 0x2222250, (=BattleData_3cf)
	ldr     r0, [sp, #0x1c]
	add     r5, sp, #0x34
	ldrb    r0, [r0, r1]
	mov     r6, r4
	str     r0, [sp, #0x28]
branch_22220fa: @ 22220fa :thumb
	mov     r2, r4
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x28]
	add     r2, #0xa
	mov     r3, r6
	bl      ReadPkmnBattleData1
	strb    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x6
	blt     branch_22220fa
	ldr     r0, [sp, #0x28]
	mov     r1, #0xc0
	mov     r4, r0
	mul     r4, r1
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x28]
	bl      Function_16_2255a4c
	add     r1, sp, #0x44
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x1c]
	ldr     r3, [pc, #0x128] @ 0x2222254, (=0x2db8)
	add     r2, r1, r4
	ldrh    r1, [r2, r3]
	ldr     r5, [pc, #0x120] @ 0x2222250, (=BattleData_3cf)
	str     r1, [sp, #0x4]
	add     r1, sp, #0x34
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r3
	add     r0, #0x14
	ldr     r0, [r2, r0]
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #10
	lsr     r0, r0, #29
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x30]
	mov     r2, r1
	str     r0, [sp, #0x14]
	ldrb    r2, [r2, r5]
	sub     r3, #0x6c
	mov     r5, r1
	add     r3, r5, r3
	ldr     r0, [sp, #0x18]
	add     r3, r3, r4
	bl      Function_2222d7c
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x28]
	mov     r7, #0x0
	bl      Function_16_223df60
	cmp     r0, #0x0
	ble     branch_222224a
	ldr     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	add     r0, r1, r0
	str     r0, [sp, #0x20]
branch_2222174: @ 2222174 :thumb
	ldr     r1, [pc, #0xe0] @ 0x2222258, (=BattleData_219c)
	ldr     r0, [sp, #0x20]
	ldrb    r0, [r0, r1]
	cmp     r7, r0
	beq     branch_222223c
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x28]
	mov     r2, r7
	bl      Function_16_223dfac

	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222223c

	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222223c

	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0xac] @ 0x222225c, (=0x1ee)
	cmp     r0, r1
	beq     branch_222223c

	add     r5, sp, #0x38
	mov     r4, #0x0
	add     r5, #0x2
branch_22221ba: @ 22221ba :thumb
	mov     r1, r4
	mov     r0, r6
	add     r1, #PKMNDATA_MOVE1
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #1
	.hword  0x1cad @ add r5, r5, #2
	cmp     r4, #4
	blt     branch_22221ba
	mov     r5, #0x0
	add     r4, sp, #0x34

branch_22221d4: @ 22221d4 :thumb
	mov     r1, r5
	mov     r0, r6
	add     r1, #0x46
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r4, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r5, #0x6
	blt     branch_22221d4

	mov     r0, r6
	mov     r1, #PKMNDATA_ITEM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0

	mov     r0, r6
	mov     r1, #PKMNDATA_ABILITY
	mov     r2, #0x0
	bl      GetPkmnData

	add     r1, sp, #0x44
	str     r1, [sp, #0x0]
	lsl     r1, r4, #16
	lsr     r1, r1, #16
	str     r1, [sp, #0x4]
	add     r1, sp, #0x34
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x30]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x14]
	ldr     r3, [pc, #0x34] @ 0x2222250, (=BattleData_3cf)
	mov     r2, r1
	ldrb    r2, [r2, r3]
	add     r3, sp, #0x38
	ldr     r0, [sp, #0x18]
	add     r3, #0x2
	bl      Function_2222d7c
	ldr     r1, [sp, #0x24]
	cmp     r0, r1
	ble     branch_222223c
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x2c]
	bl      AIHandler_AddToPointer
	add     sp, #0x54
	pop     {r4-r7,pc}

branch_222223c: @ 222223c :thumb
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x28]
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      Function_16_223df60
	cmp     r7, r0
	blt     branch_2222174
branch_222224a: @ 222224a :thumb
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x222224e

.align 2
.word BattleData_3cf @ 0x2222250
.word 0x2db8 @ 0x2222254
.word BattleData_219c @ 0x2222258
.word 0x1ee @ 0x222225c



.thumb
AICmd_62: @ 2222260 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	ldr     r2, [pc, #0x1c] @ 0x2222294, (=BattleData_3cf)
	mov     r6, r0

	ldrb    r2, [r4, r2]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x1
	bl      Function_2223b34
	cmp     r0, #0x1
	bne     branch_2222290
	mov     r0, r4
	mov     r1, r6
	bl      AIHandler_AddToPointer
branch_2222290: @ 2222290 :thumb
	pop     {r4-r6,pc}
@ 0x2222292

.align 2
.word BattleData_3cf @ 0x2222294



.thumb
AICmd_63: @ 2222298 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r6, r1
	str     r0, [sp, #0x18]

	mov     r0, r6
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r6
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x28]

	mov     r0, r6
	bl      AIHandler_LoadWord
	str     r0, [sp, #0x24]

	mov     r0, r6
	bl      AIHandler_LoadWord
	ldr     r7, [pc, #0xdc] @ 0x222239c, (=BattleData_3cf)
	str     r0, [sp, #0x20]

	mov     r4, #0x0
	add     r5, sp, #0x2c
branch_22222c6: @ 22222c6 :thumb
	ldrb    r1, [r6, r7]
	mov     r2, r4
	mov     r0, r6
	add     r2, #0xa
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	strb    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x6
	blt     branch_22222c6
	ldr     r0, [pc, #0xbc] @ 0x222239c, (=BattleData_3cf)
	ldrb    r4, [r6, r0]
	mov     r0, #0xc0
	mov     r5, r4
	mul     r5, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_16_2255a4c
	add     r1, sp, #0x34
	str     r1, [sp, #0x0]
	ldr     r3, [pc, #0xa8] @ 0x22223a0, (=0x2db8)
	add     r1, r6, r5
	ldrh    r1, [r1, r3]
	mov     r2, r4
	str     r1, [sp, #0x4]
	add     r1, sp, #0x2c
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r6, r0
	mov     r0, r3
	add     r0, #0x14
	ldr     r0, [r1, r0]
	sub     r3, #0x6c
	lsl     r0, r0, #10
	lsr     r0, r0, #29
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x24]
	add     r3, r6, r3
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	add     r3, r3, r5
	bl      Function_2222d7c
	ldr     r1, [sp, #0x28]
	str     r0, [sp, #0x1c]
	lsl     r1, r1, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r4, r0
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x1
	bne     branch_222234a
	ldr     r0, [pc, #0x64] @ 0x22223a4, (=0x355)
	ldrb    r1, [r6, r0]
	add     r0, #0x17
	add     r1, r6, r1
	ldrb    r5, [r1, r0]
	b       branch_222234c

branch_222234a: @ 222234a :thumb
	mov     r5, #0x64
branch_222234c: @ 222234c :thumb
	mov     r0, #0xc0
	mov     r7, r4
	mul     r7, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_16_2255a4c
	add     r1, sp, #0x2c
	str     r1, [sp, #0x0]
	str     r4, [sp, #0x4]
	lsl     r2, r4, #1
	add     r4, r6, r2
	ldr     r3, [pc, #0x40] @ 0x22223a8, (=0x2dcc)
	add     r7, r6, r7
	str     r0, [sp, #0x8]
	ldr     r0, [r7, r3]
	ldr     r2, [pc, #0x3c] @ 0x22223ac, (=BattleData_307c)
	lsl     r0, r0, #10
	lsr     r0, r0, #29
	str     r0, [sp, #0xc]
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	sub     r3, #0x14
	ldrh    r2, [r4, r2]
	ldrh    r3, [r7, r3]
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	bl      Function_2222e84
	ldr     r1, [sp, #0x1c]
	cmp     r0, r1
	ble     branch_2222396
	ldr     r1, [sp, #0x20]
	mov     r0, r6
	bl      AIHandler_AddToPointer
branch_2222396: @ 2222396 :thumb
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x222239a

.align 2
.word BattleData_3cf @ 0x222239c
.word 0x2db8 @ 0x22223a0
.word 0x355 @ 0x22223a4
.word 0x2dcc @ 0x22223a8
.word BattleData_307c @ 0x22223ac



.thumb
AICmd_64: @ 22223b0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0

	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r2, #0xd7
	mov     r3, #0xd7
	mov     r1, #0x0
	lsl     r2, r2, #2          @ =0x35c
	str     r1, [r4, r2]
	mov     r2, #0xc0
	mul     r2, r0
	add     r0, r4, r2
	ldr     r2, [pc, #0x1c] @ 0x22223fc, (=BattleData_StatLevel)
	lsl     r3, r3, #2          @ =0x35c
branch_22223e2: @ 22223e2 :thumb
	ldsb    r5, [r0, r2]
	cmp     r5, #0x6
	ble     branch_22223f0
	ldr     r6, [r4, r3]
	.hword  0x1fad @ sub r5, r5, #0x6
	add     r5, r6, r5
	str     r5, [r4, r3]
branch_22223f0: @ 22223f0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, #0x8
	blt     branch_22223e2
	pop     {r4-r6,pc}
@ 0x22223fa

.align 2
.word BattleData_StatLevel @ 0x22223fc



.thumb
AICmd_65: @ 2222400 :thumb
	push    {r4-r6,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r6, #24
	mov     r4, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	ldr     r3, [pc, #0x20] @ 0x2222448, (=BattleData_3cf)
	mov     r1, #0xc0
	ldrb    r6, [r5, r3]
	mov     r2, r0
	mul     r2, r1
	add     r0, r5, r2
	mul     r1, r6
	add     r1, r5, r1
	ldr     r2, [pc, #0x14] @ 0x222244c, (=BattleData_StatLevel)
	add     r0, r0, r4
	add     r1, r1, r4
	ldsb    r0, [r0, r2]
	ldsb    r1, [r1, r2]
	sub     r3, #0x73
	sub     r0, r0, r1
	str     r0, [r5, r3]
	pop     {r4-r6,pc}
@ 0x2222448

.word BattleData_3cf @ 0x2222448
.word BattleData_StatLevel @ 0x222244c



.thumb
AICmd_66: @ 2222450 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0
	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	str     r6, [sp, #0x0]
	mov     r0, r5
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_222254c
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	bge     branch_222249e
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_222249e: @ 222249e :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22224a2


.align 2, 0
.thumb
AICmd_67: @ 22224a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0
	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	str     r6, [sp, #0x0]
	mov     r0, r5
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_222254c
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	ble     branch_22224f2
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_22224f2: @ 22224f2 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22224f6


.align 2, 0
.thumb
AICmd_68: @ 22224f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r7, r0
	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	str     r6, [sp, #0x0]
	mov     r0, r5
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_222254c
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	bne     branch_2222546
	mov     r0, r5
	mov     r1, r7
	bl      AIHandler_AddToPointer
branch_2222546: @ 2222546 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222254a


.align 2, 0
.thumb
Function_222254c: @ 222254c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r1, r3
	ldr     r3, [sp, #0x10]
	cmp     r3, #0x5
	bhi     branch_2222624
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x2222564

Jumppoints_2222564:
.hword branch_2222570 - Jumppoints_2222564 - 2
.hword branch_222258e - Jumppoints_2222564 - 2
.hword branch_22225ac - Jumppoints_2222564 - 2
.hword branch_2222606 - Jumppoints_2222564 - 2
.hword branch_22225ca - Jumppoints_2222564 - 2
.hword branch_22225e8 - Jumppoints_2222564 - 2

branch_2222570: @ 2222570 :thumb
	ldr     r3, [pc, #0xb8] @ 0x222262c, (=BattleData_3cf)
	ldrb    r5, [r0, r3]
	mov     r3, #0xc0
	mov     r6, r5
	mul     r6, r3
	ldr     r5, [pc, #0xb4] @ 0x2222630, (=BattleData_CurHP)
	add     r6, r0, r6
	ldr     r6, [r6, r5]
	str     r6, [r2, #0x0]
	mov     r2, r4
	mul     r2, r3
	add     r0, r0, r2
	ldr     r0, [r0, r5]
	str     r0, [r1, #0x0]
	pop     {r4-r6,pc}

branch_222258e: @ 222258e :thumb
	ldr     r3, [pc, #0x9c] @ 0x222262c, (=BattleData_3cf)
	ldrb    r5, [r0, r3]
	mov     r3, #0xc0
	mov     r6, r5
	mul     r6, r3
	ldr     r5, [pc, #0x98] @ 0x2222634, (=BattleData_ATK)
	add     r6, r0, r6
	ldrh    r6, [r6, r5]
	str     r6, [r2, #0x0]
	mov     r2, r4
	mul     r2, r3
	add     r0, r0, r2
	ldrh    r0, [r0, r5]
	str     r0, [r1, #0x0]
	pop     {r4-r6,pc}

branch_22225ac: @ 22225ac :thumb
	ldr     r3, [pc, #0x7c] @ 0x222262c, (=BattleData_3cf)
	ldrb    r5, [r0, r3]
	mov     r3, #0xc0
	mov     r6, r5
	mul     r6, r3
	ldr     r5, [pc, #0x80] @ 0x2222638, (=BattleData_DEF)
	add     r6, r0, r6
	ldrh    r6, [r6, r5]
	str     r6, [r2, #0x0]
	mov     r2, r4
	mul     r2, r3
	add     r0, r0, r2
	ldrh    r0, [r0, r5]
	str     r0, [r1, #0x0]
	pop     {r4-r6,pc}

branch_22225ca: @ 22225ca :thumb
	ldr     r3, [pc, #0x60] @ 0x222262c, (=BattleData_3cf)
	ldrb    r5, [r0, r3]
	mov     r3, #0xc0
	mov     r6, r5
	mul     r6, r3
	ldr     r5, [pc, #0x64] @ 0x222263c, (=0x2d48)
	add     r6, r0, r6
	ldrh    r6, [r6, r5]
	str     r6, [r2, #0x0]
	mov     r2, r4
	mul     r2, r3
	add     r0, r0, r2
	ldrh    r0, [r0, r5]
	str     r0, [r1, #0x0]
	pop     {r4-r6,pc}

branch_22225e8: @ 22225e8 :thumb
	ldr     r3, [pc, #0x40] @ 0x222262c, (=BattleData_3cf)
	ldrb    r5, [r0, r3]
	mov     r3, #0xc0
	mov     r6, r5
	mul     r6, r3
	ldr     r5, [pc, #0x4c] @ 0x2222640, (=0x2d4a)
	add     r6, r0, r6
	ldrh    r6, [r6, r5]
	str     r6, [r2, #0x0]
	mov     r2, r4
	mul     r2, r3
	add     r0, r0, r2
	ldrh    r0, [r0, r5]
	str     r0, [r1, #0x0]
	pop     {r4-r6,pc}

branch_2222606: @ 2222606 :thumb
	ldr     r3, [pc, #0x24] @ 0x222262c, (=BattleData_3cf)
	ldrb    r5, [r0, r3]
	mov     r3, #0xc0
	mov     r6, r5
	mul     r6, r3
	ldr     r5, [pc, #0x30] @ 0x2222644, (=0x2d46)
	add     r6, r0, r6
	ldrh    r6, [r6, r5]
	str     r6, [r2, #0x0]
	mov     r2, r4
	mul     r2, r3
	add     r0, r0, r2
	ldrh    r0, [r0, r5]
	str     r0, [r1, #0x0]
	pop     {r4-r6,pc}

branch_2222624: @ 2222624 :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x222262a

.align 2
.word BattleData_3cf @ 0x222262c
.word BattleData_CurHP @ 0x2222630
.word BattleData_ATK @ 0x2222634
.word BattleData_DEF @ 0x2222638
.word 0x2d48 @ 0x222263c
.word 0x2d4a @ 0x2222640
.word 0x2d46 @ 0x2222644



.thumb
AICmd_69: @ 2222648 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r6, r1
	str     r0, [sp, #0x18]

	mov     r0, r6
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r6
	bl      AIHandler_LoadWord
	ldr     r2, [pc, #0x124] @ 0x2222784, (=0x356)
	str     r0, [sp, #0x20]
	ldrh    r3, [r6, r2]
	add     r2, #0x88
	ldr     r1, [pc, #0x120] @ 0x2222788, (=Unknown_222ee90)
	lsl     r7, r3, #4
	add     r3, r6, r7
	ldrh    r3, [r3, r2]
	ldr     r2, [pc, #0x11c] @ 0x222278c, (=0xffff)
	mov     r0, #0x0
.thumb
branch_2222672: @ 2222672 :thumb
	ldrh    r4, [r1, #0x0]
	cmp     r3, r4
	beq     branch_2222682
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r4, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r2
	bne     branch_2222672
.thumb
branch_2222682: @ 2222682 :thumb
	ldr     r2, [pc, #0x10c] @ 0x2222790, (=Unknown_222ee78)
	ldr     r4, [pc, #0x104] @ 0x222278c, (=0xffff)
	mov     r1, #0x0
.thumb
branch_2222688: @ 2222688 :thumb
	ldrh    r5, [r2, #0x0]
	cmp     r3, r5
	beq     branch_2222698
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r5, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r5, r4
	bne     branch_2222688
.thumb
branch_2222698: @ 2222698 :thumb
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xf4] @ 0x2222790, (=Unknown_222ee78)
	ldrh    r1, [r1, r2]
	ldr     r2, [pc, #0xec] @ 0x222278c, (=0xffff)
	cmp     r1, r2
	bne     branch_22226b8
	ldr     r1, [pc, #0xec] @ 0x2222794, (=0x3e1)
	add     r3, r6, r7
	ldrb    r1, [r3, r1]
	cmp     r1, #0x1
	bls     branch_2222776
	lsl     r1, r0, #1
	ldr     r0, [pc, #0xd4] @ 0x2222788, (=Unknown_222ee90)
	ldrh    r0, [r0, r1]
	cmp     r0, r2
	bne     branch_2222776
branch_22226b8: @ 22226b8 :thumb
	ldr     r0, [pc, #0xdc] @ 0x2222798, (=BattleData_3cf)
	ldrb    r7, [r6, r0]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
branch_22226c0: @ 22226c0 :thumb
	mov     r4, #0x0
	add     r5, sp, #0x28
branch_22226c4: @ 22226c4 :thumb
	mov     r2, r4
	mov     r0, r6
	mov     r1, r7
	add     r2, #0xa
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	strb    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x6
	blt     branch_22226c4
	mov     r0, #0xc0
	mov     r4, r7
	mul     r4, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_16_2255a4c
	add     r1, sp, #0x30
	str     r1, [sp, #0x0]
	ldr     r3, [pc, #0xac] @ 0x222279c, (=0x2db8)
	add     r1, r6, r4
	ldrh    r2, [r1, r3]
	str     r2, [sp, #0x4]
	add     r2, sp, #0x28
	str     r2, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r3
	add     r0, #0x14
	ldr     r0, [r1, r0]
	sub     r3, #0x6c
	lsl     r0, r0, #10
	lsr     r0, r0, #29
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x20]
	add     r3, r6, r3
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	mov     r2, r7
	add     r3, r3, r4
	bl      Function_2222d7c
	ldr     r1, [pc, #0x78] @ 0x2222798, (=BattleData_3cf)
	ldr     r0, [sp, #0x18]
	ldrb    r1, [r6, r1]
	bl      Function_16_223e258
	mov     r7, r0
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_222273a
	ldr     r0, [pc, #0x70] @ 0x22227a0, (=0x355)
	ldrb    r0, [r6, r0]
	lsl     r1, r0, #2
	add     r0, sp, #0x30
	ldr     r0, [r0, r1]
	str     r0, [sp, #0x24]
.thumb
branch_222273a: @ 222273a :thumb
	mov     r3, #0x0
	add     r2, sp, #0x30
.thumb
branch_222273e: @ 222273e :thumb
	ldr     r1, [r2, #0x0]
	ldr     r0, [sp, #0x24]
	cmp     r1, r0
	bgt     branch_222274e
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r3, #0x4
	blt     branch_222273e
.thumb
branch_222274e: @ 222274e :thumb
	cmp     r3, #0x4
	bne     branch_222275c
	mov     r0, #0xd7
	mov     r1, #0x2
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r6, r0]
	b       branch_2222768

branch_222275c: @ 222275c :thumb
	mov     r0, #0xd7
	mov     r1, #0x1
	lsl     r0, r0, #2          @ =0x35c
	add     sp, #0x40
	str     r1, [r6, r0]
	pop     {r3-r7,pc}

branch_2222768: @ 2222768 :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x2
	blt     branch_22226c0
	add     sp, #0x40
	pop     {r3-r7,pc}

branch_2222776: @ 2222776 :thumb
	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r6, r0]
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x2222782

.align 2
.word 0x356 @ 0x2222784
.word Unknown_222ee90 @ 0x2222788
.word 0xffff @ 0x222278c
.word Unknown_222ee78 @ 0x2222790
.word 0x3e1 @ 0x2222794
.word BattleData_3cf @ 0x2222798
.word 0x2db8 @ 0x222279c
.word 0x355 @ 0x22227a0



.thumb
AICmd_6a: @ 22227a4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0

	cmp     r4, #0x1
	bne     branch_22227c8
	bl      ErrorHandling
branch_22227c8: @ 22227c8 :thumb
	cmp     r4, #0x0
	bne     branch_22227d0
	bl      ErrorHandling
branch_22227d0: @ 22227d0 :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	bl      Function_20787cc
	ldr     r1, [pc, #0x10] @ 0x22227f0, (=0x3108)
	ldrb    r1, [r5, r1]
	tst     r0, r1
	beq     branch_22227ee
	mov     r0, r5
	mov     r1, r6
	bl      AIHandler_AddToPointer
branch_22227ee: @ 22227ee :thumb
	pop     {r4-r6,pc}
@ 0x22227f0

.word 0x3108 @ 0x22227f0



.thumb
AICmd_6b: @ 22227f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r6, r0
	cmp     r4, #0x1
	bne     branch_2222818
	bl      ErrorHandling
branch_2222818: @ 2222818 :thumb
	cmp     r4, #0x0
	bne     branch_2222820
	bl      ErrorHandling
branch_2222820: @ 2222820 :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	bl      Function_20787cc
	ldr     r1, [pc, #0x10] @ 0x2222840, (=0x3108)
	ldrb    r1, [r5, r1]
	tst     r0, r1
	bne     branch_222283e
	mov     r0, r5
	mov     r1, r6
	bl      AIHandler_AddToPointer
branch_222283e: @ 222283e :thumb
	pop     {r4-r6,pc}
@ 0x2222840

.word 0x3108 @ 0x2222840



.thumb
AICmd_42: @ 2222844 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x10] @ 0x2222878, (=0x2dbe)
	add     r1, r4, r1
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #28
	lsr     r1, r0, #28
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x2222878

.word 0x2dbe @ 0x2222878



.thumb
AICmd_43: @ 222287c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot

	mov     r2, r0
	mov     r1, #0xc0
	mul     r2, r1
	ldr     r0, [pc, #0x20] @ 0x22228c4, (=0x2dd4)
	add     r2, r4, r2
	add     r1, #0x90
	ldr     r2, [r2, r0]
	ldr     r0, [r4, r1]
	cmp     r2, r0
	bge     branch_22228b8
	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}

branch_22228b8: @ 22228b8 :thumb
	mov     r1, #0x1
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x22228c2

.align 2
.word 0x2dd4 @ 0x22228c4



.thumb
AICmd_44: @ 22228c8 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot

	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x10] @ 0x22228fc, (=0x2dc8)
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	lsl     r0, r0, #8
	lsr     r1, r0, #29
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]

	pop     {r4,pc}
@ 0x22228fc

.word 0x2dc8 @ 0x22228fc



.thumb
AICmd_45: @ 2222900 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, #0xd7
	ldr     r1, [r5, #0x2c]
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]

	pop     {r3-r5,pc}
@ 0x2222918


.thumb
AICmd_46: @ 2222918 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	lsl     r0, r0, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0xc] @ 0x2222948, (=0x3124)
	ldrh    r1, [r1, r0]
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x2222946

.align 2
.word 0x3124 @ 0x2222948



.thumb
AICmd_47: @ 222294c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	ldr     r0, [r4, r1]
	lsl     r0, r0, #4
	add     r2, r4, r0
	mov     r0, r1
	add     r0, #0x86
	ldrb    r0, [r2, r0]
	str     r0, [r4, r1]

	pop     {r4,pc}
@ 0x222296c


.thumb
AICmd_48: @ 222296c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	ldr     r0, [r4, r1]
	lsl     r0, r0, #4
	add     r2, r4, r0
	mov     r0, r1
	add     r0, #0x85
	ldrb    r0, [r2, r0]
	str     r0, [r4, r1]

	pop     {r4,pc}
@ 0x222298c


.thumb
AICmd_49: @ 222298c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	ldr     r0, [r4, r1]
	lsl     r0, r0, #4
	add     r2, r4, r0
	mov     r0, r1
	add     r0, #0x82
	ldrh    r0, [r2, r0]
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x22229ac


.thumb
AICmd_4a: @ 22229ac :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	lsl     r1, r0, #1
	add     r2, r4, r1
	ldr     r1, [pc, #0x30] @ 0x2222a00, (=0x305c)
	ldrh    r1, [r2, r1]
	cmp     r1, #0xb6
	beq     branch_22229e8
	cmp     r1, #0xc5
	beq     branch_22229e8
	cmp     r1, #0xcb
	beq     branch_22229e8
	mov     r0, #0xd7
	mov     r1, #0x0
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}

branch_22229e8: @ 22229e8 :thumb
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x14] @ 0x2222a04, (=0x2dc8)
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	lsl     r0, r0, #19
	lsr     r1, r0, #30
	mov     r0, #0xd7
	lsl     r0, r0, #2          @ =0x35c
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x22229fe

.align 2
.word 0x305c @ 0x2222a00
.word 0x2dc8 @ 0x2222a04



.thumb
AICmd_4b: @ 2222a08 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2222c28

	pop     {r3-r5,pc}
@ 0x2222a28


thumb_func_start AICmd_Jump
AICmd_Jump: @ 2222a28 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r1, r0
	mov     r0, r4
	bl      AIHandler_AddToPointer

	pop     {r4,pc}
thumb_func_end AICmd_Jump


.thumb
AICmd_4d: @ 2222a44 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	mov     r1, r4
	bl      Function_2222c60

	cmp     r0, #0x1
	beq     branch_2222a6a
	mov     r1, #0xd9
	lsl     r1, r1, #2              @ =0x364
	ldrb    r2, [r4, r1]
	mov     r0, #0x1
	orr     r0, r2
	strb    r0, [r4, r1]
branch_2222a6a: @ 2222a6a :thumb
	pop     {r3-r5,pc}
@ 0x2222a6c


.thumb
AICmd_4e: @ 2222a6c :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r1, r0

	cmp     r4, #0x0
	beq     branch_2222a96
	cmp     r4, #0x1
	beq     branch_2222abc
	cmp     r4, #0x2
	beq     branch_2222ae2
	pop     {r3-r5,pc}

branch_2222a96: @ 2222a96 :thumb
	ldr     r2, [pc, #0x70] @ 0x2222b08, (=BattleData_3cf)
	mov     r3, #0xc0
	ldrb    r0, [r5, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
	ldrb    r2, [r5, r2]
	mov     r4, r0
	mul     r4, r3
	add     r0, r5, r4
	ldr     r4, [pc, #0x64] @ 0x2222b0c, (=BattleData_Level)
	mul     r3, r2
	add     r2, r5, r3
	ldrb    r0, [r0, r4]
	ldrb    r2, [r2, r4]
	cmp     r0, r2
	bls     branch_2222b06
	mov     r0, r5
	bl      AIHandler_AddToPointer
	pop     {r3-r5,pc}

branch_2222abc: @ 2222abc :thumb
	ldr     r2, [pc, #0x48] @ 0x2222b08, (=BattleData_3cf)
	mov     r3, #0xc0
	ldrb    r0, [r5, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
	ldrb    r2, [r5, r2]
	mov     r4, r0
	mul     r4, r3
	add     r0, r5, r4
	ldr     r4, [pc, #0x3c] @ 0x2222b0c, (=BattleData_Level)
	mul     r3, r2
	add     r2, r5, r3
	ldrb    r0, [r0, r4]
	ldrb    r2, [r2, r4]
	cmp     r0, r2
	bcs     branch_2222b06
	mov     r0, r5
	bl      AIHandler_AddToPointer
	pop     {r3-r5,pc}

branch_2222ae2: @ 2222ae2 :thumb
	ldr     r2, [pc, #0x24] @ 0x2222b08, (=BattleData_3cf)
	mov     r3, #0xc0
	ldrb    r0, [r5, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
	ldrb    r2, [r5, r2]
	mov     r4, r0
	mul     r4, r3
	add     r0, r5, r4
	ldr     r4, [pc, #0x18] @ 0x2222b0c, (=BattleData_Level)
	mul     r3, r2
	add     r2, r5, r3
	ldrb    r0, [r0, r4]
	ldrb    r2, [r2, r4]
	cmp     r0, r2
	bne     branch_2222b06
	mov     r0, r5
	bl      AIHandler_AddToPointer
branch_2222b06: @ 2222b06 :thumb
	pop     {r3-r5,pc}
@ 0x2222b08

.word BattleData_3cf @ 0x2222b08
.word BattleData_Level @ 0x2222b0c



.thumb
AICmd_4f: @ 2222b10 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0

	mov     r0, #0x3d
	lsl     r0, r0, #4          @ =0x3d0
	ldrb    r2, [r4, r0]
	mov     r0, #0xc0
	mul     r0, r2
	add     r2, r4, r0
	ldr     r0, [pc, #0x10] @ 0x2222b44, (=0x2dc8)
	ldr     r0, [r2, r0]
	lsl     r0, r0, #21
	lsr     r0, r0, #29
	beq     branch_2222b40
	mov     r0, r4
	bl      AIHandler_AddToPointer
branch_2222b40: @ 2222b40 :thumb
	pop     {r4,pc}
@ 0x2222b42

.align 2
.word 0x2dc8 @ 0x2222b44



.thumb
AICmd_50: @ 2222b48 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	mov     r1, r0

	mov     r0, #0x3d
	lsl     r0, r0, #4          @ =0x3d0
	ldrb    r2, [r4, r0]
	mov     r0, #0xc0
	mul     r0, r2
	add     r2, r4, r0
	ldr     r0, [pc, #0x10] @ 0x2222b7c, (=0x2dc8)
	ldr     r0, [r2, r0]
	lsl     r0, r0, #21
	lsr     r0, r0, #29
	bne     branch_2222b78
	mov     r0, r4
	bl      AIHandler_AddToPointer
branch_2222b78: @ 2222b78 :thumb
	pop     {r4,pc}
@ 0x2222b7a

.align 2
.word 0x2dc8 @ 0x2222b7c



.thumb
AICmd_51: @ 2222b80 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord
	ldr     r2, [pc, #0x1c] @ 0x2222bb0, (=BattleData_3cf)
	mov     r1, r0

	ldrb    r0, [r4, r2]
	.hword  0x1c52 @ add r2, r2, #0x1       @ =0x3d0
	mov     r3, #0x1
	ldrb    r2, [r4, r2]
	and     r0, r3
	and     r2, r3
	cmp     r0, r2
	bne     branch_2222bac
	mov     r0, r4
	bl      AIHandler_AddToPointer
branch_2222bac: @ 2222bac :thumb
	pop     {r4,pc}
@ 0x2222bae

.align 2
.word BattleData_3cf @ 0x2222bb0



.thumb
AICmd_54: @ 2222bb4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r5
	bl      AIHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      AIHandler_LoadWord
	lsl     r1, r4, #24
	mov     r6, r0

	mov     r0, r5
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x14] @ 0x2222bf4, (=0x2dc8)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	lsr     r0, r0, #31
	beq     branch_2222bf0
	mov     r0, r5
	mov     r1, r6
	bl      AIHandler_AddToPointer
branch_2222bf0: @ 2222bf0 :thumb
	pop     {r4-r6,pc}
@ 0x2222bf2

.align 2
.word 0x2dc8 @ 0x2222bf4



.thumb
AICmd_6c: @ 2222bf8 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      AIHandler_AddToPointer

	mov     r0, r4
	bl      AIHandler_LoadWord

	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      AI_GetPkmnDataSlot
	mov     r1, r0
	mov     r0, r4
	bl      Function_16_2255a4c
	mov     r1, #0xd7
	lsl     r1, r1, #2          @ =0x35c
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2222c26


.align 2, 0
.thumb
Function_2222c28: @ 2222c28 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r1, #0xf3
	lsl     r1, r1, #2          @ =0x3cc BattleData_3cc
	ldrb    r5, [r4, r1]
	add     r0, r5, #0x1
	strb    r0, [r4, r1]
	ldr     r0, [pc, #0x24] @ 0x2222c5c, (=BattleData_2138)
	sub     r1, #0x20
	ldr     r3, [r4, r0]
	lsl     r0, r5, #2
	add     r0, r4, r0
	str     r3, [r0, r1]
	mov     r0, r4
	mov     r1, r2
	bl      AIHandler_AddToPointer

	mov     r0, #0xf3
	lsl     r0, r0, #2          @ =0x3cc BattleData_3cc
	ldrb    r0, [r4, r0]
	cmp     r0, #0x8
	bls     branch_2222c58
	bl      ErrorHandling
branch_2222c58: @ 2222c58 :thumb
	pop     {r3-r5,pc}
@ 0x2222c5a

.align 2
.word BattleData_2138 @ 0x2222c5c



.thumb
Function_2222c60: @ 2222c60 :thumb
	mov     r0, #0xf3
	lsl     r0, r0, #2          @ =0x3cc BattleData_3cc
	ldrb    r2, [r1, r0]
	cmp     r2, #0x0
	beq     branch_2222c80
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r1, r0]
	ldrb    r2, [r1, r0]
	sub     r0, #0x20
	lsl     r2, r2, #2
	add     r2, r1, r2
	ldr     r2, [r2, r0]
	ldr     r0, [pc, #0x8] @ 0x2222c84, (=BattleData_2138)
	str     r2, [r1, r0]

	mov     r0, #0x1
	bx      lr

branch_2222c80: @ 2222c80 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2222c84

.word BattleData_2138 @ 0x2222c84



.thumb
Function_2222c88: @ 2222c88 :thumb
	push    {r3-r7,lr}
	mov     r2, #0x3d
	lsl     r2, r2, #4          @ =0x3d0
	str     r1, [sp, #0x0]
	ldrb    r1, [r1, r2]
	mov     r7, #0x37
	lsl     r7, r7, #4
	mov     lr, r1
	mov     r3, lr
	lsl     r4, r3, #1
	ldr     r3, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	lsl     r1, r1, #3
	add     r4, r3, r4
	ldr     r3, [pc, #0x44] @ 0x2222cec, (=BattleData_307c)
	mov     r0, #0x0
	add     r5, r2, r1
	mov     r12, r1
	ldrh    r3, [r4, r3]
	mov     r1, r5
	mov     r2, r0
	mov     r6, r7
branch_2222cb4: @ 2222cb4 :thumb
	ldrh    r4, [r1, r6]
	cmp     r3, r4
	beq     branch_2222cea
	add     r4, r5, r2
	ldrh    r4, [r4, r7]
	cmp     r4, #0x0
	bne     branch_2222ce0
	mov     r1, lr
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x0]
	ldr     r3, [sp, #0x0]
	add     r2, r1, r2
	ldr     r1, [pc, #0x1c] @ 0x2222cec, (=BattleData_307c)
	lsl     r0, r0, #1
	ldrh    r1, [r2, r1]
	mov     r2, r12
	add     r2, r3, r2
	add     r2, r2, r0
	mov     r0, #0x37
	lsl     r0, r0, #4
	strh    r1, [r2, r0]
	pop     {r3-r7,pc}

branch_2222ce0: @ 2222ce0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, #0x4
	blt     branch_2222cb4
branch_2222cea: @ 2222cea :thumb
	pop     {r3-r7,pc}
@ 0x2222cec

.word BattleData_307c @ 0x2222cec



thumb_func_start AIHandler_LoadWord
AIHandler_LoadWord: @ 2222cf0 :thumb
	ldr     r1, =BattleData_AIScriptPtr
	add     r2, r1, #4      @ r2 = 0x2138 (BattleData_2138 - BattleData_AIScriptPtr)
	ldr     r2, [r0, r2]
	ldr     r3, [r0, r1]
	lsl     r2, r2, #2
	ldr     r3, [r3, r2]

	add     r2, r1, #4      @ r2 = 0x2138 (BattleData_2138 - BattleData_AIScriptPtr)
	ldr     r2, [r0, r2]
	.hword  0x1d09 @ add r1, r1, #0x4 @ r1 = 0x2138 (BattleData_2138 - BattleData_AIScriptPtr)
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r0, r1]

	mov     r0, r3
	bx      lr
@ 0x2222d0a

.align 2
.pool
thumb_func_end AIHandler_LoadWord



thumb_func_start Function_2222d10
Function_2222d10: @ 2222d10 :thumb
	ldr     r2, =BattleData_AIScriptPtr
	ldr     r3, [r0, r2]
	.hword  0x1d12 @ add r2, r2, #0x4   @ 0x2138 (BattleData_2138 - BattleData_AIScriptPtr)
	ldr     r0, [r0, r2]
	add     r0, r0, r1
	lsl     r0, r0, #2
	ldr     r0, [r3, r0]
	bx      lr
@ 0x2222d20

.pool
thumb_func_end Function_2222d10



thumb_func_start AIHandler_AddToPointer
AIHandler_AddToPointer: @ 2222d24 :thumb
	ldr     r2, =BattleData_2138
	ldr     r3, [r0, r2]
	add     r1, r3, r1
	str     r1, [r0, r2]
	bx      lr
@ 0x2222d2e

.align 2
.pool
thumb_func_end AIHandler_AddToPointer



thumb_func_start AI_GetPkmnDataSlot
AI_GetPkmnDataSlot: @ 2222d34 :thumb
	cmp     r1, #0x3
	bhi     branch_2222d52
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2222d44

Jumppoints_2222d44:
.hword branch_2222d52 - Jumppoints_2222d44 - 2
.hword branch_2222d4c - Jumppoints_2222d44 - 2
.hword branch_2222d68 - Jumppoints_2222d44 - 2
.hword branch_2222d5a - Jumppoints_2222d44 - 2

branch_2222d4c: @ 2222d4c :thumb
	ldr     r1, [pc, #0x28] @ 0x2222d78, (=BattleData_3cf)
	ldrb    r0, [r0, r1]
	bx      lr

branch_2222d52: @ 2222d52 :thumb
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r0, [r0, r1]
	bx      lr

branch_2222d5a: @ 2222d5a :thumb
	ldr     r1, [pc, #0x1c] @ 0x2222d78, (=BattleData_3cf)
	ldrb    r1, [r0, r1]
	mov     r0, #0x2
	eor     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr

branch_2222d68: @ 2222d68 :thumb
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r1, [r0, r1]
	mov     r0, #0x2
	eor     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x2222d78

.word BattleData_3cf @ 0x2222d78
thumb_func_end AI_GetPkmnDataSlot



.thumb
Function_2222d7c: @ 2222d7c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x44]
	ldr     r6, [sp, #0x40]
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0x48]
	mov     r7, r1
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x4c]
	str     r2, [sp, #0x18]
	str     r0, [sp, #0x4c]
	ldr     r0, [sp, #0x50]
	str     r3, [sp, #0x1c]
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x54]
	str     r0, [sp, #0x54]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
branch_2222da4: @ 2222da4 :thumb
	ldr     r2, [sp, #0x1c]
	ldr     r3, [pc, #0xc8] @ 0x2222e70, (=0x3de)
	ldrh    r2, [r2, #0x0]
	ldr     r1, [pc, #0xc8] @ 0x2222e74, (=Unknown_222ee90)
	mov     r0, #0x0
	mov     r12, r2
	lsl     r2, r2, #4
	add     r2, r7, r2
	ldrh    r3, [r2, r3]
	str     r2, [sp, #0x20]
	ldr     r2, [pc, #0xbc] @ 0x2222e78, (=0xffff)
branch_2222dba: @ 2222dba :thumb
	ldrh    r4, [r1, #0x0]
	cmp     r4, r3
	beq     branch_2222dca
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r4, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r2
	bne     branch_2222dba
branch_2222dca: @ 2222dca :thumb
	ldr     r2, [pc, #0xb0] @ 0x2222e7c, (=Unknown_222ee78)
	ldr     r4, [pc, #0xa8] @ 0x2222e78, (=0xffff)
	mov     r1, #0x0
branch_2222dd0: @ 2222dd0 :thumb
	ldrh    r5, [r2, #0x0]
	cmp     r5, r3
	beq     branch_2222de0
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r5, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r5, r4
	bne     branch_2222dd0
branch_2222de0: @ 2222de0 :thumb
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x98] @ 0x2222e7c, (=Unknown_222ee78)
	ldrh    r1, [r1, r2]
	ldr     r2, [pc, #0x90] @ 0x2222e78, (=0xffff)
	cmp     r1, r2
	bne     branch_2222e06
	mov     r1, r12
	cmp     r1, #0x0
	beq     branch_2222e3c
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x7c] @ 0x2222e74, (=Unknown_222ee90)
	ldrh    r0, [r0, r1]
	cmp     r0, r2
	bne     branch_2222e3c
	ldr     r1, [pc, #0x80] @ 0x2222e80, (=0x3e1)
	ldr     r0, [sp, #0x20]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x1
	bls     branch_2222e3c
branch_2222e06: @ 2222e06 :thumb
	ldr     r0, [sp, #0x54]
	cmp     r0, #0x1
	bne     branch_2222e18
	ldr     r0, [sp, #0x28]
	add     r1, r7, r0
	mov     r0, #0xdb           @ =0x36c
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	b       branch_2222e1a

branch_2222e18: @ 2222e18 :thumb
	mov     r0, #0x64
branch_2222e1a: @ 2222e1a :thumb
	ldr     r1, [sp, #0x48]
	mov     r2, r12
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x18]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x4c]
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x50]
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x44]
	mov     r1, r7
	bl      Function_2222e84
	str     r0, [r6, #0x0]
	b       branch_2222e40

branch_2222e3c: @ 2222e3c :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x0]
branch_2222e40: @ 2222e40 :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x4
	blt     branch_2222da4
	ldr     r2, [sp, #0x40]
	mov     r3, #0x0
branch_2222e56: @ 2222e56 :thumb
	ldr     r1, [r2, #0x0]
	ldr     r0, [sp, #0x24]
	cmp     r0, r1
	bge     branch_2222e60
	str     r1, [sp, #0x24]
branch_2222e60: @ 2222e60 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r3, #0x4
	blt     branch_2222e56
	ldr     r0, [sp, #0x24]
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2222e6e

.align 2
.word 0x3de @ 0x2222e70
.word Unknown_222ee90 @ 0x2222e74
.word 0xffff @ 0x2222e78
.word Unknown_222ee78 @ 0x2222e7c
.word 0x3e1 @ 0x2222e80



.thumb
Function_2222e84: @ 2222e84 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r6, r1
	ldr     r1, [sp, #0x60]
	str     r3, [sp, #0x1c]
	str     r1, [sp, #0x60]
	ldr     r1, [sp, #0x64]
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x64]
	mov     r1, #0x3d
	lsl     r1, r1, #4          @ =0x3d0
	ldrb    r1, [r6, r1]
	mov     r5, r2
	bl      Function_16_223e208
	mov     r4, #0x0
	str     r0, [sp, #0x28]
	mov     r0, r4
	mov     r7, r4
	str     r4, [sp, #0x20]
	str     r0, [sp, #0x48]
	cmp     r5, #0xd8
	bgt     branch_2222eea
	blt     branch_2222eb6
	b       branch_22230f4

branch_2222eb6: @ 2222eb6 :thumb
	cmp     r5, #0x52
	bgt     branch_2222ed8
	blt     branch_2222ebe
	b       branch_22230b8

branch_2222ebe: @ 2222ebe :thumb
	cmp     r5, #0x31
	bgt     branch_2222ec8
	bne     branch_2222ec6
	b       branch_222316e

branch_2222ec6: @ 2222ec6 :thumb
	b       branch_22231b0

branch_2222ec8: @ 2222ec8 :thumb
	cmp     r5, #0x45
	bgt     branch_2222ed6
	cmp     r5, #0x43
	blt     branch_2222ed6
	beq     branch_2222f20
	cmp     r5, #0x45
	beq     branch_2222ede
branch_2222ed6: @ 2222ed6 :thumb
	b       branch_22231b0

branch_2222ed8: @ 2222ed8 :thumb
	cmp     r5, #0x65
	bgt     branch_2222ee2
	bne     branch_2222ee0
branch_2222ede: @ 2222ede :thumb
	b       branch_22230be

branch_2222ee0: @ 2222ee0 :thumb
	b       branch_22231b0

branch_2222ee2: @ 2222ee2 :thumb
	cmp     r5, #0x95
	bne     branch_2222ee8
	b       branch_22230ce

branch_2222ee8: @ 2222ee8 :thumb
	b       branch_22231b0

branch_2222eea: @ 2222eea :thumb
	mov     r0, #0x5a
	lsl     r0, r0, #2
	cmp     r5, r0
	bgt     branch_2222f10
	blt     branch_2222ef6
	b       branch_222308e

branch_2222ef6: @ 2222ef6 :thumb
	cmp     r5, #0xde
	bgt     branch_2222f0a
	cmp     r5, #0xda
	blt     branch_2222f08
	bne     branch_2222f02
	b       branch_222310e

branch_2222f02: @ 2222f02 :thumb
	cmp     r5, #0xde
	bne     branch_2222f08
	b       branch_222312c

branch_2222f08: @ 2222f08 :thumb
	b       branch_22231b0

branch_2222f0a: @ 2222f0a :thumb
	cmp     r5, #0xed
	beq     branch_2222fe8
	b       branch_22231b0

branch_2222f10: @ 2222f10 :thumb
	mov     r1, r0
	add     r1, #0x57
	cmp     r5, r1
	bgt     branch_2222f2a
	mov     r1, r0
	add     r1, #0x57
	cmp     r5, r1
	blt     branch_2222f22
branch_2222f20: @ 2222f20 :thumb
	b       branch_2223174

branch_2222f22: @ 2222f22 :thumb
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r5, r0
	beq     branch_2222f32
	b       branch_22231b0

branch_2222f2a: @ 2222f2a :thumb
	add     r0, #0x59
	cmp     r5, r0
	beq     branch_2222f5a
	b       branch_22231b0

branch_2222f32: @ 2222f32 :thumb
	ldr     r0, [sp, #0x68]
	cmp     r0, #0x67
	beq     branch_2222f66
	ldr     r0, [sp, #0x6c]
	cmp     r0, #0x0
	bne     branch_2222f66
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	mov     r2, #0xb
	bl      Function_16_225b0fc
	mov     r4, r0
	beq     branch_2222f66
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	mov     r2, #0xc
	bl      Function_16_225b0fc
	mov     r7, r0
	b       branch_22231b4

branch_2222f5a: @ 2222f5a :thumb
	ldr     r0, [sp, #0x68]
	cmp     r0, #0x67
	beq     branch_2222f66
	ldr     r0, [sp, #0x6c]
	cmp     r0, #0x0
	beq     branch_2222f68
branch_2222f66: @ 2222f66 :thumb
	b       branch_22231b4

branch_2222f68: @ 2222f68 :thumb
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	mov     r2, #0x1
	bl      Function_16_225b0fc
	sub     r0, #0x7e
	cmp     r0, #0xf
	bhi     branch_2222fe4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2222f84

Jumppoints_2222f84:
.hword branch_2222fc4 - Jumppoints_2222f84 - 2
.hword branch_2222fc8 - Jumppoints_2222f84 - 2
.hword branch_2222fd0 - Jumppoints_2222f84 - 2
.hword branch_2222fcc - Jumppoints_2222f84 - 2
.hword branch_2222fd8 - Jumppoints_2222f84 - 2
.hword branch_2222fa4 - Jumppoints_2222f84 - 2
.hword branch_2222fac - Jumppoints_2222f84 - 2
.hword branch_2222fb0 - Jumppoints_2222f84 - 2
.hword branch_2222fa8 - Jumppoints_2222f84 - 2
.hword branch_2222fd4 - Jumppoints_2222f84 - 2
.hword branch_2222fb8 - Jumppoints_2222f84 - 2
.hword branch_2222fb4 - Jumppoints_2222f84 - 2
.hword branch_2222fbc - Jumppoints_2222f84 - 2
.hword branch_2222fdc - Jumppoints_2222f84 - 2
.hword branch_2222fe0 - Jumppoints_2222f84 - 2
.hword branch_2222fc0 - Jumppoints_2222f84 - 2

.thumb
branch_2222fa4: @ 2222fa4 :thumb
	mov     r7, #0x1
	b       branch_22231b4

branch_2222fa8: @ 2222fa8 :thumb
	mov     r7, #0x2
	b       branch_22231b4

branch_2222fac: @ 2222fac :thumb
	mov     r7, #0x3
	b       branch_22231b4

branch_2222fb0: @ 2222fb0 :thumb
	mov     r7, #0x4
	b       branch_22231b4

branch_2222fb4: @ 2222fb4 :thumb
	mov     r7, #0x5
	b       branch_22231b4

branch_2222fb8: @ 2222fb8 :thumb
	mov     r7, #0x6
	b       branch_22231b4

branch_2222fbc: @ 2222fbc :thumb
	mov     r7, #0x7
	b       branch_22231b4

branch_2222fc0: @ 2222fc0 :thumb
	mov     r7, #0x8
	b       branch_22231b4

branch_2222fc4: @ 2222fc4 :thumb
	mov     r7, #0xa
	b       branch_22231b4

branch_2222fc8: @ 2222fc8 :thumb
	mov     r7, #0xb
	b       branch_22231b4

branch_2222fcc: @ 2222fcc :thumb
	mov     r7, #0xc
	b       branch_22231b4

branch_2222fd0: @ 2222fd0 :thumb
	mov     r7, #0xd
	b       branch_22231b4

branch_2222fd4: @ 2222fd4 :thumb
	mov     r7, #0xe
	b       branch_22231b4

branch_2222fd8: @ 2222fd8 :thumb
	mov     r7, #0xf
	b       branch_22231b4

branch_2222fdc: @ 2222fdc :thumb
	mov     r7, #0x10
	b       branch_22231b4

branch_2222fe0: @ 2222fe0 :thumb
	mov     r7, #0x11
	b       branch_22231b4

branch_2222fe4: @ 2222fe4 :thumb
	mov     r7, #0x0
	b       branch_22231b4

branch_2222fe8: @ 2222fe8 :thumb
	ldr     r0, [sp, #0x60]
	ldr     r1, [sp, #0x60]
	ldrb    r0, [r0, #0x1]
	ldrb    r3, [r1, #0x4]
	ldrb    r1, [r1, #0x5]
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x60]
	str     r1, [sp, #0x34]
	ldrb    r0, [r0, #0x0]
	lsl     r1, r1, #31
	lsr     r1, r1, #26
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x60]
	str     r1, [sp, #0x38]
	ldrb    r2, [r0, #0x2]
	lsl     r1, r3, #31
	lsr     r1, r1, #27
	ldrb    r0, [r0, #0x3]
	str     r1, [sp, #0x3c]
	mov     r4, #0x1
	lsl     r1, r0, #31
	lsr     r1, r1, #28
	str     r1, [sp, #0x40]
	lsl     r1, r2, #31
	lsr     r7, r1, #29
	ldr     r1, [sp, #0x30]
	and     r1, r4
	ldr     r4, [sp, #0x2c]
	lsl     r4, r4, #31
	lsr     r4, r4, #30
	orr     r1, r4
	mov     r4, r7
	orr     r4, r1
	ldr     r1, [sp, #0x40]
	orr     r4, r1
	ldr     r1, [sp, #0x3c]
	orr     r4, r1
	ldr     r1, [sp, #0x38]
	orr     r1, r4
	str     r1, [sp, #0x24]
	mov     r1, #0x2
	ldr     r4, [sp, #0x34]
	and     r3, r1
	and     r4, r1
	lsl     r4, r4, #4
	str     r4, [sp, #0x44]
	and     r0, r1
	lsl     r4, r3, #3
	lsl     r3, r0, #2
	mov     r0, r2
	and     r0, r1
	lsl     r2, r0, #1
	ldr     r0, [sp, #0x30]
	and     r0, r1
	asr     r7, r0, #1
	ldr     r0, [sp, #0x2c]
	and     r0, r1
	orr     r0, r7
	orr     r0, r2
	orr     r0, r3
	mov     r1, r4
	orr     r1, r0
	ldr     r0, [sp, #0x44]
	orr     r1, r0
	mov     r0, #0x28
	mul     r0, r1
	mov     r1, #0x3f
	blx     _s32_div_f
	mov     r4, r0
	ldr     r1, [sp, #0x24]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0x3f
	add     r4, #0x1e
	blx     _s32_div_f
	add     r7, r0, #0x1
	cmp     r7, #0x9
	bge     branch_222308a
	b       branch_22231b4

branch_222308a: @ 222308a :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	b       branch_22231b4

branch_222308e: @ 222308e :thumb
	mov     r0, #0x3d
	lsl     r0, r0, #4          @ =0x3d0
	ldrb    r0, [r6, r0]
	ldr     r2, [pc, #0x1bc] @ 0x2223254, (=0x21f0)
	lsl     r0, r0, #2
	add     r0, r6, r0
	ldr     r1, [r0, r2]
	mov     r0, #0x19
	mul     r0, r1
	ldr     r1, [sp, #0x64]
	lsl     r1, r1, #2
	add     r1, r6, r1
	ldr     r1, [r1, r2]
	blx     _u32_div_f
	add     r4, r0, #0x1
	cmp     r4, #0x96
	ble     branch_22230b4
	mov     r4, #0x96
branch_22230b4: @ 22230b4 :thumb
	mov     r7, #0x0
	b       branch_22231b4

branch_22230b8: @ 22230b8 :thumb
	mov     r0, #0x28
	str     r0, [sp, #0x20]
	b       branch_22231b4

branch_22230be: @ 22230be :thumb
	ldr     r0, [sp, #0x64]
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x190] @ 0x2223258, (=BattleData_Level)
	add     r1, r6, r1
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x20]
	b       branch_22231b4

branch_22230ce: @ 22230ce :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_16_GetRandomNr
	mov     r1, #0xb
	blx     _s32_div_f
	ldr     r0, [sp, #0x64]
	mov     r2, #0xc0
	mul     r2, r0
	ldr     r0, [pc, #0x174] @ 0x2223258, (=BattleData_Level)
	add     r2, r6, r2
	ldrb    r2, [r2, r0]
	add     r0, r1, #0x5
	mov     r1, #10
	mul     r0, r2
	blx     _s32_div_f
	str     r0, [sp, #0x20]
	b       branch_22231b4

branch_22230f4: @ 22230f4 :thumb
	ldr     r0, [sp, #0x64]
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x160] @ 0x222325c, (=0x2d75)
	add     r1, r6, r1
	ldrb    r1, [r1, r0]
	mov     r0, #0xa
	mul     r0, r1
	mov     r1, #0x19
	blx     _s32_div_f
	mov     r4, r0
	b       branch_22231b4

branch_222310e: @ 222310e :thumb
	ldr     r0, [sp, #0x64]
	mov     r1, #0xc0
	mul     r1, r0
	ldr     r0, [pc, #0x144] @ 0x222325c, (=0x2d75)
	add     r1, r6, r1
	ldrb    r1, [r1, r0]
	mov     r0, #0xff
	sub     r1, r0, r1
	mov     r0, #0xa
	mul     r0, r1
	mov     r1, #0x19
	blx     _s32_div_f
	mov     r4, r0
	b       branch_22231b4

branch_222312c: @ 222312c :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_16_GetRandomNr
	mov     r1, #0x64
	blx     _s32_div_f
	cmp     r1, #0x5
	bge     branch_2223140
	mov     r4, #0xa
	b       branch_222316a

branch_2223140: @ 2223140 :thumb
	cmp     r1, #0xf
	bge     branch_2223148
	mov     r4, #0x1e
	b       branch_222316a

branch_2223148: @ 2223148 :thumb
	cmp     r1, #0x23
	bge     branch_2223150
	mov     r4, #0x32
	b       branch_222316a

branch_2223150: @ 2223150 :thumb
	cmp     r1, #0x41
	bge     branch_2223158
	mov     r4, #0x46
	b       branch_222316a

branch_2223158: @ 2223158 :thumb
	cmp     r1, #0x55
	bge     branch_2223160
	mov     r4, #0x5a
	b       branch_222316a

branch_2223160: @ 2223160 :thumb
	cmp     r1, #0x5f
	bge     branch_2223168
	mov     r4, #0x6e
	b       branch_222316a

branch_2223168: @ 2223168 :thumb
	mov     r4, #0x96
branch_222316a: @ 222316a :thumb
	mov     r7, #0x0
	b       branch_22231b4

branch_222316e: @ 222316e :thumb
	mov     r0, #0x14
	str     r0, [sp, #0x20]
	b       branch_22231b4

branch_2223174: @ 2223174 :thumb
	mov     r2, #0x3d
	lsl     r2, r2, #4          @ =0x3d0
	ldrb    r3, [r6, r2]
	mov     r2, #0xc0
	ldr     r1, [pc, #0xe0] @ 0x2223260, (=Unknown_222ee60)
	mul     r2, r3
	add     r3, r6, r2
	ldr     r2, [pc, #0xe0] @ 0x2223264, (=0x2d60)
	ldr     r4, [pc, #0xe0] @ 0x2223268, (=0xffff)
	ldr     r2, [r3, r2]
	mov     r0, #0x0
branch_222318a: @ 222318a :thumb
	ldrh    r3, [r1, #0x0]
	cmp     r3, r2
	bge     branch_222319a
	.hword  0x1d09 @ add r1, r1, #0x4
	ldrh    r3, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r3, r4
	bne     branch_222318a
branch_222319a: @ 222319a :thumb
	ldr     r1, [pc, #0xc4] @ 0x2223260, (=Unknown_222ee60)
	lsl     r0, r0, #2
	ldrh    r2, [r1, r0]
	ldr     r1, [pc, #0xc4] @ 0x2223268, (=0xffff)
	cmp     r2, r1
	beq     branch_22231ac
	ldr     r1, [pc, #0xc4] @ 0x222326c, (=Unknown_222ee60+2)
	ldrh    r4, [r1, r0]
	b       branch_22231b4

branch_22231ac: @ 22231ac :thumb
	mov     r4, #0x78
	b       branch_22231b4

branch_22231b0: @ 22231b0 :thumb
	mov     r4, #0x0
	mov     r7, r4
branch_22231b4: @ 22231b4 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_22231fe
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	mov     r12, r0
	ldr     r0, [r6, r0]
	ldr     r3, [sp, #0x28]
	str     r0, [sp, #0x0]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x64]
	lsl     r3, r3, #2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	mov     r0, #0x3d
	lsl     r0, r0, #4          @ =0x3d0
	ldrb    r0, [r6, r0]
	add     r4, r6, r3
	mov     r3, r12
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	add     r3, #0x3c
	ldr     r0, [sp, #0x18]
	ldr     r3, [r4, r3]
	mov     r1, r6
	mov     r2, r5
	bl      CalculateDamage
	str     r0, [sp, #0x20]
	b       branch_222320a

branch_22231fe: @ 22231fe :thumb
	ldr     r1, [pc, #0x70] @ 0x2223270, (=0x213c)
	mov     r0, #0x2
	ldr     r2, [r6, r1]
	lsl     r0, r0, #10
	orr     r0, r2
	str     r0, [r6, r1]
branch_222320a: @ 222320a :thumb
	ldr     r0, [sp, #0x64]
	mov     r1, r6
	str     r0, [sp, #0x0]
	mov     r0, #0x3d
	lsl     r0, r0, #4          @ =0x3d0
	ldrb    r0, [r6, r0]
	mov     r2, r5
	mov     r3, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x48
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	bl      Function_16_2254fa8
	ldr     r2, [pc, #0x44] @ 0x2223270, (=0x213c)
	ldr     r1, [pc, #0x44] @ 0x2223274, (=0xfffff7ff)
	ldr     r3, [r6, r2]
	and     r1, r3
	str     r1, [r6, r2]
	ldr     r2, [sp, #0x48]
	ldr     r1, [pc, #0x40] @ 0x2223278, (=0x140808)
	tst     r1, r2
	beq     branch_2223242
	add     sp, #0x4c
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2223242: @ 2223242 :thumb
	add     r1, sp, #0x70
	ldrb    r1, [r1, #0x0]
	mul     r1, r0
	mov     r0, r1
	mov     r1, #0x64
	bl      Function_16_22563f8
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x2223254

.word 0x21f0 @ 0x2223254
.word BattleData_Level @ 0x2223258
.word 0x2d75 @ 0x222325c
.word Unknown_222ee60 @ 0x2223260
.word 0x2d60 @ 0x2223264
.word 0xffff @ 0x2223268
.word Unknown_222ee60+2 @ 0x222326c
.word 0x213c @ 0x2223270
.word 0xfffff7ff @ 0x2223274
.word 0x140808 @ 0x2223278



.thumb
Function_222327c: @ 222327c :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	ldr     r2, [pc, #0x164] @ 0x22233e8, (=0x137)
	mov     r7, r0
	mov     r4, r1
	cmp     r3, r2
	bgt     branch_2223294
	blt     branch_222328e
	b       branch_2223390

branch_222328e: @ 222328e :thumb
	cmp     r3, #0xed
	beq     branch_2223336
	b       branch_22233e2

branch_2223294: @ 2223294 :thumb
	mov     r0, r2
	add     r0, #0x34
	cmp     r3, r0
	bgt     branch_22232a4
	add     r2, #0x34
	cmp     r3, r2
	beq     branch_22232ac
	b       branch_22233e2

branch_22232a4: @ 22232a4 :thumb
	add     r2, #0x8a
	cmp     r3, r2
	beq     branch_22232b8
	b       branch_22233e2

branch_22232ac: @ 22232ac :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_16_2258b2c
	mov     r5, r0
	b       branch_22233e4

branch_22232b8: @ 22232b8 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_16_2258ab8
	sub     r0, #0x7e
	cmp     r0, #0xf
	bhi     branch_2223332
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22232d2

Jumppoints_22232d2:
.hword branch_2223312 - Jumppoints_22232d2 - 2
.hword branch_2223316 - Jumppoints_22232d2 - 2
.hword branch_222331e - Jumppoints_22232d2 - 2
.hword branch_222331a - Jumppoints_22232d2 - 2
.hword branch_2223326 - Jumppoints_22232d2 - 2
.hword branch_22232f2 - Jumppoints_22232d2 - 2
.hword branch_22232fa - Jumppoints_22232d2 - 2
.hword branch_22232fe - Jumppoints_22232d2 - 2
.hword branch_22232f6 - Jumppoints_22232d2 - 2
.hword branch_2223322 - Jumppoints_22232d2 - 2
.hword branch_2223306 - Jumppoints_22232d2 - 2
.hword branch_2223302 - Jumppoints_22232d2 - 2
.hword branch_222330a - Jumppoints_22232d2 - 2
.hword branch_222332a - Jumppoints_22232d2 - 2
.hword branch_222332e - Jumppoints_22232d2 - 2
.hword branch_222330e - Jumppoints_22232d2 - 2
.thumb
branch_22232f2: @ 22232f2 :thumb
	mov     r5, #0x1
	b       branch_22233e4
@ 0x22232f6

.thumb
branch_22232f6: @ 22232f6 :thumb
	mov     r5, #0x2
	b       branch_22233e4
@ 0x22232fa

.thumb
branch_22232fa: @ 22232fa :thumb
	mov     r5, #0x3
	b       branch_22233e4
@ 0x22232fe

.thumb
branch_22232fe: @ 22232fe :thumb
	mov     r5, #0x4
	b       branch_22233e4
@ 0x2223302

.thumb
branch_2223302: @ 2223302 :thumb
	mov     r5, #0x5
	b       branch_22233e4

branch_2223306: @ 2223306 :thumb
	mov     r5, #0x6
	b       branch_22233e4

branch_222330a: @ 222330a :thumb
	mov     r5, #0x7
	b       branch_22233e4

branch_222330e: @ 222330e :thumb
	mov     r5, #0x8
	b       branch_22233e4

branch_2223312: @ 2223312 :thumb
	mov     r5, #0xa
	b       branch_22233e4
@ 0x2223316

.thumb
branch_2223316: @ 2223316 :thumb
	mov     r5, #0xb
	b       branch_22233e4
@ 0x222331a

.thumb
branch_222331a: @ 222331a :thumb
	mov     r5, #0xc
	b       branch_22233e4
@ 0x222331e

.thumb
branch_222331e: @ 222331e :thumb
	mov     r5, #0xd
	b       branch_22233e4
@ 0x2223322

.thumb
branch_2223322: @ 2223322 :thumb
	mov     r5, #0xe
	b       branch_22233e4
@ 0x2223326

.thumb
branch_2223326: @ 2223326 :thumb
	mov     r5, #0xf
	b       branch_22233e4
@ 0x222332a

.thumb
branch_222332a: @ 222332a :thumb
	mov     r5, #0x10
	b       branch_22233e4
@ 0x222332e

.thumb
branch_222332e: @ 222332e :thumb
	mov     r5, #0x11
	b       branch_22233e4

branch_2223332: @ 2223332 :thumb
	mov     r5, #0x0
	b       branch_22233e4

branch_2223336: @ 2223336 :thumb
	ldr     r0, [pc, #0xb4] @ 0x22233ec, (=0x2d54)
	add     r1, r4, r0
	mov     r0, #0xc0
	mul     r0, r6
	ldr     r4, [r1, r0]
	lsl     r0, r4, #2
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r5, r0, #26
	lsl     r0, r4, #7
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r3, r0, #27
	lsl     r0, r4, #12
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r2, r0, #28
	lsl     r0, r4, #17
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r1, r0, #29
	lsl     r0, r4, #27
	lsl     r4, r4, #22
	lsr     r4, r4, #27
	lsr     r6, r0, #27
	mov     r0, #0x1
	lsl     r4, r4, #31
	and     r0, r6
	lsr     r4, r4, #30
	orr     r0, r4
	orr     r0, r1
	orr     r0, r2
	orr     r0, r3
	mov     r1, r5
	orr     r1, r0
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0x3f
	blx     _s32_div_f
	add     r5, r0, #0x1
	cmp     r5, #0x9
	blt     branch_22233e4
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_22233e4

branch_2223390: @ 2223390 :thumb
	mov     r2, #0xd
	str     r2, [sp, #0x0]
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_22233e4
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_22233e4
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x34] @ 0x22233f0, (=0x80ff)
	tst     r1, r0
	beq     branch_22233e4
	mov     r1, #0x3
	tst     r1, r0
	beq     branch_22233c8
	mov     r5, #0xb
branch_22233c8: @ 22233c8 :thumb
	mov     r1, #0xc
	tst     r1, r0
	beq     branch_22233d0
	mov     r5, #0x5
.thumb
branch_22233d0: @ 22233d0 :thumb
	mov     r1, #0x30
	tst     r1, r0
	beq     branch_22233d8
	mov     r5, #0xa
.thumb
branch_22233d8: @ 22233d8 :thumb
	mov     r1, #0xc0
	tst     r0, r1
	beq     branch_22233e4
	mov     r5, #0xf
	b       branch_22233e4
@ 0x22233e2

.thumb
branch_22233e2: @ 22233e2 :thumb
	mov     r5, #0x0
.thumb
branch_22233e4: @ 22233e4 :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22233e8

.word 0x137 @ 0x22233e8
.word 0x2d54 @ 0x22233ec
.word 0x80ff @ 0x22233f0



.thumb
Function_22233f4: @ 22233f4 :thumb
	push    {r4,r5}
	mov     r2, #0xc0
	mul     r2, r1
	add     r5, r0, r2
	mov     r2, #0xb7
	lsl     r2, r2, #6              @ =0x2dc0
	ldr     r4, [r5, r2]
	mov     r3, #0x20
	tst     r3, r4
	beq     branch_2223420
	add     r2, #0x8
	ldr     r2, [r5, r2]
	lsl     r2, r2, #17
	lsr     r2, r2, #30
	bne     branch_2223420
	add     r1, r0, r1
	ldr     r0, [pc, #0x10] @ 0x2223428, (=BattleData_21a4)
	mov     r2, #0x6
	strb    r2, [r1, r0]
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr

branch_2223420: @ 2223420 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2223426

.align 2
.word BattleData_21a4 @ 0x2223428



.thumb
Function_222342c: @ 222342c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	str     r0, [sp, #0x14]
	mov     r5, r1
	str     r2, [sp, #0x18]
	bl      Function_16_223df0c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2223446
	add     sp, #0x44
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2223446

.thumb
branch_2223446: @ 2223446 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1
	mov     r4, r0
	eor     r4, r1
	mov     r1, #0xc0
	mov     r0, r4
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0x184] @ 0x22235dc, (=0x2d67)
	ldrb    r0, [r2, r0]
	cmp     r0, #0x19
	bne     branch_22234c4
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x18]
	mul     r1, r0
	add     r6, r5, r1
.thumb
branch_2223468: @ 2223468 :thumb
	ldr     r0, [pc, #0x174] @ 0x22235e0, (=0x2d4c)
	ldr     r2, [sp, #0x18]
	ldrh    r7, [r6, r0]
	ldr     r0, [sp, #0x14]
	mov     r1, r5
	mov     r3, r7
	bl      Function_222327c
	mov     r3, r0
	cmp     r7, #0x0
	beq     branch_22234a8
	mov     r0, #0x0
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r0, sp, #0x40
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	mov     r2, r7
	bl      Function_16_2254fa8
	ldr     r1, [sp, #0x40]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22234a8
	add     sp, #0x44
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22234a8

.thumb
branch_22234a8: @ 22234a8 :thumb
	ldr     r0, [sp, #0x28]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x4
	blt     branch_2223468
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	bl      Function_16_223df60
	cmp     r0, #0x0
	bgt     branch_22234c6
.thumb
branch_22234c4: @ 22234c4 :thumb
	b       branch_22235d6
@ 0x22234c6

.thumb
branch_22234c6: @ 22234c6 :thumb
	ldr     r0, [sp, #0x18]
	add     r0, r5, r0
	str     r0, [sp, #0x24]
.thumb
branch_22234cc: @ 22234cc :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x20]
	bl      Function_16_223dfac
	mov     r1, #0xa3
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22235c0
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22235c0
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0xe4] @ 0x22235e4, (=0x1ee)
	cmp     r0, r1
	beq     branch_22235c0
	ldr     r1, [pc, #0xe4] @ 0x22235e8, (=BattleData_219c)
	ldr     r0, [sp, #0x24]
	ldrb    r1, [r0, r1]
	ldr     r0, [sp, #0x20]
	cmp     r0, r1
	beq     branch_22235c0
	mov     r7, #0x0
.thumb
branch_2223510: @ 2223510 :thumb
	mov     r1, r7
	mov     r0, r6
	add     r1, #0x36
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x1c]
	mov     r1, r5
	mov     r2, r6
	bl      Function_16_225be3c
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_22235ba
	mov     r0, #0x0
	str     r0, [sp, #0x40]
	mov     r0, r6
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x30]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2255a4c
	str     r0, [sp, #0x34]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2258ab8
	str     r0, [sp, #0x38]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	str     r0, [sp, #0x3c]

	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1

	ldr     r1, [sp, #0x34]
	ldr     r2, [sp, #0x2c]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	ldr     r3, [sp, #0x30]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x3c]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0x40
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	bl      Function_16_22552d4
	ldr     r1, [sp, #0x40]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22235ba
	ldr     r0, [sp, #0x14]
	bl      Function_16_GetRandomNr
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x2
	bge     branch_22235ba
	ldr     r0, [sp, #0x18]
	ldr     r1, [pc, #0x3c] @ 0x22235ec, (=BattleData_21a4)
	add     r2, r5, r0
	ldr     r0, [sp, #0x20]
	add     sp, #0x44
	strb    r0, [r2, r1]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22235ba

.thumb
branch_22235ba: @ 22235ba :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x4
	blt     branch_2223510
.thumb
branch_22235c0: @ 22235c0 :thumb
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	bl      Function_16_223df60
	ldr     r1, [sp, #0x20]
	cmp     r1, r0
	bge     branch_22235d6
	b       branch_22234cc
@ 0x22235d6

.thumb
branch_22235d6: @ 22235d6 :thumb
	mov     r0, #0x0
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x22235dc

.word 0x2d67 @ 0x22235dc
.word 0x2d4c @ 0x22235e0
.word 0x1ee @ 0x22235e4
.word BattleData_219c @ 0x22235e8
.word BattleData_21a4 @ 0x22235ec



.thumb
Function_22235f0: @ 22235f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xbc
	mov     r7, r0
	mov     r5, r1
	str     r2, [sp, #0x14]
	bl      Function_16_223df0c
	mov     r4, #0x2
	tst     r0, r4
	beq     branch_2223608
	mov     r6, #0x0
	b       branch_222360c
@ 0x2223608

.thumb
branch_2223608: @ 2223608 :thumb
	mov     r6, #0x0
	mov     r4, r6
.thumb
branch_222360c: @ 222360c :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x5c]
	str     r0, [sp, #0x74]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	add     r1, r5, r2
	str     r1, [sp, #0x44]
	mov     r1, r6
	mul     r1, r0
	mul     r0, r4
	add     r1, r5, r1
	add     r0, r5, r0
	str     r1, [sp, #0x3c]
	str     r0, [sp, #0x38]
.thumb
branch_222362c: @ 222362c :thumb
	ldr     r1, [sp, #0x44]
	ldr     r0, [pc, #0x32c] @ 0x222395c, (=0x2d4c)
	ldr     r2, [sp, #0x14]
	ldrh    r0, [r1, r0]
	mov     r1, r5
	str     r0, [sp, #0x40]
	ldr     r3, [sp, #0x40]
	mov     r0, r7
	bl      Function_222327c
	str     r0, [sp, #0x64]
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x0
	beq     branch_22236c6
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x310] @ 0x2223960, (=0x3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22236c6
	ldr     r0, [sp, #0x5c]
	ldr     r1, [sp, #0x3c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x5c]
	mov     r0, #0x0
	str     r0, [sp, #0xb8]
	ldr     r0, [pc, #0x300] @ 0x2223964, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2223682
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x40]
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r0, sp, #0xb8
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x64]
	mov     r0, r7
	mov     r1, r5
	bl      Function_16_2254fa8
.thumb
branch_2223682: @ 2223682 :thumb
	ldr     r1, [sp, #0xb8]
	mov     r0, #0x8
	tst     r0, r1
	bne     branch_2223690
	add     sp, #0xbc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2223690

.thumb
branch_2223690: @ 2223690 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xb8]
	ldr     r1, [sp, #0x38]
	ldr     r0, [pc, #0x2cc] @ 0x2223964, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22236b8
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x40]
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r0, sp, #0xb8
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x64]
	mov     r0, r7
	mov     r1, r5
	bl      Function_16_2254fa8
.thumb
branch_22236b8: @ 22236b8 :thumb
	ldr     r1, [sp, #0xb8]
	mov     r0, #0x8
	tst     r0, r1
	bne     branch_22236c6
	add     sp, #0xbc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22236c6

.thumb
branch_22236c6: @ 22236c6 :thumb
	ldr     r0, [sp, #0x44]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x74]
	cmp     r0, #0x4
	blt     branch_222362c
	ldr     r0, [sp, #0x5c]
	cmp     r0, #0x2
	bge     branch_22236e2
	add     sp, #0xbc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22236e2

.thumb
branch_22236e2: @ 22236e2 :thumb
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x6c]
	mov     r0, r7
	bl      Function_16_223df0c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2223702
	mov     r0, r7
	bl      Function_16_223df0c
	mov     r1, #0x8
	tst     r0, r1
	beq     branch_2223708
.thumb
branch_2223702: @ 2223702 :thumb
	ldr     r0, [sp, #0x6c]
	str     r0, [sp, #0x68]
	b       branch_2223716
@ 0x2223708

.thumb
branch_2223708: @ 2223708 :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      Function_16_223e258
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x68]
.thumb
branch_2223716: @ 2223716 :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      Function_16_223df60
	str     r0, [sp, #0x60]
	mov     r0, #0x0
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x60]
	cmp     r0, #0x0
	bgt     branch_222372c
	b       branch_222390e
@ 0x222372c

.thumb
branch_222372c: @ 222372c :thumb
	ldr     r0, [sp, #0x6c]
	add     r0, r5, r0
	str     r0, [sp, #0x4c]
	ldr     r0, [sp, #0x68]
	add     r0, r5, r0
	str     r0, [sp, #0x48]
.thumb
branch_2223738: @ 2223738 :thumb
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x30]
	mov     r0, r7
	bl      Function_16_223dfac
	mov     r1, #0xa3
	mov     r2, #0x0
	str     r0, [sp, #0x58]
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222379e
	ldr     r0, [sp, #0x58]
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222379e
	ldr     r0, [sp, #0x58]
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x1fc] @ 0x2223968, (=0x1ee)
	cmp     r0, r1
	beq     branch_222379e
	ldr     r0, [pc, #0x1fc] @ 0x222396c, (=BattleData_219c)
	ldr     r1, [sp, #0x4c]
	ldrb    r2, [r1, r0]
	ldr     r1, [sp, #0x30]
	cmp     r1, r2
	beq     branch_222379e
	ldr     r1, [sp, #0x48]
	ldrb    r2, [r1, r0]
	ldr     r1, [sp, #0x30]
	cmp     r1, r2
	beq     branch_222379e
	mov     r2, r0
	ldr     r1, [sp, #0x4c]
	add     r2, #0x8
	ldrb    r2, [r1, r2]
	ldr     r1, [sp, #0x30]
	cmp     r1, r2
	beq     branch_222379e
	ldr     r1, [sp, #0x48]
	add     r0, #0x8
	ldrb    r1, [r1, r0]
	ldr     r0, [sp, #0x30]
	cmp     r0, r1
	bne     branch_22237a0
.thumb
branch_222379e: @ 222379e :thumb
	b       branch_2223900
@ 0x22237a0

.thumb
branch_22237a0: @ 22237a0 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x70]
.thumb
branch_22237a4: @ 22237a4 :thumb
	ldr     r1, [sp, #0x70]
	ldr     r0, [sp, #0x58]
	add     r1, #0x36
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x28]
	ldr     r2, [sp, #0x58]
	ldr     r3, [sp, #0x28]
	mov     r0, r7
	mov     r1, r5
	bl      Function_16_225be3c
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_22237d6
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x190] @ 0x2223960, (=0x3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22237d8
.thumb
branch_22237d6: @ 22237d6 :thumb
	b       branch_22238f4
@ 0x22237d8

.thumb
branch_22237d8: @ 22237d8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xb8]
	ldr     r1, [sp, #0x3c]
	ldr     r0, [pc, #0x184] @ 0x2223964, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_222383e
	ldr     r0, [sp, #0x58]
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x78]
	mov     r0, r5
	mov     r1, r6
	bl      Function_16_2255a4c
	str     r0, [sp, #0x7c]
	mov     r0, r5
	mov     r1, r6
	bl      Function_16_2258ab8
	str     r0, [sp, #0x80]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	str     r0, [sp, #0x84]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	ldr     r1, [sp, #0x7c]
	ldr     r2, [sp, #0x20]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x80]
	ldr     r3, [sp, #0x78]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x84]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0xb8
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x28]
	mov     r0, r5
	bl      Function_16_22552d4
.thumb
branch_222383e: @ 222383e :thumb
	ldr     r1, [sp, #0xb8]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2223866
	mov     r0, r7
	bl      Function_16_GetRandomNr
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x2
	bge     branch_2223866
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0x114] @ 0x2223970, (=BattleData_21a4)
	add     r2, r5, r0
	ldr     r0, [sp, #0x30]
	add     sp, #0xbc
	strb    r0, [r2, r1]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2223866

.thumb
branch_2223866: @ 2223866 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xb8]
	ldr     r1, [sp, #0x38]
	ldr     r0, [pc, #0xf4] @ 0x2223964, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22238cc
	ldr     r0, [sp, #0x58]
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x88]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2255a4c
	str     r0, [sp, #0x8c]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2258ab8
	str     r0, [sp, #0x90]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	str     r0, [sp, #0x94]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	ldr     r1, [sp, #0x8c]
	ldr     r2, [sp, #0x20]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x90]
	ldr     r3, [sp, #0x88]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x94]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0xb8
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x28]
	mov     r0, r5
	bl      Function_16_22552d4
.thumb
branch_22238cc: @ 22238cc :thumb
	ldr     r1, [sp, #0xb8]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22238f4
	mov     r0, r7
	bl      Function_16_GetRandomNr
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x2
	bge     branch_22238f4
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0x88] @ 0x2223970, (=BattleData_21a4)
	add     r2, r5, r0
	ldr     r0, [sp, #0x30]
	add     sp, #0xbc
	strb    r0, [r2, r1]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22238f4

.thumb
branch_22238f4: @ 22238f4 :thumb
	ldr     r0, [sp, #0x70]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x70]
	cmp     r0, #0x4
	bge     branch_2223900
	b       branch_22237a4
@ 0x2223900

.thumb
branch_2223900: @ 2223900 :thumb
	ldr     r0, [sp, #0x30]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x60]
	str     r1, [sp, #0x30]
	cmp     r1, r0
	bge     branch_222390e
	b       branch_2223738
@ 0x222390e

.thumb
branch_222390e: @ 222390e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x60]
	cmp     r0, #0x0
	bgt     branch_222391a
	b       branch_2223b1c
@ 0x222391a

.thumb
branch_222391a: @ 222391a :thumb
	ldr     r0, [sp, #0x6c]
	add     r0, r5, r0
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x68]
	add     r0, r5, r0
	str     r0, [sp, #0x50]
.thumb
branch_2223926: @ 2223926 :thumb
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x34]
	mov     r0, r7
	bl      Function_16_223dfac
	mov     r1, #0xa3
	mov     r2, #0x0
	str     r0, [sp, #0x1c]
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22239a8
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22239a8
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x10] @ 0x2223968, (=0x1ee)
	b       branch_2223974
@ 0x222395a

.align 2
.word 0x2d4c @ 0x222395c
.word 0x3e1 @ 0x2223960
.word BattleData_CurHP @ 0x2223964
.word 0x1ee @ 0x2223968
.word BattleData_219c @ 0x222396c
.word BattleData_21a4 @ 0x2223970

.thumb
branch_2223974: @ 2223974 :thumb
	cmp     r0, r1
	beq     branch_22239a8
	ldr     r0, [pc, #0x1a8] @ 0x2223b24, (=BattleData_219c)
	ldr     r1, [sp, #0x54]
	ldrb    r2, [r1, r0]
	ldr     r1, [sp, #0x34]
	cmp     r1, r2
	beq     branch_22239a8
	ldr     r1, [sp, #0x50]
	ldrb    r2, [r1, r0]
	ldr     r1, [sp, #0x34]
	cmp     r1, r2
	beq     branch_22239a8
	mov     r2, r0
	ldr     r1, [sp, #0x54]
	add     r2, #0x8
	ldrb    r2, [r1, r2]
	ldr     r1, [sp, #0x34]
	cmp     r1, r2
	beq     branch_22239a8
	ldr     r1, [sp, #0x50]
	add     r0, #0x8
	ldrb    r1, [r1, r0]
	ldr     r0, [sp, #0x34]
	cmp     r0, r1
	bne     branch_22239aa
branch_22239a8: @ 22239a8 :thumb
	b       branch_2223b0e

branch_22239aa: @ 22239aa :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x18]
branch_22239ae: @ 22239ae :thumb
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	add     r1, #PKMNDATA_MOVE1
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x2c]
	mov     r0, r7
	mov     r1, r5
	bl      Function_16_225be3c
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	beq     branch_22239e0
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x14c] @ 0x2223b28, (=0x3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22239e2
branch_22239e0: @ 22239e0 :thumb
	b       branch_2223b02

branch_22239e2: @ 22239e2 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xb8]
	ldr     r1, [sp, #0x3c]
	ldr     r0, [pc, #0x140] @ 0x2223b2c, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2223a48

	ldr     r0, [sp, #0x1c]
	mov     r1, #PKMNDATA_ABILITY
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x98]

	mov     r0, r5
	mov     r1, r6
	bl      Function_16_2255a4c
	str     r0, [sp, #0x9c]
	mov     r0, r5
	mov     r1, r6
	bl      Function_16_2258ab8
	str     r0, [sp, #0xa0]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	str     r0, [sp, #0xa4]

	mov     r0, r5
	mov     r1, r6
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1

	ldr     r1, [sp, #0x9c]
	ldr     r2, [sp, #0x24]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0xa0]
	ldr     r3, [sp, #0x98]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0xa4]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0xb8
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x2c]
	mov     r0, r5
	bl      Function_16_22552d4
.thumb
branch_2223a48: @ 2223a48 :thumb
	ldr     r0, [sp, #0xb8]
	cmp     r0, #0x0
	bne     branch_2223a72
	mov     r0, r7
	bl      Function_16_GetRandomNr
	lsr     r1, r0, #31
	lsl     r2, r0, #31
	sub     r2, r2, r1
	mov     r0, #0x1f
	ror     r2, r0
	add     r0, r1, r2
	bne     branch_2223a72
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0xc8] @ 0x2223b30, (=BattleData_21a4)
	add     r2, r5, r0
	ldr     r0, [sp, #0x34]
	add     sp, #0xbc
	strb    r0, [r2, r1]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2223a72

.thumb
branch_2223a72: @ 2223a72 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xb8]
	ldr     r1, [sp, #0x38]
	ldr     r0, [pc, #0xb0] @ 0x2223b2c, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2223ad8
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0xa8]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2255a4c
	str     r0, [sp, #0xac]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2258ab8
	str     r0, [sp, #0xb0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	str     r0, [sp, #0xb4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	ldr     r1, [sp, #0xac]
	ldr     r2, [sp, #0x24]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0xb0]
	ldr     r3, [sp, #0xa8]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0xb4]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0xb8
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x2c]
	mov     r0, r5
	bl      Function_16_22552d4
.thumb
branch_2223ad8: @ 2223ad8 :thumb
	ldr     r0, [sp, #0xb8]
	cmp     r0, #0x0
	bne     branch_2223b02
	mov     r0, r7
	bl      Function_16_GetRandomNr
	lsr     r1, r0, #31
	lsl     r2, r0, #31
	sub     r2, r2, r1
	mov     r0, #0x1f
	ror     r2, r0
	add     r0, r1, r2
	bne     branch_2223b02
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0x38] @ 0x2223b30, (=BattleData_21a4)
	add     r2, r5, r0
	ldr     r0, [sp, #0x34]
	add     sp, #0xbc
	strb    r0, [r2, r1]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2223b02

.thumb
branch_2223b02: @ 2223b02 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x4
	bge     branch_2223b0e
	b       branch_22239ae
@ 0x2223b0e

.thumb
branch_2223b0e: @ 2223b0e :thumb
	ldr     r0, [sp, #0x34]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x60]
	str     r1, [sp, #0x34]
	cmp     r1, r0
	bge     branch_2223b1c
	b       branch_2223926
@ 0x2223b1c

.thumb
branch_2223b1c: @ 2223b1c :thumb
	mov     r0, #0x0
	add     sp, #0xbc
	pop     {r4-r7,pc}
@ 0x2223b22

.align 2
.word BattleData_219c @ 0x2223b24
.word 0x3e1 @ 0x2223b28
.word BattleData_CurHP @ 0x2223b2c
.word BattleData_21a4 @ 0x2223b30



.thumb
Function_2223b34: @ 2223b34 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r6, r2
	mov     r4, r1
	mov     r1, r6
	mov     r5, r0
	str     r3, [sp, #0x10]
	bl      Function_16_223e1f8
	mov     r1, #0x1
	eor     r0, r1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r0, r5
	bl      Function_16_223e1c4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x24]
	bl      Function_20787cc
	ldr     r1, [pc, #0x124] @ 0x2223c84, (=0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	bne     branch_2223bdc
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	mov     r0, #0xc0
	mul     r0, r6
	add     r7, r4, r0
.thumb
branch_2223b70: @ 2223b70 :thumb
	ldr     r0, [pc, #0x114] @ 0x2223c88, (=0x2d4c)
	mov     r1, r4
	ldrh    r0, [r7, r0]
	mov     r2, r6
	str     r0, [sp, #0x20]
	ldr     r3, [sp, #0x20]
	mov     r0, r5
	bl      Function_222327c
	mov     r3, r0
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_2223bd0
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x24]
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r0, sp, #0x2c
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2254fa8
	ldr     r1, [sp, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2223bd0
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2223bba
	add     sp, #0x30
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2223bba

.thumb
branch_2223bba: @ 2223bba :thumb
	mov     r0, r5
	bl      Function_16_GetRandomNr
	mov     r1, #0xa
	blx     _s32_div_f
	cmp     r1, #0x0
	beq     branch_2223bd0
	add     sp, #0x30
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2223bd0

.thumb
branch_2223bd0: @ 2223bd0 :thumb
	ldr     r0, [sp, #0x28]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x4
	blt     branch_2223b70
.thumb
branch_2223bdc: @ 2223bdc :thumb
	mov     r0, r5
	bl      Function_16_223df0c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2223bee
	add     sp, #0x30
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2223bee

.thumb
branch_2223bee: @ 2223bee :thumb
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	bl      Function_16_223e258
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	bl      Function_20787cc
	ldr     r1, [pc, #0x80] @ 0x2223c84, (=0x3108)
	ldrb    r1, [r4, r1]
	tst     r0, r1
	bne     branch_2223c7e
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	mov     r0, #0xc0
	mul     r0, r6
	add     r7, r4, r0
.thumb
branch_2223c12: @ 2223c12 :thumb
	ldr     r0, [pc, #0x74] @ 0x2223c88, (=0x2d4c)
	mov     r1, r4
	ldrh    r0, [r7, r0]
	mov     r2, r6
	str     r0, [sp, #0x14]
	ldr     r3, [sp, #0x14]
	mov     r0, r5
	bl      Function_222327c
	mov     r3, r0
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2223c72
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x1c]
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r0, sp, #0x2c
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2254fa8
	ldr     r1, [sp, #0x2c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2223c72
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2223c5c
	add     sp, #0x30
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2223c5c

.thumb
branch_2223c5c: @ 2223c5c :thumb
	mov     r0, r5
	bl      Function_16_GetRandomNr
	mov     r1, #0xa
	blx     _s32_div_f
	cmp     r1, #0x0
	beq     branch_2223c72
	add     sp, #0x30
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2223c72

.thumb
branch_2223c72: @ 2223c72 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x4
	blt     branch_2223c12
.thumb
branch_2223c7e: @ 2223c7e :thumb
	mov     r0, #0x0
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2223c84

.word 0x3108 @ 0x2223c84
.word 0x2d4c @ 0x2223c88



.thumb
Function_2223c8c: @ 2223c8c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r3, #0x1
	mov     r6, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	bl      Function_2223b34
	cmp     r0, #0x0
	beq     branch_2223cb6
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x0
	beq     branch_2223cb6
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2223cb6: @ 2223cb6 :thumb
	ldr     r0, [sp, #0x4]
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x0]
	add     r1, r0, r1
	ldr     r0, [pc, #0x13c] @ 0x2223dfc, (=BattleData_3064)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2223ccc
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2223ccc: @ 2223ccc :thumb
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x0]
	add     r2, r0, r1
	ldr     r0, [pc, #0x12c] @ 0x2223e00, (=0x3e1)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_2223ce0
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2223ce0: @ 2223ce0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r2, r0]
	cmp     r0, #0xa
	bne     branch_2223cee
	mov     r0, #0x12
	str     r0, [sp, #0x10]
	b       branch_2223d08

branch_2223cee: @ 2223cee :thumb
	cmp     r0, #0xb
	bne     branch_2223cf8
	mov     r0, #0xb
	str     r0, [sp, #0x10]
	b       branch_2223d08
@ 0x2223cf8

.thumb
branch_2223cf8: @ 2223cf8 :thumb
	cmp     r0, #0xd
	bne     branch_2223d02
	mov     r0, #0xa
	str     r0, [sp, #0x10]
	b       branch_2223d08
@ 0x2223d02

.thumb
branch_2223d02: @ 2223d02 :thumb
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2223d08

.thumb
branch_2223d08: @ 2223d08 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_16_2255a4c
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	bne     branch_2223d1c
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2223d1c

.thumb
branch_2223d1c: @ 2223d1c :thumb
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r6
	bl      Function_16_223df0c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2223d3a
	mov     r0, r6
	bl      Function_16_223df0c
	mov     r1, #0x8
	tst     r0, r1
	beq     branch_2223d3e
branch_2223d3a: @ 2223d3a :thumb
	mov     r7, r4
	b       branch_2223d4a

branch_2223d3e: @ 2223d3e :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	bl      Function_16_223e258
	lsl     r0, r0, #24
	lsr     r7, r0, #24
branch_2223d4a: @ 2223d4a :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	bl      Function_16_223df60
	mov     r5, #0x0
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_2223df4
	ldr     r0, [sp, #0x0]
	add     r0, r0, r4
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	add     r7, r0, r7
branch_2223d64: @ 2223d64 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	bl      Function_16_223dfac
	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2223dec

	mov     r0, r4
	mov     r1, #PKMNDATA_ae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2223dec

	mov     r0, r4
	mov     r1, #PKMNDATA_ae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x6c] @ 0x2223e04, (=0x1ee)
	cmp     r0, r1
	beq     branch_2223dec

	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x68] @ 0x2223e08, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	cmp     r5, r0
	beq     branch_2223dec

	ldr     r0, [pc, #0x60] @ 0x2223e08, (=BattleData_219c)
	ldrb    r0, [r7, r0]
	cmp     r5, r0
	beq     branch_2223dec

	ldr     r0, [pc, #0x5c] @ 0x2223e0c, (=BattleData_21a4)
	ldrb    r0, [r1, r0]
	cmp     r5, r0
	beq     branch_2223dec

	ldr     r0, [pc, #0x54] @ 0x2223e0c, (=BattleData_21a4)
	ldrb    r0, [r7, r0]
	cmp     r5, r0
	beq     branch_2223dec

	mov     r0, r4
	mov     r1, #PKMNDATA_ABILITY
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	ldr     r0, [sp, #0x10]
	cmp     r0, r1
	bne     branch_2223dec

	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2223dec

	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     sp, #0x14
	add     r1, r1, r0
	ldr     r0, [pc, #0x24] @ 0x2223e0c, (=BattleData_21a4)
	strb    r5, [r1, r0]
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_2223dec: @ 2223dec :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2223d64
branch_2223df4: @ 2223df4 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2223dfa

.align 2
.word BattleData_3064 @ 0x2223dfc
.word 0x3e1 @ 0x2223e00
.word 0x1ee @ 0x2223e04
.word BattleData_219c @ 0x2223e08
.word BattleData_21a4 @ 0x2223e0c



.thumb
Function_2223e10: @ 2223e10 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r5, r1
	mov     r1, r2
	lsl     r6, r1, #1
	str     r3, [sp, #0x1c]
	ldr     r1, [pc, #0x238] @ 0x2224058, (=BattleData_3064)
	add     r3, r5, r6
	str     r2, [sp, #0x18]
	ldrh    r2, [r3, r1]
	str     r0, [sp, #0x14]
	cmp     r2, #0x0
	beq     branch_2223e32
	add     r1, #0x8
	ldrh    r1, [r3, r1]
	cmp     r1, #0xff
	bne     branch_2223e38
.thumb
branch_2223e32: @ 2223e32 :thumb
	add     sp, #0x60
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2223e38

.thumb
branch_2223e38: @ 2223e38 :thumb
	lsl     r1, r2, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x21c] @ 0x222405c, (=0x3e1)
	ldrb    r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_2223e4a
	add     sp, #0x60
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2223e4a

.thumb
branch_2223e4a: @ 2223e4a :thumb
	ldr     r1, [sp, #0x18]
	lsl     r1, r1, #24
	lsr     r4, r1, #24
	bl      Function_16_223df0c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2223e66
	ldr     r0, [sp, #0x14]
	bl      Function_16_223df0c
	mov     r1, #0x8
	tst     r0, r1
	beq     branch_2223e6a
.thumb
branch_2223e66: @ 2223e66 :thumb
	mov     r7, r4
	b       branch_2223e76
@ 0x2223e6a

.thumb
branch_2223e6a: @ 2223e6a :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	bl      Function_16_223e258
	lsl     r0, r0, #24
	lsr     r7, r0, #24
.thumb
branch_2223e76: @ 2223e76 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	bl      Function_16_223df60
	str     r0, [sp, #0x30]
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	bgt     branch_2223e8c
	b       branch_2224050
@ 0x2223e8c

.thumb
branch_2223e8c: @ 2223e8c :thumb
	add     r0, r5, r4
	str     r0, [sp, #0x2c]
	add     r0, r5, r7
	str     r0, [sp, #0x28]
	add     r0, sp, #0x68
	ldrb    r0, [r0, #0x10]
	add     r4, r5, r6
	str     r0, [sp, #0x24]
.thumb
branch_2223e9c: @ 2223e9c :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x34]
	bl      Function_16_223dfac

	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2223f02

	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2223f02
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x190] @ 0x2224060, (=0x1ee)
	cmp     r0, r1
	beq     branch_2223f02
	ldr     r0, [pc, #0x190] @ 0x2224064, (=BattleData_219c)
	ldr     r1, [sp, #0x2c]
	ldrb    r2, [r1, r0]
	ldr     r1, [sp, #0x34]
	cmp     r1, r2
	beq     branch_2223f02
	ldr     r1, [sp, #0x28]
	ldrb    r2, [r1, r0]
	ldr     r1, [sp, #0x34]
	cmp     r1, r2
	beq     branch_2223f02
	mov     r2, r0
	ldr     r1, [sp, #0x2c]
	add     r2, #0x8
	ldrb    r2, [r1, r2]
	ldr     r1, [sp, #0x34]
	cmp     r1, r2
	beq     branch_2223f02
	ldr     r1, [sp, #0x28]
	add     r0, #0x8
	ldrb    r1, [r1, r0]
	ldr     r0, [sp, #0x34]
	cmp     r0, r1
	bne     branch_2223f04
.thumb
branch_2223f02: @ 2223f02 :thumb
	b       branch_2224042
@ 0x2223f04

.thumb
branch_2223f04: @ 2223f04 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x5c]
	ldr     r3, [pc, #0x15c] @ 0x2224068, (=0x306c)
	ldr     r0, [sp, #0x14]
	ldrh    r2, [r4, r3]
	sub     r3, #0x8
	ldrh    r3, [r4, r3]
	mov     r1, r5
	bl      Function_222327c
	ldr     r1, [pc, #0x14c] @ 0x2224068, (=0x306c)
	str     r0, [sp, #0x38]
	ldrh    r1, [r4, r1]
	mov     r0, r5
	bl      Function_16_2255a4c
	str     r0, [sp, #0x3c]

	mov     r0, r6
	mov     r1, #PKMNDATA_ABILITY
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x40]

	mov     r0, r6
	mov     r1, #PKMNDATA_ITEM
	mov     r2, #0x0
	bl      GetPkmnData

	mov     r1, r0
	lsl     r1, r1, #16
	mov     r0, r5
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      Function_16_225b0fc
	str     r0, [sp, #0x44]
	mov     r0, r6
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x40]
	ldr     r2, [sp, #0x38]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x44]
	ldr     r3, [sp, #0x3c]
	str     r1, [sp, #0x4]
	str     r7, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x10]
	ldr     r1, [pc, #0xe0] @ 0x2224058, (=BattleData_3064)
	mov     r0, r5
	ldrh    r1, [r4, r1]
	bl      Function_16_22552d4
	ldr     r1, [sp, #0x5c]
	ldr     r0, [sp, #0x1c]
	tst     r0, r1
	beq     branch_2224042
	mov     r7, #0x0
.thumb
branch_2223f8a: @ 2223f8a :thumb
	mov     r1, r7
	mov     r0, r6
	add     r1, #0x36
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x20]
	mov     r1, r5
	mov     r2, r6
	bl      Function_16_225be3c
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_222403c
	mov     r0, #0x0
	str     r0, [sp, #0x5c]
	mov     r0, r6
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0xa8] @ 0x2224068, (=0x306c)
	str     r0, [sp, #0x4c]
	ldrh    r1, [r4, r1]
	mov     r0, r5
	bl      Function_16_2255a4c
	ldr     r1, [pc, #0x9c] @ 0x2224068, (=0x306c)
	str     r0, [sp, #0x50]
	ldrh    r1, [r4, r1]
	mov     r0, r5
	bl      Function_16_2258ab8
	ldr     r1, [pc, #0x90] @ 0x2224068, (=0x306c)
	str     r0, [sp, #0x54]
	ldrh    r1, [r4, r1]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	ldr     r1, [pc, #0x80] @ 0x2224068, (=0x306c)
	str     r0, [sp, #0x58]
	ldrh    r1, [r4, r1]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	ldr     r1, [sp, #0x50]
	ldr     r2, [sp, #0x48]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x54]
	ldr     r3, [sp, #0x4c]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x58]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_16_22552d4
	ldr     r1, [sp, #0x5c]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_222403c
	ldr     r0, [sp, #0x14]
	bl      Function_16_GetRandomNr
	ldr     r1, [sp, #0x24]
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_222403c
	ldr     r0, [sp, #0x18]
	ldr     r1, [pc, #0x3c] @ 0x222406c, (=BattleData_21a4)
	add     r2, r5, r0
	ldr     r0, [sp, #0x34]
	add     sp, #0x60
	strb    r0, [r2, r1]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222403c

.thumb
branch_222403c: @ 222403c :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x4
	blt     branch_2223f8a
.thumb
branch_2224042: @ 2224042 :thumb
	ldr     r0, [sp, #0x34]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x30]
	str     r1, [sp, #0x34]
	cmp     r1, r0
	bge     branch_2224050
	b       branch_2223e9c
@ 0x2224050

.thumb
branch_2224050: @ 2224050 :thumb
	mov     r0, #0x0
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x2224056

.align 2
.word BattleData_3064 @ 0x2224058
.word 0x3e1 @ 0x222405c
.word 0x1ee @ 0x2224060
.word BattleData_219c @ 0x2224064
.word 0x306c @ 0x2224068
.word BattleData_21a4 @ 0x222406c



.thumb
Function_2224070: @ 2224070 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r4, r2
	mov     r0, #0xc0
	mov     r5, r1
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0xd4] @ 0x2224158, (=BattleData_StatusEffect)
	ldr     r1, [r1, r0]
	mov     r0, #0x7
	tst     r0, r1
	beq     branch_22240aa
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2255a4c
	cmp     r0, #0x1e
	bne     branch_22240aa
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r1, [pc, #0xc0] @ 0x222415c, (=BattleData_CurHP)
	add     r2, r5, r0
	ldr     r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r2, r1]
	lsr     r1, r1, #1
	cmp     r0, r1
	bcs     branch_22240b0
.thumb
branch_22240aa: @ 22240aa :thumb
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22240b0

.thumb
branch_22240b0: @ 22240b0 :thumb
	ldr     r0, [pc, #0xac] @ 0x2224160, (=BattleData_3064)
	add     r7, r5, r0
	lsl     r0, r4, #1
	str     r0, [sp, #0x4]
	ldrh    r0, [r7, r0]
	cmp     r0, #0x0
	bne     branch_22240d8
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_22240d8
	ldr     r0, [pc, #0x98] @ 0x2224164, (=BattleData_21a4)
	mov     r3, #0x6
	add     r2, r5, r4
	strb    r3, [r2, r0]
	add     sp, #0x8
	mov     r0, r1
	pop     {r3-r7,pc}
@ 0x22240d8

.thumb
branch_22240d8: @ 22240d8 :thumb
	ldr     r0, [sp, #0x4]
	ldrh    r0, [r7, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x84] @ 0x2224168, (=0x3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2224102
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2224102
	ldr     r0, [pc, #0x6c] @ 0x2224164, (=BattleData_21a4)
	mov     r3, #0x6
	add     r2, r5, r4
	strb    r3, [r2, r0]
	add     sp, #0x8
	mov     r0, r1
	pop     {r3-r7,pc}
@ 0x2224102

.thumb
branch_2224102: @ 2224102 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x8
	bl      Function_2223e10
	cmp     r0, #0x0
	beq     branch_222411c
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222411c

.thumb
branch_222411c: @ 222411c :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x4
	bl      Function_2223e10
	cmp     r0, #0x0
	beq     branch_2224136
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2224136

.thumb
branch_2224136: @ 2224136 :thumb
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2224150
	ldr     r0, [pc, #0x20] @ 0x2224164, (=BattleData_21a4)
	mov     r3, #0x6
	add     r2, r5, r4
	strb    r3, [r2, r0]
	add     sp, #0x8
	mov     r0, r1
	pop     {r3-r7,pc}

branch_2224150: @ 2224150 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2224156

.align 2
.word BattleData_StatusEffect @ 0x2224158
.word BattleData_CurHP @ 0x222415c
.word BattleData_3064 @ 0x2224160
.word BattleData_21a4 @ 0x2224164
.word 0x3e1 @ 0x2224168



.thumb
Function_222416c: @ 222416c :thumb
	push    {r3,r4}
	mov     r4, #0xc0
	mul     r4, r2
	mov     r3, #0x0
	ldr     r2, [pc, #0x28] @ 0x22241a0, (=BattleData_StatLevel)
	mov     r0, r3
	add     r4, r1, r4
branch_222417a: @ 222417a :thumb
	ldsb    r1, [r4, r2]
	cmp     r1, #0x6
	ble     branch_2224188
	.hword  0x1f89 @ sub r1, r1, #0x6
	add     r1, r3, r1
	lsl     r1, r1, #24
	lsr     r3, r1, #24
.thumb
branch_2224188: @ 2224188 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r0, #0x8
	blt     branch_222417a
	cmp     r3, #0x4
	bcc     branch_222419a
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr

branch_222419a: @ 222419a :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x22241a0

.word BattleData_StatLevel @ 0x22241a0



.thumb
Function_22241a4: @ 22241a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r2
	mov     r2, #0xc0
	mov     r3, r6
	mul     r3, r2
	mov     r2, r1
	add     r5, r2, r3
	ldr     r2, [pc, #0x1f0] @ 0x22243a8, (=0x2db0)
	ldr     r3, [pc, #0x1f4] @ 0x22243ac, (=0x400e000)
	ldr     r4, [r5, r2]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	tst     r4, r3
	bne     branch_2224224
	add     r2, #0x10
	ldr     r4, [r5, r2]
	lsr     r2, r3, #16
	tst     r2, r4
	bne     branch_2224224
	mov     r2, #0x17
	str     r2, [sp, #0x0]
	mov     r2, #0x2
	mov     r3, r6
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_2224224
	mov     r0, #0x47
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, #0x2
	mov     r3, r6
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_2224224
	mov     r0, #0x2a
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, #0x6
	mov     r3, r6
	bl      Function_16_22555a4
	cmp     r0, #0x0
	beq     branch_222422a
	ldr     r0, [sp, #0x8]
	mov     r1, r6
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r0, #0x8
	beq     branch_2224224
	ldr     r0, [sp, #0x8]
	mov     r1, r6
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r0, #0x8
	bne     branch_222422a
branch_2224224: @ 2224224 :thumb
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_222422a: @ 222422a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	lsl     r0, r6, #24
	lsr     r4, r0, #24
	ldr     r0, [sp, #0x4]
	bl      Function_16_223df0c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_222424a
	ldr     r0, [sp, #0x4]
	bl      Function_16_223df0c
	mov     r1, #0x8
	tst     r0, r1
	beq     branch_222424e
.thumb
branch_222424a: @ 222424a :thumb
	mov     r7, r4
	b       branch_222425a
@ 0x222424e

.thumb
branch_222424e: @ 222424e :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      Function_16_223e258
	lsl     r0, r0, #24
	lsr     r7, r0, #24
.thumb
branch_222425a: @ 222425a :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      Function_16_223df60
	mov     r5, #0x0
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_22242da
	ldr     r0, [sp, #0x8]
	add     r0, r0, r4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r7, r0, r7
.thumb
branch_2224274: @ 2224274 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	mov     r2, r5
	bl      Function_16_223dfac
	mov     r1, #0xa3
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22242d2
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22242d2
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x108] @ 0x22243b0, (=0x1ee)
	cmp     r0, r1
	beq     branch_22242d2
	ldr     r1, [sp, #0xc]
	ldr     r0, [pc, #0x104] @ 0x22243b4, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	cmp     r5, r0
	beq     branch_22242d2
	ldr     r0, [pc, #0xfc] @ 0x22243b4, (=BattleData_219c)
	ldrb    r0, [r7, r0]
	cmp     r5, r0
	beq     branch_22242d2
	ldr     r0, [pc, #0xf8] @ 0x22243b8, (=BattleData_21a4)
	ldrb    r0, [r1, r0]
	cmp     r5, r0
	beq     branch_22242d2
	ldr     r0, [pc, #0xf0] @ 0x22243b8, (=BattleData_21a4)
	ldrb    r0, [r7, r0]
	cmp     r5, r0
	beq     branch_22242d2
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_22242d2: @ 22242d2 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2224274
.thumb
branch_22242da: @ 22242da :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_22243a0
	ldr     r0, [sp, #0x8]
	mov     r1, r6
	bl      Function_22233f4
	cmp     r0, #0x0
	beq     branch_22242f2
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22242f2

.thumb
branch_22242f2: @ 22242f2 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	bl      Function_222342c
	cmp     r0, #0x0
	beq     branch_2224306
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2224306

.thumb
branch_2224306: @ 2224306 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	bl      Function_22235f0
	cmp     r0, #0x0
	beq     branch_222431a
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222431a

.thumb
branch_222431a: @ 222431a :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	bl      Function_2223c8c
	cmp     r0, #0x0
	beq     branch_222432e
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_222432e: @ 222432e :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	bl      Function_2224070
	cmp     r0, #0x0
	beq     branch_2224342
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2224342: @ 2224342 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_2223b34
	cmp     r0, #0x0
	beq     branch_2224358
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2224358: @ 2224358 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	bl      Function_222416c
	cmp     r0, #0x0
	beq     branch_222436c
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_222436c: @ 222436c :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	mov     r3, #0x8
	bl      Function_2223e10
	cmp     r0, #0x0
	beq     branch_2224386
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2224386: @ 2224386 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	mov     r3, #0x4
	bl      Function_2223e10
	cmp     r0, #0x0
	beq     branch_22243a0
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_22243a0: @ 22243a0 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22243a6

.align 2
.word 0x2db0 @ 0x22243a8
.word 0x400e000 @ 0x22243ac
.word 0x1ee @ 0x22243b0
.word BattleData_219c @ 0x22243b4
.word BattleData_21a4 @ 0x22243b8



.thumb
Function_22243bc: @ 22243bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r1, r0
	str     r0, [sp, #0x0]
	ldr     r5, [r1, #0x30]
	bl      Function_16_223df0c
	mov     r6, r0
	mov     r0, #0x1
	tst     r0, r6
	bne     branch_22243e0
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_16_223e208
	cmp     r0, #0x0
	bne     branch_22244a0
branch_22243e0: @ 22243e0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	mov     r2, r7
	bl      Function_22241a4
	cmp     r0, #0x0
	beq     branch_222448e
	ldr     r0, [pc, #0xb8] @ 0x22244a8, (=BattleData_21a4)
	add     r0, r5, r0
	str     r0, [sp, #0x10]
	ldrb    r0, [r0, r7]
	cmp     r0, #0x6
	bne     branch_2224488
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_16_225ba88
	mov     r4, r0
	cmp     r4, #0x6
	bne     branch_2224484
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	mov     r0, #0x10
	tst     r0, r6
	bne     branch_222441a
	mov     r0, #0x8
	tst     r0, r6
	beq     branch_2224420
branch_222441a: @ 222441a :thumb
	ldr     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
	b       branch_222442e

branch_2224420: @ 2224420 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_16_223e258
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
branch_222442e: @ 222442e :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_16_223df60
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2224484
	ldr     r0, [sp, #0xc]
	add     r6, r5, r0
	ldr     r0, [sp, #0x8]
	add     r5, r5, r0
branch_2224446: @ 2224446 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	mov     r2, r4
	bl      Function_16_223dfac
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222447c
	ldr     r0, [pc, #0x4c] @ 0x22244ac, (=BattleData_219c)
	ldrb    r0, [r6, r0]
	cmp     r4, r0
	beq     branch_222447c
	ldr     r0, [pc, #0x44] @ 0x22244ac, (=BattleData_219c)
	ldrb    r0, [r5, r0]
	cmp     r4, r0
	beq     branch_222447c
	ldr     r0, [pc, #0x38] @ 0x22244a8, (=BattleData_21a4)
	ldrb    r0, [r6, r0]
	cmp     r4, r0
	beq     branch_222447c
	ldr     r0, [pc, #0x30] @ 0x22244a8, (=BattleData_21a4)
	ldrb    r0, [r5, r0]
	cmp     r4, r0
	bne     branch_2224484
branch_222447c: @ 222447c :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2224446
branch_2224484: @ 2224484 :thumb
	ldr     r0, [sp, #0x10]
	strb    r4, [r0, r7]
branch_2224488: @ 2224488 :thumb
	add     sp, #0x14
	mov     r0, #0x3
	pop     {r4-r7,pc}

branch_222448e: @ 222448e :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_22244b0
	cmp     r0, #0x0
	beq     branch_22244a0
	add     sp, #0x14
	mov     r0, #0x2
	pop     {r4-r7,pc}

branch_22244a0: @ 22244a0 :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22244a6

.align 2
.word BattleData_21a4 @ 0x22244a8
.word BattleData_219c @ 0x22244ac



.thumb
Function_22244b0: @ 22244b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r2, #0x0
	str     r2, [sp, #0x14]
	mov     r2, r1
	asr     r2, r2, #1
	ldr     r4, [r5, #0x30]
	str     r2, [sp, #0xc]
	add     r6, r4, r2
	ldr     r2, [sp, #0x14]
	ldr     r3, [pc, #0x2f4] @ 0x22247bc, (=0x3d3)
	str     r2, [sp, #0x1c]
	strb    r2, [r6, r3]
	ldr     r3, [r5, #0x2c]
	mov     r2, #0x4b
	and     r2, r3
	str     r1, [sp, #0x0]
	cmp     r2, #0x4b
	bne     branch_22244e6
	bl      Function_16_223e1f8
	cmp     r0, #0x4
	bne     branch_22244e6
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_22244e6: @ 22244e6 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0xc0
	mul     r1, r0
	mov     r0, #0xb7
	str     r1, [sp, #0x8]
	add     r1, r4, r1
	lsl     r0, r0, #6              @ =0x2dc0
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #26
	tst     r0, r1
	beq     branch_2224504
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2224504: @ 2224504 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_16_223df20
	mov     r7, r0
	mov     r5, #0x0
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_2224562
branch_2224518: @ 2224518 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa3
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2224556
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2224556
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x278] @ 0x22247c0, (=0x1ee)
	cmp     r0, r1
	beq     branch_2224556
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
branch_2224556: @ 2224556 :thumb
	mov     r0, r7
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r5, r0
	blt     branch_2224518
branch_2224562: @ 2224562 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	lsl     r0, r0, #3
	add     r0, r4, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0xc]
	add     r5, r4, r0
	ldr     r0, [sp, #0x8]
	add     r7, r4, r0
	ldr     r0, [sp, #0x0]
	bic     r0, r1
	str     r0, [sp, #0x0]
	add     r0, r4, r0
	str     r0, [sp, #0x10]
branch_2224582: @ 2224582 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2224598
	ldr     r0, [pc, #0x238] @ 0x22247c4, (=BattleData_3cd)
	ldrb    r1, [r5, r0]
	ldr     r0, [sp, #0x4]
	sub     r0, r1, r0
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x14]
	cmp     r0, r1
	bgt     branch_22245a4
branch_2224598: @ 2224598 :thumb
	mov     r0, #0xe7
	ldr     r1, [sp, #0x18]
	lsl     r0, r0, #2
	ldrh    r6, [r1, r0]
	cmp     r6, #0x0
	bne     branch_22245a6
branch_22245a4: @ 22245a4 :thumb
	b       branch_222487e

branch_22245a6: @ 22245a6 :thumb
	cmp     r6, #0x17
	bne     branch_22245c8
	ldr     r1, [pc, #0x21c] @ 0x22247c8, (=BattleData_MaxHP)
	ldr     r0, [pc, #0x21c] @ 0x22247cc, (=BattleData_CurHP)
	ldr     r1, [r7, r1]
	ldr     r0, [r7, r0]
	lsr     r1, r1, #2
	cmp     r0, r1
	bcs     branch_2224622
	cmp     r0, #0x0
	beq     branch_2224622
	ldr     r0, [pc, #0x210] @ 0x22247d0, (=0x3d1)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_22245c8: @ 22245c8 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x26
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_222460a
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x36
	bl      Function_16_225b0fc
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	beq     branch_2224622
	ldr     r0, [pc, #0x1e4] @ 0x22247cc, (=BattleData_CurHP)
	ldr     r1, [r7, r0]
	cmp     r1, #0x0
	beq     branch_2224622
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r3, [r7, r0]
	lsr     r0, r3, #2
	cmp     r1, r0
	bcc     branch_22245fe
	sub     r0, r3, r1
	cmp     r0, r2
	bls     branch_2224622
branch_22245fe: @ 22245fe :thumb
	ldr     r0, [pc, #0x1d0] @ 0x22247d0, (=0x3d1)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	mov     r0, r1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_222460a: @ 222460a :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0xf
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_2224640
	ldr     r0, [pc, #0x1b8] @ 0x22247d4, (=BattleData_StatusEffect)
	ldr     r1, [r7, r0]
	mov     r0, #0x7
	tst     r0, r1
	bne     branch_2224624
branch_2224622: @ 2224622 :thumb
	b       branch_222486a

branch_2224624: @ 2224624 :thumb
	mov     r0, #0x5
	bl      Function_20787cc
	ldr     r1, [pc, #0x190] @ 0x22247bc, (=0x3d3)
	ldrb    r1, [r5, r1]
	orr     r1, r0
	ldr     r0, [pc, #0x188] @ 0x22247bc, (=0x3d3)
	strb    r1, [r5, r0]
	mov     r1, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_2224640: @ 2224640 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x10
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_222467a
	ldr     r0, [pc, #0x184] @ 0x22247d4, (=BattleData_StatusEffect)
	mov     r1, #0x8
	ldr     r0, [r7, r0]
	tst     r1, r0
	bne     branch_222465e
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_222472e
branch_222465e: @ 222465e :thumb
	mov     r0, #0x4
	bl      Function_20787cc
	ldr     r1, [pc, #0x154] @ 0x22247bc, (=0x3d3)
	ldrb    r1, [r5, r1]
	orr     r1, r0
	ldr     r0, [pc, #0x150] @ 0x22247bc, (=0x3d3)
	strb    r1, [r5, r0]
	mov     r1, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_222467a: @ 222467a :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x11
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_22246ae
	ldr     r0, [pc, #0x148] @ 0x22247d4, (=BattleData_StatusEffect)
	ldr     r1, [r7, r0]
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_222472e
	mov     r0, #0x3
	bl      Function_20787cc
	ldr     r1, [pc, #0x120] @ 0x22247bc, (=0x3d3)
	ldrb    r1, [r5, r1]
	orr     r1, r0
	ldr     r0, [pc, #0x11c] @ 0x22247bc, (=0x3d3)
	strb    r1, [r5, r0]
	mov     r1, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_22246ae: @ 22246ae :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x12
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_22246e2
	ldr     r0, [pc, #0x114] @ 0x22247d4, (=BattleData_StatusEffect)
	ldr     r1, [r7, r0]
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_222472e
	mov     r0, #0x2
	bl      Function_20787cc
	ldr     r1, [pc, #0xec] @ 0x22247bc, (=0x3d3)
	ldrb    r1, [r5, r1]
	orr     r1, r0
	ldr     r0, [pc, #0xe8] @ 0x22247bc, (=0x3d3)
	strb    r1, [r5, r0]
	mov     r1, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_22246e2: @ 22246e2 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x13
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_2224716
	ldr     r0, [pc, #0xe0] @ 0x22247d4, (=BattleData_StatusEffect)
	ldr     r1, [r7, r0]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_222472e
	mov     r0, #0x1
	bl      Function_20787cc
	ldr     r1, [pc, #0xb8] @ 0x22247bc, (=0x3d3)
	ldrb    r1, [r5, r1]
	orr     r1, r0
	ldr     r0, [pc, #0xb4] @ 0x22247bc, (=0x3d3)
	strb    r1, [r5, r0]
	mov     r1, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_2224716: @ 2224716 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x14
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_222474c
	ldr     r0, [pc, #0xb0] @ 0x22247d8, (=0x2db0)
	ldr     r1, [r7, r0]
	mov     r0, #0x7
	tst     r0, r1
	bne     branch_2224730
branch_222472e: @ 222472e :thumb
	b       branch_222486a

branch_2224730: @ 2224730 :thumb
	mov     r0, #0x0
	bl      Function_20787cc
	ldr     r1, [pc, #0x84] @ 0x22247bc, (=0x3d3)
	ldrb    r1, [r5, r1]
	orr     r1, r0
	ldr     r0, [pc, #0x7c] @ 0x22247bc, (=0x3d3)
	strb    r1, [r5, r0]
	mov     r1, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_222474c: @ 222474c :thumb
	ldr     r0, [pc, #0x8c] @ 0x22247dc, (=0x2dd4)
	ldr     r1, [r7, r0]
	mov     r0, #0x15
	lsl     r0, r0, #4          @ =0x150 BattleData_RoundNr
	ldr     r0, [r4, r0]
	sub     r0, r1, r0
	bpl     branch_222475c
	b       branch_2224864

branch_222475c: @ 222475c :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1b
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_222477c
	ldr     r0, [pc, #0x50] @ 0x22247bc, (=0x3d3)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	mov     r1, #0x3
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_222477c: @ 222477c :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1c
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_222479c
	ldr     r0, [pc, #0x30] @ 0x22247bc, (=0x3d3)
	mov     r1, #0x2
	strb    r1, [r5, r0]
	mov     r1, #0x3
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_222479c: @ 222479c :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1d
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_22247e0
	ldr     r0, [pc, #0x10] @ 0x22247bc, (=0x3d3)
	mov     r1, #0x4
	strb    r1, [r5, r0]
	mov     r1, #0x3
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a
@ 0x22247bc

.word 0x3d3 @ 0x22247bc
.word 0x1ee @ 0x22247c0
.word BattleData_3cd @ 0x22247c4
.word BattleData_MaxHP @ 0x22247c8
.word BattleData_CurHP @ 0x22247cc
.word 0x3d1 @ 0x22247d0
.word BattleData_StatusEffect @ 0x22247d4
.word 0x2db0 @ 0x22247d8
.word 0x2dd4 @ 0x22247dc

.thumb
branch_22247e0: @ 22247e0 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1e
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_2224800
	ldr     r0, [pc, #0xa8] @ 0x2224898, (=0x3d3)
	mov     r1, #0x5
	strb    r1, [r5, r0]
	mov     r1, #0x3
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_2224800: @ 2224800 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1f
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_222481e
	ldr     r0, [pc, #0x88] @ 0x2224898, (=0x3d3)
	mov     r1, #0x3
	strb    r1, [r5, r0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_222481e: @ 222481e :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x20
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_222483e
	ldr     r0, [pc, #0x68] @ 0x2224898, (=0x3d3)
	mov     r1, #0x6
	strb    r1, [r5, r0]
	mov     r1, #0x3
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_222483e: @ 222483e :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x16
	bl      Function_16_225b0fc
	cmp     r0, #0x0
	beq     branch_222486a
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x40
	tst     r0, r1
	bne     branch_222486a
	ldr     r0, [pc, #0x40] @ 0x222489c, (=0x3d1)
	mov     r1, #0x4
	strb    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222486a

branch_2224864: @ 2224864 :thumb
	ldr     r0, [pc, #0x34] @ 0x222489c, (=0x3d1)
	mov     r1, #0x5
	strb    r1, [r5, r0]
branch_222486a: @ 222486a :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	bne     branch_222487e
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x2c] @ 0x22248a0, (=0x3d6)
	mov     r2, #0x0
	strh    r6, [r1, r0]
	ldr     r1, [sp, #0x18]
	sub     r0, #0x3a
	strh    r2, [r1, r0]
branch_222487e: @ 222487e :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	bge     branch_2224890
	b       branch_2224582

branch_2224890: @ 2224890 :thumb
	ldr     r0, [sp, #0x1c]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2224896

.align 2
.word 0x3d3 @ 0x2224898
.word 0x3d1 @ 0x222489c
.word 0x3d6 @ 0x22248a0



@ Tr_Ai_22248a4
.include "source/overlay_0014_AI.s" @ 0x4c84 - 0xf240





Unknown_222ee60:
.hword 0x64, 0x14, 0xFA, 0x28, 0x1F4, 0x3C, 0x3E8, 0x50, 0x7D0, 0x64, 0xffff, 0xffff


Unknown_222ee78:
.hword 0x87, 0xdb, 0xde, 0x10c, 0x29, 0x57, 0x58, 0x79, 0x7b, 0x82, 0xc4, 0xffff


Unknown_222ee90:
.hword 0x07, 0x08, 0x27, 0x4B, 0x50, 0x91, 0x97, 0xA1, 0xAA, 0xB6, 0xBE, 0xF8, 0x10D, 0xffff


Jumptable_222eeac: @ 0x222eeac
.word AICmd_RandomJumpLt+1 @ =0x2220185, 0x222eeac 0x0
.word AICmd_RandomJumpGt+1 @ =0x22201c5, 0x222eeb0 0x1
.word AICmd_RandomJumpEq+1 @ =0x2220205, 0x222eeb4 0x2
.word AICmd_RandomJumpNe+1 @ =0x2220245, 0x222eeb8 0x3
.word AICmd_AddScore+1 @ =0x2220285, 0x222eebc 0x4
.word AICmd_HPLt+1 @ =0x22202b9, 0x222eec0 0x5
.word AICmd_HPGt+1 @ =0x2220311, 0x222eec4 0x6
.word AICmd_HPEq+1 @ =0x2220369, 0x222eec8 0x7
.word AICmd_HPNe+1 @ =0x22203c1, 0x222eecc 0x8
.word AICmd_9+1 @ =0x2220419, 0x222eed0 0x9
.word AICmd_a+1 @ =0x2220465, 0x222eed4 0xa
.word AICmd_b+1 @ =0x22204b1, 0x222eed8 0xb
.word AICmd_c+1 @ =0x22204fd, 0x222eedc 0xc
.word AICmd_d+1 @ =0x2220549, 0x222eee0 0xd
.word AICmd_e+1 @ =0x2220591, 0x222eee4 0xe
.word AICmd_f+1 @ =0x22205d9, 0x222eee8 0xf
.word AICmd_10+1 @ =0x2220629, 0x222eeec 0x10
.word AICmd_11+1 @ =0x2220679, 0x222eef0 0x11
.word AICmd_12+1 @ =0x22206a9, 0x222eef4 0x12
.word AICmd_13+1 @ =0x22206d9, 0x222eef8 0x13
.word AICmd_14+1 @ =0x2220709, 0x222eefc 0x14
.word AICmd_15+1 @ =0x2220739, 0x222ef00 0x15
.word AICmd_16+1 @ =0x2220769, 0x222ef04 0x16
.word AICmd_MoveEq+1 @ =0x2220799, 0x222ef08 0x17
.word AICmd_MoveNe+1 @ =0x22207c9, 0x222ef0c 0x18
.word AICmd_19+1 @ =0x22207f9, 0x222ef10 0x19
.word AICmd_1a+1 @ =0x222084d, 0x222ef14 0x1a
.word AICmd_1b+1 @ =0x222089d, 0x222ef18 0x1b
.word AICmd_1c+1 @ =0x2220901, 0x222ef1c 0x1c
.word AICmd_GetRoundNr+1 @ =0x2220965, 0x222ef20 0x1d
.word AICmd_GetType+1 @ =0x2220981, 0x222ef24 0x1e
.word AICmd_1f+1 @ =0x2220b11, 0x222ef28 0x1f
.word AICmd_20+1 @ =0x2220b35, 0x222ef2c 0x20
.word AICmd_21+1 @ =0x2220c71, 0x222ef30 0x21
.word AICmd_HasType+1 @ =0x2220ca5, 0x222ef34 0x22
.word AICmd_23+1 @ =0x2220cd5, 0x222ef38 0x23
.word AICmd_24+1 @ =0x2220d05, 0x222ef3c 0x24
.word AICmd_25+1 @ =0x2220d49, 0x222ef40 0x25
.word AICmd_26+1 @ =0x2220d8d, 0x222ef44 0x26
.word AICmd_27+1 @ =0x2220e69, 0x222ef48 0x27
.word AICmd_28+1 @ =0x2220e85, 0x222ef4c 0x28
.word AICmd_GetAbility+1 @ =0x2220ea9, 0x222ef50 0x29
.word AICmd_2a+1 @ =0x2221061, 0x222ef54 0x2a
.word AICmd_2b+1 @ =0x2221115, 0x222ef58 0x2b
.word AICmd_2c+1 @ =0x22211ad, 0x222ef5c 0x2c
.word AICmd_2d+1 @ =0x22212a1, 0x222ef60 0x2d
.word AICmd_2e+1 @ =0x2221395, 0x222ef64 0x2e
.word AICmd_2f+1 @ =0x222140d, 0x222ef68 0x2f
.word AICmd_30+1 @ =0x2221445, 0x222ef6c 0x30
.word AICmd_StatLvlLt+1 @ =0x222147d, 0x222ef70 0x31
.word AICmd_StatLvlGt+1 @ =0x22214d1, 0x222ef74 0x32
.word AICmd_StatLvlEq+1 @ =0x2221525, 0x222ef78 0x33
.word AICmd_StatLvlNe+1 @ =0x2221579, 0x222ef7c 0x34
.word AICmd_35+1 @ =0x22215cd, 0x222ef80 0x35
.word AICmd_36+1 @ =0x22216f9, 0x222ef84 0x36
.word AICmd_37+1 @ =0x2221825, 0x222ef88 0x37
.word AICmd_38+1 @ =0x22218e5, 0x222ef8c 0x38
.word AICmd_39+1 @ =0x22219a5, 0x222ef90 0x39
.word AICmd_3a+1 @ =0x2221a49, 0x222ef94 0x3a
.word AICmd_3b+1 @ =0x2221aed, 0x222ef98 0x3b
.word AICmd_3c+1 @ =0x2221b5d, 0x222ef9c 0x3c
.word AICmd_3d+1 @ =0x2221bcd, 0x222efa0 0x3d
.word AICmd_3e+1 @ =0x2221be9, 0x222efa4 0x3e
.word AICmd_3f+1 @ =0x2221bed, 0x222efa8 0x3f
.word AICmd_40+1 @ =0x2221bf1, 0x222efac 0x40
.word AICmd_41+1 @ =0x2221c25, 0x222efb0 0x41
.word AICmd_42+1 @ =0x2222845, 0x222efb4 0x42
.word AICmd_43+1 @ =0x222287d, 0x222efb8 0x43
.word AICmd_44+1 @ =0x22228c9, 0x222efbc 0x44
.word AICmd_45+1 @ =0x2222901, 0x222efc0 0x45
.word AICmd_46+1 @ =0x2222919, 0x222efc4 0x46
.word AICmd_47+1 @ =0x222294d, 0x222efc8 0x47
.word AICmd_48+1 @ =0x222296d, 0x222efcc 0x48
.word AICmd_49+1 @ =0x222298d, 0x222efd0 0x49
.word AICmd_4a+1 @ =0x22229ad, 0x222efd4 0x4a
.word AICmd_4b+1 @ =0x2222a09, 0x222efd8 0x4b
.word AICmd_Jump+1 @ =0x2222a29, 0x222efdc 0x4c
.word AICmd_4d+1 @ =0x2222a45, 0x222efe0 0x4d
.word AICmd_4e+1 @ =0x2222a6d, 0x222efe4 0x4e
.word AICmd_4f+1 @ =0x2222b11, 0x222efe8 0x4f
.word AICmd_50+1 @ =0x2222b49, 0x222efec 0x50
.word AICmd_51+1 @ =0x2222b81, 0x222eff0 0x51
.word AICmd_52+1 @ =0x2220ab5, 0x222eff4 0x52
.word AICmd_53+1 @ =0x2220f89, 0x222eff8 0x53
.word AICmd_54+1 @ =0x2222bb5, 0x222effc 0x54
.word AICmd_55+1 @ =0x2221c89, 0x222f000 0x55
.word AICmd_56+1 @ =0x2221cf1, 0x222f004 0x56
.word AICmd_57+1 @ =0x2221d21, 0x222f008 0x57
.word AICmd_58+1 @ =0x2221d89, 0x222f00c 0x58
.word AICmd_59+1 @ =0x2221e19, 0x222f010 0x59
.word AICmd_5a+1 @ =0x2221ebd, 0x222f014 0x5a
.word AICmd_5b+1 @ =0x2221eed, 0x222f018 0x5b
.word AICmd_5c+1 @ =0x2221f1d, 0x222f01c 0x5c
.word AICmd_5d+1 @ =0x2221f79, 0x222f020 0x5d
.word AICmd_5e+1 @ =0x2221f9d, 0x222f024 0x5e
.word AICmd_5f+1 @ =0x2221fcd, 0x222f028 0x5f
.word AICmd_60+1 @ =0x2222091, 0x222f02c 0x60
.word AICmd_61+1 @ =0x22220cd, 0x222f030 0x61
.word AICmd_62+1 @ =0x2222261, 0x222f034 0x62
.word AICmd_63+1 @ =0x2222299, 0x222f038 0x63
.word AICmd_64+1 @ =0x22223b1, 0x222f03c 0x64
.word AICmd_65+1 @ =0x2222401, 0x222f040 0x65
.word AICmd_66+1 @ =0x2222451, 0x222f044 0x66
.word AICmd_67+1 @ =0x22224a5, 0x222f048 0x67
.word AICmd_68+1 @ =0x22224f9, 0x222f04c 0x68
.word AICmd_69+1 @ =0x2222649, 0x222f050 0x69
.word AICmd_6a+1 @ =0x22227a5, 0x222f054 0x6a
.word AICmd_6b+1 @ =0x22227f5, 0x222f058 0x6b
.word AICmd_6c+1 @ =0x2222bf9, 0x222f05c 0x6c


@ 0x222f060
.word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


@end 0x222f080

