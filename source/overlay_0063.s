

.section .iwram63, "ax"


.thumb
Function_222ae60: @ 222ae60 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r3
	mov     r4, r0
	ldr     r1, [pc, #0x98] @ 0x222af04, (=0x229c)
	mov     r0, r6
	str     r2, [sp, #0x0]
	bl      malloc
	ldr     r2, [pc, #0x90] @ 0x222af04, (=0x229c)
	mov     r7, r0
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	str     r4, [r7, #0x0]
	mov     r0, #0x92
	mov     r1, r6
	str     r5, [r7, #0x4]
	bl      LoadFromNARC_8
	ldr     r1, [pc, #0x7c] @ 0x222af08, (=0x2294)
	str     r0, [r7, r1]
	mov     r0, #0x99
	mov     r1, r6
	bl      LoadFromNARC_8
	ldr     r1, [pc, #0x74] @ 0x222af0c, (=0x2298)
	mov     r4, #0x0
	str     r0, [r7, r1]
	mov     r5, r7
.thumb
branch_222ae9c: @ 222ae9c :thumb
	mov     r0, #0x98
	mov     r1, r4
	mov     r2, r6
	bl      Function_2009714
	mov     r1, #0x8a
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_222ae9c
	mov     r5, #0x0
	mov     r4, r7
.thumb
branch_222aeb8: @ 222aeb8 :thumb
	mov     r0, #0x17
	add     r1, r5, #0x2
	mov     r2, r6
	bl      Function_2009714
	ldr     r1, [pc, #0x4c] @ 0x222af10, (=0x2288)
	.hword  0x1c6d @ add r5, r5, #0x1
	str     r0, [r4, r1]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x2
	blt     branch_222aeb8
	mov     r4, #0x0
.thumb
branch_222aed0: @ 222aed0 :thumb
	mov     r0, r7
	mov     r1, r4
	mov     r2, r6
	bl      Function_222b374
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_222aed0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r1, #0x18
	str     r0, [r7, #0xc]
	mov     r0, r6
	mul     r1, r2
	bl      malloc
	str     r0, [r7, #0x8]
	ldr     r3, [r7, #0xc]
	mov     r2, #0x18
	mov     r1, #0x0
	mul     r2, r3
	blx     Call_FillMemWithValue
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x222af02


.align 2


.word 0x229c @ 0x222af04
.word 0x2294 @ 0x222af08
.word 0x2298 @ 0x222af0c
.word 0x2288 @ 0x222af10
.thumb
Function_222af14: @ 222af14 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_222af40
	mov     r4, r6
.thumb
branch_222af22: @ 222af22 :thumb
	ldr     r0, [r5, #0x8]
	add     r0, r0, r4
	bl      Function_222bc70
	cmp     r0, #0x0
	bne     branch_222af36
	ldr     r0, [r5, #0x8]
	add     r0, r0, r4
	bl      Function_222b210
.thumb
branch_222af36: @ 222af36 :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x18
	cmp     r6, r0
	bcc     branch_222af22
.thumb
branch_222af40: @ 222af40 :thumb
	mov     r4, #0x0
.thumb
branch_222af42: @ 222af42 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222b404
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_222af42
	mov     r0, r5
	bl      Function_222aff8
	ldr     r0, [pc, #0x34] @ 0x222af8c, (=0x2294)
	ldr     r0, [r5, r0]
	bl      Call_FS_CloseFile
	ldr     r0, [pc, #0x30] @ 0x222af90, (=0x2298)
	ldr     r0, [r5, r0]
	bl      Call_FS_CloseFile
	mov     r7, #0x8a
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #6
.thumb
branch_222af6e: @ 222af6e :thumb
	ldr     r0, [r4, r7]
	bl      Function_2009754
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_222af6e
	ldr     r0, [r5, #0x8]
	bl      free
	mov     r0, r5
	bl      free
	pop     {r3-r7,pc}
@ 0x222af8a


.align 2


.word 0x2294 @ 0x222af8c
.word 0x2298 @ 0x222af90
.thumb
Function_222af94: @ 222af94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r7, r3
	mov     r5, r0
	mov     r0, r4
	mov     r1, r7
	mov     r6, r2
	bl      Function_222b47c
	cmp     r0, #0x0
	bne     branch_222afb0
	bl      ErrorHandling
.thumb
branch_222afb0: @ 222afb0 :thumb
	mov     r0, r4
	bl      Function_222b450
	mov     r1, r0
	ldr     r0, [sp, #0x20]
	mov     r2, r6
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r3, r7
	bl      Function_222b4cc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222afce


.align 2, 0


.thumb
Function_222afd0: @ 222afd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_222b450
	mov     r1, r0
	mov     r0, r4
	bl      Function_222b738
	pop     {r4,pc}
@ 0x222afe4

.thumb
Function_222afe4: @ 222afe4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_222b450
	mov     r1, r0
	mov     r0, r4
	bl      Function_222b7d4
	pop     {r4,pc}
@ 0x222aff8

.thumb
Function_222aff8: @ 222aff8 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x2c] @ 0x222b028, (=0x2290)
	mov     r4, r0
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_222b008
	bl      Function_222b078
.thumb
branch_222b008: @ 222b008 :thumb
	mov     r5, #0x0
.thumb
branch_222b00a: @ 222b00a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_222b7d4
	cmp     r0, #0x1
	bne     branch_222b01e
	mov     r0, r4
	mov     r1, r5
	bl      Function_222b738
.thumb
branch_222b01e: @ 222b01e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x97
	blt     branch_222b00a
	pop     {r3-r5,pc}
@ 0x222b026


.align 2


.word 0x2290 @ 0x222b028
.thumb
Function_222b02c: @ 222b02c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r6, r3
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, r2
	bne     branch_222b040
	bl      ErrorHandling
.thumb
branch_222b040: @ 222b040 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r7
	mov     r2, r6
	bl      Function_222b97c
	mov     r0, r7
	mov     r1, r6
	bl      Function_222ba20
	ldr     r5, [pc, #0x20] @ 0x222b074, (=0x222d910)
	mov     r4, #0x0
.thumb
branch_222b056: @ 222b056 :thumb
	str     r6, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldrb    r1, [r5, #0x0]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	mov     r0, r7
	bl      Function_222b4cc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_222b056
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222b074

.word 0x222d910 @ 0x222b074
.thumb
Function_222b078: @ 222b078 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_222b9ec
	mov     r0, r6
	bl      Function_222bab0
	ldr     r5, [pc, #0x14] @ 0x222b09c, (=0x222d910)
	mov     r4, #0x0
.thumb
branch_222b08a: @ 222b08a :thumb
	ldrb    r1, [r5, #0x0]
	mov     r0, r6
	bl      Function_222b738
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_222b08a
	pop     {r4-r6,pc}
@ 0x222b09c

.word 0x222d910 @ 0x222b09c
.thumb
Function_222b0a0: @ 222b0a0 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r2, r3
	mov     r5, r0
	bl      Function_222b7e8
	ldr     r0, [pc, #0x4] @ 0x222b0b4, (=0x227c)
	str     r4, [r5, r0]
	pop     {r3-r5,pc}
@ 0x222b0b2


.align 2


.word 0x227c @ 0x222b0b4
.thumb
Function_222b0b8: @ 222b0b8 :thumb
	ldr     r3, [pc, #0x0] @ 0x222b0bc, (=0x222b915)
	bx      r3
@ 0x222b0bc

.word Function_222b914+1 @ =0x222b915, 0x222b0bc
.thumb
Function_222b0c0: @ 222b0c0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	str     r3, [sp, #0x0]
	bl      Function_222bb00
	mov     r4, r0
	mov     r0, r7
	bl      Function_222b450
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_222b7d4
	cmp     r0, #0x1
	beq     branch_222b0ea
	bl      ErrorHandling
.thumb
branch_222b0ea: @ 222b0ea :thumb
	mov     r0, #0x0
	add     r2, sp, #0xc
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [r5, #0x0]
	mov     r2, #0x38
	str     r1, [sp, #0xc]
	ldr     r1, [sp, #0x4]
	mov     r7, r1
	mov     r1, r5
	mul     r7, r2
	add     r1, #0x24
	add     r1, r1, r7
	str     r1, [sp, #0x10]
	ldsh    r0, [r6, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	mov     r0, #0x2
	ldsh    r1, [r6, r0]
	lsl     r1, r1, #12
	str     r1, [sp, #0x18]
	lsl     r1, r0, #11
	str     r1, [sp, #0x20]
	str     r1, [sp, #0x24]
	str     r1, [sp, #0x28]
	mov     r1, #0x4
	ldsh    r1, [r6, r1]
	str     r1, [sp, #0x30]
	ldr     r1, [sp, #0x0]
	str     r1, [sp, #0x38]
	mov     r1, r5
	str     r1, [sp, #0x8]
	add     r1, #0x1c
	str     r1, [sp, #0x8]
	ldr     r1, [r1, r7]
	cmp     r1, #0x3
	beq     branch_222b142
	cmp     r1, #0x1
	bne     branch_222b148
.thumb
branch_222b142: @ 222b142 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x34]
	b       branch_222b14a
@ 0x222b148

.thumb
branch_222b148: @ 222b148 :thumb
	str     r0, [sp, #0x34]
.thumb
branch_222b14a: @ 222b14a :thumb
	add     r0, sp, #0xc
	bl      Function_2021aa0
	str     r0, [r4, #0x4]
	mov     r1, #0x6
	ldsh    r1, [r6, r1]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2021e80
	add     r0, r5, r7
	ldr     r0, [r0, #0x20]
	cmp     r0, #0x1
	ldr     r0, [r4, #0x4]
	bne     branch_222b170
	mov     r1, #0x6
	bl      Function_2021d6c
	b       branch_222b176
@ 0x222b170

.thumb
branch_222b170: @ 222b170 :thumb
	mov     r1, #0x1
	bl      Function_2021d6c
.thumb
branch_222b176: @ 222b176 :thumb
	mov     r0, #0x9
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	mov     r0, r5
	add     r0, #0x10
	add     r0, r0, r7
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x7c] @ 0x222b208, (=0x2248)
	add     r0, r5, r0
	bl      Function_222b96c
	cmp     r0, #0x0
	beq     branch_222b1fc
	mov     r0, #0x0
	add     r2, sp, #0xc
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [r5, #0x0]
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x5c] @ 0x222b20c, (=0x2258)
	add     r2, r5, r1
	str     r2, [sp, #0x10]
	ldsh    r0, [r6, r0]
	add     r1, #0x24
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	mov     r0, #0x2
	ldsh    r2, [r6, r0]
	lsl     r2, r2, #12
	str     r2, [sp, #0x18]
	lsl     r2, r0, #11
	str     r2, [sp, #0x20]
	str     r2, [sp, #0x24]
	str     r2, [sp, #0x28]
	ldr     r1, [r5, r1]
	str     r1, [sp, #0x30]
	ldr     r1, [sp, #0x0]
	str     r1, [sp, #0x38]
	ldr     r1, [sp, #0x8]
	ldr     r1, [r1, r7]
	cmp     r1, #0x3
	beq     branch_222b1de
	cmp     r1, #0x1
	bne     branch_222b1e4
.thumb
branch_222b1de: @ 222b1de :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x34]
	b       branch_222b1e6
@ 0x222b1e4

.thumb
branch_222b1e4: @ 222b1e4 :thumb
	str     r0, [sp, #0x34]
.thumb
branch_222b1e6: @ 222b1e6 :thumb
	add     r0, sp, #0xc
	bl      Function_2021aa0
	str     r0, [r4, #0x8]
	mov     r1, #0x6
	ldsh    r1, [r6, r1]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2021e80
	b       branch_222b200
@ 0x222b1fc

.thumb
branch_222b1fc: @ 222b1fc :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_222b200: @ 222b200 :thumb
	mov     r0, r4
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x222b206


.align 2


.word 0x2248 @ 0x222b208
.word 0x2258 @ 0x222b20c
.thumb
Function_222b210: @ 222b210 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_222b21e
	bl      Function_2021bd4
.thumb
branch_222b21e: @ 222b21e :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2021bd4
	mov     r1, #0x18
	mov     r0, #0x0
.thumb
branch_222b228: @ 222b228 :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_222b228
	pop     {r4,pc}
@ 0x222b232


.align 2, 0


.thumb
Function_222b234: @ 222b234 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x222b238

.thumb
Function_222b238: @ 222b238 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	lsl     r0, r1, #12
	str     r0, [sp, #0x0]
	lsl     r0, r2, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_222b274
	mov     r0, #0x2
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x0
	bl      Function_2021c50
.thumb
branch_222b274: @ 222b274 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x222b278

.thumb
Function_222b278: @ 222b278 :thumb
	ldr     r3, [pc, #0x4] @ 0x222b280, (=0x2021f59)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222b27e


.align 2


.word 0x2021f59 @ 0x222b280
.thumb
Function_222b284: @ 222b284 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x4]
	bl      Function_2021f74
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x222b292


.align 2, 0


.thumb
Function_222b294: @ 222b294 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	bl      Function_2021cac
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_222b2ac
	mov     r1, r4
	bl      Function_2021cac
.thumb
branch_222b2ac: @ 222b2ac :thumb
	pop     {r3-r5,pc}
@ 0x222b2ae


.align 2, 0


.thumb
Function_222b2b0: @ 222b2b0 :thumb
	ldr     r3, [pc, #0x4] @ 0x222b2b8, (=0x2021d35)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222b2b6


.align 2


.word 0x2021d35 @ 0x222b2b8
.thumb
Function_222b2bc: @ 222b2bc :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x222b2c2


.align 2, 0


.thumb
Function_222b2c4: @ 222b2c4 :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x222b2c8

.thumb
Function_222b2c8: @ 222b2c8 :thumb
	ldr     r3, [pc, #0x4] @ 0x222b2d0, (=0x2021e51)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222b2ce


.align 2


.word 0x2021e51 @ 0x222b2d0
.thumb
Function_222b2d4: @ 222b2d4 :thumb
	ldr     r3, [pc, #0x4] @ 0x222b2dc, (=0x2021e75)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222b2da


.align 2


.word 0x2021e75 @ 0x222b2dc
.thumb
Function_222b2e0: @ 222b2e0 :thumb
	push    {lr}
	add     sp, #-0xc
	ldr     r3, [r0, #0x8]
	cmp     r3, #0x0
	beq     branch_222b302
	add     r1, #0x8
	lsl     r1, r1, #12
	add     r2, #0xe
	str     r1, [sp, #0x0]
	lsl     r1, r2, #12
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	add     r1, sp, #0x0
	bl      Function_2021c50
.thumb
branch_222b302: @ 222b302 :thumb
	add     sp, #0xc
	pop     {pc}
@ 0x222b306


.align 2, 0


.thumb
Function_222b308: @ 222b308 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0xa
	blt     branch_222b318
	bl      ErrorHandling
.thumb
branch_222b318: @ 222b318 :thumb
	cmp     r6, #0x4
	blt     branch_222b320
	bl      ErrorHandling
.thumb
branch_222b320: @ 222b320 :thumb
	str     r4, [r5, #0xc]
	mov     r0, #0x0
	strh    r0, [r5, #0x14]
	ldr     r0, [pc, #0x10] @ 0x222b338, (=0x222d920)
	lsl     r1, r4, #2
	ldr     r2, [r0, r1]
	cmp     r2, #0x0
	beq     branch_222b336
	mov     r0, r5
	mov     r1, r6
	blx     r2
branch_222b336: @ 222b336 :thumb
	pop     {r4-r6,pc}
@ 0x222b338

.word 0x222d920 @ 0x222b338



.thumb
Function_222b33c: @ 222b33c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0xc]
	ldr     r1, [pc, #0x2c] @ 0x222b370, (=0x222d904)
	mov     r0, #0x0
	ldrb    r2, [r1, r2]
	cmp     r2, #0xff
	bne     branch_222b350
	mov     r0, #0x1
	b       branch_222b35c

branch_222b350: @ 222b350 :thumb
	mov     r1, #0x14
	ldsh    r1, [r4, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r2, r1
	blt     branch_222b35c
	mov     r0, #0x1
branch_222b35c: @ 222b35c :thumb
	cmp     r0, #0x1
	bne     branch_222b36e
	mov     r0, r4
	bl      Function_222bb38
	mov     r0, #0x14
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x14]
branch_222b36e: @ 222b36e :thumb
	pop     {r4,pc}
@ 0x222b370

.word 0x222d904 @ 0x222b370



.thumb
Function_222b374: @ 222b374 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0xc]
	mov     r0, r1
	lsl     r5, r0, #4
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	add     r1, r0, r5
	ldr     r0, [pc, #0x6c] @ 0x222b3f4, (=0x2118)
	str     r2, [sp, #0x14]
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_222b392
	bl      ErrorHandling
branch_222b392: @ 222b392 :thumb
	ldr     r0, [pc, #0x64] @ 0x222b3f8, (=0x222d970)
	ldr     r6, [pc, #0x64] @ 0x222b3fc, (=Unknown_222d900)
	add     r4, r0, r5
	ldr     r0, [sp, #0xc]
	mov     r7, #0x0
	add     r5, r0, r5
	ldr     r0, [sp, #0x10]
	lsl     r1, r0, #1
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r1, r0
	str     r0, [sp, #0x18]
branch_222b3aa: @ 222b3aa :thumb
	lsr     r2, r7, #31
	lsl     r1, r7, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	ldrb    r2, [r6, #0x0]
	ldr     r1, [sp, #0x18]
	.hword  0x1c80 @ add r0, r0, #0x2
	add     r1, r2, r1
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0xc]
	add     r1, r0, r1
	mov     r0, #0x8a
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	ldr     r1, [pc, #0x28] @ 0x222b400, (=0x2294)
	mov     r3, #0x0
	ldr     r1, [r2, r1]
	ldr     r2, [r4, #0x0]
	bl      Function_2009bc4
	ldr     r1, [pc, #0x10] @ 0x222b3f4, (=0x2118)
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [r5, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_222b3aa
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222b3f4

.word 0x2118 @ 0x222b3f4
.word 0x222d970 @ 0x222b3f8
.word Unknown_222d900 @ 0x222b3fc
.word 0x2294 @ 0x222b400



.thumb
Function_222b404: @ 222b404 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	lsl     r5, r1, #4
	ldr     r0, [pc, #0x40] @ 0x222b44c, (=0x2118)
	add     r1, r6, r5
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_222b418
	bl      ErrorHandling
.thumb
branch_222b418: @ 222b418 :thumb
	mov     r4, #0x0
	add     r5, r6, r5
	mov     r7, r4
.thumb
branch_222b41e: @ 222b41e :thumb
	lsr     r2, r4, #31
	lsl     r1, r4, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #2
	add     r1, r6, r0
	mov     r0, #0x8a
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	ldr     r1, [pc, #0x14] @ 0x222b44c, (=0x2118)
	ldr     r1, [r5, r1]
	bl      Function_2009d68
	ldr     r0, [pc, #0xc] @ 0x222b44c, (=0x2118)
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r7, [r5, r0]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_222b41e
	pop     {r3-r7,pc}
@ 0x222b44c

.word 0x2118 @ 0x222b44c
.thumb
Function_222b450: @ 222b450 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x20] @ 0x222b474, (=0x222d9a0)
	mov     r2, #0x0
.thumb
branch_222b456: @ 222b456 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_222b464
	ldr     r0, [pc, #0x18] @ 0x222b478, (=0x222d9a2)
	lsl     r1, r2, #2
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222b464

.thumb
branch_222b464: @ 222b464 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x97
	blt     branch_222b456
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222b474

.word 0x222d9a0 @ 0x222b474
.word 0x222d9a2 @ 0x222b478
.thumb
Function_222b47c: @ 222b47c :thumb
	cmp     r1, #0x0
	bne     branch_222b496
	cmp     r0, #0x0
	beq     branch_222b48e
	cmp     r0, #0x61
	beq     branch_222b48e
	sub     r0, #0xfc
	cmp     r0, #0x1
	bhi     branch_222b492
.thumb
branch_222b48e: @ 222b48e :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222b492

.thumb
branch_222b492: @ 222b492 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222b496

.thumb
branch_222b496: @ 222b496 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222b49a


.align 2, 0


.thumb
Function_222b49c: @ 222b49c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x2
	beq     branch_222b4b0
	cmp     r4, #0x3
	beq     branch_222b4b0
	bl      ErrorHandling
branch_222b4b0: @ 222b4b0 :thumb
	sub     r1, r4, #0x2
	cmp     r6, #0x0
	bne     branch_222b4b8
	.hword  0x1c89 @ add r1, r1, #0x2
branch_222b4b8: @ 222b4b8 :thumb
	ldr     r0, [pc, #0xc] @ 0x222b4c8, (=Unknown_222d900)
	ldrb    r2, [r0, r1]
	mov     r0, #0x1
	lsl     r1, r5, #1
	lsl     r0, r0, #8
	add     r0, r1, r0
	add     r0, r2, r0
	pop     {r4-r6,pc}
@ 0x222b4c8

.word Unknown_222d900 @ 0x222b4c8



.thumb
Function_222b4cc: @ 222b4cc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x38
	mul     r0, r4
	add     r0, r5, r0
	ldr     r0, [r0, #0x14]
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_222b4e6
	bl      ErrorHandling
.thumb
branch_222b4e6: @ 222b4e6 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_222b4fe
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r7
	bl      Function_222b510
	pop     {r3-r7,pc}
@ 0x222b4fe

.thumb
branch_222b4fe: @ 222b4fe :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r7
	bl      Function_222b664
	pop     {r3-r7,pc}
@ 0x222b510

.thumb
Function_222b510: @ 222b510 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r5, r0
	ldr     r0, [sp, #0x58]
	mov     r6, r5
	str     r0, [sp, #0x40]
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r1, r0
	str     r0, [sp, #0x38]
	lsl     r0, r1, #1
	str     r0, [sp, #0x3c]
	mov     r4, r1
	mov     r0, #0x38
	mul     r4, r0
	ldr     r0, [sp, #0x38]
	mov     r1, #0x8a
	str     r0, [sp, #0x0]
	mov     r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x40]
	str     r2, [sp, #0x2c]
	ldr     r2, [sp, #0x3c]
	str     r3, [sp, #0x30]
	lsl     r1, r1, #6
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	add     r1, #0x14
	ldr     r1, [r5, r1]
	add     r6, #0x14
	add     r2, #0xe
	mov     r3, #0x0
	bl      Function_2009a4c
	str     r0, [r6, r4]
	ldr     r0, [sp, #0x38]
	ldr     r2, [sp, #0x3c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r7, r5
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x40]
	add     r2, #0xd
	ldr     r1, [pc, #0xf4] @ 0x222b660, (=0x2284)
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	add     r1, #0x10
	ldr     r1, [r5, r1]
	add     r7, #0x18
	mov     r3, #0x0
	str     r2, [sp, #0x3c]
	bl      Function_2009b04
	str     r0, [r7, r4]
	ldr     r0, [r6, r4]
	bl      Function_2009e1c
	mov     r1, #0x6
	ldr     r2, [r0, #0x10]
	lsl     r1, r1, #10
	cmp     r2, r1
	beq     branch_222b596
	mov     r1, #0x1
	str     r1, [sp, #0x34]
	b       branch_222b59a
@ 0x222b596

.thumb
branch_222b596: @ 222b596 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x34]
.thumb
branch_222b59a: @ 222b59a :thumb
	ldr     r1, [sp, #0x30]
	cmp     r1, #0x2
	bne     branch_222b5a8
	mov     r1, #0x2
	lsl     r1, r1, #10
	str     r1, [r0, #0x10]
	b       branch_222b5c0
@ 0x222b5a8

.thumb
branch_222b5a8: @ 222b5a8 :thumb
	cmp     r1, #0x1
	bne     branch_222b5c0
	ldr     r1, [sp, #0x34]
	cmp     r1, #0x0
	beq     branch_222b5ba
	mov     r1, #0x5
	lsl     r1, r1, #10
	str     r1, [r0, #0x10]
	b       branch_222b5c0
@ 0x222b5ba

.thumb
branch_222b5ba: @ 222b5ba :thumb
	mov     r1, #0x6
	lsl     r1, r1, #10
	str     r1, [r0, #0x10]
.thumb
branch_222b5c0: @ 222b5c0 :thumb
	ldr     r0, [r6, r4]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_222b5ce
	bl      ErrorHandling
.thumb
branch_222b5ce: @ 222b5ce :thumb
	ldr     r0, [r7, r4]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_222b5dc
	bl      ErrorHandling
.thumb
branch_222b5dc: @ 222b5dc :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_222b5ec
	ldr     r1, [r7, r4]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_222bc80
.thumb
branch_222b5ec: @ 222b5ec :thumb
	ldr     r0, [r6, r4]
	bl      Function_2009d4c
	ldr     r0, [r7, r4]
	bl      Function_2009d4c
	ldr     r0, [sp, #0x2c]
	add     r1, r5, r4
	str     r0, [r1, #0x1c]
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x34]
	str     r0, [r1, #0x20]
	mov     r0, #0x0
	str     r0, [r1, #0x10]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x2
	bl      Function_222b49c
	mov     r6, r0
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x34]
	mov     r1, #0x3
	bl      Function_222b49c
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r2, #0x8a
	str     r0, [sp, #0x10]
	lsl     r2, r2, #6
	ldr     r1, [r5, r2]
	mov     r3, r6
	str     r1, [sp, #0x14]
	add     r1, r2, #0x4
	ldr     r1, [r5, r1]
	str     r1, [sp, #0x18]
	mov     r1, r2
	add     r1, #0x8
	ldr     r1, [r5, r1]
	add     r2, #0xc
	str     r1, [sp, #0x1c]
	ldr     r1, [r5, r2]
	add     r5, #0x24
	str     r1, [sp, #0x20]
	ldr     r1, [sp, #0x38]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r5, r4
	mov     r2, r1
	bl      Function_20093b4
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x222b65e


.align 2


.word 0x2284 @ 0x222b660
.thumb
Function_222b664: @ 222b664 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r7, r1
	mov     r5, r0
	.hword  0x1eb8 @ sub r0, r7, #0x2
	str     r0, [sp, #0x38]
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r7, r0
	str     r0, [sp, #0x34]
	mov     r0, #0x38
	mov     r4, r7
	mul     r4, r0
	ldr     r0, [sp, #0x34]
	mov     r1, #0x8a
	str     r0, [sp, #0x0]
	mov     r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x50]
	mov     r6, r5
	str     r2, [sp, #0x2c]
	str     r3, [sp, #0x30]
	lsl     r1, r1, #6
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	add     r1, #0x18
	ldr     r1, [r5, r1]
	add     r6, #0x14
	.hword  0x1e7a @ sub r2, r7, #0x1
	mov     r3, #0x0
	bl      Function_2009a4c
	str     r0, [r6, r4]
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x2
	bne     branch_222b6ba
	ldr     r0, [r6, r4]
	bl      Function_2009e1c
	mov     r1, #0x2
	lsl     r1, r1, #10
	str     r1, [r0, #0x10]
	b       branch_222b6ca
@ 0x222b6ba

.thumb
branch_222b6ba: @ 222b6ba :thumb
	cmp     r0, #0x1
	bne     branch_222b6ca
	ldr     r0, [r6, r4]
	bl      Function_2009e1c
	mov     r1, #0x5
	lsl     r1, r1, #10
	str     r1, [r0, #0x10]
.thumb
branch_222b6ca: @ 222b6ca :thumb
	ldr     r0, [r6, r4]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_222b6d8
	bl      ErrorHandling
.thumb
branch_222b6d8: @ 222b6d8 :thumb
	ldr     r0, [r6, r4]
	bl      Function_2009d4c
	mov     r0, #0x0
	add     r2, r5, r4
	ldr     r1, [sp, #0x2c]
	str     r0, [r2, #0x18]
	str     r1, [r2, #0x1c]
	ldr     r1, [sp, #0x30]
	mov     r6, #0x1
	str     r1, [r2, #0x20]
	str     r6, [r2, #0x10]
	mov     r2, #0x6
	ldr     r1, [sp, #0x38]
	lsl     r2, r2, #6
	add     r3, r1, r2
	mov     r2, #0x8a
	str     r3, [sp, #0x0]
	.hword  0x1eb1 @ sub r1, r6, #0x2
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r2, r2, #6
	ldr     r1, [r5, r2]
	str     r1, [sp, #0x14]
	add     r1, r2, #0x4
	ldr     r1, [r5, r1]
	str     r1, [sp, #0x18]
	mov     r1, r2
	add     r1, #0x8
	ldr     r1, [r5, r1]
	add     r2, #0xc
	str     r1, [sp, #0x1c]
	ldr     r1, [r5, r2]
	add     r5, #0x24
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r1, [sp, #0x34]
	ldr     r2, [pc, #0x8] @ 0x222b734, (=0x402)
	add     r0, r5, r4
	bl      Function_20093b4
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x222b734

.word 0x402 @ 0x222b734
.thumb
Function_222b738: @ 222b738 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, #0x38
	mov     r4, r6
	mul     r4, r0
	add     r0, r5, r4
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_222b750
	bl      ErrorHandling
.thumb
branch_222b750: @ 222b750 :thumb
	add     r0, r5, r4
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	bne     branch_222b762
	mov     r0, r5
	mov     r1, r6
	bl      Function_222b76c
	pop     {r4-r6,pc}
@ 0x222b762

.thumb
branch_222b762: @ 222b762 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_222b7ac
	pop     {r4-r6,pc}
@ 0x222b76c

.thumb
Function_222b76c: @ 222b76c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r5
	mov     r0, #0x38
	mov     r4, r1
	mul     r4, r0
	add     r6, #0x14
	ldr     r0, [r6, r4]
	bl      Function_200a4e4
	mov     r7, r5
	add     r7, #0x18
	ldr     r0, [r7, r4]
	bl      Function_200a6dc
	mov     r0, #0x8a
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r1, [r6, r4]
	bl      Function_2009d68
	ldr     r0, [pc, #0x10] @ 0x222b7a8, (=0x2284)
	ldr     r1, [r7, r4]
	ldr     r0, [r5, r0]
	bl      Function_2009d68
	mov     r0, #0x0
	str     r0, [r6, r4]
	str     r0, [r7, r4]
	pop     {r3-r7,pc}
@ 0x222b7a8

.word 0x2284 @ 0x222b7a8
.thumb
Function_222b7ac: @ 222b7ac :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r6
	mov     r0, #0x38
	mov     r4, r1
	add     r5, #0x14
	mul     r4, r0
	ldr     r0, [r5, r4]
	bl      Function_200a4e4
	mov     r0, #0x8a
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	ldr     r1, [r5, r4]
	bl      Function_2009d68
	mov     r0, #0x0
	str     r0, [r5, r4]
	pop     {r4-r6,pc}
@ 0x222b7d2


.align 2, 0


.thumb
Function_222b7d4: @ 222b7d4 :thumb
	mov     r2, #0x38
	mul     r2, r1
	add     r0, r0, r2
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	beq     branch_222b7e4
	mov     r0, #0x1
	bx      lr
@ 0x222b7e4

.thumb
branch_222b7e4: @ 222b7e4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222b7e8

.thumb
Function_222b7e8: @ 222b7e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r6, r0
	ldr     r0, [pc, #0x114] @ 0x222b904, (=0x2248)
	str     r1, [sp, #0x2c]
	ldr     r0, [r6, r0]
	mov     r7, r2
	cmp     r0, #0x0
	beq     branch_222b7fe
	bl      ErrorHandling
.thumb
branch_222b7fe: @ 222b7fe :thumb
	mov     r4, #0x0
	mov     r0, r6
	mov     r1, r4
	bl      Function_222b7d4
	cmp     r0, #0x1
	bne     branch_222b814
	mov     r0, r4
	str     r0, [sp, #0x30]
	mov     r4, #0x1
	b       branch_222b84c
@ 0x222b814

.thumb
branch_222b814: @ 222b814 :thumb
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_222b7d4
	cmp     r0, #0x1
	bne     branch_222b826
	mov     r4, #0x1
	str     r4, [sp, #0x30]
	b       branch_222b84c
@ 0x222b826

.thumb
branch_222b826: @ 222b826 :thumb
	mov     r0, r6
	mov     r1, #0x95
	bl      Function_222b7d4
	cmp     r0, #0x1
	bne     branch_222b83a
	mov     r0, #0x95
	str     r0, [sp, #0x30]
	mov     r4, #0x1
	b       branch_222b84c
@ 0x222b83a

.thumb
branch_222b83a: @ 222b83a :thumb
	mov     r0, r6
	mov     r1, #0x96
	bl      Function_222b7d4
	cmp     r0, #0x1
	bne     branch_222b84c
	mov     r0, #0x96
	str     r0, [sp, #0x30]
	mov     r4, #0x1
.thumb
branch_222b84c: @ 222b84c :thumb
	cmp     r4, #0x1
	beq     branch_222b854
	bl      ErrorHandling
.thumb
branch_222b854: @ 222b854 :thumb
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_222b858: @ 222b858 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	add     r0, r4, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa4] @ 0x222b908, (=0x2288)
	str     r7, [sp, #0x8]
	ldr     r1, [pc, #0xa4] @ 0x222b90c, (=0x2294)
	ldr     r0, [r5, r0]
	ldr     r1, [r6, r1]
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_2009bc4
	ldr     r1, [pc, #0x98] @ 0x222b910, (=0x2250)
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r5, r1]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_222b858
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	add     r1, #0x30
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	ldr     r0, [r6, r1]
	add     r1, #0x14
	ldr     r1, [r6, r1]
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_2009a4c
	ldr     r1, [pc, #0x64] @ 0x222b904, (=0x2248)
	str     r0, [r6, r1]
	ldr     r0, [r6, r1]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_222b8ae
	bl      ErrorHandling
.thumb
branch_222b8ae: @ 222b8ae :thumb
	ldr     r0, [pc, #0x54] @ 0x222b904, (=0x2248)
	ldr     r0, [r6, r0]
	bl      Function_2009d4c
	mov     r1, #0x12
	lsl     r1, r1, #4
	mov     r0, #0x0
	mov     r3, #0x8a
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r3, r3, #6
	ldr     r2, [r6, r3]
	str     r2, [sp, #0x14]
	add     r2, r3, #0x4
	ldr     r2, [r6, r2]
	str     r2, [sp, #0x18]
	mov     r2, r3
	add     r2, #0x8
	ldr     r2, [r6, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r3
	add     r2, #0xc
	ldr     r2, [r6, r2]
	sub     r3, #0x28
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r6, r3
	mov     r3, r1
	ldr     r2, [sp, #0x30]
	add     r3, #0xe0
	add     r2, r2, r3
	mov     r3, r1
	bl      Function_20093b4
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x222b902


.align 2


.word 0x2248 @ 0x222b904
.word 0x2288 @ 0x222b908
.word 0x2294 @ 0x222b90c
.word 0x2250 @ 0x222b910
.thumb
Function_222b914: @ 222b914 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x44] @ 0x222b960, (=0x2248)
	add     r0, r5, r0
	bl      Function_222b96c
	cmp     r0, #0x1
	bne     branch_222b95c
	ldr     r0, [pc, #0x38] @ 0x222b960, (=0x2248)
	ldr     r0, [r5, r0]
	bl      Function_200a4e4
	mov     r1, #0x8a
	lsl     r1, r1, #6
	ldr     r0, [r5, r1]
	sub     r1, #0x38
	ldr     r1, [r5, r1]
	bl      Function_2009d68
	ldr     r0, [pc, #0x24] @ 0x222b960, (=0x2248)
	mov     r4, #0x0
	mov     r7, r0
	str     r4, [r5, r0]
	mov     r6, r4
	add     r7, #0x8
.thumb
branch_222b946: @ 222b946 :thumb
	ldr     r0, [pc, #0x1c] @ 0x222b964, (=0x2288)
	ldr     r1, [pc, #0x1c] @ 0x222b968, (=0x2250)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	bl      Function_2009d68
	str     r6, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_222b946
.thumb
branch_222b95c: @ 222b95c :thumb
	pop     {r3-r7,pc}
@ 0x222b95e


.align 2


.word 0x2248 @ 0x222b960
.word 0x2288 @ 0x222b964
.word 0x2250 @ 0x222b968
.thumb
Function_222b96c: @ 222b96c :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222b976
	mov     r0, #0x1
	bx      lr
@ 0x222b976

.thumb
branch_222b976: @ 222b976 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222b97a


.align 2, 0


.thumb
Function_222b97c: @ 222b97c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x5c] @ 0x222b9e0, (=0x2290)
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_222b992
	bl      ErrorHandling
.thumb
branch_222b992: @ 222b992 :thumb
	ldr     r0, [pc, #0x50] @ 0x222b9e4, (=0x402)
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0x48] @ 0x222b9e8, (=0x2284)
	str     r6, [sp, #0xc]
	ldr     r0, [r5, r1]
	add     r1, #0x14
	ldr     r1, [r5, r1]
	mov     r3, r2
	bl      Function_2009b04
	ldr     r1, [pc, #0x30] @ 0x222b9e0, (=0x2290)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_222b9c0
	bl      ErrorHandling
.thumb
branch_222b9c0: @ 222b9c0 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_222b9d2
	ldr     r1, [pc, #0x18] @ 0x222b9e0, (=0x2290)
	mov     r0, r5
	ldr     r1, [r5, r1]
	mov     r2, #0x8
	bl      Function_222bc80
.thumb
branch_222b9d2: @ 222b9d2 :thumb
	ldr     r0, [pc, #0xc] @ 0x222b9e0, (=0x2290)
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x222b9de


.align 2


.word 0x2290 @ 0x222b9e0
.word 0x402 @ 0x222b9e4
.word 0x2284 @ 0x222b9e8
.thumb
Function_222b9ec: @ 222b9ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x222ba18, (=0x2290)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222b9fc
	bl      ErrorHandling
.thumb
branch_222b9fc: @ 222b9fc :thumb
	ldr     r0, [pc, #0x18] @ 0x222ba18, (=0x2290)
	ldr     r0, [r4, r0]
	bl      Function_200a6dc
	ldr     r1, [pc, #0x14] @ 0x222ba1c, (=0x2284)
	ldr     r0, [r4, r1]
	add     r1, #0xc
	ldr     r1, [r4, r1]
	bl      Function_2009d68
	ldr     r0, [pc, #0x4] @ 0x222ba18, (=0x2290)
	mov     r1, #0x0
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x222ba18

.word 0x2290 @ 0x222ba18
.word 0x2284 @ 0x222ba1c
.thumb
Function_222ba20: @ 222ba20 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [pc, #0x74] @ 0x222ba9c, (=0x2148)
	str     r1, [sp, #0xc]
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222ba34
	bl      ErrorHandling
.thumb
branch_222ba34: @ 222ba34 :thumb
	mov     r0, #0x11
	mov     r4, #0x0
	str     r0, [sp, #0x10]
	mov     r6, r5
	mov     r7, #0x12
.thumb
branch_222ba3e: @ 222ba3e :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	add     r0, r4, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	ldr     r1, [pc, #0x50] @ 0x222baa0, (=0x2298)
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x50] @ 0x222baa4, (=0x2288)
	ldr     r1, [r5, r1]
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x10]
	mov     r3, #0x0
	bl      Function_2009bc4
	ldr     r1, [pc, #0x3c] @ 0x222ba9c, (=0x2148)
	mov     r2, r7
	str     r0, [r6, r1]
	mov     r0, #0x6
	lsl     r0, r0, #6
	add     r0, r4, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	ldr     r1, [pc, #0x2c] @ 0x222baa0, (=0x2298)
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x30] @ 0x222baa8, (=0x228c)
	ldr     r1, [r5, r1]
	ldr     r0, [r5, r0]
	mov     r3, #0x0
	bl      Function_2009bc4
	ldr     r1, [pc, #0x28] @ 0x222baac, (=0x214c)
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r6, r1]
	ldr     r0, [sp, #0x10]
	add     r6, #0x10
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1cbf @ add r7, r7, #0x2
	str     r0, [sp, #0x10]
	cmp     r4, #0x10
	blt     branch_222ba3e
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x222ba9a


.align 2


.word 0x2148 @ 0x222ba9c
.word 0x2298 @ 0x222baa0
.word 0x2288 @ 0x222baa4
.word 0x228c @ 0x222baa8
.word 0x214c @ 0x222baac
.thumb
Function_222bab0: @ 222bab0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x38] @ 0x222baf0, (=0x2148)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_222bac0
	bl      ErrorHandling
.thumb
branch_222bac0: @ 222bac0 :thumb
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, r6
.thumb
branch_222bac6: @ 222bac6 :thumb
	ldr     r0, [pc, #0x2c] @ 0x222baf4, (=0x2288)
	ldr     r1, [pc, #0x24] @ 0x222baf0, (=0x2148)
	ldr     r0, [r5, r0]
	ldr     r1, [r4, r1]
	bl      Function_2009d68
	ldr     r0, [pc, #0x24] @ 0x222baf8, (=0x228c)
	ldr     r1, [pc, #0x24] @ 0x222bafc, (=0x214c)
	ldr     r0, [r5, r0]
	ldr     r1, [r4, r1]
	bl      Function_2009d68
	ldr     r0, [pc, #0x10] @ 0x222baf0, (=0x2148)
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r7, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r7, [r4, r0]
	add     r4, #0x10
	cmp     r6, #0x10
	blt     branch_222bac6
	pop     {r3-r7,pc}
@ 0x222baf0

.word 0x2148 @ 0x222baf0
.word 0x2288 @ 0x222baf4
.word 0x228c @ 0x222baf8
.word 0x214c @ 0x222bafc
.thumb
Function_222bb00: @ 222bb00 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_222bb2e
	mov     r4, r6
.thumb
branch_222bb0e: @ 222bb0e :thumb
	ldr     r0, [r5, #0x8]
	add     r0, r0, r4
	bl      Function_222bc70
	cmp     r0, #0x1
	bne     branch_222bb24
	mov     r0, #0x18
	ldr     r1, [r5, #0x8]
	mul     r0, r6
	add     r0, r1, r0
	pop     {r4-r6,pc}
@ 0x222bb24

.thumb
branch_222bb24: @ 222bb24 :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x18
	cmp     r6, r0
	bcc     branch_222bb0e
.thumb
branch_222bb2e: @ 222bb2e :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222bb36


.align 2, 0


.thumb
Function_222bb38: @ 222bb38 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0xc]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0xc] @ 0x222bb4c, (=0x222d948)
	ldr     r1, [r1, r2]
	cmp     r1, #0x0
	beq     branch_222bb48
	blx     r1
.thumb
branch_222bb48: @ 222bb48 :thumb
	pop     {r3,pc}
@ 0x222bb4a


.align 2


.word 0x222d948 @ 0x222bb4c
.thumb
Function_222bb50: @ 222bb50 :thumb
	ldr     r3, [pc, #0x4] @ 0x222bb58, (=0x2021dcd)
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222bb58

.word 0x2021dcd @ 0x222bb58
.thumb
Function_222bb5c: @ 222bb5c :thumb
	ldr     r3, [pc, #0x8] @ 0x222bb68, (=0x2021dcd)
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x4
	bx      r3
@ 0x222bb66


.align 2


.word 0x2021dcd @ 0x222bb68
.thumb
Function_222bb6c: @ 222bb6c :thumb
	ldr     r3, [pc, #0x8] @ 0x222bb78, (=0x2021dcd)
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x4]
	.hword  0x1d49 @ add r1, r1, #0x5
	bx      r3
@ 0x222bb76


.align 2


.word 0x2021dcd @ 0x222bb78
.thumb
Function_222bb7c: @ 222bb7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x10]
	ldr     r0, [r5, #0x4]
	.hword  0x1d49 @ add r1, r1, #0x5
	bl      Function_2021dcc
	str     r4, [r5, #0x10]
	pop     {r3-r5,pc}
@ 0x222bb90

.thumb
Function_222bb90: @ 222bb90 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bb9c, (=0x2021dcd)
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x4]
	add     r1, #0x9
	bx      r3
@ 0x222bb9a


.align 2


.word 0x2021dcd @ 0x222bb9c
.thumb
Function_222bba0: @ 222bba0 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bbac, (=0x2021dcd)
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x4]
	.hword  0x1d49 @ add r1, r1, #0x5
	bx      r3
@ 0x222bbaa


.align 2


.word 0x2021dcd @ 0x222bbac
.thumb
Function_222bbb0: @ 222bbb0 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bbbc, (=0x2021dcd)
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x4]
	.hword  0x1d49 @ add r1, r1, #0x5
	bx      r3
@ 0x222bbba


.align 2


.word 0x2021dcd @ 0x222bbbc
.thumb
Function_222bbc0: @ 222bbc0 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bbcc, (=0x2021dcd)
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x4]
	.hword  0x1d49 @ add r1, r1, #0x5
	bx      r3
@ 0x222bbca


.align 2


.word 0x2021dcd @ 0x222bbcc
.thumb
Function_222bbd0: @ 222bbd0 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bbdc, (=0x2021dcd)
	str     r1, [r0, #0x10]
	ldr     r0, [r0, #0x4]
	.hword  0x1d49 @ add r1, r1, #0x5
	bx      r3
@ 0x222bbda


.align 2


.word 0x2021dcd @ 0x222bbdc
.thumb
Function_222bbe0: @ 222bbe0 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bbec, (=0x2021e2d)
	mov     r1, #0x2
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #12
	bx      r3
@ 0x222bbea


.align 2


.word 0x2021e2d @ 0x222bbec
.thumb
Function_222bbf0: @ 222bbf0 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bbfc, (=0x2021e2d)
	mov     r1, #0x2
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #12
	bx      r3
@ 0x222bbfa


.align 2


.word 0x2021e2d @ 0x222bbfc
.thumb
Function_222bc00: @ 222bc00 :thumb
	push    {r3,lr}
	mov     r1, r0
	mov     r0, #0x14
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	ldr     r0, [r1, #0x4]
	bne     branch_222bc16
	mov     r1, #0x1
	bl      Function_2021e50
	pop     {r3,pc}
@ 0x222bc16

.thumb
branch_222bc16: @ 222bc16 :thumb
	ldr     r1, [r1, #0x10]
	.hword  0x1d49 @ add r1, r1, #0x5
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x222bc20

.thumb
Function_222bc20: @ 222bc20 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bc2c, (=0x2021e2d)
	mov     r1, #0x2
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #12
	bx      r3
@ 0x222bc2a


.align 2


.word 0x2021e2d @ 0x222bc2c
.thumb
Function_222bc30: @ 222bc30 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bc3c, (=0x2021e2d)
	mov     r1, #0x1
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #12
	bx      r3
@ 0x222bc3a


.align 2


.word 0x2021e2d @ 0x222bc3c
.thumb
Function_222bc40: @ 222bc40 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bc4c, (=0x2021e2d)
	mov     r1, #0x1
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #12
	bx      r3
@ 0x222bc4a


.align 2


.word 0x2021e2d @ 0x222bc4c
.thumb
Function_222bc50: @ 222bc50 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bc5c, (=0x2021e2d)
	mov     r1, #0x2
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #14
	bx      r3
@ 0x222bc5a


.align 2


.word 0x2021e2d @ 0x222bc5c
.thumb
Function_222bc60: @ 222bc60 :thumb
	ldr     r3, [pc, #0x8] @ 0x222bc6c, (=0x2021e2d)
	mov     r1, #0x6
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #12
	bx      r3
@ 0x222bc6a


.align 2


.word 0x2021e2d @ 0x222bc6c
.thumb
Function_222bc70: @ 222bc70 :thumb
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_222bc7a
	mov     r0, #0x1
	bx      lr
@ 0x222bc7a

.thumb
branch_222bc7a: @ 222bc7a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222bc7e


.align 2, 0


.thumb
Function_222bc80: @ 222bc80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r4, r2
	bl      Function_2009e34
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_200a760
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_200a760
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r7, r0
	beq     branch_222bcc4
	lsl     r0, r4, #21
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	lsl     r3, r7, #20
	ldr     r0, [r5, #0x4]
	ldr     r1, [r1, #0xc]
	mov     r2, #0x2
	lsr     r3, r3, #16
	bl      Function_2002fbc
.thumb
branch_222bcc4: @ 222bcc4 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_222bce2
	lsl     r0, r4, #21
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	lsl     r3, r6, #20
	ldr     r0, [r5, #0x4]
	ldr     r1, [r1, #0xc]
	mov     r2, #0x3
	lsr     r3, r3, #16
	bl      Function_2002fbc
.thumb
branch_222bce2: @ 222bce2 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222bce6


.align 2, 0


.thumb
Function_222bce8: @ 222bce8 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	mov     r1, #0x8
	bl      malloc
	mov     r4, r0
	bne     branch_222bd00
	bl      ErrorHandling
.thumb
branch_222bd00: @ 222bd00 :thumb
	strh    r5, [r4, #0x0]
	strh    r6, [r4, #0x2]
	ldrh    r2, [r4, #0x0]
	ldrh    r1, [r4, #0x2]
	mov     r0, r7
	mul     r1, r2
	lsl     r1, r1, #2
	bl      malloc
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_222bd1c
	bl      ErrorHandling
.thumb
branch_222bd1c: @ 222bd1c :thumb
	ldrh    r3, [r4, #0x0]
	ldrh    r2, [r4, #0x2]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	mul     r2, r3
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x222bd30

.thumb
Function_222bd30: @ 222bd30 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_222bd3a
	bl      ErrorHandling
.thumb
branch_222bd3a: @ 222bd3a :thumb
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x222bd48

.thumb
Function_222bd48: @ 222bd48 :thumb
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x222bd4c

.thumb
Function_222bd4c: @ 222bd4c :thumb
	ldrh    r0, [r0, #0x2]
	bx      lr
@ 0x222bd50

.thumb
Function_222bd50: @ 222bd50 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	cmp     r4, #0x0
	bne     branch_222bd5e
	bl      ErrorHandling
.thumb
branch_222bd5e: @ 222bd5e :thumb
	ldrh    r3, [r4, #0x0]
	ldrh    r2, [r4, #0x2]
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	mul     r2, r3
	lsl     r2, r2, #2
	blx     CopyDataInByteSteps
	pop     {r3-r5,pc}
@ 0x222bd70

.thumb
Function_222bd70: @ 222bd70 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x222bda8, (=0x222dbfc)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r6, r2
	str     r0, [sp, #0x0]
	cmp     r5, #0x0
	bne     branch_222bd88
	bl      ErrorHandling
.thumb
branch_222bd88: @ 222bd88 :thumb
	ldrh    r2, [r5, #0x0]
	cmp     r2, r4
	bls     branch_222bda2
	ldrh    r0, [r5, #0x2]
	cmp     r0, r6
	bls     branch_222bda2
	mov     r0, r2
	mul     r0, r6
	add     r0, r4, r0
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	str     r0, [sp, #0x0]
.thumb
branch_222bda2: @ 222bda2 :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222bda8

.word 0x222dbfc @ 0x222bda8
.thumb
Function_222bdac: @ 222bdac :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	cmp     r5, #0x0
	bne     branch_222bdbe
	bl      ErrorHandling
.thumb
branch_222bdbe: @ 222bdbe :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_222bd70
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	cmp     r0, r1
	bne     branch_222bdda
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222bdda

.thumb
branch_222bdda: @ 222bdda :thumb
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x222bde2


.align 2, 0


.thumb
Function_222bde4: @ 222bde4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	cmp     r5, #0x0
	bne     branch_222bdf6
	bl      ErrorHandling
.thumb
branch_222bdf6: @ 222bdf6 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_222bd70
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	cmp     r0, r1
	bne     branch_222be12
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222be12

.thumb
branch_222be12: @ 222be12 :thumb
	lsr     r0, r0, #1
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x222be18

.thumb
Function_222be18: @ 222be18 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x8
	bl      malloc
	mov     r4, r0
	bne     branch_222be2e
	bl      ErrorHandling
.thumb
branch_222be2e: @ 222be2e :thumb
	mov     r1, #0x18
	mov     r0, r6
	mul     r1, r5
	str     r5, [r4, #0x4]
	bl      malloc
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_222be44
	bl      ErrorHandling
.thumb
branch_222be44: @ 222be44 :thumb
	ldr     r3, [r4, #0x4]
	mov     r2, #0x18
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mul     r2, r3
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222be56


.align 2, 0


.thumb
Function_222be58: @ 222be58 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_222be62
	bl      ErrorHandling
.thumb
branch_222be62: @ 222be62 :thumb
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x222be70

.thumb
Function_222be70: @ 222be70 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x7]
	bl      Function_222bf18
	mov     r1, r4
	bl      Function_222c350
	pop     {r4,pc}
@ 0x222be82


.align 2, 0


.thumb
Function_222be84: @ 222be84 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_222beb0
	mov     r5, r0
	ldr     r4, [pc, #0x1c] @ 0x222beac, (=0x0)
	beq     branch_222beaa
.thumb
branch_222be92: @ 222be92 :thumb
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_222bf50
	cmp     r0, #0x0
	beq     branch_222bea4
	bl      Function_222c37c
.thumb
branch_222bea4: @ 222bea4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	bcc     branch_222be92
.thumb
branch_222beaa: @ 222beaa :thumb
	pop     {r4-r6,pc}
@ 0x222beac

.word 0x0 @ 0x222beac
.thumb
Function_222beb0: @ 222beb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_222beba
	bl      ErrorHandling
.thumb
branch_222beba: @ 222beba :thumb
	ldr     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x222bebe


.align 2, 0


.thumb
Function_222bec0: @ 222bec0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_222bece
	bl      ErrorHandling
.thumb
branch_222bece: @ 222bece :thumb
	cmp     r4, #0x0
	bne     branch_222bed6
	bl      ErrorHandling
.thumb
branch_222bed6: @ 222bed6 :thumb
	mov     r0, r5
	bl      Function_222c0b8
	mov     r1, #0x0
	ldsh    r2, [r4, r1]
	strh    r2, [r0, #0x4]
	mov     r2, #0x2
	ldsh    r3, [r4, r2]
	strh    r3, [r0, #0x6]
	ldsh    r1, [r4, r1]
	strh    r1, [r0, #0x8]
	ldsh    r1, [r4, r2]
	strh    r1, [r0, #0xa]
	ldrh    r1, [r4, #0x4]
	strh    r1, [r0, #0xc]
	ldrh    r1, [r4, #0x6]
	strb    r1, [r0, #0x15]
	ldrh    r1, [r4, #0x8]
	strb    r1, [r0, #0x14]
	ldrh    r1, [r4, #0xa]
	strh    r1, [r0, #0xe]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x222bf06


.align 2, 0


.thumb
Function_222bf08: @ 222bf08 :thumb
	mov     r2, #0x18
	mov     r1, #0x0
.thumb
branch_222bf0c: @ 222bf0c :thumb
	strb    r1, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222bf0c
	bx      lr
@ 0x222bf16


.align 2, 0


.thumb
Function_222bf18: @ 222bf18 :thumb
	push    {r3-r6}
	ldr     r5, [r0, #0x4]
	mov     r2, #0x0
	cmp     r5, #0x0
	bls     branch_222bf4a
	ldr     r4, [r0, #0x0]
	mov     r3, r2
	mov     r0, r4
.thumb
branch_222bf28: @ 222bf28 :thumb
	ldr     r6, [r0, #0x0]
	cmp     r6, #0x1
	bne     branch_222bf40
	add     r6, r4, r3
	ldrh    r6, [r6, #0xc]
	cmp     r1, r6
	bne     branch_222bf40
	mov     r0, #0x18
	mul     r0, r2
	add     r0, r4, r0
	pop     {r3-r6}
	bx      lr
@ 0x222bf40

.thumb
branch_222bf40: @ 222bf40 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x18
	add     r3, #0x18
	cmp     r2, r5
	bcc     branch_222bf28
.thumb
branch_222bf4a: @ 222bf4a :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x222bf50

.thumb
Function_222bf50: @ 222bf50 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_222bf5e
	bl      ErrorHandling
.thumb
branch_222bf5e: @ 222bf5e :thumb
	ldr     r0, [r5, #0x4]
	cmp     r4, r0
	bcc     branch_222bf68
	bl      ErrorHandling
.thumb
branch_222bf68: @ 222bf68 :thumb
	ldr     r2, [r5, #0x0]
	mov     r0, #0x18
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [r2, r1]
	cmp     r0, #0x1
	bne     branch_222bf7a
	add     r0, r2, r1
	pop     {r3-r5,pc}
@ 0x222bf7a

.thumb
branch_222bf7a: @ 222bf7a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222bf7e


.align 2, 0


.thumb
Function_222bf80: @ 222bf80 :thumb
	ldr     r3, [pc, #0x0] @ 0x222bf84, (=0x222bf19)
	bx      r3
@ 0x222bf84

.word Function_222bf18+1 @ =0x222bf19, 0x222bf84
.thumb
Function_222bf88: @ 222bf88 :thumb
	ldr     r3, [pc, #0x0] @ 0x222bf8c, (=0x222bf51)
	bx      r3
@ 0x222bf8c

.word 0x222bf51 @ 0x222bf8c
.thumb
Function_222bf90: @ 222bf90 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	cmp     r4, #0x0
	bne     branch_222bf9e
	bl      ErrorHandling
.thumb
branch_222bf9e: @ 222bf9e :thumb
	cmp     r6, #0xa
	bhi     branch_222bff8
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222bfae

Jumppoints_222bfae:
.hword branch_222bfc4 - Jumppoints_222bfae - 2
.hword branch_222bfca - Jumppoints_222bfae - 2
.hword branch_222bfd0 - Jumppoints_222bfae - 2
.hword branch_222bfd6 - Jumppoints_222bfae - 2
.hword branch_222bfdc - Jumppoints_222bfae - 2
.hword branch_222bfe0 - Jumppoints_222bfae - 2
.hword branch_222bfe4 - Jumppoints_222bfae - 2
.hword branch_222bfe8 - Jumppoints_222bfae - 2
.hword branch_222bfec - Jumppoints_222bfae - 2
.hword branch_222bff0 - Jumppoints_222bfae - 2
.hword branch_222bff4 - Jumppoints_222bfae - 2
.thumb
branch_222bfc4: @ 222bfc4 :thumb
	mov     r0, #0x4
	ldsh    r5, [r4, r0]
	b       branch_222bffc
@ 0x222bfca

.thumb
branch_222bfca: @ 222bfca :thumb
	mov     r0, #0x6
	ldsh    r5, [r4, r0]
	b       branch_222bffc
@ 0x222bfd0

.thumb
branch_222bfd0: @ 222bfd0 :thumb
	mov     r0, #0x8
	ldsh    r5, [r4, r0]
	b       branch_222bffc
@ 0x222bfd6

.thumb
branch_222bfd6: @ 222bfd6 :thumb
	mov     r0, #0xa
	ldsh    r5, [r4, r0]
	b       branch_222bffc
@ 0x222bfdc

.thumb
branch_222bfdc: @ 222bfdc :thumb
	ldrh    r5, [r4, #0xc]
	b       branch_222bffc
@ 0x222bfe0

.thumb
branch_222bfe0: @ 222bfe0 :thumb
	ldrb    r5, [r4, #0x15]
	b       branch_222bffc
@ 0x222bfe4

.thumb
branch_222bfe4: @ 222bfe4 :thumb
	ldrb    r5, [r4, #0x14]
	b       branch_222bffc
@ 0x222bfe8

.thumb
branch_222bfe8: @ 222bfe8 :thumb
	ldrh    r5, [r4, #0xe]
	b       branch_222bffc
@ 0x222bfec

.thumb
branch_222bfec: @ 222bfec :thumb
	ldrh    r5, [r4, #0x10]
	b       branch_222bffc
@ 0x222bff0

.thumb
branch_222bff0: @ 222bff0 :thumb
	ldrh    r5, [r4, #0x12]
	b       branch_222bffc
@ 0x222bff4

.thumb
branch_222bff4: @ 222bff4 :thumb
	ldrh    r5, [r4, #0x16]
	b       branch_222bffc
@ 0x222bff8

.thumb
branch_222bff8: @ 222bff8 :thumb
	bl      ErrorHandling
.thumb
branch_222bffc: @ 222bffc :thumb
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x222c000

.thumb
Function_222c000: @ 222c000 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c010
	bl      ErrorHandling
.thumb
branch_222c010: @ 222c010 :thumb
	cmp     r6, #0xa
	bhi     branch_222c072
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222c020

Jumppoints_222c020:
.hword branch_222c036 - Jumppoints_222c020 - 2
.hword branch_222c03a - Jumppoints_222c020 - 2
.hword branch_222c03e - Jumppoints_222c020 - 2
.hword branch_222c042 - Jumppoints_222c020 - 2
.hword branch_222c046 - Jumppoints_222c020 - 2
.hword branch_222c04a - Jumppoints_222c020 - 2
.hword branch_222c056 - Jumppoints_222c020 - 2
.hword branch_222c062 - Jumppoints_222c020 - 2
.hword branch_222c066 - Jumppoints_222c020 - 2
.hword branch_222c06a - Jumppoints_222c020 - 2
.hword branch_222c06e - Jumppoints_222c020 - 2
.thumb
branch_222c036: @ 222c036 :thumb
	strh    r4, [r5, #0x4]
	pop     {r4-r6,pc}
@ 0x222c03a

.thumb
branch_222c03a: @ 222c03a :thumb
	strh    r4, [r5, #0x6]
	pop     {r4-r6,pc}
@ 0x222c03e

.thumb
branch_222c03e: @ 222c03e :thumb
	strh    r4, [r5, #0x8]
	pop     {r4-r6,pc}
@ 0x222c042

.thumb
branch_222c042: @ 222c042 :thumb
	strh    r4, [r5, #0xa]
	pop     {r4-r6,pc}
@ 0x222c046

.thumb
branch_222c046: @ 222c046 :thumb
	strh    r4, [r5, #0xc]
	pop     {r4-r6,pc}
@ 0x222c04a

.thumb
branch_222c04a: @ 222c04a :thumb
	cmp     r4, #0xc
	blt     branch_222c052
	bl      ErrorHandling
.thumb
branch_222c052: @ 222c052 :thumb
	strb    r4, [r5, #0x15]
	pop     {r4-r6,pc}
@ 0x222c056

.thumb
branch_222c056: @ 222c056 :thumb
	cmp     r4, #0x4
	blt     branch_222c05e
	bl      ErrorHandling
.thumb
branch_222c05e: @ 222c05e :thumb
	strb    r4, [r5, #0x14]
	pop     {r4-r6,pc}
@ 0x222c062

.thumb
branch_222c062: @ 222c062 :thumb
	strh    r4, [r5, #0xe]
	pop     {r4-r6,pc}
@ 0x222c066

.thumb
branch_222c066: @ 222c066 :thumb
	strh    r4, [r5, #0x10]
	pop     {r4-r6,pc}
@ 0x222c06a

.thumb
branch_222c06a: @ 222c06a :thumb
	strh    r4, [r5, #0x12]
	pop     {r4-r6,pc}
@ 0x222c06e

.thumb
branch_222c06e: @ 222c06e :thumb
	strh    r4, [r5, #0x16]
	pop     {r4-r6,pc}
@ 0x222c072

.thumb
branch_222c072: @ 222c072 :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x222c078

.thumb
Function_222c078: @ 222c078 :thumb
	push    {r0-r3}
	lsl     r0, r1, #1
	add     r2, sp, #0x0
	mov     r1, #0x0
	ldsh    r3, [r2, r1]
	ldr     r1, [pc, #0x20] @ 0x222c0a4, (=0x222dc04)
	ldsb    r1, [r1, r0]
	add     r1, r3, r1
	strh    r1, [r2, #0x0]
	mov     r1, #0x2
	ldsh    r3, [r2, r1]
	ldr     r1, [pc, #0x18] @ 0x222c0a8, (=0x222dc05)
	ldsb    r0, [r1, r0]
	add     r0, r3, r0
	strh    r0, [r2, #0x2]
	ldrh    r1, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	lsl     r1, r1, #16
	orr     r0, r1
	add     sp, #0x10
	bx      lr
@ 0x222c0a2


.align 2


.word 0x222dc04 @ 0x222c0a4
.word 0x222dc05 @ 0x222c0a8
.thumb
Function_222c0ac: @ 222c0ac :thumb
	ldr     r1, [pc, #0x4] @ 0x222c0b4, (=0x222dc00)
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x222c0b2


.align 2


.word 0x222dc00 @ 0x222c0b4
.thumb
Function_222c0b8: @ 222c0b8 :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x4]
	mov     r1, #0x0
	cmp     r4, #0x0
	bls     branch_222c0dc
	ldr     r3, [r0, #0x0]
	mov     r2, r3
.thumb
branch_222c0c6: @ 222c0c6 :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, #0x0
	bne     branch_222c0d4
	mov     r0, #0x18
	mul     r0, r1
	add     r0, r3, r0
	pop     {r4,pc}
@ 0x222c0d4

.thumb
branch_222c0d4: @ 222c0d4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x18
	cmp     r1, r4
	bcc     branch_222c0c6
.thumb
branch_222c0dc: @ 222c0dc :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222c0e4

.thumb
Function_222c0e4: @ 222c0e4 :thumb
	ldrh    r1, [r0, #0x6]
	ldrh    r0, [r0, #0x4]
	lsl     r1, r1, #16
	orr     r0, r1
	bx      lr
@ 0x222c0ee


.align 2, 0


.thumb
Function_222c0f0: @ 222c0f0 :thumb
	ldrh    r1, [r0, #0xa]
	ldrh    r0, [r0, #0x8]
	lsl     r1, r1, #16
	orr     r0, r1
	bx      lr
@ 0x222c0fa


.align 2, 0


.thumb
Function_222c0fc: @ 222c0fc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r1, #0x8
	bl      Function_222bf90
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x9
	bl      Function_222bf90
	mov     r6, r0
	mov     r0, r5
	bl      Function_222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	mov     r0, r5
	bl      Function_222c0f0
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r2, #0x8
	strh    r0, [r1, #0x8]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0xa]
	mov     r0, #0xc
	ldsh    r3, [r1, r0]
	ldsh    r2, [r1, r2]
	sub     r2, r3, r2
	strh    r2, [r1, #0xc]
	mov     r2, #0xa
	ldsh    r5, [r1, r2]
	mov     r2, #0xe
	ldsh    r2, [r1, r2]
	sub     r2, r2, r5
	strh    r2, [r1, #0xe]
	cmp     r4, #0x0
	ble     branch_222c17a
	ldsh    r0, [r1, r0]
	mov     r1, r6
	mul     r0, r4
	blx     _s32_div_f
	add     r1, sp, #0x0
	strh    r0, [r1, #0xc]
	mov     r0, #0xe
	ldsh    r0, [r1, r0]
	mov     r1, r6
	mul     r0, r4
	blx     _s32_div_f
	add     r1, sp, #0x0
	b       branch_222c17e
@ 0x222c17a

.thumb
branch_222c17a: @ 222c17a :thumb
	mov     r0, #0x0
	strh    r0, [r1, #0xc]
.thumb
branch_222c17e: @ 222c17e :thumb
	strh    r0, [r1, #0xe]
	add     r1, sp, #0x0
	mov     r0, #0xc
	ldsh    r2, [r1, r0]
	mov     r0, #0x8
	ldsh    r0, [r1, r0]
	add     r0, r2, r0
	strh    r0, [r1, #0xc]
	mov     r0, #0xe
	ldsh    r0, [r1, r0]
	add     r0, r0, r5
	strh    r0, [r1, #0xe]
	ldrh    r2, [r1, #0xe]
	ldrh    r0, [r1, #0xc]
	lsl     r1, r2, #16
	orr     r0, r1
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x222c1a2


.align 2, 0


.thumb
Function_222c1a4: @ 222c1a4 :thumb
	push    {r0-r3}
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0x4]
	strh    r2, [r0, #0x4]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r0, #0x6]
	add     sp, #0x10
	bx      lr
@ 0x222c1b4

.thumb
Function_222c1b4: @ 222c1b4 :thumb
	push    {r0-r3}
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0x4]
	strh    r2, [r0, #0x8]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r0, #0xa]
	add     sp, #0x10
	bx      lr
@ 0x222c1c4

.thumb
Function_222c1c4: @ 222c1c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r4, r2
	bl      Function_222c0e4
	add     r1, sp, #0x10
	strh    r0, [r1, #0xc]
	lsr     r0, r0, #16
	strh    r0, [r1, #0xe]
	ldrh    r0, [r1, #0xc]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r0, [r1, #0x1c]
	ldrh    r0, [r1, #0xe]
	strh    r0, [r1, #0x1e]
	ldrh    r0, [r1, #0x1c]
	strh    r0, [r2, #0x0]
	ldrh    r0, [r1, #0x1e]
	mov     r1, r4
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      Function_222c078
	add     r1, sp, #0x10
	strh    r0, [r1, #0x8]
	lsr     r0, r0, #16
	strh    r0, [r1, #0xa]
	ldrh    r0, [r1, #0x8]
	strh    r0, [r1, #0x14]
	ldrh    r0, [r1, #0xa]
	strh    r0, [r1, #0x16]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_222bf90
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	bl      Function_222beb0
	mov     r5, #0x0
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	bls     branch_222c2a4
	add     r4, sp, #0x10
	mov     r0, #0x16
	ldsh    r7, [r4, r0]
	mov     r0, #0x14
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0xc]
.thumb
branch_222c22a: @ 222c22a :thumb
	lsl     r1, r5, #16
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #16
	bl      Function_222bf88
	mov     r6, r0
	beq     branch_222c29c
	mov     r1, #0x4
	bl      Function_222bf90
	ldr     r1, [sp, #0x4]
	cmp     r0, r1
	beq     branch_222c29c
	mov     r0, r6
	bl      Function_222c0e4
	strh    r0, [r4, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x4]
	strh    r0, [r4, #0x18]
	ldrh    r0, [r4, #0x6]
	strh    r0, [r4, #0x1a]
	mov     r0, #0x18
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0xc]
	cmp     r1, r0
	bne     branch_222c270
	mov     r0, #0x1a
	ldsh    r0, [r4, r0]
	cmp     r0, r7
	bne     branch_222c270
	add     sp, #0x30
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x222c270

.thumb
branch_222c270: @ 222c270 :thumb
	mov     r0, r6
	bl      Function_222c0f0
	strh    r0, [r4, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r4, #0x2]
	ldrh    r0, [r4, #0x0]
	strh    r0, [r4, #0x10]
	ldrh    r0, [r4, #0x2]
	strh    r0, [r4, #0x12]
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0xc]
	cmp     r1, r0
	bne     branch_222c29c
	mov     r0, #0x12
	ldsh    r0, [r4, r0]
	cmp     r0, r7
	bne     branch_222c29c
	add     sp, #0x30
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x222c29c

.thumb
branch_222c29c: @ 222c29c :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	bcc     branch_222c22a
.thumb
branch_222c2a4: @ 222c2a4 :thumb
	mov     r0, #0x0
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x222c2aa


.align 2, 0


.thumb
Function_222c2ac: @ 222c2ac :thumb
	push    {r0-r3}
.thumb
Function_222c2ae: @ 222c2ae :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	add     r2, sp, #0x30
	mov     r1, #0x6
	str     r0, [sp, #0x0]
	ldsh    r6, [r2, r1]
	bl      Function_222beb0
	mov     r5, #0x0
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	bls     branch_222c344
	add     r1, sp, #0x30
	mov     r0, #0x4
	ldsh    r7, [r1, r0]
	add     r4, sp, #0xc
.thumb
branch_222c2ce: @ 222c2ce :thumb
	lsl     r1, r5, #16
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #16
	bl      Function_222bf88
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_222c33c
	bl      Function_222c0e4
	strh    r0, [r4, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x4]
	strh    r0, [r4, #0xc]
	ldrh    r0, [r4, #0x6]
	strh    r0, [r4, #0xe]
	mov     r0, #0xc
	ldsh    r0, [r4, r0]
	cmp     r0, r7
	bne     branch_222c30c
	mov     r0, #0xe
	ldsh    r0, [r4, r0]
	cmp     r0, r6
	bne     branch_222c30c
	ldr     r0, [sp, #0x4]
	add     sp, #0x1c
	pop     {r4-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c30c

.thumb
branch_222c30c: @ 222c30c :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_222c0f0
	strh    r0, [r4, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r4, #0x2]
	ldrh    r0, [r4, #0x0]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r4, #0x2]
	strh    r0, [r4, #0xa]
	mov     r0, #0x8
	ldsh    r0, [r4, r0]
	cmp     r0, r7
	bne     branch_222c33c
	mov     r0, #0xa
	ldsh    r0, [r4, r0]
	cmp     r0, r6
	bne     branch_222c33c
	ldr     r0, [sp, #0x4]
	add     sp, #0x1c
	pop     {r4-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c33c

.thumb
branch_222c33c: @ 222c33c :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	bcc     branch_222c2ce
.thumb
branch_222c344: @ 222c344 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c350

.thumb
Function_222c350: @ 222c350 :thumb
	push    {r3-r5,lr}
	mov     r3, r1
	ldrh    r1, [r3, #0x0]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r1, [r2, #0x0]
	ldrh    r1, [r3, #0x2]
	mov     r4, r0
	strh    r1, [r2, #0x2]
	ldr     r1, [r2, #0x0]
	ldrb    r2, [r3, #0x6]
	ldrh    r3, [r3, #0x4]
	lsl     r5, r3, #2
	ldr     r3, [pc, #0xc] @ 0x222c378, (=0x222dc0c)
	ldr     r3, [r3, r5]
	blx     r3
	mov     r0, #0x0
	strh    r0, [r4, #0x16]
	pop     {r3-r5,pc}
@ 0x222c376


.align 2


.word 0x222dc0c @ 0x222c378
.thumb
Function_222c37c: @ 222c37c :thumb
	push    {r4,lr}
	mov     r1, #0x5
	mov     r4, r0
	bl      Function_222bf90
	mov     r1, r0
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x222c3a8, (=0x222dc3c)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	ldrh    r1, [r4, #0x16]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x16]
	cmp     r0, #0x1
	bne     branch_222c3a6
	mov     r0, r4
	bl      Function_222ca48
	mov     r0, #0x0
	strh    r0, [r4, #0x16]
.thumb
branch_222c3a6: @ 222c3a6 :thumb
	pop     {r4,pc}
@ 0x222c3a8

.word 0x222dc3c @ 0x222c3a8
.thumb
Function_222c3ac: @ 222c3ac :thumb
	push    {r0-r3}
.thumb
Function_222c3ae: @ 222c3ae :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c3bc
	bl      ErrorHandling
.thumb
branch_222c3bc: @ 222c3bc :thumb
	add     r1, sp, #0x10
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	mov     r0, r5
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	add     r1, sp, #0x10
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c404

.thumb
Function_222c404: @ 222c404 :thumb
	push    {r0-r3}
.thumb
Function_222c406: @ 222c406 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c414
	bl      ErrorHandling
.thumb
branch_222c414: @ 222c414 :thumb
	add     r1, sp, #0x10
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	mov     r0, r5
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	add     r1, sp, #0x10
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x1
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x2
	bl      Function_222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c470

.thumb
Function_222c470: @ 222c470 :thumb
	push    {r0-r3}
.thumb
Function_222c472: @ 222c472 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c482
	bl      ErrorHandling
.thumb
branch_222c482: @ 222c482 :thumb
	add     r0, sp, #0x18
	ldrh    r1, [r0, #0x4]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r1, [r2, #0x0]
	ldrh    r0, [r0, #0x6]
	mov     r1, r4
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      Function_222c9e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	add     r1, sp, #0x18
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	add     r1, sp, #0x0
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x2
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x8
	bl      Function_222c000
	add     sp, #0x8
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c506


.align 2, 0


.thumb
Function_222c508: @ 222c508 :thumb
	push    {r0-r3}
.thumb
Function_222c50a: @ 222c50a :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c51a
	bl      ErrorHandling
.thumb
branch_222c51a: @ 222c51a :thumb
	add     r0, sp, #0x18
	ldrh    r1, [r0, #0x4]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r1, [r2, #0x0]
	ldrh    r0, [r0, #0x6]
	mov     r1, r4
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      Function_222c9e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	add     r1, sp, #0x18
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	add     r1, sp, #0x0
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x3
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x4
	bl      Function_222c000
	add     sp, #0x8
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c59e


.align 2, 0


.thumb
Function_222c5a0: @ 222c5a0 :thumb
	push    {r0-r3}
.thumb
Function_222c5a2: @ 222c5a2 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c5b0
	bl      ErrorHandling
.thumb
branch_222c5b0: @ 222c5b0 :thumb
	add     r1, sp, #0x10
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	mov     r0, r5
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	add     r1, sp, #0x10
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x4
	bl      Function_222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c5f8

.thumb
Function_222c5f8: @ 222c5f8 :thumb
	push    {r0-r3}
.thumb
Function_222c5fa: @ 222c5fa :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c608
	bl      ErrorHandling
.thumb
branch_222c608: @ 222c608 :thumb
	add     r1, sp, #0x10
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	mov     r0, r5
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	add     r1, sp, #0x10
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r1, #0x5
	mov     r0, r5
	mov     r2, r1
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x10
	bl      Function_222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c664

.thumb
Function_222c664: @ 222c664 :thumb
	push    {r0-r3}
.thumb
Function_222c666: @ 222c666 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c676
	bl      ErrorHandling
.thumb
branch_222c676: @ 222c676 :thumb
	add     r0, sp, #0x18
	ldrh    r1, [r0, #0x4]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r1, [r2, #0x0]
	ldrh    r0, [r0, #0x6]
	mov     r1, r4
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      Function_222c9e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	add     r1, sp, #0x18
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	add     r1, sp, #0x0
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x6
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x10
	bl      Function_222c000
	add     sp, #0x8
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c6fa


.align 2, 0


.thumb
Function_222c6fc: @ 222c6fc :thumb
	push    {r0-r3}
.thumb
Function_222c6fe: @ 222c6fe :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c70e
	bl      ErrorHandling
.thumb
branch_222c70e: @ 222c70e :thumb
	add     r0, sp, #0x18
	ldrh    r1, [r0, #0x4]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r1, [r2, #0x0]
	ldrh    r0, [r0, #0x6]
	mov     r1, r4
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      Function_222c9e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	add     r1, sp, #0x18
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	add     r1, sp, #0x0
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x7
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x4
	bl      Function_222c000
	add     sp, #0x8
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c792


.align 2, 0


.thumb
Function_222c794: @ 222c794 :thumb
	push    {r0-r3}
.thumb
Function_222c796: @ 222c796 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c7a4
	bl      ErrorHandling
.thumb
branch_222c7a4: @ 222c7a4 :thumb
	add     r1, sp, #0x10
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	mov     r0, r5
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	add     r1, sp, #0x10
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x8
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x2
	bl      Function_222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c800

.thumb
Function_222c800: @ 222c800 :thumb
	push    {r0-r3}
.thumb
Function_222c802: @ 222c802 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c810
	bl      ErrorHandling
.thumb
branch_222c810: @ 222c810 :thumb
	add     r1, sp, #0x10
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	mov     r0, r5
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	add     r1, sp, #0x10
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x9
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x4
	bl      Function_222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c86c

.thumb
Function_222c86c: @ 222c86c :thumb
	push    {r0-r3}
.thumb
Function_222c86e: @ 222c86e :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c87c
	bl      ErrorHandling
.thumb
branch_222c87c: @ 222c87c :thumb
	add     r1, sp, #0x10
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	mov     r0, r5
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	add     r1, sp, #0x10
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0xa
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x8
	bl      Function_222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c8d8

.thumb
Function_222c8d8: @ 222c8d8 :thumb
	push    {r0-r3}
.thumb
Function_222c8da: @ 222c8da :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_222c8e8
	bl      ErrorHandling
.thumb
branch_222c8e8: @ 222c8e8 :thumb
	add     r1, sp, #0x10
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	mov     r0, r5
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
	add     r1, sp, #0x10
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1a4
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0xb
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_222c000
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x10
	bl      Function_222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222c944

.thumb
Function_222c944: @ 222c944 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222c948

.thumb
Function_222c948: @ 222c948 :thumb
	ldr     r3, [pc, #0x0] @ 0x222c94c, (=0x222ca15)
	bx      r3
@ 0x222c94c

.word 0x222ca15 @ 0x222c94c
.thumb
Function_222c950: @ 222c950 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_222ca14
	mov     r4, r0
	cmp     r4, #0x1
	bne     branch_222c98a
	mov     r0, r5
	bl      Function_222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
.thumb
branch_222c98a: @ 222c98a :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222c990

.thumb
Function_222c990: @ 222c990 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_222ca14
	mov     r4, r0
	cmp     r4, #0x1
	bne     branch_222c9ca
	mov     r0, r5
	bl      Function_222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_222c1b4
.thumb
branch_222c9ca: @ 222c9ca :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222c9d0

.thumb
Function_222c9d0: @ 222c9d0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222c9d4

.thumb
Function_222c9d4: @ 222c9d4 :thumb
	ldr     r3, [pc, #0x0] @ 0x222c9d8, (=0x222ca15)
	bx      r3
@ 0x222c9d8

.word Function_222ca14+1 @ =0x222ca15, 0x222c9d8
.thumb
Function_222c9dc: @ 222c9dc :thumb
	ldr     r3, [pc, #0x0] @ 0x222c9e0, (=0x222ca15)
	bx      r3
@ 0x222c9e0

.word Function_222ca14+1 @ =0x222ca15, 0x222c9e0
.thumb
Function_222c9e4: @ 222c9e4 :thumb
	push    {r0-r3}
.thumb
Function_222c9e6: @ 222c9e6 :thumb
	push    {r3,lr}
	add     r0, sp, #0x8
	ldrh    r2, [r0, #0x0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r0, [r0, #0x2]
	strh    r0, [r3, #0x2]
	ldr     r0, [r3, #0x0]
	bl      Function_222c078
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r2, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	lsl     r1, r2, #16
	orr     r0, r1
	pop     {r3}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222ca14

.thumb
Function_222ca14: @ 222ca14 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x8
	bl      Function_222bf90
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x9
	bl      Function_222bf90
	mov     r6, r0
	cmp     r4, r6
	bge     branch_222ca42
	mov     r0, r5
	mov     r1, #0x8
	add     r2, r4, #0x1
	bl      Function_222c000
	add     r0, r4, #0x1
	cmp     r0, r6
	bge     branch_222ca42
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222ca42

.thumb
branch_222ca42: @ 222ca42 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222ca46


.align 2, 0


.thumb
Function_222ca48: @ 222ca48 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_222bf90
	add     r1, sp, #0x0
	mov     r2, r0
	mov     r0, r4
	mov     r4, sp
	ldrh    r3, [r1, #0x4]
	.hword  0x1f24 @ sub r4, r4, #0x4
	strh    r3, [r4, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r4, #0x2]
	ldr     r1, [r4, #0x0]
	bl      Function_222c3ac
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222ca86


.align 2, 0


.thumb
Function_222ca88: @ 222ca88 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	cmp     r7, #0x0
	bne     branch_222ca9c
	bl      ErrorHandling
.thumb
branch_222ca9c: @ 222ca9c :thumb
	cmp     r5, #0x0
	bne     branch_222caa4
	bl      ErrorHandling
.thumb
branch_222caa4: @ 222caa4 :thumb
	cmp     r4, #0x0
	bne     branch_222caac
	bl      ErrorHandling
.thumb
branch_222caac: @ 222caac :thumb
	cmp     r6, #0x0
	bne     branch_222cab4
	bl      ErrorHandling
.thumb
branch_222cab4: @ 222cab4 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	bl      Function_222bf80
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_222cac6
	bl      ErrorHandling
.thumb
branch_222cac6: @ 222cac6 :thumb
	str     r6, [sp, #0x0]
	mov     r3, r4
	ldrh    r4, [r4, #0x0]
	mov     r2, r5
	ldr     r0, [sp, #0x4]
	lsl     r5, r4, #2
	ldr     r4, [pc, #0xc] @ 0x222cae0, (=0x222dc6c)
	mov     r1, r7
	ldr     r4, [r4, r5]
	blx     r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222cade


.align 2


.word 0x222dc6c @ 0x222cae0
.thumb
Function_222cae4: @ 222cae4 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x5
	mov     r5, r0
	mov     r4, r3
	bl      Function_222bf90
	cmp     r0, #0x0
	beq     branch_222caf8
	cmp     r0, #0x4
	bne     branch_222cb0c
.thumb
branch_222caf8: @ 222caf8 :thumb
	ldrb    r0, [r4, #0x2]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldrh    r2, [r4, #0x0]
	ldrb    r3, [r4, #0x3]
	ldr     r0, [sp, #0x10]
	bl      Function_222ccb8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222cb0c

.thumb
branch_222cb0c: @ 222cb0c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222cb10

.thumb
Function_222cb10: @ 222cb10 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r1, #0x5
	mov     r4, r3
	bl      Function_222bf90
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_222bf90
	cmp     r6, #0x0
	bne     branch_222cb46
	ldrb    r1, [r4, #0x2]
	cmp     r0, r1
	beq     branch_222cb46
	str     r1, [sp, #0x0]
	ldrh    r2, [r4, #0x0]
	ldrb    r3, [r4, #0x3]
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	bl      Function_222ccb8
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x222cb46

.thumb
branch_222cb46: @ 222cb46 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222cb4c

.thumb
Function_222cb4c: @ 222cb4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r1, #0x5
	mov     r5, r0
	str     r2, [sp, #0x4]
	mov     r4, r3
	bl      Function_222bf90
	mov     r6, r0
	bne     branch_222cb94
	ldrb    r2, [r4, #0x2]
	mov     r0, r5
	mov     r1, r7
	bl      Function_222cc3c
	cmp     r0, #0x1
	beq     branch_222cb94
	ldrb    r2, [r4, #0x2]
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_222cca4
	cmp     r0, #0x1
	beq     branch_222cb94
	ldrb    r0, [r4, #0x2]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldrh    r2, [r4, #0x0]
	ldrb    r3, [r4, #0x3]
	ldr     r0, [sp, #0x20]
	bl      Function_222ccb8
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222cb94

.thumb
branch_222cb94: @ 222cb94 :thumb
	cmp     r6, #0x0
	bne     branch_222cbba
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_222bf90
	cmp     r0, #0x8
	blt     branch_222cbba
	ldrb    r0, [r4, #0x2]
	mov     r1, r5
	mov     r2, #0x5
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x3]
	ldr     r0, [sp, #0x20]
	bl      Function_222ccb8
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222cbba

.thumb
branch_222cbba: @ 222cbba :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222cbc0

.thumb
Function_222cbc0: @ 222cbc0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	bl      Function_222cb4c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222cbd0

.thumb
Function_222cbd0: @ 222cbd0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x5
	mov     r5, r0
	mov     r4, r3
	bl      Function_222bf90
	cmp     r0, #0x0
	bne     branch_222cbf4
	ldrb    r0, [r4, #0x2]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldrh    r2, [r4, #0x0]
	ldrb    r3, [r4, #0x3]
	ldr     r0, [sp, #0x10]
	bl      Function_222ccb8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222cbf4

.thumb
branch_222cbf4: @ 222cbf4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222cbf8

.thumb
Function_222cbf8: @ 222cbf8 :thumb
	push    {r3,lr}
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222cc02


.align 2, 0


.thumb
Function_222cc04: @ 222cc04 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	bl      Function_222cb4c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222cc14

.thumb
Function_222cc14: @ 222cc14 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x5
	mov     r5, r0
	mov     r4, r3
	bl      Function_222bf90
	cmp     r0, #0x0
	bne     branch_222cc38
	ldrb    r0, [r4, #0x2]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldrh    r2, [r4, #0x0]
	ldrb    r3, [r4, #0x3]
	ldr     r0, [sp, #0x10]
	bl      Function_222ccb8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222cc38

.thumb
branch_222cc38: @ 222cc38 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222cc3c

.thumb
Function_222cc3c: @ 222cc3c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r2
	bl      Function_222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	ldrh    r0, [r1, #0xc]
	strh    r0, [r2, #0x0]
	ldrh    r0, [r1, #0xe]
	mov     r1, r5
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      Function_222c078
	add     r2, sp, #0x0
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x8
	strh    r0, [r2, #0x8]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r2, #0xa]
	ldsh    r3, [r2, r1]
	mov     r0, r4
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	mov     r3, #0xa
	ldsh    r3, [r2, r3]
	lsl     r1, r1, #12
	lsr     r1, r1, #16
	asr     r2, r3, #3
	lsr     r2, r2, #28
	add     r2, r3, r2
	lsl     r2, r2, #12
	lsr     r2, r2, #16
	bl      Function_222bdac
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x222cca2


.align 2, 0


.thumb
Function_222cca4: @ 222cca4 :thumb
	push    {r3,lr}
	bl      Function_222c1c4
	cmp     r0, #0x0
	beq     branch_222ccb2
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222ccb2

.thumb
branch_222ccb2: @ 222ccb2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222ccb6


.align 2, 0


.thumb
Function_222ccb8: @ 222ccb8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r5, #0x0]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r5, #0x2]
	strh    r4, [r5, #0x4]
	ldr     r0, [sp, #0x18]
	strb    r6, [r5, #0x7]
	strb    r0, [r5, #0x6]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222cce4

.thumb
Function_222cce4: @ 222cce4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xc
	mov     r5, r2
	mov     r6, r3
	bl      malloc
	mov     r4, r0
	ldr     r1, [sp, #0x0]
	ldr     r3, [sp, #0x18]
	mov     r0, r7
	mov     r2, r5
	bl      Function_222ae60
	str     r0, [r4, #0x0]
	strh    r5, [r4, #0x8]
	ldrh    r2, [r4, #0x8]
	mov     r1, #0x14
	ldr     r0, [sp, #0x18]
	mul     r1, r2
	bl      malloc
	str     r0, [r4, #0x4]
	ldrh    r3, [r4, #0x8]
	mov     r2, #0x14
	mov     r1, #0x0
	mul     r2, r3
	blx     Call_FillMemWithValue
	mov     r0, #0x2
	strb    r0, [r4, #0xa]
	strb    r6, [r4, #0xb]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x222cd2c

.thumb
Function_222cd2c: @ 222cd2c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [sp, #0x28]
	mov     r7, r0
	str     r1, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0xc
	mov     r6, r2
	str     r3, [sp, #0x8]
	bl      malloc
	mov     r4, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	mov     r2, r6
	mov     r3, r5
	bl      Function_222ae60
	str     r0, [r4, #0x0]
	strh    r6, [r4, #0x8]
	ldrh    r2, [r4, #0x8]
	mov     r1, #0x14
	mov     r0, r5
	mul     r1, r2
	bl      malloc
	str     r0, [r4, #0x4]
	ldrh    r3, [r4, #0x8]
	mov     r2, #0x14
	mov     r1, #0x0
	mul     r2, r3
	blx     Call_FillMemWithValue
	mov     r0, #0x2
	strb    r0, [r4, #0xa]
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x8]
	strb    r0, [r4, #0xb]
	str     r5, [sp, #0x0]
	ldrb    r2, [r4, #0xb]
	ldr     r0, [r4, #0x0]
	ldr     r3, [sp, #0x20]
	bl      Function_222af94
	ldrb    r1, [r4, #0xb]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0xc] @ 0x222cd98, (=0x9c41)
	mov     r3, r5
	bl      Function_222b0a0
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222cd96


.align 2


.word 0x9c41 @ 0x222cd98
.thumb
Function_222cd9c: @ 222cd9c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222cdc8
	mov     r4, r6
.thumb
branch_222cdaa: @ 222cdaa :thumb
	ldr     r0, [r5, #0x4]
	add     r0, r0, r4
	bl      Function_222d07c
	cmp     r0, #0x0
	bne     branch_222cdbe
	ldr     r0, [r5, #0x4]
	add     r0, r0, r4
	bl      Function_222cecc
.thumb
branch_222cdbe: @ 222cdbe :thumb
	ldrh    r0, [r5, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x14
	cmp     r6, r0
	blt     branch_222cdaa
.thumb
branch_222cdc8: @ 222cdc8 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_222b0b8
	mov     r0, r5
	bl      Function_222ce24
	ldr     r0, [r5, #0x0]
	bl      Function_222af14
	ldr     r0, [r5, #0x4]
	bl      free
	mov     r0, r5
	bl      free
	pop     {r4-r6,pc}
@ 0x222cde8

.thumb
Function_222cde8: @ 222cde8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	bl      Function_222afe4
	cmp     r0, #0x0
	bne     branch_222ce0a
	str     r4, [sp, #0x0]
	ldrb    r2, [r5, #0xb]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	mov     r3, r7
	bl      Function_222af94
.thumb
branch_222ce0a: @ 222ce0a :thumb
	pop     {r3-r7,pc}
@ 0x222ce0c

.thumb
Function_222ce0c: @ 222ce0c :thumb
	ldr     r3, [pc, #0x4] @ 0x222ce14, (=0x222afd1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x222ce12


.align 2


.word 0x222afd1 @ 0x222ce14
.thumb
Function_222ce18: @ 222ce18 :thumb
	ldr     r3, [pc, #0x4] @ 0x222ce20, (=0x222afe5)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x222ce1e


.align 2


.word 0x222afe5 @ 0x222ce20
.thumb
Function_222ce24: @ 222ce24 :thumb
	ldr     r3, [pc, #0x4] @ 0x222ce2c, (=0x222aff9)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x222ce2a


.align 2


.word Function_222aff8+1 @ =0x222aff9, 0x222ce2c
.thumb
Function_222ce30: @ 222ce30 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldrb    r1, [r5, #0xb]
	mov     r3, r2
	ldr     r0, [r5, #0x0]
	mov     r2, r4
	bl      Function_222b02c
	pop     {r3-r5,pc}
@ 0x222ce44

.thumb
Function_222ce44: @ 222ce44 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_222d08c
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_222bf90
	strh    r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_222bf90
	strh    r0, [r4, #0xa]
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_222bf90
	strh    r0, [r4, #0xc]
	str     r5, [r4, #0x0]
	strb    r7, [r4, #0x12]
	mov     r0, #0x1
	strb    r0, [r4, #0x13]
	mov     r1, #0x0
	strh    r1, [r4, #0xe]
	mov     r0, r5
	strh    r1, [r4, #0x10]
	bl      Function_222bf90
	add     r1, sp, #0x4
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_222bf90
	add     r1, sp, #0x4
	strh    r0, [r1, #0x2]
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	ldrb    r1, [r4, #0x12]
	bl      Function_222d034
	add     r1, sp, #0x4
	strh    r0, [r1, #0x4]
	ldrb    r0, [r6, #0xa]
	strh    r0, [r1, #0x6]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_222bf90
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	ldr     r3, [sp, #0x0]
	add     r1, sp, #0x4
	bl      Function_222b0c0
	str     r0, [r4, #0x4]
	mov     r0, r4
	bl      Function_222cf14
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222cecc

.thumb
Function_222cecc: @ 222cecc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_222b210
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_222ceda: @ 222ceda :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_222ceda
	pop     {r4,pc}
@ 0x222cee4

.thumb
Function_222cee4: @ 222cee4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222cf10
	mov     r4, r6
.thumb
branch_222cef2: @ 222cef2 :thumb
	ldr     r0, [r5, #0x4]
	add     r0, r0, r4
	bl      Function_222d07c
	cmp     r0, #0x0
	bne     branch_222cf06
	ldr     r0, [r5, #0x4]
	add     r0, r0, r4
	bl      Function_222cf14
.thumb
branch_222cf06: @ 222cf06 :thumb
	ldrh    r0, [r5, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x14
	cmp     r6, r0
	blt     branch_222cef2
.thumb
branch_222cf10: @ 222cf10 :thumb
	pop     {r4-r6,pc}
@ 0x222cf12


.align 2, 0


.thumb
Function_222cf14: @ 222cf14 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldrb    r0, [r5, #0x13]
	cmp     r0, #0x0
	beq     branch_222cf9e
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	bl      Function_222bf90
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	bl      Function_222bf90
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x8
	bl      Function_222bf90
	lsl     r0, r0, #16
	asr     r1, r0, #16
	ldrh    r0, [r5, #0x8]
	cmp     r0, r6
	bne     branch_222cf50
	ldrh    r0, [r5, #0xa]
	cmp     r0, r4
	bne     branch_222cf50
	cmp     r1, #0x0
	bne     branch_222cf66
.thumb
branch_222cf50: @ 222cf50 :thumb
	strh    r6, [r5, #0x8]
	strh    r4, [r5, #0xa]
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	bl      Function_222d0c4
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	bl      Function_222d110
.thumb
branch_222cf66: @ 222cf66 :thumb
	add     r1, sp, #0x0
	mov     r0, r5
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_222d0e0
	add     r3, sp, #0x0
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r5, #0x4]
	bl      Function_222b238
	add     r1, sp, #0x0
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	ldrb    r1, [r5, #0x12]
	bl      Function_222d034
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [r5, #0x4]
	bl      Function_222b278
	ldr     r0, [r5, #0x4]
	bl      Function_222b33c
.thumb
branch_222cf9e: @ 222cf9e :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222cfa2


.align 2, 0


.thumb
Function_222cfa4: @ 222cfa4 :thumb
	strb    r1, [r0, #0x13]
	bx      lr
@ 0x222cfa8

.thumb
Function_222cfa8: @ 222cfa8 :thumb
	ldr     r3, [pc, #0x4] @ 0x222cfb0, (=0x222d111)
	mov     r1, #0x1
	ldrh    r2, [r0, #0xa]
	bx      r3
@ 0x222cfb0

.word 0x222d111 @ 0x222cfb0
.thumb
Function_222cfb4: @ 222cfb4 :thumb
	ldr     r3, [pc, #0x4] @ 0x222cfbc, (=0x222b33d)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222cfba


.align 2


.word 0x222b33d @ 0x222cfbc
.thumb
Function_222cfc0: @ 222cfc0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r1, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_222d0c4
	mov     r1, r0
	ldrh    r2, [r4, #0xa]
	mov     r0, r4
	bl      Function_222d110
	mov     r0, r4
	bl      Function_222cf14
	pop     {r4,pc}
@ 0x222cfde


.align 2, 0


.thumb
Function_222cfe0: @ 222cfe0 :thumb
	push    {r0-r3}
.thumb
Function_222cfe2: @ 222cfe2 :thumb
	push    {r3,lr}
	add     r3, sp, #0x8
	mov     r1, #0x4
	mov     r2, #0x6
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r0, #0x4]
	bl      Function_222b238
	pop     {r3}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222cffc

.thumb
Function_222cffc: @ 222cffc :thumb
	ldr     r3, [pc, #0x4] @ 0x222d004, (=0x222b2b1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222d002


.align 2


.word Function_222b2b0+1 @ =0x222b2b1, 0x222d004
.thumb
Function_222d008: @ 222d008 :thumb
	ldr     r3, [pc, #0x4] @ 0x222d010, (=0x222b295)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222d00e


.align 2


.word 0x222b295 @ 0x222d010
.thumb
Function_222d014: @ 222d014 :thumb
	ldr     r3, [pc, #0x4] @ 0x222d01c, (=0x222b285)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222d01a


.align 2


.word 0x222b285 @ 0x222d01c
.thumb
Function_222d020: @ 222d020 :thumb
	push    {r4,lr}
	mov     r2, r1
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_222d110
	ldr     r0, [r4, #0x4]
	bl      Function_222b33c
	pop     {r4,pc}
@ 0x222d034

.thumb
Function_222d034: @ 222d034 :thumb
	cmp     r1, #0x1
	bne     branch_222d040
	lsl     r1, r0, #1
	ldr     r0, [pc, #0xc] @ 0x222d048, (=0x9c40)
	sub     r0, r0, r1
	bx      lr
@ 0x222d040

.thumb
branch_222d040: @ 222d040 :thumb
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x8] @ 0x222d04c, (=0x9c41)
	sub     r0, r0, r1
	bx      lr
@ 0x222d048

.word 0x9c40 @ 0x222d048
.word 0x9c41 @ 0x222d04c
.thumb
Function_222d050: @ 222d050 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x4]
	bl      Function_222b234
	bl      Function_2021f48
	pop     {r3,pc}
@ 0x222d05e


.align 2, 0


.thumb
Function_222d060: @ 222d060 :thumb
	push    {r0-r3}
.thumb
Function_222d062: @ 222d062 :thumb
	push    {r3,lr}
	add     r3, sp, #0x8
	mov     r1, #0x4
	mov     r2, #0x6
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r0, #0x4]
	bl      Function_222b2e0
	pop     {r3}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x222d07c

.thumb
Function_222d07c: @ 222d07c :thumb
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_222d086
	mov     r0, #0x1
	bx      lr
@ 0x222d086

.thumb
branch_222d086: @ 222d086 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222d08a


.align 2, 0


.thumb
Function_222d08c: @ 222d08c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222d0ba
	mov     r4, r6
.thumb
branch_222d09a: @ 222d09a :thumb
	ldr     r0, [r5, #0x4]
	add     r0, r0, r4
	bl      Function_222d07c
	cmp     r0, #0x1
	bne     branch_222d0b0
	mov     r0, #0x14
	ldr     r1, [r5, #0x4]
	mul     r0, r6
	add     r0, r1, r0
	pop     {r4-r6,pc}
@ 0x222d0b0

.thumb
branch_222d0b0: @ 222d0b0 :thumb
	ldrh    r0, [r5, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x14
	cmp     r6, r0
	blt     branch_222d09a
.thumb
branch_222d0ba: @ 222d0ba :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222d0c2


.align 2, 0


.thumb
Function_222d0c4: @ 222d0c4 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_222b2bc
	cmp     r0, #0x2
	bne     branch_222d0d4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222d0d4

.thumb
branch_222d0d4: @ 222d0d4 :thumb
	ldr     r0, [pc, #0x4] @ 0x222d0dc, (=0x222dca8)
	ldrb    r0, [r0, r4]
	pop     {r4,pc}
@ 0x222d0da


.align 2


.word 0x222dca8 @ 0x222d0dc
.thumb
Function_222d0e0: @ 222d0e0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	mov     r4, r2
	bl      Function_222c0fc
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	strh    r0, [r5, #0x0]
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	strh    r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222d10e


.align 2, 0


.thumb
Function_222d110: @ 222d110 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	str     r2, [sp, #0x0]
	bl      Function_222b2d4
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	bl      Function_222b2c4
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldr     r0, [r5, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r1, r4
	bl      Function_222b308
	cmp     r6, r4
	beq     branch_222d15a
	ldr     r0, [pc, #0x20] @ 0x222d15c, (=0x222dc9c)
	ldrb    r0, [r0, r4]
	cmp     r0, #0x1
	bne     branch_222d14e
	ldrh    r0, [r5, #0x10]
	cmp     r0, r4
	bne     branch_222d14e
	ldrh    r1, [r5, #0xe]
	ldr     r0, [r5, #0x4]
	bl      Function_222b2c8
.thumb
branch_222d14e: @ 222d14e :thumb
	ldr     r0, [pc, #0xc] @ 0x222d15c, (=0x222dc9c)
	ldrb    r0, [r0, r6]
	cmp     r0, #0x1
	bne     branch_222d15a
	strh    r6, [r5, #0x10]
	strh    r7, [r5, #0xe]
.thumb
branch_222d15a: @ 222d15a :thumb
	pop     {r3-r7,pc}
@ 0x222d15c

.word 0x222dc9c @ 0x222d15c
.thumb
Function_222d160: @ 222d160 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, r1
	bl      Function_222c0fc
	add     r3, sp, #0x0
	strh    r0, [r3, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r3, #0x2]
	ldrh    r0, [r3, #0x0]
	mov     r1, #0x6
	mov     r2, #0x4
	strh    r0, [r3, #0x4]
	ldrh    r0, [r3, #0x2]
	strh    r0, [r3, #0x6]
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r0, r4
	sub     r1, #0x60
	sub     r2, #0x70
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_222d1a8
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222d19a


.align 2, 0


.thumb
Function_222d19c: @ 222d19c :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x222d1a8

.thumb
Function_222d1a8: @ 222d1a8 :thumb
	strh    r1, [r0, #0x0]
	strh    r2, [r0, #0x2]
	bx      lr
@ 0x222d1ae


.align 2, 0


.thumb
Function_222d1b0: @ 222d1b0 :thumb
	mov     r1, #0x0
	ldsh    r0, [r0, r1]
	bx      lr
@ 0x222d1b6


.align 2, 0


.thumb
Function_222d1b8: @ 222d1b8 :thumb
	mov     r1, #0x2
	ldsh    r0, [r0, r1]
	bx      lr
@ 0x222d1be


.align 2, 0


.thumb
Function_222d1c0: @ 222d1c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r7, r1
	mov     r0, r3
	mov     r1, #0x1c
	mov     r5, r2
	str     r3, [sp, #0x4]
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x1c
	mov     r0, #0x0
.thumb
branch_222d1dc: @ 222d1dc :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_222d1dc
	str     r6, [r4, #0x0]
	str     r7, [r4, #0x4]
	ldrb    r0, [r5, #0x0]
	mov     r2, r5
	str     r0, [r4, #0x10]
	ldrb    r1, [r5, #0x1]
	str     r1, [r4, #0x14]
	ldr     r0, [r4, #0x4]
	bl      Function_222d31c
	ldr     r0, [sp, #0x4]
	mov     r3, r4
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x8]
	ldrb    r1, [r5, #0x9]
	ldrb    r2, [r5, #0xa]
	add     r3, #0xc
	bl      Function_2006f6c
	str     r0, [r4, #0x8]
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222d212


.align 2, 0


.thumb
Function_222d214: @ 222d214 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x222d226


.align 2, 0


.thumb
Function_222d228: @ 222d228 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r6, r0
	mov     r0, r4
	bl      Function_222d1b0
	mov     r5, r0
	mov     r0, r4
	bl      Function_222d1b8
	mov     r4, r0
	ldr     r0, [r6, #0x10]
	cmp     r0, #0x0
	bne     branch_222d2a8
	cmp     r5, #0x0
	ble     branch_222d25c
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_222d26a
@ 0x222d25c

.thumb
branch_222d25c: @ 222d25c :thumb
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_222d26a: @ 222d26a :thumb
	mov     r7, r0
	cmp     r4, #0x0
	ble     branch_222d282
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_222d290
@ 0x222d282

.thumb
branch_222d282: @ 222d282 :thumb
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_222d290: @ 222d290 :thumb
	blx     _ffix
	str     r0, [sp, #0x0]
	mov     r0, r7
	blx     _ffix
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	ldr     r1, [sp, #0x0]
	bl      Function_200962c
	b       branch_222d30e
@ 0x222d2a8

.thumb
branch_222d2a8: @ 222d2a8 :thumb
	cmp     r5, #0x0
	ble     branch_222d2be
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_222d2cc
@ 0x222d2be

.thumb
branch_222d2be: @ 222d2be :thumb
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_222d2cc: @ 222d2cc :thumb
	mov     r7, r0
	cmp     r4, #0x0
	ble     branch_222d2e4
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_222d2f2
@ 0x222d2e4

.thumb
branch_222d2e4: @ 222d2e4 :thumb
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_222d2f2: @ 222d2f2 :thumb
	blx     _ffix
	str     r0, [sp, #0x4]
	mov     r0, r7
	blx     _ffix
	mov     r2, #0x3
	mov     r3, r0
	lsl     r2, r2, #18
	ldr     r0, [r6, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, r3, r2
	bl      Function_200964c
.thumb
branch_222d30e: @ 222d30e :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_222d378
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222d31c

.thumb
Function_222d31c: @ 222d31c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	ldr     r6, [pc, #0x50] @ 0x222d374, (=0x222dcb4)
	mov     r5, r0
	mov     r4, r1
	ldmia   r6!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldrb    r1, [r2, #0x2]
	add     r0, sp, #0x0
	strb    r1, [r0, #0x11]
	ldrb    r1, [r2, #0x3]
	strb    r1, [r0, #0x12]
	ldrb    r1, [r2, #0x4]
	strb    r1, [r0, #0x13]
	ldrb    r1, [r2, #0x5]
	strb    r1, [r0, #0x14]
	ldrb    r1, [r2, #0x6]
	strb    r1, [r0, #0x15]
	mov     r1, #0x0
	strb    r1, [r0, #0x16]
	ldrb    r0, [r2, #0x7]
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	str     r0, [sp, #0x18]
	mov     r0, r5
	bl      Function_2019044
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      Function_20183c4
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x222d372


.align 2


.word 0x222dcb4 @ 0x222d374
.thumb
Function_222d378: @ 222d378 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	lsl     r0, r0, #13
	asr     r3, r0, #16
	asr     r0, r2, #2
	lsr     r0, r0, #29
	add     r0, r2, r0
	lsr     r4, r1, #31
	lsl     r6, r1, #29
	sub     r6, r6, r4
	mov     r1, #0x1d
	ror     r6, r1
	add     r4, r4, r6
	lsl     r4, r4, #16
	asr     r6, r4, #16
	lsr     r4, r2, #31
	lsl     r2, r2, #29
	sub     r2, r2, r4
	ror     r2, r1
	add     r1, r4, r2
	lsl     r1, r1, #16
	asr     r4, r1, #16
	lsl     r0, r0, #13
	ldrh    r1, [r5, #0x18]
	asr     r0, r0, #16
	cmp     r3, r1
	bne     branch_222d3bc
	ldrh    r1, [r5, #0x1a]
	cmp     r0, r1
	beq     branch_222d3e4
.thumb
branch_222d3bc: @ 222d3bc :thumb
	strh    r3, [r5, #0x18]
	strh    r0, [r5, #0x1a]
	neg     r0, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	neg     r3, r3
	lsl     r3, r3, #16
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x14]
	ldr     r2, [r5, #0xc]
	asr     r3, r3, #16
	bl      Function_222d408
	ldr     r1, [r5, #0x14]
	ldr     r0, [r5, #0x4]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_201c3c0
.thumb
branch_222d3e4: @ 222d3e4 :thumb
	ldr     r1, [r5, #0x14]
	ldr     r0, [r5, #0x4]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_201c63c
	ldr     r1, [r5, #0x14]
	ldr     r0, [r5, #0x4]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x3
	mov     r3, r4
	bl      Function_201c63c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222d408

.thumb
Function_222d408: @ 222d408 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	str     r0, [sp, #0x1c]
	mov     r0, r2
	ldrh    r0, [r0, #0x0]
	ldr     r4, [sp, #0x50]
	mov     r5, r3
	lsl     r0, r0, #13
	asr     r0, r0, #16
	str     r0, [sp, #0x34]
	mov     r0, r2
	ldrh    r0, [r0, #0x2]
	str     r1, [sp, #0x20]
	str     r2, [sp, #0x24]
	lsl     r0, r0, #13
	asr     r0, r0, #16
	str     r0, [sp, #0x30]
	cmp     r5, #0x0
	bge     branch_222d438
	neg     r0, r5
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x2c]
	b       branch_222d43c
@ 0x222d438

.thumb
branch_222d438: @ 222d438 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
.thumb
branch_222d43c: @ 222d43c :thumb
	cmp     r4, #0x0
	bge     branch_222d44a
	neg     r0, r4
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x28]
	b       branch_222d44e
@ 0x222d44a

.thumb
branch_222d44a: @ 222d44a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x28]
.thumb
branch_222d44e: @ 222d44e :thumb
	cmp     r5, #0x0
	bgt     branch_222d454
	mov     r5, #0x0
.thumb
branch_222d454: @ 222d454 :thumb
	cmp     r4, #0x0
	bgt     branch_222d45a
	mov     r4, #0x0
.thumb
branch_222d45a: @ 222d45a :thumb
	mov     r0, #0x21
	sub     r0, r0, r5
	lsl     r0, r0, #16
	asr     r7, r0, #16
	mov     r0, #0x19
	sub     r0, r0, r4
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldr     r0, [sp, #0x2c]
	add     r1, r0, r7
	ldr     r0, [sp, #0x34]
	cmp     r0, r1
	bge     branch_222d47c
	sub     r0, r1, r0
	sub     r0, r7, r0
	lsl     r0, r0, #16
	asr     r7, r0, #16
.thumb
branch_222d47c: @ 222d47c :thumb
	ldr     r0, [sp, #0x28]
	add     r1, r0, r6
	ldr     r0, [sp, #0x30]
	cmp     r0, r1
	bge     branch_222d48e
	sub     r0, r1, r0
	sub     r0, r6, r0
	lsl     r0, r0, #16
	asr     r6, r0, #16
.thumb
branch_222d48e: @ 222d48e :thumb
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x21
	str     r0, [sp, #0x4]
	mov     r0, #0x19
	ldr     r1, [sp, #0x20]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	lsl     r1, r1, #24
	ldr     r0, [sp, #0x1c]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2019cb8
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x20]
	add     r0, #0xc
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x2c]
	lsl     r1, r1, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x28]
	lsl     r2, r5, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x34]
	lsl     r3, r4, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x30]
	lsr     r1, r1, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_222d4f8
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x222d4f8

.thumb
Function_222d4f8: @ 222d4f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	str     r0, [sp, #0x1c]
	str     r1, [sp, #0x20]
	ldr     r0, [sp, #0x70]
	str     r3, [sp, #0x24]
	str     r0, [sp, #0x70]
	ldr     r0, [sp, #0x78]
	mov     r4, r2
	str     r0, [sp, #0x78]
	ldr     r0, [sp, #0x7c]
	str     r0, [sp, #0x7c]
	ldr     r0, [sp, #0x80]
	str     r0, [sp, #0x80]
	ldr     r0, [sp, #0x7c]
	ldr     r1, [sp, #0x80]
	bl      Function_222d688
	str     r0, [sp, #0x40]
	cmp     r0, #0x0
	add     r1, sp, #0x58
	bne     branch_222d550
	ldrb    r0, [r1, #0x10]
	mov     r2, r4
	str     r0, [sp, #0x0]
	ldrb    r0, [r1, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x70]
	str     r0, [sp, #0x8]
	ldrb    r0, [r1, #0x1c]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x78]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x7c]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x80]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x20]
	ldr     r3, [sp, #0x24]
	bl      Function_20198e8
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x222d550

.thumb
branch_222d550: @ 222d550 :thumb
	mov     r0, #0x14
	ldsb    r0, [r1, r0]
	str     r0, [sp, #0x48]
	cmp     r0, #0x0
	bgt     branch_222d55c
	b       branch_222d682
@ 0x222d55c

.thumb
branch_222d55c: @ 222d55c :thumb
	mov     r0, #0x10
	ldsb    r0, [r1, r0]
	str     r0, [sp, #0x3c]
	mov     r0, #0x1c
	ldsb    r0, [r1, r0]
	str     r0, [sp, #0x38]
	lsl     r0, r4, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x34]
.thumb
branch_222d56e: @ 222d56e :thumb
	ldr     r0, [sp, #0x78]
	lsr     r2, r0, #31
	lsl     r1, r0, #27
	sub     r1, r1, r2
	mov     r0, #0x1b
	ror     r1, r0
	add     r0, r2, r1
	ldr     r1, [sp, #0x48]
	add     r1, r0, r1
	cmp     r1, #0x20
	bgt     branch_222d58e
	ldr     r1, [sp, #0x48]
	str     r1, [sp, #0x44]
	mov     r1, #0x0
	str     r1, [sp, #0x48]
	b       branch_222d5a2
@ 0x222d58e

.thumb
branch_222d58e: @ 222d58e :thumb
	mov     r1, #0x20
	sub     r1, r1, r0
	lsl     r1, r1, #24
	asr     r1, r1, #24
	str     r1, [sp, #0x44]
	ldr     r2, [sp, #0x48]
	sub     r1, r2, r1
	lsl     r1, r1, #24
	asr     r1, r1, #24
	str     r1, [sp, #0x48]
.thumb
branch_222d5a2: @ 222d5a2 :thumb
	ldr     r1, [sp, #0x78]
	ldr     r4, [sp, #0x3c]
	lsl     r1, r1, #19
	asr     r2, r1, #24
	mov     r1, r4
	ldr     r5, [sp, #0x38]
	ldr     r7, [sp, #0x34]
	cmp     r1, #0x0
	ble     branch_222d662
	lsl     r1, r2, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x30]
	ldr     r1, [sp, #0x44]
	lsl     r0, r0, #24
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsr     r0, r0, #24
	str     r1, [sp, #0x2c]
	str     r0, [sp, #0x4c]
.thumb
branch_222d5c8: @ 222d5c8 :thumb
	lsr     r2, r5, #31
	lsl     r1, r5, #27
	sub     r1, r1, r2
	mov     r0, #0x1b
	ror     r1, r0
	add     r0, r2, r1
	str     r0, [sp, #0x28]
	add     r0, r0, r4
	cmp     r0, #0x20
	bgt     branch_222d5e2
	mov     r6, r4
	mov     r4, #0x0
	b       branch_222d5f2
@ 0x222d5e2

.thumb
branch_222d5e2: @ 222d5e2 :thumb
	ldr     r0, [sp, #0x28]
	mov     r1, #0x20
	sub     r0, r1, r0
	lsl     r0, r0, #24
	asr     r6, r0, #24
	sub     r0, r4, r6
	lsl     r0, r0, #24
	asr     r4, r0, #24
.thumb
branch_222d5f2: @ 222d5f2 :thumb
	ldr     r0, [sp, #0x7c]
	asr     r1, r5, #4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x80]
	lsr     r1, r1, #27
	add     r1, r5, r1
	str     r0, [sp, #0x4]
	add     r0, sp, #0x50
	str     r0, [sp, #0x8]
	lsl     r1, r1, #19
	asr     r1, r1, #24
	lsl     r1, r1, #24
	ldr     r0, [sp, #0x70]
	ldr     r2, [sp, #0x30]
	ldr     r3, [sp, #0x40]
	lsr     r1, r1, #24
	bl      Function_222d6bc
	lsl     r1, r6, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x2c]
	lsl     r2, r7, #24
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x28]
	add     r1, sp, #0x50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4c]
	lsr     r2, r2, #24
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x20]
	ldr     r3, [sp, #0x24]
	bl      Function_20198e8
	add     r0, r5, r6
	lsl     r0, r0, #24
	asr     r5, r0, #24
	add     r0, r7, r6
	lsl     r0, r0, #24
	asr     r7, r0, #24
	cmp     r4, #0x0
	bgt     branch_222d5c8
.thumb
branch_222d662: @ 222d662 :thumb
	ldr     r1, [sp, #0x78]
	ldr     r0, [sp, #0x44]
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x78]
	ldr     r1, [sp, #0x24]
	ldr     r0, [sp, #0x44]
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x48]
	cmp     r0, #0x0
	ble     branch_222d682
	b       branch_222d56e
@ 0x222d682

.thumb
branch_222d682: @ 222d682 :thumb
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x222d686


.align 2, 0


.thumb
Function_222d688: @ 222d688 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x40
	bls     branch_222d696
	bl      ErrorHandling
.thumb
branch_222d696: @ 222d696 :thumb
	cmp     r4, #0x40
	bls     branch_222d69e
	bl      ErrorHandling
.thumb
branch_222d69e: @ 222d69e :thumb
	cmp     r5, #0x20
	bhi     branch_222d6ae
	cmp     r4, #0x20
	bhi     branch_222d6aa
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222d6aa

.thumb
branch_222d6aa: @ 222d6aa :thumb
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x222d6ae

.thumb
branch_222d6ae: @ 222d6ae :thumb
	cmp     r4, #0x20
	bhi     branch_222d6b6
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222d6b6

.thumb
branch_222d6b6: @ 222d6b6 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x222d6ba


.align 2, 0


.thumb
Function_222d6bc: @ 222d6bc :thumb
	push    {r4-r6,lr}
	mov     r5, r3
	mov     r6, r2
	ldr     r4, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	ldr     r2, [sp, #0x18]
	cmp     r5, #0x3
	bhi     branch_222d770
	add     r5, r5, r5
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
@ 0x222d6d8

Jumppoints_222d6d8:
.hword branch_222d6e0 - Jumppoints_222d6d8 - 2
.hword branch_222d6e6 - Jumppoints_222d6d8 - 2
.hword branch_222d704 - Jumppoints_222d6d8 - 2
.hword branch_222d722 - Jumppoints_222d6d8 - 2
.thumb
branch_222d6e0: @ 222d6e0 :thumb
	strh    r4, [r2, #0x0]
	strh    r3, [r2, #0x2]
	pop     {r4-r6,pc}
@ 0x222d6e6

.thumb
branch_222d6e6: @ 222d6e6 :thumb
	add     r5, r1, #0x1
	lsl     r5, r5, #5
	cmp     r5, r4
	bgt     branch_222d6f2
	mov     r4, #0x20
	b       branch_222d6f6
@ 0x222d6f2

.thumb
branch_222d6f2: @ 222d6f2 :thumb
	lsl     r5, r1, #5
	sub     r4, r4, r5
.thumb
branch_222d6f6: @ 222d6f6 :thumb
	strh    r4, [r2, #0x0]
	strh    r3, [r2, #0x2]
	lsl     r2, r3, #22
	asr     r2, r2, #16
	mul     r2, r1
	add     r0, r0, r2
	pop     {r4-r6,pc}
@ 0x222d704

.thumb
branch_222d704: @ 222d704 :thumb
	add     r1, r6, #0x1
	lsl     r1, r1, #5
	strh    r4, [r2, #0x0]
	cmp     r1, r3
	bgt     branch_222d712
	mov     r1, #0x20
	b       branch_222d716
@ 0x222d712

.thumb
branch_222d712: @ 222d712 :thumb
	lsl     r1, r6, #5
	sub     r1, r3, r1
.thumb
branch_222d716: @ 222d716 :thumb
	strh    r1, [r2, #0x2]
	lsl     r1, r4, #22
	asr     r1, r1, #16
	mul     r1, r6
	add     r0, r0, r1
	pop     {r4-r6,pc}
@ 0x222d722

.thumb
branch_222d722: @ 222d722 :thumb
	add     r5, r1, #0x1
	lsl     r5, r5, #5
	cmp     r5, r4
	bgt     branch_222d72e
	mov     r5, #0x20
	b       branch_222d732
@ 0x222d72e

.thumb
branch_222d72e: @ 222d72e :thumb
	lsl     r5, r1, #5
	sub     r5, r4, r5
.thumb
branch_222d732: @ 222d732 :thumb
	strh    r5, [r2, #0x0]
	add     r5, r6, #0x1
	lsl     r5, r5, #5
	cmp     r5, r3
	bgt     branch_222d740
	mov     r5, #0x20
	b       branch_222d744
@ 0x222d740

.thumb
branch_222d740: @ 222d740 :thumb
	lsl     r5, r6, #5
	sub     r5, r3, r5
.thumb
branch_222d744: @ 222d744 :thumb
	strh    r5, [r2, #0x2]
	cmp     r6, #0x0
	bne     branch_222d75c
	mov     r2, #0x0
	cmp     r1, #0x0
	beq     branch_222d76c
	mov     r1, #0x2
	lsl     r1, r1, #10
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	b       branch_222d76c
@ 0x222d75c

.thumb
branch_222d75c: @ 222d75c :thumb
	lsl     r2, r4, #22
	lsr     r2, r2, #16
	cmp     r1, #0x0
	beq     branch_222d76c
	lsl     r1, r3, #6
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r2, r1, #16
.thumb
branch_222d76c: @ 222d76c :thumb
	add     r0, r0, r2
	pop     {r4-r6,pc}
@ 0x222d770

.thumb
branch_222d770: @ 222d770 :thumb
	bl      ErrorHandling
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222d77c

.thumb
Function_222d77c: @ 222d77c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0xc
	bl      malloc
	mov     r4, r0
	bne     branch_222d792
	bl      ErrorHandling
.thumb
branch_222d792: @ 222d792 :thumb
	add     r1, r5, #0x1
	str     r1, [r4, #0x4]
	mov     r0, r6
	lsl     r1, r1, #3
	bl      malloc
	str     r0, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	mov     r1, #0x0
	lsl     r2, r2, #3
	blx     Call_FillMemWithValue
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	strh    r0, [r4, #0xa]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222d7b4

.thumb
Function_222d7b4: @ 222d7b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x222d7c6


.align 2, 0


.thumb
Function_222d7c8: @ 222d7c8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldrh    r0, [r5, #0xa]
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	ldrh    r0, [r5, #0x8]
	cmp     r0, r1
	bne     branch_222d7e8
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_222d810
.thumb
branch_222d7e8: @ 222d7e8 :thumb
	ldrh    r0, [r5, #0xa]
	ldr     r3, [r5, #0x0]
	lsl     r2, r0, #3
	ldrh    r0, [r4, #0x0]
	add     r1, r3, r2
	strh    r0, [r3, r2]
	ldrh    r0, [r4, #0x2]
	strh    r0, [r1, #0x2]
	ldrh    r0, [r4, #0x4]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r4, #0x6]
	strh    r0, [r1, #0x6]
	ldrh    r0, [r5, #0xa]
	ldr     r1, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	strh    r1, [r5, #0xa]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222d810

.thumb
Function_222d810: @ 222d810 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r2, [r4, #0x8]
	ldrh    r0, [r4, #0xa]
	cmp     r0, r2
	bne     branch_222d820
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222d820

.thumb
branch_222d820: @ 222d820 :thumb
	ldr     r3, [r4, #0x0]
	lsl     r0, r2, #3
	add     r2, r3, r0
	ldrh    r0, [r3, r0]
	strh    r0, [r1, #0x0]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r1, #0x2]
	ldrh    r0, [r2, #0x4]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r2, #0x6]
	strh    r0, [r1, #0x6]
	ldrh    r0, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	strh    r1, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222d846


.align 2, 0


.thumb
Function_222d848: @ 222d848 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0xc
	bl      malloc
	mov     r4, r0
	bne     branch_222d85e
	bl      ErrorHandling
.thumb
branch_222d85e: @ 222d85e :thumb
	add     r1, r5, #0x1
	str     r1, [r4, #0x4]
	mov     r0, r6
	lsl     r1, r1, #2
	bl      malloc
	str     r0, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	strh    r0, [r4, #0xa]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222d880

.thumb
Function_222d880: @ 222d880 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x222d892


.align 2, 0


.thumb
Function_222d894: @ 222d894 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0xa]
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	ldrh    r0, [r5, #0x8]
	cmp     r0, r1
	bne     branch_222d8b2
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_222d8d0
.thumb
branch_222d8b2: @ 222d8b2 :thumb
	ldrh    r0, [r5, #0xa]
	ldr     r3, [r5, #0x0]
	lsl     r2, r0, #2
	ldrh    r0, [r4, #0x0]
	add     r1, r3, r2
	strh    r0, [r3, r2]
	ldrh    r0, [r4, #0x2]
	strh    r0, [r1, #0x2]
	ldrh    r0, [r5, #0xa]
	ldr     r1, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	strh    r1, [r5, #0xa]
	pop     {r3-r5,pc}
@ 0x222d8d0

.thumb
Function_222d8d0: @ 222d8d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r2, [r4, #0x8]
	ldrh    r0, [r4, #0xa]
	cmp     r0, r2
	bne     branch_222d8e0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222d8e0

.thumb
branch_222d8e0: @ 222d8e0 :thumb
	ldr     r3, [r4, #0x0]
	lsl     r0, r2, #2
	add     r2, r3, r0
	ldrh    r0, [r3, r0]
	strh    r0, [r1, #0x0]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r1, #0x2]
	ldrh    r0, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	strh    r1, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222d8fe


.align 2, 0
Unknown_222d900: @ 0x222d900
.incbin "./baserom/overlay/overlay_0063.bin", 0x2aa0, 0x222d920 - 0x222d900


.word Function_222bb50+1 @ =0x222bb51, 0x222d920
.word Function_222bb5c+1 @ =0x222bb5d, 0x222d924
.word Function_222bb6c+1 @ =0x222bb6d, 0x222d928
.word Function_222bb7c+1 @ =0x222bb7d, 0x222d92c
.word Function_222bb90+1 @ =0x222bb91, 0x222d930
.word Function_222bba0+1 @ =0x222bba1, 0x222d934
.word Function_222bbb0+1 @ =0x222bbb1, 0x222d938
.word Function_222bbc0+1 @ =0x222bbc1, 0x222d93c
.word Function_222bbd0+1 @ =0x222bbd1, 0x222d940
.word 0x0 @ 0x222d944
.word 0x0 @ 0x222d948
.word Function_222bbe0+1 @ =0x222bbe1, 0x222d94c
.word Function_222bbf0+1 @ =0x222bbf1, 0x222d950
.word Function_222bc00+1 @ =0x222bc01, 0x222d954
.word Function_222bc20+1 @ =0x222bc21, 0x222d958
.word Function_222bc30+1 @ =0x222bc31, 0x222d95c
.word Function_222bc40+1 @ =0x222bc41, 0x222d960
.word Function_222bc50+1 @ =0x222bc51, 0x222d964
.word Function_222bc60+1 @ =0x222bc61, 0x222d968

.incbin "./baserom/overlay/overlay_0063.bin", 0x2b0c, 0x222dc0c - 0x222d96c


.word Function_222c3ac+1 @ =0x222c3ad, 0x222dc0c
.word Function_222c404+1 @ =0x222c405, 0x222dc10
.word Function_222c470+1 @ =0x222c471, 0x222dc14
.word Function_222c508+1 @ =0x222c509, 0x222dc18
.word Function_222c5a0+1 @ =0x222c5a1, 0x222dc1c
.word Function_222c5f8+1 @ =0x222c5f9, 0x222dc20
.word Function_222c664+1 @ =0x222c665, 0x222dc24
.word Function_222c6fc+1 @ =0x222c6fd, 0x222dc28
.word Function_222c794+1 @ =0x222c795, 0x222dc2c
.word Function_222c800+1 @ =0x222c801, 0x222dc30
.word Function_222c86c+1 @ =0x222c86d, 0x222dc34
.word Function_222c8d8+1 @ =0x222c8d9, 0x222dc38
.word Function_222c944+1 @ =0x222c945, 0x222dc3c
.word Function_222c948+1 @ =0x222c949, 0x222dc40
.word Function_222c950+1 @ =0x222c951, 0x222dc44
.word Function_222c990+1 @ =0x222c991, 0x222dc48
.word Function_222c9d0+1 @ =0x222c9d1, 0x222dc4c
.word Function_222c9d4+1 @ =0x222c9d5, 0x222dc50
.word Function_222c950+1 @ =0x222c951, 0x222dc54
.word Function_222c950+1 @ =0x222c951, 0x222dc58
.word Function_222c9dc+1 @ =0x222c9dd, 0x222dc5c
.word Function_222c9dc+1 @ =0x222c9dd, 0x222dc60
.word Function_222c9dc+1 @ =0x222c9dd, 0x222dc64
.word Function_222c9dc+1 @ =0x222c9dd, 0x222dc68
.word Function_222cae4+1 @ =0x222cae5, 0x222dc6c
.word Function_222cb10+1 @ =0x222cb11, 0x222dc70
.word Function_222cb4c+1 @ =0x222cb4d, 0x222dc74
.word Function_222cbc0+1 @ =0x222cbc1, 0x222dc78
.word Function_222cbd0+1 @ =0x222cbd1, 0x222dc7c
.word Function_222cbf8+1 @ =0x222cbf9, 0x222dc80
.word Function_222cc04+1 @ =0x222cc05, 0x222dc84
.word Function_222cb4c+1 @ =0x222cb4d, 0x222dc88
.word Function_222cc14+1 @ =0x222cc15, 0x222dc8c
.word Function_222cc14+1 @ =0x222cc15, 0x222dc90
.word Function_222cc14+1 @ =0x222cc15, 0x222dc94
.word Function_222cc14+1 @ =0x222cc15, 0x222dc98
@ 0x222dc9c


.incbin "./baserom/overlay/overlay_0063.bin", 0x2e3c, 0x222dce0 - 0x222dc9c


@end 0x222dce0


