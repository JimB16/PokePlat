
thumb_func_start GetSizeOfPokedexMemory
GetSizeOfPokedexMemory: @ 202631c :thumb
	mov     r0, #Pokedex_Size/4
	lsl     r0, r0, #2
	bx      lr
thumb_func_end GetSizeOfPokedexMemory


thumb_func_start AllocInitPokedexMemory
AllocInitPokedexMemory: @ 2026324 :thumb
	push    {r4,lr}
	mov     r1, #Pokedex_Size/4
	lsl     r1, r1, #2
	bl      malloc
	mov     r4, r0

	bl      ClearPokedexMemory

	mov     r0, r4
	pop     {r4,pc}
thumb_func_end AllocInitPokedexMemory


thumb_func_start CopyPokedexMemory
CopyPokedexMemory: @ 2026338 :thumb
	ldr     r3, =MI_CpuCopy8
	mov     r2, #Pokedex_Size/4
	lsl     r2, r2, #2
	bx      r3
@ 0x2026340

.align 2
.pool
thumb_func_end CopyPokedexMemory



/*
Tests if Nr is an invalid PkmnNr
if(# == 0 || # > NrOfPkmn) return 1
else return 0

Input:
r0: Nr to test
*/
thumb_func_start IsInvalidPkmnNr
IsInvalidPkmnNr: @ 2026344 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_2026350

	ldr     r1, =NrOfPkmn
	cmp     r0, r1
	bls     branch_2026358

branch_2026350: @ 2026350 :thumb
	bl      ErrorHandling
	mov     r0, #0x1
	pop     {r3,pc}

branch_2026358: @ 2026358 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202635c

.align 2
.pool
thumb_func_end IsInvalidPkmnNr



.thumb
Function_2026360: @ 2026360 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	bne     branch_202639e

	cmp     r4, #0x2
	blo     branch_2026374
	bl      ErrorHandling
branch_2026374: @ 2026374 :thumb

	ldr     r0, [sp, #0x0]
	mov     r2, r5
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r3, r1
	mov     r0, #0x7
	and     r3, r0
	mov     r6, #0x1
	lsl     r6, r3
	add     r2, #0xc4
	asr     r1, r1, #3
	ldrb    r0, [r2, r1]
	mvn     r6, r6
	and     r0, r6
	strb    r0, [r2, r1]
	mov     r0, r4
	ldrb    r6, [r2, r1]
	lsl     r0, r3
	orr     r0, r6
	strb    r0, [r2, r1]
branch_202639e: @ 202639e :thumb
	cmp     r4, #0x2
	blo     branch_20263a6
	bl      ErrorHandling
branch_20263a6: @ 20263a6 :thumb

	ldr     r0, [sp, #0x0]
	add     r5, #0x84
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r3, r0, #16
	mov     r0, #0x7
	mov     r2, r3
	and     r2, r0
	lsl     r0, r7, #6
	add     r1, r5, r0
	asr     r0, r3, #3
	mov     r3, #0x1
	lsl     r3, r2
	ldrb    r5, [r1, r0]
	mvn     r3, r3
	and     r3, r5
	strb    r3, [r1, r0]
	mov     r3, r4
	ldrb    r5, [r1, r0]
	lsl     r3, r2
	mov     r2, r5
	orr     r2, r3
	strb    r2, [r1, r0]
	pop     {r3-r7,pc}
@ 0x20263d6


.align 2, 0
.thumb
Function_20263d8: @ 20263d8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	cmp     r4, #0x2
	bls     branch_20263ea
	bl      ErrorHandling
branch_20263ea: @ 20263ea :thumb

	cmp     r4, #0x2
	bne     branch_20263f0
	mov     r4, #0x0
branch_20263f0: @ 20263f0 :thumb

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_2026360
	pop     {r3-r7,pc}
@ 0x20263fe


.align 2, 0
.thumb
Function_2026400: @ 2026400 :thumb
	mov     r1, #0x43
	mov     r3, #0x0
	lsl     r1, r1, #2
branch_2026406: @ 2026406 :thumb
	add     r2, r0, r3
	ldrb    r2, [r2, r1]
	cmp     r2, #0xff
	beq     branch_2026414
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x1c
	blt     branch_2026406
branch_2026414: @ 2026414 :thumb
	mov     r0, r3
	bx      lr
@ 0x2026418


.thumb
Function_2026418: @ 2026418 :thumb
	push    {r3,r4}
	mov     r2, #0x43
	mov     r4, #0x0
	lsl     r2, r2, #2
branch_2026420: @ 2026420 :thumb
	add     r3, r0, r4
	ldrb    r3, [r3, r2]
	cmp     r1, r3
	bne     branch_202642e
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr

branch_202642e: @ 202642e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x1c
	blt     branch_2026420
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x202643a


.align 2, 0
.thumb
Function_202643c: @ 202643c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	mov     r5, r0
	bl      Function_2026418
	cmp     r0, #0x0
	bne     branch_2026460
	mov     r0, r5
	bl      Function_2026400
	cmp     r0, #0x1c
	bge     branch_2026460
	add     r1, r5, r0
	mov     r0, #0x43
	lsl     r0, r0, #2
	strb    r4, [r1, r0]
branch_2026460: @ 2026460 :thumb
	pop     {r3-r5,pc}
@ 0x2026462


.align 2, 0
.thumb
Function_2026464: @ 2026464 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x9c] @ 0x2026508, (=0x1a6)
	mov     r5, r0
	cmp     r4, r1
	beq     branch_2026488
	add     r0, r1, #0x1
	cmp     r4, r0
	beq     branch_2026488
	mov     r0, r1
	add     r0, #0x46
	cmp     r4, r0
	beq     branch_2026488
	add     r1, #0x41
	cmp     r4, r1
	beq     branch_2026488
	bl      ErrorHandling
branch_2026488: @ 2026488 :thumb
	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x0
	bne     branch_202649a
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_202649a: @ 202649a :thumb
	ldr     r1, [pc, #0x70] @ 0x202650c, (=0x1e7)
	cmp     r4, r1
	bhi     branch_20264c4
	bhs     branch_20264e0
	mov     r0, r1
	sub     r0, #0x40
	cmp     r4, r0
	bhi     branch_20264e4
	mov     r0, r1
	sub     r0, #0x41
	cmp     r4, r0
	blo     branch_20264e4
	mov     r0, r1
	sub     r0, #0x41
	cmp     r4, r0
	beq     branch_20264cc
	mov     r0, r1
	sub     r0, #0x40
	cmp     r4, r0
	beq     branch_20264d2
	b       branch_20264e4

branch_20264c4: @ 20264c4 :thumb
	add     r0, r1, #0x5
	cmp     r4, r0
	beq     branch_20264d8
	b       branch_20264e4

branch_20264cc: @ 20264cc :thumb
	sub     r1, #0xdf
	add     r6, r5, r1
	b       branch_20264e4

branch_20264d2: @ 20264d2 :thumb
	sub     r1, #0xde
	add     r6, r5, r1
	b       branch_20264e4

branch_20264d8: @ 20264d8 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r6, r5, r0
	b       branch_20264e4

branch_20264e0: @ 20264e0 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2026510, (=0x321)
	add     r6, r5, r0
branch_20264e4: @ 20264e4 :thumb
	ldrb    r1, [r6, #0x0]
	mov     r2, #0x1
	mov     r0, r1
	tst     r0, r2
	bne     branch_20264f0
	mov     r2, #0x0
branch_20264f0: @ 20264f0 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_20264fa
	mov     r0, #0x1
	b       branch_20264fc

branch_20264fa: @ 20264fa :thumb
	mov     r0, #0x0
branch_20264fc: @ 20264fc :thumb
	cmp     r2, r0
	bne     branch_2026504
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_2026504: @ 2026504 :thumb
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x2026508

.word 0x1a6 @ 0x2026508
.word 0x1e7 @ 0x202650c
.word 0x321 @ 0x2026510



.thumb
Function_2026514: @ 2026514 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [pc, #0xc0] @ 0x20265dc, (=0x1a6)
	mov     r7, r0
	mov     r6, r2
	cmp     r5, r1
	beq     branch_202653a
	add     r0, r1, #0x1
	cmp     r5, r0
	beq     branch_202653a
	mov     r0, r1
	add     r0, #0x46
	cmp     r5, r0
	beq     branch_202653a
	add     r1, #0x41
	cmp     r5, r1
	beq     branch_202653a
	bl      ErrorHandling
branch_202653a: @ 202653a :thumb

	lsl     r1, r5, #16
	mov     r0, r7
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x0
	bne     branch_202654c
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_202654c: @ 202654c :thumb
	ldr     r0, [pc, #0x90] @ 0x20265e0, (=0x1e7)
	cmp     r5, r0
	bhi     branch_2026576
	bhs     branch_2026592
	mov     r1, r0
	sub     r1, #0x40
	cmp     r5, r1
	bhi     branch_2026596
	mov     r1, r0
	sub     r1, #0x41
	cmp     r5, r1
	blo     branch_2026596
	mov     r1, r0
	sub     r1, #0x41
	cmp     r5, r1
	beq     branch_202657e
	mov     r1, r0
	sub     r1, #0x40
	cmp     r5, r1
	beq     branch_2026584
	b       branch_2026596

branch_2026576: @ 2026576 :thumb
	.hword  0x1d40 @ add r0, r0, #0x5
	cmp     r5, r0
	beq     branch_202658a
	b       branch_2026596

branch_202657e: @ 202657e :thumb
	sub     r0, #0xdf
	add     r4, r7, r0
	b       branch_2026596

branch_2026584: @ 2026584 :thumb
	sub     r0, #0xde
	add     r4, r7, r0
	b       branch_2026596

branch_202658a: @ 202658a :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r4, r7, r0
	b       branch_2026596

branch_2026592: @ 2026592 :thumb
	ldr     r0, [pc, #0x50] @ 0x20265e4, (=0x321)
	add     r4, r7, r0
branch_2026596: @ 2026596 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      Function_2026464
	mov     r5, #0x0
	cmp     r0, #0x0
	bls     branch_20265d8
	mov     r1, #0x1
branch_20265a6: @ 20265a6 :thumb
	add     r2, r5, #0x1
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #16
	lsr     r3, r2, #16
	mov     r7, r3
	mov     r2, #0x7
	asr     r3, r3, #3
	and     r7, r2
	mov     r2, r1
	ldrb    r3, [r4, r3]
	lsl     r2, r7
	tst     r2, r3
	beq     branch_20265c8
	mov     r2, r1
	b       branch_20265ca

branch_20265c8: @ 20265c8 :thumb
	mov     r2, #0x0
branch_20265ca: @ 20265ca :thumb
	cmp     r2, r6
	bne     branch_20265d2
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_20265d2: @ 20265d2 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blo     branch_20265a6
branch_20265d8: @ 20265d8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20265dc

.word 0x1a6 @ 0x20265dc
.word 0x1e7 @ 0x20265e0
.word 0x321 @ 0x20265e4



.thumb
Function_20265e8: @ 20265e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [pc, #0xfc] @ 0x20266ec, (=0x1a6)
	mov     r6, r0
	mov     r7, r2
	cmp     r5, r1
	beq     branch_202660e
	add     r0, r1, #0x1
	cmp     r5, r0
	beq     branch_202660e
	mov     r0, r1
	add     r0, #0x46
	cmp     r5, r0
	beq     branch_202660e
	add     r1, #0x41
	cmp     r5, r1
	beq     branch_202660e
	bl      ErrorHandling
branch_202660e: @ 202660e :thumb

	lsl     r2, r7, #24
	mov     r0, r6
	mov     r1, r5
	lsr     r2, r2, #24
	bl      Function_2026514
	cmp     r0, #0x0
	bne     branch_20266e8
	ldr     r0, [pc, #0xd0] @ 0x20266f0, (=0x1e7)
	cmp     r5, r0
	bhi     branch_2026648
	bhs     branch_2026664
	mov     r1, r0
	sub     r1, #0x40
	cmp     r5, r1
	bhi     branch_2026668
	mov     r1, r0
	sub     r1, #0x41
	cmp     r5, r1
	blo     branch_2026668
	mov     r1, r0
	sub     r1, #0x41
	cmp     r5, r1
	beq     branch_2026650
	mov     r1, r0
	sub     r1, #0x40
	cmp     r5, r1
	beq     branch_2026656
	b       branch_2026668

branch_2026648: @ 2026648 :thumb
	.hword  0x1d40 @ add r0, r0, #0x5
	cmp     r5, r0
	beq     branch_202665c
	b       branch_2026668

branch_2026650: @ 2026650 :thumb
	sub     r0, #0xdf
	add     r4, r6, r0
	b       branch_2026668

branch_2026656: @ 2026656 :thumb
	sub     r0, #0xde
	add     r4, r6, r0
	b       branch_2026668

branch_202665c: @ 202665c :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r4, r6, r0
	b       branch_2026668

branch_2026664: @ 2026664 :thumb
	ldr     r0, [pc, #0x8c] @ 0x20266f4, (=0x321)
	add     r4, r6, r0
branch_2026668: @ 2026668 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2026464
	mov     r5, r0
	cmp     r5, #0x2
	bge     branch_20266e8
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	cmp     r0, #0x2
	blo     branch_2026688
	bl      ErrorHandling
branch_2026688: @ 2026688 :thumb

	sub     r0, r6, #0x1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r2, r1
	mov     r0, #0x7
	and     r2, r0
	asr     r1, r1, #3
	mov     r3, #0x1
	lsl     r3, r2
	ldrb    r0, [r4, r1]
	mvn     r3, r3
	and     r0, r3
	strb    r0, [r4, r1]
	lsl     r0, r7, #24
	lsr     r6, r0, #24
	mov     r0, r6
	ldrb    r3, [r4, r1]
	lsl     r0, r2
	orr     r0, r3
	strb    r0, [r4, r1]
	cmp     r5, #0x0
	bne     branch_20266e8
	add     r0, r5, #0x2
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r6, #0x2
	blo     branch_20266c2
	bl      ErrorHandling
branch_20266c2: @ 20266c2 :thumb

	sub     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	mov     r0, #0x7
	mov     r1, r2
	and     r1, r0
	asr     r0, r2, #3
	mov     r2, #0x1
	lsl     r2, r1
	ldrb    r3, [r4, r0]
	mvn     r2, r2
	and     r2, r3
	strb    r2, [r4, r0]
	mov     r2, r6
	ldrb    r3, [r4, r0]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r4, r0]
branch_20266e8: @ 20266e8 :thumb
	pop     {r3-r7,pc}
@ 0x20266ea

.align 2
.word 0x1a6 @ 0x20266ec
.word 0x1e7 @ 0x20266f0
.word 0x321 @ 0x20266f4



.thumb
Function_20266f8: @ 20266f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x67
	mov     r4, r1
	lsl     r0, r0, #2
	cmp     r4, r0
	beq     branch_2026710
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2026710
	bl      ErrorHandling
branch_2026710: @ 2026710 :thumb

	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x0
	bne     branch_2026722
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2026722: @ 2026722 :thumb
	mov     r0, #0x67
	lsl     r0, r0, #2
	cmp     r4, r0
	bne     branch_202672e
	sub     r0, #0x92
	b       branch_2026730

branch_202672e: @ 202672e :thumb
	sub     r0, #0x91
branch_2026730: @ 2026730 :thumb
	add     r1, r5, r0
	mov     r0, #0x0
	mov     r3, #0x3
branch_2026736: @ 2026736 :thumb
	lsl     r2, r0, #16
	lsr     r5, r2, #16
	asr     r2, r5, #2
	ldrb    r4, [r1, r2]
	lsl     r2, r5, #30
	lsr     r2, r2, #29
	asr     r4, r2
	mov     r2, r4
	and     r2, r3
	cmp     r2, #0x3
	beq     branch_2026752
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x3
	blt     branch_2026736
branch_2026752: @ 2026752 :thumb
	pop     {r3-r5,pc}
@ 0x2026754


.thumb
Function_2026754: @ 2026754 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x67
	mov     r5, r1
	lsl     r0, r0, #2
	mov     r4, r2
	cmp     r5, r0
	beq     branch_202676e
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_202676e
	bl      ErrorHandling
branch_202676e: @ 202676e :thumb

	lsl     r1, r5, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x0
	bne     branch_2026780
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2026780: @ 2026780 :thumb
	mov     r0, #0x67
	lsl     r0, r0, #2
	cmp     r5, r0
	bne     branch_202678c
	sub     r0, #0x92
	b       branch_202678e

branch_202678c: @ 202678c :thumb
	sub     r0, #0x91
branch_202678e: @ 202678e :thumb
	add     r1, r6, r0
	mov     r0, #0x0
	mov     r3, #0x3
branch_2026794: @ 2026794 :thumb
	lsl     r2, r0, #16
	lsr     r6, r2, #16
	asr     r2, r6, #2
	ldrb    r5, [r1, r2]
	lsl     r2, r6, #30
	lsr     r2, r2, #29
	asr     r5, r2
	mov     r2, r5
	and     r2, r3
	cmp     r2, r4
	bne     branch_20267ae
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_20267ae: @ 20267ae :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x3
	blt     branch_2026794
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20267b8


.thumb
Function_20267b8: @ 20267b8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x67
	mov     r5, r1
	lsl     r0, r0, #2
	mov     r7, r2
	cmp     r5, r0
	beq     branch_20267d2
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	beq     branch_20267d2
	bl      ErrorHandling
branch_20267d2: @ 20267d2 :thumb
	lsl     r2, r7, #24
	mov     r0, r6
	mov     r1, r5
	lsr     r2, r2, #24
	bl      Function_2026754
	cmp     r0, #0x0
	bne     branch_2026830
	mov     r0, #0x67
	lsl     r0, r0, #2
	cmp     r5, r0
	bne     branch_20267ee
	sub     r0, #0x92
	b       branch_20267f0

branch_20267ee: @ 20267ee :thumb
	sub     r0, #0x91
branch_20267f0: @ 20267f0 :thumb
	add     r4, r6, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_20266f8
	mov     r5, r0
	cmp     r5, #0x3
	bge     branch_2026830
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	cmp     r0, #0x4
	blo     branch_202680c
	bl      ErrorHandling
branch_202680c: @ 202680c :thumb

	lsl     r0, r5, #16
	lsr     r2, r0, #16
	lsl     r0, r2, #30
	lsr     r1, r0, #29
	asr     r0, r2, #2
	mov     r2, #0x3
	lsl     r2, r1
	ldrb    r3, [r4, r0]
	mvn     r2, r2
	and     r2, r3
	strb    r2, [r4, r0]
	lsl     r2, r7, #24
	lsr     r2, r2, #24
	ldrb    r3, [r4, r0]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r4, r0]
branch_2026830: @ 2026830 :thumb
	pop     {r3-r7,pc}
@ 0x2026832


.align 2, 0
.thumb
Function_2026834: @ 2026834 :thumb
	push    {r3,r4}
	lsl     r2, r2, #2
	add     r2, #0x18
	mov     r3, #0xf
	lsl     r3, r2
	ldr     r4, [r0, #0x3c]
	mvn     r3, r3
	lsl     r1, r2
	and     r3, r4
	orr     r1, r3
	str     r1, [r0, #0x3c]
	pop     {r3,r4}
	bx      lr
@ 0x202684e


.align 2, 0
.thumb
Function_2026850: @ 2026850 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	cmp     r4, #0x4
	blo     branch_2026860
	bl      ErrorHandling
branch_2026860: @ 2026860 :thumb
	cmp     r6, #0xf
	bls     branch_2026868
	bl      ErrorHandling
branch_2026868: @ 2026868 :thumb
	cmp     r4, #0x2
	bhs     branch_2026878
	add     r0, r5, #0x4
	mov     r1, r6
	mov     r2, r4
	bl      Function_2026834
	pop     {r4-r6,pc}

branch_2026878: @ 2026878 :thumb
	sub     r2, r4, #0x2
	add     r5, #0x44
	lsl     r2, r2, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_2026834
	pop     {r4-r6,pc}
@ 0x202688a


.align 2, 0
.thumb
Function_202688c: @ 202688c :thumb
	cmp     r1, #0x2
	bhs     branch_20268a0
	ldr     r2, [r0, #0x40]
	lsl     r0, r1, #2
	add     r0, #0x18
	mov     r1, r2
	lsr     r1, r0
	mov     r0, #0xf
	and     r0, r1
	bx      lr

branch_20268a0: @ 20268a0 :thumb
	add     r0, #0x80
	ldr     r2, [r0, #0x0]
	sub     r0, r1, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #22
	add     r0, #0x18
	mov     r1, r2
	lsr     r1, r0
	mov     r0, #0xf
	and     r0, r1
	bx      lr
@ 0x20268b6


.align 2, 0
.thumb
Function_20268b8: @ 20268b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
branch_20268be: @ 20268be :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_202688c
	cmp     r0, #0xf
	beq     branch_20268d2
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_20268be
branch_20268d2: @ 20268d2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x20268d6


.align 2, 0
.thumb
Function_20268d8: @ 20268d8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, #0x0
branch_20268e0: @ 20268e0 :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_202688c
	cmp     r5, r0
	bne     branch_20268f2
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_20268f2: @ 20268f2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_20268e0
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20268fc


.thumb
Function_20268fc: @ 20268fc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, r2
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [pc, #0x24] @ 0x2026938, (=0x182)
	cmp     r6, r0
	bne     branch_2026936
	mov     r0, r5
	mov     r1, r4
	bl      Function_20268d8
	cmp     r0, #0x0
	bne     branch_2026936
	mov     r0, r5
	bl      Function_20268b8
	mov     r2, r0
	lsl     r2, r2, #24
	mov     r0, r5
	mov     r1, r4
	lsr     r2, r2, #24
	bl      Function_2026850
branch_2026936: @ 2026936 :thumb
	pop     {r4-r6,pc}
@ 0x2026938

.word 0x182 @ 0x2026938



.thumb
Function_202693c: @ 202693c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, #0x0
	mov     r6, #0xf
branch_2026944: @ 2026944 :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_2026850
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2026944
	pop     {r4-r6,pc}
@ 0x2026958


.thumb
Function_2026958: @ 2026958 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x40] @ 0x20269a0, (=0x1df)
	mov     r5, r1
	cmp     r5, r0
	beq     branch_2026968
	bl      ErrorHandling
branch_2026968: @ 2026968 :thumb

	lsl     r1, r5, #16
	mov     r0, r4
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x0
	bne     branch_202697a
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_202697a: @ 202697a :thumb
	mov     r2, #0xc7
	lsl     r2, r2, #2
	mov     r0, #0x0
	ldr     r5, [r4, r2]
	mov     r1, r0
	mov     r3, #0x7
branch_2026986: @ 2026986 :thumb
	lsl     r2, r1, #1
	add     r2, r1, r2
	mov     r4, r5
	lsr     r4, r2
	mov     r2, r4
	and     r2, r3
	cmp     r2, #0x7
	beq     branch_202699e

	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, #0x6
	blt     branch_2026986

branch_202699e: @ 202699e :thumb
	pop     {r3-r5,pc}
@ 0x20269a0

.word 0x1df @ 0x20269a0



.thumb
Function_20269a4: @ 20269a4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x50] @ 0x20269fc, (=0x1df)
	mov     r5, r1
	mov     r4, r2
	cmp     r5, r0
	beq     branch_20269b6
	bl      ErrorHandling
branch_20269b6: @ 20269b6 :thumb

	lsl     r1, r5, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x0
	bne     branch_20269c8

	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_20269c8: @ 20269c8 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2026958
	mov     r1, #0x0
	cmp     r0, #0x0
	bls     branch_20269f8
	mov     r2, #0xc7
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	mov     r5, #0x7
branch_20269de: @ 20269de :thumb
	lsl     r3, r1, #1
	add     r3, r1, r3
	mov     r6, r2
	lsr     r6, r3
	mov     r3, r6
	and     r3, r5
	cmp     r3, r4
	bne     branch_20269f2
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_20269f2: @ 20269f2 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, r0
	blo     branch_20269de
branch_20269f8: @ 20269f8 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20269fc

.word 0x1df @ 0x20269fc



.thumb
Function_2026a00: @ 2026a00 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x54] @ 0x2026a5c, (=0x1df)
	mov     r6, r1
	mov     r4, r2
	cmp     r6, r0
	beq     branch_2026a12
	bl      ErrorHandling
branch_2026a12: @ 2026a12 :thumb

	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_20269a4
	cmp     r0, #0x0
	bne     branch_2026a58
	mov     r0, r5
	mov     r1, r6
	bl      Function_2026958
	mov     r6, r0
	cmp     r6, #0x6
	bge     branch_2026a58
	cmp     r4, #0x7
	blo     branch_2026a38
	bl      ErrorHandling
branch_2026a38: @ 2026a38 :thumb

	lsl     r0, r6, #1
	mov     r1, #0xc7
	lsl     r1, r1, #2
	add     r0, r6, r0
	mov     r2, #0x7
	lsl     r2, r0
	ldr     r3, [r5, r1]
	mvn     r2, r2
	and     r2, r3
	str     r2, [r5, r1]
	mov     r2, r4
	ldr     r3, [r5, r1]
	lsl     r2, r0
	mov     r0, r3
	orr     r0, r2
	str     r0, [r5, r1]
branch_2026a58: @ 2026a58 :thumb
	pop     {r4-r6,pc}
@ 0x2026a5a

.align 2
.word 0x1df @ 0x2026a5c



.thumb
Function_2026a60: @ 2026a60 :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0x120] @ 0x2026b84, (=0x1a6)
	mov     r4, r1
	mov     r5, r0
	cmp     r4, r3
	bgt     branch_2026aa2
	bge     branch_2026b0e
	mov     r6, r3
	sub     r6, #0x24
	cmp     r4, r6
	bgt     branch_2026a82
	sub     r3, #0x24
	cmp     r4, r3
	bge     branch_2026b3a
	cmp     r4, #0xc9
	beq     branch_2026ad2
	pop     {r4-r6,pc}

branch_2026a82: @ 2026a82 :thumb
	mov     r0, r3
	sub     r0, #0x9
	cmp     r4, r0
	bgt     branch_2026b80
	mov     r0, r3
	sub     r0, #0xa
	cmp     r4, r0
	blt     branch_2026b80
	mov     r0, r3
	sub     r0, #0xa
	cmp     r4, r0
	beq     branch_2026ae2
	sub     r3, #0x9
	cmp     r4, r3
	beq     branch_2026af8
	pop     {r4-r6,pc}

branch_2026aa2: @ 2026aa2 :thumb
	mov     r0, r3
	add     r0, #0x39
	cmp     r4, r0
	bgt     branch_2026aba
	mov     r0, r3
	add     r0, #0x39
	cmp     r4, r0
	bge     branch_2026b6c
	add     r0, r3, #0x1
	cmp     r4, r0
	beq     branch_2026b24
	pop     {r4-r6,pc}

branch_2026aba: @ 2026aba :thumb
	mov     r0, r3
	add     r0, #0x41
	cmp     r4, r0
	bgt     branch_2026aca
	add     r3, #0x41
	cmp     r4, r3
	beq     branch_2026b56
	pop     {r4-r6,pc}

branch_2026aca: @ 2026aca :thumb
	add     r3, #0x46
	cmp     r4, r3
	beq     branch_2026b40
	pop     {r4-r6,pc}

branch_2026ad2: @ 2026ad2 :thumb
	mov     r0, r2
	bl      Function_2076af8
	mov     r1, r0
	mov     r0, r5
	bl      Function_202643c
	pop     {r4-r6,pc}

branch_2026ae2: @ 2026ae2 :thumb
	mov     r0, r2
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20267b8
	pop     {r4-r6,pc}

branch_2026af8: @ 2026af8 :thumb
	mov     r0, r2
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20267b8
	pop     {r4-r6,pc}

branch_2026b0e: @ 2026b0e :thumb
	mov     r0, r2
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20265e8
	pop     {r4-r6,pc}

branch_2026b24: @ 2026b24 :thumb
	mov     r0, r2
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20265e8
	pop     {r4-r6,pc}

branch_2026b3a: @ 2026b3a :thumb
	bl      Function_20268fc
	pop     {r4-r6,pc}

branch_2026b40: @ 2026b40 :thumb
	mov     r0, r2
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20265e8
	pop     {r4-r6,pc}

branch_2026b56: @ 2026b56 :thumb
	mov     r0, r2
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20265e8
	pop     {r4-r6,pc}

branch_2026b6c: @ 2026b6c :thumb
	mov     r0, r2
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2026a00
branch_2026b80: @ 2026b80 :thumb
	pop     {r4-r6,pc}
@ 0x2026b82

.align 2
.word 0x1a6 @ 0x2026b84



.thumb
Function_2026b88: @ 2026b88 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      Function_20986cc
	cmp     r0, #0x6
	beq     branch_2026baa
	mov     r1, #0x4a
	lsl     r1, r1, #2
	add     r3, r5, r1
	ldrb    r2, [r3, r4]
	mov     r1, #0x1
	lsl     r1, r0
	mov     r0, r2
	orr     r0, r1
	strb    r0, [r3, r4]
branch_2026baa: @ 2026baa :thumb
	pop     {r3-r5,pc}
@ 0x2026bac


.thumb
Function_2026bac: @ 2026bac :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x12
	mov     r4, r2
	bl      GetPkmnBaseData1
	cmp     r0, #0xff
	bne     branch_2026bce
	cmp     r4, #0x0
	bne     branch_2026bc8
	mov     r0, #0x2
	pop     {r4-r6,pc}

branch_2026bc8: @ 2026bc8 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}

branch_2026bce: @ 2026bce :thumb
	sub     r0, r6, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	mov     r1, #0x1
	mov     r0, #0x7
	mov     r3, r2
	and     r3, r0
	mov     r0, r1
	lsl     r0, r3
	asr     r3, r2, #3
	add     r3, r5, r3
	add     r3, #0x84
	ldrb    r3, [r3, #0x0]
	tst     r0, r3
	bne     branch_2026bee
	mov     r1, #0x0
branch_2026bee: @ 2026bee :thumb

	lsl     r0, r1, #24
	lsr     r1, r0, #24
	cmp     r4, #0x1
	bne     branch_2026c1e
	mov     r4, r2
	asr     r2, r2, #3
	add     r2, r5, r2
	mov     r0, #0x7
	add     r2, #0xc4
	mov     r3, #0x1
	and     r4, r0
	mov     r0, r3
	ldrb    r2, [r2, #0x0]
	lsl     r0, r4
	tst     r0, r2
	bne     branch_2026c10
	mov     r3, #0x0
branch_2026c10: @ 2026c10 :thumb

	lsl     r0, r3, #24
	lsr     r0, r0, #24
	cmp     r0, r1
	bne     branch_2026c20
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}

branch_2026c1e: @ 2026c1e :thumb
	mov     r0, r1
branch_2026c20: @ 2026c20 :thumb
	pop     {r4-r6,pc}
@ 0x2026c22


.align 2, 0
.thumb
Function_2026c24: @ 2026c24 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x94] @ 0x2026cc0, (=0x1a6)
	mov     r5, r0
	mov     r7, r2
	cmp     r4, r1
	beq     branch_2026c4a
	add     r0, r1, #0x1
	cmp     r4, r0
	beq     branch_2026c4a
	mov     r0, r1
	add     r0, #0x46
	cmp     r4, r0
	beq     branch_2026c4a
	add     r1, #0x41
	cmp     r4, r1
	beq     branch_2026c4a
	bl      ErrorHandling
branch_2026c4a: @ 2026c4a :thumb

	cmp     r7, #0x2
	blt     branch_2026c52
	bl      ErrorHandling
branch_2026c52: @ 2026c52 :thumb

	ldr     r0, [pc, #0x70] @ 0x2026cc4, (=0x1e7)
	cmp     r4, r0
	bhi     branch_2026c7c
	bhs     branch_2026c98
	mov     r1, r0
	sub     r1, #0x40
	cmp     r4, r1
	bhi     branch_2026c9c
	mov     r1, r0
	sub     r1, #0x41
	cmp     r4, r1
	blo     branch_2026c9c
	mov     r1, r0
	sub     r1, #0x41
	cmp     r4, r1
	beq     branch_2026c84
	mov     r1, r0
	sub     r1, #0x40
	cmp     r4, r1
	beq     branch_2026c8a
	b       branch_2026c9c

branch_2026c7c: @ 2026c7c :thumb
	.hword  0x1d40 @ add r0, r0, #0x5
	cmp     r4, r0
	beq     branch_2026c90
	b       branch_2026c9c

branch_2026c84: @ 2026c84 :thumb
	sub     r0, #0xdf
	add     r6, r5, r0
	b       branch_2026c9c

branch_2026c8a: @ 2026c8a :thumb
	sub     r0, #0xde
	add     r6, r5, r0
	b       branch_2026c9c

branch_2026c90: @ 2026c90 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r6, r5, r0
	b       branch_2026c9c

branch_2026c98: @ 2026c98 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2026cc8, (=0x321)
	add     r6, r5, r0
branch_2026c9c: @ 2026c9c :thumb
	add     r0, r7, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r3, r0, #16
	mov     r0, #0x1
	mov     r1, #0x7
	and     r1, r3
	mov     r2, r0
	lsl     r2, r1
	asr     r1, r3, #3
	ldrb    r1, [r6, r1]
	tst     r1, r2
	bne     branch_2026cbc
	mov     r0, #0x0
branch_2026cbc: @ 2026cbc :thumb
	pop     {r3-r7,pc}
@ 0x2026cbe

.align 2
.word 0x1a6 @ 0x2026cc0
.word 0x1e7 @ 0x2026cc4
.word 0x321 @ 0x2026cc8



.thumb
Function_2026ccc: @ 2026ccc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x2026cf8, (=0x1df)
	mov     r4, r2
	cmp     r1, r0
	beq     branch_2026cdc
	bl      ErrorHandling
branch_2026cdc: @ 2026cdc :thumb

	cmp     r4, #0x6
	blt     branch_2026ce4
	bl      ErrorHandling
branch_2026ce4: @ 2026ce4 :thumb

	mov     r0, #0xc7
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	lsl     r0, r4, #1
	add     r0, r4, r0
	lsr     r1, r0
	mov     r0, #0x7
	and     r0, r1
	pop     {r3-r5,pc}
@ 0x2026cf6

.align 2
.word 0x1df @ 0x2026cf8



.thumb
Function_2026cfc: @ 2026cfc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x67
	mov     r4, r1
	lsl     r0, r0, #2
	mov     r6, r2
	cmp     r4, r0
	beq     branch_2026d16
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2026d16
	bl      ErrorHandling
branch_2026d16: @ 2026d16 :thumb

	cmp     r6, #0x3
	blt     branch_2026d1e
	bl      ErrorHandling
branch_2026d1e: @ 2026d1e :thumb

	mov     r0, #0x67
	lsl     r0, r0, #2
	cmp     r4, r0
	bne     branch_2026d2a
	sub     r0, #0x92
	b       branch_2026d2c

branch_2026d2a: @ 2026d2a :thumb
	sub     r0, #0x91
branch_2026d2c: @ 2026d2c :thumb
	add     r1, r5, r0
	lsl     r0, r6, #16
	lsr     r2, r0, #16
	asr     r0, r2, #2
	ldrb    r1, [r1, r0]
	lsl     r0, r2, #30
	lsr     r0, r0, #29
	asr     r1, r0
	mov     r0, #0x3
	and     r0, r1
	pop     {r4-r6,pc}
@ 0x2026d42


thumb_func_start IsObtainablePkmn
IsObtainablePkmn: @ 2026d44 :thumb
	push    {r4,r5}
	mov     r3, #0x0
	ldr     r5, =UnobtainablePkmn
	mov     r4, #0x1
	mov     r1, r3
branch_2026d4e: @ 2026d4e :thumb
	ldrh    r2, [r5, #0x0]
	cmp     r0, r2
	bne     branch_2026d56
	mov     r4, r1
branch_2026d56: @ 2026d56 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r3, #11
	blt     branch_2026d4e

	mov     r0, r4
	pop     {r4,r5}
	bx      lr
@ 0x2026d64

.align 2
.pool
thumb_func_end IsObtainablePkmn



.thumb
Function_2026d68: @ 2026d68 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2026d6c


thumb_func_start ClearPokedexMemory
ClearPokedexMemory: @ 2026d6c :thumb
	push    {r4,lr}
	mov     r2, #Pokedex_Size/4
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Call_FillMemWithValue

	ldr     r0, =0xbeefcafe
	mov     r1, #0x0
	str     r0, [r4, #Pokedex_0]

	ldr     r0, =Pokedex_31b
	mov     r2, #0x1c
	strb    r1, [r4, r0]

	mov     r0, #Pokedex_10c/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0xff
	blx     Call_FillMemWithValue

	mov     r0, #0xff
	mov     r1, r0
	add     r1, #0x9
	strb    r0, [r4, r1]

	mov     r1, r0
	add     r1, #0xa
	strb    r0, [r4, r1]

	mov     r1, r0
	add     r1, #0xb
	strb    r0, [r4, r1]

	mov     r1, r0
	add     r1, #0xc
	strb    r0, [r4, r1]

	mov     r2, #0x0
	mov     r1, #Pokedex_31c/4
	mvn     r2, r2
	lsl     r1, r1, #2
	str     r2, [r4, r1]

	add     r2, r1, #0x4
	strb    r0, [r4, r2]
	.hword  0x1d49 @ add r1, r1, #0x5
	strb    r0, [r4, r1]

	mov     r0, r4
	bl      Function_202693c

	pop     {r4,pc}
@ 0x2026dc6

.align 2
.pool
thumb_func_end ClearPokedexMemory



.thumb
Function_2026dd0: @ 2026dd0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2026e04, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026de0
	bl      ErrorHandling
branch_2026de0: @ 2026de0 :thumb

	ldr     r7, [pc, #0x24] @ 0x2026e08, (=NrOfPkmn)
	mov     r5, #0x0
	mov     r4, #0x1
branch_2026de6: @ 2026de6 :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      HasPokemonBeenCaughtBefore
	cmp     r0, #0x1
	bne     branch_2026df6
	.hword  0x1c6d @ add r5, r5, #0x1
branch_2026df6: @ 2026df6 :thumb

	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026de6

	lsl     r0, r5, #16
	lsr     r0, r0, #16
	pop     {r3-r7,pc}
@ 0x2026e02

.align 2
.word 0xbeefcafe @ 0x2026e04
.word NrOfPkmn @ 0x2026e08



/* Input:
r0: VariableAreaAdress_7
*/
thumb_func_start GetNrOfPkmnSeen
GetNrOfPkmnSeen: @ 2026e0c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2026e40, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026e1c
	bl      ErrorHandling
branch_2026e1c: @ 2026e1c :thumb

	ldr     r7, [pc, #0x24] @ 0x2026e44, (=NrOfPkmn)
	mov     r5, #0x0
	mov     r4, #0x1
branch_2026e22: @ 2026e22 :thumb
	lsl     r1, r4, #16             @ PokemonNr
	mov     r0, r6                  @ VariableAreaAdress_7
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x1
	bne     branch_2026e32
	.hword  0x1c6d @ add r5, r5, #0x1
branch_2026e32: @ 2026e32 :thumb

	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026e22

	lsl     r0, r5, #16
	lsr     r0, r0, #16
	pop     {r3-r7,pc}
@ 0x2026e3e

.align 2
.word 0xbeefcafe @ 0x2026e40
.word NrOfPkmn @ 0x2026e44
thumb_func_end GetNrOfPkmnSeen



.thumb
.globl Function_2026e48
Function_2026e48: @ 2026e48 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2027474
	cmp     r0, #0x0
	beq     branch_2026e5c
	mov     r0, r4
	bl      GetNrOfPkmnSeen
	pop     {r4,pc}

branch_2026e5c: @ 2026e5c :thumb
	mov     r0, r4
	bl      Function_2026eac
	pop     {r4,pc}
@ 0x2026e64


.thumb
Function_2026e64: @ 2026e64 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2026ea4, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026e74
	bl      ErrorHandling
branch_2026e74: @ 2026e74 :thumb

	ldr     r7, [pc, #0x30] @ 0x2026ea8, (=NrOfPkmn)
	mov     r5, #0x0
	mov     r4, #0x1
branch_2026e7a: @ 2026e7a :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      HasPokemonBeenCaughtBefore
	cmp     r0, #0x1
	bne     branch_2026e96
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_20775a4
	cmp     r0, #0x0
	beq     branch_2026e96
	.hword  0x1c6d @ add r5, r5, #0x1
branch_2026e96: @ 2026e96 :thumb

	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026e7a

	lsl     r0, r5, #16
	lsr     r0, r0, #16
	pop     {r3-r7,pc}
@ 0x2026ea2

.align 2
.word 0xbeefcafe @ 0x2026ea4
.word NrOfPkmn @ 0x2026ea8



.thumb
Function_2026eac: @ 2026eac :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2026eec, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026ebc
	bl      ErrorHandling
branch_2026ebc: @ 2026ebc :thumb

	ldr     r7, [pc, #0x30] @ 0x2026ef0, (=NrOfPkmn)
	mov     r5, #0x0
	mov     r4, #0x1
branch_2026ec2: @ 2026ec2 :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x1
	bne     branch_2026ede
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_20775a4
	cmp     r0, #0x0
	beq     branch_2026ede
	.hword  0x1c6d @ add r5, r5, #0x1
branch_2026ede: @ 2026ede :thumb

	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026ec2

	lsl     r0, r5, #16
	lsr     r0, r0, #16
	pop     {r3-r7,pc}
@ 0x2026eea

.align 2
.word 0xbeefcafe @ 0x2026eec
.word NrOfPkmn @ 0x2026ef0



thumb_func_start IsNatPokedexComplete
IsNatPokedexComplete: @ 2026ef4 :thumb
	push    {r3,lr}
	bl      Function_2026f20

	ldr     r1, =NrNatPokedexEntries
	cmp     r0, r1
	blo     branch_2026f04
	mov     r0, #0x1
	pop     {r3,pc}

branch_2026f04: @ 2026f04 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2026f08

.align 2
.pool
thumb_func_end IsNatPokedexComplete


thumb_func_start IsSinPokedexComplete
IsSinPokedexComplete: @ 2026f0c :thumb
	push    {r3,lr}
	bl      Function_2026f58

	cmp     r0, #NrSinPokedexEntries
	blo     branch_2026f1a
	mov     r0, #0x1
	pop     {r3,pc}

branch_2026f1a: @ 2026f1a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end IsSinPokedexComplete


.align 2, 0
.thumb
Function_2026f20: @ 2026f20 :thumb
	push    {r3-r7,lr}
	ldr     r7, =NrOfPkmn
	mov     r6, r0
	mov     r5, #0x0
	mov     r4, #0x1
branch_2026f2a: @ 2026f2a :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      HasPokemonBeenCaughtBefore
	cmp     r0, #0x1
	bne     branch_2026f4a
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      IsObtainablePkmn
	cmp     r0, #0x1
	bne     branch_2026f4a
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
branch_2026f4a: @ 2026f4a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026f2a
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2026f54

.align 2
.pool



.thumb
Function_2026f58: @ 2026f58 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x3c] @ 0x2026f98, (=NrOfPkmn)
	mov     r6, r0
	mov     r5, #0x0
	mov     r4, #0x1
branch_2026f62: @ 2026f62 :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      WasPkmnSeen
	cmp     r0, #0x1
	bne     branch_2026f8e
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_20775a4
	cmp     r0, #0x0
	beq     branch_2026f8e
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2026d68
	cmp     r0, #0x1
	bne     branch_2026f8e
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
branch_2026f8e: @ 2026f8e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	ble     branch_2026f62
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2026f98

.word NrOfPkmn @ 0x2026f98



/* Input:
r0: VariableAreaAdress_7
r1: PkmnSpecies
*/
thumb_func_start HasPokemonBeenCaughtBefore
HasPokemonBeenCaughtBefore: @ 2026f9c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1

	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2026fe4, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2026fae
	bl      ErrorHandling
branch_2026fae: @ 2026fae :thumb

	mov     r0, r4
	bl      IsInvalidPkmnNr
	cmp     r0, #0x0
	beq     branch_2026fbc

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2026fbc: @ 2026fbc :thumb
	sub     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	mov     r0, #0x1
	mov     r1, #0x7
	and     r1, r2
	mov     r3, r0
	lsl     r3, r1
	asr     r1, r2, #3
	add     r2, r5, r1
	ldrb    r1, [r2, #0x4]
	tst     r1, r3
	beq     branch_2026fde

	add     r2, #0x44
	ldrb    r1, [r2, #0x0]
	tst     r1, r3
	bne     branch_2026fe0

branch_2026fde: @ 2026fde :thumb
	mov     r0, #0x0
branch_2026fe0: @ 2026fe0 :thumb
	pop     {r3-r5,pc}
@ 0x2026fe2

.align 2
.word 0xbeefcafe @ 0x2026fe4
thumb_func_end HasPokemonBeenCaughtBefore



/* Input:
r0: VariableAreaAdress_7
r1: PokemonNr
*/
thumb_func_start WasPkmnSeen
WasPkmnSeen: @ 2026fe8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, =0xbeefcafe
	cmp     r1, r0
	beq     branch_2026ffa
	bl      ErrorHandling
branch_2026ffa: @ 2026ffa :thumb

	mov     r0, r4
	bl      IsInvalidPkmnNr
	cmp     r0, #0x0
	beq     branch_2027008

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2027008: @ 2027008 :thumb
	sub     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r3, r0, #16
	mov     r0, #0x1
	mov     r1, #0x7
	and     r1, r3
	mov     r2, r0
	lsl     r2, r1
	asr     r1, r3, #3
	add     r1, r5, r1
	add     r1, #0x44
	ldrb    r1, [r1, #0x0]
	tst     r1, r2
	bne     branch_2027026
	mov     r0, #0x0
branch_2027026: @ 2027026 :thumb

	pop     {r3-r5,pc}
@ 0x2027028

.align 2
.pool
thumb_func_end WasPkmnSeen




.thumb
.globl Function_202702c
Function_202702c: @ 202702c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2027054, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_202703e
	bl      ErrorHandling
branch_202703e: @ 202703e :thumb
	cmp     r4, #0x0
	bne     branch_202704a
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r6, [r5, r0]
	b       branch_202704e

branch_202704a: @ 202704a :thumb
	bl      ErrorHandling
branch_202704e: @ 202704e :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2027052

.align 2
.word 0xbeefcafe @ 0x2027054



.thumb
.globl Function_2027058
Function_2027058: @ 2027058 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x44] @ 0x20270a8, (=0xbeefcafe)
	mov     r6, r2
	cmp     r1, r0
	beq     branch_202706c
	bl      ErrorHandling
branch_202706c: @ 202706c :thumb
	mov     r0, r4
	bl      IsInvalidPkmnNr
	cmp     r0, #0x0
	beq     branch_202707c
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}

branch_202707c: @ 202707c :thumb
	sub     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	mov     r3, r2
	asr     r2, r2, #3
	add     r2, r5, r2
	mov     r0, #0x7
	add     r2, #0x44
	mov     r1, #0x1
	and     r3, r0
	ldrb    r2, [r2, #0x0]
	lsl     r1, r3
	tst     r1, r2
	beq     branch_20270a4
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2026bac
	pop     {r4-r6,pc}

branch_20270a4: @ 20270a4 :thumb
	sub     r0, #0x8
	pop     {r4-r6,pc}
@ 0x20270a8

.word 0xbeefcafe @ 0x20270a8



.thumb
.globl Function_20270ac
Function_20270ac: @ 20270ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x20] @ 0x20270d8, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_20270be
	bl      ErrorHandling
branch_20270be: @ 20270be :thumb
	mov     r0, r5
	bl      Function_2026400
	cmp     r0, r4
	bgt     branch_20270ce
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}

branch_20270ce: @ 20270ce :thumb
	mov     r0, #0x43
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	pop     {r3-r5,pc}
@ 0x20270d8

.word 0xbeefcafe @ 0x20270d8



.thumb
Function_20270dc: @ 20270dc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x20270f4, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_20270ec
	bl      ErrorHandling
branch_20270ec: @ 20270ec :thumb
	mov     r0, r4
	bl      Function_2026400
	pop     {r4,pc}
@ 0x20270f4

.word 0xbeefcafe @ 0x20270f4



.thumb
.globl Function_20270f8
Function_20270f8: @ 20270f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2027128, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_202710a
	bl      ErrorHandling
branch_202710a: @ 202710a :thumb
	ldr     r1, [pc, #0x20] @ 0x202712c, (=0x1a6)
	mov     r0, r5
	bl      Function_2026464
	cmp     r0, r4
	bgt     branch_202711c
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}

branch_202711c: @ 202711c :thumb
	ldr     r1, [pc, #0xc] @ 0x202712c, (=0x1a6)
	mov     r0, r5
	mov     r2, r4
	bl      Function_2026c24
	pop     {r3-r5,pc}
@ 0x2027128

.word 0xbeefcafe @ 0x2027128
.word 0x1a6 @ 0x202712c



.thumb
Function_2027130: @ 2027130 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x202714c, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027140
	bl      ErrorHandling
branch_2027140: @ 2027140 :thumb
	ldr     r1, [pc, #0xc] @ 0x2027150, (=0x1a6)
	mov     r0, r4
	bl      Function_2026464
	pop     {r4,pc}
@ 0x202714a

.align 2
.word 0xbeefcafe @ 0x202714c
.word 0x1a6 @ 0x2027150



.thumb
.globl Function_2027154
Function_2027154: @ 2027154 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2027184, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027166
	bl      ErrorHandling
branch_2027166: @ 2027166 :thumb
	ldr     r1, [pc, #0x20] @ 0x2027188, (=0x1a7)
	mov     r0, r5
	bl      Function_2026464
	cmp     r0, r4
	bgt     branch_2027178
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}

branch_2027178: @ 2027178 :thumb
	ldr     r1, [pc, #0xc] @ 0x2027188, (=0x1a7)
	mov     r0, r5
	mov     r2, r4
	bl      Function_2026c24
	pop     {r3-r5,pc}
@ 0x2027184

.word 0xbeefcafe @ 0x2027184
.word 0x1a7 @ 0x2027188



.thumb
Function_202718c: @ 202718c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x20271a8, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_202719c
	bl      ErrorHandling
branch_202719c: @ 202719c :thumb
	ldr     r1, [pc, #0xc] @ 0x20271ac, (=0x1a7)
	mov     r0, r4
	bl      Function_2026464
	pop     {r4,pc}
@ 0x20271a6

.align 2
.word 0xbeefcafe @ 0x20271a8
.word 0x1a7 @ 0x20271ac



.thumb
.globl Function_20271b0
Function_20271b0: @ 20271b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x28] @ 0x20271e4, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_20271c2
	bl      ErrorHandling
branch_20271c2: @ 20271c2 :thumb
	mov     r1, #0x67
	mov     r0, r5
	lsl     r1, r1, #2
	bl      Function_20266f8
	cmp     r0, r4
	bgt     branch_20271d6
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}

branch_20271d6: @ 20271d6 :thumb
	mov     r1, #0x67
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, r4
	bl      Function_2026cfc
	pop     {r3-r5,pc}
@ 0x20271e4

.word 0xbeefcafe @ 0x20271e4



.thumb
Function_20271e8: @ 20271e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2027204, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_20271f8
	bl      ErrorHandling
branch_20271f8: @ 20271f8 :thumb
	mov     r1, #0x67
	mov     r0, r4
	lsl     r1, r1, #2
	bl      Function_20266f8
	pop     {r4,pc}
@ 0x2027204

.word 0xbeefcafe @ 0x2027204



.thumb
.globl Function_2027208
Function_2027208: @ 2027208 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2027238, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_202721a
	bl      ErrorHandling
branch_202721a: @ 202721a :thumb

	ldr     r1, [pc, #0x20] @ 0x202723c, (=0x19d)
	mov     r0, r5
	bl      Function_20266f8
	cmp     r0, r4
	bgt     branch_202722c
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}

branch_202722c: @ 202722c :thumb
	ldr     r1, [pc, #0xc] @ 0x202723c, (=0x19d)
	mov     r0, r5
	mov     r2, r4
	bl      Function_2026cfc
	pop     {r3-r5,pc}
@ 0x2027238

.word 0xbeefcafe @ 0x2027238
.word 0x19d @ 0x202723c



.thumb
Function_2027240: @ 2027240 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x202725c, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027250
	bl      ErrorHandling
branch_2027250: @ 2027250 :thumb
	ldr     r1, [pc, #0xc] @ 0x2027260, (=0x19d)
	mov     r0, r4
	bl      Function_20266f8
	pop     {r4,pc}
@ 0x202725a

.align 2
.word 0xbeefcafe @ 0x202725c
.word 0x19d @ 0x2027260



.thumb
.globl Function_2027264
Function_2027264: @ 2027264 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2027284, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027276
	bl      ErrorHandling
branch_2027276: @ 2027276 :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_202688c
	pop     {r3-r5,pc}
@ 0x2027282

.align 2
.word 0xbeefcafe @ 0x2027284



.thumb
Function_2027288: @ 2027288 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x20272a0, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027298
	bl      ErrorHandling
branch_2027298: @ 2027298 :thumb

	mov     r0, r4
	bl      Function_20268b8
	pop     {r4,pc}
@ 0x20272a0

.word 0xbeefcafe @ 0x20272a0



.thumb
.globl Function_20272a4
Function_20272a4: @ 20272a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, r1
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r4, r0, #16

	mov     r1, #0x0        @ PKMNDATA_PERSONALITYVALUE
	ldr     r0, [sp, #0x0]
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	bl      Call_DecidePkmnGender
	mov     r6, r0
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x90] @ 0x2027364, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_20272da
	bl      ErrorHandling
branch_20272da: @ 20272da :thumb

	mov     r0, r4
	bl      IsInvalidPkmnNr
	cmp     r0, #0x0
	bne     branch_202735e

	sub     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	mov     r1, #0x1
	mov     r0, #0x7
	mov     r2, r7
	and     r2, r0
	mov     r0, r1
	asr     r3, r7, #3
	lsl     r0, r2
	add     r2, r5, r3
	add     r2, #0x44
	ldrb    r2, [r2, #0x0]
	tst     r2, r0
	bne     branch_202731e
	ldr     r1, [pc, #0x64] @ 0x2027368, (=0x147)
	cmp     r4, r1
	bne     branch_202730e
	ldr     r0, [sp, #0x4]
	sub     r1, #0x43
	str     r0, [r5, r1]
branch_202730e: @ 202730e :thumb
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_20263d8
	b       branch_2027340

branch_202731e: @ 202731e :thumb
	add     r2, r5, r3
	add     r2, #0x84
	ldrb    r2, [r2, #0x0]
	tst     r0, r2
	bne     branch_202732a
	mov     r1, #0x0
branch_202732a: @ 202732a :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	cmp     r0, r6
	beq     branch_2027340
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	mov     r3, r4
	bl      Function_20263d8
branch_2027340: @ 2027340 :thumb
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2026a60
	mov     r1, #0x7
	add     r5, #0x44
	asr     r0, r7, #3
	ldrb    r3, [r5, r0]
	mov     r2, #0x1
	and     r1, r7
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r5, r0]
branch_202735e: @ 202735e :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2027362

.align 2
.word 0xbeefcafe @ 0x2027364
.word 0x147 @ 0x2027368



.thumb
.globl Function_202736c
Function_202736c: @ 202736c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r5, r0

	mov     r0, r7
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r4, r0, #16

	mov     r0, r7
	mov     r1, #PKMNDATA_COUNTRYOFORIGIN
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x0        @ PKMNDATA_PERSONALITYVALUE
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x0]

	mov     r0, r7
	bl      Call_DecidePkmnGender
	mov     r6, r0
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x202744c, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_20273ae
	bl      ErrorHandling
branch_20273ae: @ 20273ae :thumb
	mov     r0, r4
	bl      IsInvalidPkmnNr
	cmp     r0, #0x0
	bne     branch_2027448
	sub     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r3, r0, #16
	mov     r2, #0x1
	mov     r0, #0x7
	and     r0, r3
	mov     r1, r2
	lsl     r1, r0
	asr     r0, r3, #3
	add     r3, r5, r0
	add     r3, #0x44
	ldrb    r3, [r3, #0x0]
	tst     r3, r1
	bne     branch_20273f0
	ldr     r1, [pc, #0x78] @ 0x2027450, (=0x147)
	cmp     r4, r1
	bne     branch_20273e0
	ldr     r0, [sp, #0x0]
	sub     r1, #0x43
	str     r0, [r5, r1]
branch_20273e0: @ 20273e0 :thumb
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_20263d8
	b       branch_2027412

branch_20273f0: @ 20273f0 :thumb
	add     r0, r5, r0
	add     r0, #0x84
	ldrb    r0, [r0, #0x0]
	tst     r0, r1
	bne     branch_20273fc
	mov     r2, #0x0
branch_20273fc: @ 20273fc :thumb
	lsl     r0, r2, #24
	lsr     r0, r0, #24
	cmp     r0, r6
	beq     branch_2027412
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	mov     r3, r4
	bl      Function_20263d8
branch_2027412: @ 2027412 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_2026a60
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2026b88
	sub     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	add     r1, r5, #0x4
	asr     r0, r6, #3
	mov     r2, #0x7
	ldrb    r4, [r1, r0]
	mov     r3, #0x1
	and     r2, r6
	lsl     r3, r2
	mov     r2, r4
	orr     r2, r3
	add     r5, #0x44
	strb    r2, [r1, r0]
	ldrb    r1, [r5, r0]
	orr     r1, r3
	strb    r1, [r5, r0]
branch_2027448: @ 2027448 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x202744c

.word 0xbeefcafe @ 0x202744c
.word 0x147 @ 0x2027450



.thumb
Function_2027454: @ 2027454 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x202746c, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027464
	bl      ErrorHandling
branch_2027464: @ 2027464 :thumb

	ldr     r0, [pc, #0x8] @ 0x2027470, (=0x31b)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x202746c

.word 0xbeefcafe @ 0x202746c
.word 0x31b @ 0x2027470



.thumb
.globl Function_2027474
Function_2027474: @ 2027474 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x202748c, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_2027484
	bl      ErrorHandling
branch_2027484: @ 2027484 :thumb

	ldr     r0, [pc, #0x8] @ 0x2027490, (=0x31b)
	ldrb    r0, [r4, r0]
	pop     {r4,pc}
@ 0x202748a

.align 2
.word 0xbeefcafe @ 0x202748c
.word 0x31b @ 0x2027490



.thumb
.globl Function_2027494
Function_2027494: @ 2027494 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, =0xbeefcafe
	cmp     r1, r0
	beq     branch_20274a4
	bl      ErrorHandling
branch_20274a4: @ 20274a4 :thumb

	mov     r0, #0xc6
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	pop     {r4,pc}
@ 0x20274ac

.align 2
.pool



.thumb
Function_20274b0: @ 20274b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, =0xbeefcafe
	cmp     r1, r0
	beq     branch_20274c0
	bl      ErrorHandling
branch_20274c0: @ 20274c0 :thumb

	mov     r0, #0xc6
	mov     r1, #0x1
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x20274ca

.align 2
.pool



.thumb
.globl Function_20274d0
Function_20274d0: @ 20274d0 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	cmp     r6, #0x8
	blo     branch_20274e0
	bl      ErrorHandling
branch_20274e0: @ 20274e0 :thumb

	ldr     r1, [r5, #0x0]
	ldr     r0, =0xbeefcafe
	cmp     r1, r0
	beq     branch_20274ec
	bl      ErrorHandling
branch_20274ec: @ 20274ec :thumb

	mov     r0, r6
	bl      Function_20986cc
	mov     r1, #0x1
	mov     r2, r1
	lsl     r2, r0
	mov     r0, #0x4a
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	and     r0, r2
	pop     {r4-r6,pc}
@ 0x2027504

.align 2
.pool



.thumb
Function_2027508: @ 2027508 :thumb
	ldr     r1, =Pokedex_319
	mov     r2, #0x1
	strb    r2, [r0, r1]
	bx      lr
@ 0x2027510

.align 2
.pool



.thumb
.globl Function_2027514
Function_2027514: @ 2027514 :thumb
	ldr     r1, =Pokedex_319
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x202751a

.align 2
.pool



thumb_func_start CheckActPokedex
CheckActPokedex: @ 2027520 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, =Pokedex_beefcafe
	cmp     r1, r0
	beq     branch_2027530
	bl      ErrorHandling
branch_2027530: @ 2027530 :thumb

	ldr     r0, =Pokedex_Active
	ldrb    r0, [r4, r0] @ Pokedex_Active
	pop     {r4,pc}
@ 0x2027536

.align 2
.pool
thumb_func_end CheckActPokedex



/* Input:
r0: VariableAreaAdress_7
*/
thumb_func_start ActivatePokedex
ActivatePokedex: @ 2027540 :thumb
	push    {r4,lr}
	mov     r4, r0

	ldr     r1, [r4, #Pokedex_0]
	ldr     r0, =0xbeefcafe
	cmp     r1, r0
	beq     branch_2027550
	bl      ErrorHandling
branch_2027550: @ 2027550 :thumb

	ldr     r0, =Pokedex_Active
	mov     r1, #0x1
	strb    r1, [r4, r0]

	pop     {r4,pc}
@ 0x2027558

.align 2
.pool
thumb_func_end ActivatePokedex


thumb_func_start LoadPokedexDataAdress
LoadPokedexDataAdress: @ 2027560 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x7
	bx      r3
@ 0x2027566

.align 2
.pool
thumb_func_end LoadPokedexDataAdress


.thumb
.globl Function_202756c
Function_202756c: @ 202756c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x140] @ 0x20276b8, (=0xbeefcafe)
	mov     r4, r2
	cmp     r1, r0
	beq     branch_2027580
	bl      ErrorHandling
branch_2027580: @ 2027580 :thumb

	ldr     r1, [pc, #0x138] @ 0x20276bc, (=0x1a6)
	cmp     r5, r1
	bgt     branch_20275bc
	bge     branch_2027604
	mov     r0, r1
	sub     r0, #0x24
	cmp     r5, r0
	bgt     branch_202759c
	sub     r1, #0x24
	cmp     r5, r1
	bge     branch_2027654
	cmp     r5, #0xc9
	beq     branch_20275f0
	b       branch_20276b2

branch_202759c: @ 202759c :thumb
	mov     r0, r1
	sub     r0, #0x9
	cmp     r5, r0
	bgt     branch_20275ba
	mov     r0, r1
	sub     r0, #0xa
	cmp     r5, r0
	blt     branch_20275ba
	mov     r0, r1
	sub     r0, #0xa
	cmp     r5, r0
	beq     branch_202762c
	sub     r1, #0x9
	cmp     r5, r1
	beq     branch_2027640
branch_20275ba: @ 20275ba :thumb
	b       branch_20276b2

branch_20275bc: @ 20275bc :thumb
	mov     r0, r1
	add     r0, #0x39
	cmp     r5, r0
	bgt     branch_20275d4
	mov     r0, r1
	add     r0, #0x39
	cmp     r5, r0
	bge     branch_202769a
	add     r0, r1, #0x1
	cmp     r5, r0
	beq     branch_2027618
	b       branch_20276b2

branch_20275d4: @ 20275d4 :thumb
	mov     r0, r1
	add     r0, #0x41
	cmp     r5, r0
	bgt     branch_20275e6
	mov     r0, r1
	add     r0, #0x41
	cmp     r5, r0
	beq     branch_2027682
	b       branch_20276b2

branch_20275e6: @ 20275e6 :thumb
	mov     r0, r1
	add     r0, #0x46
	cmp     r5, r0
	beq     branch_2027668
	b       branch_20276b2

branch_20275f0: @ 20275f0 :thumb
	mov     r0, r6
	bl      Function_20270dc
	cmp     r4, r0
	bhs     branch_20276b2
	mov     r0, r6
	mov     r1, r4
	bl      Function_20270ac
	pop     {r4-r6,pc}

branch_2027604: @ 2027604 :thumb
	mov     r0, r6
	bl      Function_2027130
	cmp     r4, r0
	bhs     branch_20276b2
	mov     r0, r6
	mov     r1, r4
	bl      Function_20270f8
	pop     {r4-r6,pc}

branch_2027618: @ 2027618 :thumb
	mov     r0, r6
	bl      Function_202718c
	cmp     r4, r0
	bhs     branch_20276b2
	mov     r0, r6
	mov     r1, r4
	bl      Function_2027154
	pop     {r4-r6,pc}

branch_202762c: @ 202762c :thumb
	mov     r0, r6
	bl      Function_20271e8
	cmp     r4, r0
	bhs     branch_20276b2
	mov     r0, r6
	mov     r1, r4
	bl      Function_20271b0
	pop     {r4-r6,pc}

branch_2027640: @ 2027640 :thumb
	mov     r0, r6
	bl      Function_2027240
	cmp     r4, r0
	bhs     branch_20276b2
	mov     r0, r6
	mov     r1, r4
	bl      Function_2027208
	pop     {r4-r6,pc}

branch_2027654: @ 2027654 :thumb
	mov     r0, r6
	bl      Function_2027288
	cmp     r4, r0
	bhs     branch_20276b2
	mov     r0, r6
	mov     r1, r4
	bl      Function_2027264
	pop     {r4-r6,pc}

branch_2027668: @ 2027668 :thumb
	mov     r0, r6
	add     r1, #0x46
	bl      Function_2026464
	cmp     r4, r0
	bge     branch_20276b2
	mov     r1, #0x7b
	mov     r0, r6
	lsl     r1, r1, #2
	mov     r2, r4
	bl      Function_2026c24
	pop     {r4-r6,pc}

branch_2027682: @ 2027682 :thumb
	mov     r0, r6
	add     r1, #0x41
	bl      Function_2026464
	cmp     r4, r0
	bge     branch_20276b2
	ldr     r1, [pc, #0x30] @ 0x20276c0, (=0x1e7)
	mov     r0, r6
	mov     r2, r4
	bl      Function_2026c24
	pop     {r4-r6,pc}

branch_202769a: @ 202769a :thumb
	mov     r0, r6
	add     r1, #0x39
	bl      Function_2026958
	cmp     r4, r0
	bge     branch_20276b2
	ldr     r1, [pc, #0x1c] @ 0x20276c4, (=0x1df)
	mov     r0, r6
	mov     r2, r4
	bl      Function_2026ccc
	pop     {r4-r6,pc}

branch_20276b2: @ 20276b2 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20276b6

.align 2
.word 0xbeefcafe @ 0x20276b8
.word 0x1a6 @ 0x20276bc
.word 0x1e7 @ 0x20276c0
.word 0x1df @ 0x20276c4



.thumb
.globl Function_20276c8
Function_20276c8: @ 20276c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0xc8] @ 0x202779c, (=0xbeefcafe)
	cmp     r1, r0
	beq     branch_20276da
	bl      ErrorHandling
branch_20276da: @ 20276da :thumb

	ldr     r1, [pc, #0xc4] @ 0x20277a0, (=0x1a6)
	cmp     r4, r1
	bgt     branch_2027716
	bge     branch_2027752
	mov     r0, r1
	sub     r0, #0x24
	cmp     r4, r0
	bgt     branch_20276f6
	sub     r1, #0x24
	cmp     r4, r1
	bge     branch_2027772
	cmp     r4, #0xc9
	beq     branch_202774a
	b       branch_2027798

branch_20276f6: @ 20276f6 :thumb
	mov     r0, r1
	sub     r0, #0x9
	cmp     r4, r0
	bgt     branch_2027798
	mov     r0, r1
	sub     r0, #0xa
	cmp     r4, r0
	blt     branch_2027798
	mov     r0, r1
	sub     r0, #0xa
	cmp     r4, r0
	beq     branch_2027762
	sub     r1, #0x9
	cmp     r4, r1
	beq     branch_202776a
	b       branch_2027798

branch_2027716: @ 2027716 :thumb
	mov     r0, r1
	add     r0, #0x39
	cmp     r4, r0
	bgt     branch_202772e
	mov     r0, r1
	add     r0, #0x39
	cmp     r4, r0
	bge     branch_202778e
	add     r0, r1, #0x1
	cmp     r4, r0
	beq     branch_202775a
	b       branch_2027798

branch_202772e: @ 202772e :thumb
	mov     r0, r1
	add     r0, #0x41
	cmp     r4, r0
	bgt     branch_2027740
	mov     r0, r1
	add     r0, #0x41
	cmp     r4, r0
	beq     branch_2027784
	b       branch_2027798

branch_2027740: @ 2027740 :thumb
	mov     r0, r1
	add     r0, #0x46
	cmp     r4, r0
	beq     branch_202777a
	b       branch_2027798

branch_202774a: @ 202774a :thumb
	mov     r0, r5
	bl      Function_20270dc
	pop     {r3-r5,pc}

branch_2027752: @ 2027752 :thumb
	mov     r0, r5
	bl      Function_2027130
	pop     {r3-r5,pc}

branch_202775a: @ 202775a :thumb
	mov     r0, r5
	bl      Function_202718c
	pop     {r3-r5,pc}

branch_2027762: @ 2027762 :thumb
	mov     r0, r5
	bl      Function_20271e8
	pop     {r3-r5,pc}

branch_202776a: @ 202776a :thumb
	mov     r0, r5
	bl      Function_2027240
	pop     {r3-r5,pc}

branch_2027772: @ 2027772 :thumb
	mov     r0, r5
	bl      Function_2027288
	pop     {r3-r5,pc}

branch_202777a: @ 202777a :thumb
	mov     r0, r5
	add     r1, #0x46
	bl      Function_2026464
	pop     {r3-r5,pc}

branch_2027784: @ 2027784 :thumb
	mov     r0, r5
	add     r1, #0x41
	bl      Function_2026464
	pop     {r3-r5,pc}

branch_202778e: @ 202778e :thumb
	mov     r0, r5
	add     r1, #0x39
	bl      Function_2026958
	pop     {r3-r5,pc}

branch_2027798: @ 2027798 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x202779c

.word 0xbeefcafe @ 0x202779c
.word 0x1a6 @ 0x20277a0

