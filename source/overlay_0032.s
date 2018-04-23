
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram32, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562ad)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562ad @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x7c
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	beq     branch_2256212
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_225621c
	cmp     r0, #0x0
	beq     branch_225620c
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256279)
	mov     r1, r4
	mov     r2, #0x1
	bl      AddTaskToTaskList1
	cmp     r0, #0x0
	beq     branch_225620c
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225620c

.thumb
branch_225620c: @ 225620c :thumb
	mov     r0, r4
	bl      free
.thumb
branch_2256212: @ 2256212 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256216


.align 2


.word 0x2256279 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x74
	add     r1, r5, #0x4
	bl      Function_2256470
	cmp     r0, #0x0
	beq     branch_2256260
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, r4
	bl      0x2254544
	bl      LoadPokePartyAdress
	mov     r1, r0
	add     r0, r5, #0x4
	bl      Function_22563c8
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x6a
	strh    r1, [r0, #0x0]
	str     r1, [r5, #0x6c]
	str     r1, [r5, #0x70]
	str     r4, [r5, #0x78]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2256260

.thumb
branch_2256260: @ 2256260 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256264

.thumb
Function_2256264: @ 2256264 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x74]
	bl      Function_2256508
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2256276


.align 2, 0


.thumb
Function_2256278: @ 2256278 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_22562a4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x22562a8, (=Unknown_2256cc0)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562a4
	mov     r0, r4
	bl      Function_2256264
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x78]
	bl      0x2254260
.thumb
branch_22562a4: @ 22562a4 :thumb
	pop     {r3-r5,pc}
@ 0x22562a6

.align 2
.word Unknown_2256cc0 @ 0x22562a8



.thumb
Function_22562ac: @ 22562ac :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562b2


.align 2, 0
.thumb
Function_22562b4: @ 22562b4 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562bc
	b       branch_22562be
@ 0x22562bc

.thumb
branch_22562bc: @ 22562bc :thumb
	mov     r1, #0x2
.thumb
branch_22562be: @ 22562be :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562c6


.align 2, 0


.thumb
Function_22562c8: @ 22562c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562d8
	cmp     r0, #0x1
	beq     branch_22562e8
	b       branch_2256302
@ 0x22562d8

.thumb
branch_22562d8: @ 22562d8 :thumb
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      Function_2256538
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256302
@ 0x22562e8

.thumb
branch_22562e8: @ 22562e8 :thumb
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      Function_225655c
	cmp     r0, #0x0
	beq     branch_2256302
	ldr     r0, [r4, #0x78]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562b4
.thumb
branch_2256302: @ 2256302 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256306


.align 2, 0


.thumb
Function_2256308: @ 2256308 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_225631c
	mov     r1, #0x2
	bl      Function_22562b4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225631c

.thumb
branch_225631c: @ 225631c :thumb
	ldr     r0, [r4, #0x74]
	mov     r1, #0x2
	bl      Function_225655c
	cmp     r0, #0x0
	beq     branch_2256386
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x6c
	add     r1, #0x70
	bl      0x225446c
	mov     r1, r4
	add     r1, #0x68
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x68
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256386
	bl      Function_2022798
	mov     r1, r4
	add     r1, #0x6a
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256382
	ldr     r0, [r4, #0x6c]
	ldr     r1, [r4, #0x70]
	ldr     r2, [r4, #0x4]
	bl      Function_2256b78
	ldr     r1, [r4, #0x4]
	cmp     r0, r1
	bcc     branch_2256382
	ldr     r0, [r4, #0x78]
	bl      0x2254544
	bl      LoadPokePartyAdress
	mov     r1, r0
	add     r0, r4, #0x4
	bl      Function_22563c8
	ldr     r0, [r4, #0x74]
	mov     r1, #0x2
	bl      Function_2256538
.thumb
branch_2256382: @ 2256382 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256386

.thumb
branch_2256386: @ 2256386 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	str     r0, [r4, #0x70]
	add     r4, #0x6a
	strh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2256392


.align 2, 0


.thumb
Function_2256394: @ 2256394 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563a4
	cmp     r0, #0x1
	beq     branch_22563b4
	b       branch_22563c2
@ 0x22563a4

.thumb
branch_22563a4: @ 22563a4 :thumb
	ldr     r0, [r4, #0x74]
	mov     r1, #0x1
	bl      Function_2256538
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563c2
@ 0x22563b4

.thumb
branch_22563b4: @ 22563b4 :thumb
	ldr     r0, [r4, #0x74]
	bl      Function_2256568
	cmp     r0, #0x0
	beq     branch_22563c2
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22563c2

.thumb
branch_22563c2: @ 22563c2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563c6


.align 2, 0
.thumb
Function_22563c8: @ 22563c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r0, r1
	str     r1, [sp, #0x4]
	bl      GetNrOfPkmnInParty
	ldr     r1, [sp, #0x0]
	mov     r6, #0x0
	str     r0, [r1, #0x0]
	cmp     r0, #0x0
	ble     branch_225646c

	mov     r5, r1
branch_22563e2: @ 22563e2 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	bl      InitEncryptPkmnData
	mov     r7, r0
	mov     r0, r4
	bl      Function_2079d40_GetPokeIconGraphicNr
	str     r0, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0xa]
	mov     r0, r4
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0xe]
	mov     r0, r4
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_225643c
	mov     r0, #0x1
	b       branch_225643e
@ 0x225643c

.thumb
branch_225643c: @ 225643c :thumb
	mov     r0, #0x0
.thumb
branch_225643e: @ 225643e :thumb
	strh    r0, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r5, #0x12]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r5, #0x13]
	mov     r0, r4
	mov     r1, r7
	bl      InitEncryptPkmnData_Part1And2
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	ldr     r0, [r0, #0x0]
	add     r5, #0x10
	cmp     r6, r0
	blt     branch_22563e2

branch_225646c: @ 225646c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2256470

.thumb
Function_2256470: @ 2256470 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r1, #0xe3
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	lsl     r1, r1, #2
	bl      malloc
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2256502
	add     r0, #0xc
	mov     r1, #0x8
	bl      0x2255090
	ldr     r0, [sp, #0x8]
	str     r4, [r0, #0x0]
	bl      0x2254674
	ldr     r1, [sp, #0x8]
	str     r0, [r1, #0x4]
	bl      0x2254664
	ldr     r1, [sp, #0x8]
	mov     r6, #0x0
	str     r0, [r1, #0x8]
	mov     r0, r1
	str     r6, [r0, #0x38]
	add     r0, #0xf4
	mov     r4, r1
	str     r6, [r0, #0x0]
	add     r4, #0x3c
	mov     r5, r1
	mov     r7, r6
.thumb
branch_22564b6: @ 22564b6 :thumb
	mov     r0, r4
	bl      Function_201a7a0
	mov     r0, r5
	add     r0, #0x9c
	str     r7, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xb4
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r7, [r0, #0x0]
	add     r4, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x6
	blt     branch_22564b6
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, #0xc
	add     r0, #0xcc
	mov     r2, #0x5
	mov     r3, #0x6
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, #0xc
	add     r0, #0xe0
	mov     r2, #0x6b
	mov     r3, #0x6c
	bl      0x2255958
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     sp, #0xc
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2256502

.thumb
branch_2256502: @ 2256502 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2256508

.thumb
Function_2256508: @ 2256508 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256536
	bl      Function_2256bd4
	mov     r0, r4
	add     r0, #0xcc
	bl      0x22559b0
	mov     r0, r4
	add     r0, #0xe0
	bl      0x22559b0
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256530
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_2256530: @ 2256530 :thumb
	mov     r0, r4
	bl      free
.thumb
branch_2256536: @ 2256536 :thumb
	pop     {r4,pc}
@ 0x2256538

.thumb
Function_2256538: @ 2256538 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256558, (=0x2256d18)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256556


.align 2


.word 0x2256d18 @ 0x2256558
.thumb
Function_225655c: @ 225655c :thumb
	ldr     r3, [pc, #0x4] @ 0x2256564, (=0x2255131)
	add     r0, #0xc
	bx      r3
@ 0x2256562


.align 2


.word 0x2255131 @ 0x2256564
.thumb
Function_2256568: @ 2256568 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256570, (=0x2255155)
	add     r0, #0xc
	bx      r3
@ 0x225656e


.align 2


.word 0x2255155 @ 0x2256570
.thumb
Function_2256574: @ 2256574 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0xc
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256586


.align 2, 0


.thumb
Function_2256588: @ 2256588 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0xa0] @ 0x225663c, (=0x2256cfc)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc
	mov     r1, #0x6a
	mov     r3, #0x6
	bl      LoadFromNARC_RGCN
	mov     r3, #0x0
	lsr     r5, r0, #5
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x5
	bl      Function_2019cb8
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	str     r5, [r4, #0x34]
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	mov     r2, r5
	bl      Function_2256648
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	mov     r0, #0xf
	mov     r1, #0x1
	bl      0x2255308
	mov     r0, #0x2
	bl      0x2255360
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	bl      Function_2256898
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	bl      Function_225692c
	mov     r0, r4
	bl      Function_2256a48
	ldr     r1, [pc, #0x28] @ 0x2256640, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256644, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	str     r3, [sp, #0x10]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0x14
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r6
	bl      Function_2256574
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225663a


.align 2


.word 0x2256cfc @ 0x225663c
.word 0x4001000 @ 0x2256640
.word 0xffffe0ff @ 0x2256644
.thumb
Function_2256648: @ 2256648 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	mov     r0, r1
	str     r1, [sp, #0x18]
	ldr     r1, [r0, #0x0]
	str     r2, [sp, #0x1c]
	cmp     r1, #0x0
	ble     branch_22566d4
	ldr     r4, [sp, #0x14]
	ldr     r7, [sp, #0x20]
	ldr     r5, [pc, #0x78] @ 0x22566dc, (=0x2256ce4)
	ldr     r6, [sp, #0x18]
	add     r4, #0x3c
.thumb
branch_2256668: @ 2256668 :thumb
	mov     r0, r4
	bl      Function_201a7a0
	ldrh    r0, [r5, #0x2]
	mov     r1, r4
	mov     r2, #0x6
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	add     r0, r0, r7
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldrh    r3, [r5, #0x0]
	ldr     r0, [sp, #0x14]
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x4]
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, r4
	bl      Function_201a9f4
	ldr     r1, [sp, #0x14]
	mov     r0, r4
	bl      Function_22566e0
	ldrh    r0, [r6, #0xa]
	ldrh    r1, [r6, #0xc]
	bl      Function_225686c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225682c
	ldr     r0, [sp, #0x20]
	add     r4, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	add     r7, #0x8
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0x20]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x10
	cmp     r0, r1
	blt     branch_2256668
.thumb
branch_22566d4: @ 22566d4 :thumb
	ldr     r0, [sp, #0x14]
	str     r1, [r0, #0x38]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22566dc

.word 0x2256ce4 @ 0x22566dc
.thumb
Function_22566e0: @ 22566e0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrb    r0, [r5, #0x6]
	mov     r4, r1
	mov     r2, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r3, [r5, #0x5]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldrb    r0, [r5, #0x6]
	mov     r1, #0x6
	mov     r2, #0x2
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x7]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r3, [r5, #0x5]
	ldr     r0, [r4, #0x4]
	bl      Function_2019cb8
	ldrb    r0, [r5, #0x6]
	ldr     r2, [pc, #0xe4] @ 0x2256818, (=0x401)
	mov     r1, #0x6
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r6, [r5, #0x5]
	ldrb    r3, [r5, #0x7]
	ldr     r0, [r4, #0x4]
	add     r3, r6, r3
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldrb    r0, [r5, #0x6]
	mov     r1, #0x6
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x8]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r3, [r5, #0x5]
	ldr     r0, [r4, #0x4]
	.hword  0x1e5b @ sub r3, r3, #0x1
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldrb    r0, [r5, #0x6]
	ldr     r2, [pc, #0xa0] @ 0x225681c, (=0x406)
	mov     r1, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x8]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r6, [r5, #0x5]
	ldrb    r3, [r5, #0x7]
	ldr     r0, [r4, #0x4]
	add     r3, r6, r3
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldrb    r1, [r5, #0x6]
	ldrb    r0, [r5, #0x8]
	ldr     r2, [pc, #0x7c] @ 0x2256820, (=0x801)
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r3, [r5, #0x5]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	.hword  0x1e5b @ sub r3, r3, #0x1
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldrb    r1, [r5, #0x6]
	ldrb    r0, [r5, #0x8]
	ldr     r2, [pc, #0x58] @ 0x2256824, (=0x802)
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x7]
	mov     r1, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r3, [r5, #0x5]
	ldr     r0, [r4, #0x4]
	bl      Function_2019cb8
	ldrb    r1, [r5, #0x6]
	ldrb    r0, [r5, #0x8]
	ldr     r2, [pc, #0x38] @ 0x2256828, (=0xc01)
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	ldrb    r4, [r5, #0x5]
	ldrb    r3, [r5, #0x7]
	mov     r1, #0x6
	add     r3, r4, r3
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_2019cb8
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2256816


.align 2


.word 0x401 @ 0x2256818
.word 0x406 @ 0x225681c
.word 0x801 @ 0x2256820
.word 0x802 @ 0x2256824
.word 0xc01 @ 0x2256828
.thumb
Function_225682c: @ 225682c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x40
	str     r1, [sp, #0x0]
	mov     r1, #0x8
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	mov     r3, r2
	mov     r5, r0
	bl      Function_201ae78
	cmp     r4, #0x0
	beq     branch_2256860
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0xf
	mov     r3, r2
	bl      Function_201ae78
.thumb
branch_2256860: @ 2256860 :thumb
	mov     r0, r5
	bl      Function_201accc
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x225686a


.align 2, 0


.thumb
Function_225686c: @ 225686c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	bne     branch_2256876
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2256876

.thumb
branch_2256876: @ 2256876 :thumb
	cmp     r0, r1
	bne     branch_225687e
	mov     r0, #0x40
	pop     {r3,pc}
@ 0x225687e

.thumb
branch_225687e: @ 225687e :thumb
	lsl     r0, r0, #12
	blx     _u32_div_f
	lsl     r0, r0, #5
	lsr     r0, r0, #12
	bne     branch_225688e
	mov     r0, #0x1
	b       branch_2256894
@ 0x225688e

.thumb
branch_225688e: @ 225688e :thumb
	cmp     r0, #0x20
	bne     branch_2256894
	mov     r0, #0x1f
.thumb
branch_2256894: @ 2256894 :thumb
	lsl     r0, r0, #1
	pop     {r3,pc}
@ 0x2256898

.thumb
Function_2256898: @ 2256898 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x6d
	bl      Function_2006ec0
	mov     r4, #0x0
	add     r0, sp, #0x18
	strb    r4, [r0, #0xa]
	mov     r1, #0x2
	strb    r1, [r0, #0xb]
	strb    r4, [r0, #0xc]
	strb    r4, [r0, #0xd]
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_2256922
	ldr     r7, [sp, #0xc]
	ldr     r6, [sp, #0x10]
	mov     r0, r7
	str     r0, [sp, #0x14]
	add     r0, #0xe0
	ldr     r5, [pc, #0x50] @ 0x2256928, (=0x2256ccc)
	str     r0, [sp, #0x14]
.thumb
branch_22568d8: @ 22568d8 :thumb
	ldrh    r0, [r6, #0xe]
	cmp     r0, #0x0
	beq     branch_2256912
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_22568ea
	mov     r1, #0x1
	b       branch_22568ec
@ 0x22568ea

.thumb
branch_22568ea: @ 22568ea :thumb
	mov     r1, #0x0
.thumb
branch_22568ec: @ 22568ec :thumb
	add     r0, sp, #0x18
	strh    r1, [r0, #0x8]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [sp, #0x14]
	add     r1, sp, #0x18
	add     r0, #0x1c
	lsl     r0, r0, #12
	str     r0, [sp, #0x18]
	ldrh    r0, [r5, #0x2]
	add     r0, #0x15
	lsl     r0, r0, #12
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x8]
	bl      0x2255810
	mov     r1, r7
	add     r1, #0xb4
	str     r0, [r1, #0x0]
.thumb
branch_2256912: @ 2256912 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r0, [r0, #0x0]
	add     r6, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r4, r0
	blt     branch_22568d8
.thumb
branch_2256922: @ 2256922 :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2256926


.align 2


.word 0x2256ccc @ 0x2256928
.thumb
Function_225692c: @ 225692c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]

	mov     r0, #PlPokeIcon_Narc
	mov     r1, #0x8
	bl      LoadFromNARC_8
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2256a40
	mov     r0, #0x0
	add     r1, sp, #0x20
	strh    r0, [r1, #0xc]
	str     r0, [sp, #0x10]
	strb    r0, [r1, #0xe]
	mov     r0, #0x2
	strb    r0, [r1, #0xf]
	mov     r7, #0x1
	strb    r7, [r1, #0x10]
	ldr     r0, [sp, #0x8]
	strb    r7, [r1, #0x11]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_2256a3a
	ldr     r5, [sp, #0x4]
	mov     r0, #0x8
	mov     r1, #0x43
	str     r0, [sp, #0xc]
	lsl     r1, r1, #2
	mov     r0, r5
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	mov     r0, r5
	str     r0, [sp, #0x1c]
	add     r0, #0xcc
	ldr     r4, [sp, #0x8]
	ldr     r6, [pc, #0xcc] @ 0x2256a44, (=0x2256ccc)
	add     r7, #0xff
	str     r0, [sp, #0x1c]
.thumb
branch_225697c: @ 225697c :thumb
	ldr     r0, [sp, #0x18]
	mov     r3, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r1, [r4, #0x4]
	mov     r2, #0x0
	lsl     r3, r3, #6
	bl      Function_2006dc8
	ldr     r0, [sp, #0x18]
	add     r1, sp, #0x20
	blx     Function_20a7118
	ldr     r0, [sp, #0x20]
	mov     r1, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #8
	blx     DC_FlushRange
	ldr     r0, [sp, #0x20]
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	mov     r1, r7
	lsl     r2, r2, #8
	blx     GXS_LoadOBJ
	ldrh    r0, [r6, #0x0]
	ldr     r2, [sp, #0x1c]
	add     r1, sp, #0x24
	lsl     r0, r0, #12
	str     r0, [sp, #0x24]
	ldrh    r0, [r6, #0x2]
	lsl     r0, r0, #12
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	bl      0x2255810
	mov     r1, r5
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0xc]
	bl      0x2255940
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	bl      0x22558c4
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x0
	beq     branch_22569f2
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2256a00
.thumb
branch_22569f2: @ 22569f2 :thumb
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x2255938
	b       branch_2256a18
@ 0x2256a00

.thumb
branch_2256a00: @ 2256a00 :thumb
	ldrh    r0, [r4, #0x8]
	ldrb    r1, [r4, #0x13]
	ldrb    r2, [r4, #0x12]
	bl      GetPokeIconPaletteNr
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      0x2255938
.thumb
branch_2256a18: @ 2256a18 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r7, r7, r0
	ldr     r0, [sp, #0xc]
	add     r4, #0x10
	add     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x8]
	.hword  0x1d2d @ add r5, r5, #0x4
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	cmp     r0, r1
	blt     branch_225697c
.thumb
branch_2256a3a: @ 2256a3a :thumb
	ldr     r0, [sp, #0x14]
	bl      Call_FS_CloseFile
.thumb
branch_2256a40: @ 2256a40 :thumb
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2256a44

.word 0x2256ccc @ 0x2256a44
.thumb
Function_2256a48: @ 2256a48 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x0
	lsl     r0, r0, #8
	strb    r1, [r4, r0]
	mov     r0, r4
	add     r0, #0xf8
	str     r4, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [r4, #0x0]
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	mov     r1, r4
	ldr     r0, [pc, #0xc] @ 0x2256a74, (=0x2256a79)
	add     r1, #0xf8
	mov     r2, #0x1
	bl      AddTaskToTaskList1
	add     r4, #0xf4
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2256a74

.word 0x2256a79 @ 0x2256a74
.thumb
Function_2256a78: @ 2256a78 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x8]
	ldr     r4, [r5, #0x4]
	ldr     r6, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2256a8c
	cmp     r0, #0x1
	beq     branch_2256ae6
	pop     {r4-r6,pc}
@ 0x2256a8c

.thumb
branch_2256a8c: @ 2256a8c :thumb
	mov     r0, r4
	add     r0, #0x66
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256b6c
	ldr     r0, [r4, #0x68]
	ldr     r1, [r4, #0x6c]
	ldr     r2, [r4, #0x0]
	bl      Function_2256b78
	ldr     r1, [r4, #0x0]
	cmp     r0, r1
	bcs     branch_2256b6c
	lsl     r2, r0, #4
	add     r1, r4, r2
	ldrh    r3, [r1, #0xa]
	cmp     r3, #0x0
	beq     branch_2256b6c
	ldrb    r3, [r1, #0x12]
	cmp     r3, #0x0
	bne     branch_2256b6c
	mov     r3, #0x0
	strb    r3, [r5, #0x9]
	strb    r3, [r5, #0xb]
	strb    r0, [r5, #0xa]
	mov     r3, #0x2
	str     r3, [r5, #0x10]
	ldrh    r0, [r1, #0x10]
	cmp     r0, #0x0
	bne     branch_2256ad0
	mov     r0, #0x1
	strb    r0, [r5, #0xc]
	mov     r0, #0x8
	b       branch_2256ad4
@ 0x2256ad0

.thumb
branch_2256ad0: @ 2256ad0 :thumb
	strb    r3, [r5, #0xc]
	mov     r0, #0x4
.thumb
branch_2256ad4: @ 2256ad4 :thumb
	strb    r0, [r5, #0xd]
	mov     r0, #0x1
	strb    r0, [r5, #0x8]
	add     r1, r4, r2
	ldrh    r0, [r1, #0x8]
	ldrb    r1, [r1, #0x13]
	bl      0x2254444
	pop     {r4-r6,pc}
@ 0x2256ae6

.thumb
branch_2256ae6: @ 2256ae6 :thumb
	ldrb    r1, [r5, #0xb]
	ldrb    r0, [r5, #0xd]
	cmp     r1, r0
	bne     branch_2256b28
	mov     r0, r4
	add     r0, #0x64
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256b08
	ldr     r0, [r4, #0x68]
	ldr     r1, [r4, #0x6c]
	ldr     r2, [r4, #0x0]
	bl      Function_2256b78
	ldrb    r1, [r5, #0xa]
	cmp     r1, r0
	beq     branch_2256b28
.thumb
branch_2256b08: @ 2256b08 :thumb
	ldrb    r0, [r5, #0xa]
	ldr     r1, [pc, #0x64] @ 0x2256b70, (=0x2256ccc)
	ldr     r3, [pc, #0x64] @ 0x2256b74, (=0x2256cce)
	lsl     r2, r0, #2
	add     r0, r6, r2
	ldrh    r1, [r1, r2]
	ldrh    r2, [r3, r2]
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	mov     r0, #0x0
	strb    r0, [r5, #0x8]
	pop     {r4-r6,pc}
@ 0x2256b28

.thumb
branch_2256b28: @ 2256b28 :thumb
	ldrb    r0, [r5, #0x9]
	cmp     r0, #0x0
	bne     branch_2256b68
	ldrb    r0, [r5, #0xa]
	ldr     r1, [pc, #0x3c] @ 0x2256b70, (=0x2256ccc)
	ldr     r3, [pc, #0x40] @ 0x2256b74, (=0x2256cce)
	lsl     r2, r0, #2
	add     r0, r6, r2
	ldrh    r1, [r1, r2]
	add     r0, #0x9c
	ldrh    r2, [r3, r2]
	ldr     r4, [r5, #0x10]
	ldr     r0, [r0, #0x0]
	add     r2, r4, r2
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	ldrb    r1, [r5, #0xb]
	ldrb    r0, [r5, #0xd]
	cmp     r1, r0
	bcs     branch_2256b58
	add     r0, r1, #0x1
	strb    r0, [r5, #0xb]
.thumb
branch_2256b58: @ 2256b58 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x10]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [r5, #0x10]
	ldrb    r0, [r5, #0xc]
	strb    r0, [r5, #0x9]
	pop     {r4-r6,pc}
@ 0x2256b68

.thumb
branch_2256b68: @ 2256b68 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x9]
.thumb
branch_2256b6c: @ 2256b6c :thumb
	pop     {r4-r6,pc}
@ 0x2256b6e


.align 2


.word 0x2256ccc @ 0x2256b70
.word 0x2256cce @ 0x2256b74
.thumb
Function_2256b78: @ 2256b78 :thumb
	push    {r3-r7,lr}
	mov     lr, r0
	mov     r12, r1
	mov     r7, r2
	ldr     r6, [pc, #0x48] @ 0x2256bcc, (=0x0)
	beq     branch_2256bc6
	ldr     r3, [pc, #0x48] @ 0x2256bd0, (=0x2256ccc)
.thumb
branch_2256b86: @ 2256b86 :thumb
	ldrh    r1, [r3, #0x0]
	ldrh    r4, [r3, #0x2]
	mov     r5, lr
	mov     r0, r1
	sub     r0, #0x10
	mov     r2, r4
	add     r1, #0x10
	sub     r5, r5, r0
	sub     r0, r1, r0
	sub     r2, #0x8
	cmp     r5, r0
	bcs     branch_2256ba2
	mov     r0, #0x1
	b       branch_2256ba4
@ 0x2256ba2

.thumb
branch_2256ba2: @ 2256ba2 :thumb
	mov     r0, #0x0
.thumb
branch_2256ba4: @ 2256ba4 :thumb
	mov     r1, r12
	add     r4, #0x18
	sub     r1, r1, r2
	sub     r2, r4, r2
	cmp     r1, r2
	bcs     branch_2256bb4
	mov     r1, #0x1
	b       branch_2256bb6
@ 0x2256bb4

.thumb
branch_2256bb4: @ 2256bb4 :thumb
	mov     r1, #0x0
.thumb
branch_2256bb6: @ 2256bb6 :thumb
	tst     r0, r1
	beq     branch_2256bbe
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2256bbe

.thumb
branch_2256bbe: @ 2256bbe :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r6, r7
	bcc     branch_2256b86
.thumb
branch_2256bc6: @ 2256bc6 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2256bca


.align 2


.word 0x0 @ 0x2256bcc
.word 0x2256ccc @ 0x2256bd0
.thumb
Function_2256bd4: @ 2256bd4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, r6
.thumb
branch_2256bde: @ 2256bde :thumb
	mov     r0, r4
	add     r0, #0x9c
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2256bf4
	ldr     r0, [r5, #0x8]
	bl      0x22558b0
	mov     r0, r4
	add     r0, #0x9c
	str     r7, [r0, #0x0]
.thumb
branch_2256bf4: @ 2256bf4 :thumb
	mov     r0, r4
	add     r0, #0xb4
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2256c0c
	ldr     r0, [r5, #0x8]
	bl      0x22558b0
	mov     r1, r4
	add     r1, #0xb4
	mov     r0, #0x0
	str     r0, [r1, #0x0]
.thumb
branch_2256c0c: @ 2256c0c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_2256bde
	ldr     r0, [r5, #0x38]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_2256c30
	mov     r4, r5
	add     r4, #0x3c
.thumb
branch_2256c20: @ 2256c20 :thumb
	mov     r0, r4
	bl      Function_201a8fc
	ldr     r0, [r5, #0x38]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, r0
	bcc     branch_2256c20
.thumb
branch_2256c30: @ 2256c30 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x38]
	pop     {r3-r7,pc}
@ 0x2256c36


.align 2, 0


.thumb
Function_2256c38: @ 2256c38 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r4
	bl      Function_2256574
	pop     {r4,pc}
@ 0x2256c52


.align 2, 0


.thumb
Function_2256c54: @ 2256c54 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r4, r0
	mov     r0, r5
	bl      Function_2256bd4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	mov     r2, #0x5
	bl      Function_2019cb8
	mov     r0, r5
	mov     r1, r4
	bl      Function_2256898
	mov     r0, r5
	mov     r1, r4
	bl      Function_225692c
	ldr     r2, [r5, #0x34]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2256648
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r0, [pc, #0x10] @ 0x2256cbc, (=0x669)
	bl      0x2254424
	mov     r0, r6
	bl      Function_2256574
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2256cba

.align 2
.word 0x669 @ 0x2256cbc



Unknown_2256cc0: @ 0x2256cc0
.incbin "./baserom/overlay/overlay_0032.bin", 0xb00, 0x2256d60 - 0x2256cc0


@end 0x2256d60




