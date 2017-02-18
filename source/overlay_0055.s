
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram55, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256289)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256289 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x8
	mov     r1, #0x10
	str     r2, [sp, #0x0]
	mov     r5, r3
	bl      malloc
	mov     r4, r0
	beq     branch_2256214
	ldr     r2, [sp, #0x0]
	mov     r1, r7
	mov     r3, r5
	bl      Function_225621c
	cmp     r0, #0x0
	beq     branch_225620e
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256255)
	mov     r1, r4
	mov     r2, #0x1
	bl      AddTaskToTaskList1
	cmp     r0, #0x0
	beq     branch_225620e
	str     r4, [r6, #0x0]
	str     r5, [r4, #0x4]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225620e

.thumb
branch_225620e: @ 225620e :thumb
	mov     r0, r4
	bl      free
.thumb
branch_2256214: @ 2256214 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256218

.word 0x2256255 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x8
	add     r1, r5, #0x4
	bl      Function_225632c
	cmp     r0, #0x0
	beq     branch_225623c
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	str     r4, [r5, #0xc]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225623c

.thumb
branch_225623c: @ 225623c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256240

.thumb
Function_2256240: @ 2256240 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_2256360
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2256252


.align 2, 0


.thumb
Function_2256254: @ 2256254 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_2256280
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x2256284, (=Unknown_2256484)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256280
	mov     r0, r4
	bl      Function_2256240
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0xc]
	bl      0x2254260
.thumb
branch_2256280: @ 2256280 :thumb
	pop     {r3-r5,pc}
@ 0x2256282

.align 2
.word Unknown_2256484 @ 0x2256284



.thumb
Function_2256288: @ 2256288 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225628e


.align 2, 0
.thumb
Function_2256290: @ 2256290 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256298
	b       branch_225629a
@ 0x2256298

.thumb
branch_2256298: @ 2256298 :thumb
	mov     r1, #0x2
.thumb
branch_225629a: @ 225629a :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562a2


.align 2, 0


.thumb
Function_22562a4: @ 22562a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562b4
	cmp     r0, #0x1
	beq     branch_22562c4
	b       branch_22562de
@ 0x22562b4

.thumb
branch_22562b4: @ 22562b4 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2256378
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22562de
@ 0x22562c4

.thumb
branch_22562c4: @ 22562c4 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_225639c
	cmp     r0, #0x0
	beq     branch_22562de
	ldr     r0, [r4, #0xc]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256290
.thumb
branch_22562de: @ 22562de :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22562e2


.align 2, 0


.thumb
Function_22562e4: @ 22562e4 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x2]
	cmp     r1, #0x0
	beq     branch_22562f2
	mov     r1, #0x2
	bl      Function_2256290
.thumb
branch_22562f2: @ 22562f2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22562f6


.align 2, 0


.thumb
Function_22562f8: @ 22562f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256308
	cmp     r0, #0x1
	beq     branch_2256318
	b       branch_2256326
@ 0x2256308

.thumb
branch_2256308: @ 2256308 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2256378
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256326
@ 0x2256318

.thumb
branch_2256318: @ 2256318 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_22563a8
	cmp     r0, #0x0
	beq     branch_2256326
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256326

.thumb
branch_2256326: @ 2256326 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225632a


.align 2, 0


.thumb
Function_225632c: @ 225632c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x30
	bl      malloc
	mov     r4, r0
	beq     branch_225635a
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	mov     r0, #0x8
	str     r6, [r4, #0x0]
	bl      Function_2018340
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_225635a
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225635a

.thumb
branch_225635a: @ 225635a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225635e


.align 2, 0


.thumb
Function_2256360: @ 2256360 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256376
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2256370
	bl      free
.thumb
branch_2256370: @ 2256370 :thumb
	mov     r0, r4
	bl      free
.thumb
branch_2256376: @ 2256376 :thumb
	pop     {r4,pc}
@ 0x2256378

.thumb
Function_2256378: @ 2256378 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256398, (=0x22564ac)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256396


.align 2


.word 0x22564ac @ 0x2256398
.thumb
Function_225639c: @ 225639c :thumb
	ldr     r3, [pc, #0x4] @ 0x22563a4, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22563a2


.align 2


.word 0x2255131 @ 0x22563a4
.thumb
Function_22563a8: @ 22563a8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22563b0, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22563ae


.align 2


.word 0x2255155 @ 0x22563b0
.thumb
Function_22563b4: @ 22563b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22563c6


.align 2, 0


.thumb
Function_22563c8: @ 22563c8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x80] @ 0x225645c, (=0x2256490)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x8
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r3, #0x6
	bl      LoadFromNARC_RGCN
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019cb8
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]

	mov     r0, #Poketch_Narc
	mov     r1, #0x9
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Call_LoadFromNARC_RLCN
	ldr     r1, [r5, #0x0]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x6
	bl      0x2255440
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x24] @ 0x2256460, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256464, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
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
	bl      Function_22563b4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225645c

.word 0x2256490 @ 0x225645c
.word 0x4001000 @ 0x2256460
.word 0xffffe0ff @ 0x2256464
.thumb
Function_2256468: @ 2256468 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r4
	bl      Function_22563b4
	pop     {r4,pc}
@ 0x2256482


.align 2, 0
Unknown_2256484: @ 0x2256484
.incbin "./baserom/overlay/overlay_0055.bin", 0x2c4, 0x22564e0 - 0x2256484


@end 0x22564e0




