

.section .iwram86, "ax"


.thumb
Function_223b140: @ 223b140 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x3
	mov     r1, #0x3f
	lsl     r2, r0, #16
	bl      0x2017fc8
	ldr     r1, [pc, #0x140] @ 0x223b298, (=0x1bf4)
	mov     r0, r5
	mov     r2, #0x3f
	bl      0x200681c
	mov     r4, r0
	mov     r0, r5
	bl      0x2006840
	str     r0, [r4, #0xc]
	ldr     r2, [pc, #0x130] @ 0x223b29c, (=0x15f)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3f
	bl      Function_200b144
	ldr     r1, [pc, #0x128] @ 0x223b2a0, (=0x1bec)
	str     r0, [r4, r1]
	mov     r0, #0x7d
	lsl     r0, r0, #2
	mov     r1, #0x3f
	bl      Function_2023790
	ldr     r1, [pc, #0x11c] @ 0x223b2a4, (=0x1be4)
	str     r0, [r4, r1]
	mov     r0, #0x7d
	lsl     r0, r0, #2
	mov     r1, #0x3f
	bl      Function_2023790
	ldr     r1, [pc, #0x114] @ 0x223b2a8, (=0x1be8)
	str     r0, [r4, r1]
	mov     r0, #0x3f
	bl      0x200b358
	ldr     r1, [pc, #0x10c] @ 0x223b2ac, (=0x1be0)
	str     r0, [r4, r1]
	mov     r0, #0x93
	mov     r1, #0x3f
	bl      0x2006c24
	ldr     r1, [pc, #0x104] @ 0x223b2b0, (=0x1bf0)
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x4]
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_223b1ee
	mov     r7, #0x99
	lsl     r7, r7, #2
.thumb
branch_223b1c4: @ 223b1c4 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, r5
	ldr     r0, [r0, #0x4]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223b1e8
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r5, [r0, r7]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_223b1e8: @ 223b1e8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_223b1c4
.thumb
branch_223b1ee: @ 223b1ee :thumb
	mov     r0, r4
	bl      Function_223b74c
	mov     r0, r4
	bl      Function_223b900
	mov     r0, r4
	bl      Function_223ba44
	ldr     r0, [pc, #0xb0] @ 0x223b2b4, (=0x1bcc)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_223c9b0
	ldr     r1, [pc, #0xa8] @ 0x223b2b8, (=0x1bc8)
	mov     r2, #0x5
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	ldr     r1, [pc, #0xa4] @ 0x223b2bc, (=0xfffff493)
	lsl     r2, r2, #14
	bl      Function_223caa0
	ldr     r0, [pc, #0x98] @ 0x223b2b8, (=0x1bc8)
	mov     r2, #0xf
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x9c] @ 0x223b2c0, (=0xfffff923)
	lsl     r2, r2, #14
	bl      Function_223caa0
	ldr     r0, [pc, #0x8c] @ 0x223b2b8, (=0x1bc8)
	mov     r2, #0xa
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x90] @ 0x223b2c4, (=0xfffffdb6)
	lsl     r2, r2, #14
	bl      Function_223caa0
	ldr     r0, [pc, #0x7c] @ 0x223b2b8, (=0x1bc8)
	mov     r2, #0x23
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x88] @ 0x223b2c8, (=0x24a)
	lsl     r2, r2, #14
	bl      Function_223caa0
	ldr     r0, [pc, #0x70] @ 0x223b2b8, (=0x1bc8)
	mov     r2, #0x1e
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x7c] @ 0x223b2cc, (=0x6dd)
	lsl     r2, r2, #14
	bl      Function_223caa0
	ldr     r0, [pc, #0x60] @ 0x223b2b8, (=0x1bc8)
	mov     r2, #0xa
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x74] @ 0x223b2d0, (=0xb6d)
	lsl     r2, r2, #16
	bl      Function_223caa0
	mov     r0, r4
	bl      Function_223cd94
	ldr     r1, [pc, #0x48] @ 0x223b2b4, (=0x1bcc)
	ldr     r2, [pc, #0x68] @ 0x223b2d4, (=0x4000304)
	str     r0, [r4, r1]
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x223b2d8, (=0x223b6cd)
	mov     r1, r4
	mov     r2, #0x6
	bl      Function_223b744
	ldr     r1, [pc, #0x54] @ 0x223b2dc, (=0x1bc4)
	mov     r2, #0x1
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x54] @ 0x223b2e0, (=0x493)
	mov     r0, #0x8
	bl      0x2004550
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223b296


.align 2


.word 0x1bf4 @ 0x223b298
.word 0x15f @ 0x223b29c
.word 0x1bec @ 0x223b2a0
.word 0x1be4 @ 0x223b2a4
.word 0x1be8 @ 0x223b2a8
.word 0x1be0 @ 0x223b2ac
.word 0x1bf0 @ 0x223b2b0
.word 0x1bcc @ 0x223b2b4
.word 0x1bc8 @ 0x223b2b8
.word 0xfffff493 @ 0x223b2bc
.word 0xfffff923 @ 0x223b2c0
.word 0xfffffdb6 @ 0x223b2c4
.word 0x24a @ 0x223b2c8
.word 0x6dd @ 0x223b2cc
.word 0xb6d @ 0x223b2d0
.word 0x4000304 @ 0x223b2d4
.word 0x223b6cd @ 0x223b2d8
.word 0x1bc4 @ 0x223b2dc
.word 0x493 @ 0x223b2e0
.thumb
Function_223b2e4: @ 223b2e4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r6, r0
	cmp     r1, #0x0
	beq     branch_223b2f6
	cmp     r1, #0x1
	beq     branch_223b362
	b       branch_223b36e
@ 0x223b2f6

.thumb
branch_223b2f6: @ 223b2f6 :thumb
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x74] @ 0x223b374, (=0x1bc4)
	ldr     r0, [r4, r0]
	bl      Function_200da58
	ldr     r0, [pc, #0x70] @ 0x223b378, (=0x1bcc)
	ldr     r0, [r4, r0]
	bl      Function_223cf44
	ldr     r0, [pc, #0x6c] @ 0x223b37c, (=0x1bc8)
	ldr     r0, [r4, r0]
	bl      Function_223cd34
	mov     r0, r4
	bl      Function_223bd68
	mov     r0, r4
	bl      Function_223ba34
	mov     r0, r4
	bl      Function_223b8c4
	ldr     r0, [pc, #0x58] @ 0x223b380, (=0x1be0)
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	ldr     r0, [pc, #0x54] @ 0x223b384, (=0x1be4)
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x50] @ 0x223b388, (=0x1be8)
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x4c] @ 0x223b38c, (=0x1bec)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	ldr     r0, [pc, #0x48] @ 0x223b390, (=0x1bf0)
	ldr     r0, [r4, r0]
	bl      0x2006ca8
	mov     r0, r6
	bl      0x2006830
	mov     r0, #0x3f
	bl      0x201807c
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223b36e
@ 0x223b362

.thumb
branch_223b362: @ 223b362 :thumb
	bl      Function_223cd80
	cmp     r0, #0x0
	beq     branch_223b36e
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223b36e

.thumb
branch_223b36e: @ 223b36e :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223b372


.align 2


.word 0x1bc4 @ 0x223b374
.word 0x1bcc @ 0x223b378
.word 0x1bc8 @ 0x223b37c
.word 0x1be0 @ 0x223b380
.word 0x1be4 @ 0x223b384
.word 0x1be8 @ 0x223b388
.word 0x1bec @ 0x223b38c
.word 0x1bf0 @ 0x223b390
.thumb
Function_223b394: @ 223b394 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x5
	bcs     branch_223b3c0
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x223b3c4, (=0x223d3b8)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_223b3bc
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_223b3bc: @ 223b3bc :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223b3c0

.thumb
branch_223b3c0: @ 223b3c0 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b3c4

.word 0x223d3b8 @ 0x223b3c4
.thumb
Function_223b3c8: @ 223b3c8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223b3da
	cmp     r0, #0x1
	beq     branch_223b3f8
	b       branch_223b406
@ 0x223b3da

.thumb
branch_223b3da: @ 223b3da :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3f
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b406
@ 0x223b3f8

.thumb
branch_223b3f8: @ 223b3f8 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b406
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x223b406

.thumb
branch_223b406: @ 223b406 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223b40c

.thumb
Function_223b40c: @ 223b40c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223b41e
	cmp     r0, #0x1
	beq     branch_223b446
	b       branch_223b45c
@ 0x223b41e

.thumb
branch_223b41e: @ 223b41e :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3f
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      0x200f174
	mov     r0, #0x0
	mov     r1, #0x1e
	bl      0x200564c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b45c
@ 0x223b446

.thumb
branch_223b446: @ 223b446 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b45c
	bl      0x2005684
	cmp     r0, #0x0
	bne     branch_223b45c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x223b45c

.thumb
branch_223b45c: @ 223b45c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223b462


.align 2, 0


.thumb
Function_223b464: @ 223b464 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_223b476
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223b476

.thumb
branch_223b476: @ 223b476 :thumb
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x6
	bhi     branch_223b56c
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223b488

Jumppoints_223b488:
.hword branch_223b496 - Jumppoints_223b488 - 2
.hword branch_223b4a0 - Jumppoints_223b488 - 2
.hword branch_223b4c0 - Jumppoints_223b488 - 2
.hword branch_223b4d6 - Jumppoints_223b488 - 2
.hword branch_223b4f6 - Jumppoints_223b488 - 2
.hword branch_223b518 - Jumppoints_223b488 - 2
.hword branch_223b532 - Jumppoints_223b488 - 2
.thumb
branch_223b496: @ 223b496 :thumb
	ldr     r0, [pc, #0xd8] @ 0x223b570, (=0x223d560)
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	add     r0, r1, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_223b4a0: @ 223b4a0 :thumb
	ldr     r1, [pc, #0xcc] @ 0x223b570, (=0x223d560)
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	mov     r2, #0x0
	bl      Function_223bde0
	ldr     r1, [pc, #0xc0] @ 0x223b570, (=0x223d560)
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1
	bl      Function_223c104
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b56c
@ 0x223b4c0

.thumb
branch_223b4c0: @ 223b4c0 :thumb
	mov     r1, #0x0
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b56c
	mov     r0, #0x14
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b56c
@ 0x223b4d6

.thumb
branch_223b4d6: @ 223b4d6 :thumb
	ldr     r1, [pc, #0x98] @ 0x223b570, (=0x223d560)
	mov     r2, #0x1
	ldr     r1, [r1, #0x0]
	mov     r3, #0x0
	bl      Function_223c2cc
	ldr     r1, [pc, #0x8c] @ 0x223b570, (=0x223d560)
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1
	bl      Function_223c3e4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b56c
@ 0x223b4f6

.thumb
branch_223b4f6: @ 223b4f6 :thumb
	mov     r1, #0x0
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b56c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b56c
	mov     r0, #0x1e
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b56c
@ 0x223b518

.thumb
branch_223b518: @ 223b518 :thumb
	mov     r1, #0x0
	bl      Function_223c664
	ldr     r1, [pc, #0x50] @ 0x223b570, (=0x223d560)
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1
	bl      Function_223c158
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b56c
@ 0x223b532

.thumb
branch_223b532: @ 223b532 :thumb
	mov     r1, #0x0
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b56c
	ldr     r0, [pc, #0x30] @ 0x223b570, (=0x223d560)
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [pc, #0x1c] @ 0x223b570, (=0x223d560)
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	cmp     r1, r0
	bge     branch_223b568
	mov     r0, #0x1e
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b56c
@ 0x223b568

.thumb
branch_223b568: @ 223b568 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223b56c

.thumb
branch_223b56c: @ 223b56c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223b570

.word 0x223d560 @ 0x223b570
.thumb
Function_223b574: @ 223b574 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_223b58a
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [r4, #0x8]
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223b58a

.thumb
branch_223b58a: @ 223b58a :thumb
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x8
	bhi     branch_223b674
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223b59c

Jumppoints_223b59c:
.hword branch_223b5ae - Jumppoints_223b59c - 2
.hword branch_223b5ce - Jumppoints_223b59c - 2
.hword branch_223b5e4 - Jumppoints_223b59c - 2
.hword branch_223b606 - Jumppoints_223b59c - 2
.hword branch_223b614 - Jumppoints_223b59c - 2
.hword branch_223b630 - Jumppoints_223b59c - 2
.hword branch_223b63e - Jumppoints_223b59c - 2
.hword branch_223b654 - Jumppoints_223b59c - 2
.hword branch_223b664 - Jumppoints_223b59c - 2
.thumb
branch_223b5ae: @ 223b5ae :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x3f
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x10]
	mov     r0, #0x69
	mov     r3, #0x3
	bl      0x2006e60
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b674
@ 0x223b5ce

.thumb
branch_223b5ce: @ 223b5ce :thumb
	mov     r1, #0x0
	bl      Function_223bea0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223c1b8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b674
@ 0x223b5e4

.thumb
branch_223b5e4: @ 223b5e4 :thumb
	mov     r1, #0x0
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b674
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b674
	mov     r0, #0x14
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b674
@ 0x223b606

.thumb
branch_223b606: @ 223b606 :thumb
	mov     r1, #0x0
	bl      Function_223c20c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b674
@ 0x223b614

.thumb
branch_223b614: @ 223b614 :thumb
	mov     r1, #0x0
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b674
	mov     r0, r4
	bl      Function_223c72c
	mov     r0, #0x14
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b674
@ 0x223b630

.thumb
branch_223b630: @ 223b630 :thumb
	mov     r1, #0x0
	bl      Function_223c840
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b674
@ 0x223b63e

.thumb
branch_223b63e: @ 223b63e :thumb
	mov     r1, #0x0
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b674
	mov     r0, #0x14
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b674
@ 0x223b654

.thumb
branch_223b654: @ 223b654 :thumb
	ldr     r0, [pc, #0x24] @ 0x223b67c, (=0x1bcc)
	ldr     r0, [r4, r0]
	bl      Function_223cf5c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b674
@ 0x223b664

.thumb
branch_223b664: @ 223b664 :thumb
	ldr     r0, [pc, #0x18] @ 0x223b680, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_223b674
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223b674

.thumb
branch_223b674: @ 223b674 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223b67a


.align 2


.word 0x1bcc @ 0x223b67c
.word 0x21bf67c @ 0x223b680
.thumb
Function_223b684: @ 223b684 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_223b694
	cmp     r1, #0x1
	beq     branch_223b6a2
	b       branch_223b6b0
@ 0x223b694

.thumb
branch_223b694: @ 223b694 :thumb
	mov     r1, #0x0
	bl      Function_223c26c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b6b0
@ 0x223b6a2

.thumb
branch_223b6a2: @ 223b6a2 :thumb
	mov     r1, #0x0
	bl      Function_223b6b4
	cmp     r0, #0x0
	beq     branch_223b6b0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223b6b0

.thumb
branch_223b6b0: @ 223b6b0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223b6b4

.thumb
Function_223b6b4: @ 223b6b4 :thumb
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldr     r0, [pc, #0xc] @ 0x223b6c8, (=0x1bd0)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_223b6c4
	mov     r0, #0x1
	bx      lr
@ 0x223b6c4

.thumb
branch_223b6c4: @ 223b6c4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223b6c8

.word 0x1bd0 @ 0x223b6c8
.thumb
Function_223b6cc: @ 223b6cc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r0, [pc, #0x60] @ 0x223b734, (=0x4000600)
	mov     r4, r1
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #26
	tst     r0, r1
	bne     branch_223b72e
	blx     G3X_Reset
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	ldr     r0, [pc, #0x48] @ 0x223b738, (=0x1bc8)
	ldr     r0, [r4, r0]
	bl      Function_223cd00
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x4
	str     r2, [sp, #0x4]
	blx     0x20b275c
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	ldr     r0, [pc, #0x30] @ 0x223b73c, (=0x1bcc)
	ldr     r0, [r4, r0]
	bl      Function_223d220
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     0x20b275c
	ldr     r0, [pc, #0x20] @ 0x223b740, (=0x4000540)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x24]
	bl      0x20219f8
	bl      0x200a858
.thumb
branch_223b72e: @ 223b72e :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223b732


.align 2


.word 0x4000600 @ 0x223b734
.word 0x1bc8 @ 0x223b738
.word 0x1bcc @ 0x223b73c
.word 0x4000540 @ 0x223b740
.thumb
Function_223b744: @ 223b744 :thumb
	ldr     r3, [pc, #0x0] @ 0x223b748, (=0x200da05)
	bx      r3
@ 0x223b748

.word 0x200da05 @ 0x223b748
.thumb
Function_223b74c: @ 223b74c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x3f
	bl      0x2018340
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x144] @ 0x223b8a0, (=0x223d4b0)
	bl      0x201fe94
	ldr     r2, [pc, #0x140] @ 0x223b8a4, (=0x4000304)
	ldr     r0, [pc, #0x144] @ 0x223b8a8, (=0xffff7fff)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x140] @ 0x223b8ac, (=0x223d3a8)
	bl      0x2018368
	ldr     r0, [r5, #0x10]
	ldr     r2, [pc, #0x13c] @ 0x223b8b0, (=0x223d434)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0x10]
	ldr     r2, [pc, #0x134] @ 0x223b8b4, (=0x223d3fc)
	mov     r1, #0x2
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0x10]
	ldr     r2, [pc, #0x12c] @ 0x223b8b8, (=0x223d418)
	mov     r1, #0x3
	mov     r3, #0x0
	bl      0x20183c4
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r5, #0x10]
	mov     r3, r1
	bl      0x20196c0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2019cb8
	mov     r3, #0x0
	mov     r1, r5
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r0, [r5, #0x10]
	add     r1, #0x14
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x14
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x14
	bl      0x201accc
	mov     r0, r5
	add     r0, #0x14
	bl      0x201a9f4
	mov     r0, #0x69
	mov     r1, #0x3f
	bl      0x2006c24
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x3f
	str     r1, [sp, #0xc]
	mov     r1, #0x3
	ldr     r2, [r5, #0x10]
	mov     r3, r1
	mov     r4, r0
	bl      0x20070e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3f
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r3, #0x3
	bl      0x200710c
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0x3f
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x4
	mov     r3, r2
	bl      0x2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3f
	str     r0, [sp, #0xc]
	mov     r1, #0x2
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r3, r1
	bl      0x200710c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      0x2019448
	ldr     r0, [pc, #0x5c] @ 0x223b8bc, (=0x4000040)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	mov     r5, r0
	strh    r1, [r0, #0x4]
	add     r5, #0x8
	ldrh    r3, [r5, #0x0]
	mov     r2, #0x3f
	mov     r1, #0x1b
	bic     r3, r2
	orr     r1, r3
	mov     r3, #0x20
	orr     r1, r3
	strh    r1, [r5, #0x0]
	add     r0, #0xa
	ldrh    r5, [r0, #0x0]
	mov     r1, #0x1f
	bic     r5, r2
	orr     r1, r5
	orr     r1, r3
	strh    r1, [r0, #0x0]
	lsl     r2, r3, #21
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x30] @ 0x223b8c0, (=0xffff1fff)
	and     r1, r0
	lsl     r0, r3, #8
	orr     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x223b8a0

.word 0x223d4b0 @ 0x223b8a0
.word 0x4000304 @ 0x223b8a4
.word 0xffff7fff @ 0x223b8a8
.word 0x223d3a8 @ 0x223b8ac
.word 0x223d434 @ 0x223b8b0
.word 0x223d3fc @ 0x223b8b4
.word 0x223d418 @ 0x223b8b8
.word 0x4000040 @ 0x223b8bc
.word 0xffff1fff @ 0x223b8c0
.thumb
Function_223b8c4: @ 223b8c4 :thumb
	push    {r4,lr}
	mov     r2, #0x1
	lsl     r2, r2, #26
	mov     r4, r0
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223b8fc, (=0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, r4
	add     r0, #0x14
	bl      Function_201a8fc
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	bl      free
	pop     {r4,pc}
@ 0x223b8fc

.word 0xffff1fff @ 0x223b8fc
.thumb
Function_223b900: @ 223b900 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0x80] @ 0x223b990, (=0x4000060)
	ldr     r2, [pc, #0x80] @ 0x223b994, (=0xffffcffd)
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r1, r2, #0x2
	and     r3, r1
	mov     r1, #0x10
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r1, [pc, #0x70] @ 0x223b998, (=0xcffb)
	and     r1, r3
	strh    r1, [r0, #0x0]
	add     r1, r2, #0x2
	ldrh    r3, [r0, #0x0]
	lsr     r2, r2, #17
	and     r3, r1
	mov     r1, #0x8
	orr     r1, r3
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x54] @ 0x223b99c, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x50] @ 0x223b9a0, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x38] @ 0x223b9a4, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x2
	orr     r1, r2
	strh    r1, [r0, #0x0]
	mov     r1, #0x0
	add     r0, #0x48
	mov     r2, #0x18
	mov     r3, r1
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, r4
	bl      Function_223b9a8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b990

.word 0x4000060 @ 0x223b990
.word 0xffffcffd @ 0x223b994
.word 0xcffb @ 0x223b998
.word 0x4000540 @ 0x223b99c
.word 0xbfff0000 @ 0x223b9a0
.word 0x4000008 @ 0x223b9a4
.thumb
Function_223b9a8: @ 223b9a8 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x3f
	bl      0x20203ac
	ldr     r2, [pc, #0x74] @ 0x223ba2c, (=0x1bac)
	ldr     r3, [pc, #0x78] @ 0x223ba30, (=0xfa4)
	str     r0, [r4, r2]
	mov     r0, #0x0
	add     r1, r2, #0x4
	str     r0, [r4, r1]
	mov     r1, r2
	add     r1, #0x8
	str     r0, [r4, r1]
	mov     r1, r2
	add     r1, #0xc
	str     r0, [r4, r1]
	mov     r1, r2
	add     r1, #0x10
	strh    r0, [r4, r1]
	mov     r1, r2
	add     r1, #0x12
	strh    r0, [r4, r1]
	mov     r1, r2
	add     r1, #0x14
	strh    r0, [r4, r1]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, r2]
	mov     r1, #0x5
	str     r0, [sp, #0x8]
	add     r0, r2, #0x4
	add     r2, #0x10
	add     r0, r4, r0
	lsl     r1, r1, #12
	add     r2, r4, r2
	bl      0x20206d0
	mov     r1, #0x0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x14]
	ldr     r1, [pc, #0x24] @ 0x223ba2c, (=0x1bac)
	add     r0, sp, #0xc
	ldr     r1, [r4, r1]
	bl      0x2020680
	ldr     r0, [pc, #0x1c] @ 0x223ba2c, (=0x1bac)
	ldr     r0, [r4, r0]
	bl      0x20203d4
	ldr     r2, [pc, #0x14] @ 0x223ba2c, (=0x1bac)
	mov     r0, #0x1
	mov     r1, #0x7d
	ldr     r2, [r4, r2]
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      0x20206bc
	add     sp, #0x18
	pop     {r4,pc}
@ 0x223ba2a


.align 2


.word 0x1bac @ 0x223ba2c
.word 0xfa4 @ 0x223ba30
.thumb
Function_223ba34: @ 223ba34 :thumb
	ldr     r1, [pc, #0x4] @ 0x223ba3c, (=0x1bac)
	ldr     r3, [pc, #0x8] @ 0x223ba40, (=0x20203b9)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223ba3c

.word 0x1bac @ 0x223ba3c
.word 0x20203b9 @ 0x223ba40
.thumb
Function_223ba44: @ 223ba44 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x1b
	mov     r1, #0x3f
	bl      0x2006c24
	mov     r4, r0
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x3f
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r1, r5
	mov     r0, #0x40
	add     r1, #0x28
	mov     r2, #0x3f
	bl      0x20095c4
	str     r0, [r5, #0x24]
	mov     r0, #0x3f
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x4d
	mov     r2, #0x0
	add     r3, sp, #0x18
	bl      0x2007204
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x3f
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x4e
	mov     r2, #0x0
	add     r3, sp, #0x14
	bl      0x2007220
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r3, r4
	bl      Function_223bac8
	mov     r0, r4
	bl      0x2006ca8
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x223bac8

.thumb
Function_223bac8: @ 223bac8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xec
	mov     r4, r3
	mov     r3, #0x0
	mov     r6, r0
	str     r1, [sp, #0xc4]
	str     r2, [sp, #0xc8]
	str     r3, [sp, #0xbc]
	str     r3, [sp, #0xcc]
	str     r3, [sp, #0xd0]
	str     r3, [sp, #0xd4]
	mov     r1, #0x3
	add     r0, sp, #0xd8
	strb    r1, [r0, #0x0]
	add     r0, sp, #0x5c
	str     r0, [sp, #0xb8]
	add     r0, sp, #0x48
	str     r0, [sp, #0xc0]
	ldr     r0, [r6, #0x24]
	mov     r1, #0x4c
	str     r0, [sp, #0x98]
	add     r0, sp, #0xb8
	str     r0, [sp, #0x9c]
	mov     r0, #0x1
	str     r0, [sp, #0xb0]
	mov     r0, #0x3f
	str     r3, [sp, #0xa0]
	str     r3, [sp, #0xa4]
	str     r3, [sp, #0xa8]
	str     r0, [sp, #0xb4]
	str     r0, [sp, #0x0]
	mov     r2, r3
	mov     r0, r4
	add     r3, sp, #0x44
	bl      0x20071b4
	str     r0, [sp, #0x2c]
	mov     r0, r4
	mov     r1, #0x4b
	add     r2, sp, #0x40
	mov     r3, #0x3f
	bl      0x20071ec
	str     r0, [sp, #0x28]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	bgt     branch_223bb2c
	b       branch_223bcaa
@ 0x223bb2c

.thumb
branch_223bb2c: @ 223bb2c :thumb
	ldr     r0, [sp, #0x24]
	mov     r5, r6
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x1c]
	mov     r0, #0x32
	lsl     r0, r0, #6
	str     r0, [sp, #0x18]
	mov     r0, #0x5d
	lsl     r0, r0, #2
	add     r0, r6, r0
	str     r0, [sp, #0x14]
	mov     r0, #0xab
	lsl     r0, r0, #2
	add     r4, r6, r0
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x38]
	str     r0, [sp, #0x3c]
	str     r0, [sp, #0x30]
.thumb
branch_223bb52: @ 223bb52 :thumb
	add     r0, sp, #0x5c
	blx     0x20a818c
	add     r0, sp, #0x48
	blx     0x20a81d0
	ldr     r0, [sp, #0x44]
	ldr     r1, [sp, #0x20]
	mov     r2, #0x1
	add     r3, sp, #0x5c
	blx     0x20a8224
	ldr     r0, [sp, #0x40]
	ldr     r1, [sp, #0x1c]
	mov     r2, #0x1
	add     r3, sp, #0x48
	blx     0x20a8850
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xac]
	add     r0, sp, #0x98
	bl      0x2021b90
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [r6, #0xc]
	mov     r1, #0x99
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x4]
	ldr     r1, [r5, r1]
	bl      GetAdrOfPkmnInParty
	mov     r7, r0
	add     r0, sp, #0xdc
	mov     r1, r7
	mov     r2, #0x2
	bl      Function_2075ef4
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x9f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r7
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0xa5
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0x0
	mov     r0, r7
	mov     r2, r1
	bl      GetPkmnData
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x9f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, sp, #0xdc
	str     r0, [sp, #0x10]
	add     r0, sp, #0xdc
	ldrh    r0, [r0, #0x0]
	ldrh    r1, [r1, #0x2]
	ldr     r3, [pc, #0x168] @ 0x223bd5c, (=0x223d450)
	mov     r2, #0x3f
	bl      0x2013720
	ldr     r1, [sp, #0x30]
	mov     r0, r4
	blx     DC_FlushRange
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x34]
	mov     r0, r4
	blx     0x20c02bc
	mov     r1, #0x0
	mov     r0, r7
	mov     r2, r1
	bl      GetPkmnData
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x9f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, sp, #0xdc
	str     r0, [sp, #0x10]
	add     r0, sp, #0xdc
	ldrh    r0, [r0, #0x0]
	ldrh    r1, [r1, #0x2]
	ldr     r3, [pc, #0x12c] @ 0x223bd60, (=0x223d460)
	mov     r2, #0x3f
	bl      0x2013720
	ldr     r1, [sp, #0x38]
	mov     r0, r4
	blx     DC_FlushRange
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x3c]
	mov     r0, r4
	blx     0x20c02bc
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3f
	str     r0, [sp, #0x4]
	add     r0, sp, #0xdc
	add     r1, sp, #0xdc
	ldrh    r0, [r0, #0x0]
	ldrh    r1, [r1, #0x4]
	ldr     r3, [sp, #0x1c]
	mov     r2, #0x1
	bl      0x2006e84
	mov     r2, #0x9f
	lsl     r2, r2, #2
	ldr     r0, [pc, #0xf8] @ 0x223bd64, (=0x1bf0)
	ldr     r2, [r5, r2]
	ldr     r0, [r6, r0]
	lsl     r2, r2, #16
	ldr     r1, [sp, #0x14]
	lsr     r2, r2, #16
	mov     r3, #0x1
	bl      0x20789bc
	mov     r0, #0x19
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #8
	add     r0, r1, r0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	add     r0, #0x20
	str     r0, [sp, #0x1c]
	mov     r0, #0x19
	lsl     r0, r0, #8
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	ldr     r1, [r6, #0x4]
	add     r0, #0x28
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x24]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, r1
	bge     branch_223bcaa
	b       branch_223bb52
@ 0x223bcaa

.thumb
branch_223bcaa: @ 223bcaa :thumb
	add     r0, sp, #0x5c
	blx     0x20a818c
	add     r0, sp, #0x48
	blx     0x20a81d0
	mov     r1, #0x96
	ldr     r0, [sp, #0x44]
	lsl     r1, r1, #8
	mov     r2, #0x1
	add     r3, sp, #0x5c
	blx     0x20a8224
	ldr     r0, [sp, #0x40]
	mov     r1, #0xc0
	mov     r2, #0x1
	add     r3, sp, #0x48
	blx     0x20a8850
	ldr     r0, [r6, #0xc]
	ldr     r0, [r0, #0x0]
	bl      GetGender
	cmp     r0, #0x1
	bne     branch_223bce0
	mov     r0, #0x1
	b       branch_223bce2
@ 0x223bce0

.thumb
branch_223bce0: @ 223bce0 :thumb
	mov     r0, #0x0
.thumb
branch_223bce2: @ 223bce2 :thumb
	mov     r1, #0x2
	add     r2, sp, #0x80
	bl      Function_2076aac
	mov     r0, #0xab
	lsl     r0, r0, #2
	add     r0, r6, r0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x80]
	ldr     r1, [sp, #0x94]
	ldr     r3, [pc, #0x64] @ 0x223bd5c, (=0x223d450)
	mov     r2, #0x3f
	bl      0x20135f0
	mov     r0, #0xab
	lsl     r0, r0, #2
	mov     r1, #0x32
	add     r0, r6, r0
	lsl     r1, r1, #6
	blx     DC_FlushRange
	mov     r0, #0xab
	lsl     r0, r0, #2
	mov     r1, #0x96
	mov     r2, #0x32
	add     r0, r6, r0
	lsl     r1, r1, #8
	lsl     r2, r2, #6
	blx     0x20c02bc
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3f
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x80]
	ldr     r1, [sp, #0x88]
	mov     r2, #0x1
	mov     r3, #0xc0
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0xac]
	add     r0, sp, #0x98
	bl      0x2021b90
	mov     r1, #0x5a
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	ldr     r0, [r6, r1]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [sp, #0x28]
	bl      free
	ldr     r0, [sp, #0x2c]
	bl      free
	add     sp, #0xec
	pop     {r4-r7,pc}
@ 0x223bd5a


.align 2


.word 0x223d450 @ 0x223bd5c
.word 0x223d460 @ 0x223bd60
.word 0x1bf0 @ 0x223bd64
.thumb
Function_223bd68: @ 223bd68 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_223bd8a
	mov     r7, #0x15
	mov     r5, r6
	lsl     r7, r7, #4
.thumb
branch_223bd7a: @ 223bd7a :thumb
	ldr     r0, [r5, r7]
	bl      0x2021bd4
	ldr     r0, [r6, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_223bd7a
.thumb
branch_223bd8a: @ 223bd8a :thumb
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      free
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      free
	ldr     r0, [r6, #0x24]
	bl      0x2021964
	bl      0x200a878
	pop     {r3-r7,pc}
@ 0x223bdaa


.align 2, 0


.thumb
Function_223bdac: @ 223bdac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x4]
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	ldr     r0, [r1, #0x0]
	bl      free
	mov     r0, r4
	bl      Function_200da58
	pop     {r4,pc}
@ 0x223bdc4

.thumb
Function_223bdc4: @ 223bdc4 :thumb
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x4]
	bx      lr
@ 0x223bdca


.align 2, 0


.thumb
Function_223bdcc: @ 223bdcc :thumb
	ldr     r3, [pc, #0x8] @ 0x223bdd8, (=0x200da3d)
	mov     r1, r0
	ldr     r0, [pc, #0x8] @ 0x223bddc, (=0x223bdad)
	mov     r2, #0x0
	bx      r3
@ 0x223bdd6


.align 2


.word 0x200da3d @ 0x223bdd8
.word 0x223bdad @ 0x223bddc
.thumb
Function_223bde0: @ 223bde0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x3f
	mov     r1, #0x2c
	str     r2, [sp, #0x0]
	bl      malloc_maybe
	ldr     r1, [pc, #0x68] @ 0x223be5c, (=0x1bd0)
	mov     r5, r0
	add     r4, r6, r1
	ldr     r1, [sp, #0x0]
	lsl     r1, r1, #2
	str     r1, [sp, #0x4]
	ldr     r2, [sp, #0x4]
	mov     r1, r5
	add     r2, r4, r2
	bl      Function_223bdc4
	lsl     r0, r7, #2
	add     r1, r6, r0
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldr     r3, [pc, #0x4c] @ 0x223be60, (=0x223d38c)
	str     r0, [r5, #0x8]
	lsl     r0, r7, #31
	lsr     r2, r0, #28
	ldr     r0, [pc, #0x48] @ 0x223be64, (=0x223d388)
	ldr     r6, [r0, r2]
	mov     r0, r5
	ldr     r2, [r3, r2]
	add     r0, #0x18
	mov     r1, r6
	mov     r3, #0x1c
	bl      Function_223d264
	mov     r0, #0x6
	mov     r1, r5
	str     r6, [r5, #0xc]
	lsl     r0, r0, #16
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	str     r0, [r5, #0x14]
	ldr     r0, [r5, #0x8]
	add     r1, #0xc
	bl      0x2021c50
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [pc, #0x1c] @ 0x223be68, (=0x223be6d)
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_223b744
	ldr     r1, [sp, #0x4]
	str     r0, [r4, r1]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223be5c

.word 0x1bd0 @ 0x223be5c
.word 0x223d38c @ 0x223be60
.word 0x223d388 @ 0x223be64
.word 0x223be6d @ 0x223be68
.thumb
Function_223be6c: @ 223be6c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x18
	bl      Function_223d284
	str     r0, [r4, #0xc]
	mov     r1, r4
	ldr     r0, [r4, #0x8]
	add     r1, #0xc
	bl      0x2021c50
	mov     r0, r4
	add     r0, #0x18
	bl      Function_223d2a4
	cmp     r0, #0x0
	beq     branch_223be9e
	mov     r0, r4
	bl      Function_223bdcc
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_223be9e: @ 223be9e :thumb
	pop     {r3-r5,pc}
@ 0x223bea0

.thumb
Function_223bea0: @ 223bea0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x3f
	mov     r1, #0x2c
	bl      malloc_maybe
	ldr     r1, [pc, #0x58] @ 0x223bf08, (=0x1bd0)
	mov     r5, r0
	add     r4, r6, r1
	lsl     r7, r7, #2
	mov     r1, r5
	add     r2, r4, r7
	bl      Function_223bdc4
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x3a
	str     r0, [r5, #0x8]
	mov     r0, r5
	mov     r2, #0x1a
	add     r0, #0x18
	lsl     r1, r1, #14
	lsl     r2, r2, #14
	mov     r3, #0x1c
	bl      Function_223d264
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [r5, #0xc]
	mov     r0, #0x3a
	lsl     r0, r0, #14
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	str     r0, [r5, #0x14]
	mov     r1, r5
	ldr     r0, [r5, #0x8]
	add     r1, #0xc
	bl      0x2021c50
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [pc, #0x10] @ 0x223bf0c, (=0x223bf11)
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_223b744
	str     r0, [r4, r7]
	pop     {r3-r7,pc}
@ 0x223bf08

.word 0x1bd0 @ 0x223bf08
.word 0x223bf11 @ 0x223bf0c
.thumb
Function_223bf10: @ 223bf10 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x18
	bl      Function_223d284
	str     r0, [r4, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x8]
	add     r1, #0xc
	bl      0x2021c50
	mov     r0, r4
	add     r0, #0x18
	bl      Function_223d2a4
	cmp     r0, #0x0
	beq     branch_223bf42
	mov     r0, r4
	bl      Function_223bdcc
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_223bf42: @ 223bf42 :thumb
	pop     {r3-r5,pc}
@ 0x223bf44

.thumb
Function_223bf44: @ 223bf44 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x8
	bl      Function_223d284
	asr     r0, r0, #12
	mov     r2, r0
	add     r2, #0x60
	cmp     r0, #0x0
	bge     branch_223bf5e
	mov     r0, #0x0
.thumb
branch_223bf5e: @ 223bf5e :thumb
	cmp     r2, #0x0
	bge     branch_223bf64
	mov     r2, #0x0
.thumb
branch_223bf64: @ 223bf64 :thumb
	cmp     r0, #0xff
	ble     branch_223bf6c
	mov     r2, #0x0
	mov     r0, r2
.thumb
branch_223bf6c: @ 223bf6c :thumb
	cmp     r2, #0xff
	ble     branch_223bf72
	mov     r2, #0xff
.thumb
branch_223bf72: @ 223bf72 :thumb
	lsl     r1, r0, #8
	mov     r0, #0xff
	lsl     r0, r0, #8
	and     r1, r0
	lsl     r0, r2, #24
	lsr     r0, r0, #24
	orr     r0, r1
	ldr     r1, [pc, #0x20] @ 0x223bfa4, (=0x4000040)
	strh    r0, [r1, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223bfa8, (=0x20a0)
	strh    r0, [r1, #0x4]
	mov     r0, r4
	add     r0, #0x8
	bl      Function_223d2a4
	cmp     r0, #0x0
	beq     branch_223bfa0
	mov     r0, r4
	bl      Function_223bdcc
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_223bfa0: @ 223bfa0 :thumb
	pop     {r3-r5,pc}
@ 0x223bfa2


.align 2


.word 0x4000040 @ 0x223bfa4
.word 0x20a0 @ 0x223bfa8
.thumb
Function_223bfac: @ 223bfac :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x8
	bl      Function_223d284
	asr     r2, r0, #12
	ldr     r0, [r4, #0x24]
	add     r3, r2, r0
	cmp     r2, #0x0
	bge     branch_223bfc6
	mov     r2, #0x0
.thumb
branch_223bfc6: @ 223bfc6 :thumb
	cmp     r3, #0x0
	bge     branch_223bfcc
	mov     r3, #0x0
.thumb
branch_223bfcc: @ 223bfcc :thumb
	cmp     r2, #0xbf
	ble     branch_223bfd4
	mov     r3, #0x0
	mov     r2, r3
.thumb
branch_223bfd4: @ 223bfd4 :thumb
	cmp     r3, #0xbf
	ble     branch_223bfda
	mov     r3, #0xbf
.thumb
branch_223bfda: @ 223bfda :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r6, [r4, #0x20]
	lsl     r1, r0, #8
	mov     r0, #0xff
	lsl     r0, r0, #8
	lsl     r6, r6, #24
	lsl     r2, r2, #8
	and     r1, r0
	lsr     r6, r6, #24
	orr     r6, r1
	ldr     r1, [pc, #0x28] @ 0x223c018, (=0x4000040)
	and     r2, r0
	lsl     r0, r3, #24
	lsr     r0, r0, #24
	strh    r6, [r1, #0x0]
	orr     r0, r2
	strh    r0, [r1, #0x4]
	mov     r0, r4
	add     r0, #0x8
	bl      Function_223d2a4
	cmp     r0, #0x0
	beq     branch_223c014
	mov     r0, r4
	bl      Function_223bdcc
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_223c014: @ 223c014 :thumb
	pop     {r4-r6,pc}
@ 0x223c016


.align 2


.word 0x4000040 @ 0x223c018
.thumb
Function_223c01c: @ 223c01c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x8
	bl      Function_223d284
	asr     r4, r0, #12
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223d284
	asr     r2, r0, #12
	cmp     r4, #0x0
	bge     branch_223c03c
	mov     r4, #0x0
.thumb
branch_223c03c: @ 223c03c :thumb
	cmp     r2, #0x0
	bge     branch_223c042
	mov     r2, #0x0
.thumb
branch_223c042: @ 223c042 :thumb
	cmp     r4, #0xff
	ble     branch_223c04a
	mov     r2, #0x0
	mov     r4, r2
.thumb
branch_223c04a: @ 223c04a :thumb
	cmp     r2, #0xff
	ble     branch_223c050
	mov     r2, #0xff
.thumb
branch_223c050: @ 223c050 :thumb
	ldr     r0, [r5, #0x30]
	mov     r3, #0xff
	lsl     r2, r2, #24
	ldr     r1, [r5, #0x34]
	lsl     r4, r4, #8
	lsl     r3, r3, #8
	and     r4, r3
	lsr     r2, r2, #24
	lsl     r0, r0, #8
	orr     r4, r2
	ldr     r2, [pc, #0x24] @ 0x223c08c, (=0x4000040)
	and     r3, r0
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	strh    r4, [r2, #0x0]
	orr     r0, r3
	strh    r0, [r2, #0x4]
	mov     r0, r5
	add     r0, #0x8
	bl      Function_223d2a4
	cmp     r0, #0x0
	beq     branch_223c08a
	mov     r0, r5
	bl      Function_223bdcc
	mov     r0, r6
	bl      Function_200da58
.thumb
branch_223c08a: @ 223c08a :thumb
	pop     {r4-r6,pc}
@ 0x223c08c

.word 0x4000040 @ 0x223c08c
.thumb
Function_223c090: @ 223c090 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x8
	bl      Function_223d284
	asr     r4, r0, #12
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223d284
	asr     r2, r0, #12
	cmp     r4, #0x0
	bge     branch_223c0b0
	mov     r4, #0x0
.thumb
branch_223c0b0: @ 223c0b0 :thumb
	cmp     r2, #0x0
	bge     branch_223c0b6
	mov     r2, #0x0
.thumb
branch_223c0b6: @ 223c0b6 :thumb
	cmp     r4, #0xbf
	ble     branch_223c0be
	mov     r2, #0x0
	mov     r4, r2
.thumb
branch_223c0be: @ 223c0be :thumb
	cmp     r2, #0xbf
	ble     branch_223c0c4
	mov     r2, #0xbf
.thumb
branch_223c0c4: @ 223c0c4 :thumb
	ldr     r0, [r5, #0x30]
	ldr     r3, [r5, #0x34]
	lsl     r1, r0, #8
	mov     r0, #0xff
	lsl     r0, r0, #8
	lsl     r3, r3, #24
	and     r1, r0
	lsr     r3, r3, #24
	orr     r3, r1
	ldr     r1, [pc, #0x28] @ 0x223c100, (=0x4000040)
	strh    r3, [r1, #0x0]
	lsl     r3, r4, #8
	and     r3, r0
	lsl     r0, r2, #24
	lsr     r0, r0, #24
	orr     r0, r3
	strh    r0, [r1, #0x4]
	mov     r0, r5
	add     r0, #0x8
	bl      Function_223d2a4
	cmp     r0, #0x0
	beq     branch_223c0fe
	mov     r0, r5
	bl      Function_223bdcc
	mov     r0, r6
	bl      Function_200da58
.thumb
branch_223c0fe: @ 223c0fe :thumb
	pop     {r4-r6,pc}
@ 0x223c100

.word 0x4000040 @ 0x223c100
.thumb
Function_223c104: @ 223c104 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r7, r1
	mov     r0, #0x3f
	mov     r1, #0x1c
	mov     r6, r2
	bl      malloc_maybe
	ldr     r1, [pc, #0x30] @ 0x223c148, (=0x1bd0)
	mov     r5, r0
	add     r4, r4, r1
	lsl     r6, r6, #2
	mov     r1, r5
	add     r2, r4, r6
	bl      Function_223bdc4
	lsl     r0, r7, #31
	lsr     r2, r0, #28
	ldr     r1, [pc, #0x20] @ 0x223c14c, (=0x223d398)
	mov     r0, r5
	ldr     r3, [pc, #0x20] @ 0x223c150, (=0x223d39c)
	ldr     r1, [r1, r2]
	ldr     r2, [r3, r2]
	add     r0, #0x8
	mov     r3, #0x1c
	bl      Function_223d264
	ldr     r0, [pc, #0x18] @ 0x223c154, (=0x223bf45)
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_223b744
	str     r0, [r4, r6]
	pop     {r3-r7,pc}
@ 0x223c148

.word 0x1bd0 @ 0x223c148
.word 0x223d398 @ 0x223c14c
.word 0x223d39c @ 0x223c150
.word 0x223bf45 @ 0x223c154
.thumb
Function_223c158: @ 223c158 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r7, r1
	mov     r0, #0x3f
	mov     r1, #0x28
	mov     r6, r2
	bl      malloc_maybe
	ldr     r1, [pc, #0x3c] @ 0x223c1a8, (=0x1bd0)
	mov     r5, r0
	add     r4, r4, r1
	lsl     r6, r6, #2
	mov     r1, r5
	add     r2, r4, r6
	bl      Function_223bdc4
	mov     r0, r5
	mov     r1, #0x2
	ldr     r2, [pc, #0x2c] @ 0x223c1ac, (=0xfff60000)
	add     r0, #0x8
	lsl     r1, r1, #16
	mov     r3, #0x1c
	bl      Function_223d264
	lsl     r0, r7, #31
	lsr     r1, r0, #29
	ldr     r0, [pc, #0x20] @ 0x223c1b0, (=Unknown_223d374)
	mov     r2, #0x1
	ldr     r0, [r0, r1]
	mov     r1, r5
	str     r0, [r5, #0x1c]
	add     r0, #0x60
	str     r0, [r5, #0x20]
	mov     r0, #0x80
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x14] @ 0x223c1b4, (=0x223bfad)
	bl      Function_223b744
	str     r0, [r4, r6]
	pop     {r3-r7,pc}
@ 0x223c1a8

.word 0x1bd0 @ 0x223c1a8
.word 0xfff60000 @ 0x223c1ac
.word Unknown_223d374 @ 0x223c1b0
.word 0x223bfad @ 0x223c1b4



.thumb
Function_223c1b8: @ 223c1b8 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	mov     r0, #0x3f
	mov     r1, #0x28
	bl      malloc_maybe
	ldr     r1, [pc, #0x38] @ 0x223c200, (=0x1bd0)
	mov     r5, r0
	add     r4, r4, r1
	lsl     r6, r6, #2
	mov     r1, r5
	add     r2, r4, r6
	bl      Function_223bdc4
	mov     r0, r5
	mov     r2, #0x6
	ldr     r1, [pc, #0x28] @ 0x223c204, (=0xfff70000)
	add     r0, #0x8
	lsl     r2, r2, #14
	mov     r3, #0x1c
	bl      Function_223d264
	mov     r0, #0x58
	str     r0, [r5, #0x1c]
	mov     r0, #0xa8
	str     r0, [r5, #0x20]
	mov     r0, #0x90
	str     r0, [r5, #0x24]
	ldr     r0, [pc, #0x14] @ 0x223c208, (=0x223bfad)
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_223b744
	str     r0, [r4, r6]
	pop     {r4-r6,pc}
@ 0x223c200

.word 0x1bd0 @ 0x223c200
.word 0xfff70000 @ 0x223c204
.word 0x223bfad @ 0x223c208
.thumb
Function_223c20c: @ 223c20c :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	mov     r0, #0x3f
	mov     r1, #0x38
	bl      malloc_maybe
	ldr     r1, [pc, #0x48] @ 0x223c264, (=0x1bd0)
	mov     r5, r0
	add     r4, r4, r1
	lsl     r6, r6, #2
	mov     r1, r5
	add     r2, r4, r6
	bl      Function_223bdc4
	mov     r0, r5
	mov     r1, #0x16
	add     r0, #0x8
	lsl     r1, r1, #14
	mov     r2, #0x0
	mov     r3, #0xc
	bl      Function_223d264
	mov     r0, r5
	mov     r1, #0x2a
	mov     r2, #0xff
	add     r0, #0x1c
	lsl     r1, r1, #14
	lsl     r2, r2, #12
	mov     r3, #0xc
	bl      Function_223d264
	mov     r0, #0x18
	str     r0, [r5, #0x30]
	add     r0, #0x90
	str     r0, [r5, #0x34]
	ldr     r0, [pc, #0x10] @ 0x223c268, (=0x223c01d)
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_223b744
	str     r0, [r4, r6]
	pop     {r4-r6,pc}
@ 0x223c262


.align 2


.word 0x1bd0 @ 0x223c264
.word 0x223c01d @ 0x223c268
.thumb
Function_223c26c: @ 223c26c :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	mov     r0, #0x3f
	mov     r1, #0x38
	bl      malloc_maybe
	ldr     r1, [pc, #0x48] @ 0x223c2c4, (=0x1bd0)
	mov     r5, r0
	add     r4, r4, r1
	lsl     r6, r6, #2
	mov     r1, r5
	add     r2, r4, r6
	bl      Function_223bdc4
	mov     r1, #0x6
	mov     r0, r5
	lsl     r1, r1, #14
	add     r0, #0x8
	lsl     r2, r1, #2
	mov     r3, #0x18
	bl      Function_223d264
	mov     r0, r5
	mov     r1, #0x2a
	mov     r2, #0x6
	add     r0, #0x1c
	lsl     r1, r1, #14
	lsl     r2, r2, #16
	mov     r3, #0x18
	bl      Function_223d264
	mov     r0, #0x0
	str     r0, [r5, #0x30]
	mov     r0, #0xff
	str     r0, [r5, #0x34]
	ldr     r0, [pc, #0x10] @ 0x223c2c8, (=0x223c091)
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_223b744
	str     r0, [r4, r6]
	pop     {r4-r6,pc}
@ 0x223c2c2


.align 2


.word 0x1bd0 @ 0x223c2c4
.word 0x223c091 @ 0x223c2c8
.thumb
Function_223c2cc: @ 223c2cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x3f
	mov     r1, #0x78
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	bl      malloc_maybe
	ldr     r1, [pc, #0xac] @ 0x223c390, (=0x1bd0)
	mov     r4, r0
	add     r7, r5, r1
	ldr     r1, [sp, #0x4]
	lsl     r1, r1, #2
	str     r1, [sp, #0xc]
	ldr     r2, [sp, #0xc]
	mov     r1, r4
	add     r2, r7, r2
	bl      Function_223bdc4
	lsl     r0, r6, #2
	str     r0, [sp, #0x8]
	add     r1, r5, r0
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r1, [r1, r0]
	add     r0, #0x24
	str     r1, [r4, #0x8]
	add     r1, r5, r0
	mov     r0, #0x28
	mul     r0, r6
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x10
	str     r1, [r4, #0xc]
	bl      0x20088e0
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x6c]
	ldr     r0, [sp, #0x8]
	add     r2, r5, r0
	mov     r0, #0x9f
	lsl     r0, r0, #2
	ldr     r1, [r2, r0]
	add     r0, #0x18
	str     r1, [r4, #0x70]
	ldr     r0, [r2, r0]
	str     r0, [r4, #0x74]
	ldr     r0, [r4, #0x8]
	bl      0x2021f98
	mov     r3, r4
	mov     r5, r0
	add     r3, #0x24
	mov     r2, #0x4
.thumb
branch_223c33c: @ 223c33c :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223c33c
	ldr     r0, [r5, #0x0]
	mov     r5, r4
	str     r0, [r3, #0x0]
	mov     r3, r4
	add     r5, #0x24
	add     r3, #0x48
	mov     r2, #0x4
.thumb
branch_223c352: @ 223c352 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223c352
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r0, #0x48
	blx     0x20a818c
	mov     r3, #0x19
	mov     r0, r4
	lsl     r3, r3, #8
	mov     r2, r6
	mul     r2, r3
	lsr     r3, r3, #1
	add     r0, #0x48
	mov     r1, #0x1
	add     r2, r2, r3
	blx     0x20a81a8
	ldr     r0, [pc, #0x14] @ 0x223c394, (=0x223c399)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	ldr     r1, [sp, #0xc]
	str     r0, [r7, r1]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223c38e


.align 2


.word 0x1bd0 @ 0x223c390
.word 0x223c399 @ 0x223c394
.thumb
Function_223c398: @ 223c398 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0x0
	beq     branch_223c3b8
	ldr     r0, [r4, #0x70]
	ldr     r1, [r4, #0x74]
	lsl     r0, r0, #16
	lsl     r1, r1, #24
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	bl      0x2005844
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
.thumb
branch_223c3b8: @ 223c3b8 :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      0x2008900
	mov     r2, r0
	bmi     branch_223c3d4
	mov     r1, #0x24
	ldr     r0, [r4, #0x8]
	add     r4, #0x24
	mul     r1, r2
	add     r1, r4, r1
	bl      0x2021f7c
	pop     {r3-r5,pc}
@ 0x223c3d4

.thumb
branch_223c3d4: @ 223c3d4 :thumb
	mov     r0, r4
	bl      Function_223bdcc
	mov     r0, r5
	bl      Function_200da58
	pop     {r3-r5,pc}
@ 0x223c3e2


.align 2, 0


.thumb
Function_223c3e4: @ 223c3e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0x3f
	mov     r1, #0x38
	str     r2, [sp, #0x0]
	bl      malloc_maybe
	ldr     r1, [pc, #0x78] @ 0x223c470, (=0x1bd0)
	mov     r4, r0
	add     r6, r5, r1
	ldr     r1, [sp, #0x0]
	lsl     r1, r1, #2
	str     r1, [sp, #0x4]
	ldr     r2, [sp, #0x4]
	mov     r1, r4
	add     r2, r6, r2
	bl      Function_223bdc4
	str     r5, [r4, #0x8]
	ldr     r0, [r5, #0x10]
	ldr     r1, [pc, #0x60] @ 0x223c474, (=0x1be0)
	str     r0, [r4, #0xc]
	mov     r0, r5
	add     r0, #0x14
	str     r0, [r4, #0x10]
	ldr     r0, [r5, r1]
	str     r0, [r4, #0x14]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	str     r0, [r4, #0x18]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r5, r0]
	add     r1, #0xc
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, r1]
	str     r0, [r4, #0x20]
	mov     r0, #0x1
	tst     r0, r7
	beq     branch_223c43c
	mov     r0, #0x0
	b       branch_223c43e
@ 0x223c43c

.thumb
branch_223c43c: @ 223c43c :thumb
	mov     r0, #0x78
.thumb
branch_223c43e: @ 223c43e :thumb
	lsl     r1, r7, #2
	str     r0, [r4, #0x2c]
	ldr     r0, [r5, #0xc]
	add     r2, r5, r1
	mov     r1, #0x99
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x4]
	ldr     r1, [r2, r1]
	bl      GetAdrOfPkmnInParty
	str     r0, [r4, #0x24]
	ldr     r0, [r5, #0xc]
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	str     r0, [r4, #0x28]
	str     r2, [r4, #0x30]
	ldr     r0, [pc, #0x14] @ 0x223c478, (=0x223c58d)
	str     r2, [r4, #0x34]
	bl      0x200d9e8
	ldr     r1, [sp, #0x4]
	str     r0, [r6, r1]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223c470

.word 0x1bd0 @ 0x223c470
.word 0x1be0 @ 0x223c474
.word 0x223c58d @ 0x223c478
.thumb
Function_223c47c: @ 223c47c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r4, r1
	bl      0x2023c5c
	mov     r6, #0x0
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_223c4d2
.thumb
branch_223c492: @ 223c492 :thumb
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	mov     r2, r6
	bl      0x2023c9c
	mov     r0, #0x0
	ldr     r1, [r5, #0x18]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x88
	sub     r0, r1, r0
	lsr     r7, r0, #1
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x223c4d8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r3, [r5, #0x2c]
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, #0x18]
	add     r3, r3, r7
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, r0
	blt     branch_223c492
.thumb
branch_223c4d2: @ 223c4d2 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223c4d6


.align 2


.word 0x10200 @ 0x223c4d8
.thumb
Function_223c4dc: @ 223c4dc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	bl      0x2076b10
	mov     r2, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      0x200b538
	ldr     r0, [r4, #0x24]
	bl      Call_InitPkmnLevel
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	mov     r3, #0x3
	bl      0x200b60c
	ldr     r0, [r4, #0x24]
	bl      Call_DecidePkmnGender
	cmp     r0, #0x0
	beq     branch_223c51c
	cmp     r0, #0x1
	beq     branch_223c528
	cmp     r0, #0x2
	b       branch_223c534
@ 0x223c51c

.thumb
branch_223c51c: @ 223c51c :thumb
	ldr     r0, [r4, #0x20]
	ldr     r2, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_200b1b8
	b       branch_223c53e
@ 0x223c528

.thumb
branch_223c528: @ 223c528 :thumb
	ldr     r0, [r4, #0x20]
	ldr     r2, [r4, #0x18]
	mov     r1, #0x2
	bl      Function_200b1b8
	b       branch_223c53e
@ 0x223c534

.thumb
branch_223c534: @ 223c534 :thumb
	ldr     r0, [r4, #0x20]
	ldr     r2, [r4, #0x18]
	mov     r1, #0x3
	bl      Function_200b1b8
.thumb
branch_223c53e: @ 223c53e :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, #0x18]
	bl      Function_200c388
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223c54c

.thumb
Function_223c54c: @ 223c54c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x24]
	ldr     r2, [r5, #0x28]
	bl      Function_223d2a8
	mov     r4, r0
	beq     branch_223c562
	cmp     r4, #0x1
	bne     branch_223c576
.thumb
branch_223c562: @ 223c562 :thumb
	ldr     r0, [r5, #0x24]
	mov     r1, #0x99
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      0x200b8c8
.thumb
branch_223c576: @ 223c576 :thumb
	ldr     r0, [r5, #0x20]
	ldr     r2, [r5, #0x18]
	add     r1, r4, #0x5
	bl      Function_200b1b8
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [r5, #0x18]
	bl      Function_200c388
	pop     {r3-r5,pc}
@ 0x223c58c

.thumb
Function_223c58c: @ 223c58c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_223c59e
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x30]
	pop     {r3-r5,pc}
@ 0x223c59e

.thumb
branch_223c59e: @ 223c59e :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x3
	bhi     branch_223c662
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223c5b0

Jumppoints_223c5b0:
.hword branch_223c5b8 - Jumppoints_223c5b0 - 2
.hword branch_223c5dc - Jumppoints_223c5b0 - 2
.hword branch_223c60e - Jumppoints_223c5b0 - 2
.hword branch_223c656 - Jumppoints_223c5b0 - 2
.thumb
branch_223c5b8: @ 223c5b8 :thumb
	ldr     r0, [r4, #0x20]
	ldr     r2, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_200b1b8
	mov     r0, r4
	mov     r1, #0x10
	bl      Function_223c47c
	ldr     r0, [r4, #0x10]
	bl      0x201accc
	mov     r0, #0x14
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x34]
	pop     {r3-r5,pc}
@ 0x223c5dc

.thumb
branch_223c5dc: @ 223c5dc :thumb
	ldr     r0, [r4, #0x24]
	ldr     r2, [r4, #0x1c]
	mov     r1, #0x77
	bl      GetPkmnData
	mov     r0, r4
	mov     r1, #0x30
	bl      Function_223c47c
	mov     r0, r4
	bl      Function_223c4dc
	mov     r0, r4
	mov     r1, #0x40
	bl      Function_223c47c
	ldr     r0, [r4, #0x10]
	bl      0x201accc
	mov     r0, #0x14
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x34]
	pop     {r3-r5,pc}
@ 0x223c60e

.thumb
branch_223c60e: @ 223c60e :thumb
	ldr     r0, [r4, #0x24]
	bl      0x2076b10
	mov     r2, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      0x200b5ec
	ldr     r0, [r4, #0x20]
	ldr     r2, [r4, #0x18]
	mov     r1, #0x4
	bl      Function_200b1b8
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, #0x18]
	bl      Function_200c388
	mov     r0, r4
	mov     r1, #0x60
	bl      Function_223c47c
	mov     r0, r4
	bl      Function_223c54c
	mov     r0, r4
	mov     r1, #0x70
	bl      Function_223c47c
	ldr     r0, [r4, #0x10]
	bl      0x201accc
	ldr     r0, [r4, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x34]
	pop     {r3-r5,pc}
@ 0x223c656

.thumb
branch_223c656: @ 223c656 :thumb
	mov     r0, r4
	bl      Function_223bdcc
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_223c662: @ 223c662 :thumb
	pop     {r3-r5,pc}
@ 0x223c664

.thumb
Function_223c664: @ 223c664 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0x3f
	mov     r1, #0x30
	bl      malloc_maybe
	ldr     r1, [pc, #0x38] @ 0x223c6ac, (=0x1bd0)
	mov     r4, r0
	add     r6, r5, r1
	lsl     r7, r7, #2
	mov     r1, r4
	add     r2, r6, r7
	bl      Function_223bdc4
	ldr     r0, [r5, #0x10]
	add     r5, #0x14
	str     r0, [r4, #0xc]
	mov     r0, r4
	str     r5, [r4, #0x10]
	mov     r2, #0x1
	str     r2, [r4, #0x2c]
	mov     r1, #0x0
	add     r0, #0x14
	lsl     r2, r2, #20
	mov     r3, #0x1c
	str     r1, [r4, #0x28]
	bl      Function_223d264
	ldr     r0, [pc, #0x10] @ 0x223c6b0, (=0x223c6b5)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_223b744
	str     r0, [r6, r7]
	pop     {r3-r7,pc}
@ 0x223c6ac

.word 0x1bd0 @ 0x223c6ac
.word 0x223c6b5 @ 0x223c6b0
.thumb
Function_223c6b4: @ 223c6b4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_223c6ca
	cmp     r0, #0x1
	beq     branch_223c6f6
	cmp     r0, #0x2
	beq     branch_223c70c
	pop     {r3-r5,pc}
@ 0x223c6ca

.thumb
branch_223c6ca: @ 223c6ca :thumb
	mov     r0, r4
	add     r0, #0x14
	bl      Function_223d284
	ldr     r1, [r4, #0x2c]
	asr     r3, r0, #12
	lsl     r1, r1, #24
	ldr     r0, [r4, #0xc]
	lsr     r1, r1, #24
	mov     r2, #0x3
	bl      Function_2019184
	mov     r0, r4
	add     r0, #0x14
	bl      Function_223d2a4
	cmp     r0, #0x0
	beq     branch_223c728
	ldr     r0, [r4, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x28]
	pop     {r3-r5,pc}
@ 0x223c6f6

.thumb
branch_223c6f6: @ 223c6f6 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [r4, #0x10]
	bl      0x201accc
	ldr     r0, [r4, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x28]
	pop     {r3-r5,pc}
@ 0x223c70c

.thumb
branch_223c70c: @ 223c70c :thumb
	ldr     r1, [r4, #0x2c]
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	bl      Function_223bdcc
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_223c728: @ 223c728 :thumb
	pop     {r3-r5,pc}
@ 0x223c72a


.align 2, 0


.thumb
Function_223c72c: @ 223c72c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r2, [pc, #0xfc] @ 0x223c830, (=0x1bec)
	mov     r4, r0
	ldr     r0, [r4, r2]
	sub     r2, #0x8
	ldr     r2, [r4, r2]
	mov     r1, #0xc
	bl      Function_200b1b8
	ldr     r1, [pc, #0xf0] @ 0x223c834, (=0x1be4)
	mov     r0, #0x0
	ldr     r1, [r4, r1]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xd8] @ 0x223c838, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [pc, #0xcc] @ 0x223c834, (=0x1be4)
	str     r1, [sp, #0xc]
	ldr     r2, [r4, r2]
	add     r0, #0x14
	bl      0x201d78c
	ldr     r0, [pc, #0xc8] @ 0x223c83c, (=0x1be0)
	ldr     r2, [r4, #0xc]
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	bl      0x200b498
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x0]
	bl      0x2025f24
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [pc, #0xac] @ 0x223c83c, (=0x1be0)
	str     r1, [sp, #0x4]
	ldr     r0, [r4, r0]
	mov     r3, #0x5
	bl      0x200b60c
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x8]
	bl      0x202cc58
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x223c83c, (=0x1be0)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	mov     r3, #0x3
	bl      0x200b60c
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x8]
	bl      0x202cc5c
	mov     r3, #0x2
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x70] @ 0x223c83c, (=0x1be0)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      0x200b60c
	ldr     r2, [pc, #0x58] @ 0x223c830, (=0x1bec)
	mov     r1, #0xd
	ldr     r0, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r2, [r4, r2]
	bl      Function_200b1b8
	ldr     r2, [pc, #0x58] @ 0x223c83c, (=0x1be0)
	add     r1, r2, #0x4
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	bl      Function_200c388
	ldr     r1, [pc, #0x40] @ 0x223c834, (=0x1be4)
	mov     r0, #0x0
	ldr     r1, [r4, r1]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0xac
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x223c838, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [pc, #0x1c] @ 0x223c834, (=0x1be4)
	str     r1, [sp, #0xc]
	ldr     r2, [r4, r2]
	add     r0, #0x14
	bl      0x201d78c
	add     r4, #0x14
	mov     r0, r4
	bl      0x201accc
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223c82e


.align 2


.word 0x1bec @ 0x223c830
.word 0x1be4 @ 0x223c834
.word 0x10200 @ 0x223c838
.word 0x1be0 @ 0x223c83c
.thumb
Function_223c840: @ 223c840 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x3f
	mov     r1, #0xdc
	bl      malloc_maybe
	ldr     r1, [pc, #0xb0] @ 0x223c904, (=0x1bd0)
	mov     r4, r0
	add     r1, r5, r1
	str     r1, [sp, #0xc]
	lsl     r1, r6, #2
	str     r1, [sp, #0x10]
	ldr     r3, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	mov     r1, r4
	add     r2, r3, r2
	bl      Function_223bdc4
	mov     r0, #0x15
	lsl     r0, r0, #4
	str     r5, [r4, #0xc]
	add     r0, r5, r0
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	str     r0, [sp, #0x8]
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	ble     branch_223c8c6
	ldr     r0, [pc, #0x84] @ 0x223c908, (=0x223d4d8)
	ldr     r5, [sp, #0x8]
	str     r0, [sp, #0x4]
	mov     r7, r4
	mov     r6, r0
.thumb
branch_223c88c: @ 223c88c :thumb
	ldr     r3, [sp, #0x4]
	mov     r2, r7
	ldmia   r3!, {r0,r1}
	add     r2, #0x94
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r6
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, r5]
	bl      0x2021c50
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	ldr     r0, [r0, r5]
	bl      0x2021cac
	ldr     r0, [sp, #0x4]
	ldr     r1, [r4, #0x14]
	add     r0, #0xc
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	add     r7, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0xc
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x8]
	cmp     r0, r1
	blt     branch_223c88c
.thumb
branch_223c8c6: @ 223c8c6 :thumb
	mov     r0, #0x0
	mov     r7, r4
	ldr     r6, [pc, #0x40] @ 0x223c90c, (=0x223d3cc)
	ldr     r5, [pc, #0x38] @ 0x223c908, (=0x223d4d8)
	str     r0, [sp, #0x0]
	add     r7, #0x1c
.thumb
branch_223c8d2: @ 223c8d2 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r2, [r6, #0x0]
	mov     r0, r7
	mov     r3, #0x8
	bl      Function_223d264
	ldr     r0, [sp, #0x0]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0xc
	add     r7, #0x14
	str     r0, [sp, #0x0]
	cmp     r0, #0x6
	blt     branch_223c8d2
	ldr     r0, [pc, #0x20] @ 0x223c910, (=0x223c915)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	str     r0, [r2, r1]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223c902


.align 2


.word 0x1bd0 @ 0x223c904
.word 0x223d4d8 @ 0x223c908
.word 0x223d3cc @ 0x223c90c
.word 0x223c915 @ 0x223c910
.thumb
Function_223c914: @ 223c914 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [r5, #0x10]
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	cmp     r1, #0x0
	ble     branch_223c968
	mov     r0, r5
	str     r0, [sp, #0x8]
	add     r0, #0x1c
	mov     r7, r5
	str     r0, [sp, #0x8]
	str     r5, [sp, #0x4]
	add     r7, #0x94
	mov     r6, r4
.thumb
branch_223c934: @ 223c934 :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_223d284
	ldr     r1, [sp, #0x4]
	add     r1, #0x94
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x14]
	cmp     r4, r0
	bge     branch_223c950
	ldr     r0, [r5, #0x8]
	mov     r1, r7
	ldr     r0, [r0, r6]
	bl      0x2021c50
.thumb
branch_223c950: @ 223c950 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [r5, #0x10]
	add     r0, #0x14
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0xc
	str     r0, [sp, #0x4]
	add     r7, #0xc
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r1
	blt     branch_223c934
.thumb
branch_223c968: @ 223c968 :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_223c976
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     sp, #0xc
	str     r0, [r5, #0x18]
	pop     {r4-r7,pc}
@ 0x223c976

.thumb
branch_223c976: @ 223c976 :thumb
	cmp     r1, #0x6
	bge     branch_223c988
	mov     r0, #0x4
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x10]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}
@ 0x223c988

.thumb
branch_223c988: @ 223c988 :thumb
	ldr     r0, [r5, #0x14]
	mov     r2, r5
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, #0x14
	add     r2, #0x1c
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_223d2a4
	cmp     r0, #0x0
	beq     branch_223c9aa
	mov     r0, r5
	bl      Function_223bdcc
	ldr     r0, [sp, #0x0]
	bl      Function_200da58
.thumb
branch_223c9aa: @ 223c9aa :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223c9ae


.align 2, 0


.thumb
Function_223c9b0: @ 223c9b0 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x40] @ 0x223c9f4, (=0x844)
	mov     r5, r0
	mov     r0, #0x3f
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_223c9f0
	ldr     r0, [pc, #0x34] @ 0x223c9f8, (=0x223d540)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x34] @ 0x223c9fc, (=0x223d560)
	mov     r1, #0x2
	str     r1, [r0, #0x4]
	ldr     r0, [pc, #0x30] @ 0x223ca00, (=0x83c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x30] @ 0x223ca04, (=0x223ca65)
	mov     r1, r4
	mov     r2, #0x5
	bl      Function_223b744
	ldr     r1, [pc, #0x28] @ 0x223ca08, (=0x838)
	mov     r2, #0x3
	str     r0, [r4, r1]
	add     r1, #0x8
	str     r5, [r4, r1]
	ldr     r0, [pc, #0x24] @ 0x223ca0c, (=0x223ca11)
	mov     r1, r4
	bl      Function_223b744
	pop     {r3-r5,pc}
@ 0x223c9f0

.thumb
branch_223c9f0: @ 223c9f0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223c9f4

.word 0x844 @ 0x223c9f4
.word 0x223d540 @ 0x223c9f8
.word 0x223d560 @ 0x223c9fc
.word 0x83c @ 0x223ca00
.word 0x223ca65 @ 0x223ca04
.word 0x838 @ 0x223ca08
.word 0x223ca11 @ 0x223ca0c
.thumb
Function_223ca10: @ 223ca10 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x3c] @ 0x223ca54, (=0x223d540)
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_223ca44
	mov     r1, r4
	mov     r2, #0x2
	mov     r0, r4
	add     r1, #0x14
	lsl     r2, r2, #10
	blx     0x20c11a8
	ldr     r1, [pc, #0x2c] @ 0x223ca58, (=0x7fff)
	ldr     r2, [pc, #0x2c] @ 0x223ca5c, (=0x4210)
	mov     r0, r4
	mov     r3, #0x0
	blx     0x20bf7dc
	mov     r2, #0x0
	ldr     r1, [pc, #0x20] @ 0x223ca5c, (=0x4210)
	mov     r0, r4
	mov     r3, r2
	blx     0x20bf820
	pop     {r4,pc}
@ 0x223ca44

.thumb
branch_223ca44: @ 223ca44 :thumb
	ldr     r1, [pc, #0x18] @ 0x223ca60, (=0x223d560)
	ldr     r2, [r1, #0x4]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r1, #0x4]
	bl      Function_200da58
	pop     {r4,pc}
@ 0x223ca52


.align 2


.word 0x223d540 @ 0x223ca54
.word 0x7fff @ 0x223ca58
.word 0x4210 @ 0x223ca5c
.word 0x223d560 @ 0x223ca60
.thumb
Function_223ca64: @ 223ca64 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x28] @ 0x223ca94, (=0x223d540)
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_223ca86
	mov     r0, r4
	blx     0x20c11c8
	ldr     r1, [pc, #0x20] @ 0x223ca98, (=0x814)
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x14
	blx     DC_FlushRange
	pop     {r4,pc}
@ 0x223ca86

.thumb
branch_223ca86: @ 223ca86 :thumb
	ldr     r1, [pc, #0x14] @ 0x223ca9c, (=0x223d560)
	ldr     r2, [r1, #0x4]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r1, #0x4]
	bl      Function_200da58
	pop     {r4,pc}
@ 0x223ca94

.word 0x223d540 @ 0x223ca94
.word 0x814 @ 0x223ca98
.word 0x223d560 @ 0x223ca9c
.thumb
Function_223caa0: @ 223caa0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r2
	bl      0x201ced0
	ldr     r1, [pc, #0x30] @ 0x223cadc, (=0x83c)
	mov     r4, r0
	ldr     r3, [r4, r1]
	cmp     r3, #0x8
	bge     branch_223cad8
	mov     r1, r5
	mov     r2, r6
	bl      Function_223cae4
	ldr     r2, [pc, #0x1c] @ 0x223cadc, (=0x83c)
	ldr     r1, [r4, r2]
	lsl     r1, r1, #2
	add     r3, r4, r1
	mov     r1, r2
	sub     r1, #0x24
	str     r0, [r3, r1]
	ldr     r0, [pc, #0x14] @ 0x223cae0, (=0x223d560)
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	ldr     r0, [r4, r2]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r2]
.thumb
branch_223cad8: @ 223cad8 :thumb
	pop     {r4-r6,pc}
@ 0x223cada


.align 2


.word 0x83c @ 0x223cadc
.word 0x223d560 @ 0x223cae0
.thumb
Function_223cae4: @ 223cae4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	ldr     r1, [pc, #0x70] @ 0x223cb5c, (=0x838)
	mov     r0, #0x3f
	mov     r7, r2
	mov     r4, r3
	bl      malloc_maybe
	mov     r1, r0
	beq     branch_223cb58
	ldr     r0, [pc, #0x64] @ 0x223cb60, (=0x818)
	ldr     r2, [pc, #0x64] @ 0x223cb64, (=0x223d470)
	str     r6, [r1, #0x0]
	lsl     r3, r4, #2
	ldr     r3, [r2, r3]
	mov     r2, r0
	strh    r5, [r1, r0]
	sub     r2, #0x8
	str     r3, [r1, r2]
	mov     r2, r0
	mov     r3, #0x0
	sub     r2, #0x14
	str     r3, [r1, r2]
	mov     r2, r0
	sub     r2, #0x10
	str     r7, [r1, r2]
	ldr     r2, [pc, #0x4c] @ 0x223cb68, (=0x223d37c)
	lsl     r6, r4, #1
	ldsh    r6, [r2, r6]
	mov     r2, r0
	sub     r2, #0xc
	str     r6, [r1, r2]
	.hword  0x1f02 @ sub r2, r0, #0x4
	str     r4, [r1, r2]
	mov     r4, r5
	sub     r4, #0x50
	add     r2, r0, #0x2
	strh    r4, [r1, r2]
	ldr     r2, [pc, #0x38] @ 0x223cb6c, (=0xfffff000)
	add     r4, r0, #0x4
	strh    r2, [r1, r4]
	add     r4, r0, #0x6
	strh    r3, [r1, r4]
	mov     r4, r0
	add     r5, #0x50
	add     r4, #0x8
	strh    r5, [r1, r4]
	mov     r4, r0
	add     r4, #0xa
	strh    r2, [r1, r4]
	add     r0, #0xc
	strh    r3, [r1, r0]
	ldr     r0, [pc, #0x20] @ 0x223cb70, (=0x223cb75)
	mov     r2, #0x4
	bl      Function_223b744
	pop     {r3-r7,pc}
@ 0x223cb58

.thumb
branch_223cb58: @ 223cb58 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223cb5c

.word 0x838 @ 0x223cb5c
.word 0x818 @ 0x223cb60
.word 0x223d470 @ 0x223cb64
.word 0x223d37c @ 0x223cb68
.word 0xfffff000 @ 0x223cb6c
.word 0x223cb75 @ 0x223cb70
.thumb
Function_223cb74: @ 223cb74 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [pc, #0x168] @ 0x223cce4, (=0x223d540)
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_223cb84
	b       branch_223ccd2
@ 0x223cb84

.thumb
branch_223cb84: @ 223cb84 :thumb
	ldr     r0, [pc, #0x160] @ 0x223cce8, (=0x808)
	add     r1, r0, #0x4
	ldr     r2, [r5, r0]
	ldr     r1, [r5, r1]
	add     r1, r2, r1
	str     r1, [r5, r0]
	add     r1, r0, #0x4
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r0]
	cmp     r1, #0x0
	ble     branch_223cbb2
	mov     r1, #0xaa
	lsl     r1, r1, #12
	cmp     r2, r1
	blt     branch_223cbc8
	add     r1, r0, #0x4
	ldr     r2, [r5, r1]
	mov     r1, #0x0
	mvn     r1, r1
	mul     r1, r2
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	b       branch_223cbc8
@ 0x223cbb2

.thumb
branch_223cbb2: @ 223cbb2 :thumb
	mov     r1, #0xa
	lsl     r1, r1, #12
	cmp     r2, r1
	bgt     branch_223cbc8
	add     r1, r0, #0x4
	ldr     r2, [r5, r1]
	mov     r1, #0x0
	mvn     r1, r1
	mul     r1, r2
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_223cbc8: @ 223cbc8 :thumb
	ldr     r0, [pc, #0x11c] @ 0x223cce8, (=0x808)
	ldr     r0, [r5, r0]
	asr     r6, r0, #12
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	bl      0x201d1d4
	mov     r2, #0xa
	asr     r1, r0, #31
	lsl     r2, r2, #10
	mov     r3, #0x0
	blx     _ll_mul
	ldr     r3, [pc, #0x108] @ 0x223ccec, (=0x818)
	mov     r4, #0x0
	ldsh    r2, [r5, r3]
	sub     r3, #0x18
	add     r3, r0, r3
	adc     r1, r4
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	add     r4, r2, r1
	bl      0x201d15c
	mov     r2, #0xa
	asr     r1, r0, #31
	lsl     r2, r2, #10
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r6, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r6, #12
	orr     r1, r0
	lsl     r0, r2, #1
	mov     r7, #0x9
	sub     r6, r1, r0
	lsl     r7, r7, #6
	mov     r0, r2
	sub     r1, r4, r7
	add     r0, #0x26
	strh    r1, [r5, r0]
	lsl     r0, r6, #16
	mov     r1, r2
	asr     r0, r0, #16
	add     r1, #0x28
	strh    r0, [r5, r1]
	mov     r1, r2
	add     r1, #0x2a
	strh    r3, [r5, r1]
	mov     r1, r2
	add     r4, r4, r7
	add     r1, #0x2c
	strh    r4, [r5, r1]
	mov     r1, r2
	add     r1, #0x2e
	strh    r0, [r5, r1]
	mov     r0, r2
	add     r0, #0x30
	add     r2, #0x14
	strh    r3, [r5, r0]
	ldr     r0, [r5, r2]
	mov     r1, r3
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r2, r3
	ldr     r0, [r5, #0x0]
	mov     r3, #0x2
	blx     0x20bf790
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	blx     0x20bf8f0
	mov     r1, #0x81
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	blx     0x20bf6c0
	ldr     r3, [pc, #0x70] @ 0x223ccf0, (=0x81a)
	ldr     r0, [r5, #0x0]
	add     r2, r3, #0x2
	ldsh    r1, [r5, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	blx     0x20bf73c
	mov     r3, #0x82
	lsl     r3, r3, #4
	add     r2, r3, #0x2
	ldsh    r1, [r5, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	ldr     r0, [r5, #0x0]
	blx     0x20bf73c
	ldr     r3, [pc, #0x4c] @ 0x223ccf4, (=0x82c)
	ldr     r0, [r5, #0x0]
	add     r2, r3, #0x2
	ldsh    r1, [r5, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	blx     0x20bf73c
	ldr     r3, [pc, #0x40] @ 0x223ccf8, (=0x826)
	ldr     r0, [r5, #0x0]
	add     r2, r3, #0x2
	ldsh    r1, [r5, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	blx     0x20bf73c
	ldr     r0, [r5, #0x0]
	blx     0x20bf91c
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223ccd2

.thumb
branch_223ccd2: @ 223ccd2 :thumb
	ldr     r1, [pc, #0x28] @ 0x223ccfc, (=0x223d560)
	ldr     r2, [r1, #0x4]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r1, #0x4]
	bl      Function_200da58
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223cce2


.align 2


.word 0x223d540 @ 0x223cce4
.word 0x808 @ 0x223cce8
.word 0x818 @ 0x223ccec
.word 0x81a @ 0x223ccf0
.word 0x82c @ 0x223ccf4
.word 0x826 @ 0x223ccf8
.word 0x223d560 @ 0x223ccfc
.thumb
Function_223cd00: @ 223cd00 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_223cd26
	bl      0x201ced0
	mov     r3, r0
	ldr     r0, [pc, #0x18] @ 0x223cd28, (=0x4000444)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	ldr     r2, [pc, #0x18] @ 0x223cd2c, (=0x814)
	mov     r1, r3
	ldr     r2, [r3, r2]
	mov     r0, #0x3
	add     r1, #0x14
	blx 0x1ff85b8
	ldr     r0, [pc, #0xc] @ 0x223cd30, (=0x4000448)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_223cd26: @ 223cd26 :thumb
	pop     {r3,pc}
@ 0x223cd28

.word 0x4000444 @ 0x223cd28
.word 0x814 @ 0x223cd2c
.word 0x4000448 @ 0x223cd30
.thumb
Function_223cd34: @ 223cd34 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x3c] @ 0x223cd74, (=0x223d540)
	mov     r2, #0x0
	str     r2, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_223cd70
	bl      0x201ced0
	mov     r6, r0
	ldr     r0, [pc, #0x30] @ 0x223cd78, (=0x83c)
	mov     r4, #0x0
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	ble     branch_223cd6a
	ldr     r7, [pc, #0x24] @ 0x223cd78, (=0x83c)
	mov     r5, r6
.thumb
branch_223cd54: @ 223cd54 :thumb
	ldr     r0, [pc, #0x24] @ 0x223cd7c, (=0x818)
	ldr     r0, [r5, r0]
	bl      0x201ced0
	bl      free
	ldr     r0, [r6, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_223cd54
.thumb
branch_223cd6a: @ 223cd6a :thumb
	mov     r0, r6
	bl      free
.thumb
branch_223cd70: @ 223cd70 :thumb
	pop     {r3-r7,pc}
@ 0x223cd72


.align 2


.word 0x223d540 @ 0x223cd74
.word 0x83c @ 0x223cd78
.word 0x818 @ 0x223cd7c
.thumb
Function_223cd80: @ 223cd80 :thumb
	ldr     r0, [pc, #0xc] @ 0x223cd90, (=0x223d560)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_223cd8c
	mov     r0, #0x1
	bx      lr
@ 0x223cd8c

.thumb
branch_223cd8c: @ 223cd8c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223cd90

.word 0x223d560 @ 0x223cd90
.thumb
Function_223cd94: @ 223cd94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	ldr     r1, [pc, #0x18c] @ 0x223cf28, (=0x8d64)
	mov     r0, #0x3f
	bl      malloc_maybe
	str     r0, [sp, #0x28]
	bl      PRNG
	str     r0, [sp, #0x20]
	ldr     r0, [pc, #0x180] @ 0x223cf2c, (=0x3594)
	bl      0x201d2dc
	mov     r0, #0x0
	ldr     r4, [sp, #0x28]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x1c]
	mov     r0, r4
	str     r0, [sp, #0x18]
	add     r0, #0x34
	str     r0, [sp, #0x18]
	mov     r0, r4
	str     r0, [sp, #0x14]
	add     r0, #0x28
	str     r0, [sp, #0x14]
	mov     r0, r4
	str     r0, [sp, #0x10]
	add     r0, #0x2e
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0xc]
.thumb
branch_223cdd2: @ 223cdd2 :thumb
	ldr     r0, [sp, #0x1c]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x158] @ 0x223cf30, (=0x223d490)
	ldr     r0, [r0, r1]
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x8
	bcc     branch_223cdea
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
.thumb
branch_223cdea: @ 223cdea :thumb
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #19
	sub     r1, r1, r2
	mov     r0, #0x13
	ror     r1, r0
	mov     r0, #0x1
	add     r1, r2, r1
	lsl     r0, r0, #12
	sub     r0, r1, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x8]
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #19
	sub     r1, r1, r2
	mov     r0, #0x13
	ror     r1, r0
	mov     r0, #0x1
	add     r1, r2, r1
	lsl     r0, r0, #12
	add     r0, r1, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	mov     r0, #0x52
	lsl     r0, r0, #2
	sub     r0, r1, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	ldr     r5, [pc, #0xf8] @ 0x223cf34, (=0x223d3e4)
	str     r0, [sp, #0x0]
	mov     r7, #0x0
	mov     r6, r4
.thumb
branch_223ce40: @ 223ce40 :thumb
	mov     r0, #0x0
	ldsh    r1, [r5, r0]
	ldr     r0, [sp, #0x8]
	add     r0, r0, r1
	strh    r0, [r6, #0x10]
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	strh    r0, [r6, #0x12]
	mov     r0, #0x4
	ldsh    r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	strh    r0, [r6, #0x14]
	mov     r0, #0x0
	strh    r0, [r4, #0x28]
	strh    r0, [r4, #0x2a]
	strh    r0, [r4, #0x2c]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #23
	sub     r2, r2, r1
	mov     r0, #0x17
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #8
	add     r0, r1, r0
	strh    r0, [r4, #0x2e]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #23
	sub     r2, r2, r1
	mov     r0, #0x17
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #8
	add     r0, r1, r0
	strh    r0, [r4, #0x30]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #23
	sub     r2, r2, r1
	mov     r0, #0x17
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #8
	add     r0, r1, r0
	strh    r0, [r4, #0x32]
	ldr     r0, [sp, #0x18]
	blx     0x20bc474
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1dad @ add r5, r5, #0x6
	.hword  0x1db6 @ add r6, r6, #0x6
	cmp     r7, #0x4
	blt     branch_223ce40
	bl      PRNG
	mov     r1, #0x7
	and     r0, r1
	.hword  0x1e45 @ sub r5, r0, #0x1
	cmp     r0, #0x0
	beq     branch_223cede
.thumb
branch_223cecc: @ 223cecc :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	blx     0x20bd1e4
	mov     r0, r5
	.hword  0x1e6d @ sub r5, r5, #0x1
	cmp     r0, #0x0
	bne     branch_223cecc
.thumb
branch_223cede: @ 223cede :thumb
	ldr     r0, [sp, #0x18]
	add     r4, #0x70
	add     r0, #0x70
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	add     r0, #0x70
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r0, #0x70
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	add     r0, #0x70
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x30
	bge     branch_223cf04
	b       branch_223cdd2
@ 0x223cf04

.thumb
branch_223cf04: @ 223cf04 :thumb
	ldr     r0, [sp, #0x20]
	bl      0x201d2dc
	ldr     r0, [sp, #0x28]
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	ldr     r1, [pc, #0x24] @ 0x223cf38, (=0x8d20)
	str     r2, [r0, #0x4]
	str     r2, [r0, r1]
	ldr     r0, [pc, #0x24] @ 0x223cf3c, (=0x4000440)
	mov     r2, #0x2
	str     r2, [r0, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223cf40, (=0x223cf6d)
	ldr     r1, [sp, #0x28]
	bl      0x200d9e8
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x223cf28

.word 0x8d64 @ 0x223cf28
.word 0x3594 @ 0x223cf2c
.word 0x223d490 @ 0x223cf30
.word 0x223d3e4 @ 0x223cf34
.word 0x8d20 @ 0x223cf38
.word 0x4000440 @ 0x223cf3c
.word 0x223cf6d @ 0x223cf40
.thumb
Function_223cf44: @ 223cf44 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_223cf58
	bl      0x201ced0
	bl      free
	mov     r0, r4
	bl      Function_200da58
.thumb
branch_223cf58: @ 223cf58 :thumb
	pop     {r4,pc}
@ 0x223cf5a


.align 2, 0


.thumb
Function_223cf5c: @ 223cf5c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_223cf6a
	bl      0x201ced0
	mov     r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_223cf6a: @ 223cf6a :thumb
	pop     {r3,pc}
@ 0x223cf6c

.thumb
Function_223cf6c: @ 223cf6c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x68
	mov     r7, r1
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x0
	bne     branch_223cf7a
	b       branch_223d1f0
@ 0x223cf7a

.thumb
branch_223cf7a: @ 223cf7a :thumb
	ldr     r1, [pc, #0x278] @ 0x223d1f4, (=0x1508)
	mov     r2, #0x1e
	add     r0, r7, r1
	add     r1, #0x14
	add     r1, r7, r1
	lsl     r2, r2, #10
	blx     0x20c11a8
	mov     r0, #0x3f
	str     r0, [sp, #0x0]
	mov     r0, #0x1f
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x260] @ 0x223d1f4, (=0x1508)
	mov     r1, #0x3
	mov     r2, #0x0
	add     r0, r7, r0
	mov     r3, r1
	str     r2, [sp, #0x8]
	blx     0x20bf790
	ldr     r0, [pc, #0x250] @ 0x223d1f4, (=0x1508)
	mov     r2, #0x0
	ldr     r1, [pc, #0x250] @ 0x223d1f8, (=0x5294)
	add     r0, r7, r0
	mov     r3, r2
	blx     0x20bf7dc
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, r7
	str     r0, [sp, #0x18]
	add     r0, #0x28
	str     r0, [sp, #0x18]
	mov     r0, r7
	str     r0, [sp, #0x14]
	add     r0, #0x2e
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r5, r7
	str     r5, [sp, #0xc]
	add     r5, #0x34
	mov     r4, r7
	str     r0, [sp, #0x10]
	str     r5, [sp, #0xc]
.thumb
branch_223cfd2: @ 223cfd2 :thumb
	mov     r0, #0x24
	ldsh    r0, [r4, r0]
	sub     r0, #0x55
	strh    r0, [r4, #0x24]
	mov     r0, #0x24
	ldsh    r1, [r4, r0]
	ldr     r0, [pc, #0x21c] @ 0x223d1fc, (=0xfffff000)
	cmp     r1, r0
	bgt     branch_223cfec
	mov     r0, #0x2
	lsl     r0, r0, #12
	add     r0, r1, r0
	strh    r0, [r4, #0x24]
.thumb
branch_223cfec: @ 223cfec :thumb
	mov     r0, #0x24
	ldsh    r1, [r4, r0]
	ldr     r0, [pc, #0x20c] @ 0x223d200, (=0x19a)
	ldr     r2, [sp, #0x18]
	sub     r0, r1, r0
	strh    r0, [r4, #0x12]
	mov     r0, #0x12
	ldsh    r0, [r4, r0]
	ldr     r1, [sp, #0x14]
	strh    r0, [r4, #0x18]
	mov     r0, #0x24
	ldsh    r0, [r4, r0]
	strh    r0, [r4, #0x1e]
	ldr     r0, [sp, #0x10]
	blx     0x20bd1e4
	ldr     r0, [sp, #0xc]
	blx     0x20bc474
	mov     r0, #0x14
	ldsh    r0, [r4, r0]
	mov     r2, #0x10
	mov     r3, #0x12
	str     r0, [sp, #0x0]
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	blx     0x20bc4d4
	ldr     r0, [pc, #0x1c8] @ 0x223d1f4, (=0x1508)
	ldr     r2, [pc, #0x1d8] @ 0x223d204, (=0x2d6b)
	add     r0, r7, r0
	mov     r1, #0x0
	blx     0x20bf8c0
	ldr     r2, [r4, #0x8]
	ldr     r0, [pc, #0x1bc] @ 0x223d1f4, (=0x1508)
	lsl     r2, r2, #16
	add     r0, r7, r0
	mov     r1, #0x1
	lsr     r2, r2, #16
	blx     0x20bf8c0
	mov     r1, #0x0
	add     r0, sp, #0x20
	strh    r1, [r0, #0x0]
	ldr     r1, [pc, #0x1bc] @ 0x223d208, (=0xfff)
	strh    r1, [r0, #0x2]
	ldr     r1, [pc, #0x1bc] @ 0x223d20c, (=0xfffff001)
	strh    r1, [r0, #0x4]
	add     r0, sp, #0x20
	mov     r1, r0
	blx     0x20bd4fc
	add     r3, sp, #0x20
	add     r1, sp, #0x20
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	mov     r1, #0x0
	mov     r2, r1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x188] @ 0x223d1f4, (=0x1508)
	ldsh    r2, [r3, r2]
	mov     r6, r3
	mov     r3, #0x2
	ldsh    r3, [r6, r3]
	add     r0, r7, r0
	blx     0x20bf864
	mov     r1, #0x0
	mov     r0, r6
	strh    r1, [r0, #0x0]
	ldr     r1, [pc, #0x18c] @ 0x223d20c, (=0xfffff001)
	strh    r1, [r0, #0x2]
	lsr     r1, r1, #20
	strh    r1, [r0, #0x4]
	add     r0, sp, #0x20
	mov     r1, r0
	blx     0x20bd4fc
	mov     r1, r6
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	mov     r3, r6
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldsh    r2, [r3, r2]
	mov     r3, #0x2
	ldr     r0, [pc, #0x154] @ 0x223d1f4, (=0x1508)
	ldsh    r3, [r6, r3]
	add     r0, r7, r0
	mov     r1, #0x1
	blx     0x20bf864
	ldrh    r0, [r4, #0x28]
	ldr     r3, [pc, #0x160] @ 0x223d210, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x15c] @ 0x223d210, (=0x20f983c)
	add     r2, r0, r1
	ldsh    r1, [r3, r1]
	mov     r3, #0x2
	ldsh    r2, [r2, r3]
	add     r0, sp, #0x28
	bl      0x20bc5ac
	ldr     r2, [sp, #0xc]
	add     r0, sp, #0x28
	mov     r1, r5
	blx     0x20bc618
	ldrh    r0, [r4, #0x2a]
	ldr     r3, [pc, #0x140] @ 0x223d210, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x138] @ 0x223d210, (=0x20f983c)
	add     r2, r0, r1
	ldsh    r1, [r3, r1]
	mov     r3, #0x2
	ldsh    r2, [r2, r3]
	add     r0, sp, #0x28
	bl      0x20bc5d0
	ldr     r2, [sp, #0xc]
	add     r0, sp, #0x28
	mov     r1, r5
	blx     0x20bc618
	ldrh    r0, [r4, #0x2c]
	ldr     r3, [pc, #0x11c] @ 0x223d210, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x118] @ 0x223d210, (=0x20f983c)
	add     r2, r0, r1
	ldsh    r1, [r3, r1]
	mov     r3, #0x2
	ldsh    r2, [r2, r3]
	add     r0, sp, #0x28
	bl      0x20bc5f4
	ldr     r2, [sp, #0xc]
	add     r0, sp, #0x28
	mov     r1, r5
	blx     0x20bc618
	ldr     r2, [r4, #0x8]
	ldr     r0, [pc, #0xe0] @ 0x223d1f4, (=0x1508)
	lsl     r2, r2, #16
	ldr     r1, [pc, #0xfc] @ 0x223d214, (=0x7fff)
	add     r0, r7, r0
	lsr     r2, r2, #16
	mov     r3, #0x0
	blx     0x20bf820
	ldr     r0, [pc, #0xd0] @ 0x223d1f4, (=0x1508)
	add     r0, r7, r0
	blx     0x20bf650
	ldr     r0, [pc, #0xc8] @ 0x223d1f4, (=0x1508)
	mov     r1, r5
	add     r0, r7, r0
	blx     0x20bf69c
	ldr     r0, [pc, #0xbc] @ 0x223d1f4, (=0x1508)
	mov     r1, #0x1
	add     r0, r7, r0
	blx     0x20bf8f0
	ldr     r0, [pc, #0xb4] @ 0x223d1f4, (=0x1508)
	mov     r1, #0x0
	ldr     r3, [pc, #0xc8] @ 0x223d20c, (=0xfffff001)
	add     r0, r7, r0
	mov     r2, r1
	blx     0x20bf6ec
	mov     r1, #0x9b
	ldr     r0, [pc, #0xa4] @ 0x223d1f4, (=0x1508)
	mvn     r1, r1
	mov     r2, r1
	add     r0, r7, r0
	sub     r2, #0x31
	mov     r3, #0x0
	blx     0x20bf73c
	ldr     r0, [pc, #0x94] @ 0x223d1f4, (=0x1508)
	mov     r2, #0xcc
	add     r0, r7, r0
	mov     r1, #0x9c
	mvn     r2, r2
	mov     r3, #0x0
	blx     0x20bf73c
	ldr     r0, [pc, #0x84] @ 0x223d1f4, (=0x1508)
	mov     r1, #0x9c
	add     r0, r7, r0
	mov     r2, #0xcd
	mov     r3, #0x0
	blx     0x20bf73c
	ldr     r0, [pc, #0x74] @ 0x223d1f4, (=0x1508)
	mov     r1, #0x9b
	add     r0, r7, r0
	mvn     r1, r1
	mov     r2, #0xcd
	mov     r3, #0x0
	blx     0x20bf73c
	ldr     r0, [pc, #0x64] @ 0x223d1f4, (=0x1508)
	add     r0, r7, r0
	blx     0x20bf91c
	ldr     r0, [pc, #0x5c] @ 0x223d1f4, (=0x1508)
	mov     r1, #0x1
	add     r0, r7, r0
	blx     0x20bf670
	ldr     r0, [sp, #0x18]
	add     r4, #0x70
	add     r0, #0x70
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	add     r5, #0x70
	add     r0, #0x70
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r0, #0x70
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	add     r0, #0x70
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x30
	bge     branch_223d1c6
	b       branch_223cfd2
@ 0x223d1c6

.thumb
branch_223d1c6: @ 223d1c6 :thumb
	ldr     r0, [pc, #0x2c] @ 0x223d1f4, (=0x1508)
	add     r0, r7, r0
	blx     0x20c11c8
	ldr     r1, [pc, #0x48] @ 0x223d218, (=0x8d1c)
	str     r0, [r7, r1]
	ldr     r0, [pc, #0x48] @ 0x223d21c, (=0x151c)
	ldr     r1, [r7, r1]
	add     r0, r7, r0
	blx     DC_FlushRange
	ldr     r0, [pc, #0x38] @ 0x223d218, (=0x8d1c)
	ldr     r1, [r7, r0]
	mov     r0, #0x1e
	lsl     r0, r0, #10
	cmp     r1, r0
	bcc     branch_223d1ec
	bl      ErrorHandling
.thumb
branch_223d1ec: @ 223d1ec :thumb
	mov     r0, #0x1
	str     r0, [r7, #0x4]
.thumb
branch_223d1f0: @ 223d1f0 :thumb
	add     sp, #0x68
	pop     {r3-r7,pc}
@ 0x223d1f4

.word 0x1508 @ 0x223d1f4
.word 0x5294 @ 0x223d1f8
.word 0xfffff000 @ 0x223d1fc
.word 0x19a @ 0x223d200
.word 0x2d6b @ 0x223d204
.word 0xfff @ 0x223d208
.word 0xfffff001 @ 0x223d20c
.word 0x20f983c @ 0x223d210
.word 0x7fff @ 0x223d214
.word 0x8d1c @ 0x223d218
.word 0x151c @ 0x223d21c
.thumb
Function_223d220: @ 223d220 :thumb
	push    {r4,lr}
	cmp     r0, #0x0
	beq     branch_223d250
	bl      0x201ced0
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_223d250
	ldr     r0, [pc, #0x20] @ 0x223d254, (=0x4000444)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x223d258, (=0x8d1c)
	ldr     r1, [pc, #0x20] @ 0x223d25c, (=0x151c)
	ldr     r2, [r4, r2]
	mov     r0, #0x3
	add     r1, r4, r1
	blx 0x1ff85b8
	ldr     r0, [pc, #0x18] @ 0x223d260, (=0x4000448)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
.thumb
branch_223d250: @ 223d250 :thumb
	pop     {r4,pc}
@ 0x223d252


.align 2


.word 0x4000444 @ 0x223d254
.word 0x8d1c @ 0x223d258
.word 0x151c @ 0x223d25c
.word 0x4000448 @ 0x223d260
.thumb
Function_223d264: @ 223d264 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	str     r1, [r4, #0x0]
	mov     r5, r3
	sub     r0, r2, r1
	mov     r1, r5
	str     r2, [r4, #0x8]
	blx     _s32_div_f
	str     r0, [r4, #0x4]
	.hword  0x1e68 @ sub r0, r5, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	pop     {r3-r5,pc}
@ 0x223d282


.align 2, 0


.thumb
Function_223d284: @ 223d284 :thumb
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x0
	beq     branch_223d29a
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0xc]
	ldr     r2, [r0, #0x0]
	ldr     r1, [r0, #0x4]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	mov     r0, r1
	bx      lr
@ 0x223d29a

.thumb
branch_223d29a: @ 223d29a :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x223d2a2


.align 2, 0


.thumb
Function_223d2a4: @ 223d2a4 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x223d2a8

.thumb
Function_223d2a8: @ 223d2a8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      0x2073c88
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x7a
	mov     r2, #0x0
	bl      GetPkmnData
	.hword  0x1e41 @ sub r1, r0, #0x1
	cmp     r1, #0x2
	bhi     branch_223d2cc
	mov     r5, #0x4
	b       branch_223d35e
@ 0x223d2cc

.thumb
branch_223d2cc: @ 223d2cc :thumb
	.hword  0x1f01 @ sub r1, r0, #0x4
	cmp     r1, #0x1
	bhi     branch_223d2d6
	mov     r5, #0x3
	b       branch_223d35e
@ 0x223d2d6

.thumb
branch_223d2d6: @ 223d2d6 :thumb
	cmp     r0, #0xf
	bne     branch_223d2de
	mov     r5, #0x5
	b       branch_223d35e
@ 0x223d2de

.thumb
branch_223d2de: @ 223d2de :thumb
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_223d2f0
	mov     r5, #0x6
	b       branch_223d35e
@ 0x223d2f0

.thumb
branch_223d2f0: @ 223d2f0 :thumb
	mov     r0, r6
	bl      0x2025f20
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r7, r0
	beq     branch_223d30a
	mov     r5, #0x2
	b       branch_223d35e
@ 0x223d30a

.thumb
branch_223d30a: @ 223d30a :thumb
	ldr     r1, [pc, #0x60] @ 0x223d36c, (=0x1be4)
	mov     r0, r6
	ldr     r1, [r5, r1]
	bl      0x2025ef4
	ldr     r2, [pc, #0x58] @ 0x223d370, (=0x1be8)
	mov     r0, r4
	ldr     r2, [r5, r2]
	mov     r1, #0x91
	bl      GetPkmnData
	ldr     r1, [pc, #0x48] @ 0x223d36c, (=0x1be4)
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      0x2023be0
	cmp     r0, #0x0
	beq     branch_223d334
	mov     r5, #0x2
	b       branch_223d35e
@ 0x223d334

.thumb
branch_223d334: @ 223d334 :thumb
	mov     r0, r4
	mov     r1, #0x99
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x7d
	lsl     r1, r1, #4
	cmp     r0, r1
	bcc     branch_223d34a
	mov     r5, #0x6
	b       branch_223d35e
@ 0x223d34a

.thumb
branch_223d34a: @ 223d34a :thumb
	mov     r0, r4
	mov     r1, #0x93
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223d35c
	mov     r5, #0x0
	b       branch_223d35e
@ 0x223d35c

.thumb
branch_223d35c: @ 223d35c :thumb
	mov     r5, #0x1
.thumb
branch_223d35e: @ 223d35e :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      0x2073cd4
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x223d36a

.align 2
.word 0x1be4 @ 0x223d36c
.word 0x1be8 @ 0x223d370



Unknown_223d374: @ 0x223d374
.incbin "./baserom/overlay/overlay_0086.bin", 0x2234, 0x223d3b8 - 0x223d374


.word Function_223b3c8+1 @ =0x223b3c9, 0x223d3b8
.word Function_223b464+1 @ =0x223b465, 0x223d3bc
.word Function_223b574+1 @ =0x223b575, 0x223d3c0
.word Function_223b684+1 @ =0x223b685, 0x223d3c4
.word Function_223b40c+1 @ =0x223b40d, 0x223d3c8
@ 0x223d3cc


.incbin "./baserom/overlay/overlay_0086.bin", 0x228c, 0x223d560 - 0x223d3cc


@end 0x223d560




