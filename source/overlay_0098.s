

.section .iwram98, "ax"


.thumb
Function_2246c20: @ 2246c20 :thumb
	push    {r3-r5,lr}
	mov     r2, #0xa
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x6c
	lsl     r2, r2, #14
	bl      0x2017fc8
	mov     r2, #0x3
	mov     r0, #0x0
	mov     r1, #0x5b
	lsl     r2, r2, #8
	bl      0x2017fc8
	mov     r1, #0x47
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x6c
	bl      0x200681c
	mov     r2, #0x47
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r5
	bl      0x2006840
	ldr     r0, [r0, #0x8]
	str     r0, [r4, #0x4]
	bl      0x2025e44
	str     r0, [r4, #0x8]
	mov     r0, #0x64
	mov     r1, #0x6c
	bl      Function_2023790
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x64
	mov     r1, #0x6c
	bl      Function_2023790
	mov     r1, #0x45
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x10] @ 0x2246c94, (=0x497)
	mov     r0, #0x11
	mov     r2, #0x1
	bl      0x2004550
	mov     r0, #0x0
	add     r4, #0x88
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2246c94

.word 0x497 @ 0x2246c94
.thumb
Function_2246c98: @ 2246c98 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x1
	bne     branch_2246cbc
	blx     0x21d8018
	bl      0x223b15c
	blx     0x21d7eac
	mov     r1, #0x3
	sub     r0, r1, r0
	bl      0x20397b0
.thumb
branch_2246cbc: @ 2246cbc :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_2246d9e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2246cce

Jumppoints_2246cce:
.hword branch_2246cd8 - Jumppoints_2246cce - 2
.hword branch_2246ce4 - Jumppoints_2246cce - 2
.hword branch_2246d04 - Jumppoints_2246cce - 2
.hword branch_2246d42 - Jumppoints_2246cce - 2
.hword branch_2246d9a - Jumppoints_2246cce - 2
.thumb
branch_2246cd8: @ 2246cd8 :thumb
	mov     r0, r4
	bl      Function_2246e08
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2246d9e
@ 0x2246ce4

.thumb
branch_2246ce4: @ 2246ce4 :thumb
	bl      0x20334a4
	cmp     r0, #0x0
	beq     branch_2246d9e
	ldr     r1, [r4, #0x10]
	ldr     r0, [pc, #0xb4] @ 0x2246da4, (=0x2249e20)
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x2246da8, (=0x2246ead)
	ldr     r1, [pc, #0xb4] @ 0x2246dac, (=0x2246ed5)
	blx     0x21d776c
	mov     r0, #0x1
	str     r0, [r4, #0x7c]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_2246d9e
@ 0x2246d04

.thumb
branch_2246d04: @ 2246d04 :thumb
	mov     r1, r4
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	lsl     r2, r1, #4
	ldr     r1, [pc, #0xa0] @ 0x2246db0, (=0x2249b4c)
	ldr     r1, [r1, r2]
	blx     r1
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	lsl     r2, r0, #4
	ldr     r0, [pc, #0x94] @ 0x2246db4, (=0x2249b54)
	ldr     r0, [r0, r2]
	mov     r2, #0x6c
	bl      0x20067e8
	str     r0, [r4, #0x0]
	mov     r0, r4
	add     r0, #0x88
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, #0x6
	add     r4, #0x88
	str     r0, [r4, #0x0]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_2246d9e
@ 0x2246d42

.thumb
branch_2246d42: @ 2246d42 :thumb
	ldr     r0, [r4, #0x0]
	bl      0x2006844
	cmp     r0, #0x1
	bne     branch_2246d9e
	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	lsl     r2, r1, #4
	ldr     r1, [pc, #0x60] @ 0x2246db8, (=0x2249b50)
	ldr     r1, [r1, r2]
	blx     r1
	ldr     r0, [r4, #0x0]
	bl      0x2006814
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x6
	bne     branch_2246d72
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_2246d9e
@ 0x2246d72

.thumb
branch_2246d72: @ 2246d72 :thumb
	lsl     r1, r0, #4
	ldr     r0, [pc, #0x44] @ 0x2246dbc, (=0x2249b58)
	ldr     r0, [r0, r1]
	cmp     r0, #0x1
	bne     branch_2246d88
	mov     r0, r4
	bl      Function_2246e54
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_2246d9e
@ 0x2246d88

.thumb
branch_2246d88: @ 2246d88 :thumb
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x1
	bne     branch_2246d94
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_2246d9e
@ 0x2246d94

.thumb
branch_2246d94: @ 2246d94 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_2246d9e
@ 0x2246d9a

.thumb
branch_2246d9a: @ 2246d9a :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2246d9e

.thumb
branch_2246d9e: @ 2246d9e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246da2


.align 2


.word 0x2249e20 @ 0x2246da4
.word 0x2246ead @ 0x2246da8
.word 0x2246ed5 @ 0x2246dac
.word 0x2249b4c @ 0x2246db0
.word 0x2249b54 @ 0x2246db4
.word 0x2249b50 @ 0x2246db8
.word 0x2249b58 @ 0x2246dbc
.thumb
Function_2246dc0: @ 2246dc0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	bl      Function_2246e54
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x6c
	bl      0x201807c
	mov     r0, #0x5b
	bl      0x201807c
	ldr     r0, [pc, #0x8] @ 0x2246e00, (=0x4d)
	ldr     r1, [pc, #0xc] @ 0x2246e04, (=0x21d742c)
	bl      0x2000ec4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2246e00

.word 0x4d @ 0x2246e00
.word 0x21d742c @ 0x2246e04
.thumb
Function_2246e08: @ 2246e08 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x0
	bne     branch_2246e48
	ldr     r0, [pc, #0x38] @ 0x2246e4c, (=0x5e)
	mov     r1, #0x2
	bl      LoadOverlay
	ldr     r1, [pc, #0x34] @ 0x2246e50, (=0x20020)
	mov     r0, #0x6c
	bl      malloc_maybe
	str     r0, [r4, #0xc]
	add     r0, #0x1f
	mov     r1, #0x1f
	bic     r0, r1
	mov     r1, #0x2
	lsl     r1, r1, #16
	mov     r2, #0x0
	blx     0x20a5404
	str     r0, [r4, #0x10]
	bl      0x2099550
	bl      0x20995b4
	bl      Function_2033478
	mov     r0, #0x4
	bl      0x2017b8c
.thumb
branch_2246e48: @ 2246e48 :thumb
	pop     {r4,pc}
@ 0x2246e4a


.align 2


.word 0x5e @ 0x2246e4c
.word 0x20020 @ 0x2246e50
.thumb
Function_2246e54: @ 2246e54 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x1
	bne     branch_2246e80
	ldr     r0, [r4, #0x10]
	blx     0x20a543c
	ldr     r0, [r4, #0xc]
	bl      free
	bl      0x20995c4
	bl      0x2099560
	bl      0x20334cc
	ldr     r0, [pc, #0xc] @ 0x2246e84, (=0x5e)
	bl      0x2006514
	mov     r0, #0x0
	str     r0, [r4, #0x7c]
.thumb
branch_2246e80: @ 2246e80 :thumb
	pop     {r4,pc}
@ 0x2246e82


.align 2


.word 0x5e @ 0x2246e84
.thumb
Function_2246e88: @ 2246e88 :thumb
	mov     r3, r0
	add     r3, #0x88
	str     r1, [r3, #0x0]
	add     r0, #0x8c
	str     r2, [r0, #0x0]
	bx      lr
@ 0x2246e94

.thumb
Function_2246e94: @ 2246e94 :thumb
	mov     r1, #0x6
	add     r0, #0x88
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2246e9c

.thumb
Function_2246e9c: @ 2246e9c :thumb
	add     r0, #0x7a
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2246ea2


.align 2, 0


.thumb
Function_2246ea4: @ 2246ea4 :thumb
	add     r0, #0x7a
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x2246eaa


.align 2, 0


.thumb
Function_2246eac: @ 2246eac :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	blx     OS_DisableInterrupts
	mov     r6, r0
	ldr     r0, [pc, #0x14] @ 0x2246ed0, (=0x2249e20)
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	mov     r2, r4
	blx     0x20a5448
	mov     r4, r0
	mov     r0, r6
	blx     OS_RestoreInterrupts
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2246ed0

.word 0x2249e20 @ 0x2246ed0
.thumb
Function_2246ed4: @ 2246ed4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	beq     branch_2246ef0
	blx     OS_DisableInterrupts
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x2246ef4, (=0x2249e20)
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	blx     0x20a55d8
	mov     r0, r4
	blx     OS_RestoreInterrupts
.thumb
branch_2246ef0: @ 2246ef0 :thumb
	pop     {r3-r5,pc}
@ 0x2246ef2


.align 2


.word 0x2249e20 @ 0x2246ef4
.thumb
Function_2246ef8: @ 2246ef8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6c
	mov     r1, #0x64
	bl      malloc_maybe
	mov     r4, r0
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, #0x6c
	bl      Function_22499c8
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      0x2030d38
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x2246f24

.thumb
Function_2246f24: @ 2246f24 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, r4
	add     r2, #0x78
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x2030d5c
	mov     r2, #0x42
	lsl     r2, r2, #2
	ldr     r0, [r4, #0x4]
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	bl      0x2030d5c
	pop     {r4,pc}
@ 0x2246f46


.align 2, 0


.thumb
Function_2246f48: @ 2246f48 :thumb
	mov     r2, #0x41
	mov     r3, r0
	lsl     r2, r2, #2
	ldr     r0, [r3, #0x4]
	ldr     r2, [r3, r2]
	ldr     r3, [pc, #0x4] @ 0x2246f58, (=0x2030d5d)
	mov     r1, #0x3
	bx      r3
@ 0x2246f58

.word 0x2030d5d @ 0x2246f58
.thumb
Function_2246f5c: @ 2246f5c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x98
	bl      0x2030e48
	mov     r1, r0
	mov     r0, r4
	bl      Function_2246f94
	pop     {r4,pc}
@ 0x2246f74

.thumb
Function_2246f74: @ 2246f74 :thumb
	mov     r1, r0
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldr     r3, [pc, #0x4] @ 0x2246f84, (=0x22499c9)
	add     r1, #0xbc
	mov     r2, #0x6c
	bx      r3
@ 0x2246f84

.word 0x22499c9 @ 0x2246f84
.thumb
Function_2246f88: @ 2246f88 :thumb
	mov     r1, #0x42
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	add     r0, #0xfa
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x2246f94

.thumb
Function_2246f94: @ 2246f94 :thumb
	add     r0, #0x78
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x2246f9a


.align 2, 0


.thumb
Function_2246f9c: @ 2246f9c :thumb
	mov     r1, #0x42
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2246fa4

.thumb
Function_2246fa4: @ 2246fa4 :thumb
	mov     r1, #0x41
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2246fac

.thumb
Function_2246fac: @ 2246fac :thumb
	mov     r2, #0x43
	lsl     r2, r2, #2
	strb    r1, [r0, r2]
	bx      lr
@ 0x2246fb4

.thumb
Function_2246fb4: @ 2246fb4 :thumb
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x2246fbc

.thumb
Function_2246fbc: @ 2246fbc :thumb
	bx      lr
@ 0x2246fbe


.align 2, 0


.thumb
Function_2246fc0: @ 2246fc0 :thumb
	bx      lr
@ 0x2246fc2


.align 2, 0


.thumb
Function_2246fc4: @ 2246fc4 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x4]
	bl      0x2025e44
	mov     r3, r0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x6c
	mov     r1, #0x10
	add     r2, sp, #0x8
	bl      0x2089400
	mov     r1, r4
	add     r1, #0x94
	add     r4, #0x94
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2246ffc

.thumb
Function_2246ffc: @ 2246ffc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x94
	ldr     r4, [r0, #0x0]
	mov     r1, #0x6c
	ldr     r0, [r4, #0x1c]
	bl      Function_2249a80
	cmp     r0, #0x0
	beq     branch_224701a
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2246fac
	b       branch_224705c
@ 0x224701a

.thumb
branch_224701a: @ 224701a :thumb
	mov     r0, r5
	bl      Function_2246fb4
	cmp     r0, #0x2
	bne     branch_2247048
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x1c]
	bl      0x2023be0
	cmp     r0, #0x0
	beq     branch_224703e
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2246fac
	b       branch_224705c
@ 0x224703e

.thumb
branch_224703e: @ 224703e :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2246fac
	b       branch_224705c
@ 0x2247048

.thumb
branch_2247048: @ 2247048 :thumb
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x1c]
	bl      0x2023810
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2246fac
.thumb
branch_224705c: @ 224705c :thumb
	mov     r0, r4
	bl      0x2089438
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_2246e88
	pop     {r3-r5,pc}
@ 0x224706e


.align 2, 0


.thumb
Function_2247070: @ 2247070 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	mov     r4, r0
	mov     r0, #0x3
	str     r0, [sp, #0x10]
	mov     r0, #0x4
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x4]
	bl      0x2025e44
	mov     r3, r0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x78
	ldrh    r0, [r0, #0x0]
	mov     r1, #0x7
	add     r2, sp, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x6c
	bl      0x208941c
	mov     r1, r4
	add     r1, #0x94
	add     r4, #0x94
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	add     sp, #0x20
	pop     {r4,pc}
@ 0x22470b6


.align 2, 0


.thumb
Function_22470b8: @ 22470b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x94
	ldr     r4, [r0, #0x0]
	add     r1, sp, #0x0
	ldr     r0, [r4, #0x1c]
	bl      0x2023b38
	ldr     r2, [pc, #0x28] @ 0x22470f4, (=0x2710)
	mov     r3, #0x0
	blx     0x20e1ee0
	mov     r1, #0x42
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_22470e0
	bl      ErrorHandling
.thumb
branch_22470e0: @ 22470e0 :thumb
	mov     r0, r4
	bl      0x2089438
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_2246e88
	pop     {r3-r5,pc}
@ 0x22470f2


.align 2


.word 0x2710 @ 0x22470f4
.thumb
Function_22470f8: @ 22470f8 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x4]
	bl      0x2025e44
	mov     r3, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x6c
	mov     r1, #0x4
	add     r2, sp, #0x8
	bl      0x2089400
	mov     r1, r4
	add     r1, #0x94
	add     r4, #0x94
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2247132


.align 2, 0


.thumb
Function_2247134: @ 2247134 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x94
	ldr     r4, [r0, #0x0]
	add     r1, sp, #0x0
	ldr     r0, [r4, #0x1c]
	bl      0x2023b38
	mov     r1, #0x41
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_2247154
	bl      ErrorHandling
.thumb
branch_2247154: @ 2247154 :thumb
	mov     r0, r4
	bl      0x2089438
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_2246e88
	pop     {r3-r5,pc}
@ 0x2247166


.align 2, 0


.thumb
Function_2247168: @ 2247168 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6c
	mov     r1, #0xc
	bl      malloc_maybe
	mov     r1, #0x0
	mov     r2, #0xc
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x7c]
	mov     r0, r5
	add     r0, #0x94
	add     r5, #0x94
	str     r4, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x2247196


.align 2, 0


.thumb
Function_2247198: @ 2247198 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      0x2039074
	cmp     r0, #0x0
	beq     branch_22471b0
	ldr     r0, [r4, #0x4]
	bl      0x20507e4
	bl      0x206af5c
.thumb
branch_22471b0: @ 22471b0 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2246e88
	pop     {r4,pc}
@ 0x22471c6


.align 2, 0


.thumb
Function_22471c8: @ 22471c8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r1, #0x1
	lsl     r1, r1, #26
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0x1c4] @ 0x22473b0, (=0xffffe0ff)
	and     r0, r2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x1c4] @ 0x22473b4, (=0x4001000)
	ldr     r3, [r0, #0x0]
	and     r2, r3
	str     r2, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	ldr     r2, [pc, #0x1bc] @ 0x22473b8, (=0xffff1fff)
	and     r3, r2
	str     r3, [r1, #0x0]
	ldr     r3, [r0, #0x0]
	add     r1, #0x50
	and     r2, r3
	str     r2, [r0, #0x0]
	mov     r2, #0x0
	strh    r2, [r1, #0x0]
	add     r0, #0x50
	strh    r2, [r0, #0x0]
	mov     r2, #0x7
	mov     r0, #0x3
	mov     r1, #0x6d
	lsl     r2, r2, #16
	bl      0x2017fc8
	ldr     r1, [pc, #0x1a0] @ 0x22473bc, (=0x418)
	mov     r0, r4
	mov     r2, #0x6d
	bl      0x200681c
	ldr     r2, [pc, #0x194] @ 0x22473bc, (=0x418)
	mov     r1, #0x0
	mov     r5, r0
	blx     MI_CpuFill8
	mov     r0, r4
	bl      0x2006840
	str     r0, [r5, #0x0]
	mov     r0, #0x6d
	bl      0x2018340
	str     r0, [r5, #0x4]
	mov     r0, #0x40
	mov     r1, #0x6d
	bl      0x201dbec
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	ldr     r0, [r5, #0x4]
	bl      Function_2247510
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	mov     r0, #0xb
	mov     r1, #0x40
	mov     r2, #0x6d
	bl      Function_200b368
	str     r0, [r5, #0x20]
	ldr     r2, [pc, #0x154] @ 0x22473c0, (=0x29f)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x6d
	bl      Function_200b144
	str     r0, [r5, #0x24]
	ldr     r2, [pc, #0x148] @ 0x22473c4, (=0x2a2)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x6d
	bl      Function_200b144
	str     r0, [r5, #0x2c]
	ldr     r2, [pc, #0x140] @ 0x22473c8, (=0x2b7)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x6d
	bl      Function_200b144
	mov     r2, #0x67
	str     r0, [r5, #0x30]
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x6d
	bl      Function_200b144
	str     r0, [r5, #0x28]
	ldr     r2, [pc, #0x124] @ 0x22473cc, (=0x166)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x6d
	bl      Function_200b144
	str     r0, [r5, #0x34]
	mov     r0, #0xb4
	mov     r1, #0x6d
	bl      Function_2023790
	str     r0, [r5, #0x38]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x6d
	bl      Function_2023790
	str     r0, [r5, #0x40]
	ldr     r0, [r5, #0x24]
	mov     r1, #0x1f
	bl      Function_200b1ec
	str     r0, [r5, #0x3c]
	mov     r0, r5
	bl      Function_2247704
	mov     r0, r5
	bl      Function_2247a24
	ldr     r0, [r5, #0x0]
	bl      Function_2246ea4
	cmp     r0, #0xc
	beq     branch_22472ee
	cmp     r0, #0x16
	beq     branch_224731a
	b       branch_2247330
@ 0x22472ee

.thumb
branch_22472ee: @ 22472ee :thumb
	blx     0x21d7a8c
	cmp     r0, #0x0
	bne     branch_2247314
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2039074
	cmp     r0, #0x1
	bne     branch_2247314
	mov     r0, #0xc
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2038548
	bl      0x2039734
	b       branch_2247338
@ 0x2247314

.thumb
branch_2247314: @ 2247314 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	b       branch_2247338
@ 0x224731a

.thumb
branch_224731a: @ 224731a :thumb
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xe8
	str     r1, [r0, #0x0]
	bl      0x2039734
	ldr     r0, [r5, #0x0]
	bl      Function_2246ea4
	str     r0, [r5, #0x8]
	b       branch_2247338
@ 0x2247330

.thumb
branch_2247330: @ 2247330 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_2246ea4
	str     r0, [r5, #0x8]
.thumb
branch_2247338: @ 2247338 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      Function_2246e9c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x6d
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r0, [pc, #0x48] @ 0x22473d0, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	ldr     r0, [pc, #0x30] @ 0x22473d4, (=0x22474e9)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22473b0

.word 0xffffe0ff @ 0x22473b0
.word 0x4001000 @ 0x22473b4
.word 0xffff1fff @ 0x22473b8
.word 0x418 @ 0x22473bc
.word 0x29f @ 0x22473c0
.word 0x2a2 @ 0x22473c4
.word 0x2b7 @ 0x22473c8
.word 0x166 @ 0x22473cc
.word 0x21bf6dc @ 0x22473d0
.word 0x22474e9 @ 0x22473d4
.thumb
Function_22473d8: @ 22473d8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_22473f2
	cmp     r1, #0x1
	beq     branch_2247400
	cmp     r1, #0x2
	beq     branch_224742c
	b       branch_2247438
@ 0x22473f2

.thumb
branch_22473f2: @ 22473f2 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_2247438
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2247438
@ 0x2247400

.thumb
branch_2247400: @ 2247400 :thumb
	ldr     r6, [r4, #0x8]
	ldr     r1, [pc, #0x38] @ 0x224743c, (=0x2249d70)
	lsl     r2, r6, #2
	ldr     r1, [r1, r2]
	blx     r1
	ldr     r1, [r4, #0x8]
	cmp     r6, r1
	beq     branch_2247422
	mov     r1, r4
	mov     r2, #0x0
	add     r1, #0x94
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x9c
	str     r2, [r1, #0x0]
	add     r4, #0x98
	str     r2, [r4, #0x0]
.thumb
branch_2247422: @ 2247422 :thumb
	cmp     r0, #0x1
	bne     branch_2247438
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_2247438
@ 0x224742c

.thumb
branch_224742c: @ 224742c :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_2247438
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2247438

.thumb
branch_2247438: @ 2247438 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224743c

.word 0x2249d70 @ 0x224743c
.thumb
Function_2247440: @ 2247440 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2247464
	bl      Function_200da58
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xec
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf0
	str     r1, [r0, #0x0]
.thumb
branch_2247464: @ 2247464 :thumb
	ldr     r0, [r4, #0x34]
	bl      Function_200b190
	ldr     r0, [r4, #0x28]
	bl      Function_200b190
	ldr     r0, [r4, #0x30]
	bl      Function_200b190
	ldr     r0, [r4, #0x2c]
	bl      Function_200b190
	ldr     r0, [r4, #0x24]
	bl      Function_200b190
	ldr     r0, [r4, #0x20]
	bl      0x200b3f0
	ldr     r0, [r4, #0x3c]
	bl      Function_20237bc
	ldr     r0, [r4, #0x40]
	bl      Function_20237bc
	ldr     r0, [r4, #0x38]
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_2247acc
	ldr     r0, [r4, #0x4]
	bl      free
	ldr     r0, [r4, #0x4]
	bl      Function_22476d0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201dc3c
	bl      0x201e530
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	bl      0x2039794
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x6d
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22474e6


.align 2, 0


.thumb
Function_22474e8: @ 22474e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x201dcac
	bl      0x200a858
	ldr     r0, [r4, #0x4]
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x2247508, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x224750c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x2247508

.word 0x27e0000 @ 0x2247508
.word 0x3ff8 @ 0x224750c
.thumb
Function_2247510: @ 2247510 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xe0
	mov     r4, r0
	bl      0x201ff00
	bl      0x201ff68
	ldr     r5, [pc, #0x1a0] @ 0x22476c0, (=0x2249c4c)
	add     r3, sp, #0x48
	mov     r2, #0x5
.thumb
branch_2247524: @ 2247524 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2247524
	add     r0, sp, #0x48
	bl      0x201fe94
	mov     r1, #0x6
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x62
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	mov     r1, #0x19
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x66
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	ldr     r5, [pc, #0x158] @ 0x22476c4, (=0x2249bcc)
	add     r3, sp, #0x38
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x148] @ 0x22476c8, (=0x2249cac)
	add     r3, sp, #0x70
	mov     r2, #0xe
.thumb
branch_2247584: @ 2247584 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2247584
	mov     r1, #0x0
	mov     r0, r4
	add     r2, sp, #0x70
	mov     r3, r1
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2019184
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x3
	mov     r3, r1
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x1
	add     r2, sp, #0x8c
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x2
	add     r2, sp, #0xa8
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x3
	add     r2, sp, #0xc4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	mov     r1, #0x3
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r5, [pc, #0x8c] @ 0x22476cc, (=0x2249c74)
	add     r3, sp, #0x0
	mov     r2, #0x7
.thumb
branch_2247642: @ 2247642 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2247642
	mov     r0, r4
	mov     r1, #0x4
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x5
	add     r2, sp, #0x1c
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x6d
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6d
	bl      0x2019690
	add     sp, #0xe0
	pop     {r3-r5,pc}
@ 0x22476be


.align 2


.word 0x2249c4c @ 0x22476c0
.word 0x2249bcc @ 0x22476c4
.word 0x2249cac @ 0x22476c8
.word 0x2249c74 @ 0x22476cc
.thumb
Function_22476d0: @ 22476d0 :thumb
	push    {r4,lr}
	mov     r4, r0
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
@ 0x2247704

.thumb
Function_2247704: @ 2247704 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	str     r0, [sp, #0x10]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6d
	str     r0, [sp, #0x30]
	mov     r0, #0x5c
	bl      0x2006c24
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x6d
	str     r1, [sp, #0x4]
	mov     r1, #0x3
	mov     r3, r2
	str     r0, [sp, #0x2c]
	bl      0x2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x6d
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      0x2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x6d
	bl      0x2002e98
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x6d
	bl      0x2002e98
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x6d
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x6d
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6d
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x2
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6d
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x30]
	mov     r1, #0x2
	mov     r3, #0x1
	bl      0x20070e8
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x6d
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x30]
	mov     r1, #0x5
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6d
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x30]
	mov     r1, #0xa
	mov     r3, #0x5
	bl      0x20070e8
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x6d
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x30]
	mov     r1, #0xb
	mov     r3, #0x5
	bl      0x200710c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	ldr     r0, [sp, #0x10]
	mov     r2, #0xcb
	add     r0, #0xec
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x4
	add     r2, sp, #0x3c
	mov     r3, #0x6d
	bl      0x20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x3c]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	add     r1, #0xf4
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	ldr     r0, [sp, #0x3c]
	mov     r2, #0x5d
	ldr     r1, [sp, #0x10]
	lsl     r2, r2, #2
	add     r1, r1, r2
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	mov     r1, #0x5d
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	add     r0, #0xf4
	str     r0, [sp, #0x14]
.thumb
branch_224786a: @ 224786a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #5
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x34]
.thumb
branch_224787c: @ 224787c :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x15
	blt     branch_2247886
	bl      ErrorHandling
.thumb
branch_2247886: @ 2247886 :thumb
	ldr     r0, [sp, #0x34]
	mov     r7, #0x1
	add     r6, r0, #0x2
	ldr     r0, [sp, #0x18]
	add     r4, r0, #0x2
	ldr     r0, [sp, #0x14]
	add     r5, r0, #0x2
	ldr     r0, [sp, #0x20]
	asr     r0, r0, #8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x38]
.thumb
branch_224789e: @ 224789e :thumb
	mov     r0, r6
	add     r0, #0xf4
	ldrh    r0, [r0, #0x0]
	ldr     r3, [sp, #0x38]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	bl      0x200393c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_224789e
	ldr     r0, [sp, #0x18]
	add     r0, #0x20
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	beq     branch_22478ea
	mov     r0, #0x3
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #8
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x20]
	cmp     r1, r0
	blt     branch_224787c
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_224787c
@ 0x22478ea

.thumb
branch_22478ea: @ 22478ea :thumb
	ldr     r0, [sp, #0x14]
	add     r0, #0x20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x3
	blt     branch_224786a
	mov     r1, #0x5d
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x2a
	lsl     r1, r1, #4
	blx     DC_FlushRange
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x74] @ 0x224798c, (=0x2247991)
	add     r1, #0xec
	mov     r2, #0x14
	bl      0x200da04
	ldr     r1, [sp, #0x10]
	add     r1, #0xec
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r1, [sp, #0x10]
	bl      0x2006ca8
	mov     r0, #0xaa
	mov     r1, #0x6d
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6d
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x30]
	mov     r0, r4
	mov     r1, #0xb
	mov     r3, #0x3
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6d
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x30]
	mov     r0, r4
	mov     r1, #0xa
	mov     r3, #0x3
	bl      0x200710c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r3, #0x6d
	str     r3, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x0
	add     r3, #0xb3
	bl      0x2007130
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x224798c

.word 0x2247991 @ 0x224798c
.thumb
Function_2247990: @ 2247990 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2247a18
	ldr     r0, [pc, #0x80] @ 0x2247a1c, (=0x32b)
	mov     r1, #0x1
	ldrb    r2, [r4, r0]
	eor     r2, r1
	strb    r2, [r4, r0]
	ldrb    r2, [r4, r0]
	tst     r1, r2
	bne     branch_2247a18
	.hword  0x1ec0 @ sub r0, r0, #0x3
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     0x20c00b4
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     0x20c0108
	ldr     r0, [pc, #0x48] @ 0x2247a20, (=0x32a)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_22479fc
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x15
	blt     branch_2247a18
	mov     r2, #0x13
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r2, [r4, r0]
	mov     r1, #0x1
	eor     r1, r2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x22479fc

.thumb
branch_22479fc: @ 22479fc :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	bge     branch_2247a18
	mov     r2, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r1, [r4, r0]
	eor     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_2247a18: @ 2247a18 :thumb
	pop     {r4,pc}
@ 0x2247a1a


.align 2


.word 0x32b @ 0x2247a1c
.word 0x32a @ 0x2247a20
.thumb
Function_2247a24: @ 2247a24 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r3, #0x4
	mov     r4, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x68
	mov     r2, #0x0
	bl      0x201a7e8
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x81
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x58
	mov     r2, #0x0
	mov     r3, #0x4
	bl      0x201a7e8
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r3, #0x1
	ldr     r0, [pc, #0x40] @ 0x2247ac8, (=0xf0e00)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	ldr     r1, [r4, #0x3c]
	add     r0, #0x58
	mov     r2, #0x0
	bl      Function_22498cc
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	add     r4, #0x48
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2247ac6


.align 2


.word 0xf0e00 @ 0x2247ac8
.thumb
Function_2247acc: @ 2247acc :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x48
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x58
	bl      Function_201a8fc
	add     r4, #0x68
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x2247ae8

.thumb
Function_2247ae8: @ 2247ae8 :thumb
	str     r1, [r0, #0x8]
	str     r2, [r0, #0xc]
	bx      lr
@ 0x2247aee


.align 2, 0


.thumb
Function_2247af0: @ 2247af0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2247b0a
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x1
	bl      0x200e7fc
	add     r4, #0x8c
	str     r0, [r4, #0x0]
.thumb
branch_2247b0a: @ 2247b0a :thumb
	pop     {r4,pc}
@ 0x2247b0c

.thumb
Function_2247b0c: @ 2247b0c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2247b22
	bl      0x200eba0
	mov     r0, #0x0
	add     r4, #0x8c
	str     r0, [r4, #0x0]
.thumb
branch_2247b22: @ 2247b22 :thumb
	pop     {r4,pc}
@ 0x2247b24

.thumb
Function_2247b24: @ 2247b24 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x28] @ 0x2247b54, (=0x2249bc4)
	add     r4, sp, #0x4
	ldrh    r6, [r5, #0x0]
	add     r3, sp, #0x4
	strh    r6, [r4, #0x0]
	ldrh    r6, [r5, #0x2]
	strh    r6, [r4, #0x2]
	ldrh    r6, [r5, #0x4]
	ldrh    r5, [r5, #0x6]
	strh    r6, [r4, #0x4]
	strh    r5, [r4, #0x6]
	strb    r1, [r4, #0x2]
	strh    r2, [r4, #0x6]
	mov     r1, #0x6d
	str     r1, [sp, #0x0]
	mov     r1, r3
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x2002100
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2247b54

.word 0x2249bc4 @ 0x2247b54
.thumb
Function_2247b58: @ 2247b58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x34] @ 0x2247b94, (=0x2249bc4)
	mov     r4, r1
	ldrh    r6, [r5, #0x0]
	mov     r1, r3
	add     r3, sp, #0x8
	strh    r6, [r3, #0x0]
	ldrh    r6, [r5, #0x2]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	strh    r6, [r3, #0x2]
	ldrh    r6, [r5, #0x4]
	ldrh    r5, [r5, #0x6]
	add     r7, sp, #0x8
	strh    r6, [r3, #0x4]
	strh    r5, [r3, #0x6]
	strb    r4, [r3, #0x2]
	strh    r2, [r3, #0x6]
	str     r1, [sp, #0x0]
	mov     r1, #0x6d
	str     r1, [sp, #0x4]
	mov     r1, r7
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x2002054
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2247b92


.align 2


.word 0x2249bc4 @ 0x2247b94
.thumb
Function_2247b98: @ 2247b98 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2247bac
	cmp     r0, #0x1
	beq     branch_2247c78
	b       branch_2247cd4
@ 0x2247bac

.thumb
branch_2247bac: @ 2247bac :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2030d20
	cmp     r0, #0x1
	bne     branch_2247bc2
	ldr     r3, [pc, #0x158] @ 0x2247d14, (=0x2249bc0)
	ldr     r4, [pc, #0x15c] @ 0x2247d18, (=0x2249bec)
	mov     r7, #0x4
	ldr     r2, [pc, #0x15c] @ 0x2247d1c, (=0x2249c0c)
	b       branch_2247bca
@ 0x2247bc2

.thumb
branch_2247bc2: @ 2247bc2 :thumb
	ldr     r3, [pc, #0x15c] @ 0x2247d20, (=0x2249bbc)
	ldr     r4, [pc, #0x15c] @ 0x2247d24, (=0x2249bdc)
	ldr     r2, [pc, #0x160] @ 0x2247d28, (=0x2249c2c)
	mov     r7, #0x2
.thumb
branch_2247bca: @ 2247bca :thumb
	add     r6, sp, #0x14
	ldmia   r2!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldrb    r0, [r3, #0x1]
	mov     r1, r5
	add     r1, #0x78
	str     r0, [sp, #0x0]
	ldrb    r0, [r3, #0x2]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	ldrb    r0, [r3, #0x3]
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r5, #0x4]
	bl      0x201a7e8
	mov     r0, r7
	mov     r1, #0x6d
	bl      0x2013a04
	mov     r1, r5
	add     r1, #0xa0
	mov     r6, #0x0
	str     r0, [r1, #0x0]
	cmp     r7, #0x0
	ble     branch_2247c2a
.thumb
branch_2247c12: @ 2247c12 :thumb
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x34]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      0x2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r7
	blt     branch_2247c12
.thumb
branch_2247c2a: @ 2247c2a :thumb
	mov     r0, r5
	add     r0, #0x78
	str     r0, [sp, #0x20]
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	add     r0, sp, #0x14
	mov     r2, r1
	mov     r3, #0x6d
	bl      0x200112c
	mov     r1, r5
	add     r1, #0xa4
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x78
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200dc48
	mov     r0, r5
	add     r0, #0x48
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r5
	add     r0, #0x78
	bl      0x201a954
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r5, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2247d0e
@ 0x2247c78

.thumb
branch_2247c78: @ 2247c78 :thumb
	mov     r0, r5
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	bl      Function_2001288
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_2247c94
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2247d0e
	b       branch_2247cba
@ 0x2247c94

.thumb
branch_2247c94: @ 2247c94 :thumb
	ldr     r0, [pc, #0x94] @ 0x2247d2c, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2246e88
	mov     r0, r5
	mov     r1, #0x1d
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r5, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2247d0e
@ 0x2247cba

.thumb
branch_2247cba: @ 2247cba :thumb
	ldr     r0, [pc, #0x70] @ 0x2247d2c, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0x9c
	str     r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r5, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2247d0e
@ 0x2247cd4

.thumb
branch_2247cd4: @ 2247cd4 :thumb
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	bl      0x2013a3c
	mov     r0, r5
	add     r0, #0xa4
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, r5
	add     r0, #0x78
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r5
	add     r0, #0x78
	bl      0x201acf4
	mov     r0, r5
	add     r0, #0x78
	bl      Function_201a8fc
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	str     r0, [r5, #0x8]
.thumb
branch_2247d0e: @ 2247d0e :thumb
	mov     r0, #0x0
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2247d14

.word 0x2249bc0 @ 0x2247d14
.word 0x2249bec @ 0x2247d18
.word 0x2249c0c @ 0x2247d1c
.word 0x2249bbc @ 0x2247d20
.word 0x2249bdc @ 0x2247d24
.word 0x2249c2c @ 0x2247d28
.word 0x5dc @ 0x2247d2c
.thumb
Function_2247d30: @ 2247d30 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	mov     r2, #0x3
	bl      Function_2246e88
	ldr     r0, [r4, #0x0]
	mov     r1, #0x26
	bl      Function_2246e9c
	mov     r0, #0x1d
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2247d4e


.align 2, 0


.thumb
Function_2247d50: @ 2247d50 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_2247d66
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2247d66

.thumb
branch_2247d66: @ 2247d66 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bhi     branch_2247e2c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2247d7c

Jumppoints_2247d7c:
.hword branch_2247d84 - Jumppoints_2247d7c - 2
.hword branch_2247da2 - Jumppoints_2247d7c - 2
.hword branch_2247dc2 - Jumppoints_2247d7c - 2
.hword branch_2247e22 - Jumppoints_2247d7c - 2
.thumb
branch_2247d84: @ 2247d84 :thumb
	ldr     r0, [pc, #0xac] @ 0x2247e34, (=0xf0f)
	mov     r2, #0x19
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2247e2c
@ 0x2247da2

.thumb
branch_2247da2: @ 2247da2 :thumb
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_2247b24
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2247e2c
@ 0x2247dc2

.thumb
branch_2247dc2: @ 2247dc2 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6d
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2247e2c
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	ldr     r0, [pc, #0x58] @ 0x2247e34, (=0xf0f)
	bne     branch_2247dfa
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r2, #0x1b
	mov     r3, #0x1
	bl      Function_2249714
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x4]
	mov     r2, r1
	bl      0x2030d5c
	b       branch_2247e14
@ 0x2247dfa

.thumb
branch_2247dfa: @ 2247dfa :thumb
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r2, #0x1a
	mov     r3, #0x1
	bl      Function_2249714
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x4]
	mov     r2, #0x1
	bl      0x2030d5c
.thumb
branch_2247e14: @ 2247e14 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2247e2c
@ 0x2247e22

.thumb
branch_2247e22: @ 2247e22 :thumb
	mov     r0, r4
	mov     r1, #0x19
	mov     r2, #0x0
	bl      Function_2247ae8
.thumb
branch_2247e2c: @ 2247e2c :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2247e32


.align 2


.word 0xf0f @ 0x2247e34
.thumb
Function_2247e38: @ 2247e38 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_2247e4e
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2247e4e

.thumb
branch_2247e4e: @ 2247e4e :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bhi     branch_2247efc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2247e64

Jumppoints_2247e64:
.hword branch_2247e6c - Jumppoints_2247e64 - 2
.hword branch_2247e8a - Jumppoints_2247e64 - 2
.hword branch_2247eac - Jumppoints_2247e64 - 2
.hword branch_2247ef2 - Jumppoints_2247e64 - 2
.thumb
branch_2247e6c: @ 2247e6c :thumb
	ldr     r0, [pc, #0x94] @ 0x2247f04, (=0xf0f)
	mov     r2, #0x1c
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2247efc
@ 0x2247e8a

.thumb
branch_2247e8a: @ 2247e8a :thumb
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	mov     r3, #0x1
	bl      Function_2247b58
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2247efc
@ 0x2247eac

.thumb
branch_2247eac: @ 2247eac :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6d
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2247efc
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2247ecc
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	b       branch_2247efc
@ 0x2247ecc

.thumb
branch_2247ecc: @ 2247ecc :thumb
	ldr     r0, [pc, #0x34] @ 0x2247f04, (=0xf0f)
	mov     r2, #0x1d
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2030d10
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2247efc
@ 0x2247ef2

.thumb
branch_2247ef2: @ 2247ef2 :thumb
	mov     r0, r4
	mov     r1, #0x19
	mov     r2, #0x0
	bl      Function_2247ae8
.thumb
branch_2247efc: @ 2247efc :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2247f02


.align 2


.word 0xf0f @ 0x2247f04
.thumb
Function_2247f08: @ 2247f08 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, #0xd4
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [r4, #0x34]
	mov     r1, #0x2a
	bl      Function_200b1ec
	mov     r5, r0
	ldr     r3, [pc, #0x74] @ 0x2247f98, (=0x2249d60)
	mov     r1, #0x0
	ldr     r0, [r3, #0x4]
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r3, [r3, #0x0]
	mov     r0, r4
	add     r0, #0xd4
	add     r3, #0xc
	bl      0x201d738
	mov     r0, r5
	bl      Function_20237bc
	ldr     r0, [r4, #0x34]
	mov     r1, #0x2b
	bl      Function_200b1ec
	mov     r5, r0
	ldr     r3, [pc, #0x48] @ 0x2247f98, (=0x2249d60)
	mov     r1, #0x0
	ldr     r0, [r3, #0xc]
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r3, [r3, #0x8]
	mov     r0, r4
	add     r0, #0xd4
	add     r3, #0xc
	bl      0x201d738
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	lsl     r3, r0, #3
	mov     r0, r4
	ldr     r2, [pc, #0x20] @ 0x2247f9c, (=0x2249d60)
	add     r0, #0xe4
	ldr     r5, [pc, #0x20] @ 0x2247fa0, (=0x2249d64)
	ldr     r2, [r2, r3]
	ldr     r0, [r0, #0x0]
	ldr     r3, [r5, r3]
	add     r1, #0xd4
	bl      0x2014a58
	add     r4, #0xd4
	mov     r0, r4
	bl      0x201a954
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2247f98

.word 0x2249d60 @ 0x2247f98
.word 0x2249d60 @ 0x2247f9c
.word 0x2249d64 @ 0x2247fa0
.thumb
Function_2247fa4: @ 2247fa4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xd4
	mov     r1, #0xf
	bl      Function_201ada4
	add     r4, #0xd4
	mov     r0, r4
	bl      0x201a954
	pop     {r4,pc}
@ 0x2247fba


.align 2, 0


.thumb
Function_2247fbc: @ 2247fbc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xbc
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x8
	beq     branch_2247fda
	b       branch_22482c8
@ 0x2247fda

.thumb
branch_2247fda: @ 2247fda :thumb
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, r0
	mov     r0, r4
	eor     r2, r1
	add     r0, #0xc0
	str     r2, [r0, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0xbc
	str     r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	add     r3, r0, #0x6
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	cmp     r3, r0
	bne     branch_2248008
	b       branch_2248146
@ 0x2248008

.thumb
branch_2248008: @ 2248008 :thumb
	mov     r0, #0x11
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0xe
	bl      0x2019cb8
	mov     r0, #0x11
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	.hword  0x1c92 @ add r2, r2, #0x2
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0xf
	bl      0x2019cb8
	mov     r0, #0x11
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	.hword  0x1cd2 @ add r2, r2, #0x3
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      0x2019cb8
	mov     r3, #0x11
	mov     r2, r4
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r5, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r5
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	bl      0x2019cb8
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0xb
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0xe
	bl      0x2019cb8
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0xc
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0xf
	bl      0x2019cb8
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0xd
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      0x2019cb8
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0xe
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0x11
	bl      0x2019cb8
	b       branch_2248160
@ 0x2248146

.thumb
branch_2248146: @ 2248146 :thumb
	mov     r0, #0x11
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	mov     r3, #0xe
	bl      0x2019cb8
.thumb
branch_2248160: @ 2248160 :thumb
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224816c
	b       branch_22482a6
@ 0x224816c

.thumb
branch_224816c: @ 224816c :thumb
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	.hword  0x1d52 @ add r2, r2, #0x5
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	lsr     r2, r2, #16
	mov     r3, #0xe
	bl      0x2019cb8
	mov     r1, #0x3
	mov     r2, r4
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	.hword  0x1d92 @ add r2, r2, #0x6
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	lsr     r2, r2, #16
	mov     r3, #0xf
	bl      0x2019cb8
	mov     r1, #0x3
	mov     r2, r4
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	.hword  0x1dd2 @ add r2, r2, #0x7
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      0x2019cb8
	mov     r1, #0x3
	mov     r2, r4
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0x8
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	lsr     r2, r2, #16
	mov     r3, #0x11
	bl      0x2019cb8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0xf
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0xe
	bl      0x2019cb8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0x10
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0xf
	bl      0x2019cb8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0x11
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      0x2019cb8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r2, r4
	str     r0, [sp, #0xc]
	add     r2, #0xc0
	ldr     r3, [r2, #0x0]
	mov     r2, #0x14
	mul     r2, r3
	add     r2, #0x12
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsr     r2, r2, #16
	mov     r3, #0x11
	bl      0x2019cb8
	b       branch_22482c0
@ 0x22482a6

.thumb
branch_22482a6: @ 22482a6 :thumb
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r2, #0x0
	mov     r3, #0xe
	bl      0x2019cb8
.thumb
branch_22482c0: @ 22482c0 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      0x201c3c0
.thumb
branch_22482c8: @ 22482c8 :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22482cc

.thumb
Function_22482cc: @ 22482cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	add     r0, #0xc4
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [r7, #0x34]
	mov     r1, #0x2c
	bl      Function_200b1ec
	str     r0, [sp, #0xc]
	bl      0x2023c3c
	mov     r1, #0x6d
	bl      Function_2023790
	mov     r6, r0
	mov     r0, r7
	add     r0, #0xac
	ldr     r4, [r0, #0x0]
	add     r0, r4, #0x6
	cmp     r4, r0
	bge     branch_2248336
	mov     r0, r7
	str     r0, [sp, #0x10]
	add     r0, #0xc4
	mov     r5, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_2248306: @ 2248306 :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	mov     r2, r4
	bl      0x2023c9c
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	mov     r2, r6
	mov     r3, #0x4
	bl      0x201d738
	mov     r0, r7
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d80 @ add r0, r0, #0x6
	add     r5, #0x10
	cmp     r4, r0
	blt     branch_2248306
.thumb
branch_2248336: @ 2248336 :thumb
	ldr     r0, [sp, #0xc]
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     r7, #0xc4
	mov     r0, r7
	bl      0x201a954
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224834e


.align 2, 0


.thumb
Function_2248350: @ 2248350 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r1, r5
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_224836e
	cmp     r1, #0x1
	bne     branch_2248366
	b       branch_22484b8
@ 0x2248366

.thumb
branch_2248366: @ 2248366 :thumb
	cmp     r1, #0x2
	bne     branch_224836c
	b       branch_2248566
@ 0x224836c

.thumb
branch_224836c: @ 224836c :thumb
	b       branch_2248614
@ 0x224836e

.thumb
branch_224836e: @ 224836e :thumb
	ldr     r0, [r5, #0x34]
	mov     r1, #0x2c
	bl      Function_200b1ec
	str     r0, [sp, #0x14]
	bl      0x2023c5c
	mov     r1, r5
	mov     r2, #0x0
	add     r1, #0xac
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb0
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb8
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	mov     r1, r5
	ldr     r0, [r5, #0x4]
	add     r1, #0xc4
	mov     r2, #0x2
	mov     r3, #0x1
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x7f
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	mov     r1, r5
	ldr     r0, [r5, #0x4]
	add     r1, #0xd4
	mov     r2, #0x2
	mov     r3, #0x1
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0xc4
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [sp, #0x14]
	bl      0x2023c3c
	mov     r1, #0x6d
	bl      Function_2023790
	mov     r7, r0
	mov     r0, r5
	mov     r6, #0x0
	str     r0, [sp, #0x18]
	add     r0, #0xc4
	mov     r4, r6
	str     r0, [sp, #0x18]
.thumb
branch_2248400: @ 2248400 :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	mov     r2, r6
	bl      0x2023c9c
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	mov     r2, r7
	mov     r3, #0x4
	bl      0x201d738
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x6
	blt     branch_2248400
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r5
	add     r0, #0xc4
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200dc48
	mov     r0, r5
	add     r0, #0xc4
	bl      0x201a954
	mov     r0, r5
	add     r0, #0xd4
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0xd4
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200dc48
	mov     r0, r5
	add     r0, #0xd4
	bl      0x201a954
	mov     r0, #0x6d
	bl      0x20149f0
	mov     r1, r5
	add     r1, #0xe4
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x48
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x48
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r5
	add     r0, #0x48
	bl      0x201acf4
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xbc
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	b       branch_2248670
@ 0x22484b8

.thumb
branch_22484b8: @ 22484b8 :thumb
	ldr     r1, [pc, #0x1c0] @ 0x224867c, (=0x21bf67c)
	add     r0, #0xac
	ldr     r2, [r1, #0x4c]
	ldr     r4, [r0, #0x0]
	mov     r0, #0x40
	tst     r0, r2
	beq     branch_22484e0
	cmp     r4, #0x0
	beq     branch_2248552
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xac
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x1a4] @ 0x2248680, (=0x5dc)
	bl      Function_2005748
	b       branch_2248552
@ 0x22484e0

.thumb
branch_22484e0: @ 22484e0 :thumb
	mov     r0, #0x80
	tst     r0, r2
	beq     branch_2248534
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	add     r1, r4, #0x6
	cmp     r1, r0
	bge     branch_2248506
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xac
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x17c] @ 0x2248680, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2248506: @ 2248506 :thumb
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x6
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_2248552
	mov     r0, r5
	bl      Function_2247f08
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x150] @ 0x2248680, (=0x5dc)
	bl      Function_2005748
	b       branch_2248552
@ 0x2248534

.thumb
branch_2248534: @ 2248534 :thumb
	ldr     r1, [r1, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2248552
	ldr     r0, [pc, #0x140] @ 0x2248680, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xff
	add     r0, #0xa8
	str     r1, [r0, #0x0]
.thumb
branch_2248552: @ 2248552 :thumb
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r4, r0
	bne     branch_224855e
	b       branch_2248670
@ 0x224855e

.thumb
branch_224855e: @ 224855e :thumb
	mov     r0, r5
	bl      Function_22482cc
	b       branch_2248670
@ 0x2248566

.thumb
branch_2248566: @ 2248566 :thumb
	ldr     r1, [pc, #0x114] @ 0x224867c, (=0x21bf67c)
	mov     r2, #0x10
	ldr     r1, [r1, #0x48]
	tst     r2, r1
	bne     branch_2248576
	mov     r2, #0x20
	tst     r2, r1
	beq     branch_2248594
.thumb
branch_2248576: @ 2248576 :thumb
	mov     r0, r5
	add     r0, #0xb0
	ldr     r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r5
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0xf8] @ 0x2248680, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_2247f08
	b       branch_2248670
@ 0x2248594

.thumb
branch_2248594: @ 2248594 :thumb
	mov     r2, #0x1
	tst     r2, r1
	beq     branch_22485be
	add     r0, #0xb0
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	sub     r1, r0, r1
	mov     r0, r5
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0xd4] @ 0x2248680, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	b       branch_2248670
@ 0x22485be

.thumb
branch_22485be: @ 22485be :thumb
	mov     r2, #0x2
	mov     r3, r1
	tst     r3, r2
	beq     branch_22485e0
	add     r0, #0xb8
	str     r2, [r0, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x2248680, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	b       branch_2248670
@ 0x22485e0

.thumb
branch_22485e0: @ 22485e0 :thumb
	mov     r2, #0x40
	tst     r1, r2
	beq     branch_2248670
	bl      Function_2247fa4
	ldr     r0, [pc, #0x94] @ 0x2248680, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xac
	str     r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_22482cc
	b       branch_2248670
@ 0x2248614

.thumb
branch_2248614: @ 2248614 :thumb
	add     r0, #0xc4
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r5
	add     r0, #0xc4
	bl      0x201acf4
	mov     r0, r5
	add     r0, #0xc4
	bl      Function_201a8fc
	mov     r0, r5
	add     r0, #0xd4
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r5
	add     r0, #0xd4
	bl      0x201acf4
	mov     r0, r5
	add     r0, #0xd4
	bl      Function_201a8fc
	mov     r0, r5
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	bl      0x2014a20
	ldr     r0, [r5, #0x4]
	mov     r1, #0x3
	bl      0x2019ebc
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	add     r5, #0xb8
	add     sp, #0x1c
	ldr     r0, [r5, #0x0]
	pop     {r4-r7,pc}
@ 0x2248670

.thumb
branch_2248670: @ 2248670 :thumb
	mov     r0, r5
	bl      Function_2247fbc
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224867c

.word 0x21bf67c @ 0x224867c
.word 0x5dc @ 0x2248680
.thumb
Function_2248684: @ 2248684 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_224869a
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x224869a

.thumb
branch_224869a: @ 224869a :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x4
	bhi     branch_2248768
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22486b0

Jumppoints_22486b0:
.hword branch_22486ba - Jumppoints_22486b0 - 2
.hword branch_22486c2 - Jumppoints_22486b0 - 2
.hword branch_22486d0 - Jumppoints_22486b0 - 2
.hword branch_2248710 - Jumppoints_22486b0 - 2
.hword branch_2248748 - Jumppoints_22486b0 - 2
.thumb
branch_22486ba: @ 22486ba :thumb
	mov     r0, #0x3
	add     r4, #0x94
	str     r0, [r4, #0x0]
	b       branch_22487a2
@ 0x22486c2

.thumb
branch_22486c2: @ 22486c2 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22487a2
@ 0x22486d0

.thumb
branch_22486d0: @ 22486d0 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6d
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22487a2
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_22486f8
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22487a2
@ 0x22486f8

.thumb
branch_22486f8: @ 22486f8 :thumb
	ldr     r0, [pc, #0xac] @ 0x22487a8, (=0xf0f)
	mov     r2, #0x9
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, #0x4
	add     r4, #0x94
	str     r0, [r4, #0x0]
	b       branch_22487a2
@ 0x2248710

.thumb
branch_2248710: @ 2248710 :thumb
	mov     r0, r4
	bl      Function_2248350
	cmp     r0, #0x1
	bne     branch_2248738
	ldr     r0, [pc, #0x8c] @ 0x22487a8, (=0xf0f)
	mov     r2, #0x9
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22487a2
@ 0x2248738

.thumb
branch_2248738: @ 2248738 :thumb
	cmp     r0, #0x2
	bne     branch_22487a2
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0x0
	bl      Function_2247ae8
	b       branch_22487a2
@ 0x2248748

.thumb
branch_2248748: @ 2248748 :thumb
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_2247b24
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22487a2
@ 0x2248768

.thumb
branch_2248768: @ 2248768 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6d
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22487a2
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_224879e
	ldr     r0, [pc, #0x24] @ 0x22487a8, (=0xf0f)
	mov     r2, #0xa
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0x0
	bl      Function_2247ae8
	b       branch_22487a2
@ 0x224879e

.thumb
branch_224879e: @ 224879e :thumb
	mov     r0, #0x5
	str     r0, [r4, #0x8]
.thumb
branch_22487a2: @ 22487a2 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22487a8

.word 0xf0f @ 0x22487a8
.thumb
Function_22487ac: @ 22487ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2246e88
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      Function_2246e9c
	mov     r0, #0x1d
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22487ca


.align 2, 0


.thumb
Function_22487cc: @ 22487cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2246fb4
	cmp     r0, #0x1
	beq     branch_22487e4
	cmp     r0, #0x2
	beq     branch_22487ea
	cmp     r0, #0x3
	beq     branch_22487ea
	b       branch_22487f2
@ 0x22487e4

.thumb
branch_22487e4: @ 22487e4 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x22487ea

.thumb
branch_22487ea: @ 22487ea :thumb
	mov     r0, #0x25
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22487f2

.thumb
branch_22487f2: @ 22487f2 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2248800
	mov     r0, #0x7
	str     r0, [r4, #0x8]
.thumb
branch_2248800: @ 2248800 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248804

.thumb
Function_2248804: @ 2248804 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_224881a
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x224881a

.thumb
branch_224881a: @ 224881a :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x4
	bhi     branch_22488ec
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248830

Jumppoints_2248830:
.hword branch_224883a - Jumppoints_2248830 - 2
.hword branch_2248848 - Jumppoints_2248830 - 2
.hword branch_2248866 - Jumppoints_2248830 - 2
.hword branch_2248886 - Jumppoints_2248830 - 2
.hword branch_22488ba - Jumppoints_2248830 - 2
.thumb
branch_224883a: @ 224883a :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22488ec
@ 0x2248848

.thumb
branch_2248848: @ 2248848 :thumb
	ldr     r0, [pc, #0xa8] @ 0x22488f4, (=0xf0f)
	mov     r2, #0xb
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22488ec
@ 0x2248866

.thumb
branch_2248866: @ 2248866 :thumb
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_2247b24
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22488ec
@ 0x2248886

.thumb
branch_2248886: @ 2248886 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6d
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22488ec
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_22488ac
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0x0
	bl      Function_2247ae8
	b       branch_22488ec
@ 0x22488ac

.thumb
branch_22488ac: @ 22488ac :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22488ec
@ 0x22488ba

.thumb
branch_22488ba: @ 22488ba :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2039074
	cmp     r0, #0x0
	bne     branch_22488e2
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2246e88
	ldr     r0, [r4, #0x0]
	mov     r1, #0xc
	bl      Function_2246e9c
	mov     r0, #0x1d
	str     r0, [r4, #0x8]
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22488e2

.thumb
branch_22488e2: @ 22488e2 :thumb
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0xc
	bl      Function_2247ae8
.thumb
branch_22488ec: @ 22488ec :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22488f2


.align 2


.word 0xf0f @ 0x22488f4
.thumb
Function_22488f8: @ 22488f8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6d
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224894a
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_224892a
	bl      0x203859c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2246e88
	mov     r0, #0x1d
	str     r0, [r4, #0x8]
	b       branch_224894a
@ 0x224892a

.thumb
branch_224892a: @ 224892a :thumb
	ldr     r0, [pc, #0x24] @ 0x2248950, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2249714
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0xc
	bl      Function_2247ae8
	mov     r0, r4
	bl      Function_2247af0
.thumb
branch_224894a: @ 224894a :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2248950

.word 0xf0f @ 0x2248950
.thumb
Function_2248954: @ 2248954 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x1c] @ 0x2248978, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x30]
	mov     r2, #0x1a
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0xa
	bl      Function_2247ae8
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2248978

.word 0xf0f @ 0x2248978
.thumb
Function_224897c: @ 224897c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x203859c
	blx     0x21d7db0
	bl      0x2039794
	mov     r0, #0x4
	bl      0x2017b8c
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_22489ac
	bl      0x223b7ac
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	lsl     r0, r0, #2
	str     r2, [r1, r0]
.thumb
branch_22489ac: @ 22489ac :thumb
	mov     r0, #0xb
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22489b4

.thumb
Function_22489b4: @ 22489b4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x1c] @ 0x22489d8, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x30]
	mov     r2, #0x1b
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	mov     r1, #0x23
	mov     r2, #0x1d
	bl      Function_2247ae8
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22489d8

.word 0xf0f @ 0x22489d8
.thumb
Function_22489dc: @ 22489dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22489f4
	cmp     r0, #0x1
	beq     branch_2248a24
	cmp     r0, #0x2
	beq     branch_2248a3c
	b       branch_2248a5e
@ 0x22489f4

.thumb
branch_22489f4: @ 22489f4 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2038548
	bl      0x2039734
	ldr     r0, [pc, #0x60] @ 0x2248a64, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2249714
	mov     r0, r4
	bl      Function_2247af0
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2248a5e
@ 0x2248a24

.thumb
branch_2248a24: @ 2248a24 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_2248a5e
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2248a5e
@ 0x2248a3c

.thumb
branch_2248a3c: @ 2248a3c :thumb
	mov     r0, #0x4
	bl      0x2017b7c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	add     r0, #0x14
	mov     r2, #0x1
	mov     r3, #0x14
	blx     0x21d78c8
	mov     r0, #0x2
	blx     0x21d792c
	blx     0x21d797c
	mov     r0, #0xd
	str     r0, [r4, #0x8]
.thumb
branch_2248a5e: @ 2248a5e :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2248a64

.word 0xf0f @ 0x2248a64
.thumb
Function_2248a68: @ 2248a68 :thumb
	push    {r4,lr}
	add     sp, #-0x48
	mov     r4, r0
	blx     0x21d7ae4
	blx     0x21d7a8c
	cmp     r0, #0x0
	beq     branch_2248b0e
	blx     0x21d7bfc
	cmp     r0, #0x8
	bhi     branch_2248aee
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248a8e

Jumppoints_2248a8e:
.hword branch_2248aee - Jumppoints_2248a8e - 2
.hword branch_2248aee - Jumppoints_2248a8e - 2
.hword branch_2248aee - Jumppoints_2248a8e - 2
.hword branch_2248aee - Jumppoints_2248a8e - 2
.hword branch_2248b04 - Jumppoints_2248a8e - 2
.hword branch_2248aee - Jumppoints_2248a8e - 2
.hword branch_2248aee - Jumppoints_2248a8e - 2
.hword branch_2248aa0 - Jumppoints_2248a8e - 2
.hword branch_2248aee - Jumppoints_2248a8e - 2
.thumb
branch_2248aa0: @ 2248aa0 :thumb
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	blx     0x21d75f4
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x18]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x1c]
	blx     0x21d76e8
	blx     0x21d7db0
	bl      0x2039794
	bl      0x203859c
	mov     r0, #0x4
	bl      0x2017b8c
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_2248ae2
	bl      0x223b7ac
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	lsl     r0, r0, #2
	str     r2, [r1, r0]
.thumb
branch_2248ae2: @ 2248ae2 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	mov     r0, #0x1b
	str     r0, [r4, #0x8]
	b       branch_2248b0e
@ 0x2248aee

.thumb
branch_2248aee: @ 2248aee :thumb
	add     r0, sp, #0x0
	blx     0x21d75d4
	mov     r0, r4
	bl      Function_2247b0c
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	sub     r0, #0x22
	str     r0, [r4, #0x10]
	b       branch_2248b0e
@ 0x2248b04

.thumb
branch_2248b04: @ 2248b04 :thumb
	add     r0, sp, #0xc
	blx     0x21d7eb8
	mov     r0, #0xe
	str     r0, [r4, #0x8]
.thumb
branch_2248b0e: @ 2248b0e :thumb
	mov     r0, #0x0
	add     sp, #0x48
	pop     {r4,pc}
@ 0x2248b14

.thumb
Function_2248b14: @ 2248b14 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     0x21d81dc
	mov     r0, #0xf
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248b24

.thumb
Function_2248b24: @ 2248b24 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	blx     0x21d82a0
	cmp     r0, #0x5
	bhi     branch_2248bec
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248b3e

Jumppoints_2248b3e:
.hword branch_2248b50 - Jumppoints_2248b3e - 2
.hword branch_2248bec - Jumppoints_2248b3e - 2
.hword branch_2248bec - Jumppoints_2248b3e - 2
.hword branch_2248b4a - Jumppoints_2248b3e - 2
.hword branch_2248b50 - Jumppoints_2248b3e - 2
.hword branch_2248b50 - Jumppoints_2248b3e - 2
.thumb
branch_2248b4a: @ 2248b4a :thumb
	mov     r0, #0x10
	str     r0, [r4, #0x8]
	b       branch_2248bec
@ 0x2248b50

.thumb
branch_2248b50: @ 2248b50 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx     0x21d75f4
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x18]
	blx     0x21d76e8
	blx     0x21d7db0
	bl      0x2039794
	bl      0x203859c
	mov     r0, #0x4
	bl      0x2017b8c
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_2248b94
	bl      0x223b7ac
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	lsl     r0, r0, #2
	str     r2, [r1, r0]
.thumb
branch_2248b94: @ 2248b94 :thumb
	mov     r0, #0x1b
	str     r0, [r4, #0x8]
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x7
	bhi     branch_2248bda
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2248baa

Jumppoints_2248baa:
.hword branch_2248bda - Jumppoints_2248baa - 2
.hword branch_2248bba - Jumppoints_2248baa - 2
.hword branch_2248bba - Jumppoints_2248baa - 2
.hword branch_2248bcc - Jumppoints_2248baa - 2
.hword branch_2248bbe - Jumppoints_2248baa - 2
.hword branch_2248bd6 - Jumppoints_2248baa - 2
.hword branch_2248bc8 - Jumppoints_2248baa - 2
.hword branch_2248bd6 - Jumppoints_2248baa - 2
.thumb
branch_2248bba: @ 2248bba :thumb
	str     r0, [r4, #0x8]
	b       branch_2248bda
@ 0x2248bbe

.thumb
branch_2248bbe: @ 2248bbe :thumb
	blx     0x21e55b0
	mov     r0, #0x1b
	str     r0, [r4, #0x8]
	b       branch_2248bda
@ 0x2248bc8

.thumb
branch_2248bc8: @ 2248bc8 :thumb
	str     r0, [r4, #0x8]
	b       branch_2248bda
@ 0x2248bcc

.thumb
branch_2248bcc: @ 2248bcc :thumb
	blx     0x21d8e8c
	mov     r0, #0x1b
	str     r0, [r4, #0x8]
	b       branch_2248bda
@ 0x2248bd6

.thumb
branch_2248bd6: @ 2248bd6 :thumb
	bl      0x2038a0c
.thumb
branch_2248bda: @ 2248bda :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x2248bf4, (=0xffffb1e0)
	cmp     r1, r0
	bge     branch_2248bec
	ldr     r0, [pc, #0x14] @ 0x2248bf8, (=0xffff8ad1)
	cmp     r1, r0
	blt     branch_2248bec
	mov     r0, #0x1b
	str     r0, [r4, #0x8]
.thumb
branch_2248bec: @ 2248bec :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2248bf2


.align 2


.word 0xffffb1e0 @ 0x2248bf4
.word 0xffff8ad1 @ 0x2248bf8
.thumb
Function_2248bfc: @ 2248bfc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x202b370
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2025ccc
	mov     r4, r0
	mov     r0, r6
	bl      0x202ad28
	mov     r7, r0
	mov     r0, r4
	bl      0x2025d74
	cmp     r0, #0x0
	bne     branch_2248c34
	mov     r0, r6
	bl      0x2039058
	mov     r1, r0
	mov     r0, r4
	bl      0x2025d78
.thumb
branch_2248c34: @ 2248c34 :thumb
	mov     r0, r4
	bl      0x2025d74
	mov     r4, r0
	mov     r0, r7
	blx     0x20a471c
	mov     r3, r0
	mov     r2, r1
	mov     r0, r4
	mov     r1, r3
	bl      0x223b140
	mov     r0, #0x46
	ldr     r1, [r5, #0x0]
	mov     r2, #0x1
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	mov     r0, #0x11
	str     r0, [r5, #0x8]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248c60

.thumb
Function_2248c60: @ 2248c60 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2246f5c
	ldr     r0, [r4, #0x0]
	bl      Function_2246f74
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x98
	add     r1, #0xfc
	bl      0x223bb84
	mov     r0, #0x12
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	add     r4, #0xe8
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2248c88

.thumb
Function_2248c88: @ 2248c88 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      0x223b7b8
	cmp     r0, #0x0
	bne     branch_2248c96
	b       branch_2248dbe
@ 0x2248c96

.thumb
branch_2248c96: @ 2248c96 :thumb
	bl      0x223b7d8
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xe8
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xf
	cmp     r0, #0x11
	bls     branch_2248cae
	b       branch_2248db2
@ 0x2248cae

.thumb
branch_2248cae: @ 2248cae :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248cba

Jumppoints_2248cba:
.hword branch_2248d96 - Jumppoints_2248cba - 2
.hword branch_2248da4 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248d96 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248db2 - Jumppoints_2248cba - 2
.hword branch_2248da4 - Jumppoints_2248cba - 2
.hword branch_2248d88 - Jumppoints_2248cba - 2
.hword branch_2248cde - Jumppoints_2248cba - 2
.hword branch_2248d7a - Jumppoints_2248cba - 2
.hword branch_2248d88 - Jumppoints_2248cba - 2
.thumb
branch_2248cde: @ 2248cde :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2248cf4
	cmp     r0, #0x1
	beq     branch_2248d4e
	cmp     r0, #0x2
	beq     branch_2248d5e
	b       branch_2248d6e
@ 0x2248cf4

.thumb
branch_2248cf4: @ 2248cf4 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r1, r0]
	cmp     r0, #0x3
	bhi     branch_2248d48
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248d0a

Jumppoints_2248d0a:
.hword branch_2248d28 - Jumppoints_2248d0a - 2
.hword branch_2248d12 - Jumppoints_2248d0a - 2
.hword branch_2248d18 - Jumppoints_2248d0a - 2
.hword branch_2248d38 - Jumppoints_2248d0a - 2
.thumb
branch_2248d12: @ 2248d12 :thumb
	mov     r0, #0x13
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248d18

.thumb
branch_2248d18: @ 2248d18 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	ldr     r0, [pc, #0xc0] @ 0x2248de0, (=0xffffec77)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248d28

.thumb
branch_2248d28: @ 2248d28 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	ldr     r0, [pc, #0xb4] @ 0x2248de4, (=0xffffec76)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248d38

.thumb
branch_2248d38: @ 2248d38 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	ldr     r0, [pc, #0xa8] @ 0x2248de8, (=0xffffec75)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248d48

.thumb
branch_2248d48: @ 2248d48 :thumb
	bl      0x2038a0c
	b       branch_2248ddc
@ 0x2248d4e

.thumb
branch_2248d4e: @ 2248d4e :thumb
	mov     r0, r4
	bl      Function_2247b0c
	ldr     r0, [pc, #0x94] @ 0x2248dec, (=0xffffec74)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248d5e

.thumb
branch_2248d5e: @ 2248d5e :thumb
	mov     r0, r4
	bl      Function_2247b0c
	ldr     r0, [pc, #0x88] @ 0x2248df0, (=0xffffec73)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248d6e

.thumb
branch_2248d6e: @ 2248d6e :thumb
	mov     r0, r4
	bl      Function_2247b0c
	bl      0x2038a0c
	b       branch_2248ddc
@ 0x2248d7a

.thumb
branch_2248d7a: @ 2248d7a :thumb
	mov     r0, r4
	bl      Function_2247b0c
	str     r5, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248d88

.thumb
branch_2248d88: @ 2248d88 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	str     r5, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248d96

.thumb
branch_2248d96: @ 2248d96 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	str     r5, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248da4

.thumb
branch_2248da4: @ 2248da4 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	str     r5, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2248ddc
@ 0x2248db2

.thumb
branch_2248db2: @ 2248db2 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	bl      0x2038a0c
	b       branch_2248ddc
@ 0x2248dbe

.thumb
branch_2248dbe: @ 2248dbe :thumb
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xe8
	str     r1, [r0, #0x0]
	add     r4, #0xe8
	mov     r0, #0xe1
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2248ddc
	bl      0x2038a0c
.thumb
branch_2248ddc: @ 2248ddc :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248de0

.word 0xffffec77 @ 0x2248de0
.word 0xffffec76 @ 0x2248de4
.word 0xffffec75 @ 0x2248de8
.word 0xffffec74 @ 0x2248dec
.word 0xffffec73 @ 0x2248df0
.thumb
Function_2248df4: @ 2248df4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_2248e0a
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2248e0a

.thumb
branch_2248e0a: @ 2248e0a :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bhi     branch_2248eb4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248e20

Jumppoints_2248e20:
.hword branch_2248e28 - Jumppoints_2248e20 - 2
.hword branch_2248e4c - Jumppoints_2248e20 - 2
.hword branch_2248e6c - Jumppoints_2248e20 - 2
.hword branch_2248e9a - Jumppoints_2248e20 - 2
.thumb
branch_2248e28: @ 2248e28 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	ldr     r0, [pc, #0x8c] @ 0x2248ebc, (=0xf0f)
	mov     r2, #0xd
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2248eb4
@ 0x2248e4c

.thumb
branch_2248e4c: @ 2248e4c :thumb
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_2247b24
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2248eb4
@ 0x2248e6c

.thumb
branch_2248e6c: @ 2248e6c :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6d
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2248eb4
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2248e8c
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	b       branch_2248eb4
@ 0x2248e8c

.thumb
branch_2248e8c: @ 2248e8c :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2248eb4
@ 0x2248e9a

.thumb
branch_2248e9a: @ 2248e9a :thumb
	ldr     r0, [pc, #0x20] @ 0x2248ebc, (=0xf0f)
	mov     r2, #0x11
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0x14
	bl      Function_2247ae8
.thumb
branch_2248eb4: @ 2248eb4 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2248eba


.align 2


.word 0xf0f @ 0x2248ebc
.thumb
Function_2248ec0: @ 2248ec0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_2246e88
	ldr     r0, [r4, #0x0]
	mov     r1, #0x16
	bl      Function_2246e9c
	mov     r0, #0x1e
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248ede


.align 2, 0


.thumb
Function_2248ee0: @ 2248ee0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_2248ef6
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2248ef6

.thumb
branch_2248ef6: @ 2248ef6 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2248f0a
	cmp     r0, #0x1
	beq     branch_2248f28
	cmp     r0, #0x2
	beq     branch_2248f48
	b       branch_2248f72
@ 0x2248f0a

.thumb
branch_2248f0a: @ 2248f0a :thumb
	ldr     r0, [pc, #0x6c] @ 0x2248f78, (=0xf0f)
	mov     r2, #0xe
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2248f72
@ 0x2248f28

.thumb
branch_2248f28: @ 2248f28 :thumb
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_2247b24
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2248f72
@ 0x2248f48

.thumb
branch_2248f48: @ 2248f48 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6d
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2248f72
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2248f68
	mov     r0, #0x13
	str     r0, [r4, #0x8]
	b       branch_2248f72
@ 0x2248f68

.thumb
branch_2248f68: @ 2248f68 :thumb
	mov     r0, r4
	mov     r1, #0x1a
	mov     r2, #0x0
	bl      Function_2247ae8
.thumb
branch_2248f72: @ 2248f72 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2248f78

.word 0xf0f @ 0x2248f78
.thumb
Function_2248f7c: @ 2248f7c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2246f9c
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2248f96
	mov     r0, #0x15
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248f96

.thumb
branch_2248f96: @ 2248f96 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bls     branch_2248fa2
	b       branch_2249150
@ 0x2248fa2

.thumb
branch_2248fa2: @ 2248fa2 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248fae

Jumppoints_2248fae:
.hword branch_2248fb6 - Jumppoints_2248fae - 2
.hword branch_2248fec - Jumppoints_2248fae - 2
.hword branch_224911e - Jumppoints_2248fae - 2
.hword branch_224913c - Jumppoints_2248fae - 2
.thumb
branch_2248fb6: @ 2248fb6 :thumb
	ldr     r0, [pc, #0x19c] @ 0x2249154, (=0xf0f)
	mov     r2, #0x12
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_2249714
	mov     r0, r4
	bl      Function_2247af0
	ldr     r0, [r4, #0x0]
	bl      Function_2246f88
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x98
	add     r1, #0xfc
	bl      0x223bb84
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2249150
@ 0x2248fec

.thumb
branch_2248fec: @ 2248fec :thumb
	bl      0x223b7b8
	cmp     r0, #0x0
	bne     branch_2248ff6
	b       branch_22490fe
@ 0x2248ff6

.thumb
branch_2248ff6: @ 2248ff6 :thumb
	bl      0x223b7d8
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xe8
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_2247b0c
	mov     r0, r5
	add     r0, #0xf
	cmp     r0, #0x11
	bhi     branch_22490f8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224901e

Jumppoints_224901e:
.hword branch_22490e8 - Jumppoints_224901e - 2
.hword branch_22490f0 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490e8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f8 - Jumppoints_224901e - 2
.hword branch_22490f0 - Jumppoints_224901e - 2
.hword branch_22490e0 - Jumppoints_224901e - 2
.hword branch_2249042 - Jumppoints_224901e - 2
.hword branch_22490d8 - Jumppoints_224901e - 2
.hword branch_22490e0 - Jumppoints_224901e - 2
.thumb
branch_2249042: @ 2249042 :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2249058
	cmp     r0, #0x1
	beq     branch_22490ba
	cmp     r0, #0x2
	beq     branch_22490c4
	b       branch_22490ce
@ 0x2249058

.thumb
branch_2249058: @ 2249058 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r1, r0]
	cmp     r0, #0x3
	bhi     branch_22490b4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224906e

Jumppoints_224906e:
.hword branch_2249076 - Jumppoints_224906e - 2
.hword branch_22490a0 - Jumppoints_224906e - 2
.hword branch_22490aa - Jumppoints_224906e - 2
.hword branch_2249084 - Jumppoints_224906e - 2
.thumb
branch_2249076: @ 2249076 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2249150
@ 0x2249084

.thumb
branch_2249084: @ 2249084 :thumb
	ldr     r0, [pc, #0xcc] @ 0x2249154, (=0xf0f)
	mov     r2, #0x13
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0x15
	bl      Function_2247ae8
	b       branch_2249150
@ 0x22490a0

.thumb
branch_22490a0: @ 22490a0 :thumb
	ldr     r0, [pc, #0xb4] @ 0x2249158, (=0xffffec72)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2249150
@ 0x22490aa

.thumb
branch_22490aa: @ 22490aa :thumb
	ldr     r0, [pc, #0xb0] @ 0x224915c, (=0xffffec71)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2249150
@ 0x22490b4

.thumb
branch_22490b4: @ 22490b4 :thumb
	bl      0x2038a0c
	b       branch_2249150
@ 0x22490ba

.thumb
branch_22490ba: @ 22490ba :thumb
	ldr     r0, [pc, #0xa4] @ 0x2249160, (=0xffffec6e)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2249150
@ 0x22490c4

.thumb
branch_22490c4: @ 22490c4 :thumb
	ldr     r0, [pc, #0x9c] @ 0x2249164, (=0xffffec6d)
	str     r0, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2249150
@ 0x22490ce

.thumb
branch_22490ce: @ 22490ce :thumb
	bl      ErrorHandling
	bl      0x2038a0c
	b       branch_2249150
@ 0x22490d8

.thumb
branch_22490d8: @ 22490d8 :thumb
	str     r5, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2249150
@ 0x22490e0

.thumb
branch_22490e0: @ 22490e0 :thumb
	str     r5, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2249150
@ 0x22490e8

.thumb
branch_22490e8: @ 22490e8 :thumb
	str     r5, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2249150
@ 0x22490f0

.thumb
branch_22490f0: @ 22490f0 :thumb
	str     r5, [r4, #0x10]
	mov     r0, #0x20
	str     r0, [r4, #0x8]
	b       branch_2249150
@ 0x22490f8

.thumb
branch_22490f8: @ 22490f8 :thumb
	bl      0x2038a0c
	b       branch_2249150
@ 0x22490fe

.thumb
branch_22490fe: @ 22490fe :thumb
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xe8
	str     r1, [r0, #0x0]
	add     r4, #0xe8
	mov     r0, #0xe1
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2249150
	bl      0x2038a0c
	b       branch_2249150
@ 0x224911e

.thumb
branch_224911e: @ 224911e :thumb
	ldr     r0, [pc, #0x34] @ 0x2249154, (=0xf0f)
	mov     r2, #0x14
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2249150
@ 0x224913c

.thumb
branch_224913c: @ 224913c :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_2249150
	mov     r0, r4
	mov     r1, #0x1a
	mov     r2, #0x17
	bl      Function_2247ae8
.thumb
branch_2249150: @ 2249150 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2249154

.word 0xf0f @ 0x2249154
.word 0xffffec72 @ 0x2249158
.word 0xffffec71 @ 0x224915c
.word 0xffffec6e @ 0x2249160
.word 0xffffec6d @ 0x2249164
.thumb
Function_2249168: @ 2249168 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_224917e
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x224917e

.thumb
branch_224917e: @ 224917e :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224918e
	cmp     r0, #0x1
	beq     branch_22491ac
	b       branch_22491c2
@ 0x224918e

.thumb
branch_224918e: @ 224918e :thumb
	ldr     r0, [pc, #0x38] @ 0x22491c8, (=0xf0f)
	mov     r2, #0x15
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22491c2
@ 0x22491ac

.thumb
branch_22491ac: @ 22491ac :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	mov     r2, #0x2
	bl      Function_2246e88
	ldr     r0, [r4, #0x0]
	mov     r1, #0x18
	bl      Function_2246e9c
	mov     r0, #0x1e
	str     r0, [r4, #0x8]
.thumb
branch_22491c2: @ 22491c2 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22491c8

.word 0xf0f @ 0x22491c8
.thumb
Function_22491cc: @ 22491cc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_22491e2
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22491e2

.thumb
branch_22491e2: @ 22491e2 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22491f2
	cmp     r0, #0x1
	beq     branch_2249210
	b       branch_224922c
@ 0x22491f2

.thumb
branch_22491f2: @ 22491f2 :thumb
	ldr     r0, [pc, #0x40] @ 0x2249234, (=0xf0f)
	mov     r2, #0x18
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224922c
@ 0x2249210

.thumb
branch_2249210: @ 2249210 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2246ef8
	ldr     r0, [r4, #0x0]
	bl      Function_2246f24
	ldr     r0, [r4, #0x0]
	bl      Function_2246f48
	mov     r0, r4
	mov     r1, #0x19
	mov     r2, #0x0
	bl      Function_2247ae8
.thumb
branch_224922c: @ 224922c :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2249232


.align 2


.word 0xf0f @ 0x2249234
.thumb
Function_2249238: @ 2249238 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x3
	bhi     branch_2249312
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2249254

Jumppoints_2249254:
.hword branch_224925c - Jumppoints_2249254 - 2
.hword branch_224927e - Jumppoints_2249254 - 2
.hword branch_22492d8 - Jumppoints_2249254 - 2
.hword branch_22492f0 - Jumppoints_2249254 - 2
.thumb
branch_224925c: @ 224925c :thumb
	ldr     r1, [pc, #0xb8] @ 0x2249318, (=0xf0f)
	mov     r2, #0x20
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r3, #0x0
	bl      Function_2249714
	mov     r0, r4
	bl      Function_2247af0
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2249312
@ 0x224927e

.thumb
branch_224927e: @ 224927e :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x20246e0
	cmp     r0, #0x2
	bne     branch_22492b4
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      0x200b498
	ldr     r0, [pc, #0x78] @ 0x2249318, (=0xf0f)
	mov     r2, #0x21
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_2249714
	ldr     r0, [pc, #0x6c] @ 0x224931c, (=0x61b)
	bl      Function_2005748
	b       branch_22492c4
@ 0x22492b4

.thumb
branch_22492b4: @ 22492b4 :thumb
	ldr     r0, [pc, #0x60] @ 0x2249318, (=0xf0f)
	mov     r2, #0x22
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_2249714
.thumb
branch_22492c4: @ 22492c4 :thumb
	mov     r0, r4
	bl      Function_2247b0c
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2249312
@ 0x22492d8

.thumb
branch_22492d8: @ 22492d8 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_2249312
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2249312
@ 0x22492f0

.thumb
branch_22492f0: @ 22492f0 :thumb
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3c
	ble     branch_2249312
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x98
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
.thumb
branch_2249312: @ 2249312 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2249318

.word 0xf0f @ 0x2249318
.word 0x61b @ 0x224931c
.thumb
Function_2249320: @ 2249320 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_2249336
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2249336

.thumb
branch_2249336: @ 2249336 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x4
	bhi     branch_224940a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224934c

Jumppoints_224934c:
.hword branch_2249356 - Jumppoints_224934c - 2
.hword branch_2249374 - Jumppoints_224934c - 2
.hword branch_22493ae - Jumppoints_224934c - 2
.hword branch_22493d6 - Jumppoints_224934c - 2
.hword branch_22493ee - Jumppoints_224934c - 2
.thumb
branch_2249356: @ 2249356 :thumb
	ldr     r0, [pc, #0xb8] @ 0x2249410, (=0xf0f)
	mov     r2, #0xf
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224940a
@ 0x2249374

.thumb
branch_2249374: @ 2249374 :thumb
	blx     0x21d7db0
	bl      0x2039794
	bl      0x203859c
	mov     r0, #0x4
	bl      0x2017b8c
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_22493a0
	bl      0x223b7ac
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	lsl     r0, r0, #2
	str     r2, [r1, r0]
.thumb
branch_22493a0: @ 22493a0 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224940a
@ 0x22493ae

.thumb
branch_22493ae: @ 22493ae :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_224940a
	ldr     r0, [pc, #0x54] @ 0x2249410, (=0xf0f)
	mov     r2, #0x10
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224940a
@ 0x22493d6

.thumb
branch_22493d6: @ 22493d6 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_224940a
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224940a
@ 0x22493ee

.thumb
branch_22493ee: @ 22493ee :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1e
	ble     branch_224940a
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
.thumb
branch_224940a: @ 224940a :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2249410

.word 0xf0f @ 0x2249410
.thumb
Function_2249414: @ 2249414 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	neg     r0, r0
	bl      0x21d1f3c
	ldr     r2, [r4, #0x18]
	mov     r1, r0
	mov     r0, r4
	neg     r2, r2
	bl      Function_2249964
	mov     r0, #0x1c
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2249436


.align 2, 0


.thumb
Function_2249438: @ 2249438 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x2249460, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_224944c
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_224945a
.thumb
branch_224944c: @ 224944c :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_224945a: @ 224945a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224945e


.align 2


.word 0x21bf67c @ 0x2249460
.thumb
Function_2249464: @ 2249464 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x1e
	beq     branch_2249474
	bl      0x203859c
.thumb
branch_2249474: @ 2249474 :thumb
	bl      0x2039794
	mov     r0, r4
	bl      Function_2247b0c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x6d
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22494a0

.thumb
Function_22494a0: @ 22494a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_2247b24
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22494be


.align 2, 0


.thumb
Function_22494c0: @ 22494c0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r1, #0x0
	ldr     r0, [r4, #0x10]
	.hword  0x1f4a @ sub r2, r1, #0x5
	cmp     r0, r2
	bgt     branch_224951e
	bge     branch_2249552
	mov     r2, r1
	sub     r2, #0xf
	cmp     r0, r2
	bgt     branch_224950c
	mov     r2, r1
	sub     r2, #0xf
	cmp     r0, r2
	bge     branch_2249552
	ldr     r2, [pc, #0xd8] @ 0x22495bc, (=0x1393)
	add     r2, r0, r2
	cmp     r2, #0xa
	bhi     branch_2249552
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22494f6

Jumppoints_22494f6:
.hword branch_2249586 - Jumppoints_22494f6 - 2
.hword branch_2249580 - Jumppoints_22494f6 - 2
.hword branch_2249552 - Jumppoints_22494f6 - 2
.hword branch_2249552 - Jumppoints_22494f6 - 2
.hword branch_224957a - Jumppoints_22494f6 - 2
.hword branch_2249574 - Jumppoints_22494f6 - 2
.hword branch_224956e - Jumppoints_22494f6 - 2
.hword branch_2249568 - Jumppoints_22494f6 - 2
.hword branch_2249562 - Jumppoints_22494f6 - 2
.hword branch_224955c - Jumppoints_22494f6 - 2
.hword branch_2249556 - Jumppoints_22494f6 - 2
.thumb
branch_224950c: @ 224950c :thumb
	mov     r2, #0xd
	mvn     r2, r2
	cmp     r0, r2
	bgt     branch_2249518
	beq     branch_224954e
	b       branch_2249552
@ 0x2249518

.thumb
branch_2249518: @ 2249518 :thumb
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, r2
	b       branch_2249552
@ 0x224951e

.thumb
branch_224951e: @ 224951e :thumb
	.hword  0x1e4a @ sub r2, r1, #0x1
	cmp     r0, r2
	bgt     branch_2249538
	bge     branch_224954a
	.hword  0x1eca @ sub r2, r1, #0x3
	cmp     r0, r2
	bgt     branch_2249530
	cmp     r0, r2
	b       branch_2249552
@ 0x2249530

.thumb
branch_2249530: @ 2249530 :thumb
	.hword  0x1e8a @ sub r2, r1, #0x2
	cmp     r0, r2
	beq     branch_224954e
	b       branch_2249552
@ 0x2249538

.thumb
branch_2249538: @ 2249538 :thumb
	cmp     r0, #0x1
	bgt     branch_2249540
	beq     branch_2249546
	b       branch_2249552
@ 0x2249540

.thumb
branch_2249540: @ 2249540 :thumb
	cmp     r0, #0x2
	beq     branch_224954a
	b       branch_2249552
@ 0x2249546

.thumb
branch_2249546: @ 2249546 :thumb
	mov     r2, #0x36
	b       branch_224958a
@ 0x224954a

.thumb
branch_224954a: @ 224954a :thumb
	mov     r2, #0x37
	b       branch_224958a
@ 0x224954e

.thumb
branch_224954e: @ 224954e :thumb
	mov     r2, #0x39
	b       branch_224958a
@ 0x2249552

.thumb
branch_2249552: @ 2249552 :thumb
	mov     r2, #0x38
	b       branch_224958a
@ 0x2249556

.thumb
branch_2249556: @ 2249556 :thumb
	mov     r2, #0xad
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224958a
@ 0x224955c

.thumb
branch_224955c: @ 224955c :thumb
	mov     r2, #0xae
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224958a
@ 0x2249562

.thumb
branch_2249562: @ 2249562 :thumb
	mov     r2, #0xae
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224958a
@ 0x2249568

.thumb
branch_2249568: @ 2249568 :thumb
	mov     r2, #0xaf
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224958a
@ 0x224956e

.thumb
branch_224956e: @ 224956e :thumb
	mov     r2, #0xb0
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224958a
@ 0x2249574

.thumb
branch_2249574: @ 2249574 :thumb
	mov     r2, #0xae
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224958a
@ 0x224957a

.thumb
branch_224957a: @ 224957a :thumb
	mov     r2, #0xae
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224958a
@ 0x2249580

.thumb
branch_2249580: @ 2249580 :thumb
	mov     r2, #0xaf
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224958a
@ 0x2249586

.thumb
branch_2249586: @ 2249586 :thumb
	mov     r2, #0xb0
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_224958a: @ 224958a :thumb
	cmp     r1, #0x0
	ldr     r0, [pc, #0x30] @ 0x22495c0, (=0xf0f)
	bne     branch_224959e
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
	b       branch_22495aa
@ 0x224959e

.thumb
branch_224959e: @ 224959e :thumb
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2249714
.thumb
branch_22495aa: @ 22495aa :thumb
	mov     r0, r4
	mov     r1, #0x22
	mov     r2, #0x21
	bl      Function_2247ae8
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22495ba


.align 2


.word 0x1393 @ 0x22495bc
.word 0xf0f @ 0x22495c0
.thumb
Function_22495c4: @ 22495c4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x3
	bhi     branch_224967c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22495e0

Jumppoints_22495e0:
.hword branch_22495e8 - Jumppoints_22495e0 - 2
.hword branch_2249604 - Jumppoints_22495e0 - 2
.hword branch_2249648 - Jumppoints_22495e0 - 2
.hword branch_2249664 - Jumppoints_22495e0 - 2
.thumb
branch_22495e8: @ 22495e8 :thumb
	ldr     r1, [pc, #0xb8] @ 0x22496a4, (=0xf0f)
	mov     r2, #0xf
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224969e
@ 0x2249604

.thumb
branch_2249604: @ 2249604 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_224969e
	bl      0x203859c
	blx     0x21d7db0
	bl      0x2039794
	mov     r0, #0x4
	bl      0x2017b8c
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_224963a
	bl      0x223b7ac
	mov     r0, #0x46
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	lsl     r0, r0, #2
	str     r2, [r1, r0]
.thumb
branch_224963a: @ 224963a :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224969e
@ 0x2249648

.thumb
branch_2249648: @ 2249648 :thumb
	ldr     r1, [pc, #0x58] @ 0x22496a4, (=0xf0f)
	mov     r2, #0x10
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r3, #0x1
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224969e
@ 0x2249664

.thumb
branch_2249664: @ 2249664 :thumb
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_224969e
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224969e
@ 0x224967c

.thumb
branch_224967c: @ 224967c :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1e
	ble     branch_224969e
	ldr     r0, [r4, #0x0]
	bl      Function_2246e94
	mov     r0, #0x1d
	str     r0, [r4, #0x8]
.thumb
branch_224969e: @ 224969e :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22496a4

.word 0xf0f @ 0x22496a4
.thumb
Function_22496a8: @ 22496a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_22496ba
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
.thumb
branch_22496ba: @ 22496ba :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22496be


.align 2, 0


.thumb
Function_22496c0: @ 22496c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_22496e8
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1e
	ble     branch_22496dc
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
.thumb
branch_22496dc: @ 22496dc :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22496e8: @ 22496e8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22496ec

.thumb
Function_22496ec: @ 22496ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x0
	bne     branch_2249710
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_2247b24
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
.thumb
branch_2249710: @ 2249710 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2249714

.thumb
Function_2249714: @ 2249714 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r4, r3
	bl      Function_200b1ec
	mov     r6, r0
	ldr     r0, [r5, #0x20]
	ldr     r1, [r5, #0x38]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r5
	add     r0, #0x48
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x48
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [r5, #0x38]
	add     r0, #0x48
	mov     r1, #0x1
	bl      0x201d738
	str     r0, [r5, #0x44]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x90
	str     r1, [r0, #0x0]
	cmp     r4, #0xff
	beq     branch_2249774
	cmp     r4, #0x0
	bne     branch_2249778
.thumb
branch_2249774: @ 2249774 :thumb
	mov     r0, #0xff
	str     r0, [r5, #0x44]
.thumb
branch_2249778: @ 2249778 :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224977c

.thumb
Function_224977c: @ 224977c :thumb
	push    {r3,lr}
	cmp     r0, #0xff
	beq     branch_224978e
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2249792
.thumb
branch_224978e: @ 224978e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2249792

.thumb
branch_2249792: @ 2249792 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2249796


.align 2, 0


.thumb
Function_2249798: @ 2249798 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_22497ae
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22497ae

.thumb
branch_22497ae: @ 22497ae :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22497be
	cmp     r0, #0x1
	beq     branch_22497ea
	b       branch_22497ee
@ 0x22497be

.thumb
branch_22497be: @ 22497be :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2246fb4
	cmp     r0, #0x2
	bne     branch_22497cc
	mov     r2, #0x26
	b       branch_22497ce
@ 0x22497cc

.thumb
branch_22497cc: @ 22497cc :thumb
	mov     r2, #0x27
.thumb
branch_22497ce: @ 22497ce :thumb
	ldr     r0, [pc, #0x24] @ 0x22497f4, (=0xf0f)
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r0, r4
	bl      Function_2249714
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22497ee
@ 0x22497ea

.thumb
branch_22497ea: @ 22497ea :thumb
	mov     r0, #0x5
	str     r0, [r4, #0x8]
.thumb
branch_22497ee: @ 22497ee :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22497f4

.word 0xf0f @ 0x22497f4
.thumb
Function_22497f8: @ 22497f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	ldr     r0, [r6, #0x44]
	ldr     r4, [r6, #0x0]
	bl      Function_224977c
	cmp     r0, #0x1
	bne     branch_2249810
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2249810

.thumb
branch_2249810: @ 2249810 :thumb
	mov     r0, r6
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2249820
	cmp     r0, #0x1
	beq     branch_2249884
	b       branch_2249888
@ 0x2249820

.thumb
branch_2249820: @ 2249820 :thumb
	mov     r0, r4
	bl      Function_2246fa4
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      0x2030d98
	cmp     r5, r0
	bne     branch_2249866
	ldr     r0, [r4, #0x4]
	bl      0x2030d50
	add     r1, sp, #0x8
	mov     r2, #0x6c
	bl      Function_2249acc
	mov     r4, #0x0
	add     r5, sp, #0x8
	mov     r7, #0x2
.thumb
branch_2249848: @ 2249848 :thumb
	str     r7, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x20]
	ldr     r2, [r5, #0x0]
	mov     r1, r4
	mov     r3, #0x4
	bl      0x200b60c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	bcc     branch_2249848
	mov     r2, #0x29
	b       branch_2249868
@ 0x2249866

.thumb
branch_2249866: @ 2249866 :thumb
	mov     r2, #0x28
.thumb
branch_2249868: @ 2249868 :thumb
	ldr     r0, [pc, #0x24] @ 0x2249890, (=0xf0f)
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [r6, #0x34]
	mov     r0, r6
	bl      Function_2249714
	mov     r0, r6
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r6, #0x94
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_2249888
@ 0x2249884

.thumb
branch_2249884: @ 2249884 :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x8]
.thumb
branch_2249888: @ 2249888 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224988e


.align 2


.word 0xf0f @ 0x2249890
.thumb
Function_2249894: @ 2249894 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r3, #0x1
	beq     branch_22498a2
	cmp     r3, #0x2
	beq     branch_22498b8
	b       branch_22498c6
@ 0x22498a2

.thumb
branch_22498a2: @ 22498a2 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      0x2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r1, r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r2, r0, #1
	b       branch_22498c6
@ 0x22498b8

.thumb
branch_22498b8: @ 22498b8 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      0x2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r2, r1, r0
.thumb
branch_22498c6: @ 22498c6 :thumb
	mov     r0, r2
	pop     {r4,pc}
@ 0x22498ca


.align 2, 0


.thumb
Function_22498cc: @ 22498cc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r3
	ldr     r3, [sp, #0x24]
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r6, r1
	bl      Function_2249894
	mov     r3, r0
	str     r4, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [sp, #0x24]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	bl      0x201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2249900

.thumb
Function_2249900: @ 2249900 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x1
	mov     r6, r1
	lsl     r0, r0, #8
	mov     r1, #0x6d
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [r5, #0x30]
	mov     r1, r6
	mov     r2, r4
	bl      Function_200b1b8
	ldr     r0, [r5, #0x20]
	ldr     r1, [r5, #0x40]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r5
	add     r0, #0x68
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x68
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200dc48
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [r5, #0x40]
	add     r0, #0x68
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, #0xff
	str     r0, [r5, #0x44]
	mov     r0, r4
	bl      Function_20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2249962


.align 2, 0


.thumb
Function_2249964: @ 2249964 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2249976
	mov     r4, #0xb
.thumb
branch_2249976: @ 2249976 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x20]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      0x200b60c
	mov     r0, r5
	add     r0, #0x48
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r5
	mov     r1, r4
	bl      Function_2249900
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x224999e


.align 2, 0


.thumb
Function_22499a0: @ 22499a0 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_22499ac
	ldr     r0, [pc, #0x8] @ 0x22499b0, (=0x5dc)
	bl      Function_2005748
.thumb
branch_22499ac: @ 22499ac :thumb
	pop     {r3,pc}
@ 0x22499ae


.align 2


.word 0x5dc @ 0x22499b0
.thumb
Function_22499b4: @ 22499b4 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_22499c0
	ldr     r0, [pc, #0x8] @ 0x22499c4, (=0x5dc)
	bl      Function_2005748
.thumb
branch_22499c0: @ 22499c0 :thumb
	pop     {r3,pc}
@ 0x22499c2


.align 2


.word 0x5dc @ 0x22499c4
.thumb
Function_22499c8: @ 22499c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r2
	mov     r4, #0x0
	mov     r5, r1
	ldr     r2, [pc, #0x9c] @ 0x2249a70, (=0x2249d1c)
	str     r0, [sp, #0x0]
	mov     r1, r4
	mov     r0, r2
	mov     r3, r4
.thumb
branch_22499dc: @ 22499dc :thumb
	mov     r6, r1
	ldsb    r6, [r0, r6]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r6, [r5, r4]
	ldsb    r6, [r2, r3]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r6, #0x0
	bne     branch_22499dc
	mov     r0, r7
	mov     r1, #0xc8
	bl      malloc_maybe
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, #0x64
	bl      Function_2023df0
	ldr     r7, [sp, #0x4]
	mov     r6, #0x0
.thumb
branch_2249a06: @ 2249a06 :thumb
	ldrh    r1, [r7, #0x0]
	ldr     r0, [pc, #0x68] @ 0x2249a74, (=0xffff)
	cmp     r1, r0
	bne     branch_2249a14
	mov     r2, #0x0
	strb    r2, [r5, r4]
	b       branch_2249a4a
@ 0x2249a14

.thumb
branch_2249a14: @ 2249a14 :thumb
	ldr     r2, [sp, #0x4]
	lsl     r3, r6, #1
	ldrh    r3, [r2, r3]
	ldr     r1, [pc, #0x5c] @ 0x2249a78, (=0x2249d2c)
	mov     r0, #0x0
.thumb
branch_2249a1e: @ 2249a1e :thumb
	ldrh    r2, [r1, #0x0]
	cmp     r2, r3
	bne     branch_2249a32
	ldr     r1, [pc, #0x50] @ 0x2249a78, (=0x2249d2c)
	lsl     r2, r0, #2
	add     r2, r1, r2
	mov     r1, #0x2
	ldsb    r1, [r2, r1]
	strb    r1, [r5, r4]
	b       branch_2249a3a
@ 0x2249a32

.thumb
branch_2249a32: @ 2249a32 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r0, #0xa
	bcc     branch_2249a1e
.thumb
branch_2249a3a: @ 2249a3a :thumb
	cmp     r0, #0xa
	bcc     branch_2249a42
	bl      ErrorHandling
.thumb
branch_2249a42: @ 2249a42 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c76 @ add r6, r6, #0x1
	b       branch_2249a06
@ 0x2249a4a

.thumb
branch_2249a4a: @ 2249a4a :thumb
	ldr     r1, [pc, #0x30] @ 0x2249a7c, (=0x2249d20)
	mov     r3, r2
	mov     r0, r1
.thumb
branch_2249a50: @ 2249a50 :thumb
	mov     r6, r2
	ldsb    r6, [r0, r6]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r6, [r5, r4]
	ldsb    r6, [r1, r3]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r6, #0x0
	bne     branch_2249a50
	mov     r0, #0x0
	strb    r0, [r5, r4]
	ldr     r0, [sp, #0x4]
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2249a70

.word 0x2249d1c @ 0x2249a70
.word 0xffff @ 0x2249a74
.word 0x2249d2c @ 0x2249a78
.word 0x2249d20 @ 0x2249a7c
.thumb
Function_2249a80: @ 2249a80 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, r1
	mov     r1, #0xc8
	mov     r5, #0x1
	bl      malloc_maybe
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x64
	bl      Function_2023df0
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2249ac4, (=0xffff)
	cmp     r1, r0
	beq     branch_2249ab8
	ldr     r1, [pc, #0x24] @ 0x2249ac8, (=0x121)
	mov     r3, r4
.thumb
branch_2249aa6: @ 2249aa6 :thumb
	ldrh    r2, [r3, #0x0]
	cmp     r2, r1
	beq     branch_2249ab0
	mov     r5, #0x0
	b       branch_2249ab8
@ 0x2249ab0

.thumb
branch_2249ab0: @ 2249ab0 :thumb
	.hword  0x1c9b @ add r3, r3, #0x2
	ldrh    r2, [r3, #0x0]
	cmp     r2, r0
	bne     branch_2249aa6
.thumb
branch_2249ab8: @ 2249ab8 :thumb
	mov     r0, r4
	bl      free
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x2249ac2


.align 2


.word 0xffff @ 0x2249ac4
.word 0x121 @ 0x2249ac8
.thumb
Function_2249acc: @ 2249acc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, #0x0
	mov     r5, r0
	mov     r7, r1
	str     r4, [sp, #0x4]
.thumb
branch_2249ad8: @ 2249ad8 :thumb
	mov     r0, #0x0
	str     r0, [r7, #0x0]
	str     r0, [sp, #0x0]
	b       branch_2249b14
@ 0x2249ae0

.thumb
branch_2249ae0: @ 2249ae0 :thumb
	cmp     r0, #0x0
	bne     branch_2249aec
	bne     branch_2249afa
	bl      ErrorHandling
	b       branch_2249afa
@ 0x2249aec

.thumb
branch_2249aec: @ 2249aec :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2249aee: @ 2249aee :thumb
	ldsb    r0, [r5, r4]
	add     r6, r5, r4
	cmp     r0, #0x30
	blt     branch_2249ae0
	cmp     r0, #0x39
	bgt     branch_2249ae0
.thumb
branch_2249afa: @ 2249afa :thumb
	ldr     r1, [r7, #0x0]
	mov     r0, #0xa
	mul     r0, r1
	str     r0, [r7, #0x0]
	mov     r1, #0x0
	ldsb    r1, [r6, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	sub     r1, #0x30
	add     r0, r0, r1
	str     r0, [r7, #0x0]
	ldr     r0, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
.thumb
branch_2249b14: @ 2249b14 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x4
	blt     branch_2249aee
	ldr     r0, [sp, #0x4]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	blt     branch_2249ad8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2249b2a


.incbin "./baserom/overlay/overlay_0098.bin", 0x2f0a, 0x2249d70 - 0x2249b2a


.word Function_2247b98+1 @ =0x2247b99, 0x2249d70
.word Function_2247d30+1 @ =0x2247d31, 0x2249d74
.word Function_2247d50+1 @ =0x2247d51, 0x2249d78
.word Function_2247e38+1 @ =0x2247e39, 0x2249d7c
.word Function_2248684+1 @ =0x2248685, 0x2249d80
.word Function_22487ac+1 @ =0x22487ad, 0x2249d84
.word Function_22487cc+1 @ =0x22487cd, 0x2249d88
.word Function_2248804+1 @ =0x2248805, 0x2249d8c
.word Function_22488f8+1 @ =0x22488f9, 0x2249d90
.word Function_2248954+1 @ =0x2248955, 0x2249d94
.word Function_224897c+1 @ =0x224897d, 0x2249d98
.word Function_22489b4+1 @ =0x22489b5, 0x2249d9c
.word Function_22489dc+1 @ =0x22489dd, 0x2249da0
.word Function_2248a68+1 @ =0x2248a69, 0x2249da4
.word Function_2248b14+1 @ =0x2248b15, 0x2249da8
.word Function_2248b24+1 @ =0x2248b25, 0x2249dac
.word Function_2248bfc+1 @ =0x2248bfd, 0x2249db0
.word Function_2248c60+1 @ =0x2248c61, 0x2249db4
.word Function_2248c88+1 @ =0x2248c89, 0x2249db8
.word Function_2248df4+1 @ =0x2248df5, 0x2249dbc
.word Function_2248ec0+1 @ =0x2248ec1, 0x2249dc0
.word Function_2248ee0+1 @ =0x2248ee1, 0x2249dc4
.word Function_2248f7c+1 @ =0x2248f7d, 0x2249dc8
.word Function_2249168+1 @ =0x2249169, 0x2249dcc
.word Function_22491cc+1 @ =0x22491cd, 0x2249dd0
.word Function_2249238+1 @ =0x2249239, 0x2249dd4
.word Function_2249320+1 @ =0x2249321, 0x2249dd8
.word Function_2249414+1 @ =0x2249415, 0x2249ddc
.word Function_2249438+1 @ =0x2249439, 0x2249de0
.word Function_2249464+1 @ =0x2249465, 0x2249de4
.word Function_2249464+1 @ =0x2249465, 0x2249de8
.word Function_22494a0+1 @ =0x22494a1, 0x2249dec
.word Function_22494c0+1 @ =0x22494c1, 0x2249df0
.word Function_22495c4+1 @ =0x22495c5, 0x2249df4
.word Function_22496a8+1 @ =0x22496a9, 0x2249df8
.word Function_22496c0+1 @ =0x22496c1, 0x2249dfc
.word Function_22496ec+1 @ =0x22496ed, 0x2249e00
.word Function_2249798+1 @ =0x2249799, 0x2249e04
.word Function_22497f8+1 @ =0x22497f9, 0x2249e08
@ 0x2249e0c


.incbin "./baserom/overlay/overlay_0098.bin", 0x31ec, 0x2249e20 - 0x2249e0c


@end 0x2249e20




