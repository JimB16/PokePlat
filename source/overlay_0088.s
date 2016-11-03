

.section .iwram88, "ax"


.thumb
Function_223b140: @ 223b140 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x168] @ 0x223b2cc, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x168] @ 0x223b2d0, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r2, [pc, #0x164] @ 0x223b2d4, (=0x707d0)
	mov     r0, #0x3
	mov     r1, #0x1a
	bl      0x2017fc8
	mov     r0, #0x36
	mov     r1, #0x1a
	bl      0x2006c24
	mov     r5, r0
	ldr     r1, [pc, #0x154] @ 0x223b2d8, (=0x36b4)
	mov     r0, r6
	mov     r2, #0x1a
	bl      0x200681c
	mov     r4, r0
	ldr     r2, [pc, #0x148] @ 0x223b2d8, (=0x36b4)
	mov     r0, #0x0
	mov     r1, r4
	blx     0x20c4bb8
	mov     r0, #0x1a
	bl      0x2018340
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xc
	mov     r1, #0x16
	mov     r2, #0x1a
	bl      0x200b368
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1a
	bl      0x200b358
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1a
	bl      0x200b358
	mov     r2, #0x6
	lsl     r2, r2, #6
	str     r0, [r4, r2]
	mov     r1, #0x1a
	mov     r0, #0x0
	sub     r2, #0x1e
	mov     r3, r1
	bl      0x200b144
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [r4, #0x40]
	mov     r0, r4
	mov     r1, r6
	bl      Function_223c370
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	bl      Function_223c15c
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_223c17c
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x1a
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, r4
	mov     r1, r5
	bl      Function_223c504
	ldr     r0, [pc, #0xbc] @ 0x223b2dc, (=0x223c0e1)
	mov     r1, r4
	bl      0x2017798
	bl      Function_223c63c
	mov     r0, r4
	mov     r1, r5
	bl      Function_223c66c
	mov     r0, r4
	bl      Function_223cba0
	mov     r0, #0x5d
	ldr     r2, [r4, #0x8]
	lsl     r0, r0, #2
	ldr     r1, [pc, #0xa0] @ 0x223b2e0, (=0x438)
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x18]
	add     r1, r4, r1
	bl      Function_223e9c4
	ldr     r0, [r4, #0x8]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x0]
	bl      0x2095e60
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x80] @ 0x223b2e4, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x14
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r0, [r4, #0x0]
	bl      0x2095cd4
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r1, #0x5d
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, #0x1a
	bl      0x2038a1c
	bl      0x2039734
	bl      0x2013948
	cmp     r0, #0x0
	bne     branch_223b2ae
	ldr     r1, [pc, #0x48] @ 0x223b2e8, (=0x43d)
	mov     r0, #0x4
	mov     r2, #0x1
	bl      0x2004550
	ldr     r0, [pc, #0x40] @ 0x223b2e8, (=0x43d)
	bl      0x2004a84
	b       branch_223b2be
@ 0x223b2ae

.thumb
branch_223b2ae: @ 223b2ae :thumb
	ldr     r1, [pc, #0x3c] @ 0x223b2ec, (=0x43e)
	mov     r0, #0x4
	mov     r2, #0x1
	bl      0x2004550
	ldr     r0, [pc, #0x30] @ 0x223b2ec, (=0x43e)
	bl      0x2004a84
.thumb
branch_223b2be: @ 223b2be :thumb
	mov     r0, r5
	bl      0x2006ca8
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223b2ca


.align 2


.word 0xffffe0ff @ 0x223b2cc
.word 0x4001000 @ 0x223b2d0
.word 0x707d0 @ 0x223b2d4
.word 0x36b4 @ 0x223b2d8
.word 0x223c0e1 @ 0x223b2dc
.word 0x438 @ 0x223b2e0
.word 0x5a8 @ 0x223b2e4
.word 0x43d @ 0x223b2e8
.word 0x43e @ 0x223b2ec
.thumb
Function_223b2f0: @ 223b2f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [sp, #0x10]
	mov     r4, r2
	lsl     r1, r1, #4
	add     r1, #0x92
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	mov     r6, r3
	lsl     r1, r1, #5
	lsl     r2, r2, #8
	blx     0x20c02bc
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      0x2079edc
	mov     r1, r0
	ldr     r0, [sp, #0x14]
	add     r1, #0xa
	bl      0x2021ef0
	pop     {r4-r6,pc}
@ 0x223b320

.thumb
Function_223b320: @ 223b320 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      0x203608c
	bl      0x2032ee8
	mov     r4, r0
	bl      0x203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      0x2032ee8
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x1a
	bl      0x2025f04
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x1a
	bl      0x2025f04
	mov     r6, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x32
	bl      0x200b1ec
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x223b3b4, (=0x438)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_223ec78
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x223b3b8, (=0x448)
	mov     r1, r6
	add     r0, r5, r0
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_223ec78
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x223b3bc, (=0x498)
	mov     r1, r7
	add     r0, r5, r0
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_223ec78
	mov     r0, r7
	bl      0x20237bc
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223b3b2


.align 2


.word 0x438 @ 0x223b3b4
.word 0x448 @ 0x223b3b8
.word 0x498 @ 0x223b3bc
.thumb
Function_223b3c0: @ 223b3c0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x36
	mov     r1, #0x1a
	bl      0x2006c24
	mov     r4, r0
	bl      Function_223c15c
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_223c17c
	mov     r0, r5
	mov     r1, r4
	bl      Function_223c504
	mov     r0, r5
	bl      Function_223b4f0
	mov     r0, r5
	bl      Function_223b320
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, #0x18]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r2, #0x5d
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	lsl     r2, r2, #2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r2]
	mov     r1, #0x0
	add     r2, #0x65
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	mov     r2, #0x5d
	str     r1, [sp, #0x0]
	mov     r0, #0x1a
	lsl     r2, r2, #2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r2]
	add     r2, #0x83
	mov     r3, #0xb
	bl      0x200daa4
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xa8] @ 0x223b4e0, (=0x588)
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	bl      Function_223c63c
	mov     r0, r5
	mov     r1, r4
	bl      Function_223c66c
	mov     r0, r5
	bl      Function_223cba0
	ldr     r0, [pc, #0x44] @ 0x223b4e4, (=0x2218)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r5
	bl      Function_223b7a0
	ldr     r0, [pc, #0x3c] @ 0x223b4e8, (=0x221c)
	mov     r1, #0x6
	ldr     r0, [r5, r0]
	mov     r2, r5
	bl      Function_223b7a0
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [pc, #0x1c] @ 0x223b4ec, (=0x223c0e1)
	mov     r1, r5
	bl      0x2017798
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223b4de


.align 2


.word 0x588 @ 0x223b4e0
.word 0x2218 @ 0x223b4e4
.word 0x221c @ 0x223b4e8
.word 0x223c0e1 @ 0x223b4ec
.thumb
Function_223b4f0: @ 223b4f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5e
	ldr     r1, [pc, #0x74] @ 0x223b56c, (=0x2218)
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, #0x0
	bl      Function_223b710
	mov     r0, #0x5e
	ldr     r1, [pc, #0x68] @ 0x223b570, (=0x221c)
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, #0x6
	bl      Function_223b710
	mov     r0, #0x0
	mov     r2, #0x5e
	str     r0, [sp, #0x0]
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x4c] @ 0x223b56c, (=0x2218)
	ldr     r0, [pc, #0x54] @ 0x223b574, (=0x4a8)
	ldr     r1, [r5, r2]
	add     r2, #0xc
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	bl      Function_223b748
	mov     r0, #0x6
	mov     r2, #0x5e
	str     r0, [sp, #0x0]
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x38] @ 0x223b570, (=0x221c)
	ldr     r0, [pc, #0x3c] @ 0x223b578, (=0x508)
	ldr     r1, [r5, r2]
	add     r2, #0xc
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	bl      Function_223b748
	ldr     r0, [pc, #0x20] @ 0x223b56c, (=0x2218)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x223b570, (=0x221c)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r2, r0
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_223c4e0
	pop     {r3-r5,pc}
@ 0x223b56a


.align 2


.word 0x2218 @ 0x223b56c
.word 0x221c @ 0x223b570
.word 0x4a8 @ 0x223b574
.word 0x508 @ 0x223b578
.thumb
Function_223b57c: @ 223b57c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	mov     r6, #0x0
	cmp     r1, #0x0
	beq     branch_223b59c
	cmp     r1, #0x1
	beq     branch_223b5b0
	cmp     r1, #0x2
	bne     branch_223b59a
	b       branch_223b6dc
@ 0x223b59a

.thumb
branch_223b59a: @ 223b59a :thumb
	b       branch_223b6e6
@ 0x223b59c

.thumb
branch_223b59c: @ 223b59c :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b5b6
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, r4
	bl      Function_223b320
	b       branch_223b6e6
@ 0x223b5b0

.thumb
branch_223b5b0: @ 223b5b0 :thumb
	ldr     r1, [r4, #0x48]
	cmp     r1, #0x7
	bls     branch_223b5b8
.thumb
branch_223b5b6: @ 223b5b6 :thumb
	b       branch_223b6e6
@ 0x223b5b8

.thumb
branch_223b5b8: @ 223b5b8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223b5c4

Jumppoints_223b5c4:
.hword branch_223b5d4 - Jumppoints_223b5c4 - 2
.hword branch_223b5dc - Jumppoints_223b5c4 - 2
.hword branch_223b5ea - Jumppoints_223b5c4 - 2
.hword branch_223b608 - Jumppoints_223b5c4 - 2
.hword branch_223b626 - Jumppoints_223b5c4 - 2
.hword branch_223b662 - Jumppoints_223b5c4 - 2
.hword branch_223b6b2 - Jumppoints_223b5c4 - 2
.hword branch_223b6ce - Jumppoints_223b5c4 - 2
.thumb
branch_223b5d4: @ 223b5d4 :thumb
	bl      Function_223b914
	str     r0, [r4, #0x48]
	b       branch_223b6e6
@ 0x223b5dc

.thumb
branch_223b5dc: @ 223b5dc :thumb
	bl      Function_223bed8
	str     r0, [r4, #0x48]
	mov     r0, r4
	bl      Function_223ce74
	b       branch_223b6e6
@ 0x223b5ea

.thumb
branch_223b5ea: @ 223b5ea :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x1a
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r6
	mov     r2, r6
	mov     r3, r6
	bl      0x200f174
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_223b6e6
@ 0x223b608

.thumb
branch_223b608: @ 223b608 :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x1a
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r6
	mov     r2, r6
	mov     r3, r6
	bl      0x200f174
	mov     r0, #0x4
	str     r0, [r4, #0x48]
	b       branch_223b6e6
@ 0x223b626

.thumb
branch_223b626: @ 223b626 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b6e6
	mov     r0, r4
	bl      Function_223bfd8
	mov     r0, r4
	bl      Function_223bf7c
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_223c44c
	mov     r0, #0x1
	str     r0, [r4, #0x44]
	mov     r0, #0x5
	str     r0, [r4, #0x48]
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	blx     _s32_div_f
	mov     r1, r0
	mov     r0, r4
	bl      Function_223d1ec
	b       branch_223b6e6
@ 0x223b662

.thumb
branch_223b662: @ 223b662 :thumb
	ldr     r0, [r4, #0x40]
	bl      0x2006844
	cmp     r0, #0x0
	beq     branch_223b6e6
	ldr     r0, [r4, #0x40]
	bl      0x2006814
	mov     r0, r4
	bl      Function_223b3c0
	mov     r0, r6
	str     r0, [r4, #0x44]
	mov     r0, r4
	add     r0, #0x20
	ldrb    r2, [r0, #0x0]
	ldr     r1, [r4, #0x3c]
	mov     r0, #0x6
	mul     r0, r1
	add     r1, r2, r0
	mov     r0, r4
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_223be28
	mov     r0, r4
	mov     r1, #0xce
	add     r0, #0x88
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, r6
	bl      Function_223cf68
	bl      0x2039734
	mov     r0, #0x6
	str     r0, [r4, #0x48]
	b       branch_223b6e6
@ 0x223b6b2

.thumb
branch_223b6b2: @ 223b6b2 :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x1a
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r1
	mov     r3, r6
	bl      0x200f174
	mov     r0, #0x7
	str     r0, [r4, #0x48]
	b       branch_223b6e6
@ 0x223b6ce

.thumb
branch_223b6ce: @ 223b6ce :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b6e6
	mov     r0, #0x1
	str     r0, [r4, #0x48]
	b       branch_223b6e6
@ 0x223b6dc

.thumb
branch_223b6dc: @ 223b6dc :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b6e6
	mov     r6, #0x1
.thumb
branch_223b6e6: @ 223b6e6 :thumb
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	bne     branch_223b6fc
	mov     r0, r4
	bl      Function_223e848
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20219f8
.thumb
branch_223b6fc: @ 223b6fc :thumb
	mov     r1, #0x5d
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, #0x1a
	bl      0x2038a1c
	mov     r0, r6
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223b70e


.align 2, 0


.thumb
Function_223b710: @ 223b710 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r6, r2
	mov     r4, #0x0
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_223b746
.thumb
branch_223b724: @ 223b724 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	bl      0x2076b10
	mov     r2, r0
	mov     r0, r7
	add     r1, r4, r6
	bl      0x200b5cc
	mov     r0, r5
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r4, r0
	blt     branch_223b724
.thumb
branch_223b746: @ 223b746 :thumb
	pop     {r3-r7,pc}
@ 0x223b748

.thumb
Function_223b748: @ 223b748 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, r3
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r6, [sp, #0x28]
	mov     r4, #0x0
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_223b79a
	add     r7, r6, #0x1
.thumb
branch_223b764: @ 223b764 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	add     r2, r7, r4
	mov     r3, #0x1a
	bl      0x200b29c
	mov     r6, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_223ec78
	mov     r0, r6
	bl      0x20237bc
	ldr     r0, [sp, #0x10]
	add     r5, #0x10
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r4, r0
	blt     branch_223b764
.thumb
branch_223b79a: @ 223b79a :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223b79e


.align 2, 0


.thumb
Function_223b7a0: @ 223b7a0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x20]
	mov     r7, #0x0
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	bgt     branch_223b7b6
	b       branch_223b8c4
@ 0x223b7b6

.thumb
branch_223b7b6: @ 223b7b6 :thumb
	mov     r1, #0x1f
	ldr     r0, [sp, #0x20]
	lsl     r1, r1, #6
	add     r0, r0, r1
	str     r0, [sp, #0x1c]
.thumb
branch_223b7c0: @ 223b7c0 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0x140] @ 0x223b904, (=0x696)
	add     r0, r7, r0
	str     r0, [sp, #0x10]
	lsl     r0, r0, #2
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x20]
	add     r4, r0, r1
	ldr     r1, [sp, #0x18]
	ldrb    r2, [r4, r2]
	add     r5, r0, r1
	mov     r0, #0x69
	ldr     r1, [pc, #0x128] @ 0x223b908, (=0x695)
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	ldrb    r1, [r4, r1]
	bl      0x2079d8c
	mov     r1, r0
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	ldr     r6, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	mov     r0, #0x13
	mov     r2, #0x0
	add     r3, r6, r3
	bl      0x2006f50
	mov     r1, #0x79
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0x30
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #8
	blx     0x20c2c54
	ldr     r0, [sp, #0x10]
	mov     r1, #0x69
	str     r0, [sp, #0x0]
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0xe4] @ 0x223b904, (=0x696)
	str     r0, [sp, #0x4]
	ldr     r3, [pc, #0xe4] @ 0x223b908, (=0x695)
	mov     r0, #0x1f
	lsl     r1, r1, #4
	lsl     r0, r0, #6
	ldrh    r1, [r4, r1]
	ldrb    r2, [r4, r2]
	ldrb    r3, [r4, r3]
	ldr     r0, [r5, r0]
	bl      Function_223b2f0
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [pc, #0xc8] @ 0x223b90c, (=0x692)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223b858
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	b       branch_223b880
@ 0x223b858

.thumb
branch_223b858: @ 223b858 :thumb
	ldr     r0, [sp, #0x10]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x20]
	add     r1, r0, r1
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	str     r1, [sp, #0x14]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x3a
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldr     r1, [pc, #0x94] @ 0x223b90c, (=0x692)
	ldrh    r1, [r4, r1]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      0x2021d6c
.thumb
branch_223b880: @ 223b880 :thumb
	ldr     r0, [pc, #0x8c] @ 0x223b910, (=0x69c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223b896
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	b       branch_223b8b6
@ 0x223b896

.thumb
branch_223b896: @ 223b896 :thumb
	ldr     r0, [sp, #0x10]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x20]
	add     r4, r0, r1
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x15
	bl      0x2021d6c
.thumb
branch_223b8b6: @ 223b8b6 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r7, r0
	bge     branch_223b8c4
	b       branch_223b7c0
@ 0x223b8c4

.thumb
branch_223b8c4: @ 223b8c4 :thumb
	cmp     r7, #0x6
	bge     branch_223b900
	ldr     r0, [sp, #0xc]
	mov     r6, #0x3a
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x20]
	lsl     r6, r6, #4
	add     r1, r0, r1
	lsl     r0, r7, #2
	mov     r5, r6
	add     r4, r1, r0
	add     r5, #0x30
.thumb
branch_223b8dc: @ 223b8dc :thumb
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [r4, r6]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [r4, r5]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x6
	blt     branch_223b8dc
.thumb
branch_223b900: @ 223b900 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x223b904

.word 0x696 @ 0x223b904
.word 0x695 @ 0x223b908
.word 0x692 @ 0x223b90c
.word 0x69c @ 0x223b910
.thumb
Function_223b914: @ 223b914 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	bl      Function_223e998
	ldr     r0, [r4, #0x4c]
	cmp     r0, #0x13
	bls     branch_223b926
	b       branch_223bcea
@ 0x223b926

.thumb
branch_223b926: @ 223b926 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223b932

Jumppoints_223b932:
.hword branch_223b95a - Jumppoints_223b932 - 2
.hword branch_223b9c2 - Jumppoints_223b932 - 2
.hword branch_223ba14 - Jumppoints_223b932 - 2
.hword branch_223ba24 - Jumppoints_223b932 - 2
.hword branch_223ba3a - Jumppoints_223b932 - 2
.hword branch_223ba4a - Jumppoints_223b932 - 2
.hword branch_223ba62 - Jumppoints_223b932 - 2
.hword branch_223ba76 - Jumppoints_223b932 - 2
.hword branch_223ba88 - Jumppoints_223b932 - 2
.hword branch_223bab4 - Jumppoints_223b932 - 2
.hword branch_223bac2 - Jumppoints_223b932 - 2
.hword branch_223bace - Jumppoints_223b932 - 2
.hword branch_223bb5a - Jumppoints_223b932 - 2
.hword branch_223bb76 - Jumppoints_223b932 - 2
.hword branch_223bb82 - Jumppoints_223b932 - 2
.hword branch_223bb94 - Jumppoints_223b932 - 2
.hword branch_223bbd8 - Jumppoints_223b932 - 2
.hword branch_223bc12 - Jumppoints_223b932 - 2
.hword branch_223bc56 - Jumppoints_223b932 - 2
.hword branch_223bc96 - Jumppoints_223b932 - 2
.thumb
branch_223b95a: @ 223b95a :thumb
	mov     r0, #0x50
	bl      0x20364f0
	mov     r0, #0x2
	bl      0x2017de0
	mov     r0, r4
	bl      Function_223e894
	ldr     r0, [r4, #0x8]
	mov     r5, #0x0
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_223b9ba
	mov     r7, #0x7b
	lsl     r7, r7, #2
.thumb
branch_223b97e: @ 223b97e :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	ldr     r0, [r0, #0x8]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, r7
	bne     branch_223b9ac
	mov     r0, r6
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_223b9ac
	mov     r0, r6
	mov     r1, #0x0
	bl      0x2077acc
.thumb
branch_223b9ac: @ 223b9ac :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	cmp     r5, r0
	blt     branch_223b97e
.thumb
branch_223b9ba: @ 223b9ba :thumb
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223b9c2

.thumb
branch_223b9c2: @ 223b9c2 :thumb
	mov     r0, #0x50
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_223baba
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, #0x34]
	cmp     r0, #0x0
	bne     branch_223b9d8
	mov     r0, #0x6
	b       branch_223b9da
@ 0x223b9d8

.thumb
branch_223b9d8: @ 223b9d8 :thumb
	mov     r0, #0x2
.thumb
branch_223b9da: @ 223b9da :thumb
	str     r0, [r4, #0x4c]
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_223ba06
	bl      PRNG
	ldr     r1, [pc, #0x304] @ 0x223bcf0, (=0x445)
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x3c
	bcc     branch_223b9fa
	bl      ErrorHandling
.thumb
branch_223b9fa: @ 223b9fa :thumb
	bl      0x203608c
	mov     r1, #0x1f
	add     r2, r5, #0x3
	bl      Function_223d044
.thumb
branch_223ba06: @ 223ba06 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_223d0c0
	mov     r0, r4
	bl      Function_223e984
	b       branch_223bcea
@ 0x223ba14

.thumb
branch_223ba14: @ 223ba14 :thumb
	mov     r1, #0x8b
	lsl     r1, r1, #6
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_223baba
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223ba24

.thumb
branch_223ba24: @ 223ba24 :thumb
	mov     r0, #0x8b
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223baba
	mov     r0, #0x4
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223ba3a

.thumb
branch_223ba3a: @ 223ba3a :thumb
	ldr     r0, [pc, #0x2b8] @ 0x223bcf4, (=0x369c)
	add     r0, r4, r0
	bl      0x2038ed4
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223ba4a

.thumb
branch_223ba4a: @ 223ba4a :thumb
	ldr     r2, [pc, #0x2a8] @ 0x223bcf4, (=0x369c)
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	add     r2, r4, r2
	bl      0x2038edc
	cmp     r0, #0x0
	beq     branch_223baba
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223ba62

.thumb
branch_223ba62: @ 223ba62 :thumb
	mov     r0, #0x1
	bl      0x203632c
	mov     r0, #0x51
	bl      0x20364f0
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223ba76

.thumb
branch_223ba76: @ 223ba76 :thumb
	mov     r0, #0x51
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_223baba
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223ba88

.thumb
branch_223ba88: @ 223ba88 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x50]
	str     r0, [r4, #0x54]
	str     r0, [r4, #0x58]
	bl      0x203608c
	cmp     r0, #0x1
	bne     branch_223baac
	bl      0x203608c
	ldr     r1, [pc, #0x258] @ 0x223bcf8, (=0x2218)
	ldr     r2, [r4, #0x50]
	ldr     r1, [r4, r1]
	bl      Function_223d098
	ldr     r0, [r4, #0x50]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x50]
.thumb
branch_223baac: @ 223baac :thumb
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223bab4

.thumb
branch_223bab4: @ 223bab4 :thumb
	ldr     r0, [r4, #0x54]
	cmp     r0, #0x0
	bne     branch_223babc
.thumb
branch_223baba: @ 223baba :thumb
	b       branch_223bcea
@ 0x223babc

.thumb
branch_223babc: @ 223babc :thumb
	mov     r0, #0xa
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223bac2

.thumb
branch_223bac2: @ 223bac2 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	mov     r0, r4
	bl      Function_223b4f0
	b       branch_223bcea
@ 0x223bace

.thumb
branch_223bace: @ 223bace :thumb
	mov     r1, #0x0
	mov     r0, #0x69
	mov     r2, r4
	mov     r5, r1
	lsl     r0, r0, #4
.thumb
branch_223bad8: @ 223bad8 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r5, [r2, r0]
	add     r2, #0x10
	cmp     r1, #0xd
	blt     branch_223bad8
	ldr     r0, [pc, #0x214] @ 0x223bcf8, (=0x2218)
	ldr     r0, [r4, r0]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_223bb14
	mov     r0, #0x69
	lsl     r0, r0, #4
	ldr     r7, [pc, #0x204] @ 0x223bcf8, (=0x2218)
	add     r6, r4, r0
.thumb
branch_223baf6: @ 223baf6 :thumb
	ldr     r0, [pc, #0x200] @ 0x223bcf8, (=0x2218)
	mov     r1, r5
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r6
	bl      Function_223bd18
	ldr     r0, [r4, r7]
	add     r6, #0x10
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r5, r0
	blt     branch_223baf6
.thumb
branch_223bb14: @ 223bb14 :thumb
	ldr     r0, [pc, #0x1e4] @ 0x223bcfc, (=0x221c)
	mov     r5, #0x0
	ldr     r0, [r4, r0]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_223bb4a
	mov     r0, #0x69
	lsl     r0, r0, #4
	ldr     r7, [pc, #0x1d4] @ 0x223bcfc, (=0x221c)
	add     r6, r4, r0
.thumb
branch_223bb2a: @ 223bb2a :thumb
	ldr     r0, [pc, #0x1d0] @ 0x223bcfc, (=0x221c)
	mov     r1, r5
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	add     r1, r5, #0x6
	lsl     r1, r1, #4
	add     r1, r6, r1
	bl      Function_223bd18
	ldr     r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r5, r0
	blt     branch_223bb2a
.thumb
branch_223bb4a: @ 223bb4a :thumb
	mov     r0, #0x75
	mov     r1, #0x1
	lsl     r0, r0, #4
	strh    r1, [r4, r0]
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223bb5a

.thumb
branch_223bb5a: @ 223bb5a :thumb
	bl      0x203608c
	bl      0x2032ee8
	ldr     r2, [pc, #0x19c] @ 0x223bd00, (=0x2224)
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r2, r4, r2
	bl      Function_223d0d4
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223bb76

.thumb
branch_223bb76: @ 223bb76 :thumb
	ldr     r1, [r4, #0x54]
	cmp     r1, #0x3
	bne     branch_223bbd6
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223bb82

.thumb
branch_223bb82: @ 223bb82 :thumb
	ldr     r0, [r4, #0x4]
	bl      0x202cc98
	bl      Function_223d140
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223bb94

.thumb
branch_223bb94: @ 223bb94 :thumb
	ldr     r1, [r4, #0x54]
	cmp     r1, #0x4
	bne     branch_223bbd6
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	mov     r0, #0x10
	mov     r1, #0x0
	bl      0x201ff0c
	ldr     r0, [pc, #0x150] @ 0x223bcf8, (=0x2218)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, r4
	bl      Function_223b7a0
	ldr     r0, [pc, #0x148] @ 0x223bcfc, (=0x221c)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	mov     r2, r4
	bl      Function_223b7a0
	mov     r6, #0xce
	mov     r5, #0x0
	mov     r7, #0x1
	lsl     r6, r6, #2
.thumb
branch_223bbc6: @ 223bbc6 :thumb
	ldr     r0, [r4, r6]
	mov     r1, r7
	bl      0x2021cac
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x2
	blt     branch_223bbc6
.thumb
branch_223bbd6: @ 223bbd6 :thumb
	b       branch_223bcea
@ 0x223bbd8

.thumb
branch_223bbd8: @ 223bbd8 :thumb
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	sub     r2, #0x10
	mov     r3, #0x1e
	bl      0x200aae0
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223bc12

.thumb
branch_223bc12: @ 223bc12 :thumb
	mov     r0, #0x1
	bl      0x200ac1c
	cmp     r0, #0x0
	beq     branch_223bcea
	ldr     r0, [pc, #0xd8] @ 0x223bcf8, (=0x2218)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	mov     r2, #0x7f
	ldr     r3, [pc, #0xd8] @ 0x223bd04, (=0x20f0)
	lsl     r2, r2, #4
	mov     r1, r0
	mov     r0, #0x0
	add     r2, r4, r2
	add     r3, r4, r3
	bl      Function_223c800
	ldr     r1, [pc, #0xcc] @ 0x223bd08, (=0x2110)
	ldr     r2, [pc, #0xbc] @ 0x223bcf8, (=0x2218)
	str     r0, [r4, r1]
	str     r4, [sp, #0x0]
	ldr     r0, [pc, #0xc8] @ 0x223bd0c, (=0x438)
	mov     r1, #0x0
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	mov     r3, r1
	bl      Function_223c8d8
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_223bcea
@ 0x223bc56

.thumb
branch_223bc56: @ 223bc56 :thumb
	mov     r1, #0x0
	mov     r0, #0x2
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	sub     r2, #0x10
	mov     r3, #0x17
	bl      0x200aae0
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r0, [r4, #0x4c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4c]
	mov     r0, r4
	bl      Function_223e8b4
	b       branch_223bcea
@ 0x223bc96

.thumb
branch_223bc96: @ 223bc96 :thumb
	mov     r0, #0x2
	bl      0x200ac1c
	cmp     r0, #0x0
	beq     branch_223bcea
	ldr     r0, [pc, #0x6c] @ 0x223bd10, (=0x5a8)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200e084
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x223bd14, (=0x588)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, #0x2
	bl      0x2017df0
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223bcea

.thumb
branch_223bcea: @ 223bcea :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223bcf0

.word 0x445 @ 0x223bcf0
.word 0x369c @ 0x223bcf4
.word 0x2218 @ 0x223bcf8
.word 0x221c @ 0x223bcfc
.word 0x2224 @ 0x223bd00
.word 0x20f0 @ 0x223bd04
.word 0x2110 @ 0x223bd08
.word 0x438 @ 0x223bd0c
.word 0x5a8 @ 0x223bd10
.word 0x588 @ 0x223bd14
.thumb
Function_223bd18: @ 223bd18 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x2073c88
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x9b
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r4, #0x6]
	mov     r0, r5
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r4, #0x5]
	mov     r0, r5
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0xa2
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	bl      0x2073cd4
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223bd90
	ldrb    r1, [r4, #0x6]
	mov     r2, #0x1c
	bl      0x20759cc
	strh    r0, [r4, #0xa]
.thumb
branch_223bd90: @ 223bd90 :thumb
	cmp     r6, #0x0
	beq     branch_223bda0
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	bl      0x207d2d0
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2]
.thumb
branch_223bda0: @ 223bda0 :thumb
	pop     {r3-r7,pc}
@ 0x223bda2


.align 2, 0


.thumb
Function_223bda4: @ 223bda4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x6
	blx     _s32_div_f
	ldr     r0, [pc, #0x5c] @ 0x223be10, (=0x221c)
	mov     r7, r1
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x6
	blx     _s32_div_f
	mov     r1, r6
	mov     r2, #0x7f
	mov     r6, #0x32
	mov     r3, r0
	lsl     r2, r2, #4
	lsl     r6, r6, #6
	mul     r6, r3
	add     r2, r5, r2
	add     r2, r2, r6
	ldr     r6, [pc, #0x38] @ 0x223be14, (=0x20f0)
	lsl     r3, r3, #4
	add     r6, r5, r6
	mov     r0, #0x1
	add     r3, r6, r3
	bl      Function_223c800
	ldr     r1, [pc, #0x30] @ 0x223be18, (=0x2110)
	ldr     r2, [pc, #0x24] @ 0x223be10, (=0x221c)
	str     r0, [r5, r1]
	str     r5, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223be1c, (=0x438)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r3, r7
	bl      Function_223c8d8
	lsl     r1, r4, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x1c] @ 0x223be20, (=0x694)
	ldr     r0, [pc, #0x20] @ 0x223be24, (=0x40c)
	ldrb    r1, [r2, r1]
	ldr     r0, [r5, r0]
	.hword  0x1d49 @ add r1, r1, #0x5
	bl      0x2021d6c
	pop     {r3-r7,pc}
@ 0x223be10

.word 0x221c @ 0x223be10
.word 0x20f0 @ 0x223be14
.word 0x2110 @ 0x223be18
.word 0x438 @ 0x223be1c
.word 0x694 @ 0x223be20
.word 0x40c @ 0x223be24
.thumb
Function_223be28: @ 223be28 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	cmp     r1, #0xc
	beq     branch_223bebc
	cmp     r1, #0x6
	bge     branch_223bea2
	ldr     r0, [pc, #0x84] @ 0x223bec0, (=0x2218)
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	blx     _s32_div_f
	mov     r2, #0x7f
	mov     r3, r0
	lsl     r2, r2, #4
	mov     r1, r4
	add     r4, r5, r2
	mov     r2, #0x32
	lsl     r2, r2, #6
	mul     r2, r3
	add     r2, r4, r2
	ldr     r4, [pc, #0x60] @ 0x223bec4, (=0x20f0)
	lsl     r3, r3, #4
	add     r4, r5, r4
	mov     r0, #0x0
	add     r3, r4, r3
	bl      Function_223c800
	ldr     r1, [pc, #0x54] @ 0x223bec8, (=0x2110)
	mov     r3, r5
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x54] @ 0x223becc, (=0x438)
	ldr     r2, [pc, #0x44] @ 0x223bec0, (=0x2218)
	str     r5, [sp, #0x0]
	add     r3, #0x88
	ldr     r2, [r5, r2]
	ldr     r3, [r3, #0x0]
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_223c8d8
	ldr     r0, [pc, #0x40] @ 0x223becc, (=0x438)
	mov     r1, #0x1
	add     r0, r5, r0
	mov     r2, r5
	bl      Function_223cb34
	ldr     r0, [pc, #0x38] @ 0x223bed0, (=0x40c)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2021cac
	pop     {r3-r5,pc}
@ 0x223bea2

.thumb
branch_223bea2: @ 223bea2 :thumb
	bl      Function_223bda4
	ldr     r0, [pc, #0x24] @ 0x223becc, (=0x438)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, r5
	bl      Function_223cb34
	ldr     r0, [pc, #0x20] @ 0x223bed4, (=0x408)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2021cac
.thumb
branch_223bebc: @ 223bebc :thumb
	pop     {r3-r5,pc}
@ 0x223bebe


.align 2


.word 0x2218 @ 0x223bec0
.word 0x20f0 @ 0x223bec4
.word 0x2110 @ 0x223bec8
.word 0x438 @ 0x223becc
.word 0x40c @ 0x223bed0
.word 0x408 @ 0x223bed4
.thumb
Function_223bed8: @ 223bed8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x98] @ 0x223bf78, (=0x2214)
	mov     r4, r0
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_223beee
	blx     r1
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r4, r1]
.thumb
branch_223beee: @ 223beee :thumb
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x3
	bhi     branch_223bf18
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bf04

Jumppoints_223bf04:
.hword branch_223bf18 - Jumppoints_223bf04 - 2
.hword branch_223bf18 - Jumppoints_223bf04 - 2
.hword branch_223bf0c - Jumppoints_223bf04 - 2
.hword branch_223bf12 - Jumppoints_223bf04 - 2
.thumb
branch_223bf0c: @ 223bf0c :thumb
	add     sp, #0x4
	mov     r0, #0x2
	pop     {r3,r4,pc}
@ 0x223bf12

.thumb
branch_223bf12: @ 223bf12 :thumb
	add     sp, #0x4
	mov     r0, #0x3
	pop     {r3,r4,pc}
@ 0x223bf18

.thumb
branch_223bf18: @ 223bf18 :thumb
	mov     r0, #0x0
	mov     r2, #0xce
	str     r0, [sp, #0x0]
	mov     r0, #0x53
	lsl     r2, r2, #2
	mov     r3, #0x69
	lsl     r0, r0, #2
	mov     r1, r4
	lsl     r3, r3, #4
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, #0x88
	add     r3, r4, r3
	bl      Function_223cff4
	cmp     r0, #0x0
	beq     branch_223bf40
	mov     r0, r4
	bl      Function_223be28
.thumb
branch_223bf40: @ 223bf40 :thumb
	mov     r0, #0x1
	mov     r2, #0xcf
	str     r0, [sp, #0x0]
	mov     r0, #0x15
	lsl     r2, r2, #2
	mov     r3, #0x69
	lsl     r0, r0, #4
	mov     r1, r4
	lsl     r3, r3, #4
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, #0x8c
	add     r3, r4, r3
	bl      Function_223cff4
	mov     r0, r4
	add     r0, #0x90
	bl      Function_223cef0
	mov     r0, r4
	add     r4, #0x88
	ldr     r2, [r4, #0x0]
	mov     r1, #0x17
	bl      Function_223d058
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223bf78

.word 0x2214 @ 0x223bf78
.thumb
Function_223bf7c: @ 223bf7c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x2d
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	mov     r0, #0x2e
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	mov     r0, #0xb9
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	mov     r7, #0xb
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #6
.thumb
branch_223bfb0: @ 223bfb0 :thumb
	ldr     r0, [r5, r7]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223bfb0
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x2021964
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	pop     {r3-r7,pc}
@ 0x223bfd6


.align 2, 0


.thumb
Function_223bfd8: @ 223bfd8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x50] @ 0x223c030, (=0x2218)
	mov     r6, #0x0
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_223c006
	ldr     r7, [pc, #0x44] @ 0x223c030, (=0x2218)
	mov     r4, r5
.thumb
branch_223bfee: @ 223bfee :thumb
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [r5, r7]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r6, r0
	blt     branch_223bfee
.thumb
branch_223c006: @ 223c006 :thumb
	ldr     r0, [pc, #0x2c] @ 0x223c034, (=0x221c)
	mov     r6, #0x0
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_223c02e
	ldr     r7, [pc, #0x1c] @ 0x223c034, (=0x221c)
	mov     r4, r5
.thumb
branch_223c018: @ 223c018 :thumb
	ldr     r0, [pc, #0x1c] @ 0x223c038, (=0x7a8)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [r5, r7]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r6, r0
	blt     branch_223c018
.thumb
branch_223c02e: @ 223c02e :thumb
	pop     {r3-r7,pc}
@ 0x223c030

.word 0x2218 @ 0x223c030
.word 0x221c @ 0x223c034
.word 0x7a8 @ 0x223c038
.thumb
Function_223c03c: @ 223c03c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, r5
	bl      0x2006840
	ldr     r1, [r4, #0x5c]
	str     r1, [r0, #0x28]
	mov     r0, r4
	bl      Function_223bfd8
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0x74] @ 0x223c0d8, (=0x221c)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	mov     r0, r4
	bl      Function_223bf7c
	ldr     r0, [pc, #0x6c] @ 0x223c0dc, (=0x438)
	add     r0, r4, r0
	bl      Function_223ec04
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_223c44c
	mov     r1, #0x5d
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, #0x1a
	bl      0x2018238
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200b190
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	mov     r0, #0x5e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20237bc
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x1a
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223c0d6


.align 2


.word 0x221c @ 0x223c0d8
.word 0x438 @ 0x223c0dc
.thumb
Function_223c0e0: @ 223c0e0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x201c2b8
	ldr     r0, [pc, #0x58] @ 0x223c14c, (=0x2110)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223c132
	.hword  0x1e44 @ sub r4, r0, #0x1
	mov     r0, #0x7f
	mov     r2, #0x32
	lsl     r0, r0, #4
	lsl     r2, r2, #6
	mov     r1, r4
	add     r0, r5, r0
	mul     r1, r2
	add     r0, r0, r1
	blx     0x20c0314
	lsl     r1, r4, #4
	mov     r0, #0x20
	add     r2, r5, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	add     r3, r4, #0x2
	ldr     r1, [pc, #0x34] @ 0x223c150, (=0x20f0)
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldrh    r1, [r2, r1]
	mov     r2, #0x5
	lsl     r3, r3, #5
	bl      0x2006e84
	ldr     r0, [pc, #0x1c] @ 0x223c14c, (=0x2110)
	mov     r1, #0x0
	str     r1, [r5, r0]
.thumb
branch_223c132: @ 223c132 :thumb
	bl      0x201dcac
	bl      0x200a858
	ldr     r3, [pc, #0x18] @ 0x223c154, (=0x27e0000)
	ldr     r1, [pc, #0x18] @ 0x223c158, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223c14a


.align 2


.word 0x2110 @ 0x223c14c
.word 0x20f0 @ 0x223c150
.word 0x27e0000 @ 0x223c154
.word 0x3ff8 @ 0x223c158
.thumb
Function_223c15c: @ 223c15c :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223c178, (=0x223ef2c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223c166: @ 223c166 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223c166
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223c178

.word 0x223ef2c @ 0x223c178
.thumb
Function_223c17c: @ 223c17c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xd4
	ldr     r4, [pc, #0x1c8] @ 0x223c34c, (=0x223ee30)
	add     r3, sp, #0xc4
	mov     r5, r0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r4, [pc, #0x1b8] @ 0x223c350, (=0x223eed8)
	add     r3, sp, #0xa8
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
	mov     r0, r5
	mov     r3, r1
	bl      0x20183c4
	mov     r0, r5
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r4, [pc, #0x194] @ 0x223c354, (=0x223eea0)
	add     r3, sp, #0x8c
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r4, [pc, #0x170] @ 0x223c358, (=0x223eef4)
	add     r3, sp, #0x70
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r5
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r4, [pc, #0x14c] @ 0x223c35c, (=0x223ef10)
	add     r3, sp, #0x54
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r4, [pc, #0x130] @ 0x223c360, (=0x223ee68)
	add     r3, sp, #0x38
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r1, #0x4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r5
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r4, [pc, #0x10c] @ 0x223c364, (=0x223ee84)
	add     r3, sp, #0x1c
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r4, [pc, #0xf0] @ 0x223c368, (=0x223eebc)
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x1a
	bl      0x2019690
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x1a
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x1a
	bl      0x2019690
	mov     r4, #0x0
	mov     r6, #0x3
	mov     r7, r4
.thumb
branch_223c2c0: @ 223c2c0 :thumb
	lsl     r1, r4, #24
	mov     r2, #0x0
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r3, r2
	bl      0x2019184
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, r7
	bl      0x2019184
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r2, #0x0
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r3, r2
	bl      0x2019184
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x3
	mov     r3, #0x0
	bl      0x2019184
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_223c2c0
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
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223c36c, (=0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	add     sp, #0xd4
	pop     {r4-r7,pc}
@ 0x223c34a


.align 2


.word 0x223ee30 @ 0x223c34c
.word 0x223eed8 @ 0x223c350
.word 0x223eea0 @ 0x223c354
.word 0x223eef4 @ 0x223c358
.word 0x223ef10 @ 0x223c35c
.word 0x223ee68 @ 0x223c360
.word 0x223ee84 @ 0x223c364
.word 0x223eebc @ 0x223c368
.word 0xffff1fff @ 0x223c36c
.thumb
Function_223c370: @ 223c370 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	bl      0x2006840
	mov     r4, r0
	mov     r2, #0x6
	ldr     r0, [pc, #0xb4] @ 0x223c434, (=0x668)
	str     r4, [r5, #0x8]
	mov     r1, #0x4
	str     r1, [r5, r0]
	mov     r3, #0x0
	str     r3, [r5, #0x44]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r3, [r5, r0]
	mov     r0, #0x5b
	lsl     r0, r0, #2
	str     r2, [r5, r0]
	add     r1, r0, #0x4
	str     r2, [r5, r1]
	mov     r1, r5
	add     r1, #0x88
	str     r3, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x8c
	str     r2, [r1, #0x0]
	sub     r0, #0x2c
	str     r3, [r5, r0]
	str     r3, [r5, #0x48]
	ldr     r0, [pc, #0x8c] @ 0x223c438, (=0x223d151)
	ldr     r1, [pc, #0x8c] @ 0x223c43c, (=0x2214)
	str     r3, [r5, #0x4c]
	str     r0, [r5, r1]
	str     r3, [r5, #0x60]
	str     r3, [r5, #0x64]
	ldr     r0, [pc, #0x88] @ 0x223c440, (=0x2110)
	str     r3, [r5, #0x5c]
	str     r3, [r5, r0]
	ldr     r0, [pc, #0x84] @ 0x223c444, (=0x36a0)
	.hword  0x1fd6 @ sub r6, r2, #0x7
	str     r6, [r5, r0]
	add     r2, r0, #0x4
	str     r6, [r5, r2]
	mov     r2, r1
	add     r2, #0xac
	str     r3, [r5, r2]
	mov     r2, r0
	add     r2, #0xc
	str     r3, [r5, r2]
	add     r0, #0x10
	str     r3, [r5, r0]
	add     r0, r1, #0x4
	ldr     r2, [r4, #0x8]
	add     r1, #0x10
	str     r2, [r5, r0]
	ldr     r0, [r4, #0xc]
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x10]
	str     r0, [r5, #0x4]
	bl      0x2079fec
	mov     r1, r0
	mov     r0, #0x1a
	bl      0x2018144
	ldr     r1, [pc, #0x54] @ 0x223c448, (=0x221c)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x6
	bl      0x207a014
	bl      0x2079fec
	mov     r2, r0
	ldr     r0, [pc, #0x40] @ 0x223c448, (=0x221c)
	mov     r1, #0xff
	ldr     r0, [r5, r0]
	blx     0x20d5124
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1a
	bl      0x2025f04
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x8
	ldr     r0, [r5, r1]
	mov     r1, #0x2a
	bl      0x200b1ec
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x14]
	bl      0x2038f8c
	pop     {r4-r6,pc}
@ 0x223c434

.word 0x668 @ 0x223c434
.word 0x223d151 @ 0x223c438
.word 0x2214 @ 0x223c43c
.word 0x2110 @ 0x223c440
.word 0x36a0 @ 0x223c444
.word 0x221c @ 0x223c448
.thumb
Function_223c44c: @ 223c44c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	pop     {r4,pc}
@ 0x223c488

.thumb
Function_223c488: @ 223c488 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r2
	mov     r2, #0x1
	mov     r4, r3
	str     r2, [sp, #0x0]
	ldr     r2, [sp, #0x20]
	ldr     r3, [sp, #0x24]
	bl      0x200723c
	mov     r6, r0
	beq     branch_223c4da
	add     r1, sp, #0x4
	blx     0x20a7248
	cmp     r0, #0x0
	beq     branch_223c4d4
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_223c4b6
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	str     r0, [sp, #0x1c]
.thumb
branch_223c4b6: @ 223c4b6 :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      0x2019fe4
	cmp     r0, #0x0
	beq     branch_223c4d4
	ldr     r2, [sp, #0x4]
	lsl     r1, r4, #24
	ldr     r3, [sp, #0x1c]
	mov     r0, r5
	lsr     r1, r1, #24
	add     r2, #0xc
	bl      0x2019574
.thumb
branch_223c4d4: @ 223c4d4 :thumb
	mov     r0, r6
	bl      0x20181c4
.thumb
branch_223c4da: @ 223c4da :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223c4de


.align 2, 0


.thumb
Function_223c4e0: @ 223c4e0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x2
	mov     r4, r0
	bl      0x2019fe4
	mov     r2, r0
	mov     r0, #0x0
	mov     r3, #0x6
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x2
	lsl     r3, r3, #8
	bl      0x2019460
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223c502


.align 2, 0


.thumb
Function_223c504: @ 223c504 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r1, #0x5d
	lsl     r1, r1, #2
	ldr     r4, [r0, r1]
	sub     r1, #0x54
	str     r1, [sp, #0x0]
	mov     r0, #0x1a
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, r1
	bl      0x2007130
	mov     r1, #0x0
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      0x2007130
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x1a
	bl      0x2002e98
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x1a
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x1a
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r4
	mov     r3, #0x2
	bl      Function_223c488
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x1a
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, r4
	mov     r3, #0x3
	bl      0x200710c
	mov     r0, #0x0
	mov     r1, #0x40
	mov     r2, #0x1a
	bl      0x2002e98
	mov     r0, #0x0
	mov     r1, #0x60
	mov     r2, #0x1a
	bl      0x2002e7c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x1a
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, #0x5
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x1a
	mov     r1, #0x5
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r1
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x1a
	mov     r1, #0x6
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r1
	bl      0x200710c
	mov     r0, #0x4
	mov     r1, #0x40
	mov     r2, #0x1a
	bl      0x2002e98
	mov     r0, #0x4
	mov     r1, #0x60
	mov     r2, #0x1a
	bl      0x2002e7c
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223c63c

.thumb
Function_223c63c: @ 223c63c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x223c668, (=0x223ee40)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0x14
	mov     r1, #0x1a
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223c668

.word 0x223ee40 @ 0x223c668
.thumb
Function_223c66c: @ 223c66c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r7, r1
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7f
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x1a
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r1, #0x66
	lsl     r1, r1, #2
	mov     r0, #0x2d
	add     r1, r5, r1
	mov     r2, #0x1a
	bl      0x20095c4
	mov     r1, #0x65
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223c6a8: @ 223c6a8 :thumb
	mov     r0, #0x2
	mov     r1, r6
	mov     r2, #0x1a
	bl      0x2009714
	mov     r1, #0xb
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_223c6a8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x1a
	str     r0, [sp, #0x8]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r2, #0x7
	bl      0x2009a4c
	mov     r1, #0x2d
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x9
	str     r0, [sp, #0x8]
	mov     r0, #0x1a
	sub     r1, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r3, r2
	bl      0x2009b04
	mov     r1, #0xb5
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1a
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x8
	mov     r3, #0x1
	bl      0x2009bc4
	mov     r1, #0xb6
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x1a
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x9
	mov     r3, #0x1
	bl      0x2009bc4
	mov     r1, #0xb7
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1a
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0xa
	bl      0x2009a4c
	mov     r1, #0x2e
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x1a
	mov     r2, #0x0
	sub     r1, #0x1c
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r3, r2
	bl      0x2009b04
	mov     r1, #0xb9
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1a
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0xb
	bl      0x2009bc4
	mov     r1, #0xba
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x1a
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0xc
	bl      0x2009bc4
	mov     r1, #0xbb
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	bl      0x200a328
	mov     r0, #0x2e
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      0x200a328
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200a5c8
	mov     r0, #0xb9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200a5c8
	bl      0x2079fd0
	mov     r3, #0x80
	mov     r1, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x13
	mov     r2, #0x1
	add     r3, #0xc0
	bl      0x2006e84
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223c800

.thumb
Function_223c800: @ 223c800 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r4, r2
	mov     r0, r3
	mov     r2, #0x2
	mov     r6, r1
	str     r3, [sp, #0x20]
	bl      0x2075ef4
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r1, #0xa
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r4, [sp, #0xc]
	str     r7, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r1, #0x2
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x20]
	ldrh    r0, [r0, #0x0]
	ldrh    r1, [r1, #0x2]
	mov     r2, #0x1a
	bl      0x20136a4
	mov     r1, #0x32
	mov     r0, r4
	lsl     r1, r1, #6
	blx     0x20c2c54
	add     r0, r5, #0x1
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x223c85e


.align 2, 0


.thumb
Function_223c860: @ 223c860 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r0, #0x14
	mov     r1, #0x1a
	str     r3, [sp, #0x8]
	bl      0x2023790
	mov     r4, r0
	mov     r0, r6
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x77
	mov     r2, r4
	bl      GetPkmnData
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r0, [sp, #0x20]
	ldr     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_223ec78
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223c8ac

.thumb
Function_223c8ac: @ 223c8ac :thumb
	push    {r4,lr}
	ldrh    r0, [r0, #0x0]
	mov     r4, r3
	cmp     r0, #0x1d
	beq     branch_223c8ba
	cmp     r0, #0x20
	bne     branch_223c8d2
.thumb
branch_223c8ba: @ 223c8ba :thumb
	mov     r0, r1
	mov     r1, r2
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4d
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223c8d2
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x223c8d2

.thumb
branch_223c8d2: @ 223c8d2 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x223c8d6


.align 2, 0


.thumb
Function_223c8d8: @ 223c8d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r7, r0
	mov     r5, r1
	mov     r0, r2
	mov     r1, r3
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r4, [sp, #0x50]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x2
	bl      0x20765ac
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	lsl     r0, r0, #10
	add     r6, r4, r0
	lsl     r0, r5, #2
	str     r0, [sp, #0x14]
	ldr     r0, [r6, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0xc
	mov     r3, r5
	mul     r3, r0
	ldr     r1, [pc, #0x210] @ 0x223cb20, (=0x223ef54)
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x210] @ 0x223cb24, (=0x223ef58)
	ldr     r1, [r1, r3]
	ldr     r3, [r2, r3]
	ldr     r2, [sp, #0x10]
	ldr     r0, [r6, r0]
	add     r2, r2, r3
	add     r2, #0xc0
	bl      Function_223e87c
	cmp     r5, #0x0
	bne     branch_223c93a
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #4
	add     r2, r4, r1
	ldr     r1, [pc, #0x1f4] @ 0x223cb28, (=0x69a)
	ldr     r0, [r6, r0]
	ldrh    r1, [r2, r1]
	bl      0x2021d0c
.thumb
branch_223c93a: @ 223c93a :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, #0x1
	lsl     r1, r1, #4
	add     r2, r4, r1
	ldr     r1, [pc, #0x1e8] @ 0x223cb2c, (=0x694)
	lsl     r0, r0, #10
	add     r6, r4, r0
	add     r0, r5, #0x2
	ldrb    r1, [r2, r1]
	lsl     r0, r0, #2
	str     r0, [sp, #0x18]
	ldr     r0, [r6, r0]
	.hword  0x1d49 @ add r1, r1, #0x5
	bl      0x2021d6c
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1
	ldr     r0, [r6, r0]
	bl      0x2021cac
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	add     r0, r7, r0
	mov     r3, #0x9
	bl      Function_223c860
	mov     r0, #0x6
	mov     r1, r5
	mul     r1, r0
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0xc]
	add     r0, r0, r1
	lsl     r0, r0, #4
	str     r0, [sp, #0x38]
	ldr     r3, [sp, #0x38]
	mov     r0, #0x69
	lsl     r0, r0, #4
	add     r3, r4, r3
	str     r3, [sp, #0x34]
	mov     r12, r0
	mov     r3, r12
	add     r1, r4, r0
	ldr     r0, [sp, #0x38]
	ldr     r6, [sp, #0x34]
	add     r3, #0x8
	add     r0, r1, r0
	ldrh    r3, [r6, r3]
	ldr     r1, [sp, #0x8]
	bl      Function_223c8ac
	ldr     r1, [pc, #0x184] @ 0x223cb30, (=0x695)
	add     r2, r4, r1
	ldr     r1, [sp, #0x38]
	str     r2, [sp, #0x1c]
	ldrb    r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_223c9b8
	mov     r0, #0x2
.thumb
branch_223c9b8: @ 223c9b8 :thumb
	cmp     r0, #0x0
	beq     branch_223c9d8
	cmp     r0, #0x1
	beq     branch_223c9fe
	cmp     r0, #0x2
	bne     branch_223ca22
	add     r0, r5, #0x4
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	b       branch_223ca22
@ 0x223c9d8

.thumb
branch_223c9d8: @ 223c9d8 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	add     r0, r4, r0
	str     r0, [sp, #0x20]
	add     r0, r5, #0x4
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x20]
	str     r0, [sp, #0x24]
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	ldr     r0, [r1, r0]
	mov     r1, #0x17
	bl      0x2021d6c
	b       branch_223ca22
@ 0x223c9fe

.thumb
branch_223c9fe: @ 223c9fe :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	add     r0, r4, r0
	str     r0, [sp, #0x28]
	add     r0, r5, #0x4
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x28]
	str     r0, [sp, #0x2c]
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r1, [sp, #0x28]
	ldr     r0, [sp, #0x2c]
	ldr     r0, [r1, r0]
	mov     r1, #0x16
	bl      0x2021d6c
.thumb
branch_223ca22: @ 223ca22 :thumb
	ldr     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x38]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_223caa8
	mov     r0, #0xa
	mov     r1, #0x1a
	bl      0x2023790
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x1c
	lsl     r0, r0, #4
	str     r0, [sp, #0x30]
	add     r0, r7, r0
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x29
	mov     r2, r6
	bl      0x200b1b8
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r1, r6
	add     r0, r7, r0
	mov     r2, #0x9
	mov     r3, #0xff
	bl      Function_223ec78
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      0x20238a0
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	mov     r3, #0x0
	add     r0, r7, r0
	mov     r1, r6
	mov     r2, #0x9
	str     r3, [sp, #0x4]
	bl      Function_223ec78
	mov     r0, r6
	bl      0x20237bc
	b       branch_223cab4
@ 0x223caa8

.thumb
branch_223caa8: @ 223caa8 :thumb
	mov     r0, r5
	add     r0, #0x1c
	lsl     r0, r0, #4
	add     r0, r7, r0
	bl      0x201acf4
.thumb
branch_223cab4: @ 223cab4 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, #0x19
	add     r0, #0x1e
	lsl     r0, r0, #4
	str     r3, [sp, #0x4]
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	add     r0, r7, r0
	mov     r2, #0x7
	bl      Function_223ec78
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	add     r5, #0x20
	lsl     r0, r0, #16
	lsl     r4, r5, #4
	lsr     r6, r0, #16
	add     r0, r7, r4
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x14
	mov     r1, #0x1a
	bl      0x2023790
	mov     r1, r6
	mov     r2, #0x1a
	mov     r5, r0
	bl      0x207cfa0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	add     r0, r7, r4
	mov     r1, r5
	mov     r2, #0x9
	str     r3, [sp, #0x4]
	bl      Function_223ec78
	mov     r0, r5
	bl      0x20237bc
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x223cb1e


.align 2


.word 0x223ef54 @ 0x223cb20
.word 0x223ef58 @ 0x223cb24
.word 0x69a @ 0x223cb28
.word 0x694 @ 0x223cb2c
.word 0x695 @ 0x223cb30
.thumb
Function_223cb34: @ 223cb34 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	lsl     r0, r4, #2
	add     r1, r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r0, r4, #0x2
	lsl     r0, r0, #2
	add     r1, r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r0, r4, #0x4
	lsl     r0, r0, #2
	add     r1, r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, r4
	add     r0, #0x1a
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      0x201acf4
	mov     r0, r4
	add     r0, #0x1c
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      0x201acf4
	mov     r0, r4
	add     r0, #0x1e
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      0x201acf4
	add     r4, #0x20
	lsl     r0, r4, #4
	add     r0, r5, r0
	bl      0x201acf4
	pop     {r4-r6,pc}
@ 0x223cba0

.thumb
Function_223cba0: @ 223cba0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, #0xb
	str     r1, [sp, #0xc]
	mov     r0, #0x2
	lsl     r2, r2, #6
	str     r0, [sp, #0x10]
	ldr     r0, [r5, r2]
	mov     r3, r1
	str     r0, [sp, #0x14]
	add     r0, r2, #0x4
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x18]
	mov     r0, r2
	add     r0, #0x8
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x1c]
	mov     r0, r2
	add     r0, #0xc
	ldr     r0, [r5, r0]
	add     r2, #0x30
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	add     r0, r5, r2
	mov     r2, r1
	str     r1, [sp, #0x28]
	bl      0x20093b4
	mov     r1, #0x1
	mov     r3, #0xb
	str     r1, [sp, #0x0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r3, r3, #6
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
	add     r3, #0x54
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r5, r3
	mov     r2, r1
	mov     r3, r1
	bl      0x20093b4
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	str     r0, [sp, #0x2c]
	mov     r0, #0x2f
	lsl     r0, r0, #4
	add     r0, r5, r0
	str     r0, [sp, #0x30]
	mov     r0, #0x6
	lsl     r1, r1, #16
	lsl     r0, r0, #16
	str     r0, [sp, #0x38]
	lsr     r0, r1, #5
	mov     r7, #0x0
	str     r1, [sp, #0x34]
	str     r7, [sp, #0x3c]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	strh    r7, [r0, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	mov     r0, #0x1a
	ldr     r6, [pc, #0x1d0] @ 0x223ce28, (=0x223ef9c)
	str     r7, [sp, #0x50]
	str     r0, [sp, #0x58]
	mov     r4, r5
.thumb
branch_223cc5c: @ 223cc5c :thumb
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldr     r0, [r6, #0x4]
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0xce
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, r4
	mov     r1, #0xce
	add     r0, #0x88
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, r7
	bl      Function_223cf68
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x64
	bl      0x2021f58
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x8
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x2
	blt     branch_223cc5c
	ldr     r6, [pc, #0x174] @ 0x223ce28, (=0x223ef9c)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223ccb8: @ 223ccb8 :thumb
	ldr     r0, [r6, #0x0]
	add     r0, #0x10
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldr     r0, [r6, #0x4]
	.hword  0x1f80 @ sub r0, r0, #0x6
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0x37
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	add     r1, r7, #0x5
	bl      0x2021d6c
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      0x2021f58
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x8
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0xc
	blt     branch_223ccb8
	ldr     r6, [pc, #0x118] @ 0x223ce28, (=0x223ef9c)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223cd12: @ 223cd12 :thumb
	ldr     r0, [r6, #0x0]
	add     r0, #0x24
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldr     r0, [r6, #0x4]
	add     r0, #0x10
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	mov     r0, #0x0
	str     r0, [sp, #0x50]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0x3a
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      0x2021f58
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x8
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0xc
	blt     branch_223cd12
	ldr     r6, [pc, #0xd4] @ 0x223ce28, (=0x223ef9c)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223cd58: @ 223cd58 :thumb
	ldr     r0, [r6, #0x0]
	add     r0, #0x2d
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldr     r0, [r6, #0x4]
	add     r0, #0x10
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	mov     r0, #0x0
	str     r0, [sp, #0x50]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0x3d
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      0x2021f58
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x8
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0xc
	blt     branch_223cd58
	mov     r0, #0x6
	lsl     r0, r0, #16
	str     r0, [sp, #0x34]
	mov     r0, #0x42
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	ldr     r1, [pc, #0x80] @ 0x223ce2c, (=0x418)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [pc, #0x74] @ 0x223ce2c, (=0x418)
	mov     r1, #0x14
	ldr     r0, [r5, r0]
	bl      0x2021d6c
	ldr     r0, [pc, #0x68] @ 0x223ce2c, (=0x418)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2021cac
	mov     r0, #0xc5
	lsl     r0, r0, #2
	ldr     r4, [pc, #0x60] @ 0x223ce30, (=0x223ef54)
	mov     r6, #0x0
	add     r7, r5, r0
.thumb
branch_223cdd4: @ 223cdd4 :thumb
	ldr     r0, [r4, #0x0]
	str     r7, [sp, #0x30]
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldr     r0, [r4, #0x4]
	lsl     r1, r0, #12
	mov     r0, #0x3
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x38]
	mov     r0, #0x2
	str     r0, [sp, #0x54]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0x1
	lsl     r1, r1, #10
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x1
	lsl     r0, r0, #10
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x1
	lsl     r0, r0, #10
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x8]
	bl      0x2021d6c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x6
	blt     branch_223cdd4
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x223ce28

.word 0x223ef9c @ 0x223ce28
.word 0x418 @ 0x223ce2c
.word 0x223ef54 @ 0x223ce30
.thumb
Function_223ce34: @ 223ce34 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x38] @ 0x223ce70, (=0x21bf67c)
	mov     r1, #0x0
	ldr     r3, [r3, #0x4c]
	mov     r4, #0x40
	mov     r2, r1
	tst     r4, r3
	beq     branch_223ce48
	mov     r2, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_223ce48: @ 223ce48 :thumb
	mov     r4, #0x80
	tst     r4, r3
	beq     branch_223ce52
	mov     r2, #0x2
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_223ce52: @ 223ce52 :thumb
	mov     r4, #0x20
	tst     r4, r3
	beq     branch_223ce5c
	mov     r2, #0x3
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_223ce5c: @ 223ce5c :thumb
	mov     r4, #0x10
	tst     r3, r4
	beq     branch_223ce66
	mov     r2, #0x4
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_223ce66: @ 223ce66 :thumb
	cmp     r1, #0x0
	beq     branch_223ce6c
	str     r2, [r0, #0x0]
.thumb
branch_223ce6c: @ 223ce6c :thumb
	pop     {r3,r4}
	bx      lr
@ 0x223ce70

.word 0x21bf67c @ 0x223ce70



.thumb
Function_223ce74: @ 223ce74 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x6
	bge     branch_223cee2
	ldr     r0, [pc, #0x60] @ 0x223cee4, (=Unknown_223ee28)
	bl      0x2022664
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_223cee2
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x50] @ 0x223cee8, (=0x695)
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldrb    r0, [r1, r2]
	cmp     r0, #0x0
	bne     branch_223cee2
	.hword  0x1f50 @ sub r0, r2, #0x5
	.hword  0x1c52 @ add r2, r2, #0x1
	ldrh    r0, [r1, r0]
	ldrb    r2, [r1, r2]
	ldr     r1, [pc, #0x40] @ 0x223ceec, (=0x1b9)
	cmp     r0, r1
	bne     branch_223cec2
	ldr     r0, [r4, #0x4]
	bl      0x202cc98
	mov     r1, #0x0
	mov     r2, #0x64
	mov     r3, r1
	bl      0x20063e4
	b       branch_223ceca
@ 0x223cec2

.thumb
branch_223cec2: @ 223cec2 :thumb
	lsl     r1, r2, #24
	lsr     r1, r1, #24
	bl      0x2005844
.thumb
branch_223ceca: @ 223ceca :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	add     r4, r4, r0
	lsl     r6, r5, #2
	ldr     r0, [r4, r6]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [r4, r6]
	add     r1, r5, #0x4
	bl      0x2021d6c
branch_223cee2: @ 223cee2 :thumb
	pop     {r4-r6,pc}
@ 0x223cee4

.word Unknown_223ee28 @ 0x223cee4
.word 0x695 @ 0x223cee8
.word 0x1b9 @ 0x223ceec



.thumb
Function_223cef0: @ 223cef0 :thumb
	push    {r3,lr}
	ldrh    r1, [r0, #0x0]
	add     r1, #0x14
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x5a
	lsl     r1, r1, #2
	cmp     r2, r1
	bls     branch_223cf06
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
.thumb
branch_223cf06: @ 223cf06 :thumb
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	mov     r1, #0xa
	mul     r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	add     r0, #0xf
	lsl     r1, r0, #5
	mov     r0, #0x1d
	orr     r1, r0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x0
	mov     r1, #0x3a
	mov     r2, #0x2
	blx     0x20c0160
	pop     {r3,pc}
@ 0x223cf30

.thumb
Function_223cf30: @ 223cf30 :thumb
	push    {r3-r6}
	mov     r5, #0x18
	mul     r5, r0
	ldr     r6, [pc, #0x2c] @ 0x223cf64, (=0x223f004)
	mov     r0, #0x6
	mov     r4, #0x0
	add     r5, r6, r5
	mul     r0, r1
	add     r5, r5, r0
	mov     r3, r4
	mov     r1, r5
.thumb
branch_223cf46: @ 223cf46 :thumb
	ldrb    r0, [r1, #0x0]
	lsl     r0, r0, #4
	ldrh    r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_223cf54
	ldrb    r4, [r5, r3]
	b       branch_223cf5c
@ 0x223cf54

.thumb
branch_223cf54: @ 223cf54 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r3, #0x6
	blt     branch_223cf46
.thumb
branch_223cf5c: @ 223cf5c :thumb
	mov     r0, r4
	pop     {r3-r6}
	bx      lr
@ 0x223cf62


.align 2


.word 0x223f004 @ 0x223cf64
.thumb
Function_223cf68: @ 223cf68 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	cmp     r5, #0xd
	blt     branch_223cf7a
	bl      ErrorHandling
.thumb
branch_223cf7a: @ 223cf7a :thumb
	ldr     r1, [pc, #0x64] @ 0x223cfe0, (=0x223ef9c)
	lsl     r0, r5, #3
	ldr     r1, [r1, r0]
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x5c] @ 0x223cfe4, (=0x223efa0)
	ldr     r0, [r1, r0]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	cmp     r5, #0xc
	bne     branch_223cfac
	mov     r0, r6
	bl      0x2021c50
	mov     r1, #0xc
	mov     r2, r4
	mul     r2, r1
	ldr     r1, [pc, #0x48] @ 0x223cfe8, (=0x223ee58)
	mov     r0, r6
	ldr     r1, [r1, r2]
	bl      0x2021d6c
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223cfac

.thumb
branch_223cfac: @ 223cfac :thumb
	mov     r0, r6
	bl      0x2021c50
	cmp     r5, #0x6
	bge     branch_223cfca
	mov     r1, #0xc
	mov     r2, r4
	mul     r2, r1
	ldr     r1, [pc, #0x2c] @ 0x223cfec, (=0x223ee50)
	mov     r0, r6
	ldr     r1, [r1, r2]
	bl      0x2021d6c
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223cfca

.thumb
branch_223cfca: @ 223cfca :thumb
	mov     r1, #0xc
	mov     r2, r4
	mul     r2, r1
	ldr     r1, [pc, #0x1c] @ 0x223cff0, (=0x223ee54)
	mov     r0, r6
	ldr     r1, [r1, r2]
	bl      0x2021d6c
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223cfde


.align 2


.word 0x223ef9c @ 0x223cfe0
.word 0x223efa0 @ 0x223cfe4
.word 0x223ee58 @ 0x223cfe8
.word 0x223ee50 @ 0x223cfec
.word 0x223ee54 @ 0x223cff0
.thumb
Function_223cff4: @ 223cff4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r2, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r2, [sp, #0x18]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r7, #0x0
	cmp     r2, #0x0
	bne     branch_223d034
	cmp     r0, #0x0
	beq     branch_223d02e
	ldr     r0, [r4, #0x0]
	mov     r2, r3
	bl      Function_223cf30
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x18]
	mov     r6, r0
	bl      Function_223cf68
	ldr     r0, [r4, #0x0]
	cmp     r0, r6
	beq     branch_223d02e
	ldr     r0, [pc, #0x18] @ 0x223d040, (=0x5dc)
	bl      0x2005748
	str     r6, [r4, #0x0]
	mov     r7, #0x1
.thumb
branch_223d02e: @ 223d02e :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_223d03c
@ 0x223d034

.thumb
branch_223d034: @ 223d034 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [sp, #0x0]
	bl      Function_223cf68
.thumb
branch_223d03c: @ 223d03c :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x223d040

.word 0x5dc @ 0x223d040
.thumb
Function_223d044: @ 223d044 :thumb
	push    {r3,lr}
	add     r0, sp, #0x0
	strb    r2, [r0, #0x0]
	mov     r0, r1
	add     r1, sp, #0x0
	mov     r2, #0x1
	bl      0x20359dc
	pop     {r3,pc}
@ 0x223d056


.align 2, 0


.thumb
Function_223d058: @ 223d058 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x223d088, (=0x36a0)
	mov     r4, r1
	ldr     r1, [r5, r0]
	mov     r6, r2
	cmp     r6, r1
	bne     branch_223d070
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r4, r0
	beq     branch_223d084
.thumb
branch_223d070: @ 223d070 :thumb
	bl      0x203608c
	mov     r1, r4
	mov     r2, r6
	bl      Function_223d044
	ldr     r0, [pc, #0x8] @ 0x223d088, (=0x36a0)
	str     r6, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r4, [r5, r0]
.thumb
branch_223d084: @ 223d084 :thumb
	pop     {r4-r6,pc}
@ 0x223d086


.align 2


.word 0x36a0 @ 0x223d088
.thumb
Function_223d08c: @ 223d08c :thumb
	mov     r2, #0x59
	lsl     r2, r2, #4
	mul     r2, r1
	add     r0, r0, r2
	bx      lr
@ 0x223d096


.align 2, 0


.thumb
Function_223d098: @ 223d098 :thumb
	push    {r3-r5,lr}
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r5, r1
	mov     r4, r2
	bl      0x2035d78
	cmp     r0, #0x0
	beq     branch_223d0be
	mov     r0, r5
	mov     r1, r4
	bl      Function_223d08c
	mov     r2, #0x59
	mov     r1, r0
	mov     r0, #0x16
	lsl     r2, r2, #4
	bl      0x203597c
.thumb
branch_223d0be: @ 223d0be :thumb
	pop     {r3-r5,pc}
@ 0x223d0c0

.thumb
Function_223d0c0: @ 223d0c0 :thumb
	push    {r3,lr}
	bl      0x202d79c
	mov     r1, r0
	mov     r0, #0x20
	mov     r2, #0xe
	bl      0x20359dc
	pop     {r3,pc}
@ 0x223d0d2


.align 2, 0


.thumb
Function_223d0d4: @ 223d0d4 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r6, r0
	mov     r5, r1
	bl      0x2025ef0
	mov     r1, r0
	mov     r0, r4
	bl      0x20021b0
	mov     r0, r6
	bl      0x2025f20
	str     r0, [r4, #0x10]
	mov     r0, r6
	bl      0x2025fd8
	strb    r0, [r4, #0x14]
	mov     r0, r6
	bl      0x2025fcc
	strb    r0, [r4, #0x15]
	mov     r0, r6
	bl      0x2025f30
	strb    r0, [r4, #0x16]
	mov     r0, #0x0
	mov     r1, r4
.thumb
branch_223d10c: @ 223d10c :thumb
	ldr     r2, [r5, #0x10]
	str     r2, [r1, #0x18]
	ldrb    r3, [r5, #0x15]
	add     r2, r4, r0
	add     r2, #0x58
	strb    r3, [r2, #0x0]
	add     r2, r4, r0
	ldrb    r3, [r5, #0x14]
	add     r2, #0x68
	.hword  0x1d09 @ add r1, r1, #0x4
	strb    r3, [r2, #0x0]
	add     r2, r4, r0
	ldrb    r3, [r5, #0x16]
	add     r2, #0x78
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0x88
	strb    r3, [r2, #0x0]
	cmp     r0, #0x10
	blt     branch_223d10c
	mov     r0, #0x1c
	mov     r1, r4
	mov     r2, #0x88
	bl      0x203597c
	pop     {r4-r6,pc}
@ 0x223d13e


.align 2, 0


.thumb
Function_223d140: @ 223d140 :thumb
	ldr     r3, [pc, #0x8] @ 0x223d14c, (=0x203597d)
	mov     r2, #0xfa
	mov     r1, r0
	mov     r0, #0x1d
	lsl     r2, r2, #2
	bx      r3
@ 0x223d14c

.word 0x203597d @ 0x223d14c
.thumb
Function_223d150: @ 223d150 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x7c] @ 0x223d1d4, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223d186
	ldr     r0, [pc, #0x78] @ 0x223d1d8, (=0x5dc)
	bl      0x2005748
	mov     r0, r4
	mov     r1, #0xc
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_223be28
	mov     r0, r4
	mov     r1, #0xce
	add     r0, #0x88
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, #0x0
	bl      Function_223cf68
	b       branch_223d1ce
@ 0x223d186

.thumb
branch_223d186: @ 223d186 :thumb
	mov     r0, #0x53
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_223ce34
	ldr     r0, [pc, #0x40] @ 0x223d1d4, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223d1ce
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223d1ce
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xc
	bne     branch_223d1b6
	ldr     r1, [pc, #0x2c] @ 0x223d1dc, (=0x223d2c5)
	ldr     r0, [pc, #0x2c] @ 0x223d1e0, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223d1ce
@ 0x223d1b6

.thumb
branch_223d1b6: @ 223d1b6 :thumb
	cmp     r0, #0x6
	bge     branch_223d1c2
	ldr     r1, [pc, #0x28] @ 0x223d1e4, (=0x223da3d)
	ldr     r0, [pc, #0x20] @ 0x223d1e0, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223d1ce
@ 0x223d1c2

.thumb
branch_223d1c2: @ 223d1c2 :thumb
	blt     branch_223d1ce
	cmp     r0, #0xc
	bge     branch_223d1ce
	ldr     r1, [pc, #0x1c] @ 0x223d1e8, (=0x223e4bd)
	ldr     r0, [pc, #0x14] @ 0x223d1e0, (=0x2214)
	str     r1, [r4, r0]
.thumb
branch_223d1ce: @ 223d1ce :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d1d2


.align 2


.word 0x21bf67c @ 0x223d1d4
.word 0x5dc @ 0x223d1d8
.word 0x223d2c5 @ 0x223d1dc
.word 0x2214 @ 0x223d1e0
.word 0x223da3d @ 0x223d1e4
.word 0x223e4bd @ 0x223d1e8
.thumb
Function_223d1ec: @ 223d1ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bne     branch_223d21c
	ldr     r0, [pc, #0xb8] @ 0x223d2b0, (=0x2218)
	ldr     r0, [r5, r0]
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	strb    r0, [r5, #0x1f]
	mov     r0, #0x0
	str     r0, [r5, #0x34]
	bl      0x203608c
	bl      0x2032ee8
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xc
	bl      0x208e9c0
	b       branch_223d256
@ 0x223d21c

.thumb
branch_223d21c: @ 223d21c :thumb
	ldr     r0, [pc, #0x94] @ 0x223d2b4, (=0x221c)
	ldr     r1, [r5, r0]
	str     r1, [r5, #0xc]
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	strb    r0, [r5, #0x1f]
	bl      0x203608c
	mov     r2, #0x1
	ldr     r1, [pc, #0x84] @ 0x223d2b8, (=0x2e14)
	eor     r2, r0
	mov     r0, #0xfb
	lsl     r0, r0, #2
	add     r1, r5, r1
	mul     r0, r2
	add     r0, r1, r0
	str     r0, [r5, #0x34]
	bl      0x203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      0x2032ee8
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xc
	bl      0x208e9c0
.thumb
branch_223d256: @ 223d256 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x1d]
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	blx     _s32_div_f
	mov     r0, r5
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	strb    r0, [r5, #0x1e]
	mov     r0, #0x0
	strh    r0, [r5, #0x24]
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, #0x10]
	bl      0x208c324
	str     r0, [r5, #0x38]
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, #0x30]
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, #0x18]
	str     r0, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, #0x10]
	bl      0x202d79c
	str     r0, [r5, #0x2c]
	mov     r0, r5
	ldr     r1, [pc, #0x24] @ 0x223d2bc, (=0x223f13c)
	add     r0, #0xc
	bl      0x208d720
	mov     r1, r5
	ldr     r0, [pc, #0x1c] @ 0x223d2c0, (=0x20f410c)
	add     r1, #0xc
	mov     r2, #0x1a
	bl      0x20067e8
	str     r0, [r5, #0x40]
	str     r4, [r5, #0x3c]
	pop     {r3-r5,pc}
@ 0x223d2b0

.word 0x2218 @ 0x223d2b0
.word 0x221c @ 0x223d2b4
.word 0x2e14 @ 0x223d2b8
.word 0x223f13c @ 0x223d2bc
.word 0x20f410c @ 0x223d2c0
.thumb
Function_223d2c4: @ 223d2c4 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x223d30c, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x19
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x10] @ 0x223d310, (=0x223d319)
	ldr     r0, [pc, #0x10] @ 0x223d314, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223d30a


.align 2


.word 0x5a8 @ 0x223d30c
.word 0x223d319 @ 0x223d310
.word 0x2214 @ 0x223d314
.thumb
Function_223d318: @ 223d318 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x5d
	ldr     r2, [pc, #0xa4] @ 0x223d3c8, (=0x658)
	lsl     r0, r0, #2
	add     r1, r4, r2
	add     r2, #0xc
	ldr     r0, [r4, r0]
	add     r2, r4, r2
	bl      Function_223ed2c
	cmp     r0, #0x0
	beq     branch_223d33e
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d388
	b       branch_223d3c2
@ 0x223d33e

.thumb
branch_223d33e: @ 223d33e :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x223d3cc, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x1c
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x1
	bl      Function_223d058
	ldr     r1, [pc, #0x50] @ 0x223d3d0, (=0x223da01)
	ldr     r0, [pc, #0x54] @ 0x223d3d4, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	str     r0, [r4, #0x5c]
	b       branch_223d3c2
@ 0x223d388

.thumb
branch_223d388: @ 223d388 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223d3d8, (=0x588)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x1c] @ 0x223d3dc, (=0x223d151)
	ldr     r0, [pc, #0x14] @ 0x223d3d4, (=0x2214)
	str     r1, [r4, r0]
.thumb
branch_223d3c2: @ 223d3c2 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223d3c8

.word 0x658 @ 0x223d3c8
.word 0x5a8 @ 0x223d3cc
.word Function_223da00+1 @ =0x223da01, 0x223d3d0
.word 0x2214 @ 0x223d3d4
.word 0x588 @ 0x223d3d8
.word Function_223d150+1 @ =0x223d151, 0x223d3dc
.thumb
Function_223d3e0: @ 223d3e0 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x223d428, (=0x5a8)
	ldr     r1, [r4, #0x68]
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x10] @ 0x223d42c, (=0x223d435)
	ldr     r0, [pc, #0x10] @ 0x223d430, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223d426


.align 2


.word 0x5a8 @ 0x223d428
.word 0x223d435 @ 0x223d42c
.word 0x2214 @ 0x223d430
.thumb
Function_223d434: @ 223d434 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x223d48c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223d484
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x223d490, (=0x588)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x18] @ 0x223d494, (=0x223d151)
	ldr     r0, [pc, #0x1c] @ 0x223d498, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_223dff4
.thumb
branch_223d484: @ 223d484 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223d48a


.align 2


.word 0x21bf67c @ 0x223d48c
.word 0x588 @ 0x223d490
.word Function_223d150+1 @ =0x223d151, 0x223d494
.word 0x2214 @ 0x223d498
.thumb
Function_223d49c: @ 223d49c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [pc, #0x18] @ 0x223d4bc, (=0x3674)
	mov     r3, r0
	ldr     r0, [r3, r4]
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x223d4c0, (=0x5a8)
	mov     r2, #0x1
	add     r0, r3, r0
	ldr     r3, [r3, r4]
	bl      Function_223ecbc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d4ba


.align 2


.word 0x3674 @ 0x223d4bc
.word 0x5a8 @ 0x223d4c0
.thumb
Function_223d4c4: @ 223d4c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5d
	ldr     r2, [pc, #0x38] @ 0x223d504, (=0x658)
	lsl     r0, r0, #2
	add     r1, r4, r2
	add     r2, #0xc
	ldr     r0, [r4, r0]
	add     r2, r4, r2
	bl      Function_223ed2c
	cmp     r0, #0x0
	beq     branch_223d4e8
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d4f0
	b       branch_223d4fe
@ 0x223d4e8

.thumb
branch_223d4e8: @ 223d4e8 :thumb
	ldr     r1, [pc, #0x1c] @ 0x223d508, (=0x223d855)
	ldr     r0, [pc, #0x20] @ 0x223d50c, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223d4fe
@ 0x223d4f0

.thumb
branch_223d4f0: @ 223d4f0 :thumb
	mov     r0, r4
	mov     r1, #0x3a
	bl      Function_223d49c
	ldr     r1, [pc, #0x14] @ 0x223d510, (=0x223d741)
	ldr     r0, [pc, #0x10] @ 0x223d50c, (=0x2214)
	str     r1, [r4, r0]
.thumb
branch_223d4fe: @ 223d4fe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d502


.align 2


.word 0x658 @ 0x223d504
.word 0x223d855 @ 0x223d508
.word 0x2214 @ 0x223d50c
.word 0x223d741 @ 0x223d510
.thumb
Function_223d514: @ 223d514 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x5d
	ldr     r2, [pc, #0x78] @ 0x223d598, (=0x658)
	lsl     r0, r0, #2
	add     r1, r4, r2
	add     r2, #0xc
	ldr     r0, [r4, r0]
	add     r2, r4, r2
	bl      Function_223ed2c
	cmp     r0, #0x0
	beq     branch_223d53a
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d56e
	b       branch_223d590
@ 0x223d53a

.thumb
branch_223d53a: @ 223d53a :thumb
	ldr     r0, [r4, #0x4]
	bl      0x203068c
	ldr     r1, [pc, #0x58] @ 0x223d59c, (=0x3670)
	ldr     r1, [r4, r1]
	bl      0x2030788
	ldr     r1, [pc, #0x54] @ 0x223d5a0, (=0x3694)
	ldr     r0, [r4, r1]
	sub     r1, #0x24
	ldr     r1, [r4, r1]
	bl      0x202afd4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x48] @ 0x223d5a4, (=0x366c)
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, r1]
	mov     r2, #0x1f
	mov     r3, #0x1a
	bl      0x2039298
	ldr     r1, [pc, #0x40] @ 0x223d5a8, (=0x223d855)
	ldr     r0, [pc, #0x40] @ 0x223d5ac, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223d590
@ 0x223d56e

.thumb
branch_223d56e: @ 223d56e :thumb
	ldr     r0, [pc, #0x34] @ 0x223d5a4, (=0x366c)
	ldr     r0, [r4, r0]
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [pc, #0x34] @ 0x223d5b0, (=0x3674)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x200b498
	mov     r0, r4
	mov     r1, #0x3b
	bl      Function_223d49c
	ldr     r1, [pc, #0x28] @ 0x223d5b4, (=0x223d4c5)
	ldr     r0, [pc, #0x1c] @ 0x223d5ac, (=0x2214)
	str     r1, [r4, r0]
.thumb
branch_223d590: @ 223d590 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d596


.align 2


.word 0x658 @ 0x223d598
.word 0x3670 @ 0x223d59c
.word 0x3694 @ 0x223d5a0
.word 0x366c @ 0x223d5a4
.word 0x223d855 @ 0x223d5a8
.word 0x2214 @ 0x223d5ac
.word 0x3674 @ 0x223d5b0
.word Function_223d4c4+1 @ =0x223d4c5, 0x223d5b4
.thumb
Function_223d5b8: @ 223d5b8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0xda
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      0x2001288
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223d5da
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_223d604
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223d5da

.thumb
branch_223d5da: @ 223d5da :thumb
	ldr     r0, [pc, #0x98] @ 0x223d674, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0x94] @ 0x223d678, (=0x366c)
	ldr     r0, [r5, r0]
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [pc, #0x90] @ 0x223d67c, (=0x3674)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x200b498
	mov     r0, r5
	mov     r1, #0x3b
	bl      Function_223d49c
	ldr     r1, [pc, #0x80] @ 0x223d680, (=0x223d4c5)
	ldr     r0, [pc, #0x84] @ 0x223d684, (=0x2214)
	str     r1, [r5, r0]
	b       branch_223d648
@ 0x223d604

.thumb
branch_223d604: @ 223d604 :thumb
	ldr     r0, [pc, #0x6c] @ 0x223d674, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0x7c] @ 0x223d688, (=0x3670)
	str     r4, [r5, r0]
	mov     r0, #0x1a
	bl      0x2025e6c
	mov     r6, r0
	ldr     r0, [pc, #0x74] @ 0x223d68c, (=0x3694)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      0x202aef0
	mov     r1, r0
	mov     r0, r6
	bl      0x2025ec0
	ldr     r0, [pc, #0x50] @ 0x223d67c, (=0x3674)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      0x200b498
	mov     r0, r6
	bl      0x20181c4
	mov     r0, r5
	mov     r1, #0x3c
	bl      Function_223d49c
	ldr     r1, [pc, #0x4c] @ 0x223d690, (=0x223d515)
	ldr     r0, [pc, #0x3c] @ 0x223d684, (=0x2214)
	str     r1, [r5, r0]
.thumb
branch_223d648: @ 223d648 :thumb
	ldr     r0, [pc, #0x48] @ 0x223d694, (=0x3684)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x40] @ 0x223d694, (=0x3684)
	add     r0, r5, r0
	bl      0x201a8fc
	mov     r0, #0xda
	lsl     r0, r0, #6
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x2c] @ 0x223d698, (=0x367c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223d674

.word 0x5dc @ 0x223d674
.word 0x366c @ 0x223d678
.word 0x3674 @ 0x223d67c
.word Function_223d4c4+1 @ =0x223d4c5, 0x223d680
.word 0x2214 @ 0x223d684
.word 0x3670 @ 0x223d688
.word 0x3694 @ 0x223d68c
.word Function_223d514+1 @ =0x223d515, 0x223d690
.word 0x3684 @ 0x223d694
.word 0x367c @ 0x223d698
.thumb
Function_223d69c: @ 223d69c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x8c] @ 0x223d730, (=0x3694)
	ldr     r0, [r5, r0]
	bl      0x202af94
	str     r0, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r1, #0x1a
	bl      0x2013a04
	ldr     r1, [pc, #0x80] @ 0x223d734, (=0x367c)
	str     r0, [r5, r1]
	mov     r0, #0x64
	mov     r1, #0x1a
	bl      0x2023790
	ldr     r7, [pc, #0x70] @ 0x223d730, (=0x3694)
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_223d6c4: @ 223d6c4 :thumb
	ldr     r0, [r5, r7]
	mov     r1, r4
	bl      0x202af78
	cmp     r0, #0x0
	beq     branch_223d6ee
	ldr     r0, [pc, #0x5c] @ 0x223d730, (=0x3694)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      0x202aef0
	mov     r1, r0
	mov     r0, r6
	bl      0x2023d28
	ldr     r0, [pc, #0x50] @ 0x223d734, (=0x367c)
	mov     r1, r6
	ldr     r0, [r5, r0]
	mov     r2, r4
	bl      0x2013a6c
.thumb
branch_223d6ee: @ 223d6ee :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_223d6c4
	ldr     r1, [pc, #0x3c] @ 0x223d734, (=0x367c)
	mov     r2, #0xb
	ldr     r0, [r5, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	mov     r3, r2
	ldr     r1, [r5, r1]
	sub     r3, #0xd
	bl      0x2013a4c
	mov     r0, r6
	bl      0x20237bc
	ldr     r2, [pc, #0x24] @ 0x223d734, (=0x367c)
	mov     r3, #0x5d
	lsl     r3, r3, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r1, [sp, #0x0]
	ldr     r3, [r5, r3]
	add     r2, r5, r2
	bl      Function_223ed94
	mov     r1, #0xda
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	ldr     r1, [pc, #0x10] @ 0x223d738, (=0x223d5b9)
	ldr     r0, [pc, #0x10] @ 0x223d73c, (=0x2214)
	str     r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223d730

.word 0x3694 @ 0x223d730
.word 0x367c @ 0x223d734
.word Function_223d5b8+1 @ =0x223d5b9, 0x223d738
.word 0x2214 @ 0x223d73c
.thumb
Function_223d740: @ 223d740 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5d
	ldr     r2, [pc, #0x4c] @ 0x223d794, (=0x658)
	lsl     r0, r0, #2
	add     r1, r4, r2
	add     r2, #0xc
	ldr     r0, [r4, r0]
	add     r2, r4, r2
	bl      Function_223ed2c
	cmp     r0, #0x0
	beq     branch_223d764
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d76c
	b       branch_223d78e
@ 0x223d764

.thumb
branch_223d764: @ 223d764 :thumb
	ldr     r1, [pc, #0x30] @ 0x223d798, (=0x223d69d)
	ldr     r0, [pc, #0x34] @ 0x223d79c, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223d78e
@ 0x223d76c

.thumb
branch_223d76c: @ 223d76c :thumb
	ldr     r0, [pc, #0x30] @ 0x223d7a0, (=0x366c)
	ldr     r0, [r4, r0]
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [pc, #0x2c] @ 0x223d7a4, (=0x3674)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x200b498
	mov     r0, r4
	mov     r1, #0x3b
	bl      Function_223d49c
	ldr     r1, [pc, #0x1c] @ 0x223d7a8, (=0x223d4c5)
	ldr     r0, [pc, #0x10] @ 0x223d79c, (=0x2214)
	str     r1, [r4, r0]
.thumb
branch_223d78e: @ 223d78e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d792


.align 2


.word 0x658 @ 0x223d794
.word Function_223d69c+1 @ =0x223d69d, 0x223d798
.word 0x2214 @ 0x223d79c
.word 0x366c @ 0x223d7a0
.word 0x3674 @ 0x223d7a4
.word Function_223d4c4+1 @ =0x223d4c5, 0x223d7a8
.thumb
Function_223d7ac: @ 223d7ac :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0x5d
	ldr     r2, [pc, #0x70] @ 0x223d828, (=0x658)
	lsl     r0, r0, #2
	add     r1, r5, r2
	add     r2, #0xc
	ldr     r0, [r5, r0]
	add     r2, r5, r2
	bl      Function_223ed2c
	cmp     r0, #0x0
	beq     branch_223d7d2
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d81a
	b       branch_223d820
@ 0x223d7d2

.thumb
branch_223d7d2: @ 223d7d2 :thumb
	ldr     r1, [pc, #0x58] @ 0x223d82c, (=0x223d855)
	ldr     r0, [pc, #0x58] @ 0x223d830, (=0x2214)
	ldr     r6, [pc, #0x5c] @ 0x223d834, (=0x3694)
	str     r1, [r5, r0]
	mov     r4, #0x0
.thumb
branch_223d7dc: @ 223d7dc :thumb
	ldr     r0, [r5, r6]
	mov     r1, r4
	bl      0x202af78
	cmp     r0, #0x0
	bne     branch_223d7fc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x48] @ 0x223d838, (=0x366c)
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x1a
	bl      0x2039298
	b       branch_223d802
@ 0x223d7fc

.thumb
branch_223d7fc: @ 223d7fc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_223d7dc
.thumb
branch_223d802: @ 223d802 :thumb
	cmp     r4, #0x20
	bne     branch_223d820
	mov     r0, r5
	mov     r1, #0x3a
	bl      Function_223d49c
	ldr     r1, [pc, #0x2c] @ 0x223d83c, (=0x223d741)
	ldr     r0, [pc, #0x1c] @ 0x223d830, (=0x2214)
	add     sp, #0x4
	str     r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x223d81a

.thumb
branch_223d81a: @ 223d81a :thumb
	ldr     r1, [pc, #0x10] @ 0x223d82c, (=0x223d855)
	ldr     r0, [pc, #0x10] @ 0x223d830, (=0x2214)
	str     r1, [r5, r0]
.thumb
branch_223d820: @ 223d820 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223d826


.align 2


.word 0x658 @ 0x223d828
.word 0x223d855 @ 0x223d82c
.word 0x2214 @ 0x223d830
.word 0x3694 @ 0x223d834
.word 0x366c @ 0x223d838
.word Function_223d740+1 @ =0x223d741, 0x223d83c
.thumb
Function_223d840: @ 223d840 :thumb
	push    {r3,lr}
	mov     r0, #0x13
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_223d850
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x223d850

.thumb
branch_223d850: @ 223d850 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223d854

.thumb
Function_223d854: @ 223d854 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, #0x0
	ldr     r0, [pc, #0xec] @ 0x223d948, (=0x366c)
	mvn     r1, r1
	str     r1, [r5, r0]
	mov     r6, #0x0
	bl      0x2035e18
	cmp     r0, #0x0
	ble     branch_223d890
	ldr     r7, [pc, #0xe0] @ 0x223d94c, (=0x35ec)
	mov     r4, r5
.thumb
branch_223d86e: @ 223d86e :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x2
	bne     branch_223d884
	ldr     r0, [pc, #0xd0] @ 0x223d948, (=0x366c)
	lsl     r1, r6, #2
	str     r6, [r5, r0]
	mov     r2, #0x0
	add     r1, r5, r1
	sub     r0, #0x80
	str     r2, [r1, r0]
	b       branch_223d890
@ 0x223d884

.thumb
branch_223d884: @ 223d884 :thumb
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	bl      0x2035e18
	cmp     r6, r0
	blt     branch_223d86e
.thumb
branch_223d890: @ 223d890 :thumb
	ldr     r0, [pc, #0xb4] @ 0x223d948, (=0x366c)
	mov     r1, #0x0
	ldr     r2, [r5, r0]
	mvn     r1, r1
	cmp     r2, r1
	bne     branch_223d8d4
	add     r0, #0xc
	ldr     r0, [r5, r0]
	bl      0x200b190
	ldr     r0, [pc, #0xa8] @ 0x223d950, (=0x3674)
	ldr     r0, [r5, r0]
	bl      0x200b3f0
	mov     r0, #0x13
	bl      0x20364f0
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x94] @ 0x223d954, (=0x5a8)
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	mov     r1, #0x1c
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x8c] @ 0x223d958, (=0x223d841)
	ldr     r0, [pc, #0x8c] @ 0x223d95c, (=0x2214)
	str     r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223d8d4

.thumb
branch_223d8d4: @ 223d8d4 :thumb
	ldr     r0, [r5, #0x4]
	bl      0x207d990
	ldr     r1, [pc, #0x84] @ 0x223d960, (=0x1b5)
	mov     r2, #0x1
	mov     r3, #0x1a
	bl      0x207d688
	cmp     r0, #0x1
	bne     branch_223d90e
	ldr     r0, [pc, #0x5c] @ 0x223d948, (=0x366c)
	ldr     r0, [r5, r0]
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [pc, #0x5c] @ 0x223d950, (=0x3674)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x200b498
	mov     r0, r5
	mov     r1, #0x39
	bl      Function_223d49c
	ldr     r1, [pc, #0x5c] @ 0x223d964, (=0x223d7ad)
	ldr     r0, [pc, #0x54] @ 0x223d95c, (=0x2214)
	str     r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223d90e

.thumb
branch_223d90e: @ 223d90e :thumb
	ldr     r0, [r5, #0x4]
	bl      0x202b370
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_223d918: @ 223d918 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      0x202af78
	cmp     r0, #0x0
	bne     branch_223d938
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x223d948, (=0x366c)
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, r1]
	mov     r2, r4
	mov     r3, #0x1a
	bl      0x2039298
	b       branch_223d93e
@ 0x223d938

.thumb
branch_223d938: @ 223d938 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_223d918
.thumb
branch_223d93e: @ 223d93e :thumb
	ldr     r1, [pc, #0x28] @ 0x223d968, (=0x223d855)
	ldr     r0, [pc, #0x18] @ 0x223d95c, (=0x2214)
	str     r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223d948

.word 0x366c @ 0x223d948
.word 0x35ec @ 0x223d94c
.word 0x3674 @ 0x223d950
.word 0x5a8 @ 0x223d954
.word Function_223d840+1 @ =0x223d841, 0x223d958
.word 0x2214 @ 0x223d95c
.word 0x1b5 @ 0x223d960
.word Function_223d7ac+1 @ =0x223d7ad, 0x223d964
.word Function_223d854+1 @ =0x223d855, 0x223d968
.thumb
Function_223d96c: @ 223d96c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r1, [pc, #0x68] @ 0x223d9dc, (=0x35ec)
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x1a
	bl      0x20391dc
	cmp     r0, #0x0
	bne     branch_223d9ac
	mov     r0, #0x13
	bl      0x20364f0
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x223d9e0, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x1c
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x40] @ 0x223d9e4, (=0x223d841)
	ldr     r0, [pc, #0x44] @ 0x223d9e8, (=0x2214)
	add     sp, #0x4
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x223d9ac

.thumb
branch_223d9ac: @ 223d9ac :thumb
	mov     r0, #0x1a
	bl      0x200b358
	ldr     r1, [pc, #0x38] @ 0x223d9ec, (=0x3674)
	ldr     r2, [pc, #0x38] @ 0x223d9f0, (=0x2a3)
	str     r0, [r4, r1]
	mov     r1, #0x1a
	mov     r0, #0x0
	mov     r3, r1
	bl      0x200b144
	ldr     r1, [pc, #0x30] @ 0x223d9f4, (=0x3678)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x4]
	bl      0x202b370
	ldr     r1, [pc, #0x28] @ 0x223d9f8, (=0x3694)
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x28] @ 0x223d9fc, (=0x223d855)
	ldr     r0, [pc, #0x14] @ 0x223d9e8, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d9dc

.word 0x35ec @ 0x223d9dc
.word 0x5a8 @ 0x223d9e0
.word Function_223d840+1 @ =0x223d841, 0x223d9e4
.word 0x2214 @ 0x223d9e8
.word 0x3674 @ 0x223d9ec
.word 0x2a3 @ 0x223d9f0
.word 0x3678 @ 0x223d9f4
.word 0x3694 @ 0x223d9f8
.word Function_223d854+1 @ =0x223d855, 0x223d9fc
.thumb
Function_223da00: @ 223da00 :thumb
	ldr     r2, [r0, #0x60]
	cmp     r2, #0x0
	beq     branch_223da2c
	ldr     r1, [r0, #0x64]
	cmp     r1, #0x0
	beq     branch_223da2c
	cmp     r2, #0x1
	bne     branch_223da1c
	cmp     r1, #0x1
	bne     branch_223da1c
	ldr     r2, [pc, #0x18] @ 0x223da30, (=0x223d96d)
	ldr     r1, [pc, #0x1c] @ 0x223da34, (=0x2214)
	str     r2, [r0, r1]
	b       branch_223da22
@ 0x223da1c

.thumb
branch_223da1c: @ 223da1c :thumb
	ldr     r2, [pc, #0x18] @ 0x223da38, (=0x223d3e1)
	ldr     r1, [pc, #0x14] @ 0x223da34, (=0x2214)
	str     r2, [r0, r1]
.thumb
branch_223da22: @ 223da22 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x60]
	str     r1, [r0, #0x64]
	mov     r1, #0x1d
	str     r1, [r0, #0x68]
.thumb
branch_223da2c: @ 223da2c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223da30

.word 0x223d96d @ 0x223da30
.word 0x2214 @ 0x223da34
.word 0x223d3e1 @ 0x223da38
.thumb
Function_223da3c: @ 223da3c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	mov     r0, #0x0
	add     r1, sp, #0x10
	strb    r0, [r1, #0x8]
	mov     r0, #0x1
	strb    r0, [r1, #0x9]
	mov     r0, #0x3
	strb    r0, [r1, #0xa]
	ldrb    r2, [r1, #0xb]
	mov     r0, #0xf
	bic     r2, r0
	strb    r2, [r1, #0xb]
	ldrb    r2, [r1, #0xb]
	mov     r0, #0x30
	bic     r2, r0
	strb    r2, [r1, #0xb]
	ldrb    r2, [r1, #0xb]
	mov     r0, #0xc0
	bic     r2, r0
	strb    r2, [r1, #0xb]
	ldr     r0, [pc, #0xc8] @ 0x223db34, (=0x2218)
	mov     r1, r4
	add     r1, #0x88
	ldr     r0, [r4, r0]
	ldr     r1, [r1, #0x0]
	bl      GetAdrOfPkmnInParty
	bl      0x2076b10
	mov     r2, r0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x88] @ 0x223db38, (=0x598)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x10
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, #0x3
	mov     r1, #0x1a
	bl      0x2013a04
	ldr     r1, [pc, #0x74] @ 0x223db3c, (=0x65c)
	mov     r2, #0x11
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r3, #0x0
	bl      0x2013a4c
	ldr     r0, [pc, #0x60] @ 0x223db3c, (=0x65c)
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x12
	mov     r3, #0x1
	bl      0x2013a4c
	ldr     r0, [pc, #0x50] @ 0x223db3c, (=0x65c)
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x13
	mov     r3, #0x2
	bl      0x2013a4c
	ldr     r0, [pc, #0x3c] @ 0x223db3c, (=0x65c)
	ldr     r1, [r4, r0]
	str     r1, [sp, #0x10]
	sub     r0, #0xa4
	add     r0, r4, r0
	str     r0, [sp, #0x14]
	bl      Function_223ed80
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	mov     r1, #0x8
	mov     r3, r2
	bl      0x2001b7c
	mov     r1, #0x66
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x18] @ 0x223db40, (=0x223db49)
	ldr     r0, [pc, #0x18] @ 0x223db44, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x223db32


.align 2


.word 0x2218 @ 0x223db34
.word 0x598 @ 0x223db38
.word 0x65c @ 0x223db3c
.word 0x223db49 @ 0x223db40
.word 0x2214 @ 0x223db44
.thumb
Function_223db48: @ 223db48 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2001be0
	cmp     r0, #0x2
	bhi     branch_223db6a
	cmp     r0, #0x0
	beq     branch_223db74
	cmp     r0, #0x1
	beq     branch_223dbc8
	cmp     r0, #0x2
	beq     branch_223dc18
	b       branch_223dc66
@ 0x223db6a

.thumb
branch_223db6a: @ 223db6a :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223dc18
	b       branch_223dc66
@ 0x223db74

.thumb
branch_223db74: @ 223db74 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x223dc6c, (=0x588)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2001bc4
	ldr     r0, [pc, #0xb8] @ 0x223dc70, (=0x65c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r1, [pc, #0xb4] @ 0x223dc74, (=0x223d151)
	ldr     r0, [pc, #0xb8] @ 0x223dc78, (=0x2214)
	add     sp, #0x10
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223dbc8

.thumb
branch_223dbc8: @ 223dbc8 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x223dc7c, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x14
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2001bc4
	ldr     r0, [pc, #0x64] @ 0x223dc70, (=0x65c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r1, [pc, #0x6c] @ 0x223dc80, (=0x223dc85)
	ldr     r0, [pc, #0x64] @ 0x223dc78, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223dc66
@ 0x223dc18

.thumb
branch_223dc18: @ 223dc18 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223dc6c, (=0x588)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2001bc4
	ldr     r0, [pc, #0x14] @ 0x223dc70, (=0x65c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r1, [pc, #0x10] @ 0x223dc74, (=0x223d151)
	ldr     r0, [pc, #0x14] @ 0x223dc78, (=0x2214)
	str     r1, [r4, r0]
.thumb
branch_223dc66: @ 223dc66 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223dc6c

.word 0x588 @ 0x223dc6c
.word 0x65c @ 0x223dc70
.word Function_223d150+1 @ =0x223d151, 0x223dc74
.word 0x2214 @ 0x223dc78
.word 0x5a8 @ 0x223dc7c
.word 0x223dc85 @ 0x223dc80
.thumb
Function_223dc84: @ 223dc84 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223dcd4, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x14
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x2
	bl      Function_223d058
	ldr     r1, [pc, #0xc] @ 0x223dcd8, (=0x223dce1)
	ldr     r0, [pc, #0x10] @ 0x223dcdc, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223dcd4

.word 0x5a8 @ 0x223dcd4
.word Function_223dce0+1 @ =0x223dce1, 0x223dcd8
.word 0x2214 @ 0x223dcdc
.thumb
Function_223dce0: @ 223dce0 :thumb
	ldr     r2, [r0, #0x60]
	cmp     r2, #0x0
	beq     branch_223dd0c
	ldr     r1, [r0, #0x64]
	cmp     r1, #0x0
	beq     branch_223dd0c
	cmp     r2, #0x2
	bne     branch_223dcfc
	cmp     r1, #0x2
	bne     branch_223dcfc
	ldr     r2, [pc, #0x18] @ 0x223dd10, (=0x223dd1d)
	ldr     r1, [pc, #0x1c] @ 0x223dd14, (=0x2214)
	str     r2, [r0, r1]
	b       branch_223dd02
@ 0x223dcfc

.thumb
branch_223dcfc: @ 223dcfc :thumb
	ldr     r2, [pc, #0x18] @ 0x223dd18, (=0x223d3e1)
	ldr     r1, [pc, #0x14] @ 0x223dd14, (=0x2214)
	str     r2, [r0, r1]
.thumb
branch_223dd02: @ 223dd02 :thumb
	mov     r1, #0x18
	str     r1, [r0, #0x68]
	mov     r1, #0x0
	str     r1, [r0, #0x60]
	str     r1, [r0, #0x64]
.thumb
branch_223dd0c: @ 223dd0c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223dd10

.word 0x223dd1d @ 0x223dd10
.word 0x2214 @ 0x223dd14
.word 0x223d3e1 @ 0x223dd18
.thumb
Function_223dd1c: @ 223dd1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	ldr     r0, [pc, #0x118] @ 0x223de3c, (=0x438)
	mov     r6, #0x0
	add     r0, r7, r0
	mov     r4, r7
	mov     r5, r7
	str     r0, [sp, #0x4]
.thumb
branch_223dd2e: @ 223dd2e :thumb
	mov     r0, r7
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r6, r0
	beq     branch_223dd6c
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [pc, #0xf8] @ 0x223de40, (=0x692)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223dd58
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_223dd58: @ 223dd58 :thumb
	ldr     r0, [pc, #0xe8] @ 0x223de44, (=0x69c)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223dd6c
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_223dd6c: @ 223dd6c :thumb
	add     r0, r6, #0x7
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	bl      0x201ad10
	mov     r0, r7
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	.hword  0x1f80 @ sub r0, r0, #0x6
	cmp     r6, r0
	beq     branch_223ddb8
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [pc, #0xb4] @ 0x223de48, (=0x6f2)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223dda4
	mov     r0, #0xee
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_223dda4: @ 223dda4 :thumb
	ldr     r0, [pc, #0xa4] @ 0x223de4c, (=0x6fc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223ddb8
	mov     r0, #0xfa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_223ddb8: @ 223ddb8 :thumb
	mov     r0, r6
	add     r0, #0xd
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	bl      0x201ad10
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r6, #0x6
	blt     branch_223dd2e
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, r7
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r3, #0x30
	lsl     r2, r0, #3
	ldr     r1, [pc, #0x5c] @ 0x223de50, (=0x223ef9c)
	ldr     r0, [pc, #0x5c] @ 0x223de54, (=0x22c4)
	ldr     r1, [r1, r2]
	ldr     r4, [pc, #0x5c] @ 0x223de58, (=0x223efa0)
	add     r0, r7, r0
	ldr     r2, [r4, r2]
	add     r1, #0x10
	.hword  0x1f92 @ sub r2, r2, #0x6
	str     r3, [sp, #0x0]
	bl      Function_223de68
	mov     r0, r7
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x40] @ 0x223de50, (=0x223ef9c)
	lsl     r2, r0, #3
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x44] @ 0x223de5c, (=0x22dc)
	ldr     r1, [r1, r2]
	mov     r3, r4
	ldr     r2, [r3, r2]
	add     r0, r7, r0
	add     r1, #0x10
	.hword  0x1f92 @ sub r2, r2, #0x6
	mov     r3, #0xb0
	bl      Function_223de68
	ldr     r1, [pc, #0x34] @ 0x223de60, (=0x22bc)
	mov     r0, #0x0
	str     r0, [r7, r1]
	ldr     r2, [pc, #0x30] @ 0x223de64, (=0x223df01)
	sub     r1, #0xa8
	str     r2, [r7, r1]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223de3a


.align 2


.word 0x438 @ 0x223de3c
.word 0x692 @ 0x223de40
.word 0x69c @ 0x223de44
.word 0x6f2 @ 0x223de48
.word 0x6fc @ 0x223de4c
.word 0x223ef9c @ 0x223de50
.word 0x22c4 @ 0x223de54
.word 0x223efa0 @ 0x223de58
.word 0x22dc @ 0x223de5c
.word 0x22bc @ 0x223de60
.word 0x223df01 @ 0x223de64
.thumb
Function_223de68: @ 223de68 :thumb
	lsl     r1, r1, #12
	str     r1, [r0, #0x0]
	lsl     r1, r2, #12
	str     r1, [r0, #0x4]
	lsl     r1, r3, #12
	str     r1, [r0, #0xc]
	ldr     r1, [sp, #0x0]
	lsl     r1, r1, #12
	str     r1, [r0, #0x10]
	bx      lr
@ 0x223de7c

.thumb
Function_223de7c: @ 223de7c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r7, [sp, #0x48]
	str     r0, [sp, #0x0]
	ldr     r4, [r7, #0x0]
	ldr     r0, [r7, #0xc]
	str     r1, [sp, #0x4]
	mov     r6, r3
	sub     r0, r0, r4
	mov     r1, #0x14
	str     r2, [sp, #0x8]
	ldr     r5, [sp, #0x4c]
	blx     _s32_div_f
	mul     r0, r6
	add     r0, r4, r0
	str     r0, [sp, #0x24]
	ldr     r4, [r7, #0x4]
	ldr     r0, [r7, #0x10]
	mov     r1, #0x14
	sub     r0, r0, r4
	blx     _s32_div_f
	mul     r0, r6
	add     r0, r4, r0
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x24
	bl      0x2021c50
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	beq     branch_223deda
	mov     r0, #0x5
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	mov     r0, #0x16
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0x18
	bl      0x2021c50
.thumb
branch_223deda: @ 223deda :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_223defc
	mov     r0, #0x7
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x16
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0xc
	bl      0x2021c50
.thumb
branch_223defc: @ 223defc :thumb
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x223df00

.thumb
Function_223df00: @ 223df00 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r3, [pc, #0xcc] @ 0x223dfd4, (=0x22bc)
	mov     r4, r0
	ldr     r0, [r4, r3]
	mov     r2, r3
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r3]
	mov     r0, r4
	add     r0, #0x88
	ldr     r1, [r0, #0x0]
	add     r2, #0x8
	add     r2, r4, r2
	lsl     r0, r1, #2
	str     r2, [sp, #0x0]
	mov     r2, #0x69
	lsl     r2, r2, #4
	add     r2, r4, r2
	lsl     r1, r1, #4
	add     r1, r2, r1
	mov     r2, #0x37
	str     r1, [sp, #0x4]
	lsl     r2, r2, #4
	add     r5, r4, r0
	mov     r1, r2
	ldr     r0, [r5, r2]
	add     r1, #0x30
	add     r2, #0x60
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	ldr     r3, [r4, r3]
	bl      Function_223de7c
	mov     r0, r4
	add     r0, #0x8c
	ldr     r3, [pc, #0x90] @ 0x223dfd8, (=0x22dc)
	ldr     r5, [r0, #0x0]
	add     r1, r4, r3
	str     r1, [sp, #0x0]
	mov     r1, #0x69
	lsl     r1, r1, #4
	add     r2, r4, r1
	lsl     r1, r5, #4
	add     r1, r2, r1
	mov     r2, #0x37
	lsl     r0, r5, #2
	lsl     r2, r2, #4
	str     r1, [sp, #0x4]
	add     r5, r4, r0
	mov     r1, r2
	ldr     r0, [r5, r2]
	add     r1, #0x30
	add     r2, #0x60
	sub     r3, #0x20
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	ldr     r3, [r4, r3]
	bl      Function_223de7c
	ldr     r1, [pc, #0x5c] @ 0x223dfd4, (=0x22bc)
	ldr     r0, [r4, r1]
	cmp     r0, #0x15
	bne     branch_223dfcc
	mov     r0, #0x1
	mov     r2, r4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x223dfdc, (=0x568)
	sub     r1, #0xa4
	add     r2, #0x88
	ldr     r1, [r4, r1]
	ldr     r2, [r2, #0x0]
	add     r0, r4, r0
	mov     r3, #0x8
	bl      Function_223c860
	mov     r0, #0x1
	mov     r2, r4
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x40] @ 0x223dfe0, (=0x221c)
	add     r2, #0x8c
	ldr     r0, [pc, #0x40] @ 0x223dfe4, (=0x578)
	ldr     r2, [r2, #0x0]
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	.hword  0x1f92 @ sub r2, r2, #0x6
	mov     r3, #0x8
	bl      Function_223c860
	mov     r1, r4
	add     r1, #0x8c
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	bl      Function_223bda4
	ldr     r1, [pc, #0x28] @ 0x223dfe8, (=0x223e111)
	ldr     r0, [pc, #0x2c] @ 0x223dfec, (=0x2214)
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x2c] @ 0x223dff0, (=0x418)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021cac
.thumb
branch_223dfcc: @ 223dfcc :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223dfd2


.align 2


.word 0x22bc @ 0x223dfd4
.word 0x22dc @ 0x223dfd8
.word 0x568 @ 0x223dfdc
.word 0x221c @ 0x223dfe0
.word 0x578 @ 0x223dfe4
.word 0x223e111 @ 0x223dfe8
.word 0x2214 @ 0x223dfec
.word 0x418 @ 0x223dff0
.thumb
Function_223dff4: @ 223dff4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0xf4] @ 0x223e0f0, (=0x568)
	str     r0, [sp, #0x0]
	add     r0, r0, r1
	bl      0x201ad10
	ldr     r1, [pc, #0xf0] @ 0x223e0f4, (=0x578)
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	bl      0x201ad10
	ldr     r6, [sp, #0x0]
	ldr     r1, [pc, #0xe8] @ 0x223e0f8, (=0x438)
	mov     r0, r6
	add     r0, r0, r1
	ldr     r4, [pc, #0xe4] @ 0x223e0fc, (=0x223ef9c)
	mov     r7, #0x0
	mov     r5, r6
	str     r0, [sp, #0x4]
.thumb
branch_223e01c: @ 223e01c :thumb
	mov     r0, #0x69
	lsl     r0, r0, #4
	ldrh    r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_223e09c
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	add     r1, #0x10
	.hword  0x1f92 @ sub r2, r2, #0x6
	bl      Function_223e87c
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [pc, #0xb8] @ 0x223e100, (=0x692)
	ldrh    r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_223e06a
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	add     r1, #0x24
	add     r2, #0x10
	bl      Function_223e87c
	mov     r0, #0x3a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_223e06a: @ 223e06a :thumb
	ldr     r0, [pc, #0x98] @ 0x223e104, (=0x69c)
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_223e090
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	add     r1, #0x2c
	add     r2, #0x10
	bl      Function_223e87c
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_223e090: @ 223e090 :thumb
	add     r0, r7, #0x7
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	bl      0x201a9a4
.thumb
branch_223e09c: @ 223e09c :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x10
	add     r4, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0xc
	blt     branch_223e01c
	mov     r1, #0xce
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r1, #0xcf
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r1, [pc, #0x30] @ 0x223e0f8, (=0x438)
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	add     r0, r0, r1
	mov     r1, #0x1
	bl      Function_223cb34
	ldr     r1, [pc, #0x34] @ 0x223e108, (=0x40c)
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r1, [pc, #0x2c] @ 0x223e10c, (=0x418)
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      0x2021cac
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223e0ee


.align 2


.word 0x568 @ 0x223e0f0
.word 0x578 @ 0x223e0f4
.word 0x438 @ 0x223e0f8
.word 0x223ef9c @ 0x223e0fc
.word 0x692 @ 0x223e100
.word 0x69c @ 0x223e104
.word 0x40c @ 0x223e108
.word 0x418 @ 0x223e10c
.thumb
Function_223e110: @ 223e110 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	ldr     r0, [pc, #0x64] @ 0x223e198, (=0x2218)
	mov     r1, r4
	add     r1, #0x88
	ldr     r0, [r4, r0]
	ldr     r1, [r1, #0x0]
	bl      GetAdrOfPkmnInParty
	bl      0x2076b10
	mov     r2, r0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r1, r4
	ldr     r0, [pc, #0x44] @ 0x223e19c, (=0x221c)
	add     r1, #0x8c
	ldr     r1, [r1, #0x0]
	ldr     r0, [r4, r0]
	.hword  0x1f89 @ sub r1, r1, #0x6
	bl      GetAdrOfPkmnInParty
	bl      0x2076b10
	mov     r2, r0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x200b5cc
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223e1a0, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x15
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x14] @ 0x223e1a4, (=0x223e20d)
	ldr     r0, [pc, #0x18] @ 0x223e1a8, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223e198

.word 0x2218 @ 0x223e198
.word 0x221c @ 0x223e19c
.word 0x5a8 @ 0x223e1a0
.word 0x223e20d @ 0x223e1a4
.word 0x2214 @ 0x223e1a8
.thumb
Function_223e1ac: @ 223e1ac :thumb
	push    {r4,lr}
	mov     r1, #0x18
	mov     r2, #0x3
	mov     r4, r0
	bl      Function_223d058
	mov     r0, #0x1
	str     r0, [r4, #0x5c]
	pop     {r4,pc}
@ 0x223e1be


.align 2, 0


.thumb
Function_223e1c0: @ 223e1c0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	mov     r6, r2
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x223e208, (=0x438)
	ldr     r3, [r5, r3]
	add     r1, r5, r0
	lsl     r0, r4, #4
	add     r0, r1, r0
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_223ecbc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223e206


.align 2


.word 0x438 @ 0x223e208
.thumb
Function_223e20c: @ 223e20c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x5d
	ldr     r2, [pc, #0x100] @ 0x223e318, (=0x658)
	lsl     r0, r0, #2
	add     r1, r4, r2
	add     r2, #0xc
	ldr     r0, [r4, r0]
	add     r2, r4, r2
	bl      Function_223ed2c
	cmp     r0, #0x0
	beq     branch_223e232
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223e2cc
	b       branch_223e310
@ 0x223e232

.thumb
branch_223e232: @ 223e232 :thumb
	mov     r0, r4
	bl      Function_223e8d0
	cmp     r0, #0x0
	beq     branch_223e2ba
	mov     r0, r4
	bl      Function_223e914
	cmp     r0, #0x0
	beq     branch_223e250
	cmp     r0, #0x1
	beq     branch_223e282
	cmp     r0, #0x2
	beq     branch_223e29e
	b       branch_223e310
@ 0x223e250

.thumb
branch_223e250: @ 223e250 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0xc0] @ 0x223e31c, (=0x69c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_223e27a
	mov     r0, r4
	bl      Function_223e1ac
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x14
	bl      Function_223e1c0
	ldr     r1, [pc, #0xac] @ 0x223e320, (=0x223e41d)
	ldr     r0, [pc, #0xac] @ 0x223e324, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223e310
@ 0x223e27a

.thumb
branch_223e27a: @ 223e27a :thumb
	ldr     r1, [pc, #0xac] @ 0x223e328, (=0x223e331)
	ldr     r0, [pc, #0xa4] @ 0x223e324, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223e310
@ 0x223e282

.thumb
branch_223e282: @ 223e282 :thumb
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x25
	bl      Function_223e1c0
	ldr     r1, [pc, #0x90] @ 0x223e320, (=0x223e41d)
	ldr     r0, [pc, #0x94] @ 0x223e324, (=0x2214)
	mov     r2, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_223d058
	b       branch_223e310
@ 0x223e29e

.thumb
branch_223e29e: @ 223e29e :thumb
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x26
	bl      Function_223e1c0
	ldr     r1, [pc, #0x74] @ 0x223e320, (=0x223e41d)
	ldr     r0, [pc, #0x78] @ 0x223e324, (=0x2214)
	mov     r2, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_223d058
	b       branch_223e310
@ 0x223e2ba

.thumb
branch_223e2ba: @ 223e2ba :thumb
	ldr     r1, [pc, #0x64] @ 0x223e320, (=0x223e41d)
	ldr     r0, [pc, #0x64] @ 0x223e324, (=0x2214)
	mov     r2, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_223d058
	b       branch_223e310
@ 0x223e2cc

.thumb
branch_223e2cc: @ 223e2cc :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x223e32c, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x14
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x1c] @ 0x223e320, (=0x223e41d)
	ldr     r0, [pc, #0x20] @ 0x223e324, (=0x2214)
	mov     r2, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_223d058
.thumb
branch_223e310: @ 223e310 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223e316


.align 2


.word 0x658 @ 0x223e318
.word 0x69c @ 0x223e31c
.word 0x223e41d @ 0x223e320
.word 0x2214 @ 0x223e324
.word 0x223e331 @ 0x223e328
.word 0x5a8 @ 0x223e32c
.thumb
Function_223e330: @ 223e330 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x223e378, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x24
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x10] @ 0x223e37c, (=0x223e385)
	ldr     r0, [pc, #0x10] @ 0x223e380, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223e376


.align 2


.word 0x5a8 @ 0x223e378
.word 0x223e385 @ 0x223e37c
.word 0x2214 @ 0x223e380
.thumb
Function_223e384: @ 223e384 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x5d
	ldr     r2, [pc, #0x7c] @ 0x223e40c, (=0x658)
	lsl     r0, r0, #2
	add     r1, r4, r2
	add     r2, #0xc
	ldr     r0, [r4, r0]
	add     r2, r4, r2
	bl      Function_223ed2c
	cmp     r0, #0x0
	beq     branch_223e3aa
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223e3c2
	b       branch_223e406
@ 0x223e3aa

.thumb
branch_223e3aa: @ 223e3aa :thumb
	mov     r0, r4
	bl      Function_223e1ac
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x14
	bl      Function_223e1c0
	ldr     r1, [pc, #0x54] @ 0x223e410, (=0x223e41d)
	ldr     r0, [pc, #0x54] @ 0x223e414, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223e406
@ 0x223e3c2

.thumb
branch_223e3c2: @ 223e3c2 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223e418, (=0x5a8)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x14
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x18] @ 0x223e410, (=0x223e41d)
	ldr     r0, [pc, #0x18] @ 0x223e414, (=0x2214)
	mov     r2, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_223d058
.thumb
branch_223e406: @ 223e406 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223e40c

.word 0x658 @ 0x223e40c
.word 0x223e41d @ 0x223e410
.word 0x2214 @ 0x223e414
.word 0x5a8 @ 0x223e418
.thumb
Function_223e41c: @ 223e41c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x60]
	cmp     r1, #0x0
	beq     branch_223e464
	ldr     r0, [r4, #0x64]
	cmp     r0, #0x0
	beq     branch_223e464
	cmp     r1, #0x3
	bne     branch_223e444
	cmp     r0, #0x3
	bne     branch_223e444
	ldr     r0, [pc, #0x30] @ 0x223e468, (=0x3698)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x2c] @ 0x223e46c, (=0x223e479)
	ldr     r0, [pc, #0x30] @ 0x223e470, (=0x2214)
	str     r1, [r4, r0]
	b       branch_223e44a
@ 0x223e444

.thumb
branch_223e444: @ 223e444 :thumb
	ldr     r1, [pc, #0x2c] @ 0x223e474, (=0x223d3e1)
	ldr     r0, [pc, #0x28] @ 0x223e470, (=0x2214)
	str     r1, [r4, r0]
.thumb
branch_223e44a: @ 223e44a :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x60]
	str     r0, [r4, #0x64]
	mov     r0, r4
	bl      Function_223e8d0
	cmp     r0, #0x0
	beq     branch_223e460
	mov     r0, #0x18
	str     r0, [r4, #0x68]
	b       branch_223e464
@ 0x223e460

.thumb
branch_223e460: @ 223e460 :thumb
	mov     r0, #0x22
	str     r0, [r4, #0x68]
.thumb
branch_223e464: @ 223e464 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223e468

.word 0x3698 @ 0x223e468
.word 0x223e479 @ 0x223e46c
.word 0x2214 @ 0x223e470
.word Function_223d3e0+1 @ =0x223d3e1, 0x223e474
.thumb
Function_223e478: @ 223e478 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x20331e0
	ldr     r0, [r4, #0x8]
	mov     r3, r4
	mov     r2, r4
	ldr     r1, [pc, #0x20] @ 0x223e4b0, (=0x2218)
	str     r0, [sp, #0x0]
	add     r3, #0x8c
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r2, #0x88
	ldr     r3, [r3, #0x0]
	ldr     r1, [r4, r1]
	ldr     r2, [r2, #0x0]
	.hword  0x1f9b @ sub r3, r3, #0x6
	bl      Function_223e694
	ldr     r1, [pc, #0xc] @ 0x223e4b4, (=0x223d3e1)
	ldr     r0, [pc, #0x10] @ 0x223e4b8, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x2
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223e4b0

.word 0x2218 @ 0x223e4b0
.word Function_223d3e0+1 @ =0x223d3e1, 0x223e4b4
.word 0x2214 @ 0x223e4b8
.thumb
Function_223e4bc: @ 223e4bc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	mov     r0, #0x0
	add     r1, sp, #0x10
	strb    r0, [r1, #0x8]
	mov     r0, #0x1
	strb    r0, [r1, #0x9]
	mov     r0, #0x2
	strb    r0, [r1, #0xa]
	ldrb    r2, [r1, #0xb]
	mov     r0, #0xf
	bic     r2, r0
	strb    r2, [r1, #0xb]
	ldrb    r2, [r1, #0xb]
	mov     r0, #0x30
	bic     r2, r0
	strb    r2, [r1, #0xb]
	ldrb    r2, [r1, #0xb]
	mov     r0, #0xc0
	bic     r2, r0
	strb    r2, [r1, #0xb]
	mov     r1, r4
	ldr     r0, [pc, #0xb8] @ 0x223e5a4, (=0x221c)
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	ldr     r0, [r4, r0]
	.hword  0x1f89 @ sub r1, r1, #0x6
	bl      GetAdrOfPkmnInParty
	bl      0x2076b10
	mov     r2, r0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5f
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x74] @ 0x223e5a8, (=0x598)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0x10
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, #0x2
	mov     r1, #0x1a
	bl      0x2013a04
	ldr     r1, [pc, #0x64] @ 0x223e5ac, (=0x65c)
	mov     r2, #0x11
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r3, #0x0
	bl      0x2013a4c
	ldr     r0, [pc, #0x50] @ 0x223e5ac, (=0x65c)
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x13
	mov     r3, #0x1
	bl      0x2013a4c
	ldr     r0, [pc, #0x3c] @ 0x223e5ac, (=0x65c)
	ldr     r1, [r4, r0]
	sub     r0, #0x94
	add     r0, r4, r0
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	bl      Function_223ed80
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	mov     r1, #0x8
	mov     r3, r2
	bl      0x2001b7c
	mov     r1, #0x66
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x18] @ 0x223e5b0, (=0x223e5b9)
	ldr     r0, [pc, #0x18] @ 0x223e5b4, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x223e5a2


.align 2


.word 0x221c @ 0x223e5a4
.word 0x598 @ 0x223e5a8
.word 0x65c @ 0x223e5ac
.word 0x223e5b9 @ 0x223e5b0
.word 0x2214 @ 0x223e5b4
.thumb
Function_223e5b8: @ 223e5b8 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2001be0
	cmp     r0, #0x0
	beq     branch_223e5da
	cmp     r0, #0x1
	beq     branch_223e62e
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223e62e
	b       branch_223e67c
@ 0x223e5da

.thumb
branch_223e5da: @ 223e5da :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x80] @ 0x223e684, (=0x588)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_223ecbc
	ldr     r1, [pc, #0x78] @ 0x223e688, (=0x223d151)
	ldr     r0, [pc, #0x78] @ 0x223e68c, (=0x2214)
	str     r1, [r4, r0]
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2001bc4
	ldr     r0, [pc, #0x6c] @ 0x223e690, (=0x65c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	add     sp, #0x10
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223e62e

.thumb
branch_223e62e: @ 223e62e :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x5d
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r3, #0x5e
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	add     r3, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223e684, (=0x588)
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_223ecbc
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2001bc4
	ldr     r0, [pc, #0x20] @ 0x223e690, (=0x65c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r1, [pc, #0x10] @ 0x223e688, (=0x223d151)
	ldr     r0, [pc, #0x10] @ 0x223e68c, (=0x2214)
	str     r1, [r4, r0]
.thumb
branch_223e67c: @ 223e67c :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223e682


.align 2


.word 0x588 @ 0x223e684
.word Function_223d150+1 @ =0x223d151, 0x223e688
.word 0x2214 @ 0x223e68c
.word 0x65c @ 0x223e690
.thumb
Function_223e694: @ 223e694 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x1a
	str     r1, [sp, #0x8]
	mov     r6, r2
	str     r3, [sp, #0xc]
	ldr     r5, [sp, #0x30]
	bl      0x2073c74
	mov     r7, r0
	mov     r0, #0x1a
	bl      0x2073c74
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	bl      0x20775ec
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	bl      GetAdrOfPkmnInParty
	mov     r1, r4
	bl      0x20775ec
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x10c] @ 0x223e7e8, (=0x1ed)
	cmp     r0, r1
	bne     branch_223e720
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223e708
	mov     r0, r4
	mov     r1, #0x99
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x56
	bne     branch_223e720
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223e720
.thumb
branch_223e708: @ 223e708 :thumb
	ldr     r0, [r5, #0x10]
	bl      0x20507e4
	str     r0, [sp, #0x10]
	bl      0x206b5f8
	cmp     r0, #0x0
	bne     branch_223e720
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	bl      0x206b608
.thumb
branch_223e720: @ 223e720 :thumb
	mov     r0, r4
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223e748
	mov     r1, #0x46
	add     r0, sp, #0x14
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x9
	add     r2, sp, #0x14
	bl      SetPkmnData
.thumb
branch_223e748: @ 223e748 :thumb
	bl      0x203608c
	bl      0x2032ee8
	mov     r1, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x5
	mov     r3, #0x0
	bl      0x209304c
	mov     r0, r4
	bl      0x207893c
	ldr     r1, [r5, #0x3c]
	mov     r0, r7
	bl      0x20775ec
	ldr     r1, [r5, #0x40]
	mov     r0, r4
	bl      0x20775ec
	bl      0x203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      0x2032ee8
	ldr     r1, [r5, #0x38]
	bl      0x2025e80
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0x60] @ 0x223e7ec, (=0x1b9)
	str     r6, [r5, #0x2c]
	bl      0x207a230
	cmp     r0, #0x0
	bne     branch_223e7a0
	ldr     r0, [r5, #0x10]
	bl      0x202cc98
	bl      0x202cca8
.thumb
branch_223e7a0: @ 223e7a0 :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      0x202f180
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, r4
	bl      0x20775ec
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, r7
	bl      0x20775ec
	ldr     r0, [r5, #0x1c]
	mov     r1, r4
	bl      Function_223e7f0
	ldr     r0, [r5, #0x20]
	mov     r1, #0x13
	bl      0x202cf28
	mov     r0, r7
	bl      0x20181c4
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223e7e8

.word 0x1ed @ 0x223e7e8
.word 0x1b9 @ 0x223e7ec
.thumb
Function_223e7f0: @ 223e7f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	mov     r4, r1
	bl      0x203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      0x2032ee8
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x75
	add     r2, sp, #0x4
	bl      GetPkmnData
	mov     r0, r5
	bl      0x2025ef0
	mov     r7, r0
	mov     r0, r5
	bl      0x2025f30
	mov     r5, r0
	mov     r0, r4
	bl      0x2075d6c
	mov     r3, r0
	mov     r0, #0x1a
	lsl     r1, r5, #24
	str     r0, [sp, #0x0]
	mov     r0, r7
	lsr     r1, r1, #24
	add     r2, sp, #0x4
	bl      0x202c11c
	mov     r1, r0
	mov     r0, r6
	mov     r2, #0x4
	bl      0x202b758
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223e846


.align 2, 0


.thumb
Function_223e848: @ 223e848 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x2c] @ 0x223e878, (=0x22b8)
	mov     r4, r0
	ldr     r0, [r4, r3]
	mov     r1, #0x6
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, r3]
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r3, [r4, r3]
	mov     r2, #0x0
	bl      0x2019184
	mov     r0, #0x5d
	ldr     r3, [pc, #0x10] @ 0x223e878, (=0x22b8)
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r3, [r4, r3]
	mov     r1, #0x3
	mov     r2, #0x0
	bl      0x2019184
	pop     {r4,pc}
@ 0x223e878

.word 0x22b8 @ 0x223e878
.thumb
Function_223e87c: @ 223e87c :thumb
	push    {lr}
	add     sp, #-0xc
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	lsl     r1, r2, #12
	str     r1, [sp, #0x4]
	add     r1, sp, #0x0
	bl      0x2021c50
	add     sp, #0xc
	pop     {pc}
@ 0x223e892


.align 2, 0


.thumb
Function_223e894: @ 223e894 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x223e8a8, (=0x5a8)
	ldr     r1, [pc, #0x10] @ 0x223e8ac, (=0x1d9)
	add     r0, r4, r0
	bl      0x200e7fc
	ldr     r1, [pc, #0xc] @ 0x223e8b0, (=0x36a8)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x223e8a8

.word 0x5a8 @ 0x223e8a8
.word 0x1d9 @ 0x223e8ac
.word 0x36a8 @ 0x223e8b0
.thumb
Function_223e8b4: @ 223e8b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x223e8cc, (=0x36a8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223e8ca
	bl      0x200eba0
	ldr     r0, [pc, #0x4] @ 0x223e8cc, (=0x36a8)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_223e8ca: @ 223e8ca :thumb
	pop     {r4,pc}
@ 0x223e8cc

.word 0x36a8 @ 0x223e8cc
.thumb
Function_223e8d0: @ 223e8d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x223e90c, (=0x2218)
	mov     r4, #0x0
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r3, r4
	cmp     r0, #0x0
	ble     branch_223e8fc
	mov     r1, r5
	add     r1, #0x88
	ldr     r6, [r1, #0x0]
	ldr     r1, [pc, #0x24] @ 0x223e910, (=0x695)
.thumb
branch_223e8ec: @ 223e8ec :thumb
	cmp     r3, r6
	beq     branch_223e8f4
	ldrb    r2, [r5, r1]
	add     r4, r4, r2
.thumb
branch_223e8f4: @ 223e8f4 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r5, #0x10
	cmp     r3, r0
	blt     branch_223e8ec
.thumb
branch_223e8fc: @ 223e8fc :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	bne     branch_223e906
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223e906

.thumb
branch_223e906: @ 223e906 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223e90a


.align 2


.word 0x2218 @ 0x223e90c
.word 0x695 @ 0x223e910
.thumb
Function_223e914: @ 223e914 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x60] @ 0x223e97c, (=0x2218)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_223e948
	ldr     r7, [pc, #0x50] @ 0x223e97c, (=0x2218)
.thumb
branch_223e92a: @ 223e92a :thumb
	ldr     r0, [r5, r7]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_223e942
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223e942

.thumb
branch_223e942: @ 223e942 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_223e92a
.thumb
branch_223e948: @ 223e948 :thumb
	ldr     r0, [pc, #0x34] @ 0x223e980, (=0x221c)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_223e978
	ldr     r7, [pc, #0x24] @ 0x223e980, (=0x221c)
.thumb
branch_223e95a: @ 223e95a :thumb
	ldr     r0, [r5, r7]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_223e972
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x223e972

.thumb
branch_223e972: @ 223e972 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_223e95a
.thumb
branch_223e978: @ 223e978 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223e97c

.word 0x2218 @ 0x223e97c
.word 0x221c @ 0x223e980
.thumb
Function_223e984: @ 223e984 :thumb
	ldr     r1, [pc, #0xc] @ 0x223e994, (=0x36ac)
	mov     r2, #0x1
	str     r2, [r0, r1]
	mov     r2, #0x0
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [r0, r1]
	bx      lr
@ 0x223e992


.align 2


.word 0x36ac @ 0x223e994
.thumb
Function_223e998: @ 223e998 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x20] @ 0x223e9bc, (=0x36ac)
	ldr     r1, [r0, r2]
	cmp     r1, #0x0
	beq     branch_223e9ba
	add     r1, r2, #0x4
	ldr     r1, [r0, r1]
	add     r3, r1, #0x1
	add     r1, r2, #0x4
	str     r3, [r0, r1]
	ldr     r1, [r0, r1]
	ldr     r0, [pc, #0x10] @ 0x223e9c0, (=0x708)
	cmp     r1, r0
	ble     branch_223e9ba
	mov     r0, #0x4
	bl      0x2038ae0
.thumb
branch_223e9ba: @ 223e9ba :thumb
	pop     {r3,pc}
@ 0x223e9bc

.word 0x36ac @ 0x223e9bc
.word 0x708 @ 0x223e9c0
.thumb
Function_223e9c4: @ 223e9c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r2
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r3, #0xa
	str     r3, [sp, #0x4]
	mov     r3, #0x2
	str     r3, [sp, #0x8]
	mov     r6, #0x8
	str     r6, [sp, #0xc]
	mov     r5, r1
	str     r0, [sp, #0x14]
	str     r2, [sp, #0x10]
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	mov     r2, #0x1
	mov     r1, r5
	str     r2, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, r6
	str     r0, [sp, #0xc]
	mov     r0, #0x15
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	add     r1, #0x10
	mov     r3, #0x14
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, r6
	str     r0, [sp, #0xc]
	mov     r0, #0x29
	str     r0, [sp, #0x10]
	mov     r1, r5
	ldr     r0, [sp, #0x14]
	add     r1, #0x60
	mov     r2, #0x1
	mov     r3, #0x1a
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x60
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r4
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x19c] @ 0x223ebf4, (=0x1d9)
	mov     r1, #0x0
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x18c] @ 0x223ebf8, (=0x1f7)
	mov     r3, #0xb
	bl      0x200daa4
	mov     r1, #0x15
	str     r1, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	lsl     r1, r1, #4
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	add     r1, r5, r1
	mov     r2, #0x0
	bl      0x201a7e8
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	mov     r1, #0x16
	str     r0, [sp, #0x10]
	lsl     r1, r1, #4
	ldr     r0, [sp, #0x14]
	add     r1, r5, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x38
	mov     r1, #0x17
	str     r0, [sp, #0x10]
	lsl     r1, r1, #4
	ldr     r0, [sp, #0x14]
	add     r1, r5, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, #0x17
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x11
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r1, #0xa4
	str     r1, [sp, #0x10]
	add     r1, #0xdc
	ldr     r0, [sp, #0x14]
	add     r1, r5, r1
	mov     r2, #0x0
	mov     r3, #0x14
	bl      0x201a7e8
	mov     r0, #0x6
	lsl     r0, r0, #6
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r1, #0xe6
	str     r1, [sp, #0x10]
	add     r1, #0xaa
	ldr     r0, [sp, #0x14]
	add     r1, r5, r1
	mov     r2, #0x0
	mov     r3, #0x14
	bl      0x201a7e8
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r4, [pc, #0xa0] @ 0x223ebfc, (=0x223f170)
	mov     r7, #0x0
	mov     r6, #0x33
.thumb
branch_223eb5e: @ 223eb5e :thumb
	add     r0, r7, #0x7
	lsl     r0, r0, #4
	str     r0, [sp, #0x18]
	ldrh    r0, [r4, #0x2]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldrh    r3, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	add     r1, r5, r1
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      0x201a7e8
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x201ada4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x10
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0xe
	blt     branch_223eb5e
	ldr     r4, [pc, #0x58] @ 0x223ec00, (=0x223f1a8)
	mov     r6, #0x0
.thumb
branch_223eba8: @ 223eba8 :thumb
	mov     r0, r6
	add     r0, #0x1a
	lsl     r7, r0, #4
	ldrh    r0, [r4, #0x2]
	add     r1, r5, r7
	mov     r2, #0x4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r4, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r4, #0x6]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldrh    r0, [r4, #0x8]
	str     r0, [sp, #0x10]
	ldrh    r3, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      0x201a7e8
	add     r0, r5, r7
	mov     r1, #0x0
	bl      0x201ada4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xa
	cmp     r6, #0x8
	blt     branch_223eba8
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223ebf2


.align 2


.word 0x1d9 @ 0x223ebf4
.word 0x1f7 @ 0x223ebf8
.word 0x223f170 @ 0x223ebfc
.word 0x223f1a8 @ 0x223ec00
.thumb
Function_223ec04: @ 223ec04 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, #0x0
.thumb
branch_223ec0a: @ 223ec0a :thumb
	add     r0, r5, #0x7
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x201a8fc
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0xe
	blt     branch_223ec0a
	mov     r5, #0x0
.thumb
branch_223ec1c: @ 223ec1c :thumb
	mov     r0, r5
	add     r0, #0x1a
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x201a8fc
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_223ec1c
	mov     r0, r4
	bl      0x201a8fc
	mov     r0, r4
	add     r0, #0x10
	bl      0x201a8fc
	mov     r0, r4
	add     r0, #0x60
	bl      0x201a8fc
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x201a8fc
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x201a8fc
	mov     r0, #0x17
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x201a8fc
	mov     r0, #0x6
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      0x201a8fc
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x201a8fc
	pop     {r3-r5,pc}
@ 0x223ec78

.thumb
Function_223ec78: @ 223ec78 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r3
	ldr     r3, [sp, #0x20]
	mov     r5, r0
	mov     r6, r1
	cmp     r3, #0x1
	bne     branch_223ec9c
	mov     r0, #0x0
	mov     r2, r0
	bl      0x2002d7c
	ldrb    r1, [r5, #0x7]
	lsl     r1, r1, #3
	sub     r1, r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r3, r0, #1
.thumb
branch_223ec9c: @ 223ec9c :thumb
	ldr     r0, [sp, #0x24]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x223ecb8, (=0xb0c00)
	str     r4, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223ecb6


.align 2


.word 0xb0c00 @ 0x223ecb8
.thumb
Function_223ecbc: @ 223ecbc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	mov     r1, r3
	ldr     r0, [sp, #0x20]
	mov     r2, r6
	mov     r3, #0x1a
	bl      0x200b29c
	mov     r6, r0
	cmp     r4, #0x1
	bne     branch_223ece6
	ldr     r2, [pc, #0x44] @ 0x223ed20, (=0x1d9)
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0xa
	bl      0x200e060
	b       branch_223ecf2
@ 0x223ece6

.thumb
branch_223ece6: @ 223ece6 :thumb
	ldr     r2, [pc, #0x3c] @ 0x223ed24, (=0x1f7)
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0xb
	bl      0x200dc48
.thumb
branch_223ecf2: @ 223ecf2 :thumb
	mov     r0, r5
	mov     r1, #0xf
	bl      0x201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223ed28, (=0x1020f)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r4, r0
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223ed1e


.align 2


.word 0x1d9 @ 0x223ed20
.word 0x1f7 @ 0x223ed24
.word 0x1020f @ 0x223ed28
.thumb
Function_223ed2c: @ 223ed2c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r2
	mov     r5, r1
	mov     r6, #0x0
	ldr     r1, [r4, #0x0]
	mvn     r6, r6
	cmp     r1, #0x0
	beq     branch_223ed44
	cmp     r1, #0x1
	beq     branch_223ed5c
	b       branch_223ed72
@ 0x223ed44

.thumb
branch_223ed44: @ 223ed44 :thumb
	mov     r1, #0x1a
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x223ed78, (=0x223f148)
	ldr     r2, [pc, #0x30] @ 0x223ed7c, (=0x1f7)
	mov     r3, #0xb
	bl      0x2002100
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223ed72
@ 0x223ed5c

.thumb
branch_223ed5c: @ 223ed5c :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1a
	bl      0x2002114
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_223ed72
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_223ed72: @ 223ed72 :thumb
	mov     r0, r6
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223ed78

.word 0x223f148 @ 0x223ed78
.word 0x1f7 @ 0x223ed7c
.thumb
Function_223ed80: @ 223ed80 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0xc] @ 0x223ed90, (=0x1f7)
	mov     r1, #0x0
	mov     r3, #0xb
	bl      0x200dc48
	pop     {r3,pc}
@ 0x223ed8e


.align 2


.word 0x1f7 @ 0x223ed90
.thumb
Function_223ed94: @ 223ed94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x58] @ 0x223ee04, (=0x14d)
	mov     r4, r2
	mov     r6, r1
	str     r0, [sp, #0x10]
	mov     r0, r3
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x13
	bl      0x201a7e8
	ldr     r2, [pc, #0x48] @ 0x223ee08, (=0x1f7)
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0xb
	bl      0x200dc48
	ldr     r3, [pc, #0x40] @ 0x223ee0c, (=0x223f150)
	add     r2, sp, #0x14
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r1, r6, #0x1
	add     r0, sp, #0x14
	strh    r1, [r0, #0x10]
	mov     r1, #0x5
	strh    r1, [r0, #0x12]
	ldr     r0, [pc, #0x24] @ 0x223ee10, (=0x223ee15)
	mov     r1, #0x0
	str     r0, [sp, #0x18]
	mov     r0, r7
	mov     r2, r1
	mov     r3, #0x1a
	str     r5, [sp, #0x14]
	str     r4, [sp, #0x20]
	bl      0x200112c
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x223ee02


.align 2


.word 0x14d @ 0x223ee04
.word 0x1f7 @ 0x223ee08
.word 0x223f150 @ 0x223ee0c
.word 0x223ee15 @ 0x223ee10
.thumb
Function_223ee14: @ 223ee14 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_223ee20
	ldr     r0, [pc, #0x8] @ 0x223ee24, (=0x5dc)
	bl      0x2005748
branch_223ee20: @ 223ee20 :thumb
	pop     {r3,pc}
@ 0x223ee22

.align 2
.word 0x5dc @ 0x223ee24



Unknown_223ee28: @ 0x223ee28
.incbin "./baserom/overlay/overlay_0088.bin", 0x3ce8, 0x223f200 - 0x223ee28


@end 0x223f200




