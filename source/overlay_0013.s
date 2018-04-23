
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram13, "ax"


.thumb
Function_221fc20: @ 221fc20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x11]
	cmp     r0, #0x5
	bls     branch_221fc2e
	mov     r0, #0x0
	strb    r0, [r5, #0x11]
branch_221fc2e: @ 221fc2e :thumb
	ldr     r0, [pc, #0x68] @ 0x221fc98, (=0x221fcad)
	ldr     r1, [pc, #0x68] @ 0x221fc9c, (=0x2090)
	ldr     r3, [r5, #0xc]
	mov     r2, #0x0
	bl      Function_200679c
	bl      Function_201ced0
	ldr     r2, [pc, #0x5c] @ 0x221fc9c, (=0x2090)
	mov     r4, r0
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	str     r5, [r4, #0x0]
	ldr     r0, [r5, #0x8]
	bl      0x223df00
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x8]
	bl      LoadMainBattleData_28
	mov     r1, #0x7a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x3c] @ 0x221fca0, (=0x2078)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	ldrb    r1, [r5, #0x11]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r4, r0]
	ldr     r0, [r5, #0x8]
	bl      0x223f1f8
	ldr     r3, [pc, #0x2c] @ 0x221fca4, (=0x2077)
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #28
	ldrb    r1, [r4, r3]
	mov     r2, #0xf0
	lsr     r0, r0, #24
	bic     r1, r2
	orr     r0, r1
	strb    r0, [r4, r3]
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x28]
	bl      0x223e1f8
	ldr     r1, [pc, #0x14] @ 0x221fca8, (=0x208f)
	strb    r0, [r4, r1]
	pop     {r3-r5,pc}
@ 0x221fc96


.align 2


.word 0x221fcad @ 0x221fc98
.word 0x2090 @ 0x221fc9c
.word 0x2078 @ 0x221fca0
.word 0x2077 @ 0x221fca4
.word 0x208f @ 0x221fca8
.thumb
Function_221fcac: @ 221fcac :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x1a4] @ 0x221fe54, (=0x2078)
	mov     r4, r1
	ldrb    r2, [r4, r2]
	cmp     r2, #0x1a
	bls     branch_221fcba
	b       branch_221fe3c
@ 0x221fcba

.thumb
branch_221fcba: @ 221fcba :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x221fcc6

Jumppoints_221fcc6:
.hword branch_221fcfc - Jumppoints_221fcc6 - 2
.hword branch_221fd08 - Jumppoints_221fcc6 - 2
.hword branch_221fd14 - Jumppoints_221fcc6 - 2
.hword branch_221fd20 - Jumppoints_221fcc6 - 2
.hword branch_221fd2c - Jumppoints_221fcc6 - 2
.hword branch_221fd38 - Jumppoints_221fcc6 - 2
.hword branch_221fd44 - Jumppoints_221fcc6 - 2
.hword branch_221fd50 - Jumppoints_221fcc6 - 2
.hword branch_221fd5c - Jumppoints_221fcc6 - 2
.hword branch_221fd68 - Jumppoints_221fcc6 - 2
.hword branch_221fd74 - Jumppoints_221fcc6 - 2
.hword branch_221fd80 - Jumppoints_221fcc6 - 2
.hword branch_221fd8c - Jumppoints_221fcc6 - 2
.hword branch_221fd98 - Jumppoints_221fcc6 - 2
.hword branch_221fda4 - Jumppoints_221fcc6 - 2
.hword branch_221fdb0 - Jumppoints_221fcc6 - 2
.hword branch_221fdbc - Jumppoints_221fcc6 - 2
.hword branch_221fdc8 - Jumppoints_221fcc6 - 2
.hword branch_221fdd4 - Jumppoints_221fcc6 - 2
.hword branch_221fde0 - Jumppoints_221fcc6 - 2
.hword branch_221fdec - Jumppoints_221fcc6 - 2
.hword branch_221fdf8 - Jumppoints_221fcc6 - 2
.hword branch_221fe04 - Jumppoints_221fcc6 - 2
.hword branch_221fe10 - Jumppoints_221fcc6 - 2
.hword branch_221fe1c - Jumppoints_221fcc6 - 2
.hword branch_221fe28 - Jumppoints_221fcc6 - 2
.hword branch_221fe34 - Jumppoints_221fcc6 - 2
.thumb
branch_221fcfc: @ 221fcfc :thumb
	mov     r0, r4
	bl      Function_221fe5c
	ldr     r1, [pc, #0x150] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd08

.thumb
branch_221fd08: @ 221fd08 :thumb
	mov     r0, r4
	bl      Function_221ff60
	ldr     r1, [pc, #0x144] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd14

.thumb
branch_221fd14: @ 221fd14 :thumb
	mov     r0, r4
	bl      Function_222012c
	ldr     r1, [pc, #0x138] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd20

.thumb
branch_221fd20: @ 221fd20 :thumb
	mov     r0, r4
	bl      Function_22201dc
	ldr     r1, [pc, #0x12c] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd2c

.thumb
branch_221fd2c: @ 221fd2c :thumb
	mov     r0, r4
	bl      Function_222029c
	ldr     r1, [pc, #0x120] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd38

.thumb
branch_221fd38: @ 221fd38 :thumb
	mov     r0, r4
	bl      Function_22203a0
	ldr     r1, [pc, #0x114] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd44

.thumb
branch_221fd44: @ 221fd44 :thumb
	mov     r0, r4
	bl      Function_222072c
	ldr     r1, [pc, #0x108] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd50

.thumb
branch_221fd50: @ 221fd50 :thumb
	mov     r0, r4
	bl      Function_2220738
	ldr     r1, [pc, #0xfc] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd5c

.thumb
branch_221fd5c: @ 221fd5c :thumb
	mov     r0, r4
	bl      Function_2220744
	ldr     r1, [pc, #0xf0] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd68

.thumb
branch_221fd68: @ 221fd68 :thumb
	mov     r0, r4
	bl      Function_2220750
	ldr     r1, [pc, #0xe4] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd74

.thumb
branch_221fd74: @ 221fd74 :thumb
	mov     r0, r4
	bl      Function_222075c
	ldr     r1, [pc, #0xd8] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd80

.thumb
branch_221fd80: @ 221fd80 :thumb
	mov     r0, r4
	bl      Function_2220768
	ldr     r1, [pc, #0xcc] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd8c

.thumb
branch_221fd8c: @ 221fd8c :thumb
	mov     r0, r4
	bl      Function_222078c
	ldr     r1, [pc, #0xc0] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fd98

.thumb
branch_221fd98: @ 221fd98 :thumb
	mov     r0, r4
	bl      Function_22207b8
	ldr     r1, [pc, #0xb4] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fda4

.thumb
branch_221fda4: @ 221fda4 :thumb
	mov     r0, r4
	bl      Function_22207dc
	ldr     r1, [pc, #0xa8] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fdb0

.thumb
branch_221fdb0: @ 221fdb0 :thumb
	mov     r0, r4
	bl      Function_222081c
	ldr     r1, [pc, #0x9c] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fdbc

.thumb
branch_221fdbc: @ 221fdbc :thumb
	mov     r0, r4
	bl      Function_2220834
	ldr     r1, [pc, #0x90] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fdc8

.thumb
branch_221fdc8: @ 221fdc8 :thumb
	mov     r0, r4
	bl      Function_2220848
	ldr     r1, [pc, #0x84] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fdd4

.thumb
branch_221fdd4: @ 221fdd4 :thumb
	mov     r0, r4
	bl      Function_2220864
	ldr     r1, [pc, #0x78] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fde0

.thumb
branch_221fde0: @ 221fde0 :thumb
	mov     r0, r4
	bl      Function_2220418
	ldr     r1, [pc, #0x6c] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fdec

.thumb
branch_221fdec: @ 221fdec :thumb
	mov     r0, r4
	bl      Function_222050c
	ldr     r1, [pc, #0x60] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fdf8

.thumb
branch_221fdf8: @ 221fdf8 :thumb
	mov     r0, r4
	bl      Function_2220628
	ldr     r1, [pc, #0x54] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fe04

.thumb
branch_221fe04: @ 221fe04 :thumb
	mov     r0, r4
	bl      Function_222088c
	ldr     r1, [pc, #0x48] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fe10

.thumb
branch_221fe10: @ 221fe10 :thumb
	mov     r0, r4
	bl      Function_22208a4
	ldr     r1, [pc, #0x3c] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fe1c

.thumb
branch_221fe1c: @ 221fe1c :thumb
	mov     r0, r4
	bl      Function_2220a4c
	ldr     r1, [pc, #0x30] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fe28

.thumb
branch_221fe28: @ 221fe28 :thumb
	mov     r0, r4
	bl      Function_2220b78
	ldr     r1, [pc, #0x24] @ 0x221fe54, (=0x2078)
	strb    r0, [r4, r1]
	b       branch_221fe3c
@ 0x221fe34

.thumb
branch_221fe34: @ 221fe34 :thumb
	bl      Function_2220ba4
	cmp     r0, #0x1
	beq     branch_221fe50
.thumb
branch_221fe3c: @ 221fe3c :thumb
	mov     r0, r4
	bl      Function_222537c
	ldr     r0, [pc, #0x14] @ 0x221fe58, (=0x1fb4)
	ldr     r0, [r4, r0]
	bl      Function_200c7ec
	mov     r0, r4
	bl      Function_222601c
.thumb
branch_221fe50: @ 221fe50 :thumb
	pop     {r4,pc}
@ 0x221fe52


.align 2


.word 0x2078 @ 0x221fe54
.word 0x1fb4 @ 0x221fe58
.thumb
Function_221fe5c: @ 221fe5c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xec] @ 0x221ff50, (=REG_BLDCNT_SUB)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	ldr     r0, [pc, #0xe0] @ 0x221ff54, (=0x207a)
	bne     branch_221fe7c
	mov     r1, #0x6
	strb    r1, [r5, r0]
	mov     r4, #0x13
	b       branch_221fe80
@ 0x221fe7c

.thumb
branch_221fe7c: @ 221fe7c :thumb
	strb    r1, [r5, r0]
	mov     r4, #0x1
.thumb
branch_221fe80: @ 221fe80 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2228a38
	ldr     r1, [pc, #0xcc] @ 0x221ff58, (=0x2088)
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_2220f98
	mov     r0, r5
	bl      Function_2220c0c
	mov     r0, r5
	bl      Function_2220d4c
	mov     r0, r5
	bl      Function_2220f08
	ldr     r1, [r5, #0x0]
	mov     r0, #0x2
	ldr     r1, [r1, #0xc]
	bl      Function_2002bb8
	ldr     r1, [pc, #0xa4] @ 0x221ff54, (=0x207a)
	mov     r0, r5
	ldrb    r1, [r5, r1]
	bl      Function_2221738
	ldr     r1, [pc, #0x98] @ 0x221ff54, (=0x207a)
	mov     r0, r5
	ldrb    r1, [r5, r1]
	bl      Function_22260ec
	ldr     r1, [pc, #0x90] @ 0x221ff54, (=0x207a)
	mov     r0, r5
	ldrb    r1, [r5, r1]
	bl      Function_2226444
	mov     r0, r5
	bl      Function_2224500
	ldr     r1, [pc, #0x80] @ 0x221ff54, (=0x207a)
	mov     r0, r5
	ldrb    r1, [r5, r1]
	bl      Function_2224b7c
	mov     r0, r5
	bl      Function_2221a88
	ldr     r1, [pc, #0x70] @ 0x221ff54, (=0x207a)
	mov     r0, r5
	ldrb    r1, [r5, r1]
	bl      Function_2221bf8
	ldr     r0, [r5, #0x0]
	add     r0, #0x32
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_221ff00
	ldr     r0, [pc, #0x60] @ 0x221ff58, (=0x2088)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      Function_2228a60
.thumb
branch_221ff00: @ 221ff00 :thumb
	ldr     r0, [pc, #0x50] @ 0x221ff54, (=0x207a)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_221ff1a
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_22219ac
	cmp     r0, #0x1
	bne     branch_221ff1a
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x11]
.thumb
branch_221ff1a: @ 221ff1a :thumb
	ldr     r1, [pc, #0x38] @ 0x221ff54, (=0x207a)
	mov     r0, r5
	ldrb    r1, [r5, r1]
	bl      Function_222563c
	ldr     r1, [pc, #0x2c] @ 0x221ff54, (=0x207a)
	mov     r0, r5
	ldrb    r1, [r5, r1]
	bl      Function_22214e0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	mov     r1, #0xa
	mov     r3, r1
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x18] @ 0x221ff5c, (=0xffff)
	sub     r3, #0x12
	bl      Function_2003178
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x221ff50

.word REG_BLDCNT_SUB @ 0x221ff50
.word 0x207a @ 0x221ff54
.word 0x2088 @ 0x221ff58
.word 0xffff @ 0x221ff5c



.thumb
Function_221ff60: @ 221ff60 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_221ff76
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x221ff76

.thumb
branch_221ff76: @ 221ff76 :thumb
	mov     r0, r4
	bl      Function_222124c
	cmp     r0, #0x1
	bne     branch_221ffce
	ldr     r1, [r4, #0x0]
	ldrb    r0, [r1, #0x11]
	cmp     r0, #0x6
	bne     branch_221ffa2
	add     r1, #0x35
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x1
	beq     branch_221ffce
	ldr     r0, [pc, #0x40] @ 0x221ffd4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2225fcc
	mov     r0, #0x19
	pop     {r4,pc}
@ 0x221ffa2

.thumb
branch_221ffa2: @ 221ffa2 :thumb
	ldr     r0, [pc, #0x30] @ 0x221ffd4, (=0x5dd)
	bl      Function_2005748
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x11]
	bl      Function_2225fcc
	ldr     r0, [r4, #0x0]
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_221ffc4
	mov     r0, r4
	bl      Function_221ffdc
	pop     {r4,pc}
@ 0x221ffc4

.thumb
branch_221ffc4: @ 221ffc4 :thumb
	ldr     r0, [pc, #0x10] @ 0x221ffd8, (=0x2079)
	mov     r1, #0x7
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x221ffce

.thumb
branch_221ffce: @ 221ffce :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x221ffd2


.align 2


.word 0x5dd @ 0x221ffd4
.word 0x2079 @ 0x221ffd8
.thumb
Function_221ffdc: @ 221ffdc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	ldrb    r1, [r4, #0x11]
	cmp     r1, #0x0
	bne     branch_221ffee
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_221fff8
.thumb
branch_221ffee: @ 221ffee :thumb
	cmp     r1, #0x1
	bne     branch_2220014
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_2220014
.thumb
branch_221fff8: @ 221fff8 :thumb
	mov     r0, r5
	bl      Function_222449c
	mov     r0, r5
	bl      Function_22240e0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	strb    r1, [r0, #0x11]
	ldr     r0, [pc, #0x114] @ 0x2220120, (=0x2079)
	mov     r1, #0x19
	strb    r1, [r5, r0]
	mov     r0, #0x11
	pop     {r3-r5,pc}
@ 0x2220014

.thumb
branch_2220014: @ 2220014 :thumb
	ldrh    r0, [r4, #0x22]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x24
	bl      GetItemData
	cmp     r0, #0x0
	beq     branch_222004a
	ldrh    r0, [r4, #0x22]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x25
	bl      GetItemData
	cmp     r0, #0x0
	bne     branch_222004a
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r5, r0
	ldrb    r0, [r0, #0x1b]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bne     branch_222004a
	ldr     r0, [pc, #0xdc] @ 0x2220120, (=0x2079)
	mov     r1, #0xd
	strb    r1, [r5, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x222004a

.thumb
branch_222004a: @ 222004a :thumb
	ldrh    r0, [r4, #0x22]
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	ldrb    r2, [r4, #0x11]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x28]
	add     r2, r4, r2
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	bl      0x223e30c
	cmp     r0, #0x1
	bne     branch_22200fa
	ldrh    r0, [r4, #0x22]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x25
	bl      GetItemData
	cmp     r0, #0x0
	beq     branch_222007a
	ldr     r0, [pc, #0xac] @ 0x2220120, (=0x2079)
	mov     r1, #0xd
	strb    r1, [r5, r0]
	b       branch_22200f0
@ 0x222007a

.thumb
branch_222007a: @ 222007a :thumb
	ldrb    r1, [r4, #0x11]
	mov     r0, r5
	bl      Function_22213f0
	cmp     r0, #0x1
	bne     branch_22200ea
	ldrh    r0, [r4, #0x22]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x17
	bl      GetItemData
	cmp     r0, #0x0
	bne     branch_22200ea
	mov     r2, r4
	add     r2, #0x33
	ldrh    r1, [r4, #0x22]
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r3, [r4, #0xc]
	bl      Function_2221a54
	ldrb    r2, [r4, #0x11]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x28]
	add     r2, r4, r2
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	bl      0x223dfac
	ldrb    r2, [r4, #0x11]
	mov     r1, #0x50
	mov     r3, r2
	mul     r3, r1
	add     r2, r5, r3
	str     r0, [r2, #0x4]
	ldrb    r0, [r4, #0x11]
	mov     r2, #0x0
	mul     r1, r0
	add     r0, r5, r1
	ldr     r0, [r0, #0x4]
	mov     r1, #0xa3
	bl      GetPkmnData
	strh    r0, [r4, #0x20]
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x50
	ldrh    r2, [r4, #0x20]
	mul     r0, r1
	add     r0, r5, r0
	ldrh    r0, [r0, #0x14]
	mov     r1, #0x19
	sub     r0, r2, r0
	strh    r0, [r4, #0x20]
	ldr     r0, [pc, #0x38] @ 0x2220120, (=0x2079)
	strb    r1, [r5, r0]
	b       branch_22200f0
@ 0x22200ea

.thumb
branch_22200ea: @ 22200ea :thumb
	ldr     r0, [pc, #0x34] @ 0x2220120, (=0x2079)
	mov     r1, #0x17
	strb    r1, [r5, r0]
.thumb
branch_22200f0: @ 22200f0 :thumb
	ldr     r0, [pc, #0x30] @ 0x2220124, (=0x207c)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x22200fa

.thumb
branch_22200fa: @ 22200fa :thumb
	ldr     r2, [pc, #0x2c] @ 0x2220128, (=0x1fa8)
	mov     r1, #0x51
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	bl      Function_22240e0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	strb    r1, [r0, #0x11]
	ldr     r0, [pc, #0x8] @ 0x2220120, (=0x2079)
	mov     r1, #0x19
	strb    r1, [r5, r0]
	mov     r0, #0x11
	pop     {r3-r5,pc}
@ 0x222011e


.align 2


.word 0x2079 @ 0x2220120
.word 0x207c @ 0x2220124
.word 0x1fa8 @ 0x2220128
.thumb
Function_222012c: @ 222012c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22212c4
	cmp     r0, #0x3
	bhi     branch_22201ce
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2220144

Jumppoints_2220144:
.hword branch_222014c - Jumppoints_2220144 - 2
.hword branch_2220172 - Jumppoints_2220144 - 2
.hword branch_2220194 - Jumppoints_2220144 - 2
.hword branch_22201b6 - Jumppoints_2220144 - 2
.thumb
branch_222014c: @ 222014c :thumb
	ldr     r0, [pc, #0x84] @ 0x22201d4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2225fcc
	mov     r0, r4
	bl      Function_22217a4
	cmp     r0, #0x1
	bne     branch_2220168
	mov     r0, #0x19
	pop     {r4,pc}
@ 0x2220168

.thumb
branch_2220168: @ 2220168 :thumb
	ldr     r0, [pc, #0x6c] @ 0x22201d8, (=0x2079)
	mov     r1, #0xf
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x2220172

.thumb
branch_2220172: @ 2220172 :thumb
	mov     r0, r4
	bl      Function_222194c
	cmp     r0, #0x1
	beq     branch_22201ce
	ldr     r0, [pc, #0x54] @ 0x22201d4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_2225fcc
	ldr     r0, [pc, #0x4c] @ 0x22201d8, (=0x2079)
	mov     r1, #0x8
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x2220194

.thumb
branch_2220194: @ 2220194 :thumb
	mov     r0, r4
	bl      Function_222194c
	cmp     r0, #0x1
	beq     branch_22201ce
	ldr     r0, [pc, #0x34] @ 0x22201d4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_2225fcc
	ldr     r0, [pc, #0x28] @ 0x22201d8, (=0x2079)
	mov     r1, #0x9
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x22201b6

.thumb
branch_22201b6: @ 22201b6 :thumb
	ldr     r0, [pc, #0x1c] @ 0x22201d4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2225fcc
	ldr     r0, [pc, #0x10] @ 0x22201d8, (=0x2079)
	mov     r1, #0x6
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x22201ce

.thumb
branch_22201ce: @ 22201ce :thumb
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x22201d2


.align 2


.word 0x5dd @ 0x22201d4
.word 0x2079 @ 0x22201d8
.thumb
Function_22201dc: @ 22201dc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222130c
	cmp     r0, #0x3
	bhi     branch_222028c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22201f4

Jumppoints_22201f4:
.hword branch_22201fc - Jumppoints_22201f4 - 2
.hword branch_222022a - Jumppoints_22201f4 - 2
.hword branch_2220256 - Jumppoints_22201f4 - 2
.hword branch_222026e - Jumppoints_22201f4 - 2
.thumb
branch_22201fc: @ 22201fc :thumb
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	ldrb    r1, [r1, #0x11]
	mov     r0, r4
	mvn     r2, r2
	bl      Function_2221428
	cmp     r0, #0xff
	beq     branch_222028c
	ldr     r1, [r4, #0x0]
	strb    r0, [r1, #0x11]
	ldr     r0, [pc, #0x7c] @ 0x2220290, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_2225fcc
	ldr     r0, [pc, #0x70] @ 0x2220294, (=0x2079)
	mov     r1, #0xe
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x222022a

.thumb
branch_222022a: @ 222022a :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x11]
	mov     r2, #0x1
	bl      Function_2221428
	cmp     r0, #0xff
	beq     branch_222028c
	ldr     r1, [r4, #0x0]
	strb    r0, [r1, #0x11]
	ldr     r0, [pc, #0x50] @ 0x2220290, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_2225fcc
	ldr     r0, [pc, #0x44] @ 0x2220294, (=0x2079)
	mov     r1, #0xe
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x2220256

.thumb
branch_2220256: @ 2220256 :thumb
	ldr     r0, [pc, #0x38] @ 0x2220290, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_2225fcc
	ldr     r0, [pc, #0x2c] @ 0x2220294, (=0x2079)
	mov     r1, #0x9
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x222026e

.thumb
branch_222026e: @ 222026e :thumb
	ldr     r0, [pc, #0x20] @ 0x2220290, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2225fcc
	ldr     r0, [pc, #0x18] @ 0x2220298, (=0x208c)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	mov     r1, #0x7
	sub     r0, #0x13
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r4,pc}
@ 0x222028c

.thumb
branch_222028c: @ 222028c :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2220290

.word 0x5dd @ 0x2220290
.word 0x2079 @ 0x2220294
.word 0x208c @ 0x2220298
.thumb
Function_222029c: @ 222029c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_2221354
	mov     r5, r0
	cmp     r5, #0x7
	bhi     branch_222038e
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22202b6

Jumppoints_22202b6:
.hword branch_22202c6 - Jumppoints_22202b6 - 2
.hword branch_22202c6 - Jumppoints_22202b6 - 2
.hword branch_22202c6 - Jumppoints_22202b6 - 2
.hword branch_22202c6 - Jumppoints_22202b6 - 2
.hword branch_22202fe - Jumppoints_22202b6 - 2
.hword branch_222032c - Jumppoints_22202b6 - 2
.hword branch_2220358 - Jumppoints_22202b6 - 2
.hword branch_2220370 - Jumppoints_22202b6 - 2
.thumb
branch_22202c6: @ 22202c6 :thumb
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r1, r4, r0
	lsl     r0, r5, #3
	add     r0, r1, r0
	ldrh    r0, [r0, #0x34]
	cmp     r0, #0x0
	beq     branch_222038e
	ldr     r0, [pc, #0xb8] @ 0x2220394, (=0x5dd)
	bl      Function_2005748
	mov     r1, r5
	add     r1, #0xe
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2225fcc
	ldr     r0, [r4, #0x0]
	mov     r1, #0xa
	add     r0, #0x34
	strb    r5, [r0, #0x0]
	ldr     r0, [pc, #0xa0] @ 0x2220398, (=0x2079)
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x22202fe

.thumb
branch_22202fe: @ 22202fe :thumb
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	ldrb    r1, [r1, #0x11]
	mov     r0, r4
	mvn     r2, r2
	bl      Function_2221428
	cmp     r0, #0xff
	beq     branch_222038e
	ldr     r1, [r4, #0x0]
	strb    r0, [r1, #0x11]
	ldr     r0, [pc, #0x7c] @ 0x2220394, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_2225fcc
	ldr     r0, [pc, #0x74] @ 0x2220398, (=0x2079)
	mov     r1, #0xe
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x222032c

.thumb
branch_222032c: @ 222032c :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x11]
	mov     r2, #0x1
	bl      Function_2221428
	cmp     r0, #0xff
	beq     branch_222038e
	ldr     r1, [r4, #0x0]
	strb    r0, [r1, #0x11]
	ldr     r0, [pc, #0x50] @ 0x2220394, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_2225fcc
	ldr     r0, [pc, #0x48] @ 0x2220398, (=0x2079)
	mov     r1, #0xe
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x2220358

.thumb
branch_2220358: @ 2220358 :thumb
	ldr     r0, [pc, #0x38] @ 0x2220394, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_2225fcc
	ldr     r0, [pc, #0x30] @ 0x2220398, (=0x2079)
	mov     r1, #0x8
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x2220370

.thumb
branch_2220370: @ 2220370 :thumb
	ldr     r0, [pc, #0x20] @ 0x2220394, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2225fcc
	ldr     r0, [pc, #0x1c] @ 0x222039c, (=0x208c)
	mov     r1, #0x2
	strb    r1, [r4, r0]
	mov     r1, #0x7
	sub     r0, #0x13
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x222038e

.thumb
branch_222038e: @ 222038e :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x2220392


.align 2


.word 0x5dd @ 0x2220394
.word 0x2079 @ 0x2220398
.word 0x208c @ 0x222039c
.thumb
Function_22203a0: @ 22203a0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_222139c
	mov     r5, r0
	cmp     r5, #0x4
	bhi     branch_222040a
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22203ba

Jumppoints_22203ba:
.hword branch_22203c4 - Jumppoints_22203ba - 2
.hword branch_22203c4 - Jumppoints_22203ba - 2
.hword branch_22203c4 - Jumppoints_22203ba - 2
.hword branch_22203c4 - Jumppoints_22203ba - 2
.hword branch_22203f2 - Jumppoints_22203ba - 2
.thumb
branch_22203c4: @ 22203c4 :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, r5
	beq     branch_22203e2
	ldrb    r1, [r1, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r1, r4, r0
	lsl     r0, r5, #3
	add     r0, r1, r0
	ldrh    r0, [r0, #0x34]
	cmp     r0, #0x0
	beq     branch_222040a
.thumb
branch_22203e2: @ 22203e2 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2220410, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	add     r0, #0x34
	strb    r5, [r0, #0x0]
	mov     r0, #0xa
	pop     {r3-r5,pc}
@ 0x22203f2

.thumb
branch_22203f2: @ 22203f2 :thumb
	ldr     r0, [pc, #0x1c] @ 0x2220410, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2225fcc
	ldr     r0, [pc, #0x10] @ 0x2220414, (=0x2079)
	mov     r1, #0x9
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x222040a

.thumb
branch_222040a: @ 222040a :thumb
	mov     r0, #0x5
	pop     {r3-r5,pc}
@ 0x222040e


.align 2


.word 0x5dd @ 0x2220410
.word 0x2079 @ 0x2220414
.thumb
Function_2220418: @ 2220418 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0xd8] @ 0x22204f4, (=0x2228e0c)
	mov     r4, r0
	bl      Function_22213e4
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2220442
	ldr     r0, [pc, #0xc8] @ 0x22204f8, (=0x2088)
	ldr     r0, [r4, r0]
	bl      Function_2228b64
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2220448
	mov     r5, #0x6
	b       branch_2220448
@ 0x2220442

.thumb
branch_2220442: @ 2220442 :thumb
	mov     r0, r4
	bl      Function_22256e8
.thumb
branch_2220448: @ 2220448 :thumb
	cmp     r5, #0x6
	bhi     branch_22204f0
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2220458

Jumppoints_2220458:
.hword branch_2220466 - Jumppoints_2220458 - 2
.hword branch_2220466 - Jumppoints_2220458 - 2
.hword branch_2220466 - Jumppoints_2220458 - 2
.hword branch_2220466 - Jumppoints_2220458 - 2
.hword branch_2220466 - Jumppoints_2220458 - 2
.hword branch_2220490 - Jumppoints_2220458 - 2
.hword branch_22204d0 - Jumppoints_2220458 - 2
.thumb
branch_2220466: @ 2220466 :thumb
	lsl     r0, r5, #24
	lsr     r1, r0, #24
	ldr     r0, [r4, #0x0]
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x88] @ 0x22204fc, (=0x208d)
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0x88] @ 0x2220500, (=0x5dd)
	bl      Function_2005748
	add     r5, #0x17
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2225fcc
	ldr     r0, [pc, #0x7c] @ 0x2220504, (=0x2079)
	mov     r1, #0xc
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x2220490

.thumb
branch_2220490: @ 2220490 :thumb
	ldr     r0, [pc, #0x74] @ 0x2220508, (=0x2077)
	ldrb    r3, [r4, r0]
	lsl     r1, r3, #24
	lsr     r1, r1, #28
	beq     branch_22204f0
	mov     r2, #0xf
	mov     r1, r3
	bic     r1, r2
	lsl     r2, r3, #28
	lsr     r3, r2, #28
	mov     r2, #0x1
	eor     r2, r3
	lsl     r2, r2, #24
	lsr     r3, r2, #24
	mov     r2, #0xf
	and     r2, r3
	orr     r1, r2
	strb    r1, [r4, r0]
	add     r0, #0x16
	strb    r5, [r4, r0]
	ldr     r0, [pc, #0x44] @ 0x2220500, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x12
	bl      Function_2225fcc
	ldr     r0, [pc, #0x3c] @ 0x2220504, (=0x2079)
	mov     r1, #0xb
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x22204d0

.thumb
branch_22204d0: @ 22204d0 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2220500, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2225fcc
	ldr     r0, [pc, #0x1c] @ 0x2220504, (=0x2079)
	mov     r1, #0x19
	strb    r1, [r4, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x22204f0

.thumb
branch_22204f0: @ 22204f0 :thumb
	mov     r0, #0x13
	pop     {r3-r5,pc}
@ 0x22204f4

.word 0x2228e0c @ 0x22204f4
.word 0x2088 @ 0x22204f8
.word 0x208d @ 0x22204fc
.word 0x5dd @ 0x2220500
.word 0x2079 @ 0x2220504
.word 0x2077 @ 0x2220508
.thumb
Function_222050c: @ 222050c :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x100] @ 0x2220610, (=0x2228d14)
	mov     r5, r0
	bl      Function_22213e4
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2220536
	ldr     r0, [pc, #0xf0] @ 0x2220614, (=0x2088)
	ldr     r0, [r5, r0]
	bl      Function_2228b64
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_222053c
	mov     r4, #0x2
	b       branch_222053c
@ 0x2220536

.thumb
branch_2220536: @ 2220536 :thumb
	mov     r0, r5
	bl      Function_22256e8
.thumb
branch_222053c: @ 222053c :thumb
	cmp     r4, #0x0
	beq     branch_222054a
	cmp     r4, #0x1
	beq     branch_22205a6
	cmp     r4, #0x2
	beq     branch_22205ec
	b       branch_222060a
@ 0x222054a

.thumb
branch_222054a: @ 222054a :thumb
	ldr     r0, [pc, #0xcc] @ 0x2220618, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0xc8] @ 0x222061c, (=0x2077)
	ldrb    r0, [r5, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	bne     branch_2220564
	mov     r0, r5
	mov     r1, #0x1c
	bl      Function_2225fcc
	b       branch_222056c
@ 0x2220564

.thumb
branch_2220564: @ 2220564 :thumb
	mov     r0, r5
	mov     r1, #0x1d
	bl      Function_2225fcc
.thumb
branch_222056c: @ 222056c :thumb
	mov     r0, r5
	bl      Function_22219dc
	cmp     r0, #0x1
	bne     branch_222059c
	mov     r0, r5
	bl      Function_2223118
	ldr     r0, [pc, #0x9c] @ 0x222061c, (=0x2077)
	ldrb    r0, [r5, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	bne     branch_222058e
	mov     r0, r5
	bl      Function_2221a04
	b       branch_2220594
@ 0x222058e

.thumb
branch_222058e: @ 222058e :thumb
	mov     r0, r5
	bl      Function_2221a3c
.thumb
branch_2220594: @ 2220594 :thumb
	ldr     r0, [pc, #0x88] @ 0x2220620, (=0x2079)
	mov     r1, #0x14
	strb    r1, [r5, r0]
	b       branch_22205a2
@ 0x222059c

.thumb
branch_222059c: @ 222059c :thumb
	ldr     r0, [pc, #0x80] @ 0x2220620, (=0x2079)
	mov     r1, #0x19
	strb    r1, [r5, r0]
.thumb
branch_22205a2: @ 22205a2 :thumb
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x22205a6

.thumb
branch_22205a6: @ 22205a6 :thumb
	ldr     r0, [pc, #0x74] @ 0x222061c, (=0x2077)
	ldrb    r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	beq     branch_222060a
	ldr     r0, [pc, #0x64] @ 0x2220618, (=0x5dd)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x12
	bl      Function_2225fcc
	ldr     r2, [pc, #0x5c] @ 0x222061c, (=0x2077)
	mov     r1, #0xf
	ldrb    r3, [r5, r2]
	mov     r0, r3
	bic     r0, r1
	lsl     r1, r3, #28
	lsr     r3, r1, #28
	mov     r1, #0x1
	eor     r1, r3
	lsl     r1, r1, #24
	lsr     r3, r1, #24
	mov     r1, #0xf
	and     r1, r3
	orr     r0, r1
	strb    r0, [r5, r2]
	mov     r0, r2
	add     r0, #0x17
	strb    r4, [r5, r0]
	mov     r1, #0xc
	add     r0, r2, #0x2
	strb    r1, [r5, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x22205ec

.thumb
branch_22205ec: @ 22205ec :thumb
	ldr     r0, [pc, #0x28] @ 0x2220618, (=0x5dd)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2225fcc
	ldr     r0, [pc, #0x28] @ 0x2220624, (=0x208e)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r1, #0xb
	sub     r0, #0x15
	strb    r1, [r5, r0]
	mov     r0, #0x16
	pop     {r3-r5,pc}
@ 0x222060a

.thumb
branch_222060a: @ 222060a :thumb
	mov     r0, #0x14
	pop     {r3-r5,pc}
@ 0x222060e


.align 2


.word 0x2228d14 @ 0x2220610
.word 0x2088 @ 0x2220614
.word 0x5dd @ 0x2220618
.word 0x2077 @ 0x222061c
.word 0x2079 @ 0x2220620
.word 0x208e @ 0x2220624
.thumb
Function_2220628: @ 2220628 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0xe4] @ 0x2220714, (=0x2228d64)
	mov     r4, r0
	ldr     r6, [r4, #0x0]
	bl      Function_22213e4
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2220656
	ldr     r0, [pc, #0xd4] @ 0x2220718, (=0x2088)
	ldr     r0, [r4, r0]
	bl      Function_2228b64
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_222065c
	mov     r5, #0x4
	b       branch_222065c
@ 0x2220656

.thumb
branch_2220656: @ 2220656 :thumb
	mov     r0, r4
	bl      Function_22256e8
.thumb
branch_222065c: @ 222065c :thumb
	cmp     r5, #0x4
	bhi     branch_222070e
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222066c

Jumppoints_222066c:
.hword branch_2220676 - Jumppoints_222066c - 2
.hword branch_2220676 - Jumppoints_222066c - 2
.hword branch_2220676 - Jumppoints_222066c - 2
.hword branch_2220676 - Jumppoints_222066c - 2
.hword branch_22206f4 - Jumppoints_222066c - 2
.thumb
branch_2220676: @ 2220676 :thumb
	ldrb    r1, [r6, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r1, r4, r0
	lsl     r0, r5, #3
	add     r0, r1, r0
	ldrh    r0, [r0, #0x34]
	cmp     r0, #0x0
	beq     branch_222070e
	ldr     r0, [r4, #0x0]
	add     r0, #0x34
	strb    r5, [r0, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x222071c, (=0x5dd)
	bl      Function_2005748
	mov     r1, r5
	add     r1, #0x13
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2225fcc
	ldrh    r0, [r6, #0x22]
	mov     r3, r5
	str     r0, [sp, #0x0]
	ldrb    r2, [r6, #0x11]
	ldr     r0, [r6, #0x8]
	ldr     r1, [r6, #0x28]
	add     r2, r6, r2
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	bl      0x223e30c
	cmp     r0, #0x1
	bne     branch_22206ce
	ldr     r0, [pc, #0x60] @ 0x2220720, (=0x207c)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r1, #0x17
	.hword  0x1ec0 @ sub r0, r0, #0x3
	strb    r1, [r4, r0]
	add     sp, #0x4
	mov     r0, #0x16
	pop     {r3-r6,pc}
@ 0x22206ce

.thumb
branch_22206ce: @ 22206ce :thumb
	ldr     r2, [pc, #0x54] @ 0x2220724, (=0x1fa8)
	mov     r1, #0x51
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r4
	bl      Function_22240e0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	strb    r1, [r0, #0x11]
	ldr     r0, [pc, #0x3c] @ 0x2220728, (=0x2079)
	mov     r1, #0x19
	strb    r1, [r4, r0]
	add     sp, #0x4
	mov     r0, #0x11
	pop     {r3-r6,pc}
@ 0x22206f4

.thumb
branch_22206f4: @ 22206f4 :thumb
	ldr     r0, [pc, #0x24] @ 0x222071c, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2225fcc
	ldr     r0, [pc, #0x24] @ 0x2220728, (=0x2079)
	mov     r1, #0x6
	strb    r1, [r4, r0]
	add     sp, #0x4
	mov     r0, #0x16
	pop     {r3-r6,pc}
@ 0x222070e

.thumb
branch_222070e: @ 222070e :thumb
	mov     r0, #0x15
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2220714

.word 0x2228d64 @ 0x2220714
.word 0x2088 @ 0x2220718
.word 0x5dd @ 0x222071c
.word 0x207c @ 0x2220720
.word 0x1fa8 @ 0x2220724
.word 0x2079 @ 0x2220728
.thumb
Function_222072c: @ 222072c :thumb
	push    {r3,lr}
	mov     r1, #0x0
	bl      Function_22216c0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2220738

.thumb
Function_2220738: @ 2220738 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      Function_22216c0
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2220744

.thumb
Function_2220744: @ 2220744 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	bl      Function_22216c0
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x2220750

.thumb
Function_2220750: @ 2220750 :thumb
	push    {r3,lr}
	mov     r1, #0x3
	bl      Function_22216c0
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x222075c

.thumb
Function_222075c: @ 222075c :thumb
	push    {r3,lr}
	mov     r1, #0x4
	bl      Function_22216c0
	mov     r0, #0x5
	pop     {r3,pc}
@ 0x2220768

.thumb
Function_2220768: @ 2220768 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x1c] @ 0x2220788, (=0x2077)
	ldrb    r1, [r0, r1]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	bne     branch_222077c
	mov     r1, #0x6
	bl      Function_22216c0
	b       branch_2220782
@ 0x222077c

.thumb
branch_222077c: @ 222077c :thumb
	mov     r1, #0x8
	bl      Function_22216c0
.thumb
branch_2220782: @ 2220782 :thumb
	mov     r0, #0x13
	pop     {r3,pc}
@ 0x2220786


.align 2


.word 0x2077 @ 0x2220788
.thumb
Function_222078c: @ 222078c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22252e8
	ldr     r0, [pc, #0x1c] @ 0x22207b4, (=0x2077)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	bne     branch_22207a8
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_22216c0
	b       branch_22207b0
@ 0x22207a8

.thumb
branch_22207a8: @ 22207a8 :thumb
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_22216c0
.thumb
branch_22207b0: @ 22207b0 :thumb
	mov     r0, #0x14
	pop     {r4,pc}
@ 0x22207b4

.word 0x2077 @ 0x22207b4
.thumb
Function_22207b8: @ 22207b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_22216c0
	ldr     r2, [r4, #0x0]
	mov     r1, #0x25
	ldrh    r0, [r2, #0x22]
	ldr     r2, [r2, #0xc]
	bl      GetItemData
	cmp     r0, #0x0
	beq     branch_22207d6
	mov     r0, #0x18
	pop     {r4,pc}
@ 0x22207d6

.thumb
branch_22207d6: @ 22207d6 :thumb
	mov     r0, #0x15
	pop     {r4,pc}
@ 0x22207da


.align 2, 0


.thumb
Function_22207dc: @ 22207dc :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x38] @ 0x2220818, (=0x207a)
	mov     r4, r0
	ldrb    r1, [r4, r1]
	bl      Function_2224b7c
	ldr     r1, [pc, #0x2c] @ 0x2220818, (=0x207a)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_2221bf8
	ldr     r1, [pc, #0x24] @ 0x2220818, (=0x207a)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_22260ec
	ldr     r1, [pc, #0x18] @ 0x2220818, (=0x207a)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_22214e0
	ldr     r0, [pc, #0x10] @ 0x2220818, (=0x207a)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x2
	bne     branch_2220812
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2220812

.thumb
branch_2220812: @ 2220812 :thumb
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x2220816


.align 2


.word 0x207a @ 0x2220818
.thumb
Function_222081c: @ 222081c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22240e0
	ldr     r0, [pc, #0x8] @ 0x2220830, (=0x2079)
	mov     r1, #0x10
	strb    r1, [r4, r0]
	mov     r0, #0x11
	pop     {r4,pc}
@ 0x222082e


.align 2


.word 0x2079 @ 0x2220830
.thumb
Function_2220834: @ 2220834 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0xc] @ 0x2220844, (=0x2060)
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2220844

.word 0x2060 @ 0x2220844
.thumb
Function_2220848: @ 2220848 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x14] @ 0x2220860, (=0x207b)
	ldrb    r0, [r0, r1]
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_222085a
	mov     r0, #0x12
	pop     {r3,pc}
@ 0x222085a

.thumb
branch_222085a: @ 222085a :thumb
	mov     r0, #0x11
	pop     {r3,pc}
@ 0x222085e

.align 2
.word 0x207b @ 0x2220860



.thumb
Function_2220864: @ 2220864 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2220884, (=RAM_21bf67c)
	ldr     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r0, #KEY_A|KEY_B
	tst     r0, r1
	bne     branch_222087a

	bl      Function_2022798
	cmp     r0, #0x1
	bne     branch_2220880

branch_222087a: @ 222087a :thumb
	ldr     r0, [pc, #0xc] @ 0x2220888, (=0x2079)
	ldrb    r0, [r4, r0]
	pop     {r4,pc}

branch_2220880: @ 2220880 :thumb
	mov     r0, #0x12
	pop     {r4,pc}
@ 0x2220884

.word RAM_21bf67c @ 0x2220884
.word 0x2079 @ 0x2220888



.thumb
Function_222088c: @ 222088c :thumb
	ldr     r1, [pc, #0x10] @ 0x22208a0, (=0x1fa3)
	ldrb    r2, [r0, r1]
	lsl     r2, r2, #24
	lsr     r2, r2, #31
	bne     branch_222089c
	add     r1, #0xd6
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x222089c

.thumb
branch_222089c: @ 222089c :thumb
	mov     r0, #0x16
	bx      lr
@ 0x22208a0

.word 0x1fa3 @ 0x22208a0
.thumb
Function_22208a4: @ 22208a4 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x194] @ 0x2220a3c, (=0x207c)
	mov     r4, r0
	ldrb    r1, [r4, r7]
	ldr     r5, [r4, #0x0]
	cmp     r1, #0x4
	bls     branch_22208b4
	b       branch_2220a38
@ 0x22208b4

.thumb
branch_22208b4: @ 22208b4 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22208c0

Jumppoints_22208c0:
.hword branch_22208ca - Jumppoints_22208c0 - 2
.hword branch_222098e - Jumppoints_22208c0 - 2
.hword branch_22209b6 - Jumppoints_22208c0 - 2
.hword branch_22209ee - Jumppoints_22208c0 - 2
.hword branch_2220a0e - Jumppoints_22208c0 - 2
.thumb
branch_22208ca: @ 22208ca :thumb
	ldrb    r2, [r5, #0x11]
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x28]
	add     r2, r5, r2
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	bl      0x223dfac
	ldrb    r2, [r5, #0x11]
	mov     r1, #0x50
	mul     r1, r2
	add     r1, r4, r1
	str     r0, [r1, #0x4]
	mov     r0, r4
	bl      Function_2224144
	.hword  0x1eb8 @ sub r0, r7, #0x2
	ldrb    r0, [r4, r0]
	ldrb    r1, [r5, #0x11]
	cmp     r0, #0x5
	bne     branch_2220914
	mov     r0, #0x50
	mul     r0, r1
	add     r5, #0x34
	ldrb    r1, [r5, #0x0]
	add     r0, r4, r0
	ldr     r0, [r0, #0x4]
	add     r1, #0x3a
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, r7, #0x4
	strh    r0, [r4, r1]
	mov     r2, #0x2
	.hword  0x1f08 @ sub r0, r1, #0x4
	strb    r2, [r4, r0]
	b       branch_2220986
@ 0x2220914

.thumb
branch_2220914: @ 2220914 :thumb
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r4, r0
	ldr     r0, [r0, #0x4]
	bl      Function_208e9f0
	mov     r6, r0
	ldrb    r0, [r5, #0x11]
	mov     r3, r4
	mov     r7, #0x50
	mov     r2, r0
	add     r3, #0x1b
	mul     r2, r7
	ldrb    r1, [r3, r2]
	mov     r0, #0x78
	bic     r1, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #28
	lsr     r0, r0, #25
	orr     r0, r1
	strb    r0, [r3, r2]
	ldrb    r0, [r5, #0x11]
	mov     r1, r0
	mul     r1, r7
	add     r1, r4, r1
	ldrb    r1, [r1, #0x1b]
	lsl     r1, r1, #25
	lsr     r1, r1, #28
	cmp     r1, #0x7
	bne     branch_222096a
	add     r0, #0xd
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0xe4] @ 0x2220a40, (=0x1fb8)
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldrb    r1, [r5, #0x11]
	mov     r0, r4
	bl      Function_22234a8
.thumb
branch_222096a: @ 222096a :thumb
	ldrb    r1, [r5, #0x11]
	mov     r0, #0x50
	mov     r2, #0x0
	mul     r0, r1
	add     r0, r4, r0
	ldr     r0, [r0, #0x4]
	mov     r1, #0xa3
	bl      GetPkmnData
	ldr     r1, [pc, #0xc4] @ 0x2220a44, (=0x207e)
	mov     r2, #0x4
	strh    r0, [r4, r1]
	.hword  0x1e88 @ sub r0, r1, #0x2
	strb    r2, [r4, r0]
.thumb
branch_2220986: @ 2220986 :thumb
	ldr     r0, [pc, #0xc0] @ 0x2220a48, (=0x5ec)
	bl      Function_2005748
	b       branch_2220a38
@ 0x222098e

.thumb
branch_222098e: @ 222098e :thumb
	ldrb    r1, [r5, #0x11]
	mov     r6, r4
	mov     r2, #0x50
	mov     r3, r1
	add     r6, #0x14
	mul     r3, r2
	add     r1, r7, #0x2
	ldrh    r2, [r4, r1]
	ldrh    r1, [r6, r3]
	cmp     r2, r1
	beq     branch_22209b0
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r6, r3]
	ldrb    r1, [r5, #0x11]
	bl      Function_2223448
	b       branch_2220a38
@ 0x22209b0

.thumb
branch_22209b0: @ 22209b0 :thumb
	mov     r0, #0x3
	strb    r0, [r4, r7]
	b       branch_2220a38
@ 0x22209b6

.thumb
branch_22209b6: @ 22209b6 :thumb
	ldrb    r3, [r5, #0x11]
	mov     r1, r4
	mov     r2, #0x50
	add     r1, #0x36
	mul     r2, r3
	add     r6, r1, r2
	mov     r1, r5
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	lsl     r3, r1, #3
	add     r1, r7, #0x4
	ldrh    r2, [r4, r1]
	ldrb    r1, [r6, r3]
	cmp     r2, r1
	beq     branch_22209e8
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r6, r3]
	add     r5, #0x34
	ldrb    r2, [r5, #0x0]
	add     r1, r2, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2223f5c
	b       branch_2220a38
@ 0x22209e8

.thumb
branch_22209e8: @ 22209e8 :thumb
	mov     r0, #0x3
	strb    r0, [r4, r7]
	b       branch_2220a38
@ 0x22209ee

.thumb
branch_22209ee: @ 22209ee :thumb
	mov     r2, r5
	add     r2, #0x33
	ldrh    r1, [r5, #0x22]
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r3, [r5, #0xc]
	bl      Function_2221a54
	mov     r0, r4
	bl      Function_22240e0
	mov     r1, #0x19
	.hword  0x1ef8 @ sub r0, r7, #0x3
	strb    r1, [r4, r0]
	mov     r0, #0x11
	pop     {r3-r7,pc}
@ 0x2220a0e

.thumb
branch_2220a0e: @ 2220a0e :thumb
	ldrb    r1, [r5, #0x11]
	mov     r3, r4
	mov     r2, #0x50
	mul     r2, r1
	add     r1, r7, #0x2
	add     r3, #0x14
	ldrh    r6, [r4, r1]
	ldrh    r1, [r3, r2]
	cmp     r6, r1
	beq     branch_2220a32
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r3, r2]
	ldrb    r1, [r5, #0x11]
	bl      Function_2223448
	mov     r0, r4
	bl      Function_22264c4
.thumb
branch_2220a32: @ 2220a32 :thumb
	ldr     r0, [pc, #0x8] @ 0x2220a3c, (=0x207c)
	mov     r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_2220a38: @ 2220a38 :thumb
	mov     r0, #0x17
	pop     {r3-r7,pc}
@ 0x2220a3c

.word 0x207c @ 0x2220a3c
.word 0x1fb8 @ 0x2220a40
.word 0x207e @ 0x2220a44
.word 0x5ec @ 0x2220a48
.thumb
Function_2220a4c: @ 2220a4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x114] @ 0x2220b6c, (=0x207c)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2220a68
	cmp     r0, #0x1
	beq     branch_2220ad2
	cmp     r0, #0x2
	beq     branch_2220b3c
	b       branch_2220b64
@ 0x2220a68

.thumb
branch_2220a68: @ 2220a68 :thumb
	ldr     r2, [sp, #0x4]
	ldr     r0, [sp, #0x4]
	ldrb    r3, [r2, #0x11]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	add     r2, r2, r3
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	ldr     r1, [r1, #0x28]
	bl      0x223dfac
	ldr     r1, [sp, #0x4]
	mov     r7, #0x0
	ldrb    r2, [r1, #0x11]
	mov     r1, #0x50
	mov     r6, r7
	mul     r1, r2
	add     r1, r5, r1
	str     r0, [r1, #0x4]
	mov     r4, r5
.thumb
branch_2220a90: @ 2220a90 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r1, r5, r0
	add     r0, r1, r6
	ldrh    r0, [r0, #0x34]
	cmp     r0, #0x0
	beq     branch_2220ab4
	ldr     r0, [r1, #0x4]
	mov     r1, r7
	add     r1, #0x3a
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x82
	lsl     r1, r1, #6
	strh    r0, [r4, r1]
.thumb
branch_2220ab4: @ 2220ab4 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x8
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r7, #0x4
	bcc     branch_2220a90
	mov     r0, r5
	bl      Function_2224144
	ldr     r0, [pc, #0xa8] @ 0x2220b70, (=0x5ec)
	bl      Function_2005748
	ldr     r0, [pc, #0xa0] @ 0x2220b6c, (=0x207c)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	b       branch_2220b64
@ 0x2220ad2

.thumb
branch_2220ad2: @ 2220ad2 :thumb
	mov     r6, #0x0
	mov     r4, r6
	str     r6, [sp, #0x0]
	mov     r7, r5
.thumb
branch_2220ada: @ 2220ada :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [sp, #0x0]
	add     r1, r1, r0
	ldrh    r0, [r1, #0x34]
	cmp     r0, #0x0
	bne     branch_2220af2
	.hword  0x1c76 @ add r6, r6, #0x1
	b       branch_2220b22
@ 0x2220af2

.thumb
branch_2220af2: @ 2220af2 :thumb
	mov     r0, #0x82
	mov     r2, r1
	lsl     r0, r0, #6
	add     r2, #0x36
	ldrh    r0, [r7, r0]
	ldrb    r2, [r2, #0x0]
	cmp     r0, r2
	beq     branch_2220b20
	mov     r0, r1
	add     r0, #0x36
	ldrb    r0, [r0, #0x0]
	lsl     r2, r4, #16
	add     r1, #0x36
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, #0x0]
	add     r1, r4, #0x1
	lsl     r1, r1, #16
	mov     r0, r5
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_2223f5c
	b       branch_2220b22
@ 0x2220b20

.thumb
branch_2220b20: @ 2220b20 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2220b22: @ 2220b22 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x8
	.hword  0x1cbf @ add r7, r7, #0x2
	str     r0, [sp, #0x0]
	cmp     r4, #0x4
	bcc     branch_2220ada
	cmp     r6, #0x4
	bne     branch_2220b64
	ldr     r0, [pc, #0x34] @ 0x2220b6c, (=0x207c)
	mov     r1, #0x2
	strb    r1, [r5, r0]
	b       branch_2220b64
@ 0x2220b3c

.thumb
branch_2220b3c: @ 2220b3c :thumb
	ldr     r2, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x4]
	add     r2, #0x33
	ldr     r3, [sp, #0x4]
	ldrh    r1, [r1, #0x22]
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r0, #0x8]
	ldr     r3, [r3, #0xc]
	bl      Function_2221a54
	mov     r0, r5
	bl      Function_22240e0
	ldr     r0, [pc, #0x18] @ 0x2220b74, (=0x2079)
	mov     r1, #0x19
	strb    r1, [r5, r0]
	add     sp, #0x8
	mov     r0, #0x11
	pop     {r3-r7,pc}
@ 0x2220b64

.thumb
branch_2220b64: @ 2220b64 :thumb
	mov     r0, #0x18
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2220b6a


.align 2


.word 0x207c @ 0x2220b6c
.word 0x5ec @ 0x2220b70
.word 0x2079 @ 0x2220b74
.thumb
Function_2220b78: @ 2220b78 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x10
	str     r1, [sp, #0x4]
	mov     r1, #0x7a
	str     r2, [sp, #0x8]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0xa
	mov     r3, r1
	ldr     r2, [pc, #0xc] @ 0x2220ba0, (=0xffff)
	sub     r3, #0x12
	bl      Function_2003178
	mov     r0, #0x1a
	add     sp, #0xc
	pop     {pc}
@ 0x2220b9e


.align 2


.word 0xffff @ 0x2220ba0
.thumb
Function_2220ba4: @ 2220ba4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x7a
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_2220bbc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2220bbc

.thumb
branch_2220bbc: @ 2220bbc :thumb
	mov     r0, r4
	bl      Function_2220f60
	mov     r0, r4
	bl      Function_2224970
	mov     r0, r4
	bl      Function_2221bc8
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2220d1c
	ldr     r0, [pc, #0x2c] @ 0x2220c08, (=0x2088)
	ldr     r0, [r4, r0]
	bl      Function_2228a5c
	ldr     r1, [r4, #0x0]
	add     r1, #0x32
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2220c08, (=0x2088)
	ldr     r0, [r4, r0]
	bl      Function_2228a50
	mov     r0, #0x2
	bl      Function_2002c60
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	add     r0, #0x36
	strb    r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_20067d0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2220c06


.align 2


.word 0x2088 @ 0x2220c08
.thumb
Function_2220c0c: @ 2220c0c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	ldr     r5, [pc, #0xf4] @ 0x2220d08, (=0x2228d04)
	add     r3, sp, #0x70
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	mov     r1, #0x1
	bl      Function_20183a0
	ldr     r5, [pc, #0xe0] @ 0x2220d0c, (=0x2228d7c)
	add     r3, sp, #0x54
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
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r5, [pc, #0xc0] @ 0x2220d10, (=0x2228db4)
	add     r3, sp, #0x38
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
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r5, [pc, #0xa0] @ 0x2220d14, (=0x2228dd0)
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
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_2019ebc
	ldr     r5, [pc, #0x74] @ 0x2220d18, (=0x2228d98)
	add     r3, sp, #0x0
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
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r3, [r4, #0x0]
	mov     r0, #0x5
	ldr     r3, [r3, #0xc]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
	ldr     r3, [r4, #0x0]
	mov     r0, #0x4
	ldr     r3, [r3, #0xc]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_201c3c0
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_201c3c0
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x2220d08

.word 0x2228d04 @ 0x2220d08
.word 0x2228d7c @ 0x2220d0c
.word 0x2228db4 @ 0x2220d10
.word 0x2228dd0 @ 0x2220d14
.word 0x2228d98 @ 0x2220d18
.thumb
Function_2220d1c: @ 2220d1c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2019044
	pop     {r4,pc}
@ 0x2220d4a


.align 2, 0


.thumb
Function_2220d4c: @ 2220d4c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #PlBPlistGra_Narc
	ldr     r1, [r1, #0xc]
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	mov     r2, #0x79
	ldr     r1, [r1, #0xc]
	lsl     r2, r2, #2
	str     r1, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r1, #0x16
	mov     r3, #0x7
	mov     r4, r0
	bl      Function_20070e8
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0xc]
	mov     r1, #0x14
	bl      Function_2006cb8_LoadFileInMemory
	add     r1, sp, #0x10
	mov     r6, r0
	blx     Function_20a7248
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	add     r1, #0xc
	bl      Function_2225710
	mov     r0, r6
	bl      free
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0xc]
	mov     r1, #0x15
	bl      Function_2006cb8_LoadFileInMemory
	add     r1, sp, #0x10
	mov     r6, r0
	blx     Function_20a7248
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	add     r1, #0xc
	bl      Function_2225a3c
	mov     r0, r6
	bl      free
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r0, r0, #9
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x7a
	ldr     r3, [r5, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [r3, #0xc]
	mov     r1, #0x48
	mov     r2, #0x17
	bl      Function_2003050
	mov     r0, r4
	bl      Call_FS_CloseFile
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2003164
	mov     r2, r0
	ldr     r0, [pc, #0x10c] @ 0x2220f04, (=0x1f60)
	mov     r1, #0x6
	lsl     r1, r1, #6
	add     r1, r2, r1
	add     r0, r5, r0
	mov     r2, #0x40
	blx     CopyDataInByteSteps
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	mov     r0, #0x7a
	ldr     r3, [r5, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [r3, #0xc]
	mov     r1, #0xe
	mov     r2, #0x6
	bl      Function_2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xf0
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #0x0]
	add     r0, #0xf8
	ldr     r0, [r5, r0]
	ldr     r3, [r3, #0xc]
	mov     r1, #0xe
	mov     r2, #0x7
	bl      Function_2003050
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x223ede0
	mov     r4, r0
	bl      Function_200dd04
	mov     r1, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x79
	ldr     r0, [r0, #0xc]
	lsl     r2, r2, #2
	str     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r0, #0x26
	mov     r3, #0x4
	bl      LoadFromNARC_RGCN
	mov     r0, r4
	bl      Function_200dd08
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x7a
	ldr     r3, [r5, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [r3, #0xc]
	mov     r1, #0x26
	bl      Function_2003050
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2003164
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x20
	ldr     r0, [r0, #0xc]
	bl      malloc
	mov     r1, #0x1a
	lsl     r1, r1, #4
	add     r1, r6, r1
	mov     r2, #0x20
	mov     r4, r0
	blx     CopyDataInByteSteps
	mov     r0, #0x4d
	lsl     r0, r0, #2
	add     r1, r6, r0
	ldrb    r3, [r1, #0x0]
	mov     r2, r4
	add     r2, #0xe
	strb    r3, [r4, #0xe]
	ldrb    r3, [r1, #0x1]
	strb    r3, [r2, #0x1]
	ldrb    r3, [r1, #0x2]
	strb    r3, [r2, #0x2]
	ldrb    r1, [r1, #0x3]
	mov     r3, #0xd0
	strb    r1, [r2, #0x3]
	add     r2, r0, #0x4
	add     r1, r0, #0x4
	ldrb    r2, [r6, r2]
	add     r1, r6, r1
	add     r0, #0xb4
	strb    r2, [r4, #0x6]
	ldrb    r2, [r1, #0x1]
	strb    r2, [r4, #0x7]
	ldrb    r2, [r1, #0x2]
	strb    r2, [r4, #0x8]
	ldrb    r1, [r1, #0x3]
	mov     r2, #0x1
	strb    r1, [r4, #0x9]
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2002fbc
	mov     r0, r4
	bl      free
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2220f02


.align 2


.word 0x1f60 @ 0x2220f04



.thumb
Function_2220f08: @ 2220f08 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r3, [r4, #0x0]
	mov     r0, #0x0
	ldr     r3, [r3, #0xc]
	mov     r1, #PlMsg_Narc
	mov     r2, #PlMsg_Narc_3
	bl      LoadFromNARC_9
	ldr     r1, [pc, #0x34] @ 0x2220f50, (=0x1fa8)
	mov     r2, #0x0
	str     r0, [r4, r1]
	ldr     r3, [r4, #0x0]
	mov     r0, #0xf
	ldr     r3, [r3, #0xc]
	mov     r1, #0xe
	bl      Function_200c440
	ldr     r1, [pc, #0x24] @ 0x2220f54, (=0x1fa4)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_200b358
	ldr     r1, [pc, #0x1c] @ 0x2220f58, (=0x1fac)
	str     r0, [r4, r1]
	ldr     r1, [r4, #0x0]
	mov     r0, #0x2
	ldr     r1, [r1, #0xc]
	lsl     r0, r0, #8
	bl      Function_2023790
	ldr     r1, [pc, #0x10] @ 0x2220f5c, (=0x1fb0)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2220f4e


.align 2


.word 0x1fa8 @ 0x2220f50
.word 0x1fa4 @ 0x2220f54
.word 0x1fac @ 0x2220f58
.word 0x1fb0 @ 0x2220f5c
.thumb
Function_2220f60: @ 2220f60 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x2220f88, (=0x1fa8)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	ldr     r0, [pc, #0x1c] @ 0x2220f8c, (=0x1fa4)
	ldr     r0, [r4, r0]
	bl      Function_200c560
	ldr     r0, [pc, #0x18] @ 0x2220f90, (=0x1fac)
	ldr     r0, [r4, r0]
	bl      Function_200b3f0
	ldr     r0, [pc, #0x14] @ 0x2220f94, (=0x1fb0)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x2220f86


.align 2


.word 0x1fa8 @ 0x2220f88
.word 0x1fa4 @ 0x2220f8c
.word 0x1fac @ 0x2220f90
.word 0x1fb0 @ 0x2220f94
.thumb
Function_2220f98: @ 2220f98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	bgt     branch_2220fb2
	b       branch_2221246
@ 0x2220fb2

.thumb
branch_2220fb2: @ 2220fb2 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x50
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r4, r0, r1
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	bl      GetAdrOfPkmnInParty
	str     r0, [r4, #0x4]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x8]
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_2220fdc
	b       branch_222122a
@ 0x2220fdc

.thumb
branch_2220fdc: @ 2220fdc :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x50
	mov     r5, r0
	mul     r5, r1
	ldr     r0, [sp, #0x0]
	mov     r1, #0xa5
	add     r4, r0, r5
	ldr     r0, [r4, #0x4]
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0xa]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa7
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0xe]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa8
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa9
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x12]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x14]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x16]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r4, #0x18]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r6, [sp, #0x0]
	strb    r0, [r4, #0x19]
	ldr     r0, [r4, #0x4]
	add     r6, #0x1a
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	ldrb    r1, [r6, r5]
	mov     r2, #0x7f
	lsl     r0, r0, #24
	bic     r1, r2
	lsr     r2, r0, #24
	mov     r0, #0x7f
	and     r0, r2
	orr     r0, r1
	strb    r0, [r6, r5]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xb0
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x1
	ldrb    r1, [r6, r5]
	bne     branch_222108c
	mov     r0, #0x80
	bic     r1, r0
	strb    r1, [r6, r5]
	b       branch_2221092
@ 0x222108c

.thumb
branch_222108c: @ 222108c :thumb
	mov     r0, #0x80
	orr     r0, r1
	strb    r0, [r6, r5]
.thumb
branch_2221092: @ 2221092 :thumb
	ldr     r0, [sp, #0x0]
	add     r4, r0, r5
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	add     r6, #0x1b
	bl      Call_DecidePkmnGender
	ldrb    r1, [r6, r5]
	mov     r2, #0x7
	bic     r1, r2
	mov     r2, #0x7
	and     r0, r2
	orr     r0, r1
	strb    r0, [r6, r5]
	ldr     r0, [r4, #0x4]
	bl      Function_208e9f0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #28
	ldrb    r1, [r6, r5]
	mov     r2, #0x78
	lsr     r0, r0, #25
	bic     r1, r2
	orr     r0, r1
	strb    r0, [r6, r5]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #31
	ldrb    r1, [r6, r5]
	mov     r2, #0x80
	lsr     r0, r0, #24
	bic     r1, r2
	orr     r0, r1
	strb    r0, [r6, r5]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x1c]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x1e]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x8
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r6, [sp, #0x0]
	str     r0, [r4, #0x20]
	add     r6, #0x1a
	ldrb    r1, [r6, r5]
	ldrh    r0, [r4, #0x8]
	lsl     r1, r1, #25
	lsr     r1, r1, #25
	bl      GetBaseExpPts
	str     r0, [r4, #0x24]
	ldrb    r0, [r6, r5]
	lsl     r0, r0, #25
	lsr     r1, r0, #25
	cmp     r1, #0x64
	bne     branch_222112a
	ldr     r0, [sp, #0x0]
	add     r4, r0, r5
	ldr     r0, [r4, #0x24]
	b       branch_2221136
@ 0x222112a

.thumb
branch_222112a: @ 222112a :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, r0, r5
	ldrh    r0, [r4, #0x8]
	bl      GetBaseExpPts
.thumb
branch_2221136: @ 2221136 :thumb
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x13
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	add     r1, #0x2c
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x14
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	add     r1, #0x2d
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x15
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	add     r1, #0x2e
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x16
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	add     r1, #0x2f
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x17
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	add     r1, #0x30
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa2
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	add     r1, #0x31
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	add     r4, #0x32
	strb    r0, [r4, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r1, #0x34
	add     r7, r1, r0
	ldr     r1, [sp, #0x0]
	mov     r4, #0x0
	add     r6, r1, r0
.thumb
branch_22211b4: @ 22211b4 :thumb
	lsl     r0, r4, #3
	mov     r1, r4
	str     r0, [sp, #0xc]
	add     r5, r7, r0
	ldr     r0, [r6, #0x4]
	add     r1, #0x36
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0xc]
	strh    r0, [r7, r1]
	mov     r0, r1
	ldrh    r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_2221220
	mov     r1, r4
	ldr     r0, [r6, #0x4]
	add     r1, #0x3a
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r5, #0x2]
	mov     r1, r4
	ldr     r0, [r6, #0x4]
	add     r1, #0x3e
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r5, #0x3]
	ldrh    r0, [r5, #0x0]
	ldrb    r1, [r5, #0x3]
	bl      CalcMovePP
	strb    r0, [r5, #0x3]
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x3
	bl      LoadMoveData
	strb    r0, [r5, #0x4]
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x1
	bl      LoadMoveData
	strb    r0, [r5, #0x5]
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x4
	bl      LoadMoveData
	strb    r0, [r5, #0x6]
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x2
	bl      LoadMoveData
	strb    r0, [r5, #0x7]
.thumb
branch_2221220: @ 2221220 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x4
	bcc     branch_22211b4
.thumb
branch_222122a: @ 222122a :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      GetNrOfPkmnInParty
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	bge     branch_2221246
	b       branch_2220fb2
@ 0x2221246

.thumb
branch_2221246: @ 2221246 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222124a


.align 2, 0


.thumb
Function_222124c: @ 222124c :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x6c] @ 0x22212bc, (=0x2228dec)
	mov     r4, r0
	bl      Function_22213e4
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2221298
	ldr     r0, [pc, #0x5c] @ 0x22212c0, (=0x2088)
	ldr     r0, [r4, r0]
	bl      Function_2228b64
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2221276
	mov     r5, #0x6
	b       branch_2221280
@ 0x2221276

.thumb
branch_2221276: @ 2221276 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	bne     branch_2221280
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2221280

.thumb
branch_2221280: @ 2221280 :thumb
	cmp     r5, #0x6
	beq     branch_2221290
	mov     r0, r4
	mov     r1, r5
	bl      Function_22213f0
	cmp     r0, #0x0
	beq     branch_22212b6
.thumb
branch_2221290: @ 2221290 :thumb
	ldr     r0, [r4, #0x0]
	strb    r5, [r0, #0x11]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2221298

.thumb
branch_2221298: @ 2221298 :thumb
	cmp     r5, #0x6
	beq     branch_22212a8
	mov     r0, r4
	mov     r1, r5
	bl      Function_22213f0
	cmp     r0, #0x0
	beq     branch_22212b6
.thumb
branch_22212a8: @ 22212a8 :thumb
	ldr     r0, [r4, #0x0]
	strb    r5, [r0, #0x11]
	mov     r0, r4
	bl      Function_22256e8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22212b6

.thumb
branch_22212b6: @ 22212b6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22212ba


.align 2


.word 0x2228dec @ 0x22212bc
.word 0x2088 @ 0x22212c0
.thumb
Function_22212c4: @ 22212c4 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x3c] @ 0x2221304, (=0x2228d24)
	mov     r5, r0
	bl      Function_22213e4
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_22212f8
	ldr     r0, [pc, #0x2c] @ 0x2221308, (=0x2088)
	ldr     r0, [r5, r0]
	bl      Function_2228b64
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_22212ee
	mov     r4, #0x3
	b       branch_22212fe
@ 0x22212ee

.thumb
branch_22212ee: @ 22212ee :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_22212fe
	mov     r0, #0xff
	pop     {r3-r5,pc}
@ 0x22212f8

.thumb
branch_22212f8: @ 22212f8 :thumb
	mov     r0, r5
	bl      Function_22256e8
.thumb
branch_22212fe: @ 22212fe :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x2221304

.word 0x2228d24 @ 0x2221304
.word 0x2088 @ 0x2221308
.thumb
Function_222130c: @ 222130c :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x3c] @ 0x222134c, (=0x2228d38)
	mov     r5, r0
	bl      Function_22213e4
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2221340
	ldr     r0, [pc, #0x2c] @ 0x2221350, (=0x2088)
	ldr     r0, [r5, r0]
	bl      Function_2228b64
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2221336
	mov     r4, #0x3
	b       branch_2221346
@ 0x2221336

.thumb
branch_2221336: @ 2221336 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_2221346
	mov     r0, #0xff
	pop     {r3-r5,pc}
@ 0x2221340

.thumb
branch_2221340: @ 2221340 :thumb
	mov     r0, r5
	bl      Function_22256e8
.thumb
branch_2221346: @ 2221346 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x222134c

.word 0x2228d38 @ 0x222134c
.word 0x2088 @ 0x2221350
.thumb
Function_2221354: @ 2221354 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x3c] @ 0x2221394, (=0x2228e2c)
	mov     r5, r0
	bl      Function_22213e4
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2221388
	ldr     r0, [pc, #0x2c] @ 0x2221398, (=0x2088)
	ldr     r0, [r5, r0]
	bl      Function_2228b64
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_222137e
	mov     r4, #0x7
	b       branch_222138e
@ 0x222137e

.thumb
branch_222137e: @ 222137e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_222138e
	mov     r0, #0xff
	pop     {r3-r5,pc}
@ 0x2221388

.thumb
branch_2221388: @ 2221388 :thumb
	mov     r0, r5
	bl      Function_22256e8
.thumb
branch_222138e: @ 222138e :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x2221394

.word 0x2228e2c @ 0x2221394
.word 0x2088 @ 0x2221398
.thumb
Function_222139c: @ 222139c :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x3c] @ 0x22213dc, (=0x2228d4c)
	mov     r5, r0
	bl      Function_22213e4
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_22213d0
	ldr     r0, [pc, #0x2c] @ 0x22213e0, (=0x2088)
	ldr     r0, [r5, r0]
	bl      Function_2228b64
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_22213c6
	mov     r4, #0x4
	b       branch_22213d6
@ 0x22213c6

.thumb
branch_22213c6: @ 22213c6 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_22213d6
	mov     r0, #0xff
	pop     {r3-r5,pc}
@ 0x22213d0

.thumb
branch_22213d0: @ 22213d0 :thumb
	mov     r0, r5
	bl      Function_22256e8
.thumb
branch_22213d6: @ 22213d6 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x22213dc

.word 0x2228d4c @ 0x22213dc
.word 0x2088 @ 0x22213e0
.thumb
Function_22213e4: @ 22213e4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22213ec, (=Function_2022664+1)
	mov     r0, r1
	bx      r3
@ 0x22213ea


.align 2


.word Function_2022664+1 @ 0x22213ec
.thumb
Function_22213f0: @ 22213f0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x50
	mov     r5, r0
	mul     r1, r4
	add     r1, r5, r1
	ldrh    r1, [r1, #0x8]
	cmp     r1, #0x0
	bne     branch_2221406
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2221406

.thumb
branch_2221406: @ 2221406 :thumb
	cmp     r4, #0x0
	beq     branch_2221420
	bl      Function_222196c
	cmp     r0, #0x0
	bne     branch_222141c
	mov     r0, r5
	bl      Function_222198c
	cmp     r0, #0x0
	beq     branch_2221424
.thumb
branch_222141c: @ 222141c :thumb
	cmp     r4, #0x1
	bne     branch_2221424
.thumb
branch_2221420: @ 2221420 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2221424

.thumb
branch_2221424: @ 2221424 :thumb
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x2221428

.thumb
Function_2221428: @ 2221428 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r7, r2
	mov     r6, r4
	bl      Function_222198c
	cmp     r0, #0x1
	bne     branch_22214a0
	ldr     r2, [pc, #0x9c] @ 0x22214dc, (=Unknown_2228cfc)
	add     r1, sp, #0x0
	ldrb    r3, [r2, #0x0]
	add     r0, sp, #0x0
	mov     r4, #0x0
	strb    r3, [r1, #0x0]
	ldrb    r3, [r2, #0x1]
	strb    r3, [r1, #0x1]
	ldrb    r3, [r2, #0x2]
	strb    r3, [r1, #0x2]
	ldrb    r3, [r2, #0x3]
	strb    r3, [r1, #0x3]
	ldrb    r3, [r2, #0x4]
	ldrb    r2, [r2, #0x5]
	strb    r3, [r1, #0x4]
	strb    r2, [r1, #0x5]
.thumb
branch_222145c: @ 222145c :thumb
	ldrb    r1, [r0, #0x0]
	cmp     r6, r1
	beq     branch_222146a
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, #0x6
	blt     branch_222145c
.thumb
branch_222146a: @ 222146a :thumb
	add     r4, r4, r7
	bpl     branch_2221472
	mov     r4, #0x5
	b       branch_2221478
@ 0x2221472

.thumb
branch_2221472: @ 2221472 :thumb
	cmp     r4, #0x6
	blt     branch_2221478
	mov     r4, #0x0
.thumb
branch_2221478: @ 2221478 :thumb
	add     r0, sp, #0x0
	ldrb    r1, [r0, r4]
	cmp     r6, r1
	beq     branch_22214d4
	mov     r0, r5
	bl      Function_22213f0
	cmp     r0, #0x0
	beq     branch_222146a
	add     r0, sp, #0x0
	ldrb    r0, [r0, r4]
	mov     r1, #0x50
	mul     r1, r0
	add     r1, r5, r1
	ldrb    r1, [r1, #0x1b]
	lsl     r1, r1, #24
	lsr     r1, r1, #31
	bne     branch_222146a
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22214a0

.thumb
branch_22214a0: @ 22214a0 :thumb
	add     r4, r4, r7
	bpl     branch_22214a8
	mov     r4, #0x5
	b       branch_22214ae
@ 0x22214a8

.thumb
branch_22214a8: @ 22214a8 :thumb
	cmp     r4, #0x6
	blt     branch_22214ae
	mov     r4, #0x0
.thumb
branch_22214ae: @ 22214ae :thumb
	cmp     r6, r4
	beq     branch_22214d4
	mov     r0, r5
	mov     r1, r4
	bl      Function_22213f0
	cmp     r0, #0x0
	beq     branch_22214a0
	mov     r0, #0x50
	mul     r0, r4
	add     r0, r5, r0
	ldrb    r0, [r0, #0x1b]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bne     branch_22214a0
	lsl     r0, r4, #24
	add     sp, #0x8
	lsr     r0, r0, #24
	pop     {r3-r7,pc}
@ 0x22214d4

.thumb
branch_22214d4: @ 22214d4 :thumb
	mov     r0, #0xff
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22214da

.align 2
.word Unknown_2228cfc @ 0x22214dc



.thumb
Function_22214e0: @ 22214e0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	cmp     r1, #0x2
	bne     branch_222155e
	ldr     r0, [r6, #0x0]
	add     r2, r6, #0x4
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r2, r0
	ldrb    r1, [r0, #0x16]
	lsl     r1, r1, #25
	lsr     r1, r1, #25
	cmp     r1, #0x64
	bcs     branch_222150a
	ldr     r2, [r0, #0x20]
	ldr     r1, [r0, #0x24]
	ldr     r0, [r0, #0x1c]
	sub     r1, r1, r2
	sub     r0, r0, r2
	b       branch_222150e
@ 0x222150a

.thumb
branch_222150a: @ 222150a :thumb
	mov     r1, #0x0
	mov     r0, r1
.thumb
branch_222150e: @ 222150e :thumb
	mov     r2, #0x40
	bl      Function_208c0bc
	mov     r4, r0
	mov     r5, #0x0
	mov     r7, #0x1e
.thumb
branch_222151a: @ 222151a :thumb
	cmp     r4, #0x8
	bcc     branch_2221522
	mov     r1, r7
	b       branch_222152a
@ 0x2221522

.thumb
branch_2221522: @ 2221522 :thumb
	mov     r0, r4
	add     r0, #0x16
	lsl     r0, r0, #16
	lsr     r1, r0, #16
.thumb
branch_222152a: @ 222152a :thumb
	mov     r2, r5
	add     r2, #0xa
	lsl     r2, r2, #16
	mov     r0, r6
	lsr     r2, r2, #16
	mov     r3, #0x8
	bl      Function_2221560
	cmp     r4, #0x8
	bcs     branch_2221542
	mov     r4, #0x0
	b       branch_2221548
@ 0x2221542

.thumb
branch_2221542: @ 2221542 :thumb
	sub     r4, #0x8
	lsl     r0, r4, #24
	lsr     r4, r0, #24
.thumb
branch_2221548: @ 2221548 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x8
	bcc     branch_222151a
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x7
	bl      Function_201c3c0
.thumb
branch_222155e: @ 222155e :thumb
	pop     {r3-r7,pc}
@ 0x2221560

.thumb
Function_2221560: @ 2221560 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	lsl     r1, r3, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r4, r2
	str     r1, [sp, #0x8]
	mov     r1, #0x10
	str     r1, [sp, #0xc]
	mov     r1, #0x79
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	lsl     r3, r4, #24
	mov     r1, #0x7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_2019cb8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x222158e


.align 2, 0


.thumb
Function_2221590: @ 2221590 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	lsl     r6, r2, #1
	mov     r4, r1
	str     r0, [sp, #0xc]
	mov     r0, #0x79
	add     r7, r6, #0x2
	lsl     r0, r0, #2
	lsl     r3, r7, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	mov     r2, r4
	lsr     r3, r3, #24
	bl      Function_2019cb8
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x79
	.hword  0x1cf6 @ add r6, r6, #0x3
	lsl     r0, r0, #2
	add     r2, r4, #0x1
	lsl     r2, r2, #16
	lsl     r3, r6, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x79
	mov     r2, r4
	lsl     r0, r0, #2
	add     r2, #0x20
	lsl     r2, r2, #16
	lsl     r3, r7, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r4, #0x21
	lsl     r2, r4, #16
	lsl     r3, r6, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2221630

.thumb
Function_2221630: @ 2221630 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x1c] @ 0x2221650, (=0x125)
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2221638: @ 2221638 :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_2221590
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x6
	bcc     branch_2221638
	pop     {r4-r6,pc}
@ 0x2221650

.word 0x125 @ 0x2221650
.thumb
Function_2221654: @ 2221654 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	cmp     r1, #0x9
	bne     branch_22216be
	bl      Function_2221630
	ldr     r1, [r5, #0x0]
	mov     r0, r1
	add     r0, #0x34
	ldrb    r2, [r0, #0x0]
	cmp     r2, #0x4
	bcs     branch_222167c
	ldrb    r1, [r1, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r1, r5, r0
	lsl     r0, r2, #3
	add     r0, r1, r0
	ldrh    r0, [r0, #0x34]
	b       branch_222167e
@ 0x222167c

.thumb
branch_222167c: @ 222167c :thumb
	ldrh    r0, [r1, #0x24]
.thumb
branch_222167e: @ 222167e :thumb
	mov     r1, #0xa
	bl      LoadMoveData
	bl      Function_2095734
	mov     r1, #0xa
	blx     _s32_div_f
	lsl     r0, r0, #24
	asr     r6, r0, #24
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_22216b2
	mov     r7, #0x5
	lsl     r7, r7, #6
.thumb
branch_222169c: @ 222169c :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r7
	lsr     r2, r2, #24
	bl      Function_2221590
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r6
	blt     branch_222169c
.thumb
branch_22216b2: @ 22216b2 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	bl      Function_201c3c0
.thumb
branch_22216be: @ 22216be :thumb
	pop     {r3-r7,pc}
@ 0x22216c0

.thumb
Function_22216c0: @ 22216c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2221738
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_2019f04
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2019f04
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224b7c
	mov     r0, r5
	bl      Function_2221bb0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2221ac4
	mov     r0, r5
	mov     r1, r4
	bl      Function_2221bf8
	mov     r0, r5
	mov     r1, r4
	bl      Function_22214e0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2221654
	mov     r0, r5
	mov     r1, r4
	bl      Function_222563c
	mov     r0, r5
	mov     r1, r4
	bl      Function_22260ec
	mov     r0, r5
	mov     r1, r4
	bl      Function_2226444
	ldr     r0, [pc, #0x4] @ 0x2221734, (=0x207a)
	strb    r4, [r5, r0]
	pop     {r3-r5,pc}
@ 0x2221732


.align 2


.word 0x207a @ 0x2221734
.thumb
Function_2221738: @ 2221738 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r2, [pc, #0x60] @ 0x22217a0, (=0x2228e50)
	mov     r5, r0
	lsl     r0, r1, #3
	mov     r4, #0x0
	add     r6, r2, r0
branch_2221746: @ 2221746 :thumb
	ldr     r2, [r5, #0x0]
	ldr     r1, [r6, #0x0]
	ldr     r2, [r2, #0xc]
	mov     r0, #PlBPlistGra_Narc
	bl      LoadFromNARC_2
	add     r1, sp, #0xc
	mov     r7, r0
	blx     Function_20a7248
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r1, r4, #0x6
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #24
	ldr     r0, [r5, r0]
	lsr     r1, r1, #24
	add     r2, #0xc
	mov     r3, #0x0
	bl      Function_20198c0
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r1, r4, #0x6
	lsl     r1, r1, #24
	ldr     r0, [r5, r0]
	lsr     r1, r1, #24
	bl      Function_201c3c0
	mov     r0, r7
	bl      free
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x2
	bcc     branch_2221746
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222179e


.align 2


.word 0x2228e50 @ 0x22217a0
.thumb
Function_22217a4: @ 22217a4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r2, #0x50
	ldrb    r1, [r1, #0x11]
	add     r3, r5, #0x4
	mul     r2, r1
	add     r4, r3, r2
	bl      Function_22219ac
	cmp     r0, #0x1
	bne     branch_2221800
	ldr     r0, [pc, #0x180] @ 0x2221940, (=0x1fa8)
	mov     r1, #0x50
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	ldr     r0, [r1, #0x8]
	ldr     r1, [r1, #0x28]
	bl      0x223e258
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x223e120
	mov     r2, r0
	ldr     r0, [pc, #0x164] @ 0x2221944, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200ba74
	ldr     r1, [pc, #0x158] @ 0x2221944, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2221800

.thumb
branch_2221800: @ 2221800 :thumb
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_222183c
	ldr     r0, [pc, #0x138] @ 0x2221940, (=0x1fa8)
	mov     r1, #0x4d
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x128] @ 0x2221944, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x11c] @ 0x2221944, (=0x1fac)
	mov     r2, r6
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222183c

.thumb
branch_222183c: @ 222183c :thumb
	ldr     r2, [r5, #0x0]
	ldrb    r0, [r2, #0x11]
	add     r0, r2, r0
	add     r0, #0x2c
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x14]
	cmp     r0, r1
	beq     branch_2221852
	ldrb    r0, [r2, #0x15]
	cmp     r0, r1
	bne     branch_2221888
.thumb
branch_2221852: @ 2221852 :thumb
	ldr     r0, [pc, #0xec] @ 0x2221940, (=0x1fa8)
	mov     r1, #0x4c
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0xdc] @ 0x2221944, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0xd0] @ 0x2221944, (=0x1fac)
	mov     r2, r6
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2221888

.thumb
branch_2221888: @ 2221888 :thumb
	mov     r0, r5
	bl      Function_222194c
	cmp     r0, #0x1
	bne     branch_22218a4
	ldr     r2, [pc, #0xac] @ 0x2221940, (=0x1fa8)
	mov     r1, #0x4f
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22218a4

.thumb
branch_22218a4: @ 22218a4 :thumb
	ldr     r2, [r5, #0x0]
	ldrb    r1, [r2, #0x12]
	cmp     r1, #0x6
	beq     branch_22218f4
	ldrb    r4, [r2, #0x11]
	add     r0, r2, r4
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_22218f4
	ldr     r0, [pc, #0x84] @ 0x2221940, (=0x1fa8)
	mov     r1, #0x5d
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r0, #0x50
	mul     r0, r4
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x70] @ 0x2221944, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x64] @ 0x2221944, (=0x1fac)
	mov     r2, r6
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22218f4

.thumb
branch_22218f4: @ 22218f4 :thumb
	ldrh    r0, [r2, #0x24]
	cmp     r0, #0x0
	beq     branch_222193c
	ldr     r1, [pc, #0x4c] @ 0x2221948, (=0x2076)
	mov     r0, #0x50
	ldrb    r2, [r5, r1]
	sub     r1, #0xce
	add     r4, r5, #0x4
	mov     r6, r2
	mul     r6, r0
	ldr     r0, [r5, r1]
	mov     r1, #0x4e
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldr     r0, [r4, r6]
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x28] @ 0x2221944, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x1c] @ 0x2221944, (=0x1fac)
	mov     r2, r7
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222193c

.thumb
branch_222193c: @ 222193c :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2221940

.word 0x1fa8 @ 0x2221940
.word 0x1fac @ 0x2221944
.word 0x2076 @ 0x2221948
.thumb
Function_222194c: @ 222194c :thumb
	ldr     r1, [r0, #0x0]
	ldrb    r2, [r1, #0x11]
	mov     r1, #0x50
	mul     r1, r2
	add     r0, r0, r1
	ldrb    r0, [r0, #0x1b]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	beq     branch_2221962
	mov     r0, #0x1
	b       branch_2221964
@ 0x2221962

.thumb
branch_2221962: @ 2221962 :thumb
	mov     r0, #0x0
.thumb
branch_2221964: @ 2221964 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x222196a


.align 2, 0


.thumb
Function_222196c: @ 222196c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x223df0c
	cmp     r0, #0x4a
	beq     branch_2221988
	cmp     r0, #0x4b
	beq     branch_2221988
	mov     r1, #0x12
	tst     r0, r1
	beq     branch_2221988
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2221988

.thumb
branch_2221988: @ 2221988 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222198c

.thumb
Function_222198c: @ 222198c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x223df0c
	cmp     r0, #0x4a
	beq     branch_22219a8
	cmp     r0, #0x4b
	beq     branch_22219a8
	mov     r1, #0x8
	tst     r0, r1
	beq     branch_22219a8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22219a8

.thumb
branch_22219a8: @ 22219a8 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22219ac

.thumb
Function_22219ac: @ 22219ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_222198c
	cmp     r0, #0x1
	bne     branch_22219d4
	ldr     r0, [pc, #0x1c] @ 0x22219d8, (=0x208f)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x2
	bne     branch_22219cc
	mov     r0, #0x1
	mov     r1, r4
	tst     r1, r0
	beq     branch_22219d4
	pop     {r3-r5,pc}
@ 0x22219cc

.thumb
branch_22219cc: @ 22219cc :thumb
	mov     r0, #0x1
	mov     r1, r4
	tst     r1, r0
	beq     branch_22219d6
.thumb
branch_22219d4: @ 22219d4 :thumb
	mov     r0, #0x0
.thumb
branch_22219d6: @ 22219d6 :thumb
	pop     {r3-r5,pc}
@ 0x22219d8

.word 0x208f @ 0x22219d8
.thumb
Function_22219dc: @ 22219dc :thumb
	ldr     r2, [r0, #0x0]
	mov     r1, r2
	add     r1, #0x34
	ldrb    r3, [r1, #0x0]
	cmp     r3, #0x4
	bne     branch_22219ec
	ldrh    r0, [r2, #0x24]
	b       branch_22219fa
@ 0x22219ec

.thumb
branch_22219ec: @ 22219ec :thumb
	ldrb    r2, [r2, #0x11]
	mov     r1, #0x50
	mul     r1, r2
	add     r1, r0, r1
	lsl     r0, r3, #3
	add     r0, r1, r0
	ldrh    r0, [r0, #0x34]
.thumb
branch_22219fa: @ 22219fa :thumb
	ldr     r3, [pc, #0x4] @ 0x2221a00, (=Function_207d28c+1)
	bx      r3
@ 0x22219fe

.align 2
.word Function_207d28c+1 @ 0x2221a00



.thumb
Function_2221a04: @ 2221a04 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x2221a34, (=0x2020)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_200d3f4
	ldr     r0, [pc, #0x24] @ 0x2221a38, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, #0xa0
	bl      Function_201ad10
	ldr     r0, [pc, #0x18] @ 0x2221a38, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, #0x60
	bl      Function_201ad10
	ldr     r0, [pc, #0x10] @ 0x2221a38, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, #0x70
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x2221a32


.align 2


.word 0x2020 @ 0x2221a34
.word 0x2070 @ 0x2221a38
.thumb
Function_2221a3c: @ 2221a3c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2221630
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x7
	bl      Function_201c3c0
	pop     {r4,pc}
@ 0x2221a52


.align 2, 0


.thumb
Function_2221a54: @ 2221a54 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	cmp     r4, #0x41
	beq     branch_2221a78
	cmp     r4, #0x43
	beq     branch_2221a78
	cmp     r4, #0x42
	beq     branch_2221a78
	bl      0x223e1ac
	mov     r1, r4
	mov     r2, #0x1
	mov     r3, r7
	bl      GiveItem
branch_2221a78: @ 2221a78 :thumb
	mov     r0, r5
	bl      0x223e1b0
	mov     r1, r4
	mov     r2, r6
	bl      Function_207da1c
	pop     {r3-r7,pc}
@ 0x2221a88

.thumb
Function_2221a88: @ 2221a88 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [pc, #0x28] @ 0x2221ab8, (=0x2050)
	ldr     r4, [pc, #0x2c] @ 0x2221abc, (=0x2228ea0)
	mov     r6, #0x0
	add     r5, r7, r0
.thumb
branch_2221a94: @ 2221a94 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201a8d4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r6, #0x2
	bcc     branch_2221a94
	ldr     r1, [pc, #0x10] @ 0x2221ac0, (=0x207a)
	mov     r0, r7
	ldrb    r1, [r7, r1]
	bl      Function_2221ac4
	pop     {r3-r7,pc}
@ 0x2221ab8

.word 0x2050 @ 0x2221ab8
.word 0x2228ea0 @ 0x2221abc
.word 0x207a @ 0x2221ac0
.thumb
Function_2221ac4: @ 2221ac4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	cmp     r1, #0x9
	bhi     branch_2221b44
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2221ad8

Jumppoints_2221ad8:
.hword branch_2221aec - Jumppoints_2221ad8 - 2
.hword branch_2221af6 - Jumppoints_2221ad8 - 2
.hword branch_2221b00 - Jumppoints_2221ad8 - 2
.hword branch_2221b0a - Jumppoints_2221ad8 - 2
.hword branch_2221b14 - Jumppoints_2221ad8 - 2
.hword branch_2221b1e - Jumppoints_2221ad8 - 2
.hword branch_2221b28 - Jumppoints_2221ad8 - 2
.hword branch_2221b32 - Jumppoints_2221ad8 - 2
.hword branch_2221b28 - Jumppoints_2221ad8 - 2
.hword branch_2221b3c - Jumppoints_2221ad8 - 2
.thumb
branch_2221aec: @ 2221aec :thumb
	ldr     r0, [pc, #0x94] @ 0x2221b84, (=0x2074)
	mov     r1, #0x6
	ldr     r6, [pc, #0x94] @ 0x2221b88, (=0x2228f54)
	strb    r1, [r4, r0]
	b       branch_2221b44
@ 0x2221af6

.thumb
branch_2221af6: @ 2221af6 :thumb
	ldr     r0, [pc, #0x8c] @ 0x2221b84, (=0x2074)
	mov     r1, #0x4
	ldr     r6, [pc, #0x90] @ 0x2221b8c, (=0x2228edc)
	strb    r1, [r4, r0]
	b       branch_2221b44
@ 0x2221b00

.thumb
branch_2221b00: @ 2221b00 :thumb
	ldr     r0, [pc, #0x80] @ 0x2221b84, (=0x2074)
	mov     r1, #0x23
	ldr     r6, [pc, #0x88] @ 0x2221b90, (=0x22290fc)
	strb    r1, [r4, r0]
	b       branch_2221b44
@ 0x2221b0a

.thumb
branch_2221b0a: @ 2221b0a :thumb
	ldr     r0, [pc, #0x78] @ 0x2221b84, (=0x2074)
	mov     r1, #0xb
	ldr     r6, [pc, #0x84] @ 0x2221b94, (=0x2228fbc)
	strb    r1, [r4, r0]
	b       branch_2221b44
@ 0x2221b14

.thumb
branch_2221b14: @ 2221b14 :thumb
	ldr     r0, [pc, #0x6c] @ 0x2221b84, (=0x2074)
	mov     r1, #0x11
	ldr     r6, [pc, #0x7c] @ 0x2221b98, (=0x2229074)
	strb    r1, [r4, r0]
	b       branch_2221b44
@ 0x2221b1e

.thumb
branch_2221b1e: @ 2221b1e :thumb
	ldr     r0, [pc, #0x64] @ 0x2221b84, (=0x2074)
	mov     r1, #0x5
	ldr     r6, [pc, #0x78] @ 0x2221b9c, (=0x2228efc)
	strb    r1, [r4, r0]
	b       branch_2221b44
@ 0x2221b28

.thumb
branch_2221b28: @ 2221b28 :thumb
	ldr     r0, [pc, #0x58] @ 0x2221b84, (=0x2074)
	mov     r1, #0x6
	ldr     r6, [pc, #0x70] @ 0x2221ba0, (=0x2228f24)
	strb    r1, [r4, r0]
	b       branch_2221b44
@ 0x2221b32

.thumb
branch_2221b32: @ 2221b32 :thumb
	ldr     r0, [pc, #0x50] @ 0x2221b84, (=0x2074)
	mov     r1, #0xc
	ldr     r6, [pc, #0x6c] @ 0x2221ba4, (=0x2229014)
	strb    r1, [r4, r0]
	b       branch_2221b44
@ 0x2221b3c

.thumb
branch_2221b3c: @ 2221b3c :thumb
	ldr     r0, [pc, #0x44] @ 0x2221b84, (=0x2074)
	mov     r1, #0x7
	ldr     r6, [pc, #0x64] @ 0x2221ba8, (=0x2228f84)
	strb    r1, [r4, r0]
.thumb
branch_2221b44: @ 2221b44 :thumb
	ldr     r1, [pc, #0x3c] @ 0x2221b84, (=0x2074)
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r4, r1]
	ldr     r0, [r0, #0xc]
	bl      Function_201a778
	ldr     r1, [pc, #0x58] @ 0x2221bac, (=0x2070)
	mov     r5, #0x0
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bls     branch_2221b82
	add     r7, r1, #0x4
.thumb
branch_2221b60: @ 2221b60 :thumb
	ldr     r1, [pc, #0x48] @ 0x2221bac, (=0x2070)
	mov     r0, #0x79
	ldr     r2, [r4, r1]
	lsl     r0, r0, #2
	lsl     r1, r5, #4
	add     r1, r2, r1
	lsl     r2, r5, #3
	ldr     r0, [r4, r0]
	add     r2, r6, r2
	bl      Function_201a8d4
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldrb    r0, [r4, r7]
	cmp     r5, r0
	bcc     branch_2221b60
.thumb
branch_2221b82: @ 2221b82 :thumb
	pop     {r3-r7,pc}
@ 0x2221b84

.word 0x2074 @ 0x2221b84
.word 0x2228f54 @ 0x2221b88
.word 0x2228edc @ 0x2221b8c
.word 0x22290fc @ 0x2221b90
.word 0x2228fbc @ 0x2221b94
.word 0x2229074 @ 0x2221b98
.word 0x2228efc @ 0x2221b9c
.word 0x2228f24 @ 0x2221ba0
.word 0x2229014 @ 0x2221ba4
.word 0x2228f84 @ 0x2221ba8
.word 0x2070 @ 0x2221bac
.thumb
Function_2221bb0: @ 2221bb0 :thumb
	ldr     r1, [pc, #0xc] @ 0x2221bc0, (=0x2070)
	mov     r2, r0
	ldr     r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r3, [pc, #0x8] @ 0x2221bc4, (=Function_201a928+1)
	ldrb    r1, [r2, r1]
	bx      r3
@ 0x2221bbe


.align 2


.word 0x2070 @ 0x2221bc0
.word Function_201a928+1 @ 0x2221bc4
.thumb
Function_2221bc8: @ 2221bc8 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x24] @ 0x2221bf0, (=0x2070)
	mov     r5, r0
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldrb    r1, [r5, r1]
	bl      Function_201a928
	ldr     r0, [pc, #0x18] @ 0x2221bf4, (=0x2050)
	mov     r4, #0x0
	add     r5, r5, r0
.thumb
branch_2221bde: @ 2221bde :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x2
	bcc     branch_2221bde
	pop     {r3-r5,pc}
@ 0x2221bee


.align 2


.word 0x2070 @ 0x2221bf0
.word 0x2050 @ 0x2221bf4
.thumb
Function_2221bf8: @ 2221bf8 :thumb
	push    {r3,lr}
	cmp     r1, #0x9
	bhi     branch_2221c52
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2221c0a

Jumppoints_2221c0a:
.hword branch_2221c1e - Jumppoints_2221c0a - 2
.hword branch_2221c24 - Jumppoints_2221c0a - 2
.hword branch_2221c2a - Jumppoints_2221c0a - 2
.hword branch_2221c30 - Jumppoints_2221c0a - 2
.hword branch_2221c36 - Jumppoints_2221c0a - 2
.hword branch_2221c3c - Jumppoints_2221c0a - 2
.hword branch_2221c42 - Jumppoints_2221c0a - 2
.hword branch_2221c48 - Jumppoints_2221c0a - 2
.hword branch_2221c42 - Jumppoints_2221c0a - 2
.hword branch_2221c4e - Jumppoints_2221c0a - 2
.thumb
branch_2221c1e: @ 2221c1e :thumb
	bl      Function_222339c
	pop     {r3,pc}
@ 0x2221c24

.thumb
branch_2221c24: @ 2221c24 :thumb
	bl      Function_22234c8
	pop     {r3,pc}
@ 0x2221c2a

.thumb
branch_2221c2a: @ 2221c2a :thumb
	bl      Function_22237f8
	pop     {r3,pc}
@ 0x2221c30

.thumb
branch_2221c30: @ 2221c30 :thumb
	bl      Function_22236b8
	pop     {r3,pc}
@ 0x2221c36

.thumb
branch_2221c36: @ 2221c36 :thumb
	bl      Function_2223a10
	pop     {r3,pc}
@ 0x2221c3c

.thumb
branch_2221c3c: @ 2221c3c :thumb
	bl      Function_2223e68
	pop     {r3,pc}
@ 0x2221c42

.thumb
branch_2221c42: @ 2221c42 :thumb
	bl      Function_2223b74
	pop     {r3,pc}
@ 0x2221c48

.thumb
branch_2221c48: @ 2221c48 :thumb
	bl      Function_2223c9c
	pop     {r3,pc}
@ 0x2221c4e

.thumb
branch_2221c4e: @ 2221c4e :thumb
	bl      Function_2223f7c
.thumb
branch_2221c52: @ 2221c52 :thumb
	pop     {r3,pc}
@ 0x2221c54

.thumb
Function_2221c54: @ 2221c54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r6, r0
	ldr     r0, [pc, #0x188] @ 0x2221de4, (=0x2070)
	str     r3, [sp, #0x14]
	ldr     r5, [r6, r0]
	lsl     r4, r1, #4
	ldr     r0, [sp, #0x14]
	mov     r1, #0x50
	mul     r1, r0
	add     r7, r6, #0x4
	add     r0, r7, r1
	str     r1, [sp, #0x24]
	ldr     r1, [r6, #0x0]
	str     r0, [sp, #0x20]
	ldr     r1, [r1, #0xc]
	mov     r0, #0xc
	str     r2, [sp, #0x10]
	bl      Function_2023790
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x1c]
	ldr     r0, [pc, #0x164] @ 0x2221de8, (=0x1fa8)
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x164] @ 0x2221dec, (=0x2228ec4)
	ldr     r0, [r6, r0]
	ldr     r1, [r1, r2]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	ldr     r0, [r7, r0]
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x154] @ 0x2221df0, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r6, r0]
	bl      Function_200b5cc
	ldr     r0, [pc, #0x148] @ 0x2221df0, (=0x1fac)
	ldr     r1, [sp, #0x1c]
	ldr     r0, [r6, r0]
	ldr     r2, [sp, #0x18]
	bl      Function_200c388
	ldr     r0, [sp, #0x10]
	add     r3, sp, #0x38
	cmp     r0, #0x0
	bne     branch_2221cd6
	ldrb    r7, [r3, #0x14]
	mov     r0, #0xff
	ldr     r1, [sp, #0x10]
	str     r7, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x130] @ 0x2221df4, (=0xf0e00)
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r3, [r3, #0x10]
	add     r0, r5, r4
	bl      Function_201d78c
	b       branch_2221cf2
@ 0x2221cd6

.thumb
branch_2221cd6: @ 2221cd6 :thumb
	ldrb    r7, [r3, #0x14]
	mov     r0, #0xff
	ldr     r1, [sp, #0x10]
	str     r7, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x114] @ 0x2221df8, (=0x70809)
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r3, [r3, #0x10]
	add     r0, r5, r4
	bl      Function_201d78c
.thumb
branch_2221cf2: @ 2221cf2 :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x20]
	ldrb    r0, [r0, #0x16]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bne     branch_2221dd8
	ldr     r0, [sp, #0x20]
	ldrb    r0, [r0, #0x17]
	lsl     r1, r0, #24
	lsr     r1, r1, #31
	bne     branch_2221dd8
	lsl     r0, r0, #29
	lsr     r0, r0, #29
	bne     branch_2221d76
	ldr     r0, [pc, #0xcc] @ 0x2221de8, (=0x1fa8)
	mov     r1, #0x10
	ldr     r0, [r6, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	add     r0, r5, r4
	bl      Function_201c294
	str     r0, [sp, #0x28]
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	ldr     r1, [sp, #0x28]
	str     r7, [sp, #0x0]
	lsl     r1, r1, #3
	sub     r3, r1, r0
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2221d5a
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xb0] @ 0x2221dfc, (=0x70800)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	b       branch_2221d6e
@ 0x2221d5a

.thumb
branch_2221d5a: @ 2221d5a :thumb
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa0] @ 0x2221e00, (=0xa0b00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
.thumb
branch_2221d6e: @ 2221d6e :thumb
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	b       branch_2221dd8
@ 0x2221d76

.thumb
branch_2221d76: @ 2221d76 :thumb
	cmp     r0, #0x1
	bne     branch_2221dd8
	ldr     r0, [pc, #0x6c] @ 0x2221de8, (=0x1fa8)
	mov     r1, #0x11
	ldr     r0, [r6, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	add     r0, r5, r4
	bl      Function_201c294
	str     r0, [sp, #0x2c]
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	ldr     r1, [sp, #0x2c]
	str     r7, [sp, #0x0]
	lsl     r1, r1, #3
	sub     r3, r1, r0
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2221dbe
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r0, r5, r4
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	b       branch_2221dd2
@ 0x2221dbe

.thumb
branch_2221dbe: @ 2221dbe :thumb
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2221e04, (=0xc0d00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
.thumb
branch_2221dd2: @ 2221dd2 :thumb
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
.thumb
branch_2221dd8: @ 2221dd8 :thumb
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2221de2


.align 2


.word 0x2070 @ 0x2221de4
.word 0x1fa8 @ 0x2221de8
.word 0x2228ec4 @ 0x2221dec
.word 0x1fac @ 0x2221df0
.word 0xf0e00 @ 0x2221df4
.word 0x70809 @ 0x2221df8
.word 0x70800 @ 0x2221dfc
.word 0xa0b00 @ 0x2221e00
.word 0xc0d00 @ 0x2221e04
.thumb
Function_2221e08: @ 2221e08 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2221e4c, (=0x2070)
	lsl     r4, r1, #4
	ldr     r1, [r5, r0]
	add     r3, #0x8
	add     r1, r1, r4
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r1, sp, #0x10
	ldrb    r1, [r1, #0x10]
	mov     r3, #0x50
	mul     r3, r2
	str     r1, [sp, #0xc]
	add     r2, r5, r3
	ldrb    r2, [r2, #0x1a]
	sub     r0, #0xcc
	ldr     r0, [r5, r0]
	lsl     r2, r2, #25
	mov     r1, #0x1
	lsr     r2, r2, #25
	mov     r3, #0x3
	bl      Function_200c648
	ldr     r0, [pc, #0xc] @ 0x2221e4c, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2221e4c

.word 0x2070 @ 0x2221e4c
.thumb
Function_2221e50: @ 2221e50 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x50
	mov     r7, r3
	mul     r0, r2
	add     r3, r5, #0x4
	add     r0, r3, r0
	str     r0, [sp, #0xc]
	add     r0, sp, #0x18
	ldrb    r6, [r0, #0x10]
	ldr     r0, [pc, #0x60] @ 0x2221ec8, (=0x2070)
	lsl     r4, r1, #4
	ldr     r1, [r5, r0]
	sub     r0, #0xcc
	add     r1, r1, r4
	str     r1, [sp, #0x0]
	str     r7, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_200c5bc
	mov     r3, r7
	ldr     r2, [pc, #0x44] @ 0x2221ecc, (=0x1fa4)
	str     r6, [sp, #0x0]
	ldr     r0, [r5, r2]
	add     r2, #0xcc
	ldr     r2, [r5, r2]
	mov     r1, #0x0
	add     r2, r2, r4
	add     r3, #0x18
	bl      Function_200c578
	ldr     r0, [pc, #0x2c] @ 0x2221ec8, (=0x2070)
	add     r7, #0x20
	ldr     r1, [r5, r0]
	sub     r0, #0xcc
	add     r1, r1, r4
	str     r1, [sp, #0x0]
	str     r7, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	ldrh    r1, [r1, #0x12]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_200c5bc
	ldr     r0, [pc, #0xc] @ 0x2221ec8, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2221ec6


.align 2


.word 0x2070 @ 0x2221ec8
.word 0x1fa4 @ 0x2221ecc
.thumb
Function_2221ed0: @ 2221ed0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x50
	str     r1, [sp, #0x8]
	mul     r0, r2
	add     r1, r4, #0x4
	str     r3, [sp, #0xc]
	add     r5, r1, r0
	ldrh    r0, [r5, #0x10]
	ldrh    r1, [r5, #0x12]
	mov     r2, #0x30
	mov     r7, #0x1
	bl      Function_208c0bc
	str     r0, [sp, #0x14]
	ldrh    r0, [r5, #0x10]
	ldrh    r1, [r5, #0x12]
	mov     r2, #0x30
	bl      Function_208c104
	cmp     r0, #0x4
	bhi     branch_2221f2e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2221f0a

Jumppoints_2221f0a:
.hword branch_2221f14 - Jumppoints_2221f0a - 2
.hword branch_2221f2c - Jumppoints_2221f0a - 2
.hword branch_2221f28 - Jumppoints_2221f0a - 2
.hword branch_2221f26 - Jumppoints_2221f0a - 2
.hword branch_2221f26 - Jumppoints_2221f0a - 2
.thumb
branch_2221f14: @ 2221f14 :thumb
	ldr     r0, [pc, #0x8c] @ 0x2221fa4, (=0x2070)
	ldr     r1, [r4, r0]
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2221f26

.thumb
branch_2221f26: @ 2221f26 :thumb
	b       branch_2221f2e
@ 0x2221f28

.thumb
branch_2221f28: @ 2221f28 :thumb
	mov     r7, #0x3
	b       branch_2221f2e
@ 0x2221f2c

.thumb
branch_2221f2c: @ 2221f2c :thumb
	mov     r7, #0x5
.thumb
branch_2221f2e: @ 2221f2e :thumb
	add     r0, sp, #0x20
	ldrb    r6, [r0, #0x10]
	add     r0, r7, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	lsl     r5, r0, #4
	ldr     r0, [sp, #0x14]
	add     r3, r6, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x2221fa4, (=0x2070)
	lsl     r1, r1, #24
	ldr     r0, [r4, r0]
	lsl     r3, r3, #16
	ldr     r2, [sp, #0xc]
	add     r0, r0, r5
	lsr     r1, r1, #24
	lsr     r3, r3, #16
	bl      Function_201ae78
	ldr     r0, [sp, #0x14]
	add     r3, r6, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x2221fa4, (=0x2070)
	lsl     r3, r3, #16
	ldr     r0, [r4, r0]
	ldr     r2, [sp, #0xc]
	add     r0, r0, r5
	mov     r1, r7
	lsr     r3, r3, #16
	bl      Function_201ae78
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2221fa4, (=0x2070)
	add     r3, r6, #0x4
	ldr     r0, [r4, r0]
	lsl     r1, r1, #24
	lsl     r3, r3, #16
	ldr     r2, [sp, #0xc]
	add     r0, r0, r5
	lsr     r1, r1, #24
	lsr     r3, r3, #16
	bl      Function_201ae78
	ldr     r0, [pc, #0xc] @ 0x2221fa4, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, r0, r5
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2221fa4

.word 0x2070 @ 0x2221fa4
.thumb
Function_2221fa8: @ 2221fa8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	mov     r0, #0x10
	ldr     r1, [r1, #0xc]
	mov     r7, r2
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [pc, #0x60] @ 0x2222020, (=0x1fa8)
	mov     r1, #0x8
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r2, #0x50
	mul     r2, r7
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x54] @ 0x2222024, (=0x1fac)
	add     r2, r5, r2
	ldrh    r2, [r2, #0x1c]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_200b6a0
	ldr     r0, [pc, #0x44] @ 0x2222024, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x2222028, (=0xf0e00)
	lsl     r4, r4, #4
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x34] @ 0x222202c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r2, r6
	add     r0, r0, r4
	mov     r3, r1
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x18] @ 0x222202c, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2222020

.word 0x1fa8 @ 0x2222020
.word 0x1fac @ 0x2222024
.word 0xf0e00 @ 0x2222028
.word 0x2070 @ 0x222202c
.thumb
Function_2222030: @ 2222030 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x50
	mov     r7, r1
	add     r1, r4, #0x4
	mul     r0, r2
	add     r5, r1, r0
	ldrh    r0, [r5, #0x1a]
	cmp     r0, #0x0
	bne     branch_2222054
	ldr     r0, [pc, #0x74] @ 0x22220bc, (=0x1fa8)
	mov     r1, #0x14
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_222208a
@ 0x2222054

.thumb
branch_2222054: @ 2222054 :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, #0x12
	ldr     r1, [r1, #0xc]
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [pc, #0x58] @ 0x22220bc, (=0x1fa8)
	mov     r1, #0x9
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x50] @ 0x22220c0, (=0x1fac)
	ldrh    r2, [r5, #0x1a]
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200b70c
	ldr     r0, [pc, #0x44] @ 0x22220c0, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r4, r0]
	mov     r1, r6
	bl      Function_200c388
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
.thumb
branch_222208a: @ 222208a :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x22220c4, (=0xf0e00)
	lsl     r5, r7, #4
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x2c] @ 0x22220c8, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r4, r0]
	mov     r2, r6
	add     r0, r0, r5
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x18] @ 0x22220c8, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22220bc

.word 0x1fa8 @ 0x22220bc
.word 0x1fac @ 0x22220c0
.word 0xf0e00 @ 0x22220c4
.word 0x2070 @ 0x22220c8
.thumb
Function_22220cc: @ 22220cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r1, [sp, #0x10]
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x2222164, (=0x2070)
	ldr     r1, [r1, #0xc]
	ldr     r4, [r5, r0]
	mov     r0, #0x10
	str     r3, [sp, #0x14]
	lsl     r6, r2, #4
	bl      Function_2023790
	mov     r7, r0
	ldr     r0, [pc, #0x7c] @ 0x2222168, (=0x1fa8)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x74] @ 0x222216c, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_200b630
	ldr     r0, [pc, #0x68] @ 0x222216c, (=0x1fac)
	ldr     r2, [sp, #0x18]
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      Function_200c388
	add     r0, sp, #0x20
	ldrh    r0, [r0, #0x10]
	cmp     r0, #0x2
	bne     branch_2222130
	add     r0, r4, r6
	bl      Function_201c294
	mov     r5, r0
	add     r0, sp, #0x20
	ldrh    r0, [r0, #0x10]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_2002d7c
	lsl     r1, r5, #3
	sub     r0, r1, r0
	lsr     r3, r0, #1
	b       branch_2222132
@ 0x2222130

.thumb
branch_2222130: @ 2222130 :thumb
	mov     r3, #0x0
.thumb
branch_2222132: @ 2222132 :thumb
	add     r1, sp, #0x20
	ldrh    r0, [r1, #0x14]
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrh    r1, [r1, #0x10]
	add     r0, r4, r6
	bl      Function_201d78c
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     r0, r4, r6
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2222164

.word 0x2070 @ 0x2222164
.word 0x1fa8 @ 0x2222168
.word 0x1fac @ 0x222216c
.thumb
Function_2222170: @ 2222170 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [pc, #0x44] @ 0x22221bc, (=0x1fa8)
	str     r2, [sp, #0x10]
	mov     r5, r1
	ldr     r0, [r4, r0]
	mov     r6, r3
	mov     r1, #0xe
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x22221c0, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x2c] @ 0x22221c4, (=0x2070)
	lsl     r5, r5, #4
	ldr     r0, [r4, r0]
	ldr     r3, [sp, #0x10]
	add     r0, r0, r5
	mov     r2, r7
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x14] @ 0x22221c4, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22221ba


.align 2


.word 0x1fa8 @ 0x22221bc
.word 0xf0e00 @ 0x22221c0
.word 0x2070 @ 0x22221c4
.thumb
Function_22221c8: @ 22221c8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x2222220, (=0x2050)
	mov     r5, r1
	mov     r1, #0x1
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, #0xe
	bl      Function_200e060
	ldr     r0, [pc, #0x40] @ 0x2222220, (=0x2050)
	mov     r1, #0xf
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x38] @ 0x2222224, (=0x1fa8)
	mov     r1, r5
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x2222228, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x2222220, (=0x2050)
	mov     r2, r5
	add     r0, r4, r0
	str     r3, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x8] @ 0x2222220, (=0x2050)
	add     r0, r4, r0
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2222220

.word 0x2050 @ 0x2222220
.word 0x1fa8 @ 0x2222224
.word 0x10200 @ 0x2222228
.thumb
Function_222222c: @ 222222c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0x54] @ 0x2222288, (=0x2070)
	lsl     r4, r1, #4
	ldr     r5, [r0, r3]
	sub     r3, #0xc8
	ldr     r0, [r0, r3]
	mov     r1, r2
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	mov     r0, #0x2
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_2002d7c
	mov     r6, r0
	add     r0, r5, r4
	bl      Function_201c294
	mov     r3, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x222228c, (=0x70809)
	lsl     r3, r3, #3
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	sub     r3, r3, r6
	str     r0, [sp, #0xc]
	add     r0, r5, r4
	mov     r1, #0x2
	mov     r2, r7
	lsr     r3, r3, #1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2222286


.align 2


.word 0x2070 @ 0x2222288
.word 0x70809 @ 0x222228c
.thumb
Function_2222290: @ 2222290 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r0, #0x50
	mul     r0, r1
	add     r2, r5, #0x4
	add     r4, r2, r0
	ldr     r1, [pc, #0x1ac] @ 0x222244c, (=0x2075)
	mov     r0, #0x16
	ldrb    r2, [r5, r1]
	sub     r1, #0xcd
	mul     r0, r2
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldr     r0, [r5, r1]
	mov     r1, #0x17
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x190] @ 0x2222450, (=0xf0e00)
	add     r0, #0x31
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0x18c] @ 0x2222454, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r3, r1
	add     r0, r2, r0
	mov     r2, r7
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x17c] @ 0x2222458, (=0x1fa8)
	mov     r1, #0x18
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x18]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	str     r0, [sp, #0x1c]
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldrb    r2, [r4, #0x16]
	ldr     r0, [pc, #0x15c] @ 0x222245c, (=0x1fac)
	mov     r3, #0x3
	lsl     r2, r2, #25
	ldr     r0, [r5, r0]
	lsr     r2, r2, #25
	bl      Function_200b60c
	ldr     r0, [pc, #0x150] @ 0x222245c, (=0x1fac)
	ldr     r1, [sp, #0x1c]
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x18]
	bl      Function_200c388
	mov     r1, #0x0
	mov     r0, r6
	add     r0, #0xb
	lsl     r7, r0, #4
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x128] @ 0x2222450, (=0xf0e00)
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x128] @ 0x2222454, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r3, r1
	add     r0, r0, r7
	bl      Function_201d78c
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x110] @ 0x2222458, (=0x1fa8)
	mov     r1, #0x19
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0xf4] @ 0x2222450, (=0xf0e00)
	add     r0, #0x41
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0xf4] @ 0x2222454, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r3, r1
	add     r0, r2, r0
	ldr     r2, [sp, #0x20]
	bl      Function_201d78c
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xe0] @ 0x2222458, (=0x1fa8)
	mov     r1, #0x1a
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x14]
	ldr     r1, [r1, #0xc]
	mov     r0, #0xe
	bl      Function_2023790
	str     r0, [sp, #0x10]
	ldrb    r0, [r4, #0x16]
	lsl     r0, r0, #25
	lsr     r0, r0, #25
	cmp     r0, #0x64
	bcs     branch_22223b0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xbc] @ 0x222245c, (=0x1fac)
	ldr     r2, [r4, #0x24]
	ldr     r3, [r4, #0x1c]
	ldr     r0, [r5, r0]
	sub     r2, r2, r3
	mov     r1, #0x0
	mov     r3, #0x6
	bl      Function_200b60c
	b       branch_22223c4
@ 0x22223b0

.thumb
branch_22223b0: @ 22223b0 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa4] @ 0x222245c, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	mov     r3, #0x6
	bl      Function_200b60c
.thumb
branch_22223c4: @ 22223c4 :thumb
	ldr     r0, [pc, #0x94] @ 0x222245c, (=0x1fac)
	ldr     r1, [sp, #0x10]
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x14]
	bl      Function_200c388
	ldr     r0, [pc, #0x80] @ 0x2222454, (=0x2070)
	add     r6, #0xc
	ldr     r0, [r5, r0]
	lsl     r4, r6, #4
	add     r0, r0, r4
	bl      Function_201c294
	mov     r6, r0
	mov     r0, #0x0
	ldr     r1, [sp, #0x10]
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r1, r6, #3
	sub     r0, r1, r0
	lsl     r0, r0, #16
	mov     r1, #0x0
	lsr     r3, r0, #16
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x64] @ 0x2222460, (=0x10200)
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x50] @ 0x2222454, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201d78c
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x38] @ 0x2222454, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x2c] @ 0x2222454, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r7
	bl      Function_201a9a4
	ldr     r0, [pc, #0x20] @ 0x2222454, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x14] @ 0x2222454, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x222244c

.word 0x2075 @ 0x222244c
.word 0xf0e00 @ 0x2222450
.word 0x2070 @ 0x2222454
.word 0x1fa8 @ 0x2222458
.word 0x1fac @ 0x222245c
.word 0x10200 @ 0x2222460
.thumb
Function_2222464: @ 2222464 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r5, r0
	ldr     r1, [pc, #0xd8] @ 0x2222548, (=0x2075)
	mov     r0, #0x16
	ldrb    r2, [r5, r1]
	sub     r1, #0xcd
	mul     r0, r2
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [r5, r1]
	mov     r1, #0x20
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xbc] @ 0x222254c, (=0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xbc] @ 0x2222550, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r3, r1
	add     r0, #0xe0
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xac] @ 0x2222554, (=0x1fa8)
	mov     r1, #0x21
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x10]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	mov     r2, #0x50
	mov     r6, r0
	mul     r2, r7
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x2222558, (=0x1fac)
	add     r2, r5, r2
	ldrh    r2, [r2, #0xa]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x7c] @ 0x2222558, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	add     r0, r4, #0x5
	lsl     r4, r0, #4
	ldr     r0, [pc, #0x58] @ 0x2222550, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r7
	lsl     r0, r0, #24
	mov     r1, #0x0
	lsr     r3, r0, #24
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x222255c, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x38] @ 0x2222550, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x20] @ 0x2222550, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0xe0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x14] @ 0x2222550, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2222546


.align 2


.word 0x2075 @ 0x2222548
.word 0xf0e00 @ 0x222254c
.word 0x2070 @ 0x2222550
.word 0x1fa8 @ 0x2222554
.word 0x1fac @ 0x2222558
.word 0x10200 @ 0x222255c
.thumb
Function_2222560: @ 2222560 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r5, r0
	ldr     r1, [pc, #0xd8] @ 0x2222644, (=0x2075)
	mov     r0, #0x16
	ldrb    r2, [r5, r1]
	sub     r1, #0xcd
	mul     r0, r2
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [r5, r1]
	mov     r1, #0x22
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xbc] @ 0x2222648, (=0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xbc] @ 0x222264c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r3, r1
	add     r0, #0xf0
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xac] @ 0x2222650, (=0x1fa8)
	mov     r1, #0x23
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x10]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	mov     r2, #0x50
	mov     r6, r0
	mul     r2, r7
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x2222654, (=0x1fac)
	add     r2, r5, r2
	ldrh    r2, [r2, #0xc]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x7c] @ 0x2222654, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	add     r0, r4, #0x6
	lsl     r4, r0, #4
	ldr     r0, [pc, #0x58] @ 0x222264c, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r7
	lsl     r0, r0, #24
	mov     r1, #0x0
	lsr     r3, r0, #24
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x2222658, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x38] @ 0x222264c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x20] @ 0x222264c, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0xf0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x14] @ 0x222264c, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2222642


.align 2


.word 0x2075 @ 0x2222644
.word 0xf0e00 @ 0x2222648
.word 0x2070 @ 0x222264c
.word 0x1fa8 @ 0x2222650
.word 0x1fac @ 0x2222654
.word 0x10200 @ 0x2222658
.thumb
Function_222265c: @ 222265c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r5, r0
	ldr     r1, [pc, #0xdc] @ 0x2222744, (=0x2075)
	mov     r0, #0x16
	ldrb    r2, [r5, r1]
	sub     r1, #0xcd
	mul     r0, r2
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [r5, r1]
	mov     r1, #0x28
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xc0] @ 0x2222748, (=0xf0e00)
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc0] @ 0x222274c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r3, r1
	add     r0, r0, r2
	mov     r2, r6
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xac] @ 0x2222750, (=0x1fa8)
	mov     r1, #0x29
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x10]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	mov     r2, #0x50
	mov     r6, r0
	mul     r2, r7
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x2222754, (=0x1fac)
	add     r2, r5, r2
	ldrh    r2, [r2, #0xe]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x80] @ 0x2222754, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	add     r0, r4, #0x7
	lsl     r4, r0, #4
	ldr     r0, [pc, #0x58] @ 0x222274c, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r7
	lsl     r0, r0, #24
	mov     r1, #0x0
	lsr     r3, r0, #24
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x2222758, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x38] @ 0x222274c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x20] @ 0x222274c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x14] @ 0x222274c, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2222744

.word 0x2075 @ 0x2222744
.word 0xf0e00 @ 0x2222748
.word 0x2070 @ 0x222274c
.word 0x1fa8 @ 0x2222750
.word 0x1fac @ 0x2222754
.word 0x10200 @ 0x2222758
.thumb
Function_222275c: @ 222275c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r4, r0
	ldr     r1, [pc, #0xdc] @ 0x2222844, (=0x2075)
	mov     r0, #0x16
	ldrb    r2, [r4, r1]
	sub     r1, #0xcd
	mul     r0, r2
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [r4, r1]
	mov     r1, #0x24
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0xc0] @ 0x2222848, (=0xf0e00)
	add     r0, #0x11
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0xc0] @ 0x222284c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r2, [r4, r2]
	mov     r3, r1
	add     r0, r2, r0
	mov     r2, r6
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xac] @ 0x2222850, (=0x1fa8)
	mov     r1, #0x25
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r4, #0x0]
	str     r0, [sp, #0x10]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	mov     r2, #0x50
	mov     r6, r0
	mul     r2, r7
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x2222854, (=0x1fac)
	add     r2, r4, r2
	ldrh    r2, [r2, #0x10]
	ldr     r0, [r4, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x80] @ 0x2222854, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r4, r0]
	mov     r1, r6
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [pc, #0x5c] @ 0x222284c, (=0x2070)
	add     r5, #0x8
	ldr     r0, [r4, r0]
	lsl     r5, r5, #4
	add     r0, r0, r5
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r7
	lsl     r0, r0, #24
	mov     r1, #0x0
	lsr     r3, r0, #24
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x2222858, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x38] @ 0x222284c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r4, r0]
	add     r0, r0, r5
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x20] @ 0x222284c, (=0x2070)
	ldr     r1, [r4, r0]
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x14] @ 0x222284c, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2222844

.word 0x2075 @ 0x2222844
.word 0xf0e00 @ 0x2222848
.word 0x2070 @ 0x222284c
.word 0x1fa8 @ 0x2222850
.word 0x1fac @ 0x2222854
.word 0x10200 @ 0x2222858
.thumb
Function_222285c: @ 222285c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r4, r0
	ldr     r1, [pc, #0xdc] @ 0x2222944, (=0x2075)
	mov     r0, #0x16
	ldrb    r2, [r4, r1]
	sub     r1, #0xcd
	mul     r0, r2
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [r4, r1]
	mov     r1, #0x26
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0xc0] @ 0x2222948, (=0xf0e00)
	add     r0, #0x21
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0xc0] @ 0x222294c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r2, [r4, r2]
	mov     r3, r1
	add     r0, r2, r0
	mov     r2, r6
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xac] @ 0x2222950, (=0x1fa8)
	mov     r1, #0x27
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r4, #0x0]
	str     r0, [sp, #0x10]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	mov     r2, #0x50
	mov     r6, r0
	mul     r2, r7
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x2222954, (=0x1fac)
	add     r2, r4, r2
	ldrh    r2, [r2, #0x12]
	ldr     r0, [r4, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x80] @ 0x2222954, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r4, r0]
	mov     r1, r6
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [pc, #0x5c] @ 0x222294c, (=0x2070)
	add     r5, #0x9
	ldr     r0, [r4, r0]
	lsl     r5, r5, #4
	add     r0, r0, r5
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r7
	lsl     r0, r0, #24
	mov     r1, #0x0
	lsr     r3, r0, #24
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x2222958, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x38] @ 0x222294c, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r4, r0]
	add     r0, r0, r5
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x20] @ 0x222294c, (=0x2070)
	ldr     r1, [r4, r0]
	mov     r0, #0x12
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x14] @ 0x222294c, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2222944

.word 0x2075 @ 0x2222944
.word 0xf0e00 @ 0x2222948
.word 0x2070 @ 0x222294c
.word 0x1fa8 @ 0x2222950
.word 0x1fac @ 0x2222954
.word 0x10200 @ 0x2222958
.thumb
Function_222295c: @ 222295c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r0, #0x50
	mul     r0, r1
	add     r2, r5, #0x4
	add     r7, r2, r0
	ldr     r1, [pc, #0x170] @ 0x2222adc, (=0x2075)
	mov     r0, #0x16
	ldrb    r2, [r5, r1]
	sub     r1, #0xcd
	mul     r0, r2
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [r5, r1]
	mov     r1, #0x1c
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x154] @ 0x2222ae0, (=0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x150] @ 0x2222ae4, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r3, r1
	add     r0, #0xd0
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x140] @ 0x2222ae8, (=0x1fa8)
	mov     r1, #0x1f
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	ldr     r1, [sp, #0x10]
	mov     r2, r0
	bl      Function_2002d7c
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x124] @ 0x2222ae4, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201c294
	lsl     r1, r0, #3
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	sub     r0, r1, r0
	lsl     r0, r0, #15
	lsr     r6, r0, #16
	add     r0, r4, #0x4
	mov     r1, #0x0
	lsl     r4, r0, #4
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x10c] @ 0x2222aec, (=0x10200)
	mov     r3, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xfc] @ 0x2222ae4, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xf0] @ 0x2222ae8, (=0x1fa8)
	mov     r1, #0x1d
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x18]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	str     r0, [sp, #0x1c]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xd8] @ 0x2222af0, (=0x1fac)
	ldrh    r2, [r7, #0x10]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0xcc] @ 0x2222af0, (=0x1fac)
	ldr     r1, [sp, #0x1c]
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x18]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [sp, #0x1c]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r3, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa8] @ 0x2222aec, (=0x10200)
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x98] @ 0x2222ae4, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	sub     r3, r6, r3
	add     r0, r0, r4
	bl      Function_201d78c
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x84] @ 0x2222ae8, (=0x1fa8)
	mov     r1, #0x1e
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x20]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	str     r0, [sp, #0x24]
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x6c] @ 0x2222af0, (=0x1fac)
	ldrh    r2, [r7, #0x12]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x60] @ 0x2222af0, (=0x1fac)
	ldr     r1, [sp, #0x24]
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x20]
	bl      Function_200c388
	mov     r1, #0x0
	ldr     r3, [sp, #0x14]
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x44] @ 0x2222aec, (=0x10200)
	ldr     r2, [sp, #0x24]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x38] @ 0x2222ae4, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	add     r3, r6, r3
	add     r0, r0, r4
	bl      Function_201d78c
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x1c] @ 0x2222ae4, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0xd0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x14] @ 0x2222ae4, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2222adc

.word 0x2075 @ 0x2222adc
.word 0xf0e00 @ 0x2222ae0
.word 0x2070 @ 0x2222ae4
.word 0x1fa8 @ 0x2222ae8
.word 0x10200 @ 0x2222aec
.word 0x1fac @ 0x2222af0
.thumb
Function_2222af4: @ 2222af4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x64] @ 0x2222b60, (=0x2075)
	mov     r6, r1
	ldrb    r1, [r5, r0]
	ldr     r3, [r5, #0x0]
	mov     r2, #PlMsg_Narc_612/4
	mov     r4, r1
	mov     r0, #0x16
	mul     r4, r0
	ldr     r3, [r3, #0xc]
	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	lsl     r2, r2, #2 @ PlMsg_Narc_612
	bl      LoadFromNARC_9
	mov     r1, #0x50
	mul     r1, r6
	add     r1, r5, r1
	ldrh    r1, [r1, #0x1c]
	mov     r7, r0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r1, #0x0
	add     r0, r4, #0x2
	lsl     r4, r0, #4
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2222b64, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x2c] @ 0x2222b68, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r3, r1
	add     r0, r0, r4
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_200b190
	ldr     r0, [pc, #0x14] @ 0x2222b68, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, r0, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2222b60

.word 0x2075 @ 0x2222b60
.word 0x10200 @ 0x2222b64
.word 0x2070 @ 0x2222b68
.thumb
Function_2222b6c: @ 2222b6c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r2, [pc, #0x38] @ 0x2222bac, (=0x2070)
	lsl     r4, r1, #4
	ldr     r5, [r0, r2]
	sub     r2, #0xc8
	ldr     r0, [r0, r2]
	mov     r1, #0x33
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2222bb0, (=0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2222baa


.align 2


.word 0x2070 @ 0x2222bac
.word 0xf0e00 @ 0x2222bb0
.thumb
Function_2222bb4: @ 2222bb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r2, [sp, #0x10]
	mov     r5, r0
	ldr     r2, [pc, #0xd0] @ 0x2222c90, (=0x2070)
	ldr     r0, [sp, #0x10]
	lsl     r6, r1, #4
	ldr     r4, [r5, r2]
	cmp     r0, #0x0
	bne     branch_2222c0e
	sub     r2, #0xc8
	ldr     r0, [r5, r2]
	mov     r1, #0x32
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	add     r0, r4, r6
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r5
	lsl     r0, r0, #16
	mov     r1, #0x0
	lsr     r3, r0, #16
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x2222c94, (=0x10200)
	mov     r2, r7
	str     r0, [sp, #0x8]
	add     r0, r4, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	b       branch_2222c84
@ 0x2222c0e

.thumb
branch_2222c0e: @ 2222c0e :thumb
	sub     r2, #0xc8
	ldr     r0, [r5, r2]
	mov     r1, #0x34
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x14]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x2222c98, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x5c] @ 0x2222c98, (=0x1fac)
	ldr     r2, [sp, #0x14]
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	add     r0, r4, r6
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r5
	lsl     r0, r0, #16
	mov     r1, #0x0
	lsr     r3, r0, #16
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x2222c94, (=0x10200)
	mov     r2, r7
	str     r0, [sp, #0x8]
	add     r0, r4, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
.thumb
branch_2222c84: @ 2222c84 :thumb
	add     r0, r4, r6
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2222c8e


.align 2


.word 0x2070 @ 0x2222c90
.word 0x10200 @ 0x2222c94
.word 0x1fac @ 0x2222c98
.thumb
Function_2222c9c: @ 2222c9c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r2, [pc, #0x38] @ 0x2222cdc, (=0x2070)
	lsl     r4, r1, #4
	ldr     r5, [r0, r2]
	sub     r2, #0xc8
	ldr     r0, [r0, r2]
	mov     r1, #0x30
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2222ce0, (=0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2222cda


.align 2


.word 0x2070 @ 0x2222cdc
.word 0xf0e00 @ 0x2222ce0
.thumb
Function_2222ce4: @ 2222ce4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r2, [sp, #0x10]
	mov     r5, r0
	ldr     r2, [pc, #0xd0] @ 0x2222dc0, (=0x2070)
	ldr     r0, [sp, #0x10]
	lsl     r6, r1, #4
	ldr     r4, [r5, r2]
	cmp     r0, #0x1
	bhi     branch_2222d3e
	sub     r2, #0xc8
	ldr     r0, [r5, r2]
	mov     r1, #0x32
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	add     r0, r4, r6
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r5
	lsl     r0, r0, #16
	mov     r1, #0x0
	lsr     r3, r0, #16
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x2222dc4, (=0x10200)
	mov     r2, r7
	str     r0, [sp, #0x8]
	add     r0, r4, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	b       branch_2222db4
@ 0x2222d3e

.thumb
branch_2222d3e: @ 2222d3e :thumb
	sub     r2, #0xc8
	ldr     r0, [r5, r2]
	mov     r1, #0x31
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x14]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x8
	bl      Function_2023790
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x2222dc8, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x5c] @ 0x2222dc8, (=0x1fac)
	ldr     r2, [sp, #0x14]
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	add     r0, r4, r6
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r5
	lsl     r0, r0, #16
	mov     r1, #0x0
	lsr     r3, r0, #16
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x2222dc4, (=0x10200)
	mov     r2, r7
	str     r0, [sp, #0x8]
	add     r0, r4, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
.thumb
branch_2222db4: @ 2222db4 :thumb
	add     r0, r4, r6
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2222dbe


.align 2


.word 0x2070 @ 0x2222dc0
.word 0x10200 @ 0x2222dc4
.word 0x1fac @ 0x2222dc8
.thumb
Function_2222dcc: @ 2222dcc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r3, r0
	ldr     r0, [pc, #0x4c] @ 0x2222e20, (=0x2070)
	mov     r6, r2
	ldr     r5, [r3, r0]
	ldr     r3, [r3, #0x0]
	lsl     r4, r1, #4
	ldr     r2, [pc, #0x44] @ 0x2222e24, (=0x286) PlMsg_Narc_646
	ldr     r3, [r3, #0xc]
	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	bl      LoadFromNARC_9
	mov     r1, r6
	mov     r7, r0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2222e28, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_200b190
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2222e20

.word 0x2070 @ 0x2222e20
.word 0x286 @ 0x2222e24
.word 0x10200 @ 0x2222e28
.thumb
Function_2222e2c: @ 2222e2c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldr     r0, [pc, #0x58] @ 0x2222e8c, (=0x2070)
	lsl     r4, r1, #4
	ldr     r5, [r6, r0]
	mov     r0, r2
	mov     r1, #0xa
	bl      LoadMoveData
	bl      Function_209577c
	ldr     r3, [r6, #0x0]
	mov     r7, r0
	ldr     r3, [r3, #0xc]
	mov     r0, #0x0
	mov     r1, #PlMsg_Narc
	mov     r2, #PlMsg_Narc_210
	bl      LoadFromNARC_9
	mov     r1, r7
	str     r0, [sp, #0x10]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x2222e90, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x10]
	bl      Function_200b190
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2222e8c

.word 0x2070 @ 0x2222e8c
.word 0x10200 @ 0x2222e90
.thumb
Function_2222e94: @ 2222e94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r2, [pc, #0x54] @ 0x2222ef0, (=0x2070)
	lsl     r4, r1, #4
	ldr     r5, [r0, r2]
	sub     r2, #0xc8
	ldr     r0, [r0, r2]
	mov     r1, #0x35
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	add     r0, r5, r4
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r1, r0, r6
	lsr     r0, r1, #31
	add     r0, r1, r0
	lsl     r0, r0, #15
	mov     r1, #0x0
	lsr     r3, r0, #16
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2222ef4, (=0xf0e00)
	mov     r2, r7
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2222ef0

.word 0x2070 @ 0x2222ef0
.word 0xf0e00 @ 0x2222ef4
.thumb
Function_2222ef8: @ 2222ef8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0x6c] @ 0x2222f6c, (=0x2070)
	lsl     r4, r1, #4
	ldr     r5, [r0, r3]
	cmp     r2, #0x0
	beq     branch_2222f10
	cmp     r2, #0x1
	beq     branch_2222f1e
	cmp     r2, #0x2
	beq     branch_2222f2c
	b       branch_2222f38
@ 0x2222f10

.thumb
branch_2222f10: @ 2222f10 :thumb
	sub     r3, #0xc8
	ldr     r0, [r0, r3]
	mov     r1, #0x36
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_2222f38
@ 0x2222f1e

.thumb
branch_2222f1e: @ 2222f1e :thumb
	sub     r3, #0xc8
	ldr     r0, [r0, r3]
	mov     r1, #0x38
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_2222f38
@ 0x2222f2c

.thumb
branch_2222f2c: @ 2222f2c :thumb
	sub     r3, #0xc8
	ldr     r0, [r0, r3]
	mov     r1, #0x37
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
.thumb
branch_2222f38: @ 2222f38 :thumb
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	mov     r3, #0x38
	bl      Function_2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2222f70, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2222f6c

.word 0x2070 @ 0x2222f6c
.word 0x10200 @ 0x2222f70
.thumb
Function_2222f74: @ 2222f74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	ldr     r0, [pc, #0x11c] @ 0x2223098, (=0x2070)
	lsl     r6, r1, #4
	ldr     r4, [r5, r0]
	sub     r0, #0xc8
	ldr     r0, [r5, r0]
	mov     r1, #0x2e
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	ldr     r1, [sp, #0x18]
	mov     r2, r0
	bl      Function_2002d7c
	str     r0, [sp, #0x1c]
	add     r0, r4, r6
	bl      Function_201c294
	lsl     r1, r0, #3
	ldr     r0, [sp, #0x1c]
	ldr     r2, [sp, #0x18]
	sub     r0, r1, r0
	lsr     r7, r0, #1
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe4] @ 0x222309c, (=0xf0e00)
	mov     r3, r7
	str     r0, [sp, #0x8]
	add     r0, r4, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xd4] @ 0x22230a0, (=0x1fa8)
	mov     r1, #0x2c
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x20]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x6
	bl      Function_2023790
	mov     r1, #0x0
	str     r0, [sp, #0x24]
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xb8] @ 0x22230a4, (=0x1fac)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0xac] @ 0x22230a4, (=0x1fac)
	ldr     r1, [sp, #0x24]
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x20]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [sp, #0x24]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r3, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x84] @ 0x222309c, (=0xf0e00)
	ldr     r2, [sp, #0x24]
	str     r0, [sp, #0x8]
	add     r0, r4, r6
	sub     r3, r7, r3
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x6c] @ 0x22230a0, (=0x1fa8)
	mov     r1, #0x2d
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x28]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x6
	bl      Function_2023790
	mov     r1, #0x0
	str     r0, [sp, #0x2c]
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x50] @ 0x22230a4, (=0x1fac)
	ldr     r2, [sp, #0x14]
	ldr     r0, [r5, r0]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [pc, #0x44] @ 0x22230a4, (=0x1fac)
	ldr     r1, [sp, #0x2c]
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x28]
	bl      Function_200c388
	mov     r1, #0x0
	ldr     r3, [sp, #0x1c]
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x222309c, (=0xf0e00)
	ldr     r2, [sp, #0x2c]
	str     r0, [sp, #0x8]
	add     r0, r4, r6
	add     r3, r7, r3
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x28]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x2c]
	bl      Function_20237bc_FreeMsg
	add     r0, r4, r6
	bl      Function_201a9a4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2223098

.word 0x2070 @ 0x2223098
.word 0xf0e00 @ 0x222309c
.word 0x1fa8 @ 0x22230a0
.word 0x1fac @ 0x22230a4
.thumb
Function_22230a8: @ 22230a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	lsl     r4, r1, #4
	ldr     r1, [r0, #0x0]
	ldr     r2, [pc, #0x5c] @ 0x2223110, (=0x2070)
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	ldr     r5, [r0, r2]
	cmp     r1, #0x4
	bne     branch_22230c8
	sub     r2, #0xc8
	ldr     r0, [r0, r2]
	mov     r1, #0x3b
	bl      Function_200b1ec_CallMsgDecrypt
	b       branch_22230d2
@ 0x22230c8

.thumb
branch_22230c8: @ 22230c8 :thumb
	sub     r2, #0xc8
	ldr     r0, [r0, r2]
	mov     r1, #0x3a
	bl      Function_200b1ec_CallMsgDecrypt
.thumb
branch_22230d2: @ 22230d2 :thumb
	mov     r6, r0
	mov     r0, #0x2
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_2002d7c
	mov     r7, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x2223114, (=0x70809)
	mov     r3, #0x60
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	sub     r3, r3, r7
	str     r0, [sp, #0xc]
	add     r0, r5, r4
	mov     r1, #0x2
	mov     r2, r6
	lsr     r3, r3, #1
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2223110

.word 0x2070 @ 0x2223110
.word 0x70809 @ 0x2223114
.thumb
Function_2223118: @ 2223118 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x2223170, (=0x207a)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x7
	bne     branch_222312e
	sub     r0, #0xa
	ldr     r5, [r4, r0]
	add     r5, #0x80
	b       branch_2223134
@ 0x222312e

.thumb
branch_222312e: @ 222312e :thumb
	sub     r0, #0xa
	ldr     r5, [r4, r0]
	add     r5, #0x50
.thumb
branch_2223134: @ 2223134 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x34] @ 0x2223174, (=0x1fa8)
	mov     r1, #0x3c
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2223178, (=0x10200)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2223170

.word 0x207a @ 0x2223170
.word 0x1fa8 @ 0x2223174
.word 0x10200 @ 0x2223178
.thumb
Function_222317c: @ 222317c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	str     r1, [sp, #0x10]
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x130] @ 0x22232b8, (=0x2070)
	ldr     r1, [r1, #0xc]
	ldr     r4, [r5, r0]
	mov     r0, #0x6
	lsl     r6, r2, #4
	bl      Function_2023790
	mov     r7, r0
	ldr     r0, [pc, #0x124] @ 0x22232bc, (=0x1fa8)
	mov     r1, #0x2b
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x14]
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x114] @ 0x22232c0, (=0xf0e00)
	ldr     r2, [sp, #0x14]
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r0, r4, r6
	mov     r3, #0x28
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xf8] @ 0x22232bc, (=0x1fa8)
	mov     r1, #0x2e
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	ldr     r1, [sp, #0x18]
	mov     r2, r0
	bl      Function_2002d7c
	str     r0, [sp, #0x1c]
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xdc] @ 0x22232c0, (=0xf0e00)
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r0, r4, r6
	mov     r3, #0x50
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xc0] @ 0x22232bc, (=0x1fa8)
	mov     r1, #0x2d
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	ldr     r0, [pc, #0xb0] @ 0x22232c4, (=0x1fac)
	ldrb    r2, [r2, #0x3]
	ldr     r0, [r5, r0]
	mov     r3, #0x2
	bl      Function_200b60c
	ldr     r0, [pc, #0xa4] @ 0x22232c4, (=0x1fac)
	ldr     r2, [sp, #0x20]
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      Function_200c388
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x22232c0, (=0xf0e00)
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r3, #0x50
	add     r0, r4, r6
	mov     r2, r7
	str     r1, [sp, #0xc]
	str     r3, [sp, #0x1c]
	bl      Function_201d78c
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x6c] @ 0x22232bc, (=0x1fa8)
	mov     r1, #0x2c
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	str     r0, [sp, #0x24]
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	ldr     r0, [pc, #0x60] @ 0x22232c4, (=0x1fac)
	ldrb    r2, [r2, #0x2]
	ldr     r0, [r5, r0]
	mov     r3, #0x2
	bl      Function_200b60c
	ldr     r0, [pc, #0x54] @ 0x22232c4, (=0x1fac)
	ldr     r2, [sp, #0x24]
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r0
	bl      Function_2002d7c
	mov     r5, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x22232c0, (=0xf0e00)
	mov     r3, #0x50
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r0, r4, r6
	mov     r2, r7
	sub     r3, r3, r5
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     r0, r4, r6
	bl      Function_201a9a4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x22232b8

.word 0x2070 @ 0x22232b8
.word 0x1fa8 @ 0x22232bc
.word 0xf0e00 @ 0x22232c0
.word 0x1fac @ 0x22232c4
.thumb
Function_22232c8: @ 22232c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r1, [sp, #0x10]
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x222338c, (=0x2070)
	ldr     r1, [r1, #0xc]
	ldr     r4, [r5, r0]
	mov     r0, #0x6
	lsl     r6, r2, #4
	bl      Function_2023790
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0xac] @ 0x2223390, (=0x1fa8)
	mov     r1, #0x2b
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	ldr     r1, [sp, #0x18]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r7, r0
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	add     r7, #0x28
	mov     r0, #0x50
	sub     r0, r0, r7
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r2, r7, #16
	str     r0, [sp, #0x4]
	add     r0, r4, r6
	mov     r1, #0x0
	lsr     r2, r2, #16
	mov     r3, #0x18
	bl      Function_201ae78
	ldr     r0, [pc, #0x70] @ 0x2223390, (=0x1fa8)
	mov     r1, #0x2c
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	ldr     r0, [pc, #0x5c] @ 0x2223394, (=0x1fac)
	ldrb    r2, [r2, #0x2]
	ldr     r0, [r5, r0]
	mov     r3, #0x2
	bl      Function_200b60c
	ldr     r0, [pc, #0x50] @ 0x2223394, (=0x1fac)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r5, r0]
	mov     r2, r7
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [sp, #0x14]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r5, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x2223398, (=0xf0e00)
	mov     r3, #0x50
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	ldr     r2, [sp, #0x14]
	add     r0, r4, r6
	sub     r3, r3, r5
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	add     r0, r4, r6
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222338a


.align 2


.word 0x2070 @ 0x222338c
.word 0x1fa8 @ 0x2223390
.word 0x1fac @ 0x2223394
.word 0xf0e00 @ 0x2223398
.thumb
Function_222339c: @ 222339c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_2223422
	mov     r0, r4
	mov     r7, r5
	str     r0, [sp, #0x8]
	mov     r6, r5
	add     r7, #0x1b
.thumb
branch_22233ba: @ 22233ba :thumb
	ldr     r0, [pc, #0x88] @ 0x2223444, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0x8]
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrh    r0, [r6, #0x8]
	cmp     r0, #0x0
	beq     branch_222340a
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	lsl     r3, r4, #16
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	lsr     r3, r3, #16
	bl      Function_2221c54
	ldrb    r0, [r7, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bne     branch_22233f6
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2223448
.thumb
branch_22233f6: @ 22233f6 :thumb
	ldr     r0, [r6, #0x4]
	bl      Function_208e9f0
	cmp     r0, #0x7
	bne     branch_222340a
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_22234a8
.thumb
branch_222340a: @ 222340a :thumb
	ldr     r0, [sp, #0x8]
	add     r6, #0x50
	add     r0, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	add     r7, #0x50
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r4, r0
	blt     branch_22233ba
.thumb
branch_2223422: @ 2223422 :thumb
	ldr     r0, [r5, #0x0]
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2223438
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_22221c8
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2223438

.thumb
branch_2223438: @ 2223438 :thumb
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_22221c8
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2223444

.word 0x2070 @ 0x2223444
.thumb
Function_2223448: @ 2223448 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	mov     r6, r1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x22234a4, (=0x2070)
	lsl     r4, r6, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	add     r0, r0, r4
	mov     r2, #0x38
	mov     r3, #0x20
	bl      Function_201ae78
	mov     r2, #0x40
	str     r2, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x22234a4, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r3, #0x18
	add     r0, r0, r4
	bl      Function_201ae78
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r6
	mov     r3, #0x38
	bl      Function_2221e50
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r6
	mov     r3, #0x40
	bl      Function_2221ed0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22234a4

.word 0x2070 @ 0x22234a4
.thumb
Function_22234a8: @ 22234a8 :thumb
	push    {r3,lr}
	mov     r2, #0x50
	mul     r2, r1
	add     r2, r0, r2
	ldrb    r2, [r2, #0x1b]
	lsl     r2, r2, #24
	lsr     r2, r2, #31
	bne     branch_22234c4
	mov     r2, #0x20
	str     r2, [sp, #0x0]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2221e08
.thumb
branch_22234c4: @ 22234c4 :thumb
	pop     {r3,pc}
@ 0x22234c6


.align 2, 0


.thumb
Function_22234c8: @ 22234c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x7c] @ 0x222354c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x74] @ 0x222354c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	add     r0, #0x10
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x68] @ 0x222354c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x5c] @ 0x222354c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x11]
	bl      Function_2223550
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xf
	bl      Function_222222c
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r4, r0
	ldrb    r0, [r0, #0x1b]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bne     branch_2223536
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x12
	bl      Function_222222c
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x13
	bl      Function_222222c
	pop     {r4,pc}
@ 0x2223536

.thumb
branch_2223536: @ 2223536 :thumb
	ldr     r0, [pc, #0x14] @ 0x222354c, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, #0x20
	bl      Function_201a9a4
	ldr     r0, [pc, #0x8] @ 0x222354c, (=0x2070)
	ldr     r0, [r4, r0]
	add     r0, #0x30
	bl      Function_201a9a4
	pop     {r4,pc}
@ 0x222354c

.word 0x2070 @ 0x222354c
.thumb
Function_2223550: @ 2223550 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	ldr     r0, [pc, #0x144] @ 0x222369c, (=0x2070)
	mov     r6, r1
	ldr     r0, [r4, r0]
	ldr     r1, [r4, #0x0]
	str     r0, [sp, #0x18]
	mov     r0, #0x50
	mov     r7, r6
	add     r5, r4, #0x4
	mul     r7, r0
	add     r0, r5, r7
	str     r0, [sp, #0x14]
	ldr     r1, [r1, #0xc]
	mov     r0, #0xc
	bl      Function_2023790
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x128] @ 0x22236a0, (=0x1fa8)
	ldr     r1, [pc, #0x128] @ 0x22236a4, (=0x2228ec4)
	lsl     r2, r6, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r1, r2]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	ldr     r0, [r5, r7]
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x118] @ 0x22236a8, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_200b5cc
	ldr     r0, [pc, #0x10c] @ 0x22236a8, (=0x1fac)
	ldr     r1, [sp, #0x10]
	ldr     r0, [r4, r0]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x14]
	mov     r5, #0x0
	ldrb    r0, [r0, #0x16]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bne     branch_22235e4
	ldr     r0, [sp, #0x14]
	ldrb    r0, [r0, #0x17]
	lsl     r1, r0, #24
	lsr     r1, r1, #31
	bne     branch_22235e4
	lsl     r0, r0, #29
	lsr     r0, r0, #29
	bne     branch_22235d4
	ldr     r0, [pc, #0xd8] @ 0x22236a0, (=0x1fa8)
	mov     r1, #0x10
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	b       branch_22235e4
@ 0x22235d4

.thumb
branch_22235d4: @ 22235d4 :thumb
	cmp     r0, #0x1
	bne     branch_22235e4
	ldr     r0, [pc, #0xc4] @ 0x22236a0, (=0x1fa8)
	mov     r1, #0x11
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
.thumb
branch_22235e4: @ 22235e4 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, #0x2
	mov     r2, #0x0
	bl      Function_2002d7c
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r5, #0x0
	bne     branch_22235fc
	mov     r7, #0x0
	mov     r4, r7
	b       branch_222360c
@ 0x22235fc

.thumb
branch_22235fc: @ 22235fc :thumb
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      Function_2002d7c
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	mov     r4, #0x8
.thumb
branch_222360c: @ 222360c :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r6
	sub     r0, r0, r7
	sub     r1, r0, r4
	lsr     r0, r1, #31
	add     r0, r1, r0
	lsl     r0, r0, #23
	lsr     r7, r0, #24
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x22236ac, (=0x70809)
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x2
	mov     r3, r7
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	cmp     r5, #0x0
	beq     branch_2223692
	ldr     r0, [sp, #0x14]
	ldrb    r0, [r0, #0x17]
	lsl     r0, r0, #29
	lsr     r0, r0, #29
	bne     branch_2223670
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x22236b0, (=0xa0b00)
	add     r3, r7, r6
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	ldr     r0, [sp, #0x18]
	mov     r2, r5
	add     r3, r4, r3
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	b       branch_222368c
@ 0x2223670

.thumb
branch_2223670: @ 2223670 :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x22236b4, (=0xc0d00)
	add     r3, r7, r6
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	ldr     r0, [sp, #0x18]
	mov     r2, r5
	add     r3, r4, r3
	str     r1, [sp, #0xc]
	bl      Function_201d78c
.thumb
branch_222368c: @ 222368c :thumb
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
.thumb
branch_2223692: @ 2223692 :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222369c

.word 0x2070 @ 0x222369c
.word 0x1fa8 @ 0x22236a0
.word 0x2228ec4 @ 0x22236a4
.word 0x1fac @ 0x22236a8
.word 0x70809 @ 0x22236ac
.word 0xa0b00 @ 0x22236b0
.word 0xc0d00 @ 0x22236b4
.thumb
Function_22236b8: @ 22236b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	ldr     r0, [pc, #0x128] @ 0x22237e8, (=0x2075)
	mov     r1, #0x6
	ldrb    r2, [r5, r0]
	.hword  0x1f40 @ sub r0, r0, #0x5
	mul     r1, r2
	lsl     r1, r1, #16
	lsr     r6, r1, #16
	ldr     r1, [r5, r0]
	lsl     r0, r6, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r6, #0x1
	lsl     r0, r0, #4
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x10c] @ 0x22237ec, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0x18]
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r6, #0x2
	lsl     r0, r0, #4
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0xf8] @ 0x22237ec, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0x14]
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r6, #0x3
	lsl     r0, r0, #4
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xe4] @ 0x22237ec, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0x10]
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r6, #0x4
	lsl     r0, r0, #4
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xd0] @ 0x22237ec, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xc0] @ 0x22237ec, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x50
	bl      Function_201ada4_ClearTextBox
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldr     r3, [r5, #0x0]
	mov     r0, r5
	ldrb    r3, [r3, #0x11]
	mov     r1, r6
	bl      Function_2221c54
	mov     r0, r5
	str     r0, [sp, #0x1c]
	add     r0, #0x34
	mov     r4, #0x0
	add     r7, r6, #0x1
	str     r0, [sp, #0x1c]
.thumb
branch_2223752: @ 2223752 :thumb
	ldr     r0, [r5, #0x0]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x1c]
	lsl     r1, r4, #3
	add     r0, r0, r2
	str     r1, [sp, #0x20]
	ldrh    r1, [r0, r1]
	str     r0, [sp, #0x24]
	cmp     r1, #0x0
	beq     branch_2223794
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x78] @ 0x22237f0, (=0x70809)
	ldr     r3, [pc, #0x7c] @ 0x22237f4, (=0x2228eb0)
	lsl     r6, r4, #2
	str     r0, [sp, #0x8]
	ldr     r3, [r3, r6]
	mov     r0, r5
	add     r2, r7, r4
	bl      Function_22220cc
	ldr     r2, [sp, #0x20]
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	add     r1, r1, r2
	add     r2, r7, r4
	bl      Function_222317c
.thumb
branch_2223794: @ 2223794 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x4
	bcc     branch_2223752
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x12
	bl      Function_222222c
	ldr     r0, [pc, #0x40] @ 0x22237ec, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0x18]
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x34] @ 0x22237ec, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0x14]
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x28] @ 0x22237ec, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0x10]
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r0, [pc, #0x1c] @ 0x22237ec, (=0x2070)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	bl      Function_201a9a4
	ldr     r1, [pc, #0xc] @ 0x22237e8, (=0x2075)
	mov     r0, #0x1
	ldrb    r2, [r5, r1]
	eor     r0, r2
	strb    r0, [r5, r1]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x22237e6


.align 2


.word 0x2075 @ 0x22237e8
.word 0x2070 @ 0x22237ec
.word 0x70809 @ 0x22237f0
.word 0x2228eb0 @ 0x22237f4
.thumb
Function_22237f8: @ 22237f8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x208] @ 0x2223a08, (=0x2075)
	mov     r1, #0x16
	ldrb    r2, [r5, r0]
	.hword  0x1f40 @ sub r0, r0, #0x5
	mov     r4, r2
	mul     r4, r1
	ldr     r1, [r5, r0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x1f0] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x1e0] @ 0x2223a0c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0xe0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x1d4] @ 0x2223a0c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0xf0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x1c8] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x1b8] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x1a8] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, #0x12
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x198] @ 0x2223a0c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0xd0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x18c] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x17c] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	lsl     r0, r4, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x170] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, r4
	add     r0, #0xa
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x15c] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, r4
	add     r0, #0xb
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x14c] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, r4
	add     r0, #0xc
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x138] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x5
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x128] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x6
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x118] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x7
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x108] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, r4
	add     r0, #0x8
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xf8] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	mov     r0, r4
	add     r0, #0x9
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xe4] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x4
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xd4] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x1
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xc4] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x2
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xb4] @ 0x2223a0c, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x3
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldr     r3, [r5, #0x0]
	mov     r0, r5
	ldrb    r3, [r3, #0x11]
	mov     r1, r4
	bl      Function_2221c54
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrb    r1, [r1, #0x11]
	bl      Function_222295c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r2, [r5, #0x0]
	mov     r1, r4
	ldrb    r2, [r2, #0x11]
	mov     r0, r5
	add     r1, #0xa
	bl      Function_2221ed0
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrb    r1, [r1, #0x11]
	bl      Function_2222290
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrb    r1, [r1, #0x11]
	bl      Function_2222464
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrb    r1, [r1, #0x11]
	bl      Function_2222560
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrb    r1, [r1, #0x11]
	bl      Function_222265c
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrb    r1, [r1, #0x11]
	bl      Function_222275c
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrb    r1, [r1, #0x11]
	bl      Function_222285c
	ldr     r2, [r5, #0x0]
	mov     r0, r5
	ldrb    r2, [r2, #0x11]
	add     r1, r4, #0x1
	bl      Function_2221fa8
	ldr     r2, [r5, #0x0]
	mov     r0, r5
	ldrb    r2, [r2, #0x11]
	add     r1, r4, #0x3
	bl      Function_2222030
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrb    r1, [r1, #0x11]
	bl      Function_2222af4
	mov     r0, r5
	mov     r1, #0x15
	mov     r2, #0x13
	bl      Function_222222c
	ldr     r1, [pc, #0xc] @ 0x2223a08, (=0x2075)
	mov     r0, #0x1
	ldrb    r2, [r5, r1]
	eor     r0, r2
	strb    r0, [r5, r1]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2223a08

.word 0x2075 @ 0x2223a08
.word 0x2070 @ 0x2223a0c
.thumb
Function_2223a10: @ 2223a10 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x14c] @ 0x2223b64, (=0x2075)
	mov     r1, #0xb
	ldrb    r2, [r5, r0]
	.hword  0x1f40 @ sub r0, r0, #0x5
	ldr     r0, [r5, r0]
	mov     r4, r2
	mul     r4, r1
	add     r0, #0x60
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x138] @ 0x2223b68, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x70
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x12c] @ 0x2223b68, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x80
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x120] @ 0x2223b68, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x90
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x114] @ 0x2223b68, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0xa0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x108] @ 0x2223b68, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x1
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xf8] @ 0x2223b68, (=0x2070)
	ldr     r1, [r5, r0]
	lsl     r0, r4, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xec] @ 0x2223b68, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x2
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xdc] @ 0x2223b68, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x3
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xcc] @ 0x2223b68, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x5
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xbc] @ 0x2223b68, (=0x2070)
	ldr     r1, [r5, r0]
	add     r0, r4, #0x4
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x0]
	mov     r2, r5
	ldrb    r3, [r0, #0x11]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x50
	add     r2, #0x34
	mul     r1, r3
	add     r1, r2, r1
	lsl     r0, r0, #3
	add     r7, r1, r0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x6
	str     r2, [sp, #0x4]
	bl      Function_2221c54
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2222170
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x78] @ 0x2223b6c, (=0xf0e00)
	mov     r2, r4
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #0x0]
	ldrh    r1, [r7, #0x0]
	add     r3, #0x34
	ldrb    r3, [r3, #0x0]
	mov     r0, r5
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x6c] @ 0x2223b70, (=0x2228eb0)
	ldr     r3, [r3, r6]
	bl      Function_22220cc
	mov     r0, r5
	mov     r1, #0x8
	bl      Function_2222b6c
	ldrb    r2, [r7, #0x6]
	mov     r0, r5
	add     r1, r4, #0x2
	bl      Function_2222bb4
	mov     r0, r5
	mov     r1, #0x9
	bl      Function_2222c9c
	ldrb    r2, [r7, #0x7]
	mov     r0, r5
	add     r1, r4, #0x3
	bl      Function_2222ce4
	ldrh    r2, [r7, #0x0]
	mov     r0, r5
	add     r1, r4, #0x4
	bl      Function_2222dcc
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_2222e94
	ldrb    r2, [r7, #0x5]
	mov     r0, r5
	add     r1, r4, #0x5
	bl      Function_2222ef8
	ldrb    r2, [r7, #0x2]
	ldrb    r3, [r7, #0x3]
	mov     r0, r5
	add     r1, r4, #0x1
	bl      Function_2222f74
	ldr     r1, [pc, #0xc] @ 0x2223b64, (=0x2075)
	mov     r0, #0x1
	ldrb    r2, [r5, r1]
	eor     r0, r2
	strb    r0, [r5, r1]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2223b64

.word 0x2075 @ 0x2223b64
.word 0x2070 @ 0x2223b68
.word 0xf0e00 @ 0x2223b6c
.word 0x2228eb0 @ 0x2223b70
.thumb
Function_2223b74: @ 2223b74 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [pc, #0x114] @ 0x2223c90, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x108] @ 0x2223c90, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x10
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xfc] @ 0x2223c90, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xf0] @ 0x2223c90, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xe4] @ 0x2223c90, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xd8] @ 0x2223c90, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x50
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [r5, #0x0]
	mov     r0, r5
	ldrb    r3, [r3, #0x11]
	mov     r2, r1
	bl      Function_2221c54
	mov     r0, r5
	mov     r6, #0x0
	str     r0, [sp, #0x10]
	add     r0, #0x34
	ldr     r7, [pc, #0xb8] @ 0x2223c94, (=0x2228eb0)
	mov     r4, r6
	str     r0, [sp, #0x10]
.thumb
branch_2223be0: @ 2223be0 :thumb
	ldr     r0, [r5, #0x0]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x10]
	add     r0, r0, r2
	ldrh    r1, [r0, r4]
	str     r0, [sp, #0xc]
	cmp     r1, #0x0
	beq     branch_2223c18
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x2223c98, (=0x70809)
	add     r2, r6, #0x1
	str     r0, [sp, #0x8]
	ldr     r3, [r7, #0x0]
	mov     r0, r5
	bl      Function_22220cc
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	add     r1, r1, r4
	add     r2, r6, #0x1
	bl      Function_222317c
.thumb
branch_2223c18: @ 2223c18 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, #0x4
	bcc     branch_2223be0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x6c] @ 0x2223c98, (=0x70809)
	mov     r2, #0x5
	str     r0, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrh    r1, [r1, #0x24]
	mov     r3, #0x49
	bl      Function_22220cc
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	ldrh    r0, [r0, #0x24]
	bl      LoadMoveData
	add     r1, sp, #0x14
	strb    r0, [r1, #0x2]
	ldrb    r0, [r1, #0x2]
	mov     r2, #0x5
	strb    r0, [r1, #0x3]
	mov     r0, r5
	add     r1, sp, #0x14
	bl      Function_222317c
	ldr     r0, [pc, #0x34] @ 0x2223c90, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x10
	bl      Function_201a9a4
	ldr     r0, [pc, #0x2c] @ 0x2223c90, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x20
	bl      Function_201a9a4
	ldr     r0, [pc, #0x20] @ 0x2223c90, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x30
	bl      Function_201a9a4
	ldr     r0, [pc, #0x18] @ 0x2223c90, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201a9a4
	ldr     r0, [pc, #0xc] @ 0x2223c90, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x50
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2223c8e


.align 2


.word 0x2070 @ 0x2223c90
.word 0x2228eb0 @ 0x2223c94
.word 0x70809 @ 0x2223c98
.thumb
Function_2223c9c: @ 2223c9c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x1b8] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x1ac] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x1a0] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x194] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x10
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x188] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x17c] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x60
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x170] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x50
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x164] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x70
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x158] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x90
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x14c] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0xa0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x140] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x80
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x134] @ 0x2223e5c, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0xb0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [r5, #0x0]
	mov     r0, r5
	ldrb    r3, [r3, #0x11]
	mov     r2, r1
	bl      Function_2221c54
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2222170
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2222b6c
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2222c9c
	mov     r0, r5
	mov     r1, #0x9
	bl      Function_2222e94
	ldr     r1, [r5, #0x0]
	mov     r0, r1
	add     r0, #0x34
	ldrb    r3, [r0, #0x0]
	cmp     r3, #0x4
	bcs     branch_2223dd8
	ldrb    r1, [r1, #0x11]
	mov     r2, r5
	mov     r0, #0x50
	add     r2, #0x34
	mul     r0, r1
	add     r7, r2, r0
	lsl     r0, r3, #3
	str     r0, [sp, #0xc]
	add     r4, r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xd4] @ 0x2223e60, (=0xf0e00)
	lsl     r6, r3, #2
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r3, [pc, #0xd0] @ 0x2223e64, (=0x2228eb0)
	ldrh    r1, [r7, r1]
	ldr     r3, [r3, r6]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_22220cc
	ldrb    r2, [r4, #0x6]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2222bb4
	ldrb    r2, [r4, #0x7]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2222ce4
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	ldrh    r2, [r7, r2]
	mov     r1, #0x8
	bl      Function_2222dcc
	ldrb    r2, [r4, #0x5]
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_2222ef8
	ldrb    r2, [r4, #0x2]
	ldrb    r3, [r4, #0x3]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2222f74
	b       branch_2223e4e
@ 0x2223dd8

.thumb
branch_2223dd8: @ 2223dd8 :thumb
	ldrh    r0, [r1, #0x24]
	mov     r1, #0x5
	bl      LoadMoveData
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x2223e60, (=0xf0e00)
	mov     r2, #0x1
	str     r0, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrh    r1, [r1, #0x24]
	mov     r3, #0x49
	bl      Function_22220cc
	ldr     r2, [r5, #0x0]
	mov     r0, r5
	ldrh    r2, [r2, #0x24]
	mov     r1, #0x8
	bl      Function_2222dcc
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	ldrh    r0, [r0, #0x24]
	bl      LoadMoveData
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2222bb4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	ldrh    r0, [r0, #0x24]
	bl      LoadMoveData
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2222ce4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldrh    r0, [r0, #0x24]
	bl      LoadMoveData
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_2222ef8
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r4
	mov     r3, r4
	bl      Function_2222f74
.thumb
branch_2223e4e: @ 2223e4e :thumb
	mov     r0, r5
	mov     r1, #0xb
	bl      Function_22230a8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2223e5a


.align 2


.word 0x2070 @ 0x2223e5c
.word 0xf0e00 @ 0x2223e60
.word 0x2228eb0 @ 0x2223e64
.thumb
Function_2223e68: @ 2223e68 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [pc, #0xe0] @ 0x2223f50, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xd4] @ 0x2223f50, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x10
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xc8] @ 0x2223f50, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xbc] @ 0x2223f50, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xb0] @ 0x2223f50, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [r5, #0x0]
	mov     r0, r5
	ldrb    r3, [r3, #0x11]
	mov     r2, r1
	bl      Function_2221c54
	mov     r0, r5
	mov     r6, #0x0
	str     r0, [sp, #0x10]
	add     r0, #0x34
	ldr     r7, [pc, #0x90] @ 0x2223f54, (=0x2228eb0)
	mov     r4, r6
	str     r0, [sp, #0x10]
.thumb
branch_2223ec8: @ 2223ec8 :thumb
	ldr     r0, [r5, #0x0]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x10]
	add     r0, r0, r2
	ldrh    r1, [r0, r4]
	str     r0, [sp, #0xc]
	cmp     r1, #0x0
	beq     branch_2223f00
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x70] @ 0x2223f58, (=0x70809)
	add     r2, r6, #0x1
	str     r0, [sp, #0x8]
	ldr     r3, [r7, #0x0]
	mov     r0, r5
	bl      Function_22220cc
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	add     r1, r1, r4
	add     r2, r6, #0x1
	bl      Function_222317c
.thumb
branch_2223f00: @ 2223f00 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, #0x4
	bcc     branch_2223ec8
	ldr     r2, [r5, #0x0]
	mov     r1, #0x25
	ldrh    r0, [r2, #0x22]
	ldr     r2, [r2, #0xc]
	bl      GetItemData
	cmp     r0, #0x0
	bne     branch_2223f22
	mov     r0, r5
	mov     r1, #0x5e
	bl      Function_22221c8
.thumb
branch_2223f22: @ 2223f22 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2223f50, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x10
	bl      Function_201a9a4
	ldr     r0, [pc, #0x20] @ 0x2223f50, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x20
	bl      Function_201a9a4
	ldr     r0, [pc, #0x18] @ 0x2223f50, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x30
	bl      Function_201a9a4
	ldr     r0, [pc, #0xc] @ 0x2223f50, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2223f4e


.align 2


.word 0x2070 @ 0x2223f50
.word 0x2228eb0 @ 0x2223f54
.word 0x70809 @ 0x2223f58
.thumb
Function_2223f5c: @ 2223f5c :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x0]
	mov     r3, r1
	ldrb    r5, [r4, #0x11]
	mov     r1, r0
	mov     r4, #0x50
	add     r1, #0x34
	mul     r4, r5
	add     r4, r1, r4
	lsl     r1, r2, #3
	add     r1, r4, r1
	mov     r2, r3
	bl      Function_22232c8
	pop     {r3-r5,pc}
@ 0x2223f7a


.align 2, 0


.thumb
Function_2223f7c: @ 2223f7c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [pc, #0x14c] @ 0x22240d0, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x140] @ 0x22240d0, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x134] @ 0x22240d0, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x128] @ 0x22240d0, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x10
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x11c] @ 0x22240d0, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x110] @ 0x22240d0, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x50
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x104] @ 0x22240d0, (=0x2070)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x60
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [r5, #0x0]
	mov     r0, r5
	ldrb    r3, [r3, #0x11]
	mov     r2, r1
	bl      Function_2221c54
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2222170
	ldr     r0, [pc, #0xe0] @ 0x22240d4, (=0x1fa8)
	mov     r1, #0x39
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	mov     r3, #0x60
	bl      Function_2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc0] @ 0x22240d8, (=0xf0e00)
	mov     r2, r4
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xb4] @ 0x22240d0, (=0x2070)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xa0] @ 0x22240d0, (=0x2070)
	ldr     r0, [r5, r0]
	add     r0, #0x40
	bl      Function_201a9a4
	ldr     r1, [r5, #0x0]
	mov     r0, r1
	add     r0, #0x34
	ldrb    r3, [r0, #0x0]
	cmp     r3, #0x4
	bcs     branch_222408a
	ldrb    r1, [r1, #0x11]
	mov     r2, r5
	mov     r0, #0x50
	add     r2, #0x34
	mul     r0, r1
	add     r4, r2, r0
	lsl     r7, r3, #3
	add     r0, r4, r7
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x7c] @ 0x22240d8, (=0xf0e00)
	lsl     r6, r3, #2
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x78] @ 0x22240dc, (=0x2228eb0)
	ldrh    r1, [r4, r7]
	ldr     r3, [r3, r6]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_22220cc
	ldrh    r2, [r4, r7]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2222e2c
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x10]
	ldrb    r2, [r2, #0x2]
	ldrb    r3, [r3, #0x3]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2222f74
	b       branch_22240c4
@ 0x222408a

.thumb
branch_222408a: @ 222408a :thumb
	ldrh    r0, [r1, #0x24]
	mov     r1, #0x5
	bl      LoadMoveData
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x22240d8, (=0xf0e00)
	mov     r2, #0x1
	str     r0, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrh    r1, [r1, #0x24]
	mov     r3, #0x49
	bl      Function_22220cc
	ldr     r2, [r5, #0x0]
	mov     r0, r5
	ldrh    r2, [r2, #0x24]
	mov     r1, #0x5
	bl      Function_2222e2c
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r4
	mov     r3, r4
	bl      Function_2222f74
.thumb
branch_22240c4: @ 22240c4 :thumb
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_22230a8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22240d0

.word 0x2070 @ 0x22240d0
.word 0x1fa8 @ 0x22240d4
.word 0xf0e00 @ 0x22240d8
.word 0x2228eb0 @ 0x22240dc
.thumb
Function_22240e0: @ 22240e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x2224104, (=0x2060)
	mov     r1, #0x1
	add     r0, r4, r0
	mov     r2, r1
	mov     r3, #0xe
	bl      Function_200e060
	ldr     r0, [pc, #0x10] @ 0x2224104, (=0x2060)
	mov     r1, #0xf
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	bl      Function_2224108
	pop     {r4,pc}
@ 0x2224104

.word 0x2060 @ 0x2224104
.thumb
Function_2224108: @ 2224108 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x1
	bl      Function_2002ac8
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x223edf0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x18] @ 0x222413c, (=0x2060)
	str     r3, [sp, #0x8]
	add     r0, r4, r2
	sub     r2, #0xb0
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0xc] @ 0x2224140, (=0x207b)
	strb    r0, [r4, r1]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x222413a


.align 2


.word 0x2060 @ 0x222413c
.word 0x207b @ 0x2224140
.thumb
Function_2224144: @ 2224144 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0

	ldr     r0, [r5, #0x0]
	mov     r1, #ITEMDATA_LOADDATA
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0xc]
	ldrh    r0, [r0, #0x22]
	ldr     r2, [r2, #0xc]
	bl      LoadFromNARC_ItemData

	ldr     r2, [sp, #0xc]
	mov     r6, r0
	ldrb    r3, [r2, #0x11]
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	add     r2, r2, r3
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r0, #0x8]
	ldr     r1, [r1, #0x28]
	bl      0x223dfac
	mov     r1, #0xa3
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0xf
	mov     r4, #0x0
	bl      ReadItemData1
	cmp     r0, #0x0
	beq     branch_2224198
	mov     r0, #0x1
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_2224198: @ 2224198 :thumb
	mov     r0, r6
	mov     r1, #0x10
	bl      ReadItemData1
	cmp     r0, #0x0
	beq     branch_22241ac
	mov     r0, #0x2
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_22241ac: @ 22241ac :thumb
	mov     r0, r6
	mov     r1, #0x11
	bl      ReadItemData1
	cmp     r0, #0x0
	beq     branch_22241c0
	mov     r0, #0x4
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_22241c0: @ 22241c0 :thumb
	mov     r0, r6
	mov     r1, #0x12
	bl      ReadItemData1
	cmp     r0, #0x0
	beq     branch_22241d4
	mov     r0, #0x8
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_22241d4: @ 22241d4 :thumb
	mov     r0, r6
	mov     r1, #0x13
	bl      ReadItemData1
	cmp     r0, #0x0
	beq     branch_22241e8
	mov     r0, #0x10
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_22241e8: @ 22241e8 :thumb
	mov     r0, r6
	mov     r1, #0x14
	bl      ReadItemData1
	cmp     r0, #0x0
	beq     branch_22241fc
	mov     r0, #0x20
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_22241fc: @ 22241fc :thumb
	mov     r0, r6
	mov     r1, #0x15
	bl      ReadItemData1
	cmp     r0, #0x0
	beq     branch_2224210
	mov     r0, #0x40
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_2224210: @ 2224210 :thumb
	ldr     r0, [sp, #0xc]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r5, r0
	ldrh    r1, [r0, #0x14]
	cmp     r1, #0x0
	bne     branch_222425a
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_222425a
	ldr     r0, [pc, #0x26c] @ 0x2224494, (=0x1fa8)
	mov     r1, #0x58
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x25c] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x250] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x222425a

.thumb
branch_222425a: @ 222425a :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, r1
	beq     branch_22242b6
	ldr     r0, [pc, #0x230] @ 0x2224494, (=0x1fa8)
	mov     r1, #0x52
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x220] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r2, [sp, #0xc]
	str     r1, [sp, #0x4]
	ldrb    r3, [r2, #0x11]
	mov     r2, #0x50
	ldr     r0, [pc, #0x208] @ 0x2224498, (=0x1fac)
	mul     r2, r3
	add     r2, r5, r2
	ldrh    r3, [r2, #0x14]
	ldr     r2, [sp, #0x8]
	ldr     r0, [r5, r0]
	sub     r2, r2, r3
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r1, [pc, #0x1f4] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x22242b6

.thumb
branch_22242b6: @ 22242b6 :thumb
	mov     r0, r6
	mov     r1, #0x24
	bl      ReadItemData1
	cmp     r0, #0x0
	bne     branch_22242ce
	mov     r0, r6
	mov     r1, #0x25
	bl      ReadItemData1
	cmp     r0, #0x0
	beq     branch_22242de
.thumb
branch_22242ce: @ 22242ce :thumb
	ldr     r2, [pc, #0x1c4] @ 0x2224494, (=0x1fa8)
	mov     r1, #0x57
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	b       branch_222448a
@ 0x22242de

.thumb
branch_22242de: @ 22242de :thumb
	cmp     r4, #0x1
	ldr     r0, [pc, #0x1b0] @ 0x2224494, (=0x1fa8)
	bne     branch_2224316
	ldr     r0, [r5, r0]
	mov     r1, #0x5c
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x1a0] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x194] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x2224316

.thumb
branch_2224316: @ 2224316 :thumb
	cmp     r4, #0x2
	bne     branch_222434c
	ldr     r0, [r5, r0]
	mov     r1, #0x53
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x168] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x160] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x222434c

.thumb
branch_222434c: @ 222434c :thumb
	cmp     r4, #0x4
	bne     branch_2224382
	ldr     r0, [r5, r0]
	mov     r1, #0x55
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x134] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x128] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x2224382

.thumb
branch_2224382: @ 2224382 :thumb
	cmp     r4, #0x8
	bne     branch_22243b8
	ldr     r0, [r5, r0]
	mov     r1, #0x56
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0xfc] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0xf4] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x22243b8

.thumb
branch_22243b8: @ 22243b8 :thumb
	cmp     r4, #0x10
	bne     branch_22243ee
	ldr     r0, [r5, r0]
	mov     r1, #0x54
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0xc8] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0xbc] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x22243ee

.thumb
branch_22243ee: @ 22243ee :thumb
	cmp     r4, #0x20
	bne     branch_2224424
	ldr     r0, [r5, r0]
	mov     r1, #0x5a
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x90] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x88] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x2224424

.thumb
branch_2224424: @ 2224424 :thumb
	cmp     r4, #0x40
	bne     branch_222445a
	ldr     r0, [r5, r0]
	mov     r1, #0x5b
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x5c] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x50] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	b       branch_222448a
@ 0x222445a

.thumb
branch_222445a: @ 222445a :thumb
	ldr     r0, [r5, r0]
	mov     r1, #0x59
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r7
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x28] @ 0x2224498, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r1, [pc, #0x20] @ 0x2224498, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
.thumb
branch_222448a: @ 222448a :thumb
	mov     r0, r6
	bl      free
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2224494

.word 0x1fa8 @ 0x2224494
.word 0x1fac @ 0x2224498
.thumb
Function_222449c: @ 222449c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r3, [r5, #0x0]
	ldrb    r2, [r3, #0x11]
	ldr     r0, [r3, #0x8]
	ldr     r1, [r3, #0x28]
	add     r2, r3, r2
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	bl      0x223dfac
	mov     r6, r0
	ldr     r0, [pc, #0x3c] @ 0x22244f4, (=0x1fa8)
	mov     r1, #0x5f
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r6
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [pc, #0x2c] @ 0x22244f8, (=0x1fac)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200b5cc
	ldr     r0, [pc, #0x24] @ 0x22244f8, (=0x1fac)
	ldr     r2, [pc, #0x24] @ 0x22244fc, (=0x175)
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_200b630
	ldr     r1, [pc, #0x18] @ 0x22244f8, (=0x1fac)
	mov     r2, r4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	pop     {r4-r6,pc}
@ 0x22244f4

.word 0x1fa8 @ 0x22244f4
.word 0x1fac @ 0x22244f8
.word 0x175 @ 0x22244fc
.thumb
Function_2224500: @ 2224500 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222453c
	mov     r0, r4
	bl      Function_2224588
	mov     r0, r4
	bl      Function_2224670
	mov     r0, r4
	bl      Function_2224720
	mov     r0, r4
	bl      Function_2224798
	mov     r0, r4
	bl      Function_2224848
	mov     r0, r4
	bl      Function_2224948
	mov     r0, r4
	bl      Function_222554c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	pop     {r4,pc}
@ 0x222453c

.thumb
Function_222453c: @ 222453c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x3c] @ 0x2224580, (=0x22292ec)
	add     r2, sp, #0x0
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	mov     r4, r0
	bl      Function_200c704
	ldr     r1, [pc, #0x20] @ 0x2224584, (=0x1fb4)
	mov     r2, #0x2b
	str     r0, [r5, r1]
	ldr     r1, [r5, r1]
	mov     r0, r4
	bl      Function_200c7c0
	ldr     r1, [pc, #0x14] @ 0x2224584, (=0x1fb4)
	mov     r0, r4
	ldr     r1, [r5, r1]
	add     r2, sp, #0x0
	bl      Function_200cb30
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x222457e


.align 2


.word 0x22292ec @ 0x2224580
.word 0x1fb4 @ 0x2224584



.thumb
Function_2224588: @ 2224588 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	mov     r0, #PlPokeIcon_Narc
	ldr     r1, [r1, #0xc]
	bl      LoadFromNARC_8
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	str     r0, [sp, #0x18]
	bl      Function_2079fd0
	str     r7, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r1, #0x3
	str     r1, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xac] @ 0x2224668, (=0xb007)
	ldr     r3, [pc, #0xb0] @ 0x222466c, (=0x1fb4)
	str     r0, [sp, #0x14]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r2, [sp, #0x18]
	ldr     r3, [r6, r3]
	bl      Function_200cdc4
	bl      Function_2079fd8
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x90] @ 0x2224668, (=0xb007)
	ldr     r1, [pc, #0x90] @ 0x222466c, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	ldr     r1, [r6, r1]
	mov     r2, r7
	bl      Function_200ce24
	bl      Function_2079fe4
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x74] @ 0x2224668, (=0xb007)
	ldr     r1, [pc, #0x78] @ 0x222466c, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	ldr     r1, [r6, r1]
	mov     r2, r7
	bl      Function_200ce54
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2224604: @ 2224604 :thumb
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_222462e
	ldr     r0, [r5, #0x4]
	bl      Function_2079d80_CallGetPokeIconGraphicNr
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x2224668, (=0xb007)
	ldr     r1, [pc, #0x4c] @ 0x222466c, (=0x1fb4)
	add     r0, r4, r0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	ldr     r1, [r6, r1]
	mov     r2, r7
	bl      Function_200cc3c
	b       branch_2224654
@ 0x222462e

.thumb
branch_222462e: @ 222462e :thumb
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      Function_2079d8c
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2224668, (=0xb007)
	ldr     r1, [pc, #0x24] @ 0x222466c, (=0x1fb4)
	add     r0, r4, r0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	ldr     r1, [r6, r1]
	mov     r2, r7
	bl      Function_200cc3c
.thumb
branch_2224654: @ 2224654 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x50
	cmp     r4, #0x6
	bcc     branch_2224604
	mov     r0, r7
	bl      Call_FS_CloseFile
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2224666


.align 2


.word 0xb007 @ 0x2224668
.word 0x1fb4 @ 0x222466c
.thumb
Function_2224670: @ 2224670 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	ldr     r1, [r1, #0xc]
	mov     r0, #PlPstGra_Narc
	bl      LoadFromNARC_8
	mov     r6, r0
	bl      Function_208e9e4
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x70] @ 0x2224714, (=0xb008)
	ldr     r3, [pc, #0x74] @ 0x2224718, (=0x1fb4)
	str     r0, [sp, #0x14]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [r5, r3]
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_200cdc4
	bl      Function_208e9e8
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x2224714, (=0xb008)
	ldr     r1, [pc, #0x54] @ 0x2224718, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r1, [r5, r1]
	mov     r0, r4
	mov     r2, r6
	bl      Function_200ce24
	bl      Function_208e9ec
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2224714, (=0xb008)
	ldr     r1, [pc, #0x38] @ 0x2224718, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r1, [r5, r1]
	mov     r0, r4
	mov     r2, r6
	bl      Function_200ce54
	bl      Function_208e9e0
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x222471c, (=0xb00d)
	ldr     r1, [pc, #0x1c] @ 0x2224718, (=0x1fb4)
	str     r0, [sp, #0x8]
	ldr     r1, [r5, r1]
	mov     r0, r4
	mov     r2, r6
	bl      Function_200cc3c
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2224712


.align 2


.word 0xb008 @ 0x2224714
.word 0x1fb4 @ 0x2224718
.word 0xb00d @ 0x222471c
.thumb
Function_2224720: @ 2224720 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	mov     r6, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x2224788, (=0xb009)
	ldr     r3, [pc, #0x54] @ 0x222478c, (=0x1fb4)
	str     r0, [sp, #0x4]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [r5, r3]
	mov     r1, #0x3
	mov     r2, r6
	bl      Function_207c9b0
	ldr     r1, [pc, #0x40] @ 0x222478c, (=0x1fb4)
	ldr     r2, [pc, #0x38] @ 0x2224788, (=0xb009)
	ldr     r1, [r5, r1]
	mov     r0, r6
	mov     r3, r2
	bl      Function_207c9ec
	ldr     r4, [pc, #0x34] @ 0x2224790, (=0xb00e)
	add     r7, r4, #0x6
.thumb
branch_222475c: @ 222475c :thumb
	ldr     r1, [pc, #0x2c] @ 0x222478c, (=0x1fb4)
	str     r4, [sp, #0x0]
	ldr     r1, [r5, r1]
	mov     r0, r6
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_207c948
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	bls     branch_222475c
	ldr     r0, [pc, #0x20] @ 0x2224794, (=0xb015)
	ldr     r1, [pc, #0x14] @ 0x222478c, (=0x1fb4)
	str     r0, [sp, #0x0]
	ldr     r1, [r5, r1]
	mov     r0, r6
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_207cac4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2224788

.word 0xb009 @ 0x2224788
.word 0x1fb4 @ 0x222478c
.word 0xb00e @ 0x2224790
.word 0xb015 @ 0x2224794



.thumb
Function_2224798: @ 2224798 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #PlPlistGra_Narc
	ldr     r1, [r1, #0xc]
	bl      LoadFromNARC_8
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	mov     r6, r0
	bl      Function_2081934
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x70] @ 0x222483c, (=0xb00a)
	ldr     r3, [pc, #0x74] @ 0x2224840, (=0x1fb4)
	str     r0, [sp, #0x14]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [r5, r3]
	mov     r1, #0x3
	mov     r2, r6
	bl      Function_200cdc4
	bl      Function_2081938
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x222483c, (=0xb00a)
	ldr     r1, [pc, #0x54] @ 0x2224840, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r1, [r5, r1]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200ce24
	bl      Function_208193c
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x222483c, (=0xb00a)
	ldr     r1, [pc, #0x38] @ 0x2224840, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r1, [r5, r1]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200ce54
	bl      Function_2081930
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2224844, (=0xb016)
	ldr     r1, [pc, #0x1c] @ 0x2224840, (=0x1fb4)
	str     r0, [sp, #0x8]
	ldr     r1, [r5, r1]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200cc3c
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x222483a


.align 2


.word 0xb00a @ 0x222483c
.word 0x1fb4 @ 0x2224840
.word 0xb016 @ 0x2224844
.thumb
Function_2224848: @ 2224848 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	mov     r4, r0
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x5c] @ 0x22248cc, (=0xb00b)
	ldr     r3, [pc, #0x60] @ 0x22248d0, (=0x1fb4)
	str     r0, [sp, #0x14]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [r5, r3]
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_200cd7c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x44] @ 0x22248cc, (=0xb00b)
	ldr     r1, [pc, #0x44] @ 0x22248d0, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r1, [r5, r1]
	mov     r0, r4
	mov     r2, #0x48
	mov     r3, #0x19
	bl      Function_200ce0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x22248cc, (=0xb00b)
	ldr     r1, [pc, #0x30] @ 0x22248d0, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r1, [r5, r1]
	mov     r0, r4
	mov     r2, #0x48
	mov     r3, #0x18
	bl      Function_200ce3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x22248d4, (=0xb017)
	ldr     r1, [pc, #0x14] @ 0x22248d0, (=0x1fb4)
	str     r0, [sp, #0x8]
	ldr     r1, [r5, r1]
	mov     r0, r4
	mov     r2, #0x48
	mov     r3, #0x1a
	bl      Function_200cbdc
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22248cc

.word 0xb00b @ 0x22248cc
.word 0x1fb4 @ 0x22248d0
.word 0xb017 @ 0x22248d4
.thumb
Function_22248d8: @ 22248d8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x34
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	mov     r2, #0x0
	add     r1, sp, #0x0
	strh    r2, [r1, #0x0]
	strh    r2, [r1, #0x2]
	strh    r2, [r1, #0x4]
	strh    r2, [r1, #0x6]
	mov     r1, #0x14
	ldr     r3, [pc, #0x38] @ 0x2224930, (=0x2229524)
	mul     r1, r4
	ldr     r3, [r3, r1]
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x8]
	mov     r3, #0x2
	str     r3, [sp, #0x10]
	ldr     r3, [pc, #0x2c] @ 0x2224934, (=0x2229514)
	str     r2, [sp, #0x30]
	ldr     r3, [r3, r1]
	add     r2, sp, #0x0
	str     r3, [sp, #0x14]
	ldr     r3, [pc, #0x28] @ 0x2224938, (=0x2229518)
	ldr     r3, [r3, r1]
	str     r3, [sp, #0x18]
	ldr     r3, [pc, #0x24] @ 0x222493c, (=0x222951c)
	ldr     r3, [r3, r1]
	str     r3, [sp, #0x1c]
	ldr     r3, [pc, #0x24] @ 0x2224940, (=0x2229520)
	ldr     r1, [r3, r1]
	str     r1, [sp, #0x20]
	mov     r1, #0x1
	str     r1, [sp, #0x2c]
	ldr     r1, [pc, #0x1c] @ 0x2224944, (=0x1fb4)
	ldr     r1, [r5, r1]
	bl      Function_200ce6c
	add     sp, #0x34
	pop     {r4,r5,pc}
@ 0x2224930

.word 0x2229524 @ 0x2224930
.word 0x2229514 @ 0x2224934
.word 0x2229518 @ 0x2224938
.word 0x222951c @ 0x222493c
.word 0x2229520 @ 0x2224940
.word 0x1fb4 @ 0x2224944
.thumb
Function_2224948: @ 2224948 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r7, [pc, #0x1c] @ 0x222496c, (=0x1fb8)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2224952: @ 2224952 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_22248d8
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x26
	bcc     branch_2224952
	mov     r0, r6
	bl      Function_22249cc
	pop     {r3-r7,pc}
@ 0x222496c

.word 0x1fb8 @ 0x222496c
.thumb
Function_2224970: @ 2224970 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	ldr     r6, [pc, #0x24] @ 0x22249a4, (=0x1fb8)
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2224984: @ 2224984 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x26
	bcc     branch_2224984
	mov     r0, r7
	bl      Function_22255b8
	ldr     r1, [pc, #0xc] @ 0x22249a8, (=0x1fb4)
	ldr     r0, [sp, #0x0]
	ldr     r1, [r7, r1]
	bl      Function_200d0b0
	pop     {r3-r7,pc}
@ 0x22249a4

.word 0x1fb8 @ 0x22249a4
.word 0x1fb4 @ 0x22249a8
.thumb
Function_22249ac: @ 22249ac :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r1, #0x1
	mov     r6, r0
	bl      Function_200d3f4
	lsl     r1, r5, #16
	lsl     r2, r4, #16
	mov     r0, r6
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	pop     {r4-r6,pc}
@ 0x22249ca


.align 2, 0


.thumb
Function_22249cc: @ 22249cc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r5
	mov     r7, #0x0
	add     r4, #0x1b
	mov     r6, r5
.thumb
branch_22249d8: @ 22249d8 :thumb
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_22249f8
	mov     r1, r5
	ldrb    r2, [r4, #0x0]
	add     r1, #0x32
	ldrb    r1, [r1, #0x0]
	lsl     r2, r2, #24
	lsr     r2, r2, #31
	bl      GetPokeIconPaletteNr
	mov     r1, r0
	ldr     r0, [pc, #0x14] @ 0x2224a08, (=0x1fd4)
	ldr     r0, [r6, r0]
	bl      Function_200d41c
.thumb
branch_22249f8: @ 22249f8 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x50
	add     r4, #0x50
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x6
	blt     branch_22249d8
	pop     {r3-r7,pc}
@ 0x2224a06


.align 2


.word 0x1fd4 @ 0x2224a08
.thumb
Function_2224a0c: @ 2224a0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r3
	ldr     r0, [r0, #0x8]
	mov     r7, r1
	mov     r4, r2
	bl      Function_16_223e010
	str     r0, [sp, #0x8]
	bl      Function_207c944
	str     r0, [sp, #0xc]
	mov     r0, r6
	bl      Function_207c908
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x2224a58, (=0x1fb4)
	str     r4, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0xc]
	bl      Function_200d948
	mov     r0, r6
	bl      Function_207c92c
	mov     r1, r0
	mov     r0, r7
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_200d41c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2224a56


.align 2


.word 0x1fb4 @ 0x2224a58
.thumb
Function_2224a5c: @ 2224a5c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	ldr     r0, [r0, #0x8]
	mov     r6, r1
	bl      Function_16_223e010
	mov     r7, r0
	bl      Function_207cac0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_207ca90
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2224aa8, (=0xb015)
	ldr     r1, [pc, #0x24] @ 0x2224aac, (=0x1fb4)
	str     r0, [sp, #0x4]
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	bl      Function_200d948
	mov     r0, r4
	bl      Function_207caa8
	mov     r1, r0
	mov     r0, r6
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_200d41c
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2224aa6


.align 2


.word 0xb015 @ 0x2224aa8
.word 0x1fb4 @ 0x2224aac
.thumb
Function_2224ab0: @ 2224ab0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	mov     r7, r3
	cmp     r6, #0x7
	beq     branch_2224ad0
	mov     r0, r5
	mov     r1, r6
	bl      Function_200d364
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_22249ac
.thumb
branch_2224ad0: @ 2224ad0 :thumb
	pop     {r3-r7,pc}
@ 0x2224ad2


.align 2, 0


.thumb
Function_2224ad4: @ 2224ad4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x3c] @ 0x2224b18, (=0x2004)
	mov     r5, r0
	mov     r6, r2
	ldrb    r3, [r4, #0x14]
	ldr     r1, [r5, r1]
	ldr     r2, [pc, #0x38] @ 0x2224b1c, (=0xb00e)
	bl      Function_2224a0c
	ldr     r0, [pc, #0x2c] @ 0x2224b18, (=0x2004)
	ldr     r1, [r6, #0x0]
	ldr     r0, [r5, r0]
	ldr     r2, [r6, #0x4]
	bl      Function_22249ac
	ldrb    r3, [r4, #0x15]
	ldrb    r0, [r4, #0x14]
	cmp     r0, r3
	beq     branch_2224b14
	ldr     r1, [pc, #0x20] @ 0x2224b20, (=0x2008)
	ldr     r2, [pc, #0x24] @ 0x2224b24, (=0xb00f)
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_2224a0c
	ldr     r0, [pc, #0x14] @ 0x2224b20, (=0x2008)
	ldr     r1, [r6, #0x8]
	ldr     r0, [r5, r0]
	ldr     r2, [r6, #0xc]
	bl      Function_22249ac
.thumb
branch_2224b14: @ 2224b14 :thumb
	pop     {r4-r6,pc}
@ 0x2224b16


.align 2


.word 0x2004 @ 0x2224b18
.word 0xb00e @ 0x2224b1c
.word 0x2008 @ 0x2224b20
.word 0xb00f @ 0x2224b24
.thumb
Function_2224b28: @ 2224b28 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	cmp     r0, #0x0
	beq     branch_2224b58
	bl      Function_207d2d0
	cmp     r0, #0x1
	bne     branch_2224b46
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d364
	b       branch_2224b4e
@ 0x2224b46

.thumb
branch_2224b46: @ 2224b46 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200d364
.thumb
branch_2224b4e: @ 2224b4e :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22249ac
.thumb
branch_2224b58: @ 2224b58 :thumb
	pop     {r4-r6,pc}
@ 0x2224b5a


.align 2, 0


.thumb
Function_2224b5c: @ 2224b5c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	cmp     r0, #0x0
	beq     branch_2224b7a
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_200d364
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22249ac
.thumb
branch_2224b7a: @ 2224b7a :thumb
	pop     {r4-r6,pc}
@ 0x2224b7c

.thumb
Function_2224b7c: @ 2224b7c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r7, [pc, #0x8c] @ 0x2224c10, (=0x1fb8)
	str     r1, [sp, #0x0]
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_2224b88: @ 2224b88 :thumb
	ldr     r0, [r4, r7]
	mov     r1, #0x0
	bl      Function_200d3f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x26
	bcc     branch_2224b88
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x9
	bhi     branch_2224c0c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2224baa

Jumppoints_2224baa:
.hword branch_2224bbe - Jumppoints_2224baa - 2
.hword branch_2224bc6 - Jumppoints_2224baa - 2
.hword branch_2224bce - Jumppoints_2224baa - 2
.hword branch_2224bd6 - Jumppoints_2224baa - 2
.hword branch_2224bde - Jumppoints_2224baa - 2
.hword branch_2224be6 - Jumppoints_2224baa - 2
.hword branch_2224bee - Jumppoints_2224baa - 2
.hword branch_2224bf6 - Jumppoints_2224baa - 2
.hword branch_2224bfe - Jumppoints_2224baa - 2
.hword branch_2224c06 - Jumppoints_2224baa - 2
.thumb
branch_2224bbe: @ 2224bbe :thumb
	mov     r0, r6
	bl      Function_2224c14
	pop     {r3-r7,pc}
@ 0x2224bc6

.thumb
branch_2224bc6: @ 2224bc6 :thumb
	mov     r0, r6
	bl      Function_2224cb0
	pop     {r3-r7,pc}
@ 0x2224bce

.thumb
branch_2224bce: @ 2224bce :thumb
	mov     r0, r6
	bl      Function_2224d08
	pop     {r3-r7,pc}
@ 0x2224bd6

.thumb
branch_2224bd6: @ 2224bd6 :thumb
	mov     r0, r6
	bl      Function_2224da0
	pop     {r3-r7,pc}
@ 0x2224bde

.thumb
branch_2224bde: @ 2224bde :thumb
	mov     r0, r6
	bl      Function_2224e78
	pop     {r3-r7,pc}
@ 0x2224be6

.thumb
branch_2224be6: @ 2224be6 :thumb
	mov     r0, r6
	bl      Function_222506c
	pop     {r3-r7,pc}
@ 0x2224bee

.thumb
branch_2224bee: @ 2224bee :thumb
	mov     r0, r6
	bl      Function_2224f3c
	pop     {r3-r7,pc}
@ 0x2224bf6

.thumb
branch_2224bf6: @ 2224bf6 :thumb
	mov     r0, r6
	bl      Function_2224fa8
	pop     {r3-r7,pc}
@ 0x2224bfe

.thumb
branch_2224bfe: @ 2224bfe :thumb
	mov     r0, r6
	bl      Function_2225150
	pop     {r3-r7,pc}
@ 0x2224c06

.thumb
branch_2224c06: @ 2224c06 :thumb
	mov     r0, r6
	bl      Function_22250d8
.thumb
branch_2224c0c: @ 2224c0c :thumb
	pop     {r3-r7,pc}
@ 0x2224c0e


.align 2


.word 0x1fb8 @ 0x2224c10
.thumb
Function_2224c14: @ 2224c14 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r6
	str     r0, [sp, #0x0]
	add     r0, #0x1b
	ldr     r4, [pc, #0x70] @ 0x2224c98, (=0x2229404)
	ldr     r7, [pc, #0x74] @ 0x2224c9c, (=0x2229434)
	mov     r5, r6
	str     r0, [sp, #0x0]
.thumb
branch_2224c2c: @ 2224c2c :thumb
	ldrh    r0, [r6, #0x8]
	cmp     r0, #0x0
	beq     branch_2224c7a
	ldr     r0, [pc, #0x6c] @ 0x2224ca0, (=0x1fd4)
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, r0]
	ldr     r2, [r4, #0x4]
	bl      Function_22249ac
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x60] @ 0x2224ca4, (=0x1fec)
	ldrb    r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	ldr     r2, [r7, #0x0]
	lsl     r0, r0, #25
	ldr     r3, [r7, #0x4]
	lsr     r0, r0, #28
	bl      Function_2224ab0
	ldr     r1, [pc, #0x54] @ 0x2224ca8, (=0x1fb8)
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	ldrh    r0, [r6, #0x1e]
	ldr     r1, [r5, r1]
	add     r2, #0x8
	add     r3, #0x8
	bl      Function_2224b28
	mov     r0, r6
	add     r0, #0x31
	ldr     r1, [pc, #0x40] @ 0x2224cac, (=0x2038)
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	ldrb    r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	add     r2, #0x10
	add     r3, #0x8
	bl      Function_2224b5c
.thumb
branch_2224c7a: @ 2224c7a :thumb
	ldr     r0, [sp, #0x0]
	add     r6, #0x50
	add     r0, #0x50
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r4, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r7, #0x8
	str     r0, [sp, #0x4]
	cmp     r0, #0x6
	blt     branch_2224c2c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2224c96


.align 2


.word 0x2229404 @ 0x2224c98
.word 0x2229434 @ 0x2224c9c
.word 0x1fd4 @ 0x2224ca0
.word 0x1fec @ 0x2224ca4
.word 0x1fb8 @ 0x2224ca8
.word 0x2038 @ 0x2224cac
.thumb
Function_2224cb0: @ 2224cb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	add     r1, r5, #0x4
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x3c] @ 0x2224d04, (=0x1fb8)
	mov     r2, #0x48
	ldr     r0, [r1, r0]
	mov     r1, #0x80
	bl      Function_22249ac
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x50
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x24] @ 0x2224d04, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x88
	bl      Function_2224b28
	ldr     r1, [r5, #0x0]
	add     r4, #0x2d
	ldrb    r1, [r1, #0x11]
	ldrb    r0, [r4, #0x0]
	mov     r3, #0x50
	add     r1, #0x20
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x8] @ 0x2224d04, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x90
	bl      Function_2224b5c
	pop     {r3-r5,pc}
@ 0x2224d04

.word 0x1fb8 @ 0x2224d04
.thumb
Function_2224d08: @ 2224d08 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	add     r1, r5, #0x4
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x74] @ 0x2224d94, (=0x1fb8)
	mov     r2, #0xc
	ldr     r0, [r1, r0]
	mov     r1, #0x18
	bl      Function_22249ac
	ldr     r1, [r5, #0x0]
	ldrb    r0, [r4, #0x17]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r0, r0, #25
	add     r1, #0xd
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x58] @ 0x2224d94, (=0x1fb8)
	lsr     r0, r0, #28
	ldr     r1, [r2, r1]
	mov     r2, #0xc6
	bl      Function_2224ab0
	ldr     r2, [pc, #0x50] @ 0x2224d98, (=0x22292c4)
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224ad4
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x34] @ 0x2224d94, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x20
	bl      Function_2224b28
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x11]
	add     r0, #0x2d
	ldrb    r0, [r0, #0x0]
	add     r1, #0x20
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x1c] @ 0x2224d94, (=0x1fb8)
	mov     r3, #0x14
	ldr     r1, [r2, r1]
	mov     r2, #0x28
	bl      Function_2224b5c
	ldr     r1, [pc, #0x18] @ 0x2224d9c, (=0x1fd0)
	ldrh    r0, [r4, #0x1a]
	ldr     r1, [r5, r1]
	mov     r2, #0x14
	mov     r3, #0x84
	bl      Function_2224b28
	pop     {r3-r5,pc}
@ 0x2224d92


.align 2


.word 0x1fb8 @ 0x2224d94
.word 0x22292c4 @ 0x2224d98
.word 0x1fd0 @ 0x2224d9c
.thumb
Function_2224da0: @ 2224da0 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldrb    r2, [r0, #0x11]
	ldr     r0, [sp, #0x0]
	add     r1, r0, #0x4
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	mov     r2, #0xc
	add     r1, r0, r1
	ldr     r0, [pc, #0xa4] @ 0x2224e64, (=0x1fb8)
	ldr     r0, [r1, r0]
	mov     r1, #0x18
	bl      Function_22249ac
	ldr     r1, [sp, #0x0]
	ldrb    r0, [r4, #0x17]
	ldr     r1, [r1, #0x0]
	mov     r3, #0x14
	ldrb    r1, [r1, #0x11]
	lsl     r0, r0, #25
	lsr     r0, r0, #28
	add     r1, #0xd
	lsl     r2, r1, #2
	ldr     r1, [sp, #0x0]
	add     r2, r1, r2
	ldr     r1, [pc, #0x84] @ 0x2224e64, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0xc6
	bl      Function_2224ab0
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x7c] @ 0x2224e68, (=0x22292a4)
	mov     r1, r4
	bl      Function_2224ad4
	ldr     r1, [sp, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldr     r1, [r1, #0x0]
	mov     r3, #0x14
	ldrb    r1, [r1, #0x11]
	lsl     r2, r1, #2
	ldr     r1, [sp, #0x0]
	add     r2, r1, r2
	ldr     r1, [pc, #0x60] @ 0x2224e64, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x20
	bl      Function_2224b28
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0x2d
	ldrb    r1, [r1, #0x11]
	ldrb    r0, [r0, #0x0]
	mov     r3, #0x14
	add     r1, #0x20
	lsl     r2, r1, #2
	ldr     r1, [sp, #0x0]
	add     r2, r1, r2
	ldr     r1, [pc, #0x40] @ 0x2224e64, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x28
	bl      Function_2224b5c
	ldr     r5, [sp, #0x0]
	ldr     r6, [pc, #0x3c] @ 0x2224e6c, (=0x2229324)
	mov     r7, #0x0
.thumb
branch_2224e30: @ 2224e30 :thumb
	ldrh    r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_2224e56
	mov     r3, r4
	ldr     r1, [pc, #0x34] @ 0x2224e70, (=0x200c)
	add     r3, #0x34
	ldr     r2, [pc, #0x34] @ 0x2224e74, (=0xb010)
	ldrb    r3, [r3, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, r1]
	add     r2, r7, r2
	bl      Function_2224a0c
	ldr     r0, [pc, #0x24] @ 0x2224e70, (=0x200c)
	ldr     r1, [r6, #0x0]
	ldr     r0, [r5, r0]
	ldr     r2, [r6, #0x4]
	bl      Function_22249ac
.thumb
branch_2224e56: @ 2224e56 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x8
	cmp     r7, #0x4
	bcc     branch_2224e30
	pop     {r3-r7,pc}
@ 0x2224e64

.word 0x1fb8 @ 0x2224e64
.word 0x22292a4 @ 0x2224e68
.word 0x2229324 @ 0x2224e6c
.word 0x200c @ 0x2224e70
.word 0xb010 @ 0x2224e74
.thumb
Function_2224e78: @ 2224e78 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	add     r1, r5, #0x4
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0xa0] @ 0x2224f30, (=0x1fb8)
	mov     r2, #0xc
	ldr     r0, [r1, r0]
	mov     r1, #0x18
	bl      Function_22249ac
	ldr     r1, [r5, #0x0]
	ldrb    r0, [r4, #0x17]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r0, r0, #25
	add     r1, #0xd
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x84] @ 0x2224f30, (=0x1fb8)
	lsr     r0, r0, #28
	ldr     r1, [r2, r1]
	mov     r2, #0xc6
	bl      Function_2224ab0
	ldr     r2, [pc, #0x7c] @ 0x2224f34, (=0x22292b4)
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224ad4
	ldr     r0, [r5, #0x0]
	mov     r2, #0x30
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	add     r0, #0x15
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x60] @ 0x2224f30, (=0x1fb8)
	ldr     r0, [r1, r0]
	mov     r1, #0x88
	bl      Function_22249ac
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x48] @ 0x2224f30, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x20
	bl      Function_2224b28
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x11]
	add     r0, #0x2d
	ldrb    r0, [r0, #0x0]
	add     r1, #0x20
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x30] @ 0x2224f30, (=0x1fb8)
	mov     r3, #0x14
	ldr     r1, [r2, r1]
	mov     r2, #0x28
	bl      Function_2224b5c
	ldr     r2, [r5, #0x0]
	ldr     r1, [pc, #0x28] @ 0x2224f38, (=0x2020)
	add     r2, #0x34
	ldrb    r2, [r2, #0x0]
	ldr     r1, [r5, r1]
	mov     r0, r5
	lsl     r2, r2, #3
	add     r2, r4, r2
	add     r2, #0x35
	ldrb    r2, [r2, #0x0]
	bl      Function_2224a5c
	ldr     r0, [pc, #0x14] @ 0x2224f38, (=0x2020)
	mov     r1, #0x18
	ldr     r0, [r5, r0]
	mov     r2, #0x58
	bl      Function_22249ac
	pop     {r3-r5,pc}
@ 0x2224f30

.word 0x1fb8 @ 0x2224f30
.word 0x22292b4 @ 0x2224f34
.word 0x2020 @ 0x2224f38
.thumb
Function_2224f3c: @ 2224f3c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	add     r1, r5, #0x4
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x4c] @ 0x2224fa0, (=0x1fb8)
	mov     r2, #0xc
	ldr     r0, [r1, r0]
	mov     r1, #0x18
	bl      Function_22249ac
	ldr     r2, [pc, #0x44] @ 0x2224fa4, (=0x2229294)
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224ad4
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x28] @ 0x2224fa0, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x20
	bl      Function_2224b28
	ldr     r1, [r5, #0x0]
	add     r4, #0x2d
	ldrb    r1, [r1, #0x11]
	ldrb    r0, [r4, #0x0]
	mov     r3, #0x14
	add     r1, #0x20
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x10] @ 0x2224fa0, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x28
	bl      Function_2224b5c
	mov     r0, r5
	bl      Function_22252e8
	pop     {r3-r5,pc}
@ 0x2224fa0

.word 0x1fb8 @ 0x2224fa0
.word 0x2229294 @ 0x2224fa4
.thumb
Function_2224fa8: @ 2224fa8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	add     r1, r5, #0x4
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0xa0] @ 0x2225060, (=0x1fb8)
	mov     r2, #0xc
	ldr     r0, [r1, r0]
	mov     r1, #0x18
	bl      Function_22249ac
	ldr     r2, [pc, #0x98] @ 0x2225064, (=0x2229284)
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224ad4
	ldr     r0, [r5, #0x0]
	mov     r2, #0x30
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	add     r0, #0x15
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x7c] @ 0x2225060, (=0x1fb8)
	ldr     r0, [r1, r0]
	mov     r1, #0x88
	bl      Function_22249ac
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x64] @ 0x2225060, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x20
	bl      Function_2224b28
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x11]
	add     r0, #0x2d
	ldrb    r0, [r0, #0x0]
	add     r1, #0x20
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x4c] @ 0x2225060, (=0x1fb8)
	mov     r3, #0x14
	ldr     r1, [r2, r1]
	mov     r2, #0x28
	bl      Function_2224b5c
	ldr     r1, [r5, #0x0]
	mov     r0, r1
	add     r0, #0x34
	ldrb    r2, [r0, #0x0]
	cmp     r2, #0x4
	bcs     branch_222503e
	lsl     r2, r2, #3
	add     r2, r4, r2
	ldr     r1, [pc, #0x38] @ 0x2225068, (=0x2020)
	add     r2, #0x35
	ldrb    r2, [r2, #0x0]
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_2224a5c
	b       branch_2225052
@ 0x222503e

.thumb
branch_222503e: @ 222503e :thumb
	ldrh    r0, [r1, #0x24]
	mov     r1, #0x1
	bl      LoadMoveData
	ldr     r1, [pc, #0x20] @ 0x2225068, (=0x2020)
	mov     r2, r0
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_2224a5c
.thumb
branch_2225052: @ 2225052 :thumb
	ldr     r0, [pc, #0x14] @ 0x2225068, (=0x2020)
	mov     r1, #0x18
	ldr     r0, [r5, r0]
	mov     r2, #0x58
	bl      Function_22249ac
	pop     {r3-r5,pc}
@ 0x2225060

.word 0x1fb8 @ 0x2225060
.word 0x2229284 @ 0x2225064
.word 0x2020 @ 0x2225068
.thumb
Function_222506c: @ 222506c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	add     r1, r5, #0x4
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x4c] @ 0x22250d0, (=0x1fb8)
	mov     r2, #0xc
	ldr     r0, [r1, r0]
	mov     r1, #0x18
	bl      Function_22249ac
	ldr     r2, [pc, #0x44] @ 0x22250d4, (=0x2229294)
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224ad4
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x28] @ 0x22250d0, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x20
	bl      Function_2224b28
	ldr     r1, [r5, #0x0]
	add     r4, #0x2d
	ldrb    r1, [r1, #0x11]
	ldrb    r0, [r4, #0x0]
	mov     r3, #0x14
	add     r1, #0x20
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x10] @ 0x22250d0, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x28
	bl      Function_2224b5c
	mov     r0, r5
	bl      Function_22252e8
	pop     {r3-r5,pc}
@ 0x22250d0

.word 0x1fb8 @ 0x22250d0
.word 0x2229294 @ 0x22250d4
.thumb
Function_22250d8: @ 22250d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	add     r1, r5, #0x4
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x5c] @ 0x222514c, (=0x1fb8)
	mov     r2, #0xc
	ldr     r0, [r1, r0]
	mov     r1, #0x18
	bl      Function_22249ac
	ldr     r0, [r5, #0x0]
	mov     r2, #0x48
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	add     r0, #0x15
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x40] @ 0x222514c, (=0x1fb8)
	ldr     r0, [r1, r0]
	mov     r1, #0x88
	bl      Function_22249ac
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x2c] @ 0x222514c, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x20
	bl      Function_2224b28
	ldr     r1, [r5, #0x0]
	add     r4, #0x2d
	ldrb    r1, [r1, #0x11]
	ldrb    r0, [r4, #0x0]
	mov     r3, #0x14
	add     r1, #0x20
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x10] @ 0x222514c, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x28
	bl      Function_2224b5c
	mov     r0, r5
	bl      Function_2225420
	pop     {r3-r5,pc}
@ 0x222514a


.align 2


.word 0x1fb8 @ 0x222514c
.thumb
Function_2225150: @ 2225150 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	add     r1, r5, #0x4
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r2
	add     r4, r1, r0
	add     r0, r2, #0x7
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x48] @ 0x22251b0, (=0x1fb8)
	mov     r2, #0xc
	ldr     r0, [r1, r0]
	mov     r1, #0x18
	bl      Function_22249ac
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r4, #0x1a]
	ldrb    r1, [r1, #0x11]
	mov     r3, #0x14
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x30] @ 0x22251b0, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x20
	bl      Function_2224b28
	ldr     r1, [r5, #0x0]
	add     r4, #0x2d
	ldrb    r1, [r1, #0x11]
	ldrb    r0, [r4, #0x0]
	mov     r3, #0x14
	add     r1, #0x20
	lsl     r1, r1, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x14] @ 0x22251b0, (=0x1fb8)
	ldr     r1, [r2, r1]
	mov     r2, #0x28
	bl      Function_2224b5c
	mov     r0, r5
	bl      Function_22252e8
	mov     r0, r5
	bl      Function_2225420
	pop     {r3-r5,pc}
@ 0x22251b0

.word 0x1fb8 @ 0x22251b0
.thumb
Function_22251b4: @ 22251b4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	add     r2, r6, #0x4
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mov     r4, #0x0
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x0]
.thumb
branch_22251c8: @ 22251c8 :thumb
	ldr     r0, [sp, #0x0]
	lsl     r5, r4, #3
	add     r3, r0, r5
	ldrh    r0, [r3, #0x30]
	cmp     r0, #0x0
	beq     branch_22251fc
	lsl     r0, r4, #2
	add     r3, #0x34
	add     r7, r6, r0
	ldr     r1, [pc, #0x58] @ 0x2225234, (=0x200c)
	ldr     r2, [pc, #0x58] @ 0x2225238, (=0xb010)
	ldrb    r3, [r3, #0x0]
	ldr     r1, [r7, r1]
	mov     r0, r6
	add     r2, r4, r2
	bl      Function_2224a0c
	ldr     r0, [pc, #0x50] @ 0x222523c, (=0x22293dc)
	ldr     r1, [pc, #0x4c] @ 0x222523c, (=0x22293dc)
	add     r2, r0, r5
	ldr     r0, [pc, #0x40] @ 0x2225234, (=0x200c)
	ldr     r1, [r1, r5]
	ldr     r0, [r7, r0]
	ldr     r2, [r2, #0x4]
	bl      Function_22249ac
.thumb
branch_22251fc: @ 22251fc :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x4
	bcc     branch_22251c8
	ldr     r0, [r6, #0x0]
	ldrh    r0, [r0, #0x24]
	cmp     r0, #0x0
	beq     branch_2225232
	mov     r1, #0x3
	bl      LoadMoveData
	mov     r3, r0
	ldr     r1, [pc, #0x28] @ 0x2225240, (=0x201c)
	lsl     r3, r3, #24
	ldr     r1, [r6, r1]
	ldr     r2, [pc, #0x24] @ 0x2225244, (=0xb014)
	mov     r0, r6
	lsr     r3, r3, #24
	bl      Function_2224a0c
	ldr     r0, [pc, #0x18] @ 0x2225240, (=0x201c)
	mov     r1, #0x58
	ldr     r0, [r6, r0]
	mov     r2, #0xb0
	bl      Function_22249ac
.thumb
branch_2225232: @ 2225232 :thumb
	pop     {r3-r7,pc}
@ 0x2225234

.word 0x200c @ 0x2225234
.word 0xb010 @ 0x2225238
.word 0x22293dc @ 0x222523c
.word 0x201c @ 0x2225240
.word 0xb014 @ 0x2225244
.thumb
Function_2225248: @ 2225248 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	add     r2, r7, #0x4
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mov     r4, #0x0
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x0]
.thumb
branch_222525c: @ 222525c :thumb
	ldr     r0, [sp, #0x0]
	lsl     r5, r4, #3
	add     r0, r0, r5
	ldrh    r0, [r0, #0x30]
	cmp     r0, #0x0
	beq     branch_222529a
	lsl     r1, r4, #2
	add     r6, r7, r1
	mov     r1, #0xb
	bl      LoadMoveData
	mov     r3, r0
	ldr     r1, [pc, #0x5c] @ 0x22252d4, (=0x200c)
	ldr     r2, [pc, #0x60] @ 0x22252d8, (=0xb010)
	add     r3, #0x12
	lsl     r3, r3, #24
	ldr     r1, [r6, r1]
	mov     r0, r7
	add     r2, r4, r2
	lsr     r3, r3, #24
	bl      Function_2224a0c
	ldr     r0, [pc, #0x50] @ 0x22252dc, (=0x22293dc)
	ldr     r1, [pc, #0x50] @ 0x22252dc, (=0x22293dc)
	add     r2, r0, r5
	ldr     r0, [pc, #0x44] @ 0x22252d4, (=0x200c)
	ldr     r1, [r1, r5]
	ldr     r0, [r6, r0]
	ldr     r2, [r2, #0x4]
	bl      Function_22249ac
.thumb
branch_222529a: @ 222529a :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x4
	bcc     branch_222525c
	ldr     r0, [r7, #0x0]
	ldrh    r0, [r0, #0x24]
	cmp     r0, #0x0
	beq     branch_22252d2
	mov     r1, #0xb
	bl      LoadMoveData
	mov     r3, r0
	ldr     r1, [pc, #0x28] @ 0x22252e0, (=0x201c)
	add     r3, #0x12
	lsl     r3, r3, #24
	ldr     r1, [r7, r1]
	ldr     r2, [pc, #0x24] @ 0x22252e4, (=0xb014)
	mov     r0, r7
	lsr     r3, r3, #24
	bl      Function_2224a0c
	ldr     r0, [pc, #0x18] @ 0x22252e0, (=0x201c)
	mov     r1, #0x58
	ldr     r0, [r7, r0]
	mov     r2, #0xb0
	bl      Function_22249ac
.thumb
branch_22252d2: @ 22252d2 :thumb
	pop     {r3-r7,pc}
@ 0x22252d4

.word 0x200c @ 0x22252d4
.word 0xb010 @ 0x22252d8
.word 0x22293dc @ 0x22252dc
.word 0x201c @ 0x22252e0
.word 0xb014 @ 0x22252e4
.thumb
Function_22252e8: @ 22252e8 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x14] @ 0x2225300, (=0x2077)
	ldrb    r1, [r0, r1]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	bne     branch_22252fa
	bl      Function_22251b4
	pop     {r3,pc}
@ 0x22252fa

.thumb
branch_22252fa: @ 22252fa :thumb
	bl      Function_2225248
	pop     {r3,pc}
@ 0x2225300

.word 0x2077 @ 0x2225300
.thumb
Function_2225304: @ 2225304 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_200d37c
	cmp     r4, r0
	beq     branch_2225322
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200d3cc
	mov     r0, r5
	mov     r1, r4
	bl      Function_200d364
.thumb
branch_2225322: @ 2225322 :thumb
	pop     {r3-r5,pc}
@ 0x2225324

.thumb
Function_2225324: @ 2225324 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldrh    r0, [r2, #0x10]
	cmp     r0, #0x0
	bne     branch_2225332
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2225332

.thumb
branch_2225332: @ 2225332 :thumb
	ldrb    r1, [r2, #0x17]
	lsl     r1, r1, #25
	lsr     r1, r1, #28
	cmp     r1, #0x7
	beq     branch_2225344
	cmp     r1, #0x6
	beq     branch_2225344
	mov     r0, #0x5
	pop     {r3,pc}
@ 0x2225344

.thumb
branch_2225344: @ 2225344 :thumb
	ldrh    r1, [r2, #0x12]
	mov     r2, #0x30
	bl      Function_208c104
	cmp     r0, #0x4
	bhi     branch_2225376
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222535c

Jumppoints_222535c:
.hword branch_2225376 - Jumppoints_222535c - 2
.hword branch_2225372 - Jumppoints_222535c - 2
.hword branch_222536e - Jumppoints_222535c - 2
.hword branch_222536a - Jumppoints_222535c - 2
.hword branch_2225366 - Jumppoints_222535c - 2
.thumb
branch_2225366: @ 2225366 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222536a

.thumb
branch_222536a: @ 222536a :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x222536e

.thumb
branch_222536e: @ 222536e :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x2225372

.thumb
branch_2225372: @ 2225372 :thumb
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x2225376

.thumb
branch_2225376: @ 2225376 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222537a


.align 2, 0


.thumb
Function_222537c: @ 222537c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_22253d4
	add     r7, r5, #0x4
.thumb
branch_2225390: @ 2225390 :thumb
	mov     r0, #0x50
	mov     r1, r4
	mul     r1, r0
	add     r0, r5, r1
	ldrh    r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_22253c2
	add     r0, r7, r1
	bl      Function_2225324
	mov     r1, r0
	lsl     r0, r4, #2
	add     r6, r5, r0
	ldr     r0, [pc, #0x2c] @ 0x22253d8, (=0x1fd4)
	lsl     r1, r1, #24
	ldr     r0, [r6, r0]
	lsr     r1, r1, #24
	bl      Function_2225304
	ldr     r0, [pc, #0x20] @ 0x22253d8, (=0x1fd4)
	mov     r1, #0x1
	ldr     r0, [r6, r0]
	lsl     r1, r1, #12
	bl      Function_200d34c
.thumb
branch_22253c2: @ 22253c2 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      GetNrOfPkmnInParty
	cmp     r4, r0
	blt     branch_2225390
.thumb
branch_22253d4: @ 22253d4 :thumb
	pop     {r3-r7,pc}
@ 0x22253d6


.align 2


.word 0x1fd4 @ 0x22253d8
.thumb
Function_22253dc: @ 22253dc :thumb
	push    {r4,lr}
	mov     r4, r2
	cmp     r4, r1
	ble     branch_2225402
	add     r0, #0x2c
	sub     r1, r4, r1
	mul     r1, r0
	lsl     r0, r1, #16
	mov     r1, #0x4b
	lsl     r1, r1, #2
	blx     _u32_div_f
	lsr     r0, r0, #16
	lsl     r0, r0, #16
	asr     r0, r0, #16
	sub     r0, r4, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	pop     {r4,pc}
@ 0x2225402

.thumb
branch_2225402: @ 2225402 :thumb
	add     r0, #0x2c
	sub     r1, r1, r4
	mul     r1, r0
	lsl     r0, r1, #16
	mov     r1, #0x4b
	lsl     r1, r1, #2
	blx     _u32_div_f
	lsr     r0, r0, #16
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     r0, r4, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	pop     {r4,pc}
@ 0x2225420

.thumb
Function_2225420: @ 2225420 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	add     r5, r6, #0x4
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mov     r4, r1
	mul     r4, r0
	ldr     r0, [pc, #0x104] @ 0x2225538, (=0x2024)
	mov     r1, #0x0
	ldr     r0, [r6, r0]
	bl      Function_2225304
	ldr     r0, [pc, #0x100] @ 0x222553c, (=0x2028)
	mov     r1, #0x1
	ldr     r0, [r6, r0]
	bl      Function_2225304
	ldr     r0, [pc, #0xf8] @ 0x2225540, (=0x202c)
	mov     r1, #0x3
	ldr     r0, [r6, r0]
	bl      Function_2225304
	ldr     r0, [pc, #0xf4] @ 0x2225544, (=0x2030)
	mov     r1, #0x4
	ldr     r0, [r6, r0]
	bl      Function_2225304
	ldr     r0, [pc, #0xec] @ 0x2225548, (=0x2034)
	mov     r1, #0x2
	ldr     r0, [r6, r0]
	bl      Function_2225304
	add     r0, r5, r4
	add     r0, #0x28
	mov     r1, #0x90
	ldrb    r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_22253dc
	mov     r7, r0
	add     r0, r5, r4
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x2
	mov     r2, #0x18
	bl      Function_22253dc
	mov     r2, r0
	ldr     r0, [pc, #0xb4] @ 0x2225538, (=0x2024)
	mov     r1, r7
	ldr     r0, [r6, r0]
	bl      Function_22249ac
	add     r0, r5, r4
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	mov     r1, #0xa4
	mov     r2, #0x90
	bl      Function_22253dc
	mov     r7, r0
	add     r0, r5, r4
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x10
	mov     r2, #0x18
	bl      Function_22253dc
	mov     r2, r0
	ldr     r0, [pc, #0x8c] @ 0x222553c, (=0x2028)
	mov     r1, r7
	ldr     r0, [r6, r0]
	bl      Function_22249ac
	add     r0, r5, r4
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x9c
	mov     r2, #0x90
	bl      Function_22253dc
	mov     r7, r0
	add     r0, r5, r4
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x29
	mov     r2, #0x18
	bl      Function_22253dc
	mov     r2, r0
	ldr     r0, [pc, #0x68] @ 0x2225540, (=0x202c)
	mov     r1, r7
	ldr     r0, [r6, r0]
	bl      Function_22249ac
	add     r0, r5, r4
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x83
	mov     r2, #0x8f
	bl      Function_22253dc
	mov     r7, r0
	add     r0, r5, r4
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x29
	mov     r2, #0x18
	bl      Function_22253dc
	mov     r2, r0
	ldr     r0, [pc, #0x40] @ 0x2225544, (=0x2030)
	mov     r1, r7
	ldr     r0, [r6, r0]
	bl      Function_22249ac
	add     r0, r5, r4
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x7b
	mov     r2, #0x8f
	bl      Function_22253dc
	mov     r7, r0
	add     r0, r5, r4
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x10
	mov     r2, #0x18
	bl      Function_22253dc
	mov     r2, r0
	ldr     r0, [pc, #0x1c] @ 0x2225548, (=0x2034)
	mov     r1, r7
	ldr     r0, [r6, r0]
	bl      Function_22249ac
	pop     {r3-r7,pc}
@ 0x2225536


.align 2


.word 0x2024 @ 0x2225538
.word 0x2028 @ 0x222553c
.word 0x202c @ 0x2225540
.word 0x2030 @ 0x2225544
.word 0x2034 @ 0x2225548
.thumb
Function_222554c: @ 222554c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_16_223e010
	ldr     r1, [pc, #0x4c] @ 0x22255a8, (=0xb018)
	mov     r2, #0x7a
	str     r1, [sp, #0x0]
	sub     r1, #0xc
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x40] @ 0x22255ac, (=0x1fb4)
	ldr     r3, [r5, #0x0]
	lsl     r2, r2, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	ldr     r3, [r3, #0xc]
	mov     r4, r0
	bl      0x226db7c
	ldr     r3, [pc, #0x34] @ 0x22255b0, (=0xb00c)
	mov     r0, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r1, [pc, #0x20] @ 0x22255ac, (=0x1fb4)
	ldr     r2, [r5, #0x0]
	ldr     r1, [r5, r1]
	ldr     r2, [r2, #0xc]
	mov     r0, r4
	add     r3, #0xc
	bl      0x226dc24
	mov     r1, r0
	ldr     r0, [pc, #0x14] @ 0x22255b4, (=0x2088)
	ldr     r0, [r5, r0]
	bl      Function_2228a64
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22255a8

.word 0xb018 @ 0x22255a8
.word 0x1fb4 @ 0x22255ac
.word 0xb00c @ 0x22255b0
.word 0x2088 @ 0x22255b4
.thumb
Function_22255b8: @ 22255b8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x22255e0, (=0x2088)
	ldr     r0, [r4, r0]
	bl      Function_2228a58
	bl      0x226dca8
	ldr     r2, [pc, #0x18] @ 0x22255e4, (=0xb00c)
	ldr     r0, [pc, #0x18] @ 0x22255e8, (=0x1fb4)
	str     r2, [sp, #0x0]
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xc
	mov     r3, r2
	bl      0x226dbfc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22255e0

.word 0x2088 @ 0x22255e0
.word 0xb00c @ 0x22255e4
.word 0x1fb4 @ 0x22255e8
.thumb
Function_22255ec: @ 22255ec :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x20] @ 0x2225610, (=0x2077)
	ldrb    r2, [r0, r1]
	lsl     r2, r2, #24
	lsr     r2, r2, #28
	bne     branch_2225604
	add     r1, #0x11
	ldr     r0, [r0, r1]
	mov     r1, #0x5f
	bl      Function_2228ac8
	pop     {r3,pc}
@ 0x2225604

.thumb
branch_2225604: @ 2225604 :thumb
	add     r1, #0x11
	ldr     r0, [r0, r1]
	mov     r1, #0x7f
	bl      Function_2228ac8
	pop     {r3,pc}
@ 0x2225610

.word 0x2077 @ 0x2225610
.thumb
Function_2225614: @ 2225614 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x20] @ 0x2225638, (=0x2077)
	ldrb    r2, [r0, r1]
	lsl     r2, r2, #24
	lsr     r2, r2, #28
	bne     branch_222562c
	add     r1, #0x11
	ldr     r0, [r0, r1]
	mov     r1, #0x5
	bl      Function_2228ac8
	pop     {r3,pc}
@ 0x222562c

.thumb
branch_222562c: @ 222562c :thumb
	add     r1, #0x11
	ldr     r0, [r0, r1]
	mov     r1, #0x7
	bl      Function_2228ac8
	pop     {r3,pc}
@ 0x2225638

.word 0x2077 @ 0x2225638
.thumb
Function_222563c: @ 222563c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [pc, #0x98] @ 0x22256dc, (=0x2088)
	ldr     r1, [pc, #0x98] @ 0x22256e0, (=0x222938c)
	lsl     r2, r5, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r1, r2]
	bl      Function_2228a9c
	cmp     r5, #0x9
	bhi     branch_22256da
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2225660

Jumppoints_2225660:
.hword branch_2225674 - Jumppoints_2225660 - 2
.hword branch_222568e - Jumppoints_2225660 - 2
.hword branch_22256da - Jumppoints_2225660 - 2
.hword branch_22256a4 - Jumppoints_2225660 - 2
.hword branch_22256a4 - Jumppoints_2225660 - 2
.hword branch_22256da - Jumppoints_2225660 - 2
.hword branch_22256b4 - Jumppoints_2225660 - 2
.hword branch_22256c8 - Jumppoints_2225660 - 2
.hword branch_22256b4 - Jumppoints_2225660 - 2
.hword branch_22256c8 - Jumppoints_2225660 - 2
.thumb
branch_2225674: @ 2225674 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x64] @ 0x22256dc, (=0x2088)
	ldrb    r1, [r1, #0x11]
	ldr     r0, [r4, r0]
	bl      Function_2228a68
	ldr     r0, [pc, #0x60] @ 0x22256e4, (=0x208c)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	ldr     r0, [r4, #0x0]
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x222568e

.thumb
branch_222568e: @ 222568e :thumb
	ldr     r1, [pc, #0x4c] @ 0x22256dc, (=0x2088)
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldrb    r1, [r4, r1]
	bl      Function_2228a68
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x22256a4

.thumb
branch_22256a4: @ 22256a4 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x34] @ 0x22256dc, (=0x2088)
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r4, r0]
	bl      Function_2228a68
	pop     {r3-r5,pc}
@ 0x22256b4

.thumb
branch_22256b4: @ 22256b4 :thumb
	mov     r0, r4
	bl      Function_22255ec
	ldr     r1, [pc, #0x20] @ 0x22256dc, (=0x2088)
	ldr     r0, [r4, r1]
	.hword  0x1d49 @ add r1, r1, #0x5
	ldrb    r1, [r4, r1]
	bl      Function_2228a68
	pop     {r3-r5,pc}
@ 0x22256c8

.thumb
branch_22256c8: @ 22256c8 :thumb
	mov     r0, r4
	bl      Function_2225614
	ldr     r1, [pc, #0xc] @ 0x22256dc, (=0x2088)
	ldr     r0, [r4, r1]
	.hword  0x1d89 @ add r1, r1, #0x6
	ldrb    r1, [r4, r1]
	bl      Function_2228a68
.thumb
branch_22256da: @ 22256da :thumb
	pop     {r3-r5,pc}
@ 0x22256dc

.word 0x2088 @ 0x22256dc
.word 0x222938c @ 0x22256e0
.word 0x208c @ 0x22256e4
.thumb
Function_22256e8: @ 22256e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x222570c, (=0x2088)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_2228a60
	ldr     r0, [pc, #0x14] @ 0x222570c, (=0x2088)
	ldr     r0, [r4, r0]
	bl      Function_2228a90
	ldr     r0, [pc, #0xc] @ 0x222570c, (=0x2088)
	ldr     r0, [r4, r0]
	bl      Function_2228a58
	bl      0x226dde8
	pop     {r4,pc}
@ 0x222570c

.word 0x2088 @ 0x222570c
.thumb
Function_2225710: @ 2225710 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r3, r2
	mov     r4, r1
	bl      Function_2225af0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xab
	lsl     r0, r0, #2
	mov     r3, #0x6
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	str     r3, [sp, #0x4]
	bl      Function_2225af0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0xdb
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0xc
	bl      Function_2225af0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x268] @ 0x22259d0, (=0x42c)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x12
	bl      Function_2225af0
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x258] @ 0x22259d4, (=0x4ec)
	mov     r1, r4
	add     r0, r5, r0
	mov     r3, #0x0
	bl      Function_2225af0
	ldr     r0, [pc, #0x250] @ 0x22259d8, (=0x5ac)
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r3, #0x6
	add     r0, r5, r0
	mov     r1, r4
	str     r3, [sp, #0x4]
	bl      Function_2225af0
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x238] @ 0x22259dc, (=0x66c)
	mov     r1, r4
	add     r0, r5, r0
	mov     r3, #0xc
	bl      Function_2225af0
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x228] @ 0x22259e0, (=0x72c)
	mov     r1, r4
	add     r0, r5, r0
	mov     r3, #0x12
	bl      Function_2225af0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x218] @ 0x22259e4, (=0x7ec)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x27
	bl      Function_2225af0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x208] @ 0x22259e8, (=0x86e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x2c
	bl      Function_2225af0
	mov     r2, #0xd
	str     r2, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, #0x8f
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0x27
	bl      Function_2225af0
	mov     r2, #0xd
	str     r2, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1e0] @ 0x22259ec, (=0x972)
	mov     r1, r4
	add     r0, r5, r0
	mov     r3, #0x2c
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1d0] @ 0x22259f0, (=0x9f4)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x31
	bl      Function_2225af0
	ldr     r0, [pc, #0x1c8] @ 0x22259f4, (=0xa26)
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0x31
	str     r2, [sp, #0x4]
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1b4] @ 0x22259f8, (=0xa58)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xa
	mov     r3, #0x31
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1a4] @ 0x22259fc, (=0xa8a)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xf
	mov     r3, #0x31
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x194] @ 0x2225a00, (=0xabc)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2225af0
	ldr     r0, [pc, #0x188] @ 0x2225a04, (=0xaee)
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0x36
	str     r2, [sp, #0x4]
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0xb2
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0xa
	mov     r3, #0x36
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x160] @ 0x2225a08, (=0xb52)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xf
	mov     r3, #0x36
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x150] @ 0x2225a0c, (=0xb84)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1a
	mov     r3, #0x18
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x140] @ 0x2225a10, (=0xbb6)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1a
	mov     r3, #0x1d
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x130] @ 0x2225a14, (=0xbe8)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1a
	mov     r3, #0x22
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x120] @ 0x2225a18, (=0xc1a)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1a
	mov     r3, #0x27
	bl      Function_2225af0
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, #0x6d
	lsl     r0, r0, #6
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x18
	bl      Function_2225af0
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xf4] @ 0x2225a1c, (=0x1c44)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x1d
	bl      Function_2225af0
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe4] @ 0x2225a20, (=0x1d48)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x22
	bl      Function_2225af0
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xd0] @ 0x2225a24, (=0x1e4c)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x14
	mov     r3, #0x31
	bl      Function_2225af0
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc0] @ 0x2225a28, (=0x1e94)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x14
	mov     r3, #0x35
	bl      Function_2225af0
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xac] @ 0x2225a2c, (=0x1edc)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x14
	mov     r3, #0x39
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x9c] @ 0x2225a30, (=0x1f24)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x3b
	bl      Function_2225af0
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x88] @ 0x2225a34, (=0x1f38)
	mov     r1, r4
	add     r0, r5, r0
	mov     r3, #0x3b
	bl      Function_2225af0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x78] @ 0x2225a38, (=0x1f4c)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xa
	mov     r3, #0x3b
	bl      Function_2225af0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22259ce


.align 2


.word 0x42c @ 0x22259d0
.word 0x4ec @ 0x22259d4
.word 0x5ac @ 0x22259d8
.word 0x66c @ 0x22259dc
.word 0x72c @ 0x22259e0
.word 0x7ec @ 0x22259e4
.word 0x86e @ 0x22259e8
.word 0x972 @ 0x22259ec
.word 0x9f4 @ 0x22259f0
.word 0xa26 @ 0x22259f4
.word 0xa58 @ 0x22259f8
.word 0xa8a @ 0x22259fc
.word 0xabc @ 0x2225a00
.word 0xaee @ 0x2225a04
.word 0xb52 @ 0x2225a08
.word 0xb84 @ 0x2225a0c
.word 0xbb6 @ 0x2225a10
.word 0xbe8 @ 0x2225a14
.word 0xc1a @ 0x2225a18
.word 0x1c44 @ 0x2225a1c
.word 0x1d48 @ 0x2225a20
.word 0x1e4c @ 0x2225a24
.word 0x1e94 @ 0x2225a28
.word 0x1edc @ 0x2225a2c
.word 0x1f24 @ 0x2225a30
.word 0x1f38 @ 0x2225a34
.word 0x1f4c @ 0x2225a38
.thumb
Function_2225a3c: @ 2225a3c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x2225ae4, (=0xc4c)
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r3, r2
	mov     r4, r1
	bl      Function_2225af0
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x88] @ 0x2225ae8, (=0x1048)
	mov     r3, #0x11
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	str     r3, [sp, #0x4]
	bl      Function_2225af0
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x2225aec, (=0x1444)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x22
	bl      Function_2225af0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x61
	lsl     r0, r0, #6
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x33
	bl      Function_2225af0
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x19
	lsl     r0, r0, #8
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0x33
	bl      Function_2225af0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x67
	lsl     r0, r0, #6
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x39
	bl      Function_2225af0
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x6a
	lsl     r0, r0, #6
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0x39
	bl      Function_2225af0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2225ae2


.align 2


.word 0xc4c @ 0x2225ae4
.word 0x1048 @ 0x2225ae8
.word 0x1444 @ 0x2225aec
.thumb
Function_2225af0: @ 2225af0 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	mov     lr, r3
	ldrb    r3, [r0, #0x14]
	mov     r6, #0x0
	mov     r12, r3
	cmp     r3, #0x0
	ble     branch_2225b3c
	ldrb    r3, [r0, #0x10]
	lsl     r2, r2, #1
	add     r7, r1, r2
.thumb
branch_2225b08: @ 2225b08 :thumb
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_2225b30
	mov     r0, lr
	add     r0, r0, r6
	lsl     r0, r0, #6
	add     r5, r7, r0
	mov     r0, r6
	mul     r0, r3
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x0]
	add     r4, r0, r1
.thumb
branch_2225b20: @ 2225b20 :thumb
	lsl     r1, r2, #1
	ldrh    r0, [r5, r1]
	strh    r0, [r4, r1]
	add     r0, r2, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	cmp     r2, r3
	blt     branch_2225b20
.thumb
branch_2225b30: @ 2225b30 :thumb
	add     r0, r6, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r12
	cmp     r6, r0
	blt     branch_2225b08
.thumb
branch_2225b3c: @ 2225b3c :thumb
	pop     {r3-r7,pc}
@ 0x2225b3e


.align 2, 0


.thumb
Function_2225b40: @ 2225b40 :thumb
	cmp     r1, #0x21
	bhi     branch_2225c26
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2225b50

Jumppoints_2225b50:
.hword branch_2225b94 - Jumppoints_2225b50 - 2
.hword branch_2225b94 - Jumppoints_2225b50 - 2
.hword branch_2225b94 - Jumppoints_2225b50 - 2
.hword branch_2225b94 - Jumppoints_2225b50 - 2
.hword branch_2225b94 - Jumppoints_2225b50 - 2
.hword branch_2225b94 - Jumppoints_2225b50 - 2
.hword branch_2225bb2 - Jumppoints_2225b50 - 2
.hword branch_2225bbe - Jumppoints_2225b50 - 2
.hword branch_2225bcc - Jumppoints_2225b50 - 2
.hword branch_2225bcc - Jumppoints_2225b50 - 2
.hword branch_2225bcc - Jumppoints_2225b50 - 2
.hword branch_2225bcc - Jumppoints_2225b50 - 2
.hword branch_2225bd8 - Jumppoints_2225b50 - 2
.hword branch_2225be4 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225c0e - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bf0 - Jumppoints_2225b50 - 2
.hword branch_2225bfe - Jumppoints_2225b50 - 2
.hword branch_2225bfe - Jumppoints_2225b50 - 2
.hword branch_2225c1a - Jumppoints_2225b50 - 2
.hword branch_2225c1a - Jumppoints_2225b50 - 2
.hword branch_2225c1a - Jumppoints_2225b50 - 2
.hword branch_2225c1a - Jumppoints_2225b50 - 2
.thumb
branch_2225b94: @ 2225b94 :thumb
	cmp     r3, #0x0
	bne     branch_2225ba6
	mov     r1, #0x7b
	lsl     r1, r1, #2
	add     r1, r0, r1
	mov     r0, #0xc0
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225ba6

.thumb
branch_2225ba6: @ 2225ba6 :thumb
	ldr     r1, [pc, #0x84] @ 0x2225c2c, (=0x4ec)
	add     r1, r0, r1
	mov     r0, #0xc0
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225bb2

.thumb
branch_2225bb2: @ 2225bb2 :thumb
	ldr     r1, [pc, #0x7c] @ 0x2225c30, (=0xb84)
	add     r1, r0, r1
	mov     r0, #0x32
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225bbe

.thumb
branch_2225bbe: @ 2225bbe :thumb
	ldr     r1, [pc, #0x74] @ 0x2225c34, (=0xc4c)
	add     r1, r0, r1
	mov     r0, #0xff
	lsl     r0, r0, #2
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225bcc

.thumb
branch_2225bcc: @ 2225bcc :thumb
	ldr     r1, [pc, #0x68] @ 0x2225c38, (=0x7ec)
	add     r1, r0, r1
	mov     r0, #0x82
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225bd8

.thumb
branch_2225bd8: @ 2225bd8 :thumb
	ldr     r1, [pc, #0x60] @ 0x2225c3c, (=0x9f4)
	add     r1, r0, r1
	mov     r0, #0x32
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225be4

.thumb
branch_2225be4: @ 2225be4 :thumb
	ldr     r1, [pc, #0x58] @ 0x2225c40, (=0xabc)
	add     r1, r0, r1
	mov     r0, #0x32
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225bf0

.thumb
branch_2225bf0: @ 2225bf0 :thumb
	mov     r1, #0x61
	lsl     r1, r1, #6
	add     r1, r0, r1
	mov     r0, #0xc0
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225bfe

.thumb
branch_2225bfe: @ 2225bfe :thumb
	mov     r1, #0x6d
	lsl     r1, r1, #6
	add     r1, r0, r1
	lsl     r0, r2, #6
	add     r0, r2, r0
	lsl     r0, r0, #2
	add     r0, r1, r0
	bx      lr
@ 0x2225c0e

.thumb
branch_2225c0e: @ 2225c0e :thumb
	ldr     r1, [pc, #0x34] @ 0x2225c44, (=0x1e4c)
	add     r1, r0, r1
	mov     r0, #0x48
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225c1a

.thumb
branch_2225c1a: @ 2225c1a :thumb
	ldr     r1, [pc, #0x2c] @ 0x2225c48, (=0x1f24)
	add     r1, r0, r1
	mov     r0, #0x14
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2225c26

.thumb
branch_2225c26: @ 2225c26 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2225c2a


.align 2


.word 0x4ec @ 0x2225c2c
.word 0xb84 @ 0x2225c30
.word 0xc4c @ 0x2225c34
.word 0x7ec @ 0x2225c38
.word 0x9f4 @ 0x2225c3c
.word 0xabc @ 0x2225c40
.word 0x1e4c @ 0x2225c44
.word 0x1f24 @ 0x2225c48
.thumb
Function_2225c4c: @ 2225c4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r2
	mov     r2, r3
	add     r3, sp, #0x10
	mov     r4, r1
	ldrb    r3, [r3, #0x10]
	mov     r1, r7
	str     r0, [sp, #0x0]
	bl      Function_2225b40
	mov     r1, r0
	ldr     r2, [pc, #0x118] @ 0x2225d80, (=0x2229926)
	lsl     r0, r7, #2
	ldrb    r6, [r2, r0]
	ldr     r2, [pc, #0x118] @ 0x2225d84, (=0x2229927)
	ldrb    r0, [r2, r0]
	mov     r5, r6
	mul     r5, r0
	mov     r0, r4
	lsl     r2, r5, #1
	blx     CopyDataInByteSteps
	cmp     r7, #0x5
	bgt     branch_2225c9a
	cmp     r7, #0x0
	blt     branch_2225d7c
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2225c8e

Jumppoints_2225c8e:
.hword branch_2225ca2 - Jumppoints_2225c8e - 2
.hword branch_2225ca2 - Jumppoints_2225c8e - 2
.hword branch_2225ca2 - Jumppoints_2225c8e - 2
.hword branch_2225ca2 - Jumppoints_2225c8e - 2
.hword branch_2225ca2 - Jumppoints_2225c8e - 2
.hword branch_2225ca2 - Jumppoints_2225c8e - 2
.thumb
branch_2225c9a: @ 2225c9a :thumb
	cmp     r7, #0x1b
	beq     branch_2225d5c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2225ca2

.thumb
branch_2225ca2: @ 2225ca2 :thumb
	mov     r0, #0x50
	mov     r1, r7
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	ldrh    r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_2225d7c
	ldrb    r1, [r0, #0x1b]
	lsl     r1, r1, #24
	lsr     r1, r1, #31
	beq     branch_2225d02
	lsl     r2, r6, #1
	add     r0, r2, #0x5
	lsl     r0, r0, #1
	ldrh    r1, [r4, r0]
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	add     r1, r6, r2
	.hword  0x1d49 @ add r1, r1, #0x5
	lsl     r1, r1, #1
	ldrh    r1, [r4, r1]
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	add     r0, sp, #0x4
.thumb
branch_2225cd4: @ 2225cd4 :thumb
	add     r5, r1, #0x2
	lsl     r3, r1, #1
	mov     r7, r5
	mul     r7, r6
	lsl     r5, r7, #1
	ldrh    r3, [r0, r3]
	mov     r2, #0x0
	add     r5, r4, r5
.thumb
branch_2225ce4: @ 2225ce4 :thumb
	lsl     r7, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #24
	add     r7, r5, r7
	lsr     r2, r2, #24
	strh    r3, [r7, #0xc]
	cmp     r2, #0x9
	bcc     branch_2225ce4
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, #0x2
	bcc     branch_2225cd4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2225d02

.thumb
branch_2225d02: @ 2225d02 :thumb
	ldrh    r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_2225d2c
	mov     r1, #0x0
	cmp     r5, #0x0
	ble     branch_2225d7c
	mov     r3, #0x2
	ldr     r2, [pc, #0x74] @ 0x2225d88, (=0xfff)
	lsl     r3, r3, #12
.thumb
branch_2225d14: @ 2225d14 :thumb
	lsl     r0, r1, #1
	ldrh    r6, [r4, r0]
	and     r6, r2
	orr     r6, r3
	strh    r6, [r4, r0]
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, r5
	blt     branch_2225d14
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2225d2c

.thumb
branch_2225d2c: @ 2225d2c :thumb
	lsl     r1, r7, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	bl      Function_22219ac
	cmp     r0, #0x1
	bne     branch_2225d7c
	mov     r1, #0x0
	cmp     r5, #0x0
	ble     branch_2225d7c
	ldr     r2, [pc, #0x44] @ 0x2225d88, (=0xfff)
	add     r3, r2, #0x1
.thumb
branch_2225d44: @ 2225d44 :thumb
	lsl     r0, r1, #1
	ldrh    r6, [r4, r0]
	and     r6, r2
	orr     r6, r3
	strh    r6, [r4, r0]
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, r5
	blt     branch_2225d44
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2225d5c

.thumb
branch_2225d5c: @ 2225d5c :thumb
	mov     r1, #0x0
	cmp     r5, #0x0
	ble     branch_2225d7c
	mov     r3, #0xa
	ldr     r2, [pc, #0x20] @ 0x2225d88, (=0xfff)
	lsl     r3, r3, #12
.thumb
branch_2225d68: @ 2225d68 :thumb
	lsl     r0, r1, #1
	ldrh    r6, [r4, r0]
	and     r6, r2
	orr     r6, r3
	strh    r6, [r4, r0]
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, r5
	blt     branch_2225d68
.thumb
branch_2225d7c: @ 2225d7c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2225d80

.word 0x2229926 @ 0x2225d80
.word 0x2229927 @ 0x2225d84
.word 0xfff @ 0x2225d88
.thumb
Function_2225d8c: @ 2225d8c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r5, r0
	ldr     r0, [sp, #0xc]
	lsl     r4, r0, #2
	ldr     r0, [pc, #0x58] @ 0x2225df8, (=0x2229927)
	ldrb    r7, [r0, r4]
	ldr     r0, [pc, #0x58] @ 0x2225dfc, (=0x2229926)
	ldrb    r6, [r0, r4]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	mul     r1, r7
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #1
	bl      malloc
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	bl      Function_2225c4c
	ldr     r0, [pc, #0x38] @ 0x2225e00, (=0x2229925)
	ldr     r3, [pc, #0x3c] @ 0x2225e04, (=0x2229924)
	ldrb    r0, [r0, r4]
	ldrb    r3, [r3, r4]
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	mov     r0, #0x79
	str     r7, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      Function_20198c0
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      Function_201c3c0
	ldr     r0, [sp, #0x18]
	bl      free
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2225df6


.align 2


.word 0x2229927 @ 0x2225df8
.word 0x2229926 @ 0x2225dfc
.word 0x2229925 @ 0x2225e00
.word 0x2229924 @ 0x2225e04
.thumb
Function_2225e08: @ 2225e08 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x98] @ 0x2225ea8, (=0x222989c)
	lsl     r3, r1, #2
	ldr     r6, [r0, r3]
	cmp     r6, #0x0
	beq     branch_2225ea6
	cmp     r1, #0x5
	bhi     branch_2225e22
	ldr     r0, [pc, #0x90] @ 0x2225eac, (=0x222988c)
	ldrb    r0, [r0, r2]
	str     r0, [sp, #0x0]
	b       branch_2225e28
@ 0x2225e22

.thumb
branch_2225e22: @ 2225e22 :thumb
	ldr     r0, [pc, #0x8c] @ 0x2225eb0, (=0x222987c)
	ldrb    r0, [r0, r2]
	str     r0, [sp, #0x0]
.thumb
branch_2225e28: @ 2225e28 :thumb
	cmp     r2, #0x0
	beq     branch_2225e36
	cmp     r2, #0x1
	beq     branch_2225e3a
	cmp     r2, #0x2
	beq     branch_2225e3e
	b       branch_2225e40
@ 0x2225e36

.thumb
branch_2225e36: @ 2225e36 :thumb
	mov     r7, #0x1
	b       branch_2225e40
@ 0x2225e3a

.thumb
branch_2225e3a: @ 2225e3a :thumb
	mov     r7, #0x0
	b       branch_2225e40
@ 0x2225e3e

.thumb
branch_2225e3e: @ 2225e3e :thumb
	mov     r7, #0x1
.thumb
branch_2225e40: @ 2225e40 :thumb
	cmp     r1, #0xe
	bcc     branch_2225e74
	cmp     r1, #0x11
	bhi     branch_2225e74
	ldr     r1, [pc, #0x68] @ 0x2225eb4, (=0x2070)
	ldr     r2, [sp, #0x0]
	ldr     r0, [r5, r1]
	.hword  0x1d49 @ add r1, r1, #0x5
	ldrb    r1, [r5, r1]
	mov     r3, #0x0
	ldrb    r1, [r6, r1]
	lsl     r1, r1, #4
	add     r0, r0, r1
	mov     r1, r7
	bl      Function_201c04c
	ldr     r1, [pc, #0x50] @ 0x2225eb4, (=0x2070)
	ldr     r0, [r5, r1]
	.hword  0x1d49 @ add r1, r1, #0x5
	ldrb    r1, [r5, r1]
	ldrb    r1, [r6, r1]
	lsl     r1, r1, #4
	add     r0, r0, r1
	bl      Function_201a9a4
	pop     {r3-r7,pc}
@ 0x2225e74

.thumb
branch_2225e74: @ 2225e74 :thumb
	mov     r4, #0x0
.thumb
branch_2225e76: @ 2225e76 :thumb
	ldrb    r2, [r6, r4]
	cmp     r2, #0xff
	beq     branch_2225ea6
	ldr     r0, [pc, #0x34] @ 0x2225eb4, (=0x2070)
	mov     r3, #0x0
	ldr     r1, [r5, r0]
	lsl     r0, r2, #4
	add     r0, r1, r0
	ldr     r2, [sp, #0x0]
	mov     r1, r7
	bl      Function_201c04c
	ldr     r0, [pc, #0x24] @ 0x2225eb4, (=0x2070)
	ldr     r1, [r5, r0]
	ldrb    r0, [r6, r4]
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_201a9a4
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x8
	bcc     branch_2225e76
.thumb
branch_2225ea6: @ 2225ea6 :thumb
	pop     {r3-r7,pc}
@ 0x2225ea8

.word 0x222989c @ 0x2225ea8
.word 0x222988c @ 0x2225eac
.word 0x222987c @ 0x2225eb0
.word 0x2070 @ 0x2225eb4
.thumb
Function_2225eb8: @ 2225eb8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x1b
	bhi     branch_2225fbc
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2225ece

Jumppoints_2225ece:
.hword branch_2225f06 - Jumppoints_2225ece - 2
.hword branch_2225f06 - Jumppoints_2225ece - 2
.hword branch_2225f06 - Jumppoints_2225ece - 2
.hword branch_2225f06 - Jumppoints_2225ece - 2
.hword branch_2225f06 - Jumppoints_2225ece - 2
.hword branch_2225f06 - Jumppoints_2225ece - 2
.hword branch_2225fbc - Jumppoints_2225ece - 2
.hword branch_2225f44 - Jumppoints_2225ece - 2
.hword branch_2225fbc - Jumppoints_2225ece - 2
.hword branch_2225fbc - Jumppoints_2225ece - 2
.hword branch_2225fbc - Jumppoints_2225ece - 2
.hword branch_2225fbc - Jumppoints_2225ece - 2
.hword branch_2225fbc - Jumppoints_2225ece - 2
.hword branch_2225fbc - Jumppoints_2225ece - 2
.hword branch_2225f76 - Jumppoints_2225ece - 2
.hword branch_2225f76 - Jumppoints_2225ece - 2
.hword branch_2225f76 - Jumppoints_2225ece - 2
.hword branch_2225f76 - Jumppoints_2225ece - 2
.hword branch_2225fbc - Jumppoints_2225ece - 2
.hword branch_2225f8e - Jumppoints_2225ece - 2
.hword branch_2225f8e - Jumppoints_2225ece - 2
.hword branch_2225f8e - Jumppoints_2225ece - 2
.hword branch_2225f8e - Jumppoints_2225ece - 2
.hword branch_2225fa6 - Jumppoints_2225ece - 2
.hword branch_2225fa6 - Jumppoints_2225ece - 2
.hword branch_2225fa6 - Jumppoints_2225ece - 2
.hword branch_2225fa6 - Jumppoints_2225ece - 2
.hword branch_2225fa6 - Jumppoints_2225ece - 2
.thumb
branch_2225f06: @ 2225f06 :thumb
	ldr     r0, [pc, #0xb8] @ 0x2225fc0, (=0x2229896)
	lsl     r1, r2, #1
	ldsh    r6, [r0, r1]
	mov     r0, r5
	add     r0, #0xd
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0xac] @ 0x2225fc4, (=0x1fb8)
	mov     r2, r6
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d5dc
	lsl     r0, r5, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x9c] @ 0x2225fc4, (=0x1fb8)
	mov     r2, r6
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d5dc
	add     r0, r5, #0x7
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x8c] @ 0x2225fc4, (=0x1fb8)
	mov     r2, r6
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d5dc
	pop     {r4-r6,pc}
@ 0x2225f44

.thumb
branch_2225f44: @ 2225f44 :thumb
	ldr     r0, [pc, #0x80] @ 0x2225fc8, (=0x2229890)
	lsl     r1, r2, #1
	ldsh    r5, [r0, r1]
	ldr     r0, [r4, #0x0]
	ldrb    r0, [r0, #0x11]
	mov     r2, r5
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x6c] @ 0x2225fc4, (=0x1fb8)
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d5dc
	ldr     r0, [r4, #0x0]
	mov     r2, r5
	ldrb    r0, [r0, #0x11]
	.hword  0x1dc0 @ add r0, r0, #0x7
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x58] @ 0x2225fc4, (=0x1fb8)
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d5dc
	pop     {r4-r6,pc}
@ 0x2225f76

.thumb
branch_2225f76: @ 2225f76 :thumb
	add     r0, r5, #0x7
	lsl     r0, r0, #2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x48] @ 0x2225fc8, (=0x2229890)
	add     r1, r4, r0
	ldr     r0, [pc, #0x40] @ 0x2225fc4, (=0x1fb8)
	ldsh    r2, [r2, r3]
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d5dc
	pop     {r4-r6,pc}
@ 0x2225f8e

.thumb
branch_2225f8e: @ 2225f8e :thumb
	add     r0, r5, #0x2
	lsl     r0, r0, #2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x30] @ 0x2225fc8, (=0x2229890)
	add     r1, r4, r0
	ldr     r0, [pc, #0x28] @ 0x2225fc4, (=0x1fb8)
	ldsh    r2, [r2, r3]
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d5dc
	pop     {r4-r6,pc}
@ 0x2225fa6

.thumb
branch_2225fa6: @ 2225fa6 :thumb
	.hword  0x1ea8 @ sub r0, r5, #0x2
	lsl     r0, r0, #2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x18] @ 0x2225fc8, (=0x2229890)
	add     r1, r4, r0
	ldr     r0, [pc, #0x10] @ 0x2225fc4, (=0x1fb8)
	ldsh    r2, [r2, r3]
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d5dc
.thumb
branch_2225fbc: @ 2225fbc :thumb
	pop     {r4-r6,pc}
@ 0x2225fbe


.align 2


.word 0x2229896 @ 0x2225fc0
.word 0x1fb8 @ 0x2225fc4
.word 0x2229890 @ 0x2225fc8
.thumb
Function_2225fcc: @ 2225fcc :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0x44] @ 0x2226014, (=0x1fa3)
	mov     r5, r0
	ldrb    r6, [r5, r3]
	mov     r2, #0x70
	mov     r4, r1
	bic     r6, r2
	strb    r6, [r5, r3]
	cmp     r4, #0x5
	bhi     branch_2225ff6
	bl      Function_22213f0
	cmp     r0, #0x2
	bne     branch_2225ff6
	ldr     r1, [pc, #0x28] @ 0x2226014, (=0x1fa3)
	mov     r0, #0x70
	ldrb    r2, [r5, r1]
	bic     r2, r0
	mov     r0, #0x10
	orr     r0, r2
	strb    r0, [r5, r1]
.thumb
branch_2225ff6: @ 2225ff6 :thumb
	ldr     r0, [pc, #0x20] @ 0x2226018, (=0x1fa0)
	mov     r2, #0x0
	strb    r2, [r5, r0]
	add     r1, r0, #0x1
	strb    r2, [r5, r1]
	add     r1, r0, #0x2
	strb    r4, [r5, r1]
	add     r1, r0, #0x3
	ldrb    r2, [r5, r1]
	mov     r1, #0x80
	.hword  0x1cc0 @ add r0, r0, #0x3
	orr     r1, r2
	strb    r1, [r5, r0]
	pop     {r4-r6,pc}
@ 0x2226012


.align 2


.word 0x1fa3 @ 0x2226014
.word 0x1fa0 @ 0x2226018
.thumb
Function_222601c: @ 222601c :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0xc0] @ 0x22260e0, (=0x1fa3)
	mov     r4, r0
	ldrb    r3, [r4, r2]
	lsl     r1, r3, #24
	lsr     r1, r1, #31
	beq     branch_22260dc
	.hword  0x1ed1 @ sub r1, r2, #0x3
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_222603c
	cmp     r1, #0x1
	beq     branch_2226070
	cmp     r1, #0x2
	beq     branch_22260a4
	pop     {r4,pc}
@ 0x222603c

.thumb
branch_222603c: @ 222603c :thumb
	.hword  0x1e51 @ sub r1, r2, #0x1
	ldrb    r1, [r4, r1]
	lsl     r3, r3, #25
	mov     r2, #0x1
	lsr     r3, r3, #29
	bl      Function_2225d8c
	ldr     r1, [pc, #0x98] @ 0x22260e4, (=0x1fa2)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	mov     r2, #0x1
	bl      Function_2225e08
	ldr     r1, [pc, #0x8c] @ 0x22260e4, (=0x1fa2)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	mov     r2, #0x1
	bl      Function_2225eb8
	ldr     r0, [pc, #0x84] @ 0x22260e8, (=0x1fa1)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2226070

.thumb
branch_2226070: @ 2226070 :thumb
	.hword  0x1e51 @ sub r1, r2, #0x1
	ldrb    r1, [r4, r1]
	lsl     r3, r3, #25
	mov     r2, #0x2
	lsr     r3, r3, #29
	bl      Function_2225d8c
	ldr     r1, [pc, #0x64] @ 0x22260e4, (=0x1fa2)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	mov     r2, #0x2
	bl      Function_2225e08
	ldr     r1, [pc, #0x58] @ 0x22260e4, (=0x1fa2)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	mov     r2, #0x2
	bl      Function_2225eb8
	ldr     r0, [pc, #0x50] @ 0x22260e8, (=0x1fa1)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r1, #0x2
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x22260a4

.thumb
branch_22260a4: @ 22260a4 :thumb
	.hword  0x1e51 @ sub r1, r2, #0x1
	ldrb    r1, [r4, r1]
	lsl     r3, r3, #25
	mov     r2, #0x0
	lsr     r3, r3, #29
	bl      Function_2225d8c
	ldr     r1, [pc, #0x30] @ 0x22260e4, (=0x1fa2)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	mov     r2, #0x0
	bl      Function_2225e08
	ldr     r1, [pc, #0x24] @ 0x22260e4, (=0x1fa2)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	mov     r2, #0x0
	bl      Function_2225eb8
	ldr     r0, [pc, #0x1c] @ 0x22260e8, (=0x1fa1)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	add     r1, r0, #0x2
	ldrb    r2, [r4, r1]
	mov     r1, #0x80
	.hword  0x1c80 @ add r0, r0, #0x2
	bic     r2, r1
	strb    r2, [r4, r0]
.thumb
branch_22260dc: @ 22260dc :thumb
	pop     {r4,pc}
@ 0x22260de


.align 2


.word 0x1fa3 @ 0x22260e0
.word 0x1fa2 @ 0x22260e4
.word 0x1fa1 @ 0x22260e8
.thumb
Function_22260ec: @ 22260ec :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	cmp     r1, #0x9
	bls     branch_22260f6
	b       branch_222643e
@ 0x22260f6

.thumb
branch_22260f6: @ 22260f6 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2226102

Jumppoints_2226102:
.hword branch_2226116 - Jumppoints_2226102 - 2
.hword branch_222618e - Jumppoints_2226102 - 2
.hword branch_22261ea - Jumppoints_2226102 - 2
.hword branch_222623e - Jumppoints_2226102 - 2
.hword branch_22262dc - Jumppoints_2226102 - 2
.hword branch_2226328 - Jumppoints_2226102 - 2
.hword branch_2226380 - Jumppoints_2226102 - 2
.hword branch_22263e0 - Jumppoints_2226102 - 2
.hword branch_2226380 - Jumppoints_2226102 - 2
.hword branch_2226410 - Jumppoints_2226102 - 2
.thumb
branch_2226116: @ 2226116 :thumb
	mov     r5, #0x0
	mov     r6, #0x3
	mov     r7, #0x1
.thumb
branch_222611c: @ 222611c :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_22213f0
	cmp     r0, #0x0
	bne     branch_2226138
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, r7
	bl      Function_2225d8c
	b       branch_222615e
@ 0x2226138

.thumb
branch_2226138: @ 2226138 :thumb
	cmp     r0, #0x1
	bne     branch_222614c
	lsl     r1, r5, #24
	mov     r2, #0x0
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2225d8c
	b       branch_222615e
@ 0x222614c

.thumb
branch_222614c: @ 222614c :thumb
	cmp     r0, #0x2
	bne     branch_222615e
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2225d8c
.thumb
branch_222615e: @ 222615e :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x6
	bcc     branch_222611c
	ldr     r0, [r4, #0x0]
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2226180
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x2226180

.thumb
branch_2226180: @ 2226180 :thumb
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x222618e

.thumb
branch_222618e: @ 222618e :thumb
	mov     r2, #0x0
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2225d8c
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r0, #0x11]
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r4, r0
	ldrb    r0, [r0, #0x1b]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	beq     branch_22261d0
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2225d8c
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x22261d0

.thumb
branch_22261d0: @ 22261d0 :thumb
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x8
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0xa
	mov     r3, r2
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x22261ea

.thumb
branch_22261ea: @ 22261ea :thumb
	bl      Function_2226484
	cmp     r0, #0x1
	bne     branch_222620c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0xc
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0xd
	mov     r3, r2
	bl      Function_2225d8c
	b       branch_2226224
@ 0x222620c

.thumb
branch_222620c: @ 222620c :thumb
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2225d8c
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2225d8c
.thumb
branch_2226224: @ 2226224 :thumb
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0xb
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x222623e

.thumb
branch_222623e: @ 222623e :thumb
	bl      Function_2226484
	cmp     r0, #0x1
	bne     branch_2226260
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0xc
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0xd
	mov     r3, r2
	bl      Function_2225d8c
	b       branch_2226278
@ 0x2226260

.thumb
branch_2226260: @ 2226260 :thumb
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2225d8c
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2225d8c
.thumb
branch_2226278: @ 2226278 :thumb
	mov     r5, #0x0
	mov     r7, #0x3
	mov     r6, #0x50
.thumb
branch_222627e: @ 222627e :thumb
	ldr     r0, [r4, #0x0]
	lsl     r1, r5, #3
	ldrb    r0, [r0, #0x11]
	mov     r2, r0
	mul     r2, r6
	add     r0, r4, r2
	add     r0, r1, r0
	ldrh    r0, [r0, #0x34]
	cmp     r0, #0x0
	beq     branch_22262a6
	mov     r1, r5
	add     r1, #0xe
	lsl     r1, r1, #24
	mov     r2, #0x0
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2225d8c
	b       branch_22262b8
@ 0x22262a6

.thumb
branch_22262a6: @ 22262a6 :thumb
	mov     r1, r5
	add     r1, #0xe
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_2225d8c
.thumb
branch_22262b8: @ 22262b8 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x4
	bcc     branch_222627e
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x9
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x22262dc

.thumb
branch_22262dc: @ 22262dc :thumb
	mov     r2, #0x0
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	mov     r5, #0x0
	mov     r6, #0x2
	mov     r7, r5
.thumb
branch_22262ec: @ 22262ec :thumb
	ldr     r0, [r4, #0x0]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, r5
	bne     branch_222630a
	mov     r1, r5
	add     r1, #0x1e
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, r7
	bl      Function_2225d8c
	b       branch_222631c
@ 0x222630a

.thumb
branch_222630a: @ 222630a :thumb
	mov     r1, r5
	add     r1, #0x1e
	lsl     r1, r1, #24
	mov     r2, #0x0
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2225d8c
.thumb
branch_222631c: @ 222631c :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x4
	bcc     branch_22262ec
	pop     {r3-r7,pc}
@ 0x2226328

.thumb
branch_2226328: @ 2226328 :thumb
	mov     r5, #0x0
	mov     r7, #0x3
	mov     r6, #0x50
.thumb
branch_222632e: @ 222632e :thumb
	ldr     r0, [r4, #0x0]
	lsl     r1, r5, #3
	ldrb    r0, [r0, #0x11]
	mov     r2, r0
	mul     r2, r6
	add     r0, r4, r2
	add     r0, r1, r0
	ldrh    r0, [r0, #0x34]
	cmp     r0, #0x0
	beq     branch_2226356
	mov     r1, r5
	add     r1, #0x13
	lsl     r1, r1, #24
	mov     r2, #0x0
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2225d8c
	b       branch_2226368
@ 0x2226356

.thumb
branch_2226356: @ 2226356 :thumb
	mov     r1, r5
	add     r1, #0x13
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_2225d8c
.thumb
branch_2226368: @ 2226368 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x4
	bcc     branch_222632e
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x2226380

.thumb
branch_2226380: @ 2226380 :thumb
	mov     r2, #0x0
	mov     r1, #0x17
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x18
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x19
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1a
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1b
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	ldr     r0, [pc, #0x78] @ 0x2226440, (=0x2077)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_222643e
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x12
	mov     r3, r2
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x22263e0

.thumb
branch_22263e0: @ 22263e0 :thumb
	mov     r2, #0x0
	mov     r1, #0x1c
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	ldr     r0, [pc, #0x48] @ 0x2226440, (=0x2077)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_222643e
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x12
	mov     r3, r2
	bl      Function_2225d8c
	pop     {r3-r7,pc}
@ 0x2226410

.thumb
branch_2226410: @ 2226410 :thumb
	mov     r2, #0x0
	mov     r1, #0x1d
	mov     r3, r2
	bl      Function_2225d8c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2225d8c
	ldr     r0, [pc, #0x18] @ 0x2226440, (=0x2077)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_222643e
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x12
	mov     r3, r2
	bl      Function_2225d8c
.thumb
branch_222643e: @ 222643e :thumb
	pop     {r3-r7,pc}
@ 0x2226440

.word 0x2077 @ 0x2226440
.thumb
Function_2226444: @ 2226444 :thumb
	push    {r3,lr}
	mov     r2, r0
	cmp     r1, #0x3
	bne     branch_2226466
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	mov     r1, #0x7e
	lsl     r1, r1, #6
	ldr     r0, [r2, r0]
	add     r1, r2, r1
	mov     r2, #0x1
	mov     r3, #0xc0
	bl      Function_2002fbc
	pop     {r3,pc}
@ 0x2226466

.thumb
branch_2226466: @ 2226466 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x10] @ 0x2226480, (=0x1f60)
	ldr     r0, [r2, r0]
	add     r1, r2, r1
	mov     r2, #0x1
	mov     r3, #0xc0
	bl      Function_2002fbc
	pop     {r3,pc}
@ 0x222647e


.align 2


.word 0x1f60 @ 0x2226480
.thumb
Function_2226484: @ 2226484 :thumb
	push    {r4,r5}
	mov     r2, #0x0
	mov     r1, r2
	mov     r3, #0x50
.thumb
branch_222648c: @ 222648c :thumb
	mov     r4, r1
	mul     r4, r3
	add     r5, r0, r4
	ldrh    r4, [r5, #0x8]
	cmp     r4, #0x0
	beq     branch_22264a6
	ldrb    r4, [r5, #0x1b]
	lsl     r4, r4, #24
	lsr     r4, r4, #31
	bne     branch_22264a6
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #16
	lsr     r2, r2, #16
.thumb
branch_22264a6: @ 22264a6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x6
	bcc     branch_222648c
	cmp     r2, #0x2
	bcc     branch_22264b8
	mov     r0, #0x1
	b       branch_22264ba
@ 0x22264b8

.thumb
branch_22264b8: @ 22264b8 :thumb
	mov     r0, #0x0
.thumb
branch_22264ba: @ 22264ba :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r4,r5}
	bx      lr
@ 0x22264c2


.align 2, 0


.thumb
Function_22264c4: @ 22264c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldrb    r1, [r1, #0x11]
	bl      Function_22213f0
	cmp     r0, #0x2
	bne     branch_22264e4
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x11]
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2225d8c
	pop     {r4,pc}
@ 0x22264e4

.thumb
branch_22264e4: @ 22264e4 :thumb
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	ldrb    r1, [r1, #0x11]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2225d8c
	pop     {r4,pc}
@ 0x22264f4

.thumb
Function_22264f4: @ 22264f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x2226584, (=0x2226591)
	ldr     r1, [pc, #0x8c] @ 0x2226588, (=0x115c)
	ldr     r3, [r5, #0xc]
	mov     r2, #0x64
	bl      Function_200679c
	bl      Function_201ced0
	ldr     r2, [pc, #0x7c] @ 0x2226588, (=0x115c)
	mov     r4, r0
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	str     r5, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	bl      0x223df00
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x0]
	bl      LoadMainBattleData_28
	str     r0, [r4, #0x8]
	ldr     r0, [pc, #0x64] @ 0x222658c, (=0x114a)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	ldr     r0, [r5, #0x0]
	bl      0x223e1b0
	mov     r6, r0
	mov     r5, #0x0
.thumb
branch_2226534: @ 2226534 :thumb
	ldr     r3, [r4, #0x0]
	mov     r0, r6
	mov     r2, r3
	add     r2, #0x27
	add     r3, #0x2c
	mov     r1, r5
	add     r2, r2, r5
	add     r3, r3, r5
	bl      Function_207d9d8
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x5
	bcc     branch_2226534
	mov     r0, r6
	bl      Function_207d9e4
	ldr     r1, [r4, #0x0]
	strh    r0, [r1, #0x20]
	mov     r0, r6
	bl      Function_207d9e8
	ldr     r1, [r4, #0x0]
	strb    r0, [r1, #0x1f]
	mov     r0, r4
	bl      Function_2227a4c
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x223df0c
	mov     r1, #0x1
	lsl     r1, r1, #10
	tst     r0, r1
	beq     branch_2226582
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x14]
.thumb
branch_2226582: @ 2226582 :thumb
	pop     {r4-r6,pc}
@ 0x2226584

.word 0x2226591 @ 0x2226584
.word 0x115c @ 0x2226588
.word 0x114a @ 0x222658c
.thumb
Function_2226590: @ 2226590 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0xf4] @ 0x2226688, (=0x114a)
	mov     r4, r1
	ldrb    r2, [r4, r2]
	cmp     r2, #0xe
	bhi     branch_2226676
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22265a8

Jumppoints_22265a8:
.hword branch_22265c6 - Jumppoints_22265a8 - 2
.hword branch_22265d2 - Jumppoints_22265a8 - 2
.hword branch_22265de - Jumppoints_22265a8 - 2
.hword branch_22265ea - Jumppoints_22265a8 - 2
.hword branch_22265f6 - Jumppoints_22265a8 - 2
.hword branch_2226602 - Jumppoints_22265a8 - 2
.hword branch_222660e - Jumppoints_22265a8 - 2
.hword branch_222661a - Jumppoints_22265a8 - 2
.hword branch_2226626 - Jumppoints_22265a8 - 2
.hword branch_2226632 - Jumppoints_22265a8 - 2
.hword branch_222663e - Jumppoints_22265a8 - 2
.hword branch_222664a - Jumppoints_22265a8 - 2
.hword branch_2226656 - Jumppoints_22265a8 - 2
.hword branch_2226662 - Jumppoints_22265a8 - 2
.hword branch_222666e - Jumppoints_22265a8 - 2
.thumb
branch_22265c6: @ 22265c6 :thumb
	mov     r0, r4
	bl      Function_222668c
	ldr     r1, [pc, #0xb8] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x22265d2

.thumb
branch_22265d2: @ 22265d2 :thumb
	mov     r0, r4
	bl      Function_2226760
	ldr     r1, [pc, #0xac] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x22265de

.thumb
branch_22265de: @ 22265de :thumb
	mov     r0, r4
	bl      Function_2226838
	ldr     r1, [pc, #0xa0] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x22265ea

.thumb
branch_22265ea: @ 22265ea :thumb
	mov     r0, r4
	bl      Function_22269c0
	ldr     r1, [pc, #0x94] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x22265f6

.thumb
branch_22265f6: @ 22265f6 :thumb
	mov     r0, r4
	bl      Function_2226c48
	ldr     r1, [pc, #0x88] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x2226602

.thumb
branch_2226602: @ 2226602 :thumb
	mov     r0, r4
	bl      Function_2226c54
	ldr     r1, [pc, #0x7c] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x222660e

.thumb
branch_222660e: @ 222660e :thumb
	mov     r0, r4
	bl      Function_2226c60
	ldr     r1, [pc, #0x70] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x222661a

.thumb
branch_222661a: @ 222661a :thumb
	mov     r0, r4
	bl      Function_2226948
	ldr     r1, [pc, #0x64] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x2226626

.thumb
branch_2226626: @ 2226626 :thumb
	mov     r0, r4
	bl      Function_2226c6c
	ldr     r1, [pc, #0x58] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x2226632

.thumb
branch_2226632: @ 2226632 :thumb
	mov     r0, r4
	bl      Function_2226c7c
	ldr     r1, [pc, #0x4c] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x222663e

.thumb
branch_222663e: @ 222663e :thumb
	mov     r0, r4
	bl      Function_2226c94
	ldr     r1, [pc, #0x40] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x222664a

.thumb
branch_222664a: @ 222664a :thumb
	mov     r0, r4
	bl      Function_2226cbc
	ldr     r1, [pc, #0x34] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x2226656

.thumb
branch_2226656: @ 2226656 :thumb
	mov     r0, r4
	bl      Function_2226d94
	ldr     r1, [pc, #0x28] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x2226662

.thumb
branch_2226662: @ 2226662 :thumb
	mov     r0, r4
	bl      Function_2226cd4
	ldr     r1, [pc, #0x1c] @ 0x2226688, (=0x114a)
	strb    r0, [r4, r1]
	b       branch_2226676
@ 0x222666e

.thumb
branch_222666e: @ 222666e :thumb
	bl      Function_2226cfc
	cmp     r0, #0x1
	beq     branch_2226686
.thumb
branch_2226676: @ 2226676 :thumb
	mov     r0, r4
	bl      Function_2228848
	mov     r0, #0xc3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200c7ec
.thumb
branch_2226686: @ 2226686 :thumb
	pop     {r4,pc}
@ 0x2226688

.word 0x114a @ 0x2226688
.thumb
Function_222668c: @ 222668c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0xbc] @ 0x2226750, (=REG_BLDCNT_SUB)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2228a38
	str     r0, [r4, #0x34]
	mov     r0, r4
	bl      Function_2226ed0
	mov     r0, r4
	bl      Function_2226fc4
	mov     r0, r4
	bl      Function_22270b8
	ldr     r1, [r4, #0x0]
	mov     r0, #0x2
	ldr     r1, [r1, #0xc]
	bl      Function_2002bb8
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x223e1b0
	bl      Function_207d9ec
	ldr     r1, [pc, #0x88] @ 0x2226754, (=0x114d)
	strb    r0, [r4, r1]
	mov     r0, r4
	bl      Function_2227ac8
	ldr     r1, [pc, #0x80] @ 0x2226758, (=0x114c)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_2228924
	mov     r0, r4
	bl      Function_2227288
	ldr     r1, [pc, #0x70] @ 0x2226758, (=0x114c)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_2227350
	mov     r0, r4
	bl      Function_2227bdc
	ldr     r1, [pc, #0x60] @ 0x2226758, (=0x114c)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_2227e68
	ldr     r0, [r4, #0x0]
	add     r0, #0x25
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2226710
	ldr     r0, [r4, #0x34]
	mov     r1, #0x1
	bl      Function_2228a60
.thumb
branch_2226710: @ 2226710 :thumb
	ldr     r1, [pc, #0x44] @ 0x2226758, (=0x114c)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_2228008
	ldr     r1, [pc, #0x3c] @ 0x2226758, (=0x114c)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_22280f0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r1, #0xa
	str     r0, [sp, #0x8]
	mov     r3, r1
	ldr     r0, [r4, #0x8]
	ldr     r2, [pc, #0x24] @ 0x222675c, (=0xffff)
	sub     r3, #0x12
	bl      Function_2003178
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x1
	bne     branch_222674a
	add     sp, #0xc
	mov     r0, #0xc
	pop     {r3,r4,pc}
@ 0x222674a

.thumb
branch_222674a: @ 222674a :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2226750

.word REG_BLDCNT_SUB @ 0x2226750
.word 0x114d @ 0x2226754
.word 0x114c @ 0x2226758
.word 0xffff @ 0x222675c
.thumb
Function_2226760: @ 2226760 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_2226772
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2226772

.thumb
branch_2226772: @ 2226772 :thumb
	ldr     r1, [pc, #0xb8] @ 0x222682c, (=0x2229a1c)
	mov     r0, r4
	bl      Function_2227238
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2226798
	ldr     r0, [r4, #0x34]
	bl      Function_2228b64
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_222679e
	mov     r5, #0x5
	b       branch_222679e
@ 0x2226798

.thumb
branch_2226798: @ 2226798 :thumb
	mov     r0, r4
	bl      Function_2228050
.thumb
branch_222679e: @ 222679e :thumb
	cmp     r5, #0x5
	bhi     branch_2226828
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22267ae

Jumppoints_22267ae:
.hword branch_22267ba - Jumppoints_22267ae - 2
.hword branch_22267ba - Jumppoints_22267ae - 2
.hword branch_22267ba - Jumppoints_22267ae - 2
.hword branch_22267ba - Jumppoints_22267ae - 2
.hword branch_22267da - Jumppoints_22267ae - 2
.hword branch_222680a - Jumppoints_22267ae - 2
.thumb
branch_22267ba: @ 22267ba :thumb
	ldr     r0, [pc, #0x74] @ 0x2226830, (=0x5dd)
	bl      Function_2005748
	lsl     r0, r5, #24
	lsr     r1, r0, #24
	ldr     r0, [pc, #0x6c] @ 0x2226834, (=0x114d)
	mov     r2, #0x5
	strb    r1, [r4, r0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r2, [r4, r0]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_222880c
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x22267da

.thumb
branch_22267da: @ 22267da :thumb
	ldr     r0, [r4, #0x0]
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_2226828
	ldr     r0, [pc, #0x4c] @ 0x2226830, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r0, #0x1f]
	ldr     r0, [pc, #0x44] @ 0x2226834, (=0x114d)
	strb    r1, [r4, r0]
	mov     r1, #0x6
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_2227a7c
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_222880c
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x222680a

.thumb
branch_222680a: @ 222680a :thumb
	ldr     r0, [pc, #0x24] @ 0x2226830, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	mov     r2, #0x0
	strh    r2, [r0, #0x1c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	strb    r1, [r0, #0x1e]
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_222880c
	mov     r0, #0xd
	pop     {r3-r5,pc}
@ 0x2226828

.thumb
branch_2226828: @ 2226828 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222682c

.word 0x2229a1c @ 0x222682c
.word 0x5dd @ 0x2226830
.word 0x114d @ 0x2226834
.thumb
Function_2226838: @ 2226838 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0xfc] @ 0x2226938, (=0x2229a38)
	mov     r4, r0
	bl      Function_2227238
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2226860
	ldr     r0, [r4, #0x34]
	bl      Function_2228b64
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_2226866
	mov     r5, #0x8
	b       branch_2226866
@ 0x2226860

.thumb
branch_2226860: @ 2226860 :thumb
	mov     r0, r4
	bl      Function_2228050
.thumb
branch_2226866: @ 2226866 :thumb
	cmp     r5, #0x8
	bhi     branch_2226934
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2226876

Jumppoints_2226876:
.hword branch_2226888 - Jumppoints_2226876 - 2
.hword branch_2226888 - Jumppoints_2226876 - 2
.hword branch_2226888 - Jumppoints_2226876 - 2
.hword branch_2226888 - Jumppoints_2226876 - 2
.hword branch_2226888 - Jumppoints_2226876 - 2
.hword branch_2226888 - Jumppoints_2226876 - 2
.hword branch_22268be - Jumppoints_2226876 - 2
.hword branch_22268ec - Jumppoints_2226876 - 2
.hword branch_222691a - Jumppoints_2226876 - 2
.thumb
branch_2226888: @ 2226888 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2227ba8
	cmp     r0, #0x0
	beq     branch_2226934
	ldr     r0, [pc, #0xa4] @ 0x222693c, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0xa4] @ 0x2226940, (=0x114d)
	ldr     r2, [r4, #0x0]
	ldrb    r1, [r4, r0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	add     r1, r2, r1
	add     r1, #0x27
	strb    r5, [r1, #0x0]
	mov     r1, #0x6
	strb    r1, [r4, r0]
	add     r1, r5, #0x6
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_222880c
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x22268be

.thumb
branch_22268be: @ 22268be :thumb
	ldr     r0, [pc, #0x80] @ 0x2226940, (=0x114d)
	ldrb    r1, [r4, r0]
	.hword  0x1dc0 @ add r0, r0, #0x7
	add     r1, r4, r1
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2226934
	ldr     r0, [pc, #0x6c] @ 0x222693c, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x70] @ 0x2226944, (=0x114b)
	mov     r1, #0x7
	strb    r1, [r4, r0]
	sub     r1, #0x8
	.hword  0x1cc0 @ add r0, r0, #0x3
	strb    r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_222880c
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x22268ec

.thumb
branch_22268ec: @ 22268ec :thumb
	ldr     r0, [pc, #0x50] @ 0x2226940, (=0x114d)
	ldrb    r1, [r4, r0]
	.hword  0x1dc0 @ add r0, r0, #0x7
	add     r1, r4, r1
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2226934
	ldr     r0, [pc, #0x40] @ 0x222693c, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x40] @ 0x2226944, (=0x114b)
	mov     r1, #0x7
	strb    r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1cc0 @ add r0, r0, #0x3
	strb    r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x0
	bl      Function_222880c
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x222691a

.thumb
branch_222691a: @ 222691a :thumb
	ldr     r0, [pc, #0x20] @ 0x222693c, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x20] @ 0x2226944, (=0x114b)
	mov     r1, #0x4
	strb    r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_222880c
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x2226934

.thumb
branch_2226934: @ 2226934 :thumb
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x2226938

.word 0x2229a38 @ 0x2226938
.word 0x5dd @ 0x222693c
.word 0x114d @ 0x2226940
.word 0x114b @ 0x2226944
.thumb
Function_2226948: @ 2226948 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x68] @ 0x22269b8, (=0x114d)
	ldr     r1, [r4, #0x0]
	ldrb    r2, [r4, r0]
	mov     r3, #0x0
	add     r5, r1, r2
	mov     r1, #0x2c
	ldsb    r2, [r5, r1]
	add     r5, #0x27
	add     r1, r0, #0x1
	strb    r3, [r5, #0x0]
	ldsb    r1, [r4, r1]
	add     r1, r2, r1
	lsl     r1, r1, #24
	asr     r2, r1, #24
	ldrb    r1, [r4, r0]
	.hword  0x1dc0 @ add r0, r0, #0x7
	add     r5, r4, r1
	ldrb    r5, [r5, r0]
	cmp     r2, r5
	ble     branch_222697e
	ldr     r0, [r4, #0x0]
	add     r0, r0, r1
	add     r0, #0x2c
	strb    r3, [r0, #0x0]
	b       branch_2226992
@ 0x222697e

.thumb
branch_222697e: @ 222697e :thumb
	cmp     r2, #0x0
	ldr     r0, [r4, #0x0]
	bge     branch_222698c
	add     r0, r0, r1
	add     r0, #0x2c
	strb    r5, [r0, #0x0]
	b       branch_2226992
@ 0x222698c

.thumb
branch_222698c: @ 222698c :thumb
	add     r0, r0, r1
	add     r0, #0x2c
	strb    r2, [r0, #0x0]
.thumb
branch_2226992: @ 2226992 :thumb
	mov     r0, r4
	bl      Function_2227650
	mov     r0, r4
	bl      Function_2227698
	ldr     r1, [pc, #0x1c] @ 0x22269bc, (=0x114c)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_2227e68
	ldr     r1, [pc, #0x10] @ 0x22269bc, (=0x114c)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_2228924
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x22269b6


.align 2


.word 0x114d @ 0x22269b8
.word 0x114c @ 0x22269bc
.thumb
Function_22269c0: @ 22269c0 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x88] @ 0x2226a4c, (=0x22299ac)
	mov     r5, r0
	bl      Function_2227238
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_22269e8
	ldr     r0, [r5, #0x34]
	bl      Function_2228b64
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_22269ee
	mov     r4, #0x1
	b       branch_22269ee
@ 0x22269e8

.thumb
branch_22269e8: @ 22269e8 :thumb
	mov     r0, r5
	bl      Function_2228050
.thumb
branch_22269ee: @ 22269ee :thumb
	cmp     r4, #0x0
	beq     branch_22269f8
	cmp     r4, #0x1
	beq     branch_2226a2e
	b       branch_2226a48
@ 0x22269f8

.thumb
branch_22269f8: @ 22269f8 :thumb
	ldr     r0, [pc, #0x54] @ 0x2226a50, (=0x5dd)
	bl      Function_2005748
	ldr     r1, [pc, #0x54] @ 0x2226a54, (=0x114d)
	ldr     r2, [r5, #0x0]
	ldrb    r1, [r5, r1]
	mov     r0, r5
	add     r1, r2, r1
	add     r1, #0x27
	ldrb    r1, [r1, #0x0]
	bl      Function_2227ba8
	ldr     r1, [r5, #0x0]
	mov     r2, #0x0
	strh    r0, [r1, #0x1c]
	ldr     r0, [pc, #0x3c] @ 0x2226a54, (=0x114d)
	ldrb    r1, [r5, r0]
	ldr     r0, [r5, #0x0]
	strb    r1, [r0, #0x1e]
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_222880c
	mov     r0, r5
	bl      Function_2226a5c
	pop     {r3-r5,pc}
@ 0x2226a2e

.thumb
branch_2226a2e: @ 2226a2e :thumb
	ldr     r0, [pc, #0x20] @ 0x2226a50, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x20] @ 0x2226a58, (=0x114b)
	mov     r1, #0x5
	strb    r1, [r5, r0]
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_222880c
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x2226a48

.thumb
branch_2226a48: @ 2226a48 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x2226a4c

.word 0x22299ac @ 0x2226a4c
.word 0x5dd @ 0x2226a50
.word 0x114d @ 0x2226a54
.word 0x114b @ 0x2226a58
.thumb
Function_2226a5c: @ 2226a5c :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x1dc] @ 0x2226c3c, (=0x114d)
	mov     r5, r0
	ldrb    r1, [r5, r1]
	ldr     r4, [r5, #0x0]
	cmp     r1, #0x3
	beq     branch_2226a6c
	b       branch_2226b86
@ 0x2226a6c

.thumb
branch_2226a6c: @ 2226a6c :thumb
	bl      Function_2227244
	mov     r7, r0
	ldrh    r0, [r4, #0x1c]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x7
	bl      GetItemData
	mov     r6, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_2226ade
	ldrh    r0, [r4, #0x1c]
	cmp     r0, #0x37
	beq     branch_2226ade
	cmp     r6, #0x3
	beq     branch_2226ade
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x10]
	mov     r2, r7
	bl      0x223dfac
	mov     r6, r0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2e
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r6
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_200b5cc
	ldr     r0, [r5, #0x14]
	ldr     r2, [pc, #0x188] @ 0x2226c40, (=0x175)
	mov     r1, #0x1
	bl      Function_200b630
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_22279f4
	ldr     r0, [pc, #0x16c] @ 0x2226c44, (=0x114b)
	mov     r1, #0x8
	strb    r1, [r5, r0]
	mov     r0, #0x9
	pop     {r3-r7,pc}
@ 0x2226ade

.thumb
branch_2226ade: @ 2226ade :thumb
	ldrh    r0, [r4, #0x1c]
	mov     r2, r7
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x10]
	bl      0x223e30c
	cmp     r0, #0x1
	bne     branch_2226b04
	ldr     r2, [pc, #0x148] @ 0x2226c3c, (=0x114d)
	ldrh    r1, [r4, #0x1c]
	ldrb    r2, [r5, r2]
	ldr     r0, [r4, #0x0]
	ldr     r3, [r4, #0xc]
	bl      Function_2227260
	mov     r0, #0xd
	pop     {r3-r7,pc}
@ 0x2226b04

.thumb
branch_2226b04: @ 2226b04 :thumb
	cmp     r6, #0x3
	bne     branch_2226b6c
	ldr     r0, [r4, #0x0]
	bl      0x223df0c
	mov     r1, #0x1
	tst     r0, r1
	bne     branch_2226b26
	ldr     r2, [pc, #0x124] @ 0x2226c3c, (=0x114d)
	ldrh    r1, [r4, #0x1c]
	ldrb    r2, [r5, r2]
	ldr     r0, [r4, #0x0]
	ldr     r3, [r4, #0xc]
	bl      Function_2227260
	mov     r0, #0xd
	pop     {r3-r7,pc}

branch_2226b26: @ 2226b26 :thumb
	ldr     r3, [r4, #0xc]
	mov     r0, r1
	mov     r1, #PlMsg_Narc
	mov     r2, #PlMsg_Narc_213
	bl      LoadFromNARC_9
	mov     r1, #0x24
	mov     r7, r0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	ldr     r0, [r5, #0x14]
	ldr     r2, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_200b190
	mov     r0, r5
	bl      Function_22279f4
	ldr     r0, [pc, #0xe0] @ 0x2226c44, (=0x114b)
	mov     r1, #0x8
	strb    r1, [r5, r0]
	mov     r0, #0x9
	pop     {r3-r7,pc}
@ 0x2226b6c

.thumb
branch_2226b6c: @ 2226b6c :thumb
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, #0x18]
	mov     r1, #0x22
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	bl      Function_22279f4
	ldr     r0, [pc, #0xc4] @ 0x2226c44, (=0x114b)
	mov     r1, #0x8
	strb    r1, [r5, r0]
	mov     r0, #0x9
	pop     {r3-r7,pc}
@ 0x2226b86

.thumb
branch_2226b86: @ 2226b86 :thumb
	cmp     r1, #0x2
	bne     branch_2226c36
	mov     r0, r4
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2226bae
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, #0x18]
	mov     r1, #0x2c
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	bl      Function_22279f4
	ldr     r0, [pc, #0x9c] @ 0x2226c44, (=0x114b)
	mov     r1, #0x8
	strb    r1, [r5, r0]
	mov     r0, #0x9
	pop     {r3-r7,pc}
@ 0x2226bae

.thumb
branch_2226bae: @ 2226bae :thumb
	mov     r0, r4
	add     r0, #0x23
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2226bd2
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, #0x18]
	mov     r1, #0x2f
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	bl      Function_22279f4
	ldr     r0, [pc, #0x78] @ 0x2226c44, (=0x114b)
	mov     r1, #0x8
	strb    r1, [r5, r0]
	mov     r0, #0x9
	pop     {r3-r7,pc}
@ 0x2226bd2

.thumb
branch_2226bd2: @ 2226bd2 :thumb
	mov     r0, r4
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2226bf6
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, #0x18]
	mov     r1, #0x30
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	bl      Function_22279f4
	ldr     r0, [pc, #0x54] @ 0x2226c44, (=0x114b)
	mov     r1, #0x8
	strb    r1, [r5, r0]
	mov     r0, #0x9
	pop     {r3-r7,pc}
@ 0x2226bf6

.thumb
branch_2226bf6: @ 2226bf6 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x10]
	bl      0x223df20
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      0x223e228
	mov     r4, r0
	mov     r0, r6
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	bne     branch_2226c36
	mov     r0, r4
	bl      Function_20799a0
	cmp     r0, #0x12
	bne     branch_2226c36
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, #0x18]
	mov     r1, #0x2d
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	bl      Function_22279f4
	ldr     r0, [pc, #0x14] @ 0x2226c44, (=0x114b)
	mov     r1, #0x8
	strb    r1, [r5, r0]
	mov     r0, #0x9
	pop     {r3-r7,pc}
@ 0x2226c36

.thumb
branch_2226c36: @ 2226c36 :thumb
	mov     r0, #0xd
	pop     {r3-r7,pc}
@ 0x2226c3a


.align 2


.word 0x114d @ 0x2226c3c
.word 0x175 @ 0x2226c40
.word 0x114b @ 0x2226c44
.thumb
Function_2226c48: @ 2226c48 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	bl      Function_22271d0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2226c54

.thumb
Function_2226c54: @ 2226c54 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      Function_22271d0
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2226c60

.thumb
Function_2226c60: @ 2226c60 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	bl      Function_22271d0
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x2226c6c

.thumb
Function_2226c6c: @ 2226c6c :thumb
	push    {r3,lr}
	add     r0, #0x1c
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x2226c7a


.align 2, 0


.thumb
Function_2226c7c: @ 2226c7c :thumb
	push    {r3,lr}
	add     r0, #0x32
	ldrb    r0, [r0, #0x0]
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2226c8e
	mov     r0, #0xa
	pop     {r3,pc}
@ 0x2226c8e

.thumb
branch_2226c8e: @ 2226c8e :thumb
	mov     r0, #0x9
	pop     {r3,pc}
@ 0x2226c92


.align 2, 0
.thumb
Function_2226c94: @ 2226c94 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2226cb4, (=RAM_21bf67c)
	ldr     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r0, #KEY_A|KEY_B
	tst     r0, r1
	bne     branch_2226caa

	bl      Function_2022798
	cmp     r0, #0x1
	bne     branch_2226cb0

branch_2226caa: @ 2226caa :thumb
	ldr     r0, [pc, #0xc] @ 0x2226cb8, (=0x114b)
	ldrb    r0, [r4, r0]
	pop     {r4,pc}

branch_2226cb0: @ 2226cb0 :thumb
	mov     r0, #0xa
	pop     {r4,pc}
@ 0x2226cb4

.word RAM_21bf67c @ 0x2226cb4
.word 0x114b @ 0x2226cb8



.thumb
Function_2226cbc: @ 2226cbc :thumb
	ldr     r1, [pc, #0x10] @ 0x2226cd0, (=0x113e)
	ldrb    r2, [r0, r1]
	cmp     r2, #0x2
	bne     branch_2226cca
	add     r1, #0xd
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x2226cca

.thumb
branch_2226cca: @ 2226cca :thumb
	mov     r0, #0xb
	bx      lr
@ 0x2226cce


.align 2


.word 0x113e @ 0x2226cd0
.thumb
Function_2226cd4: @ 2226cd4 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x10
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r1, #0xa
	mov     r3, r1
	ldr     r0, [r0, #0x8]
	ldr     r2, [pc, #0xc] @ 0x2226cf8, (=0xffff)
	sub     r3, #0x12
	bl      Function_2003178
	mov     r0, #0xe
	add     sp, #0xc
	pop     {pc}
@ 0x2226cf6


.align 2


.word 0xffff @ 0x2226cf8
.thumb
Function_2226cfc: @ 2226cfc :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_2226d10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2226d10

.thumb
branch_2226d10: @ 2226d10 :thumb
	mov     r0, r5
	bl      Function_2227e08
	mov     r0, r5
	bl      Function_2227334
	mov     r0, r5
	bl      Function_22270f8
	ldr     r0, [r5, #0x4]
	bl      Function_2226f9c
	ldr     r0, [r5, #0x34]
	bl      Function_2228a5c
	ldr     r1, [r5, #0x0]
	add     r1, #0x25
	strb    r0, [r1, #0x0]
	ldr     r0, [r5, #0x34]
	bl      Function_2228a50
	mov     r0, #0x2
	bl      Function_2002c60
	ldr     r1, [r5, #0x0]
	ldrh    r0, [r1, #0x1c]
	cmp     r0, #0x0
	beq     branch_2226d7c
	ldr     r0, [r1, #0x0]
	bl      0x223e1b0
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_2226d52: @ 2226d52 :thumb
	ldr     r3, [r5, #0x0]
	mov     r0, r6
	add     r2, r3, r4
	add     r3, r3, r4
	add     r2, #0x27
	add     r3, #0x2c
	ldrb    r2, [r2, #0x0]
	ldrb    r3, [r3, #0x0]
	mov     r1, r4
	bl      Function_207d9f0
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x5
	bcc     branch_2226d52
	ldr     r1, [pc, #0x1c] @ 0x2226d90, (=0x114d)
	mov     r0, r6
	ldrb    r1, [r5, r1]
	bl      Function_207da24
.thumb
branch_2226d7c: @ 2226d7c :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	add     r0, #0x26
	strb    r1, [r0, #0x0]
	mov     r0, r7
	bl      Function_20067d0
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2226d8e


.align 2


.word 0x114d @ 0x2226d90
.thumb
Function_2226d94: @ 2226d94 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_2226da6
	mov     r0, #0xc
	pop     {r4,pc}
@ 0x2226da6

.thumb
branch_2226da6: @ 2226da6 :thumb
	ldr     r0, [pc, #0x118] @ 0x2226ec0, (=0x1159)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x4
	bls     branch_2226db0
	b       branch_2226eba
@ 0x2226db0

.thumb
branch_2226db0: @ 2226db0 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2226dbc

Jumppoints_2226dbc:
.hword branch_2226dc6 - Jumppoints_2226dbc - 2
.hword branch_2226e08 - Jumppoints_2226dbc - 2
.hword branch_2226e18 - Jumppoints_2226dbc - 2
.hword branch_2226e62 - Jumppoints_2226dbc - 2
.hword branch_2226e72 - Jumppoints_2226dbc - 2
.thumb
branch_2226dc6: @ 2226dc6 :thumb
	ldr     r0, [r4, #0x38]
	bl      0x226dfd4
	cmp     r0, #0x1
	bne     branch_2226dfe
	ldr     r0, [pc, #0xf0] @ 0x2226ec4, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0xf0] @ 0x2226ec8, (=0x114d)
	mov     r1, #0x2
	strb    r1, [r4, r0]
	mov     r2, #0xc
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r2, [r4, r0]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_222880c
	ldr     r0, [pc, #0xe0] @ 0x2226ecc, (=0x115a)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r1, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0xb
	pop     {r4,pc}
@ 0x2226dfe

.thumb
branch_2226dfe: @ 2226dfe :thumb
	ldr     r0, [pc, #0xcc] @ 0x2226ecc, (=0x115a)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2226eba
@ 0x2226e08

.thumb
branch_2226e08: @ 2226e08 :thumb
	mov     r0, r4
	bl      Function_2226c54
	ldr     r0, [pc, #0xb0] @ 0x2226ec0, (=0x1159)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2226eba
@ 0x2226e18

.thumb
branch_2226e18: @ 2226e18 :thumb
	ldr     r0, [r4, #0x38]
	bl      0x226dfd4
	cmp     r0, #0x1
	bne     branch_2226e58
	ldr     r0, [pc, #0xa0] @ 0x2226ec4, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x9c] @ 0x2226ec8, (=0x114d)
	ldr     r3, [r4, #0x0]
	ldrb    r1, [r4, r0]
	mov     r2, #0x0
	.hword  0x1e80 @ sub r0, r0, #0x2
	add     r1, r3, r1
	add     r1, #0x27
	strb    r2, [r1, #0x0]
	mov     r1, #0xc
	strb    r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_222880c
	ldr     r0, [pc, #0x84] @ 0x2226ecc, (=0x115a)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r1, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0xb
	pop     {r4,pc}
@ 0x2226e58

.thumb
branch_2226e58: @ 2226e58 :thumb
	ldr     r0, [pc, #0x70] @ 0x2226ecc, (=0x115a)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2226eba
@ 0x2226e62

.thumb
branch_2226e62: @ 2226e62 :thumb
	mov     r0, r4
	bl      Function_2226c60
	ldr     r0, [pc, #0x54] @ 0x2226ec0, (=0x1159)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_2226eba
@ 0x2226e72

.thumb
branch_2226e72: @ 2226e72 :thumb
	ldr     r0, [r4, #0x38]
	bl      0x226dfd4
	cmp     r0, #0x1
	bne     branch_2226eb2
	ldr     r0, [pc, #0x44] @ 0x2226ec4, (=0x5dd)
	bl      Function_2005748
	ldr     r1, [pc, #0x44] @ 0x2226ec8, (=0x114d)
	ldr     r2, [r4, #0x0]
	ldrb    r1, [r4, r1]
	mov     r0, r4
	add     r1, r2, r1
	add     r1, #0x27
	ldrb    r1, [r1, #0x0]
	bl      Function_2227ba8
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	strh    r0, [r1, #0x1c]
	ldr     r0, [pc, #0x2c] @ 0x2226ec8, (=0x114d)
	ldrb    r1, [r4, r0]
	ldr     r0, [r4, #0x0]
	strb    r1, [r0, #0x1e]
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_222880c
	mov     r0, r4
	bl      Function_2226a5c
	pop     {r4,pc}
@ 0x2226eb2

.thumb
branch_2226eb2: @ 2226eb2 :thumb
	ldr     r0, [pc, #0x18] @ 0x2226ecc, (=0x115a)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_2226eba: @ 2226eba :thumb
	mov     r0, #0xc
	pop     {r4,pc}
@ 0x2226ebe


.align 2


.word 0x1159 @ 0x2226ec0
.word 0x5dd @ 0x2226ec4
.word 0x114d @ 0x2226ec8
.word 0x115a @ 0x2226ecc
.thumb
Function_2226ed0: @ 2226ed0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x64
	ldr     r5, [pc, #0xb4] @ 0x2226f8c, (=0x22299b8)
	add     r3, sp, #0x54
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	mov     r1, #0x1
	bl      Function_20183a0
	ldr     r5, [pc, #0xa0] @ 0x2226f90, (=0x2229a00)
	add     r3, sp, #0x38
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r5, [pc, #0x84] @ 0x2226f94, (=0x22299e4)
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x5
	bl      Function_2019ebc
	ldr     r5, [pc, #0x60] @ 0x2226f98, (=0x22299c8)
	add     r3, sp, #0x0
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r3, [r4, #0x0]
	mov     r0, #0x5
	ldr     r3, [r3, #0xc]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
	ldr     r3, [r4, #0x0]
	mov     r0, #0x4
	ldr     r3, [r3, #0xc]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
	ldr     r0, [r4, #0x4]
	mov     r1, #0x5
	bl      Function_201c3c0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	bl      Function_201c3c0
	add     sp, #0x64
	pop     {r4,r5,pc}
@ 0x2226f8c

.word 0x22299b8 @ 0x2226f8c
.word 0x2229a00 @ 0x2226f90
.word 0x22299e4 @ 0x2226f94
.word 0x22299c8 @ 0x2226f98
.thumb
Function_2226f9c: @ 2226f9c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x17
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2019044
	pop     {r4,pc}
@ 0x2226fc2


.align 2, 0


.thumb
Function_2226fc4: @ 2226fc4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #BBagGra_Narc
	ldr     r1, [r1, #0xc]
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	mov     r3, #0x6
	ldr     r1, [r1, #0xc]
	mov     r4, r0
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r1, #0x2
	bl      Function_20070e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x6
	ldr     r0, [r0, #0xc]
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	bl      Function_200710c
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	ldr     r2, [r2, #0xc]
	mov     r1, #0x1
	bl      Function_2006cb8_LoadFileInMemory
	add     r1, sp, #0x10
	mov     r6, r0
	blx     Function_20a7248
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	add     r1, #0xc
	bl      Function_2228128
	mov     r0, r6
	bl      free
	mov     r0, r4
	bl      Call_FS_CloseFile
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #6
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r3, [r3, #0xc]
	mov     r1, #0x4d
	mov     r2, #0x3
	bl      Function_2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xf0
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r3, [r3, #0xc]
	mov     r1, #0xe
	mov     r2, #0x7
	bl      Function_2003050
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x223ede0
	mov     r4, r0
	bl      Function_200dd04
	mov     r1, r0
	ldr     r0, [pc, #0x3c] @ 0x22270b4, (=0x3e2)
	mov     r3, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0x26
	bl      LoadFromNARC_RGCN
	mov     r0, r4
	bl      Function_200dd08
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r3, [r3, #0xc]
	mov     r1, #0x26
	bl      Function_2003050
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x22270b4

.word 0x3e2 @ 0x22270b4



.thumb
Function_22270b8: @ 22270b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r3, [r4, #0x0]
	mov     r0, #0x0
	ldr     r3, [r3, #0xc]
	mov     r1, #PlMsg_Narc
	mov     r2, #PlMsg_Narc_2
	bl      LoadFromNARC_9
	str     r0, [r4, #0x10]

	ldr     r3, [r4, #0x0]
	mov     r0, #0xf
	ldr     r3, [r3, #0xc]
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_200c440
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_200b358
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x0]
	mov     r0, #0x2
	ldr     r1, [r1, #0xc]
	lsl     r0, r0, #8
	bl      Function_2023790
	str     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x22270f6


.align 2, 0


.thumb
Function_22270f8: @ 22270f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      Function_200b190
	ldr     r0, [r4, #0xc]
	bl      Function_200c560
	ldr     r0, [r4, #0x14]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x18]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x2227116


.align 2, 0


.thumb
Function_2227118: @ 2227118 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_222712a
	cmp     r1, #0x1
	beq     branch_2227144
	cmp     r1, #0x2
	beq     branch_2227160
	pop     {r4,pc}
@ 0x222712a

.thumb
branch_222712a: @ 222712a :thumb
	mov     r2, #0x0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_201c63c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	pop     {r4,pc}
@ 0x2227144

.thumb
branch_2227144: @ 2227144 :thumb
	mov     r1, #0x6
	mov     r3, r1
	ldr     r0, [r4, #0x4]
	mov     r2, #0x0
	add     r3, #0xfa
	bl      Function_201c63c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	pop     {r4,pc}
@ 0x2227160

.thumb
branch_2227160: @ 2227160 :thumb
	mov     r2, #0x0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_201c63c
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	add     r3, #0xfd
	bl      Function_201c63c
	pop     {r4,pc}
@ 0x222717c

.thumb
Function_222717c: @ 222717c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	cmp     r1, #0x2
	bne     branch_22271c6
	mov     r0, #0x1c
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x22271cc, (=0x114d)
	mov     r1, #0x6
	ldrb    r0, [r4, r0]
	mov     r2, #0x2
	mov     r3, #0x23
	add     r0, #0x8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_2019e2c
	mov     r0, #0x1c
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x22271cc, (=0x114d)
	mov     r1, #0x6
	ldrb    r0, [r4, r0]
	mov     r2, #0x2
	mov     r3, #0x28
	add     r0, #0x8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_2019e2c
.thumb
branch_22271c6: @ 22271c6 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22271ca


.align 2


.word 0x114d @ 0x22271cc
.thumb
Function_22271d0: @ 22271d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_222717c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2227118
	ldr     r0, [r5, #0x4]
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_2019f04
	ldr     r0, [r5, #0x4]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2019f04
	mov     r0, r5
	bl      Function_2227324
	mov     r0, r5
	mov     r1, r4
	bl      Function_22272ac
	mov     r0, r5
	mov     r1, r4
	bl      Function_2227350
	mov     r0, r5
	mov     r1, r4
	bl      Function_2228924
	mov     r0, r5
	mov     r1, r4
	bl      Function_2228008
	mov     r0, r5
	mov     r1, r4
	bl      Function_22280f0
	ldr     r1, [pc, #0xc] @ 0x2227234, (=0x114c)
	mov     r0, r5
	strb    r4, [r5, r1]
	ldrb    r1, [r5, r1]
	bl      Function_2227e68
	pop     {r3-r5,pc}
@ 0x2227232


.align 2


.word 0x114c @ 0x2227234
.thumb
Function_2227238: @ 2227238 :thumb
	ldr     r3, [pc, #0x4] @ 0x2227240, (=Function_2022664+1)
	mov     r0, r1
	bx      r3
@ 0x222723e

.align 2
.word Function_2022664+1 @ 0x2227240



.thumb
Function_2227244: @ 2227244 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      0x223df10
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	ldr     r3, [r4, #0x10]
	ldr     r0, [r0, #0x0]
	mov     r2, #0x2
	bl      0x225b45c
	pop     {r3-r5,pc}
@ 0x2227260

.thumb
Function_2227260: @ 2227260 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r3
	mov     r6, r0
	mov     r7, r2
	bl      0x223e1ac
	mov     r1, r5
	mov     r2, #0x1
	mov     r3, r4
	bl      GiveItem
	mov     r0, r6
	bl      0x223e1b0
	mov     r1, r5
	mov     r2, r7
	bl      Function_207da1c
	pop     {r3-r7,pc}
@ 0x2227288


.thumb
Function_2227288: @ 2227288 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x10] @ 0x22272a4, (=0x2229a60)
	add     r1, #0x1c
	bl      Function_201a8d4
	ldr     r1, [pc, #0xc] @ 0x22272a8, (=0x114c)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_22272ac
	pop     {r4,pc}
@ 0x22272a4

.word 0x2229a60 @ 0x22272a4
.word 0x114c @ 0x22272a8
.thumb
Function_22272ac: @ 22272ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_22272be
	cmp     r1, #0x1
	beq     branch_22272c8
	cmp     r1, #0x2
	beq     branch_22272d2
	b       branch_22272da
@ 0x22272be

.thumb
branch_22272be: @ 22272be :thumb
	mov     r1, #0x5
	add     r0, #0x30
	ldr     r6, [pc, #0x54] @ 0x2227318, (=0x2229a88)
	strb    r1, [r0, #0x0]
	b       branch_22272da
@ 0x22272c8

.thumb
branch_22272c8: @ 22272c8 :thumb
	mov     r1, #0x1a
	add     r0, #0x30
	ldr     r6, [pc, #0x4c] @ 0x222731c, (=0x2229ae0)
	strb    r1, [r0, #0x0]
	b       branch_22272da
@ 0x22272d2

.thumb
branch_22272d2: @ 22272d2 :thumb
	ldr     r6, [pc, #0x4c] @ 0x2227320, (=0x2229a68)
	mov     r1, #0x4
	add     r0, #0x30
	strb    r1, [r0, #0x0]
.thumb
branch_22272da: @ 22272da :thumb
	mov     r1, r5
	ldr     r0, [r5, #0x0]
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_201a778
	str     r0, [r5, #0x2c]
	mov     r0, r5
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_2227316
.thumb
branch_22272f6: @ 22272f6 :thumb
	ldr     r2, [r5, #0x2c]
	lsl     r1, r4, #4
	add     r1, r2, r1
	lsl     r2, r4, #3
	ldr     r0, [r5, #0x4]
	add     r2, r6, r2
	bl      Function_201a8d4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r5
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r4, r0
	bcc     branch_22272f6
.thumb
branch_2227316: @ 2227316 :thumb
	pop     {r4-r6,pc}
@ 0x2227318

.word 0x2229a88 @ 0x2227318
.word 0x2229ae0 @ 0x222731c
.word 0x2229a68 @ 0x2227320
.thumb
Function_2227324: @ 2227324 :thumb
	mov     r1, r0
	ldr     r0, [r1, #0x2c]
	add     r1, #0x30
	ldr     r3, [pc, #0x4] @ 0x2227330, (=Function_201a928+1)
	ldrb    r1, [r1, #0x0]
	bx      r3
@ 0x2227330

.word Function_201a928+1 @ 0x2227330



.thumb
Function_2227334: @ 2227334 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r4, #0x2c]
	bl      Function_201a928
	add     r4, #0x1c
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x222734e


.align 2, 0


.thumb
Function_2227350: @ 2227350 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_2227360
	cmp     r1, #0x1
	beq     branch_2227366
	cmp     r1, #0x2
	beq     branch_222736c
	pop     {r3,pc}
@ 0x2227360

.thumb
branch_2227360: @ 2227360 :thumb
	bl      Function_22273cc
	pop     {r3,pc}
@ 0x2227366

.thumb
branch_2227366: @ 2227366 :thumb
	bl      Function_2227888
	pop     {r3,pc}
@ 0x222736c

.thumb
branch_222736c: @ 222736c :thumb
	bl      Function_2227974
	pop     {r3,pc}
@ 0x2227372


.align 2, 0


.thumb
Function_2227374: @ 2227374 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r5, [r0, #0x2c]
	lsl     r4, r1, #4
	ldr     r0, [r0, #0x10]
	mov     r1, r2
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	mov     r2, #0x0
	bl      Function_2002d7c
	mov     r7, r0
	add     r0, r5, r4
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r7
	lsr     r3, r0, #1
	ldr     r0, [sp, #0x28]
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, r6
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r0, r5, r4
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22273ca


.align 2, 0


.thumb
Function_22273cc: @ 22273cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, #0x0
	mov     r5, r0
	mov     r4, r6
	mov     r7, r6
.thumb
branch_22273d8: @ 22273d8 :thumb
	ldr     r0, [r5, #0x2c]
	mov     r1, r7
	add     r0, r0, r4
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x5
	bcc     branch_22273d8
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x22274a4, (=0x30201)
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0x2
	bl      Function_2227374
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xa0] @ 0x22274a4, (=0x30201)
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2227374
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x22274a4, (=0x30201)
	mov     r2, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2227374
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x78] @ 0x22274a4, (=0x30201)
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_2227374
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x22274a4, (=0x30201)
	mov     r1, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x7
	mov     r3, r1
	bl      Function_2227374
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x22274a4, (=0x30201)
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x6
	mov     r3, #0x2
	bl      Function_2227374
	ldr     r0, [r5, #0x0]
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_222749e
	ldr     r0, [r5, #0x10]
	mov     r1, #0x8
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x22274a4, (=0x30201)
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x2
	add     r0, #0x40
	mov     r2, r4
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r5, #0x2c]
	add     r0, #0x40
	bl      Function_201a9a4
.thumb
branch_222749e: @ 222749e :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22274a2


.align 2


.word 0x30201 @ 0x22274a4
.thumb
Function_22274a8: @ 22274a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r4, [r5, #0x2c]
	lsl     r6, r3, #4
	mov     r7, r1
	add     r0, r4, r6
	mov     r1, #0x0
	str     r2, [sp, #0x10]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x84] @ 0x2227544, (=0x114d)
	lsl     r7, r7, #2
	ldrb    r1, [r5, r0]
	mov     r0, #0x90
	mul     r0, r1
	add     r0, r5, r0
	add     r0, r0, r7
	ldrh    r0, [r0, #0x3c]
	cmp     r0, #0x0
	beq     branch_222753a
	ldr     r1, [sp, #0x10]
	ldr     r0, [r5, #0x10]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x6c] @ 0x2227548, (=0x2229ab0)
	ldr     r1, [r1, r2]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r2, [pc, #0x60] @ 0x2227544, (=0x114d)
	str     r0, [sp, #0x14]
	ldrb    r3, [r5, r2]
	mov     r2, #0x90
	ldr     r0, [r5, #0x14]
	mul     r2, r3
	add     r2, r5, r2
	add     r2, r2, r7
	ldrh    r2, [r2, #0x3c]
	mov     r1, #0x0
	bl      Function_200b70c
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	ldr     r2, [sp, #0x14]
	bl      Function_200c388
	ldr     r0, [sp, #0x30]
	ldr     r1, [r5, #0x18]
	mov     r2, #0x0
	bl      Function_2002d7c
	mov     r7, r0
	add     r0, r4, r6
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r7
	lsr     r3, r0, #1
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x30]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x18]
	add     r0, r4, r6
	bl      Function_201d78c
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
.thumb
branch_222753a: @ 222753a :thumb
	add     r0, r4, r6
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2227544

.word 0x114d @ 0x2227544
.word 0x2229ab0 @ 0x2227548
.thumb
Function_222754c: @ 222754c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r4, [r5, #0x2c]
	lsl     r7, r3, #4
	mov     r6, r1
	add     r0, r4, r7
	mov     r1, #0x0
	str     r2, [sp, #0x10]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x74] @ 0x22275d8, (=0x114d)
	lsl     r6, r6, #2
	ldrb    r1, [r5, r0]
	mov     r0, #0x90
	mul     r0, r1
	add     r0, r5, r0
	add     r0, r0, r6
	ldrh    r0, [r0, #0x3e]
	cmp     r0, #0x0
	beq     branch_22275ce
	ldr     r1, [sp, #0x10]
	ldr     r0, [r5, #0x10]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x5c] @ 0x22275dc, (=0x2229ab4)
	ldr     r1, [r1, r2]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x48] @ 0x22275d8, (=0x114d)
	ldr     r0, [r5, #0x14]
	ldrb    r3, [r5, r2]
	mov     r2, #0x90
	mul     r2, r3
	add     r2, r5, r2
	add     r2, r2, r6
	ldrh    r2, [r2, #0x3e]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	ldr     r2, [sp, #0x14]
	bl      Function_200c388
	ldr     r0, [sp, #0x34]
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x30]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r2, [r5, #0x18]
	add     r0, r4, r7
	bl      Function_201d78c
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
.thumb
branch_22275ce: @ 22275ce :thumb
	add     r0, r4, r7
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22275d8

.word 0x114d @ 0x22275d8
.word 0x2229ab4 @ 0x22275dc
.thumb
Function_22275e0: @ 22275e0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r0, [pc, #0x5c] @ 0x2227644, (=0x114d)
	mov     r5, r1
	ldrb    r0, [r6, r0]
	ldr     r1, [r6, #0x0]
	add     r0, r1, r0
	add     r0, #0x2c
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x6
	mul     r0, r1
	str     r0, [sp, #0xc]
	mov     r0, r6
	add     r0, #0x31
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2227608
	mov     r4, #0x0
	b       branch_222760a
@ 0x2227608

.thumb
branch_2227608: @ 2227608 :thumb
	mov     r4, #0xc
.thumb
branch_222760a: @ 222760a :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2227648, (=0x30201)
	ldr     r1, [sp, #0xc]
	lsl     r7, r5, #1
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r1, r5, r1
	mov     r2, r5
	add     r3, r4, r7
	bl      Function_22274a8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x222764c, (=0x10200)
	ldr     r1, [sp, #0xc]
	add     r3, r4, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r1, r5, r1
	mov     r2, r5
	add     r3, r3, r7
	bl      Function_222754c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2227642


.align 2


.word 0x114d @ 0x2227644
.word 0x30201 @ 0x2227648
.word 0x10200 @ 0x222764c
.thumb
Function_2227650: @ 2227650 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r2, #0x0
	mov     r4, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x13
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_2019cb8
	mov     r5, #0x0
.thumb
branch_2227672: @ 2227672 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_22275e0
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x6
	bcc     branch_2227672
	mov     r0, r4
	add     r0, #0x31
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	add     r4, #0x31
	eor     r0, r1
	strb    r0, [r4, #0x0]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2227696


.align 2, 0


.thumb
Function_2227698: @ 2227698 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x19
	ldr     r1, [r5, #0x2c]
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1c
	ldr     r4, [r5, #0x2c]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	ldr     r1, [sp, #0x10]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r7, r0
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, r0, r7
	lsr     r6, r0, #1
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe0] @ 0x22277c0, (=0x10200)
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	lsl     r0, r0, #4
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r3, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1d
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	ldr     r3, [pc, #0xbc] @ 0x22277c4, (=0x114d)
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0xb4] @ 0x22277c4, (=0x114d)
	.hword  0x1ddb @ add r3, r3, #0x7
	ldrb    r2, [r5, r2]
	ldr     r0, [r5, #0x14]
	add     r2, r5, r2
	ldrb    r2, [r2, r3]
	mov     r3, #0x2
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_200b60c
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	ldr     r2, [sp, #0x14]
	bl      Function_200c388
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x22277c0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r2, [r5, #0x18]
	add     r0, r4, r0
	add     r3, r6, r7
	bl      Function_201d78c
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1e
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r3, [pc, #0x60] @ 0x22277c4, (=0x114d)
	ldr     r2, [r5, #0x0]
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, #0x14]
	add     r2, r2, r3
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	mov     r3, #0x2
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_200b60c
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	mov     r2, r7
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [r5, #0x18]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r3, r0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x22277c0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r2, [r5, #0x18]
	add     r0, r4, r0
	sub     r3, r6, r3
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22277be


.align 2


.word 0x10200 @ 0x22277c0
.word 0x114d @ 0x22277c4
.thumb
Function_22277c8: @ 22277c8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x6
	ldr     r1, [r4, #0x2c]
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xa0] @ 0x2227880, (=0x114d)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x3
	bhi     branch_222787c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22277f0

Jumppoints_22277f0:
.hword branch_22277f8 - Jumppoints_22277f0 - 2
.hword branch_2227824 - Jumppoints_22277f0 - 2
.hword branch_2227850 - Jumppoints_22277f0 - 2
.hword branch_2227868 - Jumppoints_22277f0 - 2
.thumb
branch_22277f8: @ 22277f8 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x84] @ 0x2227884, (=0x10200)
	mov     r1, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x16
	mov     r3, #0x0
	bl      Function_2227374
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x70] @ 0x2227884, (=0x10200)
	mov     r1, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x17
	mov     r3, #0x0
	bl      Function_2227374
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2227824

.thumb
branch_2227824: @ 2227824 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x58] @ 0x2227884, (=0x10200)
	mov     r1, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2227374
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x44] @ 0x2227884, (=0x10200)
	mov     r1, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x19
	mov     r3, #0x0
	bl      Function_2227374
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2227850

.thumb
branch_2227850: @ 2227850 :thumb
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2227884, (=0x10200)
	mov     r1, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1a
	mov     r3, #0x0
	bl      Function_2227374
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2227868

.thumb
branch_2227868: @ 2227868 :thumb
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2227884, (=0x10200)
	mov     r1, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      Function_2227374
.thumb
branch_222787c: @ 222787c :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2227880

.word 0x114d @ 0x2227880
.word 0x10200 @ 0x2227884
.thumb
Function_2227888: @ 2227888 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2227650
	mov     r0, r4
	bl      Function_22277c8
	mov     r0, r4
	bl      Function_2227698
	pop     {r4,pc}
@ 0x222789e


.align 2, 0


.thumb
Function_22278a0: @ 22278a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r6, r1
	mov     r1, #0x9
	ldr     r4, [r5, #0x2c]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r2, [pc, #0x54] @ 0x2227908, (=0x114d)
	mov     r7, r0
	ldrb    r3, [r5, r2]
	mov     r2, #0x90
	ldr     r0, [r5, #0x14]
	mul     r2, r3
	add     r2, r5, r2
	lsl     r3, r6, #2
	add     r2, r2, r3
	ldrh    r2, [r2, #0x3c]
	mov     r1, #0x0
	bl      Function_200b70c
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	mov     r2, r7
	bl      Function_200c388
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x222790c, (=0x10200)
	mov     r3, r1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x18]
	mov     r0, r4
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2227906


.align 2


.word 0x114d @ 0x2227908
.word 0x10200 @ 0x222790c
.thumb
Function_2227910: @ 2227910 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	ldr     r1, [r5, #0x0]
	ldr     r4, [r5, #0x2c]
	ldr     r1, [r1, #0xc]
	mov     r0, #0x82
	add     r4, #0x20
	bl      Function_2023790
	ldr     r1, [pc, #0x44] @ 0x222796c, (=0x114d)
	mov     r7, r0
	ldrb    r2, [r5, r1]
	mov     r1, #0x90
	mul     r1, r2
	add     r2, r5, r1
	lsl     r1, r6, #2
	add     r1, r2, r1
	ldr     r2, [r5, #0x0]
	ldrh    r1, [r1, #0x3c]
	ldr     r2, [r2, #0xc]
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	bl      Function_207cfc8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2227970, (=0x10200)
	mov     r2, r7
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r3, #0x4
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222796c

.word 0x114d @ 0x222796c
.word 0x10200 @ 0x2227970
.thumb
Function_2227974: @ 2227974 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, #0x0
	mov     r5, r0
	mov     r4, r6
	mov     r7, r6
.thumb
branch_2227980: @ 2227980 :thumb
	ldr     r0, [r5, #0x2c]
	mov     r1, r7
	add     r0, r0, r4
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x4
	bcc     branch_2227980
	ldr     r0, [pc, #0x54] @ 0x22279e8, (=0x114d)
	ldr     r1, [r5, #0x0]
	ldrb    r2, [r5, r0]
	add     r0, r1, r2
	add     r0, #0x27
	ldrb    r4, [r0, #0x0]
	add     r0, r1, r2
	add     r0, #0x2c
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x6
	mov     r6, r1
	mul     r6, r0
	mov     r0, r5
	add     r1, r4, r6
	bl      Function_22278a0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r0, [pc, #0x34] @ 0x22279ec, (=0x10200)
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r1, r4, r6
	mov     r3, #0x1
	bl      Function_222754c
	mov     r0, r5
	add     r1, r4, r6
	bl      Function_2227910
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x22279f0, (=0x30201)
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0x2
	bl      Function_2227374
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22279e6


.align 2


.word 0x114d @ 0x22279e8
.word 0x10200 @ 0x22279ec
.word 0x30201 @ 0x22279f0
.thumb
Function_22279f4: @ 22279f4 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x20] @ 0x2227a18, (=0x3e2)
	mov     r4, r0
	add     r0, #0x1c
	mov     r1, #0x1
	mov     r3, #0xe
	bl      Function_200e060
	mov     r0, r4
	add     r0, #0x1c
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	bl      Function_2227a1c
	pop     {r4,pc}
@ 0x2227a16


.align 2


.word 0x3e2 @ 0x2227a18
.thumb
Function_2227a1c: @ 2227a1c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x1
	bl      Function_2002ac8
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x223edf0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [r4, #0x18]
	add     r0, #0x1c
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	add     r4, #0x32
	strb    r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2227a4c

.thumb
Function_2227a4c: @ 2227a4c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r3, [r4, #0x0]
	ldrh    r1, [r3, #0x20]
	cmp     r1, #0x0
	bne     branch_2227a5c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2227a5c

.thumb
branch_2227a5c: @ 2227a5c :thumb
	ldr     r0, [r3, #0x8]
	ldr     r3, [r3, #0xc]
	mov     r2, #0x1
	bl      CheckItem
	cmp     r0, #0x0
	bne     branch_2227a76
	ldr     r1, [r4, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x20]
	ldr     r1, [r4, #0x0]
	strb    r0, [r1, #0x1f]
	pop     {r4,pc}
@ 0x2227a76

.thumb
branch_2227a76: @ 2227a76 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2227a7a


.align 2, 0


.thumb
Function_2227a7c: @ 2227a7c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x2227ac4, (=0x114d)
	ldr     r6, [r5, #0x0]
	ldrb    r7, [r5, r0]
	mov     r0, #0x90
	ldrh    r2, [r6, #0x20]
	mul     r0, r7
	mov     r4, #0x0
	add     r1, r5, r0
.thumb
branch_2227a90: @ 2227a90 :thumb
	ldrh    r0, [r1, #0x3c]
	cmp     r2, r0
	bne     branch_2227aba
	mov     r0, r4
	mov     r1, #0x6
	blx     _u32_div_f
	add     r0, r6, r7
	add     r0, #0x27
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x6
	blx     _u32_div_f
	ldr     r1, [pc, #0x14] @ 0x2227ac4, (=0x114d)
	ldr     r2, [r5, #0x0]
	ldrb    r1, [r5, r1]
	add     r1, r2, r1
	add     r1, #0x2c
	strb    r0, [r1, #0x0]
	pop     {r3-r7,pc}
@ 0x2227aba

.thumb
branch_2227aba: @ 2227aba :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r4, #0x24
	bcc     branch_2227a90
	pop     {r3-r7,pc}
@ 0x2227ac4

.word 0x114d @ 0x2227ac4
.thumb
Function_2227ac8: @ 2227ac8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_2227ad2: @ 2227ad2 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
.thumb
branch_2227ade: @ 2227ade :thumb
	ldr     r0, [r4, #0x0]
	ldr     r2, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	lsl     r2, r2, #16
	ldr     r1, [sp, #0x8]
	lsr     r2, r2, #16
	bl      Function_207d910
	mov     r5, r0
	beq     branch_2227b50
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2227b48
	ldrh    r1, [r5, #0x2]
	cmp     r1, #0x0
	beq     branch_2227b48
	ldr     r2, [r4, #0x0]
	mov     r1, #0xd
	ldr     r2, [r2, #0xc]
	bl      GetItemData
	mov     r7, r0
	ldr     r1, [pc, #0x90] @ 0x2227b9c, (=0x2229bb0)
	mov     r0, #0x0
.thumb
branch_2227b0e: @ 2227b0e :thumb
	mov     r2, #0x1
	lsl     r2, r0
	tst     r2, r7
	beq     branch_2227b40
	ldrb    r2, [r1, #0x0]
	mov     r3, #0x90
	mov     r6, r2
	mul     r6, r3
	add     r3, r4, r2
	ldr     r2, [pc, #0x7c] @ 0x2227ba0, (=0x114f)
	ldrb    r2, [r3, r2]
	add     r3, r4, r6
	lsl     r2, r2, #2
	add     r2, r2, r3
	ldrh    r3, [r5, #0x0]
	strh    r3, [r2, #0x3c]
	ldrh    r3, [r5, #0x2]
	strh    r3, [r2, #0x3e]
	ldrb    r2, [r1, #0x0]
	add     r6, r4, r2
	ldr     r2, [pc, #0x68] @ 0x2227ba0, (=0x114f)
	ldrb    r2, [r6, r2]
	add     r3, r2, #0x1
	ldr     r2, [pc, #0x60] @ 0x2227ba0, (=0x114f)
	strb    r3, [r6, r2]
.thumb
branch_2227b40: @ 2227b40 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, #0x5
	bcc     branch_2227b0e
.thumb
branch_2227b48: @ 2227b48 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_2227ade
@ 0x2227b50

.thumb
branch_2227b50: @ 2227b50 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x8
	bcc     branch_2227ad2
	mov     r5, #0x0
	mov     r7, r5
.thumb
branch_2227b5e: @ 2227b5e :thumb
	ldr     r0, [pc, #0x40] @ 0x2227ba0, (=0x114f)
	add     r6, r4, r5
	ldrb    r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_2227b6e
	ldr     r0, [pc, #0x38] @ 0x2227ba4, (=0x1154)
	strb    r7, [r6, r0]
	b       branch_2227b7a
@ 0x2227b6e

.thumb
branch_2227b6e: @ 2227b6e :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	mov     r1, #0x6
	blx     _s32_div_f
	ldr     r1, [pc, #0x2c] @ 0x2227ba4, (=0x1154)
	strb    r0, [r6, r1]
.thumb
branch_2227b7a: @ 2227b7a :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2227ba4, (=0x1154)
	add     r2, r1, r5
	add     r2, #0x2c
	ldrb    r0, [r6, r0]
	ldrb    r2, [r2, #0x0]
	cmp     r0, r2
	bcs     branch_2227b90
	add     r1, r1, r5
	add     r1, #0x2c
	strb    r0, [r1, #0x0]
.thumb
branch_2227b90: @ 2227b90 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x5
	bcc     branch_2227b5e
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2227b9a


.align 2


.word 0x2229bb0 @ 0x2227b9c
.word 0x114f @ 0x2227ba0
.word 0x1154 @ 0x2227ba4
.thumb
Function_2227ba8: @ 2227ba8 :thumb
	push    {r3,r4}
	ldr     r2, [pc, #0x2c] @ 0x2227bd8, (=0x114d)
	ldr     r3, [r0, #0x0]
	ldrb    r2, [r0, r2]
	add     r3, r3, r2
	add     r3, #0x2c
	ldrb    r4, [r3, #0x0]
	mov     r3, #0x6
	mul     r3, r4
	add     r1, r1, r3
	lsl     r3, r1, #2
	mov     r1, #0x90
	mul     r1, r2
	add     r0, r0, r1
	add     r1, r0, r3
	ldrh    r0, [r1, #0x3c]
	cmp     r0, #0x0
	beq     branch_2227bd2
	ldrh    r1, [r1, #0x3e]
	cmp     r1, #0x0
	bne     branch_2227bd4
.thumb
branch_2227bd2: @ 2227bd2 :thumb
	mov     r0, #0x0
.thumb
branch_2227bd4: @ 2227bd4 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x2227bd8

.word 0x114d @ 0x2227bd8
.thumb
Function_2227bdc: @ 2227bdc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2227c08
	mov     r0, r4
	bl      Function_2227c54
	mov     r0, r4
	bl      Function_2227de8
	mov     r0, r4
	bl      Function_2227f7c
	mov     r0, r4
	bl      Function_2228070
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	pop     {r4,pc}
@ 0x2227c06


.align 2, 0


.thumb
Function_2227c08: @ 2227c08 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x40] @ 0x2227c50, (=0x2229be4)
	add     r2, sp, #0x0
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_16_223e010
	mov     r4, r0
	bl      Function_200c704
	mov     r1, #0xc3
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r1, [r5, r1]
	mov     r0, r4
	mov     r2, #0xc
	bl      Function_200c7c0
	mov     r1, #0xc3
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r4
	add     r2, sp, #0x0
	bl      Function_200cb30
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2227c4e

.align 2
.word 0x2229be4 @ 0x2227c50



.thumb
Function_2227c54: @ 2227c54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	mov     r0, #ItemIcon_Narc
	ldr     r1, [r1, #0xc]
	bl      LoadFromNARC_8
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_16_223e010
	str     r0, [sp, #0x18]
	mov     r4, #0x0
branch_2227c72: @ 2227c72 :thumb
	ldr     r0, [pc, #0x98] @ 0x2227d0c, (=0xb4b7)
	add     r5, r4, r0
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r1, #0xc3
	str     r5, [sp, #0x8]
	lsl     r1, r1, #2
	ldr     r0, [sp, #0x18]
	ldr     r1, [r6, r1]
	mov     r2, r7
	bl      Function_200cc3c
	mov     r0, #0x1
	mov     r1, #0x2
	bl      Function_207ce78
	str     r7, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	mov     r3, #0xc3
	str     r5, [sp, #0x14]
	lsl     r3, r3, #2
	ldr     r0, [r6, #0x8]
	ldr     r2, [sp, #0x18]
	ldr     r3, [r6, r3]
	mov     r1, #0x3
	bl      Function_200cdc4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	bcc     branch_2227c72
	bl      Function_207cf40
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2227d0c, (=0xb4b7)
	mov     r1, #0xc3
	str     r0, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r0, [sp, #0x18]
	ldr     r1, [r6, r1]
	mov     r2, r7
	bl      Function_200ce24
	bl      Function_207cf44
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2227d0c, (=0xb4b7)
	mov     r1, #0xc3
	str     r0, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r0, [sp, #0x18]
	ldr     r1, [r6, r1]
	mov     r2, r7
	bl      Function_200ce54
	mov     r0, r7
	bl      Call_FS_CloseFile
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2227d0a


.align 2


.word 0xb4b7 @ 0x2227d0c
.thumb
Function_2227d10: @ 2227d10 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	ldr     r0, [r0, #0x0]
	mov     r4, r2
	bl      Function_16_223e010
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0xc3
	str     r4, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r7
	mov     r2, #0x10
	bl      Function_200d948
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2227d46


.align 2, 0


.thumb
Function_2227d48: @ 2227d48 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x2
	mov     r4, r2
	bl      Function_207ce78
	mov     r2, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	lsl     r0, r4, #20
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r3, [r3, #0xc]
	mov     r1, #0x10
	bl      Function_2003050
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2227d78

.thumb
Function_2227d78: @ 2227d78 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x34
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	bl      Function_16_223e010
	mov     r2, #0x0
	add     r1, sp, #0x0
	strh    r2, [r1, #0x0]
	strh    r2, [r1, #0x2]
	strh    r2, [r1, #0x4]
	strh    r2, [r1, #0x6]
	mov     r1, #0x14
	ldr     r3, [pc, #0x3c] @ 0x2227dd4, (=0x2229ccc)
	mul     r1, r4
	ldr     r3, [r3, r1]
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x8]
	mov     r3, #0x2
	str     r3, [sp, #0x10]
	ldr     r3, [pc, #0x30] @ 0x2227dd8, (=0x2229cbc)
	str     r2, [sp, #0x30]
	ldr     r3, [r3, r1]
	add     r2, sp, #0x0
	str     r3, [sp, #0x14]
	ldr     r3, [pc, #0x2c] @ 0x2227ddc, (=0x2229cc0)
	ldr     r3, [r3, r1]
	str     r3, [sp, #0x18]
	ldr     r3, [pc, #0x28] @ 0x2227de0, (=0x2229cc4)
	ldr     r3, [r3, r1]
	str     r3, [sp, #0x1c]
	ldr     r3, [pc, #0x28] @ 0x2227de4, (=0x2229cc8)
	ldr     r1, [r3, r1]
	str     r1, [sp, #0x20]
	mov     r1, #0x1
	str     r1, [sp, #0x2c]
	mov     r1, #0xc3
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	bl      Function_200ce6c
	add     sp, #0x34
	pop     {r4,r5,pc}
@ 0x2227dd2


.align 2


.word 0x2229ccc @ 0x2227dd4
.word 0x2229cbc @ 0x2227dd8
.word 0x2229cc0 @ 0x2227ddc
.word 0x2229cc4 @ 0x2227de0
.word 0x2229cc8 @ 0x2227de4
.thumb
Function_2227de8: @ 2227de8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, #0x31
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #4
.thumb
branch_2227df4: @ 2227df4 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2227d78
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	bcc     branch_2227df4
	pop     {r3-r7,pc}
@ 0x2227e08

.thumb
Function_2227e08: @ 2227e08 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_16_223e010
	mov     r6, #0x31
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #4
.thumb
branch_2227e1e: @ 2227e1e :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	bcc     branch_2227e1e
	mov     r0, r7
	bl      Function_2227fdc
	mov     r0, r7
	bl      Function_22280c8
	mov     r1, #0xc3
	lsl     r1, r1, #2
	ldr     r0, [sp, #0x0]
	ldr     r1, [r7, r1]
	bl      Function_200d0b0
	pop     {r3-r7,pc}
@ 0x2227e46


.align 2, 0


.thumb
Function_2227e48: @ 2227e48 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r1, #0x1
	mov     r6, r0
	bl      Function_200d3f4
	lsl     r1, r5, #16
	lsl     r2, r4, #16
	mov     r0, r6
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	pop     {r4-r6,pc}
@ 0x2227e66


.align 2, 0


.thumb
Function_2227e68: @ 2227e68 :thumb
	push    {r3-r7,lr}
	mov     r6, #0x31
	str     r0, [sp, #0x0]
	mov     r7, r1
	mov     r4, #0x0
	mov     r5, r0
	lsl     r6, r6, #4
.thumb
branch_2227e76: @ 2227e76 :thumb
	ldr     r0, [r5, r6]
	mov     r1, #0x0
	bl      Function_200d3f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	bcc     branch_2227e76
	cmp     r7, #0x0
	beq     branch_2227e94
	cmp     r7, #0x1
	beq     branch_2227e9c
	cmp     r7, #0x2
	beq     branch_2227ea4
	pop     {r3-r7,pc}
@ 0x2227e94

.thumb
branch_2227e94: @ 2227e94 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2227eac
	pop     {r3-r7,pc}
@ 0x2227e9c

.thumb
branch_2227e9c: @ 2227e9c :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2227ee0
	pop     {r3-r7,pc}
@ 0x2227ea4

.thumb
branch_2227ea4: @ 2227ea4 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2227f38
	pop     {r3-r7,pc}
@ 0x2227eac

.thumb
Function_2227eac: @ 2227eac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldrh    r1, [r1, #0x20]
	cmp     r1, #0x0
	beq     branch_2227eda
	ldr     r2, [pc, #0x20] @ 0x2227edc, (=0xb4b7)
	bl      Function_2227d10
	ldr     r1, [r4, #0x0]
	ldr     r3, [pc, #0x18] @ 0x2227edc, (=0xb4b7)
	ldrh    r1, [r1, #0x20]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2227d48
	mov     r0, #0x31
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	mov     r2, #0xb2
	bl      Function_2227e48
.thumb
branch_2227eda: @ 2227eda :thumb
	pop     {r4,pc}
@ 0x2227edc

.word 0xb4b7 @ 0x2227edc
.thumb
Function_2227ee0: @ 2227ee0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r6, [pc, #0x48] @ 0x2227f30, (=0x2229c44)
	mov     r4, #0x0
	mov     r7, r5
.thumb
branch_2227eea: @ 2227eea :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2227ba8
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2227f22
	ldr     r2, [pc, #0x38] @ 0x2227f34, (=0xb4b7)
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	add     r2, r4, r2
	bl      Function_2227d10
	ldr     r3, [pc, #0x2c] @ 0x2227f34, (=0xb4b7)
	lsl     r2, r4, #16
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	lsr     r2, r2, #16
	add     r3, r4, r3
	bl      Function_2227d48
	mov     r0, #0x31
	lsl     r0, r0, #4
	ldr     r0, [r7, r0]
	ldr     r1, [r6, #0x0]
	ldr     r2, [r6, #0x4]
	bl      Function_2227e48
.thumb
branch_2227f22: @ 2227f22 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x8
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r4, #0x6
	bcc     branch_2227eea
	pop     {r3-r7,pc}
@ 0x2227f2e


.align 2


.word 0x2229c44 @ 0x2227f30
.word 0xb4b7 @ 0x2227f34
.thumb
Function_2227f38: @ 2227f38 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x38] @ 0x2227f74, (=0x114d)
	mov     r4, r0
	ldrb    r1, [r4, r1]
	ldr     r2, [r4, #0x0]
	add     r1, r2, r1
	add     r1, #0x27
	ldrb    r1, [r1, #0x0]
	bl      Function_2227ba8
	mov     r5, r0
	ldr     r2, [pc, #0x28] @ 0x2227f78, (=0xb4b7)
	mov     r0, r4
	mov     r1, r5
	bl      Function_2227d10
	ldr     r3, [pc, #0x1c] @ 0x2227f78, (=0xb4b7)
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2227d48
	mov     r0, #0x31
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	mov     r2, #0x2c
	bl      Function_2227e48
	pop     {r3-r5,pc}
@ 0x2227f74

.word 0x114d @ 0x2227f74
.word 0xb4b7 @ 0x2227f78
.thumb
Function_2227f7c: @ 2227f7c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_16_223e010
	ldr     r1, [pc, #0x4c] @ 0x2227fd8, (=0xb4be)
	mov     r4, r0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	.hword  0x1f49 @ sub r1, r1, #0x5
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r1, #0xc3
	ldr     r3, [r5, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r5, #0x8]
	ldr     r3, [r3, #0xc]
	bl      0x226db7c
	ldr     r3, [pc, #0x2c] @ 0x2227fd8, (=0xb4be)
	mov     r1, #0xc3
	str     r3, [sp, #0x0]
	.hword  0x1f58 @ sub r0, r3, #0x5
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r2, [r5, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r2, #0xc]
	mov     r0, r4
	bl      0x226dc24
	mov     r1, r0
	ldr     r0, [r5, #0x34]
	bl      Function_2228a64
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2227fd6


.align 2


.word 0xb4be @ 0x2227fd8
.thumb
Function_2227fdc: @ 2227fdc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	bl      Function_2228a58
	bl      0x226dca8
	ldr     r3, [pc, #0x14] @ 0x2228004, (=0xb4b9)
	mov     r0, #0xc3
	add     r1, r3, #0x5
	str     r3, [sp, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	bl      0x226dbfc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2228002


.align 2


.word 0xb4b9 @ 0x2228004
.thumb
Function_2228008: @ 2228008 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r1, [pc, #0x38] @ 0x2228048, (=0x2229bc8)
	lsl     r2, r4, #2
	ldr     r0, [r5, #0x34]
	ldr     r1, [r1, r2]
	bl      Function_2228a9c
	cmp     r4, #0x0
	beq     branch_2228026
	cmp     r4, #0x1
	beq     branch_2228032
	cmp     r4, #0x2
	pop     {r3-r5,pc}
@ 0x2228026

.thumb
branch_2228026: @ 2228026 :thumb
	ldr     r1, [pc, #0x24] @ 0x222804c, (=0x114d)
	ldr     r0, [r5, #0x34]
	ldrb    r1, [r5, r1]
	bl      Function_2228a68
	pop     {r3-r5,pc}
@ 0x2228032

.thumb
branch_2228032: @ 2228032 :thumb
	ldr     r1, [pc, #0x18] @ 0x222804c, (=0x114d)
	ldr     r2, [r5, #0x0]
	ldrb    r1, [r5, r1]
	ldr     r0, [r5, #0x34]
	add     r1, r2, r1
	add     r1, #0x27
	ldrb    r1, [r1, #0x0]
	bl      Function_2228a68
	pop     {r3-r5,pc}
@ 0x2228046


.align 2


.word 0x2229bc8 @ 0x2228048
.word 0x114d @ 0x222804c
.thumb
Function_2228050: @ 2228050 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2228a60
	ldr     r0, [r4, #0x34]
	bl      Function_2228a90
	ldr     r0, [r4, #0x34]
	bl      Function_2228a58
	bl      0x226dde8
	pop     {r4,pc}
@ 0x222806e


.align 2, 0
.thumb
Function_2228070: @ 2228070 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_16_223e010
	ldr     r1, [pc, #0x44] @ 0x22280c4, (=0xb4bd)
	mov     r4, r0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	.hword  0x1f49 @ sub r1, r1, #0x5
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r1, #0xc3
	ldr     r2, [r5, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r2, #0xc]
	ldr     r3, [r5, #0x8]
	bl      0x226de44
	ldr     r3, [pc, #0x24] @ 0x22280c4, (=0xb4bd)
	mov     r1, #0xc3
	str     r3, [sp, #0x0]
	.hword  0x1f58 @ sub r0, r3, #0x5
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r2, [r5, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r2, #0xc]
	mov     r0, r4
	bl      0x226deec
	str     r0, [r5, #0x38]
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22280c2


.align 2


.word 0xb4bd @ 0x22280c4
.thumb
Function_22280c8: @ 22280c8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x38]
	bl      0x226df68
	ldr     r3, [pc, #0x14] @ 0x22280ec, (=0xb4b8)
	mov     r0, #0xc3
	add     r1, r3, #0x5
	str     r3, [sp, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	bl      0x226dec4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22280ea


.align 2


.word 0xb4b8 @ 0x22280ec
.thumb
Function_22280f0: @ 22280f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x1
	bne     branch_2228116
	lsl     r3, r1, #3
	ldr     r1, [pc, #0x20] @ 0x2228120, (=0x2229bfc)
	ldr     r2, [pc, #0x20] @ 0x2228124, (=0x2229c00)
	ldr     r0, [r4, #0x38]
	ldr     r1, [r1, r3]
	ldr     r2, [r2, r3]
	bl      0x226dfb0
	ldr     r0, [r4, #0x38]
	mov     r1, #0x3c
	bl      0x226dfd0
	pop     {r4,pc}
@ 0x2228116

.thumb
branch_2228116: @ 2228116 :thumb
	ldr     r0, [r4, #0x38]
	bl      0x226dfbc
	pop     {r4,pc}
@ 0x222811e


.align 2


.word 0x2229bfc @ 0x2228120
.word 0x2229c00 @ 0x2228124
.thumb
Function_2228128: @ 2228128 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0xca
	lsl     r0, r0, #2
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r3, r2
	mov     r4, r1
	bl      Function_2228460
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x298] @ 0x22283e4, (=0x448)
	mov     r3, #0x9
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	str     r3, [sp, #0x4]
	bl      Function_2228460
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x284] @ 0x22283e8, (=0x568)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x12
	bl      Function_2228460
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x270] @ 0x22283ec, (=0x688)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x1b
	bl      Function_2228460
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x260] @ 0x22283f0, (=0x78c)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x20
	bl      Function_2228460
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, #0x89
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x25
	bl      Function_2228460
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x234] @ 0x22283f4, (=0x994)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x25
	bl      Function_2228460
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x224] @ 0x22283f8, (=0xa98)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x39
	bl      Function_2228460
	ldr     r0, [pc, #0x21c] @ 0x22283fc, (=0xaca)
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0x39
	str     r2, [sp, #0x4]
	bl      Function_2228460
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x208] @ 0x2228400, (=0xafc)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xa
	mov     r3, #0x39
	bl      Function_2228460
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1f4] @ 0x2228404, (=0xb2e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r3, #0x0
	bl      Function_2228460
	ldr     r0, [pc, #0x1ec] @ 0x2228408, (=0xbee)
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r3, #0x6
	add     r0, r5, r0
	mov     r1, r4
	str     r3, [sp, #0x4]
	bl      Function_2228460
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1d8] @ 0x222840c, (=0xcae)
	mov     r1, r4
	add     r0, r5, r0
	mov     r3, #0xc
	bl      Function_2228460
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c8] @ 0x2228410, (=0xd6e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r3, #0x12
	bl      Function_2228460
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1b8] @ 0x2228414, (=0xe2e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x2f
	bl      Function_2228460
	mov     r0, #0xe6
	mov     r2, #0x5
	lsl     r0, r0, #4
	str     r2, [sp, #0x0]
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0x2f
	str     r2, [sp, #0x4]
	bl      Function_2228460
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x194] @ 0x2228418, (=0xe92)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xa
	mov     r3, #0x2f
	bl      Function_2228460
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x184] @ 0x222841c, (=0xec4)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xf
	mov     r3, #0x2f
	bl      Function_2228460
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x174] @ 0x2228420, (=0xef6)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x34
	bl      Function_2228460
	ldr     r0, [pc, #0x16c] @ 0x2228424, (=0xf28)
	mov     r2, #0x5
	str     r2, [sp, #0x0]
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0x34
	str     r2, [sp, #0x4]
	bl      Function_2228460
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x158] @ 0x2228428, (=0xf5a)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xa
	mov     r3, #0x34
	bl      Function_2228460
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x148] @ 0x222842c, (=0xf8c)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xf
	mov     r3, #0x34
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x138] @ 0x2228430, (=0xfbe)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x14
	mov     r3, #0x2f
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x128] @ 0x2228434, (=0xfde)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x18
	mov     r3, #0x2f
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x118] @ 0x2228438, (=0xffe)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1c
	mov     r3, #0x2f
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x108] @ 0x222843c, (=0x101e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x14
	mov     r3, #0x33
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xf8] @ 0x2228440, (=0x103e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x18
	mov     r3, #0x33
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe8] @ 0x2228444, (=0x105e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1c
	mov     r3, #0x33
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xd8] @ 0x2228448, (=0x107e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x14
	mov     r3, #0x37
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc8] @ 0x222844c, (=0x109e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x18
	mov     r3, #0x37
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xb8] @ 0x2228450, (=0x10be)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1c
	mov     r3, #0x37
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa8] @ 0x2228454, (=0x10de)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x14
	mov     r3, #0x3b
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x2228458, (=0x10fe)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x18
	mov     r3, #0x3b
	bl      Function_2228460
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x88] @ 0x222845c, (=0x111e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1c
	mov     r3, #0x3b
	bl      Function_2228460
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22283e4

.word 0x448 @ 0x22283e4
.word 0x568 @ 0x22283e8
.word 0x688 @ 0x22283ec
.word 0x78c @ 0x22283f0
.word 0x994 @ 0x22283f4
.word 0xa98 @ 0x22283f8
.word 0xaca @ 0x22283fc
.word 0xafc @ 0x2228400
.word 0xb2e @ 0x2228404
.word 0xbee @ 0x2228408
.word 0xcae @ 0x222840c
.word 0xd6e @ 0x2228410
.word 0xe2e @ 0x2228414
.word 0xe92 @ 0x2228418
.word 0xec4 @ 0x222841c
.word 0xef6 @ 0x2228420
.word 0xf28 @ 0x2228424
.word 0xf5a @ 0x2228428
.word 0xf8c @ 0x222842c
.word 0xfbe @ 0x2228430
.word 0xfde @ 0x2228434
.word 0xffe @ 0x2228438
.word 0x101e @ 0x222843c
.word 0x103e @ 0x2228440
.word 0x105e @ 0x2228444
.word 0x107e @ 0x2228448
.word 0x109e @ 0x222844c
.word 0x10be @ 0x2228450
.word 0x10de @ 0x2228454
.word 0x10fe @ 0x2228458
.word 0x111e @ 0x222845c
.thumb
Function_2228460: @ 2228460 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	mov     lr, r3
	ldrb    r3, [r0, #0x14]
	mov     r6, #0x0
	mov     r12, r3
	cmp     r3, #0x0
	ble     branch_22284ac
	ldrb    r3, [r0, #0x10]
	lsl     r2, r2, #1
	add     r7, r1, r2
.thumb
branch_2228478: @ 2228478 :thumb
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_22284a0
	mov     r0, lr
	add     r0, r0, r6
	lsl     r0, r0, #6
	add     r5, r7, r0
	mov     r0, r6
	mul     r0, r3
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x0]
	add     r4, r0, r1
.thumb
branch_2228490: @ 2228490 :thumb
	lsl     r1, r2, #1
	ldrh    r0, [r5, r1]
	strh    r0, [r4, r1]
	add     r0, r2, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	cmp     r2, r3
	blt     branch_2228490
.thumb
branch_22284a0: @ 22284a0 :thumb
	add     r0, r6, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r12
	cmp     r6, r0
	blt     branch_2228478
.thumb
branch_22284ac: @ 22284ac :thumb
	pop     {r3-r7,pc}
@ 0x22284ae


.align 2, 0


.thumb
Function_22284b0: @ 22284b0 :thumb
	cmp     r1, #0x10
	bhi     branch_222853e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22284c0

Jumppoints_22284c0:
.hword branch_22284e2 - Jumppoints_22284c0 - 2
.hword branch_22284e2 - Jumppoints_22284c0 - 2
.hword branch_22284e2 - Jumppoints_22284c0 - 2
.hword branch_22284e2 - Jumppoints_22284c0 - 2
.hword branch_22284f2 - Jumppoints_22284c0 - 2
.hword branch_2228500 - Jumppoints_22284c0 - 2
.hword branch_222850c - Jumppoints_22284c0 - 2
.hword branch_222850c - Jumppoints_22284c0 - 2
.hword branch_222850c - Jumppoints_22284c0 - 2
.hword branch_222850c - Jumppoints_22284c0 - 2
.hword branch_222850c - Jumppoints_22284c0 - 2
.hword branch_222850c - Jumppoints_22284c0 - 2
.hword branch_2228518 - Jumppoints_22284c0 - 2
.hword branch_2228524 - Jumppoints_22284c0 - 2
.hword branch_2228500 - Jumppoints_22284c0 - 2
.hword branch_2228530 - Jumppoints_22284c0 - 2
.hword branch_2228500 - Jumppoints_22284c0 - 2
.thumb
branch_22284e2: @ 22284e2 :thumb
	mov     r1, #0xca
	lsl     r1, r1, #2
	add     r1, r0, r1
	mov     r0, #0x12
	lsl     r0, r0, #4
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x22284f2

.thumb
branch_22284f2: @ 22284f2 :thumb
	ldr     r1, [pc, #0x50] @ 0x2228544, (=0x688)
	add     r1, r0, r1
	lsl     r0, r2, #6
	add     r0, r2, r0
	lsl     r0, r0, #2
	add     r0, r1, r0
	bx      lr
@ 0x2228500

.thumb
branch_2228500: @ 2228500 :thumb
	ldr     r1, [pc, #0x44] @ 0x2228548, (=0xa98)
	add     r1, r0, r1
	mov     r0, #0x32
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x222850c

.thumb
branch_222850c: @ 222850c :thumb
	ldr     r1, [pc, #0x3c] @ 0x222854c, (=0xb2e)
	add     r1, r0, r1
	mov     r0, #0xc0
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2228518

.thumb
branch_2228518: @ 2228518 :thumb
	ldr     r1, [pc, #0x34] @ 0x2228550, (=0xe2e)
	add     r1, r0, r1
	mov     r0, #0x32
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2228524

.thumb
branch_2228524: @ 2228524 :thumb
	ldr     r1, [pc, #0x2c] @ 0x2228554, (=0xef6)
	add     r1, r0, r1
	mov     r0, #0x32
	mul     r0, r2
	add     r0, r1, r0
	bx      lr
@ 0x2228530

.thumb
branch_2228530: @ 2228530 :thumb
	ldr     r1, [pc, #0x10] @ 0x2228544, (=0x688)
	add     r1, r0, r1
	lsl     r0, r2, #6
	add     r0, r2, r0
	lsl     r0, r0, #2
	add     r0, r1, r0
	bx      lr
@ 0x222853e

.thumb
branch_222853e: @ 222853e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2228542


.align 2


.word 0x688 @ 0x2228544
.word 0xa98 @ 0x2228548
.word 0xb2e @ 0x222854c
.word 0xe2e @ 0x2228550
.word 0xef6 @ 0x2228554
.thumb
Function_2228558: @ 2228558 :thumb
	cmp     r2, #0x3
	bne     branch_2228560
	mov     r0, #0x5
	bx      lr
@ 0x2228560

.thumb
branch_2228560: @ 2228560 :thumb
	cmp     r1, #0x10
	bhi     branch_22285be
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2228570

Jumppoints_2228570:
.hword branch_2228592 - Jumppoints_2228570 - 2
.hword branch_2228592 - Jumppoints_2228570 - 2
.hword branch_2228592 - Jumppoints_2228570 - 2
.hword branch_2228592 - Jumppoints_2228570 - 2
.hword branch_2228596 - Jumppoints_2228570 - 2
.hword branch_222859a - Jumppoints_2228570 - 2
.hword branch_222859e - Jumppoints_2228570 - 2
.hword branch_222859e - Jumppoints_2228570 - 2
.hword branch_222859e - Jumppoints_2228570 - 2
.hword branch_222859e - Jumppoints_2228570 - 2
.hword branch_222859e - Jumppoints_2228570 - 2
.hword branch_222859e - Jumppoints_2228570 - 2
.hword branch_222859a - Jumppoints_2228570 - 2
.hword branch_222859a - Jumppoints_2228570 - 2
.hword branch_222859a - Jumppoints_2228570 - 2
.hword branch_22285aa - Jumppoints_2228570 - 2
.hword branch_222859a - Jumppoints_2228570 - 2
.thumb
branch_2228592: @ 2228592 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2228596

.thumb
branch_2228596: @ 2228596 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x222859a

.thumb
branch_222859a: @ 222859a :thumb
	mov     r0, #0x2
	bx      lr
@ 0x222859e

.thumb
branch_222859e: @ 222859e :thumb
	ldr     r1, [pc, #0x24] @ 0x22285c4, (=0x114d)
	ldrb    r0, [r0, r1]
	add     r0, #0x8
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x22285aa

.thumb
branch_22285aa: @ 22285aa :thumb
	cmp     r3, #0x2
	bne     branch_22285ba
	ldr     r1, [pc, #0x14] @ 0x22285c4, (=0x114d)
	ldrb    r0, [r0, r1]
	add     r0, #0x8
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x22285ba

.thumb
branch_22285ba: @ 22285ba :thumb
	mov     r0, #0x1
	bx      lr
@ 0x22285be

.thumb
branch_22285be: @ 22285be :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22285c2


.align 2


.word 0x114d @ 0x22285c4
.thumb
Function_22285c8: @ 22285c8 :thumb
	push    {r4-r7}
	cmp     r2, #0x0
	bne     branch_22285d8
	ldr     r2, [pc, #0x5c] @ 0x222862c, (=0xfbe)
	add     r2, r0, r2
	lsl     r0, r3, #5
	add     r0, r2, r0
	b       branch_2228600
@ 0x22285d8

.thumb
branch_22285d8: @ 22285d8 :thumb
	cmp     r2, #0x1
	bne     branch_22285e6
	ldr     r2, [pc, #0x50] @ 0x2228630, (=0x101e)
	add     r2, r0, r2
	lsl     r0, r3, #5
	add     r0, r2, r0
	b       branch_2228600
@ 0x22285e6

.thumb
branch_22285e6: @ 22285e6 :thumb
	cmp     r2, #0x2
	bne     branch_22285f4
	ldr     r2, [pc, #0x48] @ 0x2228634, (=0x107e)
	add     r2, r0, r2
	lsl     r0, r3, #5
	add     r0, r2, r0
	b       branch_2228600
@ 0x22285f4

.thumb
branch_22285f4: @ 22285f4 :thumb
	cmp     r2, #0x3
	bne     branch_2228628
	ldr     r2, [pc, #0x3c] @ 0x2228638, (=0x10de)
	add     r2, r0, r2
	lsl     r0, r3, #5
	add     r0, r2, r0
.thumb
branch_2228600: @ 2228600 :thumb
	mov     r2, #0x0
.thumb
branch_2228602: @ 2228602 :thumb
	lsl     r4, r2, #3
	lsl     r5, r2, #5
	mov     r3, #0x0
	add     r4, r0, r4
	add     r5, r1, r5
.thumb
branch_222860c: @ 222860c :thumb
	lsl     r6, r3, #1
	ldrh    r7, [r4, r6]
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #16
	add     r6, r5, r6
	lsr     r3, r3, #16
	strh    r7, [r6, #0xc]
	cmp     r3, #0x4
	bcc     branch_222860c
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	cmp     r2, #0x4
	bcc     branch_2228602
.thumb
branch_2228628: @ 2228628 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x222862c

.word 0xfbe @ 0x222862c
.word 0x101e @ 0x2228630
.word 0x107e @ 0x2228634
.word 0x10de @ 0x2228638
.thumb
Function_222863c: @ 222863c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r5, r1
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	bl      Function_22284b0
	add     r3, sp, #0x10
	mov     r4, r0
	ldrb    r3, [r3, #0x10]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	bl      Function_2228558
	lsl     r0, r0, #28
	lsr     r2, r0, #16
	ldr     r0, [sp, #0x4]
	ldr     r6, [pc, #0x40] @ 0x22286a8, (=0x2229d7f)
	lsl     r3, r0, #2
	ldr     r0, [pc, #0x40] @ 0x22286ac, (=0x2229d7e)
	ldrb    r6, [r6, r3]
	ldrb    r0, [r0, r3]
	mov     r1, #0x0
	mul     r6, r0
	cmp     r6, #0x0
	ble     branch_2228698
	ldr     r0, [pc, #0x34] @ 0x22286b0, (=0x2229d7c)
	ldr     r7, [pc, #0x38] @ 0x22286b4, (=0xfff)
	add     r3, r0, r3
.thumb
branch_222867e: @ 222867e :thumb
	lsl     r0, r1, #1
	ldrh    r6, [r4, r0]
	and     r6, r7
	orr     r6, r2
	strh    r6, [r5, r0]
	add     r0, r1, #0x1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldrb    r6, [r3, #0x2]
	ldrb    r0, [r3, #0x3]
	mul     r0, r6
	cmp     r1, r0
	blt     branch_222867e
.thumb
branch_2228698: @ 2228698 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r1, r5
	bl      Function_22285c8
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22286a8

.word 0x2229d7f @ 0x22286a8
.word 0x2229d7e @ 0x22286ac
.word 0x2229d7c @ 0x22286b0
.word 0xfff @ 0x22286b4
.thumb
Function_22286b8: @ 22286b8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r5, r0
	ldr     r0, [sp, #0xc]
	lsl     r4, r0, #2
	ldr     r0, [pc, #0x50] @ 0x222871c, (=0x2229d7f)
	ldrb    r7, [r0, r4]
	ldr     r0, [pc, #0x50] @ 0x2228720, (=0x2229d7e)
	ldrb    r6, [r0, r4]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	mul     r1, r7
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #1
	bl      malloc
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	bl      Function_222863c
	ldr     r0, [pc, #0x30] @ 0x2228724, (=0x2229d7d)
	ldr     r3, [pc, #0x34] @ 0x2228728, (=0x2229d7c)
	ldrb    r0, [r0, r4]
	ldrb    r3, [r3, r4]
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	str     r7, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_20198c0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_201c3c0
	ldr     r0, [sp, #0x18]
	bl      free
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222871a


.align 2


.word 0x2229d7f @ 0x222871c
.word 0x2229d7e @ 0x2228720
.word 0x2229d7d @ 0x2228724
.word 0x2229d7c @ 0x2228728
.thumb
Function_222872c: @ 222872c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	cmp     r1, #0x6
	bcc     branch_222874a
	cmp     r1, #0xb
	bhi     branch_222874a
	add     r0, #0x31
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_222874a
	add     r1, #0xb
	ldr     r0, [pc, #0x5c] @ 0x22287a0, (=0x2229dc0)
	lsl     r1, r1, #2
	ldr     r4, [r0, r1]
	b       branch_2228750
@ 0x222874a

.thumb
branch_222874a: @ 222874a :thumb
	ldr     r0, [pc, #0x54] @ 0x22287a0, (=0x2229dc0)
	lsl     r1, r1, #2
	ldr     r4, [r0, r1]
.thumb
branch_2228750: @ 2228750 :thumb
	cmp     r4, #0x0
	beq     branch_222879c
	cmp     r2, #0x0
	beq     branch_2228760
	cmp     r2, #0x1
	beq     branch_2228768
	cmp     r2, #0x2
	bne     branch_222876e
.thumb
branch_2228760: @ 2228760 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r7, #0x2
	b       branch_222876e
@ 0x2228768

.thumb
branch_2228768: @ 2228768 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r7, #0x4
.thumb
branch_222876e: @ 222876e :thumb
	mov     r5, #0x0
.thumb
branch_2228770: @ 2228770 :thumb
	ldrb    r0, [r4, r5]
	cmp     r0, #0xff
	beq     branch_222879c
	ldr     r1, [r6, #0x2c]
	lsl     r0, r0, #4
	add     r0, r1, r0
	ldr     r1, [sp, #0x0]
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_201c04c
	ldrb    r0, [r4, r5]
	ldr     r1, [r6, #0x2c]
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_201a9a4
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x8
	bcc     branch_2228770
.thumb
branch_222879c: @ 222879c :thumb
	pop     {r3-r7,pc}
@ 0x222879e


.align 2


.word 0x2229dc0 @ 0x22287a0
.thumb
Function_22287a4: @ 22287a4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	cmp     r1, #0x6
	bcc     branch_22287c0
	cmp     r1, #0xb
	bhi     branch_22287c0
	.hword  0x1f88 @ sub r0, r1, #0x6
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x31
	lsl     r0, r0, #4
	ldr     r6, [r1, r0]
	b       branch_22287e4
@ 0x22287c0

.thumb
branch_22287c0: @ 22287c0 :thumb
	cmp     r1, #0x4
	bne     branch_2228808
	mov     r7, #0x31
	mov     r4, #0x0
	lsl     r7, r7, #4
.thumb
branch_22287ca: @ 22287ca :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r6, [r0, r7]
	mov     r0, r6
	bl      Function_200d408
	cmp     r0, #0x0
	bne     branch_22287e4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x6
	bcc     branch_22287ca
.thumb
branch_22287e4: @ 22287e4 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_22287f2
	cmp     r0, #0x1
	beq     branch_22287fe
	cmp     r0, #0x2
	bne     branch_2228808
.thumb
branch_22287f2: @ 22287f2 :thumb
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_200d5dc
	pop     {r3-r7,pc}
@ 0x22287fe

.thumb
branch_22287fe: @ 22287fe :thumb
	mov     r1, #0x0
	mov     r0, r6
	.hword  0x1f0a @ sub r2, r1, #0x4
	bl      Function_200d5dc
.thumb
branch_2228808: @ 2228808 :thumb
	pop     {r3-r7,pc}
@ 0x222880a


.align 2, 0


.thumb
Function_222880c: @ 222880c :thumb
	push    {r4,r5}
	ldr     r3, [pc, #0x34] @ 0x2228844, (=0x113e)
	mov     r5, #0x0
	strb    r5, [r0, r3]
	add     r4, r3, #0x1
	strb    r5, [r0, r4]
	add     r4, r3, #0x2
	strb    r1, [r0, r4]
	add     r1, r3, #0x3
	ldrb    r4, [r0, r1]
	mov     r1, #0xf0
	bic     r4, r1
	lsl     r1, r2, #28
	lsr     r1, r1, #24
	mov     r2, r4
	orr     r2, r1
	add     r1, r3, #0x3
	strb    r2, [r0, r1]
	ldrb    r2, [r0, r1]
	mov     r1, #0xf
	bic     r2, r1
	mov     r1, #0x1
	orr     r2, r1
	add     r1, r3, #0x3
	strb    r2, [r0, r1]
	pop     {r4,r5}
	bx      lr
@ 0x2228842


.align 2


.word 0x113e @ 0x2228844
.thumb
Function_2228848: @ 2228848 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0xd0] @ 0x222891c, (=0x1141)
	mov     r4, r0
	ldrb    r1, [r4, r3]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	beq     branch_2228918
	.hword  0x1ed9 @ sub r1, r3, #0x3
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_2228868
	cmp     r1, #0x1
	beq     branch_22288a0
	cmp     r1, #0x2
	beq     branch_22288d8
	pop     {r4,pc}
@ 0x2228868

.thumb
branch_2228868: @ 2228868 :thumb
	.hword  0x1e59 @ sub r1, r3, #0x1
	add     r3, #0xb
	ldrb    r1, [r4, r1]
	ldrb    r3, [r4, r3]
	mov     r2, #0x1
	bl      Function_22286b8
	mov     r1, #0x45
	lsl     r1, r1, #6
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_222872c
	mov     r1, #0x45
	lsl     r1, r1, #6
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_22287a4
	ldr     r0, [pc, #0x8c] @ 0x2228920, (=0x113f)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x22288a0

.thumb
branch_22288a0: @ 22288a0 :thumb
	.hword  0x1e59 @ sub r1, r3, #0x1
	add     r3, #0xb
	ldrb    r1, [r4, r1]
	ldrb    r3, [r4, r3]
	mov     r2, #0x2
	bl      Function_22286b8
	mov     r1, #0x45
	lsl     r1, r1, #6
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_222872c
	mov     r1, #0x45
	lsl     r1, r1, #6
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_22287a4
	ldr     r0, [pc, #0x54] @ 0x2228920, (=0x113f)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r1, #0x2
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x22288d8

.thumb
branch_22288d8: @ 22288d8 :thumb
	.hword  0x1e59 @ sub r1, r3, #0x1
	add     r3, #0xb
	ldrb    r1, [r4, r1]
	ldrb    r3, [r4, r3]
	mov     r2, #0x0
	bl      Function_22286b8
	mov     r1, #0x45
	lsl     r1, r1, #6
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_222872c
	mov     r1, #0x45
	lsl     r1, r1, #6
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_22287a4
	ldr     r0, [pc, #0x1c] @ 0x2228920, (=0x113f)
	mov     r2, #0x0
	strb    r2, [r4, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	strb    r2, [r4, r1]
	add     r1, r0, #0x2
	ldrb    r2, [r4, r1]
	mov     r1, #0xf
	.hword  0x1c80 @ add r0, r0, #0x2
	bic     r2, r1
	strb    r2, [r4, r0]
.thumb
branch_2228918: @ 2228918 :thumb
	pop     {r4,pc}
@ 0x222891a


.align 2


.word 0x1141 @ 0x222891c
.word 0x113f @ 0x2228920
.thumb
Function_2228924: @ 2228924 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	beq     branch_2228936
	cmp     r6, #0x1
	beq     branch_2228994
	cmp     r6, #0x2
	beq     branch_2228a1a
	pop     {r3-r7,pc}
@ 0x2228936

.thumb
branch_2228936: @ 2228936 :thumb
	mov     r1, #0x0
	mov     r2, r1
	mov     r3, r6
	bl      Function_22286b8
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
	ldr     r0, [r5, #0x0]
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_222897a
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_22286b8
	b       branch_2228986
@ 0x222897a

.thumb
branch_222897a: @ 222897a :thumb
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
.thumb
branch_2228986: @ 2228986 :thumb
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
	pop     {r3-r7,pc}
@ 0x2228994

.thumb
branch_2228994: @ 2228994 :thumb
	mov     r4, #0x0
	mov     r7, #0x3
.thumb
branch_2228998: @ 2228998 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2227ba8
	cmp     r0, #0x0
	bne     branch_22289b6
	add     r1, r4, #0x6
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, r7
	mov     r3, r6
	bl      Function_22286b8
	b       branch_22289c6
@ 0x22289b6

.thumb
branch_22289b6: @ 22289b6 :thumb
	add     r1, r4, #0x6
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
.thumb
branch_22289c6: @ 22289c6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	bcc     branch_2228998
	ldr     r0, [pc, #0x64] @ 0x2228a34, (=0x114d)
	ldrb    r1, [r5, r0]
	.hword  0x1dc0 @ add r0, r0, #0x7
	add     r1, r5, r1
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22289f4
	mov     r0, r5
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_22286b8
	mov     r0, r5
	mov     r1, #0xd
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_22286b8
	b       branch_2228a0c
@ 0x22289f4

.thumb
branch_22289f4: @ 22289f4 :thumb
	mov     r0, r5
	mov     r1, #0xc
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
	mov     r0, r5
	mov     r1, #0xd
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
.thumb
branch_2228a0c: @ 2228a0c :thumb
	mov     r0, r5
	mov     r1, #0xe
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
	pop     {r3-r7,pc}
@ 0x2228a1a

.thumb
branch_2228a1a: @ 2228a1a :thumb
	mov     r1, #0xf
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_22286b8
	pop     {r3-r7,pc}
@ 0x2228a32


.align 2


.word 0x114d @ 0x2228a34
.thumb
Function_2228a38: @ 2228a38 :thumb
	push    {r3,lr}
	mov     r1, #0x10
	bl      malloc
	mov     r3, r0
	mov     r2, #0x10
	mov     r1, #0x0
.thumb
branch_2228a46: @ 2228a46 :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2228a46
	pop     {r3,pc}
@ 0x2228a50

.thumb
Function_2228a50: @ 2228a50 :thumb
	ldr     r3, [pc, #0x0] @ 0x2228a54, (=free+1)
	bx      r3
@ 0x2228a54

.word free+1 @ 0x2228a54



.thumb
Function_2228a58: @ 2228a58 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2228a5c


.thumb
Function_2228a5c: @ 2228a5c :thumb
	ldrb    r0, [r0, #0x8]
	bx      lr
@ 0x2228a60

.thumb
Function_2228a60: @ 2228a60 :thumb
	strb    r1, [r0, #0x8]
	bx      lr
@ 0x2228a64

.thumb
Function_2228a64: @ 2228a64 :thumb
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2228a68

.thumb
Function_2228a68: @ 2228a68 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	strb    r1, [r0, #0x9]
	ldrb    r1, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_2228a8c
	ldrb    r1, [r0, #0x9]
	ldr     r2, [r0, #0x4]
	lsl     r4, r1, #3
	add     r3, r2, r4
	ldrb    r1, [r3, #0x3]
	str     r1, [sp, #0x0]
	ldrb    r1, [r2, r4]
	ldrb    r2, [r3, #0x2]
	ldrb    r3, [r3, #0x1]
	ldr     r0, [r0, #0x0]
	bl      Function_16_226dd7c
branch_2228a8c: @ 2228a8c :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2228a90


.thumb
Function_2228a90: @ 2228a90 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x9]
	mov     r1, #0xff
	strb    r1, [r0, #0xa]
	bx      lr
@ 0x2228a9a


.align 2, 0


.thumb
Function_2228a9c: @ 2228a9c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_2228a90
	mov     r0, #0x0
	str     r5, [r4, #0x4]
	mvn     r0, r0
	str     r0, [r4, #0xc]
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x1
	bne     branch_2228ac6
	ldr     r3, [r4, #0x4]
	ldrb    r0, [r3, #0x3]
	str     r0, [sp, #0x0]
	ldrb    r1, [r3, #0x0]
	ldrb    r2, [r3, #0x2]
	ldrb    r3, [r3, #0x1]
	ldr     r0, [r4, #0x0]
	bl      Function_16_226dd7c
.thumb
branch_2228ac6: @ 2228ac6 :thumb
	pop     {r3-r5,pc}
@ 0x2228ac8

.thumb
Function_2228ac8: @ 2228ac8 :thumb
	str     r1, [r0, #0xc]
	bx      lr
@ 0x2228acc

.thumb
Function_2228acc: @ 2228acc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldrb    r1, [r0, #0x8]
	cmp     r1, #0x1
	bne     branch_2228adc
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3,r4,pc}

branch_2228adc: @ 2228adc :thumb
	ldr     r1, [pc, #0x30] @ 0x2228b10, (=RAM_21bf67c)
	ldr     r2, [r1, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r1, #KEY_A|KEY_B|KEY_RIGHT|KEY_LEFT|KEY_UP|KEY_DOWN
	tst     r1, r2
	beq     branch_2228b08

	mov     r1, #0x1
	strb    r1, [r0, #0x8]
	ldrb    r1, [r0, #0x9]
	ldr     r2, [r0, #0x4]
	lsl     r4, r1, #3
	add     r3, r2, r4
	ldrb    r1, [r3, #0x3]
	str     r1, [sp, #0x0]
	ldrb    r1, [r2, r4]
	ldrb    r2, [r3, #0x2]
	ldrb    r3, [r3, #0x1]
	ldr     r0, [r0, #0x0]
	bl      Function_16_226dd7c
	ldr     r0, [pc, #0x10] @ 0x2228b14, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2228b08: @ 2228b08 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2228b0e

.align 2
.word RAM_21bf67c @ 0x2228b10
.word 0x5dc @ 0x2228b14



.thumb
Function_2228b18: @ 2228b18 :thumb
	cmp     r1, #0x3
	bhi     branch_2228b60
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2228b28

Jumppoints_2228b28:
.hword branch_2228b30 - Jumppoints_2228b28 - 2
.hword branch_2228b3c - Jumppoints_2228b28 - 2
.hword branch_2228b48 - Jumppoints_2228b28 - 2
.hword branch_2228b54 - Jumppoints_2228b28 - 2
.thumb
branch_2228b30: @ 2228b30 :thumb
	ldrb    r1, [r0, #0x5]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2228b60
	mov     r0, #0x1
	bx      lr
@ 0x2228b3c

.thumb
branch_2228b3c: @ 2228b3c :thumb
	ldrb    r1, [r0, #0x4]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2228b60
	mov     r0, #0x1
	bx      lr
@ 0x2228b48

.thumb
branch_2228b48: @ 2228b48 :thumb
	ldrb    r1, [r0, #0x7]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2228b60
	mov     r0, #0x1
	bx      lr
@ 0x2228b54

.thumb
branch_2228b54: @ 2228b54 :thumb
	ldrb    r1, [r0, #0x6]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2228b60
	mov     r0, #0x1
	bx      lr
@ 0x2228b60

.thumb
branch_2228b60: @ 2228b60 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2228b64

.thumb
Function_2228b64: @ 2228b64 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	bl      Function_2228acc
	cmp     r0, #0x0
	bne     branch_2228b7a
	mov     r0, #0x0
	add     sp, #0x14
	mvn     r0, r0
	pop     {r4-r7,pc}

branch_2228b7a: @ 2228b7a :thumb
	ldr     r0, [pc, #0x174] @ 0x2228cf0, (=RAM_21bf67c)
	mov     r1, #KEY_UP
	ldr     r0, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	tst     r1, r0
	beq     branch_2228b9e

	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldrb    r0, [r5, #0x9]
	mov     r2, r1
	mov     r3, r1
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	bl      Function_201e028
	mov     r4, r0
	mov     r6, #0x0
	b       branch_2228c06
@ 0x2228b9e

.thumb
branch_2228b9e: @ 2228b9e :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_2228bc0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldrb    r0, [r5, #0x9]
	mov     r2, r1
	mov     r3, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	bl      Function_201e028
	mov     r4, r0
	mov     r6, #0x1
	b       branch_2228c06
@ 0x2228bc0

.thumb
branch_2228bc0: @ 2228bc0 :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_2228be2
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldrb    r0, [r5, #0x9]
	mov     r2, r1
	mov     r3, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	bl      Function_201e028
	mov     r4, r0
	mov     r6, #0x2
	b       branch_2228c06
@ 0x2228be2

.thumb
branch_2228be2: @ 2228be2 :thumb
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_2228c04
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldrb    r0, [r5, #0x9]
	mov     r2, r1
	mov     r3, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	bl      Function_201e028
	mov     r4, r0
	mov     r6, #0x3
	b       branch_2228c06
@ 0x2228c04

.thumb
branch_2228c04: @ 2228c04 :thumb
	mov     r4, #0xff
.thumb
branch_2228c06: @ 2228c06 :thumb
	cmp     r4, #0xff
	beq     branch_2228cc6
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x80
	mov     r1, r4
	tst     r1, r0
	beq     branch_2228c26
	ldrb    r1, [r5, #0xa]
	cmp     r1, #0xff
	beq     branch_2228c20
	mov     r4, r1
	b       branch_2228c26
@ 0x2228c20

.thumb
branch_2228c20: @ 2228c20 :thumb
	eor     r0, r4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_2228c26: @ 2228c26 :thumb
	mov     r7, #0x0
.thumb
branch_2228c28: @ 2228c28 :thumb
	mov     r0, #0x1
	ldr     r1, [r5, #0xc]
	lsl     r0, r4
	tst     r0, r1
	bne     branch_2228c60
	str     r7, [sp, #0xc]
	str     r7, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	mov     r2, r7
	mov     r3, r7
	bl      Function_201e028
	mov     r1, #0x7f
	and     r0, r1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, r4
	beq     branch_2228c58
	ldrb    r0, [r5, #0x9]
	cmp     r1, r0
	bne     branch_2228c5c
.thumb
branch_2228c58: @ 2228c58 :thumb
	ldrb    r4, [r5, #0x9]
	b       branch_2228c60
@ 0x2228c5c

.thumb
branch_2228c5c: @ 2228c5c :thumb
	mov     r4, r1
	b       branch_2228c28
@ 0x2228c60

.thumb
branch_2228c60: @ 2228c60 :thumb
	ldrb    r0, [r5, #0x9]
	cmp     r0, r4
	beq     branch_2228cbe
	ldr     r0, [r5, #0x4]
	lsl     r7, r4, #3
	add     r1, sp, #0x10
	add     r2, sp, #0x10
	add     r0, r0, r7
	add     r1, #0x3
	add     r2, #0x2
	bl      Function_201e010
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x10
	add     r0, r0, r7
	add     r1, #0x1
	add     r2, sp, #0x10
	bl      Function_201e01c
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	add     r0, r0, r7
	bl      Function_2228b18
	cmp     r0, #0x1
	bne     branch_2228ca0
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_2228ca0
	ldrb    r0, [r5, #0x9]
	strb    r0, [r5, #0xa]
	b       branch_2228ca4
@ 0x2228ca0

.thumb
branch_2228ca0: @ 2228ca0 :thumb
	mov     r0, #0xff
	strb    r0, [r5, #0xa]
.thumb
branch_2228ca4: @ 2228ca4 :thumb
	strb    r4, [r5, #0x9]
	add     r3, sp, #0x10
	ldrb    r0, [r3, #0x0]
	str     r0, [sp, #0x0]
	ldrb    r1, [r3, #0x3]
	ldrb    r2, [r3, #0x1]
	ldrb    r3, [r3, #0x2]
	ldr     r0, [r5, #0x0]
	bl      Function_16_226dd7c
	ldr     r0, [pc, #0x38] @ 0x2228cf4, (=0x5dc)
	bl      Function_2005748
branch_2228cbe: @ 2228cbe :thumb
	mov     r0, #0x0
	add     sp, #0x14
	mvn     r0, r0
	pop     {r4-r7,pc}

branch_2228cc6: @ 2228cc6 :thumb
	ldr     r0, [pc, #0x28] @ 0x2228cf0, (=RAM_21bf67c)
	ldr     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r0, #KEY_A
	tst     r0, r1
	beq     branch_2228cd6

	add     sp, #0x14
	ldrb    r0, [r5, #0x9]
	pop     {r4-r7,pc}

branch_2228cd6: @ 2228cd6 :thumb
	mov     r0, #0x2
	tst     r1, r0
	beq     branch_2228cea
	ldr     r0, [pc, #0x18] @ 0x2228cf8, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	add     sp, #0x14
	mvn     r0, r0
	pop     {r4-r7,pc}

branch_2228cea: @ 2228cea :thumb
	.hword  0x1ec0 @ sub r0, r0, #0x3
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2228cf0

.word RAM_21bf67c @ 0x2228cf0
.word 0x5dc @ 0x2228cf4
.word 0x5dd @ 0x2228cf8



Unknown_2228cfc: @ 0x2228cfc
.incbin "./baserom/overlay/overlay_0013.bin", 0x90dc, 0x2229e20 - 0x2228cfc


@end 0x2229e20




