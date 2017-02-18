
thumb_func_start AllocateAreasOfMemory
AllocateAreasOfMemory: @ 2017e74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	str     r0, [sp, #0x4]
	add     r0, #0x18
	mov     r6, r2
	str     r0, [sp, #0x4]
	cmp     r6, r0
	bhs     branch_2017e8c
	mov     r6, r0
branch_2017e8c: @ 2017e8c :thumb
	cmp     r3, #0x0
	beq     branch_2017eaa
	mov     r0, #0x3
	tst     r0, r3
	beq     branch_2017ea0
	mov     r0, #0x3
branch_2017e98: @ 2017e98 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	mov     r1, r3
	tst     r1, r0
	bne     branch_2017e98
branch_2017ea0: @ 2017ea0 :thumb
	mov     r0, #0x0
	mov     r1, r3
	mov     r2, #0x4
	blx     OS_AllocFromArenaLo
branch_2017eaa: @ 2017eaa :thumb
	ldr     r1, [sp, #0x4]
	lsl     r7, r6, #1
	lsl     r2, r1, #1
	add     r1, r1, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #2
	add     r1, r7, r1
	mov     r0, #0x0
	add     r1, r6, r1
	mov     r2, #0x4
	blx     OS_AllocFromArenaLo

	ldr     r1, =RAM_21bfaf0
	str     r0, [r1, #RAM_21bfaf0_0]

	ldr     r1, [sp, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldr     r0, =RAM_21bfaf0
	str     r1, [r0, #RAM_21bfaf0_4]

	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #2
	add     r2, r1, r0
	ldr     r1, =RAM_21bfaf0
	str     r2, [r1, #RAM_21bfaf0_8]

	add     r1, r2, r0
	ldr     r0, =RAM_21bfaf0
	str     r1, [r0, #RAM_21bfaf0_c]

	add     r1, r1, r7
	str     r1, [r0, #RAM_21bfaf0_10]

	strh    r6, [r0, #RAM_21bfaf0_14]
	strh    r4, [r0, #RAM_21bfaf0_16]

	ldr     r0, [sp, #0x4]
	mov     r7, #0x0
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, =RAM_21bfaf0
	cmp     r4, #0x0
	strh    r1, [r0, #RAM_21bfaf0_1a]
	strh    r1, [r0, #RAM_21bfaf0_18]
	bls     branch_2017f4c
	str     r7, [sp, #0x0]
branch_2017efe: @ 2017efe :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_2017f08
	cmp     r0, #0x2
	beq     branch_2017f14
branch_2017f08: @ 2017f08 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x0
	mov     r2, #0x4
	blx     OS_AllocFromArenaLo
	b       branch_2017f1e

branch_2017f14: @ 2017f14 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x2
	mov     r2, #0x4
	blx     OS_AllocFromArenaHi
branch_2017f1e: @ 2017f1e :thumb
	cmp     r0, #0x0
	beq     branch_2017f3a
	ldr     r1, [r5, #0x0]
	mov     r2, #0x0
	blx     Function_20a5404
	ldr     r1, =RAM_21bfaf0
	ldr     r2, [r1, #RAM_21bfaf0_0]
	ldr     r1, [sp, #0x0]
	str     r0, [r2, r1]
	ldr     r0, =RAM_21bfaf0
	ldr     r0, [r0, #RAM_21bfaf0_10]
	strb    r7, [r0, r7]
	b       branch_2017f3e

branch_2017f3a: @ 2017f3a :thumb
	bl      ErrorHandling
branch_2017f3e: @ 2017f3e :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r5, #0x8
	str     r0, [sp, #0x0]
	cmp     r7, r4
	blo     branch_2017efe

branch_2017f4c: @ 2017f4c :thumb
	ldr     r0, [sp, #0x4]
	add     r1, r0, #0x1
	cmp     r4, r1
	bhs     branch_2017f6c
	ldr     r3, =RAM_21bfaf0
	lsl     r2, r4, #2
	mov     r0, #0x0
branch_2017f5a: @ 2017f5a :thumb
	ldr     r5, [r3, #RAM_21bfaf0_0]
	str     r0, [r5, r2]
	ldrh    r7, [r3, #RAM_21bfaf0_1a]
	ldr     r5, [r3, #RAM_21bfaf0_10]
	.hword  0x1d12 @ add r2, r2, #0x4
	strb    r7, [r5, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r1
	blo     branch_2017f5a

branch_2017f6c: @ 2017f6c :thumb
	cmp     r4, r6
	bhs     branch_2017f7e
	ldr     r0, =RAM_21bfaf0
branch_2017f72: @ 2017f72 :thumb
	ldrh    r2, [r0, #RAM_21bfaf0_1a]
	ldr     r1, [r0, #RAM_21bfaf0_10]
	strb    r2, [r1, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blo     branch_2017f72

branch_2017f7e: @ 2017f7e :thumb
	mov     r4, #0x0
	cmp     r6, #0x0
	bls     branch_2017f96

	ldr     r0, =RAM_21bfaf0
	mov     r3, r4
	mov     r2, r4
branch_2017f8a: @ 2017f8a :thumb
	ldr     r1, [r0, #RAM_21bfaf0_c]
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r2, [r1, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r4, r6
	blo     branch_2017f8a

branch_2017f96: @ 2017f96 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2017f9a

.align 2
.pool
thumb_func_end AllocateAreasOfMemory



thumb_func_start Function_2017fa0
Function_2017fa0: @ 2017fa0 :thumb
	ldr     r1, =RAM_21bfaf0
	ldrh    r0, [r1, #RAM_21bfaf0_16]
	ldrh    r3, [r1, #RAM_21bfaf0_18]
	cmp     r0, r3
	bge     branch_2017fbe
	ldr     r2, [r1, #RAM_21bfaf0_0]
	lsl     r1, r0, #2
	add     r2, r2, r1
branch_2017fb0: @ 2017fb0 :thumb
	ldr     r1, [r2, #0x0]
	cmp     r1, #0x0
	beq     branch_2017fc2
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r0, r3
	blt     branch_2017fb0
branch_2017fbe: @ 2017fbe :thumb
	mov     r0, #0x0
	mvn     r0, r0
branch_2017fc2: @ 2017fc2 :thumb
	bx      lr
@ 0x2017fc4

.pool
thumb_func_end Function_2017fa0



thumb_func_start Function_2017fc8
Function_2017fc8: @ 2017fc8 :thumb
	push    {r3,lr}
	mov     r3, #0x4
	bl      Function_2017fe0
	pop     {r3,pc}
thumb_func_end Function_2017fc8


thumb_func_start Function_2017fd4
Function_2017fd4: @ 2017fd4 :thumb
	push    {r3,lr}
	mov     r3, #0x3
	mvn     r3, r3
	bl      Function_2017fe0
	pop     {r3,pc}
thumb_func_end Function_2017fd4


thumb_func_start Function_2017fe0
Function_2017fe0: @ 2017fe0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r5, r1
	str     r2, [sp, #0x0]
	mov     r7, r3
	blx     OS_GetProcMode
	cmp     r0, #0x12
	bne     branch_2017ff8
	bl      ErrorHandling
branch_2017ff8: @ 2017ff8 :thumb
	ldr     r1, =RAM_21bfaf0
	ldr     r0, [r1, #RAM_21bfaf0_10]
	ldrh    r3, [r1, #RAM_21bfaf0_1a]
	ldrb    r2, [r0, r5]
	cmp     r3, r2
	bne     branch_201806e
	ldrb    r0, [r0, r4]
	ldr     r1, [r1, #RAM_21bfaf0_0]
	lsl     r0, r0, #2
	ldr     r6, [r1, r0]
	cmp     r6, #0x0
	beq     branch_2018068
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	mov     r2, r7
	blx     Function_20a5448
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2018062
	bl      Function_2017fa0
	mov     r7, r0
	bmi     branch_201805c
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	lsl     r4, r7, #2
	blx     Function_20a5404
	ldr     r1, =RAM_21bfaf0
	ldr     r2, [r1, #RAM_21bfaf0_0]
	str     r0, [r2, r4]
	ldr     r0, [r1, #RAM_21bfaf0_0]
	ldr     r0, [r0, r4]
	cmp     r0, #0x0
	beq     branch_2018056
	ldr     r0, [r1, #RAM_21bfaf0_4]
	str     r6, [r0, r4]
	ldr     r0, [sp, #0x4]
	ldr     r2, [r1, #RAM_21bfaf0_8]
	add     sp, #0x8
	str     r0, [r2, r4]
	ldr     r0, [r1, #RAM_21bfaf0_10]
	strb    r7, [r0, r5]
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2018056: @ 2018056 :thumb
	bl      ErrorHandling
	b       branch_2018072

branch_201805c: @ 201805c :thumb
	bl      ErrorHandling
	b       branch_2018072

branch_2018062: @ 2018062 :thumb
	bl      ErrorHandling
	b       branch_2018072

branch_2018068: @ 2018068 :thumb
	bl      ErrorHandling
	b       branch_2018072

branch_201806e: @ 201806e :thumb
	bl      ErrorHandling
branch_2018072: @ 2018072 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2018078

.pool
thumb_func_end Function_2017fe0



thumb_func_start Function_201807c
Function_201807c: @ 201807c :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     OS_GetProcMode
	cmp     r0, #0x12
	bne     branch_201808c
	bl      ErrorHandling
branch_201808c: @ 201808c :thumb

	ldr     r0, =RAM_21bfaf0
	ldr     r1, [r0, #RAM_21bfaf0_0]
	ldr     r0, [r0, #RAM_21bfaf0_10]
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_20180ea

	blx     Function_20a543c
	ldr     r1, =RAM_21bfaf0
	ldr     r0, [r1, #RAM_21bfaf0_10]
	ldrb    r0, [r0, r4]
	lsl     r2, r0, #2
	ldr     r0, [r1, #RAM_21bfaf0_4]
	ldr     r1, [r1, #RAM_21bfaf0_8]
	ldr     r0, [r0, r2]
	ldr     r1, [r1, r2]
	cmp     r0, #0x0
	beq     branch_20180be

	cmp     r1, #0x0
	beq     branch_20180be
	blx     Function_20a55d8
	b       branch_20180c2

branch_20180be: @ 20180be :thumb
	bl      ErrorHandling
branch_20180c2: @ 20180c2 :thumb
	ldr     r1, =RAM_21bfaf0
	mov     r0, #0x0
	ldr     r2, [r1, #RAM_21bfaf0_10]
	ldr     r3, [r1, #RAM_21bfaf0_0]
	ldrb    r2, [r2, r4]
	lsl     r2, r2, #2
	str     r0, [r3, r2]
	ldr     r2, [r1, #RAM_21bfaf0_10]
	ldr     r3, [r1, #RAM_21bfaf0_4]
	ldrb    r2, [r2, r4]
	lsl     r2, r2, #2
	str     r0, [r3, r2]
	ldr     r2, [r1, #RAM_21bfaf0_10]
	ldr     r3, [r1, #RAM_21bfaf0_8]
	ldrb    r2, [r2, r4]
	lsl     r2, r2, #2
	str     r0, [r3, r2]
	ldrh    r2, [r1, #RAM_21bfaf0_1a]
	ldr     r0, [r1, #RAM_21bfaf0_10]
	strb    r2, [r0, r4]
branch_20180ea: @ 20180ea :thumb
	pop     {r4,pc}
@ 0x20180ec

.pool
thumb_func_end Function_201807c



/* called by malloc
Input:
r1: size
r2: 4 or 0-4

Return:
r0: Ptr to Memory
*/
thumb_func_start Function_20180f0
Function_20180f0: @ 20180f0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	cmp     r5, #0x0
	bne     branch_2018102
	bl      ErrorHandling
branch_2018102: @ 2018102 :thumb

	blx     OS_DisableInterrupts
	add     r4, #MallocHeader_Size
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4      @ size of memory to allocate
	mov     r2, r7
	blx     Function_20a5448
	mov     r4, r0

	ldr     r0, [sp, #0x0]
	blx     OS_RestoreInterrupts
	cmp     r4, #0x0
	beq     branch_2018130
	ldr     r1, [r4, #MallocHeader_c]
	mov     r0, #0xff
	bic     r1, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	orr     r0, r1
	str     r0, [r4, #MallocHeader_c]
	add     r4, #MallocHeader_Size
branch_2018130: @ 2018130 :thumb

	mov     r0, r4
	pop     {r3-r7,pc}
thumb_func_end Function_20180f0


thumb_func_start Function_2018134
Function_2018134: @ 2018134 :thumb
	push    {r3,lr}

	bl      Function_2036780
	cmp     r0, #0x0
	beq     branch_2018142
	bl      Function_209b49c
branch_2018142: @ 2018142 :thumb

	pop     {r3,pc}
thumb_func_end Function_2018134


/* malloc
Input:
r0: offset to sth.
r1: size

Return:
r0: Ptr to memory
*/
thumb_func_start malloc
malloc: @ 2018144 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	ldr     r0, =RAM_21bfaf0
	mov     r4, #0x0
	ldrh    r2, [r0, #RAM_21bfaf0_14]
	cmp     r5, r2
	bhs     branch_2018166

	ldr     r2, [r0, #RAM_21bfaf0_0]
	ldr     r0, [r0, #RAM_21bfaf0_10]
	mov     r3, r5
	ldrb    r0, [r0, r5]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	mov     r2, #0x4
	bl      Function_20180f0
	mov     r4, r0
branch_2018166: @ 2018166 :thumb
	cmp     r4, #0x0
	beq     branch_2018178

	ldr     r0, =RAM_21bfaf0
	lsl     r1, r5, #1
	ldr     r2, [r0, #RAM_21bfaf0_c]
	ldrh    r0, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r2, r1]
	b       branch_201817c

branch_2018178: @ 2018178 :thumb
	bl      Function_2018134

branch_201817c: @ 201817c :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2018180

.pool
thumb_func_end malloc



thumb_func_start malloc2
malloc2: @ 2018184 :thumb
	push    {r3-r5,lr}
	ldr     r2, =RAM_21bfaf0
	mov     r5, r0
	ldrh    r0, [r2, #RAM_21bfaf0_14]
	mov     r4, #0x0
	cmp     r5, r0
	bhs     branch_20181a6
	ldr     r0, [r2, #RAM_21bfaf0_0]
	ldr     r2, [r2, #RAM_21bfaf0_10]
	mov     r3, r5
	ldrb    r2, [r2, r5]
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
	sub     r2, r4, #0x4
	bl      Function_20180f0
	mov     r4, r0
branch_20181a6: @ 20181a6 :thumb
	cmp     r4, #0x0
	beq     branch_20181b8
	ldr     r0, =RAM_21bfaf0
	lsl     r1, r5, #1
	ldr     r2, [r0, #RAM_21bfaf0_c]
	ldrh    r0, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r2, r1]
	b       branch_20181bc

branch_20181b8: @ 20181b8 :thumb
	bl      Function_2018134
branch_20181bc: @ 20181bc :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x20181c0

.pool
thumb_func_end malloc2


/* Input:
r0: Ptr to Memory
*/
thumb_func_start free
free: @ 20181c4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0

	sub     r0, r6, #0x4 @ MallocHeader_c
	ldr     r0, [r0]
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, =RAM_21bfaf0
	ldrh    r1, [r0, #RAM_21bfaf0_14]
	cmp     r4, r1
	bhs     branch_201822c

	ldr     r1, [r0, #RAM_21bfaf0_0]
	ldr     r0, [r0, #RAM_21bfaf0_10]
	ldrb    r0, [r0, r4]
	lsl     r0, r0, #2
	ldr     r7, [r1, r0]
	cmp     r7, #0x0
	bne     branch_20181ea
	bl      ErrorHandling
branch_20181ea: @ 20181ea :thumb

	ldr     r0, =RAM_21bfaf0
	lsl     r5, r4, #1
	ldr     r0, [r0, #RAM_21bfaf0_c]
	ldrh    r0, [r0, r5]
	cmp     r0, #0x0
	bne     branch_20181fc
	mov     r0, r4
	bl      Function_201833c
branch_20181fc: @ 20181fc :thumb

	ldr     r0, =RAM_21bfaf0
	ldr     r0, [r0, #RAM_21bfaf0_c]
	ldrh    r0, [r0, r5]
	cmp     r0, #0x0
	bne     branch_201820a
	bl      ErrorHandling
branch_201820a: @ 201820a :thumb

	ldr     r0, =RAM_21bfaf0
	ldr     r1, [r0, #RAM_21bfaf0_c]
	ldrh    r0, [r1, r5]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r1, r5]

	blx     OS_DisableInterrupts
	sub     r6, #MallocHeader_Size
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	blx     Function_20a55d8
	mov     r0, r4
	blx     OS_RestoreInterrupts

	pop     {r3-r7,pc}

branch_201822c: @ 201822c :thumb
	bl      ErrorHandling
	pop     {r3-r7,pc}
@ 0x2018232

.align 2
.pool
thumb_func_end free



thumb_func_start Function_2018238
Function_2018238: @ 2018238 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	blx     OS_GetProcMode
	cmp     r0, #0x12
	bne     branch_201824a
	bl      ErrorHandling
branch_201824a: @ 201824a :thumb

	ldr     r0, =RAM_21bfaf0
	ldrh    r1, [r0, #RAM_21bfaf0_14]
	cmp     r5, r1
	bhs     branch_201829a
	ldr     r1, [r0, #RAM_21bfaf0_0]
	ldr     r0, [r0, #RAM_21bfaf0_10]
	ldrb    r0, [r0, r5]
	lsl     r0, r0, #2
	ldr     r6, [r1, r0]
	cmp     r6, #0x0
	bne     branch_2018264
	bl      ErrorHandling
branch_2018264: @ 2018264 :thumb

	sub     r0, r4, #0x4
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, r5
	beq     branch_2018274
	bl      ErrorHandling
branch_2018274: @ 2018274 :thumb

	sub     r4, #0x10
	mov     r0, r6
	mov     r1, r4
	blx     Function_20a55d8
	ldr     r0, =RAM_21bfaf0
	lsl     r4, r5, #1
	ldr     r0, [r0, #RAM_21bfaf0_c]
	ldrh    r0, [r0, r4]
	cmp     r0, #0x0
	bne     branch_201828e
	bl      ErrorHandling
branch_201828e: @ 201828e :thumb

	ldr     r0, =RAM_21bfaf0
	ldr     r1, [r0, #RAM_21bfaf0_c]
	ldrh    r0, [r1, r4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r1, r4]
	pop     {r4-r6,pc}

branch_201829a: @ 201829a :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x20182a0

.pool
thumb_func_end Function_2018238



.thumb
Function_20182a4: @ 20182a4 :thumb
	push    {r3,lr}
	ldr     r1, =RAM_21bfaf0
	ldrh    r2, [r1, #RAM_21bfaf0_14]
	cmp     r0, r2
	bhs     branch_20182be
	ldr     r2, [r1, #RAM_21bfaf0_0]
	ldr     r1, [r1, #RAM_21bfaf0_10]
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	blx     Function_20a5614
	pop     {r3,pc}

branch_20182be: @ 20182be :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20182c6

.align 2
.pool



.thumb
.globl Function_20182cc
Function_20182cc: @ 20182cc :thumb
	push    {r4,lr}
	ldr     r4, =RAM_21bfaf0
	ldrh    r3, [r4, #RAM_21bfaf0_14]
	cmp     r1, r3
	bhs     branch_20182e6
	ldr     r3, [r4, #RAM_21bfaf0_0]
	ldr     r4, [r4, #RAM_21bfaf0_10]
	ldrb    r1, [r4, r1]
	lsl     r1, r1, #2
	ldr     r1, [r3, r1]
	blx     Function_20a5a14
	pop     {r4,pc}

branch_20182e6: @ 20182e6 :thumb
	bl      ErrorHandling
	pop     {r4,pc}
@ 0x20182ec

.pool



.thumb
.globl Function_20182f0
Function_20182f0: @ 20182f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1

	blx     OS_GetProcMode
	cmp     r0, #0x12
	bne     branch_2018302
	bl      ErrorHandling
branch_2018302: @ 2018302 :thumb

	mov     r0, r5
	sub     r0, #0x10
	blx     Function_20a564c_LoadSub0xc
	add     r4, #0x10
	cmp     r0, r4
	blo     branch_2018330

	sub     r2, r5, #0x4
	ldr     r0, =RAM_21bfaf0
	ldr     r2, [r2, #0x0]
	ldr     r1, [r0, #RAM_21bfaf0_0]
	lsl     r2, r2, #24
	ldr     r0, [r0, #RAM_21bfaf0_10]
	lsr     r2, r2, #24
	ldrb    r0, [r0, r2]
	sub     r5, #0x10
	mov     r2, r4
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r5
	blx     Function_20a5478
	pop     {r3-r5,pc}

branch_2018330: @ 2018330 :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x2018336

.align 2
.pool
