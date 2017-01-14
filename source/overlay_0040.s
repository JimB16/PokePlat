

.section .iwram40, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562a5)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562a5 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x34
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256271)
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
.word 0x2256271 @ 0x2256218



.thumb
Function_225621c: @ 225621c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      0x2254544
	bl      LoadVariableAreaAdress_8
	str     r0, [r5, #0x30]
	ldr     r1, [r5, #0x30]
	add     r0, r5, #0x4
	bl      Function_22563d0
	mov     r0, r5
	add     r0, #0x28
	add     r1, r5, #0x4
	mov     r2, r6
	bl      Function_225645c
	cmp     r0, #0x0
	beq     branch_2256256
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	str     r4, [r5, #0x2c]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256256

.thumb
branch_2256256: @ 2256256 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225625a


.align 2, 0


.thumb
Function_225625c: @ 225625c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_22564b8
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225626e


.align 2, 0


.thumb
Function_2256270: @ 2256270 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_225629c
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x22562a0, (=Unknown_2256a38)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_225629c
	mov     r0, r4
	bl      Function_225625c
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x2c]
	bl      0x2254260
.thumb
branch_225629c: @ 225629c :thumb
	pop     {r3-r5,pc}
@ 0x225629e

.align 2
.word Unknown_2256a38 @ 0x22562a0



.thumb
Function_22562a4: @ 22562a4 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562aa


.align 2, 0
.thumb
Function_22562ac: @ 22562ac :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562b4
	b       branch_22562b6
@ 0x22562b4

.thumb
branch_22562b4: @ 22562b4 :thumb
	mov     r1, #0x2
.thumb
branch_22562b6: @ 22562b6 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562be


.align 2, 0


.thumb
Function_22562c0: @ 22562c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562d0
	cmp     r0, #0x1
	beq     branch_22562e0
	b       branch_22562fa
@ 0x22562d0

.thumb
branch_22562d0: @ 22562d0 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_22565c8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22562fa
@ 0x22562e0

.thumb
branch_22562e0: @ 22562e0 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_22565ec
	cmp     r0, #0x0
	beq     branch_22562fa
	ldr     r0, [r4, #0x2c]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562ac
.thumb
branch_22562fa: @ 22562fa :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22562fe


.align 2, 0


.thumb
Function_2256300: @ 2256300 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256314
	mov     r1, #0x2
	bl      Function_22562ac
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256314

.thumb
branch_2256314: @ 2256314 :thumb
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_2256320
	cmp     r1, #0x1
	beq     branch_2256340
	b       branch_2256350
@ 0x2256320

.thumb
branch_2256320: @ 2256320 :thumb
	bl      Function_2256388
	cmp     r0, #0x0
	beq     branch_2256350
	ldr     r1, [r4, #0x30]
	add     r0, r4, #0x4
	bl      Function_22563d0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_22565c8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256350
@ 0x2256340

.thumb
branch_2256340: @ 2256340 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_22565ec
	cmp     r0, #0x0
	beq     branch_2256350
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_2256350: @ 2256350 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256354

.thumb
Function_2256354: @ 2256354 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256364
	cmp     r0, #0x1
	beq     branch_2256374
	b       branch_2256382
@ 0x2256364

.thumb
branch_2256364: @ 2256364 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_22565c8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256382
@ 0x2256374

.thumb
branch_2256374: @ 2256374 :thumb
	ldr     r0, [r4, #0x28]
	bl      Function_22565f8
	cmp     r0, #0x0
	beq     branch_2256382
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256382

.thumb
branch_2256382: @ 2256382 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256386


.align 2, 0


.thumb
Function_2256388: @ 2256388 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x2c]
	bl      0x225450c
	cmp     r0, #0x0
	bne     branch_22563c8
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      Function_20227c0
	cmp     r0, #0x0
	beq     branch_22563c8
	ldr     r0, [sp, #0x4]
	sub     r0, #0x10
	cmp     r0, #0xbf
	bcs     branch_22563ae
	mov     r1, #0x1
	b       branch_22563b0
@ 0x22563ae

.thumb
branch_22563ae: @ 22563ae :thumb
	mov     r1, #0x0
.thumb
branch_22563b0: @ 22563b0 :thumb
	ldr     r0, [sp, #0x0]
	sub     r0, #0x10
	cmp     r0, #0x9f
	bcs     branch_22563bc
	mov     r0, #0x1
	b       branch_22563be
@ 0x22563bc

.thumb
branch_22563bc: @ 22563bc :thumb
	mov     r0, #0x0
.thumb
branch_22563be: @ 22563be :thumb
	tst     r0, r1
	beq     branch_22563c8
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22563c8

.thumb
branch_22563c8: @ 22563c8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3,pc}
@ 0x22563ce


.align 2, 0


.thumb
Function_22563d0: @ 22563d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, r1
	str     r1, [sp, #0x4]
	bl      0x21e6238
	ldr     r1, [sp, #0x0]
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	bl      Function_2026234
	ldr     r1, [sp, #0x0]
	mov     r7, #0x0
	strb    r0, [r1, #0x1]
	mov     r0, r1
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_2256456
	mov     r5, r1
	mov     r6, r1
branch_22563fa: @ 22563fa :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_2026218
	str     r0, [sp, #0x8]
	bl      Function_2026220_Dummy
	mov     r4, r0
	bl      InitEncryptPkmnData_Part1
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      Function_2079d40
	str     r0, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r6, #0x1c]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r6, #0x20]
	ldr     r0, [sp, #0x8]
	bl      0x21e6590
	str     r0, [r5, #0xc]
	mov     r0, r4
	bl      DecidePkmnGender
	str     r0, [r5, #0x14]
	ldr     r1, [sp, #0xc]
	mov     r0, r4
	bl      InitEncryptPkmnData_Part1Again
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	ldrb    r0, [r0, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r7, r0
	blt     branch_22563fa

branch_2256456: @ 2256456 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225645a


.align 2, 0


.thumb
Function_225645c: @ 225645c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x90
	bl      malloc
	mov     r4, r0
	beq     branch_22564ae
	add     r0, #0x8
	mov     r1, #0x4
	bl      0x2255090
	str     r5, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x20]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x88
	str     r2, [r0, #0x0]
	ldr     r0, [pc, #0x24] @ 0x22564b4, (=0x22567e1)
	mov     r1, r4
	bl      AddTaskToTaskList3
	mov     r1, r4
	add     r1, #0x8c
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_22564d4
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22564ae
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22564ae

.thumb
branch_22564ae: @ 22564ae :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22564b2


.align 2


.word Function_22567e0+1 @ =0x22567e1, 0x22564b4
.thumb
Function_22564b8: @ 22564b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_22564d2
	bl      Function_2256598
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      free
.thumb
branch_22564d2: @ 22564d2 :thumb
	pop     {r4,pc}
@ 0x22564d4

.thumb
Function_22564d4: @ 22564d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r1, [sp, #0x10]
	bl      0x2255360
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x54
	bl      Function_2006ec0
	mov     r1, #0x14
	blx     _u32_div_f
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x14]
	str     r0, [r1, #0x78]
	ldr     r1, [sp, #0x10]
	bl      Function_2256808
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r1, #0xc
	add     r0, #0x50
	mov     r2, #0x52
	mov     r3, #0x53
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r1, #0xc
	add     r0, #0x64
	mov     r2, #0x5
	mov     r3, #0x6
	bl      0x2255958
	ldr     r5, [sp, #0xc]
	mov     r4, #0x0
	mov     r0, r5
	str     r0, [sp, #0x1c]
	add     r0, #0x50
	str     r0, [sp, #0x1c]
	mov     r0, r5
	str     r0, [sp, #0x18]
	add     r0, #0x64
	ldr     r6, [pc, #0x54] @ 0x2256594, (=0x2256a90)
	mov     r7, r4
	str     r0, [sp, #0x18]
.thumb
branch_2256544: @ 2256544 :thumb
	cmp     r4, #0x0
	blt     branch_2256564
	cmp     r4, #0x2
	bgt     branch_2256564
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x18]
	ldr     r0, [r0, #0x20]
	mov     r1, r6
	bl      0x2255810
	ldr     r1, [sp, #0x14]
	str     r0, [r5, #0x24]
	add     r1, r1, r7
	bl      0x2255940
	b       branch_2256572
@ 0x2256564

.thumb
branch_2256564: @ 2256564 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x1c]
	ldr     r0, [r0, #0x20]
	mov     r1, r6
	bl      0x2255810
	str     r0, [r5, #0x24]
.thumb
branch_2256572: @ 2256572 :thumb
	ldr     r0, [r5, #0x24]
	mov     r1, #0x1
	bl      0x2255948
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r7, #0x20
	cmp     r4, #0xb
	blt     branch_2256544
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	bl      Function_2256848
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2256592


.align 2


.word 0x2256a90 @ 0x2256594
.thumb
Function_2256598: @ 2256598 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_22565a0: @ 22565a0 :thumb
	ldr     r1, [r5, #0x24]
	cmp     r1, #0x0
	beq     branch_22565ac
	ldr     r0, [r6, #0x20]
	bl      0x22558b0
.thumb
branch_22565ac: @ 22565ac :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xb
	blt     branch_22565a0
	mov     r0, r6
	add     r0, #0x64
	bl      0x22559b0
	add     r6, #0x50
	mov     r0, r6
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x22565c6


.align 2, 0


.thumb
Function_22565c8: @ 22565c8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22565e8, (=0x2256a60)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22565e6


.align 2


.word 0x2256a60 @ 0x22565e8
.thumb
Function_22565ec: @ 22565ec :thumb
	ldr     r3, [pc, #0x4] @ 0x22565f4, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22565f2


.align 2


.word 0x2255131 @ 0x22565f4
.thumb
Function_22565f8: @ 22565f8 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256600, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22565fe


.align 2


.word 0x2255155 @ 0x2256600
.thumb
Function_2256604: @ 2256604 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256616


.align 2, 0


.thumb
Function_2256618: @ 2256618 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x78] @ 0x22566a4, (=0x2256a44)
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
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x51
	mov     r3, #0x6
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x50
	mov     r3, #0x6
	bl      Function_2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x30] @ 0x22566a8, (=0x400104c)
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	strb    r0, [r1, #0x1]
	sub     r1, #0x4c
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	ldr     r0, [pc, #0x24] @ 0x22566ac, (=0xffffe0ff)
	str     r3, [sp, #0x10]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0x4
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_2256604
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22566a2


.align 2


.word 0x2256a44 @ 0x22566a4
.word 0x400104c @ 0x22566a8
.word 0xffffe0ff @ 0x22566ac
.thumb
Function_22566b0: @ 22566b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_22566cc
	cmp     r0, #0x1
	beq     branch_22566da
	pop     {r3-r5,pc}
@ 0x22566cc

.thumb
branch_22566cc: @ 22566cc :thumb
	mov     r0, #0x1
	add     r4, #0x84
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x22566da

.thumb
branch_22566da: @ 22566da :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_22565ec
	cmp     r0, #0x0
	beq     branch_22566fc
	ldr     r0, [pc, #0x18] @ 0x2256700, (=0x400104c)
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r5
	bl      Function_2256604
.thumb
branch_22566fc: @ 22566fc :thumb
	pop     {r3-r5,pc}
@ 0x22566fe


.align 2


.word 0x400104c @ 0x2256700
.thumb
Function_2256704: @ 2256704 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r6, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x3
	bhi     branch_22567d0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225672e

Jumppoints_225672e:
.hword branch_2256736 - Jumppoints_225672e - 2
.hword branch_225675c - Jumppoints_225672e - 2
.hword branch_2256774 - Jumppoints_225672e - 2
.hword branch_22567ca - Jumppoints_225672e - 2
.thumb
branch_2256736: @ 2256736 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, #0xa
	str     r0, [r4, #0x7c]
	mov     r0, r4
	bl      Function_22567d8
	ldr     r0, [pc, #0x84] @ 0x22567d4, (=0x678)
	bl      0x2254424
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x225675c

.thumb
branch_225675c: @ 225675c :thumb
	ldr     r0, [r4, #0x78]
	mov     r1, r6
	bl      Function_2256808
	mov     r0, r4
	mov     r1, r6
	bl      Function_2256848
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x2256774

.thumb
branch_2256774: @ 2256774 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256790
	mov     r0, #0x0
	str     r0, [r4, #0x7c]
	mov     r0, r4
	bl      Function_22567d8
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x2256790

.thumb
branch_2256790: @ 2256790 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x4
	bcc     branch_22567d0
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x80
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x7c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x7c]
	mov     r0, r4
	bl      Function_22567d8
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x0
	bne     branch_22567d0
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x22567ca

.thumb
branch_22567ca: @ 22567ca :thumb
	mov     r0, r5
	bl      Function_2256604
.thumb
branch_22567d0: @ 22567d0 :thumb
	pop     {r4-r6,pc}
@ 0x22567d2


.align 2


.word 0x678 @ 0x22567d4
.thumb
Function_22567d8: @ 22567d8 :thumb
	mov     r1, #0x1
	add     r0, #0x88
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22567e0

.thumb
Function_22567e0: @ 22567e0 :thumb
	mov     r0, r1
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256802
	ldr     r2, [r1, #0x7c]
	ldr     r3, [pc, #0x14] @ 0x2256804, (=0x400104c)
	lsl     r0, r2, #4
	orr     r0, r2
	strb    r0, [r3, #0x0]
	ldr     r2, [r1, #0x7c]
	add     r1, #0x88
	lsl     r0, r2, #4
	orr     r0, r2
	strb    r0, [r3, #0x1]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
.thumb
branch_2256802: @ 2256802 :thumb
	bx      lr
@ 0x2256804

.word 0x400104c @ 0x2256804
.thumb
Function_2256808: @ 2256808 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x1
	mov     r4, r1
	mov     r1, r0
	mov     r2, #0x0
	bl      Function_2079d8c
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_2256824
	ldr     r1, [r4, #0x4]
	b       branch_2256826
@ 0x2256824

.thumb
branch_2256824: @ 2256824 :thumb
	mov     r1, r0
.thumb
branch_2256826: @ 2256826 :thumb
	str     r1, [sp, #0x0]
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x1
	bls     branch_2256832
	ldr     r1, [r4, #0x8]
	b       branch_2256834
@ 0x2256832

.thumb
branch_2256832: @ 2256832 :thumb
	mov     r1, r0
.thumb
branch_2256834: @ 2256834 :thumb
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, #0x3
	mov     r3, #0x1
	bl      0x22553a0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2256848

.thumb
Function_2256848: @ 2256848 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x0
	mov     r6, r1
	str     r0, [sp, #0x0]
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	ble     branch_2256880
	mov     r4, r6
	mov     r5, r7
.thumb
branch_225685c: @ 225685c :thumb
	ldrh    r0, [r4, #0x1c]
	ldrh    r1, [r4, #0x20]
	mov     r2, #0x0
	bl      Function_2079edc
	mov     r1, r0
	ldr     r0, [r5, #0x24]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x2255938
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x0]
	cmp     r0, r1
	blt     branch_225685c
.thumb
branch_2256880: @ 2256880 :thumb
	mov     r0, #0x1
	mov     r1, #0x0
	mov     r2, r0
	bl      Function_2079edc
	mov     r1, r0
	ldr     r0, [r7, #0x2c]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x2255938
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_22568b8
	ldrh    r0, [r6, #0x1c]
	ldrh    r1, [r6, #0x20]
	mov     r2, #0x1c
	bl      GetPkmnBaseData2
	cmp     r0, #0x0
	ldr     r0, [r7, #0x24]
	beq     branch_22568b2
	mov     r1, #0x6
	bl      0x22558c4
	b       branch_22568b8
@ 0x22568b2

.thumb
branch_22568b2: @ 22568b2 :thumb
	mov     r1, #0x7
	bl      0x22558c4
.thumb
branch_22568b8: @ 22568b8 :thumb
	mov     r0, r7
	ldr     r1, [r6, #0xc]
	add     r0, #0x30
	bl      Function_2256958
	mov     r0, r7
	ldr     r1, [r6, #0x10]
	add     r0, #0x3c
	bl      Function_2256958
	ldr     r0, [r7, #0x48]
	ldr     r1, [r6, #0x14]
	bl      Function_2256a14
	ldr     r0, [r7, #0x4c]
	ldr     r1, [r6, #0x18]
	bl      Function_2256a14
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_22568e6
	mov     r4, #0x1
	b       branch_22568e8
@ 0x22568e6

.thumb
branch_22568e6: @ 22568e6 :thumb
	mov     r4, #0x0
.thumb
branch_22568e8: @ 22568e8 :thumb
	ldr     r0, [r7, #0x24]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r7, #0x30]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r7, #0x34]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r7, #0x38]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r7, #0x48]
	mov     r1, r4
	bl      0x2255914
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x1
	bhi     branch_225691a
	mov     r4, #0x1
	b       branch_225691c
@ 0x225691a

.thumb
branch_225691a: @ 225691a :thumb
	mov     r4, #0x0
.thumb
branch_225691c: @ 225691c :thumb
	ldr     r0, [r7, #0x28]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r7, #0x3c]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r7, #0x40]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r7, #0x44]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r7, #0x4c]
	mov     r1, r4
	bl      0x2255914
	ldrb    r0, [r6, #0x1]
	cmp     r0, #0x0
	bne     branch_225694e
	mov     r1, #0x1
	b       branch_2256950
@ 0x225694e

.thumb
branch_225694e: @ 225694e :thumb
	mov     r1, #0x0
.thumb
branch_2256950: @ 2256950 :thumb
	ldr     r0, [r7, #0x2c]
	bl      0x2255914
	pop     {r3-r7,pc}
@ 0x2256958

.thumb
Function_2256958: @ 2256958 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r1
	str     r0, [sp, #0x0]
	cmp     r7, #0x64
	bls     branch_2256966
	mov     r7, #0x64
.thumb
branch_2256966: @ 2256966 :thumb
	ldr     r2, [pc, #0xa0] @ 0x2256a08, (=0x4000280)
	mov     r3, #0x0
	strh    r3, [r2, #0x0]
	mov     r0, r2
	str     r7, [r2, #0x10]
	mov     r1, #0x64
	add     r0, #0x18
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_225697a: @ 225697a :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_225697a
	ldr     r0, [pc, #0x88] @ 0x2256a0c, (=0x40002a0)
	ldr     r4, [pc, #0x84] @ 0x2256a08, (=0x4000280)
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x4]
	lsr     r0, r4, #11
.thumb
branch_225698a: @ 225698a :thumb
	ldrh    r1, [r4, #0x0]
	tst     r1, r0
	bne     branch_225698a
	ldr     r3, [pc, #0x7c] @ 0x2256a10, (=0x40002a8)
	mov     r1, #0x0
	ldr     r2, [r3, #0x0]
	mov     r0, r3
	strh    r1, [r4, #0x0]
	sub     r0, #0x18
	str     r2, [r0, #0x0]
	mov     r0, #0xa
	sub     r3, #0x10
	str     r0, [r3, #0x0]
	ldr     r2, [pc, #0x60] @ 0x2256a08, (=0x4000280)
	str     r1, [r3, #0x4]
	lsr     r0, r2, #11
.thumb
branch_22569aa: @ 22569aa :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22569aa
	ldr     r0, [pc, #0x58] @ 0x2256a0c, (=0x40002a0)
	ldr     r2, [pc, #0x54] @ 0x2256a08, (=0x4000280)
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x8]
	lsr     r0, r2, #11
.thumb
branch_22569ba: @ 22569ba :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22569ba
	ldr     r0, [pc, #0x4c] @ 0x2256a10, (=0x40002a8)
	ldr     r5, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r6, #0x0
	str     r0, [sp, #0xc]
	add     r4, sp, #0x4
.thumb
branch_22569cc: @ 22569cc :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	bl      0x22558c4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_22569cc
	cmp     r7, #0x64
	bcs     branch_22569e6
	mov     r1, #0x1
	b       branch_22569e8
@ 0x22569e6

.thumb
branch_22569e6: @ 22569e6 :thumb
	mov     r1, #0x0
.thumb
branch_22569e8: @ 22569e8 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2255914
	cmp     r7, #0xa
	bcs     branch_22569f8
	mov     r1, #0x1
	b       branch_22569fa
@ 0x22569f8

.thumb
branch_22569f8: @ 22569f8 :thumb
	mov     r1, #0x0
.thumb
branch_22569fa: @ 22569fa :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2255914
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256a06


.align 2


.word 0x4000280 @ 0x2256a08
.word 0x40002a0 @ 0x2256a0c
.word 0x40002a8 @ 0x2256a10
.thumb
Function_2256a14: @ 2256a14 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_2256a20
	cmp     r1, #0x1
	beq     branch_2256a28
	b       branch_2256a30
@ 0x2256a20

.thumb
branch_2256a20: @ 2256a20 :thumb
	mov     r1, #0xa
	bl      0x22558c4
	pop     {r3,pc}
@ 0x2256a28

.thumb
branch_2256a28: @ 2256a28 :thumb
	mov     r1, #0xb
	bl      0x22558c4
	pop     {r3,pc}
@ 0x2256a30

.thumb
branch_2256a30: @ 2256a30 :thumb
	mov     r1, #0xc
	bl      0x22558c4
	pop     {r3,pc}
@ 0x2256a38


Unknown_2256a38: @ 0x2256a38
.incbin "./baserom/overlay/overlay_0040.bin", 0x878, 0x2256b60 - 0x2256a38


@end 0x2256b60




